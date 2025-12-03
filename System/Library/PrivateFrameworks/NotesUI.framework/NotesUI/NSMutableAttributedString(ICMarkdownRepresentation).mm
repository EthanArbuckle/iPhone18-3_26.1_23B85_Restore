@interface NSMutableAttributedString(ICMarkdownRepresentation)
- (void)ic_addOrUpdateNSParagraphStyleAtRange:()ICMarkdownRepresentation usingBlock:;
- (void)ic_addOrUpdateParagraphStyleAtRange:()ICMarkdownRepresentation usingBlock:;
- (void)ic_setFontHint:()ICMarkdownRepresentation atRange:;
@end

@implementation NSMutableAttributedString(ICMarkdownRepresentation)

- (void)ic_addOrUpdateParagraphStyleAtRange:()ICMarkdownRepresentation usingBlock:
{
  v18 = 0;
  v19 = 0;
  v8 = MEMORY[0x1E69B7600];
  v9 = *MEMORY[0x1E69B7600];
  v10 = a5;
  v11 = [self attribute:v9 atIndex:a3 effectiveRange:&v18];
  v12 = [v11 mutableCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E69B78B8]);
  }

  v15 = v14;

  v10[2](v10, v15);
  v16 = *v8;
  v17 = [v15 copy];
  [self addAttribute:v16 value:v17 range:{a3, a4}];
}

- (void)ic_addOrUpdateNSParagraphStyleAtRange:()ICMarkdownRepresentation usingBlock:
{
  v16 = 0;
  v17 = 0;
  v8 = *MEMORY[0x1E69DB688];
  v9 = a5;
  v10 = [self attribute:v8 atIndex:a3 effectiveRange:&v16];
  v11 = [v10 mutableCopy];
  v12 = v11;
  if (v11)
  {
    ic_mutableDefaultParagraphStyle = v11;
  }

  else
  {
    ic_mutableDefaultParagraphStyle = [MEMORY[0x1E69DB7C8] ic_mutableDefaultParagraphStyle];
  }

  v14 = ic_mutableDefaultParagraphStyle;

  v9[2](v9, v14);
  v15 = [v14 copy];
  [self addAttribute:v8 value:v15 range:{a3, a4}];
}

- (void)ic_setFontHint:()ICMarkdownRepresentation atRange:
{
  v17[0] = 0;
  v17[1] = 0;
  v9 = MEMORY[0x1E69B75E8];
  v10 = [self attribute:*MEMORY[0x1E69B75E8] atIndex:a4 effectiveRange:v17];
  v11 = v10;
  v12 = &unk_1F4FC4170;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = MEMORY[0x1E696AD98];
  unsignedIntValue = [v13 unsignedIntValue];

  v16 = [v14 numberWithUnsignedInt:unsignedIntValue | a3];
  [self addAttribute:*v9 value:v16 range:{a4, a5}];
}

@end