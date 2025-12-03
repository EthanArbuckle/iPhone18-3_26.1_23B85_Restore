@interface MUPlaceActionBarSectionController
- (MUPlaceActionBarSectionController)initWithMapItem:(id)item configuration:(id)configuration primaryButtonItem:(id)buttonItem secondaryButtonItems:(id)items;
- (id)leadingActionBarItem;
- (id)menuActionBarItems;
- (id)trailingActionBarItems;
- (int)analyticsTargetForAction:(int)action presentationOptions:(id)options;
- (void)_populateRevealedAnalyticsModule:(id)module;
- (void)actionRowItemViewModelDidUpdate:(id)update;
- (void)dealloc;
- (void)setSubmissionStatus:(id)status;
@end

@implementation MUPlaceActionBarSectionController

- (id)trailingActionBarItems
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(MUPlaceUnifiedActionRowSectionControllerConfiguration *)self->super._configuration showMoreButtonIfAvailable])
  {
    [MEMORY[0x1E695DF70] array];
    v23 = v22 = self;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    actionsRowItemViewModels = [(MUPlaceUnifiedActionRowSectionController *)self actionsRowItemViewModels];
    v4 = [actionsRowItemViewModels countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v4)
    {
      goto LABEL_19;
    }

    v5 = v4;
    v6 = *v25;
    v7 = 0x1E8216000uLL;
    p_superclass = &OBJC_METACLASS___MUPlaceActionControlledItemViewModel.superclass;
    while (1)
    {
      v9 = 0;
      v10 = sel_leadingActionBarItem;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(actionsRowItemViewModels);
        }

        v11 = *(*(&v24 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = *(v7 + 432);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector())
            {
              v13 = v10;
              v14 = p_superclass;
              leadingActionBarItem = [v11 leadingActionBarItem];
              type = [leadingActionBarItem type];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v18 = MEMORY[0x1E696F2E8];
                mapItem = [(MUPlaceSectionController *)v22 mapItem];
                LODWORD(v18) = [v18 shouldShowRatingsCallToActionForMapItem:mapItem];

                if (!v18)
                {
                  goto LABEL_16;
                }

LABEL_15:
                [v23 addObject:leadingActionBarItem];
              }

              else if (leadingActionBarItem)
              {
                goto LABEL_15;
              }

LABEL_16:

              p_superclass = v14;
              v10 = v13;
              v7 = 0x1E8216000;
            }
          }
        }

        ++v9;
      }

      while (v5 != v9);
      v5 = [actionsRowItemViewModels countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v5)
      {
LABEL_19:

        goto LABEL_21;
      }
    }
  }

  v23 = 0;
LABEL_21:
  v20 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)menuActionBarItems
{
  array = [MEMORY[0x1E695DF70] array];
  actionsRowItemViewModels = [(MUPlaceUnifiedActionRowSectionController *)self actionsRowItemViewModels];
  v5 = MUFindFirst(actionsRowItemViewModels, &__block_literal_global_55);

  if (!v5)
  {
    v26 = 0;
    goto LABEL_9;
  }

  actionsRowView = [(MUPlaceUnifiedActionRowSectionController *)self actionsRowView];
  v7 = [actionsRowView itemViewForViewModel:v5];

  v8 = [MUPlaceActionBarTypeCustom alloc];
  symbolName = [v5 symbolName];
  titleText = [v5 titleText];
  v11 = [(MUPlaceActionBarTypeCustom *)v8 initWithSymbolName:symbolName text:titleText];

  v12 = [MUPlaceActionBarItem alloc];
  accessibilityIdentifier = [v5 accessibilityIdentifier];
  v32 = v11;
  v14 = [(MUPlaceActionBarItem *)v12 initWithType:v11 axID:accessibilityIdentifier];

  objc_initWeak(location, self);
  objc_initWeak(&from, v7);
  objc_initWeak(&v45, v5);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __55__MUPlaceActionBarSectionController_menuActionBarItems__block_invoke_2;
  v41[3] = &unk_1E821A4E8;
  objc_copyWeak(&v42, &from);
  objc_copyWeak(&v43, &v45);
  objc_copyWeak(&v44, location);
  [(MUPlaceActionBarItem *)v14 addMenuProvider:v41];
  [array addObject:v14];
  actionsRowItemViewModels2 = [(MUPlaceUnifiedActionRowSectionController *)self actionsRowItemViewModels];
  v16 = MUFindFirst(actionsRowItemViewModels2, &__block_literal_global_62_0);

  actionsRowItemViewModels3 = [(MUPlaceUnifiedActionRowSectionController *)self actionsRowItemViewModels];
  v18 = MUFindFirst(actionsRowItemViewModels3, &__block_literal_global_64);

  if (v16)
  {
    v19 = [MUPlaceActionBarTypeCustom alloc];
    v20 = _MULocalizedStringFromThisBundle(@"Directions [Placecard]");
    v21 = [(MUPlaceActionBarTypeCustom *)v19 initWithSymbolName:@"arrow.trianglehead.turn.up.right.diamond" text:v20];

    v22 = [MUPlaceActionBarItem alloc];
    accessibilityIdentifier2 = [v16 accessibilityIdentifier];
    v24 = [(MUPlaceActionBarItem *)v22 initWithType:v21 axID:accessibilityIdentifier2];

    objc_initWeak(&v40, self);
    objc_initWeak(&v39, v16);
    v25 = v36;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __55__MUPlaceActionBarSectionController_menuActionBarItems__block_invoke_5;
    v36[3] = &unk_1E821A510;
    objc_copyWeak(&v37, &v40);
    objc_copyWeak(&v38, &v39);
    [(MUPlaceActionBarItem *)v24 addHandler:v36];
    [array addObject:v24];
LABEL_7:
    objc_destroyWeak(v25 + 5);
    objc_destroyWeak(v25 + 4);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&v40);

    goto LABEL_8;
  }

  if (v18)
  {
    v27 = [MUPlaceActionBarTypeCustom alloc];
    v28 = _MULocalizedStringFromThisBundle(@"Add Stop [Placecard]");
    v21 = [(MUPlaceActionBarTypeCustom *)v27 initWithSymbolName:@"arrow.trianglehead.turn.up.right.diamond" text:v28];

    v29 = [MUPlaceActionBarItem alloc];
    accessibilityIdentifier3 = [v18 accessibilityIdentifier];
    v24 = [(MUPlaceActionBarItem *)v29 initWithType:v21 axID:accessibilityIdentifier3];

    objc_initWeak(&v40, self);
    objc_initWeak(&v39, v18);
    v25 = v33;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __55__MUPlaceActionBarSectionController_menuActionBarItems__block_invoke_6;
    v33[3] = &unk_1E821A510;
    objc_copyWeak(&v34, &v40);
    objc_copyWeak(&v35, &v39);
    [(MUPlaceActionBarItem *)v24 addHandler:v33];
    [array addObject:v24];
    goto LABEL_7;
  }

LABEL_8:
  v26 = array;

  objc_destroyWeak(&v44);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v45);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);

LABEL_9:

  return v26;
}

id __55__MUPlaceActionBarSectionController_menuActionBarItems__block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(a1 + 5);
    if (v8)
    {
      v9 = objc_loadWeakRetained(a1 + 6);
      if (v9)
      {
        v10 = [WeakRetained _menuProvider];
        v11 = (v10)[2](v10, v5, v6);

        v12 = objc_opt_new();
        [v12 setIsForActionBar:1];
        v13 = [v9 actionsRowView];
        [v9 actionsRowView:v13 didPresentMenuForViewModel:v8 presentationOptions:v12];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __55__MUPlaceActionBarSectionController_menuActionBarItems__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      v4 = objc_opt_new();
      [v4 setIsForActionBar:1];
      [v4 setIsForActionBarMoreMenu:1];
      v5 = [v6 actionsRowView];
      [v6 actionsRowView:v5 didSelectViewModel:v3 presentationOptions:v4];
    }

    WeakRetained = v6;
  }
}

void __55__MUPlaceActionBarSectionController_menuActionBarItems__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      v4 = objc_opt_new();
      [v4 setIsForActionBar:1];
      [v4 setIsForActionBarMoreMenu:1];
      v5 = [v6 actionsRowView];
      [v6 actionsRowView:v5 didSelectViewModel:v3 presentationOptions:v4];
    }

    WeakRetained = v6;
  }
}

uint64_t __55__MUPlaceActionBarSectionController_menuActionBarItems__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __55__MUPlaceActionBarSectionController_menuActionBarItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __55__MUPlaceActionBarSectionController_menuActionBarItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)leadingActionBarItem
{
  if (self->_alwaysSuppressPrimaryActionInActionBar || [(GEOButtonItem *)self->_primaryButtonItem buttonType]!= 8)
  {
    leadingActionBarItem = 0;
  }

  else
  {
    actionsRowItemViewModels = [(MUPlaceUnifiedActionRowSectionController *)self actionsRowItemViewModels];
    v4 = MUFindFirst(actionsRowItemViewModels, &__block_literal_global_21154);

    if (objc_opt_respondsToSelector())
    {
      leadingActionBarItem = [v4 leadingActionBarItem];
    }

    else
    {
      leadingActionBarItem = 0;
    }
  }

  return leadingActionBarItem;
}

uint64_t __57__MUPlaceActionBarSectionController_leadingActionBarItem__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)actionRowItemViewModelDidUpdate:(id)update
{
  updateCopy = update;
  v6.receiver = self;
  v6.super_class = MUPlaceActionBarSectionController;
  [(MUPlaceUnifiedActionRowSectionController *)&v6 actionRowItemViewModelDidUpdate:updateCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MUPlaceActionBarDataSourceDidUpdateNotification" object:self];
  }
}

- (void)_populateRevealedAnalyticsModule:(id)module
{
  v29 = *MEMORY[0x1E69E9840];
  moduleCopy = module;
  v5 = objc_alloc_init(MEMORY[0x1E69A24B8]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  actionsRowItemViewModels = [(MUPlaceUnifiedActionRowSectionController *)self actionsRowItemViewModels];
  v8 = [actionsRowItemViewModels countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(actionsRowItemViewModels);
        }

        analyticsButtonValues = [*(*(&v23 + 1) + 8 * v11) analyticsButtonValues];
        [v6 _mapsui_addObjectsFromArrayIfNotNil:analyticsButtonValues];

        ++v11;
      }

      while (v9 != v11);
      v9 = [actionsRowItemViewModels countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v5 addButtons:{*(*(&v19 + 1) + 8 * v17++), v19}];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  if ([v13 count])
  {
    [moduleCopy setActionBar:v5];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (int)analyticsTargetForAction:(int)action presentationOptions:(id)options
{
  isForActionBarMoreMenu = [options isForActionBarMoreMenu];
  if (action == 6112)
  {
    v6 = 201;
  }

  else
  {
    v6 = 203;
  }

  if (action == 6003)
  {
    v7 = 201;
  }

  else
  {
    v7 = v6;
  }

  if (action == 337)
  {
    v8 = 201;
  }

  else
  {
    v8 = v7;
  }

  if (isForActionBarMoreMenu)
  {
    return 203;
  }

  else
  {
    return v8;
  }
}

- (void)setSubmissionStatus:(id)status
{
  statusCopy = status;
  v6 = self->_submissionStatus;
  v7 = statusCopy;
  v8 = v7;
  if (v7 | v6)
  {
    v11 = v7;
    v9 = [v6 isEqual:v7];

    v8 = v11;
    if (!v9)
    {
      objc_storeStrong(&self->_submissionStatus, status);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"MUPlaceActionBarDataSourceDidUpdateNotification" object:self];

      v8 = v11;
    }
  }

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MUGetMUPlaceActionBarSectionControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_INFO, "[%p] Deallocating", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MUPlaceActionBarSectionController;
  [(MUPlaceActionBarSectionController *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (MUPlaceActionBarSectionController)initWithMapItem:(id)item configuration:(id)configuration primaryButtonItem:(id)buttonItem secondaryButtonItems:(id)items
{
  v26 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  buttonItemCopy = buttonItem;
  itemsCopy = items;
  v17.receiver = self;
  v17.super_class = MUPlaceActionBarSectionController;
  v13 = [(MUPlaceUnifiedActionRowSectionController *)&v17 initWithMapItem:item configuration:configurationCopy];
  if (v13)
  {
    v14 = MUGetMUPlaceActionBarSectionControllerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134218754;
      v19 = v13;
      v20 = 2112;
      v21 = configurationCopy;
      v22 = 2112;
      v23 = buttonItemCopy;
      v24 = 2112;
      v25 = itemsCopy;
      _os_log_impl(&dword_1C5620000, v14, OS_LOG_TYPE_INFO, "[%p] Initializing with config: %@\nprimary button:%@\nsecondary buttons:%@", buf, 0x2Au);
    }

    objc_storeStrong(&v13->_primaryButtonItem, buttonItem);
    objc_storeStrong(&v13->_secondaryButtonItems, items);
    v13->_alwaysSuppressPrimaryActionInActionBar = GEOConfigGetBOOL();
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

@end