@interface CHBBubbleType
+ (id)chdChartTypeWithState:(id)state;
@end

@implementation CHBBubbleType

+ (id)chdChartTypeWithState:(id)state
{
  stateCopy = state;
  v4 = [CHDBubbleType alloc];
  chart = [stateCopy chart];
  v6 = [(CHDBubbleType *)v4 initWithChart:chart];

  xlCurrentPlot = [stateCopy xlCurrentPlot];
  v8 = xlCurrentPlot;
  if (xlCurrentPlot)
  {
    [(CHDBubbleType *)v6 setBubbleScale:*(xlCurrentPlot + 160)];
    [(CHDBubbleType *)v6 setSizeRepresentsRadius:*(v8 + 164) == 2];
    [(CHDBubbleType *)v6 setShowNegBubbles:XlChartLegendXn::isLabel((v8 + 144))];
  }

  return v6;
}

@end