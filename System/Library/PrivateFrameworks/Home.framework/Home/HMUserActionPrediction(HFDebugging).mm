@interface HMUserActionPrediction(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMUserActionPrediction(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:self context:a3];
  v5 = NSStringFromHMUserActionPredictionType([self predictionType]);
  [v4 setObject:v5 forKeyedSubscript:@"predictionType"];

  v6 = MEMORY[0x277CCABB0];
  [self predictionScore];
  v7 = [v6 numberWithDouble:?];
  [v4 setObject:v7 forKeyedSubscript:@"predictionScore"];

  predictionTargetUUID = [self predictionTargetUUID];
  [v4 setObject:predictionTargetUUID forKeyedSubscript:@"predictionTargetUUID"];

  targetServiceUUID = [self targetServiceUUID];
  [v4 setObject:targetServiceUUID forKeyedSubscript:@"targetServiceUUID"];

  return v4;
}

@end