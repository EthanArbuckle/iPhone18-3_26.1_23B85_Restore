@interface NTKSFCompactFont
+ (id)fontOfType:(int64_t)a3 size:(double)a4 weight:(double)a5;
@end

@implementation NTKSFCompactFont

+ (id)fontOfType:(int64_t)a3 size:(double)a4 weight:(double)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v10 = *MEMORY[0x277D74420];
  if (*MEMORY[0x277D74420] == a5)
  {
    v10 = *MEMORY[0x277D743F8];
  }

  if (IsBoldTextEnabled)
  {
    a5 = v10;
  }

  if (fontOfType_size_weight__onceToken != -1)
  {
    +[NTKSFCompactFont fontOfType:size:weight:];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"t%ld-s%f-w%f", a3, *&a4, *&a5];
  v12 = [fontOfType_size_weight____fontCache objectForKey:v11];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    switch(a3)
    {
      case 3:
        v14 = +[NTKSFCompactFontLoader sfCompactNumericRoundedFontDescriptor];
        v15 = @"SF Compact Rounded Numeric";
        break;
      case 2:
        v14 = +[NTKSFCompactFontLoader sfCompactNumericSoftFontDescriptor];
        v15 = @"SF Compact Soft";
        break;
      case 1:
        v14 = +[NTKSFCompactFontLoader sfCompactNumericFontDescriptor];
        v15 = @"SF Compact Numeric";
        break;
      default:
        v14 = 0;
        v15 = 0;
        break;
    }

    v16 = [v14 fontAttributes];
    v17 = [v16 mutableCopy];

    v24 = *MEMORY[0x277D74430];
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    v25[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    [v17 setObject:v19 forKeyedSubscript:*MEMORY[0x277D74380]];

    [v17 setObject:0 forKeyedSubscript:*MEMORY[0x277D74340]];
    [v17 setObject:v15 forKeyedSubscript:*MEMORY[0x277D74328]];
    v20 = [objc_alloc(MEMORY[0x277D74310]) initWithFontAttributes:v17];

    v23.receiver = a1;
    v23.super_class = &OBJC_METACLASS___NTKSFCompactFont;
    v21 = objc_msgSendSuper2(&v23, sel_fontWithDescriptor_size_, v20, a4);
    [fontOfType_size_weight____fontCache setObject:v21 forKey:v11];
    v13 = v21;
  }

  return v13;
}

void __43__NTKSFCompactFont_fontOfType_size_weight___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = fontOfType_size_weight____fontCache;
  fontOfType_size_weight____fontCache = v0;
}

@end