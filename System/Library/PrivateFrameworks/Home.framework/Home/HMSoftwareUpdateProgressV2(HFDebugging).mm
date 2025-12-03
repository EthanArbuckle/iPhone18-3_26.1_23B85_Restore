@interface HMSoftwareUpdateProgressV2(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSoftwareUpdateProgressV2(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [HFStateDumpBuilder builderWithObject:self context:a3];
  v5 = MEMORY[0x277CCABB0];
  [self percentageComplete];
  v6 = [v5 numberWithFloat:?];
  [v4 setObject:v6 forKeyedSubscript:@"percentageComplete"];

  v7 = MEMORY[0x277CCABB0];
  [self estimatedTimeRemaining];
  v8 = [v7 numberWithDouble:?];
  [v4 setObject:v8 forKeyedSubscript:@"estimatedTimeRemaining"];

  return v4;
}

@end