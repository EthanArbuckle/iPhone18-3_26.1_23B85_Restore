@interface FMDSharedConfiguration
+ (FMDSharedConfiguration)sharedInstance;
+ (id)localizedStringWithKey:(id)a3;
- (BOOL)clearFindMySignOutTimeFile;
- (BOOL)writeFindMySignOutTimeToFile;
- (NSString)localeString;
- (id)_createAwarenessStringsDictionaryWithData:(id)a3 key:(id)a4 deviceClasses:(id)a5;
- (id)_createFollowUpStringsDictionaryWithData:(id)a3 key:(id)a4 deviceClasses:(id)a5;
- (id)contentsWithLocale:(id)a3;
- (id)defaultEntryForConfiguration:(id)a3 deviceClasses:(id)a4;
- (id)entryForConfiguration:(id)a3 deviceClasses:(id)a4;
- (id)entryForConfiguration:(id)a3 deviceClasses:(id)a4 locale:(id)a5;
- (id)expiryDateWithContents:(id)a3;
- (id)fileURLWithLocale:(id)a3;
- (id)readFindMySignOutTimeFromFile;
- (id)sharedConfigurationDictionaryFromData:(id)a3 key:(id)a4 deviceClasses:(id)a5;
- (id)signOutTimestampFileURL;
- (void)clearFindMySignOutTimeFile;
- (void)clearTheftAndLossCFUWithReply:(id)a3;
- (void)downloadWithLocale:(id)a3 reply:(id)a4;
- (void)downloadWithReply:(id)a3;
- (void)forceDownloadWithLocale:(id)a3 reply:(id)a4;
- (void)forceDownloadWithReply:(id)a3;
- (void)getTheftAndLossCoverageWithSerialNumber:(id)a3 reply:(id)a4;
- (void)localeString;
- (void)postTheftAndLossCFUWithEntry:(id)a3 reply:(id)a4;
- (void)writeFindMySignOutTimeToFile;
@end

@implementation FMDSharedConfiguration

+ (FMDSharedConfiguration)sharedInstance
{
  if (sharedInstance_dispatch_predicate != -1)
  {
    +[FMDSharedConfiguration sharedInstance];
  }

  v3 = sharedInstance__instance_0;

  return v3;
}

uint64_t __40__FMDSharedConfiguration_sharedInstance__block_invoke()
{
  sharedInstance__instance_0 = objc_alloc_init(FMDSharedConfiguration);

  return MEMORY[0x1EEE66BB8]();
}

- (NSString)localeString
{
  v2 = [MEMORY[0x1E695DF58] preferredLanguages];
  if ([v2 count])
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [MEMORY[0x1E695DF58] minimizedLanguagesFromLanguages:v2];
      v4 = [v3 componentsJoinedByString:{@", "}];

      goto LABEL_9;
    }

    v5 = LogCategory_Unspecified();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration localeString];
    }
  }

  else
  {
    v5 = LogCategory_Unspecified();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration localeString];
    }
  }

  v4 = @"en-US";
LABEL_9:

  return v4;
}

- (id)fileURLWithLocale:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.icloud.findmydevice.shared-configuration"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 URLByAppendingPathComponent:@"Library" isDirectory:1];
    v8 = [v7 URLByAppendingPathComponent:@"Application Support" isDirectory:1];

    v9 = [v8 path];
    v10 = [v4 fileExistsAtPath:v9];

    if (v10 & 1) != 0 || ([v4 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:0])
    {
      v11 = [v3 stringByReplacingOccurrencesOfString:@" withString:{", @"~"}];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", v11];
      v13 = [v8 URLByAppendingPathComponent:v12 isDirectory:0];

      goto LABEL_11;
    }

    v14 = LogCategory_Unspecified();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration fileURLWithLocale:];
    }
  }

  else
  {
    v8 = LogCategory_Unspecified();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration fileURLWithLocale:];
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)_createAwarenessStringsDictionaryWithData:(id)a3 key:(id)a4 deviceClasses:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v46 = 0;
  v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v46];
  v10 = v46;
  if (!v9)
  {
    v11 = LogCategory_Unspecified();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration _createAwarenessStringsDictionaryWithData:key:deviceClasses:];
    }

    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = LogCategory_Unspecified();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration _createAwarenessStringsDictionaryWithData:key:deviceClasses:];
    }

LABEL_25:
    v24 = 0;
    goto LABEL_34;
  }

  v11 = [v9 objectForKeyedSubscript:v7];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = LogCategory_Unspecified();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration _createAwarenessStringsDictionaryWithData:key:deviceClasses:];
    }

    v24 = 0;
    goto LABEL_33;
  }

  v12 = [v11 objectForKeyedSubscript:@"awarenessStrings"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = LogCategory_Unspecified();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration _createAwarenessStringsDictionaryWithData:key:deviceClasses:];
    }

    v24 = 0;
    goto LABEL_32;
  }

  v42 = v11;
  v43 = v7;
  v44 = v10;
  if (![v12 count])
  {
LABEL_17:
    v16 = LogCategory_Unspecified();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v12 count];
      *buf = 134217984;
      v48 = v23;
      _os_log_impl(&dword_1DF650000, v16, OS_LOG_TYPE_DEFAULT, "No match found among %lu entries", buf, 0xCu);
    }

    v24 = 0;
    v7 = v43;
    v10 = v44;
    goto LABEL_20;
  }

  v13 = 0;
  v14 = @"category";
  v15 = 0x1E696A000uLL;
  while (1)
  {
    v16 = [v12 objectAtIndexedSubscript:v13];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = LogCategory_Unspecified();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v48 = v13;
        _os_log_impl(&dword_1DF650000, v17, OS_LOG_TYPE_DEFAULT, "Entry at index %lu is not a dictionary", buf, 0xCu);
      }

      goto LABEL_16;
    }

    v17 = [v16 objectForKeyedSubscript:v14];
    v18 = *(v15 + 3776);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = v8;
      v20 = v14;
      v21 = v15;
      v22 = LogCategory_Unspecified();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v48 = v13;
        _os_log_impl(&dword_1DF650000, v22, OS_LOG_TYPE_DEFAULT, "Entry at index %lu doesn't have a category", buf, 0xCu);
      }

      v15 = v21;
      v14 = v20;
      v8 = v19;
      goto LABEL_16;
    }

    if ([v17 isEqualToString:v8])
    {
      break;
    }

LABEL_16:

    if (++v13 >= [v12 count])
    {
      goto LABEL_17;
    }
  }

  v27 = [v16 objectForKeyedSubscript:@"awarenessEnabled"];
  v28 = v27;
  if (!v27)
  {
    v38 = LogCategory_Unspecified();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration _createAwarenessStringsDictionaryWithData:key:deviceClasses:];
    }

    goto LABEL_50;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v38 = LogCategory_Unspecified();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration _createAwarenessStringsDictionaryWithData:key:deviceClasses:];
    }

LABEL_50:
    v24 = 0;
    v7 = v43;
    goto LABEL_64;
  }

  v29 = [v16 objectForKeyedSubscript:@"message"];
  if (!v29)
  {
    v38 = 0;
    v45 = LogCategory_Unspecified();
    v7 = v43;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration _createAwarenessStringsDictionaryWithData:key:deviceClasses:];
    }

    v24 = 0;
    goto LABEL_63;
  }

  v30 = *(v15 + 3776);
  objc_opt_class();
  v41 = v29;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v45 = LogCategory_Unspecified();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v38 = v29;
      [FMDSharedConfiguration _createAwarenessStringsDictionaryWithData:key:deviceClasses:];
      v24 = 0;
      v7 = v43;
    }

    else
    {
      v24 = 0;
      v7 = v43;
      v38 = v41;
    }

    goto LABEL_63;
  }

  v31 = [v16 objectForKeyedSubscript:@"title"];
  v45 = v31;
  if (!v31)
  {
    v34 = LogCategory_Unspecified();
    v7 = v43;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration _createAwarenessStringsDictionaryWithData:key:deviceClasses:];
    }

    goto LABEL_60;
  }

  v32 = v31;
  v33 = *(v15 + 3776);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = LogCategory_Unspecified();
    v7 = v43;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration _createAwarenessStringsDictionaryWithData:key:deviceClasses:];
    }

LABEL_60:
    v24 = 0;
    goto LABEL_61;
  }

  v34 = [v16 objectForKeyedSubscript:@"disclaimerLabel"];
  v35 = v32;
  if (!v34 || (v36 = *(v15 + 3776), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v35 = v34, (isKindOfClass & 1) != 0))
  {
    v40 = v35;
    v24 = objc_alloc_init(FMDSharedConfigurationEntry);
    -[FMDSharedConfigurationEntry setEnabled:](v24, "setEnabled:", [v28 BOOLValue]);
    v38 = v41;
    [(FMDSharedConfigurationEntry *)v24 setMessage:v41];
    [(FMDSharedConfigurationEntry *)v24 setTitle:v32];
    [(FMDSharedConfigurationEntry *)v24 setDisclaimer:v40];
    v7 = v43;
    goto LABEL_62;
  }

  v39 = LogCategory_Unspecified();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    [FMDSharedConfiguration _createAwarenessStringsDictionaryWithData:key:deviceClasses:];
  }

  v24 = 0;
  v7 = v43;
LABEL_61:
  v38 = v41;
LABEL_62:

LABEL_63:
LABEL_64:

  v10 = v44;
LABEL_20:
  v11 = v42;
LABEL_32:

LABEL_33:
LABEL_34:

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)_createFollowUpStringsDictionaryWithData:(id)a3 key:(id)a4 deviceClasses:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v51 = 0;
  v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v51];
  v11 = v51;
  if (!v10)
  {
    v13 = LogCategory_Unspecified();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration _createAwarenessStringsDictionaryWithData:key:deviceClasses:];
    }

    goto LABEL_75;
  }

  v12 = 0x1E695D000uLL;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = LogCategory_Unspecified();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration _createAwarenessStringsDictionaryWithData:key:deviceClasses:];
    }

LABEL_75:
    v5 = 0;
    goto LABEL_86;
  }

  v13 = [v10 objectForKeyedSubscript:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 objectForKeyedSubscript:@"followUpStrings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v8;
      v50 = v11;
      if ([v14 count])
      {
        v15 = 0;
        while (1)
        {
          v16 = [v14 objectAtIndexedSubscript:v15];
          v17 = *(v12 + 3872);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v18 = LogCategory_Unspecified();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v53 = v15;
              _os_log_impl(&dword_1DF650000, v18, OS_LOG_TYPE_DEFAULT, "Entry at index %lu is not a dictionary", buf, 0xCu);
            }

            goto LABEL_52;
          }

          v18 = [v16 objectForKeyedSubscript:@"category"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v23 = LogCategory_Unspecified();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v53 = v15;
              _os_log_impl(&dword_1DF650000, v23, OS_LOG_TYPE_DEFAULT, "Entry at index %lu doesn't have a category", buf, 0xCu);
            }

            goto LABEL_52;
          }

          if (![v18 isEqualToString:v9])
          {
            goto LABEL_52;
          }

          v19 = [v16 objectForKeyedSubscript:@"informativeText"];
          if (!v19)
          {
            v24 = 0;
            v25 = LogCategory_Unspecified();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v53 = v15;
              v26 = v25;
              v27 = "Entry found at %lu, but it doesn't contain informative text";
              v28 = 12;
              goto LABEL_43;
            }

LABEL_31:

            goto LABEL_52;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v24 = v19;
            v25 = LogCategory_Unspecified();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              v53 = v15;
              v54 = 2112;
              v55 = v24;
              v26 = v25;
              v27 = "Entry found at %lu, but message is not a string: %@";
              v28 = 22;
LABEL_43:
              _os_log_error_impl(&dword_1DF650000, v26, OS_LOG_TYPE_ERROR, v27, buf, v28);
            }

            goto LABEL_31;
          }

          v20 = [v16 objectForKeyedSubscript:@"reminderInMins"];
          v48 = v19;
          if (!v20)
          {
            v29 = LogCategory_Unspecified();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v53 = v15;
              v30 = v29;
              v31 = "Entry found at %lu, but doesn't contain a remainder in mins";
              v32 = 12;
              goto LABEL_56;
            }

LABEL_35:

            goto LABEL_51;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v29 = LogCategory_Unspecified();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              v53 = v15;
              v54 = 2112;
              v55 = v20;
              v30 = v29;
              v31 = "Entry found at %lu, but remainder in mins isn't a number: %@";
              v32 = 22;
LABEL_56:
              _os_log_error_impl(&dword_1DF650000, v30, OS_LOG_TYPE_ERROR, v31, buf, v32);
            }

            goto LABEL_35;
          }

          v46 = v20;
          v47 = [v16 objectForKeyedSubscript:@"id"];
          if (!v47)
          {
            v33 = LogCategory_Unspecified();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v53 = v15;
              _os_log_error_impl(&dword_1DF650000, v33, OS_LOG_TYPE_ERROR, "Entry found at %lu, but doesn't contain an id", buf, 0xCu);
            }

LABEL_41:

            goto LABEL_50;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v33 = LogCategory_Unspecified();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              v53 = v15;
              v54 = 2112;
              v55 = v47;
              _os_log_error_impl(&dword_1DF650000, v33, OS_LOG_TYPE_ERROR, "Entry found at %lu, but id isn't a number: %@", buf, 0x16u);
            }

            goto LABEL_41;
          }

          v45 = [v16 objectForKeyedSubscript:@"message"];
          if (!v45)
          {
            v34 = LogCategory_Unspecified();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v53 = v15;
              _os_log_error_impl(&dword_1DF650000, v34, OS_LOG_TYPE_ERROR, "Entry found at %lu, but it doesn't contain message", buf, 0xCu);
            }

LABEL_49:

LABEL_50:
LABEL_51:

LABEL_52:
            goto LABEL_53;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v34 = LogCategory_Unspecified();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              v53 = v15;
              v54 = 2112;
              v55 = v48;
              _os_log_error_impl(&dword_1DF650000, v34, OS_LOG_TYPE_ERROR, "Entry found at %lu, but message is not a string: %@", buf, 0x16u);
            }

            goto LABEL_49;
          }

          v44 = [v16 objectForKeyedSubscript:@"category"];
          if (!v44)
          {
            break;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [v16 objectForKeyedSubscript:@"title"];
            if (v21)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v5 = objc_alloc_init(FMDSharedConfigurationFollowUpEntry);
                [(FMDSharedConfigurationFollowUpEntry *)v5 setInformativeText:v19];
                v22 = v46;
                [(FMDSharedConfigurationFollowUpEntry *)v5 setReminderInMins:v46];
                [(FMDSharedConfigurationFollowUpEntry *)v5 setIdNumber:v47];
                [(FMDSharedConfigurationFollowUpEntry *)v5 setMessage:v45];
                [(FMDSharedConfigurationFollowUpEntry *)v5 setCategory:v44];
                [(FMDSharedConfigurationFollowUpEntry *)v5 setTitle:v21];
                v43 = 0;
                goto LABEL_67;
              }

              v35 = LogCategory_Unspecified();
              if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
LABEL_65:

LABEL_66:
                v43 = 1;
                v22 = v46;
                goto LABEL_67;
              }

              *buf = 134218242;
              v53 = v15;
              v54 = 2112;
              v55 = v48;
              v36 = v35;
              v37 = "Entry found at %lu, but message is not a string: %@";
              v38 = 22;
            }

            else
            {
              v35 = LogCategory_Unspecified();
              if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_65;
              }

              *buf = 134217984;
              v53 = v15;
              v36 = v35;
              v37 = "Entry found at %lu, but it doesn't contain title";
              v38 = 12;
            }

            _os_log_error_impl(&dword_1DF650000, v36, OS_LOG_TYPE_ERROR, v37, buf, v38);
            goto LABEL_65;
          }

          v21 = LogCategory_Unspecified();
          v22 = v46;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            v53 = v15;
            v54 = 2112;
            v55 = v48;
            _os_log_error_impl(&dword_1DF650000, v21, OS_LOG_TYPE_ERROR, "Entry found at %lu, but message is not a string: %@", buf, 0x16u);
          }

          v43 = 1;
LABEL_67:

          if ((v43 & 1) == 0)
          {
            v8 = v49;
            v11 = v50;
            goto LABEL_85;
          }

LABEL_53:
          ++v15;
          v12 = 0x1E695D000;
          if (v15 >= [v14 count])
          {
            goto LABEL_80;
          }
        }

        v21 = LogCategory_Unspecified();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v53 = v15;
          _os_log_error_impl(&dword_1DF650000, v21, OS_LOG_TYPE_ERROR, "Entry found at %lu, but it doesn't contain category", buf, 0xCu);
        }

        goto LABEL_66;
      }

LABEL_80:
      v39 = LogCategory_Unspecified();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v14 count];
        *buf = 134217984;
        v53 = v40;
        _os_log_impl(&dword_1DF650000, v39, OS_LOG_TYPE_DEFAULT, "No match found among %lu entries", buf, 0xCu);
      }

      v8 = v49;
      v11 = v50;
    }

    else
    {
      v39 = LogCategory_Unspecified();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [FMDSharedConfiguration _createAwarenessStringsDictionaryWithData:key:deviceClasses:];
      }
    }
  }

  else
  {
    v14 = LogCategory_Unspecified();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration _createAwarenessStringsDictionaryWithData:key:deviceClasses:];
    }
  }

  v5 = 0;
LABEL_85:

LABEL_86:
  v41 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)sharedConfigurationDictionaryFromData:(id)a3 key:(id)a4 deviceClasses:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(FMDSharedConfiguration *)self _createAwarenessStringsDictionaryWithData:v10 key:v9 deviceClasses:v8];
  v12 = [(FMDSharedConfiguration *)self _createFollowUpStringsDictionaryWithData:v10 key:v9 deviceClasses:v8];

  if (v11 && v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v13 setObject:v11 forKeyedSubscript:@"awarenessStrings"];
    [v13 setObject:v12 forKeyedSubscript:@"followUpStrings"];
  }

  else
  {
    v14 = LogCategory_Unspecified();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1DF650000, v14, OS_LOG_TYPE_DEFAULT, "Failed to parse awareness strings", v16, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)contentsWithLocale:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FMDSharedConfiguration *)self fileURLWithLocale:v4];
  if (!v5)
  {
    v12 = 0;
    goto LABEL_11;
  }

  v15 = 0;
  v6 = [MEMORY[0x1E695DF20] fm_dictionaryWithContentsOfURL:v5 error:&v15];
  v7 = v15;
  if (v7)
  {
    v8 = LogCategory_Unspecified();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v4;
      v18 = 2112;
      v19 = v7;
      v9 = "Failed to read contents for %@, error: %@";
      v10 = v8;
      v11 = 22;
LABEL_5:
      _os_log_impl(&dword_1DF650000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else
  {
    if (v6)
    {
      v12 = v6;
      goto LABEL_10;
    }

    v8 = LogCategory_Unspecified();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v4;
      v9 = "No contents for %@";
      v10 = v8;
      v11 = 12;
      goto LABEL_5;
    }
  }

  v12 = 0;
LABEL_10:

LABEL_11:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)localizedStringWithKey:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedStringForKey:v4 value:&stru_1F5A998C8 table:@"Localizable-WARRANTY_DIAGNOSTICS"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)defaultEntryForConfiguration:(id)a3 deviceClasses:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_alloc_init(FMDSharedConfigurationEntry);
  v30 = self;
  v31 = v7;
  if ([v6 isEqualToString:@"theftLoss"])
  {
    v10 = [objc_opt_class() localizedStringWithKey:@"TNL_DISCLAIMER_MESSAGE_DEFAULT"];
    v11 = [objc_opt_class() localizedStringWithKey:@"TNL_DISCLAIMER_TITLE_DEFAULT"];
    v12 = [objc_opt_class() localizedStringWithKey:@"TNL_DISCLAIMER_LABEL_DEFAULT"];
    v13 = v12;
    v14 = v10 != 0;
    if (!v11)
    {
      v14 = 0;
    }

    v15 = v6;
    v16 = v8;
    if (v12)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0;
    }

    if (v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = &stru_1F5A998C8;
    }

    if (v11)
    {
      v19 = v11;
    }

    else
    {
      v19 = &stru_1F5A998C8;
    }

    v20 = v7;
    if (v10)
    {
      v21 = v10;
    }

    else
    {
      v21 = &stru_1F5A998C8;
    }

    v22 = v17 & [v20 isEqualToString:{@"iPhone", v30, v31}];
    v8 = v16;
    v6 = v15;
    [(FMDSharedConfigurationEntry *)v9 setEnabled:v22];
    [(FMDSharedConfigurationEntry *)v9 setMessage:v21];
    [(FMDSharedConfigurationEntry *)v9 setTitle:v19];
    [(FMDSharedConfigurationEntry *)v9 setDisclaimer:v18];
  }

  else
  {
    v23 = LogCategory_Unspecified();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v6;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_1DF650000, v23, OS_LOG_TYPE_DEFAULT, "No defaults for configuration %@ (%@)", buf, 0x16u);
    }

    [(FMDSharedConfigurationEntry *)v9 setEnabled:0];
  }

  v24 = objc_alloc_init(FMDSharedConfigurationFollowUpEntry);
  if ([v6 isEqualToString:@"theftLoss"])
  {
    [(FMDSharedConfigurationFollowUpEntry *)v24 setReminderInMins:&unk_1F5AA4190];
    v25 = [objc_opt_class() localizedStringWithKey:@"TNL_REMINDER_INFORMATIVE_TEXT_DEFAULT"];
    [(FMDSharedConfigurationFollowUpEntry *)v24 setInformativeText:v25];

    v26 = [objc_opt_class() localizedStringWithKey:@"TNL_REMINDER_MESSAGE_DEFAULT"];
    [(FMDSharedConfigurationFollowUpEntry *)v24 setMessage:v26];

    v27 = [objc_opt_class() localizedStringWithKey:@"TNL_REMINDER_TITLE_DEFAULT"];
    [(FMDSharedConfigurationFollowUpEntry *)v24 setTitle:v27];
  }

  [v8 setObject:v9 forKeyedSubscript:{@"awarenessStrings", v30}];
  [v8 setObject:v24 forKeyedSubscript:@"followUpStrings"];

  v28 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)entryForConfiguration:(id)a3 deviceClasses:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMDSharedConfiguration *)self localeString];
  v9 = [(FMDSharedConfiguration *)self entryForConfiguration:v6 deviceClasses:v7 locale:v8];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = [(FMDSharedConfiguration *)self defaultEntryForConfiguration:v6 deviceClasses:v7];
  }

  v11 = v10;

  return v11;
}

- (id)entryForConfiguration:(id)a3 deviceClasses:(id)a4 locale:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FMDSharedConfiguration *)self contentsWithLocale:v10];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:@"DA"];
    if (v13)
    {
      v14 = [(FMDSharedConfiguration *)self sharedConfigurationDictionaryFromData:v13 key:v8 deviceClasses:v9];
    }

    else
    {
      v15 = LogCategory_Unspecified();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v10;
        _os_log_impl(&dword_1DF650000, v15, OS_LOG_TYPE_DEFAULT, "No data for %@, returning default", &v18, 0xCu);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)expiryDateWithContents:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"LR"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 objectForKeyedSubscript:@"TTL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 doubleValue];
      v6 = [v4 dateByAddingTimeInterval:?];
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

  return v6;
}

- (void)downloadWithReply:(id)a3
{
  v4 = a3;
  v5 = [(FMDSharedConfiguration *)self localeString];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__FMDSharedConfiguration_downloadWithReply___block_invoke;
  v7[3] = &unk_1E86BD2D0;
  v8 = v4;
  v6 = v4;
  [(FMDSharedConfiguration *)self downloadWithLocale:v5 reply:v7];
}

- (void)forceDownloadWithReply:(id)a3
{
  v4 = a3;
  v5 = [(FMDSharedConfiguration *)self localeString];
  [(FMDSharedConfiguration *)self forceDownloadWithLocale:v5 reply:v4];
}

- (void)downloadWithLocale:(id)a3 reply:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(FMDSharedConfiguration *)self contentsWithLocale:v6];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [(FMDSharedConfiguration *)self expiryDateWithContents:v8];
  if (!v9 || ([MEMORY[0x1E695DF00] now], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "compare:", v10), v10, v11 == -1))
  {

LABEL_8:
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__FMDSharedConfiguration_downloadWithLocale_reply___block_invoke;
    v14[3] = &unk_1E86BD2D0;
    v15 = v7;
    [(FMDSharedConfiguration *)self forceDownloadWithReply:v14];
    v9 = v15;
    goto LABEL_9;
  }

  v12 = LogCategory_Unspecified();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_1DF650000, v12, OS_LOG_TYPE_DEFAULT, "Has existing shared configuration for '%@' and it has not yet expired (%@)", buf, 0x16u);
  }

  (*(v7 + 2))(v7, 0);
LABEL_9:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)forceDownloadWithLocale:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = [v8 resumeConnectionWithConfiguration:v7];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__FMDSharedConfiguration_forceDownloadWithLocale_reply___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v10 = v5;
  v18 = v10;
  [v9 addFailureBlock:v17];
  v11 = [v9 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__FMDSharedConfiguration_forceDownloadWithLocale_reply___block_invoke_2;
  v14[3] = &unk_1E86BD320;
  v15 = v9;
  v16 = v10;
  v12 = v9;
  v13 = v10;
  [v11 downloadSharedConfigurationWithLocale:v6 reply:v14];
}

void __56__FMDSharedConfiguration_forceDownloadWithLocale_reply___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

uint64_t __56__FMDSharedConfiguration_forceDownloadWithLocale_reply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)getTheftAndLossCoverageWithSerialNumber:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = [v8 resumeConnectionWithConfiguration:v7];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__FMDSharedConfiguration_getTheftAndLossCoverageWithSerialNumber_reply___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v10 = v5;
  v18 = v10;
  [v9 addFailureBlock:v17];
  v11 = [v9 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__FMDSharedConfiguration_getTheftAndLossCoverageWithSerialNumber_reply___block_invoke_2;
  v14[3] = &unk_1E86BD348;
  v15 = v9;
  v16 = v10;
  v12 = v9;
  v13 = v10;
  [v11 getTheftAndLossCoverageWithSerialNumber:v6 reply:v14];
}

void __72__FMDSharedConfiguration_getTheftAndLossCoverageWithSerialNumber_reply___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

uint64_t __72__FMDSharedConfiguration_getTheftAndLossCoverageWithSerialNumber_reply___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)postTheftAndLossCFUWithEntry:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v8 = +[FMNSXPCConnectionCache sharedCache];
  v9 = [v8 resumeConnectionWithConfiguration:v7];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__FMDSharedConfiguration_postTheftAndLossCFUWithEntry_reply___block_invoke;
  v17[3] = &unk_1E86BD0E0;
  v10 = v5;
  v18 = v10;
  [v9 addFailureBlock:v17];
  v11 = [v9 remoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__FMDSharedConfiguration_postTheftAndLossCFUWithEntry_reply___block_invoke_2;
  v14[3] = &unk_1E86BD3E8;
  v15 = v9;
  v16 = v10;
  v12 = v9;
  v13 = v10;
  [v11 postTheftAndLossCFUWithEntry:v6 reply:v14];
}

void __61__FMDSharedConfiguration_postTheftAndLossCFUWithEntry_reply___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __61__FMDSharedConfiguration_postTheftAndLossCFUWithEntry_reply___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = LogCategory_Unspecified();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (a2)
    {
      if (!v7)
      {
        goto LABEL_10;
      }

      LOWORD(v11) = 0;
      v9 = "Requested a CFU";
    }

    else
    {
      if (!v7)
      {
        goto LABEL_10;
      }

      LOWORD(v11) = 0;
      v9 = "No CFU requested";
    }

    _os_log_impl(&dword_1DF650000, v6, OS_LOG_TYPE_DEFAULT, v9, &v11, 2u);
    goto LABEL_10;
  }

  if (v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v11 = 138412546;
    v12 = v5;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_1DF650000, v6, OS_LOG_TYPE_DEFAULT, "Failure to request a CFU with error: %@, shouldEnable: %{public}@", &v11, 0x16u);
  }

LABEL_10:

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)clearTheftAndLossCFUWithReply:(id)a3
{
  v3 = a3;
  v4 = +[FMNSXPCConnectionConfiguration fmipConfiguration];
  v5 = +[FMNSXPCConnectionCache sharedCache];
  v6 = [v5 resumeConnectionWithConfiguration:v4];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__FMDSharedConfiguration_clearTheftAndLossCFUWithReply___block_invoke;
  v14[3] = &unk_1E86BD0E0;
  v7 = v3;
  v15 = v7;
  [v6 addFailureBlock:v14];
  v8 = [v6 remoteObjectProxy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__FMDSharedConfiguration_clearTheftAndLossCFUWithReply___block_invoke_2;
  v11[3] = &unk_1E86BD320;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v8 clearTheftAndLossCFUWithReply:v11];
}

void __56__FMDSharedConfiguration_clearTheftAndLossCFUWithReply___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:kFMDErrorDomain code:13 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

void __56__FMDSharedConfiguration_clearTheftAndLossCFUWithReply___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LogCategory_Unspecified();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v10 = 138412290;
      v11 = v3;
      v6 = "Failure to request a CFU with error: (%@)";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  else if (v5)
  {
    LOWORD(v10) = 0;
    v6 = "Cleared a CFU";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
  [*(a1 + 32) invalidate];

  v9 = *MEMORY[0x1E69E9840];
}

- (id)signOutTimestampFileURL
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.icloud.findmydevice.followup"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 URLByAppendingPathComponent:@"Library" isDirectory:1];
    v6 = [v5 URLByAppendingPathComponent:@"Application Support" isDirectory:1];

    v7 = [v6 path];
    v8 = [v2 fileExistsAtPath:v7];

    if (v8 & 1) != 0 || ([v2 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:0])
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"theftandloss.plist"];
      v10 = [v6 URLByAppendingPathComponent:v9 isDirectory:0];

      goto LABEL_11;
    }

    v11 = LogCategory_Unspecified();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration fileURLWithLocale:];
    }
  }

  else
  {
    v6 = LogCategory_Unspecified();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration fileURLWithLocale:];
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)writeFindMySignOutTimeToFile
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [(FMDSharedConfiguration *)self signOutTimestampFileURL];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v4 setObject:v3 forKeyedSubscript:@"SignOutTimestamp"];
    v16 = 0;
    [v4 writeToURL:v2 error:&v16];
    v5 = v16;
    v6 = v5 == 0;
    v7 = LogCategory_Unspecified();
    v8 = v7;
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [FMDSharedConfiguration writeFindMySignOutTimeToFile];
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = v3;
      v19 = 2112;
      v20 = v2;
      _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "Wrote (%@) to (%@).", buf, 0x16u);
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v10 = *MEMORY[0x1E695DB80];
    v15 = 0;
    [v2 setResourceValue:v9 forKey:v10 error:&v15];
    v11 = v15;

    if (v11)
    {
      v12 = LogCategory_Unspecified();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(FMDSharedConfiguration *)v2 writeFindMySignOutTimeToFile];
      }
    }
  }

  else
  {
    v3 = LogCategory_Unspecified();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration writeFindMySignOutTimeToFile];
    }

    v6 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)readFindMySignOutTimeFromFile
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [(FMDSharedConfiguration *)self signOutTimestampFileURL];
  if (v2)
  {
    v12 = 0;
    v3 = [MEMORY[0x1E695DF20] fm_dictionaryWithContentsOfURL:v2 error:&v12];
    v4 = v12;
    if (v4)
    {
      v5 = LogCategory_Unspecified();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v4;
        v6 = "Failed to read contents with error: %@";
        v7 = v5;
        v8 = 12;
LABEL_5:
        _os_log_impl(&dword_1DF650000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }

    else
    {
      if (v3)
      {
        v9 = [v3 objectForKeyedSubscript:@"SignOutTimestamp"];
        goto LABEL_12;
      }

      v5 = LogCategory_Unspecified();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "No contents";
        v7 = v5;
        v8 = 2;
        goto LABEL_5;
      }
    }

    v9 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v4 = LogCategory_Unspecified();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [FMDSharedConfiguration writeFindMySignOutTimeToFile];
  }

  v9 = 0;
LABEL_13:

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)clearFindMySignOutTimeFile
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(FMDSharedConfiguration *)self signOutTimestampFileURL];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [v2 path];
    v5 = [v3 fileExistsAtPath:v4 isDirectory:0];

    if (v5)
    {
      v6 = [v2 path];
      v13 = 0;
      v7 = [v3 removeItemAtPath:v6 error:&v13];
      v8 = v13;

      v9 = LogCategory_Unspecified();
      v10 = v9;
      if (v7)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v15 = v2;
          _os_log_impl(&dword_1DF650000, v10, OS_LOG_TYPE_DEFAULT, "Removed (%@).", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [FMDSharedConfiguration clearFindMySignOutTimeFile];
      }
    }

    else
    {
      v8 = LogCategory_Unspecified();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF650000, v8, OS_LOG_TYPE_DEFAULT, "No record of the last sign out. Bailing.", buf, 2u);
      }

      v7 = 0;
    }
  }

  else
  {
    v3 = LogCategory_Unspecified();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [FMDSharedConfiguration writeFindMySignOutTimeToFile];
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)localeString
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fileURLWithLocale:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fileURLWithLocale:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createAwarenessStringsDictionaryWithData:key:deviceClasses:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_3();
  v1 = v0;
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_createAwarenessStringsDictionaryWithData:key:deviceClasses:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_createAwarenessStringsDictionaryWithData:key:deviceClasses:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_createAwarenessStringsDictionaryWithData:key:deviceClasses:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1DF650000, v0, v1, "Entry found at %lu, but enabled flag isn't a number: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_createAwarenessStringsDictionaryWithData:key:deviceClasses:.cold.5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1DF650000, v0, v1, "Entry found at %lu, but message is not a string: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_createAwarenessStringsDictionaryWithData:key:deviceClasses:.cold.6()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1DF650000, v0, v1, "Entry found at %lu, but title is not a string: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_createAwarenessStringsDictionaryWithData:key:deviceClasses:.cold.7()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1DF650000, v0, v1, "Entry found at %lu, but disclaimer label exists and is not a string: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_createAwarenessStringsDictionaryWithData:key:deviceClasses:.cold.8()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_createAwarenessStringsDictionaryWithData:key:deviceClasses:.cold.9()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_createAwarenessStringsDictionaryWithData:key:deviceClasses:.cold.10()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_createAwarenessStringsDictionaryWithData:key:deviceClasses:.cold.11()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)writeFindMySignOutTimeToFile
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)clearFindMySignOutTimeFile
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_0(&dword_1DF650000, v0, v1, "Failed to remove file (%@) with error %@.");
  v2 = *MEMORY[0x1E69E9840];
}

@end