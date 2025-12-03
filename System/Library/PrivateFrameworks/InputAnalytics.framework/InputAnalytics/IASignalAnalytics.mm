@interface IASignalAnalytics
+ (id)actionQueue;
+ (id)xpcClient;
+ (void)asyncSendSignal:(id)signal toChannel:(id)channel withNullableSessionID:(id)d withPayload:(id)payload;
+ (void)asyncSendSignal:(id)signal toChannel:(id)channel withNullableUniqueStringID:(id)d withPayload:(id)payload;
+ (void)invalidateConnection;
+ (void)sendSignal:(id)signal toChannel:(id)channel withNullableSessionID:(id)d withPayload:(id)payload;
+ (void)sendSignal:(id)signal toChannel:(id)channel withNullableUniqueStringID:(id)d withPayload:(id)payload;
+ (void)sendSignal:(id)signal toChannel:(id)channel withPayload:(id)payload;
@end

@implementation IASignalAnalytics

+ (id)xpcClient
{
  v3 = objc_msgSend_xpcEnabled(IAUtility, a2, v2);
  v4 = qword_1ED82C5F0;
  if (v3)
  {
    if (qword_1ED82C5F0)
    {
      goto LABEL_6;
    }

    v5 = objc_alloc_init(IAXPCClient);
    v4 = qword_1ED82C5F0;
  }

  else
  {
    v5 = 0;
  }

  qword_1ED82C5F0 = v5;

LABEL_6:
  v6 = qword_1ED82C5F0;

  return v6;
}

+ (id)actionQueue
{
  if (qword_1ED82C510 != -1)
  {
    sub_1D462D36C();
  }

  v3 = qword_1ED82C5E8;

  return v3;
}

+ (void)invalidateConnection
{
  objc_msgSend_invalidateConnection(qword_1ED82C5F0, a2, v2);
  v3 = qword_1ED82C5F0;
  qword_1ED82C5F0 = 0;
}

+ (void)sendSignal:(id)signal toChannel:(id)channel withPayload:(id)payload
{
  v48 = *MEMORY[0x1E69E9840];
  signalCopy = signal;
  channelCopy = channel;
  payloadCopy = payload;
  v11 = [IASignalAnalyticsObject alloc];
  v13 = objc_msgSend_initWithChannel_signal_sessionIdString_payload_(v11, v12, channelCopy, signalCopy, 0, payloadCopy);
  v14 = sub_1D461102C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend_timestamp(v13, v15, v16);
    objc_msgSend_timeIntervalSinceReferenceDate(v17, v18, v19);
    v21 = v20;
    v24 = objc_msgSend_description(payloadCopy, v22, v23);
    v40 = 138478595;
    v41 = channelCopy;
    v42 = 2113;
    v43 = signalCopy;
    v44 = 2049;
    v45 = v21;
    v46 = 2117;
    v47 = v24;
    _os_log_impl(&dword_1D460F000, v14, OS_LOG_TYPE_DEFAULT, "channel:%{private}@ signal:%{private}@ timestamp:%{private}f payload:%{sensitive}@", &v40, 0x2Au);
  }

  if (objc_msgSend_xpcEnabled(IAUtility, v25, v26))
  {
    v29 = objc_msgSend_xpcClient(self, v27, v28);
    v32 = objc_msgSend_server(v29, v30, v31);

    v34 = objc_opt_respondsToSelector();
    if (v34)
    {
      objc_msgSend_didAction_(v32, v33, v13);
    }

    else
    {
      v36 = sub_1D461102C();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        sub_1D462D380(v36, v37, v38);
      }
    }

    objc_msgSend_reportConnectionStatusSuccessful_(IAServerStats, v35, v34 & 1);
  }

  v39 = *MEMORY[0x1E69E9840];
}

+ (void)sendSignal:(id)signal toChannel:(id)channel withNullableSessionID:(id)d withPayload:(id)payload
{
  v59 = *MEMORY[0x1E69E9840];
  signalCopy = signal;
  channelCopy = channel;
  dCopy = d;
  payloadCopy = payload;
  v14 = [IASignalAnalyticsObject alloc];
  v17 = objc_msgSend_UUIDString(dCopy, v15, v16);
  v19 = objc_msgSend_initWithChannel_signal_sessionIdString_payload_(v14, v18, channelCopy, signalCopy, v17, payloadCopy);

  v20 = sub_1D461102C();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_msgSend_description(dCopy, v21, v22);
    v26 = objc_msgSend_timestamp(v19, v24, v25);
    objc_msgSend_timeIntervalSinceReferenceDate(v26, v27, v28);
    v30 = v29;
    v33 = objc_msgSend_description(payloadCopy, v31, v32);
    v49 = 138478851;
    v50 = channelCopy;
    v51 = 2113;
    v52 = signalCopy;
    v53 = 2113;
    v54 = v23;
    v55 = 2049;
    v56 = v30;
    v57 = 2117;
    v58 = v33;
    _os_log_impl(&dword_1D460F000, v20, OS_LOG_TYPE_DEFAULT, "channel:%{private}@ signal:%{private}@ sessionID:%{private}@ timestamp:%{private}f payload:%{sensitive}@", &v49, 0x34u);
  }

  if (objc_msgSend_xpcEnabled(IAUtility, v34, v35))
  {
    v38 = objc_msgSend_xpcClient(self, v36, v37);
    v41 = objc_msgSend_server(v38, v39, v40);

    v43 = objc_opt_respondsToSelector();
    if (v43)
    {
      objc_msgSend_didAction_(v41, v42, v19);
    }

    else
    {
      v45 = sub_1D461102C();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        sub_1D462D418(v45, v46, v47);
      }
    }

    objc_msgSend_reportConnectionStatusSuccessful_(IAServerStats, v44, v43 & 1);
  }

  v48 = *MEMORY[0x1E69E9840];
}

+ (void)asyncSendSignal:(id)signal toChannel:(id)channel withNullableSessionID:(id)d withPayload:(id)payload
{
  signalCopy = signal;
  channelCopy = channel;
  dCopy = d;
  payloadCopy = payload;
  v16 = objc_msgSend_now(MEMORY[0x1E695DF00], v14, v15);
  v19 = objc_msgSend_actionQueue(self, v17, v18);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1D461724C;
  v25[3] = &unk_1E8489860;
  v26 = channelCopy;
  v27 = signalCopy;
  v28 = dCopy;
  v29 = v16;
  v30 = payloadCopy;
  selfCopy = self;
  v20 = payloadCopy;
  v21 = v16;
  v22 = dCopy;
  v23 = signalCopy;
  v24 = channelCopy;
  dispatch_async(v19, v25);
}

+ (void)sendSignal:(id)signal toChannel:(id)channel withNullableUniqueStringID:(id)d withPayload:(id)payload
{
  v53 = *MEMORY[0x1E69E9840];
  signalCopy = signal;
  channelCopy = channel;
  dCopy = d;
  payloadCopy = payload;
  v14 = [IASignalAnalyticsObject alloc];
  v16 = objc_msgSend_initWithChannel_signal_sessionIdString_payload_(v14, v15, channelCopy, signalCopy, dCopy, payloadCopy);
  v17 = sub_1D461102C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_msgSend_timestamp(v16, v18, v19);
    objc_msgSend_timeIntervalSinceReferenceDate(v20, v21, v22);
    v24 = v23;
    v27 = objc_msgSend_description(payloadCopy, v25, v26);
    v43 = 138478851;
    v44 = channelCopy;
    v45 = 2113;
    v46 = signalCopy;
    v47 = 2113;
    v48 = dCopy;
    v49 = 2049;
    v50 = v24;
    v51 = 2117;
    v52 = v27;
    _os_log_impl(&dword_1D460F000, v17, OS_LOG_TYPE_DEFAULT, "channel:%{private}@ signal:%{private}@ uniqueStringId:%{private}@ timestamp:%{private}f payload:%{sensitive}@", &v43, 0x34u);
  }

  if (objc_msgSend_xpcEnabled(IAUtility, v28, v29))
  {
    v32 = objc_msgSend_xpcClient(self, v30, v31);
    v35 = objc_msgSend_server(v32, v33, v34);

    v37 = objc_opt_respondsToSelector();
    if (v37)
    {
      objc_msgSend_didAction_(v35, v36, v16);
    }

    else
    {
      v39 = sub_1D461102C();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        sub_1D462D548(v39, v40, v41);
      }
    }

    objc_msgSend_reportConnectionStatusSuccessful_(IAServerStats, v38, v37 & 1);
  }

  v42 = *MEMORY[0x1E69E9840];
}

+ (void)asyncSendSignal:(id)signal toChannel:(id)channel withNullableUniqueStringID:(id)d withPayload:(id)payload
{
  signalCopy = signal;
  channelCopy = channel;
  dCopy = d;
  payloadCopy = payload;
  v16 = objc_msgSend_now(MEMORY[0x1E695DF00], v14, v15);
  v19 = objc_msgSend_actionQueue(self, v17, v18);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1D46177F4;
  v25[3] = &unk_1E8489860;
  v26 = channelCopy;
  v27 = signalCopy;
  v28 = dCopy;
  v29 = v16;
  v30 = payloadCopy;
  selfCopy = self;
  v20 = payloadCopy;
  v21 = v16;
  v22 = dCopy;
  v23 = signalCopy;
  v24 = channelCopy;
  dispatch_async(v19, v25);
}

@end