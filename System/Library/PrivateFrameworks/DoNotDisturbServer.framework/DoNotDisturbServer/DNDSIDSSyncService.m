@interface DNDSIDSSyncService
- (BOOL)_queue_sendMessage:(id)a3 withVersionNumber:(unint64_t)a4 messageType:(id)a5 toDestinations:(id)a6 requestIdentifier:(id *)a7 error:(id *)a8;
- (DNDSIDSSyncService)initWithIDSService:(id)a3;
- (DNDSSyncServiceDelegate)delegate;
- (void)_queue_handleIncomingMessage:(id)a3 deviceIdentifier:(id)a4;
- (void)_queue_resume;
- (void)resume;
- (void)sendMessage:(id)a3 withVersionNumber:(unint64_t)a4 messageType:(id)a5 toDestinations:(id)a6 completionHandler:(id)a7;
- (void)sendMessage:(id)a3 withVersionNumber:(unint64_t)a4 messageType:(id)a5 toDestinations:(id)a6 identifyingCompletionHandler:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation DNDSIDSSyncService

- (DNDSIDSSyncService)initWithIDSService:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = DNDSIDSSyncService;
  v6 = [(DNDSIDSSyncService *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.donotdisturb.server.IdentityServicesSync", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_syncService, a3);
  }

  return v6;
}

- (void)resume
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__DNDSIDSSyncService_resume__block_invoke;
  block[3] = &unk_278F89ED0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)sendMessage:(id)a3 withVersionNumber:(unint64_t)a4 messageType:(id)a5 toDestinations:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__DNDSIDSSyncService_sendMessage_withVersionNumber_messageType_toDestinations_completionHandler___block_invoke;
  v14[3] = &unk_278F8B630;
  v15 = v12;
  v13 = v12;
  [(DNDSIDSSyncService *)self sendMessage:a3 withVersionNumber:a4 messageType:a5 toDestinations:a6 identifyingCompletionHandler:v14];
}

- (void)sendMessage:(id)a3 withVersionNumber:(unint64_t)a4 messageType:(id)a5 toDestinations:(id)a6 identifyingCompletionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  queue = self->_queue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __108__DNDSIDSSyncService_sendMessage_withVersionNumber_messageType_toDestinations_identifyingCompletionHandler___block_invoke;
  v21[3] = &unk_278F8B658;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a4;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(queue, v21);
}

void __108__DNDSIDSSyncService_sendMessage_withVersionNumber_messageType_toDestinations_identifyingCompletionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = a1[7];
  v11 = 0;
  v12 = 0;
  v7 = [v2 _queue_sendMessage:v3 withVersionNumber:v5 messageType:v4 toDestinations:v6 requestIdentifier:&v12 error:&v11];
  v8 = v12;
  v9 = v11;
  v10 = a1[8];
  if (v10)
  {
    (*(v10 + 16))(v10, v7, v8, v9);
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v54 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v35 = _os_activity_create(&dword_24912E000, "com.apple.donotdisturb.DNDSIDSSyncService.incomingMessage", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v35, &state);
  v16 = v14;
  v17 = v13;
  v18 = v16;
  v19 = [v11 deviceForFromID:v16];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 uniqueIDOverride];
    v22 = v18;
  }

  else
  {
    if (os_log_type_enabled(DNDSLogIDSTransport, OS_LOG_TYPE_ERROR))
    {
      [DNDSIDSSyncService service:account:incomingMessage:fromID:context:];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = [v11 devices];
    v23 = [v22 countByEnumeratingWithState:&v36 objects:v53 count:16];
    if (v23)
    {
      v32 = v12;
      v33 = v11;
      v24 = *v37;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = DNDSLogIDSTransport;
          if (os_log_type_enabled(DNDSLogIDSTransport, OS_LOG_TYPE_ERROR))
          {
            v27 = *(*(&v36 + 1) + 8 * i);
            *buf = 138412290;
            v42 = v27;
            _os_log_error_impl(&dword_24912E000, v26, OS_LOG_TYPE_ERROR, "\t%@", buf, 0xCu);
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v36 objects:v53 count:16];
      }

      while (v23);
      v21 = v18;
      v12 = v32;
      v11 = v33;
      v17 = v13;
    }

    else
    {
      v21 = v18;
    }
  }

  v28 = DNDSLogIDSTransport;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [v15 outgoingResponseIdentifier];
    v31 = v30 = v15;
    *buf = 138544642;
    v42 = v11;
    v43 = 2114;
    v44 = v12;
    v45 = 2114;
    v46 = v31;
    v47 = 2114;
    v48 = v17;
    v49 = 2112;
    v50 = v21;
    v51 = 2114;
    v52 = v30;
    _os_log_debug_impl(&dword_24912E000, v28, OS_LOG_TYPE_DEBUG, "Received sync data: service=%{public}@, account=%{public}@, identifier=%{public}@, message=%{public}@, deviceIdentifier=%@, context=%{public}@", buf, 0x3Eu);

    v15 = v30;
  }

  if (v21)
  {
    [(DNDSIDSSyncService *)self _queue_handleIncomingMessage:v17 deviceIdentifier:v21];
  }

  else if (os_log_type_enabled(DNDSLogIDSTransport, OS_LOG_TYPE_ERROR))
  {
    [DNDSIDSSyncService service:account:incomingMessage:fromID:context:];
  }

  os_activity_scope_leave(&state);
  v29 = *MEMORY[0x277D85DE8];
}

- (void)_queue_resume
{
  dispatch_assert_queue_V2(self->_queue);
  queue = self->_queue;
  syncService = self->_syncService;

  [(IDSService *)syncService addDelegate:self queue:queue];
}

- (BOOL)_queue_sendMessage:(id)a3 withVersionNumber:(unint64_t)a4 messageType:(id)a5 toDestinations:(id)a6 requestIdentifier:(id *)a7 error:(id *)a8
{
  v50[2] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v16 = [MEMORY[0x277CBEB38] dictionary];
  [v16 setObject:&unk_285C53580 forKeyedSubscript:@"v"];
  v17 = MEMORY[0x277CCABB0];
  v18 = [MEMORY[0x277CBEAA8] date];
  [v18 timeIntervalSinceReferenceDate];
  v19 = [v17 numberWithDouble:?];
  [v16 setObject:v19 forKeyedSubscript:@"t"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v16 setObject:v20 forKeyedSubscript:@"r"];

  if (v14)
  {
    [v16 setObject:v14 forKeyedSubscript:@"y"];
  }

  if (v13)
  {
    v35 = a8;
    v49[0] = @"h";
    v49[1] = @"d";
    v50[0] = v16;
    v50[1] = v13;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
    if (v14)
    {
      v21 = 0;
    }

    else
    {
      v47 = *MEMORY[0x277D18630];
      v48 = @"sr";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    }

    v23 = MEMORY[0x277CBEB98];
    v24 = [(IDSService *)self->_syncService devices];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __110__DNDSIDSSyncService__queue_sendMessage_withVersionNumber_messageType_toDestinations_requestIdentifier_error___block_invoke;
    v41[3] = &unk_278F8B680;
    v36 = v15;
    v42 = v15;
    v25 = [v24 bs_compactMap:v41];
    v26 = [v23 setWithArray:v25];

    if ([v26 count])
    {
      syncService = self->_syncService;
      v39 = 0;
      v40 = 0;
      v22 = [(IDSService *)syncService sendMessage:v38 toDestinations:v26 priority:300 options:v21 identifier:&v40 error:&v39];
      v28 = v40;
      v29 = v39;
      if (a7)
      {
        v30 = v28;
        *a7 = v28;
      }

      v31 = DNDSLogIDSTransport;
      if (v22)
      {
        if (os_log_type_enabled(DNDSLogIDSTransport, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v44 = v28;
          v45 = 2112;
          v46 = v26;
          _os_log_impl(&dword_24912E000, v31, OS_LOG_TYPE_DEFAULT, "Send sync data: identifier=%{public}@; Destinations: %@", buf, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(DNDSLogIDSTransport, OS_LOG_TYPE_ERROR))
        {
          [DNDSIDSSyncService _queue_sendMessage:withVersionNumber:messageType:toDestinations:requestIdentifier:error:];
        }

        if (v35)
        {
          v32 = v29;
          *v35 = v29;
        }
      }
    }

    else
    {
      if (os_log_type_enabled(DNDSLogIDSTransport, OS_LOG_TYPE_ERROR))
      {
        [DNDSIDSSyncService _queue_sendMessage:withVersionNumber:messageType:toDestinations:requestIdentifier:error:];
      }

      LOBYTE(v22) = 0;
    }

    v15 = v36;
  }

  else
  {
    if (os_log_type_enabled(DNDSLogIDSTransport, OS_LOG_TYPE_ERROR))
    {
      [DNDSIDSSyncService _queue_sendMessage:withVersionNumber:messageType:toDestinations:requestIdentifier:error:];
    }

    LOBYTE(v22) = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v22;
}

id __110__DNDSIDSSyncService__queue_sendMessage_withVersionNumber_messageType_toDestinations_requestIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uniqueIDOverride];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = IDSCopyIDForDevice();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_queue_handleIncomingMessage:(id)a3 deviceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [v6 bs_safeDictionaryForKey:@"h"];
  v9 = [v8 bs_safeNumberForKey:@"v"];
  if ([v9 unsignedIntegerValue] == 1)
  {
    v10 = [v8 bs_safeNumberForKey:@"r"];
    if (v10)
    {
      v11 = [v6 bs_safeDictionaryForKey:@"d"];
      if (v11)
      {
        v12 = [(DNDSIDSSyncService *)self delegate];
        v13 = [v10 unsignedIntegerValue];
        v14 = [v8 bs_safeStringForKey:@"y"];
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![v12 syncService:self shouldAcceptIncomingMessage:v11 withVersionNumber:v13 messageType:v14 fromDeviceIdentifier:v7])
        {
          v15 = DNDSLogIDSTransport;
          if (os_log_type_enabled(DNDSLogIDSTransport, OS_LOG_TYPE_DEFAULT))
          {
            *v16 = 0;
            _os_log_impl(&dword_24912E000, v15, OS_LOG_TYPE_DEFAULT, "Discarding data because delegate did not allow the message", v16, 2u);
          }
        }

        else
        {
          [v12 syncService:self didReceiveMessage:v11 withVersionNumber:v13 messageType:v14 fromDeviceIdentifier:v7];
        }
      }

      else if (os_log_type_enabled(DNDSLogIDSTransport, OS_LOG_TYPE_ERROR))
      {
        [DNDSIDSSyncService _queue_handleIncomingMessage:deviceIdentifier:];
      }
    }

    else if (os_log_type_enabled(DNDSLogIDSTransport, OS_LOG_TYPE_ERROR))
    {
      [DNDSIDSSyncService _queue_handleIncomingMessage:deviceIdentifier:];
    }
  }

  else if (os_log_type_enabled(DNDSLogIDSTransport, OS_LOG_TYPE_ERROR))
  {
    [DNDSIDSSyncService _queue_handleIncomingMessage:deviceIdentifier:];
  }
}

- (DNDSSyncServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)service:account:incomingMessage:fromID:context:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)service:account:incomingMessage:fromID:context:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_queue_sendMessage:withVersionNumber:messageType:toDestinations:requestIdentifier:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_24912E000, v1, OS_LOG_TYPE_ERROR, "Failed to send sync data: identifier=%{public}@, error=%{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendMessage:withVersionNumber:messageType:toDestinations:requestIdentifier:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendMessage:withVersionNumber:messageType:toDestinations:requestIdentifier:error:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_queue_handleIncomingMessage:deviceIdentifier:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_queue_handleIncomingMessage:deviceIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_queue_handleIncomingMessage:deviceIdentifier:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end