@interface _COMessageChannel
- (_COMessageChannel)initWithTopic:(id)a3 cluster:(id)a4 manualGrouping:(BOOL)a5;
- (id)_payloadTypeFromClass:(Class)a3;
- (id)groupedHomeKitIdentifiers;
- (void)_onqueue_deliverDidEndDelegateForSession:(id)a3 notice:(id)a4 initiator:(id)a5 error:(id)a6;
- (void)_onqueue_deliverDidFailToStartSessionWithMember:(id)a3 consumer:(id)a4 error:(id)a5;
- (void)_onqueue_deliverDidFailToStartSessionWithMember:(id)a3 producer:(id)a4 error:(id)a5;
- (void)_onqueue_deliverSuccessfullyStartedSession:(id)a3 withMember:(id)a4 consumer:(id)a5;
- (void)_onqueue_deliverSuccessfullyStartedSession:(id)a3 withResponse:(id)a4 withMember:(id)a5 producer:(id)a6;
- (void)_onqueue_handleCapableCommand:(id)a3 fromMember:(id)a4 callback:(id)a5;
- (void)_onqueue_handleStartCommand:(id)a3 withMember:(id)a4 callback:(id)a5;
- (void)_onqueue_handleStopCommand:(id)a3 fromMember:(id)a4 callback:(id)a5;
- (void)_onqueue_sendRequest:(id)a3 members:(id)a4 withCompletionHandler:(id)a5;
- (void)_onqueue_startSessionWithProducer:(id)a3 member:(id)a4;
- (void)_onqueue_startSessionWithProducer:(id)a3 member:(id)a4 request:(id)a5;
- (void)activateWithCompletion:(id)a3;
- (void)addGroupedHomeKitIdentifiers:(id)a3;
- (void)addSessionConsumerWithSubTopic:(id)a3 delegate:(id)a4 dispatchQueue:(id)a5;
- (void)addSessionProducerWithSubTopic:(id)a3 delegate:(id)a4 dispatchQueue:(id)a5;
- (void)broadcastRequest:(id)a3 recipientsCallback:(id)a4 responseCompletionHandler:(id)a5;
- (void)didFindMember:(id)a3;
- (void)didLoseMember:(id)a3;
- (void)didReceiveRequest:(id)a3 from:(id)a4 withCompletionHandler:(id)a5;
- (void)registerHandler:(id)a3 forRequestClass:(Class)a4;
- (void)registerMemberFoundHandler:(id)a3;
- (void)registerMemberLostHandler:(id)a3;
- (void)removeGroupedHomeKitIdentifiers:(id)a3;
- (void)sendRequest:(id)a3 members:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation _COMessageChannel

- (_COMessageChannel)initWithTopic:(id)a3 cluster:(id)a4 manualGrouping:(BOOL)a5
{
  v7 = a3;
  v18.receiver = self;
  v18.super_class = _COMessageChannel;
  v8 = [(COMessageChannel *)&v18 initWithConnectionProvider:0 roleMonitorConnectionProvider:0 topic:v7 cluster:a4];
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [(COMessageChannel *)v8 cluster];
    v12 = [v10 stringWithFormat:@"%@-%@", v7, v11];

    v13 = [COMessageChannelRapportTransport alloc];
    v14 = [(COMessageChannel *)v9 workQueue];
    v15 = [(COMessageChannelRapportTransport *)v13 initWithIdentifier:v12 delegate:v9 dispatchQueue:v14];
    rapportTransport = v9->_rapportTransport;
    v9->_rapportTransport = v15;
  }

  return v9;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(COMessageChannel *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44___COMessageChannel_activateWithCompletion___block_invoke;
  v7[3] = &unk_278E121C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)sendRequest:(id)a3 members:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMessageChannel *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63___COMessageChannel_sendRequest_members_withCompletionHandler___block_invoke;
  v15[3] = &unk_278E12390;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)broadcastRequest:(id)a3 recipientsCallback:(id)a4 responseCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMessageChannel *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83___COMessageChannel_broadcastRequest_recipientsCallback_responseCompletionHandler___block_invoke;
  v15[3] = &unk_278E12B68;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)_onqueue_sendRequest:(id)a3 members:(id)a4 withCompletionHandler:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMessageChannel *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v9;
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
        v17 = [(_COMessageChannel *)self rapportTransport];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __72___COMessageChannel__onqueue_sendRequest_members_withCompletionHandler___block_invoke;
        v20[3] = &unk_278E134E0;
        v20[4] = v16;
        v21 = v10;
        [v17 sendRequest:v8 to:v16 withCompletionHandler:v20];

        ++v15;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)registerHandler:(id)a3 forRequestClass:(Class)a4
{
  v6 = a3;
  v7 = [(COMessageChannel *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53___COMessageChannel_registerHandler_forRequestClass___block_invoke;
  block[3] = &unk_278E13508;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)registerMemberFoundHandler:(id)a3
{
  v4 = a3;
  v5 = [(COMessageChannel *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48___COMessageChannel_registerMemberFoundHandler___block_invoke;
  v7[3] = &unk_278E121C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)registerMemberLostHandler:(id)a3
{
  v4 = a3;
  v5 = [(COMessageChannel *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47___COMessageChannel_registerMemberLostHandler___block_invoke;
  v7[3] = &unk_278E121C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)addGroupedHomeKitIdentifiers:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50___COMessageChannel_addGroupedHomeKitIdentifiers___block_invoke;
  v6[3] = &unk_278E12368;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(COMessageChannel *)self _withLock:v6];
}

- (void)removeGroupedHomeKitIdentifiers:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53___COMessageChannel_removeGroupedHomeKitIdentifiers___block_invoke;
  v6[3] = &unk_278E12368;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(COMessageChannel *)self _withLock:v6];
}

- (void)addSessionProducerWithSubTopic:(id)a3 delegate:(id)a4 dispatchQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMessageChannel *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75___COMessageChannel_addSessionProducerWithSubTopic_delegate_dispatchQueue___block_invoke;
  v15[3] = &unk_278E12E70;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)addSessionConsumerWithSubTopic:(id)a3 delegate:(id)a4 dispatchQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMessageChannel *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75___COMessageChannel_addSessionConsumerWithSubTopic_delegate_dispatchQueue___block_invoke;
  v15[3] = &unk_278E12E70;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)_onqueue_startSessionWithProducer:(id)a3 member:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 sessions];
  v9 = [v8 objectForKey:v7];

  v10 = COLogForCategory(6);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 134218242;
      v25 = self;
      v26 = 2112;
      v27 = v7;
      _os_log_impl(&dword_244328000, v10, OS_LOG_TYPE_DEFAULT, "%p Session with member %@ is already active. Not starting again", buf, 0x16u);
    }
  }

  else
  {
    if (v11)
    {
      *buf = 134218498;
      v25 = self;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_244328000, v10, OS_LOG_TYPE_DEFAULT, "%p Attempting to start a session with member %@ using producer %@", buf, 0x20u);
    }

    v10 = [v6 delegateQueue];
    v12 = [v6 delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(buf, self);
      v13 = [COClusterMemberRoleSnapshot snapshotWithParticipantRoleForMember:v7];
      v14 = COLogForCategory(6);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [_COMessageChannel _onqueue_startSessionWithProducer:? member:?];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62___COMessageChannel__onqueue_startSessionWithProducer_member___block_invoke;
      block[3] = &unk_278E13168;
      v19 = v12;
      v20 = v6;
      v21 = v13;
      v15 = v13;
      objc_copyWeak(&v23, buf);
      v22 = v7;
      dispatch_async(v10, block);

      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }

    else
    {
      v16 = COLogForCategory(6);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v25 = self;
        _os_log_impl(&dword_244328000, v16, OS_LOG_TYPE_DEFAULT, "%p Client does not implement producer:shouldStartSessionWithMember:completionHandler:", buf, 0xCu);
      }

      [(_COMessageChannel *)self _onqueue_startSessionWithProducer:v6 member:v7 request:0];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_startSessionWithProducer:(id)a3 member:(id)a4 request:(id)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [COClusterMemberRoleSnapshot snapshotWithParticipantRoleForMember:v9];
  v30 = 0;
  v23 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v30];
  v12 = v30;
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA7E8];
    v32[0] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v16 = [v14 errorWithDomain:@"COMessageSessionErrorDomain" code:-1205 userInfo:v15];

    [(_COMessageChannel *)self _onqueue_deliverDidFailToStartSessionWithMember:v11 producer:v8 error:v16];
  }

  else
  {
    v17 = [COMessageSessionManagementRequest alloc];
    v18 = [(_COMessageChannel *)self _payloadTypeFromClass:objc_opt_class()];
    v19 = [(COMessageChannel *)self topic];
    v20 = [v8 subTopic];
    v16 = [(COMessageSessionManagementRequest *)v17 initWithCommandType:1 payload:v23 payloadType:v18 topic:v19 subTopic:v20];

    objc_initWeak(&location, self);
    v21 = [MEMORY[0x277CBEB98] setWithObject:v9];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __70___COMessageChannel__onqueue_startSessionWithProducer_member_request___block_invoke;
    v24[3] = &unk_278E12F10;
    objc_copyWeak(&v28, &location);
    v25 = v10;
    v26 = v8;
    v27 = v9;
    [(_COMessageChannel *)self _onqueue_sendRequest:v16 members:v21 withCompletionHandler:v24];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleStartCommand:(id)a3 withMember:(id)a4 callback:(id)a5
{
  v56[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v35 = a4;
  v9 = a5;
  v34 = [v8 subTopic];
  v10 = [(COMessageChannel *)self sessionConsumers];
  v11 = [v10 objectForKey:v34];

  v12 = [v11 delegate];
  queue = [v11 delegateQueue];
  v13 = [v8 payload];
  v14 = [v8 payloadType];
  v15 = v14;
  v16 = 0;
  if (v13 && v14)
  {
    v17 = [(_COMessageChannel *)self _payloadClassFromType:v14];
    if (v17)
    {
      v46 = 0;
      v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v17 fromData:v13 error:&v46];
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
          v32 = [v35 member];
          *buf = 138412802;
          v48 = v11;
          v49 = 2112;
          v50 = v15;
          v51 = 2112;
          v52 = v32;
          _os_log_error_impl(&dword_244328000, v22, OS_LOG_TYPE_ERROR, "%@ Consumer failed to unarchive request of type %@. Session start with member %@ failed", buf, 0x20u);
        }

        v23 = [[COMessageSessionManagementResponse alloc] initWithRemoteError:v21];
        v9[2](v9, v23, 0);

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
  v27 = [v35 member];
  v21 = [(COMessageConsumedSession *)v26 initWithMember:v27 consumer:v11];

  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v28 = COLogForCategory(6);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = [v8 subTopic];
      [(COMessageChannel *)self _handleStartCommand:v29 withMember:buf callback:v28];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69___COMessageChannel__onqueue_handleStartCommand_withMember_callback___block_invoke;
    block[3] = &unk_278E130F0;
    v37 = v12;
    v38 = v11;
    v39 = v35;
    v16 = v16;
    v40 = v16;
    objc_copyWeak(&v44, &location);
    v41 = self;
    v21 = v21;
    v42 = v21;
    v43 = v9;
    dispatch_async(queue, block);

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  else
  {
    v30 = objc_alloc_init(COMessageSessionManagementResponse);
    v9[2](v9, v30, 0);
  }

LABEL_14:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleStopCommand:(id)a3 fromMember:(id)a4 callback:(id)a5
{
  v33[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 subTopic];
  v12 = [(COMessageChannel *)self sessionConsumers];
  v13 = [v12 objectForKey:v11];

  v14 = [v13 sessions];
  v15 = [v9 member];
  v16 = [v14 objectForKey:v15];

  if (v16)
  {
    goto LABEL_3;
  }

  v17 = [(COMessageChannel *)self sessionProducers];
  v18 = [v17 objectForKey:v11];

  v19 = [v18 sessions];
  v20 = [v9 member];
  v16 = [v19 objectForKey:v20];

  if (v16)
  {
LABEL_3:
    v30 = v13;
    v21 = [v8 payload];
    v22 = [v8 payloadType];
    v23 = [v8 remoteError];
    if (!v23)
    {
      v24 = 0;
      if (!v21 || !v22)
      {
        goto LABEL_5;
      }

      v27 = [(_COMessageChannel *)self _payloadClassFromType:v22];
      if (v27)
      {
        v31 = 0;
        v24 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v27 fromData:v21 error:&v31];
        v23 = v31;
        goto LABEL_5;
      }

      v29 = MEMORY[0x277CCA9B8];
      v32 = @"COMessageSessionUnknownClassErrorKey";
      v33[0] = v22;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v23 = [v29 errorWithDomain:@"COMessageSessionErrorDomain" code:-1206 userInfo:v28];
    }

    v24 = 0;
LABEL_5:
    [(_COMessageChannel *)self _onqueue_deliverDidEndDelegateForSession:v16 notice:v24 initiator:v9 error:v23];

    v13 = v30;
  }

  v25 = objc_alloc_init(COMessageSessionManagementResponse);
  v10[2](v10, v25, 0);

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_handleCapableCommand:(id)a3 fromMember:(id)a4 callback:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(COMessageSessionManagementResponse);
  v10[2](v10, v11, 0);

  v12 = [(COMessageChannel *)self sessionsInflight];
  v13 = [v9 member];
  v14 = [v12 objectForKey:v13];

  if (v14)
  {
    v15 = COLogForCategory(6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v9 member];
      v17 = [v8 subTopic];
      v28 = 134218498;
      v29 = self;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&dword_244328000, v15, OS_LOG_TYPE_DEFAULT, "%p Received a command indicating inflight member %@ is now capable of consuming subTopic %@", &v28, 0x20u);
    }

    v18 = [(COMessageChannel *)self sessionProducers];
    v19 = [v8 subTopic];
    v20 = [v18 objectForKey:v19];

    v21 = [MEMORY[0x277CBEB68] null];
    if ([v14 isEqual:v21])
    {
      v22 = 0;
    }

    else
    {
      v22 = v14;
    }

    v23 = v22;

    v24 = [(COMessageChannel *)self sessionsInflight];
    v25 = [v9 member];
    [v24 removeObjectForKey:v25];

    v26 = [v9 member];
    [(_COMessageChannel *)self _onqueue_startSessionWithProducer:v20 member:v26 request:v23];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_deliverDidFailToStartSessionWithMember:(id)a3 producer:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 delegate];
  v11 = [v8 delegateQueue];
  if (objc_opt_respondsToSelector())
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84___COMessageChannel__onqueue_deliverDidFailToStartSessionWithMember_producer_error___block_invoke;
    v12[3] = &unk_278E12E70;
    v13 = v10;
    v14 = v8;
    v15 = v7;
    v16 = v9;
    dispatch_async(v11, v12);
  }
}

- (void)_onqueue_deliverDidFailToStartSessionWithMember:(id)a3 consumer:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 delegate];
  v11 = [v8 delegateQueue];
  if (objc_opt_respondsToSelector())
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84___COMessageChannel__onqueue_deliverDidFailToStartSessionWithMember_consumer_error___block_invoke;
    v12[3] = &unk_278E12E70;
    v13 = v10;
    v14 = v8;
    v15 = v7;
    v16 = v9;
    dispatch_async(v11, v12);
  }
}

- (void)_onqueue_deliverSuccessfullyStartedSession:(id)a3 withResponse:(id)a4 withMember:(id)a5 producer:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v12 sessions];
  v14 = [v11 member];
  [v13 setObject:v9 forKey:v14];

  v15 = COLogForCategory(6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v12;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_244328000, v15, OS_LOG_TYPE_DEFAULT, "%@ Producer successfully created a session %@", buf, 0x16u);
  }

  v16 = [v12 delegate];
  if (objc_opt_respondsToSelector())
  {
    v17 = [v12 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97___COMessageChannel__onqueue_deliverSuccessfullyStartedSession_withResponse_withMember_producer___block_invoke;
    block[3] = &unk_278E12EE8;
    v20 = v16;
    v21 = v12;
    v22 = v9;
    v23 = v11;
    v24 = v10;
    dispatch_async(v17, block);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_deliverSuccessfullyStartedSession:(id)a3 withMember:(id)a4 consumer:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v8 sessions];
  v11 = [v9 member];

  [v10 setObject:v7 forKey:v11];
  v12 = COLogForCategory(6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v8;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_244328000, v12, OS_LOG_TYPE_DEFAULT, "%@ Consumer successfully created a session %@", buf, 0x16u);
  }

  v13 = [v8 delegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = [v8 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84___COMessageChannel__onqueue_deliverSuccessfullyStartedSession_withMember_consumer___block_invoke;
    block[3] = &unk_278E12738;
    v17 = v13;
    v18 = v8;
    v19 = v7;
    dispatch_async(v14, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_onqueue_deliverDidEndDelegateForSession:(id)a3 notice:(id)a4 initiator:(id)a5 error:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v9 producer];
    v14 = [v13 delegate];
    if (objc_opt_respondsToSelector())
    {
      v15 = [v13 delegateQueue];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __85___COMessageChannel__onqueue_deliverDidEndDelegateForSession_notice_initiator_error___block_invoke;
      v30[3] = &unk_278E131B0;
      v22 = &v31;
      v14 = v14;
      v31 = v14;
      v21 = &v32;
      v13 = v13;
      v32 = v13;
      v20 = &v33;
      v33 = v9;
      v16 = &v34;
      v34 = v11;
      v17 = &v35;
      v35 = v10;
      v18 = &v36;
      v36 = v12;
      v19 = v30;
LABEL_6:
      dispatch_async(v15, v19);
    }
  }

  else
  {
    v13 = [v9 consumer];
    v14 = [v13 delegate];
    if (objc_opt_respondsToSelector())
    {
      v15 = [v13 delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __85___COMessageChannel__onqueue_deliverDidEndDelegateForSession_notice_initiator_error___block_invoke_2;
      block[3] = &unk_278E131B0;
      v22 = &v24;
      v14 = v14;
      v24 = v14;
      v21 = &v25;
      v13 = v13;
      v25 = v13;
      v20 = &v26;
      v26 = v9;
      v16 = &v27;
      v27 = v11;
      v17 = &v28;
      v28 = v10;
      v18 = &v29;
      v29 = v12;
      v19 = block;
      goto LABEL_6;
    }
  }
}

- (void)didFindMember:(id)a3
{
  v4 = a3;
  v5 = [(COMessageChannel *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35___COMessageChannel_didFindMember___block_invoke;
  v7[3] = &unk_278E12368;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)didLoseMember:(id)a3
{
  v4 = a3;
  v5 = [(COMessageChannel *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35___COMessageChannel_didLoseMember___block_invoke;
  v7[3] = &unk_278E12368;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)didReceiveRequest:(id)a3 from:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(COMessageChannel *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66___COMessageChannel_didReceiveRequest_from_withCompletionHandler___block_invoke;
  v15[3] = &unk_278E135A8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (id)_payloadTypeFromClass:(Class)a3
{
  if (a3)
  {
    v4 = NSStringFromClass(a3);
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