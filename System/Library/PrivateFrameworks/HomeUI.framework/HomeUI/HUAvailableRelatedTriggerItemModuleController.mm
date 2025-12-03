@interface HUAvailableRelatedTriggerItemModuleController
- (BOOL)triggerModuleShouldHideAddAutomationButton;
- (Class)cellClassForItem:(id)item;
- (HUAccessoryButtonTableViewHeaderView)sectionEditButtonHeader;
- (HUAvailableRelatedTriggerItemModuleController)initWithModule:(id)module;
- (UIActivityIndicatorView)addAutomationActivityIndicator;
- (_TriggerEditorDelegateWrapper)presentedViewControllerDelegateWrapper;
- (id)_activateItem:(id)item active:(BOOL)active;
- (id)_addAutomationViewControllerWithActionFactories:(id)factories;
- (id)_addAutomationViewControllerWithSensorCharacteristics:(id)characteristics;
- (id)_createAddAutomationViewController;
- (id)_dismissViewController:(id)controller;
- (id)_handleError:(id)error retryBlock:(id)block;
- (id)commitSelectedItems;
- (unint64_t)didSelectItem:(id)item;
- (void)_addAutomationCancelButtonPressed;
- (void)_enableItemPressed:(id)pressed enabled:(BOOL)enabled;
- (void)_presentAddAutomationViewController;
- (void)_presentTriggerSummaryForAvailableTriggerItem:(id)item;
- (void)_presentTriggerSummaryForTriggerBuilder:(id)builder flow:(id)flow;
- (void)_updateUIAnimated:(BOOL)animated;
- (void)itemSection:(id)section accessoryButtonPressedInHeader:(id)header;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)triggerEditor:(id)editor didCommitTriggerBuilder:(id)builder withError:(id)error;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
- (void)updatePresentedViewControllerForNewModuleController:(id)controller;
@end

@implementation HUAvailableRelatedTriggerItemModuleController

- (HUAvailableRelatedTriggerItemModuleController)initWithModule:(id)module
{
  v7.receiver = self;
  v7.super_class = HUAvailableRelatedTriggerItemModuleController;
  v3 = [(HUItemModuleController *)&v7 initWithModule:module];
  v4 = v3;
  if (v3)
  {
    module = [(HUItemModuleController *)v3 module];
    [module setEditButtonHeaderDelegate:v4];

    [(HUAvailableRelatedTriggerItemModuleController *)v4 setEditing:0];
    [(HUAvailableRelatedTriggerItemModuleController *)v4 _updateUIAnimated:0];
  }

  return v4;
}

- (UIActivityIndicatorView)addAutomationActivityIndicator
{
  addAutomationActivityIndicator = self->_addAutomationActivityIndicator;
  if (!addAutomationActivityIndicator)
  {
    v4 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    v5 = self->_addAutomationActivityIndicator;
    self->_addAutomationActivityIndicator = v4;

    addAutomationActivityIndicator = self->_addAutomationActivityIndicator;
  }

  return addAutomationActivityIndicator;
}

- (id)commitSelectedItems
{
  objc_initWeak(&location, self);
  module = [(HUItemModuleController *)self module];
  activateAllSelectedItems = [module activateAllSelectedItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HUAvailableRelatedTriggerItemModuleController_commitSelectedItems__block_invoke;
  v7[3] = &unk_277DBBE38;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  v5 = [activateAllSelectedItems recover:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);

  return v5;
}

id __68__HUAvailableRelatedTriggerItemModuleController_commitSelectedItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HUAvailableRelatedTriggerItemModuleController_commitSelectedItems__block_invoke_2;
  v7[3] = &unk_277DB7478;
  v7[4] = *(a1 + 32);
  v5 = [WeakRetained _handleError:v3 retryBlock:v7];

  return v5;
}

- (BOOL)triggerModuleShouldHideAddAutomationButton
{
  module = [(HUItemModuleController *)self module];
  addAutomationItemShouldBeHidden = [module addAutomationItemShouldBeHidden];

  return addAutomationItemShouldBeHidden;
}

- (Class)cellClassForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v5 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [v7 triggerItem];

LABEL_8:
    v14 = objc_opt_class();
    goto LABEL_9;
  }

  module = [(HUItemModuleController *)self module];
  addAutomationItem = [module addAutomationItem];
  v10 = [v5 isEqual:addAutomationItem];

  if (v10)
  {
    goto LABEL_8;
  }

  module2 = [(HUItemModuleController *)self module];
  naturalLightingItem = [module2 naturalLightingItem];
  v13 = [v5 isEqual:naturalLightingItem];

  if (v13)
  {
    goto LABEL_8;
  }

  v17.receiver = self;
  v17.super_class = HUAvailableRelatedTriggerItemModuleController;
  v14 = [(HUItemModuleController *)&v17 cellClassForItem:v5];
LABEL_9:
  v15 = v14;

  return v15;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  v43.receiver = self;
  v43.super_class = HUAvailableRelatedTriggerItemModuleController;
  [(HUItemModuleController *)&v43 setupCell:cellCopy forItem:itemCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v8 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    [v10 setIconDisplayStyle:1];
    [v10 setIconTintColorFollowsDisabledState:0];
    HUDefaultSizeForIconSize();
    v12 = v11;
    v14 = v13;
    contentMetrics = [v10 contentMetrics];
    [contentMetrics setIconSize:{v12, v14}];

    contentMetrics2 = [v10 contentMetrics];
    [contentMetrics2 setContentInset:{12.0, 0.0, 12.0, 0.0}];
  }

  objc_opt_class();
  v17 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    recommendationItem = [v19 recommendationItem];

    if (recommendationItem)
    {
      objc_opt_class();
      v21 = cellCopy;
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;

      [v23 setDelegate:self];
LABEL_20:
      [v23 setMaxNumberOfTitleLines:0];
      [v23 setMaxNumberOfDescriptionLines:0];
      module = [(HUItemModuleController *)self module];
      context = [module context];
      [v23 setHideIcon:{objc_msgSend(context, "showsIcons") ^ 1}];

LABEL_31:
      goto LABEL_32;
    }

    triggerItem = [v19 triggerItem];

    if (triggerItem)
    {
      objc_opt_class();
      v25 = cellCopy;
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v23 = v26;

      [v25 setAccessoryType:1];
      grayColor = [MEMORY[0x277D75348] grayColor];
      valueLabel = [v23 valueLabel];
      [valueLabel setTextColor:grayColor];

      goto LABEL_20;
    }
  }

  module2 = [(HUItemModuleController *)self module];
  addAutomationItem = [module2 addAutomationItem];
  v33 = [v17 isEqual:addAutomationItem];

  if (v33)
  {
    objc_opt_class();
    v34 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v23 = v35;

    [v23 setIconForegroundColorFollowsTintColor:1];
    [v23 setIconDisplayStyle:3];
    [v23 setTitleColorFollowsTintColor:1];
    [v23 setHideValue:1];
    [v23 setHideIcon:1];
    goto LABEL_31;
  }

  module3 = [(HUItemModuleController *)self module];
  naturalLightingItem = [module3 naturalLightingItem];
  v38 = [v17 isEqual:naturalLightingItem];

  if (v38)
  {
    objc_opt_class();
    v39 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v23 = v40;

    module4 = [(HUItemModuleController *)self module];
    context2 = [module4 context];
    [v23 setHideIcon:{objc_msgSend(context2, "showsIcons") ^ 1}];

    [v23 setSelectionStyle:0];
    [v23 setDelegate:self];
    goto LABEL_31;
  }

LABEL_32:
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v42.receiver = self;
  v42.super_class = HUAvailableRelatedTriggerItemModuleController;
  [(HUItemModuleController *)&v42 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  objc_opt_class();
  v10 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    recommendationItem = [v12 recommendationItem];

    if (recommendationItem)
    {
      v14 = 0;
    }

    else
    {
      triggerItem = [v12 triggerItem];

      if (!triggerItem)
      {
        goto LABEL_10;
      }

      v14 = 3;
    }

    [cellCopy setSelectionStyle:v14];
  }

LABEL_10:
  module = [(HUItemModuleController *)self module];
  addAutomationItem = [module addAutomationItem];
  v18 = [v10 isEqual:addAutomationItem];

  if (v18)
  {
    [cellCopy setAccessibilityIdentifier:@"AccessoryDetails.AddAutomationItem"];
    objc_opt_class();
    latestResults = [v10 latestResults];
    v20 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D140F0]];
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    bOOLValue = [v22 BOOLValue];
    addAutomationActivityIndicator = [(HUAvailableRelatedTriggerItemModuleController *)self addAutomationActivityIndicator];
    v25 = addAutomationActivityIndicator;
    if (bOOLValue)
    {
      [cellCopy setAccessoryView:addAutomationActivityIndicator];

      addAutomationActivityIndicator2 = [(HUAvailableRelatedTriggerItemModuleController *)self addAutomationActivityIndicator];
      [addAutomationActivityIndicator2 startAnimating];
    }

    else
    {
      [addAutomationActivityIndicator stopAnimating];

      [cellCopy setAccessoryView:0];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v41 = v12;
    v27 = MEMORY[0x277CCACA8];
    latestResults2 = [v10 latestResults];
    v28 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D14070]];
    uniqueIdentifier = [v28 uniqueIdentifier];
    v30 = [v27 stringWithFormat:@"AccessoryDetails.%@", uniqueIdentifier];
    v31 = [v30 componentsSeparatedByString:@"="];
    firstObject = [v31 firstObject];
    v33 = objc_msgSend(firstObject, "stringByReplacingOccurrencesOfString:withString:", @"("), &stru_2823E0EE8;
    v34 = [v33 stringByReplacingOccurrencesOfString:@"" withString:?], &stru_2823E0EE8);
    v35 = [v34 stringByReplacingOccurrencesOfString:@":" withString:@"."];
    [cellCopy setAccessibilityIdentifier:v35];

    objc_opt_class();
    v36 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;

    [v38 setSwitchHidden:{-[HUAvailableRelatedTriggerItemModuleController editing](selfCopy, "editing")}];
    if ([(HUAvailableRelatedTriggerItemModuleController *)selfCopy editing])
    {
      [v36 setSelectionStyle:3];
    }

    v12 = v41;
  }
}

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v5 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && (([v7 triggerItem], v8 = objc_claimAutoreleasedReturnValue(), v8, v8) || (objc_msgSend(v7, "recommendationItem"), (v9 = objc_claimAutoreleasedReturnValue()) != 0) && (v10 = v9, v11 = -[HUAvailableRelatedTriggerItemModuleController editing](self, "editing"), v10, v11)))
  {
    [(HUAvailableRelatedTriggerItemModuleController *)self _presentTriggerSummaryForAvailableTriggerItem:v7];
  }

  else
  {
    module = [(HUItemModuleController *)self module];
    addAutomationItem = [module addAutomationItem];
    v14 = [v5 isEqual:addAutomationItem];

    if (v14)
    {
      [(HUAvailableRelatedTriggerItemModuleController *)self _presentAddAutomationViewController];
    }
  }

  return 0;
}

- (void)_presentTriggerSummaryForAvailableTriggerItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(HUTriggerBuilderContext);
  recommendationItem = [itemCopy recommendationItem];

  if (!recommendationItem || ([itemCopy latestResults], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", *MEMORY[0x277D13F60]), v7 = objc_claimAutoreleasedReturnValue(), -[HUTriggerBuilderContext setTriggerContextAwareTitle:](v4, "setTriggerContextAwareTitle:", v7), v7, v6, objc_msgSend(itemCopy, "recommendationItem"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "recommendation"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "hu_triggerBuilderIfAny"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "trigger"), v11 = objc_claimAutoreleasedReturnValue(), -[HUTriggerBuilderContext setShowTriggerDeleteButton:](v4, "setShowTriggerDeleteButton:", v11 != 0), v11, v10, v9, v8, -[HUTriggerBuilderContext setSuggestionItem:](v4, "setSuggestionItem:", itemCopy), (objc_msgSend(itemCopy, "isActive") & 1) != 0) || (-[HUItemModuleController module](self, "module"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "home"), v13 = objc_claimAutoreleasedReturnValue(), -[HUItemModuleController module](self, "module"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "relatedItems"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(itemCopy, "buildersForActivating:inHome:withContext:serviceLikeItems:", 1, v13, v4, v15), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "firstObject"), v17 = objc_claimAutoreleasedReturnValue(), v16, v15, v14, v13, v12, !v17))
  {
    v18 = MEMORY[0x277D14C48];
    trigger = [itemCopy trigger];
    module = [(HUItemModuleController *)self module];
    home = [module home];
    v17 = [v18 triggerBuilderForTrigger:trigger inHome:home context:v4];
  }

  v22 = [[HUTriggerActionFlow alloc] initWithFlowState:3];
  [(HUAvailableRelatedTriggerItemModuleController *)self _presentTriggerSummaryForTriggerBuilder:v17 flow:v22];
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  item = [cell item];
  [(HUAvailableRelatedTriggerItemModuleController *)self _enableItemPressed:item enabled:onCopy];
}

- (void)triggerEditor:(id)editor didCommitTriggerBuilder:(id)builder withError:(id)error
{
  errorCopy = error;
  context = [builder context];
  suggestionItem = [context suggestionItem];

  objc_opt_class();
  v9 = suggestionItem;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    module = [(HUItemModuleController *)self module];
    v13 = [module containsItem:v11];

    if (v13)
    {
      module2 = [(HUItemModuleController *)self module];
      [module2 didActivateItem:v11 active:1 error:errorCopy];
    }
  }
}

- (void)itemSection:(id)section accessoryButtonPressedInHeader:(id)header
{
  headerCopy = header;
  objc_opt_class();
  v16 = headerCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = v16;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [(HUAvailableRelatedTriggerItemModuleController *)self setSectionEditButtonHeader:v8];
  [(HUAvailableRelatedTriggerItemModuleController *)self setEditing:[(HUAvailableRelatedTriggerItemModuleController *)self editing]^ 1];
  [(HUAvailableRelatedTriggerItemModuleController *)self _updateUIAnimated:1];
  v9 = MEMORY[0x277D14788];
  module = [(HUItemModuleController *)self module];
  itemProviders = [module itemProviders];
  v12 = [v9 requestToReloadItemProviders:itemProviders senderSelector:a2];

  module2 = [(HUItemModuleController *)self module];
  itemUpdater = [module2 itemUpdater];
  v15 = [itemUpdater performItemUpdateRequest:v12];
}

- (void)_updateUIAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(HUAvailableRelatedTriggerItemModuleController *)self editing])
  {
    v5 = @"HUSmartAutomationEditButtonDoneTitle";
  }

  else
  {
    v5 = @"HUSmartAutomationEditButtonTitle";
  }

  module = [(HUItemModuleController *)self module];
  [module setSectionHeaderEditButtonTitleKey:v5];

  sectionEditButtonHeader = [(HUAvailableRelatedTriggerItemModuleController *)self sectionEditButtonHeader];

  if (sectionEditButtonHeader)
  {
    module2 = [(HUItemModuleController *)self module];
    sectionHeaderEditButtonTitleKey = [module2 sectionHeaderEditButtonTitleKey];
    v10 = _HULocalizedStringWithDefaultValue(sectionHeaderEditButtonTitleKey, sectionHeaderEditButtonTitleKey, 1);
    sectionEditButtonHeader2 = [(HUAvailableRelatedTriggerItemModuleController *)self sectionEditButtonHeader];
    [sectionEditButtonHeader2 setOverrideAccessoryButtonTitle:v10];

    sectionEditButtonHeader3 = [(HUAvailableRelatedTriggerItemModuleController *)self sectionEditButtonHeader];
    defaultAccessoryButtonFont = [sectionEditButtonHeader3 defaultAccessoryButtonFont];

    if ([(HUAvailableRelatedTriggerItemModuleController *)self editing])
    {
      v13 = MEMORY[0x277D74300];
      fontDescriptor = [defaultAccessoryButtonFont fontDescriptor];
      v15 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
      [defaultAccessoryButtonFont pointSize];
      v16 = [v13 fontWithDescriptor:v15 size:?];

      defaultAccessoryButtonFont = v16;
    }

    sectionEditButtonHeader4 = [(HUAvailableRelatedTriggerItemModuleController *)self sectionEditButtonHeader];
    [sectionEditButtonHeader4 setAccessoryButtonFont:defaultAccessoryButtonFont];

    sectionEditButtonHeader5 = [(HUAvailableRelatedTriggerItemModuleController *)self sectionEditButtonHeader];
    [sectionEditButtonHeader5 updateUIWithAnimation:animatedCopy];
  }
}

- (void)_enableItemPressed:(id)pressed enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  pressedCopy = pressed;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = pressedCopy;
    module = [(HUItemModuleController *)self module];
    context = [module context];
    commitsAutomatically = [context commitsAutomatically];

    if (commitsAutomatically)
    {
      v11 = [(HUAvailableRelatedTriggerItemModuleController *)self _activateItem:v7 active:enabledCopy];
    }

    else
    {
      [v7 setActive:enabledCopy];
      v24 = MEMORY[0x277D14788];
      v25 = [MEMORY[0x277CBEB98] setWithObject:v7];
      v26 = [v24 requestToUpdateItems:v25 senderSelector:a2];

      module2 = [(HUItemModuleController *)self module];
      itemUpdater = [module2 itemUpdater];
      v29 = [itemUpdater performItemUpdateRequest:v26];
    }
  }

  else
  {
    module3 = [(HUItemModuleController *)self module];
    naturalLightingItem = [module3 naturalLightingItem];
    v14 = [pressedCopy isEqual:naturalLightingItem];

    if (!v14)
    {
      goto LABEL_8;
    }

    module4 = [(HUItemModuleController *)self module];
    [module4 setEnableNaturalLighting:enabledCopy];

    v16 = MEMORY[0x277D14788];
    v17 = MEMORY[0x277CBEB98];
    module5 = [(HUItemModuleController *)self module];
    naturalLightingItem2 = [module5 naturalLightingItem];
    v20 = [v17 setWithObject:naturalLightingItem2];
    v7 = [v16 requestToUpdateItems:v20 senderSelector:a2];

    module6 = [(HUItemModuleController *)self module];
    itemUpdater2 = [module6 itemUpdater];
    v23 = [itemUpdater2 performItemUpdateRequest:v7];
  }

LABEL_8:
}

- (id)_activateItem:(id)item active:(BOOL)active
{
  activeCopy = active;
  itemCopy = item;
  objc_initWeak(&location, self);
  module = [(HUItemModuleController *)self module];
  v8 = [module activateItem:itemCopy active:activeCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HUAvailableRelatedTriggerItemModuleController__activateItem_active___block_invoke;
  v12[3] = &unk_277DBBE60;
  objc_copyWeak(&v14, &location);
  v9 = itemCopy;
  v13 = v9;
  v15 = activeCopy;
  v10 = [v8 recover:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v10;
}

id __70__HUAvailableRelatedTriggerItemModuleController__activateItem_active___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HUAvailableRelatedTriggerItemModuleController__activateItem_active___block_invoke_2;
  v7[3] = &unk_277DBB2A8;
  objc_copyWeak(&v9, (a1 + 40));
  v8 = *(a1 + 32);
  v10 = *(a1 + 48);
  v5 = [WeakRetained _handleError:v3 retryBlock:v7];

  objc_destroyWeak(&v9);

  return v5;
}

id __70__HUAvailableRelatedTriggerItemModuleController__activateItem_active___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _activateItem:*(a1 + 32) active:*(a1 + 48)];

  return v3;
}

- (id)_handleError:(id)error retryBlock:(id)block
{
  errorCopy = error;
  blockCopy = block;
  if (!errorCopy)
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_5;
  }

  na_isCancelledError = [errorCopy na_isCancelledError];
  v9 = MEMORY[0x277D2C900];
  if (na_isCancelledError)
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithError:errorCopy];
LABEL_5:
    v11 = futureWithNoResult;
    goto LABEL_7;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__HUAvailableRelatedTriggerItemModuleController__handleError_retryBlock___block_invoke;
  v13[3] = &unk_277DBBE88;
  v13[4] = self;
  v14 = errorCopy;
  v15 = blockCopy;
  v11 = [v9 futureWithBlock:v13];

LABEL_7:

  return v11;
}

void __73__HUAvailableRelatedTriggerItemModuleController__handleError_retryBlock___block_invoke(uint64_t a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) module];
  v5 = [v4 context];
  v6 = [v5 errorHandlingStrategy];

  if (v6)
  {
    v7 = [MEMORY[0x277D14640] sharedHandler];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__HUAvailableRelatedTriggerItemModuleController__handleError_retryBlock___block_invoke_3;
    v18[3] = &unk_277DB8068;
    v8 = *(a1 + 40);
    v20 = *(a1 + 48);
    v19 = v3;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __73__HUAvailableRelatedTriggerItemModuleController__handleError_retryBlock___block_invoke_5;
    v16[3] = &unk_277DB8488;
    v17 = v19;
    [v7 handleError:v8 operationType:0 options:MEMORY[0x277CBEC10] retryBlock:v18 cancelBlock:v16];

    v9 = v20;
  }

  else
  {
    v25 = *MEMORY[0x277D13858];
    v10 = _HULocalizedStringWithDefaultValue(@"HUSmartAutomationErrorHandlingStrategyContinueCancelButtonText", @"HUSmartAutomationErrorHandlingStrategyContinueCancelButtonText", 1);
    v26[0] = v10;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    v11 = *(a1 + 40);
    v23 = *MEMORY[0x277D13878];
    v12 = _HULocalizedStringWithDefaultValue(@"HUSmartAutomationErrorHandlingStrategyContinueDescriptionText", @"HUSmartAutomationErrorHandlingStrategyContinueDescriptionText", 1);
    v24 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v14 = [v11 hf_errorWithAddedUserInfo:v13];

    v15 = [MEMORY[0x277D14640] sharedHandler];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __73__HUAvailableRelatedTriggerItemModuleController__handleError_retryBlock___block_invoke_2;
    v21[3] = &unk_277DB8488;
    v22 = v3;
    [v15 handleError:v14 operationType:0 options:v9 retryBlock:0 cancelBlock:v21];
  }
}

void __73__HUAvailableRelatedTriggerItemModuleController__handleError_retryBlock___block_invoke_3(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__HUAvailableRelatedTriggerItemModuleController__handleError_retryBlock___block_invoke_4;
  v4[3] = &unk_277DB7530;
  v5 = *(a1 + 32);
  v3 = [v2 addCompletionBlock:v4];
}

void __73__HUAvailableRelatedTriggerItemModuleController__handleError_retryBlock___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D13850] code:52 userInfo:0];
  [v1 finishWithError:v2];
}

- (void)_addAutomationCancelButtonPressed
{
  presentedViewController = [(HUAvailableRelatedTriggerItemModuleController *)self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [(HUAvailableRelatedTriggerItemModuleController *)self presentedViewController];
    v5 = [(HUAvailableRelatedTriggerItemModuleController *)self _dismissViewController:presentedViewController2];

    [(HUAvailableRelatedTriggerItemModuleController *)self setPresentedViewController:0];
  }
}

- (id)_dismissViewController:(id)controller
{
  v25[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  [(HUAvailableRelatedTriggerItemModuleController *)self setEditing:0];
  [(HUAvailableRelatedTriggerItemModuleController *)self _updateUIAnimated:0];
  v6 = [HUViewControllerDismissalRequest requestWithViewController:controllerCopy];

  v7 = objc_alloc(MEMORY[0x277D14788]);
  module = [(HUItemModuleController *)self module];
  itemProviders = [module itemProviders];
  module2 = [(HUItemModuleController *)self module];
  allItems = [module2 allItems];
  v12 = [v7 initWithItemProviders:itemProviders items:allItems senderSelector:a2];

  host = [(HUItemModuleController *)self host];
  v14 = [host moduleController:self dismissViewControllerForRequest:v6];

  v15 = MEMORY[0x277D2C900];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __72__HUAvailableRelatedTriggerItemModuleController__dismissViewController___block_invoke;
  v23[3] = &unk_277DB8200;
  v23[4] = self;
  v24 = v12;
  v16 = v12;
  v17 = [v15 lazyFutureWithBlock:v23];
  v18 = MEMORY[0x277D2C900];
  v25[0] = v14;
  v25[1] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v20 = [v18 chainFutures:v19];
  v21 = [v20 recover:&__block_literal_global_79];

  return v21;
}

void __72__HUAvailableRelatedTriggerItemModuleController__dismissViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) module];
  v5 = [v4 itemUpdater];
  v6 = [v5 performItemUpdateRequest:*(a1 + 40)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HUAvailableRelatedTriggerItemModuleController__dismissViewController___block_invoke_2;
  v9[3] = &unk_277DBBEB0;
  v10 = v3;
  v7 = v3;
  v8 = [v6 addCompletionBlock:v9];
}

- (void)updatePresentedViewControllerForNewModuleController:(id)controller
{
  controllerCopy = controller;
  presentedViewController = [(HUAvailableRelatedTriggerItemModuleController *)self presentedViewController];
  [controllerCopy setPresentedViewController:presentedViewController];

  presentedViewControllerDelegateWrapper = [(HUAvailableRelatedTriggerItemModuleController *)self presentedViewControllerDelegateWrapper];
  [presentedViewControllerDelegateWrapper setDelegate:controllerCopy];

  presentedViewControllerDelegateWrapper2 = [(HUAvailableRelatedTriggerItemModuleController *)self presentedViewControllerDelegateWrapper];
  [controllerCopy setPresentedViewControllerDelegateWrapper:presentedViewControllerDelegateWrapper2];
}

- (_TriggerEditorDelegateWrapper)presentedViewControllerDelegateWrapper
{
  presentedViewControllerDelegateWrapper = self->_presentedViewControllerDelegateWrapper;
  if (!presentedViewControllerDelegateWrapper)
  {
    v4 = objc_alloc_init(_TriggerEditorDelegateWrapper);
    v5 = self->_presentedViewControllerDelegateWrapper;
    self->_presentedViewControllerDelegateWrapper = v4;

    [(_TriggerEditorDelegateWrapper *)self->_presentedViewControllerDelegateWrapper setDelegate:self];
    presentedViewControllerDelegateWrapper = self->_presentedViewControllerDelegateWrapper;
  }

  return presentedViewControllerDelegateWrapper;
}

- (void)_presentTriggerSummaryForTriggerBuilder:(id)builder flow:(id)flow
{
  flowCopy = flow;
  builderCopy = builder;
  presentedViewControllerDelegateWrapper = [(HUAvailableRelatedTriggerItemModuleController *)self presentedViewControllerDelegateWrapper];
  v8 = [[HUTriggerSummaryViewController alloc] initWithTriggerBuilder:builderCopy flow:flowCopy delegate:presentedViewControllerDelegateWrapper];

  v9 = MEMORY[0x277CBEB98];
  module = [(HUItemModuleController *)self module];
  relatedItems = [module relatedItems];
  v12 = [v9 setWithArray:relatedItems];
  v13 = [v12 na_flatMap:&__block_literal_global_154];

  v14 = [v13 na_flatMap:&__block_literal_global_281];
  [(HUTriggerSummaryViewController *)v8 setPrioritizedAccessories:v14];

  [(HUAvailableRelatedTriggerItemModuleController *)self setPresentedViewController:v8];
  v15 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
  [v15 setModalPresentationStyle:2];
  v16 = [HUViewControllerPresentationRequest requestWithViewController:v15];
  [v16 setPreferredPresentationType:0];
  host = [(HUItemModuleController *)self host];
  v18 = [host moduleController:self presentViewControllerForRequest:v16];
}

id __94__HUAvailableRelatedTriggerItemModuleController__presentTriggerSummaryForTriggerBuilder_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CBEB58] set];
  objc_opt_class();
  v4 = v2;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 mediaProfileContainer];
    v8 = [v7 conformsToProtocol:&unk_2825BCA78];

    v9 = [v6 mediaProfileContainer];
    v10 = v9;
    if (v8)
    {
      [v3 addObject:v9];
    }

    else
    {
      v11 = [v9 mediaProfiles];
      [v3 unionSet:v11];
    }
  }

  v12 = [v4 services];
  [v3 unionSet:v12];

  return v3;
}

- (void)_presentAddAutomationViewController
{
  addAutomationPresentingFuture = [(HUAvailableRelatedTriggerItemModuleController *)self addAutomationPresentingFuture];

  if (!addAutomationPresentingFuture)
  {
    _createAddAutomationViewController = [(HUAvailableRelatedTriggerItemModuleController *)self _createAddAutomationViewController];
    mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
    v6 = [_createAddAutomationViewController reschedule:mainThreadScheduler];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __84__HUAvailableRelatedTriggerItemModuleController__presentAddAutomationViewController__block_invoke;
    v18[3] = &unk_277DBBEF8;
    v18[4] = self;
    v7 = [v6 flatMap:v18];
    [(HUAvailableRelatedTriggerItemModuleController *)self setAddAutomationPresentingFuture:v7];

    v8 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__HUAvailableRelatedTriggerItemModuleController__presentAddAutomationViewController__block_invoke_2;
    block[3] = &unk_277DB7558;
    v9 = v6;
    v16 = v9;
    selfCopy = self;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
    objc_initWeak(&location, self);
    addAutomationPresentingFuture2 = [(HUAvailableRelatedTriggerItemModuleController *)self addAutomationPresentingFuture];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__HUAvailableRelatedTriggerItemModuleController__presentAddAutomationViewController__block_invoke_3;
    v12[3] = &unk_277DB8CA8;
    objc_copyWeak(&v13, &location);
    v11 = [addAutomationPresentingFuture2 addCompletionBlock:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

id __84__HUAvailableRelatedTriggerItemModuleController__presentAddAutomationViewController__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setPresentedViewController:v4];
  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:*(a1 + 32) action:sel__addAutomationCancelButtonPressed];
  v6 = [v4 navigationItem];
  [v6 setLeftBarButtonItem:v5];

  v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v4];
  [v7 setModalPresentationStyle:2];
  v8 = [HUViewControllerPresentationRequest requestWithViewController:v7];
  [v8 setPreferredPresentationType:0];
  v9 = [*(a1 + 32) host];
  v10 = [v9 moduleController:*(a1 + 32) presentViewControllerForRequest:v8];

  return v10;
}

void __84__HUAvailableRelatedTriggerItemModuleController__presentAddAutomationViewController__block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = [*(a1 + 40) module];
    [v2 setAutomationItemIsLoading:1];
  }
}

void __84__HUAvailableRelatedTriggerItemModuleController__presentAddAutomationViewController__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained module];
  [v1 setAutomationItemIsLoading:0];

  [WeakRetained setAddAutomationPresentingFuture:0];
}

- (id)_createAddAutomationViewController
{
  presentedViewControllerDelegateWrapper = [(HUAvailableRelatedTriggerItemModuleController *)self presentedViewControllerDelegateWrapper];
  module = [(HUItemModuleController *)self module];
  sensorCharacteristics = [module sensorCharacteristics];
  if (![sensorCharacteristics count])
  {
    goto LABEL_4;
  }

  module2 = [(HUItemModuleController *)self module];
  actionBuilderFactories = [module2 actionBuilderFactories];
  if ([actionBuilderFactories count])
  {

LABEL_4:
    goto LABEL_5;
  }

  module3 = [(HUItemModuleController *)self module];
  eventOptionsItems = [module3 eventOptionsItems];
  v21 = [eventOptionsItems count];

  if (v21)
  {
LABEL_5:
    module4 = [(HUItemModuleController *)self module];
    actionBuilderFactories2 = [module4 actionBuilderFactories];
    if ([actionBuilderFactories2 count])
    {
      module5 = [(HUItemModuleController *)self module];
      sensorCharacteristics2 = [module5 sensorCharacteristics];
      v12 = [sensorCharacteristics2 count];

      if (!v12)
      {
        module6 = [(HUItemModuleController *)self module];
        actionBuilderFactories3 = [(HUTriggerTypePickerViewController *)module6 actionBuilderFactories];
        v15 = [(HUAvailableRelatedTriggerItemModuleController *)self _addAutomationViewControllerWithActionFactories:actionBuilderFactories3];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __83__HUAvailableRelatedTriggerItemModuleController__createAddAutomationViewController__block_invoke;
        v26[3] = &unk_277DB9858;
        v27 = presentedViewControllerDelegateWrapper;
        v16 = [v15 recover:v26];

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
    }

    v17 = MEMORY[0x277D2C900];
    module6 = [[HUTriggerTypePickerViewController alloc] initWithActionSetBuilder:0 delegate:presentedViewControllerDelegateWrapper];
    v16 = [v17 futureWithResult:module6];
    goto LABEL_10;
  }

  v22 = MEMORY[0x277CBEB98];
  module7 = [(HUItemModuleController *)self module];
  sensorCharacteristics3 = [module7 sensorCharacteristics];
  v25 = [v22 setWithArray:sensorCharacteristics3];
  v16 = [(HUAvailableRelatedTriggerItemModuleController *)self _addAutomationViewControllerWithSensorCharacteristics:v25];

LABEL_11:

  return v16;
}

id __83__HUAvailableRelatedTriggerItemModuleController__createAddAutomationViewController__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [[HUTriggerTypePickerViewController alloc] initWithActionSetBuilder:0 delegate:*(a1 + 32)];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

- (id)_addAutomationViewControllerWithSensorCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  presentedViewControllerDelegateWrapper = [(HUAvailableRelatedTriggerItemModuleController *)self presentedViewControllerDelegateWrapper];
  v6 = objc_alloc_init(HUTriggerBuilderContext);
  v7 = objc_alloc(MEMORY[0x277D14668]);
  module = [(HUItemModuleController *)self module];
  home = [module home];
  v10 = [v7 initWithHome:home context:v6];

  v11 = objc_alloc(MEMORY[0x277D14530]);
  v12 = [MEMORY[0x277CBEB98] set];
  v13 = [v11 initWithEventBuilders:v12];

  if ([characteristicsCopy count] == 1)
  {
    v32 = presentedViewControllerDelegateWrapper;
    anyObject = [characteristicsCopy anyObject];
    v15 = MEMORY[0x277CD1970];
    characteristicType = [anyObject characteristicType];
    v17 = [v15 hf_abnormalValueForSensorCharacteristicType:characteristicType];

    hf_continuousValueRangeCharacteristicTypes = [MEMORY[0x277CD1970] hf_continuousValueRangeCharacteristicTypes];
    characteristicType2 = [anyObject characteristicType];
    v20 = [hf_continuousValueRangeCharacteristicTypes containsObject:characteristicType2];

    if (v20)
    {
      module2 = [(HUItemModuleController *)self module];
      home2 = [module2 home];
      hf_characteristicValueManager = [home2 hf_characteristicValueManager];
      v24 = [hf_characteristicValueManager cachedValueForCharacteristic:anyObject];

      if (v24)
      {
        v25 = [MEMORY[0x277CD1CB0] numberRangeWithMaxValue:v24];
      }

      else
      {
        v25 = 0;
      }

      presentedViewControllerDelegateWrapper = v32;

      v17 = v25;
    }

    else
    {
      presentedViewControllerDelegateWrapper = v32;
    }

    v29 = [v13 setCharacteristics:characteristicsCopy triggerValue:v17];
    [v10 applyEventBuilderDiff:v29];
    v30 = [[HUCharacteristicTriggerEventViewController alloc] initWithCharacteristicEventBuilderItem:v13 triggerBuilder:v10 mode:0 delegate:presentedViewControllerDelegateWrapper];
    v28 = [MEMORY[0x277D2C900] futureWithResult:v30];
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __103__HUAvailableRelatedTriggerItemModuleController__addAutomationViewControllerWithSensorCharacteristics___block_invoke;
    aBlock[3] = &unk_277DB85D8;
    v34 = characteristicsCopy;
    v26 = _Block_copy(aBlock);
    v27 = [[HUAccessoryEventPickerViewController alloc] initWithEventBuilderItem:v13 triggerBuilder:v10 mode:0 source:0 delegate:presentedViewControllerDelegateWrapper];
    [(HUAccessoryEventPickerViewController *)v27 setFilter:v26];
    v28 = [MEMORY[0x277D2C900] futureWithResult:v27];
  }

  return v28;
}

uint64_t __103__HUAvailableRelatedTriggerItemModuleController__addAutomationViewControllerWithSensorCharacteristics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_28251AFC0])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 services];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __103__HUAvailableRelatedTriggerItemModuleController__addAutomationViewControllerWithSensorCharacteristics___block_invoke_2;
    v10[3] = &unk_277DB9560;
    v11 = *(a1 + 32);
    v8 = [v7 na_any:v10];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t __103__HUAvailableRelatedTriggerItemModuleController__addAutomationViewControllerWithSensorCharacteristics___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __103__HUAvailableRelatedTriggerItemModuleController__addAutomationViewControllerWithSensorCharacteristics___block_invoke_3;
  v6[3] = &unk_277DB9538;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

- (id)_addAutomationViewControllerWithActionFactories:(id)factories
{
  factoriesCopy = factories;
  presentedViewControllerDelegateWrapper = [(HUAvailableRelatedTriggerItemModuleController *)self presentedViewControllerDelegateWrapper];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__HUAvailableRelatedTriggerItemModuleController__addAutomationViewControllerWithActionFactories___block_invoke;
  v17[3] = &unk_277DBBF20;
  v17[4] = self;
  v6 = [factoriesCopy na_map:v17];

  v7 = [MEMORY[0x277D2C900] combineAllFutures:v6];
  v8 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__HUAvailableRelatedTriggerItemModuleController__addAutomationViewControllerWithActionFactories___block_invoke_2;
  block[3] = &unk_277DB8488;
  v16 = v7;
  v9 = v7;
  dispatch_after(v8, MEMORY[0x277D85CD0], block);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__HUAvailableRelatedTriggerItemModuleController__addAutomationViewControllerWithActionFactories___block_invoke_3;
  v13[3] = &unk_277DB7A90;
  v14 = presentedViewControllerDelegateWrapper;
  v10 = presentedViewControllerDelegateWrapper;
  v11 = [v9 flatMap:v13];

  return v11;
}

id __97__HUAvailableRelatedTriggerItemModuleController__addAutomationViewControllerWithActionFactories___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 module];
  v5 = [v4 home];
  v6 = [v3 currentStateActionBuildersForHome:v5];

  return v6;
}

uint64_t __97__HUAvailableRelatedTriggerItemModuleController__addAutomationViewControllerWithActionFactories___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isFinished];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 cancel];
  }

  return result;
}

id __97__HUAvailableRelatedTriggerItemModuleController__addAutomationViewControllerWithActionFactories___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 na_flatMap:&__block_literal_global_311];
  v4 = [[HUTriggerTypePickerViewController alloc] initWithActionSetBuilder:0 anonymousActionBuilders:v3 delegate:*(a1 + 32)];
  v5 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v5;
}

- (HUAccessoryButtonTableViewHeaderView)sectionEditButtonHeader
{
  WeakRetained = objc_loadWeakRetained(&self->_sectionEditButtonHeader);

  return WeakRetained;
}

@end