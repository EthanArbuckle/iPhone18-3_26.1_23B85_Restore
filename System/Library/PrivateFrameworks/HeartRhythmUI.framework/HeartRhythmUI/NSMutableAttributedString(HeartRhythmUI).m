@interface NSMutableAttributedString(HeartRhythmUI)
+ (id)hrui_attributedStringForText:()HeartRhythmUI style:color:boldText:;
+ (id)hrui_bulletedString:()HeartRhythmUI textStyle:;
@end

@implementation NSMutableAttributedString(HeartRhythmUI)

+ (id)hrui_bulletedString:()HeartRhythmUI textStyle:
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [@"• " stringByAppendingString:a3];
  v7 = [objc_alloc(MEMORY[0x277D75520]) initForTextStyle:v5];
  [v7 scaledValueForValue:12.0];
  v9 = v8;
  v10 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v11 = [v10 mutableCopy];

  v12 = objc_alloc(MEMORY[0x277D742E0]);
  v13 = [v12 initWithTextAlignment:4 location:MEMORY[0x277CBEC10] options:v9];
  v22[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [v11 setTabStops:v14];

  [v7 scaledValueForValue:4.0];
  [v11 setParagraphSpacingBefore:?];
  [v11 setDefaultTabInterval:v9];
  [v11 setFirstLineHeadIndent:0.0];
  [v11 setHeadIndent:v9];
  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:v5];

  v16 = *MEMORY[0x277D740A8];
  v20[0] = *MEMORY[0x277D74118];
  v20[1] = v16;
  v21[0] = v11;
  v21[1] = v15;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v18 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v6];
  [v18 addAttributes:v17 range:{0, objc_msgSend(v6, "length")}];

  return v18;
}

+ (id)hrui_attributedStringForText:()HeartRhythmUI style:color:boldText:
{
  v23[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = MEMORY[0x277D74300];
  v13 = a4;
  v14 = [v12 preferredFontForTextStyle:v13];
  v15 = [MEMORY[0x277D74300] hk_preferredFontForTextStyle:v13 symbolicTraits:2];

  if (!v10)
  {
    v10 = [MEMORY[0x277D75348] blackColor];
  }

  v16 = *MEMORY[0x277D740A8];
  v22[0] = *MEMORY[0x277D740C0];
  v22[1] = v16;
  v23[0] = v10;
  v23[1] = v14;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v18 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v9 attributes:v17];
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