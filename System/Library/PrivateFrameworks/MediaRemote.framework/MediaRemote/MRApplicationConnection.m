@interface MRApplicationConnection
- (BOOL)isEqual:(id)a3;
- (MRApplicationConnection)initWithContext:(id)a3 requestInfo:(id)a4;
- (MRApplicationConnection)initWithServiceName:(id)a3 playerPath:(id)a4;
- (NSString)identifier;
- (NSString)serviceName;
- (id)description;
- (id)destinationPlayerPath;
- (unint64_t)hash;
- (void)activate;
- (void)close;
- (void)dealloc;
- (void)handleMediaRemoteServiceInvalidatedNotification:(id)a3;
- (void)handleMessage:(id)a3;
- (void)invalidate:(id)a3;
- (void)sendMessage:(id)a3;
- (void)setIncomingMessageHandler:(id)a3;
- (void)setInvalidationHandler:(id)a3;
@end

@implementation MRApplicationConnection

- (MRApplicationConnection)initWithServiceName:(id)a3 playerPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 origin];
  if (v8)
  {
    v9 = [v7 client];
    v10 = [v9 bundleIdentifier];

    if (v10)
    {
      v11 = [MRApplicationConnectionContext alloc];
      v12 = MSVNanoIDCreateTaggedPointer();
      v13 = [(MRApplicationConnectionContext *)v11 initWithIdentifier:v12 service:v6 destinationPlayerPath:v7];
      self = [(MRApplicationConnection *)self initWithContext:v13 requestInfo:0];

      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (MRApplicationConnection)initWithContext:(id)a3 requestInfo:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v30.receiver = self;
  v30.super_class = MRApplicationConnection;
  v9 = [(MRApplicationConnection *)&v30 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    v11 = MEMORY[0x1E696AEC0];
    v12 = [v7 identifier];
    v13 = [v11 stringWithFormat:@"com.apple.MediaRemote.MRApplicationConnection-%@", v12];

    v14 = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = MRApplicationConnectionGetQueue();
    v17 = dispatch_queue_create_with_target_V2(v14, v15, v16);
    queue = v10->_queue;
    v10->_queue = v17;

    v19 = MEMORY[0x1E696AEC0];
    v20 = [v7 identifier];
    v21 = [v19 stringWithFormat:@"com.apple.MediaRemote.MRApplicationConnectionMessage-%@", v20];

    v22 = [v21 UTF8String];
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = MRApplicationConnectionGetMessageQueue();
    v25 = dispatch_queue_create_with_target_V2(v22, v23, v24);
    messageQueue = v10->_messageQueue;
    v10->_messageQueue = v25;

    v10->_lock._os_unfair_lock_opaque = 0;
    v10->_state = 0;
    objc_storeStrong(&v10->_requestInfo, a4);
    v10->_isIncomingConnection = v8 != 0;
    v27 = _MRLogForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v32 = v10;
      v33 = 2112;
      v34 = v7;
      _os_log_impl(&dword_1A2860000, v27, OS_LOG_TYPE_DEFAULT, "[MRApplicationConnection] initialize<%p> - context: %@", buf, 0x16u);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRApplicationConnection]<%p> dealloc", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MRApplicationConnection;
  [(MRApplicationConnection *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(MRApplicationConnection *)self context];
  v5 = [v3 initWithFormat:@"<MRApplicationConnection<%p> - context: %@>", self, v4];

  return v5;
}

- (NSString)serviceName
{
  v2 = [(MRApplicationConnection *)self context];
  v3 = [v2 service];

  return v3;
}

- (NSString)identifier
{
  v2 = [(MRApplicationConnection *)self context];
  v3 = [v2 identifier];

  return v3;
}

- (id)destinationPlayerPath
{
  v2 = [(MRApplicationConnection *)self context];
  v3 = [v2 destinationPlayerPath];

  return v3;
}

- (void)activate
{
  OUTLINED_FUNCTION_2_6();
  v10 = *MEMORY[0x1E69E9840];
  v1 = MRApplicationConnectionStateDescription(*v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_12(&dword_1A2860000, v2, v3, "[MRApplicationConnection]<%p> Attempting to activate connection in state: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __35__MRApplicationConnection_activate__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) invalidate:a2];
  }

  return result;
}

- (void)close
{
  v20 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  if (state != 2)
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = self;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRApplicationConnection]<%p> close - invalidating)", buf, 0xCu);
    }

    self->_state = 2;
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    incomingMessageHandler = self->_incomingMessageHandler;
    self->_incomingMessageHandler = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = _MRLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MRApplicationConnectionStateDescription(state);
    *buf = 134218242;
    v17 = self;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[MRApplicationConnection]<%p> close - state: %@", buf, 0x16u);
  }

  if (state == 1)
  {
    v9 = +[MRClientApplicationConnectionManager sharedManager];
    [v9 unregisterConnection:self];

    v10 = MRGetSharedService();
    if ([(MRApplicationConnection *)self isIncomingConnection])
    {
      v11 = 182;
    }

    else
    {
      v11 = 181;
    }

    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:v11];
    v13 = [(MRApplicationConnection *)self queue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __32__MRApplicationConnection_close__block_invoke;
    v15[3] = &unk_1E769AFC0;
    v15[4] = self;
    [v10 closeApplicationConnection:self error:v12 queue:v13 completion:v15];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __32__MRApplicationConnection_close__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __32__MRApplicationConnection_close__block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (void)invalidate:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_state == 2)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_state = 2;
    v5 = _MRLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v16 = self;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRApplicationConnection]<%p> invalidate - error: %@", buf, 0x16u);
    }

    v6 = MEMORY[0x1A58E3570](self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    incomingMessageHandler = self->_incomingMessageHandler;
    self->_incomingMessageHandler = 0;

    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      v9 = [(MRApplicationConnection *)self messageQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __38__MRApplicationConnection_invalidate___block_invoke;
      v12[3] = &unk_1E769AB28;
      v14 = v6;
      v13 = v4;
      v10 = v6;
      dispatch_async(v9, v12);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)sendMessage:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  if (state == 1)
  {
    v6 = MRGetSharedService();
    v7 = objc_alloc_init(MRApplicationConnectionMessageHeader);
    [v4 setHeader:v7];

    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 underlyingMessage];
      *buf = 134218242;
      v14 = self;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRApplicationConnection]<%p> sendMessage - sending payload: %@", buf, 0x16u);
    }

    v10 = [(MRApplicationConnection *)self queue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__MRApplicationConnection_sendMessage___block_invoke;
    v12[3] = &unk_1E769AFC0;
    v12[4] = self;
    [v6 sendApplicationConnectionMessage:v4 forConnection:self queue:v10 completion:v12];
  }

  else
  {
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MRApplicationConnection sendMessage:];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __39__MRApplicationConnection_sendMessage___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) invalidate:a2];
  }

  return result;
}

- (void)handleMessage:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (*&self->_state == 0)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    pendingReceivedMessages = self->_pendingReceivedMessages;
    self->_pendingReceivedMessages = v9;

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v5 = self->_pendingReceivedMessages;
  if (v5)
  {
    [(NSMutableArray *)self->_pendingReceivedMessages addObject:v4];
  }

  v6 = MEMORY[0x1A58E3570](self->_incomingMessageHandler);
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    if (v11)
    {
      v7 = +[MRClientApplicationConnectionManager sharedManager];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __41__MRApplicationConnection_handleMessage___block_invoke;
      v15[3] = &unk_1E769E438;
      v15[4] = self;
      [v7 listenerForHandlingConnection:self completion:v15];
LABEL_11:
    }
  }

  else if (v6)
  {
    v8 = [(MRApplicationConnection *)self messageQueue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__MRApplicationConnection_handleMessage___block_invoke_143;
    v12[3] = &unk_1E769E410;
    v12[4] = self;
    v13 = v4;
    v14 = v6;
    dispatch_async(v8, v12);

    v7 = v13;
    goto LABEL_11;
  }
}

void __41__MRApplicationConnection_handleMessage___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 requestInfo];
  v7 = [v3 handleIncomingConnection:v5 requestInfo:v6];

  os_unfair_lock_lock(*v4 + 3);
  v23 = MEMORY[0x1A58E3570](*(*v4 + 2));
  v8 = *v4;
  if (v7)
  {
    if (*&v8[12]._os_unfair_lock_opaque == 1)
    {
      v9 = *&v8[14]._os_unfair_lock_opaque;
      v10 = *(*v4 + 7);
      *(*v4 + 7) = 0;

      goto LABEL_9;
    }

    v12 = _MRLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __41__MRApplicationConnection_handleMessage___block_invoke_cold_1(v4);
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:183];
    [(os_unfair_lock_s *)v8 invalidate:v11];
  }

  v9 = 0;
LABEL_9:
  os_unfair_lock_unlock(*v4 + 3);
  if (v23)
  {
    v21 = v9;
    v22 = v3;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        v17 = 0;
        do
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * v17);
          v19 = [*v4 messageQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __41__MRApplicationConnection_handleMessage___block_invoke_141;
          block[3] = &unk_1E769E410;
          block[4] = *v4;
          block[5] = v18;
          v25 = v23;
          dispatch_async(v19, block);

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    v9 = v21;
    v3 = v22;
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __41__MRApplicationConnection_handleMessage___block_invoke_141(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) underlyingMessage];
    v8 = 134218242;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRApplicationConnection]<%p> handleMessage - delivering payload: %@", &v8, 0x16u);
  }

  v5 = *(a1 + 40);
  result = (*(*(a1 + 48) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __41__MRApplicationConnection_handleMessage___block_invoke_143(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) underlyingMessage];
    v8 = 134218242;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRApplicationConnection]<%p> handleMessage - delivering payload: %@", &v8, 0x16u);
  }

  v5 = *(a1 + 40);
  result = (*(*(a1 + 48) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MRApplicationConnection *)self identifier];
      v7 = [(MRApplicationConnection *)v5 identifier];
      if (v6 == v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = [v6 isEqual:v7];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(MRApplicationConnection *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)setIncomingMessageHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_state)
  {
    v5 = _MRLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [MRApplicationConnection setIncomingMessageHandler:];
    }
  }

  else
  {
    v6 = MEMORY[0x1A58E3570](v4);
    incomingMessageHandler = self->_incomingMessageHandler;
    self->_incomingMessageHandler = v6;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setInvalidationHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_state)
  {
    v5 = _MRLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [MRApplicationConnection setInvalidationHandler:];
    }
  }

  else
  {
    v6 = MEMORY[0x1A58E3570](v4);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = v6;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)handleMediaRemoteServiceInvalidatedNotification:(id)a3
{
  if ([(MRApplicationConnection *)self isIncomingConnection])
  {
    v4 = 177;
  }

  else
  {
    v4 = 176;
  }

  v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:v4];
  [(MRApplicationConnection *)self invalidate:v5];
}

void __32__MRApplicationConnection_close__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 134218242;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1A2860000, log, OS_LOG_TYPE_ERROR, "[MRApplicationConnection]<%p> close - notifying daemon failed with error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)sendMessage:.cold.1()
{
  OUTLINED_FUNCTION_2_6();
  v10 = *MEMORY[0x1E69E9840];
  v1 = MRApplicationConnectionStateDescription(v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_3_8(&dword_1A2860000, v2, v3, "[MRApplicationConnection]<%p> sendMessage - cannot send message in state: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __41__MRApplicationConnection_handleMessage___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = MRApplicationConnectionStateDescription(*(*a1 + 48));
  OUTLINED_FUNCTION_3_8(&dword_1A2860000, v1, v2, "[MRApplicationConnection]<%p> handleMessage - connection is in state: %@ after acceptance -> invalidating", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setIncomingMessageHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_6();
  v10 = *MEMORY[0x1E69E9840];
  v1 = MRApplicationConnectionStateDescription(*v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_12(&dword_1A2860000, v2, v3, "[MRApplicationConnection]<%p> setIncomingMessageHandler - attempting to set while in state: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setInvalidationHandler:.cold.1()
{
  OUTLINED_FUNCTION_2_6();
  v10 = *MEMORY[0x1E69E9840];
  v1 = MRApplicationConnectionStateDescription(*v0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_12(&dword_1A2860000, v2, v3, "[MRApplicationConnection]<%p> setInvalidationHandler - attempting to set while in state: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end