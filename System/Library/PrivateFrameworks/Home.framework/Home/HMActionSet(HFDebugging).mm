@interface HMActionSet(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMActionSet(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  name = [self name];
  [v5 setObject:name forKeyedSubscript:@"name"];

  [v5 appendBool:objc_msgSend(self withName:"hf_isAnonymous") ifEqualTo:{@"triggerOwned", 1}];
  detailLevel = [v4 detailLevel];

  if (detailLevel == 2)
  {
    actions = [self actions];
    [v5 setObject:actions forKeyedSubscript:@"actions"];
  }

  return v5;
}

@end