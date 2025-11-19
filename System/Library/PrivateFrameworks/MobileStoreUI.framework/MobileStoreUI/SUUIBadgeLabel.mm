@interface SUUIBadgeLabel
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIBadgeLabel)initWithFrame:(CGRect)a3;
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation SUUIBadgeLabel

- (SUUIBadgeLabel)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SUUIBadgeLabel;
  v3 = [(SUUIBadgeLabel *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SUUIBadgeLabel *)v3 layer];
    [v5 setCornerRadius:6.0];

    v6 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    [(SUUIBadgeLabel *)v4 setFont:v6];

    [(SUUIBadgeLabel *)v4 setTextAlignment:1];
    [(SUUIBadgeLabel *)v4 setClipsToBounds:1];
    v7 = [objc_opt_class() defaultBackgroundColor];
    [(SUUIBadgeLabel *)v4 setBackgroundColor:v7];

    v8 = [objc_opt_class() defaultTextColor];
    [(SUUIBadgeLabel *)v4 setTextColor:v8];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v7.receiver = self;
  v7.super_class = SUUIBadgeLabel;
  [(SUUIBadgeLabel *)&v7 sizeThatFits:a3.width, a3.height];
  v4 = v3 + 9.0;
  v6 = v5 + 0.0;
  result.height = v6;
  result.width = v4;
  return result;
}

- (void)drawTextInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(SUUIBadgeLabel *)self superview];

  if (!v8)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    v10 = [(SUUIBadgeLabel *)self backgroundColor];
    [v10 set];

    v11 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, 6.0}];
    [v11 fill];

    CGContextRestoreGState(CurrentContext);
  }

  v12.receiver = self;
  v12.super_class = SUUIBadgeLabel;
  [(SUUIBadgeLabel *)&v12 drawTextInRect:x, y, width, height];
}

@end