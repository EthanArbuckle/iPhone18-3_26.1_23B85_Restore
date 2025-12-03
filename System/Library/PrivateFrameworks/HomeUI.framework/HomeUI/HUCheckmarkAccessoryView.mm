@interface HUCheckmarkAccessoryView
+ (double)borderWidth;
+ (id)grayBorderColor;
- (CGSize)intrinsicContentSize;
- (HUCheckmarkAccessoryView)initWithFrame:(CGRect)frame;
- (void)_updateColors;
- (void)layoutSubviews;
- (void)setChecked:(BOOL)checked;
- (void)tintColorDidChange;
@end

@implementation HUCheckmarkAccessoryView

- (HUCheckmarkAccessoryView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = HUCheckmarkAccessoryView;
  v3 = [(HUCheckmarkAccessoryView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_checked = 0;
    v3->_disabled = 0;
    checkmarkImage = [MEMORY[0x277D755B8] checkmarkImage];
    v6 = [checkmarkImage resizableImageWithCapInsets:1 resizingMode:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
    [(HUCheckmarkAccessoryView *)v4 setCheckmarkImageView:v7];

    checkmarkImageView = [(HUCheckmarkAccessoryView *)v4 checkmarkImageView];
    [checkmarkImageView setHidden:1];

    checkmarkImageView2 = [(HUCheckmarkAccessoryView *)v4 checkmarkImageView];
    [(HUCheckmarkAccessoryView *)v4 addSubview:checkmarkImageView2];

    [(HUCheckmarkAccessoryView *)v4 setOpaque:0];
    [objc_opt_class() borderWidth];
    v11 = v10;
    layer = [(HUCheckmarkAccessoryView *)v4 layer];
    [layer setBorderWidth:v11];

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
  layer = [(HUCheckmarkAccessoryView *)self layer];
  [layer setCornerRadius:v3];
}

- (CGSize)intrinsicContentSize
{
  checkmarkImageView = [(HUCheckmarkAccessoryView *)self checkmarkImageView];
  image = [checkmarkImageView image];
  [image size];
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

- (void)setChecked:(BOOL)checked
{
  checkedCopy = checked;
  self->_checked = checked;
  [(HUCheckmarkAccessoryView *)self _updateColors];
  checkmarkImageView = [(HUCheckmarkAccessoryView *)self checkmarkImageView];
  [checkmarkImageView setHidden:!checkedCopy];
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
  checkmarkImageView = [(HUCheckmarkAccessoryView *)self checkmarkImageView];
  [checkmarkImageView setTintColor:v3];

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
  cGColor = [v8 CGColor];
  layer = [(HUCheckmarkAccessoryView *)self layer];
  [layer setBorderColor:cGColor];
}

+ (double)borderWidth
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
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
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v3 = [systemGrayColor colorWithAlphaComponent:0.400000006];

  return v3;
}

@end