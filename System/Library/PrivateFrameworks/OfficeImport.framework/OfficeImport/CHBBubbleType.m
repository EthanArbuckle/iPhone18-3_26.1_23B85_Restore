@interface CHBBubbleType
+ (id)chdChartTypeWithState:(id)a3;
@end

@implementation CHBBubbleType

+ (id)chdChartTypeWithState:(id)a3
{
  v3 = a3;
  v4 = [CHDBubbleType alloc];
  v5 = [v3 chart];
  v6 = [(CHDBubbleType *)v4 initWithChart:v5];

  v7 = [v3 xlCurrentPlot];
  v8 = v7;
  if (v7)
  {
    [(CHDBubbleType *)v6 setBubbleScale:*(v7 + 160)];
    [(CHDBubbleType *)v6 setSizeRepresentsRadius:*(v8 + 164) == 2];
    [(CHDBubbleType *)v6 setShowNegBubbles:XlChartLegendXn::isLabel((v8 + 144))];
  }

  return v6;
}

@end