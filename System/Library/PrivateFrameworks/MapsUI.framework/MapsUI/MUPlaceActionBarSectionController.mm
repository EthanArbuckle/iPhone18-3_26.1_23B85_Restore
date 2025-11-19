@interface MUPlaceActionBarSectionController
- (MUPlaceActionBarSectionController)initWithMapItem:(id)a3 configuration:(id)a4 primaryButtonItem:(id)a5 secondaryButtonItems:(id)a6;
- (id)leadingActionBarItem;
- (id)menuActionBarItems;
- (id)trailingActionBarItems;
- (int)analyticsTargetForAction:(int)a3 presentationOptions:(id)a4;
- (void)_populateRevealedAnalyticsModule:(id)a3;
- (void)actionRowItemViewModelDidUpdate:(id)a3;
- (void)dealloc;
- (void)setSubmissionStatus:(id)a3;
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
    v3 = [(MUPlaceUnifiedActionRowSectionController *)self actionsRowItemViewModels];
    v4 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v3);
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
              v15 = [v11 leadingActionBarItem];
              v16 = [v15 type];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v18 = MEMORY[0x1E696F2E8];
                v19 = [(MUPlaceSectionController *)v22 mapItem];
                LODWORD(v18) = [v18 shouldShowRatingsCallToActionForMapItem:v19];

                if (!v18)
                {
                  goto LABEL_16;
                }

LABEL_15:
                [v23 addObject:v15];
              }

              else if (v15)
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
      v5 = [v3 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MUPlaceUnifiedActionRowSectionController *)self actionsRowItemViewModels];
  v5 = MUFindFirst(v4, &__block_literal_global_55);

  if (!v5)
  {
    v26 = 0;
    goto LABEL_9;
  }

  v6 = [(MUPlaceUnifiedActionRowSectionController *)self actionsRowView];
  v7 = [v6 itemViewForViewModel:v5];

  v8 = [MUPlaceActionBarTypeCustom alloc];
  v9 = [v5 symbolName];
  v10 = [v5 titleText];
  v11 = [(MUPlaceActionBarTypeCustom *)v8 initWithSymbolName:v9 text:v10];

  v12 = [MUPlaceActionBarItem alloc];
  v13 = [v5 accessibilityIdentifier];
  v32 = v11;
  v14 = [(MUPlaceActionBarItem *)v12 initWithType:v11 axID:v13];

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
  [v3 addObject:v14];
  v15 = [(MUPlaceUnifiedActionRowSectionController *)self actionsRowItemViewModels];
  v16 = MUFindFirst(v15, &__block_literal_global_62_0);

  v17 = [(MUPlaceUnifiedActionRowSectionController *)self actionsRowItemViewModels];
  v18 = MUFindFirst(v17, &__block_literal_global_64);

  if (v16)
  {
    v19 = [MUPlaceActionBarTypeCustom alloc];
    v20 = _MULocalizedStringFromThisBundle(@"Directions [Placecard]");
    v21 = [(MUPlaceActionBarTypeCustom *)v19 initWithSymbolName:@"arrow.trianglehead.turn.up.right.diamond" text:v20];

    v22 = [MUPlaceActionBarItem alloc];
    v23 = [v16 accessibilityIdentifier];
    v24 = [(MUPlaceActionBarItem *)v22 initWithType:v21 axID:v23];

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
    [v3 addObject:v24];
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
    v30 = [v18 accessibilityIdentifier];
    v24 = [(MUPlaceActionBarItem *)v29 initWithType:v21 axID:v30];

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
    [v3 addObject:v24];
    goto LABEL_7;
  }

LABEL_8:
  v26 = v3;

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
    v5 = 0;
  }

  else
  {
    v3 = [(MUPlaceUnifiedActionRowSectionController *)self actionsRowItemViewModels];
    v4 = MUFindFirst(v3, &__block_literal_global_21154);

    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 leadingActionBarItem];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
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

- (void)actionRowItemViewModelDidUpdate:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MUPlaceActionBarSectionController;
  [(MUPlaceUnifiedActionRowSectionController *)&v6 actionRowItemViewModelDidUpdate:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"MUPlaceActionBarDataSourceDidUpdateNotification" object:self];
  }
}

- (void)_populateRevealedAnalyticsModule:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69A24B8]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(MUPlaceUnifiedActionRowSectionController *)self actionsRowItemViewModels];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v23 + 1) + 8 * v11) analyticsButtonValues];
        [v6 _mapsui_addObjectsFromArrayIfNotNil:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
    [v4 setActionBar:v5];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (int)analyticsTargetForAction:(int)a3 presentationOptions:(id)a4
{
  v5 = [a4 isForActionBarMoreMenu];
  if (a3 == 6112)
  {
    v6 = 201;
  }

  else
  {
    v6 = 203;
  }

  if (a3 == 6003)
  {
    v7 = 201;
  }

  else
  {
    v7 = v6;
  }

  if (a3 == 337)
  {
    v8 = 201;
  }

  else
  {
    v8 = v7;
  }

  if (v5)
  {
    return 203;
  }

  else
  {
    return v8;
  }
}

- (void)setSubmissionStatus:(id)a3
{
  v5 = a3;
  v6 = self->_submissionStatus;
  v7 = v5;
  v8 = v7;
  if (v7 | v6)
  {
    v11 = v7;
    v9 = [v6 isEqual:v7];

    v8 = v11;
    if (!v9)
    {
      objc_storeStrong(&self->_submissionStatus, a3);
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 postNotificationName:@"MUPlaceActionBarDataSourceDidUpdateNotification" object:self];

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
    v7 = self;
    _os_log_impl(&dword_1C5620000, v3, OS_LOG_TYPE_INFO, "[%p] Deallocating", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MUPlaceActionBarSectionController;
  [(MUPlaceActionBarSectionController *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (MUPlaceActionBarSectionController)initWithMapItem:(id)a3 configuration:(id)a4 primaryButtonItem:(id)a5 secondaryButtonItems:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = MUPlaceActionBarSectionController;
  v13 = [(MUPlaceUnifiedActionRowSectionController *)&v17 initWithMapItem:a3 configuration:v10];
  if (v13)
  {
    v14 = MUGetMUPlaceActionBarSectionControllerLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134218754;
      v19 = v13;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_1C5620000, v14, OS_LOG_TYPE_INFO, "[%p] Initializing with config: %@\nprimary button:%@\nsecondary buttons:%@", buf, 0x2Au);
    }

    objc_storeStrong(&v13->_primaryButtonItem, a5);
    objc_storeStrong(&v13->_secondaryButtonItems, a6);
    v13->_alwaysSuppressPrimaryActionInActionBar = GEOConfigGetBOOL();
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

@end