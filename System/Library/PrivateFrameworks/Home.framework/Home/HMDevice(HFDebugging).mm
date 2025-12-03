@interface HMDevice(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMDevice(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = [a3 copyWithOutputStyle:1];
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  name = [self name];
  [v5 setObject:name forKeyedSubscript:@"name"];

  [v5 appendBool:objc_msgSend(self withName:"isCurrentDevice") ifEqualTo:{@"currentDevice", 1}];

  return v5;
}

@end