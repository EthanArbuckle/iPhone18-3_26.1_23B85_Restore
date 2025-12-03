@interface NSMutableAttributedString(ICTableAdditions)
- (void)ic_addTextBlocks:()ICTableAdditions range:;
- (void)ic_convertParagraphStyleToBodyInRange:()ICTableAdditions;
@end

@implementation NSMutableAttributedString(ICTableAdditions)

- (void)ic_addTextBlocks:()ICTableAdditions range:
{
  v8 = a3;
  v15 = 0;
  v16 = 0;
  if (a4 < a4 + a5)
  {
    v9 = 0;
    v10 = *MEMORY[0x1E69DB688];
    v11 = a4;
    do
    {
      v12 = v9;
      v9 = [self attribute:v10 atIndex:v11 longestEffectiveRange:&v15 inRange:{a4, a5}];

      if (v9)
      {
        v13 = [v9 mutableCopy];
      }

      else
      {
        defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
        v13 = [defaultParagraphStyle mutableCopy];
      }

      [v13 setTextBlocks:{v8, v15, v16}];
      [self addAttribute:v10 value:v13 range:{v15, v16}];
      v11 = v16 + v15;
    }

    while (v11 < a4 + a5);
  }
}

- (void)ic_convertParagraphStyleToBodyInRange:()ICTableAdditions
{
  v7 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:3];
  v8 = *MEMORY[0x1E69B7600];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__NSMutableAttributedString_ICTableAdditions__ic_convertParagraphStyleToBodyInRange___block_invoke;
  v10[3] = &unk_1E846C668;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [self enumerateAttribute:v8 inRange:a3 options:a4 usingBlock:{0, v10}];
}

@end