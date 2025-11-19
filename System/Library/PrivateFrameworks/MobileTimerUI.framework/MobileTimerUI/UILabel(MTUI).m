@interface UILabel(MTUI)
- (void)mtui_setText:()MTUI hyphenationFactor:;
@end

@implementation UILabel(MTUI)

- (void)mtui_setText:()MTUI hyphenationFactor:
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a2 <= 0.0)
  {
    v9 = a4;
    [a1 setText:v9];
  }

  else
  {
    v6 = MEMORY[0x277D74248];
    v7 = a4;
    v8 = [v6 defaultParagraphStyle];
    v9 = [v8 mutableCopy];

    *&v10 = a2;
    [v9 setHyphenationFactor:v10];
    v11 = objc_alloc(MEMORY[0x277CCA898]);
    v14 = *MEMORY[0x277D74118];
    v15[0] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v13 = [v11 initWithString:v7 attributes:v12];

    [a1 setAttributedText:v13];
  }
}

@end