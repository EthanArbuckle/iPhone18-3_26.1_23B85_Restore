@interface HotmailAccount
+ (BOOL)deliveryAccountUsesSSL;
+ (BOOL)usesSSL;
+ (id)authSchemesForAccountClass;
+ (id)emailAddressWithUsername:(id)a3;
+ (unsigned)deliveryAccountPortNumber;
- (HotmailAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3;
- (id)displayUsername;
- (id)emailAddressStrings;
- (id)hostname;
- (id)saveSentFolder;
- (unint64_t)credentialAccessibility;
- (unsigned)portNumber;
@end

@implementation HotmailAccount

- (HotmailAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4
{
  v7.receiver = self;
  v7.super_class = HotmailAccount;
  v4 = [(IMAPAccount *)&v7 initWithLibrary:a3 persistentAccount:a4];
  if (v4)
  {
    if (RegisterHotmailAuthSchemes_onceToken != -1)
    {
      [HotmailAccount initWithLibrary:persistentAccount:];
    }

    v5 = v4;
  }

  return v4;
}

+ (id)authSchemesForAccountClass
{
  if (RegisterHotmailAuthSchemes_onceToken != -1)
  {
    +[HotmailAccount authSchemesForAccountClass];
  }

  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___HotmailAccount;
  v3 = objc_msgSendSuper2(&v5, sel_authSchemesForAccountClass);

  return v3;
}

+ (BOOL)usesSSL
{
  v2 = [a1 predefinedValueForKey:@"SSLEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)hostname
{
  v2 = objc_opt_class();

  return [v2 hostname];
}

- (unsigned)portNumber
{
  v3.receiver = self;
  v3.super_class = HotmailAccount;
  return [(MFAccount *)&v3 defaultSecurePortNumber];
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
  v6.super_class = HotmailAccount;
  return [(MFAccount *)&v6 credentialAccessibility];
}

+ (id)emailAddressWithUsername:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    if ([v4 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@outlook.com", v4];
    }

    else
    {
      v6 = v4;
    }

    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)emailAddressStrings
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = [(MFAccount *)self username];
  v5 = [v3 emailAddressWithUsername:v4];

  if (v5)
  {
    v9[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)saveSentFolder
{
  v3 = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];
  if (v3)
  {
    v4 = [(IMAPAccount *)self nameForMailboxUid:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
    v4 = objc_alloc_init(MFHotmailSMTPAccount);
    [(MFHotmailSMTPAccount *)v4 setMailAccount:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)displayUsername
{
  v2 = [(MFAccount *)self username];
  [v2 rangeOfString:@"@"];
  if (!v3)
  {
    v4 = [objc_opt_class() emailAddressHostPart];
    v5 = [v2 stringByAppendingFormat:@"@%@", v4];

    v2 = v5;
  }

  return v2;
}

@end