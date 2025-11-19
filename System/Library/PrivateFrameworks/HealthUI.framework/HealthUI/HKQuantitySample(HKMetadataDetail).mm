@interface HKQuantitySample(HKMetadataDetail)
- (id)hk_additionalMetadataSectionsWithHealthStore:()HKMetadataDetail displayTypeController:unitController:subsampleDelegate:;
@end

@implementation HKQuantitySample(HKMetadataDetail)

- (id)hk_additionalMetadataSectionsWithHealthStore:()HKMetadataDetail displayTypeController:unitController:subsampleDelegate:
{
  v35[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [a1 quantityType];
  if ([v14 code] != 139)
  {

LABEL_5:
    v21 = [a1 quantityType];
    if ([v21 code] == 14)
    {
      v22 = [a1 sourceRevision];
      v23 = [v22 source];
      v24 = [v23 _hasFirstPartyBundleID];

      if (v24)
      {
        v25 = [a1 metadata];
        v26 = *MEMORY[0x1E696BBA0];
        v27 = [v25 objectForKeyedSubscript:*MEMORY[0x1E696BBA0]];
        if (!v27)
        {

LABEL_13:
          v18 = [[HKDataMetadataOxygenSaturationSection alloc] initWithSample:a1 healthStore:v10 displayTypeController:v11 unitController:v12 subsampleDelegate:v13];
          v34 = v18;
          v19 = MEMORY[0x1E695DEC8];
          v20 = &v34;
          goto LABEL_14;
        }

        v28 = v27;
        v29 = [a1 metadata];
        v30 = [v29 objectForKeyedSubscript:v26];
        v31 = [v30 isEqual:MEMORY[0x1E695E110]];

        if (v31)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
    }

    v32 = MEMORY[0x1E695E0F0];
    goto LABEL_15;
  }

  v15 = [a1 sourceRevision];
  v16 = [v15 source];
  v17 = [v16 _isAppleWatch];

  if (!v17)
  {
    goto LABEL_5;
  }

  v18 = [[HKDataMetadataBeatToBeatSection alloc] initWithSample:a1 healthStore:v10 displayTypeController:v11 unitController:v12];
  v35[0] = v18;
  v19 = MEMORY[0x1E695DEC8];
  v20 = v35;
LABEL_14:
  v32 = [v19 arrayWithObjects:v20 count:1];

LABEL_15:

  return v32;
}

@end