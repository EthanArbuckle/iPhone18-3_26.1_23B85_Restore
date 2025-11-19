@interface HMResidentDevice(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMResidentDevice(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [a1 uniqueIdentifier];
  [v5 appendObject:v6 withName:@"UUID" options:2];

  v7 = [a1 name];
  [v5 setObject:v7 forKeyedSubscript:@"name"];

  [a1 status];
  v8 = HMResidentDeviceStatusDescription();
  [v5 setObject:v8 forKeyedSubscript:@"status"];

  [a1 capabilities];
  v9 = HMResidentDeviceCapabilitiesDescription();
  [v5 setObject:v9 forKeyedSubscript:@"capabilities"];

  if ([v4 detailLevel] == 2)
  {
    v10 = [a1 device];
    v11 = [v4 copyWithOutputStyle:1];
    [v5 appendObject:v10 withName:@"device" context:v11];
  }

  return v5;
}

@end