@interface NSTermOfAddress(ContactsFoundation)
+ (__CFString)localizedDescriptionForAddressingGrammars:()ContactsFoundation uppercased:;
+ (id)os_log;
+ (id)pronounDescriptionsForAddressingGrammars:()ContactsFoundation uppercased:;
+ (id)termOfAddressFromDataRepresentation:()ContactsFoundation;
+ (id)termOfAddressFromStringRepresentation:()ContactsFoundation;
- (__CFString)localizedShortDescription;
- (id)dataRepresentation;
- (id)locale;
- (id)localizedLanguageDescription;
- (id)pronounDescriptions;
- (id)stringRepresentation;
- (uint64_t)isUnspecified;
@end

@implementation NSTermOfAddress(ContactsFoundation)

+ (id)os_log
{
  if (os_log_cn_once_token_1_3 != -1)
  {
    +[NSTermOfAddress(ContactsFoundation) os_log];
  }

  v1 = os_log_cn_once_object_1_3;

  return v1;
}

+ (id)termOfAddressFromDataRepresentation:()ContactsFoundation
{
  if (a3)
  {
    _cn_trimTrailingZeros = [a3 _cn_trimTrailingZeros];
    v4 = [_TtC18ContactsFoundation13CNDataEncoder decodeAddressingGrammarData:_cn_trimTrailingZeros];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)termOfAddressFromStringRepresentation:()ContactsFoundation
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DEF0];
    v5 = a3;
    v6 = [[v4 alloc] initWithBase64EncodedString:v5 options:0];

    v7 = [self termOfAddressFromDataRepresentation:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)isUnspecified
{
  languageIdentifier = [self languageIdentifier];
  v2 = [languageIdentifier isEqualToString:@"unt"];

  return v2;
}

- (id)dataRepresentation
{
  v1 = [_TtC18ContactsFoundation13CNDataEncoder encodeAddressingGrammar:self];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 _cn_padDataToLength:280];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)stringRepresentation
{
  dataRepresentation = [self dataRepresentation];
  v2 = dataRepresentation;
  if (dataRepresentation)
  {
    v3 = [dataRepresentation base64EncodedStringWithOptions:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)pronounDescriptions
{
  if ((CNIsAddressingGrammarEmpty_block_invoke(self, self) & 1) != 0 || ([self pronouns], v2 = objc_claimAutoreleasedReturnValue(), v3 = off_1EF43E9E8(&__block_literal_global_5, v2), v2, v3))
  {
    _cn_distinctObjects = MEMORY[0x1E695E0F0];
  }

  else
  {
    pronouns = [self pronouns];
    v6 = [pronouns _cn_map:&__block_literal_global_17];

    _cn_distinctObjects = [v6 _cn_distinctObjects];
  }

  return _cn_distinctObjects;
}

+ (id)pronounDescriptionsForAddressingGrammars:()ContactsFoundation uppercased:
{
  v5 = a3;
  if (off_1EF43E9E8(&__block_literal_global_5, v5))
  {
    _cn_distinctObjects = MEMORY[0x1E695E0F0];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __91__NSTermOfAddress_ContactsFoundation__pronounDescriptionsForAddressingGrammars_uppercased___block_invoke;
    v9[3] = &__block_descriptor_33_e35___NSString_16__0__NSTermOfAddress_8l;
    v10 = a4;
    v7 = [v5 _cn_compactMap:v9];
    _cn_distinctObjects = [v7 _cn_distinctObjects];
  }

  return _cn_distinctObjects;
}

+ (__CFString)localizedDescriptionForAddressingGrammars:()ContactsFoundation uppercased:
{
  v6 = a3;
  if (off_1EF43E9E8(&__block_literal_global_5, v6))
  {
    v8FirstObject = &stru_1EF441028;
  }

  else
  {
    if ([v6 count] == 1)
    {
      firstObject = [v6 firstObject];
      localizedShortDescription = [firstObject localizedShortDescription];
      v10 = localizedShortDescription;
      if (a4)
      {
        locale = [firstObject locale];
        v8FirstObject = [v10 uppercaseStringWithLocale:locale];
      }

      else
      {
        v8FirstObject = localizedShortDescription;
      }
    }

    else
    {
      firstObject = [self pronounDescriptionsForAddressingGrammars:v6 uppercased:a4];
      if (off_1EF43E9E8(&__block_literal_global_5, firstObject))
      {
        v8FirstObject = &stru_1EF441028;
      }

      else if ([firstObject count] == 1)
      {
        v8FirstObject = [firstObject firstObject];
      }

      else
      {
        v13 = [firstObject count];
        v14 = MEMORY[0x1E696AEC0];
        v15 = CNContactsFoundationBundle();
        v16 = v15;
        if (v13 == 2)
        {
          v17 = [v15 localizedStringForKey:@"ADDRESSING_GRAMMAR_DESCRIPTION_MULTIPLE-%@-%@" value:&stru_1EF441028 table:@"AddressingGrammar"];
          v18 = [firstObject objectAtIndexedSubscript:0];
          v19 = [firstObject objectAtIndexedSubscript:1];
          v8FirstObject = [v14 localizedStringWithFormat:v17, v18, v19];
        }

        else
        {
          v17 = [v15 localizedStringForKey:@"ADDRESSING_GRAMMAR_DESCRIPTION_MULTIPLE-%@-%@-%@" value:&stru_1EF441028 table:@"AddressingGrammar"];
          v18 = [firstObject objectAtIndexedSubscript:0];
          v19 = [firstObject objectAtIndexedSubscript:1];
          v20 = [firstObject objectAtIndexedSubscript:2];
          v8FirstObject = [v14 localizedStringWithFormat:v17, v18, v19, v20];
        }
      }
    }
  }

  return v8FirstObject;
}

- (__CFString)localizedShortDescription
{
  pronounDescriptions = [self pronounDescriptions];
  if (off_1EF43E9E8(&__block_literal_global_5, pronounDescriptions))
  {
    firstObject = &stru_1EF441028;
  }

  else if ([pronounDescriptions count] == 1)
  {
    firstObject = [pronounDescriptions firstObject];
  }

  else
  {
    v3 = [pronounDescriptions count];
    v4 = MEMORY[0x1E696AEC0];
    v5 = CNContactsFoundationBundle();
    v6 = v5;
    if (v3 == 2)
    {
      v7 = [v5 localizedStringForKey:@"ADDRESSING_GRAMMAR_DESCRIPTION-%@-%@" value:&stru_1EF441028 table:@"AddressingGrammar"];
      v8 = [pronounDescriptions objectAtIndexedSubscript:0];
      v9 = [pronounDescriptions objectAtIndexedSubscript:1];
      firstObject = [v4 localizedStringWithFormat:v7, v8, v9];
    }

    else
    {
      v7 = [v5 localizedStringForKey:@"ADDRESSING_GRAMMAR_DESCRIPTION-%@-%@-%@" value:&stru_1EF441028 table:@"AddressingGrammar"];
      v8 = [pronounDescriptions objectAtIndexedSubscript:0];
      v9 = [pronounDescriptions objectAtIndexedSubscript:1];
      v10 = [pronounDescriptions objectAtIndexedSubscript:2];
      firstObject = [v4 localizedStringWithFormat:v7, v8, v9, v10];
    }
  }

  return firstObject;
}

- (id)localizedLanguageDescription
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  languageIdentifier = [self languageIdentifier];
  v4 = [currentLocale localizedStringForLanguageCode:languageIdentifier];

  return v4;
}

- (id)locale
{
  v1 = MEMORY[0x1E695DF58];
  languageIdentifier = [self languageIdentifier];
  v3 = [v1 localeWithLocaleIdentifier:languageIdentifier];

  return v3;
}

@end