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
  v1 = [a1 cplUnderlyingPOSIXError];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 code];
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  return v3;
}

- (id)cplReinflatedErrorForXPC
{
  v8 = 0;
  v2 = [a1 _cplReinflatedUserInfoForXPCDidChange:&v8];
  v3 = objc_opt_class();
  if (v3 == objc_opt_class() && v8 != 1)
  {
    v6 = a1;
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = [a1 domain];
    v6 = [v4 errorWithDomain:v5 code:objc_msgSend(a1 userInfo:{"code"), v2}];
  }

  return v6;
}

- (id)_cplReinflatedUserInfoForXPCDidChange:()CPLAdditions
{
  v4 = [a1 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"CPLErrorRetryAfterDate"];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v4];
    v7 = [v4 objectForKeyedSubscript:@"CPLErrorRetryAfterDate"];
    v8 = MEMORY[0x1E695DF00];
    [v7 doubleValue];
    v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
    [v6 setObject:v9 forKeyedSubscript:@"CPLErrorRetryAfterDate"];

    *a3 = 1;
  }

  else
  {
    *a3 = 0;
    v6 = v4;
  }

  return v6;
}

- (id)cplSafeErrorForXPC
{
  v8 = 0;
  v2 = [a1 _cplSafeUserInfoForXPCDidChange:&v8];
  v3 = objc_opt_class();
  if (v3 == objc_opt_class() && v8 != 1)
  {
    v6 = a1;
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = [a1 domain];
    v6 = [v4 errorWithDomain:v5 code:objc_msgSend(a1 userInfo:{"code"), v2}];
  }

  return v6;
}

- (id)_cplSafeUserInfoForXPCDidChange:()CPLAdditions
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [a1 userInfo];
  v5 = [v4 count];
  v6 = *MEMORY[0x1E696A578];
  v7 = [v4 objectForKey:*MEMORY[0x1E696A578]];
  v8 = v7;
  if (!v5 || v5 == 1 && v7)
  {
    *a3 = 0;
    v9 = v4;
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
          v17 = [v4 objectForKey:{v16, v27}];
          if (v17)
          {
            [v9 setObject:v17 forKey:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    v18 = [v4 objectForKeyedSubscript:@"CPLErrorRetryAfterDate"];
    v19 = v18;
    if (v18)
    {
      v20 = MEMORY[0x1E696AD98];
      [v18 timeIntervalSinceReferenceDate];
      v21 = [v20 numberWithDouble:?];
      [v9 setObject:v21 forKeyedSubscript:@"CPLErrorRetryAfterDate"];
    }

    v22 = *MEMORY[0x1E696AA08];
    v23 = [v4 objectForKey:{*MEMORY[0x1E696AA08], v27}];
    v24 = [v23 cplSafeErrorForXPC];

    if (v24)
    {
      [v9 setObject:v24 forKey:v22];
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

  v2 = [a1 domain];
  if (v2)
  {
    v3 = [cplShortDomainDescription_wellKnownDomainToShortDomain objectForKey:v2];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v2;
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
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = *MEMORY[0x1E696AA08];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if (v4)
  {
    do
    {
      v5 = [v1 userInfo];
      v6 = [v5 objectForKeyedSubscript:v3];

      v7 = [v6 userInfo];
      v8 = [v7 objectForKeyedSubscript:v3];

      v1 = v6;
    }

    while (v8);
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

- (id)cplUnderlyingPOSIXError
{
  v1 = a1;
  v2 = *MEMORY[0x1E696A798];
  v3 = *MEMORY[0x1E696AA08];
  do
  {
    v4 = [v1 domain];
    v5 = [v4 isEqual:v2];

    if (v5)
    {
      break;
    }

    v6 = [v1 userInfo];
    v7 = [v6 objectForKey:v3];

    v1 = v7;
  }

  while (v7);

  return v1;
}

- (BOOL)isCPLEncryptionError
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:@"CloudPhotoLibraryErrorDomain"];

  return v3 && [a1 code] == 70;
}

- (BOOL)isCPLThrottlingError
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:@"CloudPhotoLibraryErrorDomain"];

  return v3 && ([a1 code] & 0xFFFFFFFFFFFFFFFBLL) == 1000;
}

- (uint64_t)isCPLOperationCancelledError
{
  if ([a1 code] != 3072)
  {
    return 0;
  }

  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x1E696A250]];

  return v3;
}

- (uint64_t)isCPLError
{
  v1 = [a1 domain];
  v2 = [v1 isEqual:@"CloudPhotoLibraryErrorDomain"];

  return v2;
}

- (uint64_t)isCPLErrorWithCode:()CPLAdditions
{
  if ([a1 code] != a3)
  {
    return 0;
  }

  v4 = [a1 domain];
  v5 = [v4 isEqual:@"CloudPhotoLibraryErrorDomain"];

  return v5;
}

@end