@interface GmailAccount
+ (BOOL)deliveryAccountUsesSSL;
+ (id)authSchemesForAccountClass;
+ (unsigned)deliveryAccountPortNumber;
- (BOOL)canMailboxBeRenamed:(id)a3;
- (BOOL)enableAccount;
- (BOOL)shouldEnableAfterError:(id)a3;
- (GmailAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4;
- (id)_URLFromUncleanString:(id)a3;
- (id)_childOfMailbox:(id)a3 withComponentName:(id)a4;
- (id)_consumeExistingPreAuthToken;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3;
- (id)_webLoginErrorWithURL:(id)a3;
- (id)accountStore;
- (id)clientToken;
- (id)displayNameUsingSpecialNamesForMailboxUid:(id)a3;
- (id)emailAddressStrings;
- (id)errorForResponse:(id)a3;
- (id)hostname;
- (id)persistentNameForMailbox:(id)a3;
- (id)specialUseAttributeForType:(int64_t)a3;
- (id)specialUseAttributesForMailbox:(id)a3;
- (int)emptyFrequencyForMailboxType:(int64_t)a3;
- (int64_t)archiveDestinationForMailbox:(id)a3;
- (unint64_t)credentialAccessibility;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)_deleteHook;
- (void)_removeCredential:(id)a3;
- (void)persistentAccountDidChange:(id)a3 previousAccount:(id)a4;
- (void)setPassword:(id)a3;
@end

@implementation GmailAccount

- (GmailAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4
{
  v7.receiver = self;
  v7.super_class = GmailAccount;
  v4 = [(IMAPAccount *)&v7 initWithLibrary:a3 persistentAccount:a4];
  if (v4)
  {
    if (RegisterGmailAuthSchemes_onceToken != -1)
    {
      [GmailAccount initWithLibrary:persistentAccount:];
    }

    v5 = v4;
  }

  return v4;
}

+ (id)authSchemesForAccountClass
{
  if (RegisterGmailAuthSchemes_onceToken != -1)
  {
    +[GmailAccount authSchemesForAccountClass];
  }

  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___GmailAccount;
  v3 = objc_msgSendSuper2(&v5, sel_authSchemesForAccountClass);

  return v3;
}

- (id)hostname
{
  v2 = objc_opt_class();

  return [v2 hostname];
}

- (void)persistentAccountDidChange:(id)a3 previousAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = GmailAccount;
  [(MailAccount *)&v9 persistentAccountDidChange:v6 previousAccount:v7];
  [(GmailAccount *)self mf_lock];
  clientToken = self->_clientToken;
  self->_clientToken = 0;

  [(GmailAccount *)self mf_unlock];
}

- (void)_deleteHook
{
  v2 = [(MFAccount *)self username];
  [MFMessageKeychainManager removePasswordForServiceName:@"IDToken" accountName:?];
}

- (id)_consumeExistingPreAuthToken
{
  v2 = [(MFAccount *)self username];
  v6 = 0;
  v3 = [MFMessageKeychainManager passwordForServiceName:@"IDToken" accountName:v2 synchronizable:0 error:&v6];
  v4 = v6;
  [MFMessageKeychainManager removePasswordForServiceName:@"IDToken" accountName:v2];

  return v3;
}

- (id)accountStore
{
  v2 = +[MFAccountStore sharedAccountStore];
  v3 = [v2 persistentStore];

  return v3;
}

- (id)clientToken
{
  [(GmailAccount *)self mf_lock];
  if (!self->_clientToken)
  {
    v3 = [(GmailAccount *)self _consumeExistingPreAuthToken];
    if (!v3)
    {
      v4 = [MEMORY[0x1E696AFB0] UUID];
      v5 = [v4 UUIDString];

      v3 = v5;
    }

    v6 = [(MFAccount *)self persistentAccount];
    v7 = [(GmailAccount *)self accountStore];
    if (([v7 addClientToken:v3 forAccount:v6] & 1) == 0)
    {
      v8 = [v7 clientTokenForAccount:v6];

      v3 = v8;
    }

    if (!v3)
    {
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "#Warning failed to get client token", v13, 2u);
      }
    }

    clientToken = self->_clientToken;
    self->_clientToken = v3;
  }

  [(GmailAccount *)self mf_unlock];
  v11 = self->_clientToken;

  return v11;
}

- (unint64_t)credentialAccessibility
{
  v3 = [(MFAccount *)self oauth2Token];
  v4 = [v3 length];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = GmailAccount;
  return [(MFAccount *)&v6 credentialAccessibility];
}

- (int64_t)archiveDestinationForMailbox:(id)a3
{
  v4.receiver = self;
  v4.super_class = GmailAccount;
  result = [(MailAccount *)&v4 archiveDestinationForMailbox:a3];
  if (result == 2)
  {
    return -500;
  }

  return result;
}

- (id)emailAddressStrings
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(MFAccount *)self username];
  v3 = v2;
  if (v2)
  {
    v7[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setPassword:(id)a3
{
  v4 = a3;
  v5 = [(GmailAccount *)self _deliveryAccountCreateIfNeeded:0];
  v6 = v5;
  if (v5)
  {
    [v5 setPassword:v4];
  }

  v7.receiver = self;
  v7.super_class = GmailAccount;
  [(MFAccount *)&v7 setPassword:v4];
}

+ (BOOL)deliveryAccountUsesSSL
{
  v2 = [a1 standardAccountClass:a1 valueForKey:@"DeliverySSLEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (unsigned)deliveryAccountPortNumber
{
  v2 = [a1 standardAccountClass:a1 valueForKey:@"DeliveryPortNumber"];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3
{
  if (a3)
  {
    v4 = objc_alloc_init(MFGmailSMTPAccount);
    [(MFGmailSMTPAccount *)v4 setMailAccount:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)emptyFrequencyForMailboxType:(int64_t)a3
{
  if (a3 == 3)
  {
    return -1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = GmailAccount;
  return [(MailAccount *)&v6 emptyFrequencyForMailboxType:?];
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v13 = a4;
  v7 = a5;
  if ([v13 previousFailureCount] > 2)
  {
    v7[2](v7, 2, 0);
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E695AC48]);
    v9 = [(MFAccount *)self username];
    v10 = [(MFAccount *)self password];
    v11 = [v8 initWithUser:v9 password:v10 persistence:1];

    [(GmailAccount *)self mf_lock];
    objc_storeStrong(&self->_credential, v11);
    [(GmailAccount *)self mf_unlock];
    v12 = [v13 sender];
    [v12 useCredential:v11 forAuthenticationChallenge:v13];

    (v7)[2](v7, 0, self->_credential);
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a5;
  v8 = a6;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 statusCode] == 200)
  {
    [(GmailAccount *)self mf_lock];
    [(EFPromise *)self->_enablingPromise finishWithResult:MEMORY[0x1E695E118]];
    [(GmailAccount *)self mf_unlock];
  }

  v8[2](v8, 1);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a5;
  [(GmailAccount *)self mf_lock];
  v6 = self->_enablingPromise;
  enablingPromise = self->_enablingPromise;
  self->_enablingPromise = 0;

  [(GmailAccount *)self mf_unlock];
  if (v8)
  {
    [(EFPromise *)v6 finishWithError:?];
  }

  else
  {
    [(EFPromise *)v6 finishWithResult:MEMORY[0x1E695E110]];
  }
}

- (id)_webLoginErrorWithURL:(id)a3
{
  v4 = a3;
  v5 = MFLookupLocalizedString(@"VERIFICATION_REQUIRED_TITLE", @"Verification Required", @"Delayed");
  v6 = MEMORY[0x1E696AEC0];
  v7 = MFLookupLocalizedString(@"WEBLOGIN_PROMPT_FORMAT", @"Log in to your %@ account", @"Delayed");
  v8 = [objc_opt_class() displayedAccountTypeString];
  v9 = [(MailAccount *)self displayName];
  v10 = [v6 stringWithFormat:v7, v8, v9];

  v11 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v10, @"UserFriendlyErrorDescription", MEMORY[0x1E695E118], @"MailErrorHandlerDoNotSanitize", 0}];
  v12 = v11;
  if (v4)
  {
    [v11 setObject:v4 forKeyedSubscript:@"RequestedWebLoginURLKey"];
  }

  v13 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1059 localizedDescription:v10 title:v5 userInfo:v12];

  return v13;
}

- (id)_URLFromUncleanString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stringByRemovingPercentEncoding];
    if (v5)
    {
      v6 = [MEMORY[0x1E695DFF8] ef_gmailAuthAllowedCharacterSet];
      v7 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v6];

      if (v7)
      {
        v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)errorForResponse:(id)a3
{
  v4 = a3;
  if ([v4 responseCode] != 34)
  {
    goto LABEL_9;
  }

  v5 = [v4 responseInfo];
  if ([v5 count] <= 1)
  {

LABEL_9:
    v11.receiver = self;
    v11.super_class = GmailAccount;
    v8 = [(IMAPAccount *)&v11 errorForResponse:v4];
    goto LABEL_10;
  }

  v6 = [v5 objectAtIndex:0];
  v7 = [v5 objectAtIndex:1];
  if ([@"xwebalert" caseInsensitiveCompare:v6] && (objc_msgSend(@"webalert", "isEqualToString:", v6) & 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(GmailAccount *)self _URLFromUncleanString:v7];
    v8 = [(GmailAccount *)self _webLoginErrorWithURL:v9];
  }

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

- (void)_removeCredential:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  v5 = [v4 allCredentials];
  [v5 allKeys];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v6 = v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, v14}];
        v12 = [v11 allValues];
        if ([v12 containsObject:v3])
        {
          [v4 removeCredential:v3 forProtectionSpace:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)enableAccount
{
  [(GmailAccount *)self mf_lock];
  if (self->_enablingPromise)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E699B868]);
  enablingPromise = self->_enablingPromise;
  self->_enablingPromise = v4;

  v6 = [(EFPromise *)self->_enablingPromise future];
  [(GmailAccount *)self mf_unlock];
  v7 = objc_opt_class();
  v8 = [v7 standardAccountClass:objc_opt_class() valueForKey:@"EnableSchema"];
  v9 = objc_opt_class();
  v27 = [v9 standardAccountClass:objc_opt_class() valueForKey:@"EnableHost"];
  v10 = objc_opt_class();
  v26 = [v10 standardAccountClass:objc_opt_class() valueForKey:@"EnablePath"];
  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v26, @"apple"];
  v11 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v11 setScheme:v8];
  [v11 setHost:v27];
  [v11 setPath:v29];
  v28 = [v11 URL];
  v12 = [objc_alloc(MEMORY[0x1E695AC18]) initWithURL:v28];
  [v12 setHTTPMethod:@"POST"];
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = EFProductName();
  v15 = EFSystemBuildVersion();
  v16 = [v13 initWithFormat:@"%@ (%@)", v14, v15];

  [v12 setValue:v16 forHTTPHeaderField:*MEMORY[0x1E699B188]];
  [(GmailAccount *)self mf_lock];
  v17 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
  v18 = [(MFAccount *)self sourceApplicationBundleIdentifier];
  [v17 set_sourceApplicationBundleIdentifier:v18];

  v19 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v17 delegate:self delegateQueue:0];
  v20 = [v19 dataTaskWithRequest:v12];
  [(GmailAccount *)self mf_unlock];
  if (v20)
  {
    v25 = v8;
    [v20 resume];
    v21 = [v6 resultWithTimeout:0 error:60.0];
    v3 = [v21 BOOLValue];

    [(GmailAccount *)self mf_lock];
    [v19 invalidateAndCancel];

    v22 = self->_credential;
    credential = self->_credential;
    self->_credential = 0;

    [(GmailAccount *)self mf_unlock];
    [(GmailAccount *)self _removeCredential:v22];

    v8 = v25;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldEnableAfterError:(id)a3
{
  v3 = [a3 localizedDescription];
  v4 = [v3 hasPrefix:@"Your account is not enabled for IMAP use."];

  return v4;
}

- (id)specialUseAttributeForType:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = @"\\All";
  }

  else
  {
    v5.receiver = self;
    v5.super_class = GmailAccount;
    v3 = [(IMAPAccount *)&v5 specialUseAttributeForType:?];
  }

  return v3;
}

- (id)specialUseAttributesForMailbox:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GmailAccount;
  v5 = [(IMAPAccount *)&v11 specialUseAttributesForMailbox:v4];
  v6 = [v4 extraAttributes];
  v7 = [v6 containsObject:@"\\Important"];

  if (v7)
  {
    if (v5)
    {
      v8 = [v5 mutableCopy];
      [v8 addObject:@"\\Important"];
      goto LABEL_7;
    }

    v9 = [MEMORY[0x1E695DFD8] setWithObject:@"\\Important"];
  }

  else
  {
    v9 = v5;
  }

  v8 = v9;
LABEL_7:

  return v8;
}

- (id)displayNameUsingSpecialNamesForMailboxUid:(id)a3
{
  v4 = a3;
  if ([v4 mailboxType] == 2)
  {
    v5 = MFLookupLocalizedString(@"GMAIL_ALL_MAIL_SPECIAL_MAILBOX_NAME", @"All Mail", @"Message");
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GmailAccount;
    v5 = [(MailAccount *)&v8 displayNameUsingSpecialNamesForMailboxUid:v4];
  }

  v6 = v5;

  return v6;
}

- (BOOL)canMailboxBeRenamed:(id)a3
{
  v4 = a3;
  v5 = [(GmailAccount *)self persistentNameForMailbox:v4];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GmailAccount;
    v6 = [(MailAccount *)&v8 canMailboxBeRenamed:v4];
  }

  return v6;
}

- (id)persistentNameForMailbox:(id)a3
{
  v3 = [(GmailAccount *)self specialUseAttributesForMailbox:a3];
  v4 = [v3 count];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [v3 anyObject];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"self" ascending:1];
      v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, 0}];
      v9 = [v3 sortedArrayUsingDescriptors:v8];
      v5 = [v9 firstObject];
    }

    v10 = v5;
    if ([v10 isEqualToString:@"\\All"])
    {
      v6 = @"\\AllMail";
    }

    else if ([v10 isEqualToString:@"\\Junk"])
    {
      v6 = @"\\Spam";
    }

    else if ([v10 isEqualToString:@"\\Flagged"])
    {
      v6 = @"\\Starred";
    }

    else
    {
      v11 = @"\\Drafts";
      if ([v10 isEqualToString:@"\\Drafts"] & 1) != 0 || (v11 = @"\\Sent", (objc_msgSend(v10, "isEqualToString:", @"\\Sent")) || (v11 = @"\\Trash", (objc_msgSend(v10, "isEqualToString:", @"\\Trash")))
      {
        v6 = v11;
      }

      else
      {
        v6 = @"\\Important";
        if (![v10 isEqualToString:@"\\Important"])
        {
          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_childOfMailbox:(id)a3 withComponentName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = GmailAccount;
  v8 = [(MailAccount *)&v14 _childOfMailbox:v6 withComponentName:v7];
  if (!v8)
  {
    v9 = v7;
    if ([v9 isEqualToString:@"\\AllMail"])
    {
      v10 = &IMAPMailboxSpecialUseAttributeAll;
    }

    else if ([v9 isEqualToString:@"\\Spam"])
    {
      v10 = &IMAPMailboxSpecialUseAttributeJunk;
    }

    else
    {
      if (![v9 isEqualToString:@"\\Starred"])
      {
        v11 = @"\\Drafts";
        if (([v9 isEqualToString:@"\\Drafts"] & 1) == 0)
        {
          v11 = @"\\Sent";
          if (([v9 isEqualToString:@"\\Sent"] & 1) == 0)
          {
            v11 = @"\\Trash";
            if (([v9 isEqualToString:@"\\Trash"] & 1) == 0)
            {
              v12 = @"\\Important";
              if (![v9 isEqualToString:@"\\Important"])
              {
                v12 = 0;
              }

              goto LABEL_10;
            }
          }
        }

LABEL_9:
        v12 = v11;
LABEL_10:

        if ([v9 isEqualToString:v12])
        {
          v8 = 0;
        }

        else
        {
          v8 = [v6 childWithExtraAttribute:v12];
        }

        goto LABEL_14;
      }

      v10 = &IMAPMailboxSpecialUseAttributeFlagged;
    }

    v11 = *v10;
    goto LABEL_9;
  }

LABEL_14:

  return v8;
}

@end