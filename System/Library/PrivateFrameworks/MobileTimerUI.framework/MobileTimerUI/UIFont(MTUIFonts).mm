@interface UIFont(MTUIFonts)
+ (CTFontRef)mtui_lightTimeFontOfSize:()MTUIFonts;
+ (CTFontRef)mtui_thinTimeFontOfSize:()MTUIFonts;
+ (id)mtui_defaultTimeDesignatorFont;
+ (id)mtui_lightTimeFont;
+ (id)mtui_thinTimeFont;
- (id)mtui_fontByAddingAttributes:()MTUIFonts;
@end

@implementation UIFont(MTUIFonts)

+ (CTFontRef)mtui_thinTimeFontOfSize:()MTUIFonts
{
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontMenuItemFontType|0x80, self, 0);

  return UIFontForLanguage;
}

+ (CTFontRef)mtui_lightTimeFontOfSize:()MTUIFonts
{
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontMiniEmphasizedSystemFontType|0x60, self, 0);

  return UIFontForLanguage;
}

+ (id)mtui_defaultTimeDesignatorFont
{
  v1 = MEMORY[0x277D74300];
  [self mtui_defaultTimeDesignatorFontSize];
  v2 = [v1 systemFontOfSize:? weight:?];
  v3 = [v2 mtui_fontByAddingAttributes:2];

  return v3;
}

+ (id)mtui_thinTimeFont
{
  [self mtui_defaultTimeFontSize];
  v2 = [self mtui_thinTimeFontOfSize:?];
  CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();

  return CopyOfSystemUIFontWithGrade;
}

+ (id)mtui_lightTimeFont
{
  [self mtui_defaultTimeFontSize];
  v2 = [self mtui_lightTimeFontOfSize:?];
  CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();

  return CopyOfSystemUIFontWithGrade;
}

- (id)mtui_fontByAddingAttributes:()MTUIFonts
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3;
    fontDescriptor = [self fontDescriptor];
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = MEMORY[0x277CCABB0];
    [self pointSize];
    v8 = [v7 numberWithDouble:?];
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277CC4918]];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = MEMORY[0x277D74398];
    v11 = MEMORY[0x277D74388];
    if (v4)
    {
      v12 = *MEMORY[0x277D74388];
      v21[0] = *MEMORY[0x277D74398];
      v21[1] = v12;
      v22[0] = &unk_286BC8BE0;
      v22[1] = &unk_286BC8BF8;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
      [v9 addObject:v13];
    }

    if ((v4 & 2) != 0)
    {
      v14 = *v11;
      v19[0] = *v10;
      v19[1] = v14;
      v20[0] = &unk_286BC8C10;
      v20[1] = &unk_286BC8C28;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
      [v9 addObject:v15];
    }

    [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x277D74338]];
    v16 = [fontDescriptor fontDescriptorByAddingAttributes:v6];

    selfCopy = [MEMORY[0x277D74300] fontWithDescriptor:v16 size:0.0];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end