@interface CATIDSServiceConnection
+ (CATIDSServiceConnection)connectionWithMetadata:(id)a3 configuration:(id)a4 IDSPrimitives:(id)a5 messageBroadcaster:(id)a6 timerSource:(id)a7 dataMessageQueue:(id)a8 dataAggregator:(id)a9 assertion:(id)a10 workQueue:(id)a11 delegateQueue:(id)a12 destinationAddress:(id)a13 sourceAppleID:(id)a14;
+ (CATIDSServiceConnection)connectionWithMetadata:(id)a3 configuration:(id)a4 capabilities:(id)a5 IDSPrimitives:(id)a6 messageBroadcaster:(id)a7 timerSource:(id)a8 assertion:(id)a9 workQueue:(id)a10 delegateQueue:(id)a11 destinationAddress:(id)a12 sourceAppleID:(id)a13;
+ (id)acknowledgeContent;
+ (id)closeContentWithError:(id)a3;
+ (id)keepAliveContent;
+ (id)keepAliveTimerIdentifier;
- (CATIDSServiceConnection)initWithMetadata:(id)a3 configuration:(id)a4 IDSPrimitives:(id)a5 messageBroadcaster:(id)a6 timerSource:(id)a7 dataMessageQueue:(id)a8 dataAggregator:(id)a9 assertion:(id)a10 workQueue:(id)a11 delegateQueue:(id)a12 destinationAddress:(id)a13 sourceAppleID:(id)a14;
- (CATIDSServiceConnectionDelegate)delegate;
- (id)description;
- (id)requestMissingDataContentWithExpectedSequenceNumber:(unint64_t)a3;
- (id)retransmitContentForSequenceNumbers:(id)a3;
- (void)_close;
- (void)_sendData:(id)a3 completion:(id)a4;
- (void)close;
- (void)connectionDataAggregator:(id)a3 aggregatedData:(id)a4 withNumber:(unint64_t)a5;
- (void)connectionDataAggregator:(id)a3 isMissingSequenceNumbers:(id)a4;
- (void)connectionDataAggregatorWantsToReportSequenceNumber:(id)a3;
- (void)dataMessageQueue:(id)a3 needsToSendContents:(id)a4 shouldSkipTheLine:(BOOL)a5 completion:(id)a6;
- (void)dataMessageQueue:(id)a3 wantsToCheckRemote:(unint64_t)a4;
- (void)keepAliveTimerDidFire:(id)a3 fireCount:(unint64_t)a4 isFinalFire:(BOOL)a5;
- (void)messageProcessor:(id)a3 receivedExpectedSequence:(unint64_t)a4;
- (void)messageProcessor:(id)a3 wantsAggregation:(id)a4;
- (void)messageProcessor:(id)a3 wantsRetransmission:(id)a4;
- (void)messageProcessor:(id)a3 wantsToAckUpTo:(unint64_t)a4;
- (void)messageProcessor:(id)a3 wantsToCloseWithError:(id)a4;
- (void)messageProcessorWantsToAcknowledgeRemote:(id)a3;
- (void)messageProcessorWantsToExtendKeepAlive:(id)a3;
- (void)processMessage:(id)a3 senderAppleID:(id)a4 senderAddress:(id)a5;
- (void)sendContent:(id)a3;
- (void)sendData:(id)a3 completion:(id)a4;
- (void)tearDownWithError:(id)a3 shouldReportToRemote:(BOOL)a4;
@end

@implementation CATIDSServiceConnection

- (CATIDSServiceConnection)initWithMetadata:(id)a3 configuration:(id)a4 IDSPrimitives:(id)a5 messageBroadcaster:(id)a6 timerSource:(id)a7 dataMessageQueue:(id)a8 dataAggregator:(id)a9 assertion:(id)a10 workQueue:(id)a11 delegateQueue:(id)a12 destinationAddress:(id)a13 sourceAppleID:(id)a14
{
  v53 = a3;
  v19 = a4;
  v51 = a5;
  v50 = a6;
  v54 = a7;
  v49 = a8;
  v48 = a9;
  v47 = a10;
  v20 = a11;
  v46 = a12;
  v21 = a13;
  v22 = v19;
  v55 = a14;
  v59.receiver = self;
  v59.super_class = CATIDSServiceConnection;
  v23 = [(CATIDSServiceConnection *)&v59 init];
  if (v23)
  {
    objc_initWeak(&location, v23);
    objc_storeStrong(&v23->_metadata, a3);
    objc_storeStrong(&v23->mIDSPrimitives, a5);
    objc_storeStrong(&v23->mAssertion, a10);
    objc_storeStrong(&v23->mMessageBroadcaster, a6);
    objc_storeStrong(&v23->mWorkQueue, a11);
    objc_storeStrong(&v23->mDelegateQueue, a12);
    v24 = v21;
    v25 = [v21 copy];
    mDestinationAddress = v23->mDestinationAddress;
    v23->mDestinationAddress = v25;

    v27 = [v55 copy];
    mSourceAppleID = v23->mSourceAppleID;
    v23->mSourceAppleID = v27;

    v29 = objc_opt_new();
    mSendQueue = v23->mSendQueue;
    v23->mSendQueue = v29;

    [(CATOperationQueue *)v23->mSendQueue setUnderlyingQueue:v20];
    v31 = objc_opt_new();
    [v31 setUnderlyingQueue:v20];
    v32 = [[CATSerialOperationEnqueuer alloc] initWithTargetOperationQueue:v31];
    mControlOperationEnqueuer = v23->mControlOperationEnqueuer;
    v23->mControlOperationEnqueuer = v32;

    objc_storeStrong(&v23->mDataMessageQueue, a8);
    objc_storeStrong(&v23->mDataAggregator, a9);
    v34 = [objc_opt_class() keepAliveTimerIdentifier];
    [v22 keepAliveCheckinInterval];
    v36 = v35;
    v37 = [v22 keepAliveAttemptCount];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __202__CATIDSServiceConnection_initWithMetadata_configuration_IDSPrimitives_messageBroadcaster_timerSource_dataMessageQueue_dataAggregator_assertion_workQueue_delegateQueue_destinationAddress_sourceAppleID___block_invoke;
    v56[3] = &unk_278DA7620;
    objc_copyWeak(&v57, &location);
    v38 = [v54 scheduleRepeatTimerWithIdentifier:v34 timeInterval:v20 queue:v37 totalFires:v56 fireHandler:v36];
    mKeepAliveTimer = v23->mKeepAliveTimer;
    v23->mKeepAliveTimer = v38;

    v40 = [CATIDSServiceConnectionMessageProcessor alloc];
    v41 = [v53 connectionIdentifier];
    v42 = [(CATIDSServiceConnectionMessageProcessor *)v40 initWithWorkQueue:v20 connectionIdentifier:v41];
    mMessageProcessor = v23->mMessageProcessor;
    v23->mMessageProcessor = v42;

    [(CATIDSServiceConnectionDataMessageQueue *)v23->mDataMessageQueue setDelegate:v23];
    [(CATIDSServiceConnectionDataAggregator *)v23->mDataAggregator setDelegate:v23];
    [(CATIDSServiceConnectionMessageProcessor *)v23->mMessageProcessor setDelegate:v23];
    objc_destroyWeak(&v57);

    objc_destroyWeak(&location);
    v21 = v24;
  }

  return v23;
}

void __202__CATIDSServiceConnection_initWithMetadata_configuration_IDSPrimitives_messageBroadcaster_timerSource_dataMessageQueue_dataAggregator_assertion_workQueue_delegateQueue_destinationAddress_sourceAppleID___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained keepAliveTimerDidFire:v7 fireCount:a3 isFinalFire:a4];
}

+ (CATIDSServiceConnection)connectionWithMetadata:(id)a3 configuration:(id)a4 IDSPrimitives:(id)a5 messageBroadcaster:(id)a6 timerSource:(id)a7 dataMessageQueue:(id)a8 dataAggregator:(id)a9 assertion:(id)a10 workQueue:(id)a11 delegateQueue:(id)a12 destinationAddress:(id)a13 sourceAppleID:(id)a14
{
  v32 = a14;
  v30 = a13;
  v24 = a12;
  v29 = a11;
  v28 = a10;
  v25 = a9;
  v27 = a8;
  v18 = a7;
  v19 = a6;
  v26 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [[CATIDSServiceConnection alloc] initWithMetadata:v21 configuration:v20 IDSPrimitives:v26 messageBroadcaster:v19 timerSource:v18 dataMessageQueue:v27 dataAggregator:v25 assertion:v28 workQueue:v29 delegateQueue:v24 destinationAddress:v30 sourceAppleID:v32];

  [v19 addBroadcastHandler:v22];

  return v22;
}

+ (CATIDSServiceConnection)connectionWithMetadata:(id)a3 configuration:(id)a4 capabilities:(id)a5 IDSPrimitives:(id)a6 messageBroadcaster:(id)a7 timerSource:(id)a8 assertion:(id)a9 workQueue:(id)a10 delegateQueue:(id)a11 destinationAddress:(id)a12 sourceAppleID:(id)a13
{
  v45 = a13;
  v44 = a12;
  v18 = a11;
  v19 = a10;
  v43 = a9;
  v20 = a8;
  v42 = a7;
  v39 = a6;
  v21 = a5;
  v22 = a4;
  v38 = a3;
  v23 = v22;
  v41 = -[CATConcreteIDSServiceConnectionDataChunker initWithWorkQueue:maxDataLength:]([CATConcreteIDSServiceConnectionDataChunker alloc], "initWithWorkQueue:maxDataLength:", v19, [v22 maxDataSendSize]);
  v24 = [CATConcreteIDSServiceConnectionDataMessageQueue alloc];
  v25 = v23;
  [v23 messageQueueFlushPromptInterval];
  v26 = v19;
  v28 = -[CATConcreteIDSServiceConnectionDataMessageQueue initWithWorkQueue:timerSource:dataChunker:flushPromptInterval:supportsRetransmit:](v24, "initWithWorkQueue:timerSource:dataChunker:flushPromptInterval:supportsRetransmit:", v19, v20, v41, [v21 supportsReliableDelivery], v27);
  v29 = [CATConcreteIDSServiceConnectionDataAggregator alloc];
  v30 = v25;
  v35 = v25;
  [v25 missingItemsCheckinInterval];
  v32 = v31;
  v33 = [v21 supportsReliableDelivery];

  v36 = [(CATConcreteIDSServiceConnectionDataAggregator *)v29 initWithWorkQueue:v26 timerSource:v20 missingItemInterval:v33 supportsSequenceCorrection:v32];
  v37 = [CATIDSServiceConnection connectionWithMetadata:v38 configuration:v30 IDSPrimitives:v39 messageBroadcaster:v42 timerSource:v20 dataMessageQueue:v28 dataAggregator:v36 assertion:v43 workQueue:v26 delegateQueue:v18 destinationAddress:v44 sourceAppleID:v45];

  return v37;
}

- (void)sendData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  mWorkQueue = self->mWorkQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__CATIDSServiceConnection_sendData_completion___block_invoke;
  v13[3] = &unk_278DA7648;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v9 = v13;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_7;
  block[3] = &unk_278DA7208;
  v17 = v9;
  v10 = mWorkQueue;
  v11 = v7;
  v12 = v6;
  dispatch_async(v10, block);
}

- (void)close
{
  mWorkQueue = self->mWorkQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__CATIDSServiceConnection_close__block_invoke;
  v5[3] = &unk_278DA72D0;
  v5[4] = self;
  v3 = v5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_7;
  block[3] = &unk_278DA7208;
  v7 = v3;
  v4 = mWorkQueue;
  dispatch_async(v4, block);
}

- (void)_sendData:(id)a3 completion:(id)a4
{
  mWorkQueue = self->mWorkQueue;
  v7 = a4;
  v8 = a3;
  CATAssertIsQueue(mWorkQueue);
  [(CATIDSServiceConnectionDataMessageQueue *)self->mDataMessageQueue receiveData:v8 completion:v7];
}

- (void)_close
{
  CATAssertIsQueue(self->mWorkQueue);
  if (![(CATIDSServiceConnection *)self isClosed])
  {

    [(CATIDSServiceConnection *)self tearDownWithError:0 shouldReportToRemote:1];
  }
}

- (void)connectionDataAggregator:(id)a3 aggregatedData:(id)a4 withNumber:(unint64_t)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a4;
  CATAssertIsQueue(self->mWorkQueue);
  if (![(CATIDSServiceConnection *)self isClosed])
  {
    v8 = _CATLogGeneral_2();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = a5;
      _os_log_impl(&dword_24329F000, v8, OS_LOG_TYPE_INFO, "%{public}@ received data number %lu", buf, 0x16u);
    }

    mDelegateQueue = self->mDelegateQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__CATIDSServiceConnection_connectionDataAggregator_aggregatedData_withNumber___block_invoke;
    v13[3] = &unk_278DA7470;
    v13[4] = self;
    v14 = v7;
    v10 = v13;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __CATPerformBlock_block_invoke_7;
    v16 = &unk_278DA7208;
    v17 = v10;
    v11 = mDelegateQueue;
    dispatch_async(v11, buf);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __78__CATIDSServiceConnection_connectionDataAggregator_aggregatedData_withNumber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) receivedData:*(a1 + 40)];
}

- (void)connectionDataAggregator:(id)a3 isMissingSequenceNumbers:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  CATAssertIsQueue(self->mWorkQueue);
  if (![(CATIDSServiceConnection *)self isClosed])
  {
    v6 = _CATLogGeneral_2();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138543618;
      v10 = self;
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_24329F000, v6, OS_LOG_TYPE_INFO, "%{public}@ missing sequence numbers. Requesting retransmission of %{public}@", &v9, 0x16u);
    }

    v7 = [(CATIDSServiceConnection *)self retransmitContentForSequenceNumbers:v5];
    [(CATIDSServiceConnection *)self sendContent:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectionDataAggregatorWantsToReportSequenceNumber:(id)a3
{
  CATAssertIsQueue(self->mWorkQueue);
  v4 = [objc_opt_class() acknowledgeContent];
  [(CATIDSServiceConnection *)self sendContent:v4];
}

- (void)messageProcessorWantsToAcknowledgeRemote:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  CATAssertIsQueue(self->mWorkQueue);
  v4 = _CATLogGeneral_2();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = self;
    _os_log_impl(&dword_24329F000, v4, OS_LOG_TYPE_INFO, "%{public}@ sending acknowledge to remote", &v7, 0xCu);
  }

  v5 = [objc_opt_class() acknowledgeContent];
  [(CATIDSServiceConnection *)self sendContent:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)messageProcessorWantsToExtendKeepAlive:(id)a3
{
  CATAssertIsQueue(self->mWorkQueue);
  mKeepAliveTimer = self->mKeepAliveTimer;

  [(CATResettableTimer *)mKeepAliveTimer reset];
}

- (void)messageProcessor:(id)a3 wantsToCloseWithError:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  CATAssertIsQueue(self->mWorkQueue);
  if (![(CATIDSServiceConnection *)self isClosed])
  {
    v6 = _CATLogGeneral_2();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CATIDSServiceConnection *)self messageProcessor:v5 wantsToCloseWithError:v6];
    }

    if (v5)
    {
      v10 = *MEMORY[0x277CCA7E8];
      v11[0] = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = CATErrorWithCodeAndUserInfo(603, v7);
    [(CATIDSServiceConnection *)self tearDownWithError:v8 shouldReportToRemote:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)messageProcessor:(id)a3 wantsAggregation:(id)a4
{
  mWorkQueue = self->mWorkQueue;
  v6 = a4;
  CATAssertIsQueue(mWorkQueue);
  [(CATIDSServiceConnectionDataAggregator *)self->mDataAggregator receiveDataContent:v6];
}

- (void)messageProcessor:(id)a3 wantsRetransmission:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  CATAssertIsQueue(self->mWorkQueue);
  v6 = [v5 count];
  v7 = _CATLogGeneral_2();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v13 = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v5;
      v9 = "%{public}@ attempting to retransmit %{public}@";
      v10 = v7;
      v11 = 22;
LABEL_6:
      _os_log_impl(&dword_24329F000, v10, OS_LOG_TYPE_INFO, v9, &v13, v11);
    }
  }

  else if (v8)
  {
    v13 = 138543362;
    v14 = self;
    v9 = "%{public}@ attempting to retransmit the world";
    v10 = v7;
    v11 = 12;
    goto LABEL_6;
  }

  [(CATIDSServiceConnectionDataMessageQueue *)self->mDataMessageQueue retransmitSequenceNumbers:v5];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)messageProcessor:(id)a3 receivedExpectedSequence:(unint64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  CATAssertIsQueue(self->mWorkQueue);
  v6 = _CATLogGeneral_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2048;
    v11 = a4;
    _os_log_impl(&dword_24329F000, v6, OS_LOG_TYPE_INFO, "%{public}@ received request to compute missing sequence numbers with expected sequence number %lu", &v8, 0x16u);
  }

  [(CATIDSServiceConnectionDataAggregator *)self->mDataAggregator receiveExpectedSequenceNumber:a4];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)messageProcessor:(id)a3 wantsToAckUpTo:(unint64_t)a4
{
  CATAssertIsQueue(self->mWorkQueue);
  mDataMessageQueue = self->mDataMessageQueue;

  [(CATIDSServiceConnectionDataMessageQueue *)mDataMessageQueue receiveRemoteSequenceNumber:a4];
}

- (void)processMessage:(id)a3 senderAppleID:(id)a4 senderAddress:(id)a5
{
  v13 = a3;
  v7 = a5;
  CATAssertIsQueue(self->mWorkQueue);
  if (!-[CATIDSServiceConnection isClosed](self, "isClosed") && [v7 isEqual:self->mDestinationAddress])
  {
    v8 = [CATIDSMessagePayload instanceWithDictionary:v13];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 metadata];
      v11 = [v10 messageType];

      if (v11 == 102)
      {
        v12 = [v9 message];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [CATIDSServiceConnection processMessage:senderAppleID:senderAddress:];
        }

        [(CATIDSServiceConnectionMessageProcessor *)self->mMessageProcessor receiveMessage:v12];
      }
    }
  }
}

- (void)dataMessageQueue:(id)a3 wantsToCheckRemote:(unint64_t)a4
{
  v11 = *MEMORY[0x277D85DE8];
  CATAssertIsQueue(self->mWorkQueue);
  v6 = _CATLogGeneral_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&dword_24329F000, v6, OS_LOG_TYPE_INFO, "%{public}@ requesting remote computes missing data.", &v9, 0xCu);
  }

  v7 = [(CATIDSServiceConnection *)self requestMissingDataContentWithExpectedSequenceNumber:a4];
  [(CATIDSServiceConnection *)self sendContent:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dataMessageQueue:(id)a3 needsToSendContents:(id)a4 shouldSkipTheLine:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  CATAssertIsQueue(self->mWorkQueue);
  if ([(CATIDSServiceConnection *)self isClosed])
  {
    v13 = CATErrorWithCodeAndUserInfo(100, 0);
    v12[2](v12, v13);
  }

  else if (v7)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __93__CATIDSServiceConnection_dataMessageQueue_needsToSendContents_shouldSkipTheLine_completion___block_invoke;
    v32[3] = &unk_278DA7670;
    v32[4] = self;
    [v11 cat_forEach:v32];
    v12[2](v12, 0);
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __93__CATIDSServiceConnection_dataMessageQueue_needsToSendContents_shouldSkipTheLine_completion___block_invoke_2;
    v31[3] = &unk_278DA7698;
    v31[4] = self;
    v14 = [v11 cat_map:v31];
    v15 = objc_opt_new();
    [v15 setFireAndForget:1];
    v16 = [[CATSendSerialIDSMessagesOperation alloc] initWithIDSPrimitives:self->mIDSPrimitives workQueue:self->mWorkQueue messages:v14 destinationAddress:self->mDestinationAddress sourceAppleID:self->mSourceAppleID options:v15];
    objc_initWeak(&location, self);
    v17 = self->mWorkQueue;
    v18 = self->mDelegateQueue;
    v19 = MEMORY[0x277CCA8C8];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __93__CATIDSServiceConnection_dataMessageQueue_needsToSendContents_shouldSkipTheLine_completion___block_invoke_3;
    v24[3] = &unk_278DA76C0;
    v20 = v17;
    v25 = v20;
    v21 = v18;
    v26 = v21;
    v28 = v12;
    v22 = v16;
    v27 = v22;
    objc_copyWeak(&v29, &location);
    v23 = [v19 blockOperationWithBlock:v24];
    [v23 addDependency:v22];
    [(CATOperationQueue *)self->mSendQueue addOperation:v22];
    [(CATSerialOperationEnqueuer *)self->mControlOperationEnqueuer addOperation:v23];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }
}

CATActiveServiceConnectionIDSMessage *__93__CATIDSServiceConnection_dataMessageQueue_needsToSendContents_shouldSkipTheLine_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CATActiveServiceConnectionIDSMessage alloc];
  v5 = [*(a1 + 32) metadata];
  v6 = [v5 connectionIdentifier];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 32) + 56), "receivedSequenceNumber")}];
  v8 = [(CATActiveServiceConnectionIDSMessage *)v4 initWithConnectionIdentifier:v6 receivedSequenceNumber:v7 content:v3];

  return v8;
}

void __93__CATIDSServiceConnection_dataMessageQueue_needsToSendContents_shouldSkipTheLine_completion___block_invoke_3(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  CATAssertIsQueue(*(a1 + 32));
  v2 = *(a1 + 40);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __93__CATIDSServiceConnection_dataMessageQueue_needsToSendContents_shouldSkipTheLine_completion___block_invoke_4;
  v15 = &unk_278DA71E0;
  v17 = *(a1 + 56);
  v16 = *(a1 + 48);
  v3 = &v12;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_7;
  block[3] = &unk_278DA7208;
  v19 = v3;
  v4 = v2;
  dispatch_async(v4, block);

  v5 = [*(a1 + 48) error];

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v7 = WeakRetained;
    if (WeakRetained && ([WeakRetained isClosed] & 1) == 0)
    {
      v20 = *MEMORY[0x277CCA7E8];
      v8 = [*(a1 + 48) error];
      v21[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v10 = CATErrorWithCodeAndUserInfo(604, v9);

      [v7 tearDownWithError:v10 shouldReportToRemote:0];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __93__CATIDSServiceConnection_dataMessageQueue_needsToSendContents_shouldSkipTheLine_completion___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

+ (id)keepAliveTimerIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromClass(a1);
  v4 = [v2 stringWithFormat:@"%@-KeepAliveTimer", v3];

  return v4;
}

- (void)keepAliveTimerDidFire:(id)a3 fireCount:(unint64_t)a4 isFinalFire:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v14 = *MEMORY[0x277D85DE8];
  CATAssertIsQueue(self->mWorkQueue);
  if (v5)
  {
    v8 = _CATLogGeneral_2();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CATIDSServiceConnection keepAliveTimerDidFire:v8 fireCount:? isFinalFire:?];
    }

    v9 = CATErrorWithCodeAndUserInfo(600, 0);
    [(CATIDSServiceConnection *)self tearDownWithError:v9 shouldReportToRemote:1];
LABEL_9:

    goto LABEL_10;
  }

  if (v6)
  {
    v10 = _CATLogGeneral_2();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138543362;
      v13 = self;
      _os_log_impl(&dword_24329F000, v10, OS_LOG_TYPE_INFO, "%{public}@ sending keepalive to remote", &v12, 0xCu);
    }

    v9 = [objc_opt_class() keepAliveContent];
    [(CATIDSServiceConnection *)self sendContent:v9];
    goto LABEL_9;
  }

LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendContent:(id)a3
{
  v4 = a3;
  CATAssertIsQueue(self->mWorkQueue);
  v5 = [CATActiveServiceConnectionIDSMessage alloc];
  v6 = [(CATIDSServiceConnection *)self metadata];
  v7 = [v6 connectionIdentifier];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CATIDSServiceConnectionDataAggregator receivedSequenceNumber](self->mDataAggregator, "receivedSequenceNumber")}];
  v9 = [(CATActiveServiceConnectionIDSMessage *)v5 initWithConnectionIdentifier:v7 receivedSequenceNumber:v8 content:v4];

  v10 = [[CATIDSMessagePayload alloc] initWithMessage:v9];
  v11 = [(CATIDSMessagePayload *)v10 dictionaryValue];
  if (![(CATIDSServiceConnection *)self isClosed])
  {
    objc_initWeak(&location, self);
    v12 = self->mWorkQueue;
    v13 = objc_opt_new();
    [v13 setFireAndForget:1];
    mSourceAppleID = self->mSourceAppleID;
    mIDSPrimitives = self->mIDSPrimitives;
    mDestinationAddress = self->mDestinationAddress;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __39__CATIDSServiceConnection_sendContent___block_invoke;
    v18[3] = &unk_278DA7710;
    v17 = v12;
    v19 = v17;
    objc_copyWeak(&v21, &location);
    v20 = v11;
    [(CATIDSPrimitives *)mIDSPrimitives sendMessage:v20 toAddress:mDestinationAddress fromID:mSourceAppleID options:v13 completion:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __39__CATIDSServiceConnection_sendContent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__CATIDSServiceConnection_sendContent___block_invoke_2;
  v8[3] = &unk_278DA76E8;
  v9 = v3;
  v5 = v3;
  objc_copyWeak(&v11, (a1 + 48));
  v10 = *(a1 + 40);
  v6 = v8;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_7;
  block[3] = &unk_278DA7208;
  v13 = v6;
  v7 = v4;
  dispatch_async(v7, block);

  objc_destroyWeak(&v11);
}

void __39__CATIDSServiceConnection_sendContent___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v3 = _CATLogGeneral_2();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 40);
        v9 = [*(a1 + 32) verboseDescription];
        *buf = 138543874;
        v13 = WeakRetained;
        v14 = 2114;
        v15 = v8;
        v16 = 2114;
        v17 = v9;
        _os_log_error_impl(&dword_24329F000, v3, OS_LOG_TYPE_ERROR, "%{public}@ Failed to send IDS message %{public}@ from. Error: %{public}@", buf, 0x20u);
      }

      if (([WeakRetained isClosed] & 1) == 0)
      {
        v4 = *(a1 + 32);
        v10 = *MEMORY[0x277CCA7E8];
        v11 = v4;
        v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
        v6 = CATErrorWithCodeAndUserInfo(604, v5);

        [WeakRetained tearDownWithError:v6 shouldReportToRemote:0];
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)tearDownWithError:(id)a3 shouldReportToRemote:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  CATAssertIsQueue(self->mWorkQueue);
  if (![(CATIDSServiceConnection *)self isClosed])
  {
    [(CATOperationQueue *)self->mSendQueue cancelAllOperations];
    [(CATIDSSubscription *)self->mMessageSubscription cancel];
    [(CATResettableTimer *)self->mKeepAliveTimer invalidate];
    if (v4)
    {
      v7 = [objc_opt_class() closeContentWithError:v6];
      [(CATIDSServiceConnection *)self sendContent:v7];
    }

    [(CATCancelable *)self->mAssertion cancel];
    [(CATIDSServiceConnection *)self setClosed:1];
    [(CATIDSServiceConnection *)self setClosedError:v6];
    mDelegateQueue = self->mDelegateQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__CATIDSServiceConnection_tearDownWithError_shouldReportToRemote___block_invoke;
    v11[3] = &unk_278DA72D0;
    v11[4] = self;
    v9 = v11;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __CATPerformBlock_block_invoke_7;
    block[3] = &unk_278DA7208;
    v13 = v9;
    v10 = mDelegateQueue;
    dispatch_async(v10, block);
  }
}

void __66__CATIDSServiceConnection_tearDownWithError_shouldReportToRemote___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connectionClosed:*(a1 + 32)];
}

+ (id)closeContentWithError:(id)a3
{
  v3 = a3;
  v4 = [[CATActiveIDSServiceConnectionContentClose alloc] initWithError:v3];

  return v4;
}

+ (id)acknowledgeContent
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)keepAliveContent
{
  v2 = objc_opt_new();

  return v2;
}

- (id)retransmitContentForSequenceNumbers:(id)a3
{
  v3 = a3;
  v4 = [[CATActiveIDSServiceConnectionContentRetransmit alloc] initWithSequenceNumbers:v3];

  return v4;
}

- (id)requestMissingDataContentWithExpectedSequenceNumber:(unint64_t)a3
{
  v3 = [[CATActiveIDSServiceConnectionContentRequestMissingData alloc] initWithExpectedSequenceNumber:a3];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CATIDSServiceConnection *)self metadata];
  mDestinationAddress = self->mDestinationAddress;
  if ([(CATIDSServiceConnection *)self isClosed])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(CATIDSServiceConnection *)self closedError];
  v9 = [v3 stringWithFormat:@"<%@: %p { metadata = %@, destinationAddress = %@, isClosed = %@, closedError = %@ }>", v4, self, v5, mDestinationAddress, v7, v8];

  return v9;
}

- (CATIDSServiceConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)messageProcessor:(NSObject *)a3 wantsToCloseWithError:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 verboseDescription];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_24329F000, a3, OS_LOG_TYPE_ERROR, "%{public}@ closed by the remote. Error: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)processMessage:senderAppleID:senderAddress:.cold.1()
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CATIDSServiceConnection processMessage:senderAppleID:senderAddress:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInFunction:v0 file:@"CATIDSServiceConnection.m" lineNumber:393 description:{@"expected %@, got %@", v2, v4}];
}

- (void)keepAliveTimerDidFire:(uint64_t)a1 fireCount:(NSObject *)a2 isFinalFire:.cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = v2;
  _os_log_error_impl(&dword_24329F000, a2, OS_LOG_TYPE_ERROR, "%{public}@ timed out waiting to hear anything from the remote. Aggregator: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end