@interface MFAccountValidator
- (BOOL)accountIsValid;
- (BOOL)accountSupportsSSL;
- (MFAccountValidator)initWithPerformsValidationInBackground:(BOOL)background;
- (MFAccountValidatorDelegate)delegate;
- (MFError)error;
- (MFMonitoredInvocation)validationInvocation;
- (void)_backgroundValidateAccountFinished:(id)finished authSchemes:(id)schemes;
- (void)_validateAccount:(id)account;
- (void)_validateAccount:(id)account withFallbacks:(BOOL)fallbacks;
- (void)_validateAccountWithoutFallbacks:(id)fallbacks;
- (void)dealloc;
- (void)validateAccount:(id)account useSSL:(BOOL)l withCompletion:(id)completion;
- (void)validateAccountWithoutFallbacks:(id)fallbacks;
- (void)validateAccountWithoutFallbacks:(id)fallbacks withCompletion:(id)completion;
@end

@implementation MFAccountValidator

- (MFAccountValidator)initWithPerformsValidationInBackground:(BOOL)background
{
  backgroundCopy = background;
  v6.receiver = self;
  v6.super_class = MFAccountValidator;
  result = [(MFAccountValidator *)&v6 init];
  if (result)
  {
    if (backgroundCopy)
    {
      v5 = 16;
    }

    else
    {
      v5 = 0;
    }

    result->_flags = (*&result->_flags & 0xFFFFFFEF | v5);
  }

  return result;
}

- (void)dealloc
{
  [(MFAccountValidator *)self stop];
  v3.receiver = self;
  v3.super_class = MFAccountValidator;
  [(MFAccountValidator *)&v3 dealloc];
}

void __45__MFAccountValidator_validateAccount_useSSL___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((v5 + 80));
  [WeakRetained accountValidator:*(a1 + 32) finishedValidationOfAccount:v6 usedSSL:a3];
}

- (void)validateAccount:(id)account useSSL:(BOOL)l withCompletion:(id)completion
{
  lCopy = l;
  objc_storeStrong(&self->_account, account);
  accountCopy = account;
  completionCopy = completion;
  self->_flags = (*&self->_flags & 0xFFFFFFFE | lCopy);
  v10 = _Block_copy(completionCopy);

  completionBlock = self->_completionBlock;
  self->_completionBlock = v10;

  [(MFAccountValidator *)self _validateAccount:self->_account withFallbacks:1];
}

- (void)validateAccountWithoutFallbacks:(id)fallbacks
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__MFAccountValidator_validateAccountWithoutFallbacks___block_invoke;
  v3[3] = &unk_1E7AA21B0;
  v3[4] = self;
  [(MFAccountValidator *)self validateAccountWithoutFallbacks:fallbacks withCompletion:v3];
}

void __54__MFAccountValidator_validateAccountWithoutFallbacks___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((v5 + 80));
  [WeakRetained accountValidator:*(a1 + 32) finishedValidationOfAccount:v6 usedSSL:a3];
}

- (void)validateAccountWithoutFallbacks:(id)fallbacks withCompletion:(id)completion
{
  objc_storeStrong(&self->_account, fallbacks);
  fallbacksCopy = fallbacks;
  completionCopy = completion;
  v8 = _Block_copy(completionCopy);

  completionBlock = self->_completionBlock;
  self->_completionBlock = v8;

  [(MFAccountValidator *)self _validateAccount:self->_account withFallbacks:0];
}

- (void)_backgroundValidateAccountFinished:(id)finished authSchemes:(id)schemes
{
  finishedCopy = finished;
  schemesCopy = schemes;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  error = [(MFActivityMonitor *)self->_accountValidationActivity error];
  if ([error code])
  {
    v10 = 0;
  }

  else
  {
    v10 = schemesCopy;
  }

  v11 = 48;
  if (v7 == v8)
  {
    v11 = 56;
    v12 = 72;
  }

  else
  {
    v12 = 64;
  }

  objc_storeStrong((&self->super.isa + v11), error);
  objc_storeStrong((&self->super.isa + v12), v10);
  accountValidationActivity = self->_accountValidationActivity;
  self->_accountValidationActivity = 0;

  flags = self->_flags;
  (*(self->_completionBlock + 2))();
}

- (void)_validateAccount:(id)account
{
  v67[16] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v59 = +[MFActivityMonitor currentMonitor];
  defaultConnectionSettings = [accountCopy defaultConnectionSettings];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  if (([objc_opt_class() isSSLEditable] & 1) == 0)
  {
    v6 = [objc_opt_class() predefinedValueForKey:@"SSLEnabled"];
    self->_flags = (*&self->_flags & 0xFFFFFFFE | [v6 BOOLValue]);
  }

  shouldCancel = [v59 shouldCancel];
  flags = self->_flags;
  if (flags)
  {
    v9 = shouldCancel;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v57 = 0;
    goto LABEL_21;
  }

  v61 = 0;
  v10 = _openConnectionForAccount(accountCopy, 1, &v61);
  v57 = v61;
  v11 = 1;
  if (!v10)
  {
    error = [v59 error];
    if ([error code] == 1034)
    {
      v11 = 0;
    }

    else
    {
      error2 = [v59 error];
      v11 = [error2 code] != 1045;
    }
  }

  if (v4 == v5)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if (v4 == v5)
  {
    v15 = -5;
  }

  else
  {
    v15 = -3;
  }

  flags = (*&self->_flags & v15) + (v11 << v14);
  self->_flags = flags;
  if (!v10)
  {
LABEL_21:
    if (flags)
    {
      goto LABEL_27;
    }

    if ([v59 shouldCancel])
    {
      goto LABEL_27;
    }

    [accountCopy applySettingsAsDefault:defaultConnectionSettings];
    v60 = v57;
    v17 = _openConnectionForAccount(accountCopy, 0, &v60);
    v18 = v60;

    v16 = v17;
    v57 = v18;
    if (!v17)
    {
LABEL_27:
      error3 = [v59 error];
      userInfo = [error3 userInfo];
      v22 = [userInfo objectForKey:@"MFSSLErrorCertificateKey"];
      v23 = v22 == 0;

      if (!v23)
      {
        v19 = 0;
        goto LABEL_97;
      }

      if (v4 == v5)
      {
        MFLookupLocalizedString(@"SMTP_CONNECTION_FAILED_MESSAGE_FORMAT", @"The %@ server “%@” is not responding. Check your network connection and that you entered the correct information in the “Outgoing Mail Server” field.", @"Assistant");
      }

      else
      {
        MFLookupLocalizedString(@"CONNECTION_FAILED_MESSAGE_FORMAT", @"The %@ server “%@” is not responding. Check your network connection and that you entered the correct information in the “Incoming Mail Server” field.", @"Assistant");
      }
      v16 = ;
      v47 = MEMORY[0x1E696AEC0];
      v48 = _accountTypeString(accountCopy);
      hostname = [accountCopy hostname];
      v50 = [v47 stringWithFormat:v16, v48, hostname];

      v51 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:v50];
      [v59 setError:v51];

      v19 = 0;
LABEL_96:

      goto LABEL_97;
    }

    goto LABEL_24;
  }

  v16 = v10;
LABEL_24:
  [accountCopy applySettingsAsDefault:v57];
  v19 = [MEMORY[0x1E699B208] authenticationSchemesForAccount:accountCopy connection:v16];
  if (([accountCopy requiresAuthentication] & 1) == 0 && (v4 != v5 || !objc_msgSend(accountCopy, "shouldUseAuthentication")))
  {
LABEL_93:
    _closeConnection(v16);
    goto LABEL_96;
  }

  v55 = [MEMORY[0x1E699B208] schemeWithName:*MEMORY[0x1E699B1E8]];
  if ([v19 count])
  {
    v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v19];
  }

  else
  {
    v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v55, 0}];
  }

  v24 = 0;
  LOBYTE(v25) = 0;
  while (1)
  {
    v26 = v19;
    if (v24)
    {
      break;
    }

    if ([accountCopy usesSSL])
    {
      if ([v58 indexOfObject:v55] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = v55;
        if (v55)
        {
          goto LABEL_58;
        }
      }
    }

LABEL_44:
    v28 = v58;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v62 objects:v67 count:16];
    if (v30)
    {
      v31 = *v63;
LABEL_46:
      v32 = 0;
      while (1)
      {
        if (*v63 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v62 + 1) + 8 * v32);
        if ([v33 hasEncryption])
        {
          break;
        }

        if (v30 == ++v32)
        {
          v30 = [v29 countByEnumeratingWithState:&v62 objects:v67 count:16];
          v19 = v26;
          if (v30)
          {
            goto LABEL_46;
          }

          goto LABEL_52;
        }
      }

      firstObject = v33;

      v19 = v26;
      if (firstObject)
      {
        goto LABEL_55;
      }
    }

    else
    {
LABEL_52:
    }

    firstObject = [v29 firstObject];
LABEL_55:

    if (!firstObject)
    {
      if ([accountCopy requiresAuthentication])
      {
        v27 = v55;
LABEL_58:
        firstObject = v27;
        goto LABEL_60;
      }

      firstObject = 0;
    }

LABEL_60:
    [v59 setError:0];
    [accountCopy setPreferredAuthScheme:firstObject];
    if (v16)
    {
      goto LABEL_61;
    }

    v16 = [objc_allocWithZone(objc_msgSend(accountCopy "connectionClass"))];
    if ([v16 connectUsingAccount:accountCopy])
    {
      if (v16)
      {
LABEL_61:
        v35 = 0;
        if (([v16 authenticateUsingAccount:accountCopy] & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_62;
      }
    }

    else
    {

      v16 = 0;
    }

    v35 = 1;
    if ((v25 & 1) == 0)
    {
LABEL_71:
      LOBYTE(v25) = 0;
      goto LABEL_75;
    }

    if ([v19 indexOfObject:firstObject] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_74;
    }

LABEL_62:
    if (v19 && [v19 count])
    {
      v36 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count") + 1}];

      [v36 addObjectsFromArray:v36];
      [v36 addObject:firstObject];
      LOBYTE(v25) = 1;
      v19 = v36;
      goto LABEL_75;
    }

    if (firstObject)
    {
      v66 = firstObject;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];

      LOBYTE(v25) = 1;
      v19 = v37;
    }

    else
    {
LABEL_74:
      LOBYTE(v25) = 1;
    }

LABEL_75:
    if ((*&self->_flags & 8) != 0)
    {
      v43 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1028 localizedDescription:0];
      [v59 setError:v43];
LABEL_86:

      goto LABEL_87;
    }

    if ((v25 & 1) == 0)
    {
      error4 = [v59 error];
      v39 = error4 == 0;

      if (!v39)
      {
        error5 = [v59 error];
        LODWORD(v25) = [accountCopy shouldEnableAfterError:error5];

        if (v25)
        {
          enableAccount = [accountCopy enableAccount];
          LOBYTE(v25) = 0;
          v42 = v24 < 3 ? enableAccount : 0;
          if (v42)
          {
            goto LABEL_88;
          }
        }

        goto LABEL_87;
      }

      v44 = MEMORY[0x1E696AEC0];
      v25 = MFLookupLocalizedString(@"FAILED_LOGIN", @"The user name or password for “%@” is incorrect.", @"Delayed");
      username = [accountCopy username];
      v43 = [v44 stringWithFormat:v25, username];

      v46 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1032 localizedDescription:v43];
      [v59 setError:v46];

      LOBYTE(v25) = 0;
      goto LABEL_86;
    }

    LOBYTE(v25) = 1;
LABEL_87:
    [v58 removeObject:firstObject];
LABEL_88:
    if ((v35 & 1) == 0)
    {
      _closeConnection(v16);
    }

    v16 = 0;
    ++v24;
  }

  if ((v25 & 1) == 0 && [v58 count] && (objc_msgSend(v59, "shouldCancel") & 1) == 0)
  {
    goto LABEL_44;
  }

  if (v16)
  {
    goto LABEL_93;
  }

LABEL_97:
  v67[0] = 0;
  v52 = [(MFAccountValidator *)self pep_getInvocation:v67];
  [v52 _backgroundValidateAccountFinished:accountCopy authSchemes:v19];

  [v67[0] retainArguments];
  [v67[0] performSelectorOnMainThread:sel_invoke withObject:0 waitUntilDone:1];

  v53 = *MEMORY[0x1E69E9840];
}

- (void)_validateAccountWithoutFallbacks:(id)fallbacks
{
  fallbacksCopy = fallbacks;
  v5 = +[MFActivityMonitor currentMonitor];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  if ([v5 shouldCancel])
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_5;
  }

  v28 = 0;
  v8 = _openConnectionForAccount(fallbacksCopy, [fallbacksCopy usesSSL], &v28);
  v9 = v28;
  if (v8 && ([v5 shouldCancel] & 1) == 0)
  {
    if (([fallbacksCopy requiresAuthentication] & 1) == 0 && (v6 != v7 || !objc_msgSend(fallbacksCopy, "shouldUseAuthentication")))
    {
      goto LABEL_22;
    }

    v13 = [v8 authenticateUsingAccount:fallbacksCopy];
    if ((*&self->_flags & 8) != 0)
    {
      v18 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1028 localizedDescription:0];
      [v5 setError:v18];
    }

    else
    {
      if (v13)
      {
        goto LABEL_20;
      }

      error = [v5 error];

      if (error)
      {
        goto LABEL_20;
      }

      v15 = MEMORY[0x1E696AEC0];
      v16 = MFLookupLocalizedString(@"FAILED_LOGIN", @"The user name or password for “%@” is incorrect.", @"Delayed");
      username = [fallbacksCopy username];
      v18 = [v15 stringWithFormat:v16, username];

      v19 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1032 localizedDescription:v18];
      [v5 setError:v19];
    }

LABEL_20:
    _closeConnection(v8);
    v20 = v8;
    v8 = 0;
LABEL_21:

    goto LABEL_22;
  }

LABEL_5:
  error2 = [v5 error];
  userInfo = [error2 userInfo];
  v12 = [userInfo objectForKey:@"MFSSLErrorCertificateKey"];

  if (!v12)
  {
    if (v6 == v7)
    {
      MFLookupLocalizedString(@"SMTP_CONNECTION_FAILED_MESSAGE_FORMAT", @"The %@ server “%@” is not responding. Check your network connection and that you entered the correct information in the “Outgoing Mail Server” field.", @"Assistant");
    }

    else
    {
      MFLookupLocalizedString(@"CONNECTION_FAILED_MESSAGE_FORMAT", @"The %@ server “%@” is not responding. Check your network connection and that you entered the correct information in the “Incoming Mail Server” field.", @"Assistant");
    }
    v20 = ;
    v21 = MEMORY[0x1E696AEC0];
    v22 = _accountTypeString(fallbacksCopy);
    hostname = [fallbacksCopy hostname];
    v24 = [v21 stringWithFormat:v20, v22, hostname];

    v25 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:v24];
    [v5 setError:v25];

    goto LABEL_21;
  }

LABEL_22:
  v27 = 0;
  v26 = [(MFAccountValidator *)self pep_getInvocation:&v27];
  [v26 _backgroundValidateAccountFinished:fallbacksCopy authSchemes:0];

  [v27 retainArguments];
  [v27 performSelectorOnMainThread:sel_invoke withObject:0 waitUntilDone:1];
}

- (void)_validateAccount:(id)account withFallbacks:(BOOL)fallbacks
{
  fallbacksCopy = fallbacks;
  accountCopy = account;
  if (!self->_accountValidationActivity)
  {
    v14 = accountCopy;
    v7 = MFLookupLocalizedString(@"CHECKING_CONNECTION", @"Checking connection", @"Assistant");
    if (fallbacksCopy)
    {
      v8 = sel__validateAccount_;
    }

    else
    {
      v8 = sel__validateAccountWithoutFallbacks_;
    }

    v9 = [MFMonitoredInvocation invocationWithSelector:v8 target:self object:v14 taskName:v7 priority:-1 canBeCancelled:1];

    monitor = [(MFMonitoredInvocation *)v9 monitor];
    accountValidationActivity = self->_accountValidationActivity;
    self->_accountValidationActivity = monitor;

    [(MFActivityMonitor *)self->_accountValidationActivity setCanBeCancelled:1];
    if ([(MFAccountValidator *)self performsValidationInBackground])
    {
      validationInvocation = +[MFInvocationQueue sharedInvocationQueue];
      [validationInvocation addInvocation:v9];
    }

    else
    {
      if (v9 == self->_validationInvocation)
      {
LABEL_10:

        accountCopy = v14;
        goto LABEL_11;
      }

      v13 = v9;
      validationInvocation = self->_validationInvocation;
      self->_validationInvocation = v13;
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (MFMonitoredInvocation)validationInvocation
{
  if ([(MFAccountValidator *)self performsValidationInBackground])
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_validationInvocation;
  }

  return v3;
}

- (BOOL)accountIsValid
{
  account = [(MFAccountValidator *)self account];
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    _outgoingServerValid = [(MFAccountValidator *)self _outgoingServerValid];
  }

  else
  {
    _outgoingServerValid = [(MFAccountValidator *)self _incomingServerValid];
  }

  v6 = _outgoingServerValid;

  return v6;
}

- (BOOL)accountSupportsSSL
{
  account = [(MFAccountValidator *)self account];
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v5 = 4;
  }

  else
  {
    v5 = 2;
  }

  v6 = (*&self->_flags & v5) != 0;

  return v6;
}

- (MFError)error
{
  account = [(MFAccountValidator *)self account];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = 48;
  if (v4 == v5)
  {
    v6 = 56;
  }

  v7 = *(&self->super.isa + v6);
  v8 = v7;

  return v7;
}

- (MFAccountValidatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end