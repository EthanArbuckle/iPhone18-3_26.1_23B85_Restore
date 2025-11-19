@interface HSConnection
- (HSConnection)initWithBaseURL:(id)a3 connectionType:(int64_t)a4;
- (id)_onSerialQueue_connectionSession;
- (id)signedRequestFromURLRequest:(id)a3;
- (void)_continueFPSetupNegotiationWithData:(id)a3 internalConnectionCompletionHandler:(id)a4;
- (void)_loadDatabaseWithInternalConnectionCompletionHandler:(id)a3;
- (void)_onSerialQueue_sendRequest:(id)a3 withInternalResponseHandler:(id)a4;
- (void)_sendRequest:(id)a3 withInternalResponseHandler:(id)a4;
- (void)checkForDatabaseUpdatesWithCompletionHandler:(id)a3;
- (void)connectWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)disconnect;
- (void)sendRequest:(id)a3 withResponseHandler:(id)a4;
@end

@implementation HSConnection

- (id)_onSerialQueue_connectionSession
{
  connectionSession = self->_connectionSession;
  if (!connectionSession)
  {
    v4 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [v4 setAllowsCellularAccess:0];
    [v4 setHTTPAdditionalHeaders:&unk_28666A9A0];
    [v4 setHTTPShouldUsePipelining:1];
    v5 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v4];
    v6 = self->_connectionSession;
    self->_connectionSession = v5;

    connectionSession = self->_connectionSession;
  }

  return connectionSession;
}

- (void)_onSerialQueue_sendRequest:(id)a3 withInternalResponseHandler:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 action];
  v9 = [(HSConnection *)self homeSharingGroupID];
  if ([v9 length])
  {
    v10 = [v8 isEqual:@"server-info"];

    if (v10)
    {
      goto LABEL_5;
    }

    v9 = [(HSConnection *)self homeSharingGroupID];
    [v6 setValue:v9 forArgument:@"hsgid"];
  }

LABEL_5:
  if (!self->_connectionType)
  {
    if (([v8 isEqual:@"logout"] & 1) == 0)
    {
      [v6 setValue:@"1" forArgument:@"daap-no-disconnect"];
    }

    [v6 setValue:@"1" forArgument:@"hs-mobile-device-client"];
  }

  v11 = [v6 URLRequestForBaseURL:self->_baseURL sessionID:{-[HSConnection sessionID](self, "sessionID")}];
  v12 = [v11 mutableCopy];

  if (([v8 isEqual:@"login"] & 1) == 0 && (objc_msgSend(v8, "isEqual:", @"logout") & 1) == 0 && (objc_msgSend(v8, "isEqual:", @"fp-setup") & 1) == 0 && (objc_msgSend(v8, "isEqual:", @"server-info") & 1) == 0)
  {
    v13 = [(HSConnection *)self fairPlayInfo];
    v14 = [v12 URL];
    v15 = [v13 securityInfoForURL:v14];
    [v12 setValue:v15 forHTTPHeaderField:@"Client-Daap-Validation"];
  }

  v16 = os_log_create("com.apple.amp.HomeSharing", "Connections");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if ([v6 method])
    {
      v19 = @"POST";
    }

    else
    {
      v19 = @"GET";
    }

    v20 = [v6 action];
    *buf = 138544130;
    v32 = v18;
    v33 = 2048;
    v34 = v6;
    v35 = 2114;
    v36 = v19;
    v37 = 2114;
    v38 = v20;
    _os_log_impl(&dword_254418000, v16, OS_LOG_TYPE_DEFAULT, "Sending request: <%{public}@: %p method=%{public}@ action=%{public}@>", buf, 0x2Au);
  }

  v21 = os_log_create("com.apple.amp.HomeSharing", "Connections_Oversize");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v12 allHTTPHeaderFields];
    *buf = 138543362;
    v32 = v22;
    _os_log_impl(&dword_254418000, v21, OS_LOG_TYPE_DEFAULT, "Request headers: %{public}@", buf, 0xCu);
  }

  v23 = [(HSConnection *)self _onSerialQueue_connectionSession];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __71__HSConnection__onSerialQueue_sendRequest_withInternalResponseHandler___block_invoke;
  v27[3] = &unk_27977A1F8;
  v28 = v6;
  v29 = self;
  v30 = v7;
  v24 = v7;
  v25 = v6;
  v26 = [v23 msv_dataTaskWithRequest:v12 completionHandler:v27];

  [v26 resume];
}

void __71__HSConnection__onSerialQueue_sendRequest_withInternalResponseHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v39 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = os_log_create("com.apple.amp.HomeSharing", "Connections");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      *buf = 134218498;
      v41 = v13;
      v42 = 2114;
      v43 = v11;
      v44 = 2114;
      v45 = v9;
      _os_log_impl(&dword_254418000, v12, OS_LOG_TYPE_ERROR, "Got no response for request %p, error %{public}@. NSURLSessionDataTask: %{public}@", buf, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v14 = [v10 allHeaderFields];
    v15 = [v10 statusCode];
    v36 = [v14 objectForKey:@"Content-Type"];
    v37 = v15;
    v16 = [HSResponse responseWithCode:"responseWithCode:headerFields:data:MIMEType:error:" headerFields:v15 data:v14 MIMEType:v39 error:?];
    v17 = [*(a1 + 32) canonicalResponseForResponse:v16];
    v18 = os_log_create("com.apple.amp.HomeSharing", "Connections");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v10;
      v19 = *(a1 + 32);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v34 = a1;
      v22 = v17;
      v23 = v14;
      v24 = v9;
      v25 = [v16 responseCode];
      [v16 responseData];
      v27 = v26 = v16;
      *buf = 134219010;
      v41 = v19;
      v42 = 2114;
      v43 = v21;
      v44 = 2048;
      v45 = v26;
      v46 = 2048;
      v47 = v25;
      v9 = v24;
      v14 = v23;
      v17 = v22;
      a1 = v34;
      v10 = v35;
      v48 = 2048;
      v49 = [v27 length];
      _os_log_impl(&dword_254418000, v18, OS_LOG_TYPE_DEFAULT, "Received request %p response: <%{public}@: %p code=%ld, length=%{bytes}lu>", buf, 0x34u);

      v16 = v26;
    }

    v28 = os_log_create("com.apple.amp.HomeSharing", "Connections_Oversize");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = v14;
      _os_log_impl(&dword_254418000, v28, OS_LOG_TYPE_DEFAULT, "Response headers: %{public}@", buf, 0xCu);
    }

    if (v37 == 403 || v37 >= 500)
    {
      v29 = os_log_create("com.apple.amp.HomeSharing", "Connections");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v41 = v37;
        v42 = 2114;
        v43 = v9;
        _os_log_impl(&dword_254418000, v29, OS_LOG_TYPE_ERROR, "Disconnecting due to HTTP status code: %lu. NSURLSessionDataTask: %{public}@", buf, 0x16u);
      }

      v30 = os_log_create("com.apple.amp.HomeSharing", "Connections");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v39 encoding:4];
        v38 = v16;
        v32 = v31;
        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = v39;
        }

        *buf = 138543362;
        v41 = v33;
        _os_log_impl(&dword_254418000, v30, OS_LOG_TYPE_ERROR, "Disconnecting response data: %{public}@", buf, 0xCu);

        v16 = v38;
      }

      [*(a1 + 40) disconnect];
      v17 = 0;
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)_sendRequest:(id)a3 withInternalResponseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HSConnection__sendRequest_withInternalResponseHandler___block_invoke;
  block[3] = &unk_27977A300;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(serialQueue, block);
}

- (void)_loadDatabaseWithInternalConnectionCompletionHandler:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HSConnection__loadDatabaseWithInternalConnectionCompletionHandler___block_invoke;
  v11[3] = &unk_27977A160;
  v11[4] = self;
  v12 = v4;
  v5 = v4;
  v6 = MEMORY[0x259C0BF70](v11);
  serialQueue = self->_serialQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__HSConnection__loadDatabaseWithInternalConnectionCompletionHandler___block_invoke_47;
  v9[3] = &unk_27977A2D8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(serialQueue, v9);
}

void __69__HSConnection__loadDatabaseWithInternalConnectionCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 responseCode] != 204)
  {
    v7 = os_log_create("com.apple.amp.HomeSharing", "Connections");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 error];
      *buf = 138543618;
      v13 = v8;
      v14 = 2048;
      v15 = [v4 responseCode];
      _os_log_impl(&dword_254418000, v7, OS_LOG_TYPE_ERROR, "Got no homeSharingVerifyResponse: %{public}@ / http status code: %ld", buf, 0x16u);
    }

    [*(a1 + 32) disconnect];
    v9 = *(a1 + 40);
    v5 = [v4 error];
    (*(v9 + 16))(v9, 0, v5);
  }

  else
  {
    v5 = objc_alloc_init(HSDatabasesRequest);
    v6 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__HSConnection__loadDatabaseWithInternalConnectionCompletionHandler___block_invoke_2;
    v10[3] = &unk_27977A160;
    v10[4] = v6;
    v11 = *(a1 + 40);
    [v6 _sendRequest:v5 withInternalResponseHandler:v10];
  }
}

void __69__HSConnection__loadDatabaseWithInternalConnectionCompletionHandler___block_invoke_47(uint64_t a1)
{
  v2 = [*(a1 + 32) homeSharingGroupID];
  v3 = [v2 length];

  if (v3)
  {
    v5 = +[(HSRequest *)HSHomeSharingVerifyRequest];
    [*(a1 + 32) _sendRequest:v5 withInternalResponseHandler:*(a1 + 40)];
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void __69__HSConnection__loadDatabaseWithInternalConnectionCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 responseCode] == 200)
  {
    v4 = [v3 databases];
    v5 = [v4 lastObject];

    v6 = [v5 objectForKey:@"dmap.itemid"];
    [*(a1 + 32) setDatabaseID:{objc_msgSend(v6, "unsignedIntValue")}];

    v7 = os_log_create("com.apple.amp.HomeSharing", "Connections");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) databaseID];
      *buf = 67109120;
      LODWORD(v17) = v8;
      _os_log_impl(&dword_254418000, v7, OS_LOG_TYPE_INFO, "Using database with id: %u", buf, 8u);
    }

    v9 = *(a1 + 32);
    if (!v9[7])
    {
      v10 = +[HSContainersRequest requestWithDatabaseID:](HSContainersRequest, "requestWithDatabaseID:", [v9 databaseID]);
      [v10 setValue:@"dmap.itemid forArgument:{daap.baseplaylist", @"meta"}];
      [v10 setValue:@"'daap.baseplaylist:1'" forArgument:@"query"];
      v11 = *(a1 + 32);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __69__HSConnection__loadDatabaseWithInternalConnectionCompletionHandler___block_invoke_40;
      v14[3] = &unk_27977A160;
      v14[4] = v11;
      v15 = *(a1 + 40);
      [v11 _sendRequest:v10 withInternalResponseHandler:v14];
    }
  }

  else
  {
    v12 = os_log_create("com.apple.amp.HomeSharing", "Connections");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = [v3 responseCode];
      _os_log_impl(&dword_254418000, v12, OS_LOG_TYPE_ERROR, "Got no base database response: %ld", buf, 0xCu);
    }

    [*(a1 + 32) disconnect];
    v13 = *(a1 + 40);
    v5 = [v3 error];
    (*(v13 + 16))(v13, 0, v5);
  }
}

void __69__HSConnection__loadDatabaseWithInternalConnectionCompletionHandler___block_invoke_40(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 containers];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 objectForKey:@"daap.baseplaylist"];
        v11 = [v10 unsignedCharValue];

        if (v11)
        {
          v12 = [v9 objectForKey:@"dmap.itemid"];
          [*(a1 + 32) setBasePlaylistContainerID:{objc_msgSend(v12, "unsignedIntValue")}];

          v13 = os_log_create("com.apple.amp.HomeSharing", "Connections");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = [*(a1 + 32) basePlaylistContainerID];
            *buf = 67109120;
            v26 = v14;
            _os_log_impl(&dword_254418000, v13, OS_LOG_TYPE_INFO, "Base playlist container ID is %u", buf, 8u);
          }

          v15 = *(a1 + 32);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __69__HSConnection__loadDatabaseWithInternalConnectionCompletionHandler___block_invoke_44;
          v19[3] = &unk_27977A2B0;
          v19[4] = v15;
          v20 = *(a1 + 40);
          [v15 checkForDatabaseUpdatesWithCompletionHandler:v19];

          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if (![*(a1 + 32) basePlaylistContainerID])
  {
    v16 = os_log_create("com.apple.amp.HomeSharing", "Connections");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_254418000, v16, OS_LOG_TYPE_ERROR, "Got no base playlistContainerID", buf, 2u);
    }

    [*(a1 + 32) disconnect];
    v17 = *(a1 + 40);
    v18 = [v3 error];
    (*(v17 + 16))(v17, 0, v18);
  }
}

void __69__HSConnection__loadDatabaseWithInternalConnectionCompletionHandler___block_invoke_44(uint64_t a1)
{
  *(*(a1 + 32) + 64) = 2;
  (*(*(a1 + 40) + 16))();
  if (!*(*(a1 + 32) + 56))
  {
    v2 = dispatch_get_global_queue(0, 0);
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v2);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v6 = dispatch_time(0, 45000000000);
    dispatch_source_set_timer(*(*(a1 + 32) + 16), v6, 0xA7A358200uLL, 0x37E11D600uLL);
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __69__HSConnection__loadDatabaseWithInternalConnectionCompletionHandler___block_invoke_2_45;
    handler[3] = &unk_27977A350;
    handler[4] = v7;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(*(*(a1 + 32) + 16));
  }
}

void __69__HSConnection__loadDatabaseWithInternalConnectionCompletionHandler___block_invoke_2_45(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 64) == 2)
  {
    v5 = +[(HSRequest *)HSActivityRequest];
    [*(a1 + 32) sendRequest:v5 withResponseHandler:&__block_literal_global_1421];
    v3 = v5;
  }

  else
  {
    dispatch_source_cancel(*(v2 + 16));
    v4 = *(a1 + 32);
    v3 = *(v4 + 16);
    *(v4 + 16) = 0;
  }
}

- (void)_continueFPSetupNegotiationWithData:(id)a3 internalConnectionCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[(HSRequest *)HSFairPlaySetupRequest];
  [v8 setBodyData:v7];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __88__HSConnection__continueFPSetupNegotiationWithData_internalConnectionCompletionHandler___block_invoke;
  v10[3] = &unk_27977A160;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [(HSConnection *)self _sendRequest:v8 withInternalResponseHandler:v10];
}

void __88__HSConnection__continueFPSetupNegotiationWithData_internalConnectionCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 responseCode] == 200)
  {
    v9 = 0;
    v4 = [*(a1 + 32) fairPlayInfo];
    v5 = [*(a1 + 32) _sapVersionForConnectionType];
    v6 = [v3 responseData];
    v7 = [v4 continueNegotationWithSAPVersion:v5 data:v6 isComplete:&v9];

    v8 = *(a1 + 32);
    if (v9)
    {
      [v8 _loadDatabaseWithInternalConnectionCompletionHandler:*(a1 + 40)];
    }

    else
    {
      [v8 _continueFPSetupNegotiationWithData:v7 internalConnectionCompletionHandler:*(a1 + 40)];
    }
  }

  else
  {
    [*(a1 + 32) disconnect];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)checkForDatabaseUpdatesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__HSConnection_checkForDatabaseUpdatesWithCompletionHandler___block_invoke;
  v11[3] = &unk_27977A138;
  v12 = v4;
  v5 = v4;
  v6 = MEMORY[0x259C0BF70](v11);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HSConnection_checkForDatabaseUpdatesWithCompletionHandler___block_invoke_3;
  block[3] = &unk_27977A2D8;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(serialQueue, block);
}

void __61__HSConnection_checkForDatabaseUpdatesWithCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__HSConnection_checkForDatabaseUpdatesWithCompletionHandler___block_invoke_2;
    block[3] = &unk_27977A110;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void __61__HSConnection_checkForDatabaseUpdatesWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = +[HSUpdateRequest requestWithDatabaseRevision:sessionID:connectionType:](HSUpdateRequest, "requestWithDatabaseRevision:sessionID:connectionType:", [*(a1 + 32) databaseRevision], objc_msgSend(*(a1 + 32), "sessionID"), *(*(a1 + 32) + 56));
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__HSConnection_checkForDatabaseUpdatesWithCompletionHandler___block_invoke_4;
  v4[3] = &unk_27977A160;
  v4[4] = v3;
  v5 = *(a1 + 40);
  [v3 _sendRequest:v2 withInternalResponseHandler:v4];
}

void __61__HSConnection_checkForDatabaseUpdatesWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3 && *(*(a1 + 32) + 64) == 2)
  {
    v5 = [v3 responseCode];
    v6 = v4;
    v7 = v6;
    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 0xC8)
    {
      v8 = [v6 databaseRevision];
      v9 = [*(a1 + 32) databaseRevision] != v8;
      [*(a1 + 32) setDatabaseRevision:v8];
      if (v8)
      {
        v10 = 0;
LABEL_17:
        (*(*(a1 + 40) + 16))(*(a1 + 40), v9, v10);
        goto LABEL_18;
      }

      v16 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v23 = @"Disconnected from Home Sharing because the server is shutting down.";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v10 = [v16 hs_homeSharingErrorWithCode:1004 userInfo:v17];

      [*(a1 + 32) setSessionID:0];
      [*(a1 + 32) disconnect];
LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    if (v5 == 403 || v5 >= 0x1F4)
    {
      v15 = os_log_create("com.apple.amp.HomeSharing", "Connections");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v21 = v5;
        _os_log_impl(&dword_254418000, v15, OS_LOG_TYPE_ERROR, "Disconnected from Home Sharing because of unrecovereable http status code: %lu", buf, 0xCu);
      }

      [*(a1 + 32) setSessionID:0];
      [*(a1 + 32) disconnect];
    }

    else if (v5 == 406)
    {
      v13 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      v19 = @"Request was rejected by iTunes.";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      v10 = [v13 hs_homeSharingErrorWithCode:1003 userInfo:v14];

      goto LABEL_16;
    }

    v10 = 0;
    goto LABEL_16;
  }

  v11 = *(a1 + 40);
  v12 = MEMORY[0x277CCA9B8];
  v24 = *MEMORY[0x277CCA450];
  v25[0] = @"Home Sharing library is no longer connected.";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v10 = [v12 hs_homeSharingErrorWithCode:1003 userInfo:v7];
  (*(v11 + 16))(v11, 0, v10);
LABEL_18:
}

- (id)signedRequestFromURLRequest:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = [v4 allHTTPHeaderFields];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
  }

  v9 = v8;

  v10 = [(HSConnection *)self fairPlayInfo];
  v11 = [v4 URL];
  v12 = [v10 securityInfoForURL:v11];

  if (v12)
  {
    v13 = [(HSConnection *)self fairPlayInfo];
    v14 = [v4 URL];
    v15 = [v13 securityInfoForURL:v14];
    [v9 setObject:v15 forKeyedSubscript:@"Client-Daap-Validation"];

    [v4 setAllHTTPHeaderFields:v9];
    v16 = v4;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)sendRequest:(id)a3 withResponseHandler:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__HSConnection_sendRequest_withResponseHandler___block_invoke;
  v10[3] = &unk_27977A1B0;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = MEMORY[0x259C0BF70](v10);
  [(HSConnection *)self _sendRequest:v8 withInternalResponseHandler:v9];
}

void __48__HSConnection_sendRequest_withResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__HSConnection_sendRequest_withResponseHandler___block_invoke_2;
    v6[3] = &unk_27977A2D8;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)disconnect
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__HSConnection_disconnect__block_invoke;
  block[3] = &unk_27977A350;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __26__HSConnection_disconnect__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionID];
  v3 = *(a1 + 32);
  if (v2)
  {
    if ([v3 connectionState] != 3)
    {
      [*(a1 + 32) setConnectionState:3];
      v4 = [*(a1 + 32) fairPlayInfo];
      [v4 endSecuritySession];

      v5 = *(a1 + 32);
      v6 = objc_alloc_init(HSLogoutRequest);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __26__HSConnection_disconnect__block_invoke_2;
      v10[3] = &unk_27977A188;
      v10[4] = *(a1 + 32);
      [v5 _sendRequest:v6 withInternalResponseHandler:v10];
    }
  }

  else
  {
    [v3 setDatabaseRevision:1];
    [*(a1 + 32) setConnectionState:0];
  }

  v7 = *(*(a1 + 32) + 16);
  if (v7)
  {
    dispatch_source_cancel(v7);
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    *(v8 + 16) = 0;
  }
}

uint64_t __26__HSConnection_disconnect__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setSessionID:0];
  [*(a1 + 32) setDatabaseRevision:1];
  v2 = *(a1 + 32);

  return [v2 setConnectionState:0];
}

- (void)connectWithCompletionHandler:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__HSConnection_connectWithCompletionHandler___block_invoke;
  v11[3] = &unk_27977A138;
  v12 = v4;
  v5 = v4;
  v6 = MEMORY[0x259C0BF70](v11);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HSConnection_connectWithCompletionHandler___block_invoke_3;
  block[3] = &unk_27977A2D8;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(serialQueue, block);
}

void __45__HSConnection_connectWithCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HSConnection_connectWithCompletionHandler___block_invoke_2;
  block[3] = &unk_27977A110;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __45__HSConnection_connectWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) connectionState])
  {
    v2 = os_log_create("com.apple.amp.HomeSharing", "Connections");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      v3 = *(*(a1 + 32) + 64);
      *buf = 134217984;
      v9 = v3;
      _os_log_impl(&dword_254418000, v2, OS_LOG_TYPE_FAULT, "Unable to connect, current state: %ld", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) setConnectionState:1];
    v4 = +[(HSRequest *)HSLoginRequest];
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__HSConnection_connectWithCompletionHandler___block_invoke_5;
    v6[3] = &unk_27977A160;
    v6[4] = v5;
    v7 = *(a1 + 40);
    [v5 _sendRequest:v4 withInternalResponseHandler:v6];
  }
}

void __45__HSConnection_connectWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 responseCode];
  if (v4 == 200)
  {
    v5 = [v3 sessionID];

    [*(a1 + 32) setSessionID:v5];
    v6 = os_log_create("com.apple.amp.HomeSharing", "Connections");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 32) sessionID];
      v15 = 67109120;
      LODWORD(v16) = v7;
      _os_log_impl(&dword_254418000, v6, OS_LOG_TYPE_INFO, "Connected with session ID: %d", &v15, 8u);
    }

    v8 = *(a1 + 32);
    if (v8[7])
    {
      [v8 _loadDatabaseWithInternalConnectionCompletionHandler:*(a1 + 40)];
    }

    else
    {
      v13 = [v8 fairPlayInfo];
      v14 = [v13 beginNegotiationWithSAPVersion:{objc_msgSend(*(a1 + 32), "_sapVersionForConnectionType")}];

      [*(a1 + 32) _continueFPSetupNegotiationWithData:v14 internalConnectionCompletionHandler:*(a1 + 40)];
    }
  }

  else
  {
    v9 = v4;
    v10 = [v3 error];

    v11 = os_log_create("com.apple.amp.HomeSharing", "Connections");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v10 domain];
      v15 = 134218498;
      v16 = v9;
      v17 = 2114;
      v18 = v12;
      v19 = 2048;
      v20 = [v10 code];
      _os_log_impl(&dword_254418000, v11, OS_LOG_TYPE_ERROR, "Received non-200 login response: %ld error domain: %{public}@ error code: %ld", &v15, 0x20u);
    }

    [*(a1 + 32) disconnect];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)dealloc
{
  [(HSConnection *)self setHomeSharingGroupID:0];
  [(HSConnection *)self setFairPlayInfo:0];
  v3.receiver = self;
  v3.super_class = HSConnection;
  [(HSConnection *)&v3 dealloc];
}

- (HSConnection)initWithBaseURL:(id)a3 connectionType:(int64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = HSConnection;
  v7 = [(HSConnection *)&v13 init];
  if (v7)
  {
    v8 = [v6 copy];
    baseURL = v7->_baseURL;
    v7->_baseURL = v8;

    v7->_connectionType = a4;
    v10 = dispatch_queue_create("com.apple.homesharing.HSConnection", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v10;

    v7->_databaseRevision = 1;
  }

  return v7;
}

@end