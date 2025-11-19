@interface HUEditRoomItemManager
- (BOOL)_canDeleteRoom;
- (HUEditRoomItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HUEditRoomItemManager)initWithRoomBuilder:(id)a3 delegate:(id)a4;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUEditRoomItemManager

- (HUEditRoomItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithRoomBuilder_delegate_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUEditRoomItemManager.m" lineNumber:46 description:{@"%s is unavailable; use %@ instead", "-[HUEditRoomItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUEditRoomItemManager)initWithRoomBuilder:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v20.receiver = self;
  v20.super_class = HUEditRoomItemManager;
  v8 = [(HFItemManager *)&v20 initWithDelegate:a4 sourceItem:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_roomBuilder, a3);
    v10 = [v7 room];
    v11 = [v7 home];
    v12 = [v11 roomForEntireHome];
    v13 = [v10 isEqual:v12];

    v14 = [v7 room];

    if ((v13 & 1) == 0)
    {
      if (v14)
      {
        v15 = objc_alloc(MEMORY[0x277D14D38]);
        v16 = [v7 room];
        v17 = [v15 initWithItemUpdater:v9 room:v16];
        zoneModule = v9->_zoneModule;
        v9->_zoneModule = v17;
      }
    }
  }

  return v9;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v61[1] = *MEMORY[0x277D85DE8];
  v48 = a3;
  v4 = objc_alloc(MEMORY[0x277D14B38]);
  v60 = *MEMORY[0x277D13F10];
  v61[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:&v60 count:1];
  v6 = [v4 initWithResults:v5];
  [(HUEditRoomItemManager *)self setNameItem:v6];

  v7 = MEMORY[0x277CBEB38];
  v8 = _HULocalizedStringWithDefaultValue(@"HUEditRoomTakePhotoTitle", @"HUEditRoomTakePhotoTitle", 1);
  v9 = *MEMORY[0x277D13F60];
  v49 = [v7 dictionaryWithObject:v8 forKey:*MEMORY[0x277D13F60]];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D755C8], "isSourceTypeAvailable:", 1) ^ 1}];
  v11 = *MEMORY[0x277D13FB8];
  [v49 setObject:v10 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v12 = [objc_alloc(MEMORY[0x277D14B38]) initWithResults:v49];
  [(HUEditRoomItemManager *)self setCameraItem:v12];

  v13 = objc_alloc(MEMORY[0x277D14B38]);
  v58[0] = v9;
  v14 = _HULocalizedStringWithDefaultValue(@"HUEditRoomChooseWallpaperTitle", @"HUEditRoomChooseWallpaperTitle", 1);
  v59[0] = v14;
  v58[1] = v11;
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{+[HUWallpaperPickerInlineViewController useWallpaperPickerCell](HUWallpaperPickerInlineViewController, "useWallpaperPickerCell")}];
  v59[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
  v17 = [v13 initWithResults:v16];
  [(HUEditRoomItemManager *)self setChooseWallpaperItem:v17];

  v18 = objc_alloc(MEMORY[0x277D14B38]);
  v56 = v11;
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{+[HUWallpaperPickerInlineViewController useWallpaperPickerCell](HUWallpaperPickerInlineViewController, "useWallpaperPickerCell")}];
  v57 = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v21 = [v18 initWithResults:v20];
  [(HUEditRoomItemManager *)self setWallpaperThumbnailItem:v21];

  v22 = objc_alloc(MEMORY[0x277D14B38]);
  v54 = v11;
  v23 = [MEMORY[0x277CCABB0] numberWithInt:{+[HUWallpaperPickerInlineViewController useWallpaperPickerCell](HUWallpaperPickerInlineViewController, "useWallpaperPickerCell") ^ 1}];
  v55 = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  v25 = [v22 initWithResults:v24];
  [(HUEditRoomItemManager *)self setWallpaperPickerItem:v25];

  v26 = MEMORY[0x277CBEB18];
  v27 = [(HUEditRoomItemManager *)self nameItem];
  v53[0] = v27;
  v28 = [(HUEditRoomItemManager *)self cameraItem];
  v53[1] = v28;
  v29 = [(HUEditRoomItemManager *)self chooseWallpaperItem];
  v53[2] = v29;
  v30 = [(HUEditRoomItemManager *)self wallpaperThumbnailItem];
  v53[3] = v30;
  v31 = [(HUEditRoomItemManager *)self wallpaperPickerItem];
  v53[4] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:5];
  v33 = [v26 arrayWithArray:v32];

  objc_initWeak(&location, self);
  v34 = objc_alloc(MEMORY[0x277D14B38]);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __52__HUEditRoomItemManager__buildItemProvidersForHome___block_invoke;
  v50[3] = &unk_277DB7448;
  objc_copyWeak(&v51, &location);
  v35 = [v34 initWithResultsBlock:v50];
  [(HUEditRoomItemManager *)self setRemoveItem:v35];

  v36 = [(HUEditRoomItemManager *)self removeItem];
  [v33 addObject:v36];

  v37 = objc_alloc(MEMORY[0x277D14B40]);
  v38 = [MEMORY[0x277CBEB98] setWithArray:v33];
  v39 = [v37 initWithItems:v38];

  v40 = [MEMORY[0x277CBEB18] arrayWithObject:v39];
  v41 = [(HUEditRoomItemManager *)self zoneModule];
  v42 = [v41 itemProviders];
  v43 = [v42 count] == 0;

  if (!v43)
  {
    v44 = [(HUEditRoomItemManager *)self zoneModule];
    v45 = [v44 itemProviders];
    v46 = [v45 allObjects];
    [v40 addObjectsFromArray:v46];
  }

  objc_destroyWeak(&v51);
  objc_destroyWeak(&location);

  return v40;
}

id __52__HUEditRoomItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D2C900];
  v8[0] = *MEMORY[0x277D13F60];
  v3 = _HULocalizedStringWithDefaultValue(@"HUEditRoomRemoveDeviceName", @"HUEditRoomRemoveDeviceName", 1);
  v9[0] = v3;
  v8[1] = *MEMORY[0x277D13FB8];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(WeakRetained, "_canDeleteRoom") ^ 1}];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = [v2 futureWithResult:v5];

  return v6;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v29[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditRoomNameSectionIdentifier"];
  v7 = MEMORY[0x277CBEA60];
  v8 = [(HUEditRoomItemManager *)self nameItem];
  v9 = [v7 arrayWithObject:v8];
  [v6 setItems:v9];

  v10 = _HULocalizedStringWithDefaultValue(@"HUEditRoomNameTitle", @"HUEditRoomNameTitle", 1);
  [v6 setHeaderTitle:v10];

  [v5 addObject:v6];
  v11 = [(HUEditRoomItemManager *)self zoneModule];
  v12 = [v11 buildSectionsWithDisplayedItems:v4];
  [v5 addObjectsFromArray:v12];

  v13 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditRoomWallpaperSectionIdentifier"];
  v14 = _HULocalizedStringWithDefaultValue(@"HUEditRoomWallpaperSectionTitle", @"HUEditRoomWallpaperSectionTitle", 1);
  [v13 setHeaderTitle:v14];

  v15 = [(HUEditRoomItemManager *)self cameraItem];
  v29[0] = v15;
  v16 = [(HUEditRoomItemManager *)self chooseWallpaperItem];
  v29[1] = v16;
  v17 = [(HUEditRoomItemManager *)self wallpaperThumbnailItem];
  v29[2] = v17;
  v18 = [(HUEditRoomItemManager *)self wallpaperPickerItem];
  v29[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  [v13 setItems:v19];

  [v5 addObject:v13];
  v20 = [(HUEditRoomItemManager *)self removeItem];
  v21 = [v20 latestResults];
  v22 = [v21 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  LOBYTE(v18) = [v22 BOOLValue];

  if ((v18 & 1) == 0)
  {
    v23 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUEditRoomRemoveSectionIdentifier"];
    v24 = [(HUEditRoomItemManager *)self removeItem];
    v28 = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    [v23 setItems:v25];

    [v5 addObject:v23];
  }

  v26 = [MEMORY[0x277D14778] filterSections:v5 toDisplayedItems:v4];

  return v26;
}

- (BOOL)_canDeleteRoom
{
  v3 = [(HUEditRoomItemManager *)self roomBuilder];
  v4 = [v3 room];
  if (v4)
  {
    v5 = [(HUEditRoomItemManager *)self roomBuilder];
    v6 = [v5 room];
    v7 = [v6 uniqueIdentifier];
    v8 = [(HFItemManager *)self home];
    v9 = [v8 roomForEntireHome];
    v10 = [v9 uniqueIdentifier];
    if ([v7 isEqual:v10])
    {
      v11 = 0;
    }

    else
    {
      v12 = [(HFItemManager *)self home];
      v11 = [v12 hf_currentUserIsAdministrator];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end