@interface HUCameraRecordingSettingsModule
- (HUCameraRecordingSettingsModule)initWithItemUpdater:(id)a3;
- (HUCameraRecordingSettingsModule)initWithItemUpdater:(id)a3 cameraProfiles:(id)a4 displayStyle:(unint64_t)a5;
- (HUCameraRecordingSettingsModuleDelegate)delegate;
- (NSArray)presenceModules;
- (id)_attributedFooterTitle;
- (id)_expandingSectionModuleForPresenceType:(unint64_t)a3;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)didSelectItem:(id)a3;
- (id)expandableModules;
- (unint64_t)awayAccessModeSetting;
- (unint64_t)presentAccessModeSetting;
- (void)_buildItemProviders;
@end

@implementation HUCameraRecordingSettingsModule

- (HUCameraRecordingSettingsModule)initWithItemUpdater:(id)a3 cameraProfiles:(id)a4 displayStyle:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  if (![v10 count])
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"HUCameraRecordingSettingsModule.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"cameraProfiles.count > 0"}];
  }

  v18.receiver = self;
  v18.super_class = HUCameraRecordingSettingsModule;
  v11 = [(HFItemModule *)&v18 initWithItemUpdater:v9];
  if (v11)
  {
    v12 = [v10 copy];
    cameraProfiles = v11->_cameraProfiles;
    v11->_cameraProfiles = v12;

    v11->_displayStyle = a5;
    v14 = +[HULocationDeviceManager sharedInstance];
    locationDeviceManager = v11->_locationDeviceManager;
    v11->_locationDeviceManager = v14;

    [(HUCameraRecordingSettingsModule *)v11 _buildItemProviders];
  }

  return v11;
}

- (HUCameraRecordingSettingsModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_cameraProfiles_displayStyle_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUCameraRecordingSettingsModule.m" lineNumber:82 description:{@"%s is unavailable; use %@ instead", "-[HUCameraRecordingSettingsModule initWithItemUpdater:]", v6}];

  return 0;
}

- (unint64_t)awayAccessModeSetting
{
  v2 = [(HUCameraRecordingSettingsModule *)self whenAwaySectionModule];
  v3 = [v2 accessModeSetting];

  return v3;
}

- (unint64_t)presentAccessModeSetting
{
  v2 = [(HUCameraRecordingSettingsModule *)self whenHomeSectionModule];
  v3 = [v2 accessModeSetting];

  return v3;
}

- (NSArray)presenceModules
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [(HUCameraRecordingSettingsModule *)self whenAwaySectionModule];
  v7[0] = v3;
  v4 = [(HUCameraRecordingSettingsModule *)self whenHomeSectionModule];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

- (void)_buildItemProviders
{
  v52[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v4 = [(HUCameraRecordingSettingsModule *)self locationDeviceManager];
  v5 = [v4 activeLocationDeviceFuture];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __54__HUCameraRecordingSettingsModule__buildItemProviders__block_invoke;
  v49[3] = &unk_277DC1A28;
  objc_copyWeak(v50, &location);
  v50[1] = a2;
  v6 = [v5 flatMap:v49];

  v7 = [HUCameraRecordingOptionsItem alloc];
  v8 = [(HUCameraRecordingSettingsModule *)self cameraProfiles];
  v9 = [(HUCameraRecordingOptionsItem *)v7 initWithCameraProfiles:v8];
  recordingOptionsItem = self->_recordingOptionsItem;
  self->_recordingOptionsItem = v9;

  v11 = objc_alloc(MEMORY[0x277D14B40]);
  v12 = MEMORY[0x277CBEB98];
  v13 = [(HUCameraRecordingSettingsModule *)self recordingOptionsItem];
  v14 = [v12 setWithObject:v13];
  v15 = [v11 initWithItems:v14];

  v16 = [HUCameraPresenceRecordingSettingsModule alloc];
  v17 = [(HFItemModule *)self itemUpdater];
  v18 = [(HUCameraRecordingSettingsModule *)self cameraProfiles];
  v19 = [(HUCameraPresenceRecordingSettingsModule *)v16 initWithItemUpdater:v17 cameraProfiles:v18 presenceEventType:3];
  [(HUCameraRecordingSettingsModule *)self setWhenHomeSectionModule:v19];

  v20 = [HUCameraPresenceRecordingSettingsModule alloc];
  v21 = [(HFItemModule *)self itemUpdater];
  v22 = [(HUCameraRecordingSettingsModule *)self cameraProfiles];
  v23 = [(HUCameraPresenceRecordingSettingsModule *)v20 initWithItemUpdater:v21 cameraProfiles:v22 presenceEventType:4];
  [(HUCameraRecordingSettingsModule *)self setWhenAwaySectionModule:v23];

  v24 = MEMORY[0x277CBEB98];
  v25 = [(HUCameraRecordingSettingsModule *)self expandableModules];
  v26 = [v24 setWithArray:v25];
  v27 = [v26 na_flatMap:&__block_literal_global_44_0];
  v52[0] = v15;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
  v29 = [v27 setByAddingObjectsFromArray:v28];
  [(HUCameraRecordingSettingsModule *)self setItemProviders:v29];

  v30 = MEMORY[0x277D14788];
  v31 = [(HUCameraRecordingSettingsModule *)self itemProviders];
  v32 = [v30 requestToReloadItemProviders:v31 senderSelector:a2];

  v33 = [(HFItemModule *)self itemUpdater];
  v34 = [v33 performItemUpdateRequest:v32];

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__25;
  v47 = __Block_byref_object_dispose__25;
  v48 = &stru_2823E0EE8;
  v35 = [(HUCameraRecordingSettingsModule *)self presenceModules];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __54__HUCameraRecordingSettingsModule__buildItemProviders__block_invoke_48;
  v42[3] = &unk_277DC1A50;
  v42[4] = &v43;
  v36 = [v35 na_map:v42];
  cameraPresenceItems = self->_cameraPresenceItems;
  self->_cameraPresenceItems = v36;

  objc_storeStrong(&self->_longestCameraPresenceItemTitle, v44[5]);
  v38 = [(HUCameraRecordingSettingsModule *)self presenceModules];
  v39 = [v38 firstObject];
  v40 = [v39 longestCameraUsageOptionItemTitle];
  longestCameraUsageOptionItemTitle = self->_longestCameraUsageOptionItemTitle;
  self->_longestCameraUsageOptionItemTitle = v40;

  _Block_object_dispose(&v43, 8);
  objc_destroyWeak(v50);
  objc_destroyWeak(&location);
}

id __54__HUCameraRecordingSettingsModule__buildItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 name];
    [WeakRetained setLocationDeviceName:v5];

    v6 = MEMORY[0x277D14788];
    v7 = [WeakRetained itemProviders];
    v8 = [v6 requestToReloadItemProviders:v7 senderSelector:*(a1 + 40)];

    v9 = [WeakRetained itemUpdater];
    v10 = [v9 performItemUpdateRequest:v8];
  }

  else
  {
    v11 = MEMORY[0x277D2C900];
    v8 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v10 = [v11 futureWithError:v8];
  }

  return v10;
}

id __54__HUCameraRecordingSettingsModule__buildItemProviders__block_invoke_48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 showOptionsItem];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v7 = [v6 length];
  if (v7 > [*(*(*(a1 + 32) + 8) + 40) length])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
  }

  v8 = [v3 showOptionsItem];

  return v8;
}

- (id)_expandingSectionModuleForPresenceType:(unint64_t)a3
{
  if (a3 == 4)
  {
    v3 = [(HUCameraRecordingSettingsModule *)self whenAwaySectionModule];
  }

  else if (a3 == 3)
  {
    v3 = [(HUCameraRecordingSettingsModule *)self whenHomeSectionModule];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)expandableModules
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [(HUCameraRecordingSettingsModule *)self whenHomeSectionModule];
  v7[0] = v3;
  v4 = [(HUCameraRecordingSettingsModule *)self whenAwaySectionModule];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [(HUCameraRecordingSettingsModule *)self expandableModules];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v21 + 1) + 8 * i) buildSectionsWithDisplayedItems:v4];
        v12 = [v11 na_flatMap:&__block_literal_global_53];
        [v5 addObjectsFromArray:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  if ([(HUCameraRecordingSettingsModule *)self displayStyle]== 3)
  {
    v13 = [(HUCameraRecordingSettingsModule *)self recordingOptionsItem];
    [v5 addObject:v13];
  }

  v14 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"RecordingSettings"];
  [v14 setItems:v5];
  v15 = _HULocalizedStringWithDefaultValue(@"HUCameraStreamingSettingsHeaderDisplayStyleServiceDetails_streaming-and-recording_Title", @"HUCameraStreamingSettingsHeaderDisplayStyleServiceDetails_streaming-and-recording_Title", 1);
  [v14 setHeaderTitle:v15];

  v16 = [(HUCameraRecordingSettingsModule *)self _attributedFooterTitle];
  [v14 setAttributedFooterTitle:v16];

  v17 = MEMORY[0x277D14778];
  v25 = v14;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v19 = [v17 filterSections:v18 toDisplayedItems:v4];

  return v19;
}

- (id)_attributedFooterTitle
{
  v3 = _HULocalizedStringWithDefaultValue(@"HUPresenceActiveLocationDeviceFooterSettingsLinkTitle", @"HUPresenceActiveLocationDeviceFooterSettingsLinkTitle", 1);
  v4 = HFLocalizedString();
  if ([(HUCameraRecordingSettingsModule *)self displayStyle]== 2 || [(HUCameraRecordingSettingsModule *)self displayStyle]== 1)
  {
    v11 = [(HUCameraRecordingSettingsModule *)self locationDeviceName];
    if (v11)
    {
      v12 = [(HUCameraRecordingSettingsModule *)self locationDeviceName];
      v19 = HULocalizedStringWithFormat(@"HUCameraRecordingSetup_Footer", @"%@%@", v13, v14, v15, v16, v17, v18, v12);
    }

    else
    {
      v19 = HULocalizedStringWithFormat(@"HUCameraRecordingSetup_Footer_NoFMF", @"%@", v5, v6, v7, v8, v9, v10, v3);
    }

    if (([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || -[HUCameraRecordingSettingsModule displayStyle](self, "displayStyle") != 1)
    {
      v22 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v19 attributes:0];
    }

    else
    {
      v20 = MEMORY[0x277CCA898];
      v21 = [MEMORY[0x277CBEBC0] hf_locationDeviceSettingsURL];
      v22 = [v20 hf_attributedLinkStringForString:v19 linkString:v3 linkURL:v21];
    }
  }

  else
  {
    v29 = [(HUCameraRecordingSettingsModule *)self locationDeviceName];
    if (v29)
    {
      v30 = [(HUCameraRecordingSettingsModule *)self locationDeviceName];
      v19 = HULocalizedStringWithFormat(@"HUCameraStreamingSettingsFooterDisplayStyleServiceDetails_footer_Title", @"%@%@%@", v31, v32, v33, v34, v35, v36, v30);
    }

    else
    {
      v19 = HULocalizedStringWithFormat(@"HUCameraStreamingSettingsFooterDisplayStyleServiceDetails_footer_NoFMF_Title", @"%@%@", v23, v24, v25, v26, v27, v28, v3);
    }

    if ([MEMORY[0x277D14CE8] isAMac])
    {
      v37 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v19 attributes:0];
    }

    else
    {
      v38 = MEMORY[0x277CCA898];
      v39 = [MEMORY[0x277CBEBC0] hf_locationDeviceSettingsURL];
      v37 = [v38 hf_attributedLinkStringForString:v19 linkString:v3 linkURL:v39];
    }

    v40 = MEMORY[0x277CCA898];
    v41 = [MEMORY[0x277CBEBC0] hf_cameraRecordingURL];
    v22 = [v40 hf_attributedLinkStringForAttributedString:v37 linkString:v4 linkURL:v41];
  }

  return v22;
}

- (id)didSelectItem:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D2C900] futureWithNoResult];
  v6 = [(HUExpandableItemContainerModule *)self expandableModuleForItem:v4];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 didSelectItem:v4];

    v5 = v7;
  }

  objc_opt_class();
  v8 = v4;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__HUCameraRecordingSettingsModule_didSelectItem___block_invoke;
    v13[3] = &unk_277DB8620;
    objc_copyWeak(&v15, &location);
    v14 = v8;
    v11 = [v5 addCompletionBlock:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __49__HUCameraRecordingSettingsModule_didSelectItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [WeakRetained delegate];
    [v4 cameraRecordingSettingsModule:WeakRetained didUpdateItem:*(a1 + 32)];
  }
}

- (HUCameraRecordingSettingsModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end