@interface OspreyChannel
- (OspreyChannel)initWithURL:(id)a3 configuration:(id)a4 useCache:(BOOL)a5;
- (id)_buildRequestWithMethodName:(id)a3 requestBuilder:(id)a4;
- (id)bidirectionalStreamingRequestWithMethodName:(id)a3 requestBuilder:(id)a4 streamingResponseHandler:(id)a5 completion:(id)a6;
- (id)clientStreamingRequestWithMethodName:(id)a3 requestBuilder:(id)a4 responseHandler:(id)a5;
- (void)_prepareChannelWithRequest:(id)a3 continueWith:(id)a4;
- (void)_prepareDeviceAuthenticationWithCompletion:(id)a3;
- (void)dealloc;
- (void)initializeDeviceAuthenticationSessionWithCompletion:(id)a3;
- (void)performBidirectionalStreamingRequest:(id)a3 handler:(id)a4 completion:(id)a5;
- (void)performRequest:(id)a3 handler:(id)a4;
- (void)serverStreamingRequestWithMethodName:(id)a3 requestData:(id)a4 requestBuilder:(id)a5 streamingResponseHandler:(id)a6 completion:(id)a7;
- (void)unaryRequestWithMethodName:(id)a3 requestData:(id)a4 requestBuilder:(id)a5 responseHandler:(id)a6;
@end

@implementation OspreyChannel

- (OspreyChannel)initWithURL:(id)a3 configuration:(id)a4 useCache:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v36.receiver = self;
  v36.super_class = OspreyChannel;
  v10 = [(OspreyChannel *)&v36 init];
  if (v10)
  {
    OspreyLoggingInit();
    v11 = OspreyLogContextChannel;
    if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_DEBUG))
    {
      [OspreyChannel initWithURL:v11 configuration:? useCache:?];
    }

    v12 = [v8 copy];
    url = v10->_url;
    v10->_url = v12;

    v14 = [(NSURL *)v10->_url host];
    v15 = [v9 copy];
    configuration = v10->_configuration;
    v10->_configuration = v15;

    v17 = [@"OspreyChannel." stringByAppendingString:v14];
    v18 = [v17 UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(v18, v19);
    queue = v10->_queue;
    v10->_queue = v20;

    v22 = [OspreyPreferences alloc];
    v23 = objc_alloc_init(OspreyKeychain);
    v24 = [(OspreyPreferences *)v22 initWithKeychain:v23];
    preferences = v10->_preferences;
    v10->_preferences = v24;

    v26 = [(OspreyPreferences *)v10->_preferences connectionPreferencesForHost:v14];
    connectionPreferences = v10->_connectionPreferences;
    v10->_connectionPreferences = v26;

    v28 = objc_alloc_init(OspreyChannelRequestOptions);
    defaultRequestOptions = v10->_defaultRequestOptions;
    v10->_defaultRequestOptions = v28;

    v10->_enableDeviceAuthentication = 1;
    v30 = dispatch_group_create();
    validationGroup = v10->_validationGroup;
    v10->_validationGroup = v30;

    v10->_waitingForSignature = 0;
    signatureError = v10->_signatureError;
    v10->_signatureError = 0;

    if (!a5)
    {
      [v9 setRequestCachePolicy:4];
    }

    v33 = [[OspreyGRPCChannel alloc] initWithURL:v8 configuration:v9 queue:v10->_queue];
    channel = v10->_channel;
    v10->_channel = v33;
  }

  return v10;
}

- (void)dealloc
{
  [(OspreyChannel *)self close];
  v3.receiver = self;
  v3.super_class = OspreyChannel;
  [(OspreyChannel *)&v3 dealloc];
}

- (void)unaryRequestWithMethodName:(id)a3 requestData:(id)a4 requestBuilder:(id)a5 responseHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = [(OspreyChannel *)self _buildRequestWithMethodName:a3 requestBuilder:a5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__OspreyChannel_unaryRequestWithMethodName_requestData_requestBuilder_responseHandler___block_invoke;
  v16[3] = &unk_2799F20E8;
  v16[4] = self;
  v17 = v12;
  v18 = v10;
  v19 = v11;
  v13 = v10;
  v14 = v12;
  v15 = v11;
  [(OspreyChannel *)self _prepareChannelWithRequest:v14 continueWith:v16];
}

uint64_t __87__OspreyChannel_unaryRequestWithMethodName_requestData_requestBuilder_responseHandler___block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a1[7] + 16))();
  }

  else
  {
    return [*(a1[4] + 32) unaryRequest:a1[5] requestData:a1[6] responseHandler:a1[7]];
  }
}

- (void)serverStreamingRequestWithMethodName:(id)a3 requestData:(id)a4 requestBuilder:(id)a5 streamingResponseHandler:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [(OspreyChannel *)self _buildRequestWithMethodName:a3 requestBuilder:a5];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __117__OspreyChannel_serverStreamingRequestWithMethodName_requestData_requestBuilder_streamingResponseHandler_completion___block_invoke;
  v20[3] = &unk_2799F2110;
  v20[4] = self;
  v21 = v15;
  v22 = v12;
  v23 = v14;
  v24 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v15;
  v19 = v14;
  [(OspreyChannel *)self _prepareChannelWithRequest:v18 continueWith:v20];
}

uint64_t __117__OspreyChannel_serverStreamingRequestWithMethodName_requestData_requestBuilder_streamingResponseHandler_completion___block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a1[7] + 16))();
  }

  else
  {
    return [*(a1[4] + 32) serverStreamingRequest:a1[5] requestData:a1[6] streamingResponseHandler:a1[8] completion:a1[7]];
  }
}

- (id)clientStreamingRequestWithMethodName:(id)a3 requestBuilder:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(OspreyChannel *)self _buildRequestWithMethodName:v8 requestBuilder:v9];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__1;
  v32[4] = __Block_byref_object_dispose__1;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __85__OspreyChannel_clientStreamingRequestWithMethodName_requestBuilder_responseHandler___block_invoke;
  v29[3] = &unk_2799F2138;
  v29[4] = v30;
  v29[5] = v32;
  v12 = MEMORY[0x25F8A5BA0](v29);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __85__OspreyChannel_clientStreamingRequestWithMethodName_requestBuilder_responseHandler___block_invoke_2;
  v26[3] = &unk_2799F20C0;
  v13 = v10;
  v27 = v13;
  v28 = v32;
  v14 = MEMORY[0x25F8A5BA0](v26);
  v15 = [(OspreyGRPCChannel *)self->_channel clientStreamingContextForRequest:v11 streamingResponseHandler:v12 completion:v14];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85__OspreyChannel_clientStreamingRequestWithMethodName_requestBuilder_responseHandler___block_invoke_3;
  v22[3] = &unk_2799F20E8;
  v16 = v13;
  v25 = v16;
  v22[4] = self;
  v17 = v11;
  v23 = v17;
  v18 = v15;
  v24 = v18;
  [(OspreyChannel *)self _prepareChannelWithRequest:v17 continueWith:v22];
  v19 = v24;
  v20 = v18;

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);

  return v20;
}

void __85__OspreyChannel_clientStreamingRequestWithMethodName_requestBuilder_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v4 = v5;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t __85__OspreyChannel_clientStreamingRequestWithMethodName_requestBuilder_responseHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40), a2);
  }

  return result;
}

uint64_t __85__OspreyChannel_clientStreamingRequestWithMethodName_requestBuilder_responseHandler___block_invoke_3(void *a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a1[7] + 16))();
  }

  else
  {
    return [*(a1[4] + 32) bidirectionalStreamingRequest:a1[5] streamingContext:a1[6]];
  }
}

- (id)bidirectionalStreamingRequestWithMethodName:(id)a3 requestBuilder:(id)a4 streamingResponseHandler:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [(OspreyChannel *)self _buildRequestWithMethodName:a3 requestBuilder:a4];
  v13 = [(OspreyGRPCChannel *)self->_channel clientStreamingContextForRequest:v12 streamingResponseHandler:v11 completion:v10];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __112__OspreyChannel_bidirectionalStreamingRequestWithMethodName_requestBuilder_streamingResponseHandler_completion___block_invoke;
  v20[3] = &unk_2799F20E8;
  v23 = v10;
  v20[4] = self;
  v21 = v12;
  v14 = v13;
  v22 = v14;
  v15 = v12;
  v16 = v10;
  [(OspreyChannel *)self _prepareChannelWithRequest:v15 continueWith:v20];
  v17 = v22;
  v18 = v14;

  return v14;
}

uint64_t __112__OspreyChannel_bidirectionalStreamingRequestWithMethodName_requestBuilder_streamingResponseHandler_completion___block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a1[7] + 16))();
  }

  else
  {
    return [*(a1[4] + 32) bidirectionalStreamingRequest:a1[5] streamingContext:a1[6]];
  }
}

- (void)initializeDeviceAuthenticationSessionWithCompletion:(id)a3
{
  v4 = a3;
  if (self->_enableDeviceAuthentication)
  {
    queue = self->_queue;
    v6 = qos_class_self();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__OspreyChannel_initializeDeviceAuthenticationSessionWithCompletion___block_invoke;
    v9[3] = &unk_2799F2188;
    v9[4] = self;
    v10 = v4;
    v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v6, 0, v9);
    dispatch_async(queue, v7);
  }

  else
  {
    OspreyLoggingInit();
    v8 = OspreyLogContextChannel;
    if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_ERROR))
    {
      [OspreyChannel initializeDeviceAuthenticationSessionWithCompletion:v8];
    }

    (*(v4 + 2))(v4, 0);
  }
}

void __69__OspreyChannel_initializeDeviceAuthenticationSessionWithCompletion___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __69__OspreyChannel_initializeDeviceAuthenticationSessionWithCompletion___block_invoke_2;
  v2[3] = &unk_2799F2160;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 _prepareDeviceAuthenticationWithCompletion:v2];
}

void __69__OspreyChannel_initializeDeviceAuthenticationSessionWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  OspreyLoggingInit();
  v5 = OspreyLogContextChannel;
  if (v4)
  {
    if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_ERROR))
    {
      __69__OspreyChannel_initializeDeviceAuthenticationSessionWithCompletion___block_invoke_2_cold_1(v5, v4);
    }
  }

  else if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_DEBUG))
  {
    __69__OspreyChannel_initializeDeviceAuthenticationSessionWithCompletion___block_invoke_2_cold_2(v5);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)_buildRequestWithMethodName:(id)a3 requestBuilder:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[OspreyMutableRequest alloc] initWithMethodName:v7];

  [(OspreyMutableRequest *)v8 setEnableDeviceAuthentication:self->_enableDeviceAuthentication];
  [(OspreyChannelRequestOptions *)self->_defaultRequestOptions applyToOspreyMutableRequest:v8];
  if (v6)
  {
    v6[2](v6, v8);
  }

  v9 = [(OspreyMutableRequest *)v8 buildInternalRequest];

  return v9;
}

- (void)_prepareChannelWithRequest:(id)a3 continueWith:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v9 = qos_class_self();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__OspreyChannel__prepareChannelWithRequest_continueWith___block_invoke;
  block[3] = &unk_2799F21D8;
  v15 = self;
  v16 = v7;
  v14 = v6;
  v10 = v7;
  v11 = v6;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v9, 0, block);
  dispatch_async(queue, v12);
}

void __57__OspreyChannel__prepareChannelWithRequest_continueWith___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) enableDeviceAuthentication])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__OspreyChannel__prepareChannelWithRequest_continueWith___block_invoke_2;
    v7[3] = &unk_2799F21B0;
    v2 = *(a1 + 40);
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v8 = v3;
    v9 = v4;
    v10 = v5;
    [v2 _prepareDeviceAuthenticationWithCompletion:v7];
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

void __57__OspreyChannel__prepareChannelWithRequest_continueWith___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (!v7)
  {
    [*(a1 + 32) setSignedDeviceAuthenticationData:a2];
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 40) + 40), "currentStrategyVersion")}];
    [v5 setDeviceAuthenticationVersion:v6];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_prepareDeviceAuthenticationWithCompletion:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_deviceAuthenticator)
  {
    v5 = [[OspreyDeviceAuthentication alloc] initWithChannel:self->_channel connectionPreferences:self->_connectionPreferences allPreferences:self->_preferences];
    deviceAuthenticator = self->_deviceAuthenticator;
    self->_deviceAuthenticator = v5;
  }

  v7 = [(OspreyConnectionPreferences *)self->_connectionPreferences deviceAttestationData];
  if (v7)
  {
    OspreyLoggingInit();
    v8 = OspreyLogContextChannel;
    if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[OspreyChannel _prepareDeviceAuthenticationWithCompletion:]";
      _os_log_impl(&dword_25DDE6000, v8, OS_LOG_TYPE_INFO, "%s Reusing existing session info", buf, 0xCu);
    }

    v4[2](v4, v7, 0);
  }

  else
  {
    if (self->_waitingForSignature)
    {
      validationGroup = self->_validationGroup;
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__OspreyChannel__prepareDeviceAuthenticationWithCompletion___block_invoke;
      block[3] = &unk_2799F1F48;
      block[4] = self;
      v19 = v4;
      dispatch_group_notify(validationGroup, queue, block);
      v11 = v19;
    }

    else
    {
      self->_waitingForSignature = 1;
      dispatch_group_enter(self->_validationGroup);
      v12 = self->_deviceAuthenticator;
      v13 = objc_alloc_init(MEMORY[0x277CBEA90]);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __60__OspreyChannel__prepareDeviceAuthenticationWithCompletion___block_invoke_2;
      v16[3] = &unk_2799F2228;
      v16[4] = self;
      v17 = v4;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __60__OspreyChannel__prepareDeviceAuthenticationWithCompletion___block_invoke_16;
      v14[3] = &unk_2799F1E80;
      v14[4] = self;
      v15 = v17;
      [(OspreyDeviceAuthentication *)v12 signData:v13 success:v16 failure:v14];

      v11 = v17;
    }
  }
}

void __60__OspreyChannel__prepareDeviceAuthenticationWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 80) deviceAttestationData];
  (*(v2 + 16))(v2, v3, *(*(a1 + 32) + 64));
}

void __60__OspreyChannel__prepareDeviceAuthenticationWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 24);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__OspreyChannel__prepareDeviceAuthenticationWithCompletion___block_invoke_3;
  v12[3] = &unk_2799F2200;
  v13 = v5;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void __60__OspreyChannel__prepareDeviceAuthenticationWithCompletion___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  OspreyLoggingInit();
  v2 = OspreyLogContextChannel;
  if (os_log_type_enabled(OspreyLogContextChannel, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 base64EncodedStringWithOptions:0];
    v10 = 136315394;
    v11 = "[OspreyChannel _prepareDeviceAuthenticationWithCompletion:]_block_invoke_3";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_25DDE6000, v4, OS_LOG_TYPE_INFO, "%s Signed validation header data: %@", &v10, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = *(v6 + 64);
  *(v6 + 64) = 0;

  v8 = *(*(a1 + 40) + 80);
  v9 = [*(a1 + 32) copy];
  [v8 setDeviceAttestationData:v9 withExpiration:*(a1 + 48)];

  [*(*(a1 + 40) + 72) setConnectionPreferences:*(*(a1 + 40) + 80)];
  [*(*(a1 + 40) + 72) synchronize];
  (*(*(a1 + 56) + 16))();
  *(*(a1 + 40) + 56) = 0;
  dispatch_group_leave(*(*(a1 + 40) + 48));
}

void __60__OspreyChannel__prepareDeviceAuthenticationWithCompletion___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__OspreyChannel__prepareDeviceAuthenticationWithCompletion___block_invoke_2_17;
  block[3] = &unk_2799F2250;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void __60__OspreyChannel__prepareDeviceAuthenticationWithCompletion___block_invoke_2_17(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  [*(*(a1 + 32) + 80) deleteDeviceAttestationData];
  [*(*(a1 + 32) + 72) setConnectionPreferences:*(*(a1 + 32) + 80)];
  [*(*(a1 + 32) + 72) synchronize];
  (*(*(a1 + 48) + 16))();
  *(*(a1 + 32) + 56) = 0;
  v5 = *(*(a1 + 32) + 48);

  dispatch_group_leave(v5);
}

- (void)performRequest:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 methodName];
  v9 = [v6 data];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__OspreyChannel_performRequest_handler___block_invoke;
  v11[3] = &unk_2799F2278;
  v12 = v6;
  v10 = v6;
  [(OspreyChannel *)self unaryRequestWithMethodName:v8 requestData:v9 requestBuilder:v11 responseHandler:v7];
}

void __40__OspreyChannel_performRequest_handler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) clientTraceId];

  if (v3)
  {
    v4 = [*(a1 + 32) clientTraceId];
    [v5 setClientTraceIdentifier:v4];
  }
}

- (void)performBidirectionalStreamingRequest:(id)a3 handler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__OspreyChannel_performBidirectionalStreamingRequest_handler_completion___block_invoke;
  v17[3] = &unk_2799F2278;
  v9 = v8;
  v18 = v9;
  v10 = a5;
  v11 = a4;
  v12 = MEMORY[0x25F8A5BA0](v17);
  v13 = [v9 methodName];
  v14 = [(OspreyChannel *)self bidirectionalStreamingRequestWithMethodName:v13 requestBuilder:v12 streamingResponseHandler:v11 completion:v10];

  v15 = [v9 data];

  if (v15)
  {
    v16 = [v9 data];
    [v14 writeFrame:v16];

    [v14 finishWriting];
  }
}

void __73__OspreyChannel_performBidirectionalStreamingRequest_handler_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) clientTraceId];

  if (v3)
  {
    v4 = [*(a1 + 32) clientTraceId];
    [v5 setClientTraceIdentifier:v4];
  }
}

- (void)initWithURL:(os_log_t)log configuration:useCache:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyChannel initWithURL:configuration:useCache:]";
  _os_log_debug_impl(&dword_25DDE6000, log, OS_LOG_TYPE_DEBUG, "%s Initializing Osprey channel...", &v1, 0xCu);
}

- (void)initializeDeviceAuthenticationSessionWithCompletion:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyChannel initializeDeviceAuthenticationSessionWithCompletion:]";
  _os_log_error_impl(&dword_25DDE6000, log, OS_LOG_TYPE_ERROR, "%s Failed to initialize device authentication session: device authentication was disabled!", &v1, 0xCu);
}

void __69__OspreyChannel_initializeDeviceAuthenticationSessionWithCompletion___block_invoke_2_cold_1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 136315394;
  v6 = "[OspreyChannel initializeDeviceAuthenticationSessionWithCompletion:]_block_invoke_2";
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_ERROR, "%s Failed to initialize device authentication session: %@", &v5, 0x16u);
}

void __69__OspreyChannel_initializeDeviceAuthenticationSessionWithCompletion___block_invoke_2_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyChannel initializeDeviceAuthenticationSessionWithCompletion:]_block_invoke";
  _os_log_debug_impl(&dword_25DDE6000, log, OS_LOG_TYPE_DEBUG, "%s Successfully initialized device authentication session!", &v1, 0xCu);
}

@end