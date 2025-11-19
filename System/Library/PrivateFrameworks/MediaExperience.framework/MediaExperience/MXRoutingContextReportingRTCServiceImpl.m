@interface MXRoutingContextReportingRTCServiceImpl
- (void)_configurationDidFinish;
- (void)dealloc;
- (void)sendModificationResult:(id)a3;
@end

@implementation MXRoutingContextReportingRTCServiceImpl

uint64_t __88__MXRoutingContextReportingRTCServiceImpl_initWithFigEndpointType_routeChangeSucceeded___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [objc_loadWeak((a1 + 32)) _configurationDidFinish];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  mWorkQueue = self->mWorkQueue;
  if (mWorkQueue)
  {
    dispatch_release(mWorkQueue);
  }

  self->mWorkQueue = 0;

  self->mConfigured = 0;
  v4.receiver = self;
  v4.super_class = MXRoutingContextReportingRTCServiceImpl;
  [(MXRoutingContextReportingRTCServiceImpl *)&v4 dealloc];
}

- (void)_configurationDidFinish
{
  [(NSCondition *)self->mConfigurationCondition lock];
  self->mConfigured = 1;
  [(NSCondition *)self->mConfigurationCondition broadcast];
  mConfigurationCondition = self->mConfigurationCondition;

  [(NSCondition *)mConfigurationCondition unlock];
}

- (void)sendModificationResult:(id)a3
{
  mWorkQueue = self->mWorkQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__MXRoutingContextReportingRTCServiceImpl_sendModificationResult___block_invoke;
  v4[3] = &unk_1E7AEA340;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(mWorkQueue, v4);
}

uint64_t __66__MXRoutingContextReportingRTCServiceImpl_sendModificationResult___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 16) lock];
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    do
    {
      [*(v2 + 16) wait];
      v2 = *(a1 + 32);
    }

    while (*(v2 + 24) != 1);
  }

  [*(v2 + 16) unlock];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v3 = getkRTCReportingMessageParametersCategorySymbolLoc_ptr;
  v24 = getkRTCReportingMessageParametersCategorySymbolLoc_ptr;
  if (!getkRTCReportingMessageParametersCategorySymbolLoc_ptr)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getkRTCReportingMessageParametersCategorySymbolLoc_block_invoke;
    v17 = &unk_1E7AE73A0;
    v18 = &v21;
    v4 = RTCReportingLibrary();
    v22[3] = dlsym(v4, "kRTCReportingMessageParametersCategory");
    getkRTCReportingMessageParametersCategorySymbolLoc_ptr = *(v18[1] + 24);
    v3 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v3)
  {
    goto LABEL_15;
  }

  v19[0] = *v3;
  v20[0] = &unk_1F28AF770;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v5 = getkRTCReportingMessageParametersTypeSymbolLoc_ptr;
  v24 = getkRTCReportingMessageParametersTypeSymbolLoc_ptr;
  if (!getkRTCReportingMessageParametersTypeSymbolLoc_ptr)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getkRTCReportingMessageParametersTypeSymbolLoc_block_invoke;
    v17 = &unk_1E7AE73A0;
    v18 = &v21;
    v6 = RTCReportingLibrary();
    v22[3] = dlsym(v6, "kRTCReportingMessageParametersType");
    getkRTCReportingMessageParametersTypeSymbolLoc_ptr = *(v18[1] + 24);
    v5 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v5)
  {
    goto LABEL_15;
  }

  v19[1] = *v5;
  v20[1] = &unk_1F28AF770;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v7 = getkRTCReportingMessageParametersPayloadSymbolLoc_ptr;
  v24 = getkRTCReportingMessageParametersPayloadSymbolLoc_ptr;
  if (!getkRTCReportingMessageParametersPayloadSymbolLoc_ptr)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __getkRTCReportingMessageParametersPayloadSymbolLoc_block_invoke;
    v17 = &unk_1E7AE73A0;
    v18 = &v21;
    v8 = RTCReportingLibrary();
    v22[3] = dlsym(v8, "kRTCReportingMessageParametersPayload");
    getkRTCReportingMessageParametersPayloadSymbolLoc_ptr = *(v18[1] + 24);
    v7 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v7)
  {
LABEL_15:
    __68__MXBiomeStreams_updateBiomeSilentMode_clientType_untilTime_reason___block_invoke_cold_1();
    __break(1u);
  }

  v19[2] = *v7;
  v20[2] = [*(a1 + 40) RTCDictionary];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v13 = 0;
  result = [*(*(a1 + 32) + 8) sendMessageWithDictionary:v9 error:&v13];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

@end