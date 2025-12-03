@interface NTKWorldClockGraphicCircularExtraLargeView
+ (id)_createHandsViewForDevice:(id)device;
@end

@implementation NTKWorldClockGraphicCircularExtraLargeView

+ (id)_createHandsViewForDevice:(id)device
{
  deviceCopy = device;
  v4 = [(NTKWorldClockRichComplicationHandsBaseView *)[NTKWorldClockRichComplicationHandsExtraLargeView alloc] initForDevice:deviceCopy];

  return v4;
}

@end