@interface MGRemoteQueryServer
- (MGRemoteQueryServer)initWithHomeHash:(id)hash delegate:(id)delegate dispatchQueue:(id)queue;
- (MGRemoteQueryServerDelegate)delegate;
- (NSString)description;
- (id)_clientAdd:(id)add;
- (id)_clientFind:(id)find;
- (id)_prepareListenerAdvertisement;
- (id)_prepareListenerIdentity;
- (id)_prepareListenerParameters;
- (id)_prepareListenerTLS;
- (unint64_t)_transactionCount;
- (unint64_t)_unsafe_transactionCount;
- (unsigned)_connectionLimit;
- (void)_clientRemove:(id)remove;
- (void)_handleNewConnection:(id)connection;
- (void)_invalidate;
- (void)_invalidated;
- (void)_prepareListenerHTTP:(id)p;
- (void)_prepareListenerHandlers;
- (void)_startListener;
- (void)_updateConnectionLimit;
- (void)clientInvalidated:(id)invalidated;
- (void)clientLostTransaction:(id)transaction;
- (void)dealloc;
@end

@implementation MGRemoteQueryServer

- (MGRemoteQueryServer)initWithHomeHash:(id)hash delegate:(id)delegate dispatchQueue:(id)queue
{
  hashCopy = hash;
  delegateCopy = delegate;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = MGRemoteQueryServer;
  v11 = [(MGRemoteQueryServer *)&v22 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v12->_dispatchQueue, queue);
    array = [MEMORY[0x277CBEA60] array];
    clients = v12->_clients;
    v12->_clients = array;

    error = v12->_error;
    v12->_error = 0;

    v12->_invalidated = 0;
    v16 = [hashCopy copy];
    homeHash = v12->_homeHash;
    v12->_homeHash = v16;

    dispatchQueue = [(MGRemoteQueryServer *)v12 dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__MGRemoteQueryServer_initWithHomeHash_delegate_dispatchQueue___block_invoke;
    block[3] = &unk_27989ED90;
    v21 = v12;
    dispatch_async(dispatchQueue, block);
  }

  return v12;
}

- (void)dealloc
{
  [(MGRemoteQueryServer *)self _invalidate];
  v3.receiver = self;
  v3.super_class = MGRemoteQueryServer;
  [(MGRemoteQueryServer *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  clients = [(MGRemoteQueryServer *)self clients];
  v7 = [clients count];
  _unsafe_transactionCount = [(MGRemoteQueryServer *)self _unsafe_transactionCount];
  listener = [(MGRemoteQueryServer *)self listener];
  invalidated = [(MGRemoteQueryServer *)self invalidated];
  v11 = 78;
  if (invalidated)
  {
    v11 = 89;
  }

  v12 = [v3 stringWithFormat:@"<%@: %p, _clients = %lu, _transactions = %lu, _listener = %@, _invalidated = %c>", v5, self, v7, _unsafe_transactionCount, listener, v11];

  return v12;
}

- (void)_startListener
{
  v17 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  listener = [(MGRemoteQueryServer *)self listener];

  if (listener)
  {
    _prepareListenerParameters = MGLogForCategory(5);
    if (os_log_type_enabled(_prepareListenerParameters, OS_LOG_TYPE_ERROR))
    {
      listener2 = [(MGRemoteQueryServer *)self listener];
      v11 = 134218242;
      selfCopy3 = self;
      v13 = 2112;
      v14 = listener2;
      _os_log_error_impl(&dword_25863A000, _prepareListenerParameters, OS_LOG_TYPE_ERROR, "%p server already listening %@", &v11, 0x16u);
LABEL_10:
    }
  }

  else
  {
    if (![(MGRemoteQueryServer *)self invalidated])
    {
      _prepareListenerParameters = [(MGRemoteQueryServer *)self _prepareListenerParameters];
      listener2 = [(MGRemoteQueryServer *)self _prepareListenerAdvertisement];
      v7 = nw_listener_create(_prepareListenerParameters);
      [(MGRemoteQueryServer *)self setListener:v7];
      dispatchQueue2 = [(MGRemoteQueryServer *)self dispatchQueue];
      nw_listener_set_queue(v7, dispatchQueue2);

      nw_listener_set_advertise_descriptor(v7, listener2);
      [(MGRemoteQueryServer *)self _updateConnectionLimit];
      [(MGRemoteQueryServer *)self _prepareListenerHandlers];
      v9 = MGLogForCategory(5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134218496;
        selfCopy3 = self;
        v13 = 2048;
        v14 = 1;
        v15 = 2048;
        v16 = 1;
        _os_log_impl(&dword_25863A000, v9, OS_LOG_TYPE_DEFAULT, "%p server starting, versions %lu->%lu", &v11, 0x20u);
      }

      nw_listener_start(v7);
      goto LABEL_10;
    }

    _prepareListenerParameters = MGLogForCategory(5);
    if (os_log_type_enabled(_prepareListenerParameters, OS_LOG_TYPE_ERROR))
    {
      v11 = 134217984;
      selfCopy3 = self;
      _os_log_error_impl(&dword_25863A000, _prepareListenerParameters, OS_LOG_TYPE_ERROR, "%p server invalidated, not starting", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_invalidate
{
  v12 = *MEMORY[0x277D85DE8];
  if (![(MGRemoteQueryServer *)self invalidated])
  {
    v3 = MGLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_25863A000, v3, OS_LOG_TYPE_DEFAULT, "%p server invalidating", buf, 0xCu);
    }

    [(MGRemoteQueryServer *)self setInvalidated:1];
    array = [MEMORY[0x277CBEA60] array];
    [(MGRemoteQueryServer *)self setClients:array];

    listener = [(MGRemoteQueryServer *)self listener];
    [(MGRemoteQueryServer *)self setListener:0];
    dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
    if (listener)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __34__MGRemoteQueryServer__invalidate__block_invoke;
      block[3] = &unk_27989ED90;
      v9 = listener;
      dispatch_async(dispatchQueue, block);
    }

    else
    {
      [(MGRemoteQueryServer *)self _invalidated];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_invalidated
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MGLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_25863A000, v3, OS_LOG_TYPE_DEFAULT, "%p server invalidated", buf, 0xCu);
  }

  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__MGRemoteQueryServer__invalidated__block_invoke;
  block[3] = &unk_27989ED90;
  block[4] = self;
  dispatch_async(dispatchQueue, block);

  v5 = *MEMORY[0x277D85DE8];
}

void __35__MGRemoteQueryServer__invalidated__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = *(a1 + 32);
    v5 = v2;
    v4 = [v3 error];
    [v5 serverInvalidated:v3 withError:v4];

    v2 = v5;
  }
}

- (id)_prepareListenerParameters
{
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v4 = MEMORY[0x259C85F90](*MEMORY[0x277CD9230]);
  _prepareListenerTLS = [(MGRemoteQueryServer *)self _prepareListenerTLS];
  secure_tcp = nw_parameters_create_secure_tcp(_prepareListenerTLS, v4);
  nw_parameters_set_include_peer_to_peer(secure_tcp, 0);
  nw_parameters_set_local_only(secure_tcp, 1);
  nw_parameters_set_server_mode();
  nw_parameters_set_reuse_local_address(secure_tcp, 1);
  nw_parameters_set_attach_protocol_listener();
  [(MGRemoteQueryServer *)self _prepareListenerHTTP:secure_tcp];

  return secure_tcp;
}

- (id)_prepareListenerTLS
{
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__MGRemoteQueryServer__prepareListenerTLS__block_invoke;
  v7[3] = &unk_27989EF20;
  v7[4] = self;
  v4 = MEMORY[0x259C85F90](v7);
  v5 = MEMORY[0x259C85F90]();

  return v5;
}

void __42__MGRemoteQueryServer__prepareListenerTLS__block_invoke(uint64_t a1, id a2)
{
  options = a2;
  v3 = [*(a1 + 32) _prepareListenerIdentity];
  if (v3)
  {
    sec_protocol_options_set_local_identity(options, v3);
  }

  sec_protocol_options_add_tls_application_protocol(options, [@"h2" UTF8String]);
  sec_protocol_options_append_tls_ciphersuite_group(options, tls_ciphersuite_group_default);
}

- (id)_prepareListenerIdentity
{
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  SelfSignedIdentity = _CFHTTPServerCreateSelfSignedIdentity();
  if (SelfSignedIdentity)
  {
    v4 = SelfSignedIdentity;
    v5 = sec_identity_create(SelfSignedIdentity);
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_prepareListenerHTTP:(id)p
{
  pCopy = p;
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  protocol = nw_http_messaging_create_options();
  v6 = nw_parameters_copy_default_protocol_stack(pCopy);

  nw_protocol_stack_prepend_application_protocol(v6, protocol);
}

- (id)_prepareListenerAdvertisement
{
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 1];
  uTF8String = [v4 UTF8String];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 1];
  uTF8String2 = [v6 UTF8String];

  dictionary = nw_txt_record_create_dictionary();
  uTF8String3 = [@"v" UTF8String];
  v10 = strlen(uTF8String);
  nw_txt_record_set_key(dictionary, uTF8String3, uTF8String, v10);
  uTF8String4 = [@"m" UTF8String];
  v12 = strlen(uTF8String2);
  nw_txt_record_set_key(dictionary, uTF8String4, uTF8String2, v12);
  homeHash = [(MGRemoteQueryServer *)self homeHash];
  if ([homeHash length])
  {
    uTF8String5 = [homeHash UTF8String];
    uTF8String6 = [@"h" UTF8String];
    v16 = strlen(uTF8String5);
    nw_txt_record_set_key(dictionary, uTF8String6, uTF8String5, v16);
  }

  bonjour_service = nw_advertise_descriptor_create_bonjour_service(0, [@"_mediagroups._tcp" UTF8String], 0);
  nw_advertise_descriptor_set_txt_record_object(bonjour_service, dictionary);

  return bonjour_service;
}

- (void)_prepareListenerHandlers
{
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  objc_initWeak(&location, self);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1;
  v14 = __Block_byref_object_dispose__1;
  listener = [(MGRemoteQueryServer *)self listener];
  v4 = v11[5];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __47__MGRemoteQueryServer__prepareListenerHandlers__block_invoke;
  handler[3] = &unk_27989EDB8;
  objc_copyWeak(&v9, &location);
  handler[4] = &v10;
  nw_listener_set_state_changed_handler(v4, handler);
  v5 = v11[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__MGRemoteQueryServer__prepareListenerHandlers__block_invoke_16;
  v6[3] = &unk_27989EF48;
  objc_copyWeak(&v7, &location);
  nw_listener_set_new_connection_handler(v5, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  _Block_object_dispose(&v10, 8);

  objc_destroyWeak(&location);
}

void __47__MGRemoteQueryServer__prepareListenerHandlers__block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (a2 == 4)
  {
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;

    [v7 _invalidated];
  }

  else if (a2 == 3 && WeakRetained)
  {
    v8 = MGLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218242;
      v14 = v7;
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&dword_25863A000, v8, OS_LOG_TYPE_ERROR, "%p server listener failed, error %@", &v13, 0x16u);
    }

    v9 = nw_error_copy_cf_error(v5);
    [v7 setError:v9];
    [v7 _invalidate];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __47__MGRemoteQueryServer__prepareListenerHandlers__block_invoke_16(uint64_t a1, void *a2)
{
  connection = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && ([WeakRetained invalidated] & 1) == 0)
  {
    [v4 _handleNewConnection:connection];
  }

  else
  {
    nw_connection_cancel(connection);
  }
}

- (void)_handleNewConnection:(id)connection
{
  v21 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServer *)self invalidated])
  {
    v6 = MGLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *location = 134218242;
      *&location[4] = self;
      v17 = 2112;
      v18 = connectionCopy;
      _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p server invalidated, not handling %@", location, 0x16u);
    }

    nw_connection_cancel(connectionCopy);
  }

  else
  {
    v7 = [(MGRemoteQueryServer *)self _clientFind:connectionCopy];
    if (v7 || (-[MGRemoteQueryServer clients](self, "clients"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v10 != -1) && (-[MGRemoteQueryServer _clientAdd:](self, "_clientAdd:", connectionCopy), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = MGLogForCategory(5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *location = 134218498;
        *&location[4] = self;
        v17 = 2048;
        v18 = v7;
        v19 = 2112;
        v20 = connectionCopy;
        _os_log_debug_impl(&dword_25863A000, v8, OS_LOG_TYPE_DEBUG, "%p server attempting to use client %p to service new connection %@", location, 0x20u);
      }

      objc_initWeak(location, self);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __44__MGRemoteQueryServer__handleNewConnection___block_invoke;
      v13[3] = &unk_27989EF98;
      objc_copyWeak(&v15, location);
      v13[4] = self;
      v14 = connectionCopy;
      [v7 addNewConnection:v14 completion:v13];

      objc_destroyWeak(&v15);
      objc_destroyWeak(location);
    }

    else
    {
      v11 = MGLogForCategory(5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *location = 134218242;
        *&location[4] = self;
        v17 = 2112;
        v18 = connectionCopy;
        _os_log_error_impl(&dword_25863A000, v11, OS_LOG_TYPE_ERROR, "%p server has no client to handle new connection %@", location, 0x16u);
      }

      nw_connection_cancel(connectionCopy);
      [(MGRemoteQueryServer *)self _updateConnectionLimit];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __44__MGRemoteQueryServer__handleNewConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dispatchQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__MGRemoteQueryServer__handleNewConnection___block_invoke_2;
    v9[3] = &unk_27989EF70;
    v11 = a2;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[4] = v5;
    v9[5] = v7;
    v10 = v8;
    dispatch_async(v6, v9);
  }
}

void __44__MGRemoteQueryServer__handleNewConnection___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (v2 == 3)
  {
    v6 = MGLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 48);
      v14 = 134218242;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p server retrying accept of %@", &v14, 0x16u);
    }

    [*(a1 + 40) _handleNewConnection:*(a1 + 48)];
    goto LABEL_13;
  }

  if (v2 != 2)
  {
    if (v2 == 1)
    {
      v3 = MGLogForCategory(5);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 32);
        v11 = [*(a1 + 40) clients];
        v12 = [v11 count];
        v13 = [*(a1 + 40) _transactionCount];
        v14 = 134218496;
        v15 = v10;
        v16 = 2048;
        v17 = v12;
        v18 = 2048;
        v19 = v13;
        _os_log_debug_impl(&dword_25863A000, v3, OS_LOG_TYPE_DEBUG, "%p server accepted, now %lu/%lu clients", &v14, 0x20u);
      }
    }

LABEL_13:
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  nw_connection_cancel(*(a1 + 48));
  v4 = *(a1 + 32);
  v5 = *MEMORY[0x277D85DE8];

  [v4 _updateConnectionLimit];
}

- (id)_clientAdd:(id)add
{
  v25 = *MEMORY[0x277D85DE8];
  addCopy = add;
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = nw_connection_copy_endpoint(addCopy);
  v7 = [MGRemoteQueryServerClient alloc];
  dispatchQueue2 = [(MGRemoteQueryServer *)self dispatchQueue];
  v9 = [(MGRemoteQueryServerClient *)v7 initWithPeer:v6 delegate:self dispatchQueue:dispatchQueue2];

  clients = [(MGRemoteQueryServer *)self clients];
  v11 = [clients arrayByAddingObject:v9];

  [(MGRemoteQueryServer *)self setClients:v11];
  v12 = MGLogForCategory(5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134219010;
    selfCopy = self;
    v17 = 2048;
    v18 = [v11 count];
    v19 = 2048;
    _transactionCount = [(MGRemoteQueryServer *)self _transactionCount];
    v21 = 2048;
    v22 = v9;
    v23 = 2112;
    v24 = addCopy;
    _os_log_debug_impl(&dword_25863A000, v12, OS_LOG_TYPE_DEBUG, "%p server now %lu/%lu clients after adding client %p for connection %@", &v15, 0x34u);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_clientFind:(id)find
{
  v28 = *MEMORY[0x277D85DE8];
  findCopy = find;
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = nw_connection_copy_endpoint(findCopy);
  v7 = nw_endpoint_copy_address_string(v6);
  if (v7)
  {
    v8 = v7;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    free(v8);
  }

  else
  {
    v9 = 0;
  }

  if ([v9 length])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    clients = [(MGRemoteQueryServer *)self clients];
    v11 = [clients countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v22 = findCopy;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(clients);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          peer = [v14 peer];
          type = nw_endpoint_get_type(v6);
          if (type == nw_endpoint_get_type(peer))
          {
            v17 = nw_endpoint_copy_address_string(peer);
            if (v17)
            {
              v18 = v17;
              v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
              free(v18);
              if (v9 && v19 && ([v9 isEqual:v19] & 1) != 0)
              {
                v11 = v14;

                goto LABEL_22;
              }
            }

            else
            {
              v19 = 0;
            }
          }
        }

        v11 = [clients countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
LABEL_22:
      findCopy = v22;
    }
  }

  else
  {
    v11 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_clientRemove:(id)remove
{
  v18 = *MEMORY[0x277D85DE8];
  removeCopy = remove;
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  clients = [(MGRemoteQueryServer *)self clients];
  v7 = [clients mutableCopy];

  [v7 removeObject:removeCopy];
  [(MGRemoteQueryServer *)self setClients:v7];
  v8 = MGLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134218752;
    selfCopy = self;
    v12 = 2048;
    v13 = [v7 count];
    v14 = 2048;
    _transactionCount = [(MGRemoteQueryServer *)self _transactionCount];
    v16 = 2048;
    v17 = removeCopy;
    _os_log_debug_impl(&dword_25863A000, v8, OS_LOG_TYPE_DEBUG, "%p server now %lu/%lu clients after removing client %p", &v10, 0x2Au);
  }

  [(MGRemoteQueryServer *)self _updateConnectionLimit];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)clientLostTransaction:(id)transaction
{
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MGRemoteQueryServer_clientLostTransaction___block_invoke;
  block[3] = &unk_27989ED90;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)clientInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__MGRemoteQueryServer_clientInvalidated___block_invoke;
  v7[3] = &unk_27989EE80;
  v7[4] = self;
  v8 = invalidatedCopy;
  v6 = invalidatedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (unint64_t)_transactionCount
{
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  return [(MGRemoteQueryServer *)self _unsafe_transactionCount];
}

- (unint64_t)_unsafe_transactionCount
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  clients = [(MGRemoteQueryServer *)self clients];
  v3 = [clients countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(clients);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) transactionCount];
      }

      v4 = [clients countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_updateConnectionLimit
{
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  listener = [(MGRemoteQueryServer *)self listener];
  if (![(MGRemoteQueryServer *)self invalidated]&& listener)
  {
    listener2 = [(MGRemoteQueryServer *)self listener];
    nw_listener_set_new_connection_limit(listener2, [(MGRemoteQueryServer *)self _connectionLimit]);
  }

  MEMORY[0x2821F96F8]();
}

- (unsigned)_connectionLimit
{
  v13 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServer *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  _transactionCount = [(MGRemoteQueryServer *)self _transactionCount];
  if (_transactionCount >= 0x15)
  {
    v5 = 0;
  }

  else
  {
    v5 = 20 - _transactionCount;
  }

  v6 = MGLogForCategory(5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218240;
    selfCopy = self;
    v11 = 2048;
    v12 = v5;
    _os_log_debug_impl(&dword_25863A000, v6, OS_LOG_TYPE_DEBUG, "%p server allowing %lu new connections", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (MGRemoteQueryServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end