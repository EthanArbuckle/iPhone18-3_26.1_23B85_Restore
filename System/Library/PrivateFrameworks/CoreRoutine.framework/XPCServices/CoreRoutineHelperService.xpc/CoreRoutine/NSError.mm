@interface NSError
+ (id)rt_errorWithCode:(int64_t)code description:(id)description;
- (BOOL)hasAOIInferenceError;
- (BOOL)hasStorageFullError;
- (BOOL)isBluePOITileNotAvailableError;
- (BOOL)isOnlyThrottlingError;
- (BOOL)isOnlyTimeoutError;
- (id)_detailedErrors;
- (id)_underlyingErrorsRTMultiError;
- (id)flattenErrors;
@end

@implementation NSError

+ (id)rt_errorWithCode:(int64_t)code description:(id)description
{
  v5 = RTErrorDomain;
  v10 = NSLocalizedDescriptionKey;
  descriptionCopy = description;
  descriptionCopy2 = description;
  v7 = [NSDictionary dictionaryWithObjects:&descriptionCopy forKeys:&v10 count:1];
  v8 = [NSError errorWithDomain:v5 code:code userInfo:v7];

  return v8;
}

- (BOOL)isOnlyThrottlingError
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  flattenErrors = [(NSError *)self flattenErrors];
  v3 = [flattenErrors countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v3)
  {
    v14 = 1;
    goto LABEL_19;
  }

  v4 = v3;
  v5 = *v17;
  v6 = GEOErrorHttpStatusCodeKey;
  while (2)
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v17 != v5)
      {
        objc_enumerationMutation(flattenErrors);
      }

      v8 = *(*(&v16 + 1) + 8 * i);
      domain = [v8 domain];
      v10 = GEOErrorDomain();
      if (([domain isEqualToString:v10] & 1) == 0)
      {

LABEL_18:
        v14 = 0;
        goto LABEL_19;
      }

      if ([v8 code] == -7)
      {
        userInfo = [v8 userInfo];
        v12 = [userInfo objectForKeyedSubscript:v6];
        if ([v12 integerValue] == 429)
        {

          continue;
        }

        code = [v8 code];
      }

      else
      {
        code = [v8 code];
      }

      if (code != -3)
      {
        goto LABEL_18;
      }
    }

    v4 = [flattenErrors countByEnumeratingWithState:&v16 objects:v20 count:16];
    v14 = 1;
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_19:

  return v14;
}

- (BOOL)isOnlyTimeoutError
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  flattenErrors = [(NSError *)self flattenErrors];
  v3 = [flattenErrors countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = RTErrorDomain;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(flattenErrors);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        domain = [v8 domain];
        if (![domain isEqualToString:v6])
        {

LABEL_13:
          v11 = 0;
          goto LABEL_14;
        }

        code = [v8 code];

        if (code != 15)
        {
          goto LABEL_13;
        }
      }

      v4 = [flattenErrors countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 1;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_14:

  return v11;
}

- (BOOL)isBluePOITileNotAvailableError
{
  userInfo = [(NSError *)self userInfo];
  v4 = [userInfo objectForKey:@"HTTPStatus"];
  if (v4)
  {
    userInfo2 = [(NSError *)self userInfo];
    v6 = [userInfo2 objectForKey:@"HTTPStatus"];
    v7 = [v6 isEqual:&off_1000AB760];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasAOIInferenceError
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  flattenErrors = [(NSError *)self flattenErrors];
  v3 = [flattenErrors countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(flattenErrors);
        }

        if ([*(*(&v7 + 1) + 8 * i) code] == 111)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [flattenErrors countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)hasStorageFullError
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  flattenErrors = [(NSError *)self flattenErrors];
  v3 = [flattenErrors countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(flattenErrors);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        domain = [v7 domain];
        if ([domain isEqualToString:@"NSPOSIXErrorDomain"])
        {
          code = [v7 code];

          if (code == 28)
          {
            v10 = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v4 = [flattenErrors countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (id)_underlyingErrorsRTMultiError
{
  domain = [(NSError *)self domain];
  if ([domain isEqualToString:RTErrorDomain] && -[NSError code](self, "code") == 9)
  {
    userInfo = [(NSError *)self userInfo];
    v5 = RTDetailedErrorsKey;
    v6 = [userInfo objectForKeyedSubscript:RTDetailedErrorsKey];

    if (v6)
    {
      userInfo2 = [(NSError *)self userInfo];
      v8 = [userInfo2 objectForKeyedSubscript:v5];

      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = +[NSArray array];
LABEL_7:

  return v8;
}

- (id)_detailedErrors
{
  v3 = +[NSMutableArray array];
  _underlyingErrorsRTMultiError = [(NSError *)self _underlyingErrorsRTMultiError];
  [v3 addObjectsFromArray:_underlyingErrorsRTMultiError];

  underlyingErrors = [(NSError *)self underlyingErrors];
  [v3 addObjectsFromArray:underlyingErrors];

  return v3;
}

- (id)flattenErrors
{
  v3 = +[NSMutableArray array];
  _detailedErrors = [(NSError *)self _detailedErrors];
  if ([_detailedErrors count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = _detailedErrors;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          flattenErrors = [*(*(&v12 + 1) + 8 * i) flattenErrors];
          [v3 addObjectsFromArray:flattenErrors];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [v3 addObject:self];
  }

  return v3;
}

@end