@interface LACDTOSensorTrustController
- (BOOL)_isHardwareTrustError:(id)error;
- (LACDTOSensorTrustController)initWithReplyQueue:(id)queue ui:(id)ui store:(id)store verifier:(id)verifier flags:(id)flags;
- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion;
- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion;
@end

@implementation LACDTOSensorTrustController

- (LACDTOSensorTrustController)initWithReplyQueue:(id)queue ui:(id)ui store:(id)store verifier:(id)verifier flags:(id)flags
{
  uiCopy = ui;
  storeCopy = store;
  verifierCopy = verifier;
  flagsCopy = flags;
  v19.receiver = self;
  v19.super_class = LACDTOSensorTrustController;
  v16 = [(LACDTOSensorTrustController *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_ui, ui);
    objc_storeStrong(&v17->_store, store);
    objc_storeStrong(&v17->_verifier, verifier);
    objc_storeStrong(&v17->_flags, flags);
  }

  return v17;
}

- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion
{
  requestCopy = request;
  configurationCopy = configuration;
  completionCopy = completion;
  if ([(LACDTOSensorTrustController *)self canProcessRequest:requestCopy])
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke;
    v21[3] = &unk_1E7A971C0;
    v11 = requestCopy;
    v22 = v11;
    v12 = __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke(v21);
    [v11 updateOptions:v12];

    v13 = LACLogDTOSensor();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B0233000, v13, OS_LOG_TYPE_DEFAULT, "Sensor trust verification will start", &buf, 2u);
    }

    objc_initWeak(&buf, self);
    verifier = self->_verifier;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_3;
    v16[3] = &unk_1E7A971E8;
    objc_copyWeak(&v19, &buf);
    v18 = completionCopy;
    v17 = v11;
    [(LACDTOSensorTrustVerifier *)verifier verifySensorTrustWithCompletion:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&buf);
  }

  else
  {
    v15 = [LACEvaluationResult resultWithNext:requestCopy];
    (*(completionCopy + 2))(completionCopy, v15);
  }
}

id __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) options];
  v2 = [v1 mutableCopy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v5 = v4;

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:1086];
  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:1085];
  v8 = [v5 objectForKeyedSubscript:v7];
  if ([v8 BOOLValue])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:1062];
    v10 = [v5 objectForKeyedSubscript:v9];

    if (v10)
    {
      goto LABEL_9;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:1062];
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v7];
  }

  else
  {
  }

LABEL_9:

  return v5;
}

void __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_3(id *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = LACLogDTOSensor();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_3_cold_1(v6, v9);
      }

      v10 = a1[5];
      v11 = [LACEvaluationResult resultWithFailure:v6];
      v10[2](v10, v11);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = v5;
        _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "Sensor trust verification did finish with result: %@", buf, 0xCu);
      }

      v12 = WeakRetained[2];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_4;
      v14[3] = &unk_1E7A95648;
      objc_copyWeak(&v17, a1 + 6);
      v16 = a1[5];
      v15 = a1[4];
      [v12 storeSensorTrustState:v5 completion:v14];

      objc_destroyWeak(&v17);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v3)
    {
      v5 = LACLogDTOSensor();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_4_cold_1(v3, v5);
      }

      v6 = *(a1 + 40);
      v7 = [LACEvaluationResult resultWithFailure:v3];
      (*(v6 + 16))(v6, v7);
    }

    else
    {
      v8 = *(a1 + 40);
      v9 = [LACEvaluationResult resultWithNext:*(a1 + 32)];
      (*(v8 + 16))(v8, v9);
    }
  }
}

- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  resultCopy = result;
  completionCopy = completion;
  if (!-[LACDTOSensorTrustController canProcessRequest:](self, "canProcessRequest:", requestCopy) || ([resultCopy error], v11 = objc_claimAutoreleasedReturnValue(), v12 = -[LACDTOSensorTrustController _isHardwareTrustError:](self, "_isHardwareTrustError:", v11), v11, !v12))
  {
LABEL_11:
    completionCopy[2](completionCopy, resultCopy);
    goto LABEL_12;
  }

  options = [requestCopy options];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:1085];
  v15 = [options objectForKey:v14];
  bOOLValue = [v15 BOOLValue];

  if (bOOLValue)
  {
    v17 = LACLogDTOSensor();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      error = [resultCopy error];
      *buf = 138543362;
      v37 = error;
      _os_log_impl(&dword_1B0233000, v17, OS_LOG_TYPE_DEFAULT, "Mapping unapproved sensor error %{public}@ to success on client's request", buf, 0xCu);
    }

    v19 = [LACEvaluationResult resultWithSuccess:MEMORY[0x1E695E0F8]];
    completionCopy[2](completionCopy, v19);

    goto LABEL_12;
  }

  options2 = [requestCopy options];
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:1039];
  v22 = [options2 objectForKey:v21];
  bOOLValue2 = [v22 BOOLValue];

  if (bOOLValue2)
  {
    v24 = LACLogDTOSensor();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0233000, v24, OS_LOG_TYPE_DEFAULT, "Skipping sensor trust alert on client's request", buf, 2u);
    }

    goto LABEL_11;
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __68__LACDTOSensorTrustController_postProcessRequest_result_completion___block_invoke;
  v34[3] = &unk_1E7A97210;
  v26 = requestCopy;
  v35 = v26;
  v27 = __68__LACDTOSensorTrustController_postProcessRequest_result_completion___block_invoke(v34);
  v28 = LACLogDTOSensor();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
    *buf = 138412290;
    v37 = v29;
    _os_log_impl(&dword_1B0233000, v28, OS_LOG_TYPE_DEFAULT, "Sensor trust alert with id: %@ will appear.", buf, 0xCu);
  }

  ui = self->_ui;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __68__LACDTOSensorTrustController_postProcessRequest_result_completion___block_invoke_8;
  v31[3] = &unk_1E7A95998;
  v33 = completionCopy;
  v32 = resultCopy;
  [(LACUserInterfacePresenting *)ui presentUIForIdentifier:v27 request:v26 completion:v31];

LABEL_12:
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __68__LACDTOSensorTrustController_postProcessRequest_result_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) payload];
  v2 = [v1 objectForKeyedSubscript:@"kLAEvaluationRequestPayloadKeyDTOEnvironment"];

  if ([v2 isStrictModeEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

void __68__LACDTOSensorTrustController_postProcessRequest_result_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogDTOSensor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "Sensor trust alert did disappear (err: %@)", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isHardwareTrustError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v4 = [LACError error:errorCopy hasCode:-1 subcode:30]|| [LACError error:errorCopy hasCode:-1 subcode:31];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Sensor trust verification failed %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __71__LACDTOSensorTrustController_processRequest_configuration_completion___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Sensor trust verification result could not be stored %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end