@interface YahooAccount
+ (BOOL)deliveryAccountUsesSSL;
+ (BOOL)isSSLEditable;
+ (BOOL)usesSSL;
+ (id)authSchemesForAccountClass;
+ (id)emailAddressWithUsername:(id)a3;
+ (unsigned)deliveryAccountPortNumber;
- (YahooAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4;
- (id)URLForMessage:(id)a3;
- (id)_defaultSpecialMailboxNameForType:(int)a3;
- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3;
- (id)displayUsername;
- (id)emailAddresses;
- (id)hostname;
- (id)saveSentFolder;
- (id)transferDisabledMailboxUids;
- (unint64_t)credentialAccessibility;
- (unsigned)portNumber;
- (void)dealloc;
@end

@implementation YahooAccount

- (YahooAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4
{
  v6.receiver = self;
  v6.super_class = YahooAccount;
  v4 = [(IMAPAccount *)&v6 initWithLibrary:a3 persistentAccount:a4];
  if (v4 && RegisterYahooAuthSchemes_onceToken != -1)
  {
    [YahooAccount initWithLibrary:persistentAccount:];
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = YahooAccount;
  [(IMAPAccount *)&v2 dealloc];
}

+ (id)authSchemesForAccountClass
{
  if (RegisterYahooAuthSchemes_onceToken != -1)
  {
    +[YahooAccount authSchemesForAccountClass];
  }

  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___YahooAccount;
  return objc_msgSendSuper2(&v4, sel_authSchemesForAccountClass);
}

+ (BOOL)isSSLEditable
{
  v3 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (v3)
  {

    return [v3 BOOLValue];
  }

  else
  {
    v5.receiver = a1;
    v5.super_class = &OBJC_METACLASS___YahooAccount;
    return objc_msgSendSuper2(&v5, sel_isSSLEditable);
  }
}

+ (BOOL)usesSSL
{
  v2 = [a1 predefinedValueForKey:*MEMORY[0x277D28378]];

  return [v2 BOOLValue];
}

- (unsigned)portNumber
{
  v3 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (v3)
  {

    return [v3 unsignedIntValue];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = YahooAccount;
    return [(MFAccount *)&v5 portNumber];
  }
}

- (id)hostname
{
  v2 = objc_opt_class();

  return [v2 hostname];
}

- (unint64_t)credentialAccessibility
{
  if ([-[MFAccount oauth2Token](self "oauth2Token")])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = YahooAccount;
  return [(MFAccount *)&v4 credentialAccessibility];
}

- (id)_defaultSpecialMailboxNameForType:(int)a3
{
  v5 = a3 - 1;
  if (a3 - 1) < 5 && ((0x1Du >> v5))
  {
    return off_2798B2308[v5];
  }

  v8 = v3;
  v9 = v4;
  v7.receiver = self;
  v7.super_class = YahooAccount;
  return [(MailAccount *)&v7 _defaultSpecialMailboxNameForType:?];
}

+ (id)emailAddressWithUsername:(id)a3
{
  v3 = a3;
  if (a3)
  {
    if ([a3 isEqualToString:&stru_2869E1DA0])
    {
      return 0;
    }

    else if ([v3 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%@@yahoo.com", v3];
    }
  }

  return v3;
}

- (id)emailAddresses
{
  v4[1] = *MEMORY[0x277D85DE8];
  result = [objc_opt_class() emailAddressWithUsername:{-[MFAccount username](self, "username")}];
  if (result)
  {
    v4[0] = result;
    result = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)transferDisabledMailboxUids
{
  v4[1] = *MEMORY[0x277D85DE8];
  result = [(MailAccount *)self mailboxUidOfType:1 createIfNeeded:0];
  if (result)
  {
    v4[0] = result;
    result = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)URLForMessage:(id)a3
{
  v4 = [a3 headersIfAvailable];
  v5 = [v4 firstHeaderForKey:*MEMORY[0x277D24E80]];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [a3 mailbox];
  if (v7 == [objc_msgSend(a3 "account")])
  {
    v8 = @"Inbox";
  }

  else
  {
    v8 = [objc_msgSend(a3 "mailbox")];
    if (!v8)
    {
      return 0;
    }
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = -[__CFString stringByAddingPercentEncodingWithAllowedCharacters:](v8, "stringByAddingPercentEncodingWithAllowedCharacters:", [MEMORY[0x277CBEBC0] ef_defaultAllowedCharacterSet]);
  return [v10 stringWithFormat:@"ymail://?fid=%@&mid=%@", v11, objc_msgSend(v6, "stringByAddingPercentEncodingWithAllowedCharacters:", objc_msgSend(MEMORY[0x277CBEBC0], "ef_defaultAllowedCharacterSet"))];
}

- (id)saveSentFolder
{
  result = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];
  if (result)
  {

    return [(IMAPAccount *)self nameForMailboxUid:result];
  }

  return result;
}

+ (BOOL)deliveryAccountUsesSSL
{
  v2 = [a1 standardAccountClass:a1 valueForKey:*MEMORY[0x277D282D8]];

  return [v2 BOOLValue];
}

+ (unsigned)deliveryAccountPortNumber
{
  v2 = [a1 standardAccountClass:a1 valueForKey:*MEMORY[0x277D282D0]];

  return [v2 unsignedIntValue];
}

- (id)_deliveryAccountCreateIfNeeded:(BOOL)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = objc_alloc_init(MFYahooSMTPAccount);
  [(MFYahooSMTPAccount *)v4 setMailAccount:self];
  return v4;
}

- (id)displayUsername
{
  v2 = [(MFAccount *)self username];
  [(NSString *)v2 rangeOfString:@"@"];
  if (v3)
  {
    return v2;
  }

  else
  {
    return -[NSString stringByAppendingFormat:](v2, "stringByAppendingFormat:", @"@%@", [objc_opt_class() emailAddressHostPart]);
  }
}

@end