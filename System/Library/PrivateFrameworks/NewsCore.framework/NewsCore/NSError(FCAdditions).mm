@interface NSError(FCAdditions)
- (BOOL)fc_hasUnderlyingErrorPassingTest:()FCAdditions;
- (BOOL)fc_isAVUnauthorizedError;
- (BOOL)fc_isBlockedInStoreFrontError;
- (BOOL)fc_isHTTPNotFoundError;
- (BOOL)fc_isOperationThrottledError;
- (BOOL)fc_isRequestDroppedError;
- (id)fc_errorWithMaximumRetryAfter:()FCAdditions;
- (id)fc_retryAfter;
- (uint64_t)fc_failedDueToTaskConstraints;
- (uint64_t)fc_isAuthenticationUserCancelled;
- (uint64_t)fc_isCancellationError;
- (uint64_t)fc_isNetworkUnavailableError;
- (uint64_t)fc_isOfflineErrorOfflineReason:()FCAdditions;
- (uint64_t)fc_shouldRetry;
@end

@implementation NSError(FCAdditions)

- (BOOL)fc_isOperationThrottledError
{
  domain = [self domain];
  if ([domain isEqualToString:@"FCErrorDomain"])
  {
    v3 = [self code] == 12;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)fc_shouldRetry
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"NSErrorFCAdditionsShouldRetry"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)fc_isNetworkUnavailableError
{
  userInfo = [self userInfo];
  v2 = [userInfo objectForKeyedSubscript:@"NSErrorFCAdditionsIsNetworkUnavailable"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (uint64_t)fc_isCancellationError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x1E695B740]] && objc_msgSend(self, "code") == 20)
  {
    v3 = 1;
  }

  else
  {
    domain2 = [self domain];
    if ([domain2 isEqualToString:*MEMORY[0x1E696A978]] && objc_msgSend(self, "code") == -999)
    {
      v3 = 1;
    }

    else
    {
      domain3 = [self domain];
      if ([domain3 isEqualToString:@"FCErrorDomain"] && objc_msgSend(self, "code") == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = [self fc_hasUnderlyingErrorPassingTest:&__block_literal_global_146];
      }
    }
  }

  return v3;
}

- (BOOL)fc_isRequestDroppedError
{
  domain = [self domain];
  if ([domain isEqualToString:@"FCErrorDomain"])
  {
    v3 = [self code] == 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)fc_isOfflineErrorOfflineReason:()FCAdditions
{
  domain = [self domain];
  code = [self code];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if ([domain isEqualToString:@"FCErrorDomain"])
  {
    if (code == 10)
    {
      userInfo = [self userInfo];
      v8 = [userInfo objectForKeyedSubscript:@"FCErrorOfflineReasonKey"];

      unsignedIntegerValue = [v8 unsignedIntegerValue];
      v18[3] = unsignedIntegerValue;

      goto LABEL_15;
    }

LABEL_20:
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__NSError_FCAdditions__fc_isOfflineErrorOfflineReason___block_invoke;
    v16[3] = &unk_1E7C45178;
    v16[4] = &v17;
    v14 = [self fc_hasUnderlyingErrorPassingTest:v16];
    goto LABEL_21;
  }

  if ([domain isEqualToString:*MEMORY[0x1E695B740]])
  {
    if ((code - 3) >= 2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ([domain isEqualToString:*MEMORY[0x1E696A978]])
    {
      code2 = [self code];
      if ((code2 + 1018) > 0x11)
      {
        goto LABEL_20;
      }

      v11 = 1 << (code2 - 6);
      v12 = 139777;
    }

    else
    {
      if (![domain isEqual:*MEMORY[0x1E695AD78]])
      {
        goto LABEL_20;
      }

      code3 = [self code];
      if (code3 > 0)
      {
        if (code3 != 1 && code3 != 302 && code3 != 310)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      if ((code3 + 1020) > 0x13)
      {
        goto LABEL_20;
      }

      v11 = 1 << (code3 - 4);
      v12 = 772103;
    }

    if ((v11 & v12) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_15:
  v14 = 1;
  if (!v18[3])
  {
    v18[3] = 1;
  }

LABEL_21:
  if (a3)
  {
    *a3 = v18[3];
  }

  _Block_object_dispose(&v17, 8);

  return v14;
}

- (BOOL)fc_isBlockedInStoreFrontError
{
  domain = [self domain];
  if ([domain isEqualToString:@"FCErrorDomain"])
  {
    v3 = [self code] == 20;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)fc_isAVUnauthorizedError
{
  domain = [self domain];
  v3 = [domain isEqualToString:@"FCErrorDomain"];

  if (!v3)
  {
    return 0;
  }

  if ([self code] == 34)
  {
    return 1;
  }

  return [self code] == 35;
}

- (BOOL)fc_isHTTPNotFoundError
{
  domain = [self domain];
  v3 = [domain isEqualToString:@"FCErrorDomain"];

  if (!v3 || [self code] != 4)
  {
    return 0;
  }

  userInfo = [self userInfo];
  v5 = [userInfo objectForKey:@"FCErrorHTTPStatusCode"];

  if (v5)
  {
    v6 = [v5 unsignedIntegerValue] == 404;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)fc_errorWithMaximumRetryAfter:()FCAdditions
{
  if (a2 == 0.0)
  {
    v15[5] = MEMORY[0x1E69E9820];
    v15[6] = 3221225472;
    v15[7] = __54__NSError_FCAdditions__fc_errorWithMaximumRetryAfter___block_invoke;
    v15[8] = &unk_1E7C36F98;
    v15[9] = self;
    selfCopy3 = self;
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__NSError_FCAdditions__fc_errorWithMaximumRetryAfter___block_invoke_2;
    v15[3] = &unk_1E7C371A8;
    v15[4] = self;
    v4 = __54__NSError_FCAdditions__fc_errorWithMaximumRetryAfter___block_invoke_2(v15);
    if (v4)
    {
      userInfo = [self userInfo];
      v6 = [userInfo objectForKeyedSubscript:v4];

      [v6 doubleValue];
      if (v7 <= a2)
      {
        selfCopy3 = self;
      }

      else
      {
        userInfo2 = [self userInfo];
        v9 = [userInfo2 mutableCopy];

        v10 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
        [v9 setObject:v10 forKeyedSubscript:v4];

        v11 = MEMORY[0x1E696ABC0];
        domain = [self domain];
        selfCopy3 = [v11 errorWithDomain:domain code:objc_msgSend(self userInfo:{"code"), v9}];
      }
    }

    else
    {
      selfCopy3 = self;
    }
  }

  return selfCopy3;
}

- (uint64_t)fc_isAuthenticationUserCancelled
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x1E698C548]])
  {
    code = [self code];

    if (code == 6)
    {
      return 1;
    }
  }

  else
  {
  }

  userInfo = [self userInfo];
  v6 = *MEMORY[0x1E696AA08];
  v7 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

  userInfo2 = [v7 userInfo];
  v9 = [userInfo2 objectForKey:v6];

  v4 = [v7 code] == -7003 || objc_msgSend(v9, "code") == -7003;
  return v4;
}

- (uint64_t)fc_failedDueToTaskConstraints
{
  userInfo = [self userInfo];
  v3 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A9A0]];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [self fc_hasUnderlyingErrorPassingTest:&__block_literal_global_20_0];
  }

  return v4;
}

- (BOOL)fc_hasUnderlyingErrorPassingTest:()FCAdditions
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  userInfo = [self userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A750]];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (v4[2](v4, *(*(&v17 + 1) + 8 * v11)))
        {
          v14 = 1;
          v13 = v7;
          goto LABEL_14;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  userInfo2 = [self userInfo];
  v13 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  v14 = v13 && ((v4)[2](v4, v13) & 1) != 0;
LABEL_14:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)fc_retryAfter
{
  userInfo = [self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"FCErrorRetryAfter"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    userInfo2 = [self userInfo];
    v5 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E695B748]];
  }

  return v5;
}

@end