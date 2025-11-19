@interface CPLFingerprintSchemeInvalid
- (BOOL)isValidFingerprint:(id)a3;
- (BOOL)isValidSignature:(id)a3;
- (id)_invalidFingerprintForSelector:(SEL)a3 withError:(id *)a4;
- (id)boundaryKey;
- (id)initForMMCSv2:(BOOL)a3;
- (id)zeroByteFileFingerprint;
@end

@implementation CPLFingerprintSchemeInvalid

- (id)boundaryKey
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLFingerprintScheme.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:456 description:{@"%@ should not be used on %@", v6, objc_opt_class()}];

  abort();
}

- (id)zeroByteFileFingerprint
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLFingerprintScheme.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:448 description:{@"%@ should not be used on %@", v6, objc_opt_class()}];

  abort();
}

- (id)_invalidFingerprintForSelector:(SEL)a3 withError:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (_invalidFingerprintForSelector_withError__onceToken != -1)
  {
    dispatch_once(&_invalidFingerprintForSelector_withError__onceToken, &__block_literal_global_146);
  }

  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [v8 BOOLForKey:@"CPLCrashOnInvalidFingerprintScheme"];

  if (v9)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLFingerprintScheme.m"];
    v16 = NSStringFromSelector(a2);
    [v14 handleFailureInMethod:a2 object:self file:v15 lineNumber:427 description:{@"Trying to use %@ with an invalid fingerprint scheme", v16}];

    abort();
  }

  v10 = __CPLGenericOSLogDomain();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v13 = NSStringFromSelector(a3);
    *buf = 138543362;
    v18 = v13;
    _os_log_fault_impl(&dword_1DC05A000, v10, OS_LOG_TYPE_FAULT, "Trying to use %{public}@ with an invalid fingerprint scheme", buf, 0xCu);
  }

  if (a4)
  {
    *a4 = _invalidFingerprintForSelector_withError__invalidError;
  }

  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __72__CPLFingerprintSchemeInvalid__invalidFingerprintForSelector_withError___block_invoke()
{
  v0 = [CPLErrors cplErrorWithCode:100 description:@"Invalid fingerprint scheme (likely cause: missing master identifier)"];
  v1 = _invalidFingerprintForSelector_withError__invalidError;
  _invalidFingerprintForSelector_withError__invalidError = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)isValidFingerprint:(id)a3
{
  if (self->_isMMCSv2)
  {
    return [CPLFingerprintScheme isMMCSv2Fingerprint:a3];
  }

  else
  {
    return [CPLFingerprintScheme isMMCSv1Fingerprint:a3];
  }
}

- (BOOL)isValidSignature:(id)a3
{
  if (self->_isMMCSv2)
  {
    return [CPLFingerprintScheme isMMCSv2Signature:a3];
  }

  else
  {
    return [CPLFingerprintScheme isMMCSv1Signature:a3];
  }
}

- (id)initForMMCSv2:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CPLFingerprintSchemeInvalid;
  result = [(CPLFingerprintScheme *)&v5 init];
  if (result)
  {
    *(result + 32) = a3;
  }

  return result;
}

@end