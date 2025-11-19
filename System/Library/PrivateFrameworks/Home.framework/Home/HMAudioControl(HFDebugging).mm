@interface HMAudioControl(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMAudioControl(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  [v5 appendBool:objc_msgSend(a1 withName:{"isMuted"), @"muted"}];
  v6 = MEMORY[0x277CCACA8];
  [a1 volume];
  v8 = [v6 stringWithFormat:@"%.2f", v7];
  [v5 setObject:v8 forKeyedSubscript:@"volume"];

  v9 = [a1 mediaSession];
  v10 = [v4 copyWithDetailLevel:0];

  [v5 appendObject:v9 withName:@"mediaSession" context:v10];

  return v5;
}

@end