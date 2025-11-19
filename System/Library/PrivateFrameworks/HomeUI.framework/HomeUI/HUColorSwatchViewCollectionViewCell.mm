@interface HUColorSwatchViewCollectionViewCell
- (HUColorSwatchViewCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation HUColorSwatchViewCollectionViewCell

- (HUColorSwatchViewCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = HUColorSwatchViewCollectionViewCell;
  v3 = [(HUColorSwatchViewCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v7 = [(HUColorSwatchViewCollectionViewCell *)self swatchView];
  [v7 setFrame:{0.0, 0.0, v4, v6}];
}

@end