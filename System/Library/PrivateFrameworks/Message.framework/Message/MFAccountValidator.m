@interface MFAccountValidator
- (BOOL)accountIsValid;
- (BOOL)accountSupportsSSL;
- (MFAccountValidator)initWithPerformsValidationInBackground:(BOOL)a3;
- (MFAccountValidatorDelegate)delegate;
- (MFError)error;
- (MFMonitoredInvocation)validationInvocation;
- (void)_backgroundValidateAccountFinished:(id)a3 authSchemes:(id)a4;
- (void)_validateAccount:(id)a3;
- (void)_validateAccount:(id)a3 withFallbacks:(BOOL)a4;
- (void)_validateAccountWithoutFallbacks:(id)a3;
- (void)dealloc;
- (void)validateAccount:(id)a3 useSSL:(BOOL)a4 withCompletion:(id)a5;
- (void)validateAccountWithoutFallbacks:(id)a3;
- (void)validateAccountWithoutFallbacks:(id)a3 withCompletion:(id)a4;
@end

@implementation MFAccountValidator

- (MFAccountValidator)initWithPerformsValidationInBackground:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = MFAccountValidator;
  result = [(MFAccountValidator *)&v6 init];
  if (result)
  {
    if (v3)
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

- (void)validateAccount:(id)a3 useSSL:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  objc_storeStrong(&self->_account, a3);
  v12 = a3;
  v9 = a5;
  self->_flags = (*&self->_flags & 0xFFFFFFFE | v6);
  v10 = _Block_copy(v9);

  completionBlock = self->_completionBlock;
  self->_completionBlock = v10;

  [(MFAccountValidator *)self _validateAccount:self->_account withFallbacks:1];
}

- (void)validateAccountWithoutFallbacks:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__MFAccountValidator_validateAccountWithoutFallbacks___block_invoke;
  v3[3] = &unk_1E7AA21B0;
  v3[4] = self;
  [(MFAccountValidator *)self validateAccountWithoutFallbacks:a3 withCompletion:v3];
}

void __54__MFAccountValidator_validateAccountWithoutFallbacks___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((v5 + 80));
  [WeakRetained accountValidator:*(a1 + 32) finishedValidationOfAccount:v6 usedSSL:a3];
}

- (void)validateAccountWithoutFallbacks:(id)a3 withCompletion:(id)a4
{
  objc_storeStrong(&self->_account, a3);
  v10 = a3;
  v7 = a4;
  v8 = _Block_copy(v7);

  completionBlock = self->_completionBlock;
  self->_completionBlock = v8;

  [(MFAccountValidator *)self _validateAccount:self->_account withFallbacks:0];
}

- (void)_backgroundValidateAccountFinished:(id)a3 authSchemes:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [(MFActivityMonitor *)self->_accountValidationActivity error];
  if ([v9 code])
  {
    v10 = 0;
  }

  else
  {
    v10 = v6;
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

  objc_storeStrong((&self->super.isa + v11), v9);
  objc_storeStrong((&self->super.isa + v12), v10);
  accountValidationActivity = self->_accountValidationActivity;
  self->_accountValidationActivity = 0;

  flags = self->_flags;
  (*(self->_completionBlock + 2))();
}

- (void)_validateAccount:(id)a3
{
  v67[16] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v59 = +[MFActivityMonitor currentMonitor];
  v54 = [v3 defaultConnectionSettings];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  if (([objc_opt_class() isSSLEditable] & 1) == 0)
  {
    v6 = [objc_opt_class() predefinedValueForKey:@"SSLEnabled"];
    self->_flags = (*&self->_flags & 0xFFFFFFFE | [v6 BOOLValue]);
  }

  v7 = [v59 shouldCancel];
  flags = self->_flags;
  if (flags)
  {
    v9 = v7;
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
  v10 = _openConnectionForAccount(v3, 1, &v61);
  v57 = v61;
  v11 = 1;
  if (!v10)
  {
    v12 = [v59 error];
    if ([v12 code] == 1034)
    {
      v11 = 0;
    }

    else
    {
      v13 = [v59 error];
      v11 = [v13 code] != 1045;
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

    [v3 applySettingsAsDefault:v54];
    v60 = v57;
    v17 = _openConnectionForAccount(v3, 0, &v60);
    v18 = v60;

    v16 = v17;
    v57 = v18;
    if (!v17)
    {
LABEL_27:
      v20 = [v59 error];
      v21 = [v20 userInfo];
      v22 = [v21 objectForKey:@"MFSSLErrorCertificateKey"];
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
      v48 = _accountTypeString(v3);
      v49 = [v3 hostname];
      v50 = [v47 stringWithFormat:v16, v48, v49];

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
  [v3 applySettingsAsDefault:v57];
  v19 = [MEMORY[0x1E699B208] authenticationSchemesForAccount:v3 connection:v16];
  if (([v3 requiresAuthentication] & 1) == 0 && (v4 != v5 || !objc_msgSend(v3, "shouldUseAuthentication")))
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

    if ([v3 usesSSL])
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

      v34 = v33;

      v19 = v26;
      if (v34)
      {
        goto LABEL_55;
      }
    }

    else
    {
LABEL_52:
    }

    v34 = [v29 firstObject];
LABEL_55:

    if (!v34)
    {
      if ([v3 requiresAuthentication])
      {
        v27 = v55;
LABEL_58:
        v34 = v27;
        goto LABEL_60;
      }

      v34 = 0;
    }

LABEL_60:
    [v59 setError:0];
    [v3 setPreferredAuthScheme:v34];
    if (v16)
    {
      goto LABEL_61;
    }

    v16 = [objc_allocWithZone(objc_msgSend(v3 "connectionClass"))];
    if ([v16 connectUsingAccount:v3])
    {
      if (v16)
      {
LABEL_61:
        v35 = 0;
        if (([v16 authenticateUsingAccount:v3] & 1) == 0)
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

    if ([v19 indexOfObject:v34] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_74;
    }

LABEL_62:
    if (v19 && [v19 count])
    {
      v36 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count") + 1}];

      [v36 addObjectsFromArray:v36];
      [v36 addObject:v34];
      LOBYTE(v25) = 1;
      v19 = v36;
      goto LABEL_75;
    }

    if (v34)
    {
      v66 = v34;
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
      v38 = [v59 error];
      v39 = v38 == 0;

      if (!v39)
      {
        v40 = [v59 error];
        LODWORD(v25) = [v3 shouldEnableAfterError:v40];

        if (v25)
        {
          v41 = [v3 enableAccount];
          LOBYTE(v25) = 0;
          v42 = v24 < 3 ? v41 : 0;
          if (v42)
          {
            goto LABEL_88;
          }
        }

        goto LABEL_87;
      }

      v44 = MEMORY[0x1E696AEC0];
      v25 = MFLookupLocalizedString(@"FAILED_LOGIN", @"The user name or password for “%@” is incorrect.", @"Delayed");
      v45 = [v3 username];
      v43 = [v44 stringWithFormat:v25, v45];

      v46 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1032 localizedDescription:v43];
      [v59 setError:v46];

      LOBYTE(v25) = 0;
      goto LABEL_86;
    }

    LOBYTE(v25) = 1;
LABEL_87:
    [v58 removeObject:v34];
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
  [v52 _backgroundValidateAccountFinished:v3 authSchemes:v19];

  [v67[0] retainArguments];
  [v67[0] performSelectorOnMainThread:sel_invoke withObject:0 waitUntilDone:1];

  v53 = *MEMORY[0x1E69E9840];
}

- (void)_validateAccountWithoutFallbacks:(id)a3
{
  v4 = a3;
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
  v8 = _openConnectionForAccount(v4, [v4 usesSSL], &v28);
  v9 = v28;
  if (v8 && ([v5 shouldCancel] & 1) == 0)
  {
    if (([v4 requiresAuthentication] & 1) == 0 && (v6 != v7 || !objc_msgSend(v4, "shouldUseAuthentication")))
    {
      goto LABEL_22;
    }

    v13 = [v8 authenticateUsingAccount:v4];
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

      v14 = [v5 error];

      if (v14)
      {
        goto LABEL_20;
      }

      v15 = MEMORY[0x1E696AEC0];
      v16 = MFLookupLocalizedString(@"FAILED_LOGIN", @"The user name or password for “%@” is incorrect.", @"Delayed");
      v17 = [v4 username];
      v18 = [v15 stringWithFormat:v16, v17];

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
  v10 = [v5 error];
  v11 = [v10 userInfo];
  v12 = [v11 objectForKey:@"MFSSLErrorCertificateKey"];

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
    v22 = _accountTypeString(v4);
    v23 = [v4 hostname];
    v24 = [v21 stringWithFormat:v20, v22, v23];

    v25 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:v24];
    [v5 setError:v25];

    goto LABEL_21;
  }

LABEL_22:
  v27 = 0;
  v26 = [(MFAccountValidator *)self pep_getInvocation:&v27];
  [v26 _backgroundValidateAccountFinished:v4 authSchemes:0];

  [v27 retainArguments];
  [v27 performSelectorOnMainThread:sel_invoke withObject:0 waitUntilDone:1];
}

- (void)_validateAccount:(id)a3 withFallbacks:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!self->_accountValidationActivity)
  {
    v14 = v6;
    v7 = MFLookupLocalizedString(@"CHECKING_CONNECTION", @"Checking connection", @"Assistant");
    if (v4)
    {
      v8 = sel__validateAccount_;
    }

    else
    {
      v8 = sel__validateAccountWithoutFallbacks_;
    }

    v9 = [MFMonitoredInvocation invocationWithSelector:v8 target:self object:v14 taskName:v7 priority:-1 canBeCancelled:1];

    v10 = [(MFMonitoredInvocation *)v9 monitor];
    accountValidationActivity = self->_accountValidationActivity;
    self->_accountValidationActivity = v10;

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

        v6 = v14;
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
  v3 = [(MFAccountValidator *)self account];
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v5 = [(MFAccountValidator *)self _outgoingServerValid];
  }

  else
  {
    v5 = [(MFAccountValidator *)self _incomingServerValid];
  }

  v6 = v5;

  return v6;
}

- (BOOL)accountSupportsSSL
{
  v3 = [(MFAccountValidator *)self account];
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
  v3 = [(MFAccountValidator *)self account];
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