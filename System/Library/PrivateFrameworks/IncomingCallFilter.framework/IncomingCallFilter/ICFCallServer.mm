@interface ICFCallServer
+ (id)sharedInstance;
- (ICFCallServer)init;
- (void)_cleanup;
- (void)_cleanupClient:(id)client;
- (void)_clientConnected;
- (void)_configureWithClient:(id)client;
- (void)_requestCallGrantForIdentifier:(id)identifier forProviderIdentifier:(id)providerIdentifier waitForResponse:(BOOL)response completionBlock:(id)block;
- (void)dealloc;
- (void)init;
- (void)shouldAllowIncomingCallForNumber:(id)number forProviderIdentifier:(id)identifier response:(id)response;
@end

@implementation ICFCallServer

+ (id)sharedInstance
{
  if (sharedInstance_creation != -1)
  {
    +[ICFCallServer sharedInstance];
  }

  return sharedInstance_sInstance;
}

ICFCallServer *__31__ICFCallServer_sharedInstance__block_invoke()
{
  result = objc_alloc_init(ICFCallServer);
  sharedInstance_sInstance = result;
  return result;
}

- (ICFCallServer)init
{
  v19.receiver = self;
  v19.super_class = ICFCallServer;
  v2 = [(ICFCallServer *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __21__ICFCallServer_init__block_invoke;
    v17 = &unk_2797A9470;
    v18 = v2;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __21__ICFCallServer_init__block_invoke_18;
    v12 = &unk_2797A9498;
    v13 = v2;
    v4 = IMXPCCreateServerConnection();
    v3->_connection = v4;
    if (v4)
    {
      xpc_connection_resume(v4);
      notify_post("com.apple.incoming-call-filter-server-started");
    }

    else
    {
      v5 = ICFDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(ICFCallServer *)v5 init];
      }
    }

    v6 = ICFDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_254B1F000, v6, OS_LOG_TYPE_DEFAULT, "Setup ICFCallServer", v8, 2u);
    }
  }

  return v3;
}

uint64_t __21__ICFCallServer_init__block_invoke(uint64_t a1)
{
  v2 = ICFDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __21__ICFCallServer_init__block_invoke_cold_1(v2);
  }

  return [*(a1 + 32) _cleanup];
}

void __21__ICFCallServer_init__block_invoke_18(uint64_t a1, _xpc_connection_s *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  xpc_connection_get_audit_token();
  if (IMDAuditTokenTaskHasEntitlement())
  {
LABEL_2:
    __ICFXPCServer_peer_event_handler(a2, a3);
    goto LABEL_9;
  }

  pid = xpc_connection_get_pid(a2);
  v7 = IMProcessNameForPid();
  v8 = [*(*(a1 + 32) + 16) containsObject:{a2, 0, 0, 0, 0}];
  v9 = ICFDefaultLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412802;
      v13 = v7;
      v14 = 1024;
      *v15 = pid;
      *&v15[4] = 2112;
      *&v15[6] = @"com.apple.private.icfcallserver";
      _os_log_impl(&dword_254B1F000, v9, OS_LOG_TYPE_DEFAULT, "Handling xpc event for previously configured peer(%@:%d) that does not have entitlement (%@).", buf, 0x1Cu);
    }

    goto LABEL_2;
  }

  if (v10)
  {
    *buf = 138412802;
    v13 = @"com.apple.private.icfcallserver";
    v14 = 2112;
    *v15 = v7;
    *&v15[8] = 1024;
    *&v15[10] = pid;
    _os_log_impl(&dword_254B1F000, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Denying xpc connection, task does not have entitlement: %@  (%@:%d)", buf, 0x1Cu);
  }

  xpc_connection_cancel(a2);
LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_requestCallGrantForIdentifier:(id)identifier forProviderIdentifier:(id)providerIdentifier waitForResponse:(BOOL)response completionBlock:(id)block
{
  responseCopy = response;
  v69 = *MEMORY[0x277D85DE8];
  v7 = ICFDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    *buf = 138413058;
    *&buf[4] = identifier;
    if (responseCopy)
    {
      v8 = @"YES";
    }

    *&buf[12] = 2112;
    *&buf[14] = providerIdentifier;
    *&buf[22] = 2112;
    v66 = v8;
    v67 = 2112;
    blockCopy = block;
    _os_log_impl(&dword_254B1F000, v7, OS_LOG_TYPE_DEFAULT, "Requesting call grant for identifier %@ providerIdentifier %@ waitForResponse %@ completionBlock %@", buf, 0x2Au);
  }

  v9 = [block copy];
  v10 = CMFItemCreateWithEmailAddress();
  v11 = IMPhoneNumberRefCopyForPhoneNumber();
  v12 = CMFItemCreateWithPhoneNumber();
  if (!CMFBlockListIsItemBlocked())
  {
    v13 = CMFBlockListIsItemBlocked() != 0;
    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v13 = 1;
  if (v10)
  {
LABEL_9:
    CFRelease(v10);
  }

LABEL_10:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v14 = ICFDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"NO";
    if (v13)
    {
      v15 = @"YES";
    }

    *buf = 138412546;
    *&buf[4] = identifier;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&dword_254B1F000, v14, OS_LOG_TYPE_DEFAULT, "%@ returning %@", buf, 0x16u);
  }

  if (v13)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__ICFCallServer__requestCallGrantForIdentifier_forProviderIdentifier_waitForResponse_completionBlock___block_invoke;
    block[3] = &unk_2797A94C0;
    block[4] = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else if ([(NSMutableArray *)self->_clients count])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v66) = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v16 = dispatch_group_create();
    v17 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    [v17 lock];
    for (i = 0; [(NSMutableArray *)self->_clients count]> i; ++i)
    {
      dispatch_group_enter(v16);
      ++*(v54 + 6);
    }

    [v17 unlock];
    v34 = v9;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    clients = self->_clients;
    v20 = [(NSMutableArray *)clients countByEnumeratingWithState:&v49 objects:v64 count:16];
    if (v20)
    {
      v21 = *v50;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v50 != v21)
          {
            objc_enumerationMutation(clients);
          }

          v23 = *(*(&v49 + 1) + 8 * j);
          v24 = xpc_dictionary_create(0, 0, 0);
          if (v24)
          {
            IMInsertNSStringsToXPCDictionary();
            providerIdentifierCopy = providerIdentifier;
            v33 = 0;
            IMInsertNSStringsToXPCDictionary();
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            v41 = __102__ICFCallServer__requestCallGrantForIdentifier_forProviderIdentifier_waitForResponse_completionBlock___block_invoke_33;
            v42 = &unk_2797A94E8;
            selfCopy = self;
            v44 = v16;
            v45 = v17;
            v46 = buf;
            v47 = &v57;
            v48 = &v53;
            v25 = ICFDefaultLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *v62 = 134217984;
              v63 = v23;
              _os_log_impl(&dword_254B1F000, v25, OS_LOG_TYPE_DEFAULT, "Asking peer %p if we should allow the call", v62, 0xCu);
            }

            if (responseCopy)
            {
              v26 = xpc_connection_send_message_with_reply_sync(v23, v24);
              if (v26)
              {
                v41(handler, v26);
                xpc_release(v26);
              }
            }

            else
            {
              xpc_connection_send_message_with_reply(v23, v24, MEMORY[0x277D85CD0], handler);
            }

            xpc_release(v24);
          }

          else
          {
            dispatch_group_leave(v16);
            [v17 lock];
            --*(v54 + 6);
            [v17 unlock];
          }
        }

        v20 = [(NSMutableArray *)clients countByEnumeratingWithState:&v49 objects:v64 count:16];
      }

      while (v20);
    }

    [v17 lock];
    v27 = *(v54 + 6);
    [v17 unlock];
    if (v27 < 1)
    {
      v29 = ICFDefaultLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*&buf[8] + 24))
        {
          v30 = @"NO";
        }

        else
        {
          v30 = @"YES";
        }

        *v62 = 138412290;
        v63 = v30;
        _os_log_impl(&dword_254B1F000, v29, OS_LOG_TYPE_DEFAULT, "Sync - All done with group, overall result was: %@", v62, 0xCu);
      }

      (v34)[2](v34, (*(*&buf[8] + 24) & 1) == 0, *(v58 + 24));
      dispatch_release(v16);
    }

    else
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __102__ICFCallServer__requestCallGrantForIdentifier_forProviderIdentifier_waitForResponse_completionBlock___block_invoke_35;
      v39[3] = &unk_2797A9510;
      v39[6] = buf;
      v39[7] = &v57;
      v39[4] = v16;
      v39[5] = v34;
      dispatch_group_notify(v16, MEMORY[0x277D85CD0], v39);
    }

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v28 = ICFDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = identifier;
      *&buf[12] = 2112;
      *&buf[14] = providerIdentifier;
      _os_log_impl(&dword_254B1F000, v28, OS_LOG_TYPE_DEFAULT, "No client, but we're asking for %@ on %@", buf, 0x16u);
    }

    v9[2](v9, 1, 0);
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __102__ICFCallServer__requestCallGrantForIdentifier_forProviderIdentifier_waitForResponse_completionBlock___block_invoke_33(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x259C24500](a2) == MEMORY[0x277D86480])
  {
    v10 = ICFDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __102__ICFCallServer__requestCallGrantForIdentifier_forProviderIdentifier_waitForResponse_completionBlock___block_invoke_33_cold_1(a2, a1, v10);
    }

    LOBYTE(v5) = 0;
    v9 = 0;
  }

  else
  {
    v4 = xpc_dictionary_get_BOOL(a2, "response");
    v5 = xpc_dictionary_get_BOOL(a2, "isBlocked");
    v6 = ICFDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"NO";
      if (v4)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      if (v5)
      {
        v7 = @"YES";
      }

      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_254B1F000, v6, OS_LOG_TYPE_DEFAULT, "Got allowCall: %@, blocked: %@", &v13, 0x16u);
    }

    v9 = !v4;
  }

  *(*(*(a1 + 56) + 8) + 24) |= v9;
  *(*(*(a1 + 64) + 8) + 24) |= v5;
  dispatch_group_leave(*(a1 + 40));
  [*(a1 + 48) lock];
  --*(*(*(a1 + 72) + 8) + 24);
  result = [*(a1 + 48) unlock];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void __102__ICFCallServer__requestCallGrantForIdentifier_forProviderIdentifier_waitForResponse_completionBlock___block_invoke_35(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = ICFDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v3 = @"NO";
    }

    else
    {
      v3 = @"YES";
    }

    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_254B1F000, v2, OS_LOG_TYPE_DEFAULT, "Async - All done with group, overall result was: %@", &v7, 0xCu);
  }

  v4 = *(*(*(a1 + 48) + 8) + 24);
  v5 = *(*(*(a1 + 56) + 8) + 24);
  (*(*(a1 + 40) + 16))();
  dispatch_release(*(a1 + 32));
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_clientConnected
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_hasRegistered)
  {
    v3 = ICFDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254B1F000, v3, OS_LOG_TYPE_DEFAULT, "Client connected, noting registered", buf, 2u);
    }

    self->_hasRegistered = 1;
    v4 = ICFCallServerCTServerConnection();
    if (v4)
    {
      v5 = v4;
      v6 = ICFDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v11 = v5;
        _os_log_impl(&dword_254B1F000, v6, OS_LOG_TYPE_DEFAULT, "Registering CT quiet hours callback: connection %p", buf, 0xCu);
      }

      if (_clientConnected__pred__CTServerConnectionRegisterSilentHoursCallbackCoreTelephony != -1)
      {
        [ICFCallServer _clientConnected];
      }

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __33__ICFCallServer__clientConnected__block_invoke_2;
      v9[3] = &unk_2797A9560;
      v9[4] = self;
      if (_clientConnected___CTServerConnectionRegisterSilentHoursCallback(v5, v9) >> 32)
      {
        v7 = ICFDefaultLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [(ICFCallServer *)v7 _clientConnected];
        }
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void *__33__ICFCallServer__clientConnected__block_invoke()
{
  result = MEMORY[0x259C24230]("_CTServerConnectionRegisterSilentHoursCallback", @"CoreTelephony");
  _clientConnected___CTServerConnectionRegisterSilentHoursCallback = result;
  return result;
}

uint64_t __33__ICFCallServer__clientConnected__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__ICFCallServer__clientConnected__block_invoke_3;
  v8[3] = &unk_2797A9538;
  v8[4] = &v9;
  [v2 _requestCallGrantForIdentifier:a2 forProviderIdentifier:"com.apple.coretelephony" waitForResponse:1 completionBlock:v8];
  v3 = ICFDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v10 + 24))
    {
      v4 = @"allowed";
    }

    else
    {
      v4 = @"not allowed";
    }

    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_254B1F000, v3, OS_LOG_TYPE_DEFAULT, "Telling CT that this call is %@", buf, 0xCu);
  }

  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_cleanup
{
  if (self->_hasRegistered)
  {
    v8 = v2;
    v9 = v3;
    self->_hasRegistered = 0;
    v4 = ICFDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_254B1F000, v4, OS_LOG_TYPE_DEFAULT, "Client Disconnected, unregistering", v7, 2u);
    }

    v5 = ICFCallServerCTServerConnection();
    if (v5)
    {
      v6 = v5;
      if (_cleanup__pred__CTServerConnectionUnregisterSilentHoursCallbackCoreTelephony != -1)
      {
        [ICFCallServer _cleanup];
      }

      _cleanup___CTServerConnectionUnregisterSilentHoursCallback(v6);
    }
  }
}

void *__25__ICFCallServer__cleanup__block_invoke()
{
  result = MEMORY[0x259C24230]("_CTServerConnectionUnregisterSilentHoursCallback", @"CoreTelephony");
  _cleanup___CTServerConnectionUnregisterSilentHoursCallback = result;
  return result;
}

- (void)_cleanupClient:(id)client
{
  v11 = *MEMORY[0x277D85DE8];
  if (client)
  {
    v5 = ICFDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109120;
      pid = xpc_connection_get_pid(client);
      _os_log_impl(&dword_254B1F000, v5, OS_LOG_TYPE_DEFAULT, "Removing client %d", &v9, 8u);
    }

    [(NSMutableArray *)self->_clients removeObject:client];
    v6 = ICFDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(NSMutableArray *)self->_clients count];
      v9 = 67109120;
      pid = v7;
      _os_log_impl(&dword_254B1F000, v6, OS_LOG_TYPE_DEFAULT, "We have %d clients left", &v9, 8u);
    }

    if (![(NSMutableArray *)self->_clients count])
    {
      [(ICFCallServer *)self _cleanup];

      self->_clients = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_configureWithClient:(id)client
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = ICFDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    clientCopy = client;
    _os_log_impl(&dword_254B1F000, v5, OS_LOG_TYPE_DEFAULT, "Configuring with client: %@", &v9, 0xCu);
  }

  if (client && ([(NSMutableArray *)self->_clients containsObject:client]& 1) == 0)
  {
    if (!self->_clients)
    {
      self->_clients = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v6 = ICFDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      pid = xpc_connection_get_pid(client);
      v9 = 67109120;
      LODWORD(clientCopy) = pid;
      _os_log_impl(&dword_254B1F000, v6, OS_LOG_TYPE_DEFAULT, "Adding client %d", &v9, 8u);
    }

    [(NSMutableArray *)self->_clients addObject:client];
    [(ICFCallServer *)self _clientConnected];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)shouldAllowIncomingCallForNumber:(id)number forProviderIdentifier:(id)identifier response:(id)response
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = ICFDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    numberCopy = number;
    v15 = 2112;
    identifierCopy = identifier;
    _os_log_impl(&dword_254B1F000, v9, OS_LOG_TYPE_DEFAULT, "Should allow incoming call for number %@ providerIdentifier %@", buf, 0x16u);
  }

  if (response)
  {
    v10 = [response copy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __81__ICFCallServer_shouldAllowIncomingCallForNumber_forProviderIdentifier_response___block_invoke;
    v12[3] = &unk_2797A9588;
    v12[4] = v10;
    [(ICFCallServer *)self _requestCallGrantForIdentifier:number forProviderIdentifier:identifier waitForResponse:0 completionBlock:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = ICFDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254B1F000, v3, OS_LOG_TYPE_DEFAULT, "Deallocing server", buf, 2u);
  }

  [(ICFCallServer *)self _cleanup];
  v4.receiver = self;
  v4.super_class = ICFCallServer;
  [(ICFCallServer *)&v4 dealloc];
}

- (void)init
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = @"com.apple.incoming-call-filter-server";
  _os_log_error_impl(&dword_254B1F000, log, OS_LOG_TYPE_ERROR, "Could not configure server: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __102__ICFCallServer__requestCallGrantForIdentifier_forProviderIdentifier_waitForResponse_completionBlock___block_invoke_33_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v5 = 138412546;
  v6 = a1;
  v7 = 1024;
  v8 = v3;
  _os_log_error_impl(&dword_254B1F000, log, OS_LOG_TYPE_ERROR, "Error requesting client: %@  (0x%X)", &v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

@end