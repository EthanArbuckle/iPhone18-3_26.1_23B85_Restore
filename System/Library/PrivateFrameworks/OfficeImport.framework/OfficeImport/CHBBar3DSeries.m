@interface CHBBar3DSeries
+ (id)chdSeriesWithState:(id)a3;
@end

@implementation CHBBar3DSeries

+ (id)chdSeriesWithState:(id)a3
{
  v3 = a3;
  v4 = [CHDBar3DSeries alloc];
  v5 = [v3 chart];
  v6 = [(CHDSeries *)v4 initWithChart:v5];

  v7 = [v3 xlCurrentDefaultSeriesFormat];
  if (v7)
  {
    [(CHDBar3DSeries *)v6 setShapeType:chdShapeTypeFromXlShapeTypeEnum(*(v7 + 76))];
  }

  return v6;
}

@end