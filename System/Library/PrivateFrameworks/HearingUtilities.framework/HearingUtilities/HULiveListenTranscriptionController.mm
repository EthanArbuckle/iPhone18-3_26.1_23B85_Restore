@interface HULiveListenTranscriptionController
- (HULiveListenTranscriptionController)init;
- (HULiveListenTranscriptionController)initWithDelegate:(id)delegate;
- (HULiveListenTranscriptionControllerDelegate)delegate;
- (void)startTranscribing;
- (void)stopTranscribing;
@end

@implementation HULiveListenTranscriptionController

- (void)stopTranscribing
{
  if (_os_feature_enabled_impl() && [(HULiveListenTranscriptionController *)self isTranscribing])
  {
    if (soft_AXHasCapability())
    {

      [(HULiveListenTranscriptionController *)self stopTranscribingV2];
    }

    else
    {
      AXPerformBlockOnMainThread();
    }
  }
}

- (HULiveListenTranscriptionController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(HULiveListenTranscriptionController *)self init];
  v6 = v5;
  if (v5)
  {
    [(HULiveListenTranscriptionController *)v5 setDelegate:delegateCopy];
  }

  return v6;
}

- (HULiveListenTranscriptionController)init
{
  v7.receiver = self;
  v7.super_class = HULiveListenTranscriptionController;
  v2 = [(HULiveListenTranscriptionController *)&v7 init];
  if (v2)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v3 = getAXLTLiveTranscriptionClass_softClass;
    v12 = getAXLTLiveTranscriptionClass_softClass;
    if (!getAXLTLiveTranscriptionClass_softClass)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __getAXLTLiveTranscriptionClass_block_invoke;
      v8[3] = &unk_1E85C9FB0;
      v8[4] = &v9;
      __getAXLTLiveTranscriptionClass_block_invoke(v8);
      v3 = v10[3];
    }

    v4 = v3;
    _Block_object_dispose(&v9, 8);
    sharedInstance = [v3 sharedInstance];
    [(HULiveListenTranscriptionController *)v2 setTranscriber:sharedInstance];
  }

  return v2;
}

- (void)startTranscribing
{
  if ((_os_feature_enabled_impl() & 1) != 0 || [(HULiveListenTranscriptionController *)self isTranscribing])
  {
    if (soft_AXHasCapability())
    {

      [(HULiveListenTranscriptionController *)self startTranscribingV2];
    }

    else
    {
      AXPerformBlockOnMainThread();
    }
  }
}

void __56__HULiveListenTranscriptionController_startTranscribing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transcriber];
  v3 = getpid();
  v6 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__HULiveListenTranscriptionController_startTranscribing__block_invoke_2;
  v7[3] = &unk_1E85CC438;
  v7[4] = *(a1 + 32);
  [v2 startTranscribing:1 targetPID:v3 callbackBlock:v7 error:&v6];
  v4 = v6;

  if (v4)
  {
    v5 = HCLogHearingAids();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __56__HULiveListenTranscriptionController_startTranscribing__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) setIsTranscribing:1];
    [*(a1 + 32) setCurrentTranscription:0];
  }
}

void __56__HULiveListenTranscriptionController_startTranscribing__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 transcribedText];
  v4 = [v3 length];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v13 transcribedText];
    v7 = [v5 stringWithFormat:@"%@", v6];

    v8 = [*(a1 + 32) currentTranscription];
    if (v8 && (v9 = v8, [*(a1 + 32) currentTranscription], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", &stru_1F5614A78), v10, v9, !v11))
    {
      v12 = [*(a1 + 32) delegate];
      [v12 transcriptionDidUpdate:v7];
    }

    else
    {
      v12 = [*(a1 + 32) delegate];
      [v12 transcriptionDidStart];
    }

    [*(a1 + 32) setCurrentTranscription:v7];
  }

  else
  {
    [*(a1 + 32) setCurrentTranscription:0];
  }
}

void __55__HULiveListenTranscriptionController_stopTranscribing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transcriber];
  v5 = 0;
  [v2 stopTranscribing:1 targetPID:getpid() error:&v5];
  v3 = v5;

  if (v3)
  {
    v4 = HCLogHearingAids();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__HULiveListenTranscriptionController_stopTranscribing__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) setIsTranscribing:0];
    [*(a1 + 32) setCurrentTranscription:0];
  }
}

void __58__HULiveListenTranscriptionController_startTranscribingV2__block_invoke(uint64_t a1)
{
  v2 = +[HULiveCaptionsObjC shared];
  [*(a1 + 32) setLiveCaptionsService:v2];

  v3 = MEMORY[0x1E695DF58];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v4 = getAXLCLiveCaptionsSelectedLocaleIdentifierSymbolLoc_ptr;
  v24 = getAXLCLiveCaptionsSelectedLocaleIdentifierSymbolLoc_ptr;
  if (!getAXLCLiveCaptionsSelectedLocaleIdentifierSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getAXLCLiveCaptionsSelectedLocaleIdentifierSymbolLoc_block_invoke;
    v19 = &unk_1E85C9FB0;
    v20 = &v21;
    v5 = LiveTranscriptionLibrary();
    v22[3] = dlsym(v5, "AXLCLiveCaptionsSelectedLocaleIdentifier");
    getAXLCLiveCaptionsSelectedLocaleIdentifierSymbolLoc_ptr = *(v20[1] + 24);
    v4 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (!v4)
  {
    ADAFMetadataKeyHAEDataForGauge_cold_1 = getADAFMetadataKeyHAEDataForGauge_cold_1();
    _Block_object_dispose(&v21, 8);
    _Unwind_Resume(ADAFMetadataKeyHAEDataForGauge_cold_1);
  }

  v6 = v4();
  v7 = [v3 localeWithLocaleIdentifier:v6];

  v8 = [*(a1 + 32) liveCaptionsService];
  v9 = +[HULiveCaptionsObjC sourceTypeSystem];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __58__HULiveListenTranscriptionController_startTranscribingV2__block_invoke_2;
  v14[3] = &unk_1E85CC460;
  v14[4] = *(a1 + 32);
  v15 = 0;
  [v8 startWithSource:v9 locale:v7 sharedRoute:0 excludePIDs:0 error:&v15 transcriptionResult:v14];
  v10 = v15;

  v11 = HCLogHearingAids();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __58__HULiveListenTranscriptionController_startTranscribingV2__block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DA5E2000, v12, OS_LOG_TYPE_INFO, "Started transcribing V2", buf, 2u);
    }

    [*(a1 + 32) setIsTranscribing:1];
    [*(a1 + 32) setCurrentTranscription:0];
  }
}

void __58__HULiveListenTranscriptionController_startTranscribingV2__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v4 text];
  v6 = [v3 stringWithFormat:@"%@", v5];
  v7 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v17 = [v6 stringByTrimmingCharactersInSet:v7];

  v8 = [v4 resultType];
  v9 = +[HULiveCaptionsObjC resultTypeFinal];
  v10 = *(a1 + 32);
  if (v8 == v9)
  {
    v11 = [v10 delegate];
    [v11 transcriptionDidUpdate:v17];
    v12 = 0;
  }

  else
  {
    v13 = [v10 currentTranscription];
    if (v13 && (v14 = v13, [*(a1 + 32) currentTranscription], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", &stru_1F5614A78), v15, v14, !v16))
    {
      v11 = [*(a1 + 32) delegate];
      [v11 transcriptionDidUpdate:v17];
    }

    else
    {
      v11 = [*(a1 + 32) delegate];
      [v11 transcriptionDidStart];
    }

    v12 = v17;
  }

  [*(a1 + 32) setCurrentTranscription:v12];
}

void __57__HULiveListenTranscriptionController_stopTranscribingV2__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) liveCaptionsService];
  v7 = 0;
  [v2 stop:+[HULiveCaptionsObjC sourceTypeSystem](HULiveCaptionsObjC error:{"sourceTypeSystem"), &v7}];
  v3 = v7;

  v4 = HCLogHearingAids();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __57__HULiveListenTranscriptionController_stopTranscribingV2__block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DA5E2000, v5, OS_LOG_TYPE_INFO, "Stopped transcribing V2", v6, 2u);
    }

    [*(a1 + 32) setIsTranscribing:0];
    [*(a1 + 32) setCurrentTranscription:0];
  }
}

- (HULiveListenTranscriptionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __56__HULiveListenTranscriptionController_startTranscribing__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, v0, v1, "Failed to start transcribing: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__HULiveListenTranscriptionController_stopTranscribing__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, v0, v1, "Failed to stop transcribing: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __58__HULiveListenTranscriptionController_startTranscribingV2__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, v0, v1, "Failed to start transcribing V2: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __57__HULiveListenTranscriptionController_stopTranscribingV2__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_1DA5E2000, v0, v1, "Failed to stop transcribing V2: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end