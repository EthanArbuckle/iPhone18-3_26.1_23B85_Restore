@interface MFSignatures
+ (id)sharedInstance;
+ (id)signatureMarkupFormat:(id)a3;
+ (id)signaturePlainTextFormat:(id)a3;
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
- (void)clearSignature;
- (void)setSignature:(id)a3;
- (void)setSignature:(id)a3 forAccount:(id)a4;
- (void)setSignature:(id)a3 forEmailAddress:(id)a4;
@end

@implementation MFSignatures

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__MFSignatures_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)_modelSpecificLocalizedStringKeyForKey:(id)a3
{
  v3 = a3;
  v4 = MGCopyAnswer();
  v5 = [v4 uppercaseString];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  if ([v6 hasSuffix:@"_SIMULATOR"])
  {
    v7 = [v6 substringToIndex:{objc_msgSend(v6, "rangeOfString:", @"_SIMULATOR"}];

    v6 = v7;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v3, v6];

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

- (id)_getValue:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695E000] em_userDefaults];
  v5 = [v4 stringForKey:v3];

  return v5;
}

- (id)signature
{
  v3 = [(MFSignatures *)self _getValue:@"SignatureKey"];
  if (!v3)
  {
    v3 = [(MFSignatures *)self defaultSignature];
  }

  return v3;
}

- (void)setSignature:(id)a3
{
  v11 = a3;
  v4 = [(MFSignatures *)self defaultSignature];
  if ([v11 isEqualToString:v4])
  {
    v5 = 0;
  }

  else
  {
    v5 = v11;
  }

  v6 = v5;

  v7 = [(MFSignatures *)self signature];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [MEMORY[0x1E695E000] em_userDefaults];
    [v9 setObject:v6 forKey:@"SignatureKey"];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mail.MailAccountSignaturesChanged", 0, 0, 0);
  }
}

- (void)clearSignature
{
  v2 = [MEMORY[0x1E695E000] em_userDefaults];
  [v2 setObject:0 forKey:@"SignatureKey"];
}

- (BOOL)useAccountSignatures
{
  v2 = [(MFSignatures *)self _getValue:@"UseAccountSignatures"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)signatureForAccount:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 customSignature];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSignature:(id)a3 forAccount:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(MFSignatures *)self defaultSignature];
  if ([v13 isEqualToString:v7])
  {
    v8 = 0;
  }

  else
  {
    v8 = v13;
  }

  v9 = v8;

  if (v6)
  {
    v10 = [(MFSignatures *)self signatureForAccount:v6];
    v11 = [v9 isEqualToString:v10];

    if ((v11 & 1) == 0)
    {
      [v6 setCustomSignature:v9];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.mail.MailAccountSignaturesChanged", 0, 0, 0);
    }
  }
}

- (id)signatureForSendingEmailAddress:(id)a3
{
  v4 = a3;
  if (![v4 length] || (+[MailAccount accountContainingEmailAddress:](MailAccount, "accountContainingEmailAddress:", v4), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = +[MailAccount defaultMailAccountForDelivery];
  }

  if (![(MFSignatures *)self useAccountSignatures]|| ([(MFSignatures *)self signatureForAccount:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [(MFSignatures *)self signature];
  }

  v7 = [MEMORY[0x1E69AD6C8] plainTextFromHTMLSnippet:v6];
  v8 = [v7 length];

  if (!v8)
  {

    v6 = 0;
  }

  return v6;
}

- (void)setSignature:(id)a3 forEmailAddress:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (![v6 length] || (+[MailAccount accountContainingEmailAddress:](MailAccount, "accountContainingEmailAddress:", v6), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = +[MailAccount defaultMailAccountForDelivery];
  }

  [(MFSignatures *)self setSignature:v8 forAccount:v7];
}

- (id)signatureMarkupForSendingEmailAddress:(id)a3
{
  v3 = [(MFSignatures *)self signatureForSendingEmailAddress:a3];
  v4 = [MFSignatures signatureMarkupFormat:v3];

  return v4;
}

- (id)signaturePlainTextForSendingEmailAddress:(id)a3
{
  v3 = [(MFSignatures *)self signatureForSendingEmailAddress:a3];
  v4 = [MFSignatures signaturePlainTextFormat:v3];

  return v4;
}

+ (id)signatureMarkupFormat:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [@"<br/><br/>" stringByAppendingString:v3];
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
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

+ (id)signaturePlainTextFormat:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E69AD6C8] plainTextFromHTMLSnippet:v3];
    v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];

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
    v8 = v3;
  }

  v9 = v8;

  return v8;
}

@end