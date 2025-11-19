@interface NTKWorldClockGraphicCircularExtraLargeView
+ (id)_createHandsViewForDevice:(id)a3;
@end

@implementation NTKWorldClockGraphicCircularExtraLargeView

+ (id)_createHandsViewForDevice:(id)a3
{
  v3 = a3;
  v4 = [(NTKWorldClockRichComplicationHandsBaseView *)[NTKWorldClockRichComplicationHandsExtraLargeView alloc] initForDevice:v3];

  return v4;
}

@end