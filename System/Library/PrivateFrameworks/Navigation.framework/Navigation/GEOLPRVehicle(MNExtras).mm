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
  v7 = [a1 licensePlate];
  if (![v7 length])
  {

    goto LABEL_29;
  }

  v8 = [a1 powerTypeKey];
  if (v8)
  {
  }

  else
  {
    v9 = [a1 vehicleTypeKey];

    if (!v9)
    {
      goto LABEL_30;
    }
  }

  v10 = [v6 powerTypeKeys];
  v11 = [v6 vehicleTypeKeys];
  v12 = [a1 _matchesPower:v10 andVehicle:v11];

  if (!v12)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v13 = [a1 licensePlate];
  v14 = [v13 length];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = [v6 plateMatchConditions];
  v41 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (!v41)
  {
LABEL_28:

    goto LABEL_29;
  }

  v16 = *v51;
  v43 = v15;
  v44 = v6;
  v39 = *v51;
  v40 = a4;
  while (1)
  {
    v17 = 0;
LABEL_10:
    if (*v51 != v16)
    {
      objc_enumerationMutation(v15);
    }

    v18 = *(*(&v50 + 1) + 8 * v17);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v19 = [v18 patterns];
    v20 = [v19 countByEnumeratingWithState:&v46 objects:v54 count:16];
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
        objc_enumerationMutation(v19);
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

        v9 = 0;
LABEL_31:
        v15 = v43;
        v6 = v44;
        goto LABEL_32;
      }

      v33 = [a1 licensePlate];
      [v26 rangeOfFirstMatchInString:v33 options:0 range:{0, v14}];
      v35 = v34;

      if (!v35)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v21)
        {
          goto LABEL_14;
        }

        v9 = 1;
        goto LABEL_31;
      }
    }

    v17 = v42 + 1;
    v15 = v43;
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

  v9 = 1;
LABEL_32:

LABEL_30:
  v36 = *MEMORY[0x1E69E9840];
  return v9;
}

- (uint64_t)matchesLicensePlateRegion:()MNExtras
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 licensePlateInfosCount])
  {
    v5 = [a1 powerTypeKey];
    if (v5)
    {
    }

    else
    {
      v7 = [a1 vehicleTypeKey];

      if (!v7)
      {
        v6 = 0;
        goto LABEL_17;
      }
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v4 licensePlateInfos];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 powerTypeKeys];
          v15 = [v13 vehicleTypeKeys];
          v16 = [a1 _matchesPower:v14 andVehicle:v15];

          if (v16)
          {
            v6 = 1;
            goto LABEL_16;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
  v5 = [v4 powerTypeKeys];
  v6 = [v4 vehicleTypeKeys];

  v7 = [a1 _matchesPower:v5 andVehicle:v6];
  return v7;
}

- (uint64_t)_matchesPower:()MNExtras andVehicle:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 powerTypeKey];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 count];

    if (v10)
    {
      v11 = [a1 powerTypeKey];
      v12 = [v6 containsObject:v11];

      if (!v12)
      {
        goto LABEL_8;
      }
    }
  }

  v13 = [a1 vehicleTypeKey];
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  v15 = [v7 count];

  if (v15 && ([a1 vehicleTypeKey], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v7, "containsObject:", v16), v16, !v17))
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