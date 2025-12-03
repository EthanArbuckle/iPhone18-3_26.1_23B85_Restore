@interface MPUStackItemView
- (void)setCenter:(CGPoint)center;
@end

@implementation MPUStackItemView

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  layer = [(MPUStackItemView *)self layer];
  [layer setPosition:{x, y}];
}

@end