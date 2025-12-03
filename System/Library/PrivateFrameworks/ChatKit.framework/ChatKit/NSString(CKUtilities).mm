@interface NSString(CKUtilities)
- (BOOL)__ck_containsOnlyCharactersFromSet:()CKUtilities;
- (BOOL)__ck_shouldUseBigEmoji;
- (id)__ck_stringByRedactingQuotedSubstrings;
- (uint64_t)__ck_rangeOfSequenceOfCharactersFromSet:()CKUtilities options:range:;
@end

@implementation NSString(CKUtilities)

- (BOOL)__ck_shouldUseBigEmoji
{
  v1 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self];
  v2 = ([v1 __ck_bigEmojiStyle] - 1) < 3;

  return v2;
}

- (BOOL)__ck_containsOnlyCharactersFromSet:()CKUtilities
{
  v4 = a3;
  v5 = [self length];
  v6 = [self __ck_rangeOfSequenceOfCharactersFromSet:v4 options:0 range:{0, v5}];
  v8 = v7;

  return !v6 && v5 == v8;
}

- (uint64_t)__ck_rangeOfSequenceOfCharactersFromSet:()CKUtilities options:range:
{
  v10 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3010000000;
  v22 = &unk_190F92BB2;
  v23 = xmmword_190DCEFA0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__NSString_CKUtilities____ck_rangeOfSequenceOfCharactersFromSet_options_range___block_invoke;
  v14[3] = &unk_1E72EEEF8;
  v14[4] = self;
  v11 = v10;
  v16 = &v19;
  v17 = a4;
  v15 = v11;
  v18 = (a4 & 4) != 0;
  CKEnumerateSearchRange(a5, a6, (a4 & 4) >> 1, v14);
  v12 = v20[4];

  _Block_object_dispose(&v19, 8);
  return v12;
}

- (id)__ck_stringByRedactingQuotedSubstrings
{
  string = [MEMORY[0x1E696AD60] string];
  v3 = [self length];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    for (i = 0; v4 != i; ++i)
    {
      v7 = [self characterAtIndex:i];
      if (v7 << 24 == 570425344)
      {
        if (v5)
        {
          goto LABEL_9;
        }

        [string appendString:@"<redacted>"];
      }

      else if ((v5 & 1) == 0)
      {
        [string appendFormat:@"%c", v7];
LABEL_9:
        v5 = 0;
        continue;
      }

      v5 = 1;
    }
  }

  v8 = [string copy];

  return v8;
}

@end