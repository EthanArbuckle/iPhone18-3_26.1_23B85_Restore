@interface DOCErrorStore
+ (id)_augmentedErrorForError:(id)error localizedDescription:(id)description recoverySuggestion:(id)suggestion;
+ (id)augmentedErrorForError:(id)error;
@end

@implementation DOCErrorStore

+ (id)augmentedErrorForError:(id)error
{
  v29 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:*MEMORY[0x1E696A798]];

  if (v6)
  {
    code = [errorCopy code];
    if (code > 56)
    {
      if (code == 57)
      {
        v9 = _DocumentManagerBundle();
        v22 = [v9 localizedStringForKey:@"POSIX.ENOTCONN.title" value:@"There was a problem connecting to the server." table:@"LocalizableErrors"];
        v23 = _DocumentManagerBundle();
        v24 = [v23 localizedStringForKey:@"POSIX.ENOTCONN.recovery" value:@"Check the server name or IP address table:{and then try again. If you continue to have problems, contact your system administrator.", @"LocalizableErrors"}];
        v21 = [self _augmentedErrorForError:errorCopy localizedDescription:v22 recoverySuggestion:v24];

LABEL_28:
        goto LABEL_29;
      }

      if (code == 80)
      {
        v8 = _DocumentManagerBundle();
        v9 = v8;
        v10 = @"POSIX.EAUTH.title";
        v13 = @"You entered an invalid username or password for the server.";
        goto LABEL_27;
      }
    }

    else if (code == 5 || code == 9)
    {
      v8 = _DocumentManagerBundle();
      v9 = v8;
      v10 = @"POSIX.EBADF.title";
LABEL_9:
      v13 = @"The operation can’t be completed because an unexpected error occurred.";
LABEL_27:
      v25 = [v8 localizedStringForKey:v10 value:v13 table:@"LocalizableErrors"];
      v21 = [self _augmentedErrorForError:errorCopy localizedDescription:v25 recoverySuggestion:0];

      goto LABEL_28;
    }
  }

  else
  {
    domain2 = [errorCopy domain];
    v12 = [domain2 isEqualToString:*MEMORY[0x1E696A250]];

    if (v12)
    {
      if ([errorCopy code] == 4097)
      {
        v8 = _DocumentManagerBundle();
        v9 = v8;
        v10 = @"Cocoa.XPCConnectionInterrupted.title";
        goto LABEL_9;
      }
    }

    else
    {
      domain3 = [errorCopy domain];
      v15 = [domain3 isEqualToString:*MEMORY[0x1E696A978]];

      if (v15)
      {
        code2 = [errorCopy code];
        if (code2 == -1000)
        {
          v8 = _DocumentManagerBundle();
          v9 = v8;
          v10 = @"URL.BadURL.title";
          v13 = @"The operation can’t be completed because this URL is not valid.";
          goto LABEL_27;
        }

        if (code2 == -1002)
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
        domain4 = [errorCopy domain];
        v18 = [domain4 isEqualToString:*MEMORY[0x1E6967190]];

        if (v18 && [errorCopy code] == -2001)
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
    v28 = errorCopy;
    _os_log_impl(&dword_1E57D8000, v20, OS_LOG_TYPE_INFO, "No replacement error found for error: %@", &v27, 0xCu);
  }

  v21 = 0;
LABEL_29:

  return v21;
}

+ (id)_augmentedErrorForError:(id)error localizedDescription:(id)description recoverySuggestion:(id)suggestion
{
  v33[2] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  descriptionCopy = description;
  suggestionCopy = suggestion;
  v10 = MEMORY[0x1E695DF90];
  v11 = *MEMORY[0x1E696AA08];
  v32[0] = *MEMORY[0x1E696A578];
  v32[1] = v11;
  v33[0] = descriptionCopy;
  v33[1] = errorCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v13 = [v10 dictionaryWithDictionary:v12];

  if (DOCIsInternalBuild())
  {
    v14 = &stru_1F5F4AEF8;
    if (suggestionCopy)
    {
      v15 = suggestionCopy;
    }

    else
    {
      v15 = &stru_1F5F4AEF8;
    }

    code = [errorCopy code];
    userInfo = [errorCopy userInfo];
    if (userInfo)
    {
      userInfo2 = [errorCopy userInfo];
      if ([userInfo2 count])
      {
        v18 = MEMORY[0x1E696AEC0];
        userInfo3 = [errorCopy userInfo];
        v14 = [v18 stringWithFormat:@"\n\n%@", userInfo3];
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

    domain = [errorCopy domain];
    v21 = [(__CFString *)v15 stringByAppendingFormat:@"\n\n[INTERNAL BUILD]\nError %ld%@ (%@)", code, v14, domain];

    if (v19)
    {
    }

    if (userInfo)
    {
    }

    suggestionCopy = v21;
  }

  if (suggestionCopy)
  {
    [v13 setObject:suggestionCopy forKey:*MEMORY[0x1E696A598]];
  }

  localizedRecoveryOptions = [errorCopy localizedRecoveryOptions];

  if (localizedRecoveryOptions)
  {
    localizedRecoveryOptions2 = [errorCopy localizedRecoveryOptions];
    [v13 setObject:localizedRecoveryOptions2 forKey:*MEMORY[0x1E696A590]];
  }

  recoveryAttempter = [errorCopy recoveryAttempter];

  if (recoveryAttempter)
  {
    recoveryAttempter2 = [errorCopy recoveryAttempter];
    [v13 setObject:recoveryAttempter2 forKey:*MEMORY[0x1E696A8A8]];
  }

  v26 = MEMORY[0x1E696ABC0];
  domain2 = [errorCopy domain];
  v28 = [v26 errorWithDomain:domain2 code:objc_msgSend(errorCopy userInfo:{"code"), v13}];

  return v28;
}

@end