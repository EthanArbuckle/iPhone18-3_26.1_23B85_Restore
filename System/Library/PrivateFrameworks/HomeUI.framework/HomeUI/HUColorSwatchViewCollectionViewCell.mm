@interface HUColorSwatchViewCollectionViewCell
- (HUColorSwatchViewCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation HUColorSwatchViewCollectionViewCell

- (HUColorSwatchViewCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = HUColorSwatchViewCollectionViewCell;
  v3 = [(HUColorSwatchViewCollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(HUColorSwatchView);
    swatchView = v3->_swatchView;
    v3->_swatchView = v4;

    [(HUColorSwatchViewCollectionViewCell *)v3 addSubview:v3->_swatchView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = HUColorSwatchViewCollectionViewCell;
  [(HUColorSwatchViewCollectionViewCell *)&v8 layoutSubviews];
  [(HUColorSwatchViewCollectionViewCell *)self frame];
  v4 = v3;
  [(HUColorSwatchViewCollectionViewCell *)self frame];
  v6 = v5;
  swatchView = [(HUColorSwatchViewCollectionViewCell *)self swatchView];
  [swatchView setFrame:{0.0, 0.0, v4, v6}];
}

@end