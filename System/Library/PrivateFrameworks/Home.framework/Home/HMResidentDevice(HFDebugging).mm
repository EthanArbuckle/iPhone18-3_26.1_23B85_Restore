@interface HMResidentDevice(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMResidentDevice(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  name = [self name];
  [v5 setObject:name forKeyedSubscript:@"name"];

  [self status];
  v8 = HMResidentDeviceStatusDescription();
  [v5 setObject:v8 forKeyedSubscript:@"status"];

  [self capabilities];
  v9 = HMResidentDeviceCapabilitiesDescription();
  [v5 setObject:v9 forKeyedSubscript:@"capabilities"];

  if ([v4 detailLevel] == 2)
  {
    device = [self device];
    v11 = [v4 copyWithOutputStyle:1];
    [v5 appendObject:device withName:@"device" context:v11];
  }

  return v5;
}

@end