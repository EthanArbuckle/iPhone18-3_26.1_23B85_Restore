@interface NSMutableAttributedString(HKAdditions)
+ (id)hk_attributedStringForText:()HKAdditions style:color:boldText:;
+ (id)hk_initWithString:()HKAdditions font:hyphenationFactor:;
@end

@implementation NSMutableAttributedString(HKAdditions)

+ (id)hk_initWithString:()HKAdditions font:hyphenationFactor:
{
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69DB7D0];
  v8 = a5;
  v9 = a4;
  defaultParagraphStyle = [v7 defaultParagraphStyle];
  v11 = [defaultParagraphStyle mutableCopy];

  *&v12 = self;
  [v11 setHyphenationFactor:v12];
  [v11 setLineBreakMode:4];
  v13 = objc_alloc(MEMORY[0x1E696AD40]);
  v14 = *MEMORY[0x1E69DB688];
  v18[0] = *MEMORY[0x1E69DB648];
  v18[1] = v14;
  v19[0] = v8;
  v19[1] = v11;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v16 = [v13 initWithString:v9 attributes:v15];

  return v16;
}

+ (id)hk_attributedStringForText:()HKAdditions style:color:boldText:
{
  v23[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  blackColor = a5;
  v11 = a6;
  v12 = MEMORY[0x1E69DB878];
  v13 = a4;
  v14 = [v12 preferredFontForTextStyle:v13];
  v15 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v13 symbolicTraits:2];

  if (!blackColor)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
  }

  v16 = *MEMORY[0x1E69DB648];
  v22[0] = *MEMORY[0x1E69DB650];
  v22[1] = v16;
  v23[0] = blackColor;
  v23[1] = v14;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v18 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v9 attributes:v17];
  if (v11)
  {
    v19 = [v9 localizedStandardRangeOfString:v11];
    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v18 addAttribute:v16 value:v15 range:{v19, v20}];
    }
  }

  return v18;
}

@end