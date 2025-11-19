@interface EMP_TSDImageColorAnalyzer
- (EMP_TSDImageColorAnalyzer)initWithImage:(id)a3;
- (NSArray)dominantColors;
- (NSOrderedSet)interestingColors;
- (UIColor)backgroundColor;
- (id)textColorForBackgroundColor:(id)a3;
- (id)textShadowColorForTextColor:(id)a3 backgroundColor:(id)a4;
- (void)dealloc;
- (void)filterInterestingColorsUsingBlock:(id)a3;
- (void)p_prepareInterestingColors;
@end

@implementation EMP_TSDImageColorAnalyzer

- (EMP_TSDImageColorAnalyzer)initWithImage:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = EMP_TSDImageColorAnalyzer;
  if ([(EMP_TSDImageColorAnalyzer *)&v6 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  imageAnalyzer = self->_imageAnalyzer;
  if (imageAnalyzer)
  {
    JCImageAnalyzer::~JCImageAnalyzer(imageAnalyzer);
    MEMORY[0x24C20CE40]();
  }

  v4.receiver = self;
  v4.super_class = EMP_TSDImageColorAnalyzer;
  [(EMP_TSDImageColorAnalyzer *)&v4 dealloc];
}

- (NSArray)dominantColors
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = JCImageAnalyzer::DominantColors(self->_imageAnalyzer);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    do
    {
      JCColor::JCColor(v18, v5);
      v7 = [MEMORY[0x277D75348] colorWithCGColor:v18[0]];
      [v3 addObject:v7];

      JCColor::~JCColor(v18);
      v5 = (v5 + 16);
    }

    while (v5 != v6);
  }

  if ([v3 count] <= 1)
  {
    v8 = [(EMP_TSDImageColorAnalyzer *)self backgroundColor];
    v9 = MEMORY[0x277CBEB58];
    v10 = [MEMORY[0x277D75348] blackColor];
    v19[0] = v10;
    v11 = [MEMORY[0x277D75348] whiteColor];
    v19[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v13 = [v9 setWithArray:v12];

    v14 = [(EMP_TSDImageColorAnalyzer *)self backgroundColor];
    v15 = v14 == 0;

    if (!v15)
    {
      [v13 addObject:v8];
    }

    v16 = [v13 allObjects];
    [v3 addObjectsFromArray:v16];
  }

  return v3;
}

- (UIColor)backgroundColor
{
  JCColor::JCColor(v4, (self->_imageAnalyzer + 24));
  if (v4[0])
  {
    v2 = [MEMORY[0x277D75348] colorWithCGColor:?];
  }

  else
  {
    v2 = 0;
  }

  JCColor::~JCColor(v4);

  return v2;
}

- (NSOrderedSet)interestingColors
{
  v2 = [(NSMutableOrderedSet *)self->_interestingColors copy];

  return v2;
}

- (void)filterInterestingColorsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  interestingColors = self->_interestingColors;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __63__EMP_TSDImageColorAnalyzer_filterInterestingColorsUsingBlock___block_invoke;
  v11 = &unk_278FC1C60;
  v7 = v4;
  v12 = v5;
  v13 = v7;
  [(NSMutableOrderedSet *)interestingColors enumerateObjectsUsingBlock:&v8];
  [(NSMutableOrderedSet *)self->_interestingColors minusSet:v5, v8, v9, v10, v11];
}

- (id)textColorForBackgroundColor:(id)a3
{
  v4 = a3;
  JCColor::JCColor(v8, [v4 CGColor]);
  JCImageAnalyzer::GetTextColorForBackgroundColor(self->_imageAnalyzer, v8, v7);
  v5 = [MEMORY[0x277D75348] colorWithCGColor:v7[0]];
  JCColor::~JCColor(v7);
  JCColor::~JCColor(v8);

  return v5;
}

- (id)textShadowColorForTextColor:(id)a3 backgroundColor:(id)a4
{
  v5 = a3;
  v6 = a4;
  JCColor::JCColor(v11, [v5 CGColor]);
  JCColor::JCColor(v10, [v6 CGColor]);
  JCImageAnalyzer::GetTextShadowColor(v11, v10, v9);
  v7 = [MEMORY[0x277D75348] colorWithCGColor:v9[0]];
  JCColor::~JCColor(v9);
  JCColor::~JCColor(v10);
  JCColor::~JCColor(v11);

  return v7;
}

- (void)p_prepareInterestingColors
{
  interestingColors = self->_interestingColors;
  v4 = [(EMP_TSDImageColorAnalyzer *)self dominantColors];
  [(NSMutableOrderedSet *)interestingColors addObjectsFromArray:v4];

  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v7 = self->_interestingColors;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__EMP_TSDImageColorAnalyzer_p_prepareInterestingColors__block_invoke;
  v8[3] = &unk_278FC1C88;
  v8[4] = v6;
  v8[5] = v5;
  [(NSMutableOrderedSet *)v7 enumerateObjectsUsingBlock:v8];
  [(NSMutableOrderedSet *)self->_interestingColors minusSet:v5];
}

@end