@interface CNNameComponentsStringTokenizer
+ (BOOL)isNamePrefix:(id)prefix;
+ (BOOL)isNameSuffix:(id)suffix;
+ (BOOL)isNobiliaryParticle:(id)particle;
+ (id)componentsFromString:(id)string;
+ (id)componentsFromString:(id)string options:(unint64_t)options;
+ (id)nameComponentElements;
+ (id)namePrefixElements;
+ (id)nameSuffixElements;
+ (id)nobiliaryParticleElements;
+ (id)tokensByAdjustingForNobiliaryParticles:(id)particles;
+ (id)tokensFromString:(id)string nameOrder:(int64_t *)order;
+ (id)uncachedNameComponentElements;
+ (id)whitespaceTokens:(id)tokens;
- (CNNameComponentsStringTokenizer)initWithString:(id)string options:(unint64_t)options;
- (id)parseComponents;
- (void)adjustTokensForNobiliaryParticles;
- (void)extractGivenMiddleFamilyNamesFromWhatsLeftUsingOrder:(int64_t)order;
- (void)extractNamePrefixFromBeginning;
- (void)extractNameSuffixFromEnd;
- (void)extractNicknameFromQuotedContent;
- (void)removeParentheticalContent;
@end

@implementation CNNameComponentsStringTokenizer

+ (id)componentsFromString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithString:stringCopy options:0];

  parseComponents = [v5 parseComponents];

  return parseComponents;
}

+ (id)componentsFromString:(id)string options:(unint64_t)options
{
  stringCopy = string;
  v7 = [[self alloc] initWithString:stringCopy options:options];

  parseComponents = [v7 parseComponents];

  return parseComponents;
}

- (CNNameComponentsStringTokenizer)initWithString:(id)string options:(unint64_t)options
{
  stringCopy = string;
  if (stringCopy)
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
    v9 = [stringCopy copy];
    string = v8->_string;
    v8->_string = v9;

    v11 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    components = v8->_components;
    v8->_components = v11;

    v8->_options = options;
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
  string = [(CNNameComponentsStringTokenizer *)self string];
  v5 = [v3 tokensFromString:string nameOrder:&v8];
  [(CNNameComponentsStringTokenizer *)self setTokens:v5];

  [(CNNameComponentsStringTokenizer *)self extractNameSuffixFromEnd];
  [(CNNameComponentsStringTokenizer *)self extractNamePrefixFromBeginning];
  [(CNNameComponentsStringTokenizer *)self adjustTokensForNobiliaryParticles];
  [(CNNameComponentsStringTokenizer *)self extractGivenMiddleFamilyNamesFromWhatsLeftUsingOrder:v8];
  components = [(CNNameComponentsStringTokenizer *)self components];

  return components;
}

- (void)removeParentheticalContent
{
  string = [MEMORY[0x1E696AD60] string];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  string2 = [(CNNameComponentsStringTokenizer *)self string];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__CNNameComponentsStringTokenizer_removeParentheticalContent__block_invoke;
  v6[3] = &unk_1E6ED7EA0;
  v8 = v11;
  v9 = v10;
  v5 = string;
  v7 = v5;
  [string2 _cn_eachCharacter:v6];

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
  string = [(CNNameComponentsStringTokenizer *)self string];
  v4 = [string rangeOfCharacterFromSet:v25];
  v5 = v4;
  v7 = v6;
  if (!v4 || v4 != 0x7FFFFFFFFFFFFFFFLL && ([MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "characterIsMember:", objc_msgSend(string, "characterAtIndex:", v5 - 1)), v8, v9))
  {
    v10 = v5 + v7;
    v11 = [string _cn_rangeFromIndex:v10];
    v13 = [string rangeOfCharacterFromSet:v25 options:0 range:{v11, v12}];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = v13;
      v16 = v13 + v14;
      if (v13 + v14 == [string length] || (objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "characterIsMember:", objc_msgSend(string, "characterAtIndex:", v16)), v17, v18))
      {
        v19 = [string _cn_rangeFromIndex:v16];
        if ([string rangeOfCharacterFromSet:v25 options:0 range:{v19, v20}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = v15 - v10;
          v22 = [string substringWithRange:{v10, v21}];
          v23 = [string mutableCopy];
          [v23 deleteCharactersInRange:{v10 - 1, v21 + 2}];
          components = [(CNNameComponentsStringTokenizer *)self components];
          [components setNickname:v22];

          [(CNNameComponentsStringTokenizer *)self setString:v23];
        }
      }
    }
  }
}

+ (id)tokensFromString:(id)string nameOrder:(int64_t *)order
{
  stringCopy = string;
  if (CNStringContainsChineseJapaneseKoreanCharacters(stringCopy))
  {
    v7 = [stringCopy _cn_nameComponentTokensUsingLocale:0 inferredNameOrder:order];
    goto LABEL_15;
  }

  v8 = [stringCopy componentsSeparatedByString:{@", "}];
  if ([v8 count] != 1)
  {
    array = [MEMORY[0x1E695DF70] array];
    lastObject = [v8 lastObject];
    v11 = [self whitespaceTokens:lastObject];
    v12 = [v11 _cn_all:&__block_literal_global_32];

    if (v12)
    {
      lastObject2 = [v8 lastObject];
      v14 = [self whitespaceTokens:lastObject2];
      [array addObjectsFromArray:v14];

      v15 = [v8 _cn_skipLast:1];

      v8 = v15;
    }

    if ([v8 count] == 1)
    {
      firstObject = [v8 firstObject];
    }

    else
    {
      if ([v8 count] != 2)
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __62__CNNameComponentsStringTokenizer_tokensFromString_nameOrder___block_invoke;
        v24[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
        v24[4] = self;
        v20 = [v8 _cn_flatMap:v24];
        v21 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v20, "count")}];
        [array insertObjects:v20 atIndexes:v21];

        goto LABEL_13;
      }

      v17 = [v8 objectAtIndex:0];
      [array insertObject:v17 atIndex:0];

      firstObject = [v8 objectAtIndex:1];
    }

    v18 = firstObject;
    v19 = [self whitespaceTokens:firstObject];
    [array insertObject:v19 atIndex:0];

LABEL_13:
    _cn_flatten = [array _cn_flatten];
    v7 = [_cn_flatten _cn_map:&__block_literal_global_70];

    goto LABEL_14;
  }

  v7 = [self whitespaceTokens:stringCopy];
LABEL_14:

LABEL_15:

  return v7;
}

- (void)extractNameSuffixFromEnd
{
  tokens = [(CNNameComponentsStringTokenizer *)self tokens];
  v4 = [tokens count];

  if (v4 >= 3)
  {
    v5 = objc_opt_class();
    tokens2 = [(CNNameComponentsStringTokenizer *)self tokens];
    lastObject = [tokens2 lastObject];
    LODWORD(v5) = [v5 isNameSuffix:lastObject];

    if (v5)
    {
      tokens3 = [(CNNameComponentsStringTokenizer *)self tokens];
      lastObject2 = [tokens3 lastObject];
      components = [(CNNameComponentsStringTokenizer *)self components];
      [components setNameSuffix:lastObject2];

      tokens4 = [(CNNameComponentsStringTokenizer *)self tokens];
      v11 = [tokens4 _cn_skipLast:1];
      [(CNNameComponentsStringTokenizer *)self setTokens:v11];
    }
  }
}

- (void)extractNamePrefixFromBeginning
{
  tokens = [(CNNameComponentsStringTokenizer *)self tokens];
  v4 = [tokens count];

  if (v4 >= 3)
  {
    v5 = objc_opt_class();
    tokens2 = [(CNNameComponentsStringTokenizer *)self tokens];
    firstObject = [tokens2 firstObject];
    LODWORD(v5) = [v5 isNamePrefix:firstObject];

    if (v5)
    {
      tokens3 = [(CNNameComponentsStringTokenizer *)self tokens];
      firstObject2 = [tokens3 firstObject];
      components = [(CNNameComponentsStringTokenizer *)self components];
      [components setNamePrefix:firstObject2];

      tokens4 = [(CNNameComponentsStringTokenizer *)self tokens];
      v11 = [tokens4 _cn_skip:1];
      [(CNNameComponentsStringTokenizer *)self setTokens:v11];
    }
  }
}

- (void)adjustTokensForNobiliaryParticles
{
  tokens = [(CNNameComponentsStringTokenizer *)self tokens];
  v4 = [tokens count];

  if (v4 >= 3)
  {
    tokens2 = [(CNNameComponentsStringTokenizer *)self tokens];
    v6 = [tokens2 _cn_any:&__block_literal_global_35];

    if (v6)
    {
      v7 = objc_opt_class();
      tokens3 = [(CNNameComponentsStringTokenizer *)self tokens];
      v8 = [v7 tokensByAdjustingForNobiliaryParticles:tokens3];
      [(CNNameComponentsStringTokenizer *)self setTokens:v8];
    }
  }
}

+ (id)tokensByAdjustingForNobiliaryParticles:(id)particles
{
  v4 = MEMORY[0x1E695DF70];
  particlesCopy = particles;
  array = [v4 array];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__CNNameComponentsStringTokenizer_tokensByAdjustingForNobiliaryParticles___block_invoke;
  v9[3] = &unk_1E6ED7EE8;
  selfCopy = self;
  v7 = array;
  v10 = v7;
  [particlesCopy _cn_each_reverse:v9];

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

+ (id)whitespaceTokens:(id)tokens
{
  v3 = MEMORY[0x1E696AB08];
  tokensCopy = tokens;
  whitespaceAndNewlineCharacterSet = [v3 whitespaceAndNewlineCharacterSet];
  v6 = [tokensCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  v7 = [v6 _cn_filter:&__block_literal_global_41];

  return v7;
}

- (void)extractGivenMiddleFamilyNamesFromWhatsLeftUsingOrder:(int64_t)order
{
  tokens = [(CNNameComponentsStringTokenizer *)self tokens];
  v6 = [tokens count];

  if (v6 == 3)
  {
    tokens2 = [(CNNameComponentsStringTokenizer *)self tokens];
    v15 = [tokens2 objectAtIndex:0];
    components = [(CNNameComponentsStringTokenizer *)self components];
    v17 = components;
    if (order == -1)
    {
      [components setFamilyName:v15];

      tokens3 = [(CNNameComponentsStringTokenizer *)self tokens];
      v23 = [tokens3 objectAtIndex:1];
      components2 = [(CNNameComponentsStringTokenizer *)self components];
      [components2 setGivenName:v23];

      tokens4 = [(CNNameComponentsStringTokenizer *)self tokens];
      components6 = [tokens4 objectAtIndex:2];
      components3 = [(CNNameComponentsStringTokenizer *)self components];
      [components3 setMiddleName:components6];
      goto LABEL_13;
    }

    [components setGivenName:v15];

    tokens5 = [(CNNameComponentsStringTokenizer *)self tokens];
    v19 = [tokens5 objectAtIndex:1];
    components4 = [(CNNameComponentsStringTokenizer *)self components];
    [components4 setMiddleName:v19];

    tokens6 = [(CNNameComponentsStringTokenizer *)self tokens];
    tokens4 = tokens6;
    v13 = 2;
    goto LABEL_9;
  }

  if (v6 == 2)
  {
    tokens7 = [(CNNameComponentsStringTokenizer *)self tokens];
    v9 = [tokens7 objectAtIndex:0];
    components5 = [(CNNameComponentsStringTokenizer *)self components];
    v11 = components5;
    if (order == -1)
    {
      [components5 setFamilyName:v9];

      tokens4 = [(CNNameComponentsStringTokenizer *)self tokens];
      components6 = [tokens4 objectAtIndex:1];
      components3 = [(CNNameComponentsStringTokenizer *)self components];
      [components3 setGivenName:components6];
      goto LABEL_13;
    }

    [components5 setGivenName:v9];

    tokens6 = [(CNNameComponentsStringTokenizer *)self tokens];
    tokens4 = tokens6;
    v13 = 1;
LABEL_9:
    components6 = [tokens6 objectAtIndex:v13];
    components3 = [(CNNameComponentsStringTokenizer *)self components];
    [components3 setFamilyName:components6];
LABEL_13:

    goto LABEL_14;
  }

  if (v6 != 1)
  {
    return;
  }

  tokens4 = [(CNNameComponentsStringTokenizer *)self string];
  components6 = [(CNNameComponentsStringTokenizer *)self components];
  [components6 setGivenName:tokens4];
LABEL_14:
}

+ (BOOL)isNamePrefix:(id)prefix
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CNNameComponentsStringTokenizer_isNamePrefix___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = isNamePrefix__cn_once_token_2;
  prefixCopy = prefix;
  if (v3 != -1)
  {
    dispatch_once(&isNamePrefix__cn_once_token_2, block);
  }

  v5 = isNamePrefix__cn_once_object_2;
  v6 = sNormalizeElements_block_invoke_3(v5, prefixCopy);

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
  nameComponentElements = [self nameComponentElements];
  v3 = [nameComponentElements objectForKeyedSubscript:@"prefixes"];
  v4 = [v3 _cn_map:&__block_literal_global_38_0];

  return v4;
}

+ (BOOL)isNameSuffix:(id)suffix
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CNNameComponentsStringTokenizer_isNameSuffix___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = isNameSuffix__cn_once_token_3;
  suffixCopy = suffix;
  if (v3 != -1)
  {
    dispatch_once(&isNameSuffix__cn_once_token_3, block);
  }

  v5 = isNameSuffix__cn_once_object_3;
  v6 = sNormalizeElements_block_invoke_3(v5, suffixCopy);

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
  nameComponentElements = [self nameComponentElements];
  v3 = [nameComponentElements objectForKeyedSubscript:@"suffixes"];
  v4 = [v3 _cn_map:&__block_literal_global_38_0];

  return v4;
}

+ (BOOL)isNobiliaryParticle:(id)particle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CNNameComponentsStringTokenizer_isNobiliaryParticle___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = isNobiliaryParticle__cn_once_token_4;
  particleCopy = particle;
  if (v3 != -1)
  {
    dispatch_once(&isNobiliaryParticle__cn_once_token_4, block);
  }

  v5 = isNobiliaryParticle__cn_once_object_4;
  v6 = sNormalizeElements_block_invoke_3(v5, particleCopy);

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
  nameComponentElements = [self nameComponentElements];
  v3 = [nameComponentElements objectForKeyedSubscript:@"nobiliary particles"];
  v4 = [v3 _cn_map:&__block_literal_global_38_0];

  return v4;
}

+ (id)nameComponentElements
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__CNNameComponentsStringTokenizer_nameComponentElements__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:self];
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