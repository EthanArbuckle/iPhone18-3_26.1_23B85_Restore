@interface NUError
+ (id)errorWithCode:(int64_t)a3 reason:(id)a4 object:(id)a5 underlyingError:(id)a6;
+ (id)rootError:(id)a3;
+ (id)underlyingError:(id)a3;
- (NSString)nonLocalizedFailureReason;
- (id)description;
- (id)descriptionWithIndent:(int64_t)a3;
- (id)errorCodeDescription;
- (id)invalidObject;
- (id)replacementObjectForCoder:(id)a3;
@end

@implementation NUError

+ (id)errorWithCode:(int64_t)a3 reason:(id)a4 object:(id)a5 underlyingError:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v10)
  {
    v18 = NUAssertLogger_14928();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "reason != nil"];
      *buf = 138543362;
      v35 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_14928();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        v28 = [v26 callStackSymbols];
        v29 = [v28 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v35 = v25;
        v36 = 2114;
        v37 = v29;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      v23 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [v23 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUError errorWithCode:reason:object:underlyingError:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUError.m", 118, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "reason != nil");
  }

  v13 = v12;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v14 setObject:v10 forKeyedSubscript:@"NUNonLocalizedFailureReason"];
  v15 = [v11 description];
  [v14 setObject:v15 forKeyedSubscript:@"NURelatedObject"];

  [v14 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v16 = [[a1 alloc] initWithDomain:@"NUError" code:a3 userInfo:v14];

  return v16;
}

+ (id)rootError:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = *MEMORY[0x1E696AA08];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  if (v6)
  {
    do
    {
      v7 = v6;

      v4 = [v7 userInfo];
      v6 = [v4 objectForKeyedSubscript:v5];
      v3 = v7;
    }

    while (v6);
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

+ (id)underlyingError:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  return v4;
}

- (id)replacementObjectForCoder:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = [(NUError *)self domain];
  v6 = [(NUError *)self code];
  v7 = [(NUError *)self userInfo];
  v8 = [v4 errorWithDomain:v5 code:v6 userInfo:v7];

  return v8;
}

- (id)invalidObject
{
  v2 = [(NUError *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"NURelatedObject"];

  return v3;
}

- (NSString)nonLocalizedFailureReason
{
  v2 = [(NUError *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"NUNonLocalizedFailureReason"];

  return v3;
}

- (id)errorCodeDescription
{
  v2 = [(NUError *)self code];
  if ((v2 - 1) > 0xD)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E810A4C8[v2 - 1];
  }
}

- (id)descriptionWithIndent:(int64_t)a3
{
  v5 = [(NUError *)self invalidObject];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(NUError *)self nonLocalizedFailureReason];
  v8 = v7;
  if (v5)
  {
    v9 = [(NUError *)self invalidObject];
    v10 = [v6 stringWithFormat:@"%*s%@ '%@'", a3, "", v8, v9];
  }

  else
  {
    v10 = [v6 stringWithFormat:@"%*s%@", a3, "", v7];
  }

  v11 = [(NUError *)self userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v12)
  {
    v13 = [v12 descriptionWithIndent:a3 + 1];
    v14 = [v13 stringByAppendingFormat:@"\n%@", v10];

    v10 = v14;
  }

  return v10;
}

- (id)description
{
  v3 = [(NUError *)self invalidObject];

  v4 = MEMORY[0x1E696AEC0];
  v5 = [(NUError *)self domain];
  v6 = [(NUError *)self code];
  v7 = [(NUError *)self errorCodeDescription];
  v8 = [(NUError *)self nonLocalizedFailureReason];
  v9 = v8;
  if (v3)
  {
    v10 = [(NUError *)self invalidObject];
    v11 = [v4 stringWithFormat:@"%@ Code=%d (%@) %@ '%@'", v5, v6, v7, v9, v10];
  }

  else
  {
    v11 = [v4 stringWithFormat:@"%@ Code=%d (%@) %@", v5, v6, v7, v8];
  }

  v12 = [(NUError *)self userInfo];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v13)
  {
    v14 = [v13 descriptionWithIndent:1];
    v15 = [v11 stringByAppendingFormat:@"\n%@", v14];

    v11 = v15;
  }

  return v11;
}

@end