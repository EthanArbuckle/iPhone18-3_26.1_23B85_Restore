@interface CHBBar3DSeries
+ (id)chdSeriesWithState:(id)state;
@end

@implementation CHBBar3DSeries

+ (id)chdSeriesWithState:(id)state
{
  stateCopy = state;
  v4 = [CHDBar3DSeries alloc];
  chart = [stateCopy chart];
  v6 = [(CHDSeries *)v4 initWithChart:chart];

  xlCurrentDefaultSeriesFormat = [stateCopy xlCurrentDefaultSeriesFormat];
  if (xlCurrentDefaultSeriesFormat)
  {
    [(CHDBar3DSeries *)v6 setShapeType:chdShapeTypeFromXlShapeTypeEnum(*(xlCurrentDefaultSeriesFormat + 76))];
  }

  return v6;
}

@end