@interface CRBootIntentController
+ (BOOL)clearBootIntentWithError:(id *)error;
+ (BOOL)setBootIntentWithLocale:(id)locale error:(id *)error;
+ (id)getSsrBootIntentWithError:(id *)error;
@end

@implementation CRBootIntentController

+ (id)getSsrBootIntentWithError:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v4 = [CRNVRAMController readNVRAMValueForKey:@"diagnostic-boot-intent" error:&v21];
  v5 = v21;
  v6 = handleForCategory(0);
  v7 = v6;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[CRBootIntentController getSsrBootIntentWithError:];
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_1CEDC5000, v7, OS_LOG_TYPE_DEFAULT, "readNVRAMValueForKey value: %@", buf, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = 0;
    v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v20];
    v5 = v20;
    if (v11)
    {
      v12 = [v11 objectForKeyedSubscript:@"purpose"];
      if (v12)
      {
        v9 = v12;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v9 isEqual:@"self-service-repair"])
          {
            v13 = objc_opt_new();
            [v13 setObject:v9 forKeyedSubscript:@"purpose"];
            v14 = [v11 objectForKeyedSubscript:@"wifi-credentials"];

            if (!v14)
            {
              v10 = 0;
              v4 = 0;
              if (!error)
              {
                goto LABEL_35;
              }

              goto LABEL_33;
            }

            v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v14 options:0];
            v10 = [CRWiFiCredentials decryptWiFiCredDictFromCredentialsData:v7];
            if (v10)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v13 addEntriesFromDictionary:v10];
              }
            }

            v4 = v14;
LABEL_32:

            if (!error)
            {
              goto LABEL_35;
            }

LABEL_33:
            if (v5)
            {
              v16 = v5;
              *error = v5;
            }

            goto LABEL_35;
          }

          v7 = handleForCategory(0);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            +[CRBootIntentController getSsrBootIntentWithError:];
          }
        }

        else
        {
          v7 = handleForCategory(0);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            +[CRBootIntentController getSsrBootIntentWithError:];
          }
        }
      }

      else
      {
        v7 = handleForCategory(0);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          +[CRBootIntentController getSsrBootIntentWithError:];
        }

        v9 = 0;
      }

      v10 = 0;
LABEL_31:
      v13 = 0;
      goto LABEL_32;
    }

    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRBootIntentController getSsrBootIntentWithError:];
    }

LABEL_7:
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_31;
  }

  v15 = handleForCategory(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    +[CRBootIntentController getSsrBootIntentWithError:];
  }

  v13 = 0;
  v5 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
LABEL_35:
  v17 = [v13 copy];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (BOOL)setBootIntentWithLocale:(id)locale error:(id *)error
{
  v5 = MEMORY[0x1E695DF90];
  localeCopy = locale;
  v7 = [v5 dictionaryWithDictionary:&unk_1F4BCD850];
  v8 = handleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEDC5000, v8, OS_LOG_TYPE_DEFAULT, "Set boot intent and boot command", buf, 2u);
  }

  v9 = [CRWiFiCredentials createEncryptedCredentialsDataWithLocale:localeCopy];

  if (v9)
  {
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEDC5000, v10, OS_LOG_TYPE_DEFAULT, "Add encrypted WiFi credentials and locale", buf, 2u);
    }

    v11 = [v9 base64EncodedStringWithOptions:0];
    [v7 setObject:v11 forKeyedSubscript:@"wifi-credentials"];
  }

  if (![MEMORY[0x1E696ACB0] isValidJSONObject:v7])
  {
    v13 = 0;
    goto LABEL_17;
  }

  v25 = 0;
  v12 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v7 options:0 error:&v25];
  v13 = v25;
  if (!v12)
  {
    v19 = handleForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[CRBootIntentController setBootIntentWithLocale:error:];
    }

    goto LABEL_17;
  }

  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v12 encoding:4];

  if (!v14)
  {
LABEL_17:
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[CRBootIntentController setBootIntentWithLocale:error:];
    }

    v14 = 0;
    goto LABEL_20;
  }

  v24 = v13;
  v15 = [CRNVRAMController setNVRAMValueForKey:@"diagnostic-boot-intent" value:v14 error:&v24];
  v16 = v24;

  if (v15)
  {
    v23 = v16;
    v17 = [CRNVRAMController setNVRAMValueForKey:@"one-time-boot-command" value:@"checkerboard" error:&v23];
    v13 = v23;

    if (v17)
    {
      v18 = 1;
      goto LABEL_21;
    }

    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[CRBootIntentController setBootIntentWithLocale:error:];
    }
  }

  else
  {
    v20 = handleForCategory(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[CRBootIntentController setBootIntentWithLocale:error:];
    }

    v13 = v16;
  }

LABEL_20:

  v18 = 0;
LABEL_21:
  if (error)
  {
    v21 = v13;
    *error = v13;
  }

  return v18;
}

+ (BOOL)clearBootIntentWithError:(id *)error
{
  v13 = 0;
  v4 = [CRNVRAMController deleteNVRAMValueForKey:@"diagnostic-boot-intent" error:&v13];
  v5 = v13;
  if (v4)
  {
    v12 = v5;
    v6 = [CRNVRAMController deleteNVRAMValueForKey:@"one-time-boot-command" error:&v12];
    v7 = v12;

    if (v6)
    {
      v8 = 1;
      if (!error)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v9 = handleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRBootIntentController clearBootIntentWithError:];
    }

    v5 = v7;
  }

  else
  {
    v9 = handleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[CRBootIntentController clearBootIntentWithError:];
    }
  }

  v8 = 0;
  v7 = v5;
  if (error)
  {
LABEL_11:
    v10 = v7;
    *error = v7;
  }

LABEL_12:

  return v8;
}

@end