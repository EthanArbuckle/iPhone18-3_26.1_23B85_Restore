@interface YahooAccount
+ (BOOL)deliveryAccountUsesSSL;
+ (BOOL)getConfigurationFromServerForEmail:(id)a3;
+ (BOOL)isSSLEditable;
+ (BOOL)usesSSL;
+ (id)authSchemesForAccountClass;
+ (id)emailAddressWithUsername:(id)a3;
+ (unsigned)deliveryAccountPortNumber;
- (YahooAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4;
- (id)URLForMessage:(id)a3;
- (id)_defaultSpecialMailboxNameForType:(int64_t)a3;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3;
- (id)displayUsername;
- (id)emailAddressStrings;
- (id)hostname;
- (id)saveSentFolder;
- (id)transferDisabledMailboxUids;
- (unint64_t)credentialAccessibility;
- (unsigned)portNumber;
@end

@implementation YahooAccount

- (YahooAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4
{
  v7.receiver = self;
  v7.super_class = YahooAccount;
  v4 = [(IMAPAccount *)&v7 initWithLibrary:a3 persistentAccount:a4];
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

  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___YahooAccount;
  v3 = objc_msgSendSuper2(&v5, sel_authSchemesForAccountClass);

  return v3;
}

+ (BOOL)isSSLEditable
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 valueForKey:@"YahooAllowSSL"];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &OBJC_METACLASS___YahooAccount;
    v5 = objc_msgSendSuper2(&v8, sel_isSSLEditable);
  }

  v6 = v5;

  return v6;
}

+ (BOOL)usesSSL
{
  v2 = [a1 predefinedValueForKey:@"SSLEnabled"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unsigned)portNumber
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 objectForKey:@"YahooIMAPPort"];

  if (v4)
  {
    v5 = [v4 unsignedIntValue];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = YahooAccount;
    v5 = [(MFAccount *)&v8 portNumber];
  }

  v6 = v5;

  return v6;
}

- (id)hostname
{
  v2 = objc_opt_class();

  return [v2 hostname];
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
  v6.super_class = YahooAccount;
  return [(MFAccount *)&v6 credentialAccessibility];
}

- (id)_defaultSpecialMailboxNameForType:(int64_t)a3
{
  v5 = a3 - 1;
  if (a3 - 1) < 5 && ((0x1Du >> v5))
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

+ (id)emailAddressWithUsername:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isEqualToString:&stru_1F273A5E0] & 1) == 0)
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

- (id)URLForMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 headersIfAvailable];
  v5 = [v4 firstHeaderForKey:*MEMORY[0x1E69AD638]];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v3 mailbox];
  v7 = [v3 account];
  v8 = [v7 primaryMailboxUid];

  if (v6 == v8)
  {
    v10 = @"Inbox";
  }

  else
  {
    v9 = [v3 mailbox];
    v10 = [v9 name];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_7;
    }
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = [MEMORY[0x1E695DFF8] ef_defaultAllowedCharacterSet];
  v14 = [(__CFString *)v10 stringByAddingPercentEncodingWithAllowedCharacters:v13];
  v15 = [MEMORY[0x1E695DFF8] ef_defaultAllowedCharacterSet];
  v16 = [v5 stringByAddingPercentEncodingWithAllowedCharacters:v15];
  v11 = [v12 stringWithFormat:@"ymail://?fid=%@&mid=%@", v14, v16];

LABEL_7:

  return v11;
}

+ (BOOL)getConfigurationFromServerForEmail:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"yahoo.co.jp" options:4] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v3, "rangeOfString:options:", @"ybb.ne.jp", 4) != 0x7FFFFFFFFFFFFFFFLL;

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