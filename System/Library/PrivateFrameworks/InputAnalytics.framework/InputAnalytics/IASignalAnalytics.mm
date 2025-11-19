@interface IASignalAnalytics
+ (id)actionQueue;
+ (id)xpcClient;
+ (void)asyncSendSignal:(id)a3 toChannel:(id)a4 withNullableSessionID:(id)a5 withPayload:(id)a6;
+ (void)asyncSendSignal:(id)a3 toChannel:(id)a4 withNullableUniqueStringID:(id)a5 withPayload:(id)a6;
+ (void)invalidateConnection;
+ (void)sendSignal:(id)a3 toChannel:(id)a4 withNullableSessionID:(id)a5 withPayload:(id)a6;
+ (void)sendSignal:(id)a3 toChannel:(id)a4 withNullableUniqueStringID:(id)a5 withPayload:(id)a6;
+ (void)sendSignal:(id)a3 toChannel:(id)a4 withPayload:(id)a5;
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

+ (void)sendSignal:(id)a3 toChannel:(id)a4 withPayload:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [IASignalAnalyticsObject alloc];
  v13 = objc_msgSend_initWithChannel_signal_sessionIdString_payload_(v11, v12, v9, v8, 0, v10);
  v14 = sub_1D461102C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_msgSend_timestamp(v13, v15, v16);
    objc_msgSend_timeIntervalSinceReferenceDate(v17, v18, v19);
    v21 = v20;
    v24 = objc_msgSend_description(v10, v22, v23);
    v40 = 138478595;
    v41 = v9;
    v42 = 2113;
    v43 = v8;
    v44 = 2049;
    v45 = v21;
    v46 = 2117;
    v47 = v24;
    _os_log_impl(&dword_1D460F000, v14, OS_LOG_TYPE_DEFAULT, "channel:%{private}@ signal:%{private}@ timestamp:%{private}f payload:%{sensitive}@", &v40, 0x2Au);
  }

  if (objc_msgSend_xpcEnabled(IAUtility, v25, v26))
  {
    v29 = objc_msgSend_xpcClient(a1, v27, v28);
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

+ (void)sendSignal:(id)a3 toChannel:(id)a4 withNullableSessionID:(id)a5 withPayload:(id)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [IASignalAnalyticsObject alloc];
  v17 = objc_msgSend_UUIDString(v12, v15, v16);
  v19 = objc_msgSend_initWithChannel_signal_sessionIdString_payload_(v14, v18, v11, v10, v17, v13);

  v20 = sub_1D461102C();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_msgSend_description(v12, v21, v22);
    v26 = objc_msgSend_timestamp(v19, v24, v25);
    objc_msgSend_timeIntervalSinceReferenceDate(v26, v27, v28);
    v30 = v29;
    v33 = objc_msgSend_description(v13, v31, v32);
    v49 = 138478851;
    v50 = v11;
    v51 = 2113;
    v52 = v10;
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
    v38 = objc_msgSend_xpcClient(a1, v36, v37);
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

+ (void)asyncSendSignal:(id)a3 toChannel:(id)a4 withNullableSessionID:(id)a5 withPayload:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v16 = objc_msgSend_now(MEMORY[0x1E695DF00], v14, v15);
  v19 = objc_msgSend_actionQueue(a1, v17, v18);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1D461724C;
  v25[3] = &unk_1E8489860;
  v26 = v11;
  v27 = v10;
  v28 = v12;
  v29 = v16;
  v30 = v13;
  v31 = a1;
  v20 = v13;
  v21 = v16;
  v22 = v12;
  v23 = v10;
  v24 = v11;
  dispatch_async(v19, v25);
}

+ (void)sendSignal:(id)a3 toChannel:(id)a4 withNullableUniqueStringID:(id)a5 withPayload:(id)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [IASignalAnalyticsObject alloc];
  v16 = objc_msgSend_initWithChannel_signal_sessionIdString_payload_(v14, v15, v11, v10, v12, v13);
  v17 = sub_1D461102C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_msgSend_timestamp(v16, v18, v19);
    objc_msgSend_timeIntervalSinceReferenceDate(v20, v21, v22);
    v24 = v23;
    v27 = objc_msgSend_description(v13, v25, v26);
    v43 = 138478851;
    v44 = v11;
    v45 = 2113;
    v46 = v10;
    v47 = 2113;
    v48 = v12;
    v49 = 2049;
    v50 = v24;
    v51 = 2117;
    v52 = v27;
    _os_log_impl(&dword_1D460F000, v17, OS_LOG_TYPE_DEFAULT, "channel:%{private}@ signal:%{private}@ uniqueStringId:%{private}@ timestamp:%{private}f payload:%{sensitive}@", &v43, 0x34u);
  }

  if (objc_msgSend_xpcEnabled(IAUtility, v28, v29))
  {
    v32 = objc_msgSend_xpcClient(a1, v30, v31);
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

+ (void)asyncSendSignal:(id)a3 toChannel:(id)a4 withNullableUniqueStringID:(id)a5 withPayload:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v16 = objc_msgSend_now(MEMORY[0x1E695DF00], v14, v15);
  v19 = objc_msgSend_actionQueue(a1, v17, v18);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1D46177F4;
  v25[3] = &unk_1E8489860;
  v26 = v11;
  v27 = v10;
  v28 = v12;
  v29 = v16;
  v30 = v13;
  v31 = a1;
  v20 = v13;
  v21 = v16;
  v22 = v12;
  v23 = v10;
  v24 = v11;
  dispatch_async(v19, v25);
}

@end