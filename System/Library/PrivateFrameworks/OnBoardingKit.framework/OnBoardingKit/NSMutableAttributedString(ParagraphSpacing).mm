@interface NSMutableAttributedString(ParagraphSpacing)
- (void)compressDoubleSpacingBy:()ParagraphSpacing;
@end

@implementation NSMutableAttributedString(ParagraphSpacing)

- (void)compressDoubleSpacingBy:()ParagraphSpacing
{
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v13 = [defaultParagraphStyle mutableCopy];

  [v13 setParagraphSpacing:a2];
  v5 = [self length];
  string = [self string];
  v7 = [string rangeOfString:@"\n\n" options:0 range:{0, v5}];
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = *MEMORY[0x1E69DB688];
    do
    {
      [self addAttribute:v11 value:v13 range:{v9, v10}];
      v9 = [string rangeOfString:@"\n\n" options:0 range:?];
      v10 = v12;
    }

    while (v12);
  }
}

@end