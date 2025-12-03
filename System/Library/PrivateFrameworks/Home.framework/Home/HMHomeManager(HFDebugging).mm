@interface HMHomeManager(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMHomeManager(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  v6 = NSStringFromHMHomeManagerDataSyncState([self dataSyncState]);
  [v5 setObject:v6 forKeyedSubscript:@"dataSyncState"];

  [v5 appendBool:objc_msgSend(self withName:"isThisDeviceResidentCapable") ifEqualTo:{@"residentCapable", 1}];
  [v5 appendBool:objc_msgSend(self withName:"isResidentEnabledForThisDevice") ifEqualTo:{@"residentEnabled", 1}];
  if ([self residentProvisioningStatus])
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "residentProvisioningStatus")}];
    [v5 setObject:v7 forKeyedSubscript:@"residentProvisioningStatus"];
  }

  if ([v4 detailLevel] == 2)
  {
    [self options];
    v8 = HMHomeManagerOptionsToString();
    [v5 setObject:v8 forKeyedSubscript:@"options"];

    homes = [self homes];
    [v5 setObject:homes forKeyedSubscript:@"homes"];

    incomingHomeInvitations = [self incomingHomeInvitations];
    [v5 appendObject:incomingHomeInvitations withName:@"incomingInvitations" options:1];

    currentAccessory = [self currentAccessory];
    [v5 appendObject:currentAccessory withName:@"currentAccessory" options:1];

    [v5 appendBool:objc_msgSend(self withName:"hf_hasSeenOnboardingWelcomeView") ifEqualTo:{@"hasOnboarded", 0}];
  }

  return v5;
}

@end