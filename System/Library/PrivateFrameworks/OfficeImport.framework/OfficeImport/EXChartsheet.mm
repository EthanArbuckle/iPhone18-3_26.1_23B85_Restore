@interface EXChartsheet
+ (id)edSheetWithState:(id)state;
+ (void)setupProcessors:(id)processors;
@end

@implementation EXChartsheet

+ (id)edSheetWithState:(id)state
{
  stateCopy = state;
  v5 = [EDChartSheet alloc];
  workbook = [stateCopy workbook];
  v7 = [(EDSheet *)v5 initWithWorkbook:workbook];

  processors = [(EDSheet *)v7 processors];
  [self setupProcessors:processors];

  return v7;
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