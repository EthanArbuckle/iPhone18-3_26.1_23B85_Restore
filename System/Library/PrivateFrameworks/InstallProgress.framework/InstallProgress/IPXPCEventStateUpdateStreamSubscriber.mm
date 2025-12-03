@interface IPXPCEventStateUpdateStreamSubscriber
- (IPXPCEventStateUpdateStreamSubscriber)initWithToken:(unint64_t)token;
- (IPXPCEventStateUpdateStreamSubscriberDelegate)delegate;
- (void)beginHandshake;
- (void)sendOrEnqueueUpdateMessage:(id)message;
@end

@implementation IPXPCEventStateUpdateStreamSubscriber

- (IPXPCEventStateUpdateStreamSubscriber)initWithToken:(unint64_t)token
{
  v9.receiver = self;
  v9.super_class = IPXPCEventStateUpdateStreamSubscriber;
  v4 = [(IPXPCEventStateUpdateStreamSubscriber *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_token = token;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    queuedMessages = v5->_queuedMessages;
    v5->_queuedMessages = v6;
  }

  return v5;
}

- (void)beginHandshake
{
  v13 = *MEMORY[0x277D85DE8];
  keys = [@"type" UTF8String];
  values = xpc_uint64_create(0xFFFFFFFFFFFFFFFFLL);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  v4 = _IPServerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    token = self->_token;
    *buf = 134217984;
    v12 = token;
    _os_log_impl(&dword_254C69000, v4, OS_LOG_TYPE_DEFAULT, "beginning handshake for subscriber %llu", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__IPXPCEventStateUpdateStreamSubscriber_beginHandshake__block_invoke;
  v8[3] = &unk_2797B1FB8;
  v8[4] = self;
  [WeakRetained subscriber:self firePayload:v3 withReply:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __55__IPXPCEventStateUpdateStreamSubscriber_beginHandshake__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _IPServerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = IPXPCCopyDescription(v3);
    *buf = 138412290;
    *&buf[4] = v5;
    _os_log_impl(&dword_254C69000, v4, OS_LOG_TYPE_DEFAULT, "ping reply! %@", buf, 0xCu);
  }

  *buf = 0u;
  v27 = 0u;
  xpc_dictionary_get_audit_token();
  v6 = xpc_copy_entitlement_for_token();
  v7 = v6;
  if (v6 && MEMORY[0x259C29850](v6) == MEMORY[0x277D86448] && xpc_BOOL_get_value(v7))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = *(*(a1 + 32) + 8);
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * v12);
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
          v15 = *(a1 + 32);
          v16 = [v13 XPCDictionaryRepresentation];
          [WeakRetained subscriber:v15 firePayload:v16];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    *(*(a1 + 32) + 16) = 1;
    v17 = *(a1 + 32);
    v18 = *(v17 + 8);
    *(v17 + 8) = 0;
  }

  else
  {
    v19 = _IPServerLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __55__IPXPCEventStateUpdateStreamSubscriber_beginHandshake__block_invoke_cold_1(a1);
    }

    v18 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v18 subscriberFailedHandshake:*(a1 + 32)];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)sendOrEnqueueUpdateMessage:(id)message
{
  if (self->_completedHandshake)
  {
    messageCopy = message;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    xPCDictionaryRepresentation = [messageCopy XPCDictionaryRepresentation];

    [WeakRetained subscriber:self firePayload:xPCDictionaryRepresentation];
  }

  else
  {
    queuedMessages = self->_queuedMessages;
    WeakRetained = message;
    [(NSMutableArray *)queuedMessages addObject:?];
  }
}

- (IPXPCEventStateUpdateStreamSubscriberDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __55__IPXPCEventStateUpdateStreamSubscriber_beginHandshake__block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*(a1 + 32) + 24);
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end