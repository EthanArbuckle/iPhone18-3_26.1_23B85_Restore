@interface FCEndpointConnection
+ (id)URLSessionWithSourceApplicationBundleIdentifier:(id)a3;
- (FCEndpointConnection)initWithSourceApplicationBundleIdentifier:(id)a3 networkBehaviorMonitor:(id)a4;
- (id)session;
- (void)performAuthenticatedHTTPRequestWithURL:(id)a3 valuesByHTTPHeaderField:(id)a4 method:(id)a5 data:(id)a6 contentType:(id)a7 priority:(float)a8 reauthenticateIfNeeded:(BOOL)a9 networkEventType:(int)a10 callbackQueue:(id)a11 completion:(id)a12;
- (void)performHTTPRequestWithURL:(id)a3 valuesByHTTPHeaderField:(id)a4 method:(id)a5 data:(id)a6 contentType:(id)a7 priority:(float)a8 requiresMescalSigning:(BOOL)a9 requiresAuthKitHeaders:(BOOL)a10 networkEventType:(int)a11 callbackQueue:(id)a12 completion:(id)a13;
@end

@implementation FCEndpointConnection

+ (id)URLSessionWithSourceApplicationBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
  v5 = v4;
  if (v3)
  {
    [v4 set_sourceApplicationBundleIdentifier:v3];
  }

  if (FCProcessIsMemoryConstrained())
  {
    [v5 setURLCache:0];
  }

  [v5 setNetworkServiceType:0];
  v6 = [MEMORY[0x1E696AE30] processInfo];
  [v5 setHTTPMaximumConnectionsPerHost:{2 * objc_msgSend(v6, "processorCount")}];

  [v5 set_timingDataOptions:{objc_msgSend(v5, "_timingDataOptions") | 1}];
  v7 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v5 delegate:0 delegateQueue:0];

  return v7;
}

- (FCEndpointConnection)initWithSourceApplicationBundleIdentifier:(id)a3 networkBehaviorMonitor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = FCEndpointConnection;
  v8 = [(FCEndpointConnection *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_networkBehaviorMonitor, a4);
    v10 = objc_alloc(MEMORY[0x1E69B68D8]);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __89__FCEndpointConnection_initWithSourceApplicationBundleIdentifier_networkBehaviorMonitor___block_invoke;
    v14[3] = &unk_1E7C36F98;
    v15 = v6;
    v11 = [v10 initWithConstructor:v14];
    lazySession = v9->_lazySession;
    v9->_lazySession = v11;
  }

  return v9;
}

- (id)session
{
  v2 = [(FCEndpointConnection *)self lazySession];
  v3 = [v2 value];

  return v3;
}

- (void)performHTTPRequestWithURL:(id)a3 valuesByHTTPHeaderField:(id)a4 method:(id)a5 data:(id)a6 contentType:(id)a7 priority:(float)a8 requiresMescalSigning:(BOOL)a9 requiresAuthKitHeaders:(BOOL)a10 networkEventType:(int)a11 callbackQueue:(id)a12 completion:(id)a13
{
  v13 = a9;
  v88[2] = *MEMORY[0x1E69E9840];
  v20 = a3;
  v21 = a4;
  v63 = a5;
  v22 = a6;
  v62 = a7;
  v23 = a12;
  v24 = a13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke;
  aBlock[3] = &unk_1E7C3EDE0;
  v25 = v23;
  v85 = v25;
  v26 = v24;
  v86 = v26;
  v27 = _Block_copy(aBlock);
  v28 = NewsCoreUserDefaults();
  if (![v28 BOOLForKey:@"simulate_retryable_analytics_upload_failure"])
  {
    v57 = v26;
    v58 = v25;
    v60 = v22;
    v29 = MEMORY[0x1E696AEC0];
    v30 = [v20 host];
    [v29 stringWithFormat:@"%@-type:%d", v30, a11];
    v32 = v31 = v20;

    v83 = 0.0;
    v33 = +[FCThrottleRegistry shared];
    v59 = v32;
    LODWORD(v30) = [v33 shouldThrottleGroup:v32 outRetryAfter:&v83];

    v61 = v21;
    if (v30)
    {
      v34 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E696A998];
      v88[0] = v31;
      v87[0] = v35;
      v87[1] = @"FCErrorRetryAfter";
      v36 = [MEMORY[0x1E696AD98] numberWithDouble:v83];
      v88[1] = v36;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:2];
      v38 = [v34 fc_errorWithCode:12 description:@"The operation was throttled." additionalUserInfo:v37];

      (*(v27 + 2))(v27, 0, 0, v38);
      v20 = v31;
LABEL_24:
      v26 = v57;

      v21 = v61;
      v25 = v58;
      goto LABEL_25;
    }

    v39 = v63;
    v40 = v39;
    if (v13)
    {
      v20 = v31;
      v41 = self;
      if ([(__CFString *)v39 isEqualToString:@"Signed_GET"])
      {
        v42 = @"GET";

        v43 = [@"SIGNATURE-MESSAGE" dataUsingEncoding:4];

        v60 = v43;
      }

      else
      {
        v42 = v40;
      }

      if ([(__CFString *)v40 isEqualToString:@"Signed_DELETE"])
      {
        v44 = @"DELETE";

        v45 = [@"SIGNATURE-MESSAGE" dataUsingEncoding:4];

        v42 = v44;
        v60 = v45;
      }
    }

    else
    {
      v42 = v39;
      v20 = v31;
      v41 = self;
    }

    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_3;
    v70[3] = &unk_1E7C418B8;
    v46 = v20;
    v71 = v46;
    v81 = a10;
    v38 = v42;
    v72 = v38;
    v73 = v62;
    v74 = v61;
    v82 = v13;
    v75 = v40;
    v76 = v41;
    v79 = a11;
    v77 = v59;
    v47 = v27;
    v78 = v47;
    v80 = a8;
    v48 = _Block_copy(v70);
    v49 = v48;
    v22 = v60;
    if (v60)
    {
      if (v13)
      {
        v55 = v46;
        if ([v28 BOOLForKey:@"simulate_bad_analytics_mescal_signature"])
        {
          v50 = [MEMORY[0x1E695DF00] date];
          v51 = [v50 description];
          v56 = [v51 dataUsingEncoding:4];
        }

        else
        {
          v56 = v60;
        }

        v53 = FCDefaultLog;
        if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v53, OS_LOG_TYPE_DEFAULT, "Endpoint connection will generate Mescal signature", buf, 2u);
        }

        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_42;
        v64[3] = &unk_1E7C418E0;
        v64[4] = v41;
        v65 = v55;
        v67 = v47;
        v68 = v49;
        v66 = v60;
        [FCMescalSignature signatureFromData:v56 completion:v64];

        goto LABEL_23;
      }

      v52 = v48[2];
    }

    else
    {
      v52 = v48[2];
    }

    v52();
LABEL_23:

    goto LABEL_24;
  }

  (*(v27 + 2))(v27, 0, 0, 0);
LABEL_25:

  v54 = *MEMORY[0x1E69E9840];
}

void __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x1E69E96A0];
    v12 = MEMORY[0x1E69E96A0];
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_2;
    v14[3] = &unk_1E7C3A0B0;
    v18 = v13;
    v15 = v7;
    v16 = v8;
    v17 = v9;
    dispatch_async(v11, v14);
  }
}

void __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695AC18] requestWithURL:*(a1 + 32)];
  v8 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v7 HTTPUserAgent];
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_INFO, "Client request: %@, current userAgent: %@", buf, 0x16u);
  }

  if (*(a1 + 104) == 1)
  {
    [v7 ak_addDeviceUDIDHeader];
    [v7 ak_addClientInfoHeader];
    [v7 ak_addAnisetteHeaders];
  }

  [v7 setHTTPMethod:*(a1 + 40)];
  v11 = *(a1 + 48);
  if (v11)
  {
    [v7 addValue:v11 forHTTPHeaderField:@"Content-Type"];
  }

  v12 = *(a1 + 56);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_26;
  v39[3] = &unk_1E7C3F720;
  v13 = v7;
  v40 = v13;
  [v12 enumerateKeysAndObjectsUsingBlock:v39];
  v14 = +[FCAppleAccount sharedAccount];
  v15 = [v14 endpointConnectionClientID];
  [v13 addValue:v15 forHTTPHeaderField:@"X-CLIENT-ID"];

  if (v6)
  {
    [v13 addValue:v6 forHTTPHeaderField:@"X-Apple-ActionSignature"];
    if (([*(a1 + 64) isEqualToString:@"Signed_GET"] & 1) != 0 || objc_msgSend(*(a1 + 64), "isEqualToString:", @"Signed_DELETE"))
    {
      [v13 addValue:@"SIGNATURE-MESSAGE" forHTTPHeaderField:@"X-SIGNATURE-MESSAGE"];
      goto LABEL_15;
    }
  }

  else if (*(a1 + 105) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Shouldn't be here if the request requires Mescal signing"];
    *buf = 136315906;
    *&buf[4] = "[FCEndpointConnection performHTTPRequestWithURL:valuesByHTTPHeaderField:method:data:contentType:priority:requiresMescalSigning:requiresAuthKitHeaders:networkEventType:callbackQueue:completion:]_block_invoke_3";
    *&buf[12] = 2080;
    *&buf[14] = "FCEndpointConnection.m";
    *&buf[22] = 1024;
    LODWORD(v42) = 305;
    WORD2(v42) = 2114;
    *(&v42 + 6) = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [v13 setHTTPBody:v5];
LABEL_15:
  v16 = FCAnalyticsLog;
  if (os_log_type_enabled(FCAnalyticsLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v13;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_INFO, "Client request: %@, signature: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v42 = __Block_byref_object_copy__45;
  *(&v42 + 1) = __Block_byref_object_dispose__45;
  v43 = 0;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v18 = v17;
  v19 = [*(a1 + 72) session];
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_36;
  v31 = &unk_1E7C41890;
  v38 = *(a1 + 96);
  v20 = v13;
  v37 = v18;
  v36 = buf;
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = *(a1 + 88);
  v23 = [v19 dataTaskWithRequest:v20 completionHandler:&v28];
  v24 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v23;

  LODWORD(v25) = *(a1 + 100);
  [*(*&buf[8] + 40) setPriority:{v25, v28, v29, v30, v31}];
  [*(*&buf[8] + 40) resume];

  _Block_object_dispose(buf, 8);
  v26 = *MEMORY[0x1E69E9840];
}

void __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_2_27;
  v7[3] = &unk_1E7C36FE8;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

void __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_36(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a2;
  v9 = NSErrorByUpdatingRetryStatusForError(a4);
  objc_opt_class();
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (*(a1 + 80))
  {
    v12 = [FCNetworkEvent alloc];
    v13 = *(a1 + 80);
    v14 = *(a1 + 32);
    v15 = *(a1 + 72);
    v16 = [*(*(*(a1 + 64) + 8) + 40) _incompleteCurrentTaskTransactionMetrics];
    v17 = [(FCNetworkEvent *)v12 initWithType:v13 URLRequest:v14 operationID:0 requestUUID:0 startTime:v11 HTTPResponse:v16 metrics:v15 containerName:0 error:v9];

    v18 = [*(a1 + 40) networkBehaviorMonitor];
    [v18 logNetworkEvent:v17];
  }

  v19 = +[FCThrottleRegistry shared];
  [v19 processURLResponse:v7 forGroup:*(a1 + 48)];

  v20 = FCAnalyticsLog;
  if (os_log_type_enabled(FCAnalyticsLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v23 = v11;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_INFO, "Endpoint response: %@, error: %@", buf, 0x16u);
  }

  (*(*(a1 + 56) + 16))();

  v21 = *MEMORY[0x1E69E9840];
}

void __194__FCEndpointConnection_performHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_requiresMescalSigning_requiresAuthKitHeaders_networkEventType_callbackQueue_completion___block_invoke_42(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = FCDefaultLog;
    if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "Failed to sign analytics data with Mescal", v13, 2u);
    }

    v8 = +[FCNetworkReachability sharedNetworkReachability];
    v9 = [v8 isNetworkReachable];

    if (v9)
    {
      (*(a1[7] + 16))();
    }

    else
    {
      v11 = a1[4];
      v12 = [objc_opt_class() errorForStatus:0 url:a1[5]];
      (*(a1[7] + 16))();
    }
  }

  else
  {
    v10 = a1[6];
    (*(a1[8] + 16))();
  }
}

- (void)performAuthenticatedHTTPRequestWithURL:(id)a3 valuesByHTTPHeaderField:(id)a4 method:(id)a5 data:(id)a6 contentType:(id)a7 priority:(float)a8 reauthenticateIfNeeded:(BOOL)a9 networkEventType:(int)a10 callbackQueue:(id)a11 completion:(id)a12
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a11;
  v24 = a12;
  v25 = +[FCAppleAccount sharedAccount];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __185__FCEndpointConnection_performAuthenticatedHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_reauthenticateIfNeeded_networkEventType_callbackQueue_completion___block_invoke;
  v34[3] = &unk_1E7C41930;
  v35 = v19;
  v36 = self;
  v37 = v18;
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v43 = a10;
  v41 = v23;
  v42 = v24;
  v45 = a9;
  v44 = a8;
  v26 = v23;
  v27 = v22;
  v28 = v21;
  v29 = v20;
  v30 = v18;
  v31 = v19;
  v32 = v24;
  [v25 getGSTokenWithCompletionHandler:v34];
}

void __185__FCEndpointConnection_performAuthenticatedHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_reauthenticateIfNeeded_networkEventType_callbackQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) mutableCopy];
    v8 = v7;
    v34 = v6;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v12 = v9;

    v48[0] = v5;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
    [v12 setObject:v13 forKeyedSubscript:@"X-Apple-GS-Token"];

    v32 = *(a1 + 64);
    v33 = *(a1 + 56);
    v14 = *MEMORY[0x1E695ABC0];
    v30 = *(a1 + 96);
    v15 = *(a1 + 80);
    v31 = *(a1 + 72);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __185__FCEndpointConnection_performAuthenticatedHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_reauthenticateIfNeeded_networkEventType_callbackQueue_completion___block_invoke_3;
    v35[3] = &unk_1E7C41908;
    v41 = *(a1 + 104);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    v19 = *(a1 + 56);
    *&v20 = v18;
    *(&v20 + 1) = v19;
    *&v21 = v16;
    *(&v21 + 1) = v17;
    v36 = v21;
    v37 = v20;
    v22 = *(a1 + 64);
    v23 = *(a1 + 72);
    v40 = *(a1 + 100);
    v24 = *(a1 + 80);
    v25 = *(a1 + 88);
    *&v26 = v24;
    *(&v26 + 1) = v25;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    v38 = v27;
    v39 = v26;
    HIDWORD(v29) = v30;
    LOBYTE(v29) = 1;
    LODWORD(v26) = v14;
    [v16 performHTTPRequestWithURL:v17 valuesByHTTPHeaderField:v12 method:v33 data:v32 contentType:v31 priority:1 requiresMescalSigning:*&v26 requiresAuthKitHeaders:v29 networkEventType:v15 callbackQueue:v35 completion:?];

    v6 = v34;
  }

  else
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __185__FCEndpointConnection_performAuthenticatedHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_reauthenticateIfNeeded_networkEventType_callbackQueue_completion___block_invoke_2;
    v45 = &unk_1E7C37778;
    v10 = *(a1 + 88);
    v47 = v10;
    v11 = v6;
    v46 = v11;
    if (v10)
    {
      (*(v10 + 2))(v10, 0, 0, v11);
      v11 = v46;
    }

    v12 = v47;
  }

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t __185__FCEndpointConnection_performAuthenticatedHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_reauthenticateIfNeeded_networkEventType_callbackQueue_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, *(a1 + 32));
  }

  return result;
}

void __185__FCEndpointConnection_performAuthenticatedHTTPRequestWithURL_valuesByHTTPHeaderField_method_data_contentType_priority_reauthenticateIfNeeded_networkEventType_callbackQueue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v7 statusCode] != 401 && objc_msgSend(v7, "statusCode") != 434;
  if (*(a1 + 100) != 1 || v9)
  {
    v12 = *(a1 + 88);
    if (v12)
    {
      (*(v12 + 16))(v12, v13, v7, v8);
    }
  }

  else
  {
    v10 = +[FCAppleAccount sharedAccount];
    [v10 invalidateGSTokenCache];

    LODWORD(v11) = *(a1 + 96);
    [*(a1 + 32) performAuthenticatedHTTPRequestWithURL:*(a1 + 40) valuesByHTTPHeaderField:*(a1 + 48) method:*(a1 + 56) data:*(a1 + 64) contentType:*(a1 + 72) priority:0 reauthenticateIfNeeded:v11 callbackQueue:*(a1 + 80) completion:*(a1 + 88)];
  }
}

@end