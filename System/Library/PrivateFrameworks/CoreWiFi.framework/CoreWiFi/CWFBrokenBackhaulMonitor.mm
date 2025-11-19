@interface CWFBrokenBackhaulMonitor
- (CWFBrokenBackhaulMonitor)init;
- (int64_t)__mapSymptomsBrokenBackhaulState:(unint64_t)a3;
- (void)__confirmBrokenBackhaulUsingTimeout:(unint64_t)a3 count:(unint64_t)a4 completion:(id)a5;
- (void)__fetchSymptomsBrokenBackhaulStateWithEventID:(unint64_t)a3 completion:(id)a4;
- (void)__performProbeToRemoteEndpointUsingTimeout:(unint64_t)a3 completion:(id)a4;
- (void)__submitCoreAnalyticsEvent;
- (void)__updateBrokenBackhaulState:(int64_t)a3 timestamp:(id)a4 usingQuickProbeTimeout:(unint64_t)a5;
- (void)__updatePendingCoreAnalyticsPayloadWithNewBrokenBackhaulState:(int64_t)a3 usingQuickProbeTimeout:(unint64_t)a4;
- (void)activateWithCompletion:(id)a3;
- (void)confirmBrokenBackhaulUsingTimeout:(unint64_t)a3 count:(unint64_t)a4 preflightPingAddress:(id)a5 completion:(id)a6;
- (void)invalidate;
- (void)reset;
@end

@implementation CWFBrokenBackhaulMonitor

- (CWFBrokenBackhaulMonitor)init
{
  v14.receiver = self;
  v14.super_class = CWFBrokenBackhaulMonitor;
  v2 = [(CWFBrokenBackhaulMonitor *)&v14 init];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.corewifi.bbh.internal", v3);
  v5 = *(v2 + 2);
  *(v2 + 2) = v4;

  if (!*(v2 + 2))
  {
    goto LABEL_6;
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.corewifi.bbh.target", v6);
  v8 = *(v2 + 8);
  *(v2 + 8) = v7;

  if (!*(v2 + 8))
  {
    goto LABEL_6;
  }

  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 2));
  v10 = *(v2 + 5);
  *(v2 + 5) = v9;

  if (!*(v2 + 5) || (v11 = objc_alloc_init(MEMORY[0x1E695DF90]), v12 = *(v2 + 4), *(v2 + 4) = v11, v12, !*(v2 + 4)))
  {
LABEL_6:
    [v2 invalidate];

    return 0;
  }

  return v2;
}

- (void)__submitCoreAnalyticsEvent
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    v3 = [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload copy];
    v4 = CWFGetOSLog();
    if (v4)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = @"com.apple.wifi.bbh-detect";
      v16 = 2114;
      v17 = v3;
      LODWORD(v11) = 22;
      v10 = &v14;
      _os_log_send_and_compose_impl();
    }

    block[5] = MEMORY[0x1E69E9820];
    block[6] = 3221225472;
    block[7] = sub_1E0C161AC;
    block[8] = &unk_1E86E6258;
    v13 = v3;
    v7 = v3;
    AnalyticsSendEventLazy();
  }

  self->_initialIndicationTimestamp = 0;
  [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload removeAllObjects:v10];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C161B4;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(internalQueue, block);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)__updatePendingCoreAnalyticsPayloadWithNewBrokenBackhaulState:(int64_t)a3 usingQuickProbeTimeout:(unint64_t)a4
{
  if (a3 <= 2)
  {
    if (!a3)
    {
      if (!self->_initialIndicationTimestamp)
      {
        return;
      }

      [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"was_submitted_by_reset"];
      goto LABEL_26;
    }

    if (a3 == 1)
    {
      if (!self->_initialIndicationTimestamp)
      {
        return;
      }

      [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"bbh_indicated_not_broken"];
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(clock_gettime_nsec_np(_CLOCK_MONOTONIC) - self->_initialIndicationTimestamp) / 0xF4240];
      pendingMetricSubmissionPayload = self->_pendingMetricSubmissionPayload;
      v7 = @"bbh_latency_not_broken";
      goto LABEL_25;
    }

    if (a3 != 2 || !self->_initialIndicationTimestamp)
    {
      return;
    }

    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"bbh_indicated_detected"];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(clock_gettime_nsec_np(_CLOCK_MONOTONIC) - self->_initialIndicationTimestamp) / 0xF4240];
    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:v11 forKeyedSubscript:@"bbh_latency_detected", v11];
    goto LABEL_20;
  }

  if (a3 <= 4)
  {
    if (a3 != 3)
    {
      if (!self->_initialIndicationTimestamp)
      {
        return;
      }

      [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"bbh_indicated_confirmed"];
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(clock_gettime_nsec_np(_CLOCK_MONOTONIC) - self->_initialIndicationTimestamp) / 0xF4240];
      pendingMetricSubmissionPayload = self->_pendingMetricSubmissionPayload;
      v7 = @"bbh_latency_confirmed";
LABEL_25:
      [(NSMutableDictionary *)pendingMetricSubmissionPayload setObject:v5 forKeyedSubscript:v7];

LABEL_26:

      [(CWFBrokenBackhaulMonitor *)self __submitCoreAnalyticsEvent];
      return;
    }

    if (!self->_initialIndicationTimestamp)
    {
      return;
    }

    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"bbh_indicated_confirmed_by_quick_probe"];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:v10 forKeyedSubscript:@"quick_probe_timeout"];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(clock_gettime_nsec_np(_CLOCK_MONOTONIC) - self->_initialIndicationTimestamp) / 0xF4240];
    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:v13 forKeyedSubscript:@"bbh_latency_confirmed_by_quick_probe", v13];
    goto LABEL_20;
  }

  if (a3 == 6)
  {
    if (!self->_initialIndicationTimestamp)
    {
      return;
    }

    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"bbh_indicated_tcp_friction_strong"];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(clock_gettime_nsec_np(_CLOCK_MONOTONIC) - self->_initialIndicationTimestamp) / 0xF4240];
    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:v14 forKeyedSubscript:@"bbh_latency_tcp_friction_strong", v14];
LABEL_20:

    return;
  }

  if (a3 == 5)
  {
    self->_initialIndicationTimestamp = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload removeAllObjects];
    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"bbh_indicated_tcp_friction_early"];
    [(NSMutableDictionary *)self->_pendingMetricSubmissionPayload setObject:&unk_1F5BBB770 forKeyedSubscript:@"bbh_latency_tcp_friction_early"];
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C165F8;
    block[3] = &unk_1E86E6010;
    block[4] = self;
    dispatch_async(internalQueue, block);
  }
}

- (void)__updateBrokenBackhaulState:(int64_t)a3 timestamp:(id)a4 usingQuickProbeTimeout:(unint64_t)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  if (v9->_brokenBackhaulState != a3)
  {
    [(CWFBrokenBackhaulMonitor *)v9 __updatePendingCoreAnalyticsPayloadWithNewBrokenBackhaulState:a3 usingQuickProbeTimeout:a5];
    if (v9->_brokenBackhaulState != 3 || a3 > 6 || ((1 << a3) & 0x64) == 0)
    {
      v12 = CWFGetOSLog();
      if (v12)
      {
        v13 = CWFGetOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = sub_1E0BD3BE8(v9->_brokenBackhaulState);
        v19 = sub_1E0BCC248(v9->_brokenBackhaulStateUpdatedAt);
        v20 = sub_1E0BD3BE8(a3);
        sub_1E0BCC248(v8);
        v27 = 138544130;
        v28 = v18;
        v29 = 2114;
        v30 = v19;
        v31 = 2114;
        v32 = v20;
        v34 = v33 = 2114;
        _os_log_send_and_compose_impl();
      }

      v9->_brokenBackhaulState = a3;
      v21 = [v8 copy];
      brokenBackhaulStateUpdatedAt = v9->_brokenBackhaulStateUpdatedAt;
      v9->_brokenBackhaulStateUpdatedAt = v21;

      v23 = [(CWFBrokenBackhaulMonitor *)v9 targetQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0C169A8;
      block[3] = &unk_1E86E6010;
      block[4] = v9;
      dispatch_async(v23, block);
    }

    else
    {
      v14 = CWFGetOSLog();
      v15 = v14;
      if (v14)
      {
        v16 = CWFGetOSLog();
      }

      else
      {
        v16 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        sub_1E0BD3BE8(a3);
        v28 = v27 = 138543362;
        _os_log_send_and_compose_impl();
      }
    }
  }

  objc_sync_exit(v9);

  v25 = *MEMORY[0x1E69E9840];
}

- (void)__fetchSymptomsBrokenBackhaulStateWithEventID:(unint64_t)a3 completion:(id)a4
{
  v5 = a4;
  if (!sub_1E0C18B50())
  {
    v9 = 1;
    if (!v5)
    {
LABEL_10:

      return;
    }

LABEL_8:
    if (v9)
    {
      (*(v5 + 2))(v5, 0, 0);
    }

    goto LABEL_10;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E0C16C40;
  v12[3] = &unk_1E86E6448;
  v13 = v5;
  v6 = v12;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v7 = off_1ECE81AA0;
  v18 = off_1ECE81AA0;
  if (!off_1ECE81AA0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E0C18C94;
    v14[3] = &unk_1E86E5600;
    v14[4] = &v15;
    sub_1E0C18C94(v14);
    v7 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (v7)
  {
    v8 = v7(a3, v6);

    v9 = v8 ^ 1;
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_Bool SOFT_managed_event_fetch(uint64_t, __strong managed_event_fetch_one_block_t)"}];
  [v10 handleFailureInFunction:v11 file:@"CWFBrokenBackhaulMonitor.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

- (int64_t)__mapSymptomsBrokenBackhaulState:(unint64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1E0D81900[a3];
  }
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1E0C16FC4;
  handler[3] = &unk_1E86E60B0;
  handler[4] = self;
  notify_register_dispatch("com.apple.symptoms.managed_events.broken-backhaul", &self->_bbhNotifyToken, internalQueue, handler);
  v6 = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C1722C;
  block[3] = &unk_1E86E64C0;
  block[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, block);
}

- (void)invalidate
{
  [(CWFBrokenBackhaulMonitor *)self setUpdatedBrokenBackhaulState:0];
  bbhNotifyToken = self->_bbhNotifyToken;
  if (bbhNotifyToken)
  {
    notify_cancel(bbhNotifyToken);
  }

  metricAutoSubmissionTimer = self->_metricAutoSubmissionTimer;
  if (metricAutoSubmissionTimer)
  {

    dispatch_source_cancel(metricAutoSubmissionTimer);
  }
}

- (void)reset
{
  v3 = [MEMORY[0x1E695DF00] date];
  [(CWFBrokenBackhaulMonitor *)self __updateBrokenBackhaulState:0 timestamp:v3 usingQuickProbeTimeout:0];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1E0C17670;
  v4[3] = &unk_1E86E6470;
  v4[4] = self;
  [(CWFBrokenBackhaulMonitor *)self __fetchSymptomsBrokenBackhaulStateWithEventID:7 completion:v4];
}

- (void)__performProbeToRemoteEndpointUsingTimeout:(unint64_t)a3 completion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AF68];
  v7 = [MEMORY[0x1E695DFF8] URLWithString:@"https://captive.apple.com"];
  v8 = [v6 requestWithURL:v7 cachePolicy:1 timeoutInterval:a3 / 1000.0];

  v9 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
  [v9 setRequestCachePolicy:1];
  [v9 setHTTPMaximumConnectionsPerHost:1];
  [v9 setAllowsCellularAccess:0];
  v10 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v9];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = sub_1E0C17858;
  v17 = &unk_1E86E64E8;
  v18 = v10;
  v19 = v5;
  v11 = v10;
  v12 = v5;
  v13 = [v11 dataTaskWithRequest:v8 completionHandler:&v14];
  [v13 resume];
}

- (void)__confirmBrokenBackhaulUsingTimeout:(unint64_t)a3 count:(unint64_t)a4 completion:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v9 = dispatch_group_create();
  if (a4)
  {
    v10 = 0;
    do
    {
      dispatch_group_enter(v9);
      v11 = CWFGetOSLog();
      if (v11)
      {
        v12 = CWFGetOSLog();
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136447490;
        v30 = "[CWFBrokenBackhaulMonitor __confirmBrokenBackhaulUsingTimeout:count:completion:]";
        v31 = 2082;
        v32 = "CWFBrokenBackhaulMonitor.m";
        v33 = 1024;
        v34 = 440;
        v35 = 2048;
        v36 = v10 + 1;
        v37 = 2048;
        v38 = a4;
        v39 = 2048;
        v40 = a3;
        _os_log_send_and_compose_impl();
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1E0C17BFC;
      v21[3] = &unk_1E86E6538;
      v25 = v10;
      v26 = a4;
      v27 = a3;
      v21[4] = self;
      v24 = v28;
      v23 = v8;
      v22 = v9;
      [(CWFBrokenBackhaulMonitor *)self __performProbeToRemoteEndpointUsingTimeout:a3 completion:v21];

      ++v10;
    }

    while (a4 != v10);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C17F28;
  block[3] = &unk_1E86E6560;
  v19 = v28;
  v20 = a3;
  block[4] = self;
  v18 = v8;
  v15 = v8;
  dispatch_group_notify(v9, internalQueue, block);

  _Block_object_dispose(v28, 8);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)confirmBrokenBackhaulUsingTimeout:(unint64_t)a3 count:(unint64_t)a4 preflightPingAddress:(id)a5 completion:(id)a6
{
  v66 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  if (v10)
  {
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x2020000000;
    v51 = 0;
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x3032000000;
    v48[3] = sub_1E0BC2CF4;
    v48[4] = sub_1E0BC61C4;
    v49 = 0;
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x3032000000;
    v46[3] = sub_1E0BC2CF4;
    v46[4] = sub_1E0BC61C4;
    v47 = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v45 = 0;
    v12 = dispatch_block_create(0, &unk_1F5B89A90);
    v13 = objc_alloc_init(CWFPinger);
    internalQueue = self->_internalQueue;
    notification_block[0] = MEMORY[0x1E69E9820];
    notification_block[1] = 3221225472;
    notification_block[2] = sub_1E0C184A8;
    notification_block[3] = &unk_1E86E6588;
    notification_block[4] = self;
    v15 = v13;
    v37 = v15;
    v40 = v50;
    v41 = v48;
    v16 = v10;
    v38 = v16;
    v39 = v11;
    v42 = a3;
    v43 = a4;
    dispatch_block_notify(v12, internalQueue, notification_block);
    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v16 redactedForWiFi];
      v52 = 136447746;
      v53 = "[CWFBrokenBackhaulMonitor confirmBrokenBackhaulUsingTimeout:count:preflightPingAddress:completion:]";
      v54 = 2082;
      v55 = "CWFBrokenBackhaulMonitor.m";
      v56 = 1024;
      v57 = 512;
      v58 = 2114;
      v59 = v20;
      v60 = 1024;
      v61 = 3;
      v62 = 1024;
      v63 = 1000;
      v64 = 1024;
      v65 = 33;
      _os_log_send_and_compose_impl();
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_1E0C188F4;
    v30[3] = &unk_1E86E65B0;
    v30[4] = self;
    v32 = v50;
    v33 = v46;
    v34 = v48;
    v35 = v44;
    v21 = v12;
    v31 = v21;
    [(CWFPinger *)v15 startPingingToHost:v16 withNumberOfPings:3 completion:v30];
    v22 = dispatch_time(0, 1000000000);
    v23 = self->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C189F4;
    block[3] = &unk_1E86E63D0;
    v28 = v50;
    v29 = v44;
    block[4] = self;
    v27 = v21;
    v24 = v21;
    dispatch_after(v22, v23, block);

    _Block_object_dispose(v44, 8);
    _Block_object_dispose(v46, 8);

    _Block_object_dispose(v48, 8);
    _Block_object_dispose(v50, 8);
  }

  else
  {
    [(CWFBrokenBackhaulMonitor *)self __confirmBrokenBackhaulUsingTimeout:a3 count:a4 completion:v11];
  }

  v25 = *MEMORY[0x1E69E9840];
}

@end