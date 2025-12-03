@interface CHBBubbleSeries
+ (id)chdSeriesWithState:(id)state;
@end

@implementation CHBBubbleSeries

+ (id)chdSeriesWithState:(id)state
{
  stateCopy = state;
  v4 = [CHDBubbleSeries alloc];
  chart = [stateCopy chart];
  v6 = [(CHDSeries *)v4 initWithChart:chart];

  xlCurrentDefaultSeriesFormat = [stateCopy xlCurrentDefaultSeriesFormat];
  if (xlCurrentDefaultSeriesFormat)
  {
    v8 = *(xlCurrentDefaultSeriesFormat + 81);
    v9 = *(xlCurrentDefaultSeriesFormat + 87);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  [(CHDBubbleSeries *)v6 setBubble3D:v8 & 1];
  [(CHDBubbleSeries *)v6 setShowBubbleSize:v9 & 1];

  return v6;
}

@end