@interface HUICCMenuCheckmarkView
- (HACCContentModuleDelegate)delegate;
- (HUICCMenuCheckmarkView)initWithFrame:(CGRect)frame andModule:(unint64_t)module;
- (double)_titleViewHeightForCCModule:(unint64_t)module;
- (id)_menuItemsforPSEVersion:(unint64_t)version andAddress:(id)address;
- (id)personalAudioToggleBlockForType:(unint64_t)type withYodelEnabled:(BOOL)enabled andAddress:(id)address;
- (void)_handleTapGesture:(id)gesture;
- (void)_menuItemsWithCompletion:(id)completion;
- (void)_updateMenuViewIfNecessary;
- (void)updateConversationBoostCache;
- (void)updateValue;
@end

@implementation HUICCMenuCheckmarkView

- (HUICCMenuCheckmarkView)initWithFrame:(CGRect)frame andModule:(unint64_t)module
{
  v74[4] = *MEMORY[0x277D85DE8];
  v71.receiver = self;
  v71.super_class = HUICCMenuCheckmarkView;
  v4 = [(HUICCMenuCheckmarkView *)&v71 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(HUICCMenuCheckmarkView *)v4 setModule:module];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    menuItemViews = v5->_menuItemViews;
    v5->_menuItemViews = v6;

    v8 = objc_alloc_init(HACCCapsuleDarkBackground);
    backgroundMenuView = v5->_backgroundMenuView;
    v5->_backgroundMenuView = v8;

    [(HACCCapsuleDarkBackground *)v5->_backgroundMenuView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUICCMenuCheckmarkView *)v5 addSubview:v5->_backgroundMenuView];
    [(HACCCapsuleDarkBackground *)v5->_backgroundMenuView setupBackgroundVisualStyle];
    v10 = objc_alloc_init(HACCStackView);
    menuViewStack = v5->_menuViewStack;
    v5->_menuViewStack = v10;

    [(HACCStackView *)v5->_menuViewStack setAxis:1];
    [(HACCStackView *)v5->_menuViewStack setAlignment:0];
    [(HACCStackView *)v5->_menuViewStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUICCMenuCheckmarkView *)v5 addSubview:v5->_menuViewStack];
    v52 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(HACCStackView *)v5->_menuViewStack leadingAnchor];
    leadingAnchor2 = [(HACCCapsuleDarkBackground *)v5->_backgroundMenuView leadingAnchor];
    v58 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v74[0] = v58;
    trailingAnchor = [(HACCStackView *)v5->_menuViewStack trailingAnchor];
    trailingAnchor2 = [(HACCCapsuleDarkBackground *)v5->_backgroundMenuView trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v74[1] = v12;
    topAnchor = [(HACCStackView *)v5->_menuViewStack topAnchor];
    topAnchor2 = [(HACCCapsuleDarkBackground *)v5->_backgroundMenuView topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v74[2] = v15;
    bottomAnchor = [(HACCStackView *)v5->_menuViewStack bottomAnchor];
    bottomAnchor2 = [(HACCCapsuleDarkBackground *)v5->_backgroundMenuView bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v74[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:4];
    [v52 activateConstraints:v19];

    if (module == 35)
    {
      titleView = v5->_titleView;
      v5->_titleView = 0;

      v21 = MEMORY[0x277CCAAD0];
      leadingAnchor3 = [(HACCCapsuleDarkBackground *)v5->_backgroundMenuView leadingAnchor];
      leadingAnchor4 = [(HUICCMenuCheckmarkView *)v5 leadingAnchor];
      v61 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v73[0] = v61;
      trailingAnchor3 = [(HACCCapsuleDarkBackground *)v5->_backgroundMenuView trailingAnchor];
      trailingAnchor4 = [(HUICCMenuCheckmarkView *)v5 trailingAnchor];
      v55 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v73[1] = v55;
      topAnchor3 = [(HACCCapsuleDarkBackground *)v5->_backgroundMenuView topAnchor];
      topAnchor4 = [(HUICCMenuCheckmarkView *)v5 topAnchor];
      v50 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v73[2] = v50;
      bottomAnchor3 = [(HACCCapsuleDarkBackground *)v5->_backgroundMenuView bottomAnchor];
      bottomAnchor4 = [(HUICCMenuCheckmarkView *)v5 bottomAnchor];
      leadingAnchor5 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v73[3] = leadingAnchor5;
      leadingAnchor6 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:4];
      [v21 activateConstraints:leadingAnchor6];
    }

    else
    {
      [(HUICCMenuCheckmarkView *)v5 _titleViewHeightForCCModule:?];
      v24 = v23;
      v25 = objc_alloc_init(HACCCapsuleTitleView);
      v26 = v5->_titleView;
      v5->_titleView = v25;

      [(HACCCapsuleTitleView *)v5->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(HACCCapsuleTitleView *)v5->_titleView setAccessibilityElementsHidden:module == 37];
      [(HUICCMenuCheckmarkView *)v5 addSubview:v5->_titleView];
      v42 = MEMORY[0x277CCAAD0];
      leadingAnchor3 = [(HACCCapsuleTitleView *)v5->_titleView topAnchor];
      leadingAnchor4 = [(HUICCMenuCheckmarkView *)v5 topAnchor];
      v61 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v72[0] = v61;
      trailingAnchor3 = [(HACCCapsuleTitleView *)v5->_titleView leadingAnchor];
      trailingAnchor4 = [(HUICCMenuCheckmarkView *)v5 leadingAnchor];
      v55 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v72[1] = v55;
      topAnchor3 = [(HACCCapsuleTitleView *)v5->_titleView trailingAnchor];
      topAnchor4 = [(HUICCMenuCheckmarkView *)v5 trailingAnchor];
      v50 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v72[2] = v50;
      bottomAnchor3 = [(HACCCapsuleTitleView *)v5->_titleView heightAnchor];
      bottomAnchor4 = [bottomAnchor3 constraintGreaterThanOrEqualToConstant:v24];
      v72[3] = bottomAnchor4;
      leadingAnchor5 = [(HACCCapsuleDarkBackground *)v5->_backgroundMenuView leadingAnchor];
      leadingAnchor6 = [(HUICCMenuCheckmarkView *)v5 leadingAnchor];
      v46 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v72[4] = v46;
      trailingAnchor5 = [(HACCCapsuleDarkBackground *)v5->_backgroundMenuView trailingAnchor];
      trailingAnchor6 = [(HUICCMenuCheckmarkView *)v5 trailingAnchor];
      v43 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v72[5] = v43;
      topAnchor5 = [(HACCCapsuleDarkBackground *)v5->_backgroundMenuView topAnchor];
      bottomAnchor5 = [(HACCCapsuleTitleView *)v5->_titleView bottomAnchor];
      v29 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5];
      v72[6] = v29;
      bottomAnchor6 = [(HACCCapsuleDarkBackground *)v5->_backgroundMenuView bottomAnchor];
      bottomAnchor7 = [(HUICCMenuCheckmarkView *)v5 bottomAnchor];
      v32 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
      v72[7] = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:8];
      [v42 activateConstraints:v33];
    }

    v34 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v5 action:sel__handleTapGesture_];
    tapGestureRecognizer = v5->_tapGestureRecognizer;
    v5->_tapGestureRecognizer = v34;

    [(UITapGestureRecognizer *)v5->_tapGestureRecognizer setNumberOfTouchesRequired:1];
    [(UITapGestureRecognizer *)v5->_tapGestureRecognizer setNumberOfTapsRequired:1];
    [(HUICCMenuCheckmarkView *)v5 addGestureRecognizer:v5->_tapGestureRecognizer];
  }

  if ([(HUICCMenuCheckmarkView *)v5 module]== 28)
  {
    objc_initWeak(&location, v5);
    mEMORY[0x277D12E18] = [MEMORY[0x277D12E18] sharedInstance];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __50__HUICCMenuCheckmarkView_initWithFrame_andModule___block_invoke;
    v68[3] = &unk_2796F6D18;
    objc_copyWeak(&v69, &location);
    [mEMORY[0x277D12E18] registerUpdateBlock:v68 forRetrieveSelector:sel_comfortSoundsEnabled withListener:v5];

    objc_destroyWeak(&v69);
    objc_destroyWeak(&location);
  }

  if ([(HUICCMenuCheckmarkView *)v5 module]== 37)
  {
    contentValueCache = v5->_contentValueCache;
    v5->_contentValueCache = MEMORY[0x277CBEC28];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_updateConversationBoostCache name:*MEMORY[0x277D12DA8] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel_updateConversationBoostCache name:*MEMORY[0x277D3A1F0] object:0];

    objc_initWeak(&location, v5);
    mEMORY[0x277D3A1D0] = [MEMORY[0x277D3A1D0] sharedInstance];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __50__HUICCMenuCheckmarkView_initWithFrame_andModule___block_invoke_2;
    v66[3] = &unk_2796F6D18;
    objc_copyWeak(&v67, &location);
    [mEMORY[0x277D3A1D0] registerUpdateBlock:v66 forRetrieveSelector:sel_transparencyBeamforming withListener:v5];

    [(HUICCMenuCheckmarkView *)v5 updateConversationBoostCache];
    objc_destroyWeak(&v67);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __50__HUICCMenuCheckmarkView_initWithFrame_andModule___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateValue];
}

void __50__HUICCMenuCheckmarkView_initWithFrame_andModule___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateConversationBoostCache];
}

- (void)updateValue
{
  delegate = [(HUICCMenuCheckmarkView *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = delegate;
    tapGestureRecognizer = [(HUICCMenuCheckmarkView *)self tapGestureRecognizer];
    scrollView = [v3 scrollView];

    panGestureRecognizer = [scrollView panGestureRecognizer];
    [tapGestureRecognizer requireGestureRecognizerToFail:panGestureRecognizer];
  }

  [(HUICCMenuCheckmarkView *)self _updateMenuViewIfNecessary];
}

- (void)_updateMenuViewIfNecessary
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52__HUICCMenuCheckmarkView__updateMenuViewIfNecessary__block_invoke;
  v2[3] = &unk_2796F7030;
  v2[4] = self;
  [(HUICCMenuCheckmarkView *)self _menuItemsWithCompletion:v2];
}

void __52__HUICCMenuCheckmarkView__updateMenuViewIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) menuItems];
  v5 = [v4 isEqualToArray:v3];

  if (v5)
  {
    v6 = [*(a1 + 32) menuItemViews];
    [v6 makeObjectsPerformSelector:sel_updateView];
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v7 = [*(a1 + 32) menuItemViews];
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          [v12 removeFromSuperview];
          v13 = [*(a1 + 32) menuViewStack];
          [v13 removeArrangedSubview:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v9);
    }

    v14 = [*(a1 + 32) menuItemViews];
    [v14 removeAllObjects];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = v3;
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v31 + 1) + 8 * j);
          v21 = objc_alloc_init(HUICCMenuItemCheckmarkView);
          [(HUICCMenuItemCheckmarkView *)v21 setMenuItem:v20, v31];
          v22 = [*(a1 + 32) menuItemViews];
          v23 = [v22 count];

          v24 = *(a1 + 32);
          if (v23)
          {
            v25 = [v24 menuViewStack];
            [v25 addArrangedSubview:v21 withPartialSeparator:1];
          }

          else
          {
            v26 = [v24 titleView];
            v27 = v26 != 0;

            v25 = [*(a1 + 32) menuViewStack];
            [v25 addArrangedSubview:v21 withSeparator:v27];
          }

          v28 = [*(a1 + 32) menuViewStack];
          [v28 addArrangedSubview:v21];

          v29 = [*(a1 + 32) menuItemViews];
          [v29 addObject:v21];
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v17);
    }

    v30 = [v15 copy];
    [*(a1 + 32) setMenuItems:v30];
  }
}

- (void)_menuItemsWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277D12E00] = [MEMORY[0x277D12E00] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HUICCMenuCheckmarkView__menuItemsWithCompletion___block_invoke;
  v7[3] = &unk_2796F7080;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [mEMORY[0x277D12E00] getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v7];
}

void __51__HUICCMenuCheckmarkView__menuItemsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7 = *(a1 + 40);
  v6 = v5;
  AXPerformBlockOnMainThread();
}

uint64_t __51__HUICCMenuCheckmarkView__menuItemsWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _menuItemsforPSEVersion:*(a1 + 56) andAddress:*(a1 + 40)];
  objc_claimAutoreleasedReturnValue();
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (id)_menuItemsforPSEVersion:(unint64_t)version andAddress:(id)address
{
  v66[2] = *MEMORY[0x277D85DE8];
  addressCopy = address;
  module = [(HUICCMenuCheckmarkView *)self module];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_initWeak(&location, self);
  if (module == 37)
  {
    v14 = paLocString();
    [array addObject:v14];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __61__HUICCMenuCheckmarkView__menuItemsforPSEVersion_andAddress___block_invoke_55;
    v57[3] = &unk_2796F6D18;
    objc_copyWeak(&v58, &location);
    v15 = MEMORY[0x25309B240](v57);
    v16 = MEMORY[0x25309B240]();
    [array3 addObject:v16];

    contentValue = [(HUICCMenuCheckmarkView *)self contentValue];
    bOOLValue = [contentValue BOOLValue];

    if (bOOLValue)
    {
      v63 = v14;
      array4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
    }

    else
    {
      array4 = 0;
    }

    objc_destroyWeak(&v58);
    v9 = 0;
    goto LABEL_28;
  }

  if (module == 35)
  {
    v9 = paLocString();
    mEMORY[0x277D3A1C8] = [MEMORY[0x277D3A1C8] sharedInstance];
    v11 = [mEMORY[0x277D3A1C8] yodelEnabledForAddress:addressCopy];

    if (v11)
    {
      v12 = accessibilityHearingAidSupportBundle();
      v13 = [v12 localizedStringForKey:@"YodelFeatureName" value:@"YodelFeatureName" table:@"HearingProtection-Yodel"];

      v9 = v13;
    }

    v20 = paLocString();
    v66[0] = v20;
    v21 = paLocString();
    v66[1] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
    [array addObjectsFromArray:v22];

    v23 = [(HUICCMenuCheckmarkView *)self personalAudioToggleBlockForType:2 withYodelEnabled:v11 andAddress:addressCopy];
    [array3 addObject:v23];

    v24 = [(HUICCMenuCheckmarkView *)self personalAudioToggleBlockForType:4 withYodelEnabled:v11 andAddress:addressCopy];
    [array3 addObject:v24];

    if (version)
    {
      v25 = 1;
    }

    else
    {
      v25 = v11;
    }

    if (v25 == 1)
    {
      v26 = paLocString();
      [array addObject:v26];

      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __61__HUICCMenuCheckmarkView__menuItemsforPSEVersion_andAddress___block_invoke;
      v59[3] = &unk_2796F70A8;
      v60 = addressCopy;
      objc_copyWeak(&v61, &location);
      v27 = MEMORY[0x25309B240](v59);
      v28 = MEMORY[0x25309B240]();
      [array3 addObject:v28];

      objc_destroyWeak(&v61);
    }

    array4 = [MEMORY[0x277CBEB18] array];
    mEMORY[0x277D3A1D0] = [MEMORY[0x277D3A1D0] sharedInstance];
    v30 = mEMORY[0x277D3A1D0];
    if (v11)
    {
      v31 = addressCopy;
    }

    else
    {
      v31 = *MEMORY[0x277D3A1E0];
    }

    [mEMORY[0x277D3A1D0] accommodationTypesForRouteUID:v31];

    if (compoundAttributeContainsAttribute())
    {
      v32 = paLocString();
      [array4 addObject:v32];
    }

    if (compoundAttributeContainsAttribute())
    {
      v33 = paLocString();
      [array4 addObject:v33];
    }

    v34 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = MEMORY[0x277CCABB0];
      mEMORY[0x277D3A1C8]2 = [MEMORY[0x277D3A1C8] sharedInstance];
      v37 = [v35 numberWithBool:{objc_msgSend(mEMORY[0x277D3A1C8]2, "hearingAidEnabledForAddress:", addressCopy)}];
      *buf = 138412290;
      v65 = v37;
      _os_log_impl(&dword_252166000, v34, OS_LOG_TYPE_DEFAULT, "Yodel enabled %@", buf, 0xCu);
    }

    if (v25)
    {
      if ((v11 & 1) == 0)
      {
        mEMORY[0x277D3A1D0]2 = [MEMORY[0x277D3A1D0] sharedInstance];
        v47 = [mEMORY[0x277D3A1D0]2 transparencyCustomizedForAddress:addressCopy];

        if ((v47 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_36;
      }

      mEMORY[0x277D3A1C8]3 = [MEMORY[0x277D3A1C8] sharedInstance];
      v39 = [mEMORY[0x277D3A1C8]3 hearingAidEnabledForAddress:addressCopy];

      if (v39)
      {
LABEL_36:
        v14 = paLocString();
        [array4 addObject:v14];
LABEL_28:
      }
    }
  }

  else
  {
    array4 = 0;
    v9 = 0;
  }

LABEL_29:
  if ([array count])
  {
    v40 = [array count];
    if (v40 == [array3 count])
    {
      v41 = objc_loadWeakRetained(&location);
      titleView = [v41 titleView];
      titleLabel = [titleView titleLabel];
      [titleLabel setText:v9];

      v44 = [array2 count];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __61__HUICCMenuCheckmarkView__menuItemsforPSEVersion_andAddress___block_invoke_2;
      v51[3] = &unk_2796F70F8;
      v52 = array3;
      v56 = v44;
      v53 = array2;
      v54 = array4;
      v55 = v48;
      [array enumerateObjectsUsingBlock:v51];
    }
  }

  objc_destroyWeak(&location);

  return v48;
}

void __61__HUICCMenuCheckmarkView__menuItemsforPSEVersion_andAddress___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D3A1C8] sharedInstance];
  v3 = [v2 yodelEnabledForAddress:*(a1 + 32)];

  if (v3)
  {
    v4 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_252166000, v4, OS_LOG_TYPE_DEFAULT, "User toggled YHA", v11, 2u);
    }

    v5 = [MEMORY[0x277D3A1C8] sharedInstance];
    [v5 toggleHearingAidForAddress:*(a1 + 32)];
  }

  else
  {
    v6 = [MEMORY[0x277D3A1D0] sharedInstance];
    v7 = [v6 transparencyCustomizedForAddress:*(a1 + 32)];

    v5 = [MEMORY[0x277D3A1D0] sharedInstance];
    [v5 setTransparencyCustomized:v7 ^ 1u forAddress:*(a1 + 32)];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateMenuViewIfNecessary];

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 delegate];

  [v10 updateView];
}

void __61__HUICCMenuCheckmarkView__menuItemsforPSEVersion_andAddress___block_invoke_55(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_loadWeakRetained((a1 + 32));
  [v3 controlDidActivate:v4];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 updateConversationBoostCache];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _updateMenuViewIfNecessary];
}

void __61__HUICCMenuCheckmarkView__menuItemsforPSEVersion_andAddress___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc(MEMORY[0x277CFC990]);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __61__HUICCMenuCheckmarkView__menuItemsforPSEVersion_andAddress___block_invoke_3;
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

uint64_t __61__HUICCMenuCheckmarkView__menuItemsforPSEVersion_andAddress___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) objectAtIndex:*(a1 + 40)];
  v2 = v1;
  if (v1)
  {
    (*(v1 + 16))(v1);
  }

  return 0;
}

- (id)personalAudioToggleBlockForType:(unint64_t)type withYodelEnabled:(BOOL)enabled andAddress:(id)address
{
  addressCopy = address;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__HUICCMenuCheckmarkView_personalAudioToggleBlockForType_withYodelEnabled_andAddress___block_invoke;
  v12[3] = &unk_2796F7120;
  enabledCopy = enabled;
  v13 = addressCopy;
  v14[1] = type;
  v9 = addressCopy;
  objc_copyWeak(v14, &location);
  v10 = MEMORY[0x25309B240](v12);
  objc_destroyWeak(v14);

  objc_destroyWeak(&location);

  return v10;
}

void __86__HUICCMenuCheckmarkView_personalAudioToggleBlockForType_withYodelEnabled_andAddress___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D3A1E0];
  if (*(a1 + 56) == 1 && [*(a1 + 32) length])
  {
    v2 = *(a1 + 32);

    v13 = v2;
  }

  v3 = [MEMORY[0x277D3A1D0] sharedInstance];
  [v3 accommodationTypesForRouteUID:v13];

  if (compoundAttributeContainsAttribute())
  {
    v4 = compoundAttributeByRemovingAttribute();
  }

  else
  {
    v4 = compoundAttributeByAddingAttribute();
  }

  v5 = v4;
  v6 = [MEMORY[0x277D3A1D0] sharedInstance];
  [v6 setAccommodationTypes:v5 forRouteUID:v13];

  v7 = [MEMORY[0x277D3A1C8] sharedInstance];
  v8 = [v7 yodelEnabledForAddress:*(a1 + 32)];

  if (v8)
  {
    v9 = [MEMORY[0x277D3A1C8] sharedInstance];
    [v9 setAccommodationType:v5 forAddress:*(a1 + 32)];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateMenuViewIfNecessary];

  v11 = objc_loadWeakRetained((a1 + 40));
  v12 = [v11 delegate];

  [v12 updateViewForModule:34];
  [v12 updateViewForModule:35];
}

- (void)_handleTapGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  [gestureCopy locationInView:self];
  v7 = v6;
  v9 = v8;

  v10 = [(HUICCMenuCheckmarkView *)self hitTest:0 withEvent:v7, v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = v11;
    if (state == 3)
    {
      [v11 setHighlighted:1];
      v13 = v12;
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }
}

void __44__HUICCMenuCheckmarkView__handleTapGesture___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHighlighted:0];
  v2 = [*(a1 + 32) menuItem];
  [v2 performAction];
}

- (double)_titleViewHeightForCCModule:(unint64_t)module
{
  result = 52.0;
  if (module == 37)
  {
    return 26.0;
  }

  return result;
}

- (void)updateConversationBoostCache
{
  if ([(HUICCMenuCheckmarkView *)self module]== 37)
  {
    mEMORY[0x277D12E00] = [MEMORY[0x277D12E00] sharedInstance];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __54__HUICCMenuCheckmarkView_updateConversationBoostCache__block_invoke;
    v5[3] = &unk_2796F6DB8;
    v5[4] = self;
    [mEMORY[0x277D12E00] getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v5];
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__HUICCMenuCheckmarkView_updateConversationBoostCache__block_invoke_3;
  v4[3] = &unk_2796F6D90;
  v4[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __54__HUICCMenuCheckmarkView_updateConversationBoostCache__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v4 = v5;
  AXPerformBlockOnMainThread();
}

uint64_t __54__HUICCMenuCheckmarkView_updateConversationBoostCache__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D3A1D0] sharedInstance];
  v3 = [v2 transparencyBeamformingForAddress:*(a1 + 32)];

  v4 = [MEMORY[0x277D3A1C8] sharedInstance];
  v5 = [v4 yodelEnabledForAddress:*(a1 + 32)];

  if (v5)
  {
    v6 = [MEMORY[0x277D3A1C8] sharedInstance];
    v3 = [v6 beamformingForAddress:*(a1 + 32)];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  [*(a1 + 40) setContentValueCache:v7];

  v8 = *(a1 + 40);

  return [v8 _updateMenuViewIfNecessary];
}

uint64_t __54__HUICCMenuCheckmarkView_updateConversationBoostCache__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) module];
  if (result == 35)
  {
    v3 = *(a1 + 32);

    return [v3 _updateMenuViewIfNecessary];
  }

  return result;
}

- (HACCContentModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end