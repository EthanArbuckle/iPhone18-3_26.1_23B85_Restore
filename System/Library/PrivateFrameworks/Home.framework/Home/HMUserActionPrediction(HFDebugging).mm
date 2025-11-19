@interface HMUserActionPrediction(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMUserActionPrediction(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:a1 context:a3];
  v5 = NSStringFromHMUserActionPredictionType([a1 predictionType]);
  [v4 setObject:v5 forKeyedSubscript:@"predictionType"];

  v6 = MEMORY[0x277CCABB0];
  [a1 predictionScore];
  v7 = [v6 numberWithDouble:?];
  [v4 setObject:v7 forKeyedSubscript:@"predictionScore"];

  v8 = [a1 predictionTargetUUID];
  [v4 setObject:v8 forKeyedSubscript:@"predictionTargetUUID"];

  v9 = [a1 targetServiceUUID];
  [v4 setObject:v9 forKeyedSubscript:@"targetServiceUUID"];

  return v4;
}

@end