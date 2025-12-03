@interface MFSignatures
+ (id)sharedInstance;
+ (id)signatureMarkupFormat:(id)format;
+ (id)signaturePlainTextFormat:(id)format;
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
- (void)clearSignature;
- (void)setSignature:(id)signature;
- (void)setSignature:(id)signature forAccount:(id)account;
- (void)setSignature:(id)signature forEmailAddress:(id)address;
@end

@implementation MFSignatures

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__MFSignatures_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  v2 = sharedInstance_singleton;

  return v2;
}

void __30__MFSignatures_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_singleton;
  sharedInstance_singleton = v1;
}

- (MFSignatures)init
{
  v3.receiver = self;
  v3.super_class = MFSignatures;
  return [(MFSignatures *)&v3 init];
}

- (id)_modelSpecificLocalizedStringKeyForKey:(id)key
{
  keyCopy = key;
  v4 = MGCopyAnswer();
  uppercaseString = [v4 uppercaseString];
  v6 = [uppercaseString stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  if ([v6 hasSuffix:@"_SIMULATOR"])
  {
    v7 = [v6 substringToIndex:{objc_msgSend(v6, "rangeOfString:", @"_SIMULATOR"}];

    v6 = v7;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", keyCopy, v6];

  return v8;
}

- (id)defaultSignature
{
  v2 = [(MFSignatures *)self _modelSpecificLocalizedStringKeyForKey:@"DEFAULT_SIGNATURE"];
  v3 = v2;
  if (v2)
  {
    v4 = MFLookupLocalizedString(v2, 0, 0);
  }

  else
  {
    v4 = 0;
  }

  if (![v4 length])
  {
    v5 = MFLookupLocalizedString(@"DEFAULT_SIGNATURE_IPHONE", @"Sent from my iPhone", @"Message");

    v4 = v5;
  }

  return v4;
}

- (id)_getValue:(id)value
{
  valueCopy = value;
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v5 = [em_userDefaults stringForKey:valueCopy];

  return v5;
}

- (id)signature
{
  defaultSignature = [(MFSignatures *)self _getValue:@"SignatureKey"];
  if (!defaultSignature)
  {
    defaultSignature = [(MFSignatures *)self defaultSignature];
  }

  return defaultSignature;
}

- (void)setSignature:(id)signature
{
  signatureCopy = signature;
  defaultSignature = [(MFSignatures *)self defaultSignature];
  if ([signatureCopy isEqualToString:defaultSignature])
  {
    v5 = 0;
  }

  else
  {
    v5 = signatureCopy;
  }

  v6 = v5;

  signature = [(MFSignatures *)self signature];
  v8 = [v6 isEqualToString:signature];

  if ((v8 & 1) == 0)
  {
    em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
    [em_userDefaults setObject:v6 forKey:@"SignatureKey"];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mail.MailAccountSignaturesChanged", 0, 0, 0);
  }
}

- (void)clearSignature
{
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  [em_userDefaults setObject:0 forKey:@"SignatureKey"];
}

- (BOOL)useAccountSignatures
{
  v2 = [(MFSignatures *)self _getValue:@"UseAccountSignatures"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)signatureForAccount:(id)account
{
  accountCopy = account;
  v4 = accountCopy;
  if (accountCopy)
  {
    customSignature = [accountCopy customSignature];
  }

  else
  {
    customSignature = 0;
  }

  return customSignature;
}

- (void)setSignature:(id)signature forAccount:(id)account
{
  signatureCopy = signature;
  accountCopy = account;
  defaultSignature = [(MFSignatures *)self defaultSignature];
  if ([signatureCopy isEqualToString:defaultSignature])
  {
    v8 = 0;
  }

  else
  {
    v8 = signatureCopy;
  }

  v9 = v8;

  if (accountCopy)
  {
    v10 = [(MFSignatures *)self signatureForAccount:accountCopy];
    v11 = [v9 isEqualToString:v10];

    if ((v11 & 1) == 0)
    {
      [accountCopy setCustomSignature:v9];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mail.MailAccountSignaturesChanged", 0, 0, 0);
    }
  }
}

- (id)signatureForSendingEmailAddress:(id)address
{
  addressCopy = address;
  if (![addressCopy length] || (+[MailAccount accountContainingEmailAddress:](MailAccount, "accountContainingEmailAddress:", addressCopy), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = +[MailAccount defaultMailAccountForDelivery];
  }

  if (![(MFSignatures *)self useAccountSignatures]|| ([(MFSignatures *)self signatureForAccount:v5], (signature = objc_claimAutoreleasedReturnValue()) == 0))
  {
    signature = [(MFSignatures *)self signature];
  }

  v7 = [MEMORY[0x1E69AD6C8] plainTextFromHTMLSnippet:signature];
  v8 = [v7 length];

  if (!v8)
  {

    signature = 0;
  }

  return signature;
}

- (void)setSignature:(id)signature forEmailAddress:(id)address
{
  signatureCopy = signature;
  addressCopy = address;
  if (![addressCopy length] || (+[MailAccount accountContainingEmailAddress:](MailAccount, "accountContainingEmailAddress:", addressCopy), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = +[MailAccount defaultMailAccountForDelivery];
  }

  [(MFSignatures *)self setSignature:signatureCopy forAccount:v7];
}

- (id)signatureMarkupForSendingEmailAddress:(id)address
{
  v3 = [(MFSignatures *)self signatureForSendingEmailAddress:address];
  v4 = [MFSignatures signatureMarkupFormat:v3];

  return v4;
}

- (id)signaturePlainTextForSendingEmailAddress:(id)address
{
  v3 = [(MFSignatures *)self signatureForSendingEmailAddress:address];
  v4 = [MFSignatures signaturePlainTextFormat:v3];

  return v4;
}

+ (id)signatureMarkupFormat:(id)format
{
  formatCopy = format;
  if ([formatCopy length])
  {
    v4 = [@"<br/><br/>" stringByAppendingString:formatCopy];
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = formatCopy;
  }

  v6 = v5;

  return v5;
}

+ (id)signaturePlainTextFormat:(id)format
{
  formatCopy = format;
  if ([formatCopy length])
  {
    v4 = [MEMORY[0x1E69AD6C8] plainTextFromHTMLSnippet:formatCopy];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v7 = [@"\n\n" stringByAppendingString:v6];
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = formatCopy;
  }

  v9 = v8;

  return v8;
}

@end