@interface HUGraphicsUtilities
+ (void)setRearrangingAnimation:(BOOL)animation layer:(id)layer frame:(CGRect)frame;
@end

@implementation HUGraphicsUtilities

+ (void)setRearrangingAnimation:(BOOL)animation layer:(id)layer frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layerCopy = layer;
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
  sub_20D0F0088(animation, layerCopy);
}

@end