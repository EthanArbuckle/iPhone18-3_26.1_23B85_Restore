@interface CHBDateAxis
+ (id)readFrom:(XlChartPlotAxis *)from state:(id)state;
@end

@implementation CHBDateAxis

+ (id)readFrom:(XlChartPlotAxis *)from state:(id)state
{
  stateCopy = state;
  if (from)
  {
    v6 = [CHDDateAxis alloc];
    resources = [stateCopy resources];
    v8 = [(CHDDateAxis *)v6 initWithResources:resources];

    var0 = from[1].var0;
    if (var0)
    {
      [(CHDAxis *)v8 setReverseOrder:XlChartCatSerRange::isReverse(from[1].var0)];
      [(CHDAxis *)v8 setCrossesAt:var0[8]];
      [(CHDAxis *)v8 setCrossBetween:XlChartCatSerRange::isBetween(var0)];
    }

    var3 = from[1].var3;
    if (var3)
    {
      if ((XlChartAxCext::isAutoMax(var3) & 1) == 0)
      {
        [(CHDAxis *)v8 setScalingMaximum:var3[9]];
      }

      if ((XlChartAxCext::isAutoMin(var3) & 1) == 0)
      {
        [(CHDAxis *)v8 setScalingMinimum:var3[8]];
      }

      if ((XlChartAxCext::isAutoMajor(var3) & 1) == 0)
      {
        [(CHDDateAxis *)v8 setMajorUnitValue:var3[10]];
      }

      if ((XlChartAxCext::isAutoMinor(var3) & 1) == 0)
      {
        [(CHDDateAxis *)v8 setMinorUnitValue:var3[12]];
      }

      [(CHDDateAxis *)v8 setMinorTimeUnit:var3[13]];
      [(CHDDateAxis *)v8 setMajorTimeUnit:var3[11]];
      [(CHDDateAxis *)v8 setBaseTimeUnit:var3[14]];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end