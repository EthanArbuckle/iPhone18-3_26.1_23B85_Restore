@interface NSError
@end

@implementation NSError

uint64_t __49__NSError_MSErrorUtilities__MSMMCSRetryAfterDate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277D25460]];

  if (v5)
  {
    v6 = [v3 userInfo];
    v7 = [v6 objectForKey:@"Retry-After"];

    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v12 = 1;
      goto LABEL_13;
    }

    if (kMSErrorIsPrimaryKey_block_invoke_onceToken != -1)
    {
      dispatch_once(&kMSErrorIsPrimaryKey_block_invoke_onceToken, &__block_literal_global_722);
    }

    DateFromString = CFDateFormatterCreateDateFromString(0, kMSErrorIsPrimaryKey_block_invoke_formatter, v7, 0);
    if (!DateFromString)
    {
      v9 = [(__CFString *)v7 intValue];
      if (v9 < 1)
      {
LABEL_10:
        v12 = 0;
LABEL_13:

        goto LABEL_14;
      }

      DateFromString = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v9];
    }

    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = DateFromString;

    goto LABEL_10;
  }

  v12 = 1;
LABEL_14:

  return v12;
}

void __49__NSError_MSErrorUtilities__MSMMCSRetryAfterDate__block_invoke_2()
{
  v0 = CFDateFormatterCreate(0, 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  kMSErrorIsPrimaryKey_block_invoke_formatter = v0;
  if (v0)
  {
    v1 = *MEMORY[0x277CBED88];
    v2 = *MEMORY[0x277CBED28];

    CFDateFormatterSetProperty(v0, v1, v2);
  }
}

uint64_t __43__NSError_MSErrorUtilities__MSIsQuotaError__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = 1;
    if ([v3 code] == 3)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t __60__NSError_MSErrorUtilities__MSContainsErrorWithDomain_code___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  if ([v4 isEqualToString:a1[4]])
  {
    v5 = [v3 code];
    v6 = a1[6];

    v7 = 1;
    if (v5 == v6)
    {
      *(*(a1[5] + 8) + 24) = 1;
      v7 = 0;
    }
  }

  else
  {

    v7 = 1;
  }

  return v7;
}

uint64_t __46__NSError_MSErrorUtilities__MSIsBadTokenError__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277D25460]];

  if (v5)
  {
    if ([v3 code] == 14)
    {
LABEL_7:
      v8 = 0;
      *(*(*(a1 + 32) + 8) + 24) = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = [v3 domain];
    v7 = [v6 isEqualToString:@"MSSubscribeStorageProtocolErrorDomain"];

    if (v7 && ![v3 code])
    {
      goto LABEL_7;
    }
  }

  v8 = 1;
LABEL_8:

  return v8;
}

uint64_t __42__NSError_MSErrorUtilities__MSIsAuthError__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277D25460]];

  if (!v5)
  {
    v7 = [v3 domain];
    v8 = [v7 isEqualToString:*MEMORY[0x277CBACE8]];

    if (v8)
    {
      v9 = [v3 code];
      if (v9 == -1012 || v9 == 401 || v9 == 330)
      {
        v6 = 0;
        *(*(*(a1 + 32) + 8) + 24) = 1;
        goto LABEL_10;
      }
    }

LABEL_9:
    v6 = 1;
    goto LABEL_10;
  }

  if ([v3 code] != 15)
  {
    goto LABEL_9;
  }

  v6 = 0;
  *(*(*(a1 + 32) + 8) + 24) = 1;
LABEL_10:

  return v6;
}

unint64_t __38__NSError_MSErrorUtilities__MSIsFatal__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CBACE8]];

  if (v5)
  {
    v6 = [v3 code];
    if ((v6 - 500) >= 0xFFFFFFFFFFFFFF9CLL)
    {
      v11 = *(*(a1 + 32) + 8);
      LOBYTE(v7) = 0;
      *(v11 + 24) = v6 != 401;
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    v8 = [v3 domain];
    v9 = [v8 isEqualToString:*MEMORY[0x277D25460]];

    if (v9)
    {
      v10 = [v3 code];
      LOBYTE(v7) = 1;
      if (v10 <= 0x27 && ((1 << v10) & 0x8810001904) != 0)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        v7 = 0x77EFFFE6FBuLL >> v10;
      }
    }

    else
    {
      v7 = [v3 domain];
      v12 = [v7 isEqualToString:*MEMORY[0x277CBBF50]];

      LOBYTE(v7) = 1;
      if (v12)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        LOBYTE(v7) = 0;
      }
    }
  }

  return v7 & 1;
}

uint64_t __40__NSError_MSErrorUtilities__MSIsCounted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CBACE8]];

  if (v5)
  {
    if ([v3 code] != 503)
    {
LABEL_7:
      v8 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = [v3 domain];
    v7 = [v6 isEqualToString:*MEMORY[0x277D25460]];

    if (!v7 || [v3 code] != 16)
    {
      goto LABEL_7;
    }
  }

  v8 = 0;
  *(*(*(a1 + 32) + 8) + 24) = 0;
LABEL_8:

  return v8;
}

uint64_t __43__NSError_MSErrorUtilities__MSNeedsBackoff__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CBACE8]];

  if (v5)
  {
    LOBYTE(v6) = 1;
    if (([v3 code] - 600) >= 0xFFFFFFFFFFFFFF9CLL)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    v7 = [v3 domain];
    v8 = [v7 isEqualToString:*MEMORY[0x277D25460]];

    if (v8)
    {
      v9 = [v3 code];
      LOBYTE(v6) = 1;
      if (v9 <= 0x17 && ((1 << v9) & 0x810040) != 0)
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        v6 = 0x7EFFBFu >> v9;
      }
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6 & 1;
}

uint64_t __54__NSError_MSErrorUtilities__MSIsTemporaryNetworkError__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CBACE8]];

  if (!v5)
  {
    v8 = [v3 domain];
    v9 = [v8 isEqualToString:*MEMORY[0x277D25460]];

    if (v9)
    {
      v10 = [v3 code];
      v7 = 1;
      if (v10 > 0x26)
      {
        goto LABEL_22;
      }

      v11 = 1 << v10;
      v12 = 0x400000002ALL;
    }

    else
    {
      v13 = [v3 domain];
      v14 = [v13 isEqualToString:*MEMORY[0x277CCA5B8]];

      if (!v14)
      {
        v16 = [v3 domain];
        v17 = [v16 isEqualToString:*MEMORY[0x277CBBF50]];

        if (!v17 || ([v3 code] & 0xFFFFFFFFFFFFFFFELL) != 6)
        {
          v7 = 1;
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v15 = [v3 code];
      v7 = 1;
      if ((v15 - 22) > 0x2B)
      {
        goto LABEL_22;
      }

      v11 = 1 << (v15 - 22);
      v12 = 0xCC978000401;
    }

    if ((v11 & v12) == 0)
    {
      goto LABEL_22;
    }

LABEL_21:
    v7 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    goto LABEL_22;
  }

  v6 = [v3 code];
  v7 = 1;
  if (v6 <= -1010)
  {
    if ((v6 + 1206) >= 7 && v6 != -73000 && v6 != -2000)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ((v6 + 1009) <= 8 && ((1 << (v6 - 15)) & 0x179) != 0 || (v6 - 1) < 2)
  {
    goto LABEL_21;
  }

LABEL_22:

  return v7;
}

uint64_t __38__NSError_MMCSKit__MMCSRetryAfterDate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277D25460]];

  if (v5)
  {
    v6 = [v3 userInfo];
    v7 = [v6 objectForKey:@"Retry-After"];

    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v12 = 1;
      goto LABEL_13;
    }

    if (kMMCSKitErrorDomain_block_invoke_onceToken != -1)
    {
      dispatch_once(&kMMCSKitErrorDomain_block_invoke_onceToken, &__block_literal_global_17_5677);
    }

    DateFromString = CFDateFormatterCreateDateFromString(0, kMMCSKitErrorDomain_block_invoke_formatter, v7, 0);
    if (!DateFromString)
    {
      v9 = [(__CFString *)v7 intValue];
      if (v9 < 1)
      {
LABEL_10:
        v12 = 0;
LABEL_13:

        goto LABEL_14;
      }

      DateFromString = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v9];
    }

    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = DateFromString;

    goto LABEL_10;
  }

  v12 = 1;
LABEL_14:

  return v12;
}

void __38__NSError_MMCSKit__MMCSRetryAfterDate__block_invoke_2()
{
  v0 = CFDateFormatterCreate(0, 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  kMMCSKitErrorDomain_block_invoke_formatter = v0;
  if (v0)
  {
    v1 = *MEMORY[0x277CBED88];
    v2 = *MEMORY[0x277CBED28];

    CFDateFormatterSetProperty(v0, v1, v2);
  }
}

unint64_t __36__NSError_MMCSKit__MMCSIsFatalError__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277D25460]];

  if (v5)
  {
    v6 = [v3 code];
    LOBYTE(v7) = 1;
    if (v6 <= 0x27 && ((1 << v6) & 0x8810001904) != 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v7 = 0x77EFFFE6FBuLL >> v6;
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7 & 1;
}

uint64_t __44__NSError_MMCSKit__MMCSIsAuthorizationError__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277D25460]];

  if (v5)
  {
    v6 = 1;
    if (([v3 code] - 15) >= 0xFFFFFFFFFFFFFFFELL)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __48__NSError_MMCSKit__MMCSIsNetworkConditionsError__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277CBACE8]];

  if (v5)
  {
    v6 = [v3 code];
    v7 = 1;
    if (v6 > 0)
    {
      if ((v6 - 1) >= 2)
      {
        goto LABEL_19;
      }
    }

    else if (((v6 + 1009) > 8 || ((1 << (v6 - 15)) & 0x179) == 0) && v6 != -73000 && v6 != -2000)
    {
      goto LABEL_19;
    }

LABEL_18:
    v7 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    goto LABEL_19;
  }

  v8 = [v3 domain];
  v9 = [v8 isEqualToString:*MEMORY[0x277D25460]];

  if (v9)
  {
    v10 = [v3 code];
    v7 = 1;
    if (v10 > 0x26)
    {
      goto LABEL_19;
    }

    v11 = 1 << v10;
    v12 = 0x400000002ALL;
    goto LABEL_14;
  }

  v13 = [v3 domain];
  v14 = [v13 isEqualToString:*MEMORY[0x277CCA5B8]];

  if (!v14)
  {
    v7 = 1;
    goto LABEL_19;
  }

  v15 = [v3 code];
  v7 = 1;
  if ((v15 - 22) <= 0x2B)
  {
    v11 = 1 << (v15 - 22);
    v12 = 0xCC978000401;
LABEL_14:
    if ((v11 & v12) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_19:

  return v7;
}

uint64_t __37__NSError_MMCSKit__MMCSIsCancelError__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x277D25460]];

  if (v5)
  {
    v6 = 1;
    if ([v3 code] == 4)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __57__NSError_MMCSKit__MMCSErrorWithDomain_code_description___block_invoke()
{
  MMCSErrorWithDomain_code_description__MMCSKitBundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

@end