@interface CATSharingDeviceSessionConnection
- (CATSharingConnectionDelegate)delegate;
- (CATSharingDeviceSessionConnection)initWithDeviceSession:(id)session timerSource:(id)source;
- (void)_close;
- (void)_sendData:(id)data completion:(id)completion;
- (void)addDeviceSessionHandlers;
- (void)close;
- (void)closeWithError:(id)error reportToRemote:(BOOL)remote;
- (void)didReceiveMessage:(id)message;
- (void)handleCloseMessage:(id)message;
- (void)handleSentMessage:(id)message;
- (void)handleUnparsableMessageDictionary:(id)dictionary;
- (void)removeDeviceSessionHandlers;
- (void)sendData:(id)data completion:(id)completion;
- (void)sendMessage:(id)message completion:(id)completion;
- (void)sendTearDownMessageWithError:(id)error;
- (void)tombstoneWithError:(id)error;
@end

@implementation CATSharingDeviceSessionConnection

- (CATSharingDeviceSessionConnection)initWithDeviceSession:(id)session timerSource:(id)source
{
  sessionCopy = session;
  sourceCopy = source;
  v17.receiver = self;
  v17.super_class = CATSharingDeviceSessionConnection;
  v9 = [(CATSharingDeviceSessionConnection *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mDeviceSession, session);
    objc_storeStrong(&v10->mTimerSource, source);
    [(CATSharingDeviceSessionConnection *)v10 addDeviceSessionHandlers];
    v11 = objc_opt_new();
    mOutgoingQueue = v10->mOutgoingQueue;
    v10->mOutgoingQueue = v11;

    v13 = objc_opt_new();
    mCatalystQueue = v10->mCatalystQueue;
    v10->mCatalystQueue = v13;

    v15 = CATGetCatalystQueue();
    [(CATOperationQueue *)v10->mCatalystQueue setUnderlyingQueue:v15];
  }

  return v10;
}

- (void)sendData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__CATSharingDeviceSessionConnection_sendData_completion___block_invoke;
  v12[3] = &unk_278DA7420;
  objc_copyWeak(&v15, &location);
  v8 = dataCopy;
  v13 = v8;
  v9 = completionCopy;
  v14 = v9;
  v10 = v12;
  v11 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_3;
  block[3] = &unk_278DA7208;
  v18 = v10;
  dispatch_async(v11, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __57__CATSharingDeviceSessionConnection_sendData_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _sendData:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)close
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__CATSharingDeviceSessionConnection_close__block_invoke;
  v4[3] = &unk_278DA7120;
  objc_copyWeak(&v5, &location);
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_3;
  block[3] = &unk_278DA7208;
  v8 = v2;
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__CATSharingDeviceSessionConnection_close__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _close];
}

- (void)_sendData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  if (self->mIsClosing || [(CATSharingDeviceSessionConnection *)self isClosed])
  {
    v8 = CATErrorWithCodeAndUserInfo(100, 0);
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    v8 = [[CATSharingSentMessage alloc] initWithContent:dataCopy];
    v9 = [[CATSharingMessage alloc] initWithContentMessage:v8];
    [(CATSharingDeviceSessionConnection *)self sendMessage:v9 completion:completionCopy];
  }
}

- (void)_close
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  if (![(CATSharingDeviceSessionConnection *)self isClosed]&& !self->mIsClosing)
  {

    [(CATSharingDeviceSessionConnection *)self closeWithError:0 reportToRemote:1];
  }
}

- (void)sendMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = CATGetCatalystQueue();
  CATAssertIsQueue(v8);

  if ([(CATSharingDeviceSessionConnection *)self isClosed])
  {
    v9 = 100;
LABEL_8:
    v16 = CATErrorWithCodeAndUserInfo(v9, 0);
    completionCopy[2](completionCopy, v16);

    goto LABEL_9;
  }

  p_mDeviceSession = &self->mDeviceSession;
  if (([(CATSharingDeviceSession *)self->mDeviceSession isReady]& 1) == 0)
  {
    v15 = _CATLogGeneral_1();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CATSharingDeviceSessionConnection sendMessage:v15 completion:?];
    }

    v9 = 504;
    goto LABEL_8;
  }

  v11 = [[CATSendDeviceSessionMessageOperation alloc] initWithDeviceSession:self->mDeviceSession message:messageCopy];
  v12 = MEMORY[0x277CCA8C8];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __60__CATSharingDeviceSessionConnection_sendMessage_completion___block_invoke;
  v20 = &unk_278DA7558;
  v21 = v11;
  v22 = completionCopy;
  v13 = v11;
  v14 = [v12 blockOperationWithBlock:&v17];
  [v14 addDependency:{v13, v17, v18, v19, v20}];
  [(CATOperationQueue *)self->mOutgoingQueue addOperation:v13];
  [(CATOperationQueue *)self->mCatalystQueue addOperation:v14];

LABEL_9:
}

void __60__CATSharingDeviceSessionConnection_sendMessage_completion___block_invoke(uint64_t a1)
{
  v2 = CATGetCatalystQueue();
  CATAssertIsQueue(v2);

  v3 = [*(a1 + 32) error];
  (*(*(a1 + 40) + 16))();
  if (v3)
  {
    v4 = _CATLogGeneral_1();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __60__CATSharingDeviceSessionConnection_sendMessage_completion___block_invoke_cold_1(v3);
    }
  }
}

- (void)closeWithError:(id)error reportToRemote:(BOOL)remote
{
  errorCopy = error;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  if (![(CATSharingDeviceSessionConnection *)self isClosed]&& !self->mIsClosing)
  {
    self->mIsClosing = 1;
    if (remote)
    {
      [(CATSharingDeviceSessionConnection *)self sendTearDownMessageWithError:errorCopy];
    }

    else
    {
      [(CATSharingDeviceSessionConnection *)self tombstoneWithError:errorCopy];
    }
  }
}

- (void)tombstoneWithError:(id)error
{
  errorCopy = error;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  if (![(CATSharingDeviceSessionConnection *)self isClosed])
  {
    [(CATSharingDeviceSessionConnection *)self setClosed:1];
    self->mIsClosing = 0;
    [(CATOperationQueue *)self->mOutgoingQueue cancelAllOperations];
    [(CATSharingDeviceSessionConnection *)self removeDeviceSessionHandlers];
    [(CATSharingDeviceSession *)self->mDeviceSession deactivate];
    [(CATSharingDeviceSessionConnection *)self setClosedError:errorCopy];
    delegate = [(CATSharingDeviceSessionConnection *)self delegate];
    [delegate connectionClosed:self];
  }
}

- (void)addDeviceSessionHandlers
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__CATSharingDeviceSessionConnection_addDeviceSessionHandlers__block_invoke;
  v6[3] = &unk_278DA7498;
  objc_copyWeak(&v7, &location);
  v3 = MEMORY[0x245D2F510](v6);
  [(CATSharingDeviceSession *)self->mDeviceSession setDeviceSessionInvalidatedHandler:v3];
  [(CATSharingDeviceSession *)self->mDeviceSession setDeviceSessionErrorHandler:v3];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__CATSharingDeviceSessionConnection_addDeviceSessionHandlers__block_invoke_3;
  v4[3] = &unk_278DA74C0;
  objc_copyWeak(&v5, &location);
  [(CATSharingDeviceSession *)self->mDeviceSession setMessageReceivedHandler:v4];
  objc_destroyWeak(&v5);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __61__CATSharingDeviceSessionConnection_addDeviceSessionHandlers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && ([WeakRetained isClosed] & 1) == 0)
  {
    v6 = v5[6];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__CATSharingDeviceSessionConnection_addDeviceSessionHandlers__block_invoke_2;
    v7[3] = &unk_278DA7470;
    v7[4] = v5;
    v8 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

void __61__CATSharingDeviceSessionConnection_addDeviceSessionHandlers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && ([WeakRetained isClosed] & 1) == 0)
  {
    v6 = v5[6];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__CATSharingDeviceSessionConnection_addDeviceSessionHandlers__block_invoke_4;
    v7[3] = &unk_278DA7470;
    v7[4] = v5;
    v8 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

- (void)removeDeviceSessionHandlers
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  [(CATSharingDeviceSession *)self->mDeviceSession setDeviceSessionInvalidatedHandler:0];
  mDeviceSession = self->mDeviceSession;

  [(CATSharingDeviceSession *)mDeviceSession setDeviceSessionInvalidatedHandler:0];
}

- (void)didReceiveMessage:(id)message
{
  messageCopy = message;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  v6 = [CATSharingMessage instanceWithDictionary:messageCopy];
  v7 = v6;
  if (v6)
  {
    messageType = [v6 messageType];
    contentDictionaryValue = [v7 contentDictionaryValue];
    if (messageType == 1)
    {
      [(CATSharingDeviceSessionConnection *)self handleSentMessage:contentDictionaryValue];
    }

    else if (messageType == 2)
    {
      [(CATSharingDeviceSessionConnection *)self handleCloseMessage:contentDictionaryValue];
    }

    else
    {
      v10 = _CATLogGeneral_1();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CATSharingDeviceSessionConnection didReceiveMessage:messageType];
      }

      [(CATSharingDeviceSessionConnection *)self handleUnparsableMessageDictionary:contentDictionaryValue];
    }
  }

  else
  {
    [(CATSharingDeviceSessionConnection *)self handleUnparsableMessageDictionary:messageCopy];
  }
}

- (void)handleUnparsableMessageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  if (![(CATSharingDeviceSessionConnection *)self isClosed])
  {
    v6 = _CATLogGeneral_1();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CATSharingDeviceSessionConnection *)dictionaryCopy handleUnparsableMessageDictionary:v6];
    }

    v7 = CATErrorWithCodeAndUserInfo(300, 0);
    [(CATSharingDeviceSessionConnection *)self closeWithError:v7 reportToRemote:!self->mIsClosing];
  }
}

- (void)handleCloseMessage:(id)message
{
  messageCopy = message;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = [CATSharingCloseMessage instanceWithDictionary:messageCopy];
  v6 = v5;
  if (v5)
  {
    if (!self->mIsClosing)
    {
      closeError = [v5 closeError];
      [(CATSharingDeviceSessionConnection *)self closeWithError:closeError reportToRemote:0];
    }
  }

  else
  {
    [(CATSharingDeviceSessionConnection *)self handleUnparsableMessageDictionary:messageCopy];
  }
}

- (void)handleSentMessage:(id)message
{
  messageCopy = message;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = [CATSharingSentMessage instanceWithDictionary:messageCopy];
  if (v5)
  {
    delegate = [(CATSharingDeviceSessionConnection *)self delegate];
    content = [v5 content];
    [delegate connection:self receivedData:content];
  }

  else
  {
    [(CATSharingDeviceSessionConnection *)self handleUnparsableMessageDictionary:messageCopy];
  }
}

- (void)sendTearDownMessageWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    v6 = errorCopy;
  }

  else
  {
    v6 = CATErrorWithCodeAndUserInfo(103, 0);
  }

  v7 = v6;
  v8 = [[CATSharingCloseMessage alloc] initWithError:v6];
  v9 = [[CATSharingMessage alloc] initWithContentMessage:v8];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__CATSharingDeviceSessionConnection_sendTearDownMessageWithError___block_invoke;
  v21[3] = &unk_278DA7580;
  v21[4] = self;
  [(CATSharingDeviceSessionConnection *)self sendMessage:v9 completion:v21];
  objc_initWeak(&location, self);
  mTimerSource = self->mTimerSource;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = CATGetCatalystQueue();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__CATSharingDeviceSessionConnection_sendTearDownMessageWithError___block_invoke_9;
  v17[3] = &unk_278DA72F8;
  objc_copyWeak(&v19, &location);
  v14 = v5;
  v18 = v14;
  v15 = [(CATTimerSource *)mTimerSource scheduleOneShotTimerWithIdentifier:v12 timeInterval:v13 queue:v17 fireHandler:0.5];
  mTombstoneTimer = self->mTombstoneTimer;
  self->mTombstoneTimer = v15;

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __66__CATSharingDeviceSessionConnection_sendTearDownMessageWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _CATLogGeneral_1();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__CATSharingDeviceSessionConnection_sendTearDownMessageWithError___block_invoke_cold_1(a1, v3);
    }
  }
}

uint64_t __66__CATSharingDeviceSessionConnection_sendTearDownMessageWithError___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = [WeakRetained isClosed];
    v3 = v5;
    if ((WeakRetained & 1) == 0)
    {
      WeakRetained = [v5 tombstoneWithError:*(a1 + 32)];
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (CATSharingConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendMessage:(uint64_t *)a1 completion:(NSObject *)a2 .cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_24329F000, a2, OS_LOG_TYPE_ERROR, "deviceSession: %{public}@ is not ready, refusing to send it messages.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __60__CATSharingDeviceSessionConnection_sendMessage_completion___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 verboseDescription];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveMessage:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleUnparsableMessageDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24329F000, a2, OS_LOG_TYPE_ERROR, "Message was unable to be parsed as %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __66__CATSharingDeviceSessionConnection_sendTearDownMessageWithError___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v12 = [a2 verboseDescription];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

@end