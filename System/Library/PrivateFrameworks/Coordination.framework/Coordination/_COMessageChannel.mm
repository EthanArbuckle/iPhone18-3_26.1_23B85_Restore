@interface _COMessageChannel
- (_COMessageChannel)initWithTopic:(id)topic cluster:(id)cluster manualGrouping:(BOOL)grouping;
- (id)_payloadTypeFromClass:(Class)class;
- (id)groupedHomeKitIdentifiers;
- (void)_onqueue_deliverDidEndDelegateForSession:(id)session notice:(id)notice initiator:(id)initiator error:(id)error;
- (void)_onqueue_deliverDidFailToStartSessionWithMember:(id)member consumer:(id)consumer error:(id)error;
- (void)_onqueue_deliverDidFailToStartSessionWithMember:(id)member producer:(id)producer error:(id)error;
- (void)_onqueue_deliverSuccessfullyStartedSession:(id)session withMember:(id)member consumer:(id)consumer;
- (void)_onqueue_deliverSuccessfullyStartedSession:(id)session withResponse:(id)response withMember:(id)member producer:(id)producer;
- (void)_onqueue_handleCapableCommand:(id)command fromMember:(id)member callback:(id)callback;
- (void)_onqueue_handleStartCommand:(id)command withMember:(id)member callback:(id)callback;
- (void)_onqueue_handleStopCommand:(id)command fromMember:(id)member callback:(id)callback;
- (void)_onqueue_sendRequest:(id)request members:(id)members withCompletionHandler:(id)handler;
- (void)_onqueue_startSessionWithProducer:(id)producer member:(id)member;
- (void)_onqueue_startSessionWithProducer:(id)producer member:(id)member request:(id)request;
- (void)activateWithCompletion:(id)completion;
- (void)addGroupedHomeKitIdentifiers:(id)identifiers;
- (void)addSessionConsumerWithSubTopic:(id)topic delegate:(id)delegate dispatchQueue:(id)queue;
- (void)addSessionProducerWithSubTopic:(id)topic delegate:(id)delegate dispatchQueue:(id)queue;
- (void)broadcastRequest:(id)request recipientsCallback:(id)callback responseCompletionHandler:(id)handler;
- (void)didFindMember:(id)member;
- (void)didLoseMember:(id)member;
- (void)didReceiveRequest:(id)request from:(id)from withCompletionHandler:(id)handler;
- (void)registerHandler:(id)handler forRequestClass:(Class)class;
- (void)registerMemberFoundHandler:(id)handler;
- (void)registerMemberLostHandler:(id)handler;
- (void)removeGroupedHomeKitIdentifiers:(id)identifiers;
- (void)sendRequest:(id)request members:(id)members withCompletionHandler:(id)handler;
@end

@implementation _COMessageChannel

- (_COMessageChannel)initWithTopic:(id)topic cluster:(id)cluster manualGrouping:(BOOL)grouping
{
  topicCopy = topic;
  v18.receiver = self;
  v18.super_class = _COMessageChannel;
  v8 = [(COMessageChannel *)&v18 initWithConnectionProvider:0 roleMonitorConnectionProvider:0 topic:topicCopy cluster:cluster];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x277CCACA8];
    cluster = [(COMessageChannel *)v8 cluster];
    v12 = [v10 stringWithFormat:@"%@-%@", topicCopy, cluster];

    v13 = [COMessageChannelRapportTransport alloc];
    workQueue = [(COMessageChannel *)v9 workQueue];
    v15 = [(COMessageChannelRapportTransport *)v13 initWithIdentifier:v12 delegate:v9 dispatchQueue:workQueue];
    rapportTransport = v9->_rapportTransport;
    v9->_rapportTransport = v15;
  }

  return v9;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(COMessageChannel *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44___COMessageChannel_activateWithCompletion___block_invoke;
  v7[3] = &unk_278E121C0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)sendRequest:(id)request members:(id)members withCompletionHandler:(id)handler
{
  requestCopy = request;
  membersCopy = members;
  handlerCopy = handler;
  workQueue = [(COMessageChannel *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63___COMessageChannel_sendRequest_members_withCompletionHandler___block_invoke;
  v15[3] = &unk_278E12390;
  v15[4] = self;
  v16 = requestCopy;
  v17 = membersCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = membersCopy;
  v14 = requestCopy;
  dispatch_async(workQueue, v15);
}

- (void)broadcastRequest:(id)request recipientsCallback:(id)callback responseCompletionHandler:(id)handler
{
  requestCopy = request;
  callbackCopy = callback;
  handlerCopy = handler;
  workQueue = [(COMessageChannel *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83___COMessageChannel_broadcastRequest_recipientsCallback_responseCompletionHandler___block_invoke;
  v15[3] = &unk_278E12B68;
  v15[4] = self;
  v16 = requestCopy;
  v17 = callbackCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = requestCopy;
  v14 = callbackCopy;
  dispatch_async(workQueue, v15);
}

- (void)_onqueue_sendRequest:(id)request members:(id)members withCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  membersCopy = members;
  handlerCopy = handler;
  workQueue = [(COMessageChannel *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = membersCopy;
  v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v22 + 1) + 8 * v15);
        rapportTransport = [(_COMessageChannel *)self rapportTransport];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __72___COMessageChannel__onqueue_sendRequest_members_withCompletionHandler___block_invoke;
        v20[3] = &unk_278E134E0;
        v20[4] = v16;
        v21 = handlerCopy;
        [rapportTransport sendRequest:requestCopy to:v16 withCompletionHandler:v20];

        ++v15;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)registerHandler:(id)handler forRequestClass:(Class)class
{
  handlerCopy = handler;
  workQueue = [(COMessageChannel *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53___COMessageChannel_registerHandler_forRequestClass___block_invoke;
  block[3] = &unk_278E13508;
  block[4] = self;
  v10 = handlerCopy;
  classCopy = class;
  v8 = handlerCopy;
  dispatch_async(workQueue, block);
}

- (void)registerMemberFoundHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(COMessageChannel *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48___COMessageChannel_registerMemberFoundHandler___block_invoke;
  v7[3] = &unk_278E121C0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

- (void)registerMemberLostHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(COMessageChannel *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47___COMessageChannel_registerMemberLostHandler___block_invoke;
  v7[3] = &unk_278E121C0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

- (id)groupedHomeKitIdentifiers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__9;
  v9 = __Block_byref_object_dispose__9;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46___COMessageChannel_groupedHomeKitIdentifiers__block_invoke;
  v4[3] = &unk_278E122F0;
  v4[4] = self;
  v4[5] = &v5;
  [(COMessageChannel *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)addGroupedHomeKitIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50___COMessageChannel_addGroupedHomeKitIdentifiers___block_invoke;
  v6[3] = &unk_278E12368;
  v6[4] = self;
  v7 = identifiersCopy;
  v5 = identifiersCopy;
  [(COMessageChannel *)self _withLock:v6];
}

- (void)removeGroupedHomeKitIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53___COMessageChannel_removeGroupedHomeKitIdentifiers___block_invoke;
  v6[3] = &unk_278E12368;
  v6[4] = self;
  v7 = identifiersCopy;
  v5 = identifiersCopy;
  [(COMessageChannel *)self _withLock:v6];
}

- (void)addSessionProducerWithSubTopic:(id)topic delegate:(id)delegate dispatchQueue:(id)queue
{
  topicCopy = topic;
  delegateCopy = delegate;
  queueCopy = queue;
  workQueue = [(COMessageChannel *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75___COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke;
  v15[3] = &unk_278E12E70;
  v15[4] = self;
  v16 = delegateCopy;
  v17 = queueCopy;
  v18 = topicCopy;
  v12 = topicCopy;
  v13 = queueCopy;
  v14 = delegateCopy;
  dispatch_async(workQueue, v15);
}

- (void)addSessionConsumerWithSubTopic:(id)topic delegate:(id)delegate dispatchQueue:(id)queue
{
  topicCopy = topic;
  delegateCopy = delegate;
  queueCopy = queue;
  workQueue = [(COMessageChannel *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75___COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke;
  v15[3] = &unk_278E12E70;
  v15[4] = self;
  v16 = delegateCopy;
  v17 = queueCopy;
  v18 = topicCopy;
  v12 = topicCopy;
  v13 = queueCopy;
  v14 = delegateCopy;
  dispatch_async(workQueue, v15);
}

- (void)_onqueue_startSessionWithProducer:(id)producer member:(id)member
{
  v30 = *MEMORY[0x277D85DE8];
  producerCopy = producer;
  memberCopy = member;
  sessions = [producerCopy sessions];
  v9 = [sessions objectForKey:memberCopy];

  delegateQueue = COLogForCategory(6);
  v11 = os_log_type_enabled(delegateQueue, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 134218242;
      selfCopy3 = self;
      v26 = 2112;
      v27 = memberCopy;
      _os_log_impl(&dword_244328000, delegateQueue, OS_LOG_TYPE_DEFAULT, "%p Session with member %@ is already active. Not starting again", buf, 0x16u);
    }
  }

  else
  {
    if (v11)
    {
      *buf = 134218498;
      selfCopy3 = self;
      v26 = 2112;
      v27 = memberCopy;
      v28 = 2112;
      v29 = producerCopy;
      _os_log_impl(&dword_244328000, delegateQueue, OS_LOG_TYPE_DEFAULT, "%p Attempting to start a session with member %@ using producer %@", buf, 0x20u);
    }

    delegateQueue = [producerCopy delegateQueue];
    delegate = [producerCopy delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(buf, self);
      v13 = [COClusterMemberRoleSnapshot snapshotWithParticipantRoleForMember:memberCopy];
      v14 = COLogForCategory(6);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [_COMessageChannel _onqueue_startSessionWithProducer:? member:?];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62___COMessageChannel__onqueue_startSessionWithProducer_member___block_invoke;
      block[3] = &unk_278E13168;
      v19 = delegate;
      v20 = producerCopy;
      v21 = v13;
      v15 = v13;
      objc_copyWeak(&v23, buf);
      v22 = memberCopy;
      dispatch_async(delegateQueue, block);

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }

    else
    {
      v16 = COLogForCategory(6);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        selfCopy3 = self;
        _os_log_impl(&dword_244328000, v16, OS_LOG_TYPE_DEFAULT, "%p Client does not implement producer:shouldStartSessionWithMember:completionHandler:", buf, 0xCu);
      }

      [(_COMessageChannel *)self _onqueue_startSessionWithProducer:producerCopy member:memberCopy request:0];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_startSessionWithProducer:(id)producer member:(id)member request:(id)request
{
  v32[1] = *MEMORY[0x277D85DE8];
  producerCopy = producer;
  memberCopy = member;
  requestCopy = request;
  v11 = [COClusterMemberRoleSnapshot snapshotWithParticipantRoleForMember:memberCopy];
  v30 = 0;
  v23 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:requestCopy requiringSecureCoding:1 error:&v30];
  v12 = v30;
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA7E8];
    v32[0] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v16 = [v14 errorWithDomain:@"COMessageSessionErrorDomain" code:-1205 userInfo:v15];

    [(_COMessageChannel *)self _onqueue_deliverDidFailToStartSessionWithMember:v11 producer:producerCopy error:v16];
  }

  else
  {
    v17 = [COMessageSessionManagementRequest alloc];
    v18 = [(_COMessageChannel *)self _payloadTypeFromClass:objc_opt_class()];
    topic = [(COMessageChannel *)self topic];
    subTopic = [producerCopy subTopic];
    v16 = [(COMessageSessionManagementRequest *)v17 initWithCommandType:1 payload:v23 payloadType:v18 topic:topic subTopic:subTopic];

    objc_initWeak(&location, self);
    v21 = [MEMORY[0x277CBEB98] setWithObject:memberCopy];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __70___COMessageChannel__onqueue_startSessionWithProducer_member_request___block_invoke;
    v24[3] = &unk_278E12F10;
    objc_copyWeak(&v28, &location);
    v25 = requestCopy;
    v26 = producerCopy;
    v27 = memberCopy;
    [(_COMessageChannel *)self _onqueue_sendRequest:v16 members:v21 withCompletionHandler:v24];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleStartCommand:(id)command withMember:(id)member callback:(id)callback
{
  v56[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  memberCopy = member;
  callbackCopy = callback;
  subTopic = [commandCopy subTopic];
  sessionConsumers = [(COMessageChannel *)self sessionConsumers];
  v11 = [sessionConsumers objectForKey:subTopic];

  delegate = [v11 delegate];
  queue = [v11 delegateQueue];
  payload = [commandCopy payload];
  payloadType = [commandCopy payloadType];
  v15 = payloadType;
  v16 = 0;
  if (payload && payloadType)
  {
    v17 = [(_COMessageChannel *)self _payloadClassFromType:payloadType];
    if (v17)
    {
      v46 = 0;
      v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v17 fromData:payload error:&v46];
      v18 = v46;
      if (v18)
      {
LABEL_5:
        v19 = MEMORY[0x277CCA9B8];
        v53 = *MEMORY[0x277CCA7E8];
        v54 = v18;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v21 = [v19 errorWithDomain:@"COMessageSessionErrorDomain" code:-1206 userInfo:v20];

        v22 = COLogForCategory(6);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          member = [memberCopy member];
          *buf = 138412802;
          v48 = v11;
          v49 = 2112;
          v50 = v15;
          v51 = 2112;
          v52 = member;
          _os_log_error_impl(&dword_244328000, v22, OS_LOG_TYPE_ERROR, "%@ Consumer failed to unarchive request of type %@. Session start with member %@ failed", buf, 0x20u);
        }

        v23 = [[COMessageSessionManagementResponse alloc] initWithRemoteError:v21];
        callbackCopy[2](callbackCopy, v23, 0);

        goto LABEL_14;
      }
    }

    else
    {
      v24 = MEMORY[0x277CCA9B8];
      v55 = @"COMessageSessionUnknownClassErrorKey";
      v56[0] = v15;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
      v18 = [v24 errorWithDomain:@"COMessageSessionErrorDomain" code:-1206 userInfo:v25];

      v16 = 0;
      if (v18)
      {
        goto LABEL_5;
      }
    }
  }

  v26 = [COMessageConsumedSession alloc];
  member2 = [memberCopy member];
  v21 = [(COMessageConsumedSession *)v26 initWithMember:member2 consumer:v11];

  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v28 = COLogForCategory(6);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      subTopic2 = [commandCopy subTopic];
      [(COMessageChannel *)self _handleStartCommand:subTopic2 withMember:buf callback:v28];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69___COMessageChannel__onqueue_handleStartCommand_withMember_callback___block_invoke;
    block[3] = &unk_278E130F0;
    v37 = delegate;
    v38 = v11;
    v39 = memberCopy;
    v16 = v16;
    v40 = v16;
    objc_copyWeak(&v44, &location);
    selfCopy = self;
    v21 = v21;
    v42 = v21;
    v43 = callbackCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  else
  {
    v30 = objc_alloc_init(COMessageSessionManagementResponse);
    callbackCopy[2](callbackCopy, v30, 0);
  }

LABEL_14:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleStopCommand:(id)command fromMember:(id)member callback:(id)callback
{
  v33[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  memberCopy = member;
  callbackCopy = callback;
  subTopic = [commandCopy subTopic];
  sessionConsumers = [(COMessageChannel *)self sessionConsumers];
  v13 = [sessionConsumers objectForKey:subTopic];

  sessions = [v13 sessions];
  member = [memberCopy member];
  v16 = [sessions objectForKey:member];

  if (v16)
  {
    goto LABEL_3;
  }

  sessionProducers = [(COMessageChannel *)self sessionProducers];
  v18 = [sessionProducers objectForKey:subTopic];

  sessions2 = [v18 sessions];
  member2 = [memberCopy member];
  v16 = [sessions2 objectForKey:member2];

  if (v16)
  {
LABEL_3:
    v30 = v13;
    payload = [commandCopy payload];
    payloadType = [commandCopy payloadType];
    remoteError = [commandCopy remoteError];
    if (!remoteError)
    {
      v24 = 0;
      if (!payload || !payloadType)
      {
        goto LABEL_5;
      }

      v27 = [(_COMessageChannel *)self _payloadClassFromType:payloadType];
      if (v27)
      {
        v31 = 0;
        v24 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v27 fromData:payload error:&v31];
        remoteError = v31;
        goto LABEL_5;
      }

      v29 = MEMORY[0x277CCA9B8];
      v32 = @"COMessageSessionUnknownClassErrorKey";
      v33[0] = payloadType;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      remoteError = [v29 errorWithDomain:@"COMessageSessionErrorDomain" code:-1206 userInfo:v28];
    }

    v24 = 0;
LABEL_5:
    [(_COMessageChannel *)self _onqueue_deliverDidEndDelegateForSession:v16 notice:v24 initiator:memberCopy error:remoteError];

    v13 = v30;
  }

  v25 = objc_alloc_init(COMessageSessionManagementResponse);
  callbackCopy[2](callbackCopy, v25, 0);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleCapableCommand:(id)command fromMember:(id)member callback:(id)callback
{
  v34 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  memberCopy = member;
  callbackCopy = callback;
  v11 = objc_alloc_init(COMessageSessionManagementResponse);
  callbackCopy[2](callbackCopy, v11, 0);

  sessionsInflight = [(COMessageChannel *)self sessionsInflight];
  member = [memberCopy member];
  v14 = [sessionsInflight objectForKey:member];

  if (v14)
  {
    v15 = COLogForCategory(6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      member2 = [memberCopy member];
      subTopic = [commandCopy subTopic];
      v28 = 134218498;
      selfCopy = self;
      v30 = 2112;
      v31 = member2;
      v32 = 2112;
      v33 = subTopic;
      _os_log_impl(&dword_244328000, v15, OS_LOG_TYPE_DEFAULT, "%p Received a command indicating inflight member %@ is now capable of consuming subTopic %@", &v28, 0x20u);
    }

    sessionProducers = [(COMessageChannel *)self sessionProducers];
    subTopic2 = [commandCopy subTopic];
    v20 = [sessionProducers objectForKey:subTopic2];

    null = [MEMORY[0x277CBEB68] null];
    if ([v14 isEqual:null])
    {
      v22 = 0;
    }

    else
    {
      v22 = v14;
    }

    v23 = v22;

    sessionsInflight2 = [(COMessageChannel *)self sessionsInflight];
    member3 = [memberCopy member];
    [sessionsInflight2 removeObjectForKey:member3];

    member4 = [memberCopy member];
    [(_COMessageChannel *)self _onqueue_startSessionWithProducer:v20 member:member4 request:v23];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_deliverDidFailToStartSessionWithMember:(id)member producer:(id)producer error:(id)error
{
  memberCopy = member;
  producerCopy = producer;
  errorCopy = error;
  delegate = [producerCopy delegate];
  delegateQueue = [producerCopy delegateQueue];
  if (objc_opt_respondsToSelector())
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84___COMessageChannel__onqueue_deliverDidFailToStartSessionWithMember_producer_error___block_invoke;
    v12[3] = &unk_278E12E70;
    v13 = delegate;
    v14 = producerCopy;
    v15 = memberCopy;
    v16 = errorCopy;
    dispatch_async(delegateQueue, v12);
  }
}

- (void)_onqueue_deliverDidFailToStartSessionWithMember:(id)member consumer:(id)consumer error:(id)error
{
  memberCopy = member;
  consumerCopy = consumer;
  errorCopy = error;
  delegate = [consumerCopy delegate];
  delegateQueue = [consumerCopy delegateQueue];
  if (objc_opt_respondsToSelector())
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84___COMessageChannel__onqueue_deliverDidFailToStartSessionWithMember_consumer_error___block_invoke;
    v12[3] = &unk_278E12E70;
    v13 = delegate;
    v14 = consumerCopy;
    v15 = memberCopy;
    v16 = errorCopy;
    dispatch_async(delegateQueue, v12);
  }
}

- (void)_onqueue_deliverSuccessfullyStartedSession:(id)session withResponse:(id)response withMember:(id)member producer:(id)producer
{
  v29 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  responseCopy = response;
  memberCopy = member;
  producerCopy = producer;
  sessions = [producerCopy sessions];
  member = [memberCopy member];
  [sessions setObject:sessionCopy forKey:member];

  v15 = COLogForCategory(6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = producerCopy;
    v27 = 2112;
    v28 = sessionCopy;
    _os_log_impl(&dword_244328000, v15, OS_LOG_TYPE_DEFAULT, "%@ Producer successfully created a session %@", buf, 0x16u);
  }

  delegate = [producerCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [producerCopy delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97___COMessageChannel__onqueue_deliverSuccessfullyStartedSession_withResponse_withMember_producer___block_invoke;
    block[3] = &unk_278E12EE8;
    v20 = delegate;
    v21 = producerCopy;
    v22 = sessionCopy;
    v23 = memberCopy;
    v24 = responseCopy;
    dispatch_async(delegateQueue, block);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_deliverSuccessfullyStartedSession:(id)session withMember:(id)member consumer:(id)consumer
{
  v24 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  consumerCopy = consumer;
  memberCopy = member;
  sessions = [consumerCopy sessions];
  member = [memberCopy member];

  [sessions setObject:sessionCopy forKey:member];
  v12 = COLogForCategory(6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = consumerCopy;
    v22 = 2112;
    v23 = sessionCopy;
    _os_log_impl(&dword_244328000, v12, OS_LOG_TYPE_DEFAULT, "%@ Consumer successfully created a session %@", buf, 0x16u);
  }

  delegate = [consumerCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    delegateQueue = [consumerCopy delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84___COMessageChannel__onqueue_deliverSuccessfullyStartedSession_withMember_consumer___block_invoke;
    block[3] = &unk_278E12738;
    v17 = delegate;
    v18 = consumerCopy;
    v19 = sessionCopy;
    dispatch_async(delegateQueue, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_deliverDidEndDelegateForSession:(id)session notice:(id)notice initiator:(id)initiator error:(id)error
{
  sessionCopy = session;
  noticeCopy = notice;
  initiatorCopy = initiator;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    producer = [sessionCopy producer];
    delegate = [producer delegate];
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = [producer delegateQueue];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __85___COMessageChannel__onqueue_deliverDidEndDelegateForSession_notice_initiator_error___block_invoke;
      v30[3] = &unk_278E131B0;
      v22 = &v31;
      delegate = delegate;
      v31 = delegate;
      v21 = &v32;
      producer = producer;
      v32 = producer;
      v20 = &v33;
      v33 = sessionCopy;
      v16 = &v34;
      v34 = initiatorCopy;
      v17 = &v35;
      v35 = noticeCopy;
      v18 = &v36;
      v36 = errorCopy;
      v19 = v30;
LABEL_6:
      dispatch_async(delegateQueue, v19);
    }
  }

  else
  {
    producer = [sessionCopy consumer];
    delegate = [producer delegate];
    if (objc_opt_respondsToSelector())
    {
      delegateQueue = [producer delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85___COMessageChannel__onqueue_deliverDidEndDelegateForSession_notice_initiator_error___block_invoke_2;
      block[3] = &unk_278E131B0;
      v22 = &v24;
      delegate = delegate;
      v24 = delegate;
      v21 = &v25;
      producer = producer;
      v25 = producer;
      v20 = &v26;
      v26 = sessionCopy;
      v16 = &v27;
      v27 = initiatorCopy;
      v17 = &v28;
      v28 = noticeCopy;
      v18 = &v29;
      v29 = errorCopy;
      v19 = block;
      goto LABEL_6;
    }
  }
}

- (void)didFindMember:(id)member
{
  memberCopy = member;
  workQueue = [(COMessageChannel *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35___COMessageChannel_didFindMember___block_invoke;
  v7[3] = &unk_278E12368;
  v7[4] = self;
  v8 = memberCopy;
  v6 = memberCopy;
  dispatch_async(workQueue, v7);
}

- (void)didLoseMember:(id)member
{
  memberCopy = member;
  workQueue = [(COMessageChannel *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35___COMessageChannel_didLoseMember___block_invoke;
  v7[3] = &unk_278E12368;
  v7[4] = self;
  v8 = memberCopy;
  v6 = memberCopy;
  dispatch_async(workQueue, v7);
}

- (void)didReceiveRequest:(id)request from:(id)from withCompletionHandler:(id)handler
{
  requestCopy = request;
  fromCopy = from;
  handlerCopy = handler;
  workQueue = [(COMessageChannel *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66___COMessageChannel_didReceiveRequest_from_withCompletionHandler___block_invoke;
  v15[3] = &unk_278E135A8;
  v15[4] = self;
  v16 = requestCopy;
  v17 = fromCopy;
  v18 = handlerCopy;
  v12 = fromCopy;
  v13 = handlerCopy;
  v14 = requestCopy;
  dispatch_async(workQueue, v15);
}

- (id)_payloadTypeFromClass:(Class)class
{
  if (class)
  {
    v4 = NSStringFromClass(class);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_onqueue_startSessionWithProducer:(uint64_t)a1 member:.cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  OUTLINED_FUNCTION_1_3();
  v6 = v1;
  _os_log_debug_impl(&dword_244328000, v2, OS_LOG_TYPE_DEBUG, "%p Reaching out to client delegate producer:shouldStartSessionWithMember:completionHandler: with member %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end