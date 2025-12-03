@interface CATConcreteIDSServiceConnectionDataMessageQueue
- (CATConcreteIDSServiceConnectionDataMessageQueue)initWithWorkQueue:(id)queue timerSource:(id)source dataChunker:(id)chunker flushPromptInterval:(double)interval supportsRetransmit:(BOOL)retransmit;
- (CATIDSServiceConnectionDataMessageQueueDelegate)delegate;
- (void)flushTimerDidFire:(id)fire fireCount:(unint64_t)count;
- (void)receiveData:(id)data completion:(id)completion;
- (void)receiveRemoteSequenceNumber:(unint64_t)number;
- (void)retransmitContent:(id)content;
- (void)retransmitSequenceNumbers:(id)numbers;
- (void)scheduleFlushTimer;
@end

@implementation CATConcreteIDSServiceConnectionDataMessageQueue

- (CATConcreteIDSServiceConnectionDataMessageQueue)initWithWorkQueue:(id)queue timerSource:(id)source dataChunker:(id)chunker flushPromptInterval:(double)interval supportsRetransmit:(BOOL)retransmit
{
  queueCopy = queue;
  sourceCopy = source;
  chunkerCopy = chunker;
  v21.receiver = self;
  v21.super_class = CATConcreteIDSServiceConnectionDataMessageQueue;
  v16 = [(CATConcreteIDSServiceConnectionDataMessageQueue *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->mWorkQueue, queue);
    objc_storeStrong(&v17->mTimerSource, source);
    objc_storeStrong(&v17->mDataChunker, chunker);
    v17->mFlushPromptInterval = interval;
    v17->mSupportsRetransmit = retransmit;
    v18 = objc_opt_new();
    mSendContentsBySequenceNumber = v17->mSendContentsBySequenceNumber;
    v17->mSendContentsBySequenceNumber = v18;
  }

  return v17;
}

- (void)receiveData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  CATAssertIsQueue(self->mWorkQueue);
  if (![dataCopy length])
  {
    [CATConcreteIDSServiceConnectionDataMessageQueue receiveData:a2 completion:self];
  }

  v9 = [(CATIDSServiceConnectionDataChunker *)self->mDataChunker chunkDataIntoMessageContent:dataCopy];
  v10 = v9;
  if (self->mSupportsRetransmit)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    firstObject = [v9 firstObject];
    sequenceNumber = [firstObject sequenceNumber];
    unsignedIntegerValue = [sequenceNumber unsignedIntegerValue];

    v20 = unsignedIntegerValue;
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

    delegate = [(CATConcreteIDSServiceConnectionDataMessageQueue *)self delegate];
    [delegate dataMessageQueue:self needsToSendContents:v10 shouldSkipTheLine:0 completion:completionCopy];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    delegate2 = [(CATConcreteIDSServiceConnectionDataMessageQueue *)self delegate];
    [delegate2 dataMessageQueue:self needsToSendContents:v10 shouldSkipTheLine:0 completion:completionCopy];
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

- (void)receiveRemoteSequenceNumber:(unint64_t)number
{
  CATAssertIsQueue(self->mWorkQueue);
  mHeadSequenceNumber = self->mHeadSequenceNumber;
  v6 = mHeadSequenceNumber - 1;
  if (mHeadSequenceNumber - 1 <= number)
  {
    numberCopy = number;
  }

  else
  {
    numberCopy = mHeadSequenceNumber - 1;
  }

  if (mHeadSequenceNumber - 1 >= number)
  {
    numberCopy2 = number;
  }

  else
  {
    numberCopy2 = mHeadSequenceNumber - 1;
  }

  if (numberCopy - numberCopy2 < 0xFFFFFFFFFFFE795FLL)
  {
    v11 = v6 > number;
    v10 = v6 < number;
    if (v11)
    {
      return;
    }
  }

  else
  {
    v9 = v6 >= number;
    v10 = v6 > number;
    if (!v9)
    {
      return;
    }
  }

  if (v10)
  {
    for (; mHeadSequenceNumber <= number; ++mHeadSequenceNumber)
    {
      mSendContentsBySequenceNumber = self->mSendContentsBySequenceNumber;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:mHeadSequenceNumber];
      [(NSMutableDictionary *)mSendContentsBySequenceNumber setObject:0 forKeyedSubscript:v13];
    }

    self->mHeadSequenceNumber = number + 1;
    if (number + 1 >= self->mTailSequenceNumber)
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

- (void)retransmitSequenceNumbers:(id)numbers
{
  numbersCopy = numbers;
  CATAssertIsQueue(self->mWorkQueue);
  if ([numbersCopy count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__CATConcreteIDSServiceConnectionDataMessageQueue_retransmitSequenceNumbers___block_invoke;
    v7[3] = &unk_278DA7348;
    v7[4] = self;
    allValues = [numbersCopy cat_map:v7];
  }

  else
  {
    allValues = [(NSMutableDictionary *)self->mSendContentsBySequenceNumber allValues];
  }

  v6 = allValues;
  [(CATConcreteIDSServiceConnectionDataMessageQueue *)self retransmitContent:allValues];
}

- (void)scheduleFlushTimer
{
  objc_initWeak(&location, self);
  [(CATTimer *)self->mFlushTimer invalidate];
  mTimerSource = self->mTimerSource;
  flushTimerIdentifier = [objc_opt_class() flushTimerIdentifier];
  mFlushPromptInterval = self->mFlushPromptInterval;
  mWorkQueue = self->mWorkQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__CATConcreteIDSServiceConnectionDataMessageQueue_scheduleFlushTimer__block_invoke;
  v9[3] = &unk_278DA7B70;
  objc_copyWeak(&v10, &location);
  v7 = [(CATTimerSource *)mTimerSource scheduleInfiniteTimerWithIdentifier:flushTimerIdentifier timeInterval:mWorkQueue queue:v9 fireHandler:mFlushPromptInterval];
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

- (void)flushTimerDidFire:(id)fire fireCount:(unint64_t)count
{
  countCopy = count;
  mWorkQueue = self->mWorkQueue;
  fireCopy = fire;
  CATAssertIsQueue(mWorkQueue);
  mFlushTimer = self->mFlushTimer;

  if ((countCopy & 1) != 0 && mFlushTimer == fireCopy)
  {
    delegate = [(CATConcreteIDSServiceConnectionDataMessageQueue *)self delegate];
    [delegate dataMessageQueue:self wantsToCheckRemote:self->mHeadSequenceNumber - 1];
  }
}

- (void)retransmitContent:(id)content
{
  contentCopy = content;
  delegate = [(CATConcreteIDSServiceConnectionDataMessageQueue *)self delegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__CATConcreteIDSServiceConnectionDataMessageQueue_retransmitContent___block_invoke;
  v7[3] = &unk_278DA7B98;
  v7[4] = self;
  v8 = contentCopy;
  v6 = contentCopy;
  [delegate dataMessageQueue:self needsToSendContents:v6 shouldSkipTheLine:1 completion:v7];
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