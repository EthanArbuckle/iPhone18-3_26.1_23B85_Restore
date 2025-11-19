@interface HUMultiCameraRecordingSettingsModule
- (HUMultiCameraRecordingSettingsModule)initWithItemUpdater:(id)a3 cameraProfiles:(id)a4 displayStyle:(unint64_t)a5;
- (id)buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUMultiCameraRecordingSettingsModule

- (HUMultiCameraRecordingSettingsModule)initWithItemUpdater:(id)a3 cameraProfiles:(id)a4 displayStyle:(unint64_t)a5
{
  v6.receiver = self;
  v6.super_class = HUMultiCameraRecordingSettingsModule;
  result = [(HUCameraRecordingSettingsModule *)&v6 initWithItemUpdater:a3 cameraProfiles:a4 displayStyle:a5];
  if (result)
  {
    result->_shouldShowFooterTitle = 0;
  }

  return result;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [(HUCameraRecordingSettingsModule *)self expandableModules];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v24 + 1) + 8 * i) buildSectionsWithDisplayedItems:v4];
        v12 = [v11 na_flatMap:&__block_literal_global_231_0];
        [v5 addObjectsFromArray:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  if ([(HUCameraRecordingSettingsModule *)self displayStyle]== 3)
  {
    v13 = [(HUCameraRecordingSettingsModule *)self recordingOptionsItem];
    [v5 addObject:v13];
  }

  v14 = [(HUCameraRecordingSettingsModule *)self cameraProfiles];
  v15 = [v14 anyObject];
  v16 = [v15 accessory];
  v17 = [v16 name];

  v18 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:v17];
  [v18 setItems:v5];
  [v18 setHeaderTitle:v17];
  if ([(HUMultiCameraRecordingSettingsModule *)self shouldShowFooterTitle])
  {
    v19 = [(HUCameraRecordingSettingsModule *)self _attributedFooterTitle];
    [v18 setAttributedFooterTitle:v19];
  }

  v20 = MEMORY[0x277D14778];
  v28 = v18;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v22 = [v20 filterSections:v21 toDisplayedItems:v4];

  return v22;
}

@end