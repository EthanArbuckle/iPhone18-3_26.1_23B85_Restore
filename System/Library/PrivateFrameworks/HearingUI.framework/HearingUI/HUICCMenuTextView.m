@interface HUICCMenuTextView
- (BOOL)providesOwnSeparator;
- (HUICCMenuTextView)initWithModule:(unint64_t)a3 andDelegate:(id)a4;
- (id)delegate;
- (void)_handleTapGestureRecognizer:(id)a3;
- (void)_showMenuViewController;
- (void)_updateMenuItemsForViewController:(id)a3;
- (void)_updatePresentedMenuViewControllerIfNecessary;
- (void)subscribeListeners;
- (void)unsubscribeListeners;
- (void)updateValue;
@end

@implementation HUICCMenuTextView

- (HUICCMenuTextView)initWithModule:(unint64_t)a3 andDelegate:(id)a4
{
  v8.receiver = self;
  v8.super_class = HUICCMenuTextView;
  v4 = [(HUICCTextView *)&v8 initWithModule:a3 andDelegate:a4];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel__handleTapGestureRecognizer_];
    v6 = [(HUICCTextView *)v4 textView];
    [v6 addGestureRecognizer:v5];
  }

  return v4;
}

- (BOOL)providesOwnSeparator
{
  v3 = [(HUICCMenuTextView *)self module];
  result = 1;
  if (v3 != 16 && v3 != 19)
  {
    v5.receiver = self;
    v5.super_class = HUICCMenuTextView;
    return [(HUICCTextView *)&v5 providesOwnSeparator];
  }

  return result;
}

- (void)updateValue
{
  v3 = [MEMORY[0x277D12E38] sharedUtilities];
  v4 = [v3 routingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HUICCMenuTextView_updateValue__block_invoke;
  block[3] = &unk_2796F6D90;
  block[4] = self;
  dispatch_async(v4, block);
}

void __32__HUICCMenuTextView_updateValue__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 currentHearingDevice];

  v4 = [*(a1 + 32) module];
  v5 = 0;
  if (v4 > 18)
  {
    if (v4 > 20)
    {
      if (v4 == 21)
      {
        v8 = hearingLocString();
        v7 = hearingLocString();
        v6 = hearingLocString();
        v9 = [MEMORY[0x277D12E20] sharedInstance];
        [v9 preferredInputEar];
        inputOptionFromHearingEar();
        v13 = hearingInputRouteStringForOption();
        goto LABEL_22;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      if (v4 == 28)
      {
        v8 = hearingLocString();
        v7 = hearingLocString();
        v6 = hearingLocString();
        v9 = [MEMORY[0x277D12E18] sharedInstance];
        v10 = [v9 selectedComfortSound];
        v5 = [v10 localizedName];

LABEL_23:
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v8 = hearingLocString();
    v7 = hearingLocString();
    v6 = hearingLocString();
    v12 = [v3 rightSelectedStreamingProgram];
LABEL_14:
    v9 = v12;
    if (![v12 isMixingStream] || (objc_msgSend(v9, "isSelected") & 1) == 0)
    {
      v13 = hearingLocString();
LABEL_22:
      v5 = v13;
      goto LABEL_23;
    }

    v11 = v9;
LABEL_20:
    v13 = [v11 name];
    goto LABEL_22;
  }

  if (v4 > 16)
  {
    if (v4 == 17)
    {
      goto LABEL_18;
    }

    v8 = hearingLocString();
    v7 = hearingLocString();
    v6 = hearingLocString();
    v12 = [v3 leftSelectedStreamingProgram];
    goto LABEL_14;
  }

  if (v4 == 15)
  {
    v8 = hearingLocString();
    v7 = hearingLocString();
    v6 = hearingLocString();
    v11 = [v3 leftSelectedProgram];
LABEL_19:
    v9 = v11;
    goto LABEL_20;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (v4 == 16)
  {
LABEL_18:
    v8 = hearingLocString();
    v7 = hearingLocString();
    v6 = hearingLocString();
    v11 = [v3 rightSelectedProgram];
    goto LABEL_19;
  }

LABEL_24:
  v18 = v8;
  v19 = v7;
  v20 = v6;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  AXPerformBlockOnMainThread();
}

uint64_t __32__HUICCMenuTextView_updateValue__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) titleView];
  v3 = [v2 titleLabel];
  [v3 setText:*(a1 + 40)];

  v4 = [*(a1 + 32) textView];
  v5 = [v4 nameLabel];
  [v5 setText:*(a1 + 48)];

  v6 = [*(a1 + 32) textView];
  v7 = [v6 nameLabel];
  [v7 setAccessibilityLabel:*(a1 + 56)];

  v8 = [*(a1 + 32) textView];
  v9 = [v8 valueLabel];
  [v9 setText:*(a1 + 64)];

  [*(a1 + 32) setIsSubModule:{objc_msgSend(*(a1 + 32), "updateIsSubModule")}];
  v10 = *(a1 + 32);
  v11 = HUICCLargeTextEnabled();

  return [v10 setIsLargeText:v11];
}

- (void)_handleTapGestureRecognizer:(id)a3
{
  if ([a3 state] == 3)
  {

    [(HUICCMenuTextView *)self _showMenuViewController];
  }
}

- (void)_showMenuViewController
{
  v3 = [(HUICCMenuTextView *)self delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(HUICCMenuTextView *)self delegate];
    v6 = [objc_alloc(MEMORY[0x277CFC950]) initWithAnchoringViewController:v5];
    [(HUICCMenuTextView *)self setDetailTransitioningDelegate:v6];
  }

  v10 = objc_alloc_init(HACCMenuModuleViewController);
  v7 = [(HUICCMenuTextView *)self delegate];
  [(HACCMenuModuleViewController *)v10 setDelegate:v7];

  [(CCUIButtonModuleViewController *)v10 setExpanded:1];
  [(CCUIMenuModuleViewController *)v10 setShouldProvideOwnPlatter:1];
  [(CCUIMenuModuleViewController *)v10 setIndentation:1];
  [(CCUIMenuModuleViewController *)v10 setUseTrailingCheckmarkLayout:1];
  [(HACCMenuModuleViewController *)v10 setModalPresentationStyle:4];
  [(HACCMenuModuleViewController *)v10 setTransitioningDelegate:self->_detailTransitioningDelegate];
  [(HUICCMenuTextView *)self _updateMenuItemsForViewController:v10];
  v8 = [(HUICCMenuTextView *)self presentVCBlock];

  if (v8)
  {
    v9 = [(HUICCMenuTextView *)self presentVCBlock];
    (v9)[2](v9, v10);
  }
}

- (void)_updateMenuItemsForViewController:(id)a3
{
  v84[1] = *MEMORY[0x277D85DE8];
  v48 = a3;
  v47 = [(HUICCMenuTextView *)self delegate];
  v49 = [v47 currentHearingDevice];
  v4 = [(HUICCMenuTextView *)self module];
  v5 = [MEMORY[0x277CBEB18] array];
  v44 = [MEMORY[0x277CBEB18] array];
  v46 = [MEMORY[0x277CBEB18] array];
  v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = 0;
  v7 = 0;
  if (v4 > 17)
  {
    if (v4 <= 19)
    {
      if (v4 != 18)
      {
        v8 = [v49 rightSelectedStreamingProgram];
        v9 = [v8 name];

        if (v9)
        {
          v79 = v9;
          v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
        }

        else
        {
          v10 = MEMORY[0x277CBEBF8];
        }

        v11 = hearingLocString();
        v30 = [v49 rightPrograms];
        v24 = [v30 indexesOfObjectsPassingTest:&__block_literal_global_67];

        v25 = [v49 rightPrograms];
        v31 = [v25 objectsAtIndexes:v24];
LABEL_33:
        v7 = v31;
        v6 = 4;
        goto LABEL_37;
      }

      v20 = [v49 leftSelectedStreamingProgram];
      v9 = [v20 name];

      if (v9)
      {
        v80 = v9;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
      }

      else
      {
        v10 = MEMORY[0x277CBEBF8];
      }

      v11 = hearingLocString();
      v27 = [v49 leftPrograms];
      v24 = [v27 indexesOfObjectsPassingTest:&__block_literal_global_65];

      v25 = [v49 leftPrograms];
      v26 = [v25 objectsAtIndexes:v24];
LABEL_26:
      v7 = v26;
      v6 = 2;
LABEL_37:

      goto LABEL_38;
    }

    if (v4 != 20)
    {
      v10 = 0;
      v11 = 0;
      if (v4 == 21)
      {
        v11 = hearingLocString();
        v7 = [MEMORY[0x277CBEB18] array];
        [v7 addObject:&unk_286465558];
        v14 = hearingInputRouteStringForOption();
        [v5 addObject:v14];

        [v7 addObject:&unk_286465570];
        v15 = hearingInputRouteStringForOption();
        [v5 addObject:v15];

        objc_initWeak(&location, self);
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke;
        v72[3] = &unk_2796F7238;
        v73 = v46;
        objc_copyWeak(&v75, &location);
        v74 = v47;
        [v7 enumerateObjectsUsingBlock:v72];
        v16 = [MEMORY[0x277D12E20] sharedInstance];
        [v16 preferredInputEar];
        inputOptionFromHearingEar();
        v17 = hearingInputRouteStringForOption();
        v84[0] = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:1];

        objc_destroyWeak(&v75);
        objc_destroyWeak(&location);
        goto LABEL_50;
      }

      goto LABEL_38;
    }

    v21 = [v49 rightSelectedStreamingProgram];
    v9 = [v21 name];

    if (v9)
    {
      v78 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    v11 = hearingLocString();
    v28 = [v49 combinedPrograms];
    v24 = [v28 indexesOfObjectsPassingTest:&__block_literal_global_69];

    v25 = [v49 combinedPrograms];
    v29 = [v25 objectsAtIndexes:v24];
LABEL_36:
    v7 = v29;
    v6 = 6;
    goto LABEL_37;
  }

  if (v4 == 15)
  {
    v19 = [v49 leftSelectedProgram];
    v9 = [v19 name];

    if (v9)
    {
      v83 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    v11 = hearingLocString();
    v23 = [v49 leftPrograms];
    v24 = [v23 indexesOfObjectsPassingTest:&__block_literal_global_0];

    v25 = [v49 leftPrograms];
    v26 = [v25 objectsAtIndexes:v24];
    goto LABEL_26;
  }

  if (v4 == 16)
  {
    v22 = [v49 rightSelectedProgram];
    v9 = [v22 name];

    if (v9)
    {
      v82 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    v11 = hearingLocString();
    v32 = [v49 rightPrograms];
    v24 = [v32 indexesOfObjectsPassingTest:&__block_literal_global_61];

    v25 = [v49 rightPrograms];
    v31 = [v25 objectsAtIndexes:v24];
    goto LABEL_33;
  }

  v10 = 0;
  v11 = 0;
  if (v4 == 17)
  {
    v12 = [v49 selectedPrograms];
    v13 = [v12 lastObject];
    v9 = [v13 name];

    if (v9)
    {
      v81 = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
    }

    else
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    v11 = hearingLocString();
    v33 = [v49 combinedPrograms];
    v24 = [v33 indexesOfObjectsPassingTest:&__block_literal_global_63];

    v25 = [v49 combinedPrograms];
    v29 = [v25 objectsAtIndexes:v24];
    goto LABEL_36;
  }

LABEL_38:
  if ([v7 count])
  {
    objc_initWeak(&location, self);
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_7;
    v65[3] = &unk_2796F72A8;
    v66 = v5;
    v67 = v49;
    v71 = v6;
    objc_copyWeak(&v70, &location);
    v68 = v47;
    v69 = v46;
    [v7 enumerateObjectsUsingBlock:v65];

    objc_destroyWeak(&v70);
    objc_destroyWeak(&location);
  }

  if (v4 == 28)
  {
    v43 = hearingLocString();

    v34 = [MEMORY[0x277D12E18] sharedInstance];
    v35 = [v34 selectedComfortSound];
    v36 = [v35 localizedName];

    if (v36)
    {
      v77 = v36;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
    }

    else
    {
      v18 = MEMORY[0x277CBEBF8];
    }

    v37 = [MEMORY[0x277CBEB18] array];
    v38 = [(HUICCMenuTextView *)self availableComfortSoundsAssets];
    if ([v38 count])
    {
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_9;
      v63[3] = &unk_2796F72D0;
      v64 = v37;
      [v38 enumerateObjectsUsingBlock:v63];
    }

    else
    {
      for (i = 1; i != 17; ++i)
      {
        v40 = [MEMORY[0x277D12E08] defaultComfortSoundForGroup:i];
        [v37 hcSafeAddObject:v40];
      }
    }

    objc_initWeak(&location, self);
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_10;
    v56[3] = &unk_2796F72F8;
    v57 = v5;
    v58 = self;
    v59 = v44;
    objc_copyWeak(&v62, &location);
    v60 = v47;
    v61 = v46;
    [v37 enumerateObjectsUsingBlock:v56];

    objc_destroyWeak(&v62);
    objc_destroyWeak(&location);

    v11 = v43;
  }

  else
  {
    v18 = v10;
  }

LABEL_50:

  if ([v5 count])
  {
    v41 = [v5 count];
    if (v41 == [v46 count])
    {
      [v48 setTitle:v11];
      v42 = [v44 count];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_12;
      v50[3] = &unk_2796F70F8;
      v51 = v46;
      v55 = v42;
      v52 = v44;
      v53 = v18;
      v54 = v45;
      [v5 enumerateObjectsUsingBlock:v50];
    }
  }

  [v48 loadViewIfNeeded];
  [v48 setMenuItems:v45];
}

void __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_2;
  v7[3] = &unk_2796F7210;
  v5 = v3;
  v8 = v5;
  objc_copyWeak(&v10, (a1 + 48));
  v9 = *(a1 + 40);
  v6 = MEMORY[0x25309B240](v7);
  [v4 addObject:v6];

  objc_destroyWeak(&v10);
}

uint64_t __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D12E20] sharedInstance];
  [*(a1 + 32) unsignedIntValue];
  [v2 setPreferredInputEar:hearingEarFromInputOption()];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updatePresentedMenuViewControllerIfNecessary];

  v4 = *(a1 + 40);

  return [v4 updateViewForProperties:&unk_286465900];
}

void __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 name];
  [v4 addObject:v5];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_8;
  v10[3] = &unk_2796F7280;
  v6 = v3;
  v11 = v6;
  v12 = *(a1 + 40);
  v15 = *(a1 + 72);
  objc_copyWeak(&v14, (a1 + 64));
  v13 = *(a1 + 48);
  v7 = MEMORY[0x25309B240](v10);
  v8 = *(a1 + 56);
  v9 = MEMORY[0x25309B240]();
  [v8 addObject:v9];

  objc_destroyWeak(&v14);
}

uint64_t __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) setIsSelected:{objc_msgSend(*(a1 + 32), "isSelected") ^ 1}];
  [*(a1 + 40) selectProgram:*(a1 + 32) forEar:*(a1 + 64)];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _updatePresentedMenuViewControllerIfNecessary];

  v3 = *(a1 + 48);

  return [v3 updateView];
}

void __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277D12E08] comfortSoundWithAsset:a2];
  [*(a1 + 32) hcSafeAddObject:v3];
}

void __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 localizedName];
  [v4 addObject:v5];

  v6 = [v3 asset];
  v7 = [*(a1 + 40) comfortSoundsDownloadProgress];
  v8 = [v6 assetId];
  v9 = [v7 objectForKey:v8];

  if (v9 && ([v9 floatValue], v10 < 1.0))
  {
    v11 = hearingLocString();
  }

  else
  {
    v11 = &stru_28645E540;
  }

  [*(a1 + 48) addObject:v11];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_11;
  v16[3] = &unk_2796F7210;
  v12 = v3;
  v17 = v12;
  objc_copyWeak(&v19, (a1 + 72));
  v18 = *(a1 + 56);
  v13 = MEMORY[0x25309B240](v16);
  v14 = *(a1 + 64);
  v15 = MEMORY[0x25309B240]();
  [v14 addObject:v15];

  objc_destroyWeak(&v19);
}

void __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_11(id *a1)
{
  v7 = [a1[4] asset];
  v2 = [v7 isInstalled];
  v3 = [MEMORY[0x277D12E18] sharedInstance];
  v4 = v3;
  if (v2)
  {
    [v3 setSelectedComfortSound:a1[4]];
  }

  else
  {
    v5 = [MEMORY[0x277D12E08] defaultComfortSoundForGroup:{objc_msgSend(a1[4], "soundGroup")}];
    [v4 setSelectedComfortSound:v5];

    v4 = [MEMORY[0x277D12DE8] sharedInstance];
    [v4 downloadComfortSoundAsset:v7];
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained _updatePresentedMenuViewControllerIfNecessary];

  [a1[5] updateView];
}

void __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_12(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc(MEMORY[0x277CFC990]);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_13;
  v12 = &unk_2796F70D0;
  v13 = *(a1 + 32);
  v14 = a3;
  v7 = [v6 initWithTitle:v5 identifier:v5 handler:&v9];
  if (*(a1 + 64) > a3)
  {
    v8 = [*(a1 + 40) objectAtIndex:{a3, v9, v10, v11, v12}];
    [v7 setSubtitle:v8];
  }

  if ([*(a1 + 48) containsObject:{v5, v9, v10, v11, v12}])
  {
    [v7 setSelected:1];
  }

  [*(a1 + 56) addObject:v7];
}

uint64_t __55__HUICCMenuTextView__updateMenuItemsForViewController___block_invoke_13(uint64_t a1)
{
  v1 = [*(a1 + 32) objectAtIndex:*(a1 + 40)];
  v2 = v1;
  if (v1)
  {
    (*(v1 + 16))(v1);
  }

  return 0;
}

- (void)_updatePresentedMenuViewControllerIfNecessary
{
  v3 = [(HUICCMenuTextView *)self delegate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(HUICCMenuTextView *)self delegate];
    v5 = [v7 expandedController];
    v6 = [v5 presentedViewController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(HUICCMenuTextView *)self _updateMenuItemsForViewController:v6];
    }
  }
}

- (void)subscribeListeners
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_DEFAULT, "Registering Comfort Sounds listener", buf, 2u);
  }

  if ([(HUICCMenuTextView *)self module]== 28)
  {
    objc_initWeak(buf, self);
    v4 = [MEMORY[0x277D12DE8] sharedInstance];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __39__HUICCMenuTextView_subscribeListeners__block_invoke;
    v5[3] = &unk_2796F7348;
    objc_copyWeak(&v6, buf);
    [v4 registerListener:self forComfortSoundsModelUpdatesHandler:v5];

    objc_destroyWeak(&v6);
    objc_destroyWeak(buf);
  }
}

void __39__HUICCMenuTextView_subscribeListeners__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v9, (a1 + 32));
  v7 = v5;
  v8 = v6;
  AXPerformBlockOnMainThread();

  objc_destroyWeak(&v9);
}

void __39__HUICCMenuTextView_subscribeListeners__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setAvailableComfortSoundsAssets:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 setComfortSoundsDownloadProgress:*(a1 + 40)];

  v4 = objc_loadWeakRetained((a1 + 48));
  [v4 _updatePresentedMenuViewControllerIfNecessary];
}

- (void)unsubscribeListeners
{
  v3 = HCLogHearingAids();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_252166000, v3, OS_LOG_TYPE_DEFAULT, "Unregistering Comfort Sounds listener", v5, 2u);
  }

  if ([(HUICCMenuTextView *)self module]== 28)
  {
    v4 = [MEMORY[0x277D12DE8] sharedInstance];
    [v4 unregisterComfortSoundsModelUpdatesHandler:self];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end