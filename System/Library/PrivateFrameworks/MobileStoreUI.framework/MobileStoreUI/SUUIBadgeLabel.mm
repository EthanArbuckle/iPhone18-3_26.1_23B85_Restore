@interface SUUIBadgeLabel
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIBadgeLabel)initWithFrame:(CGRect)frame;
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation SUUIBadgeLabel

- (SUUIBadgeLabel)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SUUIBadgeLabel;
  v3 = [(SUUIBadgeLabel *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(SUUIBadgeLabel *)v3 layer];
    [layer setCornerRadius:6.0];

    v6 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    [(SUUIBadgeLabel *)v4 setFont:v6];

    [(SUUIBadgeLabel *)v4 setTextAlignment:1];
    [(SUUIBadgeLabel *)v4 setClipsToBounds:1];
    defaultBackgroundColor = [objc_opt_class() defaultBackgroundColor];
    [(SUUIBadgeLabel *)v4 setBackgroundColor:defaultBackgroundColor];

    defaultTextColor = [objc_opt_class() defaultTextColor];
    [(SUUIBadgeLabel *)v4 setTextColor:defaultTextColor];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v7.receiver = self;
  v7.super_class = SUUIBadgeLabel;
  [(SUUIBadgeLabel *)&v7 sizeThatFits:fits.width, fits.height];
  v4 = v3 + 9.0;
  v6 = v5 + 0.0;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)drawTextInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  superview = [(SUUIBadgeLabel *)self superview];

  if (!superview)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    backgroundColor = [(SUUIBadgeLabel *)self backgroundColor];
    [backgroundColor set];

    v11 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, 6.0}];
    [v11 fill];

    CGContextRestoreGState(CurrentContext);
  }

  v12.receiver = self;
  v12.super_class = SUUIBadgeLabel;
  [(SUUIBadgeLabel *)&v12 drawTextInRect:x, y, width, height];
}

@end