@interface CATIDSServiceConnection
+ (CATIDSServiceConnection)connectionWithMetadata:(id)metadata configuration:(id)configuration IDSPrimitives:(id)primitives messageBroadcaster:(id)broadcaster timerSource:(id)source dataMessageQueue:(id)queue dataAggregator:(id)aggregator assertion:(id)self0 workQueue:(id)self1 delegateQueue:(id)self2 destinationAddress:(id)self3 sourceAppleID:(id)self4;
+ (CATIDSServiceConnection)connectionWithMetadata:(id)metadata configuration:(id)configuration capabilities:(id)capabilities IDSPrimitives:(id)primitives messageBroadcaster:(id)broadcaster timerSource:(id)source assertion:(id)assertion workQueue:(id)self0 delegateQueue:(id)self1 destinationAddress:(id)self2 sourceAppleID:(id)self3;
+ (id)acknowledgeContent;
+ (id)closeContentWithError:(id)error;
+ (id)keepAliveContent;
+ (id)keepAliveTimerIdentifier;
- (CATIDSServiceConnection)initWithMetadata:(id)metadata configuration:(id)configuration IDSPrimitives:(id)primitives messageBroadcaster:(id)broadcaster timerSource:(id)source dataMessageQueue:(id)queue dataAggregator:(id)aggregator assertion:(id)self0 workQueue:(id)self1 delegateQueue:(id)self2 destinationAddress:(id)self3 sourceAppleID:(id)self4;
- (CATIDSServiceConnectionDelegate)delegate;
- (id)description;
- (id)requestMissingDataContentWithExpectedSequenceNumber:(unint64_t)number;
- (id)retransmitContentForSequenceNumbers:(id)numbers;
- (void)_close;
- (void)_sendData:(id)data completion:(id)completion;
- (void)close;
- (void)connectionDataAggregator:(id)aggregator aggregatedData:(id)data withNumber:(unint64_t)number;
- (void)connectionDataAggregator:(id)aggregator isMissingSequenceNumbers:(id)numbers;
- (void)connectionDataAggregatorWantsToReportSequenceNumber:(id)number;
- (void)dataMessageQueue:(id)queue needsToSendContents:(id)contents shouldSkipTheLine:(BOOL)line completion:(id)completion;
- (void)dataMessageQueue:(id)queue wantsToCheckRemote:(unint64_t)remote;
- (void)keepAliveTimerDidFire:(id)fire fireCount:(unint64_t)count isFinalFire:(BOOL)finalFire;
- (void)messageProcessor:(id)processor receivedExpectedSequence:(unint64_t)sequence;
- (void)messageProcessor:(id)processor wantsAggregation:(id)aggregation;
- (void)messageProcessor:(id)processor wantsRetransmission:(id)retransmission;
- (void)messageProcessor:(id)processor wantsToAckUpTo:(unint64_t)to;
- (void)messageProcessor:(id)processor wantsToCloseWithError:(id)error;
- (void)messageProcessorWantsToAcknowledgeRemote:(id)remote;
- (void)messageProcessorWantsToExtendKeepAlive:(id)alive;
- (void)processMessage:(id)message senderAppleID:(id)d senderAddress:(id)address;
- (void)sendContent:(id)content;
- (void)sendData:(id)data completion:(id)completion;
- (void)tearDownWithError:(id)error shouldReportToRemote:(BOOL)remote;
@end

@implementation CATIDSServiceConnection

- (CATIDSServiceConnection)initWithMetadata:(id)metadata configuration:(id)configuration IDSPrimitives:(id)primitives messageBroadcaster:(id)broadcaster timerSource:(id)source dataMessageQueue:(id)queue dataAggregator:(id)aggregator assertion:(id)self0 workQueue:(id)self1 delegateQueue:(id)self2 destinationAddress:(id)self3 sourceAppleID:(id)self4
{
  metadataCopy = metadata;
  configurationCopy = configuration;
  primitivesCopy = primitives;
  broadcasterCopy = broadcaster;
  sourceCopy = source;
  queueCopy = queue;
  aggregatorCopy = aggregator;
  assertionCopy = assertion;
  workQueueCopy = workQueue;
  delegateQueueCopy = delegateQueue;
  addressCopy = address;
  v22 = configurationCopy;
  dCopy = d;
  v59.receiver = self;
  v59.super_class = CATIDSServiceConnection;
  v23 = [(CATIDSServiceConnection *)&v59 init];
  if (v23)
  {
    objc_initWeak(&location, v23);
    objc_storeStrong(&v23->_metadata, metadata);
    objc_storeStrong(&v23->mIDSPrimitives, primitives);
    objc_storeStrong(&v23->mAssertion, assertion);
    objc_storeStrong(&v23->mMessageBroadcaster, broadcaster);
    objc_storeStrong(&v23->mWorkQueue, workQueue);
    objc_storeStrong(&v23->mDelegateQueue, delegateQueue);
    v24 = addressCopy;
    v25 = [addressCopy copy];
    mDestinationAddress = v23->mDestinationAddress;
    v23->mDestinationAddress = v25;

    v27 = [dCopy copy];
    mSourceAppleID = v23->mSourceAppleID;
    v23->mSourceAppleID = v27;

    v29 = objc_opt_new();
    mSendQueue = v23->mSendQueue;
    v23->mSendQueue = v29;

    [(CATOperationQueue *)v23->mSendQueue setUnderlyingQueue:workQueueCopy];
    v31 = objc_opt_new();
    [v31 setUnderlyingQueue:workQueueCopy];
    v32 = [[CATSerialOperationEnqueuer alloc] initWithTargetOperationQueue:v31];
    mControlOperationEnqueuer = v23->mControlOperationEnqueuer;
    v23->mControlOperationEnqueuer = v32;

    objc_storeStrong(&v23->mDataMessageQueue, queue);
    objc_storeStrong(&v23->mDataAggregator, aggregator);
    keepAliveTimerIdentifier = [objc_opt_class() keepAliveTimerIdentifier];
    [v22 keepAliveCheckinInterval];
    v36 = v35;
    keepAliveAttemptCount = [v22 keepAliveAttemptCount];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __202__CATIDSServiceConnection_initWithMetadata_configuration_IDSPrimitives_messageBroadcaster_timerSource_dataMessageQueue_dataAggregator_assertion_workQueue_delegateQueue_destinationAddress_sourceAppleID___block_invoke;
    v56[3] = &unk_278DA7620;
    objc_copyWeak(&v57, &location);
    v38 = [sourceCopy scheduleRepeatTimerWithIdentifier:keepAliveTimerIdentifier timeInterval:workQueueCopy queue:keepAliveAttemptCount totalFires:v56 fireHandler:v36];
    mKeepAliveTimer = v23->mKeepAliveTimer;
    v23->mKeepAliveTimer = v38;

    v40 = [CATIDSServiceConnectionMessageProcessor alloc];
    connectionIdentifier = [metadataCopy connectionIdentifier];
    v42 = [(CATIDSServiceConnectionMessageProcessor *)v40 initWithWorkQueue:workQueueCopy connectionIdentifier:connectionIdentifier];
    mMessageProcessor = v23->mMessageProcessor;
    v23->mMessageProcessor = v42;

    [(CATIDSServiceConnectionDataMessageQueue *)v23->mDataMessageQueue setDelegate:v23];
    [(CATIDSServiceConnectionDataAggregator *)v23->mDataAggregator setDelegate:v23];
    [(CATIDSServiceConnectionMessageProcessor *)v23->mMessageProcessor setDelegate:v23];
    objc_destroyWeak(&v57);

    objc_destroyWeak(&location);
    addressCopy = v24;
  }

  return v23;
}

void __202__CATIDSServiceConnection_initWithMetadata_configuration_IDSPrimitives_messageBroadcaster_timerSource_dataMessageQueue_dataAggregator_assertion_workQueue_delegateQueue_destinationAddress_sourceAppleID___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained keepAliveTimerDidFire:v7 fireCount:a3 isFinalFire:a4];
}

+ (CATIDSServiceConnection)connectionWithMetadata:(id)metadata configuration:(id)configuration IDSPrimitives:(id)primitives messageBroadcaster:(id)broadcaster timerSource:(id)source dataMessageQueue:(id)queue dataAggregator:(id)aggregator assertion:(id)self0 workQueue:(id)self1 delegateQueue:(id)self2 destinationAddress:(id)self3 sourceAppleID:(id)self4
{
  dCopy = d;
  addressCopy = address;
  delegateQueueCopy = delegateQueue;
  workQueueCopy = workQueue;
  assertionCopy = assertion;
  aggregatorCopy = aggregator;
  queueCopy = queue;
  sourceCopy = source;
  broadcasterCopy = broadcaster;
  primitivesCopy = primitives;
  configurationCopy = configuration;
  metadataCopy = metadata;
  v22 = [[CATIDSServiceConnection alloc] initWithMetadata:metadataCopy configuration:configurationCopy IDSPrimitives:primitivesCopy messageBroadcaster:broadcasterCopy timerSource:sourceCopy dataMessageQueue:queueCopy dataAggregator:aggregatorCopy assertion:assertionCopy workQueue:workQueueCopy delegateQueue:delegateQueueCopy destinationAddress:addressCopy sourceAppleID:dCopy];

  [broadcasterCopy addBroadcastHandler:v22];

  return v22;
}

+ (CATIDSServiceConnection)connectionWithMetadata:(id)metadata configuration:(id)configuration capabilities:(id)capabilities IDSPrimitives:(id)primitives messageBroadcaster:(id)broadcaster timerSource:(id)source assertion:(id)assertion workQueue:(id)self0 delegateQueue:(id)self1 destinationAddress:(id)self2 sourceAppleID:(id)self3
{
  dCopy = d;
  addressCopy = address;
  delegateQueueCopy = delegateQueue;
  queueCopy = queue;
  assertionCopy = assertion;
  sourceCopy = source;
  broadcasterCopy = broadcaster;
  primitivesCopy = primitives;
  capabilitiesCopy = capabilities;
  configurationCopy = configuration;
  metadataCopy = metadata;
  v23 = configurationCopy;
  v41 = -[CATConcreteIDSServiceConnectionDataChunker initWithWorkQueue:maxDataLength:]([CATConcreteIDSServiceConnectionDataChunker alloc], "initWithWorkQueue:maxDataLength:", queueCopy, [configurationCopy maxDataSendSize]);
  v24 = [CATConcreteIDSServiceConnectionDataMessageQueue alloc];
  v25 = v23;
  [v23 messageQueueFlushPromptInterval];
  v26 = queueCopy;
  v28 = -[CATConcreteIDSServiceConnectionDataMessageQueue initWithWorkQueue:timerSource:dataChunker:flushPromptInterval:supportsRetransmit:](v24, "initWithWorkQueue:timerSource:dataChunker:flushPromptInterval:supportsRetransmit:", queueCopy, sourceCopy, v41, [capabilitiesCopy supportsReliableDelivery], v27);
  v29 = [CATConcreteIDSServiceConnectionDataAggregator alloc];
  v30 = v25;
  v35 = v25;
  [v25 missingItemsCheckinInterval];
  v32 = v31;
  supportsReliableDelivery = [capabilitiesCopy supportsReliableDelivery];

  v36 = [(CATConcreteIDSServiceConnectionDataAggregator *)v29 initWithWorkQueue:v26 timerSource:sourceCopy missingItemInterval:supportsReliableDelivery supportsSequenceCorrection:v32];
  v37 = [CATIDSServiceConnection connectionWithMetadata:metadataCopy configuration:v30 IDSPrimitives:primitivesCopy messageBroadcaster:broadcasterCopy timerSource:sourceCopy dataMessageQueue:v28 dataAggregator:v36 assertion:assertionCopy workQueue:v26 delegateQueue:delegateQueueCopy destinationAddress:addressCopy sourceAppleID:dCopy];

  return v37;
}

- (void)sendData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  mWorkQueue = self->mWorkQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__CATIDSServiceConnection_sendData_completion___block_invoke;
  v13[3] = &unk_278DA7648;
  v13[4] = self;
  v14 = dataCopy;
  v15 = completionCopy;
  v9 = v13;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_7;
  block[3] = &unk_278DA7208;
  v17 = v9;
  v10 = mWorkQueue;
  v11 = completionCopy;
  v12 = dataCopy;
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

- (void)_sendData:(id)data completion:(id)completion
{
  mWorkQueue = self->mWorkQueue;
  completionCopy = completion;
  dataCopy = data;
  CATAssertIsQueue(mWorkQueue);
  [(CATIDSServiceConnectionDataMessageQueue *)self->mDataMessageQueue receiveData:dataCopy completion:completionCopy];
}

- (void)_close
{
  CATAssertIsQueue(self->mWorkQueue);
  if (![(CATIDSServiceConnection *)self isClosed])
  {

    [(CATIDSServiceConnection *)self tearDownWithError:0 shouldReportToRemote:1];
  }
}

- (void)connectionDataAggregator:(id)aggregator aggregatedData:(id)data withNumber:(unint64_t)number
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  CATAssertIsQueue(self->mWorkQueue);
  if (![(CATIDSServiceConnection *)self isClosed])
  {
    v8 = _CATLogGeneral_2();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = number;
      _os_log_impl(&dword_24329F000, v8, OS_LOG_TYPE_INFO, "%{public}@ received data number %lu", buf, 0x16u);
    }

    mDelegateQueue = self->mDelegateQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __78__CATIDSServiceConnection_connectionDataAggregator_aggregatedData_withNumber___block_invoke;
    v13[3] = &unk_278DA7470;
    v13[4] = self;
    v14 = dataCopy;
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

- (void)connectionDataAggregator:(id)aggregator isMissingSequenceNumbers:(id)numbers
{
  v13 = *MEMORY[0x277D85DE8];
  numbersCopy = numbers;
  CATAssertIsQueue(self->mWorkQueue);
  if (![(CATIDSServiceConnection *)self isClosed])
  {
    v6 = _CATLogGeneral_2();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138543618;
      selfCopy = self;
      v11 = 2114;
      v12 = numbersCopy;
      _os_log_impl(&dword_24329F000, v6, OS_LOG_TYPE_INFO, "%{public}@ missing sequence numbers. Requesting retransmission of %{public}@", &v9, 0x16u);
    }

    v7 = [(CATIDSServiceConnection *)self retransmitContentForSequenceNumbers:numbersCopy];
    [(CATIDSServiceConnection *)self sendContent:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectionDataAggregatorWantsToReportSequenceNumber:(id)number
{
  CATAssertIsQueue(self->mWorkQueue);
  acknowledgeContent = [objc_opt_class() acknowledgeContent];
  [(CATIDSServiceConnection *)self sendContent:acknowledgeContent];
}

- (void)messageProcessorWantsToAcknowledgeRemote:(id)remote
{
  v9 = *MEMORY[0x277D85DE8];
  CATAssertIsQueue(self->mWorkQueue);
  v4 = _CATLogGeneral_2();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_24329F000, v4, OS_LOG_TYPE_INFO, "%{public}@ sending acknowledge to remote", &v7, 0xCu);
  }

  acknowledgeContent = [objc_opt_class() acknowledgeContent];
  [(CATIDSServiceConnection *)self sendContent:acknowledgeContent];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)messageProcessorWantsToExtendKeepAlive:(id)alive
{
  CATAssertIsQueue(self->mWorkQueue);
  mKeepAliveTimer = self->mKeepAliveTimer;

  [(CATResettableTimer *)mKeepAliveTimer reset];
}

- (void)messageProcessor:(id)processor wantsToCloseWithError:(id)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  CATAssertIsQueue(self->mWorkQueue);
  if (![(CATIDSServiceConnection *)self isClosed])
  {
    v6 = _CATLogGeneral_2();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CATIDSServiceConnection *)self messageProcessor:errorCopy wantsToCloseWithError:v6];
    }

    if (errorCopy)
    {
      v10 = *MEMORY[0x277CCA7E8];
      v11[0] = errorCopy;
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

- (void)messageProcessor:(id)processor wantsAggregation:(id)aggregation
{
  mWorkQueue = self->mWorkQueue;
  aggregationCopy = aggregation;
  CATAssertIsQueue(mWorkQueue);
  [(CATIDSServiceConnectionDataAggregator *)self->mDataAggregator receiveDataContent:aggregationCopy];
}

- (void)messageProcessor:(id)processor wantsRetransmission:(id)retransmission
{
  v17 = *MEMORY[0x277D85DE8];
  retransmissionCopy = retransmission;
  CATAssertIsQueue(self->mWorkQueue);
  v6 = [retransmissionCopy count];
  v7 = _CATLogGeneral_2();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v13 = 138543618;
      selfCopy2 = self;
      v15 = 2114;
      v16 = retransmissionCopy;
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
    selfCopy2 = self;
    v9 = "%{public}@ attempting to retransmit the world";
    v10 = v7;
    v11 = 12;
    goto LABEL_6;
  }

  [(CATIDSServiceConnectionDataMessageQueue *)self->mDataMessageQueue retransmitSequenceNumbers:retransmissionCopy];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)messageProcessor:(id)processor receivedExpectedSequence:(unint64_t)sequence
{
  v12 = *MEMORY[0x277D85DE8];
  CATAssertIsQueue(self->mWorkQueue);
  v6 = _CATLogGeneral_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2048;
    sequenceCopy = sequence;
    _os_log_impl(&dword_24329F000, v6, OS_LOG_TYPE_INFO, "%{public}@ received request to compute missing sequence numbers with expected sequence number %lu", &v8, 0x16u);
  }

  [(CATIDSServiceConnectionDataAggregator *)self->mDataAggregator receiveExpectedSequenceNumber:sequence];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)messageProcessor:(id)processor wantsToAckUpTo:(unint64_t)to
{
  CATAssertIsQueue(self->mWorkQueue);
  mDataMessageQueue = self->mDataMessageQueue;

  [(CATIDSServiceConnectionDataMessageQueue *)mDataMessageQueue receiveRemoteSequenceNumber:to];
}

- (void)processMessage:(id)message senderAppleID:(id)d senderAddress:(id)address
{
  messageCopy = message;
  addressCopy = address;
  CATAssertIsQueue(self->mWorkQueue);
  if (!-[CATIDSServiceConnection isClosed](self, "isClosed") && [addressCopy isEqual:self->mDestinationAddress])
  {
    v8 = [CATIDSMessagePayload instanceWithDictionary:messageCopy];
    v9 = v8;
    if (v8)
    {
      metadata = [v8 metadata];
      messageType = [metadata messageType];

      if (messageType == 102)
      {
        message = [v9 message];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [CATIDSServiceConnection processMessage:senderAppleID:senderAddress:];
        }

        [(CATIDSServiceConnectionMessageProcessor *)self->mMessageProcessor receiveMessage:message];
      }
    }
  }
}

- (void)dataMessageQueue:(id)queue wantsToCheckRemote:(unint64_t)remote
{
  v11 = *MEMORY[0x277D85DE8];
  CATAssertIsQueue(self->mWorkQueue);
  v6 = _CATLogGeneral_2();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_24329F000, v6, OS_LOG_TYPE_INFO, "%{public}@ requesting remote computes missing data.", &v9, 0xCu);
  }

  v7 = [(CATIDSServiceConnection *)self requestMissingDataContentWithExpectedSequenceNumber:remote];
  [(CATIDSServiceConnection *)self sendContent:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dataMessageQueue:(id)queue needsToSendContents:(id)contents shouldSkipTheLine:(BOOL)line completion:(id)completion
{
  lineCopy = line;
  queueCopy = queue;
  contentsCopy = contents;
  completionCopy = completion;
  CATAssertIsQueue(self->mWorkQueue);
  if ([(CATIDSServiceConnection *)self isClosed])
  {
    v13 = CATErrorWithCodeAndUserInfo(100, 0);
    completionCopy[2](completionCopy, v13);
  }

  else if (lineCopy)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __93__CATIDSServiceConnection_dataMessageQueue_needsToSendContents_shouldSkipTheLine_completion___block_invoke;
    v32[3] = &unk_278DA7670;
    v32[4] = self;
    [contentsCopy cat_forEach:v32];
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __93__CATIDSServiceConnection_dataMessageQueue_needsToSendContents_shouldSkipTheLine_completion___block_invoke_2;
    v31[3] = &unk_278DA7698;
    v31[4] = self;
    v14 = [contentsCopy cat_map:v31];
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
    v28 = completionCopy;
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
  v3 = NSStringFromClass(self);
  v4 = [v2 stringWithFormat:@"%@-KeepAliveTimer", v3];

  return v4;
}

- (void)keepAliveTimerDidFire:(id)fire fireCount:(unint64_t)count isFinalFire:(BOOL)finalFire
{
  finalFireCopy = finalFire;
  countCopy = count;
  v14 = *MEMORY[0x277D85DE8];
  CATAssertIsQueue(self->mWorkQueue);
  if (finalFireCopy)
  {
    v8 = _CATLogGeneral_2();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CATIDSServiceConnection keepAliveTimerDidFire:v8 fireCount:? isFinalFire:?];
    }

    keepAliveContent = CATErrorWithCodeAndUserInfo(600, 0);
    [(CATIDSServiceConnection *)self tearDownWithError:keepAliveContent shouldReportToRemote:1];
LABEL_9:

    goto LABEL_10;
  }

  if (countCopy)
  {
    v10 = _CATLogGeneral_2();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_24329F000, v10, OS_LOG_TYPE_INFO, "%{public}@ sending keepalive to remote", &v12, 0xCu);
    }

    keepAliveContent = [objc_opt_class() keepAliveContent];
    [(CATIDSServiceConnection *)self sendContent:keepAliveContent];
    goto LABEL_9;
  }

LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendContent:(id)content
{
  contentCopy = content;
  CATAssertIsQueue(self->mWorkQueue);
  v5 = [CATActiveServiceConnectionIDSMessage alloc];
  metadata = [(CATIDSServiceConnection *)self metadata];
  connectionIdentifier = [metadata connectionIdentifier];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CATIDSServiceConnectionDataAggregator receivedSequenceNumber](self->mDataAggregator, "receivedSequenceNumber")}];
  v9 = [(CATActiveServiceConnectionIDSMessage *)v5 initWithConnectionIdentifier:connectionIdentifier receivedSequenceNumber:v8 content:contentCopy];

  v10 = [[CATIDSMessagePayload alloc] initWithMessage:v9];
  dictionaryValue = [(CATIDSMessagePayload *)v10 dictionaryValue];
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
    v20 = dictionaryValue;
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

- (void)tearDownWithError:(id)error shouldReportToRemote:(BOOL)remote
{
  remoteCopy = remote;
  errorCopy = error;
  CATAssertIsQueue(self->mWorkQueue);
  if (![(CATIDSServiceConnection *)self isClosed])
  {
    [(CATOperationQueue *)self->mSendQueue cancelAllOperations];
    [(CATIDSSubscription *)self->mMessageSubscription cancel];
    [(CATResettableTimer *)self->mKeepAliveTimer invalidate];
    if (remoteCopy)
    {
      v7 = [objc_opt_class() closeContentWithError:errorCopy];
      [(CATIDSServiceConnection *)self sendContent:v7];
    }

    [(CATCancelable *)self->mAssertion cancel];
    [(CATIDSServiceConnection *)self setClosed:1];
    [(CATIDSServiceConnection *)self setClosedError:errorCopy];
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

+ (id)closeContentWithError:(id)error
{
  errorCopy = error;
  v4 = [[CATActiveIDSServiceConnectionContentClose alloc] initWithError:errorCopy];

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

- (id)retransmitContentForSequenceNumbers:(id)numbers
{
  numbersCopy = numbers;
  v4 = [[CATActiveIDSServiceConnectionContentRetransmit alloc] initWithSequenceNumbers:numbersCopy];

  return v4;
}

- (id)requestMissingDataContentWithExpectedSequenceNumber:(unint64_t)number
{
  v3 = [[CATActiveIDSServiceConnectionContentRequestMissingData alloc] initWithExpectedSequenceNumber:number];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  metadata = [(CATIDSServiceConnection *)self metadata];
  mDestinationAddress = self->mDestinationAddress;
  if ([(CATIDSServiceConnection *)self isClosed])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  closedError = [(CATIDSServiceConnection *)self closedError];
  v9 = [v3 stringWithFormat:@"<%@: %p { metadata = %@, destinationAddress = %@, isClosed = %@, closedError = %@ }>", v4, self, metadata, mDestinationAddress, v7, closedError];

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