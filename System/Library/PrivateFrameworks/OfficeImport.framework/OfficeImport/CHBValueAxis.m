@interface CHBValueAxis
+ (id)readFrom:(XlChartPlotAxis *)a3 state:(id)a4;
@end

@implementation CHBValueAxis

+ (id)readFrom:(XlChartPlotAxis *)a3 state:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [CHDValueAxis alloc];
    v7 = [v5 resources];
    v8 = [(CHDValueAxis *)v6 initWithResources:v7];

    var0 = a3[1].var0;
    if (var0)
    {
      if ((XlChartValueRange::isAutoMax(a3[1].var0) & 1) == 0)
      {
        v10 = var0[3];
        isLogScale = XlChartValueRange::isLogScale(var0);
        v12 = __exp10(v10);
        if (!isLogScale)
        {
          v12 = v10;
        }

        [(CHDAxis *)v8 setScalingMaximum:v12];
      }

      if ((XlChartValueRange::isAutoMin(var0) & 1) == 0)
      {
        v13 = var0[2];
        v14 = XlChartValueRange::isLogScale(var0);
        v15 = __exp10(v13);
        if (!v14)
        {
          v15 = v13;
        }

        [(CHDAxis *)v8 setScalingMinimum:v15];
      }

      if ((XlChartValueRange::isAutoMajor(var0) & 1) == 0)
      {
        v16 = var0[4];
        v17 = XlChartValueRange::isLogScale(var0);
        v18 = __exp10(v16);
        if (!v17)
        {
          v18 = v16;
        }

        [(CHDValueAxis *)v8 setMajorUnitValue:v18];
      }

      if ((XlChartValueRange::isAutoMinor(var0) & 1) == 0)
      {
        v19 = var0[5];
        v20 = XlChartValueRange::isLogScale(var0);
        v21 = __exp10(v19);
        if (!v20)
        {
          v21 = v19;
        }

        [(CHDValueAxis *)v8 setMinorUnitValue:v21];
      }

      if ((XlChartValueRange::isAutoCross(var0) & 1) == 0)
      {
        v22 = var0[6];
        v23 = XlChartValueRange::isLogScale(var0);
        v24 = __exp10(v22);
        if (!v23)
        {
          v24 = v22;
        }

        [(CHDAxis *)v8 setCrossesAt:v24];
      }

      [(CHDAxis *)v8 setReverseOrder:XlChartValueRange::isReverse(var0)];
      if (XlChartValueRange::isLogScale(var0))
      {
        [(CHDValueAxis *)v8 setScalingLogBase:10.0];
      }
    }

    v25 = *&a3[1].var1;
    if (v25)
    {
      v26 = *(v25 + 16);
      if (v26 < 0xA && ((0x327u >> v26) & 1) != 0)
      {
        [(CHDValueAxis *)v8 setBuiltInUnit:dword_25D6FE598[v26]];
      }

      [(CHDValueAxis *)v8 setShowBuiltInUnitFlag:*(v25 + 20)];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end