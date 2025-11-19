@interface CNPostalAddress(PKAdditions)
+ (__CFString)_ABKeyFromCNKey:()PKAdditions;
+ (id)_CNKeyFromABKey:()PKAdditions;
+ (id)backwardsCompatiblePostalAddressDictionary:()PKAdditions;
+ (id)postalAddressFromWebServiceDictionaryRepresentation:()PKAdditions;
- (id)_countryCodeForCountryName:()PKAdditions;
- (id)backwardsCompatibleDictionaryRepresentation;
- (id)redactedPostalAddress;
- (id)redactedStreetAddress;
- (id)suggestedCountryCode;
- (id)webServiceDictionaryRepresentation;
@end

@implementation CNPostalAddress(PKAdditions)

- (id)backwardsCompatibleDictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E695DF90];
  v2 = [a1 dictionaryRepresentation];
  v3 = [v1 dictionaryWithDictionary:v2];

  v4 = [MEMORY[0x1E695DF90] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:v10];
        v12 = [v11 length];

        if (v12)
        {
          v13 = [MEMORY[0x1E695CF60] _ABKeyFromCNKey:v10];
          if (v13)
          {
            v14 = [v3 objectForKeyedSubscript:v10];
            [v4 setObject:v14 forKey:v13];
          }

          v15 = [v3 objectForKeyedSubscript:v10];
          [v4 setObject:v15 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)webServiceDictionaryRepresentation
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [a1 street];
  v4 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v5 = [v3 componentsSeparatedByCharactersInSet:v4];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndex:0];
    if (v6)
    {
      [v2 setObject:v6 forKeyedSubscript:@"addressLine1"];
    }
  }

  if ([v5 count] >= 2)
  {
    v7 = [v5 objectAtIndex:1];
    if (v7)
    {
      [v2 setObject:v7 forKeyedSubscript:@"addressLine2"];
    }
  }

  v8 = [a1 city];
  [v2 setObject:v8 forKeyedSubscript:@"city"];
  v9 = [a1 state];
  [v2 setObject:v9 forKeyedSubscript:@"state"];
  v10 = [a1 postalCode];
  [v2 setObject:v10 forKeyedSubscript:@"postalCode"];
  v11 = [a1 country];
  [v2 setObject:v11 forKeyedSubscript:@"country"];
  v12 = [a1 ISOCountryCode];
  v13 = [v12 uppercaseString];

  [v2 setObject:v13 forKeyedSubscript:@"countryCode"];

  return v2;
}

- (id)redactedStreetAddress
{
  v1 = [a1 mutableCopy];
  [v1 setStreet:&stru_1F227FD28];
  v2 = [v1 copy];

  return v2;
}

- (id)redactedPostalAddress
{
  v2 = [a1 redactedStreetAddress];
  v3 = [v2 mutableCopy];

  v4 = [v3 ISOCountryCode];
  if (![v4 length])
  {
    v10 = [a1 suggestedCountryCode];

    v4 = v10;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_15:
    v4 = PKCurrentRegion();
    goto LABEL_3;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_3:
  v5 = [v3 postalCode];
  if ([v4 caseInsensitiveCompare:@"US"] || objc_msgSend(v5, "length") <= 5)
  {
    if ([v4 caseInsensitiveCompare:@"GB"] && objc_msgSend(v4, "caseInsensitiveCompare:", @"CA") || objc_msgSend(v5, "length") < 5)
    {
      goto LABEL_11;
    }

    v6 = [v5 length] - 3;
  }

  else
  {
    v6 = 5;
  }

  v7 = [v5 substringToIndex:v6];
  [v3 setPostalCode:v7];

LABEL_11:
  v8 = [v3 copy];

  return v8;
}

- (id)suggestedCountryCode
{
  v2 = [a1 country];
  v3 = [a1 _countryCodeForCountryName:v2];

  return v3;
}

- (id)_countryCodeForCountryName:()PKAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  [MEMORY[0x1E695DF58] ISOCountryCodes];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = *MEMORY[0x1E695D978];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v4 displayNameForKey:v9 value:{v11, v15}];
        if (![v3 compare:v12 options:129])
        {
          v13 = v11;

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (id)backwardsCompatiblePostalAddressDictionary:()PKAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v3];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v12 = [MEMORY[0x1E695CF60] _CNKeyFromABKey:v10];
          if (v12)
          {
            v13 = [v3 objectForKeyedSubscript:v12];

            if (!v13)
            {
              [v4 setObject:v11 forKey:v12];
            }
          }
        }

        else
        {
          [v4 removeObjectForKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)postalAddressFromWebServiceDictionaryRepresentation:()PKAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695CF30];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 PKStringForKey:@"addressLine1"];
  v7 = [v4 PKStringForKey:@"addressLine2"];
  v8 = [v4 PKStringForKey:@"city"];
  v9 = [v4 PKStringForKey:@"state"];
  v10 = [v4 PKStringForKey:@"postalCode"];
  v11 = [v4 PKStringForKey:@"countryCode"];
  v12 = [v4 PKStringForKey:@"country"];

  if ([v11 length] == 2)
  {
    if (v6 && v7)
    {
      v13 = [v6 stringByAppendingFormat:@"\n%@", v7];
      [v5 setStreet:v13];
    }

    else if (v6)
    {
      [v5 setStreet:v6];
    }

    if (v8)
    {
      [v5 setCity:v8];
    }

    if (v9)
    {
      [v5 setState:v9];
    }

    if (v10)
    {
      [v5 setPostalCode:v10];
    }

    if (v11)
    {
      v16 = [v11 uppercaseString];
      [v5 setISOCountryCode:v16];
    }

    if (v12)
    {
      [v5 setCountry:v12];
    }

    v15 = [v5 copy];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "CNPostalAddress+PKAdditions: Cannot create CNPostalAddress from web service dictionary because the countryCode: %@ is invalid", buf, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

+ (__CFString)_ABKeyFromCNKey:()PKAdditions
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E695CC30]])
  {
    v4 = @"Street";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695CC00]])
  {
    v4 = @"City";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695CC28]])
  {
    v4 = @"State";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695CC18]])
  {
    v4 = @"ZIP";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695CC08]])
  {
    v4 = @"Country";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695CC10]])
  {
    v4 = @"CountryCode";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695CC40]])
  {
    v4 = @"SubLocality";
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695CC38]])
  {
    v4 = @"SubAdministrativeArea";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_CNKeyFromABKey:()PKAdditions
{
  v3 = a3;
  if ([v3 isEqualToString:@"Street"])
  {
    v4 = MEMORY[0x1E695CC30];
LABEL_17:
    v5 = *v4;
    goto LABEL_18;
  }

  if ([v3 isEqualToString:@"City"])
  {
    v4 = MEMORY[0x1E695CC00];
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"State"])
  {
    v4 = MEMORY[0x1E695CC28];
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"ZIP"])
  {
    v4 = MEMORY[0x1E695CC18];
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"Country"])
  {
    v4 = MEMORY[0x1E695CC08];
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"CountryCode"])
  {
    v4 = MEMORY[0x1E695CC10];
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"SubLocality"])
  {
    v4 = MEMORY[0x1E695CC40];
    goto LABEL_17;
  }

  if ([v3 isEqualToString:@"SubAdministrativeArea"])
  {
    v4 = MEMORY[0x1E695CC38];
    goto LABEL_17;
  }

  v5 = 0;
LABEL_18:

  return v5;
}

@end