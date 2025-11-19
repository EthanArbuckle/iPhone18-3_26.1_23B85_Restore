@interface NSError
@end

@implementation NSError

BOOL __60__NSError_FCCKAdditions__fc_isTemporaryNetworkOrServerError__block_invoke(uint64_t a1, unint64_t a2)
{
  result = 1;
  if (a2 > 0x17 || ((1 << a2) & 0x8000D8) == 0)
  {
    return a2 == 111;
  }

  return result;
}

BOOL __60__NSError_FCCKAdditions__fc_hasXPCInterruptedOrInvalidError__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x1E696A250]];

  if (v4)
  {
    v5 = (([v2 code] - 4097) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __57__NSError_FCCKAdditions__fc_zoneIDsWithIdentityLossError__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  objc_opt_class();
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v10 domain];
    if ([v8 isEqualToString:*MEMORY[0x1E695B740]])
    {
      v9 = [v10 code];

      if (v9 == 112)
      {
        [*(a1 + 32) addObject:v7];
      }
    }

    else
    {
    }
  }
}

id __66__NSError_FCErrorAdditions__fc_missingAssetErrorWithAssetHandles___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 remoteURL];
  v3 = [v2 absoluteString];

  return v3;
}

void __69__NSError_FCErrorAdditions__fc_HTTPErrorWithURLResponse_requestUUID___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) allHeaderFields];

  if (v3)
  {
    v4 = [*(a1 + 32) allHeaderFields];
    [v10 setObject:v4 forKeyedSubscript:@"FCErrorHTTPResponseHeaders"];
  }

  v5 = [*(a1 + 32) allHeaderFields];
  v6 = [v5 objectForKeyedSubscript:@"Retry-After"];

  if (v6 || [*(a1 + 32) statusCode] == 503 || objc_msgSend(*(a1 + 32), "statusCode") == 429)
  {
    v7 = [v6 integerValue];
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    [v10 setObject:v9 forKeyedSubscript:@"FCErrorRetryAfter"];
  }
}

__CFString *__54__NSError_FCAdditions__fc_errorWithMaximumRetryAfter___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = @"FCErrorRetryAfter";
  v4 = [v2 objectForKeyedSubscript:@"FCErrorRetryAfter"];

  if (v4 || ([*(a1 + 32) userInfo], v5 = objc_claimAutoreleasedReturnValue(), v3 = *MEMORY[0x1E695B748], objc_msgSend(v5, "objectForKeyedSubscript:", *MEMORY[0x1E695B748]), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end