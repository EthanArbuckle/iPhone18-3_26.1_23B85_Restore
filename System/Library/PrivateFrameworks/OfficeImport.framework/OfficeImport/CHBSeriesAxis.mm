@interface CHBSeriesAxis
+ (id)readFrom:(XlChartPlotAxis *)from state:(id)state;
@end

@implementation CHBSeriesAxis

+ (id)readFrom:(XlChartPlotAxis *)from state:(id)state
{
  stateCopy = state;
  if (from)
  {
    v6 = [CHDSeriesAxis alloc];
    resources = [stateCopy resources];
    v8 = [(CHDSeriesAxis *)v6 initWithResources:resources];

    var0 = from[1].var0;
    if (var0)
    {
      [(CHDAxis *)v8 setReverseOrder:XlChartCatSerRange::isReverse(from[1].var0)];
      [(CHDAxis *)v8 setCrossesAt:var0[8]];
      [(CHDAxis *)v8 setCrossBetween:XlChartCatSerRange::isBetween(var0)];
      [(CHDSeriesAxis *)v8 setLabelFrequency:var0[9]];
    }

    var2 = from[1].var2;
    if (var2)
    {
      if ((XlChartAxCext::isAutoMax(var2) & 1) == 0)
      {
        [(CHDAxis *)v8 setScalingMaximum:*(var2 + 9)];
      }

      if ((XlChartAxCext::isAutoMin(var2) & 1) == 0)
      {
        [(CHDAxis *)v8 setScalingMinimum:*(var2 + 8)];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end