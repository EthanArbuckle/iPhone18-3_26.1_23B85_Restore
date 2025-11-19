@interface CPLFingerprintSchemeV2
- (CPLFingerprintSchemeV2)initWithBoundaryKey:(id)a3;
- (NSString)boundaryKeyDescription;
@end

@implementation CPLFingerprintSchemeV2

- (NSString)boundaryKeyDescription
{
  if (os_variant_has_internal_content())
  {
    v3 = [(CPLFingerprintSchemeV2 *)self boundaryKey];
    if (v3)
    {
      v4 = +[CPLFingerprintScheme fingerprintSchemeForStableHash];
      v5 = [v4 fingerPrintForData:v3 error:0];
    }

    else
    {
      v5 = @"nil";
    }
  }

  else
  {
    v5 = @"redacted";
  }

  return v5;
}

- (CPLFingerprintSchemeV2)initWithBoundaryKey:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14.receiver = self;
  v14.super_class = CPLFingerprintSchemeV2;
  v6 = [(CPLFingerprintScheme *)&v14 init];
  if (v6)
  {
    v7 = [v5 copy];
    boundaryKey = v6->_boundaryKey;
    v6->_boundaryKey = v7;

    if ([v5 length] != 32)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v11 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v16 = v5;
          _os_log_impl(&dword_1DC05A000, v11, OS_LOG_TYPE_ERROR, "Invalid boundary key %@", buf, 0xCu);
        }
      }

      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLFingerprintScheme.m"];
      [v12 handleFailureInMethod:a2 object:v6 file:v13 lineNumber:355 description:{@"Invalid boundary key %@", v5}];

      abort();
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

@end