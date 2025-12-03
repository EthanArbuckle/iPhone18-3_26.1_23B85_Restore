@interface CNPostalAddressStringTokenizer
+ (id)countryCodeByLookingUpCountryName:(id)name;
+ (id)countryCodeForCountryName:(id)name;
+ (id)countryCodeFromCurrentLocale;
+ (id)postalAddressFromString:(id)string error:(id *)error;
+ (id)tokenNameForScannerResultType:(id)type;
- (id)postalAddressFromString:(id)string error:(id *)error;
@end

@implementation CNPostalAddressStringTokenizer

+ (id)postalAddressFromString:(id)string error:(id *)error
{
  stringCopy = string;
  v6 = objc_alloc_init(CNPostalAddressStringTokenizer);
  v7 = [(CNPostalAddressStringTokenizer *)v6 postalAddressFromString:stringCopy error:error];

  return v7;
}

- (id)postalAddressFromString:(id)string error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E6999A88] scanString:string];
  v6 = [v5 _cn_firstObjectPassingTest:&__block_literal_global_69];
  if (v6)
  {
    v27 = v5;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    subResults = [v6 subResults];
    v9 = [subResults countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(subResults);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = objc_opt_class();
          type = [v13 type];
          v16 = [v14 tokenNameForScannerResultType:type];

          if (v16)
          {
            value = [v13 value];
            [v7 setObject:value forKeyedSubscript:v16];
          }
        }

        v10 = [subResults countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v10);
    }

    v18 = [v7 objectForKeyedSubscript:@"ISOCountryCode"];
    v19 = v18;
    if (!v18 || ![v18 length])
    {
      v20 = objc_opt_class();
      v21 = [v7 objectForKeyedSubscript:@"country"];
      v22 = [v20 countryCodeForCountryName:v21];

      v19 = v22;
    }

    v5 = v27;
    uppercaseString = [v19 uppercaseString];

    [v7 setObject:uppercaseString forKeyedSubscript:@"ISOCountryCode"];
  }

  else
  {
    v24 = [CNFoundationError errorWithCode:9 userInfo:0];
    if (error)
    {
      v24 = v24;
      *error = v24;
    }

    v7 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)tokenNameForScannerResultType:(id)type
{
  v13[7] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6999A38];
  v12[0] = *MEMORY[0x1E6999A28];
  v12[1] = v3;
  v13[0] = @"street";
  v13[1] = @"subLocality";
  v4 = *MEMORY[0x1E6999A30];
  v12[2] = *MEMORY[0x1E6999998];
  v12[3] = v4;
  v13[2] = @"city";
  v13[3] = @"subAdministrativeArea";
  v5 = *MEMORY[0x1E6999A68];
  v12[4] = *MEMORY[0x1E6999A20];
  v12[5] = v5;
  v13[4] = @"state";
  v13[5] = @"postalCode";
  v12[6] = *MEMORY[0x1E69999A0];
  v13[6] = @"country";
  v6 = MEMORY[0x1E695DF20];
  typeCopy = type;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:v12 count:7];
  v9 = [v8 objectForKeyedSubscript:typeCopy];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)countryCodeForCountryName:(id)name
{
  countryCodeFromCurrentNetwork = [self countryCodeByLookingUpCountryName:name];
  if (off_1EF440708(&__block_literal_global_120, countryCodeFromCurrentNetwork))
  {

    countryCodeFromCurrentNetwork = [self countryCodeFromCurrentNetwork];
    if (off_1EF440708(&__block_literal_global_120, countryCodeFromCurrentNetwork))
    {

      countryCodeFromCurrentNetwork = [self countryCodeFromHomeNetwork];
      if (off_1EF440708(&__block_literal_global_120, countryCodeFromCurrentNetwork))
      {

        countryCodeFromCurrentNetwork = [self countryCodeFromCurrentLocale];
      }
    }
  }

  return countryCodeFromCurrentNetwork;
}

+ (id)countryCodeByLookingUpCountryName:(id)name
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (nameCopy)
  {
    v4 = +[(CNEnvironmentBase *)CNEnvironment];
    currentLocale = [v4 currentLocale];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    iSOCountryCodes = [MEMORY[0x1E695DF58] ISOCountryCodes];
    v7 = [iSOCountryCodes countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      v10 = *MEMORY[0x1E695D978];
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(iSOCountryCodes);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [currentLocale displayNameForKey:v10 value:v12];
          if (![nameCopy compare:v13 options:129])
          {
            v14 = v12;

            goto LABEL_12;
          }
        }

        v8 = [iSOCountryCodes countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_12:
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)countryCodeFromCurrentLocale
{
  v2 = +[(CNEnvironmentBase *)CNEnvironment];
  currentLocale = [v2 currentLocale];
  v4 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];

  return v4;
}

@end