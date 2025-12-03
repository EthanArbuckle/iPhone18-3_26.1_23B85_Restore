@interface NUError
+ (id)errorWithCode:(int64_t)code reason:(id)reason object:(id)object underlyingError:(id)error;
+ (id)rootError:(id)error;
+ (id)underlyingError:(id)error;
- (NSString)nonLocalizedFailureReason;
- (id)description;
- (id)descriptionWithIndent:(int64_t)indent;
- (id)errorCodeDescription;
- (id)invalidObject;
- (id)replacementObjectForCoder:(id)coder;
@end

@implementation NUError

+ (id)errorWithCode:(int64_t)code reason:(id)reason object:(id)object underlyingError:(id)error
{
  v38 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  objectCopy = object;
  errorCopy = error;
  if (!reasonCopy)
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
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v35 = v25;
        v36 = 2114;
        v37 = v29;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v35 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NUError errorWithCode:reason:object:underlyingError:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Util/NUError.m", 118, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "reason != nil");
  }

  v13 = errorCopy;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v14 setObject:reasonCopy forKeyedSubscript:@"NUNonLocalizedFailureReason"];
  v15 = [objectCopy description];
  [v14 setObject:v15 forKeyedSubscript:@"NURelatedObject"];

  [v14 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v16 = [[self alloc] initWithDomain:@"NUError" code:code userInfo:v14];

  return v16;
}

+ (id)rootError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v5 = *MEMORY[0x1E696AA08];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  if (v6)
  {
    do
    {
      v7 = v6;

      userInfo = [v7 userInfo];
      v6 = [userInfo objectForKeyedSubscript:v5];
      errorCopy = v7;
    }

    while (v6);
  }

  else
  {
    v7 = errorCopy;
  }

  return v7;
}

+ (id)underlyingError:(id)error
{
  userInfo = [error userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  return v4;
}

- (id)replacementObjectForCoder:(id)coder
{
  v4 = MEMORY[0x1E696ABC0];
  domain = [(NUError *)self domain];
  code = [(NUError *)self code];
  userInfo = [(NUError *)self userInfo];
  v8 = [v4 errorWithDomain:domain code:code userInfo:userInfo];

  return v8;
}

- (id)invalidObject
{
  userInfo = [(NUError *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"NURelatedObject"];

  return v3;
}

- (NSString)nonLocalizedFailureReason
{
  userInfo = [(NUError *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"NUNonLocalizedFailureReason"];

  return v3;
}

- (id)errorCodeDescription
{
  code = [(NUError *)self code];
  if ((code - 1) > 0xD)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E810A4C8[code - 1];
  }
}

- (id)descriptionWithIndent:(int64_t)indent
{
  invalidObject = [(NUError *)self invalidObject];

  v6 = MEMORY[0x1E696AEC0];
  nonLocalizedFailureReason = [(NUError *)self nonLocalizedFailureReason];
  v8 = nonLocalizedFailureReason;
  if (invalidObject)
  {
    invalidObject2 = [(NUError *)self invalidObject];
    v10 = [v6 stringWithFormat:@"%*s%@ '%@'", indent, "", v8, invalidObject2];
  }

  else
  {
    v10 = [v6 stringWithFormat:@"%*s%@", indent, "", nonLocalizedFailureReason];
  }

  userInfo = [(NUError *)self userInfo];
  v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v12)
  {
    v13 = [v12 descriptionWithIndent:indent + 1];
    v14 = [v13 stringByAppendingFormat:@"\n%@", v10];

    v10 = v14;
  }

  return v10;
}

- (id)description
{
  invalidObject = [(NUError *)self invalidObject];

  v4 = MEMORY[0x1E696AEC0];
  domain = [(NUError *)self domain];
  code = [(NUError *)self code];
  errorCodeDescription = [(NUError *)self errorCodeDescription];
  nonLocalizedFailureReason = [(NUError *)self nonLocalizedFailureReason];
  v9 = nonLocalizedFailureReason;
  if (invalidObject)
  {
    invalidObject2 = [(NUError *)self invalidObject];
    v11 = [v4 stringWithFormat:@"%@ Code=%d (%@) %@ '%@'", domain, code, errorCodeDescription, v9, invalidObject2];
  }

  else
  {
    v11 = [v4 stringWithFormat:@"%@ Code=%d (%@) %@", domain, code, errorCodeDescription, nonLocalizedFailureReason];
  }

  userInfo = [(NUError *)self userInfo];
  v13 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v13)
  {
    v14 = [v13 descriptionWithIndent:1];
    v15 = [v11 stringByAppendingFormat:@"\n%@", v14];

    v11 = v15;
  }

  return v11;
}

@end