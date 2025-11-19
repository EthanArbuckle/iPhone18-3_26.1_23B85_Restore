@interface MFNWConnectionWrapper
+ (id)log;
- (BOOL)_connectToEndpoint:(id)a3 service:(id)a4;
- (BOOL)isCellularConnection;
- (BOOL)isConnectionSecure;
- (BOOL)isConstrained;
- (BOOL)setSecurityProtocol:(id)a3;
- (MFNWConnectionWrapper)init;
- (NSString)description;
- (NSString)remoteHostname;
- (id)_createConnectionWithEndpoint:(id)a3 error:(int *)a4;
- (id)_negotiatedSecurityProtocol;
- (id)securityProtocol;
- (int64_t)readBytesIntoBuffer:(char *)a3 maxLength:(unint64_t)a4;
- (int64_t)writeBytes:(const char *)a3 length:(unint64_t)a4;
- (unsigned)remotePortNumber;
- (void)_closeWithError:(id)a3;
- (void)_closeWithErrorDomain:(id)a3 code:(int64_t)a4;
- (void)_configureTLS:(id)a3;
- (void)_handleConnectionFailure:(int)a3;
- (void)_networkActivityEnded;
- (void)_networkActivityStarted;
- (void)_scheduleNextRead;
- (void)cancel;
- (void)dealloc;
- (void)enableThroughputMonitoring:(BOOL)a3;
- (void)registerForBytesAvailableWithHandler:(id)a3;
- (void)unregisterForBytesAvailable;
@end

@implementation MFNWConnectionWrapper

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__MFNWConnectionWrapper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_25 != -1)
  {
    dispatch_once(&log_onceToken_25, block);
  }

  v2 = log_log_25;

  return v2;
}

void __28__MFNWConnectionWrapper_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_25;
  log_log_25 = v1;
}

- (MFNWConnectionWrapper)init
{
  v11.receiver = self;
  v11.super_class = MFNWConnectionWrapper;
  v2 = [(MFNWConnectionWrapper *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.mail.connection", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    readBufferLock = v2->_readBufferLock;
    v2->_readBufferLock = v6;

    v8 = dispatch_group_create();
    writeGroup = v2->_writeGroup;
    v2->_writeGroup = v8;

    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_timeout = 60;
  }

  return v2;
}

- (void)dealloc
{
  [(MFNWConnectionWrapper *)self close];
  v3.receiver = self;
  v3.super_class = MFNWConnectionWrapper;
  [(MFNWConnectionWrapper *)&v3 dealloc];
}

- (void)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = +[MFNWConnectionWrapper log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "Connection cancelled: %@", &v6, 0xCu);
  }

  v4 = [MEMORY[0x1E696ABC0] ef_cancelledError];
  [(MFNWConnectionWrapper *)self _closeWithError:v4];

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)_connectToEndpoint:(id)a3 service:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v35 = 0;
  v8 = [(MFNWConnectionWrapper *)self _createConnectionWithEndpoint:v6 error:&v35];
  if (!v8)
  {
    v23 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_endpoint_get_hostname(v6)];
      [(MFNWConnectionWrapper *)v24 _connectToEndpoint:buf service:v23];
    }

    [(MFNWConnectionWrapper *)self _closeWithErrorDomain:*MEMORY[0x1E696A798] code:v35];
    goto LABEL_27;
  }

  objc_storeStrong(&self->_service, a4);
  objc_storeStrong(&self->_connection, v8);
  nw_connection_set_queue(v8, self->_queue);
  [MEMORY[0x1E699B310] attachCurrentActivityToConnection:v8];
  connection = self->_connection;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke;
  v34[3] = &unk_1E7AA7480;
  v34[4] = self;
  MEMORY[0x1B272B100](connection, v34);
  v10 = self->_connection;
  v33[15] = MEMORY[0x1E69E9820];
  v33[16] = 3221225472;
  v33[17] = __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_11;
  v33[18] = &unk_1E7AA25C0;
  v33[19] = self;
  nw_connection_set_cancel_handler();
  v11 = self->_connection;
  v33[10] = MEMORY[0x1E69E9820];
  v33[11] = 3221225472;
  v33[12] = __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_12;
  v33[13] = &unk_1E7AA25C0;
  v33[14] = self;
  nw_connection_set_read_close_handler();
  v12 = self->_connection;
  v33[5] = MEMORY[0x1E69E9820];
  v33[6] = 3221225472;
  v33[7] = __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_13;
  v33[8] = &unk_1E7AA25C0;
  v33[9] = self;
  nw_connection_set_write_close_handler();
  v13 = self->_connection;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_14;
  v33[3] = &unk_1E7AA74A8;
  v33[4] = self;
  nw_connection_set_viability_changed_handler(v13, v33);
  v14 = dispatch_semaphore_create(0);
  eventSemaphore = self->_eventSemaphore;
  self->_eventSemaphore = v14;

  if (!self->_eventSemaphore)
  {
    v25 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v25, OS_LOG_TYPE_INFO, "could not create event semaphore", buf, 2u);
    }

    [(MFNWConnectionWrapper *)self _closeWithErrorDomain:*MEMORY[0x1E696A798] code:12];
    goto LABEL_27;
  }

  [(MFNWConnectionWrapper *)self _networkActivityStarted];
  Current = CFAbsoluteTimeGetCurrent();
  v17 = +[MFNWConnectionWrapper log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(MFNWConnectionWrapper *)self securityProtocol];
    *buf = 134218498;
    v37 = self;
    v38 = 2112;
    v39 = *&v6;
    v40 = 2112;
    v41 = v18;
    _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "opening connection %p to %@ (%@)", buf, 0x20u);
  }

  nw_connection_start(v8);
  v19 = self->_eventSemaphore;
  v20 = dispatch_time(0, 30000000000);
  if (dispatch_semaphore_wait(v19, v20))
  {
    [(MFNWConnectionWrapper *)self _networkActivityEnded];
    v21 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v37 = self;
      _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "opening connection %p timed out", buf, 0xCu);
    }

    v22 = 60;
  }

  else
  {
    self->_connectTime = CFAbsoluteTimeGetCurrent();
    if (self->_connectionState == 3)
    {
      v26 = +[MFNWConnectionWrapper log];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = CFAbsoluteTimeGetCurrent();
        *buf = 134218240;
        v37 = self;
        v38 = 2048;
        v39 = v27 - Current;
        _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_DEFAULT, "opening connection %p took %f seconds", buf, 0x16u);
      }

      v28 = +[MFNWConnectionWrapper log];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [(MFNWConnectionWrapper *)self _negotiatedSecurityProtocol];
        *buf = 134218242;
        v37 = self;
        v38 = 2114;
        v39 = *&v29;
        _os_log_impl(&dword_1B0389000, v28, OS_LOG_TYPE_INFO, "negotiated SSL version for connection %p is %{public}@", buf, 0x16u);
      }

      [(MFNWConnectionWrapper *)self _networkActivityEnded];
      [(MFNWConnectionWrapper *)self _scheduleNextRead];
      if (!v35)
      {
        v30 = 1;
        goto LABEL_28;
      }

      v22 = 57;
      goto LABEL_26;
    }

    [(MFNWConnectionWrapper *)self _networkActivityEnded];
    v21 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v37 = self;
      _os_log_impl(&dword_1B0389000, v21, OS_LOG_TYPE_DEFAULT, "connection %p failed to connect", buf, 0xCu);
    }

    v22 = 57;
  }

LABEL_26:
  [(MFNWConnectionWrapper *)self _closeWithErrorDomain:*MEMORY[0x1E696A798] code:v22];
LABEL_27:
  v30 = 0;
LABEL_28:

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

void __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v16 = 134218498;
      v17 = v7;
      v18 = 2080;
      v19 = nw_connection_state_to_string();
      v20 = 2112;
      v21 = v5;
      _os_log_error_impl(&dword_1B0389000, v6, OS_LOG_TYPE_ERROR, "state for connection %p: %s (error: %@)", &v16, 0x20u);
    }
  }

  else
  {
    v6 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = nw_connection_state_to_string();
      __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_cold_1(v8, v9, &v16, v6);
    }
  }

  *(*(a1 + 32) + 24) = a2;
  v10 = *(a1 + 32);
  if (!*(v10 + 48))
  {
    v11 = nw_connection_copy_endpoint(*(v10 + 16));
    v12 = *(a1 + 32);
    v13 = *(v12 + 48);
    *(v12 + 48) = v11;

    v10 = *(a1 + 32);
  }

  if (*(v10 + 32))
  {
    if (a2 == 3)
    {
      [v10 _handleConnectionReady];
    }

    else if ((a2 & 0xFFFFFFFE) == 4)
    {
      [v10 _handleConnectionFailure:a2];
    }
  }

  else
  {
    v14 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_cold_2();
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_11(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 32);
  v3 = +[MFNWConnectionWrapper log];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_11_cold_1(v1);
    }

    *(*v1 + 24) = 5;
    dispatch_semaphore_signal(*(*v1 + 32));
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_cold_2();
    }
  }
}

void __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_12(uint64_t a1)
{
  v2 = +[MFNWConnectionWrapper log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_12_cold_1(a1);
  }

  *(*(a1 + 32) + 120) = 0;
  nw_connection_cancel(*(*(a1 + 32) + 16));
}

void __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_13(uint64_t a1)
{
  v2 = +[MFNWConnectionWrapper log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_13_cold_1(a1);
  }

  *(*(a1 + 32) + 121) = 0;
}

void __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_14(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v3 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v6 = 134217984;
      v7 = v4;
      _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_INFO, "connection %p no longer viable", &v6, 0xCu);
    }

    *(*(a1 + 32) + 120) = 0;
    *(*(a1 + 32) + 121) = 0;
    nw_connection_cancel(*(*(a1 + 32) + 16));
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)_createConnectionWithEndpoint:(id)a3 error:(int *)a4
{
  v7 = a3;
  if (!v7)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"MFNWConnectionWrapper.m" lineNumber:240 description:@"endpoint is NULL!"];
  }

  v8 = _Block_copy(*MEMORY[0x1E6977EC0]);
  securityProtocol = self->_securityProtocol;
  if (securityProtocol && ![(NSString *)securityProtocol isEqualToString:*MEMORY[0x1E695E968]])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__MFNWConnectionWrapper__createConnectionWithEndpoint_error___block_invoke;
    aBlock[3] = &unk_1E7AA74D0;
    aBlock[4] = self;
    v10 = _Block_copy(aBlock);

    v8 = v10;
  }

  secure_tcp = nw_parameters_create_secure_tcp(v8, &__block_literal_global_52);
  if (!secure_tcp)
  {
    v21 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [MFNWConnectionWrapper _createConnectionWithEndpoint:error:];
    }

    if (!a4)
    {
      v23 = 0;
      goto LABEL_37;
    }

    v22 = __error();
    v23 = 0;
    goto LABEL_36;
  }

  v12 = [(MFNWConnectionWrapper *)self networkAccountIdentifier];

  if (v12)
  {
    v13 = [(MFNWConnectionWrapper *)self networkAccountIdentifier];
    [v13 UTF8String];
    nw_parameters_set_account_id();
  }

  v14 = [(MFNWConnectionWrapper *)self sourceApplicationBundleIdentifier];

  if (v14)
  {
    v15 = [(MFNWConnectionWrapper *)self sourceApplicationBundleIdentifier];
    [v15 UTF8String];
    nw_parameters_set_source_application_by_bundle_id();
  }

  if ([(MFNWConnectionWrapper *)self isNonAppInitiated])
  {
    v16 = nw_parameters_attribution_user;
  }

  else
  {
    v16 = nw_parameters_attribution_developer;
  }

  nw_parameters_set_attribution(secure_tcp, v16);
  v17 = [(MFNWConnectionWrapper *)self connectionServiceType];

  if (v17)
  {
    v18 = [(MFNWConnectionWrapper *)self connectionServiceType];
    v19 = [v18 UTF8String];

    if (!strncmp(v19, "kCTDataConnectionServiceType", 0x1CuLL))
    {
      v20 = xpc_array_create(0, 0);
      v24 = xpc_array_create(0, 0);
      v25 = v24;
      if (v20 && v24)
      {
        xpc_array_set_string(v20, 0xFFFFFFFFFFFFFFFFLL, "Cellular");
        xpc_array_set_string(v25, 0xFFFFFFFFFFFFFFFFLL, v19 + 28);
        nw_parameters_set_required_netagent_classes();
      }

      else
      {
        v26 = +[MFNWConnectionWrapper log];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [MFNWConnectionWrapper _createConnectionWithEndpoint:error:];
        }
      }
    }

    else
    {
      v20 = +[MFNWConnectionWrapper log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MFNWConnectionWrapper _createConnectionWithEndpoint:error:];
      }
    }
  }

  v23 = nw_connection_create(v7, secure_tcp);
  if (!v23)
  {
    v27 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MFNWConnectionWrapper _createConnectionWithEndpoint:error:];
    }

    if (a4)
    {
      v22 = __error();
LABEL_36:
      *a4 = *v22;
    }
  }

LABEL_37:

  return v23;
}

- (void)_handleConnectionFailure:(int)a3
{
  if (a3 == 5)
  {
    dispatch_semaphore_signal(self->_eventSemaphore);
  }

  else if (a3 == 4)
  {
    nw_connection_cancel(self->_connection);
  }
}

- (void)_configureTLS:(id)a3
{
  v4 = a3;
  v5 = [(MFNWConnectionWrapper *)self clientCertificates];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(MFNWConnectionWrapper *)self clientCertificates];
    v8 = [v7 objectAtIndexedSubscript:0];
    sec_protocol_options_set_local_identity(v4, v8);
  }

  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__MFNWConnectionWrapper__configureTLS___block_invoke;
  v9[3] = &unk_1E7AA7518;
  objc_copyWeak(&v10, &location);
  sec_protocol_options_set_verify_block(v4, v9, self->_queue);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __39__MFNWConnectionWrapper__configureTLS___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained[24])
  {
    v9 = sec_trust_copy_ref(v6);
    v10 = (*(WeakRetained[24] + 16))();
    v11 = 0;
    if (v11)
    {
      [WeakRetained setError:v11];
    }

    v12 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromBOOL();
      __39__MFNWConnectionWrapper__configureTLS___block_invoke_cold_1(v13, buf, v12);
    }

    CFRelease(v9);
  }

  else
  {
    v10 = 1;
  }

  v7[2](v7, v10);

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_negotiatedSecurityProtocol
{
  connection = self->_connection;
  if (connection)
  {
    v3 = MEMORY[0x1B272B240]();
    v4 = nw_connection_copy_protocol_metadata(connection, v3);

    negotiated_protocol_version = sec_protocol_metadata_get_negotiated_protocol_version(v4);
    if (negotiated_protocol_version < 0xB && ((0x595u >> negotiated_protocol_version) & 1) != 0)
    {
      v6 = off_1E7AA75F8[negotiated_protocol_version];
    }

    else
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown-protocol-version(%d)", negotiated_protocol_version];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isConnectionSecure
{
  connection = self->_connection;
  if (!connection)
  {
    return 0;
  }

  v3 = MEMORY[0x1B272B240]();
  v4 = nw_connection_copy_protocol_metadata(connection, v3);

  v5 = sec_protocol_metadata_get_negotiated_tls_protocol_version(v4) > 0x300u;
  return v5;
}

- (void)_networkActivityStarted
{
  ECAssertNetworkActivityAllowed();
  v3 = [(MFNWConnectionWrapper *)self networkActivityChangeBlock];

  if (v3)
  {
    v4 = [(MFNWConnectionWrapper *)self networkActivityChangeBlock];
    v4[2](v4, 1);
  }
}

- (void)_networkActivityEnded
{
  v3 = [(MFNWConnectionWrapper *)self networkActivityChangeBlock];

  if (v3)
  {
    v4 = [(MFNWConnectionWrapper *)self networkActivityChangeBlock];
    v4[2](v4, 0);
  }
}

- (int64_t)writeBytes:(const char *)a3 length:(unint64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -1;
  v7 = +[MFNWConnectionWrapper log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v27 = self;
    v28 = 2048;
    v29 = *&a4;
    _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_INFO, "writeBytes on connection %p for %zu bytes", buf, 0x16u);
  }

  if (self->_connection && self->_writable)
  {
    [(MFNWConnectionWrapper *)self _networkActivityStarted];
    v8 = dispatch_data_create(a3, a4, 0, 0);
    dispatch_group_enter(self->_writeGroup);
    connection = self->_connection;
    v10 = *MEMORY[0x1E6977E90];
    completion[0] = MEMORY[0x1E69E9820];
    completion[1] = 3221225472;
    completion[2] = __43__MFNWConnectionWrapper_writeBytes_length___block_invoke;
    completion[3] = &unk_1E7AA7540;
    completion[4] = self;
    completion[5] = &v22;
    completion[6] = a4;
    nw_connection_send(connection, v8, v10, 0, completion);
    writeGroup = self->_writeGroup;
    v12 = dispatch_time(0, 1000000000 * self->_timeout);
    if (dispatch_group_wait(writeGroup, v12))
    {
      v13 = +[MFNWConnectionWrapper log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        Current = CFAbsoluteTimeGetCurrent();
        connectTime = self->_connectTime;
        v20 = Current - connectTime;
        LODWORD(connectTime) = self->_timeout;
        *buf = 134218240;
        v27 = self;
        v28 = 2048;
        v29 = v20 - *&connectTime;
        _os_log_error_impl(&dword_1B0389000, v13, OS_LOG_TYPE_ERROR, "writeBytes: connection %p timed out (lifetime: %f seconds)", buf, 0x16u);
      }

      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
      [(MFNWConnectionWrapper *)self setError:v14];
    }

    [(MFNWConnectionWrapper *)self _networkActivityEnded];
  }

  v15 = v23[3];
  _Block_object_dispose(&v22, 8);
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void __43__MFNWConnectionWrapper_writeBytes_length___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __43__MFNWConnectionWrapper_writeBytes_length___block_invoke_cold_1(a1);
    }
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a1[6];
  }

  dispatch_group_leave(*(a1[4] + 64));
}

- (int64_t)readBytesIntoBuffer:(char *)a3 maxLength:(unint64_t)a4
{
  v7 = +[MFNWConnectionWrapper log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [MFNWConnectionWrapper readBytesIntoBuffer:maxLength:];
  }

  if (!self->_connection || !self->_readable)
  {
    return -1;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__MFNWConnectionWrapper_readBytesIntoBuffer_maxLength___block_invoke;
  aBlock[3] = &unk_1E7AA7568;
  aBlock[4] = self;
  aBlock[5] = a4;
  aBlock[6] = a3;
  v8 = _Block_copy(aBlock);
  [(MFNWConnectionWrapper *)self _networkActivityStarted];
  v9 = v8[2];
  v16 = 0;
  v10 = v9(v8, @"buffered", &v16, 0.0);
  v11 = v16;
  if (v10 < 0)
  {
    [(MFNWConnectionWrapper *)self _scheduleNextRead];
    LODWORD(v12) = self->_timeout;
    v15 = v11;
    v10 = (v8[2])(v8, @"scheduled read", &v15, v12);
    v13 = v15;

    v11 = v13;
  }

  [(MFNWConnectionWrapper *)self _networkActivityEnded];
  if (v11)
  {
    [(MFNWConnectionWrapper *)self setError:v11];
  }

  return v10;
}

int64_t __55__MFNWConnectionWrapper_readBytesIntoBuffer_maxLength___block_invoke(uint64_t a1, void *a2, CFErrorRef *a3, double a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = *(*(a1 + 32) + 56);
  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:a4];
  LODWORD(v8) = [v8 lockWhenCondition:2 beforeDate:v9];

  if (v8)
  {
    v10 = *(*(a1 + 32) + 88);
    if (v10)
    {
      v11 = [v10 length];
      v12 = v11;
      v13 = *(a1 + 32);
      if (*(a1 + 40) >= v11 - *(v13 + 96))
      {
        v14 = v11 - *(v13 + 96);
      }

      else
      {
        v14 = *(a1 + 40);
      }

      if (v14 >= 1)
      {
        memcpy(*(a1 + 48), ([*(v13 + 88) bytes] + *(*(a1 + 32) + 96)), v14);
        *(*(a1 + 32) + 96) += v14;
        v15 = *(a1 + 32);
        if (*(v15 + 96) == v12)
        {
          *(v15 + 96) = 0;
          v16 = *(a1 + 32);
          v17 = *(v16 + 88);
          *(v16 + 88) = 0;
        }
      }

      v18 = +[MFNWConnectionWrapper log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 32);
        v20 = *(*&v19 + 96);
        v40 = 138544130;
        v41 = v7;
        v42 = 2048;
        v43 = v19;
        v44 = 2048;
        v45 = v14;
        v46 = 2048;
        v47 = v20;
        _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_INFO, "readBytes: returning %{public}@ data for connection %p (%lu bytes, new offset %lu)", &v40, 0x2Au);
      }

      v21 = *(a1 + 32);
      if ((*(v21 + 72) & 1) == 0)
      {
        if ((v14 & 0x8000000000000000) == 0)
        {
          [*(v21 + 56) unlockWithCondition:2 * (*(v21 + 88) != 0)];
          *a3 = 0;
          goto LABEL_32;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v25 = +[MFNWConnectionWrapper log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = *(a1 + 32);
        v40 = 138543618;
        v41 = v7;
        v42 = 2048;
        v43 = v26;
        _os_log_impl(&dword_1B0389000, v25, OS_LOG_TYPE_INFO, "readBytes: no %{public}@ data to return for connection %p", &v40, 0x16u);
      }

      v21 = *(a1 + 32);
      v14 = -1;
      if (*(v21 + 72) != 1)
      {
LABEL_26:
        v30 = *(v21 + 80);
        if (v30)
        {
          v31 = nw_error_copy_cf_error(v30);
        }

        else
        {
          v31 = 0;
        }

        [*(*(a1 + 32) + 56) unlockWithCondition:0];
        v32 = +[MFNWConnectionWrapper log];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(a1 + 32);
          Current = CFAbsoluteTimeGetCurrent();
          v35 = *(*(a1 + 32) + 128);
          v36 = [(__CFError *)v31 ef_publicDescription];
          v40 = 134218498;
          v41 = v33;
          v42 = 2048;
          v43 = Current - v35 - a4;
          v44 = 2114;
          v45 = v36;
          _os_log_impl(&dword_1B0389000, v32, OS_LOG_TYPE_DEFAULT, "readBytes: connection %p signaled with no buffered data (lifetime: %f seconds): %{public}@", &v40, 0x20u);
        }

        v37 = v31;
        *a3 = v31;

        goto LABEL_32;
      }
    }

    [*(v21 + 56) unlockWithCondition:1];
    v27 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 32);
      v29 = CFAbsoluteTimeGetCurrent() - v28[16];
      v40 = 134218240;
      v41 = v28;
      v42 = 2048;
      v43 = v29;
      _os_log_impl(&dword_1B0389000, v27, OS_LOG_TYPE_DEFAULT, "readBytes: connection %p canceled with a still scheduled read (lifetime: ~%f seconds)", &v40, 0x16u);
    }

    *a3 = [MEMORY[0x1E696ABC0] ef_cancelledError];
  }

  else
  {
    if (a4 <= 0.0)
    {
      *a3 = 0;
    }

    else
    {
      v22 = +[MFNWConnectionWrapper log];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        v24 = CFAbsoluteTimeGetCurrent() - v23[16] - a4;
        v40 = 134218240;
        v41 = v23;
        v42 = 2048;
        v43 = v24;
        _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "readBytes: connection %p timed out (lifetime: %f seconds)", &v40, 0x16u);
      }

      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
    }

    v14 = -1;
  }

LABEL_32:

  v38 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_scheduleNextRead
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_7(&dword_1B0389000, v0, v1, "connection %p NOT calling nw_connection_receive", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__MFNWConnectionWrapper__scheduleNextRead__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a5;
  v10 = (a1 + 32);
  [*(*(a1 + 32) + 56) lock];
  v11 = *(a1 + 32);
  if (v11[11])
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MFNWConnectionWrapper.m" lineNumber:514 description:@"nw_connection_receive: _buffer must be NULL"];

    v11 = *v10;
  }

  if (v11[12])
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MFNWConnectionWrapper.m" lineNumber:515 description:@"nw_connection_receive: _bufferOffset must be 0"];
  }

  if (v8)
  {
    size = dispatch_data_get_size(v8);
    v13 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v24 = *v10;
      v25 = NSStringFromBOOL();
      v28 = 134218754;
      v29 = v24;
      v30 = 2048;
      v31 = size;
      v32 = 2112;
      v33 = v25;
      v34 = 2112;
      v35 = v9;
      _os_log_debug_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEBUG, "nw_connection_receive (%p): length=%lu isComplete=%@ error=%@", &v28, 0x2Au);
    }

    objc_storeStrong(*v10 + 11, a2);
    v14 = *(*v10 + 10);
    *(*v10 + 10) = 0;
  }

  else
  {
    v15 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *v10;
      v28 = 134218242;
      v29 = v16;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "nw_connection_receive (%p): no content error=%@", &v28, 0x16u);
    }

    v17 = *v10;
    v18 = v9;
    v14 = v17[10];
    v17[10] = v18;
  }

  *(*v10 + 72) = 0;
  [*(*v10 + 7) unlockWithCondition:2];
  if (v8)
  {
    v19 = [*v10 bytesAvailableHandler];
    v20 = v19 == 0;

    if (!v20)
    {
      v21 = +[MFNWConnectionWrapper log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __42__MFNWConnectionWrapper__scheduleNextRead__block_invoke_cold_1(v10);
      }

      v22 = [*v10 bytesAvailableHandler];
      v22[2]();
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_closeWithError:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [(MFNWConnectionWrapper *)self setError:v4];
    v5 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 ef_publicDescription];
      v16 = 134218242;
      v17 = self;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "closing connection %p with error: %{public}@", &v16, 0x16u);
    }
  }

  else
  {
    v5 = +[MFNWConnectionWrapper log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = self;
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "closing connection %p", &v16, 0xCu);
    }
  }

  os_unfair_lock_lock(&self->_lock);
  connection = self->_connection;
  if (connection)
  {
    MEMORY[0x1B272B100](connection, &__block_literal_global_65);
  }

  if (self->_connectionState != 5)
  {
    v8 = self->_connection;
    if (v8)
    {
      nw_connection_cancel(v8);
    }

    eventSemaphore = self->_eventSemaphore;
    if (eventSemaphore)
    {
      v10 = dispatch_time(0, 5000000000);
      v11 = dispatch_semaphore_wait(eventSemaphore, v10);
      connectionState = self->_connectionState;
      if (v11)
      {
        if (connectionState == 5)
        {
          v13 = +[MFNWConnectionWrapper log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [MFNWConnectionWrapper _closeWithError:];
          }

LABEL_19:

          v14 = self->_connection;
          if (v14)
          {
            nw_connection_force_cancel(v14);
          }

          goto LABEL_21;
        }
      }

      else if (connectionState == 5)
      {
        goto LABEL_21;
      }

      v13 = +[MFNWConnectionWrapper log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [MFNWConnectionWrapper _closeWithError:];
      }

      goto LABEL_19;
    }
  }

LABEL_21:
  os_unfair_lock_unlock(&self->_lock);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_closeWithErrorDomain:(id)a3 code:(int64_t)a4
{
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:a3 code:a4 userInfo:0];
  [(MFNWConnectionWrapper *)self _closeWithError:?];
}

- (id)securityProtocol
{
  if (self->_securityProtocol)
  {
    return self->_securityProtocol;
  }

  else
  {
    return *MEMORY[0x1E695E968];
  }
}

- (BOOL)setSecurityProtocol:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSString *)self->_securityProtocol isEqualToString:v6])
  {
    v7 = 0;
  }

  else
  {
    v7 = self->_securityProtocol;
    objc_storeStrong(&self->_securityProtocol, a3);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (self->_connection)
  {
    v8 = 1;
    if (v6 && v7 != v6 && ![(NSString *)v6 isEqualToString:*MEMORY[0x1E695E968]])
    {
      v9 = +[MFNWConnectionWrapper log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v19 = 134217984;
        v20 = self;
        _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_INFO, "starting TLS on connection %p", &v19, 0xCu);
      }

      options = nw_tls_create_options();
      [(MFNWConnectionWrapper *)self _configureTLS:options];
      if (!self->_eventSemaphore)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        [v18 handleFailureInMethod:a2 object:self file:@"MFNWConnectionWrapper.m" lineNumber:613 description:@"event semaphore is NULL"];
      }

      connection = self->_connection;
      nw_connection_append_and_start_application_protocol();
      eventSemaphore = self->_eventSemaphore;
      v13 = dispatch_time(0, 30000000000);
      if (dispatch_semaphore_wait(eventSemaphore, v13))
      {
        v14 = +[MFNWConnectionWrapper log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [MFNWConnectionWrapper setSecurityProtocol:];
        }
      }

      else
      {
        if (self->_connectionState == 3)
        {
          v14 = +[MFNWConnectionWrapper log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [(MFNWConnectionWrapper *)self _negotiatedSecurityProtocol];
            v19 = 134218242;
            v20 = self;
            v21 = 2114;
            v22 = v15;
            _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "negotiated SSL version for connection %p changed to %{public}@", &v19, 0x16u);
          }

          v8 = 1;
          goto LABEL_23;
        }

        v14 = +[MFNWConnectionWrapper log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [MFNWConnectionWrapper setSecurityProtocol:];
        }
      }

      v8 = 0;
LABEL_23:
    }
  }

  else
  {
    v8 = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)enableThroughputMonitoring:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  if (enableThroughputMonitoring__onceToken != -1)
  {
    [MFNWConnectionWrapper enableThroughputMonitoring:];
  }

  if (enableThroughputMonitoring__sLowThroughputThreshold && self->_connection && [(MFNWConnectionWrapper *)self isValid])
  {
    v5 = +[MFNWConnectionWrapper log];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        *buf = 134217984;
        v10 = self;
        _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "turning throughput monitoring ON for connection %p", buf, 0xCu);
      }
    }

    else if (v6)
    {
      *buf = 134217984;
      v10 = self;
      _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "turning throughput monitoring OFF for connection %p", buf, 0xCu);
    }

    connection = self->_connection;
    nw_connection_set_low_throughput_handler();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __52__MFNWConnectionWrapper_enableThroughputMonitoring___block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] em_userDefaults];
  enableThroughputMonitoring__sLowThroughputThreshold = [v0 integerForKey:@"ThroughputMonitoringThreshold"];

  v1 = enableThroughputMonitoring__sLowThroughputThreshold == 0;
  v2 = +[MFNWConnectionWrapper log];
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    if (v3)
    {
      LOWORD(v8[0]) = 0;
      v4 = "throughput monitoring is OFF";
      v5 = v2;
      v6 = 2;
      goto LABEL_6;
    }
  }

  else if (v3)
  {
    v8[0] = 67109120;
    v8[1] = enableThroughputMonitoring__sLowThroughputThreshold;
    v4 = "throughput monitoring is ON (%u bytes/sec)";
    v5 = v2;
    v6 = 8;
LABEL_6:
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, v4, v8, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __52__MFNWConnectionWrapper_enableThroughputMonitoring___block_invoke_75(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[MFNWConnectionWrapper log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_1B0389000, v2, OS_LOG_TYPE_DEFAULT, "closing connection %p due to low throughput", &v6, 0xCu);
  }

  result = [*(a1 + 32) _closeWithErrorDomain:*MEMORY[0x1E696A798] code:60];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)registerForBytesAvailableWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[MFNWConnectionWrapper log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [MFNWConnectionWrapper registerForBytesAvailableWithHandler:];
  }

  queue = self->_queue;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __62__MFNWConnectionWrapper_registerForBytesAvailableWithHandler___block_invoke;
  v11 = &unk_1E7AA4EE0;
  v12 = self;
  v7 = v4;
  v13 = v7;
  dispatch_sync(queue, &v8);
  [(MFNWConnectionWrapper *)self _scheduleNextRead:v8];
}

- (void)unregisterForBytesAvailable
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_7(&dword_1B0389000, v0, v1, "unregisterForBytesAvailable (%p)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (NSString)remoteHostname
{
  endpoint = self->_endpoint;
  if (endpoint)
  {
    endpoint = nw_endpoint_get_hostname(endpoint);
    if (endpoint)
    {
      endpoint = [MEMORY[0x1E696AEC0] stringWithUTF8String:endpoint];
    }

    v2 = vars8;
  }

  return endpoint;
}

- (unsigned)remotePortNumber
{
  endpoint = self->_endpoint;
  if (endpoint)
  {
    LODWORD(endpoint) = nw_endpoint_get_port(endpoint);
  }

  return endpoint;
}

- (BOOL)isCellularConnection
{
  connection = self->_connection;
  v3 = nw_connection_copy_connected_path();
  if (v3)
  {
    v4 = nw_path_copy_interface();
    if (v4)
    {
      v5 = MEMORY[0x1B272B230](v3, 2);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isConstrained
{
  v2 = nw_connection_copy_current_path(self->_connection);
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1B272B220](v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  connectionState = self->_connectionState;
  v6 = nw_connection_state_to_string();
  endpoint = self->_endpoint;
  v8 = [(MFNWConnectionWrapper *)self networkAccountIdentifier];
  v9 = [v3 stringWithFormat:@"<%@ %p> state=%s endpoint=%@ account-id=%@ service=%@", v4, self, v6, endpoint, v8, self->_service];

  return v9;
}

- (void)connectToHost:withPort:service:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  v4 = 1024;
  v5 = v0;
  _os_log_error_impl(&dword_1B0389000, v1, OS_LOG_TYPE_ERROR, "nw_endpoint_create_host failed for %@ (error %d)", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_connectToEndpoint:(uint8_t *)buf service:(os_log_t)log .cold.1(void *a1, int *a2, uint8_t *buf, os_log_t log)
{
  v5 = *a2;
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "failed to open connection for %@ (%{errno}d)", buf, 0x12u);
}

void __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1B0389000, log, OS_LOG_TYPE_DEBUG, "state for connection %p: %s", buf, 0x16u);
}

void __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_11_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_7(&dword_1B0389000, v2, v3, "nw_connection_set_cancel_handler called for %p", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_12_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_7(&dword_1B0389000, v2, v3, "read close (%p)", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

void __52__MFNWConnectionWrapper__connectToEndpoint_service___block_invoke_13_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_7(&dword_1B0389000, v2, v3, "write close (%p)", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_createConnectionWithEndpoint:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_createConnectionWithEndpoint:error:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createConnectionWithEndpoint:error:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createConnectionWithEndpoint:error:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __39__MFNWConnectionWrapper__configureTLS___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1B0389000, log, OS_LOG_TYPE_DEBUG, "trust validation returned %@", buf, 0xCu);
}

void __43__MFNWConnectionWrapper_writeBytes_length___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3_1();
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_1B0389000, v3, OS_LOG_TYPE_ERROR, "write error on connection %p: %@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)readBytesIntoBuffer:maxLength:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  v4 = 2048;
  v5 = v0;
  _os_log_debug_impl(&dword_1B0389000, v1, OS_LOG_TYPE_DEBUG, "readBytes on connection %p for %ld bytes", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __42__MFNWConnectionWrapper__scheduleNextRead__block_invoke_cold_1(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_7(&dword_1B0389000, v2, v3, "connection %p calling bytesAvailableHandler", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_closeWithError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_closeWithError:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setSecurityProtocol:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setSecurityProtocol:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)registerForBytesAvailableWithHandler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_7(&dword_1B0389000, v0, v1, "registerForBytesAvailableWithHandler (%p)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end