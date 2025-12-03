@interface NSString(ContactsFoundation)
+ (uint64_t)_cn_isBlank:()ContactsFoundation;
- (__CFString)_cn_truncateAtLength:()ContactsFoundation addEllipsisIfTrunctated:;
- (id)_cn_SHA256HashStringWithSalt:()ContactsFoundation;
- (id)_cn_flatMap:()ContactsFoundation;
- (id)_cn_nameComponentTokens;
- (id)_cn_nameComponentTokensUsingLocale:()ContactsFoundation inferredNameOrder:;
- (id)_cn_resultWithAllCharacters:()ContactsFoundation;
- (id)_cn_stringByAddingPercentEscapesIfNecessary;
- (id)_cn_stringByAddingPercentEscapesToEntireURL;
- (id)_cn_stringByDeletingCharactersInSet:()ContactsFoundation;
- (id)_cn_stringByDeletingNumberOfPathComponents:()ContactsFoundation;
- (id)_cn_stringByNormalizingCase;
- (id)_cn_trimmedString;
- (uint64_t)_cn_containsOnlyDigits;
- (uint64_t)_cn_hasPrefix:()ContactsFoundation options:;
- (uint64_t)_cn_hasSuffix:()ContactsFoundation options:;
- (uint64_t)_cn_rangeFromIndex:()ContactsFoundation;
- (uint64_t)_cn_rangeOfAnchoredCharacters:()ContactsFoundation options:;
- (uint64_t)_cn_rangeOfCommonPrefixWithString:()ContactsFoundation options:;
- (uint64_t)_cn_skip:()ContactsFoundation;
- (uint64_t)_cn_skipLast:()ContactsFoundation;
- (uint64_t)_cn_take:()ContactsFoundation;
- (uint64_t)_cn_takeLast:()ContactsFoundation;
- (void)_cn_eachCharacter:()ContactsFoundation;
@end

@implementation NSString(ContactsFoundation)

- (id)_cn_trimmedString
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v3;
}

+ (uint64_t)_cn_isBlank:()ContactsFoundation
{
  if (a3)
  {
    return [a3 _cn_isBlank];
  }

  else
  {
    return 1;
  }
}

- (uint64_t)_cn_hasPrefix:()ContactsFoundation options:
{
  if (a3)
  {
    return [self _cn_containsSubstring:a3 options:a4 | 8];
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_cn_hasSuffix:()ContactsFoundation options:
{
  if (a3)
  {
    return [self _cn_containsSubstring:a3 options:a4 | 0xC];
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_cn_containsOnlyDigits
{
  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];

  LODWORD(self) = [self _cn_containsCharacterInSet:invertedSet];
  return self ^ 1;
}

- (id)_cn_stringByDeletingCharactersInSet:()ContactsFoundation
{
  v4 = a3;
  if ([self _cn_containsCharacterInSet:v4])
  {
    v5 = [self mutableCopy];
    [v5 _cn_deleteCharactersInSet:v4];
    selfCopy = [v5 copy];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (uint64_t)_cn_rangeOfCommonPrefixWithString:()ContactsFoundation options:
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = [self length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__NSString_ContactsFoundation___cn_rangeOfCommonPrefixWithString_options___block_invoke;
  v11[3] = &unk_1E6ED8798;
  v8 = v6;
  v12 = v8;
  selfCopy = self;
  v14 = &v16;
  v15 = a4;
  [self enumerateSubstringsInRange:0 options:v7 usingBlock:{2, v11}];
  if (v17[3])
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v16, 8);
  return v9;
}

- (id)_cn_stringByAddingPercentEscapesIfNecessary
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:self];

  if (v2)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy2 = [self stringByRemovingPercentEncoding];
    if (!selfCopy2)
    {
      selfCopy2 = self;
    }

    selfCopy = [selfCopy2 _cn_stringByAddingPercentEscapesToEntireURL];
  }

  return selfCopy;
}

- (id)_cn_stringByAddingPercentEscapesToEntireURL
{
  v1 = MEMORY[0x1E695DFF8];
  v2 = [self dataUsingEncoding:4];
  v3 = [v1 URLWithDataRepresentation:v2 relativeToURL:0];

  absoluteString = [v3 absoluteString];

  return absoluteString;
}

- (id)_cn_stringByDeletingNumberOfPathComponents:()ContactsFoundation
{
  selfCopy = self;
  v5 = selfCopy;
  if (a3)
  {
    do
    {
      stringByDeletingLastPathComponent = [v5 stringByDeletingLastPathComponent];

      v5 = stringByDeletingLastPathComponent;
      --a3;
    }

    while (a3);
  }

  else
  {
    stringByDeletingLastPathComponent = selfCopy;
  }

  return stringByDeletingLastPathComponent;
}

- (id)_cn_stringByNormalizingCase
{
  v1 = [MEMORY[0x1E696AE18] newStringFrom:self usingUnicodeTransforms:3];

  return v1;
}

- (id)_cn_nameComponentTokens
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [self _cn_nameComponentTokensUsingLocale:currentLocale inferredNameOrder:0];

  return v3;
}

- (id)_cn_nameComponentTokensUsingLocale:()ContactsFoundation inferredNameOrder:
{
  v8 = 0;
  v5 = [CNNameStringTokenizer tokenizeNameString:self usingLocale:a3 inferredNameOrder:&v8];
  if (a4)
  {
    if (v8 == -1)
    {
      v6 = -1;
    }

    else
    {
      v6 = v8 == 1;
    }

    *a4 = v6;
  }

  return v5;
}

- (id)_cn_SHA256HashStringWithSalt:()ContactsFoundation
{
  v4 = a3;
  v5 = [self dataUsingEncoding:4];
  v6 = [v5 _cn_SHA256HashDataWithSalt:v4];

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:1];

  return v7;
}

- (uint64_t)_cn_rangeFromIndex:()ContactsFoundation
{
  v3 = a3;
  if ([self length] < a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  [self length];
  return v3;
}

- (void)_cn_eachCharacter:()ContactsFoundation
{
  v5 = a3;
  if ([self length])
  {
    v4 = 0;
    do
    {
      v5[2](v5, [self characterAtIndex:v4++]);
    }

    while (v4 < [self length]);
  }
}

- (uint64_t)_cn_skip:()ContactsFoundation
{
  [self _cn_rangeOfAnchoredCharacters:a3 options:0];

  return [self substringFromIndex:v4];
}

- (uint64_t)_cn_skipLast:()ContactsFoundation
{
  v4 = [self _cn_rangeOfAnchoredCharacters:a3 options:4];

  return [self substringToIndex:v4];
}

- (uint64_t)_cn_take:()ContactsFoundation
{
  v5 = [self _cn_rangeOfAnchoredCharacters:a3 options:0];

  return [self substringWithRange:{v5, v4}];
}

- (uint64_t)_cn_takeLast:()ContactsFoundation
{
  v5 = [self _cn_rangeOfAnchoredCharacters:a3 options:4];

  return [self substringWithRange:{v5, v4}];
}

- (uint64_t)_cn_rangeOfAnchoredCharacters:()ContactsFoundation options:
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__NSString_ContactsFoundation___cn_rangeOfAnchoredCharacters_options___block_invoke;
  aBlock[3] = &unk_1E6ED87C0;
  aBlock[4] = self;
  aBlock[5] = a4;
  v7 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__NSString_ContactsFoundation___cn_rangeOfAnchoredCharacters_options___block_invoke_2;
  v15[3] = &__block_descriptor_40_e20_Q24__0__NSRange_QQ_8l;
  v15[4] = a4;
  v8 = _Block_copy(v15);
  location = v7[2](v7);
  for (i = v10; a3; --a3)
  {
    if (i >= [self length])
    {
      break;
    }

    v18.location = [self rangeOfComposedCharacterSequenceAtIndex:{v8[2](v8, location, i)}];
    v18.length = v12;
    v17.location = location;
    v17.length = i;
    v13 = NSUnionRange(v17, v18);
    location = v13.location;
    i = v13.length;
  }

  return location;
}

- (__CFString)_cn_truncateAtLength:()ContactsFoundation addEllipsisIfTrunctated:
{
  if (a3)
  {
    if ([self length] <= a3)
    {
      selfCopy = self;
    }

    else
    {
      v7 = [self rangeOfComposedCharacterSequenceAtIndex:a3 - 1];
      if (v7 + v8 <= a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = v7;
      }

      v10 = [self substringToIndex:v9];
      selfCopy = v10;
      if (a4)
      {
        v12 = [(__CFString *)v10 stringByAppendingString:@"…"];

        selfCopy = v12;
      }
    }
  }

  else
  {
    selfCopy = &stru_1EF441028;
  }

  return selfCopy;
}

- (id)_cn_resultWithAllCharacters:()ContactsFoundation
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(__CFString *)self length];
  if (!self || (v6 = v5, ![(__CFString *)self length]))
  {
LABEL_9:
    (*(v4 + 2))(v4, 0, 0);
    goto LABEL_10;
  }

  CharactersPtr = CFStringGetCharactersPtr(self);
  if (!CharactersPtr)
  {
    if (v6 <= 0xFE)
    {
      MEMORY[0x1EEE9AC00](0);
      v9 = v15 - ((v8 + 17) & 0xFFFFFFFFFFFFFFF0);
      [(__CFString *)self getCharacters:v9 range:0, v6];
      *&v9[2 * v6] = 0;
      v10 = (*(v4 + 2))(v4, v9, v6);
      goto LABEL_11;
    }

    v11 = malloc_type_malloc(2 * v6 + 2, 0x1000040BDFB0063uLL);
    if (v11)
    {
      v12 = v11;
      [(__CFString *)self getCharacters:v11 range:0, v6];
      v12[v6] = 0;
      v10 = (*(v4 + 2))(v4, v12, v6);
      free(v12);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  (*(v4 + 2))(v4, CharactersPtr, v6);
  v10 = LABEL_10:;
LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_cn_flatMap:()ContactsFoundation
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6 = [self length];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__NSString_ContactsFoundation___cn_flatMap___block_invoke;
  v12[3] = &unk_1E6ED8810;
  v7 = v5;
  v13 = v7;
  v14 = v4;
  v8 = v4;
  [self enumerateSubstringsInRange:0 options:v6 usingBlock:{2, v12}];
  v9 = v14;
  v10 = v7;

  return v7;
}

@end