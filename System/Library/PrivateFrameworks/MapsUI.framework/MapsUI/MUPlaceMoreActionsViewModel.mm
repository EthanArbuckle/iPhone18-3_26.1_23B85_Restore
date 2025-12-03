@interface MUPlaceMoreActionsViewModel
- (MUPlaceMoreActionsViewModel)initWithGroupedExternalActions:(id)actions promotedSystemActionTypes:(id)types excludedSystemActionTypes:(id)actionTypes menuActionProvider:(id)provider amsResultProvider:(id)resultProvider iconCache:(id)cache analyticsModuleType:(int64_t)type singleVendorAnalyticsTarget:(int)self0 multipleVendorAnalyticsTarget:(int)self1 appleMediaServicesSource:(int64_t)self2 externalActionHandler:(id)self3 analyticsHandler:(id)self4;
- (id)_allExternalActionMenuRevealButtons;
- (id)analyticsButtonValues;
- (id)buildMenuWithPresentationOptions:(id)options;
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

        actionController = [*(*(&v24 + 1) + 8 * i) actionController];
        externalAction = [actionController externalAction];
        v11 = MUExternalActionRevealedAnalyticsModuleButtonsForAction(externalAction);

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
  _allExternalActionMenuRevealButtons = [(MUPlaceMoreActionsViewModel *)self _allExternalActionMenuRevealButtons];
  [v3 _mapsui_addObjectsFromArrayIfNotNil:_allExternalActionMenuRevealButtons];
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

- (id)buildMenuWithPresentationOptions:(id)options
{
  v35 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  selfCopy = self;
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
        actionController = [v9 actionController];
        externalAction = [actionController externalAction];
        actionProviders = [externalAction actionProviders];
        v13 = [actionProviders count];

        if (v13 == 1)
        {
          symbolName = [v9 buildMenuElementsWithPresentationOptions:optionsCopy];
          [v29 addObjectsFromArray:symbolName];
        }

        else
        {
          symbolName = [v9 symbolName];
          v15 = [MEMORY[0x1E69DCAB8] _systemImageNamed:symbolName shape:0 fill:0];
          if (!v15)
          {
            v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:symbolName];
          }

          v16 = MEMORY[0x1E69DCC60];
          actionName = [v9 actionName];
          actionName2 = [v9 actionName];
          v19 = [v9 buildMenuElementsWithPresentationOptions:optionsCopy];
          v20 = [v16 menuWithTitle:actionName image:v15 identifier:actionName2 options:0 children:v19];

          [v29 addObject:v20];
        }
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->_menuProvider);
  v22 = [WeakRetained createHeaderButtonsMenuWithPromotedSystemActionTypes:selfCopy->_promotedSystemActionTypes excludedSystemActionTypes:selfCopy->_excludedSystemActionTypes presentationOptions:optionsCopy];

  children = [v22 children];
  [v29 addObjectsFromArray:children];

  v24 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F44CA030 image:0 identifier:@"Parent" options:1 children:v29];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (MUPlaceMoreActionsViewModel)initWithGroupedExternalActions:(id)actions promotedSystemActionTypes:(id)types excludedSystemActionTypes:(id)actionTypes menuActionProvider:(id)provider amsResultProvider:(id)resultProvider iconCache:(id)cache analyticsModuleType:(int64_t)type singleVendorAnalyticsTarget:(int)self0 multipleVendorAnalyticsTarget:(int)self1 appleMediaServicesSource:(int64_t)self2 externalActionHandler:(id)self3 analyticsHandler:(id)self4
{
  v55 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  typesCopy = types;
  actionTypesCopy = actionTypes;
  providerCopy = provider;
  resultProviderCopy = resultProvider;
  cacheCopy = cache;
  handlerCopy = handler;
  analyticsHandlerCopy = analyticsHandler;
  v53.receiver = self;
  v53.super_class = MUPlaceMoreActionsViewModel;
  v24 = [(MUActionRowItemViewModel *)&v53 init];
  v25 = v24;
  if (v24)
  {
    objc_storeWeak(&v24->_menuProvider, providerCopy);
    v26 = [typesCopy copy];
    promotedSystemActionTypes = v25->_promotedSystemActionTypes;
    v25->_promotedSystemActionTypes = v26;

    v28 = [actionTypesCopy copy];
    excludedSystemActionTypes = v25->_excludedSystemActionTypes;
    v42 = v25;
    v25->_excludedSystemActionTypes = v28;

    v43 = actionsCopy;
    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v30 = actionsCopy;
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
            v36 = [[MUGroupedExternalActionController alloc] initWithGroupedExternalAction:v35 amsResultProvider:resultProviderCopy supportsMultipleVendorSelection:1 actionHandler:handlerCopy analyticsHandler:analyticsHandlerCopy];
            [(MUGroupedExternalActionController *)v36 setMultipleVendorAnalyticsTarget:analyticsTarget];
            [(MUGroupedExternalActionController *)v36 setSingleVendorAnalyticsTarget:target];
            [(MUGroupedExternalActionController *)v36 setAnalyticsModuleType:type];
            [(MUGroupedExternalActionController *)v36 setSource:source];
            v37 = [[MUPlaceExternalActionMenuHelper alloc] initWithExternalActionController:v36 iconCache:cacheCopy];
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

    actionsCopy = v43;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v25;
}

@end