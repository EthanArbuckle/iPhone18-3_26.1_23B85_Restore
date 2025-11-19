@interface NSMutableString(ContactsFoundation)
- (uint64_t)_cn_appendNonNilString:()ContactsFoundation;
- (uint64_t)_cn_trim;
- (void)_cn_deleteCharactersInSet:()ContactsFoundation options:;
- (void)_cn_replaceOccurrencesOfString:()ContactsFoundation withString:;
- (void)_cn_trimLeadingWhitespace;
- (void)_cn_trimTrailingWhitespace;
@end

@implementation NSMutableString(ContactsFoundation)

- (uint64_t)_cn_appendNonNilString:()ContactsFoundation
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v4 = [v4 length];
    v5 = v7;
    if (v4)
    {
      v4 = [a1 appendString:v7];
      v5 = v7;
    }
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (uint64_t)_cn_trim
{
  [a1 _cn_trimLeadingWhitespace];

  return [a1 _cn_trimTrailingWhitespace];
}

- (void)_cn_trimLeadingWhitespace
{
  v2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  [a1 _cn_deleteCharactersInSet:v2 options:8];
}

- (void)_cn_trimTrailingWhitespace
{
  v2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  [a1 _cn_deleteCharactersInSet:v2 options:12];
}

- (void)_cn_deleteCharactersInSet:()ContactsFoundation options:
{
  v9 = a3;
  v6 = [a1 rangeOfCharacterFromSet:? options:?];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v6; i != 0x7FFFFFFFFFFFFFFFLL; i = [a1 rangeOfCharacterFromSet:v9 options:a4])
    {
      [a1 deleteCharactersInRange:{i, v7}];
    }
  }
}

- (void)_cn_replaceOccurrencesOfString:()ContactsFoundation withString:
{
  v6 = a4;
  v7 = a3;
  [a1 replaceOccurrencesOfString:v7 withString:v6 options:0 range:{0, objc_msgSend(a1, "length")}];
}

@end