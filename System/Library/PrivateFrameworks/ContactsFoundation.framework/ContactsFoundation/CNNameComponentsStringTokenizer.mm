@interface CNNameComponentsStringTokenizer
+ (BOOL)isNamePrefix:(id)a3;
+ (BOOL)isNameSuffix:(id)a3;
+ (BOOL)isNobiliaryParticle:(id)a3;
+ (id)componentsFromString:(id)a3;
+ (id)componentsFromString:(id)a3 options:(unint64_t)a4;
+ (id)nameComponentElements;
+ (id)namePrefixElements;
+ (id)nameSuffixElements;
+ (id)nobiliaryParticleElements;
+ (id)tokensByAdjustingForNobiliaryParticles:(id)a3;
+ (id)tokensFromString:(id)a3 nameOrder:(int64_t *)a4;
+ (id)uncachedNameComponentElements;
+ (id)whitespaceTokens:(id)a3;
- (CNNameComponentsStringTokenizer)initWithString:(id)a3 options:(unint64_t)a4;
- (id)parseComponents;
- (void)adjustTokensForNobiliaryParticles;
- (void)extractGivenMiddleFamilyNamesFromWhatsLeftUsingOrder:(int64_t)a3;
- (void)extractNamePrefixFromBeginning;
- (void)extractNameSuffixFromEnd;
- (void)extractNicknameFromQuotedContent;
- (void)removeParentheticalContent;
@end

@implementation CNNameComponentsStringTokenizer

+ (id)componentsFromString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithString:v4 options:0];

  v6 = [v5 parseComponents];

  return v6;
}

+ (id)componentsFromString:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithString:v6 options:a4];

  v8 = [v7 parseComponents];

  return v8;
}

- (CNNameComponentsStringTokenizer)initWithString:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (CNGuardOSLog_cn_once_token_0_6 != -1)
      {
        [CNNameComponentsStringTokenizer initWithString:options:];
      }

      v7 = CNGuardOSLog_cn_once_object_0_6;
      if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_6, OS_LOG_TYPE_FAULT))
      {
        [CNNameComponentsStringTokenizer initWithString:v7 options:?];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = CNNameComponentsStringTokenizer;
  v8 = [(CNNameComponentsStringTokenizer *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    string = v8->_string;
    v8->_string = v9;

    v11 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    components = v8->_components;
    v8->_components = v11;

    v8->_options = a4;
    v13 = v8;
  }

  return v8;
}

- (id)parseComponents
{
  if (([(CNNameComponentsStringTokenizer *)self options]& 1) == 0)
  {
    [(CNNameComponentsStringTokenizer *)self removeParentheticalContent];
  }

  [(CNNameComponentsStringTokenizer *)self extractNicknameFromQuotedContent];
  v8 = 0;
  v3 = objc_opt_class();
  v4 = [(CNNameComponentsStringTokenizer *)self string];
  v5 = [v3 tokensFromString:v4 nameOrder:&v8];
  [(CNNameComponentsStringTokenizer *)self setTokens:v5];

  [(CNNameComponentsStringTokenizer *)self extractNameSuffixFromEnd];
  [(CNNameComponentsStringTokenizer *)self extractNamePrefixFromBeginning];
  [(CNNameComponentsStringTokenizer *)self adjustTokensForNobiliaryParticles];
  [(CNNameComponentsStringTokenizer *)self extractGivenMiddleFamilyNamesFromWhatsLeftUsingOrder:v8];
  v6 = [(CNNameComponentsStringTokenizer *)self components];

  return v6;
}

- (void)removeParentheticalContent
{
  v3 = [MEMORY[0x1E696AD60] string];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v4 = [(CNNameComponentsStringTokenizer *)self string];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__CNNameComponentsStringTokenizer_removeParentheticalContent__block_invoke;
  v6[3] = &unk_1E6ED7EA0;
  v8 = v11;
  v9 = v10;
  v5 = v3;
  v7 = v5;
  [v4 _cn_eachCharacter:v6];

  [(CNNameComponentsStringTokenizer *)self setString:v5];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v11, 8);
}

uint64_t __61__CNNameComponentsStringTokenizer_removeParentheticalContent__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 <= 90)
  {
    if (a2 != 40)
    {
      if (a2 == 41)
      {
        v2 = *(result + 40);
        goto LABEL_8;
      }

LABEL_10:
      if (!*(*(*(result + 40) + 8) + 24) && !*(*(*(result + 48) + 8) + 24))
      {
        return [*(result + 32) appendFormat:@"%C", a2];
      }

      return result;
    }

    v6 = *(result + 40);
LABEL_14:
    v3 = *(v6 + 8);
    v5 = *(v3 + 24) + 1;
    goto LABEL_15;
  }

  if (a2 == 91)
  {
    v6 = *(result + 48);
    goto LABEL_14;
  }

  if (a2 != 93)
  {
    goto LABEL_10;
  }

  v2 = *(result + 48);
LABEL_8:
  v3 = *(v2 + 8);
  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = v4 - 1;
LABEL_15:
    *(v3 + 24) = v5;
  }

  return result;
}

- (void)extractNicknameFromQuotedContent
{
  v25 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"'“”‘’«»"];
  v3 = [(CNNameComponentsStringTokenizer *)self string];
  v4 = [v3 rangeOfCharacterFromSet:v25];
  v5 = v4;
  v7 = v6;
  if (!v4 || v4 != 0x7FFFFFFFFFFFFFFFLL && ([MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "characterIsMember:", objc_msgSend(v3, "characterAtIndex:", v5 - 1)), v8, v9))
  {
    v10 = v5 + v7;
    v11 = [v3 _cn_rangeFromIndex:v10];
    v13 = [v3 rangeOfCharacterFromSet:v25 options:0 range:{v11, v12}];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = v13;
      v16 = v13 + v14;
      if (v13 + v14 == [v3 length] || (objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "characterIsMember:", objc_msgSend(v3, "characterAtIndex:", v16)), v17, v18))
      {
        v19 = [v3 _cn_rangeFromIndex:v16];
        if ([v3 rangeOfCharacterFromSet:v25 options:0 range:{v19, v20}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = v15 - v10;
          v22 = [v3 substringWithRange:{v10, v21}];
          v23 = [v3 mutableCopy];
          [v23 deleteCharactersInRange:{v10 - 1, v21 + 2}];
          v24 = [(CNNameComponentsStringTokenizer *)self components];
          [v24 setNickname:v22];

          [(CNNameComponentsStringTokenizer *)self setString:v23];
        }
      }
    }
  }
}

+ (id)tokensFromString:(id)a3 nameOrder:(int64_t *)a4
{
  v6 = a3;
  if (CNStringContainsChineseJapaneseKoreanCharacters(v6))
  {
    v7 = [v6 _cn_nameComponentTokensUsingLocale:0 inferredNameOrder:a4];
    goto LABEL_15;
  }

  v8 = [v6 componentsSeparatedByString:{@", "}];
  if ([v8 count] != 1)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = [v8 lastObject];
    v11 = [a1 whitespaceTokens:v10];
    v12 = [v11 _cn_all:&__block_literal_global_32];

    if (v12)
    {
      v13 = [v8 lastObject];
      v14 = [a1 whitespaceTokens:v13];
      [v9 addObjectsFromArray:v14];

      v15 = [v8 _cn_skipLast:1];

      v8 = v15;
    }

    if ([v8 count] == 1)
    {
      v16 = [v8 firstObject];
    }

    else
    {
      if ([v8 count] != 2)
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __62__CNNameComponentsStringTokenizer_tokensFromString_nameOrder___block_invoke;
        v24[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
        v24[4] = a1;
        v20 = [v8 _cn_flatMap:v24];
        v21 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v20, "count")}];
        [v9 insertObjects:v20 atIndexes:v21];

        goto LABEL_13;
      }

      v17 = [v8 objectAtIndex:0];
      [v9 insertObject:v17 atIndex:0];

      v16 = [v8 objectAtIndex:1];
    }

    v18 = v16;
    v19 = [a1 whitespaceTokens:v16];
    [v9 insertObject:v19 atIndex:0];

LABEL_13:
    v22 = [v9 _cn_flatten];
    v7 = [v22 _cn_map:&__block_literal_global_70];

    goto LABEL_14;
  }

  v7 = [a1 whitespaceTokens:v6];
LABEL_14:

LABEL_15:

  return v7;
}

- (void)extractNameSuffixFromEnd
{
  v3 = [(CNNameComponentsStringTokenizer *)self tokens];
  v4 = [v3 count];

  if (v4 >= 3)
  {
    v5 = objc_opt_class();
    v6 = [(CNNameComponentsStringTokenizer *)self tokens];
    v7 = [v6 lastObject];
    LODWORD(v5) = [v5 isNameSuffix:v7];

    if (v5)
    {
      v8 = [(CNNameComponentsStringTokenizer *)self tokens];
      v9 = [v8 lastObject];
      v10 = [(CNNameComponentsStringTokenizer *)self components];
      [v10 setNameSuffix:v9];

      v12 = [(CNNameComponentsStringTokenizer *)self tokens];
      v11 = [v12 _cn_skipLast:1];
      [(CNNameComponentsStringTokenizer *)self setTokens:v11];
    }
  }
}

- (void)extractNamePrefixFromBeginning
{
  v3 = [(CNNameComponentsStringTokenizer *)self tokens];
  v4 = [v3 count];

  if (v4 >= 3)
  {
    v5 = objc_opt_class();
    v6 = [(CNNameComponentsStringTokenizer *)self tokens];
    v7 = [v6 firstObject];
    LODWORD(v5) = [v5 isNamePrefix:v7];

    if (v5)
    {
      v8 = [(CNNameComponentsStringTokenizer *)self tokens];
      v9 = [v8 firstObject];
      v10 = [(CNNameComponentsStringTokenizer *)self components];
      [v10 setNamePrefix:v9];

      v12 = [(CNNameComponentsStringTokenizer *)self tokens];
      v11 = [v12 _cn_skip:1];
      [(CNNameComponentsStringTokenizer *)self setTokens:v11];
    }
  }
}

- (void)adjustTokensForNobiliaryParticles
{
  v3 = [(CNNameComponentsStringTokenizer *)self tokens];
  v4 = [v3 count];

  if (v4 >= 3)
  {
    v5 = [(CNNameComponentsStringTokenizer *)self tokens];
    v6 = [v5 _cn_any:&__block_literal_global_35];

    if (v6)
    {
      v7 = objc_opt_class();
      v9 = [(CNNameComponentsStringTokenizer *)self tokens];
      v8 = [v7 tokensByAdjustingForNobiliaryParticles:v9];
      [(CNNameComponentsStringTokenizer *)self setTokens:v8];
    }
  }
}

+ (id)tokensByAdjustingForNobiliaryParticles:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__CNNameComponentsStringTokenizer_tokensByAdjustingForNobiliaryParticles___block_invoke;
  v9[3] = &unk_1E6ED7EE8;
  v11 = a1;
  v7 = v6;
  v10 = v7;
  [v5 _cn_each_reverse:v9];

  return v7;
}

void __74__CNNameComponentsStringTokenizer_tokensByAdjustingForNobiliaryParticles___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(a1 + 40) isNobiliaryParticle:?] && objc_msgSend(*(a1 + 32), "count"))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [*(a1 + 32) firstObject];
    v5 = [v3 stringWithFormat:@"%@ %@", v6, v4];

    [*(a1 + 32) replaceObjectAtIndex:0 withObject:v5];
  }

  else
  {
    [*(a1 + 32) insertObject:v6 atIndex:0];
  }
}

+ (id)whitespaceTokens:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  v7 = [v6 _cn_filter:&__block_literal_global_41];

  return v7;
}

- (void)extractGivenMiddleFamilyNamesFromWhatsLeftUsingOrder:(int64_t)a3
{
  v5 = [(CNNameComponentsStringTokenizer *)self tokens];
  v6 = [v5 count];

  if (v6 == 3)
  {
    v14 = [(CNNameComponentsStringTokenizer *)self tokens];
    v15 = [v14 objectAtIndex:0];
    v16 = [(CNNameComponentsStringTokenizer *)self components];
    v17 = v16;
    if (a3 == -1)
    {
      [v16 setFamilyName:v15];

      v22 = [(CNNameComponentsStringTokenizer *)self tokens];
      v23 = [v22 objectAtIndex:1];
      v24 = [(CNNameComponentsStringTokenizer *)self components];
      [v24 setGivenName:v23];

      v25 = [(CNNameComponentsStringTokenizer *)self tokens];
      v7 = [v25 objectAtIndex:2];
      v21 = [(CNNameComponentsStringTokenizer *)self components];
      [v21 setMiddleName:v7];
      goto LABEL_13;
    }

    [v16 setGivenName:v15];

    v18 = [(CNNameComponentsStringTokenizer *)self tokens];
    v19 = [v18 objectAtIndex:1];
    v20 = [(CNNameComponentsStringTokenizer *)self components];
    [v20 setMiddleName:v19];

    v12 = [(CNNameComponentsStringTokenizer *)self tokens];
    v25 = v12;
    v13 = 2;
    goto LABEL_9;
  }

  if (v6 == 2)
  {
    v8 = [(CNNameComponentsStringTokenizer *)self tokens];
    v9 = [v8 objectAtIndex:0];
    v10 = [(CNNameComponentsStringTokenizer *)self components];
    v11 = v10;
    if (a3 == -1)
    {
      [v10 setFamilyName:v9];

      v25 = [(CNNameComponentsStringTokenizer *)self tokens];
      v7 = [v25 objectAtIndex:1];
      v21 = [(CNNameComponentsStringTokenizer *)self components];
      [v21 setGivenName:v7];
      goto LABEL_13;
    }

    [v10 setGivenName:v9];

    v12 = [(CNNameComponentsStringTokenizer *)self tokens];
    v25 = v12;
    v13 = 1;
LABEL_9:
    v7 = [v12 objectAtIndex:v13];
    v21 = [(CNNameComponentsStringTokenizer *)self components];
    [v21 setFamilyName:v7];
LABEL_13:

    goto LABEL_14;
  }

  if (v6 != 1)
  {
    return;
  }

  v25 = [(CNNameComponentsStringTokenizer *)self string];
  v7 = [(CNNameComponentsStringTokenizer *)self components];
  [v7 setGivenName:v25];
LABEL_14:
}

+ (BOOL)isNamePrefix:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CNNameComponentsStringTokenizer_isNamePrefix___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v3 = isNamePrefix__cn_once_token_2;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isNamePrefix__cn_once_token_2, block);
  }

  v5 = isNamePrefix__cn_once_object_2;
  v6 = sNormalizeElements_block_invoke_3(v5, v4);

  v7 = [v5 containsObject:v6];
  return v7;
}

void __48__CNNameComponentsStringTokenizer_isNamePrefix___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E695DFD8];
  v5 = [*(a1 + 32) namePrefixElements];
  v2 = [v1 setWithArray:v5];
  v3 = [v2 copy];
  v4 = isNamePrefix__cn_once_object_2;
  isNamePrefix__cn_once_object_2 = v3;
}

+ (id)namePrefixElements
{
  v2 = [a1 nameComponentElements];
  v3 = [v2 objectForKeyedSubscript:@"prefixes"];
  v4 = [v3 _cn_map:&__block_literal_global_38_0];

  return v4;
}

+ (BOOL)isNameSuffix:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CNNameComponentsStringTokenizer_isNameSuffix___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v3 = isNameSuffix__cn_once_token_3;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isNameSuffix__cn_once_token_3, block);
  }

  v5 = isNameSuffix__cn_once_object_3;
  v6 = sNormalizeElements_block_invoke_3(v5, v4);

  v7 = [v5 containsObject:v6];
  return v7;
}

void __48__CNNameComponentsStringTokenizer_isNameSuffix___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E695DFD8];
  v5 = [*(a1 + 32) nameSuffixElements];
  v2 = [v1 setWithArray:v5];
  v3 = [v2 copy];
  v4 = isNameSuffix__cn_once_object_3;
  isNameSuffix__cn_once_object_3 = v3;
}

+ (id)nameSuffixElements
{
  v2 = [a1 nameComponentElements];
  v3 = [v2 objectForKeyedSubscript:@"suffixes"];
  v4 = [v3 _cn_map:&__block_literal_global_38_0];

  return v4;
}

+ (BOOL)isNobiliaryParticle:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CNNameComponentsStringTokenizer_isNobiliaryParticle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v3 = isNobiliaryParticle__cn_once_token_4;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isNobiliaryParticle__cn_once_token_4, block);
  }

  v5 = isNobiliaryParticle__cn_once_object_4;
  v6 = sNormalizeElements_block_invoke_3(v5, v4);

  v7 = [v5 containsObject:v6];
  return v7;
}

void __55__CNNameComponentsStringTokenizer_isNobiliaryParticle___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E695DFD8];
  v5 = [*(a1 + 32) nobiliaryParticleElements];
  v2 = [v1 setWithArray:v5];
  v3 = [v2 copy];
  v4 = isNobiliaryParticle__cn_once_object_4;
  isNobiliaryParticle__cn_once_object_4 = v3;
}

+ (id)nobiliaryParticleElements
{
  v2 = [a1 nameComponentElements];
  v3 = [v2 objectForKeyedSubscript:@"nobiliary particles"];
  v4 = [v3 _cn_map:&__block_literal_global_38_0];

  return v4;
}

+ (id)nameComponentElements
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CNNameComponentsStringTokenizer_nameComponentElements__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (nameComponentElements_cn_once_token_5 != -1)
  {
    dispatch_once(&nameComponentElements_cn_once_token_5, block);
  }

  v2 = nameComponentElements_cn_once_object_5;

  return v2;
}

void __56__CNNameComponentsStringTokenizer_nameComponentElements__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) uncachedNameComponentElements];
  v1 = [v3 copy];
  v2 = nameComponentElements_cn_once_object_5;
  nameComponentElements_cn_once_object_5 = v1;
}

+ (id)uncachedNameComponentElements
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:a1];
  v3 = [v2 URLForResource:@"NameComponentElements" withExtension:@"plist"];

  v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v3];

  return v4;
}

- (void)initWithString:(void *)a1 options:.cold.2(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = 138543362;
  v5 = objc_opt_class();
  v2 = v5;
  _os_log_fault_impl(&dword_1859F0000, v1, OS_LOG_TYPE_FAULT, "parameter ‘string’ must be of type %{public}@", &v4, 0xCu);

  v3 = *MEMORY[0x1E69E9840];
}

@end