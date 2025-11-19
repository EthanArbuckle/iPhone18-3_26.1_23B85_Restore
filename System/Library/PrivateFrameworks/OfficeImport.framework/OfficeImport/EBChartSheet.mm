@interface EBChartSheet
+ (void)readChildrenWithState:(id)a3;
+ (void)readWithState:(id)a3;
+ (void)setupProcessors:(id)a3;
@end

@implementation EBChartSheet

+ (void)readWithState:(id)a3
{
  v7 = a3;
  v4 = [v7 edSheet];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 processors];
    [a1 setupProcessors:v5];

    v6 = [v7 xlReader];
    [v4 setBounds:{v6[389], v6[390], (v6[391] - v6[389]), (v6[392] - v6[390])}];
  }
}

+ (void)readChildrenWithState:(id)a3
{
  v5 = a3;
  v3 = [v5 edSheet];
  v4 = [EBGraphic readMainChartWithState:v5];
  [v3 setMainChart:v4];

  [EBGraphic readGraphicsWithState:v5];
}

+ (void)setupProcessors:(id)a3
{
  v3 = a3;
  [v3 removeAllObjects];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
  [v3 addProcessorClass:objc_opt_class()];
}

@end