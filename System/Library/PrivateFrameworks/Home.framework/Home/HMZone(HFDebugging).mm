@interface HMZone(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMZone(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  name = [self name];
  [v5 setObject:name forKeyedSubscript:@"name"];

  if ([v4 detailLevel] == 2)
  {
    rooms = [self rooms];
    v9 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:rooms withName:@"rooms" context:v9 options:0];
  }

  return v5;
}

@end