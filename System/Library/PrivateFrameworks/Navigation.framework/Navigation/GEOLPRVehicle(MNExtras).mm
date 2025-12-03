@interface GEOLPRVehicle(MNExtras)
- (uint64_t)_matchesPower:()MNExtras andVehicle:;
- (uint64_t)matchesDefinedPlateCondition:()MNExtras error:;
- (uint64_t)matchesLicensePlateRegion:()MNExtras;
- (uint64_t)matchesPlateInfo:()MNExtras;
@end

@implementation GEOLPRVehicle(MNExtras)

- (uint64_t)matchesDefinedPlateCondition:()MNExtras error:
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  licensePlate = [self licensePlate];
  if (![licensePlate length])
  {

    goto LABEL_29;
  }

  powerTypeKey = [self powerTypeKey];
  if (powerTypeKey)
  {
  }

  else
  {
    vehicleTypeKey = [self vehicleTypeKey];

    if (!vehicleTypeKey)
    {
      goto LABEL_30;
    }
  }

  powerTypeKeys = [v6 powerTypeKeys];
  vehicleTypeKeys = [v6 vehicleTypeKeys];
  v12 = [self _matchesPower:powerTypeKeys andVehicle:vehicleTypeKeys];

  if (!v12)
  {
LABEL_29:
    vehicleTypeKey = 0;
    goto LABEL_30;
  }

  licensePlate2 = [self licensePlate];
  v14 = [licensePlate2 length];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  plateMatchConditions = [v6 plateMatchConditions];
  v41 = [plateMatchConditions countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (!v41)
  {
LABEL_28:

    goto LABEL_29;
  }

  v16 = *v51;
  v43 = plateMatchConditions;
  v44 = v6;
  v39 = *v51;
  v40 = a4;
  while (1)
  {
    v17 = 0;
LABEL_10:
    if (*v51 != v16)
    {
      objc_enumerationMutation(plateMatchConditions);
    }

    v18 = *(*(&v50 + 1) + 8 * v17);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    patterns = [v18 patterns];
    v20 = [patterns countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (!v20)
    {
      break;
    }

    v21 = v20;
    v42 = v17;
    v22 = *v47;
LABEL_14:
    v23 = 0;
    while (1)
    {
      if (*v47 != v22)
      {
        objc_enumerationMutation(patterns);
      }

      v24 = *(*(&v46 + 1) + 8 * v23);
      v25 = objc_alloc(MEMORY[0x1E696AE70]);
      v45 = 0;
      v26 = [v25 initWithPattern:v24 options:3 error:&v45];
      v27 = v45;
      if (v26)
      {
        v32 = v27 == 0;
      }

      else
      {
        v32 = 0;
      }

      if (!v32)
      {
        v38 = v27;
        _mnLPRWrappedError(v40, -100, v27, @"Invalid regular expression: %@", v28, v29, v30, v31, v24);
        [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"InvalidRegEx"];

        vehicleTypeKey = 0;
LABEL_31:
        plateMatchConditions = v43;
        v6 = v44;
        goto LABEL_32;
      }

      licensePlate3 = [self licensePlate];
      [v26 rangeOfFirstMatchInString:licensePlate3 options:0 range:{0, v14}];
      v35 = v34;

      if (!v35)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [patterns countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v21)
        {
          goto LABEL_14;
        }

        vehicleTypeKey = 1;
        goto LABEL_31;
      }
    }

    v17 = v42 + 1;
    plateMatchConditions = v43;
    v6 = v44;
    v16 = v39;
    if (v42 + 1 != v41)
    {
      goto LABEL_10;
    }

    v41 = [v43 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (!v41)
    {
      goto LABEL_28;
    }
  }

  vehicleTypeKey = 1;
LABEL_32:

LABEL_30:
  v36 = *MEMORY[0x1E69E9840];
  return vehicleTypeKey;
}

- (uint64_t)matchesLicensePlateRegion:()MNExtras
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 licensePlateInfosCount])
  {
    powerTypeKey = [self powerTypeKey];
    if (powerTypeKey)
    {
    }

    else
    {
      vehicleTypeKey = [self vehicleTypeKey];

      if (!vehicleTypeKey)
      {
        v6 = 0;
        goto LABEL_17;
      }
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    licensePlateInfos = [v4 licensePlateInfos];
    v9 = [licensePlateInfos countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(licensePlateInfos);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          powerTypeKeys = [v13 powerTypeKeys];
          vehicleTypeKeys = [v13 vehicleTypeKeys];
          v16 = [self _matchesPower:powerTypeKeys andVehicle:vehicleTypeKeys];

          if (v16)
          {
            v6 = 1;
            goto LABEL_16;
          }
        }

        v10 = [licensePlateInfos countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_16:
  }

  else
  {
    v6 = 1;
  }

LABEL_17:

  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

- (uint64_t)matchesPlateInfo:()MNExtras
{
  v4 = a3;
  powerTypeKeys = [v4 powerTypeKeys];
  vehicleTypeKeys = [v4 vehicleTypeKeys];

  v7 = [self _matchesPower:powerTypeKeys andVehicle:vehicleTypeKeys];
  return v7;
}

- (uint64_t)_matchesPower:()MNExtras andVehicle:
{
  v6 = a3;
  v7 = a4;
  powerTypeKey = [self powerTypeKey];
  if (powerTypeKey)
  {
    v9 = powerTypeKey;
    v10 = [v6 count];

    if (v10)
    {
      powerTypeKey2 = [self powerTypeKey];
      v12 = [v6 containsObject:powerTypeKey2];

      if (!v12)
      {
        goto LABEL_8;
      }
    }
  }

  vehicleTypeKey = [self vehicleTypeKey];
  if (!vehicleTypeKey)
  {
    goto LABEL_7;
  }

  v14 = vehicleTypeKey;
  v15 = [v7 count];

  if (v15 && ([self vehicleTypeKey], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v7, "containsObject:", v16), v16, !v17))
  {
LABEL_8:
    v18 = 0;
  }

  else
  {
LABEL_7:
    v18 = 1;
  }

  return v18;
}

@end