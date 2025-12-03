@interface GmailAccount
+ (BOOL)deliveryAccountUsesSSL;
+ (id)authSchemesForAccountClass;
+ (unsigned)deliveryAccountPortNumber;
- (BOOL)canMailboxBeRenamed:(id)renamed;
- (BOOL)enableAccount;
- (BOOL)shouldEnableAfterError:(id)error;
- (GmailAccount)initWithLibrary:(id)library persistentAccount:(id)account;
- (id)_URLFromUncleanString:(id)string;
- (id)_childOfMailbox:(id)mailbox withComponentName:(id)name;
- (id)_consumeExistingPreAuthToken;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed;
- (id)_webLoginErrorWithURL:(id)l;
- (id)accountStore;
- (id)clientToken;
- (id)displayNameUsingSpecialNamesForMailboxUid:(id)uid;
- (id)emailAddressStrings;
- (id)errorForResponse:(id)response;
- (id)hostname;
- (id)persistentNameForMailbox:(id)mailbox;
- (id)specialUseAttributeForType:(int64_t)type;
- (id)specialUseAttributesForMailbox:(id)mailbox;
- (int)emptyFrequencyForMailboxType:(int64_t)type;
- (int64_t)archiveDestinationForMailbox:(id)mailbox;
- (unint64_t)credentialAccessibility;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)_deleteHook;
- (void)_removeCredential:(id)credential;
- (void)persistentAccountDidChange:(id)change previousAccount:(id)account;
- (void)setPassword:(id)password;
@end

@implementation GmailAccount

- (GmailAccount)initWithLibrary:(id)library persistentAccount:(id)account
{
  v7.receiver = self;
  v7.super_class = GmailAccount;
  v4 = [(IMAPAccount *)&v7 initWithLibrary:library persistentAccount:account];
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

  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___GmailAccount;
  v3 = objc_msgSendSuper2(&v5, sel_authSchemesForAccountClass);

  return v3;
}

- (id)hostname
{
  v2 = objc_opt_class();

  return [v2 hostname];
}

- (void)persistentAccountDidChange:(id)change previousAccount:(id)account
{
  changeCopy = change;
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = GmailAccount;
  [(MailAccount *)&v9 persistentAccountDidChange:changeCopy previousAccount:accountCopy];
  [(GmailAccount *)self mf_lock];
  clientToken = self->_clientToken;
  self->_clientToken = 0;

  [(GmailAccount *)self mf_unlock];
}

- (void)_deleteHook
{
  username = [(MFAccount *)self username];
  [MFMessageKeychainManager removePasswordForServiceName:@"IDToken" accountName:?];
}

- (id)_consumeExistingPreAuthToken
{
  username = [(MFAccount *)self username];
  v6 = 0;
  v3 = [MFMessageKeychainManager passwordForServiceName:@"IDToken" accountName:username synchronizable:0 error:&v6];
  v4 = v6;
  [MFMessageKeychainManager removePasswordForServiceName:@"IDToken" accountName:username];

  return v3;
}

- (id)accountStore
{
  v2 = +[MFAccountStore sharedAccountStore];
  persistentStore = [v2 persistentStore];

  return persistentStore;
}

- (id)clientToken
{
  [(GmailAccount *)self mf_lock];
  if (!self->_clientToken)
  {
    _consumeExistingPreAuthToken = [(GmailAccount *)self _consumeExistingPreAuthToken];
    if (!_consumeExistingPreAuthToken)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];

      _consumeExistingPreAuthToken = uUIDString;
    }

    persistentAccount = [(MFAccount *)self persistentAccount];
    accountStore = [(GmailAccount *)self accountStore];
    if (([accountStore addClientToken:_consumeExistingPreAuthToken forAccount:persistentAccount] & 1) == 0)
    {
      v8 = [accountStore clientTokenForAccount:persistentAccount];

      _consumeExistingPreAuthToken = v8;
    }

    if (!_consumeExistingPreAuthToken)
    {
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "#Warning failed to get client token", v13, 2u);
      }
    }

    clientToken = self->_clientToken;
    self->_clientToken = _consumeExistingPreAuthToken;
  }

  [(GmailAccount *)self mf_unlock];
  v11 = self->_clientToken;

  return v11;
}

- (unint64_t)credentialAccessibility
{
  oauth2Token = [(MFAccount *)self oauth2Token];
  v4 = [oauth2Token length];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = GmailAccount;
  return [(MFAccount *)&v6 credentialAccessibility];
}

- (int64_t)archiveDestinationForMailbox:(id)mailbox
{
  v4.receiver = self;
  v4.super_class = GmailAccount;
  result = [(MailAccount *)&v4 archiveDestinationForMailbox:mailbox];
  if (result == 2)
  {
    return -500;
  }

  return result;
}

- (id)emailAddressStrings
{
  v7[1] = *MEMORY[0x1E69E9840];
  username = [(MFAccount *)self username];
  v3 = username;
  if (username)
  {
    v7[0] = username;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setPassword:(id)password
{
  passwordCopy = password;
  v5 = [(GmailAccount *)self _deliveryAccountCreateIfNeeded:0];
  v6 = v5;
  if (v5)
  {
    [v5 setPassword:passwordCopy];
  }

  v7.receiver = self;
  v7.super_class = GmailAccount;
  [(MFAccount *)&v7 setPassword:passwordCopy];
}

+ (BOOL)deliveryAccountUsesSSL
{
  v2 = [self standardAccountClass:self valueForKey:@"DeliverySSLEnabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (unsigned)deliveryAccountPortNumber
{
  v2 = [self standardAccountClass:self valueForKey:@"DeliveryPortNumber"];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed
{
  if (needed)
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

- (int)emptyFrequencyForMailboxType:(int64_t)type
{
  if (type == 3)
  {
    return -1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = GmailAccount;
  return [(MailAccount *)&v6 emptyFrequencyForMailboxType:?];
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  if ([challengeCopy previousFailureCount] > 2)
  {
    handlerCopy[2](handlerCopy, 2, 0);
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E695AC48]);
    username = [(MFAccount *)self username];
    password = [(MFAccount *)self password];
    v11 = [v8 initWithUser:username password:password persistence:1];

    [(GmailAccount *)self mf_lock];
    objc_storeStrong(&self->_credential, v11);
    [(GmailAccount *)self mf_unlock];
    sender = [challengeCopy sender];
    [sender useCredential:v11 forAuthenticationChallenge:challengeCopy];

    (handlerCopy)[2](handlerCopy, 0, self->_credential);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [responseCopy statusCode] == 200)
  {
    [(GmailAccount *)self mf_lock];
    [(EFPromise *)self->_enablingPromise finishWithResult:MEMORY[0x1E695E118]];
    [(GmailAccount *)self mf_unlock];
  }

  handlerCopy[2](handlerCopy, 1);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  errorCopy = error;
  [(GmailAccount *)self mf_lock];
  v6 = self->_enablingPromise;
  enablingPromise = self->_enablingPromise;
  self->_enablingPromise = 0;

  [(GmailAccount *)self mf_unlock];
  if (errorCopy)
  {
    [(EFPromise *)v6 finishWithError:?];
  }

  else
  {
    [(EFPromise *)v6 finishWithResult:MEMORY[0x1E695E110]];
  }
}

- (id)_webLoginErrorWithURL:(id)l
{
  lCopy = l;
  v5 = MFLookupLocalizedString(@"VERIFICATION_REQUIRED_TITLE", @"Verification Required", @"Delayed");
  v6 = MEMORY[0x1E696AEC0];
  v7 = MFLookupLocalizedString(@"WEBLOGIN_PROMPT_FORMAT", @"Log in to your %@ account", @"Delayed");
  displayedAccountTypeString = [objc_opt_class() displayedAccountTypeString];
  displayName = [(MailAccount *)self displayName];
  v10 = [v6 stringWithFormat:v7, displayedAccountTypeString, displayName];

  v11 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v10, @"UserFriendlyErrorDescription", MEMORY[0x1E695E118], @"MailErrorHandlerDoNotSanitize", 0}];
  v12 = v11;
  if (lCopy)
  {
    [v11 setObject:lCopy forKeyedSubscript:@"RequestedWebLoginURLKey"];
  }

  v13 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1059 localizedDescription:v10 title:v5 userInfo:v12];

  return v13;
}

- (id)_URLFromUncleanString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    stringByRemovingPercentEncoding = [stringCopy stringByRemovingPercentEncoding];
    if (stringByRemovingPercentEncoding)
    {
      ef_gmailAuthAllowedCharacterSet = [MEMORY[0x1E695DFF8] ef_gmailAuthAllowedCharacterSet];
      v7 = [stringByRemovingPercentEncoding stringByAddingPercentEncodingWithAllowedCharacters:ef_gmailAuthAllowedCharacterSet];

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

- (id)errorForResponse:(id)response
{
  responseCopy = response;
  if ([responseCopy responseCode] != 34)
  {
    goto LABEL_9;
  }

  responseInfo = [responseCopy responseInfo];
  if ([responseInfo count] <= 1)
  {

LABEL_9:
    v11.receiver = self;
    v11.super_class = GmailAccount;
    v8 = [(IMAPAccount *)&v11 errorForResponse:responseCopy];
    goto LABEL_10;
  }

  v6 = [responseInfo objectAtIndex:0];
  v7 = [responseInfo objectAtIndex:1];
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

- (void)_removeCredential:(id)credential
{
  v19 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  mEMORY[0x1E695AC50] = [MEMORY[0x1E695AC50] sharedCredentialStorage];
  allCredentials = [mEMORY[0x1E695AC50] allCredentials];
  [allCredentials allKeys];
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
        v11 = [allCredentials objectForKey:{v10, v14}];
        allValues = [v11 allValues];
        if ([allValues containsObject:credentialCopy])
        {
          [mEMORY[0x1E695AC50] removeCredential:credentialCopy forProtectionSpace:v10];
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

  future = [(EFPromise *)self->_enablingPromise future];
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
  ephemeralSessionConfiguration = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
  sourceApplicationBundleIdentifier = [(MFAccount *)self sourceApplicationBundleIdentifier];
  [ephemeralSessionConfiguration set_sourceApplicationBundleIdentifier:sourceApplicationBundleIdentifier];

  v19 = [MEMORY[0x1E695AC78] sessionWithConfiguration:ephemeralSessionConfiguration delegate:self delegateQueue:0];
  v20 = [v19 dataTaskWithRequest:v12];
  [(GmailAccount *)self mf_unlock];
  if (v20)
  {
    v25 = v8;
    [v20 resume];
    v21 = [future resultWithTimeout:0 error:60.0];
    bOOLValue = [v21 BOOLValue];

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
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)shouldEnableAfterError:(id)error
{
  localizedDescription = [error localizedDescription];
  v4 = [localizedDescription hasPrefix:@"Your account is not enabled for IMAP use."];

  return v4;
}

- (id)specialUseAttributeForType:(int64_t)type
{
  if (type == 2)
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

- (id)specialUseAttributesForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v11.receiver = self;
  v11.super_class = GmailAccount;
  v5 = [(IMAPAccount *)&v11 specialUseAttributesForMailbox:mailboxCopy];
  extraAttributes = [mailboxCopy extraAttributes];
  v7 = [extraAttributes containsObject:@"\\Important"];

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

- (id)displayNameUsingSpecialNamesForMailboxUid:(id)uid
{
  uidCopy = uid;
  if ([uidCopy mailboxType] == 2)
  {
    v5 = MFLookupLocalizedString(@"GMAIL_ALL_MAIL_SPECIAL_MAILBOX_NAME", @"All Mail", @"Message");
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GmailAccount;
    v5 = [(MailAccount *)&v8 displayNameUsingSpecialNamesForMailboxUid:uidCopy];
  }

  v6 = v5;

  return v6;
}

- (BOOL)canMailboxBeRenamed:(id)renamed
{
  renamedCopy = renamed;
  v5 = [(GmailAccount *)self persistentNameForMailbox:renamedCopy];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = GmailAccount;
    v6 = [(MailAccount *)&v8 canMailboxBeRenamed:renamedCopy];
  }

  return v6;
}

- (id)persistentNameForMailbox:(id)mailbox
{
  v3 = [(GmailAccount *)self specialUseAttributesForMailbox:mailbox];
  v4 = [v3 count];
  if (v4)
  {
    if (v4 == 1)
    {
      anyObject = [v3 anyObject];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"self" ascending:1];
      v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, 0}];
      v9 = [v3 sortedArrayUsingDescriptors:v8];
      anyObject = [v9 firstObject];
    }

    v10 = anyObject;
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

- (id)_childOfMailbox:(id)mailbox withComponentName:(id)name
{
  mailboxCopy = mailbox;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = GmailAccount;
  v8 = [(MailAccount *)&v14 _childOfMailbox:mailboxCopy withComponentName:nameCopy];
  if (!v8)
  {
    v9 = nameCopy;
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
          v8 = [mailboxCopy childWithExtraAttribute:v12];
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