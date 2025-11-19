@interface DOCErrorStore
+ (id)_augmentedErrorForError:(id)a3 localizedDescription:(id)a4 recoverySuggestion:(id)a5;
+ (id)augmentedErrorForError:(id)a3;
@end

@implementation DOCErrorStore

+ (id)augmentedErrorForError:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:*MEMORY[0x1E696A798]];

  if (v6)
  {
    v7 = [v4 code];
    if (v7 > 56)
    {
      if (v7 == 57)
      {
        v9 = _DocumentManagerBundle();
        v22 = [v9 localizedStringForKey:@"POSIX.ENOTCONN.title" value:@"There was a problem connecting to the server." table:@"LocalizableErrors"];
        v23 = _DocumentManagerBundle();
        v24 = [v23 localizedStringForKey:@"POSIX.ENOTCONN.recovery" value:@"Check the server name or IP address table:{and then try again. If you continue to have problems, contact your system administrator.", @"LocalizableErrors"}];
        v21 = [a1 _augmentedErrorForError:v4 localizedDescription:v22 recoverySuggestion:v24];

LABEL_28:
        goto LABEL_29;
      }

      if (v7 == 80)
      {
        v8 = _DocumentManagerBundle();
        v9 = v8;
        v10 = @"POSIX.EAUTH.title";
        v13 = @"You entered an invalid username or password for the server.";
        goto LABEL_27;
      }
    }

    else if (v7 == 5 || v7 == 9)
    {
      v8 = _DocumentManagerBundle();
      v9 = v8;
      v10 = @"POSIX.EBADF.title";
LABEL_9:
      v13 = @"The operation can’t be completed because an unexpected error occurred.";
LABEL_27:
      v25 = [v8 localizedStringForKey:v10 value:v13 table:@"LocalizableErrors"];
      v21 = [a1 _augmentedErrorForError:v4 localizedDescription:v25 recoverySuggestion:0];

      goto LABEL_28;
    }
  }

  else
  {
    v11 = [v4 domain];
    v12 = [v11 isEqualToString:*MEMORY[0x1E696A250]];

    if (v12)
    {
      if ([v4 code] == 4097)
      {
        v8 = _DocumentManagerBundle();
        v9 = v8;
        v10 = @"Cocoa.XPCConnectionInterrupted.title";
        goto LABEL_9;
      }
    }

    else
    {
      v14 = [v4 domain];
      v15 = [v14 isEqualToString:*MEMORY[0x1E696A978]];

      if (v15)
      {
        v16 = [v4 code];
        if (v16 == -1000)
        {
          v8 = _DocumentManagerBundle();
          v9 = v8;
          v10 = @"URL.BadURL.title";
          v13 = @"The operation can’t be completed because this URL is not valid.";
          goto LABEL_27;
        }

        if (v16 == -1002)
        {
          v8 = _DocumentManagerBundle();
          v9 = v8;
          v10 = @"URL.UnsupportedURL.title";
          v13 = @"The operation can’t be completed because this URL is not supported.";
          goto LABEL_27;
        }
      }

      else
      {
        v17 = [v4 domain];
        v18 = [v17 isEqualToString:*MEMORY[0x1E6967190]];

        if (v18 && [v4 code] == -2001)
        {
          v8 = _DocumentManagerBundle();
          v9 = v8;
          v10 = @"FileProvider.ProviderNotFound.title";
          v13 = @"The file provider supporting this action is not available anymore";
          goto LABEL_27;
        }
      }
    }
  }

  v19 = MEMORY[0x1E699A450];
  v20 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v20 = *v19;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v27 = 138412290;
    v28 = v4;
    _os_log_impl(&dword_1E57D8000, v20, OS_LOG_TYPE_INFO, "No replacement error found for error: %@", &v27, 0xCu);
  }

  v21 = 0;
LABEL_29:

  return v21;
}

+ (id)_augmentedErrorForError:(id)a3 localizedDescription:(id)a4 recoverySuggestion:(id)a5
{
  v33[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695DF90];
  v11 = *MEMORY[0x1E696AA08];
  v32[0] = *MEMORY[0x1E696A578];
  v32[1] = v11;
  v33[0] = v8;
  v33[1] = v7;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v13 = [v10 dictionaryWithDictionary:v12];

  if (DOCIsInternalBuild())
  {
    v14 = &stru_1F5F4AEF8;
    if (v9)
    {
      v15 = v9;
    }

    else
    {
      v15 = &stru_1F5F4AEF8;
    }

    v16 = [v7 code];
    v17 = [v7 userInfo];
    if (v17)
    {
      v31 = [v7 userInfo];
      if ([v31 count])
      {
        v18 = MEMORY[0x1E696AEC0];
        v30 = [v7 userInfo];
        v14 = [v18 stringWithFormat:@"\n\n%@", v30];
        v19 = 1;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = [v7 domain];
    v21 = [(__CFString *)v15 stringByAppendingFormat:@"\n\n[INTERNAL BUILD]\nError %ld%@ (%@)", v16, v14, v20];

    if (v19)
    {
    }

    if (v17)
    {
    }

    v9 = v21;
  }

  if (v9)
  {
    [v13 setObject:v9 forKey:*MEMORY[0x1E696A598]];
  }

  v22 = [v7 localizedRecoveryOptions];

  if (v22)
  {
    v23 = [v7 localizedRecoveryOptions];
    [v13 setObject:v23 forKey:*MEMORY[0x1E696A590]];
  }

  v24 = [v7 recoveryAttempter];

  if (v24)
  {
    v25 = [v7 recoveryAttempter];
    [v13 setObject:v25 forKey:*MEMORY[0x1E696A8A8]];
  }

  v26 = MEMORY[0x1E696ABC0];
  v27 = [v7 domain];
  v28 = [v26 errorWithDomain:v27 code:objc_msgSend(v7 userInfo:{"code"), v13}];

  return v28;
}

@end