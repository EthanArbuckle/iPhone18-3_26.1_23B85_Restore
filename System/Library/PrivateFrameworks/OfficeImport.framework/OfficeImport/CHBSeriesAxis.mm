@interface CHBSeriesAxis
+ (id)readFrom:(XlChartPlotAxis *)a3 state:(id)a4;
@end

@implementation CHBSeriesAxis

+ (id)readFrom:(XlChartPlotAxis *)a3 state:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [CHDSeriesAxis alloc];
    v7 = [v5 resources];
    v8 = [(CHDSeriesAxis *)v6 initWithResources:v7];

    var0 = a3[1].var0;
    if (var0)
    {
      [(CHDAxis *)v8 setReverseOrder:XlChartCatSerRange::isReverse(a3[1].var0)];
      [(CHDAxis *)v8 setCrossesAt:var0[8]];
      [(CHDAxis *)v8 setCrossBetween:XlChartCatSerRange::isBetween(var0)];
      [(CHDSeriesAxis *)v8 setLabelFrequency:var0[9]];
    }

    var2 = a3[1].var2;
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