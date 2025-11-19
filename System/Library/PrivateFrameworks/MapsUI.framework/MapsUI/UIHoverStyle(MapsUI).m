@interface UIHoverStyle(MapsUI)
+ (id)_mapsui_textButtonHoverStyle;
@end

@implementation UIHoverStyle(MapsUI)

+ (id)_mapsui_textButtonHoverStyle
{
  v0 = [MEMORY[0x1E69DCF48] rectShapeWithCornerRadius:2 cornerCurve:4.0];
  v1 = [v0 shapeByApplyingInsets:{0.0, -4.0, 0.0, -4.0}];

  v2 = [MEMORY[0x1E69DCAB0] styleWithShape:v1];

  return v2;
}

@end