@interface EMMailDropParser
+ (BOOL)_domainIsAllowed:(id)a3;
+ (BOOL)urlIsValid:(id)a3;
+ (id)_parseURLQuery:(id)a3;
+ (id)allowedMailDropDownloadDomains;
+ (id)parseExpiration:(double)a3;
+ (id)parseHeaderValue:(id)a3 forField:(id)a4;
+ (void)_parseDirectURL:(id)a3 intoMetadata:(id)a4;
+ (void)_parseWrappedURL:(id)a3 intoMetadata:(id)a4;
+ (void)parseURL:(id)a3 intoMetadata:(id)a4;
@end

@implementation EMMailDropParser

+ (id)allowedMailDropDownloadDomains
{
  v2 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [v2 objectForKey:@"allowedDownloadDomains"];

  if (![v3 count])
  {

    v3 = &unk_1F461CE58;
  }

  return v3;
}

+ (id)parseExpiration:(double)a3
{
  if (a3 >= 9999999.0)
  {
    if (a3 > 1.0e10)
    {
      a3 = a3 / 1000.0;
    }
  }

  else
  {
    a3 = a3 * 1000.0;
  }

  if (a3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v3];
  }

  return v5;
}

+ (id)parseHeaderValue:(id)a3 forField:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v27 = a4;
  v31 = +[EMMailDropMetadata mailDropMetadata];
  if ([v27 isEqualToString:*MEMORY[0x1E699B100]])
  {
    [v31 setMimeType:@"application/zip"];
    v6 = [v31 flags] | 2;
LABEL_5:
    [v31 setFlags:v6];
    goto LABEL_6;
  }

  if ([v27 isEqualToString:*MEMORY[0x1E699B148]])
  {
    v6 = [v31 flags] | 4;
    goto LABEL_5;
  }

LABEL_6:
  v28 = [v29 componentsSeparatedByString:@""];;
  if ([v28 count] < 2)
  {
    v7 = [MEMORY[0x1E695DFF8] URLWithString:v29];
    if (v7)
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v28;
  v7 = 0;
  v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v8)
  {
    goto LABEL_34;
  }

  v9 = *v34;
  do
  {
    v10 = 0;
    v11 = v4;
    do
    {
      if (*v34 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v33 + 1) + 8 * v10);
      v13 = [v12 componentsSeparatedByString:@"="];
      v14 = [v13 firstObject];
      v15 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v16 = [v14 stringByTrimmingCharactersInSet:v15];

      if ([v16 hasPrefix:@"https://"])
      {
        [MEMORY[0x1E695DFF8] URLWithString:v12];
        v7 = v4 = v7;
        goto LABEL_19;
      }

      if ([v16 isEqualToString:@"filename"])
      {
        v4 = [v13 lastObject];
        v17 = [v4 ef_sanitizedFileName];
        [v31 setFileName:v17];
        goto LABEL_18;
      }

      if ([v16 isEqualToString:@"mimeType"])
      {
        v4 = [v13 lastObject];
        v17 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@""];
        v18 = [v4 stringByTrimmingCharactersInSet:v17];
        [v31 setMimeType:v18];

LABEL_18:
LABEL_19:

        goto LABEL_20;
      }

      if ([v16 isEqualToString:@"filesize"])
      {
        v4 = [v13 lastObject];
        [v31 setFileSize:{objc_msgSend(v4, "integerValue")}];
        goto LABEL_19;
      }

      if (![v16 isEqualToString:@"expiration-date"])
      {
        if ([v16 isEqualToString:@"x-mac-auto-archive"])
        {
          v4 = [v13 lastObject];
          [v31 setAutoArchive:{objc_msgSend(v4, "BOOLValue")}];
          goto LABEL_19;
        }

LABEL_20:
        v4 = v11;
        goto LABEL_21;
      }

      v19 = [v13 lastObject];
      [v19 doubleValue];
      v21 = v20;

      if (v21 == 0.0)
      {
        v22 = 0;
        v4 = v11;
      }

      else
      {
        v4 = [a1 parseExpiration:v21];
        v22 = v4;
      }

      [v31 setExpiration:v22];
      v11 = v4;
      if (v21 != 0.0)
      {
        goto LABEL_19;
      }

LABEL_21:

      ++v10;
      v11 = v4;
    }

    while (v8 != v10);
    v23 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    v8 = v23;
  }

  while (v23);
LABEL_34:

  if (!v7)
  {
    goto LABEL_38;
  }

LABEL_37:
  [a1 parseURL:v7 intoMetadata:v31];
LABEL_38:
  v24 = v31;

  v25 = *MEMORY[0x1E69E9840];
  return v31;
}

+ (void)parseURL:(id)a3 intoMetadata:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([a1 _domainIsAllowed:v11])
  {
    v7 = [v11 absoluteString];
    v8 = [v7 hasPrefix:@"https://www.icloud.com/attachment/"];

    if (v8)
    {
      [a1 _parseWrappedURL:v11 intoMetadata:v6];
    }

    else
    {
      [a1 _parseDirectURL:v11 intoMetadata:v6];
    }

    v9 = [v6 fileName];
    v10 = [v9 isEqualToString:@"Images.zip"];

    if (v10)
    {
      [v6 setFlags:{objc_msgSend(v6, "flags") | 2}];
    }
  }

  else
  {
    [v6 setIsInvalid:1];
  }
}

+ (BOOL)urlIsValid:(id)a3
{
  v3 = a3;
  v4 = +[EMMailDropMetadata mailDropMetadata];
  [EMMailDropParser parseURL:v3 intoMetadata:v4];
  v5 = [v4 isInvalid];

  return v5 ^ 1;
}

+ (id)_parseURLQuery:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [v15 query];
  [v4 componentsSeparatedByString:@"&"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) componentsSeparatedByString:@"="];
        if ([v9 count])
        {
          if ([v9 count] == 2)
          {
            v10 = [v9 lastObject];
            v11 = [v10 stringByRemovingPercentEncoding];

            v12 = [v9 firstObject];
            [v3 setValue:v11 forKey:v12];
          }

          else
          {
            v11 = [v9 firstObject];
            [v3 setValue:0 forKey:v11];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (BOOL)_domainIsAllowed:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 scheme];
  LODWORD(v6) = [v5 isEqualToString:@"https"];

  if (v6)
  {
    v7 = [v4 host];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__EMMailDropParser__domainIsAllowed___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (_domainIsAllowed__onceToken != -1)
    {
      dispatch_once(&_domainIsAllowed__onceToken, block);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = _allowedDownloadDomains;
    v6 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v6)
    {
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v8);
          }

          if ([v7 hasSuffix:{*(*(&v13 + 1) + 8 * i), v13}])
          {
            LOBYTE(v6) = 1;
            goto LABEL_14;
          }
        }

        v6 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

void __37__EMMailDropParser__domainIsAllowed___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) allowedMailDropDownloadDomains];
  v2 = _allowedDownloadDomains;
  _allowedDownloadDomains = v1;
}

+ (void)_parseWrappedURL:(id)a3 intoMetadata:(id)a4
{
  v19 = a3;
  v6 = a4;
  [v6 setWrappedUrl:v19];
  v7 = [a1 _parseURLQuery:v19];
  if ([v7 count] && (objc_msgSend(v7, "objectForKeyedSubscript:", @"u"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "mutableCopy"), v8, v9))
  {
    v10 = [v7 objectForKeyedSubscript:@"f"];
    if (v10)
    {
      v11 = [MEMORY[0x1E695DFF8] ef_defaultAllowedCharacterSet];
      v12 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v11];

      [v9 replaceOccurrencesOfString:@"${f}" withString:v12 options:0 range:{0, objc_msgSend(v9, "length")}];
      v13 = [v10 ef_sanitizedFileName];
      [v6 setFileName:v13];
    }

    v14 = [v7 objectForKeyedSubscript:@"uk"];
    v15 = [v9 length];
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_1F45FD218;
    }

    [v9 replaceOccurrencesOfString:@"${uk}" withString:v16 options:0 range:{0, v15}];

    v17 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    v18 = [v7 objectForKeyedSubscript:@"sz"];
    [v6 setFileSize:{objc_msgSend(v18, "integerValue")}];

    if (v17)
    {
      [a1 _parseDirectURL:v17 intoMetadata:v6];
    }
  }

  else
  {
    v17 = 0;
  }
}

+ (void)_parseDirectURL:(id)a3 intoMetadata:(id)a4
{
  v16 = a3;
  v6 = a4;
  if ([a1 _domainIsAllowed:v16])
  {
    [v6 setDirectUrl:v16];
    v7 = [v16 lastPathComponent];
    v8 = [v7 ef_sanitizedFileName];
    [v6 setFileName:v8];

    v9 = [a1 _parseURLQuery:v16];
    if ([v9 count])
    {
      v10 = [v9 objectForKeyedSubscript:@"e"];
      [v10 doubleValue];
      v12 = v11;

      if (v12 == 0.0)
      {
        v13 = 0;
      }

      else
      {
        v13 = [a1 parseExpiration:v12];
      }

      [v6 setExpiration:v13];
      if (v12 != 0.0)
      {
      }

      v14 = [v9 objectForKeyedSubscript:@"r"];
      v15 = [v14 uppercaseString];
      [v6 setUUID:v15];
    }
  }

  else
  {
    [v6 setIsInvalid:1];
  }
}

@end