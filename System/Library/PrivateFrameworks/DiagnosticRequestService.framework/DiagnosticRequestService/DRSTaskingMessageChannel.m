@interface DRSTaskingMessageChannel
- (BOOL)subscribe:(id *)a3;
- (BOOL)unsubscribe:(id *)a3;
- (DRSTaskingMessageChannel)initWithCloudChannelConfig:(id)a3 payloadProcessingBlock:(id)a4;
- (NSString)debugDescription;
- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
@end

@implementation DRSTaskingMessageChannel

- (NSString)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(DRSTaskingMessageChannel *)self config];
  v4 = [v3 debugDescription];
  v5 = [v2 stringWithFormat:@"Subscribed Channel with config: %@", v4];

  return v5;
}

- (DRSTaskingMessageChannel)initWithCloudChannelConfig:(id)a3 payloadProcessingBlock:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v20 = DPLogHandle_TaskingMessageChannelError();
    if (!os_signpost_enabled(v20))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v21 = "InvalidChannelConfiguration";
    v22 = "Channel config cannot be nil";
    goto LABEL_12;
  }

  if (!v8)
  {
    v20 = DPLogHandle_TaskingMessageChannelError();
    if (!os_signpost_enabled(v20))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v21 = "MissingProcessingBlock";
    v22 = "Payload processing block is required.";
LABEL_12:
    v23 = v20;
    v24 = 2;
LABEL_13:
    _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v21, v22, buf, v24);
    goto LABEL_14;
  }

  v44.receiver = self;
  v44.super_class = DRSTaskingMessageChannel;
  v10 = [(DRSTaskingMessageChannel *)&v44 init];
  self = v10;
  if (!v10)
  {
LABEL_22:
    self = self;
    v25 = self;
    goto LABEL_23;
  }

  objc_storeStrong(&v10->_config, a3);
  v11 = _Block_copy(v9);
  processingBlock = self->_processingBlock;
  self->_processingBlock = v11;

  v13 = [(DRSTaskingMessageChannel *)self debugDescription];
  v14 = dispatch_queue_create([v13 UTF8String], 0);
  workQueue = self->_workQueue;
  self->_workQueue = v14;

  v16 = [(DRSTaskingMessageChannel *)self config];
  v17 = [v16 isNoSubscriptionConfig];

  if (v17)
  {
LABEL_19:
    v35 = DPLogHandle_TaskingMessageChannel();
    if (os_signpost_enabled(v35))
    {
      v36 = [(DRSTaskingMessageChannel *)self config];
      v37 = [v36 debugDescription];
      *buf = 138543362;
      v46 = v37;
      _os_signpost_emit_with_name_impl(&dword_232906000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NewChannelInstance", "New channel instance: %{public}@", buf, 0xCu);
    }

    goto LABEL_22;
  }

  v18 = [v7 environment];
  if (v18 == 1)
  {
    v19 = MEMORY[0x277CEE9E8];
  }

  else
  {
    if (v18 != 2)
    {
LABEL_24:
      v20 = DPLogHandle_TaskingMessageChannelError();
      if (!os_signpost_enabled(v20))
      {
        goto LABEL_14;
      }

      v40 = [v7 environment];
      *buf = 67109120;
      LODWORD(v46) = v40;
      v21 = "InvalidEnvironmentEnum";
      v22 = "Invalid environment enum %hhu";
      v23 = v20;
      v24 = 8;
      goto LABEL_13;
    }

    v19 = MEMORY[0x277CEE9F0];
  }

  v26 = *v19;
  if (!v26)
  {
    goto LABEL_24;
  }

  v20 = v26;
  v27 = [v7 channelName];
  if (v27)
  {
    v28 = v27;
    v29 = objc_alloc(MEMORY[0x277CD9D98]);
    v30 = [(DRSTaskingMessageChannel *)self config];
    v31 = [v30 channelID];
    v32 = [v29 initWithChannelID:v31];
    pubSubChannel = self->_pubSubChannel;
    self->_pubSubChannel = v32;

    apsEnvironmentString = self->_apsEnvironmentString;
    self->_apsEnvironmentString = &v20->isa;

    goto LABEL_19;
  }

  v41 = DPLogHandle_TaskingMessageChannelError();
  if (os_signpost_enabled(v41))
  {
    v42 = DRSSystemProfilePlatformStringForPlatform([v7 platform]);
    v43 = +[DRSCloudChannelConfig stringForChannelType:](DRSCloudChannelConfig, "stringForChannelType:", [v7 type]);
    *buf = 138543618;
    v46 = v42;
    v47 = 2114;
    v48 = v43;
    _os_signpost_emit_with_name_impl(&dword_232906000, v41, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidChannelConfiguration", "Failed to produce a channel name for %{public}@ %{public}@", buf, 0x16u);
  }

LABEL_14:
  v25 = 0;
LABEL_23:

  v38 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)subscribe:(id *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(DRSTaskingMessageChannel *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__DRSTaskingMessageChannel_subscribe___block_invoke;
  block[3] = &unk_27899FA80;
  block[4] = self;
  block[5] = &v8;
  block[6] = a3;
  dispatch_sync(v5, block);

  LOBYTE(a3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return a3;
}

void __38__DRSTaskingMessageChannel_subscribe___block_invoke(uint64_t a1)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) config];
  v3 = [v2 isNoSubscriptionConfig];

  if (v3)
  {
    v4 = DPLogHandle_TaskingMessageChannelError();
    if (os_signpost_enabled(v4))
    {
      v5 = [*(a1 + 32) config];
      v6 = [v5 debugDescription];
      *buf = 138543362;
      v54 = v6;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubscriptionIsNoOp", "Not subscribing due to config %{public}@", buf, 0xCu);

LABEL_4:
      goto LABEL_5;
    }

    goto LABEL_5;
  }

  v7 = [*(a1 + 32) apsConnection];

  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x277CEEA10]);
    v9 = [*(a1 + 32) apsEnvironmentString];
    v10 = [*(a1 + 32) workQueue];
    v11 = [v8 initWithEnvironmentName:v9 namedDelegatePort:@"com.apple.aps.diagnosticpipeline.tasking" queue:v10];
    [*(a1 + 32) setApsConnection:v11];

    v12 = [*(a1 + 32) apsConnection];

    if (!v12)
    {
      v38 = DPLogHandle_TaskingMessageChannelError();
      if (os_signpost_enabled(v38))
      {
        v39 = [*(a1 + 32) debugDescription];
        *buf = 138543362;
        v54 = v39;
        _os_signpost_emit_with_name_impl(&dword_232906000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "APSConnectionInitFailure", "Failed to create connection for %{public}@", buf, 0xCu);
      }

      if (*(a1 + 48))
      {
        v40 = MEMORY[0x277CCA9B8];
        v58 = *MEMORY[0x277CCA450];
        v59[0] = @"APSConnection could not be initialized";
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:&v58 count:1];
        **(a1 + 48) = [v40 errorWithDomain:@"DiagnosticRequestCloudChannelError" code:0 userInfo:v41];
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      goto LABEL_36;
    }

    v13 = *(a1 + 32);
    v14 = [v13 apsConnection];
    [v14 setDelegate:v13];

    v15 = [*(a1 + 32) apsConnection];
    v57 = @"com.apple.symptomsd-diag";
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    [v15 setEnabledTopics:v16 ignoredTopics:0];
  }

  v17 = [*(a1 + 32) apsConnection];
  v51 = 0;
  v18 = [v17 registeredChannelsForTopic:@"com.apple.symptomsd-diag" error:&v51];
  v19 = v51;

  if (!v19)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v23 = v18;
    v24 = [v23 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v24)
    {
      v26 = v24;
      v46 = 0;
      v27 = *v48;
      *&v25 = 138543362;
      v45 = v25;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v48 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v47 + 1) + 8 * i);
          v30 = [v29 channelID];
          v31 = [*(a1 + 32) pubSubChannel];
          v32 = [v31 channelID];
          v33 = [v30 isEqualToString:v32];

          if (v33)
          {
            v34 = DPLogHandle_TaskingMessageChannel();
            if (os_signpost_enabled(v34))
            {
              v35 = [*(a1 + 32) debugDescription];
              *buf = v45;
              v54 = v35;
              _os_signpost_emit_with_name_impl(&dword_232906000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AlreadySubscribedToChannel", "Already subscribed to %{public}@", buf, 0xCu);
            }

            v46 = 1;
          }

          else
          {
            v36 = [*(a1 + 32) apsConnection];
            [v36 unsubscribeFromChannel:v29 forTopic:@"com.apple.symptomsd-diag"];

            v34 = DPLogHandle_TaskingMessageChannelError();
            if (os_signpost_enabled(v34))
            {
              v37 = [v29 channelID];
              *buf = v45;
              v54 = v37;
              _os_signpost_emit_with_name_impl(&dword_232906000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubscribedToUnexpectedChannel", "Subscribed to unexpected channel %{public}@. Unsubscribing", buf, 0xCu);
            }
          }
        }

        v26 = [v23 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v26);

      if (v46)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

    v43 = [*(a1 + 32) apsConnection];
    v44 = [*(a1 + 32) pubSubChannel];
    [v43 subscribeToChannel:v44 forTopic:@"com.apple.symptomsd-diag"];

    v4 = DPLogHandle_TaskingMessageChannel();
    if (os_signpost_enabled(v4))
    {
      v5 = [*(a1 + 32) debugDescription];
      *buf = 138543362;
      v54 = v5;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ChannelSubscribe", "Subscribing to channel %{public}@", buf, 0xCu);
      goto LABEL_4;
    }

LABEL_5:

LABEL_6:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_36;
  }

  v20 = DPLogHandle_TaskingMessageChannelError();
  if (os_signpost_enabled(v20))
  {
    v21 = [*(a1 + 32) debugDescription];
    *buf = 138543618;
    v54 = v21;
    v55 = 2114;
    v56 = v19;
    _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubscribedChannelCheckFailure", "Failed to check for subscribed channel for %{public}@ due to error: %{public}@", buf, 0x16u);
  }

  if (*(a1 + 48))
  {
    v22 = v19;
    **(a1 + 48) = v19;
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;

LABEL_36:
  v42 = *MEMORY[0x277D85DE8];
}

- (BOOL)unsubscribe:(id *)a3
{
  v3 = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(DRSTaskingMessageChannel *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__DRSTaskingMessageChannel_unsubscribe___block_invoke;
  v6[3] = &unk_27899F8D8;
  v6[4] = v3;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __40__DRSTaskingMessageChannel_unsubscribe___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) config];
  v3 = [v2 isNoSubscriptionConfig];

  if (!v3)
  {
    v7 = [*(a1 + 32) apsConnection];

    if (v7)
    {
      v8 = [*(a1 + 32) apsConnection];
      v9 = [*(a1 + 32) pubSubChannel];
      [v8 unsubscribeFromChannel:v9 forTopic:@"com.apple.symptomsd-diag"];

      v10 = [*(a1 + 32) apsConnection];
      [v10 shutdown];

      v11 = [*(a1 + 32) apsConnection];
      [v11 setDelegate:0];

      [*(a1 + 32) setApsConnection:0];
      v4 = DPLogHandle_TaskingMessageChannel();
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_11;
      }

      v5 = [*(a1 + 32) debugDescription];
      v15 = 138543362;
      v16 = v5;
      v12 = "ChannelUnsubscribe";
      v13 = "Unsubscribing from channel %{public}@";
    }

    else
    {
      v4 = DPLogHandle_TaskingMessageChannel();
      if (!os_signpost_enabled(v4))
      {
        goto LABEL_11;
      }

      v5 = [*(a1 + 32) debugDescription];
      v15 = 138543362;
      v16 = v5;
      v12 = "RedundantUnsubscribe";
      v13 = "No APS connection for %{public}@";
    }

    _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v12, v13, &v15, 0xCu);
    goto LABEL_10;
  }

  v4 = DPLogHandle_TaskingMessageChannelError();
  if (os_signpost_enabled(v4))
  {
    v5 = [*(a1 + 32) config];
    v6 = [v5 debugDescription];
    v15 = 138543362;
    v16 = v6;
    _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnsubscribeIsNoOp", "Not subscribed due to config:\n%{public}@", &v15, 0xCu);

LABEL_10:
  }

LABEL_11:

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v14 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DPLogHandle_TaskingMessageChannel();
  if (os_signpost_enabled(v6))
  {
    v7 = [(DRSTaskingMessageChannel *)self config];
    v8 = [v7 channelName];
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v8;
    _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedPublicDeviceToken", "Received public token %{public}@ for channel name %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = DPLogHandle_TaskingMessageChannel();
  if (os_signpost_enabled(v12))
  {
    v13 = [(DRSTaskingMessageChannel *)self config];
    v14 = [v13 channelName];
    v16 = 138544130;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    v22 = 2114;
    v23 = v14;
    _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedAPNSToken", "Received APNS token %{public}@ for topic: %{public}@ identifier: %{public}@ channel name: %{public}@", &v16, 0x2Au);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = DPLogHandle_TaskingMessageChannel();
  if (os_signpost_enabled(v6))
  {
    v7 = [(DRSTaskingMessageChannel *)self debugDescription];
    v8 = [v5 userInfo];
    v17 = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v8;
    _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedMessage", "Received message on %{public}@\n%{public}@", &v17, 0x16u);
  }

  v9 = [v5 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"tasking_payload"];

  if (!v10)
  {
    v11 = DPLogHandle_TaskingMessageChannelError();
    if (os_signpost_enabled(v11))
    {
      v12 = [(DRSTaskingMessageChannel *)self debugDescription];
      v13 = [v5 userInfo];
      v17 = 138543874;
      v18 = v12;
      v19 = 2114;
      v20 = @"tasking_payload";
      v21 = 2114;
      v22 = v13;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MessageMissingPayload", "Message on %{public}@ missing %{public}@ key\n%{public}@", &v17, 0x20u);
    }
  }

  v14 = [(DRSTaskingMessageChannel *)self processingBlock];
  v15 = [(DRSTaskingMessageChannel *)self config];
  (v14)[2](v14, v10, v15);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = DPLogHandle_TaskingMessageChannelError();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ChannelSubscriptionFailed", &unk_232980861, buf, 2u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = DPLogHandle_TaskingMessageChannelError();
        if (os_signpost_enabled(v12))
        {
          v13 = [v11 failureReason];
          v14 = @"INVALID REASON. FILE A BUG AGAINST 'Apple Push Service|all'";
          if (!v13)
          {
            v14 = @"Bad channel ID";
          }

          *buf = 138543362;
          v21 = v14;
          _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ChannelSubscriptionFailure", "Failure: %{public}@", buf, 0xCu);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end