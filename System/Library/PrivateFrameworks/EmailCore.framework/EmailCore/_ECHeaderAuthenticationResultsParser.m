@interface _ECHeaderAuthenticationResultsParser
+ (BOOL)_propertiesWithScanner:(id)a3 intoArray:(id *)a4;
+ (BOOL)_scanQuotedValueWithScanner:(id)a3 intoString:(id *)a4;
+ (BOOL)_scanToCFWSOrEqualWithScanner:(id)a3 intoString:(id *)a4;
+ (BOOL)_scanToCFWSOrPeriodOrSemicolonWithScanner:(id)a3 intoString:(id *)a4;
+ (BOOL)_scanToCFWSOrSemicolonWithScanner:(id)a3 intoString:(id *)a4;
+ (BOOL)_skipCFWSWithScanner:(id)a3;
+ (BOOL)_statementWithScanner:(id)a3 intoStatement:(id *)a4;
+ (BOOL)_statementsWithScanner:(id)a3 intoArray:(id *)a4;
+ (id)_authenticationResultsForHeaderBodies:(id)a3;
+ (id)authenticationResultsForHeaders:(uint64_t)a1;
+ (id)authenticationResultsForRawHeaders:(uint64_t)a1;
+ (int64_t)_versionWithScanner:(id)a3;
@end

@implementation _ECHeaderAuthenticationResultsParser

+ (id)authenticationResultsForHeaders:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 headersForKey:@"authentication-results"];
  v5 = [v3 _authenticationResultsForHeaderBodies:v4];

  return v5;
}

+ (id)authenticationResultsForRawHeaders:(uint64_t)a1
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 headersForKey:@"authentication-results"];
  v5 = [v4 ef_mapSelector:sel_body];

  v6 = [v3 _authenticationResultsForHeaderBodies:v5];

  return v6;
}

+ (id)_authenticationResultsForHeaderBodies:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78___ECHeaderAuthenticationResultsParser__authenticationResultsForHeaderBodies___block_invoke;
  v5[3] = &__block_descriptor_40_e49___ECHeaderAuthenticationResults_16__0__NSString_8l;
  v5[4] = a1;
  v3 = [a3 ef_compactMap:v5];

  return v3;
}

+ (BOOL)_skipCFWSWithScanner:(id)a3
{
  v3 = a3;
  if (_skipCFWSWithScanner__onceToken != -1)
  {
    +[_ECHeaderAuthenticationResultsParser _skipCFWSWithScanner:];
  }

  v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [v3 scanCharactersFromSet:v4 intoString:0];

  v5 = 0;
  for (i = 0; ; i = v8)
  {
    v14 = i;
    v7 = [v3 scanCharactersFromSet:_skipCFWSWithScanner__parentheses intoString:&v14];
    v8 = v14;

    if (!v7)
    {
      v12 = v5 == 0;
      goto LABEL_17;
    }

    v9 = [v8 length];
    if (v9)
    {
      break;
    }

LABEL_12:
    if (v5)
    {
      [v3 scanUpToCharactersFromSet:_skipCFWSWithScanner__parentheses intoString:0];
    }

    else
    {
      v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      [v3 scanCharactersFromSet:v11 intoString:0];
    }
  }

  v10 = 0;
  while ([v8 characterAtIndex:v10] == 40)
  {
    ++v5;
LABEL_11:
    if (v9 == ++v10)
    {
      goto LABEL_12;
    }
  }

  if (v5)
  {
    --v5;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

+ (BOOL)_scanToCFWSOrSemicolonWithScanner:(id)a3 intoString:(id *)a4
{
  v5 = a3;
  if (_scanToCFWSOrSemicolonWithScanner_intoString__onceToken != -1)
  {
    +[_ECHeaderAuthenticationResultsParser _scanToCFWSOrSemicolonWithScanner:intoString:];
  }

  v6 = [v5 scanUpToCharactersFromSet:_scanToCFWSOrSemicolonWithScanner_intoString__whitespaceAndSemicolon intoString:a4];

  return v6;
}

+ (BOOL)_scanQuotedValueWithScanner:(id)a3 intoString:(id *)a4
{
  v6 = a3;
  if (_scanQuotedValueWithScanner_intoString__onceToken != -1)
  {
    +[_ECHeaderAuthenticationResultsParser _scanQuotedValueWithScanner:intoString:];
  }

  if ([v6 scanCharactersFromSet:_scanQuotedValueWithScanner_intoString__quotes intoString:0])
  {
    if (![v6 scanUpToCharactersFromSet:_scanQuotedValueWithScanner_intoString__quotes intoString:a4])
    {
      v8 = 0;
      goto LABEL_9;
    }

    v7 = [v6 scanCharactersFromSet:_scanQuotedValueWithScanner_intoString__quotes intoString:0];
  }

  else
  {
    v7 = [a1 _scanToCFWSOrSemicolonWithScanner:v6 intoString:a4];
  }

  v8 = v7;
LABEL_9:

  return v8;
}

+ (BOOL)_scanToCFWSOrEqualWithScanner:(id)a3 intoString:(id *)a4
{
  v5 = a3;
  if (_scanToCFWSOrEqualWithScanner_intoString__onceToken != -1)
  {
    +[_ECHeaderAuthenticationResultsParser _scanToCFWSOrEqualWithScanner:intoString:];
  }

  v6 = [v5 scanUpToCharactersFromSet:_scanToCFWSOrEqualWithScanner_intoString__whitespaceAndEqual intoString:a4];

  return v6;
}

+ (BOOL)_scanToCFWSOrPeriodOrSemicolonWithScanner:(id)a3 intoString:(id *)a4
{
  v5 = a3;
  if (_scanToCFWSOrPeriodOrSemicolonWithScanner_intoString__onceToken != -1)
  {
    +[_ECHeaderAuthenticationResultsParser _scanToCFWSOrPeriodOrSemicolonWithScanner:intoString:];
  }

  v6 = [v5 scanUpToCharactersFromSet:_scanToCFWSOrPeriodOrSemicolonWithScanner_intoString__whitespacePeriodSemicolon intoString:a4];

  return v6;
}

+ (int64_t)_versionWithScanner:(id)a3
{
  v4 = 1;
  if ([a3 scanInteger:&v4])
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

+ (BOOL)_statementsWithScanner:(id)a3 intoArray:(id *)a4
{
  v6 = a3;
  if ([a1 _skipCFWSWithScanner:v6] && objc_msgSend(v6, "scanString:intoString:", @";", 0) && (objc_msgSend(a1, "_skipCFWSWithScanner:", v6) & 1) != 0)
  {
    if ([v6 scanString:@"none" intoString:0])
    {
      if (a4)
      {
        *a4 = MEMORY[0x277CBEBF8];
      }

      LOBYTE(v7) = 1;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v10 = 0;
      while (1)
      {
        v13 = v10;
        v7 = [a1 _statementWithScanner:v6 intoStatement:&v13];
        v11 = v13;

        if (v11)
        {
          v12 = v7;
        }

        else
        {
          v12 = 0;
        }

        if (v12 != 1)
        {
          goto LABEL_20;
        }

        [v9 addObject:v11];
        if (([a1 _skipCFWSWithScanner:v6] & 1) == 0)
        {
          goto LABEL_19;
        }

        if ([v6 isAtEnd])
        {
          break;
        }

        if ([v6 scanString:@";" intoString:0])
        {
          v10 = v11;
          if ([a1 _skipCFWSWithScanner:v6])
          {
            continue;
          }
        }

LABEL_19:
        LOBYTE(v7) = 0;
LABEL_20:
        if (!a4)
        {
          goto LABEL_22;
        }

LABEL_21:
        *a4 = [v9 ef_notEmpty];
        goto LABEL_22;
      }

      LOBYTE(v7) = 1;
      if (a4)
      {
        goto LABEL_21;
      }

LABEL_22:
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (BOOL)_statementWithScanner:(id)a3 intoStatement:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v7 = [a1 _scanToCFWSOrEqualWithScanner:v6 intoString:&v20];
  v8 = v20;
  if (v7 && [a1 _skipCFWSWithScanner:v6] && objc_msgSend(v6, "scanString:intoString:", @"=", 0) && objc_msgSend(a1, "_skipCFWSWithScanner:", v6))
  {
    v19 = 0;
    v9 = [a1 _scanQuotedValueWithScanner:v6 intoString:&v19];
    v10 = v19;
    if (v9 && ([a1 _skipCFWSWithScanner:v6] & 1) != 0)
    {
      if ([v6 scanString:@"reason" intoString:0])
      {
        if (![a1 _skipCFWSWithScanner:v6] || !objc_msgSend(v6, "scanString:intoString:", @"=", 0) || !objc_msgSend(a1, "_skipCFWSWithScanner:", v6))
        {
          v13 = 0;
          v12 = 0;
          goto LABEL_25;
        }

        v18 = 0;
        v11 = [a1 _scanQuotedValueWithScanner:v6 intoString:&v18];
        v12 = v18;
        if (!v11 || ([a1 _skipCFWSWithScanner:v6] & 1) == 0)
        {
          v13 = 0;
LABEL_25:

          goto LABEL_15;
        }
      }

      else
      {
        v12 = 0;
      }

      v17 = 0;
      v13 = [a1 _propertiesWithScanner:v6 intoArray:&v17];
      v15 = v17;
      if (a4)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        *a4 = [[ECHeaderAuthenticationResultStatement alloc] initWithMethod:v8 result:v10 reason:v12 properties:v15];
      }

      goto LABEL_25;
    }

    v13 = 0;
  }

  else
  {
    v13 = 0;
    v10 = 0;
  }

LABEL_15:

  return v13;
}

+ (BOOL)_propertiesWithScanner:(id)a3 intoArray:(id *)a4
{
  v5 = a3;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; ; i = v8)
  {
    v22 = i;
    v7 = [a1 _scanToCFWSOrPeriodOrSemicolonWithScanner:v5 intoString:&v22];
    v8 = v22;

    if (!v7)
    {
      break;
    }

    if (([a1 _skipCFWSWithScanner:v5] & 1) == 0)
    {
      goto LABEL_16;
    }

    if ([v5 scanString:@"." intoString:0])
    {
      if (![a1 _skipCFWSWithScanner:v5])
      {
LABEL_16:
        v10 = 0;
LABEL_17:
        v12 = 0;
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v21 = 0;
      v9 = [a1 _scanToCFWSOrEqualWithScanner:v5 intoString:&v21];
      v10 = v21;
      if (!v9 || ![a1 _skipCFWSWithScanner:v5] || !objc_msgSend(v5, "scanString:intoString:", @"=", 0) || !objc_msgSend(a1, "_skipCFWSWithScanner:", v5))
      {
        goto LABEL_17;
      }

      v20 = 0;
      v11 = [a1 _scanQuotedValueWithScanner:v5 intoString:&v20];
      v12 = v20;
      if (!v11 || ![a1 _skipCFWSWithScanner:v5])
      {
        goto LABEL_18;
      }

      v13 = [[ECHeaderAuthenticationResultProperty alloc] initWithPropertyType:v8 property:v10 value:v12];
      [v19 addObject:v13];
    }

    else
    {
      v10 = [v8 componentsSeparatedByString:@"="];
      if ([v10 count] != 2)
      {
        goto LABEL_19;
      }

      v14 = [v10 firstObject];
      v15 = [v14 lowercaseString];
      v16 = [v15 hasPrefix:@"x-"];

      if ((v16 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  if (a4)
  {
    *a4 = v19;
  }

LABEL_20:

  return v7 ^ 1;
}

@end