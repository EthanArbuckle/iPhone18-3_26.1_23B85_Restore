@interface CPLFingerprintScheme
+ (BOOL)alwaysCreateEPPMomentShares;
+ (BOOL)isMMCSv1Fingerprint:(id)a3;
+ (BOOL)isMMCSv1Signature:(id)a3;
+ (BOOL)isMMCSv2Fingerprint:(id)a3;
+ (BOOL)isMMCSv2Signature:(id)a3;
+ (BOOL)supportsEPP;
+ (BOOL)supportsEPPAutoEnable;
+ (CPLFingerprintScheme)invalidFingerprintScheme;
+ (CPLFingerprintSchemeV1)defaultMMCSv1FingerprintScheme;
+ (id)normalizeBoundaryKey:(id)a3;
+ (void)initialize;
- (BOOL)isCompatibleWithFingerprintScheme:(id)a3;
- (BOOL)isValidFingerprint:(id)a3;
- (BOOL)isValidSignature:(id)a3;
- (CPLFingerprintScheme)init;
- (NSString)fingerprintSchemeDescription;
- (NSString)zeroByteFileFingerprint;
- (id)fingerPrintForData:(id)a3 error:(id *)a4;
- (id)fingerPrintForFD:(int)a3 error:(id *)a4;
- (id)fingerPrintForFileAtURL:(id)a3 error:(id *)a4;
- (void)_createSignatureGenerator;
@end

@implementation CPLFingerprintScheme

- (NSString)fingerprintSchemeDescription
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLFingerprintScheme.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:220 description:{@"%@ be implemented by subclasses", v6}];

  abort();
}

- (BOOL)isValidFingerprint:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLFingerprintScheme.m"];
  v8 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:216 description:{@"%@ be implemented by subclasses", v8}];

  abort();
}

- (BOOL)isValidSignature:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLFingerprintScheme.m"];
  v8 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:212 description:{@"%@ be implemented by subclasses", v8}];

  abort();
}

- (BOOL)isCompatibleWithFingerprintScheme:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v5 = [(CPLFingerprintScheme *)self isMMCSv2];
    v6 = v5 ^ [(CPLFingerprintScheme *)v4 isMMCSv2]^ 1;
  }

  return v6;
}

- (NSString)zeroByteFileFingerprint
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __47__CPLFingerprintScheme_zeroByteFileFingerprint__block_invoke;
  v7 = &unk_1E861B100;
  v8 = self;
  v9 = a2;
  v3 = v5;
  os_unfair_lock_lock(&self->_lock);
  v6(v3);
  os_unfair_lock_unlock(&self->_lock);

  return self->_zeroByteFileFingerprint;
}

void __47__CPLFingerprintScheme_zeroByteFileFingerprint__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!v1[3])
  {
    v3 = [MEMORY[0x1E695DEF0] data];
    v15 = 0;
    v4 = [v1 fingerPrintForData:v3 error:&v15];
    v5 = v15;
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = v4;

    if (!*(*(a1 + 32) + 24))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 32);
          *buf = 138412546;
          v17 = v10;
          v18 = 2112;
          v19 = v5;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "%@ failed to create zero size finger print: %@", buf, 0x16u);
        }
      }

      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = *(a1 + 32);
      v12 = *(a1 + 40);
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLFingerprintScheme.m"];
      [v11 handleFailureInMethod:v12 object:v13 file:v14 lineNumber:169 description:{@"%@ failed to create zero size finger print: %@", *(a1 + 32), v5}];

      abort();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)fingerPrintForFD:(int)a3 error:(id *)a4
{
  lseek(a3, 0, 0);
  v7 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  for (i = [(CPLFingerprintScheme *)self _createSignatureGenerator]; ; MEMORY[0x1E128E220](i, v7, v9, 1))
  {
    v9 = read(a3, v7, 0x20000uLL);
    if (!v9)
    {
      break;
    }

    if (v9 == -1)
    {
      if (a4)
      {
        *a4 = [CPLErrors posixErrorForURL:0];
      }

      MMCSSignatureGeneratorFinish();
      i = 0;
      break;
    }
  }

  if (v7)
  {
    free(v7);
  }

  if (i)
  {
    v10 = MMCSSignatureGeneratorFinish();
    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v10 length:MEMORY[0x1E128E1E0](v10) freeWhenDone:1];
    v12 = [v11 base64EncodedStringWithOptions:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)fingerPrintForData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(CPLFingerprintScheme *)self _createSignatureGenerator];
  v7 = [v5 bytes];
  v8 = [v5 length];

  MEMORY[0x1E128E220](v6, v7, v8, 1);
  v9 = MMCSSignatureGeneratorFinish();
  v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v9 length:MEMORY[0x1E128E1E0](v9) freeWhenDone:1];
  v11 = [v10 base64EncodedStringWithOptions:0];

  return v11;
}

- (void)_createSignatureGenerator
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLFingerprintScheme.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:120 description:{@"%@ be implemented by subclasses", v6}];

  abort();
}

- (id)fingerPrintForFileAtURL:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:a3 error:?];
  v7 = v6;
  if (v6)
  {
    v8 = -[CPLFingerprintScheme fingerPrintForFD:error:](self, "fingerPrintForFD:error:", [v6 fileDescriptor], a4);
    [v7 closeFile];
  }

  else if (a4)
  {
    v9 = *a4;
    v10 = [v9 domain];
    v11 = *MEMORY[0x1E696A250];
    v12 = [v10 isEqualToString:*MEMORY[0x1E696A250]];

    if (v12)
    {
      v13 = [v9 userInfo];
      v14 = *MEMORY[0x1E696AA08];
      v15 = [v13 objectForKey:*MEMORY[0x1E696AA08]];

      if (!v15)
      {
        v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:objc_msgSend(v9 userInfo:{"code"), 0}];
        v17 = [v9 userInfo];
        v18 = [v17 mutableCopy];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = [MEMORY[0x1E695DF90] dictionary];
        }

        v21 = v20;

        [v21 setObject:v16 forKey:v14];
        v22 = [MEMORY[0x1E696ABC0] errorWithDomain:v11 code:objc_msgSend(v9 userInfo:{"code"), v21}];

        v9 = v22;
      }
    }

    v23 = v9;
    v8 = 0;
    *a4 = v9;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CPLFingerprintScheme)init
{
  v3.receiver = self;
  v3.super_class = CPLFingerprintScheme;
  result = [(CPLFingerprintScheme *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (BOOL)alwaysCreateEPPMomentShares
{
  v2 = [a1 supportsEPP];
  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v3 BOOLForKey:@"CPLAlwaysCreateEPPMomentShare"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)supportsEPPAutoEnable
{
  if ([a1 supportsEPP])
  {
    if (supportsEPPAutoEnable_onceToken != -1)
    {
      dispatch_once(&supportsEPPAutoEnable_onceToken, &__block_literal_global_33);
    }

    v2 = supportsEPPAutoEnable_result;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t __45__CPLFingerprintScheme_supportsEPPAutoEnable__block_invoke()
{
  result = _os_feature_enabled_impl();
  supportsEPPAutoEnable_result = result;
  return result;
}

+ (BOOL)supportsEPP
{
  if (supportsEPP_onceToken != -1)
  {
    dispatch_once(&supportsEPP_onceToken, &__block_literal_global_24);
  }

  return supportsEPP_result;
}

void __35__CPLFingerprintScheme_supportsEPP__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v0 objectForKey:@"CPLForceEPPSupport"];

  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v1 = [v2 BOOLValue];
  }

  else
  {
    v1 = _os_feature_enabled_impl();
  }

  supportsEPP_result = v1;
}

+ (BOOL)isMMCSv2Fingerprint:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DEF0];
  v5 = a3;
  v6 = [[v4 alloc] initWithBase64EncodedString:v5 options:0];

  LOBYTE(a1) = [a1 isMMCSv2Signature:v6];
  return a1;
}

+ (BOOL)isMMCSv2Signature:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v6 = 0;
    [v3 getBytes:&v6 length:1];
    v4 = v6 == 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isMMCSv1Fingerprint:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DEF0];
  v5 = a3;
  v6 = [[v4 alloc] initWithBase64EncodedString:v5 options:0];

  LOBYTE(a1) = [a1 isMMCSv1Signature:v6];
  return a1;
}

+ (BOOL)isMMCSv1Signature:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v6 = 0;
    [v3 getBytes:&v6 length:1];
    v4 = v6 == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)normalizeBoundaryKey:(id)a3
{
  v3 = a3;
  v4 = [v3 lengthOfBytesUsingEncoding:4];
  if (v4 < 0x21)
  {
    if (v4 == 32)
    {
      goto LABEL_6;
    }

    v7 = [v3 stringByAppendingFormat:@"%.*s", (32 - v4), "================================"];
  }

  else
  {
    v5 = [v3 dataUsingEncoding:4];
    v6 = [v5 subdataWithRange:{0, 32}];

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
    v3 = v6;
  }

  v3 = v7;
LABEL_6:

  return v3;
}

+ (CPLFingerprintScheme)invalidFingerprintScheme
{
  if (_disableInvalidFingerprintScheme == 1)
  {
    v2 = +[CPLFingerprintScheme defaultMMCSv1FingerprintScheme];
  }

  else
  {
    if (invalidFingerprintScheme_onceToken != -1)
    {
      dispatch_once(&invalidFingerprintScheme_onceToken, &__block_literal_global_5);
    }

    v2 = invalidFingerprintScheme_result;
  }

  return v2;
}

uint64_t __48__CPLFingerprintScheme_invalidFingerprintScheme__block_invoke()
{
  v0 = [[CPLFingerprintSchemeInvalid alloc] initForMMCSv2:0];
  v1 = invalidFingerprintScheme_result;
  invalidFingerprintScheme_result = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (CPLFingerprintSchemeV1)defaultMMCSv1FingerprintScheme
{
  if (defaultMMCSv1FingerprintScheme_onceToken != -1)
  {
    dispatch_once(&defaultMMCSv1FingerprintScheme_onceToken, &__block_literal_global_3558);
  }

  v3 = defaultMMCSv1FingerprintScheme_result;

  return v3;
}

uint64_t __54__CPLFingerprintScheme_defaultMMCSv1FingerprintScheme__block_invoke()
{
  v0 = objc_alloc_init(CPLFingerprintSchemeV1);
  v1 = defaultMMCSv1FingerprintScheme_result;
  defaultMMCSv1FingerprintScheme_result = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
    _disableInvalidFingerprintScheme = [v2 BOOLForKey:@"CPLDisableInvalidFingerprintScheme"];
  }
}

@end