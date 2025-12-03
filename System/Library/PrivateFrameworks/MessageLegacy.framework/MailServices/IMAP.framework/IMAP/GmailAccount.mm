@interface GmailAccount
+ (BOOL)deliveryAccountUsesSSL;
+ (id)authSchemesForAccountClass;
+ (unsigned)deliveryAccountPortNumber;
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
- (id)emailAddresses;
- (id)errorForResponse:(id)response;
- (id)hostname;
- (id)persistentNameForMailbox:(id)mailbox;
- (id)specialUseAttributeForType:(int)type;
- (id)specialUseAttributesForMailbox:(id)mailbox;
- (int)archiveDestinationForMailbox:(id)mailbox;
- (int)emptyFrequencyForMailboxType:(int)type;
- (unint64_t)credentialAccessibility;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)_deleteHook;
- (void)_removeCredential:(id)credential;
- (void)dealloc;
- (void)persistentAccountDidChange:(id)change previousAccount:(id)account;
- (void)setPassword:(id)password;
@end

@implementation GmailAccount

- (GmailAccount)initWithLibrary:(id)library persistentAccount:(id)account
{
  v6.receiver = self;
  v6.super_class = GmailAccount;
  v4 = [(IMAPAccount *)&v6 initWithLibrary:library persistentAccount:account];
  if (v4 && RegisterGmailAuthSchemes_onceToken != -1)
  {
    [GmailAccount initWithLibrary:persistentAccount:];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GmailAccount;
  [(IMAPAccount *)&v3 dealloc];
}

+ (id)authSchemesForAccountClass
{
  if (RegisterGmailAuthSchemes_onceToken != -1)
  {
    +[GmailAccount authSchemesForAccountClass];
  }

  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___GmailAccount;
  return objc_msgSendSuper2(&v4, sel_authSchemesForAccountClass);
}

- (id)hostname
{
  v2 = objc_opt_class();

  return [v2 hostname];
}

- (void)persistentAccountDidChange:(id)change previousAccount:(id)account
{
  v5.receiver = self;
  v5.super_class = GmailAccount;
  [(MailAccount *)&v5 persistentAccountDidChange:change previousAccount:account];
  [(GmailAccount *)self mf_lock];

  self->_clientToken = 0;
  [(GmailAccount *)self mf_unlock];
}

- (void)_deleteHook
{
  v2 = MEMORY[0x277D28460];
  username = [(MFAccount *)self username];

  [v2 removePasswordForServiceName:@"IDToken" accountName:username];
}

- (id)_consumeExistingPreAuthToken
{
  username = [(MFAccount *)self username];
  v5 = 0;
  v3 = [MEMORY[0x277D28460] passwordForServiceName:@"IDToken" accountName:username synchronizable:0 error:&v5];
  [MEMORY[0x277D28460] removePasswordForServiceName:@"IDToken" accountName:username];
  return v3;
}

- (id)accountStore
{
  mEMORY[0x277D283F0] = [MEMORY[0x277D283F0] sharedAccountStore];

  return [mEMORY[0x277D283F0] persistentStore];
}

- (id)clientToken
{
  [(GmailAccount *)self mf_lock];
  if (!self->_clientToken)
  {
    _consumeExistingPreAuthToken = [(GmailAccount *)self _consumeExistingPreAuthToken];
    if (!_consumeExistingPreAuthToken)
    {
      _consumeExistingPreAuthToken = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
    }

    persistentAccount = [(MFAccount *)self persistentAccount];
    accountStore = [(GmailAccount *)self accountStore];
    if (([accountStore addClientToken:_consumeExistingPreAuthToken forAccount:persistentAccount] & 1) == 0)
    {
      _consumeExistingPreAuthToken = [accountStore clientTokenForAccount:persistentAccount];
    }

    if (!_consumeExistingPreAuthToken)
    {
      v6 = MFLogGeneral();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_258B7A000, v6, OS_LOG_TYPE_DEFAULT, "#Warning failed to get client token", v8, 2u);
      }
    }

    self->_clientToken = _consumeExistingPreAuthToken;
  }

  [(GmailAccount *)self mf_unlock];
  return self->_clientToken;
}

- (unint64_t)credentialAccessibility
{
  if ([-[MFAccount oauth2Token](self "oauth2Token")])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = GmailAccount;
  return [(MFAccount *)&v4 credentialAccessibility];
}

- (int)archiveDestinationForMailbox:(id)mailbox
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

- (id)emailAddresses
{
  v4[1] = *MEMORY[0x277D85DE8];
  result = [(MFAccount *)self username];
  if (result)
  {
    v4[0] = result;
    result = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)setPassword:(id)password
{
  v5 = [(GmailAccount *)self _deliveryAccountCreateIfNeeded:0];
  if (v5)
  {
    [v5 setPassword:password];
  }

  v6.receiver = self;
  v6.super_class = GmailAccount;
  [(MFAccount *)&v6 setPassword:password];
}

+ (BOOL)deliveryAccountUsesSSL
{
  v2 = [self standardAccountClass:self valueForKey:*MEMORY[0x277D282D8]];

  return [v2 BOOLValue];
}

+ (unsigned)deliveryAccountPortNumber
{
  v2 = [self standardAccountClass:self valueForKey:*MEMORY[0x277D282D0]];

  return [v2 unsignedIntValue];
}

- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed
{
  if (!needed)
  {
    return 0;
  }

  v4 = objc_alloc_init(MFGmailSMTPAccount);
  [(MFGmailSMTPAccount *)v4 setMailAccount:self];
  return v4;
}

- (int)emptyFrequencyForMailboxType:(int)type
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
  if ([challenge previousFailureCount] > 2)
  {
    v8 = *(handler + 2);

    v8(handler, 2, 0);
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBAB80]) initWithUser:-[MFAccount username](self password:"username") persistence:{-[MFAccount password](self, "password"), 1}];
    [(GmailAccount *)self mf_lock];

    self->_credential = v9;
    [(GmailAccount *)self mf_unlock];
    [objc_msgSend(challenge "sender")];
    (*(handler + 2))(handler, 0, self->_credential);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && [response statusCode] == 200)
  {
    [(GmailAccount *)self mf_lock];
    [(EFPromise *)self->_enablingPromise finishWithResult:MEMORY[0x277CBEC38]];
    [(GmailAccount *)self mf_unlock];
  }

  v9 = *(handler + 2);

  v9(handler, 1);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  [(GmailAccount *)self mf_lock:session];
  enablingPromise = self->_enablingPromise;
  self->_enablingPromise = 0;
  [(GmailAccount *)self mf_unlock];
  if (error)
  {
    [(EFPromise *)enablingPromise finishWithError:error];
  }

  else
  {
    [(EFPromise *)enablingPromise finishWithResult:MEMORY[0x277CBEC28]];
  }
}

- (id)_webLoginErrorWithURL:(id)l
{
  v5 = MFLookupLocalizedString();
  v6 = MEMORY[0x277CCACA8];
  v7 = MFLookupLocalizedString();
  v8 = [v6 stringWithFormat:v7, objc_msgSend(objc_opt_class(), "displayedAccountTypeString"), -[MailAccount displayName](self, "displayName")];
  v9 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v8, *MEMORY[0x277D28340], MEMORY[0x277CBEC38], @"MailErrorHandlerDoNotSanitize", 0}];
  v10 = v9;
  if (l)
  {
    [v9 setObject:l forKeyedSubscript:*MEMORY[0x277D28330]];
  }

  v11 = MEMORY[0x277D28410];
  v12 = *MEMORY[0x277D282F8];

  return [v11 errorWithDomain:v12 code:1058 localizedDescription:v8 title:v5 userInfo:v10];
}

- (id)_URLFromUncleanString:(id)string
{
  if (!string)
  {
    return 0;
  }

  stringByRemovingPercentEncoding = [string stringByRemovingPercentEncoding];
  if (!stringByRemovingPercentEncoding)
  {
    return 0;
  }

  v4 = [stringByRemovingPercentEncoding stringByAddingPercentEncodingWithAllowedCharacters:{objc_msgSend(MEMORY[0x277CBEBC0], "ef_gmailAuthAllowedCharacterSet")}];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = MEMORY[0x277CBEBC0];

  return [v6 URLWithString:v5];
}

- (id)errorForResponse:(id)response
{
  if ([response responseCode] != 34 || (v5 = objc_msgSend(response, "responseInfo"), objc_msgSend(v5, "count") < 2) || (v6 = objc_msgSend(v5, "objectAtIndex:", 0), v7 = objc_msgSend(v5, "objectAtIndex:", 1), objc_msgSend(@"xwebalert", "caseInsensitiveCompare:", v6)) && (objc_msgSend(@"webalert", "isEqualToString:", v6) & 1) != 0 || (result = -[GmailAccount _webLoginErrorWithURL:](self, "_webLoginErrorWithURL:", -[GmailAccount _URLFromUncleanString:](self, "_URLFromUncleanString:", v7))) == 0)
  {
    v9.receiver = self;
    v9.super_class = GmailAccount;
    return [(IMAPAccount *)&v9 errorForResponse:response];
  }

  return result;
}

- (void)_removeCredential:(id)credential
{
  v18 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CBAB88] = [MEMORY[0x277CBAB88] sharedCredentialStorage];
  allCredentials = [mEMORY[0x277CBAB88] allCredentials];
  allKeys = [allCredentials allKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(allCredentials objectForKey:{v11), "allValues"), "containsObject:", credential}])
        {
          [mEMORY[0x277CBAB88] removeCredential:credential forProtectionSpace:v11];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)enableAccount
{
  [(GmailAccount *)self mf_lock];
  if (self->_enablingPromise)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x277D071A8]);
  self->_enablingPromise = v4;
  future = [(EFPromise *)v4 future];
  [(GmailAccount *)self mf_unlock];
  v6 = objc_opt_class();
  v7 = [v6 standardAccountClass:objc_opt_class() valueForKey:@"EnableSchema"];
  v8 = objc_opt_class();
  v9 = [v8 standardAccountClass:objc_opt_class() valueForKey:@"EnableHost"];
  v10 = objc_opt_class();
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:objc_msgSend(v10, "standardAccountClass:valueForKey:", objc_opt_class(), @"EnablePath", @"apple"];
  v12 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v12 setScheme:v7];
  [v12 setHost:v9];
  [v12 setPath:v11];
  v13 = [v12 URL];

  v14 = [objc_alloc(MEMORY[0x277CBAB50]) initWithURL:v13];
  [v14 setHTTPMethod:@"POST"];
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = EFProductName();
  v17 = [v15 initWithFormat:@"%@ (%@)", v16, EFSystemBuildVersion()];
  [v14 setValue:v17 forHTTPHeaderField:*MEMORY[0x277D07040]];

  [(GmailAccount *)self mf_lock];
  ephemeralSessionConfiguration = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
  v19 = [MEMORY[0x277CBABB8] sessionWithConfiguration:ephemeralSessionConfiguration delegate:self delegateQueue:0];
  v20 = [v19 dataTaskWithRequest:v14];
  [(GmailAccount *)self mf_unlock];

  if (!v20)
  {
    return 0;
  }

  [v20 resume];
  v21 = [objc_msgSend(future resultWithTimeout:0 error:{60.0), "BOOLValue"}];
  [(GmailAccount *)self mf_lock];
  [v19 invalidateAndCancel];
  v22 = self->_credential;

  self->_credential = 0;
  [(GmailAccount *)self mf_unlock];
  [(GmailAccount *)self _removeCredential:v22];

  return v21;
}

- (BOOL)shouldEnableAfterError:(id)error
{
  localizedDescription = [error localizedDescription];

  return [localizedDescription hasPrefix:@"Your account is not enabled for IMAP use."];
}

- (id)specialUseAttributeForType:(int)type
{
  if (type == 2)
  {
    return @"\\All";
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = GmailAccount;
  return [(IMAPAccount *)&v6 specialUseAttributeForType:?];
}

- (id)specialUseAttributesForMailbox:(id)mailbox
{
  v8.receiver = self;
  v8.super_class = GmailAccount;
  v4 = [(IMAPAccount *)&v8 specialUseAttributesForMailbox:?];
  if ([objc_msgSend(mailbox "extraAttributes")])
  {
    if (!v4)
    {
      return [MEMORY[0x277CBEB98] setWithObject:@"\\Important"];
    }

    v5 = [v4 mutableCopy];
    [v5 addObject:@"\\Important"];
    return v5;
  }

  return v4;
}

- (id)displayNameUsingSpecialNamesForMailboxUid:(id)uid
{
  if ([uid type] == 2)
  {

    return MFLookupLocalizedString();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = GmailAccount;
    return [(MailAccount *)&v6 displayNameUsingSpecialNamesForMailboxUid:uid];
  }
}

- (id)persistentNameForMailbox:(id)mailbox
{
  v3 = [(GmailAccount *)self specialUseAttributesForMailbox:mailbox];
  v4 = [v3 count];
  if (!v4)
  {
    return 0;
  }

  if (v4 == 1)
  {
    anyObject = [v3 anyObject];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
    v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v7, 0}];

    v9 = [v3 sortedArrayUsingDescriptors:v8];
    anyObject = [v9 firstObject];
  }

  v10 = anyObject;
  if ([anyObject isEqualToString:@"\\All"])
  {
    return @"\\AllMail";
  }

  if ([v10 isEqualToString:@"\\Junk"])
  {
    return @"\\Spam";
  }

  if ([v10 isEqualToString:@"\\Flagged"])
  {
    return @"\\Starred";
  }

  v6 = @"\\Drafts";
  if (([v10 isEqualToString:@"\\Drafts"] & 1) == 0)
  {
    v6 = @"\\Sent";
    if (([v10 isEqualToString:@"\\Sent"] & 1) == 0)
    {
      v6 = @"\\Trash";
      if (([v10 isEqualToString:@"\\Trash"] & 1) == 0)
      {
        v6 = @"\\Important";
        if (![v10 isEqualToString:@"\\Important"])
        {
          return 0;
        }
      }
    }
  }

  return v6;
}

- (id)_childOfMailbox:(id)mailbox withComponentName:(id)name
{
  v9.receiver = self;
  v9.super_class = GmailAccount;
  result = [MailAccount _childOfMailbox:sel__childOfMailbox_withComponentName_ withComponentName:?];
  if (!result)
  {
    if ([name isEqualToString:@"\\AllMail"])
    {
      v7 = &IMAPMailboxSpecialUseAttributeAll;
    }

    else if ([name isEqualToString:@"\\Spam"])
    {
      v7 = &IMAPMailboxSpecialUseAttributeJunk;
    }

    else
    {
      if (![name isEqualToString:@"\\Starred"])
      {
        v8 = @"\\Drafts";
        if (([name isEqualToString:@"\\Drafts"] & 1) == 0)
        {
          v8 = @"\\Sent";
          if (([name isEqualToString:@"\\Sent"] & 1) == 0)
          {
            v8 = @"\\Trash";
            if (([name isEqualToString:@"\\Trash"] & 1) == 0)
            {
              v8 = @"\\Important";
              if (![name isEqualToString:@"\\Important"])
              {
                v8 = 0;
              }
            }
          }
        }

        goto LABEL_9;
      }

      v7 = &IMAPMailboxSpecialUseAttributeFlagged;
    }

    v8 = *v7;
LABEL_9:
    if ([name isEqualToString:v8])
    {
      return 0;
    }

    else
    {
      return [mailbox childWithExtraAttribute:v8];
    }
  }

  return result;
}

@end