@interface MUPlaceUnifiedActionRowSectionController
- (MUOfflineMapProvider)offlineMapProvider;
- (MUPlaceUnifiedActionRowSectionController)initWithMapItem:(id)item configuration:(id)configuration;
- (MUPlaceUnifiedActionRowSectionControllerDelegate)actionDelegate;
- (id)leadingActionBarItem;
- (id)menuActionBarItems;
- (id)menuElementForActionItem:(id)item;
- (id)menuForActionItem:(id)item;
- (id)trailingActionBarItems;
- (void)_buildButtonLayout;
- (void)_createSectionView;
- (void)_populateRevealedAnalyticsModule:(id)module;
- (void)_updateActions:(id)actions;
- (void)_updateHasContent;
- (void)actionsRowView:(id)view didPresentMenuForViewModel:(id)model presentationOptions:(id)options;
- (void)actionsRowView:(id)view didSelectViewModel:(id)model presentationOptions:(id)options;
- (void)setOfflineFeatureDiscoveryView:(id)view;
- (void)setOfflineMapProvider:(id)provider;
- (void)setSecondaryActionButtonController:(id)controller;
@end

@implementation MUPlaceUnifiedActionRowSectionController

- (MUOfflineMapProvider)offlineMapProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_offlineMapProvider);

  return WeakRetained;
}

- (MUPlaceUnifiedActionRowSectionControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (id)menuActionBarItems
{
  actionsRowView = self->_actionsRowView;
  if (objc_opt_respondsToSelector())
  {
    menuActionBarItems = [(MUGroupedActionsRowView *)self->_actionsRowView menuActionBarItems];
  }

  else
  {
    menuActionBarItems = 0;
  }

  return menuActionBarItems;
}

- (id)trailingActionBarItems
{
  actionsRowView = self->_actionsRowView;
  if (objc_opt_respondsToSelector())
  {
    trailingActionBarItems = [(MUGroupedActionsRowView *)self->_actionsRowView trailingActionBarItems];
  }

  else
  {
    trailingActionBarItems = 0;
  }

  return trailingActionBarItems;
}

- (id)leadingActionBarItem
{
  actionsRowView = self->_actionsRowView;
  if (objc_opt_respondsToSelector())
  {
    leadingActionBarItem = [(MUGroupedActionsRowView *)self->_actionsRowView leadingActionBarItem];
  }

  else
  {
    leadingActionBarItem = 0;
  }

  return leadingActionBarItem;
}

- (void)_updateActions:(id)actions
{
  v27 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  if (([(NSArray *)self->_actionItemViewModels isEqual:actionsCopy]& 1) == 0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = self->_actionItemViewModels;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v21 + 1) + 8 * v10++) removeObserver:self];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }

    objc_storeStrong(&self->_actionItemViewModels, actions);
    [(MUGroupedActionsRowView *)self->_actionsRowView setViewModels:actionsCopy];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = self->_actionItemViewModels;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v17 + 1) + 8 * v15++) addObserver:{self, v17}];
        }

        while (v13 != v15);
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }

    [(MUPlaceUnifiedActionRowSectionController *)self _updateHasContent];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)setOfflineFeatureDiscoveryView:(id)view
{
  viewCopy = view;
  if (self->_offlineFeatureDiscoveryView != viewCopy)
  {
    v8 = viewCopy;
    objc_storeStrong(&self->_offlineFeatureDiscoveryView, view);
    layoutBuilder = [(MUPlaceUnifiedActionRowSectionController *)self layoutBuilder];
    downloadOfflineViewModel = [layoutBuilder downloadOfflineViewModel];

    [downloadOfflineViewModel setFeatureDiscoveryView:self->_offlineFeatureDiscoveryView];
    viewCopy = v8;
  }
}

- (void)setOfflineMapProvider:(id)provider
{
  objc_storeWeak(&self->_offlineMapProvider, provider);

  [(MUPlaceUnifiedActionRowSectionController *)self _buildButtonLayout];
}

- (void)setSecondaryActionButtonController:(id)controller
{
  controllerCopy = controller;
  configuration = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
  secondaryActionButtonController = [configuration secondaryActionButtonController];

  v6 = controllerCopy;
  if (secondaryActionButtonController != controllerCopy)
  {
    configuration2 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
    [configuration2 setSecondaryActionButtonController:controllerCopy];

    configuration3 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
    buttonModuleConfiguration = [configuration3 buttonModuleConfiguration];

    v6 = controllerCopy;
    if (!buttonModuleConfiguration)
    {
      [(MUPlaceUnifiedActionRowSectionController *)self _buildButtonLayout];
      v6 = controllerCopy;
    }
  }
}

- (void)_buildButtonLayout
{
  layoutBuilder = [(MUPlaceUnifiedActionRowSectionController *)self layoutBuilder];
  buildButtonLayout = [layoutBuilder buildButtonLayout];

  [(MUPlaceUnifiedActionRowSectionController *)self _updateActions:buildButtonLayout];
}

- (void)actionsRowView:(id)view didPresentMenuForViewModel:(id)model presentationOptions:(id)options
{
  modelCopy = model;
  optionsCopy = options;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = modelCopy;
    if ([optionsCopy isForActionBar])
    {
      v9 = 6112;
    }

    else
    {
      v9 = 209;
    }

    externalActionMenuRevealButtons = [v8 externalActionMenuRevealButtons];
    if ([optionsCopy isForActionBarMoreMenu])
    {
      v11 = @"SECONDARY";
    }

    else if ([optionsCopy isForActionBar])
    {
      v11 = @"PRIMARY";
    }

    else
    {
      v11 = 0;
    }

    [(MUPlaceSectionController *)self captureInfoCardPartnerAction:v9 eventValue:0 sharedStateButtonList:externalActionMenuRevealButtons presentationOptions:optionsCopy classification:v11];
  }
}

- (void)actionsRowView:(id)view didSelectViewModel:(id)model presentationOptions:(id)options
{
  v38[5] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  configuration = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isForActionBar = 1;
  }

  else
  {
    isForActionBar = [optionsCopy isForActionBar];
  }

  v11 = [(MUPlaceUnifiedActionRowSectionController *)self analyticsModuleForAction:0 presentationOptions:optionsCopy];
  if (isForActionBar)
  {
    v12 = [MEMORY[0x1E69A1B10] moduleFromModuleType:46];

    v11 = v12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37[0] = *MEMORY[0x1E696F118];
    sourceView = [optionsCopy sourceView];
    v14 = *MEMORY[0x1E696F108];
    v38[0] = sourceView;
    v38[1] = v11;
    v15 = *MEMORY[0x1E696F100];
    v37[1] = v14;
    v37[2] = v15;
    v38[2] = MEMORY[0x1E695E110];
    v37[3] = *MEMORY[0x1E696F0F0];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:isForActionBar];
    v38[3] = v16;
    v37[4] = *MEMORY[0x1E696F0F8];
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(optionsCopy, "isForActionBarMoreMenu")}];
    v38[4] = v17;
    actionDelegate = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:5];

    configuration2 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
    actionManager = [configuration2 actionManager];
    actionRowItem = [modelCopy actionRowItem];
    resolvedActionItem = [actionRowItem resolvedActionItem];
    [actionManager performAction:resolvedActionItem options:actionDelegate completion:0];

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    actionDelegate = [(MUPlaceUnifiedActionRowSectionController *)self actionDelegate];
    configuration3 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
    [actionDelegate sectionController:self didSelectPrimaryButtonType:objc_msgSend(configuration3 options:{"primaryButtonType"), optionsCopy}];
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35[0] = *MEMORY[0x1E696F118];
    v25 = modelCopy;
    sourceView2 = [optionsCopy sourceView];
    v27 = *MEMORY[0x1E696F108];
    v36[0] = sourceView2;
    v36[1] = v11;
    v28 = *MEMORY[0x1E696F100];
    v35[1] = v27;
    v35[2] = v28;
    v36[2] = MEMORY[0x1E695E110];
    v35[3] = *MEMORY[0x1E696F0F0];
    v29 = [MEMORY[0x1E696AD98] numberWithBool:isForActionBar];
    v36[3] = v29;
    v35[4] = *MEMORY[0x1E696F0F8];
    v30 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(optionsCopy, "isForActionBarMoreMenu")}];
    v36[4] = v30;
    actionDelegate = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:5];

    v31 = MEMORY[0x1E696F308];
    actionItemType = [v25 actionItemType];

    configuration3 = [v31 actionItemWithType:actionItemType];
    configuration4 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
    actionManager2 = [configuration4 actionManager];
    [actionManager2 performAction:configuration3 options:actionDelegate completion:0];

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [modelCopy performSingleVendorSelectionActionWithPresentationOptions:optionsCopy];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [modelCopy performWithPresentationOptions:optionsCopy];
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  actionDelegate = [(MUPlaceUnifiedActionRowSectionController *)self actionDelegate];
  [actionDelegate sectionControllerDidSelectViewContactButton:self];
LABEL_12:

LABEL_13:
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_populateRevealedAnalyticsModule:(id)module
{
  v29 = *MEMORY[0x1E69E9840];
  moduleCopy = module;
  v5 = objc_alloc_init(MEMORY[0x1E69A24E0]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_actionItemViewModels;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
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

        analyticsButtonValues = [*(*(&v23 + 1) + 8 * v11) analyticsButtonValues];
        [v6 _mapsui_addObjectsFromArrayIfNotNil:analyticsButtonValues];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
    [moduleCopy setUnifiedActionRow:v5];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_updateHasContent
{
  hasContent = [(MUGroupedActionsRowView *)self->_actionsRowView hasContent];
  if (self->_hasContent != hasContent)
  {
    self->_hasContent = hasContent;
    delegate = [(MUPlaceSectionController *)self delegate];
    [delegate placeSectionControllerDidUpdateContent:self];
  }
}

- (id)menuElementForActionItem:(id)item
{
  itemCopy = item;
  configuration = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
  actionRowMenuProvider = [configuration actionRowMenuProvider];
  v7 = [actionRowMenuProvider menuElementForActionItem:itemCopy];

  return v7;
}

- (id)menuForActionItem:(id)item
{
  v3 = [(MUPlaceUnifiedActionRowSectionController *)self menuElementForActionItem:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_createSectionView
{
  v12 = +[MUGroupedActionsRowViewConfiguration defaultConfiguration];
  [v12 setUseVibrancy:{+[MUInfoCardStyle hasExternallyProvidedTintColor](MUInfoCardStyle, "hasExternallyProvidedTintColor")}];
  v3 = [[MUGroupedActionsRowView alloc] initWithConfiguration:v12];
  actionsRowView = self->_actionsRowView;
  self->_actionsRowView = v3;

  [(MUGroupedActionsRowView *)self->_actionsRowView setPreservesSuperviewLayoutMargins:0];
  [(MUGroupedActionsRowView *)self->_actionsRowView setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
  [(MUGroupedActionsRowView *)self->_actionsRowView setDelegate:self];
  [(MUPlaceUnifiedActionRowSectionController *)self _buildButtonLayout];
  v5 = [MUPlaceSectionView insetButtonSectionViewforContentView:self->_actionsRowView];
  sectionView = self->_sectionView;
  self->_sectionView = v5;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v9 = [bundleIdentifier isEqualToString:*MEMORY[0x1E69A1A78]];

  if ((v9 & 1) == 0)
  {
    v10 = +[MUPlaceholderGridCache unretainedInstance];
    placeholderGridCache = self->_placeholderGridCache;
    self->_placeholderGridCache = v10;

    [(MUPlaceholderGridCache *)self->_placeholderGridCache loadPlaceholderGridImages];
  }
}

- (MUPlaceUnifiedActionRowSectionController)initWithMapItem:(id)item configuration:(id)configuration
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = MUPlaceUnifiedActionRowSectionController;
  v8 = [(MUPlaceSectionController *)&v15 initWithMapItem:item];
  if (v8)
  {
    v9 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v9))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceActionRowSectionControllerInit", "", v14, 2u);
    }

    objc_storeStrong(&v8->_configuration, configuration);
    v10 = [[MUPlaceUnifiedActionRowLayoutBuilder alloc] initWithConfiguration:v8->_configuration delegate:v8];
    layoutBuilder = v8->_layoutBuilder;
    v8->_layoutBuilder = v10;

    [(MUPlaceUnifiedActionRowSectionController *)v8 _buildButtonLayout];
    [(MUPlaceUnifiedActionRowSectionController *)v8 _createSectionView];
    v12 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v12))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceActionRowSectionControllerInit", "", v14, 2u);
    }
  }

  return v8;
}

@end