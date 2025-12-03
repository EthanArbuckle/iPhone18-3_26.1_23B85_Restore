@interface EBChartSheet
+ (void)readChildrenWithState:(id)state;
+ (void)readWithState:(id)state;
+ (void)setupProcessors:(id)processors;
@end

@implementation EBChartSheet

+ (void)readWithState:(id)state
{
  stateCopy = state;
  edSheet = [stateCopy edSheet];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    processors = [edSheet processors];
    [self setupProcessors:processors];

    xlReader = [stateCopy xlReader];
    [edSheet setBounds:{xlReader[389], xlReader[390], (xlReader[391] - xlReader[389]), (xlReader[392] - xlReader[390])}];
  }
}

+ (void)readChildrenWithState:(id)state
{
  stateCopy = state;
  edSheet = [stateCopy edSheet];
  v4 = [EBGraphic readMainChartWithState:stateCopy];
  [edSheet setMainChart:v4];

  [EBGraphic readGraphicsWithState:stateCopy];
}

+ (void)setupProcessors:(id)processors
{
  processorsCopy = processors;
  [processorsCopy removeAllObjects];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
  [processorsCopy addProcessorClass:objc_opt_class()];
}

@end