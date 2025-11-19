@interface CDPRemoteDeviceSecretValidator
- (CDPRemoteDeviceSecretValidator)initWithContext:(id)a3 validator:(id)a4;
- (unint64_t)supportedEscapeOfferMask;
- (void)_executeSyncOnMainThreadIfNeeded:(id)a3;
- (void)approveFromAnotherDeviceWithCompletion:(id)a3;
- (void)attemptToJoinCircleWithPiggybacking:(id)a3 withCompletion:(id)a4;
- (void)cancelApproveFromAnotherDevice;
- (void)cancelValidationWithError:(id)a3;
- (void)resetAccountCDPState;
- (void)resetAccountCDPStateWithEscapeOptionsOffered:(unint64_t)a3;
- (void)resetAccountCDPStateWithEscapeOptionsOffered:(unint64_t)a3 andSetSecret:(id)a4;
- (void)supportedEscapeOfferMaskCompletion:(id)a3;
- (void)validateCustodianRecoveryInfo:(id)a3 withCompletion:(id)a4;
- (void)validateRecoveryKey:(id)a3 withCompletion:(id)a4;
- (void)validateSecret:(id)a3 devices:(id)a4 type:(unint64_t)a5 withCompletion:(id)a6;
@end

@implementation CDPRemoteDeviceSecretValidator

- (CDPRemoteDeviceSecretValidator)initWithContext:(id)a3 validator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(CDPRemoteDeviceSecretValidator *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_validator, a4);
    objc_storeStrong(&v10->_context, a3);
  }

  return v10;
}

- (void)validateSecret:(id)a3 devices:(id)a4 type:(unint64_t)a5 withCompletion:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    validator = self->_validator;
    *buf = 138412290;
    v21 = validator;
    _os_log_impl(&dword_1DED99000, v13, OS_LOG_TYPE_DEFAULT, "Attempting to validate secret using validator %@", buf, 0xCu);
  }

  v15 = self->_validator;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __77__CDPRemoteDeviceSecretValidator_validateSecret_devices_type_withCompletion___block_invoke;
  v18[3] = &unk_1E869DBA8;
  v18[4] = self;
  v19 = v10;
  v16 = v10;
  [(CDPRemoteDeviceSecretValidatorProtocol *)v15 validateSecret:v12 devices:v11 type:a5 withCompletion:v18];

  v17 = *MEMORY[0x1E69E9840];
}

void __77__CDPRemoteDeviceSecretValidator_validateSecret_devices_type_withCompletion___block_invoke(uint64_t a1, int a2, int a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v19 = a2;
    v20 = 1024;
    v21 = a3;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Validator returned response of isValid=%i canRetry=%i error=%@ ... dispatching completion block on to main queue", buf, 0x18u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__CDPRemoteDeviceSecretValidator_validateSecret_devices_type_withCompletion___block_invoke_16;
  v13[3] = &unk_1E869D4A0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v16 = a2;
  v17 = a3;
  v14 = v7;
  v15 = v10;
  v11 = v7;
  [v9 _executeSyncOnMainThreadIfNeeded:v13];

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __77__CDPRemoteDeviceSecretValidator_validateSecret_devices_type_withCompletion___block_invoke_16(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __77__CDPRemoteDeviceSecretValidator_validateSecret_devices_type_withCompletion___block_invoke_16_cold_1();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 49), *(a1 + 32));
  }

  return result;
}

- (void)validateRecoveryKey:(id)a3 withCompletion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    validator = self->_validator;
    *buf = 138412290;
    v16 = validator;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to validate recovery key using validator %@", buf, 0xCu);
  }

  v10 = self->_validator;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__CDPRemoteDeviceSecretValidator_validateRecoveryKey_withCompletion___block_invoke;
  v13[3] = &unk_1E869DBA8;
  v13[4] = self;
  v14 = v6;
  v11 = v6;
  [(CDPRemoteDeviceSecretValidatorProtocol *)v10 validateRecoveryKey:v7 withCompletion:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __69__CDPRemoteDeviceSecretValidator_validateRecoveryKey_withCompletion___block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__CDPRemoteDeviceSecretValidator_validateRecoveryKey_withCompletion___block_invoke_2;
  v11[3] = &unk_1E869D4A0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = a2;
  v15 = a3;
  v12 = v7;
  v13 = v9;
  v10 = v7;
  [v8 _executeSyncOnMainThreadIfNeeded:v11];
}

uint64_t __69__CDPRemoteDeviceSecretValidator_validateRecoveryKey_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __69__CDPRemoteDeviceSecretValidator_validateRecoveryKey_withCompletion___block_invoke_2_cold_1();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 49), *(a1 + 32));
  }

  return result;
}

- (void)validateCustodianRecoveryInfo:(id)a3 withCompletion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    validator = self->_validator;
    *buf = 138412290;
    v16 = validator;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to validate custodian recovery info using validator %@", buf, 0xCu);
  }

  v10 = self->_validator;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__CDPRemoteDeviceSecretValidator_validateCustodianRecoveryInfo_withCompletion___block_invoke;
  v13[3] = &unk_1E869DBF8;
  v13[4] = self;
  v14 = v6;
  v11 = v6;
  [(CDPRemoteDeviceSecretValidatorProtocol *)v10 validateCustodianRecoveryInfo:v7 withCompletion:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __79__CDPRemoteDeviceSecretValidator_validateCustodianRecoveryInfo_withCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__CDPRemoteDeviceSecretValidator_validateCustodianRecoveryInfo_withCompletion___block_invoke_2;
  v9[3] = &unk_1E869DBD0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 _executeSyncOnMainThreadIfNeeded:v9];
}

uint64_t __79__CDPRemoteDeviceSecretValidator_validateCustodianRecoveryInfo_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DED99000, v2, OS_LOG_TYPE_DEFAULT, "InvokingvalidateCustodianRecoveryInfo:withCompletion: completion block on the main queue", v4, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)attemptToJoinCircleWithPiggybacking:(id)a3 withCompletion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    validator = self->_validator;
    *buf = 138412290;
    v16 = validator;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to join circle with piggybacking using validator %@", buf, 0xCu);
  }

  v10 = self->_validator;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__CDPRemoteDeviceSecretValidator_attemptToJoinCircleWithPiggybacking_withCompletion___block_invoke;
  v13[3] = &unk_1E869DBF8;
  v13[4] = self;
  v14 = v6;
  v11 = v6;
  [(CDPRemoteDeviceSecretValidatorProtocol *)v10 attemptToJoinCircleWithPiggybacking:v7 withCompletion:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __85__CDPRemoteDeviceSecretValidator_attemptToJoinCircleWithPiggybacking_withCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__CDPRemoteDeviceSecretValidator_attemptToJoinCircleWithPiggybacking_withCompletion___block_invoke_2;
  v9[3] = &unk_1E869DBD0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 _executeSyncOnMainThreadIfNeeded:v9];
}

uint64_t __85__CDPRemoteDeviceSecretValidator_attemptToJoinCircleWithPiggybacking_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DED99000, v2, OS_LOG_TYPE_DEFAULT, "Invoking attemptToJoinCircleWithPiggybacking:withCompletion: completion block on the main queue", v4, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)approveFromAnotherDeviceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CDPRemoteDeviceSecretValidator approveFromAnotherDeviceWithCompletion:];
  }

  validator = self->_validator;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__CDPRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke;
  v8[3] = &unk_1E869DBF8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(CDPRemoteDeviceSecretValidatorProtocol *)validator approveFromAnotherDeviceWithCompletion:v8];
}

void __73__CDPRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__CDPRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke_2;
  v9[3] = &unk_1E869DBD0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 _executeSyncOnMainThreadIfNeeded:v9];
}

uint64_t __73__CDPRemoteDeviceSecretValidator_approveFromAnotherDeviceWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)cancelApproveFromAnotherDevice
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DED99000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling request for remote approval...", v4, 2u);
  }

  [(CDPRemoteDeviceSecretValidatorProtocol *)self->_validator cancelApproveFromAnotherDevice];
}

- (void)resetAccountCDPState
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [CDPRemoteDeviceSecretValidator resetAccountCDPState];
  }

  [(CDPRemoteDeviceSecretValidatorProtocol *)self->_validator resetAccountCDPStateWithEscapeOptionsOffered:1];
}

- (void)resetAccountCDPStateWithEscapeOptionsOffered:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Requesting reset of CDP account state with escape offers presented: %lu", &v7, 0xCu);
  }

  [(CDPRemoteDeviceSecretValidatorProtocol *)self->_validator resetAccountCDPStateWithEscapeOptionsOffered:a3];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)resetAccountCDPStateWithEscapeOptionsOffered:(unint64_t)a3 andSetSecret:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Requesting reset of CDP account state with escape offers presented: %lu, and setting secret...", &v9, 0xCu);
  }

  [(CDPRemoteDeviceSecretValidatorProtocol *)self->_validator resetAccountCDPStateWithEscapeOptionsOffered:a3 andSetSecret:v6];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)cancelValidationWithError:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CDPRemoteDeviceSecretValidator *)v4 cancelValidationWithError:v5];
  }

  [(CDPRemoteDeviceSecretValidatorProtocol *)self->_validator cancelValidationWithError:v4];
}

- (unint64_t)supportedEscapeOfferMask
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = dispatch_semaphore_create(0);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  validator = self->_validator;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__CDPRemoteDeviceSecretValidator_supportedEscapeOfferMask__block_invoke;
  v11[3] = &unk_1E869DC20;
  v13 = &v14;
  v5 = v3;
  v12 = v5;
  [(CDPRemoteDeviceSecretValidatorProtocol *)validator supportedEscapeOfferMaskCompletion:v11];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v15[3];
    *buf = 134217984;
    v19 = v7;
    _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "Supported Escape Offers: %lu", buf, 0xCu);
  }

  v8 = v15[3];
  _Block_object_dispose(&v14, 8);

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)supportedEscapeOfferMaskCompletion:(id)a3
{
  v4 = a3;
  validator = self->_validator;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__CDPRemoteDeviceSecretValidator_supportedEscapeOfferMaskCompletion___block_invoke;
  v7[3] = &unk_1E869DC70;
  v8 = v4;
  v6 = v4;
  [(CDPRemoteDeviceSecretValidatorProtocol *)validator supportedEscapeOfferMaskCompletion:v7];
}

void __69__CDPRemoteDeviceSecretValidator_supportedEscapeOfferMaskCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__CDPRemoteDeviceSecretValidator_supportedEscapeOfferMaskCompletion___block_invoke_2;
  v3[3] = &unk_1E869DC48;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t __69__CDPRemoteDeviceSecretValidator_supportedEscapeOfferMaskCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)_executeSyncOnMainThreadIfNeeded:(id)a3
{
  v3 = a3;
  if (v3)
  {
    block = v3;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      block[2]();
    }

    else
    {
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    v3 = block;
  }
}

- (void)cancelValidationWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "Cancelling validation with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end