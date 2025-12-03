@interface MPCRTCEventConsumer
+ (id)NSStringFromMPCRTCReportingEventCategory:(int64_t)category;
+ (id)dateFormatter;
+ (id)identifierStringFromItemIdentifiers:(id)identifiers radioIdentifiers:(id)radioIdentifiers;
+ (id)playerServiceNameWithPlayerID:(id)d;
+ (id)rtcIdentifiersFromRadioIdentifiers:(id)identifiers;
+ (id)rtcIdentifiersFromUniversalIdentifiers:(id)identifiers;
- (BOOL)_itemWasPreviouslyLoaded:(id)loaded cursor:(id)cursor;
- (BOOL)_shouldReportItemSummary:(void *)summary forEvent:;
- (MPCRTCEventConsumer)init;
- (MPCRTCEventConsumerTestingDelegate)testingDelegate;
- (id)_accountSnapshotWithCursor:(id)cursor;
- (id)_firstItemAssetLoadEventWithCursor:(void *)cursor fromEvent:(void *)event matchingPayload:;
- (id)_itemAssetTypeFromItemAssetLoadEvent:(id)event cursor:(id)cursor;
- (id)_itemStartIncitingEvent:(id)event fromItemStartEvent:(id)startEvent;
- (id)_mediaIdentifierFromItemAssetLoadEndEvent:(id)event cursor:(id)cursor;
- (id)_networkSignalPayload:(uint64_t)payload;
- (id)_networkType:(void *)type fromEvent:;
- (id)_payloadForItemAssetLoad:(id)load fromItemEvent:(id)event;
- (id)_payloadForItemSummary:(id)summary fromEvent:(id)event;
- (id)_payloadForItemSummary:(id)summary fromItemEvent:(id)event;
- (id)_payloadForQueueLoad:(id)load fromQueueLoadEndEvent:(id)event;
- (id)_payloadForSessionStart:(id)start fromEvent:(id)event;
- (id)_payloadForSessionSummary:(id)summary fromEvent:(id)event;
- (id)_reasonForEndEvent:(id)event cursor:(id)cursor;
- (id)_rtcSessionInfoWithSamplingUUID:(id)d;
- (id)_rtcUserInfoWithServiceName:(id)name;
- (id)_sessionCursorWithCursor:(void *)cursor fromEvent:;
- (id)_tapToPlayMetrics:(id)metrics fromItemStartEvent:(id)event;
- (id)_underlyingErrorFromPayload:(id)payload;
- (uint64_t)_shouldReportItemAssetLoad:(void *)load forItemEvent:;
- (uint64_t)_shouldReportSessionEnd:(void *)end forEvent:;
- (void)_addErrors:(void *)errors toPayload:;
- (void)_generateConfiguredReportingSessionWithSamplingUUID:(id)d serviceName:(id)name completion:(id)completion;
- (void)_handleReportingForItemStartEvent:(id)event event:(id)a4;
- (void)_performABCSnapshotWithPayloadIfNecessary:(id)necessary;
- (void)_sendOneMessageWithCategory:(int64_t)category type:(int64_t)type payload:(id)payload;
- (void)_sendQueueLoadEventIfNeeded:(id)needed forItemEvent:(id)event;
- (void)_sendReportForItemAssetLoad:(id)load event:(id)event;
- (void)_sendReportForItemSummaryWithEndReason:(id)reason cursor:(id)cursor event:(id)event;
- (void)_sendReportForSessionStart:(id)start event:(id)event withType:(int64_t)type;
- (void)_sendReportForSessionSummary:(id)summary event:(id)event withType:(int64_t)type;
- (void)_sendReportWithSession:(id)session category:(int64_t)category type:(int64_t)type payload:(id)payload;
- (void)_sendSessionStartIfNeeded:(id)needed forItemEvent:(id)event;
- (void)_updateAssetSelectionEvent:(id)event fromAssetLoadEndEvent:(id)endEvent untilAssetLoadBeginEvent:(id)beginEvent cursor:(id)cursor;
- (void)setTestingDelegate:(id)delegate;
- (void)subscribeToEventStream:(id)stream;
@end

@implementation MPCRTCEventConsumer

- (MPCRTCEventConsumer)init
{
  v8.receiver = self;
  v8.super_class = MPCRTCEventConsumer;
  v2 = [(MPCRTCEventConsumer *)&v8 init];
  if (v2)
  {
    v3 = dispatch_group_create();
    rtcGroup = v2->_rtcGroup;
    v2->_rtcGroup = v3;

    v5 = dispatch_queue_create("com.apple.MediaPlayer.MPCRTCEventConsumer", 0);
    rtcQueue = v2->_rtcQueue;
    v2->_rtcQueue = v5;
  }

  return v2;
}

- (MPCRTCEventConsumerTestingDelegate)testingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  return WeakRetained;
}

- (void)_sendOneMessageWithCategory:(int64_t)category type:(int64_t)type payload:(id)payload
{
  v41[4] = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  uUIDString = [payloadCopy objectForKeyedSubscript:@"sessionIdentifier"];
  if (category > 1002)
  {
    if (category <= 1004)
    {
      if (category == 1003)
      {
        category = @"SessionSummary";
      }

      else
      {
        category = @"QueueLoad";
      }

      goto LABEL_19;
    }

    if (category == 1005)
    {
      category = @"ItemAssetLoad";
      goto LABEL_19;
    }

    if (category == 1006)
    {
      category = @"ItemSummary";
      goto LABEL_19;
    }
  }

  else
  {
    if (category > 1000)
    {
      if (category == 1001)
      {
        category = @"SecureKeyLoad";
      }

      else
      {
        category = @"SessionStart";
      }

      goto LABEL_19;
    }

    if (!category)
    {
      category = @"None";
      goto LABEL_19;
    }

    if (category == 1000)
    {
      category = @"NetworkInterfaceChange";
      goto LABEL_19;
    }
  }

  category = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedCategory:%d", category];
LABEL_19:
  if (type == 1)
  {
    v11 = @"nominal";
  }

  else
  {
    v11 = @"error";
  }

  v41[0] = category;
  v41[1] = v11;
  v12 = [payloadCopy objectForKeyedSubscript:@"event"];
  v13 = v12;
  v14 = @"unknown-event";
  if (v12)
  {
    v14 = v12;
  }

  v41[2] = v14;
  v15 = [payloadCopy objectForKeyedSubscript:@"analyticSignature"];
  v16 = v15;
  v17 = &stru_1F454A698;
  if (v15)
  {
    v17 = v15;
  }

  v41[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];

  if (!uUIDString)
  {
    v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v36 = payloadCopy;
      _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: missing samplingUID for payload=%{public}@", buf, 0xCu);
    }

    [MEMORY[0x1E69B13D8] snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"MPCRTCSamplingUUID" context:@"Received nil samplingUUID" triggerThresholdValues:0 events:v18 completion:0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  v21 = [(MPCRTCEventConsumer *)self _rtcSessionInfoWithSamplingUUID:uUIDString];
  v22 = [payloadCopy objectForKeyedSubscript:@"serviceName"];
  if (!v22)
  {
    v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v36 = payloadCopy;
      _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: missing serviceName for payload=%{public}@", buf, 0xCu);
    }

    [MEMORY[0x1E69B13D8] snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Bug" subType:@"MPCRTCServiceName" context:@"Payload missing serviceName" triggerThresholdValues:0 events:v18 completion:0];
    v22 = @"app.music.unknown";
  }

  v24 = [(MPCRTCEventConsumer *)self _rtcUserInfoWithServiceName:v22];
  v34 = 0;
  [MEMORY[0x1E69C6A80] sendOneMessageWithSessionInfo:v21 userInfo:v24 category:category type:type payload:payloadCopy error:&v34];
  v25 = v34;
  v26 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
  v27 = v26;
  if (!v25)
  {
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_75;
    }

    v33 = v11;
    if (category > 1002)
    {
      if (category <= 1004)
      {
        if (category == 1003)
        {
          category2 = @"SessionSummary";
        }

        else
        {
          category2 = @"QueueLoad";
        }

        goto LABEL_74;
      }

      if (category == 1005)
      {
        category2 = @"ItemAssetLoad";
        goto LABEL_74;
      }

      if (category == 1006)
      {
        category2 = @"ItemSummary";
        goto LABEL_74;
      }
    }

    else
    {
      if (category > 1000)
      {
        if (category == 1001)
        {
          category2 = @"SecureKeyLoad";
        }

        else
        {
          category2 = @"SessionStart";
        }

        goto LABEL_74;
      }

      if (!category)
      {
        category2 = @"None";
        goto LABEL_74;
      }

      if (category == 1000)
      {
        category2 = @"NetworkInterfaceChange";
LABEL_74:
        *buf = 67109634;
        *v36 = category;
        *&v36[4] = 2114;
        *&v36[6] = category2;
        v37 = 2114;
        v38 = v33;
        _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_DEBUG, "MPCRTCEventConsumer: Sent one message. category=%d (%{public}@) type=%{public}@", buf, 0x1Cu);

        goto LABEL_75;
      }
    }

    category2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedCategory:%d", category];
    goto LABEL_74;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v31 = v18;
    v32 = v11;
    if (category > 1002)
    {
      if (category <= 1004)
      {
        if (category == 1003)
        {
          category3 = @"SessionSummary";
        }

        else
        {
          category3 = @"QueueLoad";
        }

        goto LABEL_68;
      }

      if (category == 1005)
      {
        category3 = @"ItemAssetLoad";
        goto LABEL_68;
      }

      if (category == 1006)
      {
        category3 = @"ItemSummary";
        goto LABEL_68;
      }
    }

    else
    {
      if (category > 1000)
      {
        if (category == 1001)
        {
          category3 = @"SecureKeyLoad";
        }

        else
        {
          category3 = @"SessionStart";
        }

        goto LABEL_68;
      }

      if (!category)
      {
        category3 = @"None";
        goto LABEL_68;
      }

      if (category == 1000)
      {
        category3 = @"NetworkInterfaceChange";
LABEL_68:
        treeDescription = [v25 treeDescription];
        *buf = 67109890;
        *v36 = category;
        *&v36[4] = 2114;
        *&v36[6] = category3;
        v37 = 2114;
        v38 = v32;
        v39 = 2114;
        v40 = treeDescription;
        _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: Sent one message. category=%d (%{public}@) type=%{public}@ error=%{public}@", buf, 0x26u);

        v18 = v31;
        goto LABEL_75;
      }
    }

    category3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedCategory:%d", category];
    goto LABEL_68;
  }

LABEL_75:
}

- (void)_sendReportWithSession:(id)session category:(int64_t)category type:(int64_t)type payload:(id)payload
{
  sessionCopy = session;
  payloadCopy = payload;
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);
  v13 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained performOnPayload:payloadCopy withCategory:category type:type];
  }

  else
  {
    rtcGroup = self->_rtcGroup;
    rtcQueue = self->_rtcQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__MPCRTCEventConsumer__sendReportWithSession_category_type_payload___block_invoke;
    v16[3] = &unk_1E82322A0;
    v17 = sessionCopy;
    categoryCopy = category;
    typeCopy = type;
    v18 = payloadCopy;
    dispatch_group_notify(rtcGroup, rtcQueue, v16);
  }
}

void __68__MPCRTCEventConsumer__sendReportWithSession_category_type_payload___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);
    v17 = 0;
    v6 = [v2 sendMessageWithCategory:v3 type:v4 payload:v5 error:&v17];
    v7 = v17;
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 48);
        if (v10 > 1002)
        {
          if (v10 > 1004)
          {
            if (v10 == 1005)
            {
              v11 = @"ItemAssetLoad";
              goto LABEL_60;
            }

            if (v10 == 1006)
            {
              v11 = @"ItemSummary";
              goto LABEL_60;
            }

            goto LABEL_59;
          }

          if (v10 == 1003)
          {
            v11 = @"SessionSummary";
          }

          else
          {
            v11 = @"QueueLoad";
          }
        }

        else
        {
          if (v10 <= 1000)
          {
            if (!v10)
            {
              v11 = @"None";
              goto LABEL_60;
            }

            if (v10 == 1000)
            {
              v11 = @"NetworkInterfaceChange";
              goto LABEL_60;
            }

LABEL_59:
            v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedCategory:%d", *(a1 + 48)];
            goto LABEL_60;
          }

          if (v10 == 1001)
          {
            v11 = @"SecureKeyLoad";
          }

          else
          {
            v11 = @"SessionStart";
          }
        }

LABEL_60:
        v15 = *(a1 + 56);
        *buf = 67109634;
        if (v15 == 1)
        {
          v16 = @"nominal";
        }

        else
        {
          v16 = @"error";
        }

        v19 = v10;
        v20 = 2114;
        v21 = v11;
        v22 = 2114;
        v23 = v16;
        _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEBUG, "MPCRTCEventConsumer: Sent session message. category=%d (%{public}@) type=%{public}@", buf, 0x1Cu);
      }

LABEL_66:

      goto LABEL_67;
    }

    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    v13 = *(a1 + 48);
    if (v13 > 1002)
    {
      if (v13 <= 1004)
      {
        if (v13 == 1003)
        {
          v14 = @"SessionSummary";
        }

        else
        {
          v14 = @"QueueLoad";
        }

        goto LABEL_65;
      }

      if (v13 == 1005)
      {
        v14 = @"ItemAssetLoad";
        goto LABEL_65;
      }

      if (v13 == 1006)
      {
        v14 = @"ItemSummary";
        goto LABEL_65;
      }
    }

    else
    {
      if (v13 > 1000)
      {
        if (v13 == 1001)
        {
          v14 = @"SecureKeyLoad";
        }

        else
        {
          v14 = @"SessionStart";
        }

        goto LABEL_65;
      }

      if (!v13)
      {
        v14 = @"None";
        goto LABEL_65;
      }

      if (v13 == 1000)
      {
        v14 = @"NetworkInterfaceChange";
LABEL_65:
        *buf = 67109634;
        v19 = v13;
        v20 = 2114;
        v21 = v14;
        v22 = 2114;
        v23 = v7;
        _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: RTC Message send failed. category=%d (%{public}@) error=%{public}@", buf, 0x1Cu);

        goto LABEL_66;
      }
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedCategory:%d", *(a1 + 48)];
    goto LABEL_65;
  }

  v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 48);
    if (v12 > 1002)
    {
      if (v12 <= 1004)
      {
        if (v12 == 1003)
        {
          v9 = @"SessionSummary";
        }

        else
        {
          v9 = @"QueueLoad";
        }

        goto LABEL_50;
      }

      if (v12 == 1005)
      {
        v9 = @"ItemAssetLoad";
        goto LABEL_50;
      }

      if (v12 == 1006)
      {
        v9 = @"ItemSummary";
        goto LABEL_50;
      }
    }

    else
    {
      if (v12 > 1000)
      {
        if (v12 == 1001)
        {
          v9 = @"SecureKeyLoad";
        }

        else
        {
          v9 = @"SessionStart";
        }

        goto LABEL_50;
      }

      if (!v12)
      {
        v9 = @"None";
        goto LABEL_50;
      }

      if (v12 == 1000)
      {
        v9 = @"NetworkInterfaceChange";
LABEL_50:
        *buf = 67109378;
        v19 = v12;
        v20 = 2114;
        v21 = v9;
        _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: Can't send RTC message. session=nil. category=%d (%{public}@)", buf, 0x12u);
        goto LABEL_66;
      }
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedCategory:%d", v12];
    goto LABEL_50;
  }

LABEL_67:
}

- (id)_rtcUserInfoWithServiceName:(id)name
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E69C6AE0];
  v3 = MEMORY[0x1E696AE30];
  nameCopy = name;
  processInfo = [v3 processInfo];
  processName = [processInfo processName];
  v9[1] = *MEMORY[0x1E69C6AE8];
  v10[0] = processName;
  v10[1] = nameCopy;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)_rtcSessionInfoWithSamplingUUID:(id)d
{
  v15[7] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = *MEMORY[0x1E69C6AB8];
  v14[0] = *MEMORY[0x1E69C6AB0];
  v14[1] = v5;
  v15[0] = &unk_1F45991A8;
  v15[1] = &unk_1F45991C0;
  v6 = *MEMORY[0x1E69C6AD8];
  v14[2] = *MEMORY[0x1E69C6AA0];
  v14[3] = v6;
  v15[2] = MEMORY[0x1E695E118];
  v15[3] = &unk_1F45991D8;
  v14[4] = *MEMORY[0x1E69C6AA8];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v9 = *MEMORY[0x1E69C6AC0];
  v15[4] = bundleIdentifier;
  v15[5] = MEMORY[0x1E695E110];
  v10 = *MEMORY[0x1E69C6AD0];
  v14[5] = v9;
  v14[6] = v10;
  uUIDString = dCopy;
  if (!dCopy)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  v15[6] = uUIDString;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:7];
  if (!dCopy)
  {
  }

  return v12;
}

- (void)_generateConfiguredReportingSessionWithSamplingUUID:(id)d serviceName:(id)name completion:(id)completion
{
  dCopy = d;
  nameCopy = name;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_testingDelegate);

  if (WeakRetained)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v12 = [(MPCRTCEventConsumer *)self _rtcSessionInfoWithSamplingUUID:dCopy];
    v13 = [(MPCRTCEventConsumer *)self _rtcUserInfoWithServiceName:nameCopy];
    v14 = [objc_alloc(MEMORY[0x1E69C6A80]) initWithSessionInfo:v12 userInfo:v13 frameworksToCheck:0];
    dispatch_group_enter(self->_rtcGroup);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __98__MPCRTCEventConsumer__generateConfiguredReportingSessionWithSamplingUUID_serviceName_completion___block_invoke;
    v16[3] = &unk_1E8232278;
    v16[4] = self;
    v17 = v14;
    v18 = completionCopy;
    v15 = v14;
    [v15 startConfigurationWithCompletionHandler:v16];
  }
}

uint64_t __98__MPCRTCEventConsumer__generateConfiguredReportingSessionWithSamplingUUID_serviceName_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C5C61000, v3, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: [RTCReporting startConfigurationWithCompletionHandler:] failed with no backends", v5, 2u);
    }
  }

  dispatch_group_leave(*(*(a1 + 32) + 8));
  return (*(*(a1 + 48) + 16))();
}

- (void)_updateAssetSelectionEvent:(id)event fromAssetLoadEndEvent:(id)endEvent untilAssetLoadBeginEvent:(id)beginEvent cursor:(id)cursor
{
  v49[3] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  endEventCopy = endEvent;
  beginEventCopy = beginEvent;
  cursorCopy = cursor;
  type = [endEventCopy type];
  v14 = [type isEqualToString:@"asset-load-end"];

  if (v14)
  {
    v15 = [endEventCopy previousItemEventWithCursor:cursorCopy type:@"asset-selection"];
    if (v15)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [cursorCopy cursorFromEvent:endEventCopy untilEvent:beginEventCopy];
      v17 = v43 = cursorCopy;
      v49[0] = MEMORY[0x1E695E118];
      v48[0] = @"blocks-playback";
      v48[1] = @"queue-section-id";
      payload = [v15 payload];
      v19 = [payload objectForKeyedSubscript:@"queue-section-id"];
      v49[1] = v19;
      v48[2] = @"queue-item-id";
      payload2 = [v15 payload];
      v21 = [payload2 objectForKeyedSubscript:@"queue-item-id"];
      v49[2] = v21;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:3];
      v22 = v44 = beginEventCopy;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __104__MPCRTCEventConsumer__updateAssetSelectionEvent_fromAssetLoadEndEvent_untilAssetLoadBeginEvent_cursor___block_invoke;
      v45[3] = &unk_1E82320A0;
      v46 = dictionary;
      v23 = dictionary;
      [v17 enumeratePreviousEventsWithType:@"network-operation" matchingPayload:v22 usingBlock:v45];

      payload3 = [v15 payload];
      v25 = [payload3 objectForKeyedSubscript:@"asset-load-info"];

      v26 = [v25 objectForKeyedSubscript:@"item-asset-has-online-keys"];
      [eventCopy setObject:v26 forKeyedSubscript:@"hasOnlineKeys"];

      v27 = [v25 objectForKeyedSubscript:@"item-asset-has-offline-keys"];
      [eventCopy setObject:v27 forKeyedSubscript:@"hasOfflineKeys"];

      v28 = [v25 objectForKeyedSubscript:@"item-asset-url"];
      host = [v28 host];
      v30 = host;
      if (host)
      {
        v31 = host;
      }

      else
      {
        v31 = @"localhost";
      }

      [eventCopy setObject:v31 forKeyedSubscript:@"ContentHostname"];

      v32 = [v23 objectForKeyedSubscript:&unk_1F4599130];
      [eventCopy setObject:v32 forKeyedSubscript:@"suzeLeaseTime"];

      v33 = [v23 objectForKeyedSubscript:&unk_1F4599148];
      [eventCopy setObject:v33 forKeyedSubscript:@"bagWaitTime"];

      v34 = [v23 objectForKeyedSubscript:&unk_1F4599160];
      [eventCopy setObject:v34 forKeyedSubscript:@"leaseWaitTime"];

      v35 = [v23 objectForKeyedSubscript:&unk_1F4599178];
      [eventCopy setObject:v35 forKeyedSubscript:@"subscriptionWaitTime"];

      v36 = [v23 objectForKeyedSubscript:&unk_1F4599190];
      [eventCopy setObject:v36 forKeyedSubscript:@"redownloadTime"];

      v37 = [v25 objectForKeyedSubscript:@"item-asset-is-delegated-playback"];
      [eventCopy setObject:v37 forKeyedSubscript:@"isDelegated"];

      scheme = [v28 scheme];
      [eventCopy setObject:scheme forKeyedSubscript:@"urlScheme"];

      v39 = [v25 objectForKeyedSubscript:@"item-asset-is-subscription-content"];
      [eventCopy setObject:v39 forKeyedSubscript:@"isSubscription"];

      v40 = [v25 objectForKeyedSubscript:@"item-asset-type"];
      [eventCopy setObject:v40 forKeyedSubscript:@"audioType"];

      v41 = [v25 objectForKeyedSubscript:@"item-asset-endpoint-type"];
      [eventCopy setObject:v41 forKeyedSubscript:@"endpointType"];

      v42 = [v25 objectForKeyedSubscript:@"item-asset-source"];
      [eventCopy setObject:v42 forKeyedSubscript:@"assetInfoSource"];

      beginEventCopy = v44;
      cursorCopy = v43;
    }
  }

  else
  {
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: _updateAssetLoadInfoEvent requires MPCPlaybackEngineEventTypeItemAssetLoadEnd type", buf, 2u);
    }
  }
}

void __104__MPCRTCEventConsumer__updateAssetSelectionEvent_fromAssetLoadEndEvent_untilAssetLoadBeginEvent_cursor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 payload];
  v13 = [v4 objectForKeyedSubscript:@"network-operation-type"];

  v5 = [v3 payload];

  v6 = [v5 objectForKeyedSubscript:@"network-metrics"];

  v7 = MEMORY[0x1E696AD98];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v13];
  [v8 doubleValue];
  v10 = v9;
  [v6 networkTime];
  v12 = [v7 numberWithDouble:v10 + v11];
  [*(a1 + 32) setObject:v12 forKeyedSubscript:v13];
}

- (void)_performABCSnapshotWithPayloadIfNecessary:(id)necessary
{
  v16[1] = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  v5 = [necessaryCopy objectForKeyedSubscript:@"errorJSON"];

  if (v5)
  {
    v6 = MEMORY[0x1E69B13D8];
    v7 = *MEMORY[0x1E69B1340];
    v16[0] = necessaryCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v6 snapshotWithDomain:v7 type:@"Bug" subType:@"FatalJSONError" context:@"Encountered fatal error with underlying JSON" triggerThresholdValues:0 events:v8 completion:0];
  }

  else
  {
    v8 = [(MPCRTCEventConsumer *)self _underlyingErrorFromPayload:necessaryCopy];
    domain = [v8 domain];
    v10 = [domain isEqual:*MEMORY[0x1E69E42B8]];

    if (v10 && ([v8 code] | 0x800) == 0xBE9)
    {
      v11 = MEMORY[0x1E69B13D8];
      v12 = *MEMORY[0x1E69B1340];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Code %ld", objc_msgSend(v8, "code")];
      v15 = necessaryCopy;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
      [v11 snapshotWithDomain:v12 type:@"Bug" subType:@"ICStoreServerError" context:v13 triggerThresholdValues:0 events:v14 completion:0];
    }
  }
}

- (id)_underlyingErrorFromPayload:(id)payload
{
  payloadCopy = payload;
  v4 = @"errorDomain";
  v5 = @"errorCode";
  v6 = [payloadCopy objectForKeyedSubscript:@"errorDomain"];

  if (v6)
  {
    v7 = 0;
    v8 = 1;
    v9 = @"errorCode";
    v10 = @"errorDomain";
    do
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = [payloadCopy objectForKeyedSubscript:v10];
      v13 = [payloadCopy objectForKeyedSubscript:v9];
      v14 = [v11 errorWithDomain:v12 code:objc_msgSend(v13 userInfo:{"integerValue"), 0}];

      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%d", @"errorDomain", v8];

      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%d", @"errorCode", v8];

      v17 = [payloadCopy objectForKeyedSubscript:v15];

      v8 = (v8 + 1);
      v9 = v16;
      v10 = v15;
      v7 = v14;
    }

    while (v17);
  }

  else
  {
    v14 = 0;
    v15 = @"errorDomain";
    v16 = @"errorCode";
  }

  return v14;
}

- (BOOL)_itemWasPreviouslyLoaded:(id)loaded cursor:(id)cursor
{
  v34[1] = *MEMORY[0x1E69E9840];
  loadedCopy = loaded;
  cursorCopy = cursor;
  type = [loadedCopy type];
  if ([type isEqualToString:@"item-begin"])
  {
    v8 = loadedCopy;
  }

  else
  {
    v33 = @"queue-item-id";
    payload = [loadedCopy payload];
    v10 = [payload objectForKeyedSubscript:@"queue-item-id"];
    v34[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v8 = [cursorCopy findPreviousEventWithType:@"item-begin" matchingPayload:v11];
  }

  array = [MEMORY[0x1E695DF70] array];
  v31 = @"queue-item-id";
  payload2 = [loadedCopy payload];
  v14 = [payload2 objectForKeyedSubscript:@"queue-item-id"];
  v32 = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __55__MPCRTCEventConsumer__itemWasPreviouslyLoaded_cursor___block_invoke;
  v29 = &unk_1E82320A0;
  v16 = array;
  v30 = v16;
  [cursorCopy enumeratePreviousEventsWithType:@"asset-load-end" matchingPayload:v15 usingBlock:&v26];

  v17 = [v16 msv_firstWhere:{&__block_literal_global_71, v26, v27, v28, v29}];
  v18 = v17;
  v19 = 0;
  if (v8 && v17)
  {
    date = [v8 date];
    [date timeIntervalSinceReferenceDate];
    v22 = v21;
    date2 = [v18 date];
    [date2 timeIntervalSinceReferenceDate];
    v19 = v22 > v24;
  }

  return v19;
}

BOOL __55__MPCRTCEventConsumer__itemWasPreviouslyLoaded_cursor___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 payload];
  v3 = [v2 objectForKeyedSubscript:@"asset-load-error"];
  v4 = v3 == 0;

  return v4;
}

- (id)_itemAssetTypeFromItemAssetLoadEvent:(id)event cursor:(id)cursor
{
  v70[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  cursorCopy = cursor;
  payload = [eventCopy payload];
  v8 = [payload objectForKeyedSubscript:@"item-ids"];

  payload2 = [eventCopy payload];
  v10 = [payload2 objectForKeyedSubscript:@"item-metadata"];

  v11 = @"typeUnknown";
  payload3 = [eventCopy payload];
  v13 = [payload3 objectForKeyedSubscript:@"item-kind"];

  modelClass = [v13 modelClass];
  v62 = v10;
  if (modelClass == objc_opt_class())
  {
    v18 = @"song";
    v20 = @"song";

    v21 = [v10 objectForKeyedSubscript:@"item-has-video"];
    bOOLValue = [v21 BOOLValue];

    if (bOOLValue)
    {
      v19 = MPCRTCAssetTypeMusicVideo;
      goto LABEL_11;
    }

LABEL_8:
    v64 = v18;
    goto LABEL_12;
  }

  modelClass2 = [v13 modelClass];
  if (modelClass2 == objc_opt_class())
  {
    v18 = @"typeUnknown";
    v19 = MPCRTCAssetTypeTVEpisode;
    goto LABEL_11;
  }

  modelClass3 = [v13 modelClass];
  if (modelClass3 == objc_opt_class())
  {
    v18 = @"typeUnknown";
    v19 = MPCRTCAssetTypeMovie;
    goto LABEL_11;
  }

  modelClass4 = [v13 modelClass];
  v18 = @"typeUnknown";
  if (modelClass4 != objc_opt_class())
  {
    goto LABEL_8;
  }

  v19 = MPCRTCAssetTypePlaylistEntry;
LABEL_11:
  v23 = *v19;

  v64 = v23;
LABEL_12:
  v61 = v13;
  v24 = @"originUnknown";
  v25 = @"originUnknown";
  payload4 = [eventCopy payload];
  v27 = [payload4 objectForKeyedSubscript:@"container-ids"];

  v60 = v27;
  if (!v27)
  {
    lowercaseString2 = 0;
    v37 = 0;
    goto LABEL_23;
  }

  v69 = @"container-ids";
  v70[0] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
  v29 = [cursorCopy findPreviousEventWithType:@"container-begin" matchingPayload:v28];

  payload5 = [v29 payload];
  v31 = [payload5 objectForKeyedSubscript:@"container-metadata"];

  payload6 = [v29 payload];
  v33 = [payload6 objectForKeyedSubscript:@"container-kind"];

  modelClass5 = [v33 modelClass];
  if (modelClass5 == objc_opt_class())
  {
    v58 = v8;
    v24 = @"radio";
    v38 = @"radio";

    v39 = [v31 objectForKeyedSubscript:@"container-radio-type"];
    [v39 integerValue];

    v40 = NSStringFromMPModelRadioStationType();
    lowercaseString = [v40 lowercaseString];

    v42 = [v31 objectForKeyedSubscript:@"container-radio-subtype"];
    integerValue = [v42 integerValue];

    if (!integerValue)
    {
      lowercaseString2 = 0;
      v8 = v58;
      goto LABEL_22;
    }

    v44 = NSStringFromMPModelRadioStationSubtype();
    lowercaseString2 = [(__CFString *)v44 lowercaseString];
    v8 = v58;
  }

  else
  {
    universalStore = [v8 universalStore];
    subscriptionAdamID = [universalStore subscriptionAdamID];

    if (subscriptionAdamID < 1)
    {
      v24 = @"library";
    }

    else
    {
      v24 = @"subscription";
    }

    v45 = v24;
    lowercaseString2 = 0;
    v44 = @"originUnknown";
    lowercaseString = v64;
  }

LABEL_22:
  v37 = [MEMORY[0x1E695DF70] arrayWithObjects:{v24, lowercaseString, lowercaseString2, 0}];

  v64 = lowercaseString;
LABEL_23:
  v67 = @"queue-item-id";
  payload7 = [eventCopy payload];
  v47 = [payload7 objectForKeyedSubscript:@"queue-item-id"];
  v68 = v47;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v49 = [cursorCopy findPreviousEventWithType:@"item-begin" matchingPayload:v48];

  if (v49)
  {
    v59 = v8;
    v50 = cursorCopy;
    v51 = [cursorCopy cursorUntilEvent:v49];
    v65 = @"queue-section-id";
    payload8 = [eventCopy payload];
    v53 = [payload8 objectForKeyedSubscript:@"queue-section-id"];
    v66 = v53;
    v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v55 = [v51 findPreviousEventWithType:@"item-hls-stream-begin" matchingPayload:v54];

    if (v55)
    {
      [v37 addObject:@"hls"];
    }

    cursorCopy = v50;
    v8 = v59;
  }

  v56 = v37;

  return v37;
}

- (id)_mediaIdentifierFromItemAssetLoadEndEvent:(id)event cursor:(id)cursor
{
  v31[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  cursorCopy = cursor;
  payload = [eventCopy payload];
  v8 = [payload objectForKeyedSubscript:@"item-ids"];

  universalStore = [v8 universalStore];
  v10 = [MPCRTCEventConsumer rtcIdentifiersFromUniversalIdentifiers:universalStore];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  payload2 = [eventCopy payload];
  v13 = [payload2 objectForKeyedSubscript:@"container-ids"];

  if (v13)
  {
    v30 = @"container-ids";
    v31[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v15 = [cursorCopy findPreviousEventWithType:@"container-begin" matchingPayload:v14];

    payload3 = [v15 payload];
    v17 = [payload3 objectForKeyedSubscript:@"container-kind"];

    modelClass = [v17 modelClass];
    if (modelClass == objc_opt_class())
    {
      payload4 = [v15 payload];
      v20 = [payload4 objectForKeyedSubscript:@"container-metadata"];

      v29 = v20;
      v21 = [v20 objectForKeyedSubscript:@"container-radio-type"];
      integerValue = [v21 integerValue];

      if (integerValue != 8)
      {
        if (integerValue == 4)
        {
          [v10 removeAllObjects];
        }

        payload5 = [eventCopy payload];
        v28 = [payload5 objectForKeyedSubscript:@"container-ids"];

        radio = [v28 radio];
        v25 = [MPCRTCEventConsumer rtcIdentifiersFromRadioIdentifiers:radio];
        [dictionary addEntriesFromDictionary:v25];
      }
    }
  }

  v26 = [MPCRTCEventConsumer identifierStringFromItemIdentifiers:v10 radioIdentifiers:dictionary];

  return v26;
}

- (id)_tapToPlayMetrics:(id)metrics fromItemStartEvent:(id)event
{
  v31[2] = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  eventCopy = event;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = [(MPCRTCEventConsumer *)self _itemStartIncitingEvent:metricsCopy fromItemStartEvent:eventCopy];
  if (v9)
  {
    v10 = MEMORY[0x1E696AD98];
    [eventCopy durationSinceEvent:v9];
    v11 = [v10 numberWithDouble:?];
    [dictionary setObject:v11 forKeyedSubscript:@"perceivedPlayStartTime"];

    payload = [eventCopy payload];
    v13 = [payload objectForKeyedSubscript:@"queue-section-id"];

    v30[0] = @"queue-section-id";
    v30[1] = @"network-operation-type";
    v31[0] = v13;
    v31[1] = &unk_1F4599118;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v15 = [metricsCopy findPreviousEventWithType:@"network-operation" matchingPayload:v14];

    if (v15)
    {
      payload2 = [v15 payload];
      v17 = [payload2 objectForKeyedSubscript:@"queueLoadNetworkTime"];
      [dictionary setObject:v17 forKeyedSubscript:@"queueLoadNetworkTime"];
    }

    type = [v9 type];
    v19 = [type isEqual:@"remote-control-begin"];

    if (v19)
    {
      payload3 = [v9 payload];
      v21 = [payload3 objectForKeyedSubscript:@"remote-control-options"];
      v22 = [v21 objectForKeyedSubscript:*MEMORY[0x1E69B1088]];

      if (v22)
      {
        v23 = MEMORY[0x1E696AD98];
        date = [v9 date];
        [date timeIntervalSinceReferenceDate];
        v26 = v25;
        [v22 doubleValue];
        v28 = [v23 numberWithDouble:v26 - v27];
        [dictionary setObject:v28 forKeyedSubscript:@"commandSendTime"];
      }
    }
  }

  return dictionary;
}

- (id)_accountSnapshotWithCursor:(id)cursor
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  cursorCopy = cursor;
  dictionary = [v3 dictionary];
  v12[0] = @"account-begin";
  v12[1] = @"account-update";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v7 = [cursorCopy findPreviousEventWithTypes:v6 matchingPayload:0];

  if (v7)
  {
    payload = [v7 payload];
    v9 = [payload objectForKeyedSubscript:@"account-metadata"];

    v10 = [v9 objectForKeyedSubscript:@"store-front-id"];
    [dictionary setObject:v10 forKeyedSubscript:@"StorefrontID"];
  }

  return dictionary;
}

- (id)_itemStartIncitingEvent:(id)event fromItemStartEvent:(id)startEvent
{
  v28[4] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  startEventCopy = startEvent;
  if (startEventCopy)
  {
    v28[0] = @"remote-control-begin";
    v28[1] = @"item-end";
    v28[2] = @"session-reset";
    v28[3] = @"item-failed";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__3967;
    v26 = __Block_byref_object_dispose__3968;
    v27 = 0;
    lastItemStartIncitingEvent = self->_lastItemStartIncitingEvent;
    p_lastItemStartIncitingEvent = &self->_lastItemStartIncitingEvent;
    if ([(MPCPlaybackEngineEvent *)lastItemStartIncitingEvent compare:startEventCopy]== -1)
    {
      v11 = *p_lastItemStartIncitingEvent;
    }

    else
    {
      v11 = 0;
    }

    v13 = [eventCopy cursorFromEvent:startEventCopy untilEvent:v11];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __66__MPCRTCEventConsumer__itemStartIncitingEvent_fromItemStartEvent___block_invoke;
    v21[3] = &unk_1E82322F0;
    v21[4] = buf;
    [v13 enumeratePreviousEventsWithTypes:v8 usingBlock:v21];

    v14 = *(v23 + 5);
    if (v14)
    {
      if (*p_lastItemStartIncitingEvent)
      {
        if ([(MPCPlaybackEngineEvent *)*p_lastItemStartIncitingEvent compare:?]!= -1)
        {
LABEL_14:
          v12 = *(v23 + 5);
          if (v12)
          {
            v17 = v12;
          }

          else
          {
            v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v20 = 0;
              _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: _itemStartIncitingEvent: sessionStartEvent=nil", &v20, 2u);
            }
          }

          _Block_object_dispose(buf, 8);
          goto LABEL_20;
        }

        v14 = *(v23 + 5);
      }
    }

    else
    {
      v14 = v11;
      p_lastItemStartIncitingEvent = (v23 + 40);
    }

    v15 = v14;
    v16 = *p_lastItemStartIncitingEvent;
    *p_lastItemStartIncitingEvent = v15;

    goto LABEL_14;
  }

  v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: _itemStartIncitingEvent: itemStartEvent=nil", buf, 2u);
  }

  v12 = 0;
LABEL_20:

  return v12;
}

void __66__MPCRTCEventConsumer__itemStartIncitingEvent_fromItemStartEvent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = a2;
  v7 = [v18 type];
  v8 = [v7 isEqualToString:@"remote-control-begin"];

  if (v8)
  {
    v9 = [v18 payload];
    v10 = [v9 objectForKeyedSubscript:@"remote-control-type"];
    v11 = [v10 intValue];

    if ((v11 > 5 || ((1 << v11) & 0x35) == 0) && (v11 - 109 > 0x16 || ((1 << (v11 - 109)) & 0x402003) == 0))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v12 = [v18 type];
  v13 = [v12 isEqualToString:@"item-end"];
  v14 = v13;
  if (v13)
  {
    v8 = [v18 payload];
    v3 = [v8 objectForKeyedSubscript:@"item-did-play-to-end"];
    if ([v3 BOOLValue])
    {
      goto LABEL_10;
    }
  }

  v15 = [v18 type];
  if ([v15 isEqualToString:@"item-failed"])
  {

    if ((v14 & 1) == 0)
    {
LABEL_11:

LABEL_17:
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a3 = 1;
      goto LABEL_18;
    }

LABEL_10:

    goto LABEL_11;
  }

  v16 = [v18 type];
  v17 = [v16 isEqualToString:@"session-reset"];

  if (v14)
  {
  }

  if (v17)
  {
    goto LABEL_17;
  }

LABEL_18:
}

- (id)_reasonForEndEvent:(id)event cursor:(id)cursor
{
  v38[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v6 = @"unknown";
  cursorCopy = cursor;
  v8 = [cursorCopy cursorFromEvent:eventCopy untilEvent:0];
  v37 = @"queue-item-id";
  payload = [eventCopy payload];
  v10 = [payload objectForKeyedSubscript:@"queue-item-id"];
  v38[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  v12 = [v8 findPreviousEventWithType:@"item-begin" matchingPayload:v11];

  identifier = [eventCopy identifier];
  identifier2 = [v12 identifier];
  if ([identifier isEqual:identifier2])
  {
    [cursorCopy cursorUntilEvent:v12];
  }

  else
  {
    [cursorCopy cursorFromEvent:eventCopy untilEvent:v12];
  }
  v15 = ;

  type = [eventCopy type];
  if ([type isEqualToString:@"item-failed"])
  {

LABEL_7:
    v19 = @"fail";
LABEL_8:
    v20 = v19;
    v21 = @"unknown";
LABEL_9:

    goto LABEL_10;
  }

  type2 = [eventCopy type];
  v18 = [type2 isEqualToString:@"asset-load-end"];

  if (v18)
  {
    goto LABEL_7;
  }

  payload2 = [eventCopy payload];
  v24 = [payload2 objectForKeyedSubscript:@"item-did-play-to-end"];
  bOOLValue = [v24 BOOLValue];

  if (bOOLValue)
  {
    v19 = @"natural";
    goto LABEL_8;
  }

  if (v12)
  {
    v36[0] = @"session-end";
    v36[1] = @"session-reset";
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v27 = [v15 countOfPreviousEventsWithTypes:v26 matchingPayload:0];

    if (v27 >= 1)
    {
      v19 = @"endSession";
      goto LABEL_8;
    }

    v28 = [v15 findPreviousEventWithType:@"remote-control-begin" matchingPayload:0];
    v21 = v28;
    if (v28)
    {
      payload3 = [(__CFString *)v28 payload];
      v30 = [payload3 objectForKeyedSubscript:@"remote-control-type"];
      unsignedIntValue = [v30 unsignedIntValue];

      v19 = @"unknown";
      if (unsignedIntValue > 121)
      {
        if (unsignedIntValue != 122)
        {
          if (unsignedIntValue != 131)
          {
            goto LABEL_9;
          }

          v32 = MPCRTCItemEndReasonPlayItemInQueue;
          goto LABEL_29;
        }

LABEL_28:
        v32 = MPCRTCItemEndReasonEndSession;
        goto LABEL_29;
      }

      if (unsignedIntValue != 1)
      {
        if (unsignedIntValue != 4)
        {
          goto LABEL_9;
        }

        v32 = MPCRTCItemEndReasonSkip;
LABEL_29:
        v19 = *v32;

        goto LABEL_9;
      }

      payload4 = [(__CFString *)v21 payload];
      v34 = [payload4 objectForKeyedSubscript:@"remote-control-source"];
      v35 = [v34 containsString:@"migrationPlaybackSession"];

      if (v35)
      {
        goto LABEL_28;
      }
    }

    v19 = @"unknown";
    goto LABEL_9;
  }

  v19 = @"unknown";
LABEL_10:

  return v19;
}

- (id)_payloadForItemSummary:(id)summary fromItemEvent:(id)event
{
  v45[3] = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  eventCopy = event;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v45[0] = @"asset-load-end";
  v45[1] = @"item-failed";
  v45[2] = @"item-first-audio-frame";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
  v43 = @"queue-item-id";
  payload = [eventCopy payload];
  v11 = [payload objectForKeyedSubscript:@"queue-item-id"];
  v44 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __60__MPCRTCEventConsumer__payloadForItemSummary_fromItemEvent___block_invoke;
  v37[3] = &unk_1E8232100;
  v13 = summaryCopy;
  v38 = v13;
  selfCopy = self;
  v14 = dictionary;
  v40 = v14;
  [v13 enumeratePreviousEventsWithTypes:v9 matchingPayload:v12 usingBlock:v37];

  type = [eventCopy type];
  [v14 setObject:type forKeyedSubscript:@"event"];

  [v14 removeObjectForKey:@"networkType"];
  type2 = [eventCopy type];
  if ([type2 isEqualToString:@"item-begin"])
  {
    v17 = eventCopy;
  }

  else
  {
    v41 = @"queue-item-id";
    payload2 = [eventCopy payload];
    v19 = [payload2 objectForKeyedSubscript:@"queue-item-id"];
    v42 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v17 = [v13 findPreviousEventWithType:@"item-begin" matchingPayload:v20];
  }

  v21 = [v13 cursorFromEvent:eventCopy untilEvent:v17];
  v22 = v21;
  if (v17)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v21, "countOfPreviousEventsWithType:matchingPayload:", @"network-type-changed", 0)}];
    [v14 setObject:v23 forKeyedSubscript:@"networkChangeCount"];

    v24 = [(MPCRTCEventConsumer *)self _networkType:v13 fromEvent:v17];
    [v14 setObject:v24 forKeyedSubscript:@"initialNetworkType"];
  }

  v25 = [(MPCRTCEventConsumer *)self _networkType:v13 fromEvent:0];
  [v14 setObject:v25 forKeyedSubscript:@"finalNetworkType"];

  v26 = [(MPCRTCEventConsumer *)self _reasonForEndEvent:eventCopy cursor:v13];
  if ([v26 isEqualToString:@"fail"])
  {
    payload3 = [eventCopy payload];
    v28 = [payload3 objectForKeyedSubscript:@"asset-load-error"];
    [(MPCRTCEventConsumer *)self _addErrors:v28 toPayload:v14];
  }

  [v14 setObject:v26 forKeyedSubscript:@"endReason"];
  v29 = [v22 findPreviousEventWithType:@"error-resolution" matchingPayload:0];
  v30 = v29;
  if (v29)
  {
    payload4 = [v29 payload];
    v32 = [payload4 objectForKeyedSubscript:@"error-for-resolution"];
    [v14 setObject:v32 forKeyedSubscript:@"errorResolution"];

    payload5 = [v30 payload];
    v34 = [payload5 objectForKeyedSubscript:@"resolution-type"];
    [v14 setObject:v34 forKeyedSubscript:@"errorResolutionType"];
  }

  v35 = v14;

  return v14;
}

void __60__MPCRTCEventConsumer__payloadForItemSummary_fromItemEvent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) cursorFromEvent:v8 untilEvent:0];
  if ([(MPCRTCEventConsumer *)*(a1 + 40) _shouldReportItemAssetLoad:v5 forItemEvent:v8])
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 40) _payloadForItemAssetLoad:v5 fromItemEvent:v8];
    [v6 addEntriesFromDictionary:v7];

    *a3 = 1;
  }
}

- (id)_networkType:(void *)type fromEvent:
{
  v5 = a2;
  typeCopy = type;
  v7 = typeCopy;
  if (self)
  {
    if (typeCopy)
    {
      v8 = [v5 cursorFromEvent:typeCopy untilEvent:0];

      v5 = v8;
    }

    v9 = [v5 findPreviousEventWithType:@"network-type-changed" matchingPayload:0];
    v10 = v9;
    if (v9)
    {
      payload = [v9 payload];
      self = [payload objectForKeyedSubscript:@"network-type"];
    }

    else
    {
      self = &unk_1F4599100;
    }
  }

  return self;
}

- (void)_addErrors:(void *)errors toPayload:
{
  v22 = a2;
  errorsCopy = errors;
  if (self && v22)
  {
    domain = [v22 domain];
    [errorsCopy setObject:domain forKeyedSubscript:@"errorDomain"];

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v22, "code")}];
    [errorsCopy setObject:v7 forKeyedSubscript:@"errorCode"];

    v8 = v22;
    v9 = 0;
    v10 = *MEMORY[0x1E696AA08];
    v11 = 1;
    v21 = v8;
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      userInfo = [v8 userInfo];
      v13 = [userInfo objectForKeyedSubscript:v10];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        domain2 = [v13 domain];
        v15 = [@"errorDomain" stringByAppendingFormat:@"-%d", v11];
        [errorsCopy setObject:domain2 forKeyedSubscript:v15];

        v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v13, "code")}];
        v17 = [@"errorCode" stringByAppendingFormat:@"-%d", v11];
        [errorsCopy setObject:v16 forKeyedSubscript:v17];
      }

      else if ([MEMORY[0x1E696ACB0] isValidJSONObject:v13])
      {
        v18 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v13 options:8 error:0];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v18 encoding:4];
        [errorsCopy setObject:v19 forKeyedSubscript:@"errorJSON"];

        v9 = v8;
        v8 = 0;
        break;
      }

      v9 = v13;

      v11 = (v11 + 1);
      v8 = v9;
    }

    while (v9);

    msv_analyticSignature = [v21 msv_analyticSignature];
    [errorsCopy setObject:msv_analyticSignature forKeyedSubscript:@"analyticSignature"];
  }
}

- (uint64_t)_shouldReportItemAssetLoad:(void *)load forItemEvent:
{
  v37[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  loadCopy = load;
  if (self)
  {
    v37[0] = @"asset-load-end";
    v37[1] = @"item-failed";
    v37[2] = @"item-first-audio-frame";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
    type = [loadCopy type];
    v9 = [v7 containsObject:type];

    if (v9)
    {
      v35 = @"queue-item-id";
      payload = [loadCopy payload];
      v11 = [payload objectForKeyedSubscript:@"queue-item-id"];
      v36 = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

      v13 = [v5 cursorFromEvent:loadCopy untilEvent:0];
      v34 = @"item-begin";
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
      v15 = [v13 findPreviousEventWithTypes:v14 matchingPayload:0];

      if (!v15 || ([v15 payload], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "objectForKeyedSubscript:", @"queue-item-id"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(loadCopy, "payload"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "objectForKeyedSubscript:", @"queue-item-id"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v17, "isEqualToString:", v19), v19, v18, v17, v16, !v20))
      {
        v22 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v21 = [v5 cursorFromEvent:loadCopy untilEvent:v15];
      if ([v21 countOfPreviousEventsWithType:@"item-first-audio-frame" matchingPayload:v12] > 0)
      {
        goto LABEL_6;
      }

      type2 = [loadCopy type];
      v24 = [type2 isEqualToString:@"item-first-audio-frame"];

      if (v24)
      {
LABEL_10:
        v22 = 1;
        goto LABEL_11;
      }

      type3 = [loadCopy type];
      v27 = [type3 isEqualToString:@"item-failed"];

      if (v27)
      {
        v28 = [v21 findPreviousEventWithType:@"asset-load-end" matchingPayload:v12];
        type4 = v28;
        if (v28)
        {
          payload2 = [v28 payload];
          v31 = [payload2 objectForKeyedSubscript:@"asset-load-error"];

          if (!v31)
          {

            goto LABEL_10;
          }
        }
      }

      else
      {
        type4 = [loadCopy type];
        if ([type4 isEqualToString:@"asset-load-end"])
        {
          payload3 = [loadCopy payload];
          v33 = [payload3 objectForKeyedSubscript:@"asset-load-error"];

          if (v33)
          {
            goto LABEL_10;
          }

LABEL_6:
          v22 = 0;
LABEL_11:

          goto LABEL_12;
        }
      }

      goto LABEL_6;
    }
  }

  v22 = 0;
LABEL_13:

  return v22;
}

- (id)_payloadForItemSummary:(id)summary fromEvent:(id)event
{
  v14[2] = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  eventCopy = event;
  payload = [eventCopy payload];
  v9 = [payload objectForKeyedSubscript:@"queue-item-id"];

  if (v9)
  {
    v10 = eventCopy;
  }

  else
  {
    v14[0] = @"item-begin";
    v14[1] = @"item-first-audio-frame";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v10 = [summaryCopy findPreviousEventWithTypes:v11 matchingPayload:0];
  }

  v12 = [(MPCRTCEventConsumer *)self _payloadForItemSummary:summaryCopy fromItemEvent:v10];

  return v12;
}

- (id)_payloadForItemAssetLoad:(id)load fromItemEvent:(id)event
{
  v124[4] = *MEMORY[0x1E69E9840];
  loadCopy = load;
  eventCopy = event;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  selfCopy = self;
  v8 = [(MPCRTCEventConsumer *)self _accountSnapshotWithCursor:loadCopy];
  [v7 addEntriesFromDictionary:v8];

  type = [eventCopy type];
  [v7 setObject:type forKeyedSubscript:@"event"];

  v10 = [(MPCRTCEventConsumer *)selfCopy _networkType:loadCopy fromEvent:0];
  [v7 setObject:v10 forKeyedSubscript:@"networkType"];

  payload = [eventCopy payload];
  v12 = [payload objectForKeyedSubscript:@"queue-section-id"];
  [v7 setObject:v12 forKeyedSubscript:@"queueIdentifier"];

  v124[0] = @"session-begin";
  v124[1] = @"session-restore-begin";
  v124[2] = @"session-migrate-begin";
  v124[3] = @"session-reset";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:4];
  v97 = [loadCopy findPreviousEventWithTypes:v13 matchingPayload:0];

  payload2 = [v97 payload];
  v15 = [payload2 objectForKeyedSubscript:@"session-id"];
  [v7 setObject:v15 forKeyedSubscript:@"sessionIdentifier"];

  v16 = [loadCopy cursorUntilEvent:v97];
  v95 = [(MPCRTCEventConsumer *)selfCopy _firstItemAssetLoadEventWithCursor:v16 fromEvent:eventCopy matchingPayload:0];

  v17 = MEMORY[0x1E696AD98];
  identifier = [v95 identifier];
  identifier2 = [eventCopy identifier];
  v20 = [v17 numberWithBool:{objc_msgSend(identifier, "isEqual:", identifier2)}];
  [v7 setObject:v20 forKeyedSubscript:@"sessionStartItem"];

  v122 = @"queue-item-id";
  payload3 = [eventCopy payload];
  v22 = [payload3 objectForKeyedSubscript:@"queue-item-id"];
  v123 = v22;
  v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];

  v99 = [loadCopy findPreviousEventWithType:@"item-begin" matchingPayload:v100];
  payload4 = [v99 payload];
  v24 = [payload4 objectForKeyedSubscript:@"item-metadata"];
  v25 = [v24 objectForKeyedSubscript:@"item-is-start-item"];
  [v7 setObject:v25 forKeyedSubscript:@"queueStartItem"];

  v94 = [loadCopy findPreviousEventWithType:@"item-begin" matchingPayload:0];
  v26 = MEMORY[0x1E696AD98];
  identifier3 = [v94 identifier];
  identifier4 = [v99 identifier];
  v29 = [v26 numberWithBool:{objc_msgSend(identifier3, "isEqual:", identifier4)}];
  [v7 setObject:v29 forKeyedSubscript:@"isCurrentItem"];

  v96 = [loadCopy findPreviousEventWithType:@"item-ready-to-play" matchingPayload:v100];
  if (v96)
  {
    v30 = MEMORY[0x1E696AD98];
    [v96 durationSinceEvent:v99];
    v31 = [v30 numberWithDouble:?];
    [v7 setObject:v31 forKeyedSubscript:@"readyToPlayTime"];
  }

  v98 = [loadCopy findPreviousEventWithType:@"item-configuration-end" matchingPayload:v100];
  if (v98)
  {
    payload5 = [v98 payload];
    v33 = [payload5 objectForKeyedSubscript:@"hls-metadata-wait-time"];
    [v7 setObject:v33 forKeyedSubscript:@"itemConfigHLSWaitTime"];

    v34 = [loadCopy findPreviousEventWithType:@"item-configuration-begin" matchingPayload:v100];
    [v98 durationSinceEvent:v34];
    v36 = v35;

    v37 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
    [v7 setObject:v37 forKeyedSubscript:@"itemConfigWaitTime"];
  }

  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy__3967;
  v111 = __Block_byref_object_dispose__3968;
  type2 = [eventCopy type];
  v39 = [type2 isEqualToString:@"item-first-audio-frame"];
  v40 = eventCopy;
  if (!v39)
  {
    v40 = 0;
  }

  v112 = v40;

  v93 = [loadCopy cursorFromEvent:eventCopy untilEvent:v99];
  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __62__MPCRTCEventConsumer__payloadForItemAssetLoad_fromItemEvent___block_invoke;
  v106[3] = &unk_1E82322F0;
  v106[4] = &v107;
  [v93 enumeratePreviousEventsWithType:@"item-first-audio-frame" matchingPayload:v100 usingBlock:v106];
  if (v108[5])
  {
    v41 = [(MPCRTCEventConsumer *)selfCopy _tapToPlayMetrics:loadCopy fromItemStartEvent:?];
    [v7 addEntriesFromDictionary:v41];
  }

  else
  {
    v41 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      type3 = [eventCopy type];
      v43 = +[MPCRTCEventConsumer dateFormatter];
      date = [eventCopy date];
      v45 = [v43 stringFromDate:date];
      *buf = 138412546;
      v119 = type3;
      v120 = 2112;
      v121 = v45;
      _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_DEFAULT, "MPCRTCEventConsumer: _payloadForItemAssetLoad: firstAudioFrame=nil from item event %@ at %@", buf, 0x16u);
    }
  }

  type4 = [eventCopy type];
  if ([type4 isEqualToString:@"asset-load-end"])
  {
    v102 = eventCopy;
  }

  else
  {
    v102 = [loadCopy findPreviousEventWithType:@"asset-load-end" matchingPayload:v100];
  }

  if (v102)
  {
    payload6 = [v102 payload];
    v48 = [payload6 objectForKeyedSubscript:@"rtc-service-id"];

    if (v48)
    {
      [v7 setObject:v48 forKeyedSubscript:@"serviceName"];
    }

    else
    {
      v49 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = +[MPCRTCEventConsumer dateFormatter];
        date2 = [v102 date];
        v52 = [v50 stringFromDate:date2];
        *buf = 138543362;
        v119 = v52;
        _os_log_impl(&dword_1C5C61000, v49, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: _payloadForItemAssetLoad: serviceName=nil for assetLoadEndEvent date=%{public}@", buf, 0xCu);

        v48 = 0;
      }
    }

    payload7 = [v102 payload];
    v54 = [payload7 objectForKeyedSubscript:@"player-item-reporting-id"];
    [v7 setObject:v54 forKeyedSubscript:@"playerItemReportingID"];

    payload8 = [v102 payload];
    v91 = [payload8 objectForKeyedSubscript:@"asset-load-error"];
    if (v91)
    {
    }

    else
    {
      payload9 = [eventCopy payload];
      v91 = [payload9 objectForKeyedSubscript:@"asset-load-error"];

      if (!v91)
      {
        v91 = 0;
        goto LABEL_24;
      }
    }

    [(MPCRTCEventConsumer *)selfCopy _addErrors:v91 toPayload:v7];
LABEL_24:
    v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[MPCRTCEventConsumer _itemWasPreviouslyLoaded:cursor:](selfCopy, "_itemWasPreviouslyLoaded:cursor:", eventCopy, loadCopy)}];
    [v7 setObject:v57 forKeyedSubscript:@"assetPreloaded"];

    v58 = [loadCopy cursorFromEvent:v102 untilEvent:0];
    v59 = [v58 findPreviousEventWithType:@"asset-load-begin" matchingPayload:v100];

    [(MPCRTCEventConsumer *)selfCopy _updateAssetSelectionEvent:v7 fromAssetLoadEndEvent:v102 untilAssetLoadBeginEvent:v59 cursor:loadCopy];
    v60 = MEMORY[0x1E696AD98];
    [v102 durationSinceEvent:v59];
    v61 = [v60 numberWithDouble:?];
    [v7 setObject:v61 forKeyedSubscript:@"createAssetDuration"];

    array = [MEMORY[0x1E695DF70] array];
    v63 = [loadCopy cursorUntilEvent:v59];
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __62__MPCRTCEventConsumer__payloadForItemAssetLoad_fromItemEvent___block_invoke_53;
    v104[3] = &unk_1E82320A0;
    v64 = array;
    v105 = v64;
    [v63 enumeratePreviousEventsWithType:@"remote-control-begin" usingBlock:v104];

    if ([v64 count])
    {
      [v64 componentsJoinedByString:@" "];
    }

    else
    {
      [MEMORY[0x1E695DFB0] null];
    }
    v65 = ;
    [v7 setObject:v65 forKeyedSubscript:@"assetLoadCommandEvents"];

    v66 = [(MPCRTCEventConsumer *)selfCopy _mediaIdentifierFromItemAssetLoadEndEvent:v102 cursor:loadCopy];
    [v7 setObject:v66 forKeyedSubscript:@"MediaIdentifier"];

    v67 = [(MPCRTCEventConsumer *)selfCopy _itemAssetTypeFromItemAssetLoadEvent:v102 cursor:loadCopy];
    v68 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v67, "containsObject:", @"hls"}];
    [v7 setObject:v68 forKeyedSubscript:@"isHLS"];

    v69 = [v67 componentsJoinedByString:@"."];
    [v7 setObject:v69 forKeyedSubscript:@"assetType"];

    v116 = @"queue-section-id";
    payload10 = [v102 payload];
    v71 = [payload10 objectForKeyedSubscript:@"queue-section-id"];
    v117 = v71;
    v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
    v73 = [loadCopy findPreviousEventWithType:@"queue-load-end" matchingPayload:v72];

    if (v73)
    {
      payload11 = [v73 payload];
      v75 = [payload11 objectForKeyedSubscript:@"queue-section-item-count"];
      [v7 setObject:v75 forKeyedSubscript:@"items"];
    }
  }

  v76 = [loadCopy cursorFromEvent:v99 untilEvent:0];
  v77 = [v76 findPreviousEventWithType:0 matchingPayload:0];
  v78 = [(MPCRTCEventConsumer *)selfCopy _sessionCursorWithCursor:v76 fromEvent:v77];

  v79 = [v78 findPreviousEventWithType:@"item-begin" matchingPayload:0];
  v80 = v79;
  if (v79)
  {
    v114 = @"queue-item-id";
    payload12 = [v79 payload];
    v82 = [payload12 objectForKeyedSubscript:@"queue-item-id"];
    v115 = v82;
    v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
    v84 = [v78 findPreviousEventWithType:@"asset-load-end" matchingPayload:v83];

    if (v84)
    {
      v92 = [(MPCRTCEventConsumer *)selfCopy _itemAssetTypeFromItemAssetLoadEvent:v84 cursor:v78];
      v85 = [v92 componentsJoinedByString:@"."];
      [v7 setObject:v85 forKeyedSubscript:@"previousItemAssetType"];

      v113[0] = @"application-termination";
      v113[1] = @"item-failed";
      v113[2] = @"item-end";
      v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:3];
      v87 = [v78 findPreviousEventWithTypes:v86 matchingPayload:0];
      if (v87)
      {
        v88 = [v78 cursorFromEvent:v87 untilEvent:0];
        v89 = [(MPCRTCEventConsumer *)selfCopy _reasonForEndEvent:v87 cursor:v88];
        [v7 setObject:v89 forKeyedSubscript:@"previousItemEndReason"];
      }
    }
  }

  _Block_object_dispose(&v107, 8);

  return v7;
}

- (id)_firstItemAssetLoadEventWithCursor:(void *)cursor fromEvent:(void *)event matchingPayload:
{
  v45[3] = *MEMORY[0x1E69E9840];
  v7 = a2;
  cursorCopy = cursor;
  eventCopy = event;
  if (self)
  {
    v8 = (self + 24);
    if (*(self + 24))
    {
      monotonicTimeNanoSeconds = [cursorCopy monotonicTimeNanoSeconds];
      if (monotonicTimeNanoSeconds >= [*v8 monotonicTimeNanoSeconds])
      {
        monotonicTimeNanoSeconds2 = [*v8 monotonicTimeNanoSeconds];
        endEvent = [v7 endEvent];
        monotonicTimeNanoSeconds3 = [endEvent monotonicTimeNanoSeconds];

        if (monotonicTimeNanoSeconds2 >= monotonicTimeNanoSeconds3 && (!eventCopy || ([*v8 matchesPayload:eventCopy] & 1) != 0))
        {
          goto LABEL_29;
        }
      }
    }

    v45[0] = @"asset-load-end";
    v45[1] = @"item-failed";
    v45[2] = @"item-first-audio-frame";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:{3, cursorCopy}];
    endEvent2 = [v7 endEvent];
    type = [endEvent2 type];
    if ([v13 containsObject:type])
    {
      endEvent3 = [v7 endEvent];
      v17 = [endEvent3 matchesPayload:eventCopy];

      if (v17)
      {
        endEvent4 = [v7 endEvent];
        v19 = *v8;
        *v8 = endEvent4;
LABEL_28:

LABEL_29:
        v32 = *v8;
        goto LABEL_30;
      }
    }

    else
    {
    }

    array = [MEMORY[0x1E695DF70] array];
    v44[0] = @"asset-load-end";
    v44[1] = @"item-failed";
    v44[2] = @"item-first-audio-frame";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
    if (eventCopy)
    {
      v22 = eventCopy;
    }

    else
    {
      v22 = MEMORY[0x1E695E0F8];
    }

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __84__MPCRTCEventConsumer__firstItemAssetLoadEventWithCursor_fromEvent_matchingPayload___block_invoke;
    v40[3] = &unk_1E82320A0;
    v23 = array;
    v41 = v23;
    [v7 enumeratePreviousEventsWithTypes:v21 matchingPayload:v22 usingBlock:v40];

    v43[0] = @"asset-load-end";
    v43[1] = @"item-failed";
    v43[2] = @"item-first-audio-frame";
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:3];
    type2 = [cursorCopy type];
    if ([v24 containsObject:type2])
    {
      v26 = cursorCopy;
    }

    else
    {
      v26 = 0;
    }

    objc_storeStrong((self + 24), v26);

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = v23;
    v27 = [v19 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v37;
      while (2)
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(v19);
          }

          v31 = *(*(&v36 + 1) + 8 * i);
          if ([(MPCRTCEventConsumer *)self _shouldReportItemAssetLoad:v7 forItemEvent:v31])
          {
            objc_storeStrong((self + 24), v31);
            goto LABEL_27;
          }
        }

        v28 = [v19 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  v32 = 0;
LABEL_30:

  return v32;
}

void __62__MPCRTCEventConsumer__payloadForItemAssetLoad_fromItemEvent___block_invoke_53(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 payload];
  v3 = [v4 objectForKeyedSubscript:@"remote-control-type"];
  [v2 addObject:v3];
}

- (id)_sessionCursorWithCursor:(void *)cursor fromEvent:
{
  v14[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  cursorCopy = cursor;
  v7 = cursorCopy;
  if (self)
  {
    if (cursorCopy)
    {
      v8 = [v5 cursorFromEvent:cursorCopy untilEvent:0];
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;
    v14[0] = @"session-begin";
    v14[1] = @"session-restore-begin";
    v14[2] = @"session-migrate-begin";
    v14[3] = @"session-reset";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
    v11 = [v9 findPreviousEventWithTypes:v10 matchingPayload:0];

    v12 = [v9 cursorUntilEvent:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_payloadForQueueLoad:(id)load fromQueueLoadEndEvent:(id)event
{
  v62 = *MEMORY[0x1E69E9840];
  loadCopy = load;
  eventCopy = event;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [(MPCRTCEventConsumer *)self _accountSnapshotWithCursor:loadCopy];
  [v8 addEntriesFromDictionary:v9];

  type = [eventCopy type];
  [v8 setObject:type forKeyedSubscript:@"event"];

  payload = [eventCopy payload];
  v12 = [payload objectForKeyedSubscript:@"queue-rtc-service-id"];

  v51 = v12;
  if (v12)
  {
    [v8 setObject:v12 forKeyedSubscript:@"serviceName"];
  }

  else
  {
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = +[MPCRTCEventConsumer dateFormatter];
      date = [eventCopy date];
      v16 = [v14 stringFromDate:date];
      *buf = 138543362;
      v61 = v16;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: _payloadForSessionStart: serviceName=nil for queueLoadEndEvent date=%{public}@", buf, 0xCu);
    }
  }

  v17 = [loadCopy cursorFromEvent:eventCopy untilEvent:0];
  v18 = [(MPCRTCEventConsumer *)self _networkType:v17 fromEvent:0];
  [v8 setObject:v18 forKeyedSubscript:@"networkType"];

  payload2 = [eventCopy payload];
  v20 = [payload2 objectForKeyedSubscript:@"queue-section-id"];

  payload3 = [eventCopy payload];
  v22 = [payload3 objectForKeyedSubscript:@"queue-load-error"];

  if (v22)
  {
    [(MPCRTCEventConsumer *)self _addErrors:v22 toPayload:v8];
  }

  v49 = v22;
  selfCopy = self;
  v58[0] = @"queue-section-id";
  v58[1] = @"network-operation-type";
  v59[0] = v20;
  v59[1] = &unk_1F4599118;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
  v24 = loadCopy;
  v25 = [loadCopy findPreviousEventWithType:@"network-operation" matchingPayload:v23];

  v52 = v25;
  if (v25)
  {
    payload4 = [v25 payload];
    v27 = [payload4 objectForKeyedSubscript:@"queueLoadNetworkTime"];
    [v8 setObject:v27 forKeyedSubscript:@"queueLoadNetworkTime"];
  }

  [v8 setObject:v20 forKeyedSubscript:@"queueIdentifier"];
  v57[0] = @"session-begin";
  v57[1] = @"session-restore-begin";
  v57[2] = @"session-migrate-begin";
  v57[3] = @"session-reset";
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:4];
  v48 = [v17 findPreviousEventWithTypes:v28 matchingPayload:0];

  payload5 = [v48 payload];
  v30 = [payload5 objectForKeyedSubscript:@"session-id"];
  [v8 setObject:v30 forKeyedSubscript:@"sessionIdentifier"];

  v55 = @"queue-section-id";
  v56 = v20;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v32 = [v17 findPreviousEventWithType:@"queue-load-begin" matchingPayload:v31];

  v47 = v17;
  v33 = MEMORY[0x1E696AD98];
  [eventCopy durationSinceEvent:v32];
  v34 = [v33 numberWithDouble:?];
  [v8 setObject:v34 forKeyedSubscript:@"queueLoadDuration"];

  v53 = @"queue-section-id";
  v54 = v20;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
  v36 = [v17 findPreviousEventWithType:@"queue-add" matchingPayload:v35];

  payload6 = [v36 payload];
  v38 = [payload6 objectForKeyedSubscript:@"queue-reporting-metadata"];

  v39 = [v38 objectForKeyedSubscript:@"feature-name"];
  [v8 setObject:v39 forKeyedSubscript:@"queueEndpoint"];

  v40 = [v38 objectForKeyedSubscript:@"application-bundle-id"];
  [v8 setObject:v40 forKeyedSubscript:@"queueBundleID"];

  v41 = [(MPCRTCEventConsumer *)selfCopy _sessionCursorWithCursor:v24 fromEvent:v36];
  v42 = [v41 countOfPreviousEventsWithType:@"queue-add" matchingPayload:0] == 0;
  v43 = [MEMORY[0x1E696AD98] numberWithBool:v42];
  [v8 setObject:v43 forKeyedSubscript:@"initialQueue"];

  payload7 = [eventCopy payload];
  v45 = [payload7 objectForKeyedSubscript:@"queue-section-item-count"];
  [v8 setObject:v45 forKeyedSubscript:@"items"];

  return v8;
}

- (id)_payloadForSessionSummary:(id)summary fromEvent:(id)event
{
  v37 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  eventCopy = event;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v9 = [(MPCRTCEventConsumer *)self _sessionCursorWithCursor:summaryCopy fromEvent:0];
  v10 = [(MPCRTCEventConsumer *)self _firstItemAssetLoadEventWithCursor:v9 fromEvent:eventCopy matchingPayload:0];
  if (v10)
  {
    v11 = [(MPCRTCEventConsumer *)self _payloadForSessionStart:summaryCopy fromEvent:v10];

    dictionary = v11;
  }

  else
  {
    v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      type = [eventCopy type];
      v13 = +[MPCRTCEventConsumer dateFormatter];
      date = [eventCopy date];
      v15 = [v13 stringFromDate:date];
      *buf = 138543618;
      *&buf[4] = type;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: _payloadForSessionSummary: sessionStartItemEvent=nil event.type=%{public}@ event.date=%{public}@", buf, 0x16u);
    }
  }

  type2 = [eventCopy type];
  [dictionary setObject:type2 forKeyedSubscript:@"event"];

  v17 = [(MPCRTCEventConsumer *)self _networkType:summaryCopy fromEvent:0];
  [dictionary setObject:v17 forKeyedSubscript:@"networkType"];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "countOfPreviousEventsWithType:matchingPayload:", @"queue-add", 0)}];
  [dictionary setObject:v18 forKeyedSubscript:@"queuesAdded"];

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "countOfPreviousEventsWithType:matchingPayload:", @"queue-load-error", 0)}];
  [dictionary setObject:v19 forKeyedSubscript:@"queuesFailed"];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v36 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v34[0] = @"item-first-audio-frame";
  v34[1] = @"asset-load-end";
  v34[2] = @"item-failed";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __59__MPCRTCEventConsumer__payloadForSessionSummary_fromEvent___block_invoke;
  v26[3] = &unk_1E8232000;
  v26[4] = self;
  v21 = v9;
  v27 = v21;
  v28 = buf;
  v29 = &v30;
  [v21 enumeratePreviousEventsWithTypes:v20 usingBlock:v26];

  v22 = [MEMORY[0x1E696AD98] numberWithInteger:*(*&buf[8] + 24)];
  [dictionary setObject:v22 forKeyedSubscript:@"itemsPlayed"];

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:v31[3]];
  [dictionary setObject:v23 forKeyedSubscript:@"itemsFailed"];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(buf, 8);

  return dictionary;
}

void __59__MPCRTCEventConsumer__payloadForSessionSummary_fromEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  LODWORD(v4) = [(MPCRTCEventConsumer *)v3 _shouldReportItemAssetLoad:v4 forItemEvent:v5];
  v6 = [v5 type];

  if (v4)
  {
    v7 = [v6 isEqualToString:@"item-first-audio-frame"];

    v8 = 56;
    if (v7)
    {
      v8 = 48;
    }
  }

  else
  {
    v9 = [v6 isEqualToString:@"item-failed"];

    if (!v9)
    {
      return;
    }

    v8 = 56;
  }

  ++*(*(*(a1 + v8) + 8) + 24);
}

- (id)_payloadForSessionStart:(id)start fromEvent:(id)event
{
  v90[4] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v7 = MEMORY[0x1E695DF90];
  startCopy = start;
  v9 = objc_alloc_init(v7);
  type = [eventCopy type];
  [v9 setObject:type forKeyedSubscript:@"event"];

  v11 = [(MPCRTCEventConsumer *)self _accountSnapshotWithCursor:startCopy];
  [v9 addEntriesFromDictionary:v11];

  v12 = [startCopy cursorFromEvent:eventCopy untilEvent:0];

  v90[0] = @"session-begin";
  v90[1] = @"session-restore-begin";
  v90[2] = @"session-migrate-begin";
  v90[3] = @"session-reset";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:4];
  type2 = [eventCopy type];
  if ([v13 containsObject:type2])
  {
    v15 = eventCopy;
  }

  else
  {
    v89[0] = @"session-begin";
    v89[1] = @"session-restore-begin";
    v89[2] = @"session-migrate-begin";
    v89[3] = @"session-reset";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:4];
    v15 = [v12 findPreviousEventWithTypes:v16 matchingPayload:0];
  }

  payload = [v15 payload];
  v18 = [payload objectForKeyedSubscript:@"session-id"];
  [v9 setObject:v18 forKeyedSubscript:@"sessionIdentifier"];

  v19 = eventCopy;
  type3 = [v19 type];
  v79 = v15;
  v80 = v9;
  if ([type3 isEqualToString:@"asset-load-end"])
  {
    goto LABEL_7;
  }

  type4 = [v19 type];
  if ([type4 isEqualToString:@"item-first-audio-frame"])
  {

LABEL_7:
    goto LABEL_8;
  }

  type5 = [v19 type];
  v44 = [type5 isEqualToString:@"item-failed"];

  v42 = v19;
  if (v44)
  {
LABEL_8:
    if ([(MPCRTCEventConsumer *)self _shouldReportItemAssetLoad:v12 forItemEvent:v19])
    {
      v22 = [(MPCRTCEventConsumer *)self _payloadForItemAssetLoad:v12 fromItemEvent:v19];
      v23 = [v22 objectForKeyedSubscript:@"createAssetDuration"];
      [v9 setObject:v23 forKeyedSubscript:@"initialItemLoadDuration"];

      v24 = [v22 objectForKeyedSubscript:@"perceivedPlayStartTime"];
      [v9 setObject:v24 forKeyedSubscript:@"perceivedPlayStartTime"];

      v25 = [v22 objectForKeyedSubscript:@"errorCode"];

      if (v25)
      {
        v26 = [v22 objectForKeyedSubscript:@"errorCode"];
        [v9 setObject:v26 forKeyedSubscript:@"errorCode"];

        v27 = [v22 objectForKeyedSubscript:@"errorDomain"];
        [v9 setObject:v27 forKeyedSubscript:@"errorDomain"];
      }
    }

    else
    {
      v22 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        type6 = [v19 type];
        v29 = +[MPCRTCEventConsumer dateFormatter];
        date = [v19 date];
        v31 = [v29 stringFromDate:date];
        *buf = 138543618;
        v86 = type6;
        v87 = 2114;
        v88 = v31;
        _os_log_impl(&dword_1C5C61000, v22, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: _payloadForSessionStart: Invalid item start event. type=%{public}@ date=%{public}@", buf, 0x16u);

        v9 = v80;
      }
    }

    v83 = @"queue-section-id";
    payload2 = [v19 payload];
    v33 = [payload2 objectForKeyedSubscript:@"queue-section-id"];
    v84 = v33;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
    v35 = [v12 findPreviousEventWithType:@"queue-load-end" matchingPayload:v34];

    if (v35)
    {
      payload3 = [v35 payload];
      v37 = [payload3 objectForKeyedSubscript:@"queue-rtc-service-id"];

      if (v37)
      {
        [v9 setObject:v37 forKeyedSubscript:@"serviceName"];
      }

      else
      {
        v71 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          v72 = +[MPCRTCEventConsumer dateFormatter];
          date2 = [v35 date];
          v74 = [v72 stringFromDate:date2];
          *buf = 138543362;
          v86 = v74;
          _os_log_impl(&dword_1C5C61000, v71, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: _payloadForSessionStart: serviceName=nil for queueLoadEndEvent date=%{public}@", buf, 0xCu);

          v9 = v80;
        }
      }

      v42 = v35;
    }

    else
    {
      v37 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        type7 = [v19 type];
        v39 = +[MPCRTCEventConsumer dateFormatter];
        date3 = [v19 date];
        v41 = [v39 stringFromDate:date3];
        *buf = 138543618;
        v86 = type7;
        v87 = 2114;
        v88 = v41;
        _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: _payloadForSessionStart: No QueueLoadEndEvent type=%{public}@ date=%{public}@", buf, 0x16u);

        v9 = v80;
      }

      v42 = v19;
    }

    if (!v42)
    {
      goto LABEL_40;
    }

    goto LABEL_21;
  }

  if (!v19)
  {
LABEL_40:
    v75 = v12;
    v60 = v19;
    v61 = v75;
    goto LABEL_41;
  }

LABEL_21:
  type8 = [v42 type];
  v46 = [type8 isEqualToString:@"queue-load-end"];

  if (v46)
  {
    v47 = [(MPCRTCEventConsumer *)self _payloadForQueueLoad:v12 fromQueueLoadEndEvent:v42];
    v48 = [v47 objectForKeyedSubscript:@"queueType"];
    [v9 setObject:v48 forKeyedSubscript:@"initialQueueType"];

    v49 = [v47 objectForKeyedSubscript:@"queueLoadDuration"];
    [v9 setObject:v49 forKeyedSubscript:@"initialQueueLoadDuration"];

    v50 = [v47 objectForKeyedSubscript:@"queueEndpoint"];
    [v9 setObject:v50 forKeyedSubscript:@"initialQueueFeatureName"];

    v51 = [v47 objectForKeyedSubscript:@"errorCode"];

    if (v51)
    {
      v52 = [v47 objectForKeyedSubscript:@"errorCode"];
      [v9 setObject:v52 forKeyedSubscript:@"errorCode"];

      v53 = [v47 objectForKeyedSubscript:@"errorDomain"];
      [v9 setObject:v53 forKeyedSubscript:@"errorDomain"];
    }
  }

  type9 = [v42 type];
  v55 = [type9 isEqualToString:@"session-restore-end"];

  if (v55)
  {
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"stateRestoration"];
    payload4 = [v42 payload];
    v57 = [payload4 objectForKeyedSubscript:@"session-restoration-error"];
    [(MPCRTCEventConsumer *)self _addErrors:v57 toPayload:v9];

    v58 = v12;
    v59 = [v12 findPreviousEventWithType:@"session-restore-begin" matchingPayload:0];

    v42 = v59;
    if (!v59)
    {
      v60 = v19;
      v61 = v58;
      goto LABEL_41;
    }
  }

  else
  {
    v58 = v12;
  }

  v60 = v19;
  type10 = [v42 type];
  v63 = [type10 isEqualToString:@"session-migrate-end"];

  if (v63)
  {
    payload5 = [v42 payload];
    v65 = [payload5 objectForKeyedSubscript:@"session-migration-error"];
    [(MPCRTCEventConsumer *)self _addErrors:v65 toPayload:v9];

    v61 = v58;
    v66 = [v58 findPreviousEventWithType:@"session-migrate-begin" matchingPayload:0];

    v42 = v66;
    if (!v66)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v61 = v58;
  }

  v82[0] = @"session-begin";
  v82[1] = @"session-restore-begin";
  v82[2] = @"session-migrate-begin";
  v82[3] = @"session-reset";
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:4];
  type11 = [v42 type];
  v69 = [v67 containsObject:type11];

  v70 = v42;
  if ((v69 & 1) == 0)
  {
LABEL_41:
    v81[0] = @"session-begin";
    v81[1] = @"session-restore-begin";
    v81[2] = @"session-migrate-begin";
    v81[3] = @"session-reset";
    v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:4];
    v70 = [v61 findPreviousEventWithTypes:v76 matchingPayload:0];
  }

  v77 = [(MPCRTCEventConsumer *)self _networkType:v61 fromEvent:v70];
  [v80 setObject:v77 forKeyedSubscript:@"initialNetworkType"];

  return v80;
}

- (void)_sendReportForItemSummaryWithEndReason:(id)reason cursor:(id)cursor event:(id)event
{
  reasonCopy = reason;
  cursorCopy = cursor;
  v9 = [(MPCRTCEventConsumer *)self _payloadForItemSummary:cursorCopy fromEvent:event];
  v10 = [(MPCRTCEventConsumer *)self _networkSignalPayload:cursorCopy];

  [v9 addEntriesFromDictionary:v10];
  if (reasonCopy)
  {
    [v9 setObject:reasonCopy forKeyedSubscript:@"endReason"];
  }

  [(MPCRTCEventConsumer *)self _performABCSnapshotWithPayloadIfNecessary:v9];
  v11 = [v9 objectForKeyedSubscript:@"errorCode"];
  if (v11)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  [(MPCRTCEventConsumer *)self _sendOneMessageWithCategory:1006 type:v12 payload:v9];
}

- (id)_networkSignalPayload:(uint64_t)payload
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (payload)
  {
    v2 = MEMORY[0x1E695DF90];
    v3 = a2;
    v4 = objc_alloc_init(v2);
    v17[0] = @"network-type-changed";
    v17[1] = @"network-reachability-changed";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v6 = [v3 findPreviousEventWithTypes:v5 matchingPayload:0];

    if (v6)
    {
      payload = [v6 payload];
      v8 = [payload objectForKeyedSubscript:@"network-signal-info"];
      v9 = v8;
      v10 = MEMORY[0x1E695E0F8];
      if (v8)
      {
        v11 = v8;
      }

      else
      {
        v11 = MEMORY[0x1E695E0F8];
      }

      [v4 addEntriesFromDictionary:v11];

      payload2 = [v6 payload];
      v13 = [payload2 objectForKeyedSubscript:@"network-signal-strength"];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v10;
      }

      [v4 addEntriesFromDictionary:v15];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_sendReportForItemAssetLoad:(id)load event:(id)event
{
  v22 = *MEMORY[0x1E69E9840];
  loadCopy = load;
  eventCopy = event;
  v8 = [loadCopy findPreviousEventWithType:@"item-begin" matchingPayload:0];
  if (v8)
  {
    v9 = [(MPCRTCEventConsumer *)self _payloadForItemAssetLoad:loadCopy fromItemEvent:eventCopy];
    v10 = [(MPCRTCEventConsumer *)self _networkSignalPayload:loadCopy];
    [v9 addEntriesFromDictionary:v10];

    if (self->_pendingQOSMetricsPayload)
    {
      [v9 addEntriesFromDictionary:?];
    }

    v11 = [v9 objectForKeyedSubscript:@"errorCode"];
    if (v11)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [(MPCRTCEventConsumer *)self _performABCSnapshotWithPayloadIfNecessary:v9];
    [(MPCRTCEventConsumer *)self _sendOneMessageWithCategory:1005 type:v12 payload:v9];
  }

  else
  {
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      type = [eventCopy type];
      v15 = +[MPCRTCEventConsumer dateFormatter];
      date = [eventCopy date];
      v17 = [v15 stringFromDate:date];
      v18 = 138543618;
      v19 = type;
      v20 = 2114;
      v21 = v17;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_ERROR, "MPCRTCEventConsumer: No itemBeginEvent type=%{public}@ date=%{public}@", &v18, 0x16u);
    }
  }
}

- (void)_sendQueueLoadEventIfNeeded:(id)needed forItemEvent:(id)event
{
  v39[3] = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  eventCopy = event;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__3967;
  v33 = __Block_byref_object_dispose__3968;
  v34 = 0;
  v8 = [neededCopy cursorFromEvent:eventCopy untilEvent:0];
  v39[0] = @"asset-load-end";
  v39[1] = @"item-failed";
  v39[2] = @"item-first-audio-frame";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __64__MPCRTCEventConsumer__sendQueueLoadEventIfNeeded_forItemEvent___block_invoke;
  v26[3] = &unk_1E8231F38;
  v26[4] = self;
  v10 = neededCopy;
  v27 = v10;
  v28 = &v29;
  [v8 enumeratePreviousEventsWithTypes:v9 usingBlock:v26];

  payload = [eventCopy payload];
  v12 = [payload objectForKeyedSubscript:@"queue-section-id"];

  payload2 = [v30[5] payload];
  v14 = [payload2 objectForKeyedSubscript:@"queue-section-id"];
  v15 = [v12 isEqualToString:v14];

  if ((v15 & 1) == 0)
  {
    v37 = @"queue-section-id";
    v38 = v12;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v17 = [v10 findPreviousEventWithType:@"queue-load-end" matchingPayload:v16];

    v18 = [(MPCRTCEventConsumer *)self _sessionCursorWithCursor:v10 fromEvent:eventCopy];
    v35 = @"queue-section-id";
    v36 = v12;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v20 = [(MPCRTCEventConsumer *)self _firstItemAssetLoadEventWithCursor:v18 fromEvent:eventCopy matchingPayload:v19];

    if (v17 && v20 == eventCopy)
    {
      v21 = [(MPCRTCEventConsumer *)self _payloadForQueueLoad:v10 fromQueueLoadEndEvent:v17];
      v22 = [(MPCRTCEventConsumer *)self _networkSignalPayload:v10];
      [v21 addEntriesFromDictionary:v22];

      payload3 = [v17 payload];
      v24 = [payload3 objectForKeyedSubscript:@"queue-load-error"];
      if (v24)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      [(MPCRTCEventConsumer *)self _sendOneMessageWithCategory:1004 type:v25 payload:v21];
    }
  }

  _Block_object_dispose(&v29, 8);
}

void __64__MPCRTCEventConsumer__sendQueueLoadEventIfNeeded_forItemEvent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([(MPCRTCEventConsumer *)*(a1 + 32) _shouldReportItemAssetLoad:v6 forItemEvent:?])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_sendReportForSessionStart:(id)start event:(id)event withType:(int64_t)type
{
  startCopy = start;
  v10 = [(MPCRTCEventConsumer *)self _payloadForSessionStart:startCopy fromEvent:event];
  v9 = [(MPCRTCEventConsumer *)self _networkSignalPayload:startCopy];

  [v10 addEntriesFromDictionary:v9];
  [(MPCRTCEventConsumer *)self _sendOneMessageWithCategory:1002 type:type payload:v10];
}

- (void)_sendSessionStartIfNeeded:(id)needed forItemEvent:(id)event
{
  neededCopy = needed;
  eventCopy = event;
  v7 = [(MPCRTCEventConsumer *)self _sessionCursorWithCursor:neededCopy fromEvent:0];
  v8 = [(MPCRTCEventConsumer *)self _firstItemAssetLoadEventWithCursor:v7 fromEvent:eventCopy matchingPayload:0];
  if (v8 == eventCopy)
  {
    type = [eventCopy type];
    if ([type isEqualToString:@"item-first-audio-frame"])
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    [(MPCRTCEventConsumer *)self _sendReportForSessionStart:neededCopy event:eventCopy withType:v10];
  }
}

- (void)_sendReportForSessionSummary:(id)summary event:(id)event withType:(int64_t)type
{
  summaryCopy = summary;
  v10 = [(MPCRTCEventConsumer *)self _payloadForSessionSummary:summaryCopy fromEvent:event];
  v9 = [(MPCRTCEventConsumer *)self _networkSignalPayload:summaryCopy];

  [v10 addEntriesFromDictionary:v9];
  [(MPCRTCEventConsumer *)self _sendOneMessageWithCategory:1003 type:type payload:v10];
}

- (void)_handleReportingForItemStartEvent:(id)event event:(id)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v7 = a4;
  if ([(MPCRTCEventConsumer *)self _shouldReportItemAssetLoad:eventCopy forItemEvent:v7])
  {
    if (!self->_pendingItemSummaryEvent)
    {
      v8 = [eventCopy cursorFromEvent:v7 untilEvent:0];
      v12[0] = @"remote-control-begin";
      v12[1] = @"remote-control-end";
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
      v10 = [v8 findPreviousEventWithTypes:v9 matchingPayload:0];

      type = [v10 type];

      if (type == @"remote-control-begin")
      {
        objc_storeStrong(&self->_pendingItemSummaryEvent, a4);

        goto LABEL_6;
      }
    }

    [(MPCRTCEventConsumer *)self _sendSessionStartIfNeeded:eventCopy forItemEvent:v7];
    [(MPCRTCEventConsumer *)self _sendQueueLoadEventIfNeeded:eventCopy forItemEvent:v7];
    [(MPCRTCEventConsumer *)self _sendReportForItemAssetLoad:eventCopy event:v7];
  }

LABEL_6:
}

- (void)subscribeToEventStream:(id)stream
{
  objc_storeStrong(&self->_subscription, stream);
  streamCopy = stream;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke;
  v17[3] = &unk_1E8232330;
  v17[4] = self;
  [streamCopy subscribeToEventType:@"session-reset" handler:v17];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_2;
  v16[3] = &unk_1E8232330;
  v16[4] = self;
  [streamCopy subscribeToEventType:@"session-end" handler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_3;
  v15[3] = &unk_1E8232330;
  v15[4] = self;
  [streamCopy subscribeToEventType:@"application-termination" handler:v15];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_4;
  v14[3] = &unk_1E8232330;
  v14[4] = self;
  [streamCopy subscribeToEventType:@"session-restore-end" handler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_5;
  v13[3] = &unk_1E8232330;
  v13[4] = self;
  [streamCopy subscribeToEventType:@"session-migrate-end" handler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_6;
  v12[3] = &unk_1E8232330;
  v12[4] = self;
  [streamCopy subscribeToEventType:@"remote-control-end" handler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_7;
  v11[3] = &unk_1E8232330;
  v11[4] = self;
  [streamCopy subscribeToEventType:@"item-first-audio-frame" handler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_8;
  v10[3] = &unk_1E8232330;
  v10[4] = self;
  [streamCopy subscribeToEventType:@"item-failed" handler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_9;
  v9[3] = &unk_1E8232330;
  v9[4] = self;
  [streamCopy subscribeToEventType:@"asset-load-end" handler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_10;
  v8[3] = &unk_1E8232330;
  v8[4] = self;
  [streamCopy subscribeToEventType:@"item-end" handler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_11;
  v7[3] = &unk_1E8232330;
  v7[4] = self;
  [streamCopy subscribeToEventType:@"remote-control-begin" handler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_12;
  v6[3] = &unk_1E8232330;
  v6[4] = self;
  [streamCopy subscribeToEventType:@"queue-load-end" handler:v6];
}

uint64_t __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([(MPCRTCEventConsumer *)*(a1 + 32) _shouldReportSessionEnd:v6 forEvent:v5])
  {
    [*(a1 + 32) _sendReportForSessionSummary:v6 event:v5 withType:1];
  }

  return 1;
}

uint64_t __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([(MPCRTCEventConsumer *)*(a1 + 32) _shouldReportSessionEnd:v6 forEvent:v5])
  {
    [*(a1 + 32) _sendReportForSessionSummary:v6 event:v5 withType:1];
  }

  return 1;
}

uint64_t __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([(MPCRTCEventConsumer *)*(a1 + 32) _shouldReportSessionEnd:v6 forEvent:v5])
  {
    [*(a1 + 32) _sendReportForSessionSummary:v6 event:v5 withType:1];
  }

  if ([(MPCRTCEventConsumer *)*(a1 + 32) _shouldReportItemSummary:v6 forEvent:v5])
  {
    [*(a1 + 32) _sendReportForItemSummaryWithEndReason:@"endSession" cursor:v6 event:v5];
  }

  return 1;
}

uint64_t __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"session-restoration-error"];

  if (v8)
  {
    [*(a1 + 32) _sendReportForSessionStart:v6 event:v5 withType:2];
  }

  return 1;
}

uint64_t __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"session-migration-error"];

  if (v8)
  {
    [*(a1 + 32) _sendReportForSessionStart:v6 event:v5 withType:2];
  }

  return 1;
}

uint64_t __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (*(*(a1 + 32) + 40))
  {
    v6 = [a2 payload];
    v7 = [v6 objectForKeyedSubscript:@"qos-toolkit-metrics"];

    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v8 setObject:v7 forKeyedSubscript:@"qosToolkitMetrics"];
      v9 = *(a1 + 32);
      v10 = *(v9 + 48);
      *(v9 + 48) = v8;
    }

    v11 = [v5 cursorFromEvent:*(*(a1 + 32) + 40) untilEvent:0];
    [*(a1 + 32) _handleReportingForItemStartEvent:v11 event:*(*(a1 + 32) + 40)];
    v12 = *(a1 + 32);
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;

    v14 = *(a1 + 32);
    v15 = *(v14 + 48);
    *(v14 + 48) = 0;
  }

  return 1;
}

uint64_t __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [(MPCRTCEventConsumer *)v5 _shouldReportItemSummary:v6 forEvent:v7];
  v9 = *(a1 + 32);
  if (v8)
  {
    [v9 _sendReportForItemSummaryWithEndReason:@"fail" cursor:v6 event:v7];
  }

  else
  {
    [v9 _handleReportingForItemStartEvent:v6 event:v7];
  }

  return 1;
}

uint64_t __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([(MPCRTCEventConsumer *)*(a1 + 32) _shouldReportItemSummary:v6 forEvent:v5])
  {
    [*(a1 + 32) _sendReportForItemSummary:v6 event:v5];
  }

  return 1;
}

uint64_t __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 32);
  if (!*(v8 + 32))
  {
    v9 = [v6 payload];
    v10 = [v9 objectForKeyedSubscript:@"remote-control-type"];
    v11 = [v10 unsignedIntValue];

    v8 = *(a1 + 32);
    if (v11 == 122)
    {
      objc_storeStrong((v8 + 32), a2);
      v8 = *(a1 + 32);
    }
  }

  if ([(MPCRTCEventConsumer *)v8 _shouldReportSessionEnd:v7 forEvent:v6])
  {
    v17[0] = @"item-begin";
    v17[1] = @"item-first-audio-frame";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v13 = [v7 findPreviousEventWithTypes:v12 matchingPayload:0];

    if (v13)
    {
      v14 = [v13 type];
      v15 = [v14 isEqualToString:@"item-first-audio-frame"];

      if (v15)
      {
        [*(a1 + 32) _sendReportForItemSummaryWithEndReason:@"endSession" cursor:v7 event:v6];
      }
    }

    [*(a1 + 32) _sendReportForSessionSummary:v7 event:v6 withType:1];
  }

  return 1;
}

uint64_t __46__MPCRTCEventConsumer_subscribeToEventStream___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"queue-load-error"];

  if (v8)
  {
    v9 = [*(a1 + 32) _payloadForQueueLoad:v6 fromQueueLoadEndEvent:v5];
    [*(a1 + 32) _sendOneMessageWithCategory:1004 type:2 payload:v9];
  }

  return 1;
}

- (uint64_t)_shouldReportSessionEnd:(void *)end forEvent:
{
  v32[3] = *MEMORY[0x1E69E9840];
  endCopy = end;
  if (self)
  {
    v6 = [(MPCRTCEventConsumer *)self _sessionCursorWithCursor:a2 fromEvent:0];
    if ([v6 countOfPreviousEventsWithType:@"item-first-audio-frame" matchingPayload:0])
    {
      type = [endCopy type];
      v8 = [type isEqualToString:@"remote-control-begin"];

      if (v8)
      {
        payload = [endCopy payload];
        v10 = [payload objectForKeyedSubscript:@"remote-control-type"];
        if ([v10 unsignedIntValue] == 1)
        {
          payload2 = [endCopy payload];
          v12 = [payload2 objectForKeyedSubscript:@"remote-control-source"];
          v13 = [v12 containsString:@"migrationPlaybackSession"];

          if (v13)
          {
            goto LABEL_11;
          }
        }

        else
        {
        }
      }

      type2 = [endCopy type];
      if ([type2 isEqualToString:@"session-end"])
      {

LABEL_11:
        self = 1;
LABEL_17:

        goto LABEL_18;
      }

      type3 = [endCopy type];
      v16 = [type3 isEqualToString:@"session-reset"];

      if (v16)
      {
        goto LABEL_11;
      }

      type4 = [endCopy type];
      v18 = [type4 isEqualToString:@"application-termination"];

      if (v18)
      {
        v32[0] = @"item-first-audio-frame";
        v32[1] = @"session-end";
        v32[2] = @"session-reset";
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
        v20 = [v6 findPreviousEventWithTypes:v19 matchingPayload:0];

        type5 = [v20 type];
        v22 = [type5 isEqualToString:@"item-first-audio-frame"];

        if (v22)
        {
          goto LABEL_11;
        }
      }

      v31[0] = @"session-begin";
      v31[1] = @"session-migrate-begin";
      v31[2] = @"session-restore-begin";
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
      type6 = [endCopy type];
      v25 = [v23 containsObject:type6];

      if (v25)
      {
        v30[0] = @"item-first-audio-frame";
        v30[1] = @"session-end";
        v30[2] = @"session-reset";
        v30[3] = @"application-termination";
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
        v27 = [v6 findPreviousEventWithTypes:v26 matchingPayload:0];

        type7 = [v27 type];
        self = [type7 isEqualToString:@"item-first-audio-frame"];

        goto LABEL_17;
      }
    }

    self = 0;
    goto LABEL_17;
  }

LABEL_18:

  return self;
}

- (BOOL)_shouldReportItemSummary:(void *)summary forEvent:
{
  v34[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  summaryCopy = summary;
  if (!self)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v7 = [(MPCRTCEventConsumer *)self _sessionCursorWithCursor:v5 fromEvent:summaryCopy];
  v34[0] = @"item-begin";
  v34[1] = @"item-first-audio-frame";
  v34[2] = @"item-failed";
  v34[3] = @"item-end";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
  v9 = [v7 findPreviousEventWithTypes:v8 matchingPayload:0];

  type = [summaryCopy type];
  v11 = [type isEqualToString:@"item-end"];

  if (!v11)
  {
LABEL_7:
    if (!v9)
    {
LABEL_11:
      v18 = 0;
      goto LABEL_12;
    }

    type2 = [v9 type];
    if ([type2 isEqualToString:@"item-end"])
    {
LABEL_9:

      goto LABEL_11;
    }

    type3 = [v9 type];
    v21 = [type3 isEqualToString:@"item-failed"];

    if (v21)
    {
      goto LABEL_11;
    }

    type4 = [summaryCopy type];
    if ([type4 isEqualToString:@"item-failed"])
    {
      type5 = [v9 type];
      if ([type5 isEqualToString:@"item-first-audio-frame"])
      {
        payload = [v9 payload];
        v26 = [payload objectForKeyedSubscript:@"queue-item-id"];
        payload2 = [summaryCopy payload];
        v28 = [payload2 objectForKeyedSubscript:@"queue-item-id"];
        v31 = [v26 isEqualToString:v28];

        if (v31)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

LABEL_20:
    type2 = [summaryCopy type];
    if (([type2 isEqualToString:@"application-termination"] & 1) == 0)
    {
      goto LABEL_9;
    }

    type6 = [v9 type];
    v30 = [type6 isEqualToString:@"item-first-audio-frame"];

    if ((v30 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v18 = 1;
    goto LABEL_12;
  }

  v32 = @"queue-item-id";
  payload3 = [summaryCopy payload];
  v13 = [payload3 objectForKeyedSubscript:@"queue-item-id"];
  v33 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v15 = [v7 findPreviousEventWithType:@"item-begin" matchingPayload:v14];
  v16 = [v5 cursorFromEvent:summaryCopy untilEvent:v15];
  v17 = [v16 findPreviousEventWithType:@"item-failed" matchingPayload:v14];
  v18 = v17 == 0;

  if (!v17 && [v16 countOfPreviousEventsWithType:@"item-first-audio-frame" matchingPayload:v14] <= 0)
  {

    goto LABEL_7;
  }

LABEL_12:
LABEL_13:

  return v18;
}

- (void)setTestingDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = os_log_create("com.apple.amp.mediaplaybackcore", "Reporting");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "MPCRTCEventConsumer: testingDelegate set. RTC messages will not be sent.", v6, 2u);
  }

  objc_storeWeak(&self->_testingDelegate, delegateCopy);
}

+ (id)dateFormatter
{
  if (dateFormatter_onceToken != -1)
  {
    dispatch_once(&dateFormatter_onceToken, &__block_literal_global_35);
  }

  v3 = dateFormatter___formatter;

  return v3;
}

uint64_t __36__MPCRTCEventConsumer_dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = dateFormatter___formatter;
  dateFormatter___formatter = v0;

  v2 = dateFormatter___formatter;

  return [v2 setDateFormat:@"YYYY-MM-dd HH:mm:ss.SSSXX"];
}

+ (id)NSStringFromMPCRTCReportingEventCategory:(int64_t)category
{
  if (category > 1002)
  {
    if (category > 1004)
    {
      if (category == 1005)
      {
        category = @"ItemAssetLoad";
      }

      else
      {
        if (category != 1006)
        {
LABEL_34:
          category = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnexpectedCategory:%d", category];

          return category;
        }

        category = @"ItemSummary";
      }
    }

    else if (category == 1003)
    {
      category = @"SessionSummary";
    }

    else
    {
      category = @"QueueLoad";
    }
  }

  else if (category > 1000)
  {
    if (category == 1001)
    {
      category = @"SecureKeyLoad";
    }

    else
    {
      category = @"SessionStart";
    }
  }

  else
  {
    if (category)
    {
      if (category == 1000)
      {
        category = @"NetworkInterfaceChange";

        return category;
      }

      goto LABEL_34;
    }

    category = @"None";
  }

  return category;
}

+ (id)rtcIdentifiersFromUniversalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  v5 = v4;
  if (identifiersCopy)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(identifiersCopy, "adamID")}];
    [v5 setObject:v6 forKeyedSubscript:@"adamid"];

    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(identifiersCopy, "purchasedAdamID")}];
    [v5 setObject:v7 forKeyedSubscript:@"padamid"];

    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(identifiersCopy, "subscriptionAdamID")}];
    [v5 setObject:v8 forKeyedSubscript:@"sadamid"];

    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(identifiersCopy, "assetAdamID")}];
    [v5 setObject:v9 forKeyedSubscript:@"aadamid"];
  }

  else
  {
    [v4 setObject:&unk_1F4599100 forKeyedSubscript:@"adamid"];
    [v5 setObject:&unk_1F4599100 forKeyedSubscript:@"padamid"];
    [v5 setObject:&unk_1F4599100 forKeyedSubscript:@"sadamid"];
    [v5 setObject:&unk_1F4599100 forKeyedSubscript:@"aadamid"];
  }

  return v5;
}

+ (id)rtcIdentifiersFromRadioIdentifiers:(id)identifiers
{
  v3 = MEMORY[0x1E695DF90];
  identifiersCopy = identifiers;
  v5 = [v3 dictionaryWithCapacity:2];
  stationStringID = [identifiersCopy stationStringID];
  v7 = stationStringID;
  if (stationStringID)
  {
    v8 = stationStringID;
  }

  else
  {
    v8 = &stru_1F454A698;
  }

  [v5 setObject:v8 forKeyedSubscript:@"raid"];

  stationEventID = [identifiersCopy stationEventID];

  if (stationEventID)
  {
    v10 = stationEventID;
  }

  else
  {
    v10 = &stru_1F454A698;
  }

  [v5 setObject:v10 forKeyedSubscript:@"raidev"];

  return v5;
}

+ (id)playerServiceNameWithPlayerID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:@"Music"])
  {
    v4 = @"app.music";
  }

  else if ([dCopy isEqualToString:@"Podcasts"])
  {
    v4 = @"app.podcasts";
  }

  else if ([dCopy isEqualToString:@"com.apple.music.classical"])
  {
    v4 = @"app.music.classical";
  }

  else
  {
    v4 = @"app.musickit";
  }

  return v4;
}

+ (id)identifierStringFromItemIdentifiers:(id)identifiers radioIdentifiers:(id)radioIdentifiers
{
  v5 = MEMORY[0x1E696AD60];
  radioIdentifiersCopy = radioIdentifiers;
  identifiersCopy = identifiers;
  string = [v5 string];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__MPCRTCEventConsumer_identifierStringFromItemIdentifiers_radioIdentifiers___block_invoke_2;
  v16[3] = &unk_1E8231EC8;
  v9 = string;
  v17 = v9;
  [identifiersCopy msv_enumerateKeysAndObjectsOrderedByKeyComparator:&__block_literal_global_4040 usingBlock:v16];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__MPCRTCEventConsumer_identifierStringFromItemIdentifiers_radioIdentifiers___block_invoke_4;
  v14[3] = &unk_1E82372B0;
  v10 = v9;
  v15 = v10;
  [radioIdentifiersCopy msv_enumerateKeysAndObjectsOrderedByKeyComparator:&__block_literal_global_4 usingBlock:v14];

  v11 = v15;
  v12 = v10;

  return v10;
}

void __76__MPCRTCEventConsumer_identifierStringFromItemIdentifiers_radioIdentifiers___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 stringValue];
  [v4 appendFormat:@"%@=%@, ", v5, v6];
}

@end