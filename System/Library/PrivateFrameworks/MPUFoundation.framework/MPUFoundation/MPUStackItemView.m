@interface MPUStackItemView
- (void)setCenter:(CGPoint)a3;
@end

@implementation MPUStackItemView

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(MPUStackItemView *)self layer];
  [v5 setPosition:{x, y}];
}

@end