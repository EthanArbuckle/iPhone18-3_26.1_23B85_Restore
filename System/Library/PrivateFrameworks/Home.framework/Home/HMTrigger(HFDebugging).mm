@interface HMTrigger(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMTrigger(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  name = [self name];
  [v5 setObject:name forKeyedSubscript:@"name"];

  [v5 appendBool:objc_msgSend(self withName:"isEnabled") ifEqualTo:{@"enabled", 0}];
  if ([v4 detailLevel] == 2)
  {
    actionSets = [self actionSets];
    v9 = [actionSets na_filter:&__block_literal_global_357];
    v10 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:v9 withName:@"actionSets" context:v10];

    actionSets2 = [self actionSets];
    v12 = [actionSets2 na_filter:&__block_literal_global_359];
    [v5 appendObject:v12 withName:@"triggerOwnedActionSets"];
  }

  return v5;
}

@end