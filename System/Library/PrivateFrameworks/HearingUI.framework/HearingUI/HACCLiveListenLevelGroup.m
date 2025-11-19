@interface HACCLiveListenLevelGroup
- (HACCLiveListenLevelGroup)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)updateLevel:(double)a3;
@end

@implementation HACCLiveListenLevelGroup

- (HACCLiveListenLevelGroup)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = HACCLiveListenLevelGroup;
  v3 = [(HACCLiveListenLevelGroup *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = 5;
    do
    {
      v6 = objc_alloc_init(MEMORY[0x277CD9F90]);
      v7 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.25];
      [v6 setFillColor:{objc_msgSend(v7, "CGColor")}];

      v8 = [(HACCLiveListenLevelGroup *)v3 layer];
      [v8 addSublayer:v6];

      [v4 addObject:v6];
      --v5;
    }

    while (v5);
    [(HACCLiveListenLevelGroup *)v3 setLevels:v4];
  }

  return v3;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = HACCLiveListenLevelGroup;
  [(HACCLiveListenLevelGroup *)&v13 layoutSubviews];
  [(HACCLiveListenLevelGroup *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(HACCLiveListenLevelGroup *)self levels];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__HACCLiveListenLevelGroup_layoutSubviews__block_invoke;
  v12[3] = &unk_2796F78C0;
  v12[4] = self;
  v12[5] = v4;
  v12[6] = v6;
  v12[7] = v8;
  v12[8] = v10;
  [v11 enumerateObjectsUsingBlock:v12];
}

void __42__HACCLiveListenLevelGroup_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = MEMORY[0x277D75D18];
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v5 userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v6, "semanticContentAttribute")}];
  v9 = MEMORY[0x277D75208];
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = a3;
  if (v8 == 1)
  {
    v15 = CGRectGetMinX(*&v10) + 10.0 + v14 * 7.0;
    v16 = 4.0;
  }

  else
  {
    v15 = CGRectGetMaxX(*&v10) + -10.0 + v14 * -7.0;
    v16 = -4.0;
  }

  v18 = [v9 bezierPathWithRoundedRect:v15 + v14 * v16 cornerRadius:{CGRectGetMidY(*(a1 + 40)) + -3.5, 7.0, 7.0, 20.0}];
  v17 = v18;
  [v7 setPath:{objc_msgSend(v18, "CGPath")}];
}

- (void)updateLevel:(double)a3
{
  v4 = [(HACCLiveListenLevelGroup *)self levels];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__HACCLiveListenLevelGroup_updateLevel___block_invoke;
  v5[3] = &__block_descriptor_40_e29_v32__0__CAShapeLayer_8Q16_B24l;
  *&v5[4] = a3;
  [v4 enumerateObjectsUsingBlock:v5];
}

void __40__HACCLiveListenLevelGroup_updateLevel___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = MEMORY[0x277D75348];
  if (6 - a3 >= (*(a1 + 32) * 5.0))
  {
    v4 = 0.25;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = a2;
  v7 = [v3 colorWithWhite:1.0 alpha:v4];
  v6 = v7;
  [v5 setFillColor:{objc_msgSend(v7, "CGColor")}];
}

@end