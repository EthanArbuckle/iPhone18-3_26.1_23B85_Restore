@interface HUNaturalLightColorSwatchCollectionViewCell
- (HUNaturalLightColorSwatchCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation HUNaturalLightColorSwatchCollectionViewCell

- (HUNaturalLightColorSwatchCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v9.receiver = self;
  v9.super_class = HUNaturalLightColorSwatchCollectionViewCell;
  v5 = [(HUNaturalLightColorSwatchCollectionViewCell *)&v9 initWithFrame:frame.origin.x, frame.origin.y];
  if (v5)
  {
    height = [[HUNaturalLightColorSwatchView alloc] initWithFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), width, height];
    swatchView = v5->_swatchView;
    v5->_swatchView = height;

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
  swatchView = [(HUNaturalLightColorSwatchCollectionViewCell *)self swatchView];
  [swatchView setFrame:{v7, v8, v4, v6}];
}

@end