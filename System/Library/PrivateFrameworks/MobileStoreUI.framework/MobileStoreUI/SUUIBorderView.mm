@interface SUUIBorderView
- (UIColor)color;
- (void)setColor:(id)color;
@end

@implementation SUUIBorderView

- (void)setColor:(id)color
{
  v3.receiver = self;
  v3.super_class = SUUIBorderView;
  [(SUUIBorderView *)&v3 setBackgroundColor:color];
}

- (UIColor)color
{
  v4.receiver = self;
  v4.super_class = SUUIBorderView;
  backgroundColor = [(SUUIBorderView *)&v4 backgroundColor];

  return backgroundColor;
}

@end