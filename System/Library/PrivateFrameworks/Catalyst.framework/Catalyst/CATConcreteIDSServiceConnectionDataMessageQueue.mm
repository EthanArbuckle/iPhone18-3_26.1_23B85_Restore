@interface CATConcreteIDSServiceConnectionDataMessageQueue
- (CATConcreteIDSServiceConnectionDataMessageQueue)initWithWorkQueue:(id)a3 timerSource:(id)a4 dataChunker:(id)a5 flushPromptInterval:(double)a6 supportsRetransmit:(BOOL)a7;
- (CATIDSServiceConnectionDataMessageQueueDelegate)delegate;
- (void)flushTimerDidFire:(id)a3 fireCount:(unint64_t)a4;
- (void)receiveData:(id)a3 completion:(id)a4;
- (void)receiveRemoteSequenceNumber:(unint64_t)a3;
- (void)retransmitContent:(id)a3;
- (void)retransmitSequenceNumbers:(id)a3;
- (void)scheduleFlushTimer;
@end

@implementation CATConcreteIDSServiceConnectionDataMessageQueue

- (CATConcreteIDSServiceConnectionDataMessageQueue)initWithWorkQueue:(id)a3 timerSource:(id)a4 dataChunker:(id)a5 flushPromptInterval:(double)a6 supportsRetransmit:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v21.receiver = self;
  v21.super_class = CATConcreteIDSServiceConnectionDataMessageQueue;
  v16 = [(CATConcreteIDSServiceConnectionDataMessageQueue *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->mWorkQueue, a3);
    objc_storeStrong(&v17->mTimerSource, a4);
    objc_storeStrong(&v17->mDataChunker, a5);
    v17->mFlushPromptInterval = a6;
    v17->mSupportsRetransmit = a7;
    v18 = objc_opt_new();
    mSendContentsBySequenceNumber = v17->mSendContentsBySequenceNumber;
    v17->mSendContentsBySequenceNumber = v18;
  }

  return v17;
}

- (void)receiveData:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  CATAssertIsQueue(self->mWorkQueue);
  if (![v7 length])
  {
    [CATConcreteIDSServiceConnectionDataMessageQueue receiveData:a2 completion:self];
  }

  v9 = [(CATIDSServiceConnectionDataChunker *)self->mDataChunker chunkDataIntoMessageContent:v7];
  v10 = v9;
  if (self->mSupportsRetransmit)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v11 = [v9 firstObject];
    v12 = [v11 sequenceNumber];
    v13 = [v12 unsignedIntegerValue];

    v20 = v13;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__CATConcreteIDSServiceConnectionDataMessageQueue_receiveData_completion___block_invoke;
    v16[3] = &unk_278DA7B48;
    v16[4] = self;
    v16[5] = &v17;
    [v10 cat_forEach:v16];
    self->mTailSequenceNumber = v18[3] + 1;
    if (!self->mFlushTimer)
    {
      [(CATConcreteIDSServiceConnectionDataMessageQueue *)self scheduleFlushTimer];
    }

    v14 = [(CATConcreteIDSServiceConnectionDataMessageQueue *)self delegate];
    [v14 dataMessageQueue:self needsToSendContents:v10 shouldSkipTheLine:0 completion:v8];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v15 = [(CATConcreteIDSServiceConnectionDataMessageQueue *)self delegate];
    [v15 dataMessageQueue:self needsToSendContents:v10 shouldSkipTheLine:0 completion:v8];
  }
}

void __74__CATConcreteIDSServiceConnectionDataMessageQueue_receiveData_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v16 = v3;
  v5 = [v3 sequenceNumber];
  v6 = [v5 unsignedIntegerValue];
  if (v4 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v4 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v7 - v8 < 0xFFFFFFFFFFFE795FLL)
  {
    v9 = v4 >= v6;
    v10 = v4 > v6;
  }

  else
  {
    v9 = v6 >= v4;
    v10 = v6 > v4;
  }

  v11 = !v9;
  if (!v10)
  {

    if (!v11)
    {
      goto LABEL_17;
    }

    v5 = [v16 sequenceNumber];
    *(*(*(a1 + 40) + 8) + 24) = [v5 unsignedIntegerValue];
  }

LABEL_17:
  v12 = *(*(a1 + 32) + 72);
  v13 = MEMORY[0x277CCABB0];
  v14 = [v16 sequenceNumber];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "unsignedIntegerValue")}];
  [v12 setObject:v16 forKeyedSubscript:v15];
}

- (void)receiveRemoteSequenceNumber:(unint64_t)a3
{
  CATAssertIsQueue(self->mWorkQueue);
  mHeadSequenceNumber = self->mHeadSequenceNumber;
  v6 = mHeadSequenceNumber - 1;
  if (mHeadSequenceNumber - 1 <= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = mHeadSequenceNumber - 1;
  }

  if (mHeadSequenceNumber - 1 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = mHeadSequenceNumber - 1;
  }

  if (v7 - v8 < 0xFFFFFFFFFFFE795FLL)
  {
    v11 = v6 > a3;
    v10 = v6 < a3;
    if (v11)
    {
      return;
    }
  }

  else
  {
    v9 = v6 >= a3;
    v10 = v6 > a3;
    if (!v9)
    {
      return;
    }
  }

  if (v10)
  {
    for (; mHeadSequenceNumber <= a3; ++mHeadSequenceNumber)
    {
      mSendContentsBySequenceNumber = self->mSendContentsBySequenceNumber;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mHeadSequenceNumber];
      [(NSMutableDictionary *)mSendContentsBySequenceNumber setObject:0 forKeyedSubscript:v13];
    }

    self->mHeadSequenceNumber = a3 + 1;
    if (a3 + 1 >= self->mTailSequenceNumber)
    {
      [(CATTimer *)self->mFlushTimer invalidate];
      mFlushTimer = self->mFlushTimer;
      self->mFlushTimer = 0;
    }

    else
    {

      [(CATConcreteIDSServiceConnectionDataMessageQueue *)self scheduleFlushTimer];
    }
  }
}

- (void)retransmitSequenceNumbers:(id)a3
{
  v4 = a3;
  CATAssertIsQueue(self->mWorkQueue);
  if ([v4 count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__CATConcreteIDSServiceConnectionDataMessageQueue_retransmitSequenceNumbers___block_invoke;
    v7[3] = &unk_278DA7348;
    v7[4] = self;
    v5 = [v4 cat_map:v7];
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->mSendContentsBySequenceNumber allValues];
  }

  v6 = v5;
  [(CATConcreteIDSServiceConnectionDataMessageQueue *)self retransmitContent:v5];
}

- (void)scheduleFlushTimer
{
  objc_initWeak(&location, self);
  [(CATTimer *)self->mFlushTimer invalidate];
  mTimerSource = self->mTimerSource;
  v4 = [objc_opt_class() flushTimerIdentifier];
  mFlushPromptInterval = self->mFlushPromptInterval;
  mWorkQueue = self->mWorkQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__CATConcreteIDSServiceConnectionDataMessageQueue_scheduleFlushTimer__block_invoke;
  v9[3] = &unk_278DA7B70;
  objc_copyWeak(&v10, &location);
  v7 = [(CATTimerSource *)mTimerSource scheduleInfiniteTimerWithIdentifier:v4 timeInterval:mWorkQueue queue:v9 fireHandler:mFlushPromptInterval];
  mFlushTimer = self->mFlushTimer;
  self->mFlushTimer = v7;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __69__CATConcreteIDSServiceConnectionDataMessageQueue_scheduleFlushTimer__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained flushTimerDidFire:v5 fireCount:a3];
}

- (void)flushTimerDidFire:(id)a3 fireCount:(unint64_t)a4
{
  v4 = a4;
  mWorkQueue = self->mWorkQueue;
  v7 = a3;
  CATAssertIsQueue(mWorkQueue);
  mFlushTimer = self->mFlushTimer;

  if ((v4 & 1) != 0 && mFlushTimer == v7)
  {
    v9 = [(CATConcreteIDSServiceConnectionDataMessageQueue *)self delegate];
    [v9 dataMessageQueue:self wantsToCheckRemote:self->mHeadSequenceNumber - 1];
  }
}

- (void)retransmitContent:(id)a3
{
  v4 = a3;
  v5 = [(CATConcreteIDSServiceConnectionDataMessageQueue *)self delegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__CATConcreteIDSServiceConnectionDataMessageQueue_retransmitContent___block_invoke;
  v7[3] = &unk_278DA7B98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 dataMessageQueue:self needsToSendContents:v6 shouldSkipTheLine:1 completion:v7];
}

void __69__CATConcreteIDSServiceConnectionDataMessageQueue_retransmitContent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (_CATLogGeneral_onceToken_17 != -1)
    {
      __69__CATConcreteIDSServiceConnectionDataMessageQueue_retransmitContent___block_invoke_cold_1();
    }

    v4 = _CATLogGeneral_logObj_17;
    if (os_log_type_enabled(_CATLogGeneral_logObj_17, OS_LOG_TYPE_ERROR))
    {
      __69__CATConcreteIDSServiceConnectionDataMessageQueue_retransmitContent___block_invoke_cold_2(a1, v4);
    }
  }
}

- (CATIDSServiceConnectionDataMessageQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)receiveData:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATIDSServiceConnectionMessageQueue.m" lineNumber:67 description:@"Attempted to enqueue data to send of lenght 0"];
}

void __69__CATConcreteIDSServiceConnectionDataMessageQueue_retransmitContent___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = 138543618;
  v6 = v2;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_24329F000, a2, OS_LOG_TYPE_ERROR, "%{public}@ failed to send data contents: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end