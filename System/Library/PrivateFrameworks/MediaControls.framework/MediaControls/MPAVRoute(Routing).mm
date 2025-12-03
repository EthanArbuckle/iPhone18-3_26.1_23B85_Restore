@interface MPAVRoute(Routing)
- (id)alternateTransportType;
- (id)routingBatteryTextWithFormatter:()Routing;
- (id)routingPairedDeviceText;
@end

@implementation MPAVRoute(Routing)

- (id)routingBatteryTextWithFormatter:()Routing
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  batteryLevel = [self batteryLevel];
  leftPercentage = [batteryLevel leftPercentage];
  if (leftPercentage)
  {
    rightPercentage = [batteryLevel rightPercentage];
    if (rightPercentage)
    {
      leftPercentage2 = [batteryLevel leftPercentage];
      [leftPercentage2 floatValue];
      v11 = v10;
      rightPercentage2 = [batteryLevel rightPercentage];
      [rightPercentage2 floatValue];
      v14 = vabds_f32(v11, v13) >= 0.1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  leftPercentage3 = [batteryLevel leftPercentage];
  if (leftPercentage3)
  {
    v16 = leftPercentage3;
    rightPercentage3 = [batteryLevel rightPercentage];
    v18 = rightPercentage3 != 0 && v14;

    if (v18 == 1)
    {
      leftPercentage4 = [batteryLevel leftPercentage];
      v20 = [v4 stringFromNumber:leftPercentage4];
      rightPercentage4 = [batteryLevel rightPercentage];
      v22 = [v4 stringFromNumber:rightPercentage4];
      v23 = [MRUStringsProvider accessoryBatteryLevelCombinedLeft:v20 right:v22];
      [array addObject:v23];

LABEL_22:
      goto LABEL_23;
    }
  }

  leftPercentage5 = [batteryLevel leftPercentage];
  if (leftPercentage5)
  {
    v25 = leftPercentage5;
    rightPercentage5 = [batteryLevel rightPercentage];

    if (rightPercentage5)
    {
      leftPercentage6 = [batteryLevel leftPercentage];
      [leftPercentage6 floatValue];
      v29 = v28;
      rightPercentage6 = [batteryLevel rightPercentage];
      [rightPercentage6 floatValue];
      if (v29 < v31)
      {
        [batteryLevel leftPercentage];
      }

      else
      {
        [batteryLevel rightPercentage];
      }
      leftPercentage4 = ;

      goto LABEL_20;
    }
  }

  leftPercentage7 = [batteryLevel leftPercentage];

  if (leftPercentage7)
  {
    leftPercentage4 = [batteryLevel leftPercentage];
    v20 = [v4 stringFromNumber:leftPercentage4];
    v33 = [MRUStringsProvider accessoryBatteryLevelLeft:v20];
LABEL_21:
    rightPercentage4 = v33;
    [array addObject:v33];
    goto LABEL_22;
  }

  rightPercentage7 = [batteryLevel rightPercentage];

  if (rightPercentage7)
  {
    leftPercentage4 = [batteryLevel rightPercentage];
    v20 = [v4 stringFromNumber:leftPercentage4];
    v33 = [MRUStringsProvider accessoryBatteryLevelRight:v20];
    goto LABEL_21;
  }

  singlePercentage = [batteryLevel singlePercentage];

  if (singlePercentage)
  {
    leftPercentage4 = [batteryLevel singlePercentage];
LABEL_20:
    v20 = [v4 stringFromNumber:leftPercentage4];
    v33 = [MRUStringsProvider accessoryBatteryLevelSingle:v20];
    goto LABEL_21;
  }

LABEL_23:
  casePercentage = [batteryLevel casePercentage];

  if (casePercentage)
  {
    casePercentage2 = [batteryLevel casePercentage];
    v37 = [v4 stringFromNumber:casePercentage2];
    v38 = [MRUStringsProvider accessoryBatteryLevelCase:v37];
    [array addObject:v38];
  }

  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    logicalLeaderOutputDevice = [selfCopy logicalLeaderOutputDevice];
    alternateTransportType = [logicalLeaderOutputDevice alternateTransportType];
    if ([logicalLeaderOutputDevice deviceType] == 2)
    {
      v42 = MCLogCategoryDefault();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v52 = objc_opt_class();
        v43 = [logicalLeaderOutputDevice uid];
        name = [logicalLeaderOutputDevice name];
        [logicalLeaderOutputDevice deviceType];
        v51 = MRAVOutputDeviceTypeCopyDescription();
        [logicalLeaderOutputDevice modelID];
        v45 = v53 = v4;
        v46 = [batteryLevel description];
        *buf = 138544898;
        v55 = v52;
        v56 = 2114;
        v57 = v43;
        v58 = 2114;
        v59 = name;
        v60 = 2114;
        v61 = v51;
        v62 = 2114;
        v63 = v45;
        v64 = 2114;
        v65 = alternateTransportType;
        v66 = 2114;
        v67 = v46;
        _os_log_impl(&dword_1A20FC000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ Battery Info - id: %{public}@ | name: %{public}@ | device type: %{public}@ | model: %{public}@ | transport: %{public}@ | battery: %{public}@", buf, 0x48u);

        v4 = v53;
      }

      if ([alternateTransportType isEqualToString:*MEMORY[0x1E6958720]])
      {
        v47 = +[MRUStringsProvider USBAudio];
        [array addObject:v47];
      }
    }
  }

  if ([array count])
  {
    v48 = [array componentsJoinedByString:@"  "];
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

- (id)alternateTransportType
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    logicalLeaderOutputDevice = [selfCopy logicalLeaderOutputDevice];
    alternateTransportType = [logicalLeaderOutputDevice alternateTransportType];
  }

  else
  {
    alternateTransportType = 0;
  }

  return alternateTransportType;
}

- (id)routingPairedDeviceText
{
  v17 = *MEMORY[0x1E69E9840];
  if (![self isPickedOnPairedDevice])
  {
    v10 = 0;
    goto LABEL_18;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  auxiliaryDevices = [self auxiliaryDevices];
  v3 = [auxiliaryDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v3)
  {

    goto LABEL_15;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v13;
LABEL_4:
  v7 = 0;
  v8 = v5;
  while (1)
  {
    if (*v13 != v6)
    {
      objc_enumerationMutation(auxiliaryDevices);
    }

    v5 = *(*(&v12 + 1) + 8 * v7);

    if ([v5 isPlaying])
    {
      break;
    }

    ++v7;
    v8 = v5;
    if (v4 == v7)
    {
      v4 = [auxiliaryDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        goto LABEL_4;
      }

      break;
    }
  }

  if (!v5)
  {
LABEL_15:
    playingPairedDeviceName = [self playingPairedDeviceName];
    if (!playingPairedDeviceName)
    {
      goto LABEL_12;
    }

LABEL_16:
    v10 = [MRUStringsProvider routingInUseOnPairedDevice:playingPairedDeviceName];
    goto LABEL_17;
  }

  playingPairedDeviceName = [v5 deviceName];

  if (playingPairedDeviceName)
  {
    goto LABEL_16;
  }

LABEL_12:
  v10 = 0;
LABEL_17:

LABEL_18:

  return v10;
}

@end