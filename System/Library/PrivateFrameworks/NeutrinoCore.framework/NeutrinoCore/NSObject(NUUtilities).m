@interface NSObject(NUUtilities)
+ (uint64_t)nu_implementsProtocol:()NUUtilities;
@end

@implementation NSObject(NUUtilities)

+ (uint64_t)nu_implementsProtocol:()NUUtilities
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v8 = NUAssertLogger_29926();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "protocol != nil"];
      *buf = 138543362;
      v26 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_29926();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        v18 = [v16 callStackSymbols];
        v19 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v15;
        v27 = 2114;
        v28 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      v13 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NSObject(NUUtilities) nu_implementsProtocol:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUUtilities.m", 94, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "protocol != nil");
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __47__NSObject_NUUtilities__nu_implementsProtocol___block_invoke;
  v24[3] = &__block_descriptor_40_e42_B24__0__objc_method_description____8B16B20l;
  v24[4] = a1;
  v5 = v4;
  if (NUProtocolEnumerateMethods(v5, 1, 0, v24) && NUProtocolEnumerateMethods(v5, 1, 1, v24) && NUProtocolEnumerateMethods(v5, 0, 0, v24))
  {
    v6 = NUProtocolEnumerateMethods(v5, 0, 1, v24);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end