@interface DNDSIDSSyncService
- (BOOL)_queue_sendMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type toDestinations:(id)destinations requestIdentifier:(id *)identifier error:(id *)error;
- (DNDSIDSSyncService)initWithIDSService:(id)service;
- (DNDSSyncServiceDelegate)delegate;
- (void)_queue_handleIncomingMessage:(id)message deviceIdentifier:(id)identifier;
- (void)_queue_resume;
- (void)resume;
- (void)sendMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type toDestinations:(id)destinations completionHandler:(id)handler;
- (void)sendMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type toDestinations:(id)destinations identifyingCompletionHandler:(id)handler;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation DNDSIDSSyncService

- (DNDSIDSSyncService)initWithIDSService:(id)service
{
  serviceCopy = service;
  v11.receiver = self;
  v11.super_class = DNDSIDSSyncService;
  v6 = [(DNDSIDSSyncService *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.donotdisturb.server.IdentityServicesSync", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    objc_storeStrong(&v6->_syncService, service);
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

- (void)sendMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type toDestinations:(id)destinations completionHandler:(id)handler
{
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__DNDSIDSSyncService_sendMessage_withVersionNumber_messageType_toDestinations_completionHandler___block_invoke;
  v14[3] = &unk_278F8B630;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(DNDSIDSSyncService *)self sendMessage:message withVersionNumber:number messageType:type toDestinations:destinations identifyingCompletionHandler:v14];
}

- (void)sendMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type toDestinations:(id)destinations identifyingCompletionHandler:(id)handler
{
  messageCopy = message;
  typeCopy = type;
  destinationsCopy = destinations;
  handlerCopy = handler;
  queue = self->_queue;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __108__DNDSIDSSyncService_sendMessage_withVersionNumber_messageType_toDestinations_identifyingCompletionHandler___block_invoke;
  v21[3] = &unk_278F8B658;
  v21[4] = self;
  v22 = messageCopy;
  v23 = typeCopy;
  v24 = destinationsCopy;
  v25 = handlerCopy;
  numberCopy = number;
  v17 = handlerCopy;
  v18 = destinationsCopy;
  v19 = typeCopy;
  v20 = messageCopy;
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

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v54 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v35 = _os_activity_create(&dword_24912E000, "com.apple.donotdisturb.DNDSIDSSyncService.incomingMessage", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v35, &state);
  v16 = dCopy;
  v17 = messageCopy;
  v18 = v16;
  v19 = [serviceCopy deviceForFromID:v16];
  v20 = v19;
  if (v19)
  {
    uniqueIDOverride = [v19 uniqueIDOverride];
    devices = v18;
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
    devices = [serviceCopy devices];
    v23 = [devices countByEnumeratingWithState:&v36 objects:v53 count:16];
    if (v23)
    {
      v32 = accountCopy;
      v33 = serviceCopy;
      v24 = *v37;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(devices);
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

        v23 = [devices countByEnumeratingWithState:&v36 objects:v53 count:16];
      }

      while (v23);
      uniqueIDOverride = v18;
      accountCopy = v32;
      serviceCopy = v33;
      v17 = messageCopy;
    }

    else
    {
      uniqueIDOverride = v18;
    }
  }

  v28 = DNDSLogIDSTransport;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [contextCopy outgoingResponseIdentifier];
    v31 = v30 = contextCopy;
    *buf = 138544642;
    v42 = serviceCopy;
    v43 = 2114;
    v44 = accountCopy;
    v45 = 2114;
    v46 = v31;
    v47 = 2114;
    v48 = v17;
    v49 = 2112;
    v50 = uniqueIDOverride;
    v51 = 2114;
    v52 = v30;
    _os_log_debug_impl(&dword_24912E000, v28, OS_LOG_TYPE_DEBUG, "Received sync data: service=%{public}@, account=%{public}@, identifier=%{public}@, message=%{public}@, deviceIdentifier=%@, context=%{public}@", buf, 0x3Eu);

    contextCopy = v30;
  }

  if (uniqueIDOverride)
  {
    [(DNDSIDSSyncService *)self _queue_handleIncomingMessage:v17 deviceIdentifier:uniqueIDOverride];
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

- (BOOL)_queue_sendMessage:(id)message withVersionNumber:(unint64_t)number messageType:(id)type toDestinations:(id)destinations requestIdentifier:(id *)identifier error:(id *)error
{
  v50[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  typeCopy = type;
  destinationsCopy = destinations;
  dispatch_assert_queue_V2(self->_queue);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_285C53580 forKeyedSubscript:@"v"];
  v17 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v19 = [v17 numberWithDouble:?];
  [dictionary setObject:v19 forKeyedSubscript:@"t"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:number];
  [dictionary setObject:v20 forKeyedSubscript:@"r"];

  if (typeCopy)
  {
    [dictionary setObject:typeCopy forKeyedSubscript:@"y"];
  }

  if (messageCopy)
  {
    errorCopy = error;
    v49[0] = @"h";
    v49[1] = @"d";
    v50[0] = dictionary;
    v50[1] = messageCopy;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
    if (typeCopy)
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
    devices = [(IDSService *)self->_syncService devices];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __110__DNDSIDSSyncService__queue_sendMessage_withVersionNumber_messageType_toDestinations_requestIdentifier_error___block_invoke;
    v41[3] = &unk_278F8B680;
    v36 = destinationsCopy;
    v42 = destinationsCopy;
    v25 = [devices bs_compactMap:v41];
    v26 = [v23 setWithArray:v25];

    if ([v26 count])
    {
      syncService = self->_syncService;
      v39 = 0;
      v40 = 0;
      v22 = [(IDSService *)syncService sendMessage:v38 toDestinations:v26 priority:300 options:v21 identifier:&v40 error:&v39];
      v28 = v40;
      v29 = v39;
      if (identifier)
      {
        v30 = v28;
        *identifier = v28;
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

        if (errorCopy)
        {
          v32 = v29;
          *errorCopy = v29;
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

    destinationsCopy = v36;
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

- (void)_queue_handleIncomingMessage:(id)message deviceIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [messageCopy bs_safeDictionaryForKey:@"h"];
  v9 = [v8 bs_safeNumberForKey:@"v"];
  if ([v9 unsignedIntegerValue] == 1)
  {
    v10 = [v8 bs_safeNumberForKey:@"r"];
    if (v10)
    {
      v11 = [messageCopy bs_safeDictionaryForKey:@"d"];
      if (v11)
      {
        delegate = [(DNDSIDSSyncService *)self delegate];
        unsignedIntegerValue = [v10 unsignedIntegerValue];
        v14 = [v8 bs_safeStringForKey:@"y"];
        if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate syncService:self shouldAcceptIncomingMessage:v11 withVersionNumber:unsignedIntegerValue messageType:v14 fromDeviceIdentifier:identifierCopy])
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
          [delegate syncService:self didReceiveMessage:v11 withVersionNumber:unsignedIntegerValue messageType:v14 fromDeviceIdentifier:identifierCopy];
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