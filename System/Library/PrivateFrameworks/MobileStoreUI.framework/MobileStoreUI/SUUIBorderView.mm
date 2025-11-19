@interface SUUIBorderView
- (UIColor)color;
- (void)setColor:(id)a3;
@end

@implementation SUUIBorderView

- (void)setColor:(id)a3
{
  v3.receiver = self;
  v3.super_class = SUUIBorderView;
  [(SUUIBorderView *)&v3 setBackgroundColor:a3];
}

- (UIColor)color
{
  v4.receiver = self;
  v4.super_class = SUUIBorderView;
  v2 = [(SUUIBorderView *)&v4 backgroundColor];

  return v2;
}

@end