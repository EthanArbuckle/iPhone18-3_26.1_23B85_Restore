@interface CDRichComplicationBezelUtilities
+ (CGRect)hitTestCarveOutWithDialCenter:(CGPoint)a3 leftSide:(BOOL)a4 forDevice:(id)a5;
@end

@implementation CDRichComplicationBezelUtilities

+ (CGRect)hitTestCarveOutWithDialCenter:(CGPoint)a3 leftSide:(BOOL)a4 forDevice:(id)a5
{
  v5 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a5;
  v9 = CDGraphicSubdialComplicationDiameter(v8);
  v10 = v9 * 0.5;
  v11 = CDGraphicSubdialComplicationDistanceFromCenter(v8);

  v12 = 1.0;
  if (v5)
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