@interface MFAccountValidator
- (BOOL)accountIsValid;
- (BOOL)accountSupportsSSL;
- (MFAccountValidator)initWithPerformsValidationInBackground:(BOOL)a3;
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
  self->_delegate = 0;

  self->_account = 0;
  self->_validationInvocation = 0;

  self->_accountValidationActivity = 0;
  self->_incomingServerValidationError = 0;

  self->_smtpServerValidationError = 0;
  self->_incomingServerAuthSchemes = 0;

  self->_smtpServerAuthSchemes = 0;
  self->_completionBlock = 0;
  v3.receiver = self;
  v3.super_class = MFAccountValidator;
  [(MFAccountValidator *)&v3 dealloc];
}

- (void)validateAccount:(id)a3 useSSL:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  self->_account = a3;
  self->_flags = (*&self->_flags & 0xFFFFFFFE | v6);
  self->_completionBlock = [a5 copy];
  account = self->_account;

  [(MFAccountValidator *)self _validateAccount:account withFallbacks:1];
}

- (void)validateAccountWithoutFallbacks:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__MFAccountValidator_validateAccountWithoutFallbacks___block_invoke;
  v3[3] = &unk_2798B6498;
  v3[4] = self;
  [(MFAccountValidator *)self validateAccountWithoutFallbacks:a3 withCompletion:v3];
}

- (void)validateAccountWithoutFallbacks:(id)a3 withCompletion:(id)a4
{
  account = self->_account;
  if (account != a3)
  {

    self->_account = a3;
  }

  self->_completionBlock = [a4 copy];
  v8 = self->_account;

  [(MFAccountValidator *)self _validateAccount:v8 withFallbacks:0];
}

- (void)_backgroundValidateAccountFinished:(id)a3 authSchemes:(id)a4
{
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [(MFActivityMonitor *)self->_accountValidationActivity error];
  v9 = [v8 code];
  if (v6 == v7)
  {

    self->_smtpServerValidationError = v8;
    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = a4;
    }

    self->_smtpServerAuthSchemes = v11;
  }

  else
  {

    self->_incomingServerValidationError = v8;
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = a4;
    }

    self->_incomingServerAuthSchemes = v10;
  }

  self->_accountValidationActivity = 0;
  v12 = *(self->_completionBlock + 2);
  v13 = *&self->_flags & 1;

  v12();
}

- (void)_validateAccount:(id)a3
{
  v41[16] = *MEMORY[0x277D85DE8];
  v34 = +[MFActivityMonitor currentMonitor];
  v35 = 0;
  v5 = [a3 defaultConnectionSettings];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  if (([objc_opt_class() isSSLEditable] & 1) == 0)
  {
    self->_flags = (*&self->_flags & 0xFFFFFFFE | [objc_msgSend(objc_opt_class() predefinedValueForKey:{@"SSLEnabled", "BOOLValue"}]);
  }

  v8 = [v34 shouldCancel];
  v33 = self;
  flags = self->_flags;
  if ((v8 & 1) != 0 || (*&flags & 1) == 0)
  {
    goto LABEL_93;
  }

  v10 = _openConnectionForAccount(a3, 1, &v35);
  v11 = 1;
  if (!v10)
  {
    v11 = [objc_msgSend(v34 "error")] != 1034 && objc_msgSend(objc_msgSend(v34, "error"), "code") != 1045;
  }

  v12 = v6 == v7 ? 2 : 1;
  v13 = v6 == v7 ? -5 : -3;
  flags = (*&self->_flags & v13 | (v11 << v12));
  self->_flags = flags;
  if (!v10)
  {
LABEL_93:
    if ((*&flags & 1) != 0 || ([v34 shouldCancel] & 1) != 0 || (objc_msgSend(a3, "applySettingsAsDefault:", v5), (v10 = _openConnectionForAccount(a3, 0, &v35)) == 0))
    {
      if (![objc_msgSend(objc_msgSend(v34 "error")])
      {
        if (v6 == v7)
        {
          v18 = MFLookupLocalizedString(@"SMTP_CONNECTION_FAILED_MESSAGE_FORMAT", @"The %@ server “%@” is not responding. Check your network connection and that you entered the correct information in the “Outgoing Mail Server” field.", @"Assistant");
        }

        else
        {
          v18 = MFLookupLocalizedString(@"CONNECTION_FAILED_MESSAGE_FORMAT", @"The %@ server “%@” is not responding. Check your network connection and that you entered the correct information in the “Incoming Mail Server” field.", @"Assistant");
        }

        [v34 setError:{+[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"MFMessageErrorDomain", 1030, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", v18, objc_msgSend(objc_opt_class(), "accountTypeString"), objc_msgSend(a3, "hostname")))}];
      }

      v14 = 0;
      goto LABEL_90;
    }
  }

  [a3 applySettingsAsDefault:v35];
  v14 = [MFAuthScheme authSchemesForAccount:a3 connection:v10];
  if (([a3 requiresAuthentication] & 1) == 0 && (v6 != v7 || !objc_msgSend(a3, "shouldUseAuthentication")))
  {
LABEL_86:
    _closeConnection(v10);

    goto LABEL_90;
  }

  v32 = [MFAuthScheme schemeWithName:&stru_2869ED3E0];
  v15 = [v14 count] == 0;
  v16 = objc_alloc(MEMORY[0x277CBEB18]);
  if (v15)
  {
    v17 = [v16 initWithObjects:{v32, 0}];
  }

  else
  {
    v17 = [v16 initWithArray:v14];
  }

  v19 = v17;
  v20 = 0;
  v21 = 0;
  while (1)
  {
    if (!v20)
    {
      if ([a3 usesSSL])
      {
        v22 = v32;
        if ([v19 indexOfObject:?] != 0x7FFFFFFFFFFFFFFFLL && v32 != 0)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_37;
    }

    if (v21 & 1) != 0 || ![v19 count] || (objc_msgSend(v34, "shouldCancel"))
    {
      break;
    }

LABEL_37:
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v23 = [v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v23)
    {
      v24 = *v37;
LABEL_39:
      v25 = 0;
      while (1)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v36 + 1) + 8 * v25);
        if ([v26 hasEncryption])
        {
          break;
        }

        if (v23 == ++v25)
        {
          v23 = [v19 countByEnumeratingWithState:&v36 objects:v41 count:16];
          if (v23)
          {
            goto LABEL_39;
          }

          goto LABEL_47;
        }
      }

      if (v26)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if ([v19 count])
    {
      v26 = [v19 objectAtIndex:0];
    }

    else
    {
      v26 = 0;
    }

LABEL_50:
    v22 = v26;
    if (!v22)
    {
      if ([a3 requiresAuthentication])
      {
        v22 = v32;
      }

      else
      {
        v22 = 0;
      }
    }

LABEL_54:
    [v34 setError:0];
    [a3 setPreferredAuthScheme:v22];
    if (v10)
    {
      goto LABEL_55;
    }

    v10 = [objc_allocWithZone(objc_msgSend(a3 "connectionClass"))];
    if ([v10 connectUsingAccount:a3])
    {
      if (v10)
      {
LABEL_55:
        v27 = 0;
        if (([v10 authenticateUsingAccount:a3] & 1) == 0)
        {
          goto LABEL_65;
        }

        goto LABEL_56;
      }
    }

    else
    {

      v10 = 0;
    }

    v27 = 1;
    if ((v21 & 1) == 0)
    {
LABEL_65:
      v21 = 0;
      goto LABEL_68;
    }

LABEL_56:
    if ([v14 indexOfObject:v22] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v14 && [v14 count])
      {
        v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v14, "count") + 1}];
        [v14 addObjectsFromArray:v14];
        [v14 addObject:v22];
      }

      else
      {
        v40 = v22;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
      }
    }

    v21 = 1;
LABEL_68:
    if ((*&v33->_flags & 8) != 0)
    {
      v28 = v10;
      [v34 setError:{+[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"MFMessageErrorDomain", 1028, 0)}];
      [v19 removeObject:v22];
    }

    else
    {
      if (v21)
      {
        v21 = 1;
        v28 = v10;
      }

      else
      {
        v28 = v10;
        if (![v34 error])
        {
          [v34 setError:{+[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"MFMessageErrorDomain", 1032, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", MFLookupLocalizedString(@"FAILED_LOGIN", @"The user name or password for “%@” is incorrect.", @"Delayed", objc_msgSend(a3, "username")))}];
          [v19 removeObject:v22];
LABEL_84:
          v10 = 0;
          v21 = 0;
          goto LABEL_81;
        }

        if ([a3 shouldEnableAfterError:{objc_msgSend(v34, "error")}])
        {
          v29 = [a3 enableAccount];
          v30 = v20 < 3 ? v29 : 0;
          if (v30)
          {
            goto LABEL_84;
          }
        }

        v21 = 0;
      }

      [v19 removeObject:v22];
    }

    v10 = 0;
LABEL_81:
    ++v20;
    if ((v27 & 1) == 0)
    {
      _closeConnection(v28);

      v10 = 0;
    }
  }

  if (v10)
  {
    goto LABEL_86;
  }

LABEL_90:
  v41[0] = 0;
  [-[MFAccountValidator pep_getInvocation:](v33 pep_getInvocation:{v41), "_backgroundValidateAccountFinished:authSchemes:", a3, v14}];
  [v41[0] performSelectorOnMainThread:sel_invoke withObject:0 waitUntilDone:1];
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_validateAccountWithoutFallbacks:(id)a3
{
  v5 = +[MFActivityMonitor currentMonitor];
  v17 = 0;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  if (([v5 shouldCancel] & 1) == 0)
  {
    v8 = _openConnectionForAccount(a3, [a3 usesSSL], &v17);
    if (v8)
    {
      v9 = v8;
      if (([v5 shouldCancel] & 1) == 0)
      {
        if (([a3 requiresAuthentication] & 1) == 0 && (v6 != v7 || !objc_msgSend(a3, "shouldUseAuthentication")))
        {
          goto LABEL_20;
        }

        v12 = [v9 authenticateUsingAccount:a3];
        if ((*&self->_flags & 8) != 0)
        {
          v14 = 1028;
          v13 = 0;
        }

        else
        {
          if ((v12 & 1) != 0 || [v5 error])
          {
            goto LABEL_19;
          }

          v13 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(@"FAILED_LOGIN", @"The user name or password for “%@” is incorrect.", @"Delayed", objc_msgSend(a3, "username")];
          v14 = 1032;
        }

        [v5 setError:{+[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"MFMessageErrorDomain", v14, v13)}];
LABEL_19:
        _closeConnection(v9);

        goto LABEL_20;
      }
    }
  }

  if (![objc_msgSend(objc_msgSend(v5 "error")])
  {
    if (v6 == v7)
    {
      v10 = @"SMTP_CONNECTION_FAILED_MESSAGE_FORMAT";
      v11 = @"The %@ server “%@” is not responding. Check your network connection and that you entered the correct information in the “Outgoing Mail Server” field.";
    }

    else
    {
      v10 = @"CONNECTION_FAILED_MESSAGE_FORMAT";
      v11 = @"The %@ server “%@” is not responding. Check your network connection and that you entered the correct information in the “Incoming Mail Server” field.";
    }

    v15 = MFLookupLocalizedString(v10, v11, @"Assistant");
    [v5 setError:{+[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"MFMessageErrorDomain", 1030, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", v15, objc_msgSend(objc_opt_class(), "accountTypeString"), objc_msgSend(a3, "hostname")))}];
  }

LABEL_20:
  v16 = 0;
  [-[MFAccountValidator pep_getInvocation:](self pep_getInvocation:{&v16), "_backgroundValidateAccountFinished:authSchemes:", a3, 0}];
  [v16 performSelectorOnMainThread:sel_invoke withObject:0 waitUntilDone:1];
}

- (void)_validateAccount:(id)a3 withFallbacks:(BOOL)a4
{
  if (!self->_accountValidationActivity)
  {
    v5 = &selRef__validateAccount_;
    if (!a4)
    {
      v5 = &selRef__validateAccountWithoutFallbacks_;
    }

    v6 = [MFMonitoredInvocation invocationWithSelector:*v5 target:self object:a3 taskName:MFLookupLocalizedString(@"CHECKING_CONNECTION" priority:@"Checking connection" canBeCancelled:@"Assistant"), -1, 1];

    v7 = [(MFMonitoredInvocation *)v6 monitor];
    self->_accountValidationActivity = v7;
    [(MFActivityMonitor *)v7 setCanBeCancelled:1];
    if ([(MFAccountValidator *)self performsValidationInBackground])
    {
      v8 = +[MFInvocationQueue sharedInvocationQueue];

      [v8 addInvocation:v6];
    }

    else
    {
      validationInvocation = self->_validationInvocation;
      if (v6 != validationInvocation)
      {

        self->_validationInvocation = v6;
      }
    }
  }
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
  [(MFAccountValidator *)self account];
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {

    return [(MFAccountValidator *)self _outgoingServerValid];
  }

  else
  {

    return [(MFAccountValidator *)self _incomingServerValid];
  }
}

- (BOOL)accountSupportsSSL
{
  [(MFAccountValidator *)self account];
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  return (*&self->_flags & v4) != 0;
}

- (MFError)error
{
  [(MFAccountValidator *)self account];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = 48;
  if (v3 == v4)
  {
    v5 = 56;
  }

  return *(&self->super.isa + v5);
}

@end