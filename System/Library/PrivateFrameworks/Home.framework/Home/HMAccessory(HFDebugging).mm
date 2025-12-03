@interface HMAccessory(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMAccessory(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:self context:v4];
  uniqueIdentifier = [self uniqueIdentifier];
  [v5 appendObject:uniqueIdentifier withName:@"UUID" options:2];

  name = [self name];
  [v5 setObject:name forKeyedSubscript:@"name"];

  [v5 appendBool:objc_msgSend(self withName:"isReachable") ifEqualTo:{@"reachable", 0}];
  [v5 appendBool:objc_msgSend(self withName:"isReachable") ifEqualTo:{@"controllable", 0}];
  [v5 appendBool:objc_msgSend(self withName:"isBlocked") ifEqualTo:{@"blocked", 1}];
  [v5 appendBool:objc_msgSend(self withName:"isFirmwareUpdateAvailable") ifEqualTo:{@"firmwareUpdateAvailable", 1}];
  if ([v4 detailLevel] == 2)
  {
    if ([self supportsSoftwareUpdateV2])
    {
      v8 = +[HFHomeKitDispatcher sharedDispatcher];
      softwareUpdateManager = [v8 softwareUpdateManager];

      v10 = [softwareUpdateManager softwareUpdateForAccessory:self];
      if (v10)
      {
        [v5 appendObject:v10 withName:@"softwareUpdate"];
        v11 = [softwareUpdateManager softwareUpdateProgressForAccessory:self];
        [v5 appendObject:v11 withName:@"progress" options:1];
      }

      else
      {
        [v5 appendBool:objc_msgSend(self withName:{"supportsSoftwareUpdateV2"), @"supportsSoftwareUpdateV2"}];
      }
    }

    else
    {
      softwareUpdateManager = [self softwareUpdateController];
      [v5 appendObject:softwareUpdateManager withName:@"softwareUpdateController" options:1];
    }

    room = [self room];
    v13 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:room withName:@"room" context:v13];

    services = [self services];
    [v5 appendObject:services withName:@"services" options:1];

    cameraProfiles = [self cameraProfiles];
    [v5 appendObject:cameraProfiles withName:@"cameraProfiles" options:1];

    uniqueIdentifiersForBridgedAccessories = [self uniqueIdentifiersForBridgedAccessories];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __59__HMAccessory_HFDebugging__hf_stateDumpBuilderWithContext___block_invoke;
    v24[3] = &unk_277DF5E10;
    v24[4] = self;
    v17 = [uniqueIdentifiersForBridgedAccessories na_map:v24];
    v18 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:v17 withName:@"bridgedAccessories" context:v18 options:1];

    mediaProfile = [self mediaProfile];
    [v5 appendObject:mediaProfile withName:@"mediaProfile" options:1];

    audioDestinationController = [self audioDestinationController];
    availableDestinations = [audioDestinationController availableDestinations];
    [v5 appendObject:availableDestinations withName:@"availableDestinations" options:1];

    device = [self device];
    [v5 appendObject:device withName:@"device" options:1];

    [v5 appendBool:objc_msgSend(self withName:{"hf_isOnForContextType:", 0), @"isLegacyFavorite"}];
    [v5 appendBool:objc_msgSend(self withName:{"hf_shouldBeOnForContextType:", 0), @"showInLegacyFavorite"}];
    [v5 appendBool:objc_msgSend(self withName:{"hf_isFavorite"), @"isFavorite"}];
    [v5 appendBool:objc_msgSend(self withName:{"hf_effectiveIsFavorite"), @"effectiveIsFavorite"}];
    [v5 appendBool:objc_msgSend(self withName:{"hf_showInHomeDashboard"), @"showInHomeDashboard"}];
    [v5 appendBool:objc_msgSend(self withName:{"hf_effectiveShowInHomeDashboard"), @"effectiveShowInHomeDashboard"}];
  }

  return v5;
}

@end