@interface EMMailDropParser
+ (BOOL)_domainIsAllowed:(id)allowed;
+ (BOOL)urlIsValid:(id)valid;
+ (id)_parseURLQuery:(id)query;
+ (id)allowedMailDropDownloadDomains;
+ (id)parseExpiration:(double)expiration;
+ (id)parseHeaderValue:(id)value forField:(id)field;
+ (void)_parseDirectURL:(id)l intoMetadata:(id)metadata;
+ (void)_parseWrappedURL:(id)l intoMetadata:(id)metadata;
+ (void)parseURL:(id)l intoMetadata:(id)metadata;
@end

@implementation EMMailDropParser

+ (id)allowedMailDropDownloadDomains
{
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [em_userDefaults objectForKey:@"allowedDownloadDomains"];

  if (![v3 count])
  {

    v3 = &unk_1F461CE58;
  }

  return v3;
}

+ (id)parseExpiration:(double)expiration
{
  if (expiration >= 9999999.0)
  {
    if (expiration > 1.0e10)
    {
      expiration = expiration / 1000.0;
    }
  }

  else
  {
    expiration = expiration * 1000.0;
  }

  if (expiration == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v3];
  }

  return v5;
}

+ (id)parseHeaderValue:(id)value forField:(id)field
{
  v38 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  fieldCopy = field;
  v31 = +[EMMailDropMetadata mailDropMetadata];
  if ([fieldCopy isEqualToString:*MEMORY[0x1E699B100]])
  {
    [v31 setMimeType:@"application/zip"];
    v6 = [v31 flags] | 2;
LABEL_5:
    [v31 setFlags:v6];
    goto LABEL_6;
  }

  if ([fieldCopy isEqualToString:*MEMORY[0x1E699B148]])
  {
    v6 = [v31 flags] | 4;
    goto LABEL_5;
  }

LABEL_6:
  v28 = [valueCopy componentsSeparatedByString:@""];;
  if ([v28 count] < 2)
  {
    v7 = [MEMORY[0x1E695DFF8] URLWithString:valueCopy];
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
    v11 = lastObject;
    do
    {
      if (*v34 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v33 + 1) + 8 * v10);
      v13 = [v12 componentsSeparatedByString:@"="];
      firstObject = [v13 firstObject];
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v16 = [firstObject stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      if ([v16 hasPrefix:@"https://"])
      {
        [MEMORY[0x1E695DFF8] URLWithString:v12];
        v7 = lastObject = v7;
        goto LABEL_19;
      }

      if ([v16 isEqualToString:@"filename"])
      {
        lastObject = [v13 lastObject];
        ef_sanitizedFileName = [lastObject ef_sanitizedFileName];
        [v31 setFileName:ef_sanitizedFileName];
        goto LABEL_18;
      }

      if ([v16 isEqualToString:@"mimeType"])
      {
        lastObject = [v13 lastObject];
        ef_sanitizedFileName = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@""];
        v18 = [lastObject stringByTrimmingCharactersInSet:ef_sanitizedFileName];
        [v31 setMimeType:v18];

LABEL_18:
LABEL_19:

        goto LABEL_20;
      }

      if ([v16 isEqualToString:@"filesize"])
      {
        lastObject = [v13 lastObject];
        [v31 setFileSize:{objc_msgSend(lastObject, "integerValue")}];
        goto LABEL_19;
      }

      if (![v16 isEqualToString:@"expiration-date"])
      {
        if ([v16 isEqualToString:@"x-mac-auto-archive"])
        {
          lastObject = [v13 lastObject];
          [v31 setAutoArchive:{objc_msgSend(lastObject, "BOOLValue")}];
          goto LABEL_19;
        }

LABEL_20:
        lastObject = v11;
        goto LABEL_21;
      }

      lastObject2 = [v13 lastObject];
      [lastObject2 doubleValue];
      v21 = v20;

      if (v21 == 0.0)
      {
        v22 = 0;
        lastObject = v11;
      }

      else
      {
        lastObject = [self parseExpiration:v21];
        v22 = lastObject;
      }

      [v31 setExpiration:v22];
      v11 = lastObject;
      if (v21 != 0.0)
      {
        goto LABEL_19;
      }

LABEL_21:

      ++v10;
      v11 = lastObject;
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
  [self parseURL:v7 intoMetadata:v31];
LABEL_38:
  v24 = v31;

  v25 = *MEMORY[0x1E69E9840];
  return v31;
}

+ (void)parseURL:(id)l intoMetadata:(id)metadata
{
  lCopy = l;
  metadataCopy = metadata;
  if ([self _domainIsAllowed:lCopy])
  {
    absoluteString = [lCopy absoluteString];
    v8 = [absoluteString hasPrefix:@"https://www.icloud.com/attachment/"];

    if (v8)
    {
      [self _parseWrappedURL:lCopy intoMetadata:metadataCopy];
    }

    else
    {
      [self _parseDirectURL:lCopy intoMetadata:metadataCopy];
    }

    fileName = [metadataCopy fileName];
    v10 = [fileName isEqualToString:@"Images.zip"];

    if (v10)
    {
      [metadataCopy setFlags:{objc_msgSend(metadataCopy, "flags") | 2}];
    }
  }

  else
  {
    [metadataCopy setIsInvalid:1];
  }
}

+ (BOOL)urlIsValid:(id)valid
{
  validCopy = valid;
  v4 = +[EMMailDropMetadata mailDropMetadata];
  [EMMailDropParser parseURL:validCopy intoMetadata:v4];
  isInvalid = [v4 isInvalid];

  return isInvalid ^ 1;
}

+ (id)_parseURLQuery:(id)query
{
  v21 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  query = [queryCopy query];
  [query componentsSeparatedByString:@"&"];
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
            lastObject = [v9 lastObject];
            stringByRemovingPercentEncoding = [lastObject stringByRemovingPercentEncoding];

            firstObject = [v9 firstObject];
            [dictionary setValue:stringByRemovingPercentEncoding forKey:firstObject];
          }

          else
          {
            stringByRemovingPercentEncoding = [v9 firstObject];
            [dictionary setValue:0 forKey:stringByRemovingPercentEncoding];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

+ (BOOL)_domainIsAllowed:(id)allowed
{
  v19 = *MEMORY[0x1E69E9840];
  allowedCopy = allowed;
  scheme = [allowedCopy scheme];
  LODWORD(v6) = [scheme isEqualToString:@"https"];

  if (v6)
  {
    host = [allowedCopy host];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__EMMailDropParser__domainIsAllowed___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
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

          if ([host hasSuffix:{*(*(&v13 + 1) + 8 * i), v13}])
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

+ (void)_parseWrappedURL:(id)l intoMetadata:(id)metadata
{
  lCopy = l;
  metadataCopy = metadata;
  [metadataCopy setWrappedUrl:lCopy];
  v7 = [self _parseURLQuery:lCopy];
  if ([v7 count] && (objc_msgSend(v7, "objectForKeyedSubscript:", @"u"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "mutableCopy"), v8, v9))
  {
    v10 = [v7 objectForKeyedSubscript:@"f"];
    if (v10)
    {
      ef_defaultAllowedCharacterSet = [MEMORY[0x1E695DFF8] ef_defaultAllowedCharacterSet];
      v12 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:ef_defaultAllowedCharacterSet];

      [v9 replaceOccurrencesOfString:@"${f}" withString:v12 options:0 range:{0, objc_msgSend(v9, "length")}];
      ef_sanitizedFileName = [v10 ef_sanitizedFileName];
      [metadataCopy setFileName:ef_sanitizedFileName];
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
    [metadataCopy setFileSize:{objc_msgSend(v18, "integerValue")}];

    if (v17)
    {
      [self _parseDirectURL:v17 intoMetadata:metadataCopy];
    }
  }

  else
  {
    v17 = 0;
  }
}

+ (void)_parseDirectURL:(id)l intoMetadata:(id)metadata
{
  lCopy = l;
  metadataCopy = metadata;
  if ([self _domainIsAllowed:lCopy])
  {
    [metadataCopy setDirectUrl:lCopy];
    lastPathComponent = [lCopy lastPathComponent];
    ef_sanitizedFileName = [lastPathComponent ef_sanitizedFileName];
    [metadataCopy setFileName:ef_sanitizedFileName];

    v9 = [self _parseURLQuery:lCopy];
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
        v13 = [self parseExpiration:v12];
      }

      [metadataCopy setExpiration:v13];
      if (v12 != 0.0)
      {
      }

      v14 = [v9 objectForKeyedSubscript:@"r"];
      uppercaseString = [v14 uppercaseString];
      [metadataCopy setUUID:uppercaseString];
    }
  }

  else
  {
    [metadataCopy setIsInvalid:1];
  }
}

@end