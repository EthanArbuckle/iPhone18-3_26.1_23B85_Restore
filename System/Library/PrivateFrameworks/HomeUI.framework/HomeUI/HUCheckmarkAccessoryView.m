@interface HUCheckmarkAccessoryView
+ (double)borderWidth;
+ (id)grayBorderColor;
- (CGSize)intrinsicContentSize;
- (HUCheckmarkAccessoryView)initWithFrame:(CGRect)a3;
- (void)_updateColors;
- (void)layoutSubviews;
- (void)setChecked:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation HUCheckmarkAccessoryView

- (HUCheckmarkAccessoryView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = HUCheckmarkAccessoryView;
  v3 = [(HUCheckmarkAccessoryView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_checked = 0;
    v3->_disabled = 0;
    v5 = [MEMORY[0x277D755B8] checkmarkImage];
    v6 = [v5 resizableImageWithCapInsets:1 resizingMode:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
    [(HUCheckmarkAccessoryView *)v4 setCheckmarkImageView:v7];

    v8 = [(HUCheckmarkAccessoryView *)v4 checkmarkImageView];
    [v8 setHidden:1];

    v9 = [(HUCheckmarkAccessoryView *)v4 checkmarkImageView];
    [(HUCheckmarkAccessoryView *)v4 addSubview:v9];

    [(HUCheckmarkAccessoryView *)v4 setOpaque:0];
    [objc_opt_class() borderWidth];
    v11 = v10;
    v12 = [(HUCheckmarkAccessoryView *)v4 layer];
    [v12 setBorderWidth:v11];

    [(HUCheckmarkAccessoryView *)v4 _updateColors];
  }

  return v4;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = HUCheckmarkAccessoryView;
  [(HUCheckmarkAccessoryView *)&v5 layoutSubviews];
  [(HUCheckmarkAccessoryView *)self bounds];
  v3 = CGRectGetWidth(v6) * 0.5;
  v4 = [(HUCheckmarkAccessoryView *)self layer];
  [v4 setCornerRadius:v3];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(HUCheckmarkAccessoryView *)self checkmarkImageView];
  v3 = [v2 image];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = HUCheckmarkAccessoryView;
  [(HUCheckmarkAccessoryView *)&v3 tintColorDidChange];
  [(HUCheckmarkAccessoryView *)self _updateColors];
}

- (void)setChecked:(BOOL)a3
{
  v3 = a3;
  self->_checked = a3;
  [(HUCheckmarkAccessoryView *)self _updateColors];
  v5 = [(HUCheckmarkAccessoryView *)self checkmarkImageView];
  [v5 setHidden:!v3];
}

- (void)_updateColors
{
  if ([(HUCheckmarkAccessoryView *)self disabled])
  {
    [objc_opt_class() grayBorderColor];
  }

  else
  {
    [(HUCheckmarkAccessoryView *)self tintColor];
  }
  v3 = ;
  v4 = [(HUCheckmarkAccessoryView *)self checkmarkImageView];
  [v4 setTintColor:v3];

  if ([(HUCheckmarkAccessoryView *)self checked])
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [objc_opt_class() grayBorderColor];
  }
  v8 = ;
  v5 = v8;
  v6 = [v8 CGColor];
  v7 = [(HUCheckmarkAccessoryView *)self layer];
  [v7 setBorderColor:v6];
}

+ (double)borderWidth
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  result = 1.66666663;
  if (v4 < 3.0)
  {
    return 1.5;
  }

  return result;
}

+ (id)grayBorderColor
{
  v2 = [MEMORY[0x277D75348] systemGrayColor];
  v3 = [v2 colorWithAlphaComponent:0.400000006];

  return v3;
}

@end