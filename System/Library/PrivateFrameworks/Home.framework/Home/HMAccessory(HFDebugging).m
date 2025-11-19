@interface HMAccessory(HFDebugging)
- (id)hf_stateDumpBuilderWithContext:()HFDebugging;
@end

@implementation HMAccessory(HFDebugging)

- (id)hf_stateDumpBuilderWithContext:()HFDebugging
{
  v4 = a3;
  v5 = [HFStateDumpBuilder builderWithObject:a1 context:v4];
  v6 = [a1 uniqueIdentifier];
  [v5 appendObject:v6 withName:@"UUID" options:2];

  v7 = [a1 name];
  [v5 setObject:v7 forKeyedSubscript:@"name"];

  [v5 appendBool:objc_msgSend(a1 withName:"isReachable") ifEqualTo:{@"reachable", 0}];
  [v5 appendBool:objc_msgSend(a1 withName:"isReachable") ifEqualTo:{@"controllable", 0}];
  [v5 appendBool:objc_msgSend(a1 withName:"isBlocked") ifEqualTo:{@"blocked", 1}];
  [v5 appendBool:objc_msgSend(a1 withName:"isFirmwareUpdateAvailable") ifEqualTo:{@"firmwareUpdateAvailable", 1}];
  if ([v4 detailLevel] == 2)
  {
    if ([a1 supportsSoftwareUpdateV2])
    {
      v8 = +[HFHomeKitDispatcher sharedDispatcher];
      v9 = [v8 softwareUpdateManager];

      v10 = [v9 softwareUpdateForAccessory:a1];
      if (v10)
      {
        [v5 appendObject:v10 withName:@"softwareUpdate"];
        v11 = [v9 softwareUpdateProgressForAccessory:a1];
        [v5 appendObject:v11 withName:@"progress" options:1];
      }

      else
      {
        [v5 appendBool:objc_msgSend(a1 withName:{"supportsSoftwareUpdateV2"), @"supportsSoftwareUpdateV2"}];
      }
    }

    else
    {
      v9 = [a1 softwareUpdateController];
      [v5 appendObject:v9 withName:@"softwareUpdateController" options:1];
    }

    v12 = [a1 room];
    v13 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:v12 withName:@"room" context:v13];

    v14 = [a1 services];
    [v5 appendObject:v14 withName:@"services" options:1];

    v15 = [a1 cameraProfiles];
    [v5 appendObject:v15 withName:@"cameraProfiles" options:1];

    v16 = [a1 uniqueIdentifiersForBridgedAccessories];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __59__HMAccessory_HFDebugging__hf_stateDumpBuilderWithContext___block_invoke;
    v24[3] = &unk_277DF5E10;
    v24[4] = a1;
    v17 = [v16 na_map:v24];
    v18 = [v4 copyWithDetailLevel:0];
    [v5 appendObject:v17 withName:@"bridgedAccessories" context:v18 options:1];

    v19 = [a1 mediaProfile];
    [v5 appendObject:v19 withName:@"mediaProfile" options:1];

    v20 = [a1 audioDestinationController];
    v21 = [v20 availableDestinations];
    [v5 appendObject:v21 withName:@"availableDestinations" options:1];

    v22 = [a1 device];
    [v5 appendObject:v22 withName:@"device" options:1];

    [v5 appendBool:objc_msgSend(a1 withName:{"hf_isOnForContextType:", 0), @"isLegacyFavorite"}];
    [v5 appendBool:objc_msgSend(a1 withName:{"hf_shouldBeOnForContextType:", 0), @"showInLegacyFavorite"}];
    [v5 appendBool:objc_msgSend(a1 withName:{"hf_isFavorite"), @"isFavorite"}];
    [v5 appendBool:objc_msgSend(a1 withName:{"hf_effectiveIsFavorite"), @"effectiveIsFavorite"}];
    [v5 appendBool:objc_msgSend(a1 withName:{"hf_showInHomeDashboard"), @"showInHomeDashboard"}];
    [v5 appendBool:objc_msgSend(a1 withName:{"hf_effectiveShowInHomeDashboard"), @"effectiveShowInHomeDashboard"}];
  }

  return v5;
}

@end