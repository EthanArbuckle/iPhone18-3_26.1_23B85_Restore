@interface _ECHeaderAuthenticationResultsParser
+ (BOOL)_propertiesWithScanner:(id)scanner intoArray:(id *)array;
+ (BOOL)_scanQuotedValueWithScanner:(id)scanner intoString:(id *)string;
+ (BOOL)_scanToCFWSOrEqualWithScanner:(id)scanner intoString:(id *)string;
+ (BOOL)_scanToCFWSOrPeriodOrSemicolonWithScanner:(id)scanner intoString:(id *)string;
+ (BOOL)_scanToCFWSOrSemicolonWithScanner:(id)scanner intoString:(id *)string;
+ (BOOL)_skipCFWSWithScanner:(id)scanner;
+ (BOOL)_statementWithScanner:(id)scanner intoStatement:(id *)statement;
+ (BOOL)_statementsWithScanner:(id)scanner intoArray:(id *)array;
+ (id)_authenticationResultsForHeaderBodies:(id)bodies;
+ (id)authenticationResultsForHeaders:(uint64_t)headers;
+ (id)authenticationResultsForRawHeaders:(uint64_t)headers;
+ (int64_t)_versionWithScanner:(id)scanner;
@end

@implementation _ECHeaderAuthenticationResultsParser

+ (id)authenticationResultsForHeaders:(uint64_t)headers
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 headersForKey:@"authentication-results"];
  v5 = [v3 _authenticationResultsForHeaderBodies:v4];

  return v5;
}

+ (id)authenticationResultsForRawHeaders:(uint64_t)headers
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 headersForKey:@"authentication-results"];
  v5 = [v4 ef_mapSelector:sel_body];

  v6 = [v3 _authenticationResultsForHeaderBodies:v5];

  return v6;
}

+ (id)_authenticationResultsForHeaderBodies:(id)bodies
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78___ECHeaderAuthenticationResultsParser__authenticationResultsForHeaderBodies___block_invoke;
  v5[3] = &__block_descriptor_40_e49___ECHeaderAuthenticationResults_16__0__NSString_8l;
  v5[4] = self;
  v3 = [bodies ef_compactMap:v5];

  return v3;
}

+ (BOOL)_skipCFWSWithScanner:(id)scanner
{
  scannerCopy = scanner;
  if (_skipCFWSWithScanner__onceToken != -1)
  {
    +[_ECHeaderAuthenticationResultsParser _skipCFWSWithScanner:];
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  [scannerCopy scanCharactersFromSet:whitespaceAndNewlineCharacterSet intoString:0];

  v5 = 0;
  for (i = 0; ; i = v8)
  {
    v14 = i;
    v7 = [scannerCopy scanCharactersFromSet:_skipCFWSWithScanner__parentheses intoString:&v14];
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
      [scannerCopy scanUpToCharactersFromSet:_skipCFWSWithScanner__parentheses intoString:0];
    }

    else
    {
      whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      [scannerCopy scanCharactersFromSet:whitespaceAndNewlineCharacterSet2 intoString:0];
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

+ (BOOL)_scanToCFWSOrSemicolonWithScanner:(id)scanner intoString:(id *)string
{
  scannerCopy = scanner;
  if (_scanToCFWSOrSemicolonWithScanner_intoString__onceToken != -1)
  {
    +[_ECHeaderAuthenticationResultsParser _scanToCFWSOrSemicolonWithScanner:intoString:];
  }

  v6 = [scannerCopy scanUpToCharactersFromSet:_scanToCFWSOrSemicolonWithScanner_intoString__whitespaceAndSemicolon intoString:string];

  return v6;
}

+ (BOOL)_scanQuotedValueWithScanner:(id)scanner intoString:(id *)string
{
  scannerCopy = scanner;
  if (_scanQuotedValueWithScanner_intoString__onceToken != -1)
  {
    +[_ECHeaderAuthenticationResultsParser _scanQuotedValueWithScanner:intoString:];
  }

  if ([scannerCopy scanCharactersFromSet:_scanQuotedValueWithScanner_intoString__quotes intoString:0])
  {
    if (![scannerCopy scanUpToCharactersFromSet:_scanQuotedValueWithScanner_intoString__quotes intoString:string])
    {
      v8 = 0;
      goto LABEL_9;
    }

    v7 = [scannerCopy scanCharactersFromSet:_scanQuotedValueWithScanner_intoString__quotes intoString:0];
  }

  else
  {
    v7 = [self _scanToCFWSOrSemicolonWithScanner:scannerCopy intoString:string];
  }

  v8 = v7;
LABEL_9:

  return v8;
}

+ (BOOL)_scanToCFWSOrEqualWithScanner:(id)scanner intoString:(id *)string
{
  scannerCopy = scanner;
  if (_scanToCFWSOrEqualWithScanner_intoString__onceToken != -1)
  {
    +[_ECHeaderAuthenticationResultsParser _scanToCFWSOrEqualWithScanner:intoString:];
  }

  v6 = [scannerCopy scanUpToCharactersFromSet:_scanToCFWSOrEqualWithScanner_intoString__whitespaceAndEqual intoString:string];

  return v6;
}

+ (BOOL)_scanToCFWSOrPeriodOrSemicolonWithScanner:(id)scanner intoString:(id *)string
{
  scannerCopy = scanner;
  if (_scanToCFWSOrPeriodOrSemicolonWithScanner_intoString__onceToken != -1)
  {
    +[_ECHeaderAuthenticationResultsParser _scanToCFWSOrPeriodOrSemicolonWithScanner:intoString:];
  }

  v6 = [scannerCopy scanUpToCharactersFromSet:_scanToCFWSOrPeriodOrSemicolonWithScanner_intoString__whitespacePeriodSemicolon intoString:string];

  return v6;
}

+ (int64_t)_versionWithScanner:(id)scanner
{
  v4 = 1;
  if ([scanner scanInteger:&v4])
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

+ (BOOL)_statementsWithScanner:(id)scanner intoArray:(id *)array
{
  scannerCopy = scanner;
  if ([self _skipCFWSWithScanner:scannerCopy] && objc_msgSend(scannerCopy, "scanString:intoString:", @";", 0) && (objc_msgSend(self, "_skipCFWSWithScanner:", scannerCopy) & 1) != 0)
  {
    if ([scannerCopy scanString:@"none" intoString:0])
    {
      if (array)
      {
        *array = MEMORY[0x277CBEBF8];
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
        v7 = [self _statementWithScanner:scannerCopy intoStatement:&v13];
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
        if (([self _skipCFWSWithScanner:scannerCopy] & 1) == 0)
        {
          goto LABEL_19;
        }

        if ([scannerCopy isAtEnd])
        {
          break;
        }

        if ([scannerCopy scanString:@";" intoString:0])
        {
          v10 = v11;
          if ([self _skipCFWSWithScanner:scannerCopy])
          {
            continue;
          }
        }

LABEL_19:
        LOBYTE(v7) = 0;
LABEL_20:
        if (!array)
        {
          goto LABEL_22;
        }

LABEL_21:
        *array = [v9 ef_notEmpty];
        goto LABEL_22;
      }

      LOBYTE(v7) = 1;
      if (array)
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

+ (BOOL)_statementWithScanner:(id)scanner intoStatement:(id *)statement
{
  scannerCopy = scanner;
  v20 = 0;
  v7 = [self _scanToCFWSOrEqualWithScanner:scannerCopy intoString:&v20];
  v8 = v20;
  if (v7 && [self _skipCFWSWithScanner:scannerCopy] && objc_msgSend(scannerCopy, "scanString:intoString:", @"=", 0) && objc_msgSend(self, "_skipCFWSWithScanner:", scannerCopy))
  {
    v19 = 0;
    v9 = [self _scanQuotedValueWithScanner:scannerCopy intoString:&v19];
    v10 = v19;
    if (v9 && ([self _skipCFWSWithScanner:scannerCopy] & 1) != 0)
    {
      if ([scannerCopy scanString:@"reason" intoString:0])
      {
        if (![self _skipCFWSWithScanner:scannerCopy] || !objc_msgSend(scannerCopy, "scanString:intoString:", @"=", 0) || !objc_msgSend(self, "_skipCFWSWithScanner:", scannerCopy))
        {
          v13 = 0;
          v12 = 0;
          goto LABEL_25;
        }

        v18 = 0;
        v11 = [self _scanQuotedValueWithScanner:scannerCopy intoString:&v18];
        v12 = v18;
        if (!v11 || ([self _skipCFWSWithScanner:scannerCopy] & 1) == 0)
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
      v13 = [self _propertiesWithScanner:scannerCopy intoArray:&v17];
      v15 = v17;
      if (statement)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        *statement = [[ECHeaderAuthenticationResultStatement alloc] initWithMethod:v8 result:v10 reason:v12 properties:v15];
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

+ (BOOL)_propertiesWithScanner:(id)scanner intoArray:(id *)array
{
  scannerCopy = scanner;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; ; i = v8)
  {
    v22 = i;
    v7 = [self _scanToCFWSOrPeriodOrSemicolonWithScanner:scannerCopy intoString:&v22];
    v8 = v22;

    if (!v7)
    {
      break;
    }

    if (([self _skipCFWSWithScanner:scannerCopy] & 1) == 0)
    {
      goto LABEL_16;
    }

    if ([scannerCopy scanString:@"." intoString:0])
    {
      if (![self _skipCFWSWithScanner:scannerCopy])
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
      v9 = [self _scanToCFWSOrEqualWithScanner:scannerCopy intoString:&v21];
      v10 = v21;
      if (!v9 || ![self _skipCFWSWithScanner:scannerCopy] || !objc_msgSend(scannerCopy, "scanString:intoString:", @"=", 0) || !objc_msgSend(self, "_skipCFWSWithScanner:", scannerCopy))
      {
        goto LABEL_17;
      }

      v20 = 0;
      v11 = [self _scanQuotedValueWithScanner:scannerCopy intoString:&v20];
      v12 = v20;
      if (!v11 || ![self _skipCFWSWithScanner:scannerCopy])
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

      firstObject = [v10 firstObject];
      lowercaseString = [firstObject lowercaseString];
      v16 = [lowercaseString hasPrefix:@"x-"];

      if ((v16 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  if (array)
  {
    *array = v19;
  }

LABEL_20:

  return v7 ^ 1;
}

@end