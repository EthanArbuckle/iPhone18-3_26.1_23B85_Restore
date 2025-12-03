@interface CDPRecoveryKeySecretValidatorProxyImpl
- (CDPRecoveryKeySecretValidatorProxyImpl)initWithRemoteObject:(id)object;
- (void)approveFromAnotherDeviceWithCompletion:(id)completion;
- (void)cancelApproveFromAnotherDevice;
- (void)cancelValidationWithError:(id)error;
- (void)resetAccountCDPStateWithEscapeOptionsOffered:(unint64_t)offered;
- (void)resetAccountCDPStateWithEscapeOptionsOffered:(unint64_t)offered andSetSecret:(id)secret;
- (void)supportedEscapeOfferMaskCompletion:(id)completion;
- (void)validateCustodianRecoveryInfo:(id)info withCompletion:(id)completion;
- (void)validateRecoveryKey:(id)key withCompletion:(id)completion;
- (void)validateSecret:(id)secret devices:(id)devices type:(unint64_t)type withCompletion:(id)completion;
@end

@implementation CDPRecoveryKeySecretValidatorProxyImpl

- (CDPRecoveryKeySecretValidatorProxyImpl)initWithRemoteObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = CDPRecoveryKeySecretValidatorProxyImpl;
  v6 = [(CDPRecoveryKeySecretValidatorProxyImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_validator, object);
  }

  return v7;
}

- (void)approveFromAnotherDeviceWithCompletion:(id)completion
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [CDPRecoveryKeySecretValidatorProxyImpl approveFromAnotherDeviceWithCompletion:];
  }
}

- (void)cancelApproveFromAnotherDevice
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [CDPRecoveryKeySecretValidatorProxyImpl approveFromAnotherDeviceWithCompletion:];
  }
}

- (void)cancelValidationWithError:(id)error
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [CDPRecoveryKeySecretValidatorProxyImpl approveFromAnotherDeviceWithCompletion:];
  }
}

- (void)resetAccountCDPStateWithEscapeOptionsOffered:(unint64_t)offered
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [CDPRecoveryKeySecretValidatorProxyImpl approveFromAnotherDeviceWithCompletion:];
  }
}

- (void)resetAccountCDPStateWithEscapeOptionsOffered:(unint64_t)offered andSetSecret:(id)secret
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CDPRecoveryKeySecretValidatorProxyImpl approveFromAnotherDeviceWithCompletion:];
  }
}

- (void)supportedEscapeOfferMaskCompletion:(id)completion
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [CDPRecoveryKeySecretValidatorProxyImpl approveFromAnotherDeviceWithCompletion:];
  }
}

- (void)validateCustodianRecoveryInfo:(id)info withCompletion:(id)completion
{
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [CDPRecoveryKeySecretValidatorProxyImpl approveFromAnotherDeviceWithCompletion:];
  }
}

- (void)validateRecoveryKey:(id)key withCompletion:(id)completion
{
  completionCopy = completion;
  validator = self->_validator;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__CDPRecoveryKeySecretValidatorProxyImpl_validateRecoveryKey_withCompletion___block_invoke;
  v9[3] = &unk_1E869D4C8;
  v10 = completionCopy;
  v8 = completionCopy;
  [(CDPRemoteDeviceSecretValidatorProtocol *)validator validateRecoveryKey:key withCompletion:v9];
}

void __77__CDPRecoveryKeySecretValidatorProxyImpl_validateRecoveryKey_withCompletion___block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__CDPRecoveryKeySecretValidatorProxyImpl_validateRecoveryKey_withCompletion___block_invoke_2;
  block[3] = &unk_1E869D4A0;
  v8 = *(a1 + 32);
  v13 = a2;
  v14 = a3;
  v11 = v7;
  v12 = v8;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __77__CDPRecoveryKeySecretValidatorProxyImpl_validateRecoveryKey_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 49), *(a1 + 32));
  }

  return result;
}

- (void)validateSecret:(id)secret devices:(id)devices type:(unint64_t)type withCompletion:(id)completion
{
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [CDPRecoveryKeySecretValidatorProxyImpl approveFromAnotherDeviceWithCompletion:];
  }
}

@end