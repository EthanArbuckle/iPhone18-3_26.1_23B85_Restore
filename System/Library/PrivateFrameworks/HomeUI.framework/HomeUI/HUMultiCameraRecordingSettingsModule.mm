@interface HUMultiCameraRecordingSettingsModule
- (HUMultiCameraRecordingSettingsModule)initWithItemUpdater:(id)updater cameraProfiles:(id)profiles displayStyle:(unint64_t)style;
- (id)buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUMultiCameraRecordingSettingsModule

- (HUMultiCameraRecordingSettingsModule)initWithItemUpdater:(id)updater cameraProfiles:(id)profiles displayStyle:(unint64_t)style
{
  v6.receiver = self;
  v6.super_class = HUMultiCameraRecordingSettingsModule;
  result = [(HUCameraRecordingSettingsModule *)&v6 initWithItemUpdater:updater cameraProfiles:profiles displayStyle:style];
  if (result)
  {
    result->_shouldShowFooterTitle = 0;
  }

  return result;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v30 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  expandableModules = [(HUCameraRecordingSettingsModule *)self expandableModules];
  v7 = [expandableModules countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(expandableModules);
        }

        v11 = [*(*(&v24 + 1) + 8 * i) buildSectionsWithDisplayedItems:itemsCopy];
        v12 = [v11 na_flatMap:&__block_literal_global_231_0];
        [v5 addObjectsFromArray:v12];
      }

      v8 = [expandableModules countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  if ([(HUCameraRecordingSettingsModule *)self displayStyle]== 3)
  {
    recordingOptionsItem = [(HUCameraRecordingSettingsModule *)self recordingOptionsItem];
    [v5 addObject:recordingOptionsItem];
  }

  cameraProfiles = [(HUCameraRecordingSettingsModule *)self cameraProfiles];
  anyObject = [cameraProfiles anyObject];
  accessory = [anyObject accessory];
  name = [accessory name];

  v18 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:name];
  [v18 setItems:v5];
  [v18 setHeaderTitle:name];
  if ([(HUMultiCameraRecordingSettingsModule *)self shouldShowFooterTitle])
  {
    _attributedFooterTitle = [(HUCameraRecordingSettingsModule *)self _attributedFooterTitle];
    [v18 setAttributedFooterTitle:_attributedFooterTitle];
  }

  v20 = MEMORY[0x277D14778];
  v28 = v18;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v22 = [v20 filterSections:v21 toDisplayedItems:itemsCopy];

  return v22;
}

@end