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
    v3 = [a3 _cn_trimTrailingZeros];
    v4 = [_TtC18ContactsFoundation13CNDataEncoder decodeAddressingGrammarData:v3];
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

    v7 = [a1 termOfAddressFromDataRepresentation:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)isUnspecified
{
  v1 = [a1 languageIdentifier];
  v2 = [v1 isEqualToString:@"unt"];

  return v2;
}

- (id)dataRepresentation
{
  v1 = [_TtC18ContactsFoundation13CNDataEncoder encodeAddressingGrammar:a1];
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
  v1 = [a1 dataRepresentation];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 base64EncodedStringWithOptions:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)pronounDescriptions
{
  if ((CNIsAddressingGrammarEmpty_block_invoke(a1, a1) & 1) != 0 || ([a1 pronouns], v2 = objc_claimAutoreleasedReturnValue(), v3 = off_1EF43E9E8(&__block_literal_global_5, v2), v2, v3))
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v5 = [a1 pronouns];
    v6 = [v5 _cn_map:&__block_literal_global_17];

    v4 = [v6 _cn_distinctObjects];
  }

  return v4;
}

+ (id)pronounDescriptionsForAddressingGrammars:()ContactsFoundation uppercased:
{
  v5 = a3;
  if (off_1EF43E9E8(&__block_literal_global_5, v5))
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __91__NSTermOfAddress_ContactsFoundation__pronounDescriptionsForAddressingGrammars_uppercased___block_invoke;
    v9[3] = &__block_descriptor_33_e35___NSString_16__0__NSTermOfAddress_8l;
    v10 = a4;
    v7 = [v5 _cn_compactMap:v9];
    v6 = [v7 _cn_distinctObjects];
  }

  return v6;
}

+ (__CFString)localizedDescriptionForAddressingGrammars:()ContactsFoundation uppercased:
{
  v6 = a3;
  if (off_1EF43E9E8(&__block_literal_global_5, v6))
  {
    v7 = &stru_1EF441028;
  }

  else
  {
    if ([v6 count] == 1)
    {
      v8 = [v6 firstObject];
      v9 = [v8 localizedShortDescription];
      v10 = v9;
      if (a4)
      {
        v11 = [v8 locale];
        v7 = [v10 uppercaseStringWithLocale:v11];
      }

      else
      {
        v7 = v9;
      }
    }

    else
    {
      v8 = [a1 pronounDescriptionsForAddressingGrammars:v6 uppercased:a4];
      if (off_1EF43E9E8(&__block_literal_global_5, v8))
      {
        v7 = &stru_1EF441028;
      }

      else if ([v8 count] == 1)
      {
        v7 = [v8 firstObject];
      }

      else
      {
        v13 = [v8 count];
        v14 = MEMORY[0x1E696AEC0];
        v15 = CNContactsFoundationBundle();
        v16 = v15;
        if (v13 == 2)
        {
          v17 = [v15 localizedStringForKey:@"ADDRESSING_GRAMMAR_DESCRIPTION_MULTIPLE-%@-%@" value:&stru_1EF441028 table:@"AddressingGrammar"];
          v18 = [v8 objectAtIndexedSubscript:0];
          v19 = [v8 objectAtIndexedSubscript:1];
          v7 = [v14 localizedStringWithFormat:v17, v18, v19];
        }

        else
        {
          v17 = [v15 localizedStringForKey:@"ADDRESSING_GRAMMAR_DESCRIPTION_MULTIPLE-%@-%@-%@" value:&stru_1EF441028 table:@"AddressingGrammar"];
          v18 = [v8 objectAtIndexedSubscript:0];
          v19 = [v8 objectAtIndexedSubscript:1];
          v20 = [v8 objectAtIndexedSubscript:2];
          v7 = [v14 localizedStringWithFormat:v17, v18, v19, v20];
        }
      }
    }
  }

  return v7;
}

- (__CFString)localizedShortDescription
{
  v1 = [a1 pronounDescriptions];
  if (off_1EF43E9E8(&__block_literal_global_5, v1))
  {
    v2 = &stru_1EF441028;
  }

  else if ([v1 count] == 1)
  {
    v2 = [v1 firstObject];
  }

  else
  {
    v3 = [v1 count];
    v4 = MEMORY[0x1E696AEC0];
    v5 = CNContactsFoundationBundle();
    v6 = v5;
    if (v3 == 2)
    {
      v7 = [v5 localizedStringForKey:@"ADDRESSING_GRAMMAR_DESCRIPTION-%@-%@" value:&stru_1EF441028 table:@"AddressingGrammar"];
      v8 = [v1 objectAtIndexedSubscript:0];
      v9 = [v1 objectAtIndexedSubscript:1];
      v2 = [v4 localizedStringWithFormat:v7, v8, v9];
    }

    else
    {
      v7 = [v5 localizedStringForKey:@"ADDRESSING_GRAMMAR_DESCRIPTION-%@-%@-%@" value:&stru_1EF441028 table:@"AddressingGrammar"];
      v8 = [v1 objectAtIndexedSubscript:0];
      v9 = [v1 objectAtIndexedSubscript:1];
      v10 = [v1 objectAtIndexedSubscript:2];
      v2 = [v4 localizedStringWithFormat:v7, v8, v9, v10];
    }
  }

  return v2;
}

- (id)localizedLanguageDescription
{
  v2 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [a1 languageIdentifier];
  v4 = [v2 localizedStringForLanguageCode:v3];

  return v4;
}

- (id)locale
{
  v1 = MEMORY[0x1E695DF58];
  v2 = [a1 languageIdentifier];
  v3 = [v1 localeWithLocaleIdentifier:v2];

  return v3;
}

@end