@interface MUPlaceMoreActionsViewModel
- (MUPlaceMoreActionsViewModel)initWithGroupedExternalActions:(id)a3 promotedSystemActionTypes:(id)a4 excludedSystemActionTypes:(id)a5 menuActionProvider:(id)a6 amsResultProvider:(id)a7 iconCache:(id)a8 analyticsModuleType:(int64_t)a9 singleVendorAnalyticsTarget:(int)a10 multipleVendorAnalyticsTarget:(int)a11 appleMediaServicesSource:(int64_t)a12 externalActionHandler:(id)a13 analyticsHandler:(id)a14;
- (id)_allExternalActionMenuRevealButtons;
- (id)analyticsButtonValues;
- (id)buildMenuWithPresentationOptions:(id)a3;
@end

@implementation MUPlaceMoreActionsViewModel

- (id)_allExternalActionMenuRevealButtons
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = self->_externalActionMenuHelpers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v24 + 1) + 8 * i) actionController];
        v10 = [v9 externalAction];
        v11 = MUExternalActionRevealedAnalyticsModuleButtonsForAction(v10);

        if ([v11 count] >= 2)
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v21;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v21 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                [*(*(&v20 + 1) + 8 * j) setIsGroup:1];
              }

              v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v14);
          }
        }

        [v3 _mapsui_addObjectsFromArrayIfNotNil:v11];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v17 = [v3 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)analyticsButtonValues
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(MUPlaceMoreActionsViewModel *)self _allExternalActionMenuRevealButtons];
  [v3 _mapsui_addObjectsFromArrayIfNotNil:v4];
  v5 = MUMap(self->_promotedSystemActionTypes, &__block_literal_global_10160);
  [v3 _mapsui_addObjectsFromArrayIfNotNil:v5];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v14 + 1) + 8 * i) setIsGroup:{1, v14}];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [v6 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t __52__MUPlaceMoreActionsViewModel_analyticsButtonValues__block_invoke(uint64_t a1, void *a2)
{
  v2 = MURevealedButtonModuleTypeForActionType([a2 integerValue]);
  v3 = MEMORY[0x1E69A24B0];

  return [v3 moduleButtonForType:v2];
}

- (id)buildMenuWithPresentationOptions:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27 = self;
  obj = self->_externalActionMenuHelpers;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 actionController];
        v11 = [v10 externalAction];
        v12 = [v11 actionProviders];
        v13 = [v12 count];

        if (v13 == 1)
        {
          v14 = [v9 buildMenuElementsWithPresentationOptions:v4];
          [v29 addObjectsFromArray:v14];
        }

        else
        {
          v14 = [v9 symbolName];
          v15 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v14 shape:0 fill:0];
          if (!v15)
          {
            v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:v14];
          }

          v16 = MEMORY[0x1E69DCC60];
          v17 = [v9 actionName];
          v18 = [v9 actionName];
          v19 = [v9 buildMenuElementsWithPresentationOptions:v4];
          v20 = [v16 menuWithTitle:v17 image:v15 identifier:v18 options:0 children:v19];

          [v29 addObject:v20];
        }
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  WeakRetained = objc_loadWeakRetained(&v27->_menuProvider);
  v22 = [WeakRetained createHeaderButtonsMenuWithPromotedSystemActionTypes:v27->_promotedSystemActionTypes excludedSystemActionTypes:v27->_excludedSystemActionTypes presentationOptions:v4];

  v23 = [v22 children];
  [v29 addObjectsFromArray:v23];

  v24 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F44CA030 image:0 identifier:@"Parent" options:1 children:v29];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (MUPlaceMoreActionsViewModel)initWithGroupedExternalActions:(id)a3 promotedSystemActionTypes:(id)a4 excludedSystemActionTypes:(id)a5 menuActionProvider:(id)a6 amsResultProvider:(id)a7 iconCache:(id)a8 analyticsModuleType:(int64_t)a9 singleVendorAnalyticsTarget:(int)a10 multipleVendorAnalyticsTarget:(int)a11 appleMediaServicesSource:(int64_t)a12 externalActionHandler:(id)a13 analyticsHandler:(id)a14
{
  v55 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v48 = a7;
  v47 = a8;
  v46 = a13;
  v45 = a14;
  v53.receiver = self;
  v53.super_class = MUPlaceMoreActionsViewModel;
  v24 = [(MUActionRowItemViewModel *)&v53 init];
  v25 = v24;
  if (v24)
  {
    objc_storeWeak(&v24->_menuProvider, v23);
    v26 = [v21 copy];
    promotedSystemActionTypes = v25->_promotedSystemActionTypes;
    v25->_promotedSystemActionTypes = v26;

    v28 = [v22 copy];
    excludedSystemActionTypes = v25->_excludedSystemActionTypes;
    v42 = v25;
    v25->_excludedSystemActionTypes = v28;

    v43 = v20;
    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v30 = v20;
    v31 = [v30 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v50;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v50 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v49 + 1) + 8 * i);
          if ([v35 possiblyHasSupportedIntegrations])
          {
            v36 = [[MUGroupedExternalActionController alloc] initWithGroupedExternalAction:v35 amsResultProvider:v48 supportsMultipleVendorSelection:1 actionHandler:v46 analyticsHandler:v45];
            [(MUGroupedExternalActionController *)v36 setMultipleVendorAnalyticsTarget:a11];
            [(MUGroupedExternalActionController *)v36 setSingleVendorAnalyticsTarget:a10];
            [(MUGroupedExternalActionController *)v36 setAnalyticsModuleType:a9];
            [(MUGroupedExternalActionController *)v36 setSource:a12];
            v37 = [[MUPlaceExternalActionMenuHelper alloc] initWithExternalActionController:v36 iconCache:v47];
            [(MUPlaceExternalActionMenuHelper *)v37 setIsQuickAction:1];
            [v44 addObject:v37];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v32);
    }

    v38 = [v44 copy];
    v25 = v42;
    externalActionMenuHelpers = v42->_externalActionMenuHelpers;
    v42->_externalActionMenuHelpers = v38;

    v20 = v43;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v25;
}

@end