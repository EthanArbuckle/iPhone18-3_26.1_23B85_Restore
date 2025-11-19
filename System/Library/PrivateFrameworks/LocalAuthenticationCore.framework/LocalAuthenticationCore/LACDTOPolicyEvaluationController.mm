@interface LACDTOPolicyEvaluationController
- (BOOL)_verifyHasRequiredOptions:(id)a3 forPolicy:(int64_t)a4 error:(id *)a5;
- (LACDTOPolicyEvaluationController)initWithEnvironment:(id)a3 evaluationIdentifierFactory:(id)a4 device:(id)a5;
- (id)_errorCodesToFilterForOptions:(id)a3;
- (id)_mapResult:(id)a3 filterCodes:(id)a4;
- (id)_updateEvaluationOptions:(id)a3 forPolicy:(int64_t)a4 environment:(id)a5;
- (void)_evaluateRequest:(id)a3 completion:(id)a4;
- (void)_evaluateRequest:(id)a3 environment:(id)a4 completion:(id)a5;
- (void)_forEachObserver:(id)a3;
- (void)_notifyObserversAboutEvaluation:(id)a3;
- (void)_notifyObserversAboutEvaluation:(id)a3 result:(id)a4;
- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5;
- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5;
@end

@implementation LACDTOPolicyEvaluationController

- (LACDTOPolicyEvaluationController)initWithEnvironment:(id)a3 evaluationIdentifierFactory:(id)a4 device:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [LACDTOPolicyEvaluationController initWithEnvironment:evaluationIdentifierFactory:device:];
  }

  v12 = v11;
  v20.receiver = self;
  v20.super_class = LACDTOPolicyEvaluationController;
  v13 = [(LACDTOPolicyEvaluationController *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_environment, a3);
    v15 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v14->_observers;
    v14->_observers = v15;

    objc_storeStrong(&v14->_device, a5);
    objc_storeStrong(&v14->_evaluationIdentifierFactory, a4);
    v17 = objc_opt_new();
    pendingRequests = v14->_pendingRequests;
    v14->_pendingRequests = v17;
  }

  return v14;
}

- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__LACDTOPolicyEvaluationController_processRequest_configuration_completion___block_invoke;
  v13[3] = &unk_1E7A96CA8;
  objc_copyWeak(&v16, &location);
  v11 = v8;
  v14 = v11;
  v12 = v10;
  v15 = v12;
  [(LACDTOPolicyEvaluationController *)self _evaluateRequest:v11 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __76__LACDTOPolicyEvaluationController_processRequest_configuration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 5);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "identifier")}];
    [v8 setObject:v10 forKeyedSubscript:v9];

    (*(*(a1 + 40) + 16))();
  }
}

- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  pendingRequests = self->_pendingRequests;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v8, "identifier")}];
  v13 = [(NSMutableDictionary *)pendingRequests objectForKeyedSubscript:v12];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__LACDTOPolicyEvaluationController_postProcessRequest_result_completion___block_invoke;
  aBlock[3] = &unk_1E7A96CD0;
  objc_copyWeak(&v38, &location);
  v14 = v10;
  v37 = v14;
  v15 = v8;
  v36 = v15;
  v16 = _Block_copy(aBlock);
  if (v13)
  {
    v17 = v9;
    v18 = [v15 options];
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:1062];
    v20 = [v18 objectForKeyedSubscript:v19];

    if ([v20 BOOLValue])
    {
      v21 = [v15 options];
      v22 = [(LACDTOPolicyEvaluationController *)self _errorCodesToFilterForOptions:v21];

      v23 = [(LACDTOPolicyEvaluationController *)self _mapResult:v17 filterCodes:v22];

      v17 = v23;
    }

    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __73__LACDTOPolicyEvaluationController_postProcessRequest_result_completion___block_invoke_6;
    v32 = &unk_1E7A96CF8;
    v24 = v13;
    v33 = v24;
    v25 = v17;
    v34 = v25;
    v26 = __73__LACDTOPolicyEvaluationController_postProcessRequest_result_completion___block_invoke_6(&v29);
    [(LACDTOPolicyEvaluationController *)self _notifyObserversAboutEvaluation:v24 result:v26, v29, v30];

    v16[2](v16, v25);
  }

  else
  {
    v27 = LACLogDTOEvaluation();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      -[LACDTOPolicyEvaluationController postProcessRequest:result:completion:].cold.1(buf, [v15 identifier], v27);
    }

    v16[2](v16, v9);
  }

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);

  v28 = *MEMORY[0x1E69E9840];
}

void __73__LACDTOPolicyEvaluationController_postProcessRequest_result_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    (*(*(a1 + 40) + 16))();
    v4 = WeakRetained[5];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(*(a1 + 32), "identifier")}];
    [v4 removeObjectForKey:v5];
  }
}

LACDTOMutablePolicyEvaluationResult *__73__LACDTOPolicyEvaluationController_postProcessRequest_result_completion___block_invoke_6(uint64_t a1)
{
  v2 = [LACDTOMutablePolicyEvaluationResult alloc];
  v3 = [*(a1 + 32) identifier];
  v4 = [(LACDTOMutablePolicyEvaluationResult *)v2 initWithIdentifier:v3];

  v5 = [*(a1 + 40) error];
  [(LACDTOMutablePolicyEvaluationResult *)v4 setError:v5];

  v6 = [*(a1 + 40) value];
  [(LACDTOMutablePolicyEvaluationResult *)v4 setResult:v6];

  return v4;
}

- (void)_evaluateRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 policy];
  v9 = [v6 options];
  if (![(LACDTOPolicyEvaluationController *)self canProcessRequest:v6])
  {
    v11 = [LACEvaluationResult resultWithNext:v6];
    v7[2](v7, 0, v11);
    goto LABEL_9;
  }

  v21 = 0;
  v10 = [(LACDTOPolicyEvaluationController *)self _verifyHasRequiredOptions:v9 forPolicy:v8 error:&v21];
  v11 = v21;
  if (!v10)
  {
    v13 = [LACEvaluationResult resultWithFailure:v11];
    v7[2](v7, 0, v13);
LABEL_8:

    goto LABEL_9;
  }

  if (![(LACDTOPolicyEvaluationController *)self _checkDeviceHasBeenUnlockedSinceBoot])
  {
    v13 = [LACError errorWithCode:-1008 subcode:1 debugDescription:@"DTO policies are not available before first unlock"];
    v14 = [LACEvaluationResult resultWithFailure:v13];
    v7[2](v7, 0, v14);

    goto LABEL_8;
  }

  objc_initWeak(&location, self);
  environment = self->_environment;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__LACDTOPolicyEvaluationController__evaluateRequest_completion___block_invoke;
  v15[3] = &unk_1E7A96D20;
  objc_copyWeak(v19, &location);
  v18 = v7;
  v16 = v6;
  v17 = v9;
  v19[1] = v8;
  [(LACDTOEnvironmentProviding *)environment fetchEnvironmentForPolicy:v8 options:v17 completion:v15];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
LABEL_9:
}

void __64__LACDTOPolicyEvaluationController__evaluateRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = [LACEvaluationResult resultWithFailure:v5];
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v9 = *(a1 + 32);
      v10 = [WeakRetained _updateEvaluationOptions:*(a1 + 40) forPolicy:*(a1 + 64) environment:v11];
      [v9 updateOptions:v10];

      [v7 _evaluateRequest:*(a1 + 32) environment:v11 completion:*(a1 + 48)];
    }
  }
}

- (BOOL)_verifyHasRequiredOptions:(id)a3 forPolicy:(int64_t)a4 error:(id *)a5
{
  v48[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a4 == 1026 && ([MEMORY[0x1E696AD98] numberWithInteger:1000], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v8, (v10 & 1) == 0))
  {
    v12 = MEMORY[0x1E695DF90];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:1066];
    v47 = v13;
    v48[0] = objc_opt_class();
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v15 = [v12 dictionaryWithDictionary:v14];

    v16 = [MEMORY[0x1E696AD98] numberWithInteger:1000];
    v17 = [v7 objectForKeyedSubscript:v16];

    if (!v17 || ([v17 BOOLValue] & 1) == 0)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:2];
      v45[0] = v18;
      v46[0] = objc_opt_class();
      v19 = [MEMORY[0x1E696AD98] numberWithInteger:1064];
      v45[1] = v19;
      v46[1] = objc_opt_class();
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:1063];
      v45[2] = v20;
      v46[2] = objc_opt_class();
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:3];
      [v15 addEntriesFromDictionary:v21];
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [v15 allKeys];
    v22 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v37 = a5;
      v38 = v17;
      v24 = *v41;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v40 + 1) + 8 * i);
          v27 = [v7 objectForKeyedSubscript:v26];
          if (!v27)
          {
            goto LABEL_17;
          }

          v28 = v27;
          v29 = [v7 objectForKeyedSubscript:v26];
          v30 = [v15 objectForKeyedSubscript:v26];
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
LABEL_17:
            v32 = [v15 objectForKeyedSubscript:v26];
            v33 = NSStringFromClass(v32);

            v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required option (%d) with type '%@'", objc_msgSend(v26, "integerValue"), v33];
            if (v37)
            {
              *v37 = [LACError errorWithCode:-1001 debugDescription:v34];
            }

            v11 = 0;
            v17 = v38;
            goto LABEL_21;
          }
        }

        v23 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        v11 = 1;
        v17 = v38;
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 1;
    }

LABEL_21:
  }

  else
  {
    v11 = 1;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)_updateEvaluationOptions:(id)a3 forPolicy:(int64_t)a4 environment:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x1E695DF90];
  v10 = a3;
  v11 = [v9 dictionaryWithDictionary:v10];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:1037];
  v13 = [v10 objectForKeyedSubscript:v12];

  if (v13)
  {
    goto LABEL_4;
  }

  v14 = [v8 isDTOEnabled];

  if (v14)
  {
    v12 = [LACLocalizationUtils encodeLocalizationKey:@"ENTER_PASSCODE" shouldUseDeviceVariant:1];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:1037];
    [v11 setObject:v12 forKeyedSubscript:v13];
LABEL_4:
  }

  if (([v8 allowsAuthenticationFallbacks] & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:1024];
    v16 = MEMORY[0x1E695E118];
    [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v15];

    v17 = [MEMORY[0x1E696AD98] numberWithInteger:1067];
    [v11 setObject:&unk_1F2693688 forKeyedSubscript:v17];

    v18 = [MEMORY[0x1E696AD98] numberWithInteger:1011];
    [v11 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v18];

    v19 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    [v11 setObject:@"Enter Passcode" forKeyedSubscript:v19];

    v20 = [MEMORY[0x1E696AD98] numberWithInteger:-1001];
    [v11 setObject:v16 forKeyedSubscript:v20];

    if (a4 != 1028)
    {
      if ([(LACDTODeviceInfoProvider *)self->_device biometryType]== 2)
      {
        v21 = @"AUTHENTICATE_TO_RETRY_FACE_ID";
      }

      else
      {
        if ([(LACDTODeviceInfoProvider *)self->_device biometryType]!= 1)
        {
          goto LABEL_12;
        }

        v21 = @"AUTHENTICATE_TO_RETRY_TOUCH_ID";
      }

      v22 = [LACLocalizationUtils encodeLocalizationKey:v21];
      v23 = [MEMORY[0x1E696AD98] numberWithInteger:1031];
      [v11 setObject:v22 forKeyedSubscript:v23];
    }
  }

LABEL_12:
  if (([v8 allowsGracePeriodUI] & 1) == 0)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithInteger:1073];
    [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v24];
  }

  if (a4 == 1028)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithInteger:1090];
    [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v25];

    v26 = [MEMORY[0x1E696AD98] numberWithInteger:1062];
    [v11 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v26];

    v27 = LACLogDTO();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_1B0233000, v27, OS_LOG_TYPE_DEFAULT, "Force disabling usage of LACPolicyOptionFallbackToNoAuthentication for this policy", v29, 2u);
    }
  }

  return v11;
}

- (void)_evaluateRequest:(id)a3 environment:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 policy];
  v12 = [v8 options];
  v13 = [v8 client];
  evaluationIdentifierFactory = self->_evaluationIdentifierFactory;
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:1066];
  v16 = [v12 objectForKeyedSubscript:v15];
  v17 = [(LACDTOPolicyEvaluationIdentifierFactory *)evaluationIdentifierFactory evaluationIdentifierForClient:v13 ratchetIdentifier:v16];

  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __76__LACDTOPolicyEvaluationController__evaluateRequest_environment_completion___block_invoke;
  v31 = &unk_1E7A96D48;
  v18 = v17;
  v32 = v18;
  v35 = v11;
  v19 = v12;
  v33 = v19;
  v20 = v9;
  v34 = v20;
  v21 = __76__LACDTOPolicyEvaluationController__evaluateRequest_environment_completion___block_invoke(&v28);
  [(LACDTOPolicyEvaluationController *)self _notifyObserversAboutEvaluation:v21, v28, v29];
  v22 = [v8 payload];
  v23 = [v22 mutableCopy];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = objc_opt_new();
  }

  v26 = v25;

  [v26 setObject:v18 forKeyedSubscript:@"kLAEvaluationRequestPayloadKeyDTORequestIdentifier"];
  [v26 setObject:v20 forKeyedSubscript:@"kLAEvaluationRequestPayloadKeyDTOEnvironment"];
  [v8 updatePayload:v26];
  v27 = [LACEvaluationResult resultWithNext:v8];
  v10[2](v10, v21, v27);
}

LACDTOMutablePolicyEvaluationRequest *__76__LACDTOPolicyEvaluationController__evaluateRequest_environment_completion___block_invoke(void *a1)
{
  v2 = [[LACDTOMutablePolicyEvaluationRequest alloc] initWithIdentifier:a1[4]];
  [(LACDTOMutablePolicyEvaluationRequest *)v2 setPolicy:a1[7]];
  [(LACDTOMutablePolicyEvaluationRequest *)v2 setOptions:a1[5]];
  [(LACDTOMutablePolicyEvaluationRequest *)v2 setEnvironment:a1[6]];

  return v2;
}

- (void)_notifyObserversAboutEvaluation:(id)a3
{
  v4 = a3;
  v5 = LACLogDTOEvaluation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(LACDTOPolicyEvaluationController *)v4 _notifyObserversAboutEvaluation:v5];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__LACDTOPolicyEvaluationController__notifyObserversAboutEvaluation___block_invoke;
  v7[3] = &unk_1E7A96D70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(LACDTOPolicyEvaluationController *)self _forEachObserver:v7];
}

- (void)_notifyObserversAboutEvaluation:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = LACLogDTOEvaluation();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [LACDTOPolicyEvaluationController _notifyObserversAboutEvaluation:v7 result:v8];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__LACDTOPolicyEvaluationController__notifyObserversAboutEvaluation_result___block_invoke;
  v11[3] = &unk_1E7A96D98;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(LACDTOPolicyEvaluationController *)self _forEachObserver:v11];
}

- (void)_forEachObserver:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_mapResult:(id)a3 filterCodes:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 error];
    if (v8)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            if (+[LACError error:hasCode:](LACError, "error:hasCode:", v8, [*(*(&v18 + 1) + 8 * i) integerValue]))
            {
              v15 = LACLogDTO();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v23 = self;
                v24 = 2112;
                v25 = v8;
                _os_log_impl(&dword_1B0233000, v15, OS_LOG_TYPE_DEFAULT, "%@ mapping error %@ to success", buf, 0x16u);
              }

              v14 = [LACEvaluationResult resultWithSuccess:MEMORY[0x1E695E0F8]];

              goto LABEL_17;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }

    v14 = v6;
LABEL_17:
  }

  else
  {
    v14 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_errorCodesToFilterForOptions:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:1062];
  v6 = [v3 objectForKeyedSubscript:v5];

  if ([v6 BOOLValue])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:-1011];
    v13[0] = v7;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:-5];
    v13[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    [v4 addObjectsFromArray:v9];
  }

  v10 = [v4 allObjects];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)postProcessRequest:(uint8_t *)buf result:(int)a2 completion:(os_log_t)log .cold.1(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "No pending request for rid: %i", buf, 8u);
}

- (void)_notifyObserversAboutEvaluation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B0233000, a2, OS_LOG_TYPE_DEBUG, "Policy evaluation will start: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_notifyObserversAboutEvaluation:(uint64_t)a1 result:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B0233000, a2, OS_LOG_TYPE_DEBUG, "Policy evaluation did finish: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end