@interface MKMessagePhoneNumber
+ (id)addCountryCallingCode:(id)code;
+ (id)addDefaultCountryCallingCode:(id)code number:(id)number;
+ (id)countryCallingCode:(id)code;
@end

@implementation MKMessagePhoneNumber

+ (id)addCountryCallingCode:(id)code
{
  codeCopy = code;
  if (addCountryCallingCode__onceToken != -1)
  {
    +[MKMessagePhoneNumber addCountryCallingCode:];
  }

  if (![codeCopy length])
  {
    goto LABEL_39;
  }

  v4 = [codeCopy hasPrefix:@"+"];
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (![codeCopy length])
  {
LABEL_16:
    if (v4)
    {
      v11 = [@"+" stringByAppendingString:v5];
      goto LABEL_18;
    }

    v13 = PNCopyBestGuessNormalizedNumberForCountry();
    if (v13)
    {
      v14 = v13;
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v13];
      if ([v15 length])
      {
        v16 = v15;

        codeCopy = v16;
      }

      free(v14);
      v25 = *MEMORY[0x277D007E8];
      v26 = *(MEMORY[0x277D007E8] + 16);
      v27 = *(MEMORY[0x277D007E8] + 32);
      v28 = *(MEMORY[0x277D007E8] + 48);
      [codeCopy UTF8String];
      if (PNDecomposeForCountry())
      {
        if (v25)
        {
          v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v25];
          v18 = [@"+" stringByAppendingString:v17];
        }

        else
        {
          v18 = [@"+" stringByAppendingString:addCountryCallingCode__internationalCallingCodeDefault];
        }

        v20 = &stru_286A8E730;
        if (v26 && DWORD2(v26))
        {
          v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v26 length:DWORD2(v26) encoding:4];
        }

        v21 = &stru_286A8E730;
        if (v27 && DWORD2(v27))
        {
          v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v27 length:DWORD2(v27) encoding:4];
        }

        v22 = &stru_286A8E730;
        if (v28 && DWORD2(v28))
        {
          v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v28 length:DWORD2(v28) encoding:4];
        }

        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@%@", v18, v20, v21, v22];

        codeCopy = v23;
        goto LABEL_39;
      }
    }

    v19 = [MKMessagePhoneNumber addDefaultCountryCallingCode:addCountryCallingCode__internationalCallingCodeDefault number:codeCopy];

    codeCopy = v19;
    goto LABEL_39;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    while (1)
    {
      v9 = [codeCopy characterAtIndex:v8];
      v10 = v9;
      if ((v9 - 48) <= 9)
      {
        [v5 appendFormat:@"%C", v9];
        [v6 appendFormat:@"%C", v10];
        goto LABEL_10;
      }

      if ((v9 & 0xFFFFFFDF) - 65 >= 0x1A)
      {
        break;
      }

      [v6 appendFormat:@"%C", v9];
      ++v8;
      v7 = 1;
      if (v8 >= [codeCopy length])
      {
        goto LABEL_15;
      }
    }

    if (v9 == 64)
    {
      goto LABEL_19;
    }

LABEL_10:
    ++v8;
  }

  while (v8 < [codeCopy length]);
  if ((v7 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v11 = v6;
LABEL_18:
  v12 = v11;

  codeCopy = v12;
LABEL_19:

LABEL_39:

  return codeCopy;
}

void __46__MKMessagePhoneNumber_addCountryCallingCode___block_invoke()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 countryCode];
  v2 = addCountryCallingCode__countryCode;
  addCountryCallingCode__countryCode = v1;

  if (![addCountryCallingCode__countryCode length])
  {
    v3 = addCountryCallingCode__countryCode;
    addCountryCallingCode__countryCode = @"US";
  }

  v4 = _PNCopyInternationalCodeForCountry();
  v5 = addCountryCallingCode__internationalCallingCodeDefault;
  addCountryCallingCode__internationalCallingCodeDefault = v4;

  if (![addCountryCallingCode__internationalCallingCodeDefault length])
  {
    v6 = addCountryCallingCode__internationalCallingCodeDefault;
    addCountryCallingCode__internationalCallingCodeDefault = @"1";
  }
}

+ (id)addDefaultCountryCallingCode:(id)code number:(id)number
{
  codeCopy = code;
  numberCopy = number;
  v7 = [numberCopy stringByReplacingOccurrencesOfString:@"[^0-9]" withString:&stru_286A8E730 options:1024 range:{0, objc_msgSend(numberCopy, "length")}];

  if ([v7 hasPrefix:@"0"])
  {
    v8 = [v7 substringFromIndex:1];

    v7 = v8;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"+%@%@", codeCopy, v7];

  return v9;
}

+ (id)countryCallingCode:(id)code
{
  v3 = _PNCopyInternationalCodeForCountry();

  return v3;
}

@end