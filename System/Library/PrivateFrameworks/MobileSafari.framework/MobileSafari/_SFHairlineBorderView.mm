@interface _SFHairlineBorderView
- (_SFHairlineBorderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBorderColor:(id)color;
@end

@implementation _SFHairlineBorderView

- (_SFHairlineBorderView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _SFHairlineBorderView;
  v3 = [(_SFHairlineBorderView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    +[_SFSiteIcon cornerRadius];
    [(_SFHairlineBorderView *)v3 _setContinuousCornerRadius:?];
    v4 = _SFOnePixel();
    layer = [(_SFHairlineBorderView *)v3 layer];
    [layer setBorderWidth:v4];

    v6 = v3;
  }

  return v3;
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  borderColor = self->_borderColor;
  if (borderColor != colorCopy)
  {
    v8 = colorCopy;
    v7 = [(UIColor *)borderColor isEqual:colorCopy];
    colorCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_borderColor, color);
      [(_SFHairlineBorderView *)self setNeedsLayout];
      colorCopy = v8;
    }
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _SFHairlineBorderView;
  [(_SFHairlineBorderView *)&v5 layoutSubviews];
  cGColor = [(UIColor *)self->_borderColor CGColor];
  layer = [(_SFHairlineBorderView *)self layer];
  [layer setBorderColor:cGColor];
}

@end