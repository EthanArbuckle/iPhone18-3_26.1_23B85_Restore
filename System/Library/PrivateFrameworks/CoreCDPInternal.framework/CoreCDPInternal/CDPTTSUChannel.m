@interface CDPTTSUChannel
- (CDPTTSUChannel)initWithContext:(id)a3;
- (void)listenForPayloadsWithHandler:(id)a3;
- (void)sendPayload:(id)a3 completion:(id)a4;
@end

@implementation CDPTTSUChannel

- (CDPTTSUChannel)initWithContext:(id)a3
{
  v5 = a3;
  v6 = [(CDPTTSUChannel *)self init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D02880]);
    v8 = [v5 sharingChannel];
    v9 = [v7 initWithTemplate:v8];
    sharingSession = v6->_sharingSession;
    v6->_sharingSession = v9;

    v6->_sentInitialResponse = 0;
    objc_storeStrong(&v6->_cdpContext, a3);
  }

  return v6;
}

- (void)sendPayload:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _CDPSignpostLogSystem();
  v9 = _CDPSignpostCreate();
  v11 = v10;

  v12 = _CDPSignpostLogSystem();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SecureChannelSendPayload", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v31 = v9;
    _os_log_impl(&dword_24510B000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SecureChannelSendPayload  enableTelemetry=YES ", buf, 0xCu);
  }

  v15 = MEMORY[0x277CBEB38];
  v28 = @"CDPChannelTTSUPayloadKey";
  v29 = v6;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v17 = [v15 dictionaryWithDictionary:v16];

  v18 = [(CDPContext *)self->_cdpContext telemetryFlowID];
  v19 = [(CDPContext *)self->_cdpContext telemetryDeviceSessionID];
  if (v18)
  {
    v20 = _CDPLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v20, OS_LOG_TYPE_DEFAULT, "CDPTTSUChannel: Flow ID exists on the requesting proxy, attaching to payload.", buf, 2u);
    }

    [v17 setObject:v18 forKeyedSubscript:@"CDPChannelTTSUTelemetryFlowId"];
  }

  sharingSession = self->_sharingSession;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __41__CDPTTSUChannel_sendPayload_completion___block_invoke;
  v24[3] = &unk_278E24D40;
  v26 = v9;
  v27 = v11;
  v24[4] = self;
  v25 = v7;
  v22 = v7;
  [(CUMessageSession *)sharingSession sendRequestID:@"CDPChannelTTSURequestID" options:MEMORY[0x277CBEC10] request:v17 responseHandler:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __41__CDPTTSUChannel_sendPayload_completion___block_invoke(void *a1, int a2, uint64_t a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 138412290;
    v37 = v6;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Response received: %@", &v36, 0xCu);
  }

  v8 = [v6 objectForKeyedSubscript:@"CDPChannelTTSUPayloadBackupRecordsExistKey"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 BOOLValue];
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __41__CDPTTSUChannel_sendPayload_completion___block_invoke_cold_1(v10, v11);
    }

    *(a1[4] + 8) = v10;
  }

  v12 = [v6 objectForKeyedSubscript:@"CDPChannelTTSUPayloadiCloudKeychainEnabledKey"];

  if (v12)
  {
    v13 = [v12 integerValue];
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __41__CDPTTSUChannel_sendPayload_completion___block_invoke_cold_2(v13, v14);
    }

    *(a1[4] + 16) = v13;
  }

  v15 = [v6 objectForKeyedSubscript:@"CDPChannelTTSUPayloadKey"];
  if (!v15)
  {
    v16 = _CDPLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v36) = 0;
    }
  }

  v17 = a1[6];
  v18 = a1[7];
  Nanoseconds = _CDPSignpostGetNanoseconds();
  v20 = _CDPSignpostLogSystem();
  v21 = v20;
  v22 = a1[6];
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    LOWORD(v36) = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v21, OS_SIGNPOST_INTERVAL_END, v22, "SecureChannelSendPayload", "", &v36, 2u);
  }

  v23 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = a1[6];
    v36 = 134218240;
    v37 = v24;
    v38 = 2048;
    v39 = Nanoseconds / 1000000000.0;
    _os_log_impl(&dword_24510B000, v23, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SecureChannelSendPayload ", &v36, 0x16u);
  }

  if (a2)
  {
    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
  }

  else
  {
    v25 = 0;
  }

  v26 = [v6 objectForKeyedSubscript:@"CDPChannelTTSUPayloadKey"];
  if (v25)
  {
    v27 = _CDPLogSystem();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      __41__CDPTTSUChannel_sendPayload_completion___block_invoke_cold_3(v25, v27);
    }

    v28 = a1[5];
    if (v28)
    {
      v29 = *(v28 + 16);
LABEL_33:
      v29();
    }
  }

  else
  {
    v30 = _CDPLogSystem();
    v31 = v30;
    if (v26)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        __41__CDPTTSUChannel_sendPayload_completion___block_invoke_cold_4(v26, v31);
      }

      v32 = a1[5];
      if (v32)
      {
        v29 = *(v32 + 16);
        goto LABEL_33;
      }
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        __41__CDPTTSUChannel_sendPayload_completion___block_invoke_cold_5(v31);
      }

      v34 = a1[5];
      if (v34)
      {
        v35 = [MEMORY[0x277CCA9B8] cdp_errorWithCode:-5320];
        (*(v34 + 16))(v34, 0, v35);
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)listenForPayloadsWithHandler:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Starting to listen for initiating payload...", buf, 2u);
  }

  sharingSession = self->_sharingSession;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __47__CDPTTSUChannel_listenForPayloadsWithHandler___block_invoke;
  v11 = &unk_278E24D68;
  v12 = self;
  v13 = v4;
  v7 = v4;
  [(CUMessageSession *)sharingSession registerRequestID:@"CDPChannelTTSURequestID" options:MEMORY[0x277CBEC10] handler:&v8];
  [(CUMessageSession *)self->_sharingSession activate:v8];
}

void __47__CDPTTSUChannel_listenForPayloadsWithHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v6;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Payload received from requestor: %@", buf, 0xCu);
  }

  v9 = [v6 objectForKeyedSubscript:@"CDPChannelTTSUPayloadKey"];
  v10 = [v6 objectForKeyedSubscript:@"CDPChannelTTSUTelemetryFlowId"];

  if (v10)
  {
    v11 = _CDPLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Flow ID was received from the requesting proxy, setting on the approving proxy.", buf, 2u);
    }

    v12 = [v6 objectForKeyedSubscript:@"CDPChannelTTSUTelemetryFlowId"];
    v13 = *(a1 + 32);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v15 = *(a1 + 40);
  v25 = 0;
  v26 = 0;
  (*(v15 + 16))();
  v16 = v26;
  v17 = v25;
  if (v16)
  {
    v18 = *(a1 + 32);
    if (*(v18 + 24))
    {
      v27 = @"CDPChannelTTSUPayloadKey";
      v28 = v16;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    }

    else
    {
      v30[0] = v16;
      v29[0] = @"CDPChannelTTSUPayloadKey";
      v29[1] = @"CDPChannelTTSUPayloadBackupRecordsExistKey";
      v20 = [MEMORY[0x277CCABB0] numberWithBool:*(v18 + 8)];
      v30[1] = v20;
      v29[2] = @"CDPChannelTTSUPayloadiCloudKeychainEnabledKey";
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(a1 + 32) + 16)];
      v30[2] = v21;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];

      *(*(a1 + 32) + 24) = 1;
    }
  }

  else
  {
    v19 = MEMORY[0x277CBEC10];
  }

  v22 = _CDPLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v19;
    _os_log_impl(&dword_24510B000, v22, OS_LOG_TYPE_DEFAULT, "Sending response to requestor: %@", buf, 0xCu);
  }

  if (v17)
  {
    v23 = 0xFFFFFFFFLL;
  }

  else
  {
    v23 = 0;
  }

  v7[2](v7, v23, MEMORY[0x277CBEC10], v19);

  v24 = *MEMORY[0x277D85DE8];
}

void __41__CDPTTSUChannel_sendPayload_completion___block_invoke_cold_1(char a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1 & 1;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "Setting _approverBackupRecordsExist = %{BOOL}d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void __41__CDPTTSUChannel_sendPayload_completion___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "Setting _approveriCloudKeychainState = %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __41__CDPTTSUChannel_sendPayload_completion___block_invoke_cold_3(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "CDPTTSUChannel: Received error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __41__CDPTTSUChannel_sendPayload_completion___block_invoke_cold_4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_24510B000, a2, OS_LOG_TYPE_DEBUG, "CDPTTSUChannel: Recieved reply: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end