@interface HUNaturalLightColorSwatchCollectionViewCell
- (HUNaturalLightColorSwatchCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation HUNaturalLightColorSwatchCollectionViewCell

- (HUNaturalLightColorSwatchCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v9.receiver = self;
  v9.super_class = HUNaturalLightColorSwatchCollectionViewCell;
  v5 = [(HUNaturalLightColorSwatchCollectionViewCell *)&v9 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = [[HUNaturalLightColorSwatchView alloc] initWithFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), width, height];
    swatchView = v5->_swatchView;
    v5->_swatchView = v6;

    [(HUNaturalLightColorSwatchCollectionViewCell *)v5 addSubview:v5->_swatchView];
  }

  return v5;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = HUNaturalLightColorSwatchCollectionViewCell;
  [(HUNaturalLightColorSwatchCollectionViewCell *)&v10 layoutSubviews];
  [(HUNaturalLightColorSwatchCollectionViewCell *)self frame];
  v4 = v3;
  v6 = v5;
  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  v9 = [(HUNaturalLightColorSwatchCollectionViewCell *)self swatchView];
  [v9 setFrame:{v7, v8, v4, v6}];
}

@end