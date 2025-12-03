@interface HDSDeviceActivation
+ (OS_os_log)signpostLog;
- (id)_setupUserAgent;
- (unint64_t)signpostID;
- (void)_mae_activateWithData:(id)data headers:(id)headers completion:(id)completion;
- (void)_mae_createActivationWithData:(id)data completion:(id)completion;
- (void)_mae_createSessionWithCompletion:(id)completion;
- (void)_mae_getActivationStateWithCompletion:(id)completion;
- (void)performActivationStep:(id)step completion:(id)completion;
@end

@implementation HDSDeviceActivation

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HDSDeviceActivation_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_169 != -1)
  {
    dispatch_once(&signpostLog_onceToken_169, block);
  }

  v2 = signpostLog_log_168;

  return v2;
}

void __34__HDSDeviceActivation_signpostLog__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.HomeDeviceSetup.signposts", [v4 UTF8String]);
  v3 = signpostLog_log_168;
  signpostLog_log_168 = v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (void)_mae_getActivationStateWithCompletion:(id)completion
{
  v18[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (gLogCategory_HDSDeviceActivation <= 30 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceActivation _mae_getActivationStateWithCompletion:];
  }

  signpostLog = [objc_opt_class() signpostLog];
  signpostID = [(HDSDeviceActivation *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = signpostID;
    if (os_signpost_enabled(signpostLog))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "DeviceActivationStepCheckState", "", v16, 2u);
    }
  }

  v8 = MAEGetActivationStateWithError();
  v9 = [v8 isEqualToString:*MEMORY[0x277D288C0]];
  signpostLog2 = [objc_opt_class() signpostLog];
  signpostID2 = [(HDSDeviceActivation *)self signpostID];
  if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = signpostID2;
    if (os_signpost_enabled(signpostLog2))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v12, "DeviceActivationStepCheckState", "", v16, 2u);
    }
  }

  v17 = @"a";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:v9 ^ 1u];
  v18[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  completionCopy[2](completionCopy, 0, v14);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)performActivationStep:(id)step completion:(id)completion
{
  stepCopy = step;
  completionCopy = completion;
  if (gLogCategory_HDSDeviceActivation <= 30 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceActivation performActivationStep:completion:];
  }

  v8 = [stepCopy objectForKeyedSubscript:@"s"];
  if (!v8)
  {
    [HDSDeviceActivation performActivationStep:a2 completion:self];
  }

  integerValue = [v8 integerValue];
  if (integerValue > 1)
  {
    if (integerValue == 2)
    {
      v10 = [stepCopy objectForKeyedSubscript:@"d"];
      [(HDSDeviceActivation *)self _mae_createActivationWithData:v10 completion:completionCopy];
    }

    else
    {
      if (integerValue != 3)
      {
LABEL_13:
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"HDSDeviceActivation.m" lineNumber:341 description:@"invalid activation step"];

        goto LABEL_17;
      }

      v10 = [stepCopy objectForKeyedSubscript:@"d"];
      v11 = [stepCopy objectForKeyedSubscript:@"h"];
      [(HDSDeviceActivation *)self _mae_activateWithData:v10 headers:v11 completion:completionCopy];
    }
  }

  else
  {
    if (integerValue)
    {
      if (integerValue == 1)
      {
        [(HDSDeviceActivation *)self _mae_createSessionWithCompletion:completionCopy];
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    [(HDSDeviceActivation *)self _mae_getActivationStateWithCompletion:completionCopy];
  }

LABEL_17:
}

- (void)_mae_createSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_HDSDeviceActivation <= 30 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceActivation _mae_createSessionWithCompletion:];
  }

  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HDSDeviceActivation__mae_createSessionWithCompletion___block_invoke;
  v7[3] = &unk_279714210;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

void __56__HDSDeviceActivation__mae_createSessionWithCompletion___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() signpostLog];
  v4 = [*(a1 + 32) signpostID];
  if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "DeviceActivationStepCreateSession", "", buf, 2u);
    }
  }

  v26 = 0;
  v27 = 0;
  v6 = MAECreateSessionRequestWithError();
  v7 = 0;
  v8 = 0;
  if (v6)
  {
    v9 = MEMORY[0x277CCAAB0];
    v10 = v7;
    v11 = [[v9 alloc] initRequiringSecureCoding:1];
    [v11 encodeObject:v10 forKey:@"request"];

    [v11 finishEncoding];
    v12 = [v11 encodedData];

    v29 = @"r";
    v30[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  }

  else
  {
    if (gLogCategory_HDSDeviceActivation <= 40 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
    {
      __56__HDSDeviceActivation__mae_createSessionWithCompletion___block_invoke_cold_1();
    }

    v13 = 0;
  }

  v14 = *(a1 + 32);
  v15 = [objc_opt_class() signpostLog];
  v16 = [*(a1 + 32) signpostID];
  if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v16;
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v15, OS_SIGNPOST_INTERVAL_END, v17, "DeviceActivationStepCreateSession", "", buf, 2u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HDSDeviceActivation__mae_createSessionWithCompletion___block_invoke_181;
  block[3] = &unk_279714D60;
  v18 = *(a1 + 40);
  v24 = v13;
  v25 = v18;
  v23 = v8;
  v19 = v13;
  v20 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_mae_createActivationWithData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if (gLogCategory_HDSDeviceActivation <= 30 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceActivation _mae_createActivationWithData:completion:];
  }

  v9 = dispatch_get_global_queue(25, 0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__HDSDeviceActivation__mae_createActivationWithData_completion___block_invoke;
  v12[3] = &unk_279714D88;
  v12[4] = self;
  v13 = dataCopy;
  v14 = completionCopy;
  v15 = a2;
  v10 = completionCopy;
  v11 = dataCopy;
  dispatch_async(v9, v12);
}

void __64__HDSDeviceActivation__mae_createActivationWithData_completion___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = [objc_opt_class() signpostLog];
  v5 = [*v3 signpostID];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "DeviceActivationStepCreateActivation", "", buf, 2u);
    }
  }

  v7 = *(a1 + 40);
  v51 = 0;
  v52 = 0;
  v8 = MAECreateActivationRequestWithError();
  v9 = 0;
  v10 = 0;
  if (v8)
  {
    v11 = [v9 valueForHTTPHeaderField:@"User-Agent"];
    if (!v11)
    {
      __64__HDSDeviceActivation__mae_createActivationWithData_completion___block_invoke_cold_2(a1, v3);
    }

    v12 = [*v3 _setupUserAgent];
    v42 = [v12 stringByAppendingFormat:@" %@", v11];
    [v9 setValue:? forHTTPHeaderField:?];
    v13 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v14 = [v13 firstObject];
    [v9 setValue:v14 forHTTPHeaderField:@"Accept-Language"];

    if (IsAppleInternalBuild())
    {
      v15 = [v9 URL];
      v16 = [v15 absoluteString];
      v17 = [v16 hasSuffix:@"/deviceActivation"];

      if (v17)
      {
        v40 = v12;
        v41 = v11;
        v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v19 = [v18 dictionaryForKey:@"CustomActivationHeaders"];

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v48;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v48 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v47 + 1) + 8 * i);
              v26 = [v20 objectForKeyedSubscript:v25];
              [v9 setValue:v26 forHTTPHeaderField:v25];
            }

            v22 = [v20 countByEnumeratingWithState:&v47 objects:v56 count:16];
          }

          while (v22);
        }

        v12 = v40;
        v11 = v41;
      }
    }

    v27 = MEMORY[0x277CCAAB0];
    v28 = v9;
    v29 = [[v27 alloc] initRequiringSecureCoding:1];
    [v29 encodeObject:v28 forKey:@"request"];

    [v29 finishEncoding];
    v30 = [v29 encodedData];

    v54 = @"r";
    v55 = v30;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  }

  else
  {
    if (gLogCategory_HDSDeviceActivation <= 40 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
    {
      __64__HDSDeviceActivation__mae_createActivationWithData_completion___block_invoke_cold_1();
    }

    v31 = 0;
  }

  v32 = *v3;
  v33 = [objc_opt_class() signpostLog];
  v34 = [*v3 signpostID];
  if ((v34 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v35 = v34;
    if (os_signpost_enabled(v33))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v33, OS_SIGNPOST_INTERVAL_END, v35, "DeviceActivationStepCreateActivation", "", buf, 2u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HDSDeviceActivation__mae_createActivationWithData_completion___block_invoke_203;
  block[3] = &unk_279714D60;
  v36 = *(a1 + 48);
  v45 = v31;
  v46 = v36;
  v44 = v10;
  v37 = v31;
  v38 = v10;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_mae_activateWithData:(id)data headers:(id)headers completion:(id)completion
{
  dataCopy = data;
  headersCopy = headers;
  completionCopy = completion;
  if (gLogCategory_HDSDeviceActivation <= 30 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceActivation _mae_activateWithData:headers:completion:];
  }

  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__HDSDeviceActivation__mae_activateWithData_headers_completion___block_invoke;
  v15[3] = &unk_279714DB0;
  v16 = headersCopy;
  selfCopy = self;
  v18 = dataCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = dataCopy;
  v14 = headersCopy;
  dispatch_async(v11, v15);
}

void __64__HDSDeviceActivation__mae_activateWithData_headers_completion___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v21 = *MEMORY[0x277D288C8];
    v22[0] = v2;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  v5 = [objc_opt_class() signpostLog];
  v6 = [*(a1 + 40) signpostID];
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "DeviceActivationStepActivate", "", buf, 2u);
    }
  }

  v8 = *(a1 + 48);
  v9 = MAEActivateDeviceWithError();
  v10 = 0;
  v19 = @"a";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v9];
  v20 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  v13 = *(a1 + 40);
  v14 = [objc_opt_class() signpostLog];
  v15 = [*(a1 + 40) signpostID];
  if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v14, OS_SIGNPOST_INTERVAL_END, v16, "DeviceActivationStepActivate", "", buf, 2u);
    }
  }

  (*(*(a1 + 56) + 16))();
  v17 = *MEMORY[0x277D85DE8];
}

- (id)_setupUserAgent
{
  if (_setupUserAgent_onceToken != -1)
  {
    [HDSDeviceActivation _setupUserAgent];
  }

  v3 = _setupUserAgent___userAgent;

  return v3;
}

void __38__HDSDeviceActivation__setupUserAgent__block_invoke()
{
  v5 = MGCopyAnswer();
  v0 = MGCopyAnswer();
  v1 = MGCopyAnswer();
  if (![(__CFString *)v5 length])
  {

    v5 = @"1.0";
  }

  if (![(__CFString *)v0 length])
  {

    v0 = @"1A001a";
  }

  if (![(__CFString *)v1 length])
  {

    v1 = &stru_2864DB950;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"iOS %@ %@ %@ Setup Assistant", v5, v0, v1];
  v3 = [v2 copy];
  v4 = _setupUserAgent___userAgent;
  _setupUserAgent___userAgent = v3;

  if (gLogCategory_HDSDeviceActivation <= 40 && (gLogCategory_HDSDeviceActivation != -1 || _LogCategory_Initialize()))
  {
    __38__HDSDeviceActivation__setupUserAgent__block_invoke_cold_1();
  }
}

- (void)performActivationStep:(uint64_t)a1 completion:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDSDeviceActivation.m" lineNumber:321 description:@"missing activation step"];
}

void __64__HDSDeviceActivation__mae_createActivationWithData_completion___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 56) object:*a2 file:@"HDSDeviceActivation.m" lineNumber:395 description:@"missing user-agent header"];
}

@end