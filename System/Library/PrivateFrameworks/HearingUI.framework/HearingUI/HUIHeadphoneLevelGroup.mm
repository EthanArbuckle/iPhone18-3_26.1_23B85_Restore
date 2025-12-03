@interface HUIHeadphoneLevelGroup
- (HUIHeadphoneLevelGroup)init;
- (void)dealloc;
- (void)layoutLevels;
- (void)layoutSubviews;
- (void)updateWithExposure:(double)exposure withThreshold:(unint64_t)threshold;
@end

@implementation HUIHeadphoneLevelGroup

- (HUIHeadphoneLevelGroup)init
{
  v24[1] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = HUIHeadphoneLevelGroup;
  v2 = [(HUIHeadphoneLevelGroup *)&v23 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_updateConstraints name:*MEMORY[0x277D76810] object:0];

    v2->_isRTL = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[HUIHeadphoneLevelGroup semanticContentAttribute](v2, "semanticContentAttribute")}] == 1;
    isRTL = [(HUIHeadphoneLevelGroup *)v2 isRTL];
    v5 = 12;
    if (isRTL)
    {
      v5 = 5;
    }

    v2->_pipFlagIndex = v5;
    array = [MEMORY[0x277CBEB18] array];
    levels = v2->_levels;
    v2->_levels = array;

    array2 = [MEMORY[0x277CBEB18] array];
    inactiveLevels = v2->_inactiveLevels;
    v2->_inactiveLevels = array2;

    v10 = *MEMORY[0x277CDA5D8];
    v11 = 18;
    do
    {
      v12 = objc_opt_new();
      [v12 setAccessibilityIdentifier:@"Pill"];
      [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
      layer = [v12 layer];
      v14 = [MEMORY[0x277CD9EA0] filterWithType:v10];
      [layer setCompositingFilter:v14];

      layer2 = [v12 layer];
      v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.15];
      [layer2 setBackgroundColor:{objc_msgSend(v16, "CGColor")}];

      [(HUIHeadphoneLevelGroup *)v2 addSubview:v12];
      [(NSMutableArray *)v2->_inactiveLevels addObject:v12];
      v17 = objc_opt_new();
      [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(HUIHeadphoneLevelGroup *)v2 addSubview:v17];
      [(NSMutableArray *)v2->_levels addObject:v17];

      --v11;
    }

    while (v11);
    v18 = MEMORY[0x277CCAAD0];
    heightAnchor = [(HUIHeadphoneLevelGroup *)v2 heightAnchor];
    v20 = [heightAnchor constraintEqualToConstant:34.0];
    v24[0] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [v18 activateConstraints:v21];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = HUIHeadphoneLevelGroup;
  [(HUIHeadphoneLevelGroup *)&v4 dealloc];
}

- (void)layoutSubviews
{
  *&v17[5] = *MEMORY[0x277D85DE8];
  v3 = Layout;
  [(HUIHeadphoneLevelGroup *)self frame];
  if (v4 == 316.0)
  {
    qword_27F4D4498 = 0x3FF0000000000000;
    v5 = &xmmword_2521A9820;
LABEL_11:
    v10 = v5[1];
    Layout = *v5;
    *&qword_27F4D4478 = v10;
    xmmword_27F4D4488 = v5[2];
    goto LABEL_12;
  }

  [(HUIHeadphoneLevelGroup *)self frame];
  if (v6 == 290.0)
  {
    qword_27F4D4498 = 0x3FF0000000000000;
    v5 = &xmmword_2521A97B0;
    goto LABEL_11;
  }

  [(HUIHeadphoneLevelGroup *)self frame];
  if (v7 == 306.0)
  {
    qword_27F4D4498 = 0x3FF0000000000000;
    v5 = &xmmword_2521A97E8;
    goto LABEL_11;
  }

  [(HUIHeadphoneLevelGroup *)self frame];
  if (v8 == 281.0)
  {
    qword_27F4D4498 = 0x3FF0000000000000;
    v5 = &xmmword_2521A9778;
    goto LABEL_11;
  }

  [(HUIHeadphoneLevelGroup *)self frame];
  if (v9 == 248.0)
  {
LABEL_10:
    qword_27F4D4498 = 0x3FF0000000000000;
    v5 = &layouts;
    goto LABEL_11;
  }

  if (!v3)
  {
    v13 = HCLogSoundMeter();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      [(HUIHeadphoneLevelGroup *)self frame];
      *buf = 134217984;
      *v17 = v14;
      _os_log_impl(&dword_252166000, v13, OS_LOG_TYPE_INFO, "Unknown headphone level width (%f). Falling back to 320", buf, 0xCu);
    }

    goto LABEL_10;
  }

LABEL_12:
  v15.receiver = self;
  v15.super_class = HUIHeadphoneLevelGroup;
  [(HUIHeadphoneLevelGroup *)&v15 layoutSubviews];
  v11 = HCLogSoundMeter();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v17[0] = v3;
    LOWORD(v17[1]) = 1024;
    *(&v17[1] + 2) = Layout;
    _os_log_impl(&dword_252166000, v11, OS_LOG_TYPE_INFO, "Layout headphone level group for size %i -> %i", buf, 0xEu);
  }

  [(HUIHeadphoneLevelGroup *)self layoutLevels];
  if (v3 != Layout)
  {
    superview = [(HUIHeadphoneLevelGroup *)self superview];
    [superview setNeedsLayout];
  }
}

- (void)layoutLevels
{
  [(HUIHeadphoneLevelGroup *)self bounds];
  v3 = (CGRectGetWidth(v9) + *(&Layout + 1) * -18.0 + *&qword_27F4D4480 * -17.0) * 0.5;
  pipFlagIndex = [(HUIHeadphoneLevelGroup *)self pipFlagIndex];
  inactiveLevels = [(HUIHeadphoneLevelGroup *)self inactiveLevels];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__HUIHeadphoneLevelGroup_layoutLevels__block_invoke;
  v8[3] = &__block_descriptor_48_e23_v32__0__UIView_8Q16_B24l;
  v8[4] = pipFlagIndex;
  *&v8[5] = v3;
  [inactiveLevels enumerateObjectsUsingBlock:v8];

  levels = [(HUIHeadphoneLevelGroup *)self levels];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HUIHeadphoneLevelGroup_layoutLevels__block_invoke_2;
  v7[3] = &__block_descriptor_48_e23_v32__0__UIView_8Q16_B24l;
  v7[4] = pipFlagIndex;
  *&v7[5] = v3;
  [levels enumerateObjectsUsingBlock:v7];
}

void __38__HUIHeadphoneLevelGroup_layoutLevels__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *&qword_27F4D4478;
  v7 = *&xmmword_27F4D4488;
  v12 = a2;
  v8 = [v12 layer];
  [v8 setMasksToBounds:1];

  v9 = [v12 layer];
  [v9 setCornerRadius:*(&xmmword_27F4D4488 + 1)];

  v10 = *&xmmword_27F4D4488;
  if (*(a1 + 32) == a3)
  {
    v10 = *&xmmword_27F4D4488 * 0.5;
  }

  v11 = v6 + v7;
  if (v5 != a3)
  {
    v11 = v6;
  }

  [v12 setFrame:{*(a1 + 40) + a3 * *(&Layout + 1) + a3 * *&qword_27F4D4480, v10, *(&Layout + 1), v11}];
}

void __38__HUIHeadphoneLevelGroup_layoutLevels__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *&qword_27F4D4478;
  v7 = *&xmmword_27F4D4488;
  v11 = a2;
  v8 = [v11 layer];
  [v8 setCornerRadius:*(&xmmword_27F4D4488 + 1)];

  v9 = *&xmmword_27F4D4488;
  if (*(a1 + 32) == a3)
  {
    v9 = *&xmmword_27F4D4488 * 0.5;
  }

  v10 = v6 + v7;
  if (v5 != a3)
  {
    v10 = v6;
  }

  [v11 setFrame:{*(a1 + 40) + a3 * *(&Layout + 1) + a3 * *&qword_27F4D4480, v9, *(&Layout + 1), v10}];
}

- (void)updateWithExposure:(double)exposure withThreshold:(unint64_t)threshold
{
  if (exposure <= 20.0)
  {
    v7 = exposure / 20.0;
  }

  else
  {
    v6 = (exposure + -20.0) / 90.0;
    v7 = (v6 * 17.0) + 1.0;
  }

  levels = [(HUIHeadphoneLevelGroup *)self levels];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HUIHeadphoneLevelGroup_updateWithExposure_withThreshold___block_invoke;
  v9[3] = &unk_2796F7A28;
  v10 = v7;
  v9[4] = self;
  v9[5] = threshold;
  [levels enumerateObjectsUsingBlock:v9];
}

void __59__HUIHeadphoneLevelGroup_updateWithExposure_withThreshold___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) isRTL];
  v6 = 17 - a3;
  if (!v5)
  {
    v6 = a3;
  }

  v7 = *(a1 + 48) - v6;
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v8 = fminf(v7, 1.0);
  [v10 setAlpha:v8];
  if (v8 > 0.0)
  {
    v9 = colorForThreshold(*(a1 + 40));
    [v10 setBackgroundColor:v9];
  }
}

@end