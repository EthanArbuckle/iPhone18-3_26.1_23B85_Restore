@interface HUILiveListenLevelIndicator
- (HUILiveListenLevelIndicator)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)updateLevel:(double)level;
@end

@implementation HUILiveListenLevelIndicator

- (HUILiveListenLevelIndicator)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = HUILiveListenLevelIndicator;
  v3 = [(HUILiveListenLevelIndicator *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v15.origin.x = 0.0;
    v15.origin.y = 0.0;
    v15.size.width = 10.0;
    v15.size.height = 10.0;
    v4 = CGPathCreateWithEllipseInRect(v15, 0);
    array = [MEMORY[0x277CBEB18] array];
    v6 = 5;
    do
    {
      layer = [MEMORY[0x277CD9F90] layer];
      [layer setPath:v4];
      [layer setBounds:{0.0, 0.0, 10.0, 10.0}];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [layer setFillColor:{objc_msgSend(whiteColor, "cgColor")}];

      LODWORD(v9) = 0.25;
      [layer setOpacity:v9];
      layer2 = [(HUILiveListenLevelIndicator *)v3 layer];
      [layer2 addSublayer:layer];

      [array addObject:layer];
      --v6;
    }

    while (v6);
    v11 = [array copy];
    levelIndicators = v3->_levelIndicators;
    v3->_levelIndicators = v11;
  }

  return v3;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = HUILiveListenLevelIndicator;
  [(HUILiveListenLevelIndicator *)&v10 layoutSubviews];
  [(HUILiveListenLevelIndicator *)self bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  MidY = CGRectGetMidY(v11);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  levelIndicators = [(HUILiveListenLevelIndicator *)self levelIndicators];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HUILiveListenLevelIndicator_layoutSubviews__block_invoke;
  v9[3] = &unk_2796F6CD0;
  v9[4] = self;
  *&v9[5] = x;
  *&v9[6] = y;
  *&v9[7] = width;
  *&v9[8] = height;
  *&v9[9] = MidY;
  [levelIndicators enumerateObjectsUsingBlock:v9];

  [MEMORY[0x277CD9FF0] commit];
}

void __45__HUILiveListenLevelIndicator_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = a3 * 20.0 + 15.0;
  v5 = MEMORY[0x277D75D18];
  v6 = *(a1 + 32);
  v13 = a2;
  v7 = [v5 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v6, "semanticContentAttribute")}];
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  if (v7 == 1)
  {
    v12 = v4 + CGRectGetMinX(*&v8);
  }

  else
  {
    v12 = CGRectGetMaxX(*&v8) - v4;
  }

  [v13 setPosition:{v12, *(a1 + 72)}];
}

- (void)updateLevel:(double)level
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setAnimationDuration:0.1];
  levelIndicators = [(HUILiveListenLevelIndicator *)self levelIndicators];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__HUILiveListenLevelIndicator_updateLevel___block_invoke;
  v6[3] = &__block_descriptor_40_e29_v32__0__CAShapeLayer_8Q16_B24l;
  *&v6[4] = level;
  [levelIndicators enumerateObjectsUsingBlock:v6];

  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __43__HUILiveListenLevelIndicator_updateLevel___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32) * 5.0;
  v3 = v4;
  LODWORD(v4) = 0.25;
  if (6 - a3 < v3)
  {
    *&v4 = 1.0;
  }

  return [a2 setOpacity:v4];
}

@end