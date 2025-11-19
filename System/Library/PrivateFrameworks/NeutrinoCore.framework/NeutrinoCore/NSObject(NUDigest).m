@interface NSObject(NUDigest)
- (id)nu_digest;
- (void)nu_updateDigest:()NUDigest;
@end

@implementation NSObject(NUDigest)

- (id)nu_digest
{
  v2 = objc_alloc_init(NUDigest);
  [a1 nu_updateDigest:v2];
  v3 = [(NUDigest *)v2 stringValue];

  return v3;
}

- (void)nu_updateDigest:()NUDigest
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v4 = CFGetTypeID(a1);
  if (v4 == CGColorSpaceGetTypeID())
  {
    MD5Digest = CGColorSpaceGetMD5Digest();
    [v29 addString:@"CGColorSpace<"];
    [v29 addBytes:MD5Digest length:16];
    [v29 addString:@">"];
  }

  else
  {
    v6 = CFGetTypeID(a1);
    if (v6 != CGImageMetadataGetTypeID())
    {
      v8 = NUAssertLogger_370();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [v9 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v11];
        *buf = 138543362;
        v31 = v12;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v14 = NUAssertLogger_370();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v15)
        {
          v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v19 = MEMORY[0x1E696AF00];
          v20 = v18;
          v21 = [v19 callStackSymbols];
          v22 = [v21 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v31 = v18;
          v32 = 2114;
          v33 = v22;
          _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v15)
      {
        v16 = [MEMORY[0x1E696AF00] callStackSymbols];
        v17 = [v16 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v31 = v17;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      _NUAssertFailHandler("[NSObject(NUDigest) nu_updateDigest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUDigest.m", 119, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v25, v26, v27, v28, v24);
    }

    XMPData = CGImageMetadataCreateXMPData(a1, 0);
    [v29 addString:@"CGImageMetadata<"];
    [v29 addBytes:-[__CFData bytes](XMPData length:{"bytes"), -[__CFData length](XMPData, "length")}];
    [v29 addString:@">"];
  }
}

@end