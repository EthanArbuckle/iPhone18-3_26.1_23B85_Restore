@interface NSError(CPLAdditions)
- (BOOL)isCPLEncryptionError;
- (BOOL)isCPLThrottlingError;
- (__CFString)cplShortDomainDescription;
- (id)_cplReinflatedUserInfoForXPCDidChange:()CPLAdditions;
- (id)_cplSafeUserInfoForXPCDidChange:()CPLAdditions;
- (id)cplReinflatedErrorForXPC;
- (id)cplSafeErrorForXPC;
- (id)cplUnderlyingError;
- (id)cplUnderlyingPOSIXError;
- (uint64_t)cplReturnCode;
- (uint64_t)isCPLError;
- (uint64_t)isCPLErrorWithCode:()CPLAdditions;
- (uint64_t)isCPLOperationCancelledError;
@end

@implementation NSError(CPLAdditions)

- (uint64_t)cplReturnCode
{
  cplUnderlyingPOSIXError = [self cplUnderlyingPOSIXError];
  v2 = cplUnderlyingPOSIXError;
  if (cplUnderlyingPOSIXError)
  {
    code = [cplUnderlyingPOSIXError code];
  }

  else
  {
    code = 0xFFFFFFFFLL;
  }

  return code;
}

- (id)cplReinflatedErrorForXPC
{
  v8 = 0;
  v2 = [self _cplReinflatedUserInfoForXPCDidChange:&v8];
  v3 = objc_opt_class();
  if (v3 == objc_opt_class() && v8 != 1)
  {
    selfCopy = self;
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    domain = [self domain];
    selfCopy = [v4 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v2}];
  }

  return selfCopy;
}

- (id)_cplReinflatedUserInfoForXPCDidChange:()CPLAdditions
{
  userInfo = [self userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"CPLErrorRetryAfterDate"];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"CPLErrorRetryAfterDate"];
    v8 = MEMORY[0x1E695DF00];
    [v7 doubleValue];
    v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
    [v6 setObject:v9 forKeyedSubscript:@"CPLErrorRetryAfterDate"];

    *a3 = 1;
  }

  else
  {
    *a3 = 0;
    v6 = userInfo;
  }

  return v6;
}

- (id)cplSafeErrorForXPC
{
  v8 = 0;
  v2 = [self _cplSafeUserInfoForXPCDidChange:&v8];
  v3 = objc_opt_class();
  if (v3 == objc_opt_class() && v8 != 1)
  {
    selfCopy = self;
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    domain = [self domain];
    selfCopy = [v4 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v2}];
  }

  return selfCopy;
}

- (id)_cplSafeUserInfoForXPCDidChange:()CPLAdditions
{
  v32 = *MEMORY[0x1E69E9840];
  userInfo = [self userInfo];
  v5 = [userInfo count];
  v6 = *MEMORY[0x1E696A578];
  v7 = [userInfo objectForKey:*MEMORY[0x1E696A578]];
  v8 = v7;
  if (!v5 || v5 == 1 && v7)
  {
    *a3 = 0;
    v9 = userInfo;
  }

  else
  {
    *a3 = 1;
    if (_cplSafeUserInfoForXPCDidChange__onceToken != -1)
    {
      dispatch_once(&_cplSafeUserInfoForXPCDidChange__onceToken, &__block_literal_global_220);
    }

    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v5];
    v9 = v10;
    if (v8)
    {
      [v10 setObject:v8 forKey:v6];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = _cplSafeUserInfoForXPCDidChange__safeKeys;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = [userInfo objectForKey:{v16, v27}];
          if (v17)
          {
            [v9 setObject:v17 forKey:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    v18 = [userInfo objectForKeyedSubscript:@"CPLErrorRetryAfterDate"];
    v19 = v18;
    if (v18)
    {
      v20 = MEMORY[0x1E696AD98];
      [v18 timeIntervalSinceReferenceDate];
      v21 = [v20 numberWithDouble:?];
      [v9 setObject:v21 forKeyedSubscript:@"CPLErrorRetryAfterDate"];
    }

    v22 = *MEMORY[0x1E696AA08];
    v23 = [userInfo objectForKey:{*MEMORY[0x1E696AA08], v27}];
    cplSafeErrorForXPC = [v23 cplSafeErrorForXPC];

    if (cplSafeErrorForXPC)
    {
      [v9 setObject:cplSafeErrorForXPC forKey:v22];
    }
  }

  v25 = *MEMORY[0x1E69E9840];

  return v9;
}

- (__CFString)cplShortDomainDescription
{
  if (cplShortDomainDescription_onceToken != -1)
  {
    dispatch_once(&cplShortDomainDescription_onceToken, &__block_literal_global_10475);
  }

  domain = [self domain];
  if (domain)
  {
    v3 = [cplShortDomainDescription_wellKnownDomainToShortDomain objectForKey:domain];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = domain;
    }

    v6 = v5;
  }

  else
  {
    v6 = @"unknown";
  }

  return v6;
}

- (id)cplUnderlyingError
{
  selfCopy = self;
  userInfo = [selfCopy userInfo];
  v3 = *MEMORY[0x1E696AA08];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v4)
  {
    do
    {
      userInfo2 = [selfCopy userInfo];
      v6 = [userInfo2 objectForKeyedSubscript:v3];

      userInfo3 = [v6 userInfo];
      v8 = [userInfo3 objectForKeyedSubscript:v3];

      selfCopy = v6;
    }

    while (v8);
  }

  else
  {
    v6 = selfCopy;
  }

  return v6;
}

- (id)cplUnderlyingPOSIXError
{
  selfCopy = self;
  v2 = *MEMORY[0x1E696A798];
  v3 = *MEMORY[0x1E696AA08];
  do
  {
    domain = [selfCopy domain];
    v5 = [domain isEqual:v2];

    if (v5)
    {
      break;
    }

    userInfo = [selfCopy userInfo];
    v7 = [userInfo objectForKey:v3];

    selfCopy = v7;
  }

  while (v7);

  return selfCopy;
}

- (BOOL)isCPLEncryptionError
{
  domain = [self domain];
  v3 = [domain isEqualToString:@"CloudPhotoLibraryErrorDomain"];

  return v3 && [self code] == 70;
}

- (BOOL)isCPLThrottlingError
{
  domain = [self domain];
  v3 = [domain isEqualToString:@"CloudPhotoLibraryErrorDomain"];

  return v3 && ([self code] & 0xFFFFFFFFFFFFFFFBLL) == 1000;
}

- (uint64_t)isCPLOperationCancelledError
{
  if ([self code] != 3072)
  {
    return 0;
  }

  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x1E696A250]];

  return v3;
}

- (uint64_t)isCPLError
{
  domain = [self domain];
  v2 = [domain isEqual:@"CloudPhotoLibraryErrorDomain"];

  return v2;
}

- (uint64_t)isCPLErrorWithCode:()CPLAdditions
{
  if ([self code] != a3)
  {
    return 0;
  }

  domain = [self domain];
  v5 = [domain isEqual:@"CloudPhotoLibraryErrorDomain"];

  return v5;
}

@end