@interface MFSignatures
+ (id)sharedInstance;
+ (id)signatureMarkupFormat:(id)a3;
+ (id)signaturePlainTextFormat:(id)a3;
+ (id)stripSignatureMarkup:(id)a3;
- (BOOL)useAccountSignatures;
- (MFSignatures)init;
- (id)_getValue:(id)a3;
- (id)_modelSpecificLocalizedStringKeyForKey:(id)a3;
- (id)defaultSignature;
- (id)signature;
- (id)signatureForAccount:(id)a3;
- (id)signatureForSendingEmailAddress:(id)a3;
- (id)signatureMarkupForSendingEmailAddress:(id)a3;
- (id)signaturePlainTextForSendingEmailAddress:(id)a3;
- (void)_setValue:(id)a3 value:(void *)a4;
- (void)dealloc;
- (void)setSignature:(id)a3;
- (void)setSignature:(id)a3 forAccount:(id)a4;
- (void)setSignature:(id)a3 forEmailAddress:(id)a4;
@end

@implementation MFSignatures

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__MFSignatures_sharedInstance__block_invoke;
  block[3] = &unk_2798B61C0;
  block[4] = a1;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  return sharedInstance_singleton;
}

id __30__MFSignatures_sharedInstance__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  sharedInstance_singleton = result;
  return result;
}

- (MFSignatures)init
{
  v3.receiver = self;
  v3.super_class = MFSignatures;
  return [(MFSignatures *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFSignatures;
  [(MFSignatures *)&v2 dealloc];
}

- (id)_modelSpecificLocalizedStringKeyForKey:(id)a3
{
  v4 = [objc_msgSend(MGCopyAnswer() "uppercaseString")];
  if ([v4 hasSuffix:@"_SIMULATOR"])
  {
    v4 = [v4 substringToIndex:{objc_msgSend(v4, "rangeOfString:", @"_SIMULATOR"}];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", a3, v4];
}

- (id)defaultSignature
{
  v2 = [(MFSignatures *)self _modelSpecificLocalizedStringKeyForKey:@"DEFAULT_SIGNATURE"];
  if (v2)
  {
    v3 = MFLookupLocalizedString(v2, 0, 0);
  }

  else
  {
    v3 = 0;
  }

  if ([v3 length])
  {
    return v3;
  }

  return MFLookupLocalizedString(@"DEFAULT_SIGNATURE_IPHONE", @"Sent from my iPhone", 0);
}

- (id)_getValue:(id)a3
{
  MFMobileMailPreferenceDomain();
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF010];
  MFMobileMailContainerPath();
  v5 = _CFPreferencesCopyValueWithContainer();

  return v5;
}

- (void)_setValue:(id)a3 value:(void *)a4
{
  MFMobileMailPreferenceDomain();
  v5 = *MEMORY[0x277CBF040];
  v6 = *MEMORY[0x277CBF010];
  MFMobileMailContainerPath();
  _CFPreferencesSetValueWithContainer();
  MFMobileMailContainerPath();
  if (_CFPreferencesSynchronizeWithContainer())
  {
    v7 = *MEMORY[0x277D28668];

    MEMORY[0x282167578](v7, a3);
  }
}

- (id)signature
{
  result = [(MFSignatures *)self _getValue:@"SignatureKey"];
  if (!result)
  {

    return [(MFSignatures *)self defaultSignature];
  }

  return result;
}

- (void)setSignature:(id)a3
{
  v3 = a3;
  if ([a3 isEqualToString:{-[MFSignatures defaultSignature](self, "defaultSignature")}])
  {
    v3 = 0;
  }

  if (([v3 isEqualToString:{-[MFSignatures signature](self, "signature")}] & 1) == 0)
  {
    [(MFSignatures *)self _setValue:@"SignatureKey" value:v3];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mail.MailAccountSignaturesChanged", 0, 0, 0);
  }
}

- (BOOL)useAccountSignatures
{
  v2 = [(MFSignatures *)self _getValue:@"UseAccountSignatures"];

  return [v2 BOOLValue];
}

- (id)signatureForAccount:(id)a3
{
  if (a3)
  {
    return [a3 customSignature];
  }

  else
  {
    return 0;
  }
}

- (void)setSignature:(id)a3 forAccount:(id)a4
{
  v5 = a3;
  if ([a3 isEqualToString:{-[MFSignatures defaultSignature](self, "defaultSignature")}])
  {
    v5 = 0;
  }

  if (a4 && ([v5 isEqualToString:{-[MFSignatures signatureForAccount:](self, "signatureForAccount:", a4)}] & 1) == 0)
  {
    [a4 setCustomSignature:v5];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mail.MailAccountSignaturesChanged", 0, 0, 0);
  }
}

- (id)signatureForSendingEmailAddress:(id)a3
{
  if (![a3 length] || (v5 = +[MailAccount accountContainingEmailAddress:](MailAccount, "accountContainingEmailAddress:", a3)) == 0)
  {
    v5 = +[MailAccount defaultMailAccountForDelivery];
  }

  if (![(MFSignatures *)self useAccountSignatures]|| (v6 = [(MFSignatures *)self signatureForAccount:v5]) == 0)
  {
    v6 = [(MFSignatures *)self signature];
  }

  if ([objc_msgSend(MEMORY[0x277D24F18] plainTextFromHTMLSnippet:{v6), "length"}])
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (void)setSignature:(id)a3 forEmailAddress:(id)a4
{
  if (![a4 length] || (v7 = +[MailAccount accountContainingEmailAddress:](MailAccount, "accountContainingEmailAddress:", a4)) == 0)
  {
    v7 = +[MailAccount defaultMailAccountForDelivery];
  }

  [(MFSignatures *)self setSignature:a3 forAccount:v7];
}

- (id)signatureMarkupForSendingEmailAddress:(id)a3
{
  v3 = [(MFSignatures *)self signatureForSendingEmailAddress:a3];

  return [MFSignatures signatureMarkupFormat:v3];
}

- (id)signaturePlainTextForSendingEmailAddress:(id)a3
{
  v3 = [(MFSignatures *)self signatureForSendingEmailAddress:a3];

  return [MFSignatures signaturePlainTextFormat:v3];
}

+ (id)signatureMarkupFormat:(id)a3
{
  result = [a3 length];
  if (result)
  {
    result = [@"<br/><br/>" stringByAppendingString:a3];
  }

  if (!result)
  {
    return a3;
  }

  return result;
}

+ (id)signaturePlainTextFormat:(id)a3
{
  result = [a3 length];
  if (result)
  {
    v5 = [MEMORY[0x277D24F18] plainTextFromHTMLSnippet:a3];
    result = [@"\n\n" stringByAppendingString:{objc_msgSend(v5, "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet"))}];
  }

  if (!result)
  {
    return a3;
  }

  return result;
}

+ (id)stripSignatureMarkup:(id)a3
{
  if ([a3 length])
  {
    v4 = [a3 mutableCopy];
    v9 = 0;
    v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?:<br[/]?>){2}" options:1 error:&v9];
    if (v5)
    {
      v6 = [v5 rangeOfFirstMatchInString:v4 options:4 range:{0, objc_msgSend(v4, "length")}];
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v4 deleteCharactersInRange:{v6, v7}];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    return a3;
  }
}

@end