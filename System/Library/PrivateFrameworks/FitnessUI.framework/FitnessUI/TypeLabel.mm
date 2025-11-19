@interface TypeLabel
@end

@implementation TypeLabel

void ___TypeLabel_block_invoke()
{
  v15[1] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E69DCC10]);
  v1 = [v0 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v2 = _TypeLabel___typeLabel;
  _TypeLabel___typeLabel = v1;

  [_TypeLabel___typeLabel setLineBreakMode:0];
  [_TypeLabel___typeLabel setNumberOfLines:0];
  [_TypeLabel___typeLabel setTextAlignment:4];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  [_TypeLabel___typeLabel setTextColor:v3];

  [_TypeLabel___typeLabel setAllowsDefaultTighteningForTruncation:1];
  v4 = _LabelFont();
  [_TypeLabel___typeLabel setFont:v4];

  v5 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x1E695DF58] currentLocale];
  v8 = [v7 languageCode];
  v9 = [v8 isEqualToString:@"en"];

  if ((v9 & 1) == 0)
  {
    LODWORD(v10) = 1.0;
    [v6 setHyphenationFactor:v10];
  }

  v11 = [_TypeLabel___typeLabel _defaultAttributes];
  v14 = *MEMORY[0x1E69DB688];
  v15[0] = v6;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v13 = [v11 hk_dictionaryByAddingEntriesFromDictionary:v12];
  [_TypeLabel___typeLabel _setDefaultAttributes:v13];
}

@end