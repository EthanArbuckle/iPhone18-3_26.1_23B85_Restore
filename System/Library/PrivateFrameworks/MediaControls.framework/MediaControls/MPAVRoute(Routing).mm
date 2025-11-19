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
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [a1 batteryLevel];
  v7 = [v6 leftPercentage];
  if (v7)
  {
    v8 = [v6 rightPercentage];
    if (v8)
    {
      v9 = [v6 leftPercentage];
      [v9 floatValue];
      v11 = v10;
      v12 = [v6 rightPercentage];
      [v12 floatValue];
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

  v15 = [v6 leftPercentage];
  if (v15)
  {
    v16 = v15;
    v17 = [v6 rightPercentage];
    v18 = v17 != 0 && v14;

    if (v18 == 1)
    {
      v19 = [v6 leftPercentage];
      v20 = [v4 stringFromNumber:v19];
      v21 = [v6 rightPercentage];
      v22 = [v4 stringFromNumber:v21];
      v23 = [MRUStringsProvider accessoryBatteryLevelCombinedLeft:v20 right:v22];
      [v5 addObject:v23];

LABEL_22:
      goto LABEL_23;
    }
  }

  v24 = [v6 leftPercentage];
  if (v24)
  {
    v25 = v24;
    v26 = [v6 rightPercentage];

    if (v26)
    {
      v27 = [v6 leftPercentage];
      [v27 floatValue];
      v29 = v28;
      v30 = [v6 rightPercentage];
      [v30 floatValue];
      if (v29 < v31)
      {
        [v6 leftPercentage];
      }

      else
      {
        [v6 rightPercentage];
      }
      v19 = ;

      goto LABEL_20;
    }
  }

  v32 = [v6 leftPercentage];

  if (v32)
  {
    v19 = [v6 leftPercentage];
    v20 = [v4 stringFromNumber:v19];
    v33 = [MRUStringsProvider accessoryBatteryLevelLeft:v20];
LABEL_21:
    v21 = v33;
    [v5 addObject:v33];
    goto LABEL_22;
  }

  v34 = [v6 rightPercentage];

  if (v34)
  {
    v19 = [v6 rightPercentage];
    v20 = [v4 stringFromNumber:v19];
    v33 = [MRUStringsProvider accessoryBatteryLevelRight:v20];
    goto LABEL_21;
  }

  v50 = [v6 singlePercentage];

  if (v50)
  {
    v19 = [v6 singlePercentage];
LABEL_20:
    v20 = [v4 stringFromNumber:v19];
    v33 = [MRUStringsProvider accessoryBatteryLevelSingle:v20];
    goto LABEL_21;
  }

LABEL_23:
  v35 = [v6 casePercentage];

  if (v35)
  {
    v36 = [v6 casePercentage];
    v37 = [v4 stringFromNumber:v36];
    v38 = [MRUStringsProvider accessoryBatteryLevelCase:v37];
    [v5 addObject:v38];
  }

  v39 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = [v39 logicalLeaderOutputDevice];
    v41 = [v40 alternateTransportType];
    if ([v40 deviceType] == 2)
    {
      v42 = MCLogCategoryDefault();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v52 = objc_opt_class();
        v43 = [v40 uid];
        v44 = [v40 name];
        [v40 deviceType];
        v51 = MRAVOutputDeviceTypeCopyDescription();
        [v40 modelID];
        v45 = v53 = v4;
        v46 = [v6 description];
        *buf = 138544898;
        v55 = v52;
        v56 = 2114;
        v57 = v43;
        v58 = 2114;
        v59 = v44;
        v60 = 2114;
        v61 = v51;
        v62 = 2114;
        v63 = v45;
        v64 = 2114;
        v65 = v41;
        v66 = 2114;
        v67 = v46;
        _os_log_impl(&dword_1A20FC000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ Battery Info - id: %{public}@ | name: %{public}@ | device type: %{public}@ | model: %{public}@ | transport: %{public}@ | battery: %{public}@", buf, 0x48u);

        v4 = v53;
      }

      if ([v41 isEqualToString:*MEMORY[0x1E6958720]])
      {
        v47 = +[MRUStringsProvider USBAudio];
        [v5 addObject:v47];
      }
    }
  }

  if ([v5 count])
  {
    v48 = [v5 componentsJoinedByString:@"  "];
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

- (id)alternateTransportType
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 logicalLeaderOutputDevice];
    v3 = [v2 alternateTransportType];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)routingPairedDeviceText
{
  v17 = *MEMORY[0x1E69E9840];
  if (![a1 isPickedOnPairedDevice])
  {
    v10 = 0;
    goto LABEL_18;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [a1 auxiliaryDevices];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
      objc_enumerationMutation(v2);
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
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    v9 = [a1 playingPairedDeviceName];
    if (!v9)
    {
      goto LABEL_12;
    }

LABEL_16:
    v10 = [MRUStringsProvider routingInUseOnPairedDevice:v9];
    goto LABEL_17;
  }

  v9 = [v5 deviceName];

  if (v9)
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