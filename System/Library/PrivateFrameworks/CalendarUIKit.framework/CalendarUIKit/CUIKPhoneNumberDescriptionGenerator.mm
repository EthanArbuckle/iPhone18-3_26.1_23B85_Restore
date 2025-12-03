@interface CUIKPhoneNumberDescriptionGenerator
+ (id)normalizedPhoneNumber:(id)number;
+ (id)sharedGenerator;
- (id)formattedStringForPhoneNumber:(id)number;
- (id)formattedStringForTelURL:(id)l;
@end

@implementation CUIKPhoneNumberDescriptionGenerator

+ (id)sharedGenerator
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CUIKPhoneNumberDescriptionGenerator_sharedGenerator__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (id)formattedStringForPhoneNumber:(id)number
{
  numberCopy = number;
  defaultCountryCode = [EKWeakLinkClass() defaultCountryCode];
  v5 = numberCopy;
  v6 = EKWeakLinkSymbol();
  v7 = v6(0, v5, defaultCountryCode);
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

- (id)formattedStringForTelURL:(id)l
{
  resourceSpecifier = [l resourceSpecifier];
  v5 = [resourceSpecifier componentsSeparatedByString:@"?"];
  firstObject = [v5 firstObject];

  lastPathComponent = [firstObject lastPathComponent];
  stringByRemovingPercentEncoding = [lastPathComponent stringByRemovingPercentEncoding];

  v9 = [(CUIKPhoneNumberDescriptionGenerator *)self formattedStringForPhoneNumber:stringByRemovingPercentEncoding];

  return v9;
}

+ (id)normalizedPhoneNumber:(id)number
{
  numberCopy = number;
  lowercaseString = PNCopyBestGuessCountryCodeForNumber();
  if (!lowercaseString)
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v6 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];
    lowercaseString = [v6 lowercaseString];
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