@interface CATSharingBroadcastConnection
- (CATSharingBroadcastConnection)initWithBroadcastPrimitives:(id)a3 timerSource:(id)a4;
- (CATSharingConnectionDelegate)delegate;
- (void)_close;
- (void)_sendData:(id)a3 completion:(id)a4;
- (void)addBroadcastPrimitiveHandlers;
- (void)close;
- (void)closeWithError:(id)a3 reportToRemote:(BOOL)a4;
- (void)handleCloseMessage:(id)a3;
- (void)handleSentMessage:(id)a3;
- (void)handleUnparsableMessageDictionary:(id)a3;
- (void)messageReceived:(id)a3;
- (void)removeBroadcastPrimitiveHandlers;
- (void)sendData:(id)a3 completion:(id)a4;
- (void)sendMessage:(id)a3 completion:(id)a4;
- (void)sendTearDownMessageWithError:(id)a3;
- (void)tombstoneWithError:(id)a3;
@end

@implementation CATSharingBroadcastConnection

- (CATSharingBroadcastConnection)initWithBroadcastPrimitives:(id)a3 timerSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = CATSharingBroadcastConnection;
  v9 = [(CATSharingBroadcastConnection *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mBroadcastPrimitives, a3);
    objc_storeStrong(&v10->mTimerSource, a4);
    [(CATSharingBroadcastConnection *)v10 addBroadcastPrimitiveHandlers];
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

- (void)sendData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__CATSharingBroadcastConnection_sendData_completion___block_invoke;
  v12[3] = &unk_278DA7420;
  objc_copyWeak(&v15, &location);
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v10 = v12;
  v11 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_1;
  block[3] = &unk_278DA7208;
  v18 = v10;
  dispatch_async(v11, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __53__CATSharingBroadcastConnection_sendData_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _sendData:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)close
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__CATSharingBroadcastConnection_close__block_invoke;
  v4[3] = &unk_278DA7120;
  objc_copyWeak(&v5, &location);
  v2 = v4;
  v3 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_1;
  block[3] = &unk_278DA7208;
  v8 = v2;
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __38__CATSharingBroadcastConnection_close__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _close];
}

- (void)_sendData:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  if (self->mIsClosing || [(CATSharingBroadcastConnection *)self isClosed])
  {
    v8 = CATErrorWithCodeAndUserInfo(100, 0);
    v6[2](v6, v8);
  }

  else
  {
    v8 = [[CATSharingSentMessage alloc] initWithContent:v10];
    v9 = [[CATSharingMessage alloc] initWithContentMessage:v8];
    [(CATSharingBroadcastConnection *)self sendMessage:v9 completion:v6];
  }
}

- (void)_close
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  if (![(CATSharingBroadcastConnection *)self isClosed]&& !self->mIsClosing)
  {

    [(CATSharingBroadcastConnection *)self closeWithError:0 reportToRemote:1];
  }
}

- (void)sendMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CATGetCatalystQueue();
  CATAssertIsQueue(v8);

  if ([(CATSharingBroadcastConnection *)self isClosed])
  {
    v9 = CATErrorWithCodeAndUserInfo(100, 0);
    v7[2](v7, v9);
  }

  else
  {
    v10 = [[CATSendBroadcastMessageOperation alloc] initWithBroadcastPrimitive:self->mBroadcastPrimitives message:v6];
    objc_initWeak(&location, self);
    v11 = MEMORY[0x277CCA8C8];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __56__CATSharingBroadcastConnection_sendMessage_completion___block_invoke;
    v17 = &unk_278DA7448;
    v12 = v10;
    v18 = v12;
    v19 = v7;
    objc_copyWeak(&v20, &location);
    v13 = [v11 blockOperationWithBlock:&v14];
    [v13 addDependency:{v12, v14, v15, v16, v17}];
    [(CATOperationQueue *)self->mOutgoingQueue addOperation:v12];
    [(CATOperationQueue *)self->mCatalystQueue addOperation:v13];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __56__CATSharingBroadcastConnection_sendMessage_completion___block_invoke(uint64_t a1)
{
  v2 = CATGetCatalystQueue();
  CATAssertIsQueue(v2);

  v4 = [*(a1 + 32) error];
  (*(*(a1 + 40) + 16))();
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained closeWithError:v4 reportToRemote:0];
  }
}

- (void)closeWithError:(id)a3 reportToRemote:(BOOL)a4
{
  v7 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  if (![(CATSharingBroadcastConnection *)self isClosed]&& !self->mIsClosing)
  {
    self->mIsClosing = 1;
    if (a4)
    {
      [(CATSharingBroadcastConnection *)self sendTearDownMessageWithError:v7];
    }

    else
    {
      [(CATSharingBroadcastConnection *)self tombstoneWithError:v7];
    }
  }
}

- (void)tombstoneWithError:(id)a3
{
  v6 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  if (![(CATSharingBroadcastConnection *)self isClosed])
  {
    [(CATSharingBroadcastConnection *)self setClosed:1];
    self->mIsClosing = 0;
    [(CATOperationQueue *)self->mOutgoingQueue cancelAllOperations];
    [(CATSharingBroadcastConnection *)self removeBroadcastPrimitiveHandlers];
    [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitives deactivate];
    [(CATSharingBroadcastConnection *)self setClosedError:v6];
    v5 = [(CATSharingBroadcastConnection *)self delegate];
    [v5 connectionClosed:self];
  }
}

- (void)addBroadcastPrimitiveHandlers
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__CATSharingBroadcastConnection_addBroadcastPrimitiveHandlers__block_invoke;
  v5[3] = &unk_278DA7498;
  objc_copyWeak(&v6, &location);
  [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitives setInvalidationHandler:v5];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__CATSharingBroadcastConnection_addBroadcastPrimitiveHandlers__block_invoke_3;
  v3[3] = &unk_278DA74C0;
  objc_copyWeak(&v4, &location);
  [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitives setMessageReceivedHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __62__CATSharingBroadcastConnection_addBroadcastPrimitiveHandlers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && ([WeakRetained isClosed] & 1) == 0 && (v5[2] & 1) == 0)
  {
    v6 = v5[6];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__CATSharingBroadcastConnection_addBroadcastPrimitiveHandlers__block_invoke_2;
    v7[3] = &unk_278DA7470;
    v7[4] = v5;
    v8 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

void __62__CATSharingBroadcastConnection_addBroadcastPrimitiveHandlers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && ([WeakRetained isClosed] & 1) == 0)
  {
    v6 = v5[6];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__CATSharingBroadcastConnection_addBroadcastPrimitiveHandlers__block_invoke_4;
    v7[3] = &unk_278DA7470;
    v7[4] = v5;
    v8 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

- (void)removeBroadcastPrimitiveHandlers
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitives setInvalidationHandler:0];
  mBroadcastPrimitives = self->mBroadcastPrimitives;

  [(CATSharingBroadcastPrimitives *)mBroadcastPrimitives setMessageReceivedHandler:0];
}

- (void)messageReceived:(id)a3
{
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  v6 = [CATSharingMessage instanceWithDictionary:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 messageType];
    v9 = [v7 contentDictionaryValue];
    if (v8 == 1)
    {
      [(CATSharingBroadcastConnection *)self handleSentMessage:v9];
    }

    else if (v8 == 2)
    {
      [(CATSharingBroadcastConnection *)self handleCloseMessage:v9];
    }

    else
    {
      v10 = _CATLogGeneral_0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CATSharingBroadcastConnection *)v8 messageReceived:v10];
      }

      [(CATSharingBroadcastConnection *)self handleUnparsableMessageDictionary:v9];
    }
  }

  else
  {
    [(CATSharingBroadcastConnection *)self handleUnparsableMessageDictionary:v4];
  }
}

- (void)handleUnparsableMessageDictionary:(id)a3
{
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  if (![(CATSharingBroadcastConnection *)self isClosed])
  {
    v6 = _CATLogGeneral_0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CATSharingBroadcastConnection *)v4 handleUnparsableMessageDictionary:v6];
    }

    v7 = CATErrorWithCodeAndUserInfo(300, 0);
    [(CATSharingBroadcastConnection *)self closeWithError:v7 reportToRemote:!self->mIsClosing];
  }
}

- (void)handleCloseMessage:(id)a3
{
  v8 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = [CATSharingCloseMessage instanceWithDictionary:v8];
  v6 = v5;
  if (v5)
  {
    if (!self->mIsClosing)
    {
      v7 = [v5 closeError];
      [(CATSharingBroadcastConnection *)self closeWithError:v7 reportToRemote:0];
    }
  }

  else
  {
    [(CATSharingBroadcastConnection *)self handleUnparsableMessageDictionary:v8];
  }
}

- (void)handleSentMessage:(id)a3
{
  v8 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = [CATSharingSentMessage instanceWithDictionary:v8];
  if (v5)
  {
    v6 = [(CATSharingBroadcastConnection *)self delegate];
    v7 = [v5 content];
    [v6 connection:self receivedData:v7];
  }

  else
  {
    [(CATSharingBroadcastConnection *)self handleUnparsableMessageDictionary:v8];
  }
}

- (void)sendTearDownMessageWithError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = CATErrorWithCodeAndUserInfo(103, 0);
  }

  v7 = v6;
  v8 = [[CATSharingCloseMessage alloc] initWithError:v6];
  v9 = [[CATSharingMessage alloc] initWithContentMessage:v8];
  [(CATSharingBroadcastConnection *)self sendMessage:v9 completion:&__block_literal_global_4];
  objc_initWeak(&location, self);
  mTimerSource = self->mTimerSource;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = CATGetCatalystQueue();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__CATSharingBroadcastConnection_sendTearDownMessageWithError___block_invoke_9;
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

void __62__CATSharingBroadcastConnection_sendTearDownMessageWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _CATLogGeneral_0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __62__CATSharingBroadcastConnection_sendTearDownMessageWithError___block_invoke_cold_1(v2, v3);
    }
  }
}

uint64_t __62__CATSharingBroadcastConnection_sendTearDownMessageWithError___block_invoke_9(uint64_t a1)
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

- (void)messageReceived:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_24329F000, a2, OS_LOG_TYPE_ERROR, "Unknown message type: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleUnparsableMessageDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24329F000, a2, OS_LOG_TYPE_ERROR, "Unable to decode message: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __62__CATSharingBroadcastConnection_sendTearDownMessageWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_24329F000, a2, OS_LOG_TYPE_ERROR, "Error sending close message: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end