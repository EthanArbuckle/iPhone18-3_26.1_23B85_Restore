@interface CNPhoneNumberHelper
+ (BOOL)isStringPhoneNumber:(id)number;
+ (NSString)currentCountryCode;
+ (NSString)homeCountryCode;
+ (id)countryCodeForNumber:(id)number;
+ (id)defaultCountryCode;
+ (id)internationalizedFormattedNumber:(id)number countryCode:(id)code;
+ (id)internationalizedUnformattedNumber:(id)number countryCode:(id)code;
+ (id)lastFourDigitsForNumber:(id)number;
+ (id)makePhoneNumberRegex;
+ (void)makePhoneNumberRegex;
@end

@implementation CNPhoneNumberHelper

+ (id)defaultCountryCode
{
  homeCountryCode = [self homeCountryCode];
  if (!homeCountryCode)
  {
    v3 = +[(CNEnvironmentBase *)CNEnvironment];
    currentLocale = [v3 currentLocale];
    v5 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];
    lowercaseString = [v5 lowercaseString];

    if (lowercaseString)
    {
      homeCountryCode = lowercaseString;
    }

    else
    {
      homeCountryCode = @"us";
    }
  }

  return homeCountryCode;
}

+ (NSString)homeCountryCode
{
  v2 = +[(CNEnvironmentBase *)CNEnvironment];
  homeCountryCode = [v2 homeCountryCode];

  return homeCountryCode;
}

+ (id)makePhoneNumberRegex
{
  v12 = 0;
  v2 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^[\u202D\u202A]?[\\s.'/\\- options:;\\[\\]<>()+[:Nd:]a-zA-Z*#-]{3 error:{100}+[\u202C]?$", 1, &v12}];
  v3 = v12;
  if (!v2)
  {
    v4 = +[CNLogging sdkBreakageLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CNPhoneNumberHelper *)v3 makePhoneNumberRegex:v4];
    }
  }

  return v2;
}

+ (id)lastFourDigitsForNumber:(id)number
{
  if (number)
  {
    numberCopy = number;
    v5 = [self countryCodeForNumber:numberCopy];
    FourDigitsOfLocalNumber = _PNCopyLastFourDigitsOfLocalNumber();
  }

  else
  {
    FourDigitsOfLocalNumber = 0;
  }

  return FourDigitsOfLocalNumber;
}

+ (NSString)currentCountryCode
{
  v2 = +[(CNEnvironmentBase *)CNEnvironment];
  currentCountryCode = [v2 currentCountryCode];

  return currentCountryCode;
}

+ (id)countryCodeForNumber:(id)number
{
  v4 = PNCopyBestGuessCountryCodeForNumber();
  if (off_1EF440708(&__block_literal_global_120, v4))
  {
    defaultCountryCode = [self defaultCountryCode];
  }

  else
  {
    defaultCountryCode = v4;
  }

  v6 = defaultCountryCode;

  return v6;
}

+ (id)internationalizedFormattedNumber:(id)number countryCode:(id)code
{
  codeCopy = code;
  v5 = PNCopyBestGuessNormalizedNumberForCountry();
  if (v5)
  {
    v6 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v5, 0x8000100u, *MEMORY[0x1E695E488]);
    v7 = CFPhoneNumberCreate();
    String = CFPhoneNumberCreateString();
    if (!String)
    {
      String = CFPhoneNumberCreateString();
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    String = 0;
  }

  return String;
}

+ (id)internationalizedUnformattedNumber:(id)number countryCode:(id)code
{
  codeCopy = code;
  v5 = PNCopyBestGuessNormalizedNumberForCountry();
  if (v5)
  {
    v6 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v5, 0x8000100u, *MEMORY[0x1E695E488]);
    v7 = CFPhoneNumberCreate();
    String = CFPhoneNumberCreateString();
    if (!String)
    {
      String = CFPhoneNumberCreateString();
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    String = 0;
  }

  return String;
}

+ (BOOL)isStringPhoneNumber:(id)number
{
  numberCopy = number;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CNPhoneNumberHelper_isStringPhoneNumber___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (isStringPhoneNumber__cn_once_token_1 != -1)
  {
    dispatch_once(&isStringPhoneNumber__cn_once_token_1, block);
  }

  if (isStringPhoneNumber__cn_once_object_1)
  {
    v5 = isStringPhoneNumber__cn_once_object_1;
    v6 = [v5 numberOfMatchesInString:numberCopy options:4 range:{0, objc_msgSend(numberCopy, "length")}];

    v7 = v6 == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __43__CNPhoneNumberHelper_isStringPhoneNumber___block_invoke(uint64_t a1)
{
  isStringPhoneNumber__cn_once_object_1 = [*(a1 + 32) makePhoneNumberRegex];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)makePhoneNumberRegex
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1859F0000, a2, a3, "Error creating phone number regex: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end