@interface HMSoftwareUpdateController(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMSoftwareUpdateController(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  availableUpdate = [self availableUpdate];
  [v5 setObject:availableUpdate forKeyedSubscript:@"availableUpdate"];

  detailLevel = [v4 detailLevel];
  if (detailLevel == 2)
  {
    [v5 appendBool:objc_msgSend(self withName:"isControllable") ifEqualTo:{@"controllable", 0}];
    v9 = MEMORY[0x277CCACA8];
    delegate = [self delegate];
    v11 = [v9 stringWithFormat:@"%p", delegate];
    [v5 setObject:v11 forKeyedSubscript:@"delegate"];
  }

  return v5;
}

@end