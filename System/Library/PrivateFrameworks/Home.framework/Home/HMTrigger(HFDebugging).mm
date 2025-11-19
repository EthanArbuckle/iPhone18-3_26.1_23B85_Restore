@interface HMTrigger(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMTrigger(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [a1 uniqueIdentifier];
  [v5 appendObject:v6 withName:@"UUID" options:2];

  v7 = [a1 name];
  [v5 setObject:v7 forKeyedSubscript:@"name"];

  [v5 appendBool:objc_msgSend(a1 withName:"isEnabled") ifEqualTo:{@"enabled", 0}];
  if ([v4 detailLevel] == 2)
  {
    v8 = [a1 actionSets];
    v9 = [v8 na_filter:&__block_literal_global_357];
    v10 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:v9 withName:@"actionSets" context:v10];

    v11 = [a1 actionSets];
    v12 = [v11 na_filter:&__block_literal_global_359];
    [v5 appendObject:v12 withName:@"triggerOwnedActionSets"];
  }

  return v5;
}

@end