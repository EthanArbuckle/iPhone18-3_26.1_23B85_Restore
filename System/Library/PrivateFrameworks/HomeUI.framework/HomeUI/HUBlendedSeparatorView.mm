@interface HUBlendedSeparatorView
- (void)drawRect:(CGRect)rect;
@end

@implementation HUBlendedSeparatorView

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetBlendMode(CurrentContext, kCGBlendModePlusLighter);
  v9 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.2];
  [v9 setFill];
  v8 = [MEMORY[0x277D75208] bezierPathWithRect:{x, y, width, height}];
  [v8 fill];
}

@end