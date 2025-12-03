@interface HUServiceDetailsCameraActivityZonesItem
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUServiceDetailsCameraActivityZonesItem

- (id)_subclass_updateWithOptions:(id)options
{
  objc_opt_class();
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = sourceServiceItem;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  home = [(HUServiceDetailsAbstractItem *)self home];
  if ([home hf_currentUserIsAdministrator])
  {
    v9 = @"HUServiceDetailsDisplayCameraActivityZonesEditorTitle";
  }

  else
  {
    v9 = @"HUServiceDetailsDisplayCameraActivityZonesEditorNonAdminTitle";
  }

  v10 = _HULocalizedStringWithDefaultValue(v9, v9, 1);
  [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [dictionary setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  home2 = [(HUServiceDetailsAbstractItem *)self home];
  if ([home2 hf_hasResidentDeviceCapableOfSupportingActivityZones])
  {
    profile = [v6 profile];
    hf_supportsRecordingEvents = [profile hf_supportsRecordingEvents];

    if (hf_supportsRecordingEvents)
    {
      v14 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
      [dictionary setObject:v14 forKeyedSubscript:*MEMORY[0x277D13DA0]];

      profile2 = [v6 profile];
      userSettings = [profile2 userSettings];
      activityZones = [userSettings activityZones];
      allObjects = [activityZones allObjects];
      v19 = [allObjects count];

      home3 = [(HUServiceDetailsAbstractItem *)self home];
      LODWORD(profile2) = [home3 hf_hasResidentDeviceCapableOfSupportingEnhancedDetectionModes];

      profile3 = [v6 profile];
      v22 = profile3;
      if (profile2)
      {
        hf_cameraIsNotSetToRecord = [profile3 hf_cameraIsNotSetToRecord];

        v24 = *MEMORY[0x277D13FB8];
        if (hf_cameraIsNotSetToRecord)
        {
LABEL_11:
          v25 = MEMORY[0x277CBEC38];
LABEL_16:
          [dictionary setObject:v25 forKeyedSubscript:v24];
          if (v19)
          {
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v19];
          }

          else
          {
            v28 = &stru_2823E0EE8;
          }

          [dictionary setObject:v28 forKeyedSubscript:*MEMORY[0x277D13E20]];

          goto LABEL_20;
        }
      }

      else
      {
        userSettings2 = [profile3 userSettings];
        v27 = [userSettings2 recordingEventTriggers] & 0xE;

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

  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
LABEL_20:
  v29 = MEMORY[0x277D2C900];
  v30 = [MEMORY[0x277D14780] outcomeWithResults:dictionary];
  v31 = [v29 futureWithResult:v30];

  return v31;
}

@end