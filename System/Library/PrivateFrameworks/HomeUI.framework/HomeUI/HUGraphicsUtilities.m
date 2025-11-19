@interface HUGraphicsUtilities
+ (void)setRearrangingAnimation:(BOOL)a3 layer:(id)a4 frame:(CGRect)a5;
@end

@implementation HUGraphicsUtilities

+ (void)setRearrangingAnimation:(BOOL)a3 layer:(id)a4 frame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetHeight(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGRectGetWidth(v13);
  sub_20D0F0088(a3, v10);
}

@end