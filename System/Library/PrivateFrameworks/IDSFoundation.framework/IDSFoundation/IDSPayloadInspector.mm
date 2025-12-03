@interface IDSPayloadInspector
+ (int64_t)validateData:(id)data messageGuid:(id)guid;
+ (int64_t)validateString:(id)string messageGuid:(id)guid;
+ (void)enforceSecurityError:(int64_t)error messageGuid:(id)guid;
+ (void)inspectPayload:(id)payload messageGuid:(id)guid;
@end

@implementation IDSPayloadInspector

+ (void)inspectPayload:(id)payload messageGuid:(id)guid
{
  payloadCopy = payload;
  guidCopy = guid;
  if (!payloadCopy)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [self validateData:payloadCopy messageGuid:guidCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v7 = [self validateString:payloadCopy messageGuid:guidCopy];
  }

  [self enforceSecurityError:v7 messageGuid:guidCopy];
LABEL_7:
  if (objc_opt_respondsToSelector())
  {
    objectEnumerator = [payloadCopy objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      v10 = nextObject;
      do
      {
        [self inspectPayload:v10 messageGuid:guidCopy];
        nextObject2 = [objectEnumerator nextObject];

        v10 = nextObject2;
      }

      while (nextObject2);
    }
  }

LABEL_12:
}

+ (void)enforceSecurityError:(int64_t)error messageGuid:(id)guid
{
  guidCopy = guid;
  v6 = +[IDSServerBag sharedInstance];
  v7 = [v6 objectForKey:@"ids-payload-inspector-enable-fault"];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v7 BOOLValue];
      if (error == 1)
      {
        if (bOOLValue)
        {
          security = [MEMORY[0x1E69A60E0] security];
          if (os_log_type_enabled(security, OS_LOG_TYPE_FAULT))
          {
            sub_1A7E20574(guidCopy, security);
          }
        }
      }
    }
  }
}

+ (int64_t)validateData:(id)data messageGuid:(id)guid
{
  v26 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  guidCopy = guid;
  if (dataCopy)
  {
    v19 = 0xAAAAAAAAAAAAAAAALL;
    v8 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:&v19 error:0];
    if (!v8)
    {
      goto LABEL_11;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    security = [MEMORY[0x1E69A60E0] security];
    if (os_log_type_enabled(security, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = guidCopy;
      _os_log_impl(&dword_1A7AD9000, security, OS_LOG_TYPE_DEFAULT, "%@ : Found a pList.", buf, 0xCu);
    }

    v10 = [v8 objectForKey:@"$archiver"];
    if (v10 && (v11 = v10, [v8 objectForKey:@"$objects"], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
    {
      getpid();
      v13 = CUTProcessNameForPid();
      security2 = [MEMORY[0x1E69A60E0] security];
      if (os_log_type_enabled(security2, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v8 objectForKey:@"$archiver"];
        *buf = 138412802;
        v21 = guidCopy;
        v22 = 2112;
        v23 = v15;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&dword_1A7AD9000, security2, OS_LOG_TYPE_DEFAULT, "Found a serialized pList in message %@ with archiver %@ in process %@", buf, 0x20u);
      }

      v16 = 1;
    }

    else
    {
LABEL_11:
      v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:0];
      if (v13)
      {
        security3 = [MEMORY[0x1E69A60E0] security];
        if (os_log_type_enabled(security3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v21 = guidCopy;
          _os_log_impl(&dword_1A7AD9000, security3, OS_LOG_TYPE_DEFAULT, "%@ : Found a Json object in NSData object. Proceeding to inspect further.", buf, 0xCu);
        }

        [self inspectPayload:v13 messageGuid:guidCopy];
      }

      v16 = -1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (int64_t)validateString:(id)string messageGuid:(id)guid
{
  v20 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  guidCopy = guid;
  if (stringCopy)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:stringCopy options:1];
    if (!v8 || (v9 = [self validateData:v8 messageGuid:guidCopy], v9 == -1))
    {
      v12 = MEMORY[0x1E696ACB0];
      v13 = [stringCopy dataUsingEncoding:4];
      security2 = [v12 JSONObjectWithData:v13 options:0 error:0];

      if (security2)
      {
        security = [MEMORY[0x1E69A60E0] security];
        if (os_log_type_enabled(security, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138412290;
          v17 = guidCopy;
          _os_log_impl(&dword_1A7AD9000, security, OS_LOG_TYPE_DEFAULT, "%@ : Found a Json string. Proceeding to inspect further.", &v16, 0xCu);
        }

        [self inspectPayload:security2 messageGuid:guidCopy];
      }

      v10 = -1;
    }

    else
    {
      v10 = v9;
      security2 = [MEMORY[0x1E69A60E0] security];
      if (os_log_type_enabled(security2, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = guidCopy;
        v18 = 2048;
        v19 = v10;
        _os_log_impl(&dword_1A7AD9000, security2, OS_LOG_TYPE_DEFAULT, "%@ : Found error code %ld in base64 encoded data string. Proceeding to inspect further.", &v16, 0x16u);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end