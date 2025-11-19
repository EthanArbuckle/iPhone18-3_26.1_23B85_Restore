@interface CUIKPhoneNumberDescriptionGenerator
+ (id)normalizedPhoneNumber:(id)a3;
+ (id)sharedGenerator;
- (id)formattedStringForPhoneNumber:(id)a3;
- (id)formattedStringForTelURL:(id)a3;
@end

@implementation CUIKPhoneNumberDescriptionGenerator

+ (id)sharedGenerator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CUIKPhoneNumberDescriptionGenerator_sharedGenerator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedGenerator_onceToken != -1)
  {
    dispatch_once(&sharedGenerator_onceToken, block);
  }

  v2 = sharedGenerator___sharedInstance;

  return v2;
}

uint64_t __54__CUIKPhoneNumberDescriptionGenerator_sharedGenerator__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedGenerator___sharedInstance;
  sharedGenerator___sharedInstance = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)formattedStringForPhoneNumber:(id)a3
{
  v3 = a3;
  v4 = [EKWeakLinkClass() defaultCountryCode];
  v5 = v3;
  v6 = EKWeakLinkSymbol();
  v7 = v6(0, v5, v4);
  v8 = v5;
  if (v7)
  {
    v9 = v7;
    v10 = EKWeakLinkSymbol();
    v8 = v10(0, v9, 5);

    CFRelease(v9);
  }

  return v8;
}

- (id)formattedStringForTelURL:(id)a3
{
  v4 = [a3 resourceSpecifier];
  v5 = [v4 componentsSeparatedByString:@"?"];
  v6 = [v5 firstObject];

  v7 = [v6 lastPathComponent];
  v8 = [v7 stringByRemovingPercentEncoding];

  v9 = [(CUIKPhoneNumberDescriptionGenerator *)self formattedStringForPhoneNumber:v8];

  return v9;
}

+ (id)normalizedPhoneNumber:(id)a3
{
  v3 = a3;
  v4 = PNCopyBestGuessCountryCodeForNumber();
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DF58] currentLocale];
    v6 = [v5 objectForKey:*MEMORY[0x1E695D978]];
    v4 = [v6 lowercaseString];
  }

  v7 = PNCopyBestGuessNormalizedNumberForCountry();
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v7 length:strlen(v7) encoding:4 freeWhenDone:1];
  v9 = CFPhoneNumberCreate();
  String = CFPhoneNumberCreateString();
  if (!String)
  {
    String = CFPhoneNumberCreateString();
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return String;
}

@end