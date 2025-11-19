@interface _SFHairlineBorderView
- (_SFHairlineBorderView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBorderColor:(id)a3;
@end

@implementation _SFHairlineBorderView

- (_SFHairlineBorderView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _SFHairlineBorderView;
  v3 = [(_SFHairlineBorderView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    +[_SFSiteIcon cornerRadius];
    [(_SFHairlineBorderView *)v3 _setContinuousCornerRadius:?];
    v4 = _SFOnePixel();
    v5 = [(_SFHairlineBorderView *)v3 layer];
    [v5 setBorderWidth:v4];

    v6 = v3;
  }

  return v3;
}

- (void)setBorderColor:(id)a3
{
  v5 = a3;
  borderColor = self->_borderColor;
  if (borderColor != v5)
  {
    v8 = v5;
    v7 = [(UIColor *)borderColor isEqual:v5];
    v5 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_borderColor, a3);
      [(_SFHairlineBorderView *)self setNeedsLayout];
      v5 = v8;
    }
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _SFHairlineBorderView;
  [(_SFHairlineBorderView *)&v5 layoutSubviews];
  v3 = [(UIColor *)self->_borderColor CGColor];
  v4 = [(_SFHairlineBorderView *)self layer];
  [v4 setBorderColor:v3];
}

@end