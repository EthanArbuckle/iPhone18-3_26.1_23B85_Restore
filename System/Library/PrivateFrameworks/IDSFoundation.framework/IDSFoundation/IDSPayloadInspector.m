@interface IDSPayloadInspector
+ (int64_t)validateData:(id)a3 messageGuid:(id)a4;
+ (int64_t)validateString:(id)a3 messageGuid:(id)a4;
+ (void)enforceSecurityError:(int64_t)a3 messageGuid:(id)a4;
+ (void)inspectPayload:(id)a3 messageGuid:(id)a4;
@end

@implementation IDSPayloadInspector

+ (void)inspectPayload:(id)a3 messageGuid:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (!v12)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a1 validateData:v12 messageGuid:v6];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v7 = [a1 validateString:v12 messageGuid:v6];
  }

  [a1 enforceSecurityError:v7 messageGuid:v6];
LABEL_7:
  if (objc_opt_respondsToSelector())
  {
    v8 = [v12 objectEnumerator];
    v9 = [v8 nextObject];
    if (v9)
    {
      v10 = v9;
      do
      {
        [a1 inspectPayload:v10 messageGuid:v6];
        v11 = [v8 nextObject];

        v10 = v11;
      }

      while (v11);
    }
  }

LABEL_12:
}

+ (void)enforceSecurityError:(int64_t)a3 messageGuid:(id)a4
{
  v5 = a4;
  v6 = +[IDSServerBag sharedInstance];
  v7 = [v6 objectForKey:@"ids-payload-inspector-enable-fault"];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 BOOLValue];
      if (a3 == 1)
      {
        if (v8)
        {
          v9 = [MEMORY[0x1E69A60E0] security];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            sub_1A7E20574(v5, v9);
          }
        }
      }
    }
  }
}

+ (int64_t)validateData:(id)a3 messageGuid:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v19 = 0xAAAAAAAAAAAAAAAALL;
    v8 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:&v19 error:0];
    if (!v8)
    {
      goto LABEL_11;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = [MEMORY[0x1E69A60E0] security];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "%@ : Found a pList.", buf, 0xCu);
    }

    v10 = [v8 objectForKey:@"$archiver"];
    if (v10 && (v11 = v10, [v8 objectForKey:@"$objects"], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
    {
      getpid();
      v13 = CUTProcessNameForPid();
      v14 = [MEMORY[0x1E69A60E0] security];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v8 objectForKey:@"$archiver"];
        *buf = 138412802;
        v21 = v7;
        v22 = 2112;
        v23 = v15;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "Found a serialized pList in message %@ with archiver %@ in process %@", buf, 0x20u);
      }

      v16 = 1;
    }

    else
    {
LABEL_11:
      v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:0];
      if (v13)
      {
        v17 = [MEMORY[0x1E69A60E0] security];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v21 = v7;
          _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "%@ : Found a Json object in NSData object. Proceeding to inspect further.", buf, 0xCu);
        }

        [a1 inspectPayload:v13 messageGuid:v7];
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

+ (int64_t)validateString:(id)a3 messageGuid:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:1];
    if (!v8 || (v9 = [a1 validateData:v8 messageGuid:v7], v9 == -1))
    {
      v12 = MEMORY[0x1E696ACB0];
      v13 = [v6 dataUsingEncoding:4];
      v11 = [v12 JSONObjectWithData:v13 options:0 error:0];

      if (v11)
      {
        v14 = [MEMORY[0x1E69A60E0] security];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138412290;
          v17 = v7;
          _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "%@ : Found a Json string. Proceeding to inspect further.", &v16, 0xCu);
        }

        [a1 inspectPayload:v11 messageGuid:v7];
      }

      v10 = -1;
    }

    else
    {
      v10 = v9;
      v11 = [MEMORY[0x1E69A60E0] security];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = v7;
        v18 = 2048;
        v19 = v10;
        _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "%@ : Found error code %ld in base64 encoded data string. Proceeding to inspect further.", &v16, 0x16u);
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