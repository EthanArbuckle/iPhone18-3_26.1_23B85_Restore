@interface HUServiceDetailsCameraActivityZonesItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUServiceDetailsCameraActivityZonesItem

- (id)_subclass_updateWithOptions:(id)a3
{
  objc_opt_class();
  v4 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [(HUServiceDetailsAbstractItem *)self home];
  if ([v8 hf_currentUserIsAdministrator])
  {
    v9 = @"HUServiceDetailsDisplayCameraActivityZonesEditorTitle";
  }

  else
  {
    v9 = @"HUServiceDetailsDisplayCameraActivityZonesEditorNonAdminTitle";
  }

  v10 = _HULocalizedStringWithDefaultValue(v9, v9, 1);
  [v7 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v7 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v11 = [(HUServiceDetailsAbstractItem *)self home];
  if ([v11 hf_hasResidentDeviceCapableOfSupportingActivityZones])
  {
    v12 = [v6 profile];
    v13 = [v12 hf_supportsRecordingEvents];

    if (v13)
    {
      v14 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
      [v7 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13DA0]];

      v15 = [v6 profile];
      v16 = [v15 userSettings];
      v17 = [v16 activityZones];
      v18 = [v17 allObjects];
      v19 = [v18 count];

      v20 = [(HUServiceDetailsAbstractItem *)self home];
      LODWORD(v15) = [v20 hf_hasResidentDeviceCapableOfSupportingEnhancedDetectionModes];

      v21 = [v6 profile];
      v22 = v21;
      if (v15)
      {
        v23 = [v21 hf_cameraIsNotSetToRecord];

        v24 = *MEMORY[0x277D13FB8];
        if (v23)
        {
LABEL_11:
          v25 = MEMORY[0x277CBEC38];
LABEL_16:
          [v7 setObject:v25 forKeyedSubscript:v24];
          if (v19)
          {
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v19];
          }

          else
          {
            v28 = &stru_2823E0EE8;
          }

          [v7 setObject:v28 forKeyedSubscript:*MEMORY[0x277D13E20]];

          goto LABEL_20;
        }
      }

      else
      {
        v26 = [v21 userSettings];
        v27 = [v26 recordingEventTriggers] & 0xE;

        v24 = *MEMORY[0x277D13FB8];
        if (!v27)
        {
          goto LABEL_11;
        }
      }

      v25 = MEMORY[0x277CBEC28];
      goto LABEL_16;
    }
  }

  else
  {
  }

  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
LABEL_20:
  v29 = MEMORY[0x277D2C900];
  v30 = [MEMORY[0x277D14780] outcomeWithResults:v7];
  v31 = [v29 futureWithResult:v30];

  return v31;
}

@end