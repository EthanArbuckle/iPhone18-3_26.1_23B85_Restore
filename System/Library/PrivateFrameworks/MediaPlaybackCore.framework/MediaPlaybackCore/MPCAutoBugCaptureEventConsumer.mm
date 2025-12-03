@interface MPCAutoBugCaptureEventConsumer
- (BOOL)shouldReportError:(id)error;
- (void)autoBugCaptureWithSubType:(id)type context:(id)context triggerThresholdValues:(id)values events:(id)events;
- (void)subscribeToEventStream:(id)stream;
@end

@implementation MPCAutoBugCaptureEventConsumer

- (void)autoBugCaptureWithSubType:(id)type context:(id)context triggerThresholdValues:(id)values events:(id)events
{
  v28 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  contextCopy = context;
  valuesCopy = values;
  eventsCopy = events;
  contextCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", typeCopy, contextCopy];
  v15 = [contextCopy hash];

  reportedBugSignatures = self->_reportedBugSignatures;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
  LOBYTE(reportedBugSignatures) = [(NSMutableSet *)reportedBugSignatures containsObject:v17];

  if (reportedBugSignatures)
  {
    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics_Oversize");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v23 = typeCopy;
      v24 = 2114;
      v25 = contextCopy;
      v26 = 2114;
      v27 = eventsCopy;
      v19 = "PlayPerf ABC [discarded] subtype:%{public}@ context:%{public}@ events:%{public}@";
LABEL_6:
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0x20u);
    }
  }

  else
  {
    v20 = self->_reportedBugSignatures;
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    [(NSMutableSet *)v20 addObject:v21];

    [MEMORY[0x1E69B13D8] snapshotWithDomain:*MEMORY[0x1E69B1340] type:@"Performance" subType:typeCopy context:contextCopy triggerThresholdValues:valuesCopy events:eventsCopy completion:0];
    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Analytics_Oversize");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v23 = typeCopy;
      v24 = 2114;
      v25 = contextCopy;
      v26 = 2114;
      v27 = eventsCopy;
      v19 = "PlayPerf ABC [reported] subtype:%{public}@ context:%{public}@ events:%{public}@";
      goto LABEL_6;
    }
  }
}

- (BOOL)shouldReportError:(id)error
{
  if (!error)
  {
    return 0;
  }

  v3 = [error msv_errorByUnwrappingDomain:@"MPCError"];
  code = [v3 code];

  return code != 28 && (code & 0xFFFFFFFFFFFFFFDFLL) != 24;
}

- (void)subscribeToEventStream:(id)stream
{
  objc_storeStrong(&self->_subscription, stream);
  streamCopy = stream;
  v6 = [MEMORY[0x1E695DFA8] set];
  reportedBugSignatures = self->_reportedBugSignatures;
  self->_reportedBugSignatures = v6;

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__MPCAutoBugCaptureEventConsumer_subscribeToEventStream___block_invoke;
  v13[3] = &unk_1E8232330;
  v13[4] = self;
  [streamCopy subscribeToEventType:@"remote-control-end" handler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__MPCAutoBugCaptureEventConsumer_subscribeToEventStream___block_invoke_18;
  v12[3] = &unk_1E8232330;
  v12[4] = self;
  [streamCopy subscribeToEventType:@"remote-control-timeout" handler:v12];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__MPCAutoBugCaptureEventConsumer_subscribeToEventStream___block_invoke_2;
  v11[3] = &unk_1E8232330;
  v11[4] = self;
  [streamCopy subscribeToEventType:@"asset-load-end" handler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__MPCAutoBugCaptureEventConsumer_subscribeToEventStream___block_invoke_3;
  v10[3] = &unk_1E8232330;
  v10[4] = self;
  [streamCopy subscribeToEventType:@"item-rate-changed" handler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__MPCAutoBugCaptureEventConsumer_subscribeToEventStream___block_invoke_4;
  v9[3] = &unk_1E8232330;
  v9[4] = self;
  [streamCopy subscribeToEventType:@"item-failed" handler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__MPCAutoBugCaptureEventConsumer_subscribeToEventStream___block_invoke_5;
  v8[3] = &unk_1E8232330;
  v8[4] = self;
  [streamCopy subscribeToEventType:@"item-pause" handler:v8];
}

uint64_t __57__MPCAutoBugCaptureEventConsumer_subscribeToEventStream___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"remote-control-status"];
  v9 = [v8 firstObject];

  if ([v9 type] == 3)
  {
    v10 = *(a1 + 32);
    v11 = [v9 error];
    LODWORD(v10) = [v10 shouldReportError:v11];

    if (v10)
    {
      v42 = a1;
      v46 = @"remote-control-id";
      v12 = [v5 payload];
      v13 = [v12 objectForKeyedSubscript:@"remote-control-id"];
      v47[0] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
      v15 = [v6 findPreviousEventWithType:@"remote-control-begin" matchingPayload:v14];

      v16 = v15;
      v17 = [v6 cursorUntilEvent:v15];
      v44 = @"resolution-type";
      v45 = &unk_1F4599040;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v41 = v17;
      v19 = [v17 findPreviousEventWithType:@"error-resolution" matchingPayload:v18];

      v40 = v19;
      v20 = [v19 payload];
      v21 = [v20 objectForKeyedSubscript:@"error-for-resolution"];

      if (v21 && ([v9 error], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "domain"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "msv_errorByUnwrappingDomain:code:", v23, objc_msgSend(v21, "code")), v24 = objc_claimAutoreleasedReturnValue(), v24, v23, v22, !v24))
      {
        v25 = [v21 msv_analyticSignature];
        v39 = [@"CommandFailure-MissingInnerError-" stringByAppendingString:v25];
      }

      else
      {
        v39 = @"CommandFailure";
      }

      v26 = v16;
      v27 = [v16 payload];
      v28 = [v27 objectForKeyedSubscript:@"remote-control-type"];
      v29 = [v28 unsignedIntValue];

      v30 = MPCRemoteCommandDescriptionCopy(v29);
      v31 = MEMORY[0x1E696AEC0];
      v32 = [v9 error];
      v33 = [v32 msv_analyticSignature];
      v34 = [v31 stringWithFormat:@"%@:%@", v30, v33];

      v35 = _EVSEventToABCEvent(v26);
      v43[0] = v35;
      v36 = _EVSEventToABCEvent(v5);
      v43[1] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];

      [*(v42 + 32) autoBugCaptureWithSubType:v39 context:v34 triggerThresholdValues:0 events:v37];
    }
  }

  return 1;
}

uint64_t __57__MPCAutoBugCaptureEventConsumer_subscribeToEventStream___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22 = @"remote-control-id";
  v5 = a3;
  v6 = a2;
  v7 = [v6 payload];
  v8 = [v7 objectForKeyedSubscript:@"remote-control-id"];
  v23[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v10 = [v5 findPreviousEventWithType:@"remote-control-begin" matchingPayload:v9];

  [v6 durationSinceEvent:v10];
  v12 = v11;
  v13 = [v10 payload];
  v14 = [v13 objectForKeyedSubscript:@"remote-control-type"];
  LODWORD(v7) = [v14 unsignedIntValue];

  v15 = MPCRemoteCommandDescriptionCopy(v7);
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f", v12];
  v17 = _EVSEventToABCEvent(v10);
  v21[0] = v17;
  v18 = _EVSEventToABCEvent(v6);

  v21[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];

  [*(a1 + 32) autoBugCaptureWithSubType:@"CommandTimeout" context:v15 triggerThresholdValues:v16 events:v19];
  return 1;
}

uint64_t __57__MPCAutoBugCaptureEventConsumer_subscribeToEventStream___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"asset-load-error"];

  v9 = [v5 payload];
  v10 = [v9 objectForKeyedSubscript:@"time-control-status"];
  v11 = [v10 integerValue];

  if (v11 == 2 && [*(a1 + 32) shouldReportError:v8])
  {
    v12 = [v8 msv_errorByUnwrappingDomain:*MEMORY[0x1E696A978] code:-1009];

    if (v12)
    {
      v13 = [v6 findPreviousEventWithType:@"network-reachability-changed" matchingPayload:0];
      v14 = [v13 payload];
      v15 = [v14 objectForKeyedSubscript:@"network-reachability"];

      if (v15 && ![v15 integerValue])
      {

        goto LABEL_8;
      }
    }

    v16 = _EVSEventToABCEvent(v5);
    v21[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];

    v18 = *(a1 + 32);
    v19 = [v8 msv_analyticSignature];
    [v18 autoBugCaptureWithSubType:@"ItemLoadFailure" context:v19 triggerThresholdValues:0 events:v17];
  }

LABEL_8:

  return 1;
}

uint64_t __57__MPCAutoBugCaptureEventConsumer_subscribeToEventStream___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"item-rate"];
  [v8 floatValue];
  v10 = v9;

  v11 = [v5 payload];
  v12 = [v11 objectForKeyedSubscript:@"item-rate-change-reason"];

  v13 = [v5 payload];
  v14 = [v13 objectForKeyedSubscript:@"item-rate-change-participant-id"];

  if (!v14 && v10 == 0.0 && ([v12 isEqualToString:*MEMORY[0x1E6987AA8]] & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x1E6987A80]) & 1) == 0)
  {
    v29[0] = @"queue-section-id";
    v15 = [v5 payload];
    v16 = [v15 objectForKeyedSubscript:@"queue-section-id"];
    v29[1] = @"queue-item-id";
    v30[0] = v16;
    v17 = [v5 payload];
    v18 = [v17 objectForKeyedSubscript:@"queue-item-id"];
    v30[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];

    v20 = [v6 findPreviousEventWithType:@"item-rate-changed" matchingPayload:v19];
    v21 = [v20 payload];
    v22 = [v21 objectForKeyedSubscript:@"item-rate"];
    [v22 floatValue];
    v24 = v23;

    if (v24 > 0.0)
    {
      v25 = _EVSEventToABCEvent(v5);
      v28 = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];

      [*(a1 + 32) autoBugCaptureWithSubType:@"ItemUnexpectedRate0" context:v12 triggerThresholdValues:0 events:v26];
    }
  }

  return 1;
}

uint64_t __57__MPCAutoBugCaptureEventConsumer_subscribeToEventStream___block_invoke_4(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 payload];
  v5 = [v4 objectForKeyedSubscript:@"asset-load-error"];

  if ([*(a1 + 32) shouldReportError:v5])
  {
    v6 = _EVSEventToABCEvent(v3);
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

    v8 = *(a1 + 32);
    v9 = [v5 msv_analyticSignature];
    [v8 autoBugCaptureWithSubType:@"ItemUnexpectedEnding" context:v9 triggerThresholdValues:0 events:v7];
  }

  return 1;
}

uint64_t __57__MPCAutoBugCaptureEventConsumer_subscribeToEventStream___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"item-end-position"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [v5 payload];
  v12 = [v11 objectForKeyedSubscript:@"item-rate-change-reason"];

  v13 = -v10;
  if (v10 >= 0.0)
  {
    v13 = v10;
  }

  if (v13 < 2.22044605e-16)
  {
    v14 = v12;
    if (v14 == @"user" || (v15 = v14, v16 = [(__CFString *)v14 isEqual:@"user"], v15, v16))
    {
      v29[0] = @"queue-section-id";
      v17 = [v5 payload];
      v18 = [v17 objectForKeyedSubscript:@"queue-section-id"];
      v29[1] = @"queue-item-id";
      v30[0] = v18;
      v19 = [v5 payload];
      v20 = [v19 objectForKeyedSubscript:@"queue-item-id"];
      v30[1] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];

      v22 = [v6 findPreviousEventWithType:@"item-resume" matchingPayload:v21];
      if (v22)
      {
        [v5 timeIntervalSinceEvent:v22];
        if (v23 > 30.0)
        {
          v24 = _EVSEventToABCEvent(v22);
          v28[0] = v24;
          v25 = _EVSEventToABCEvent(v5);
          v28[1] = v25;
          v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];

          [*(a1 + 32) autoBugCaptureWithSubType:@"ItemStuckAtZero" context:&stru_1F454A698 triggerThresholdValues:0 events:v26];
        }
      }
    }
  }

  return 1;
}

@end