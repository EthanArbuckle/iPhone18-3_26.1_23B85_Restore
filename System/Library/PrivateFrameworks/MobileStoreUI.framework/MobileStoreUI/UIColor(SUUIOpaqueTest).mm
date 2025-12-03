@interface UIColor(SUUIOpaqueTest)
- (BOOL)suui_isOpaque;
@end

@implementation UIColor(SUUIOpaqueTest)

- (BOOL)suui_isOpaque
{
  v2 = 0.0;
  [self getWhite:0 alpha:&v2];
  return v2 >= 1.0;
}

@end