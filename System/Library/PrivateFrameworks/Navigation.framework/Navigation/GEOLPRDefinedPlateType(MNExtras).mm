@interface GEOLPRDefinedPlateType(MNExtras)
- (uint64_t)hasDefinedPlateConditionsForVehicle:()MNExtras error:;
@end

@implementation GEOLPRDefinedPlateType(MNExtras)

- (uint64_t)hasDefinedPlateConditionsForVehicle:()MNExtras error:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  conditions = [self conditions];
  v8 = [conditions countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(conditions);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v19 = 0;
        v13 = [v6 matchesDefinedPlateCondition:v12 error:&v19];
        v14 = v19;
        v15 = v14;
        if (v13)
        {
          goto LABEL_13;
        }

        if (v14)
        {
          if (a4)
          {
            v16 = v14;
            *a4 = v15;
          }

LABEL_13:

          conditions = v15;
          goto LABEL_14;
        }
      }

      v9 = [conditions countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_14:

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

@end