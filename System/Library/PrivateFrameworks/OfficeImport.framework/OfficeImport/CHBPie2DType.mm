@interface CHBPie2DType
+ (id)chdChartTypeWithState:(id)state;
+ (void)readWithState:(id)state chartType:(id)type;
@end

@implementation CHBPie2DType

+ (id)chdChartTypeWithState:(id)state
{
  stateCopy = state;
  v5 = [CHDPie2DType alloc];
  chart = [stateCopy chart];
  v7 = [(CHDPie2DType *)v5 initWithChart:chart];

  [self readWithState:stateCopy chartType:v7];

  return v7;
}

+ (void)readWithState:(id)state chartType:(id)type
{
  stateCopy = state;
  typeCopy = type;
  xlCurrentPlot = [stateCopy xlCurrentPlot];
  v7 = xlCurrentPlot;
  if (xlCurrentPlot)
  {
    [typeCopy setFirstSliceAngle:*(xlCurrentPlot + 162)];
    if (*(v7 + 160))
    {
      [typeCopy setDoughnutType:1];
    }

    if ((*(*v7 + 16))(v7) == 3)
    {
      v8 = *(v7 + 164);
      if (v8 == 1)
      {
        [typeCopy setPieOfPieType:1];
        v8 = *(v7 + 164);
      }

      if (v8 == 2)
      {
        [typeCopy setBarOfPieType:1];
      }
    }
  }
}

@end