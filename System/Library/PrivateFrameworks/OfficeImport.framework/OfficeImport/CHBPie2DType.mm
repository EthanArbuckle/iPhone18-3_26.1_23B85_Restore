@interface CHBPie2DType
+ (id)chdChartTypeWithState:(id)a3;
+ (void)readWithState:(id)a3 chartType:(id)a4;
@end

@implementation CHBPie2DType

+ (id)chdChartTypeWithState:(id)a3
{
  v4 = a3;
  v5 = [CHDPie2DType alloc];
  v6 = [v4 chart];
  v7 = [(CHDPie2DType *)v5 initWithChart:v6];

  [a1 readWithState:v4 chartType:v7];

  return v7;
}

+ (void)readWithState:(id)a3 chartType:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 xlCurrentPlot];
  v7 = v6;
  if (v6)
  {
    [v5 setFirstSliceAngle:*(v6 + 162)];
    if (*(v7 + 160))
    {
      [v5 setDoughnutType:1];
    }

    if ((*(*v7 + 16))(v7) == 3)
    {
      v8 = *(v7 + 164);
      if (v8 == 1)
      {
        [v5 setPieOfPieType:1];
        v8 = *(v7 + 164);
      }

      if (v8 == 2)
      {
        [v5 setBarOfPieType:1];
      }
    }
  }
}

@end