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
  quantityType = [self quantityType];
  if ([quantityType code] != 139)
  {

LABEL_5:
    quantityType2 = [self quantityType];
    if ([quantityType2 code] == 14)
    {
      sourceRevision = [self sourceRevision];
      source = [sourceRevision source];
      _hasFirstPartyBundleID = [source _hasFirstPartyBundleID];

      if (_hasFirstPartyBundleID)
      {
        metadata = [self metadata];
        v26 = *MEMORY[0x1E696BBA0];
        v27 = [metadata objectForKeyedSubscript:*MEMORY[0x1E696BBA0]];
        if (!v27)
        {

LABEL_13:
          v18 = [[HKDataMetadataOxygenSaturationSection alloc] initWithSample:self healthStore:v10 displayTypeController:v11 unitController:v12 subsampleDelegate:v13];
          v34 = v18;
          v19 = MEMORY[0x1E695DEC8];
          v20 = &v34;
          goto LABEL_14;
        }

        v28 = v27;
        metadata2 = [self metadata];
        v30 = [metadata2 objectForKeyedSubscript:v26];
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

  sourceRevision2 = [self sourceRevision];
  source2 = [sourceRevision2 source];
  _isAppleWatch = [source2 _isAppleWatch];

  if (!_isAppleWatch)
  {
    goto LABEL_5;
  }

  v18 = [[HKDataMetadataBeatToBeatSection alloc] initWithSample:self healthStore:v10 displayTypeController:v11 unitController:v12];
  v35[0] = v18;
  v19 = MEMORY[0x1E695DEC8];
  v20 = v35;
LABEL_14:
  v32 = [v19 arrayWithObjects:v20 count:1];

LABEL_15:

  return v32;
}

@end