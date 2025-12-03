@interface MFSignatures
+ (id)sharedInstance;
+ (id)signatureMarkupFormat:(id)format;
+ (id)signaturePlainTextFormat:(id)format;
+ (id)stripSignatureMarkup:(id)markup;
- (BOOL)useAccountSignatures;
- (MFSignatures)init;
- (id)_getValue:(id)value;
- (id)_modelSpecificLocalizedStringKeyForKey:(id)key;
- (id)defaultSignature;
- (id)signature;
- (id)signatureForAccount:(id)account;
- (id)signatureForSendingEmailAddress:(id)address;
- (id)signatureMarkupForSendingEmailAddress:(id)address;
- (id)signaturePlainTextForSendingEmailAddress:(id)address;
- (void)_setValue:(id)value value:(void *)a4;
- (void)dealloc;
- (void)setSignature:(id)signature;
- (void)setSignature:(id)signature forAccount:(id)account;
- (void)setSignature:(id)signature forEmailAddress:(id)address;
@end

@implementation MFSignatures

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__MFSignatures_sharedInstance__block_invoke;
  block[3] = &unk_2798B61C0;
  block[4] = self;
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

- (id)_modelSpecificLocalizedStringKeyForKey:(id)key
{
  v4 = [objc_msgSend(MGCopyAnswer() "uppercaseString")];
  if ([v4 hasSuffix:@"_SIMULATOR"])
  {
    v4 = [v4 substringToIndex:{objc_msgSend(v4, "rangeOfString:", @"_SIMULATOR"}];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", key, v4];
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

- (id)_getValue:(id)value
{
  MFMobileMailPreferenceDomain();
  v3 = *MEMORY[0x277CBF040];
  v4 = *MEMORY[0x277CBF010];
  MFMobileMailContainerPath();
  v5 = _CFPreferencesCopyValueWithContainer();

  return v5;
}

- (void)_setValue:(id)value value:(void *)a4
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

    MEMORY[0x282167578](v7, value);
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

- (void)setSignature:(id)signature
{
  signatureCopy = signature;
  if ([signature isEqualToString:{-[MFSignatures defaultSignature](self, "defaultSignature")}])
  {
    signatureCopy = 0;
  }

  if (([signatureCopy isEqualToString:{-[MFSignatures signature](self, "signature")}] & 1) == 0)
  {
    [(MFSignatures *)self _setValue:@"SignatureKey" value:signatureCopy];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mail.MailAccountSignaturesChanged", 0, 0, 0);
  }
}

- (BOOL)useAccountSignatures
{
  v2 = [(MFSignatures *)self _getValue:@"UseAccountSignatures"];

  return [v2 BOOLValue];
}

- (id)signatureForAccount:(id)account
{
  if (account)
  {
    return [account customSignature];
  }

  else
  {
    return 0;
  }
}

- (void)setSignature:(id)signature forAccount:(id)account
{
  signatureCopy = signature;
  if ([signature isEqualToString:{-[MFSignatures defaultSignature](self, "defaultSignature")}])
  {
    signatureCopy = 0;
  }

  if (account && ([signatureCopy isEqualToString:{-[MFSignatures signatureForAccount:](self, "signatureForAccount:", account)}] & 1) == 0)
  {
    [account setCustomSignature:signatureCopy];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mail.MailAccountSignaturesChanged", 0, 0, 0);
  }
}

- (id)signatureForSendingEmailAddress:(id)address
{
  if (![address length] || (v5 = +[MailAccount accountContainingEmailAddress:](MailAccount, "accountContainingEmailAddress:", address)) == 0)
  {
    v5 = +[MailAccount defaultMailAccountForDelivery];
  }

  if (![(MFSignatures *)self useAccountSignatures]|| (signature = [(MFSignatures *)self signatureForAccount:v5]) == 0)
  {
    signature = [(MFSignatures *)self signature];
  }

  if ([objc_msgSend(MEMORY[0x277D24F18] plainTextFromHTMLSnippet:{signature), "length"}])
  {
    return signature;
  }

  else
  {
    return 0;
  }
}

- (void)setSignature:(id)signature forEmailAddress:(id)address
{
  if (![address length] || (v7 = +[MailAccount accountContainingEmailAddress:](MailAccount, "accountContainingEmailAddress:", address)) == 0)
  {
    v7 = +[MailAccount defaultMailAccountForDelivery];
  }

  [(MFSignatures *)self setSignature:signature forAccount:v7];
}

- (id)signatureMarkupForSendingEmailAddress:(id)address
{
  v3 = [(MFSignatures *)self signatureForSendingEmailAddress:address];

  return [MFSignatures signatureMarkupFormat:v3];
}

- (id)signaturePlainTextForSendingEmailAddress:(id)address
{
  v3 = [(MFSignatures *)self signatureForSendingEmailAddress:address];

  return [MFSignatures signaturePlainTextFormat:v3];
}

+ (id)signatureMarkupFormat:(id)format
{
  result = [format length];
  if (result)
  {
    result = [@"<br/><br/>" stringByAppendingString:format];
  }

  if (!result)
  {
    return format;
  }

  return result;
}

+ (id)signaturePlainTextFormat:(id)format
{
  result = [format length];
  if (result)
  {
    v5 = [MEMORY[0x277D24F18] plainTextFromHTMLSnippet:format];
    result = [@"\n\n" stringByAppendingString:{objc_msgSend(v5, "stringByTrimmingCharactersInSet:", objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet"))}];
  }

  if (!result)
  {
    return format;
  }

  return result;
}

+ (id)stripSignatureMarkup:(id)markup
{
  if ([markup length])
  {
    v4 = [markup mutableCopy];
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
    return markup;
  }
}

@end