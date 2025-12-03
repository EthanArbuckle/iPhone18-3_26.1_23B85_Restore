@interface CDRichComplicationBezelUtilities
+ (CGRect)hitTestCarveOutWithDialCenter:(CGPoint)center leftSide:(BOOL)side forDevice:(id)device;
@end

@implementation CDRichComplicationBezelUtilities

+ (CGRect)hitTestCarveOutWithDialCenter:(CGPoint)center leftSide:(BOOL)side forDevice:(id)device
{
  sideCopy = side;
  y = center.y;
  x = center.x;
  deviceCopy = device;
  v9 = CDGraphicSubdialComplicationDiameter(deviceCopy);
  v10 = v9 * 0.5;
  v11 = CDGraphicSubdialComplicationDistanceFromCenter(deviceCopy);

  v12 = 1.0;
  if (sideCopy)
  {
    v12 = -1.0;
  }

  v13 = x + v11 * v12 - v10;
  v14 = y - v10;
  v15 = v9;
  v16 = v9;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end