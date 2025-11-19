@interface CHBBubbleSeries
+ (id)chdSeriesWithState:(id)a3;
@end

@implementation CHBBubbleSeries

+ (id)chdSeriesWithState:(id)a3
{
  v3 = a3;
  v4 = [CHDBubbleSeries alloc];
  v5 = [v3 chart];
  v6 = [(CHDSeries *)v4 initWithChart:v5];

  v7 = [v3 xlCurrentDefaultSeriesFormat];
  if (v7)
  {
    v8 = *(v7 + 81);
    v9 = *(v7 + 87);
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