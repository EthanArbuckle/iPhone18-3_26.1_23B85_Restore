@interface NSShadow(Helper)
- (void)applyToGraphicsContext_emk:()Helper;
@end

@implementation NSShadow(Helper)

- (void)applyToGraphicsContext_emk:()Helper
{
  v13 = [a1 shadowColor];
  [a1 shadowOffset];
  v6 = v5;
  v8 = v7;
  [a1 shadowBlurRadius];
  v10 = v9;
  v11 = v13;
  v12 = [v13 CGColor];
  v15.width = v6;
  v15.height = v8;
  CGContextSetShadowWithColor(a3, v15, v10, v12);
}

@end