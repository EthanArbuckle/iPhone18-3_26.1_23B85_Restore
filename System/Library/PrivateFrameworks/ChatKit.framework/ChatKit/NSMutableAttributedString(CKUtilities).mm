@interface NSMutableAttributedString(CKUtilities)
- (void)__ck_filterAttributes:()CKUtilities;
- (void)__ck_removeAllAttributesExcept:()CKUtilities;
- (void)__ck_removeOccurencesOfString:()CKUtilities;
@end

@implementation NSMutableAttributedString(CKUtilities)

- (void)__ck_removeOccurencesOfString:()CKUtilities
{
  v7 = a3;
  string = [self string];
  if ([string rangeOfString:v7 options:2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    do
    {
      [self deleteCharactersInRange:{0x7FFFFFFFFFFFFFFFLL, v5}];
      string2 = [self string];

      string = string2;
    }

    while ([string2 rangeOfString:v7 options:2] == 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    string2 = string;
  }
}

- (void)__ck_removeAllAttributesExcept:()CKUtilities
{
  v4 = a3;
  v5 = [self length];
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__NSMutableAttributedString_CKUtilities____ck_removeAllAttributesExcept___block_invoke;
  v8[3] = &unk_1E72EEF48;
  v9 = v6;
  selfCopy = self;
  v7 = v6;
  [self enumerateAttributesInRange:0 options:v5 usingBlock:{0, v8}];
}

- (void)__ck_filterAttributes:()CKUtilities
{
  v4 = a3;
  v5 = [self length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__NSMutableAttributedString_CKUtilities____ck_filterAttributes___block_invoke;
  v7[3] = &unk_1E72EEF98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [self enumerateAttributesInRange:0 options:v5 usingBlock:{0, v7}];
}

@end