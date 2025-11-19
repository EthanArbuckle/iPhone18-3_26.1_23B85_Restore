@interface NSString(CKSentWithSiri)
- (uint64_t)ck_isSiriRecognizableWithLanguageCode:()CKSentWithSiri;
@end

@implementation NSString(CKSentWithSiri)

- (uint64_t)ck_isSiriRecognizableWithLanguageCode:()CKSentWithSiri
{
  v2 = [MEMORY[0x1E695DF58] canonicalLocaleIdentifierFromString:?];
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v2];
  v4 = objc_alloc_init(MEMORY[0x1E696AD48]);
  if (v3)
  {
    v5 = [v3 exemplarCharacterSet];
    [v4 formUnionWithCharacterSet:v5];
  }

  v6 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  [v4 formUnionWithCharacterSet:v6];

  v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:a1];
  v8 = [v4 isSupersetOfSet:v7];

  return v8;
}

@end