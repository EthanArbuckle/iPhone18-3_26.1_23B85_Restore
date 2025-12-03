@interface CPLHardcodedFingerprintSchemeV2
+ (CPLHardcodedFingerprintSchemeV2)sharedInstance;
- (CPLHardcodedFingerprintSchemeV2)init;
- (void)_createSignatureGenerator;
@end

@implementation CPLHardcodedFingerprintSchemeV2

- (void)_createSignatureGenerator
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_shouldAssertOnFingerprinting)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Trying to use %@ fingerprinting", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLFingerprintScheme.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:496 description:{@"Trying to use %@ fingerprinting", self}];

    abort();
  }

  v9.receiver = self;
  v9.super_class = CPLHardcodedFingerprintSchemeV2;
  result = [(CPLFingerprintSchemeV2 *)&v9 _createSignatureGenerator];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (CPLHardcodedFingerprintSchemeV2)init
{
  v3 = [@"_HARDCODED_INVALID_BOUNDARY_KEY_" dataUsingEncoding:4];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  self->_shouldAssertOnFingerprinting = [standardUserDefaults BOOLForKey:@"CPLShouldAssertOnHardcodedMMCSv2BoundaryKey"];

  v7.receiver = self;
  v7.super_class = CPLHardcodedFingerprintSchemeV2;
  v5 = [(CPLFingerprintSchemeV2 *)&v7 initWithBoundaryKey:v3];

  return v5;
}

+ (CPLHardcodedFingerprintSchemeV2)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_176);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __49__CPLHardcodedFingerprintSchemeV2_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CPLHardcodedFingerprintSchemeV2);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end