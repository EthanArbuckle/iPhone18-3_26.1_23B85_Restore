@interface HotmailAccount
+ (BOOL)deliveryAccountUsesSSL;
+ (BOOL)usesSSL;
+ (id)authSchemesForAccountClass;
+ (id)emailAddressWithUsername:(id)username;
+ (unsigned)deliveryAccountPortNumber;
- (HotmailAccount)initWithLibrary:(id)library persistentAccount:(id)account;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed;
- (id)displayUsername;
- (id)emailAddressStrings;
- (id)hostname;
- (id)saveSentFolder;
- (unint64_t)credentialAccessibility;
- (unsigned)portNumber;
@end

@implementation HotmailAccount

- (HotmailAccount)initWithLibrary:(id)library persistentAccount:(id)account
{
  v7.receiver = self;
  v7.super_class = HotmailAccount;
  v4 = [(IMAPAccount *)&v7 initWithLibrary:library persistentAccount:account];
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

  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___HotmailAccount;
  v3 = objc_msgSendSuper2(&v5, sel_authSchemesForAccountClass);

  return v3;
}

+ (BOOL)usesSSL
{
  v2 = [self predefinedValueForKey:@"SSLEnabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  oauth2Token = [(MFAccount *)self oauth2Token];
  v4 = [oauth2Token length];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = HotmailAccount;
  return [(MFAccount *)&v6 credentialAccessibility];
}

+ (id)emailAddressWithUsername:(id)username
{
  usernameCopy = username;
  v4 = usernameCopy;
  if (usernameCopy && ([usernameCopy isEqualToString:&stru_1F273A5E0] & 1) == 0)
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
  username = [(MFAccount *)self username];
  v5 = [v3 emailAddressWithUsername:username];

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
  username = [(MFAccount *)self username];
  [username rangeOfString:@"@"];
  if (!v3)
  {
    emailAddressHostPart = [objc_opt_class() emailAddressHostPart];
    v5 = [username stringByAppendingFormat:@"@%@", emailAddressHostPart];

    username = v5;
  }

  return username;
}

@end