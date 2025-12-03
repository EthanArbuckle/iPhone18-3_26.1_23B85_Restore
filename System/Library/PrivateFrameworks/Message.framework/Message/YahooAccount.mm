@interface YahooAccount
+ (BOOL)deliveryAccountUsesSSL;
+ (BOOL)getConfigurationFromServerForEmail:(id)email;
+ (BOOL)isSSLEditable;
+ (BOOL)usesSSL;
+ (id)authSchemesForAccountClass;
+ (id)emailAddressWithUsername:(id)username;
+ (unsigned)deliveryAccountPortNumber;
- (YahooAccount)initWithLibrary:(id)library persistentAccount:(id)account;
- (id)URLForMessage:(id)message;
- (id)_defaultSpecialMailboxNameForType:(int64_t)type;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)needed;
- (id)displayUsername;
- (id)emailAddressStrings;
- (id)hostname;
- (id)saveSentFolder;
- (id)transferDisabledMailboxUids;
- (unint64_t)credentialAccessibility;
- (unsigned)portNumber;
@end

@implementation YahooAccount

- (YahooAccount)initWithLibrary:(id)library persistentAccount:(id)account
{
  v7.receiver = self;
  v7.super_class = YahooAccount;
  v4 = [(IMAPAccount *)&v7 initWithLibrary:library persistentAccount:account];
  if (v4)
  {
    if (RegisterYahooAuthSchemes_onceToken[0] != -1)
    {
      [YahooAccount initWithLibrary:persistentAccount:];
    }

    v5 = v4;
  }

  return v4;
}

+ (id)authSchemesForAccountClass
{
  if (RegisterYahooAuthSchemes_onceToken[0] != -1)
  {
    +[YahooAccount authSchemesForAccountClass];
  }

  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___YahooAccount;
  v3 = objc_msgSendSuper2(&v5, sel_authSchemesForAccountClass);

  return v3;
}

+ (BOOL)isSSLEditable
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults valueForKey:@"YahooAllowSSL"];

  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___YahooAccount;
    bOOLValue = objc_msgSendSuper2(&v8, sel_isSSLEditable);
  }

  v6 = bOOLValue;

  return v6;
}

+ (BOOL)usesSSL
{
  v2 = [self predefinedValueForKey:@"SSLEnabled"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unsigned)portNumber
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"YahooIMAPPort"];

  if (v4)
  {
    unsignedIntValue = [v4 unsignedIntValue];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = YahooAccount;
    unsignedIntValue = [(MFAccount *)&v8 portNumber];
  }

  v6 = unsignedIntValue;

  return v6;
}

- (id)hostname
{
  v2 = objc_opt_class();

  return [v2 hostname];
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
  v6.super_class = YahooAccount;
  return [(MFAccount *)&v6 credentialAccessibility];
}

- (id)_defaultSpecialMailboxNameForType:(int64_t)type
{
  v5 = type - 1;
  if (type - 1) < 5 && ((0x1Du >> v5))
  {
    v6 = off_1E7AA7E80[v5];
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v8.receiver = self;
    v8.super_class = YahooAccount;
    v6 = [(MailAccount *)&v8 _defaultSpecialMailboxNameForType:?];
  }

  return v6;
}

+ (id)emailAddressWithUsername:(id)username
{
  usernameCopy = username;
  v4 = usernameCopy;
  if (usernameCopy && ([usernameCopy isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    if ([v4 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@yahoo.com", v4];
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

- (id)transferDisabledMailboxUids
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(MailAccount *)self mailboxUidOfType:1 createIfNeeded:0];
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

- (id)URLForMessage:(id)message
{
  messageCopy = message;
  headersIfAvailable = [messageCopy headersIfAvailable];
  v5 = [headersIfAvailable firstHeaderForKey:*MEMORY[0x1E69AD638]];
  if (!v5)
  {
    goto LABEL_4;
  }

  mailbox = [messageCopy mailbox];
  account = [messageCopy account];
  primaryMailboxUid = [account primaryMailboxUid];

  if (mailbox == primaryMailboxUid)
  {
    name = @"Inbox";
  }

  else
  {
    mailbox2 = [messageCopy mailbox];
    name = [mailbox2 name];

    if (!name)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_7;
    }
  }

  v12 = MEMORY[0x1E696AEC0];
  ef_defaultAllowedCharacterSet = [MEMORY[0x1E695DFF8] ef_defaultAllowedCharacterSet];
  v14 = [(__CFString *)name stringByAddingPercentEncodingWithAllowedCharacters:ef_defaultAllowedCharacterSet];
  ef_defaultAllowedCharacterSet2 = [MEMORY[0x1E695DFF8] ef_defaultAllowedCharacterSet];
  v16 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:ef_defaultAllowedCharacterSet2];
  v11 = [v12 stringWithFormat:@"ymail://?fid=%@&mid=%@", v14, v16];

LABEL_7:

  return v11;
}

+ (BOOL)getConfigurationFromServerForEmail:(id)email
{
  emailCopy = email;
  v4 = [emailCopy rangeOfString:@"yahoo.co.jp" options:4] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(emailCopy, "rangeOfString:options:", @"ybb.ne.jp", 4) != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
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
    v4 = objc_alloc_init(MFYahooSMTPAccount);
    [(MFYahooSMTPAccount *)v4 setMailAccount:self];
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