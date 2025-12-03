@interface NSShadow(Helper)
- (void)applyToGraphicsContext_emk:()Helper;
@end

@implementation NSShadow(Helper)

- (void)applyToGraphicsContext_emk:()Helper
{
  shadowColor = [self shadowColor];
  [self shadowOffset];
  v6 = v5;
  v8 = v7;
  [self shadowBlurRadius];
  v10 = v9;
  v11 = shadowColor;
  cGColor = [shadowColor CGColor];
  v15.width = v6;
  v15.height = v8;
  CGContextSetShadowWithColor(a3, v15, v10, cGColor);
}

@end