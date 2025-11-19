@interface MUPlaceUnifiedActionRowSectionController
- (MUOfflineMapProvider)offlineMapProvider;
- (MUPlaceUnifiedActionRowSectionController)initWithMapItem:(id)a3 configuration:(id)a4;
- (MUPlaceUnifiedActionRowSectionControllerDelegate)actionDelegate;
- (id)leadingActionBarItem;
- (id)menuActionBarItems;
- (id)menuElementForActionItem:(id)a3;
- (id)menuForActionItem:(id)a3;
- (id)trailingActionBarItems;
- (void)_buildButtonLayout;
- (void)_createSectionView;
- (void)_populateRevealedAnalyticsModule:(id)a3;
- (void)_updateActions:(id)a3;
- (void)_updateHasContent;
- (void)actionsRowView:(id)a3 didPresentMenuForViewModel:(id)a4 presentationOptions:(id)a5;
- (void)actionsRowView:(id)a3 didSelectViewModel:(id)a4 presentationOptions:(id)a5;
- (void)setOfflineFeatureDiscoveryView:(id)a3;
- (void)setOfflineMapProvider:(id)a3;
- (void)setSecondaryActionButtonController:(id)a3;
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
    v4 = [(MUGroupedActionsRowView *)self->_actionsRowView menuActionBarItems];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)trailingActionBarItems
{
  actionsRowView = self->_actionsRowView;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(MUGroupedActionsRowView *)self->_actionsRowView trailingActionBarItems];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)leadingActionBarItem
{
  actionsRowView = self->_actionsRowView;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(MUGroupedActionsRowView *)self->_actionsRowView leadingActionBarItem];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateActions:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (([(NSArray *)self->_actionItemViewModels isEqual:v5]& 1) == 0)
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

    objc_storeStrong(&self->_actionItemViewModels, a3);
    [(MUGroupedActionsRowView *)self->_actionsRowView setViewModels:v5];
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

- (void)setOfflineFeatureDiscoveryView:(id)a3
{
  v5 = a3;
  if (self->_offlineFeatureDiscoveryView != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_offlineFeatureDiscoveryView, a3);
    v6 = [(MUPlaceUnifiedActionRowSectionController *)self layoutBuilder];
    v7 = [v6 downloadOfflineViewModel];

    [v7 setFeatureDiscoveryView:self->_offlineFeatureDiscoveryView];
    v5 = v8;
  }
}

- (void)setOfflineMapProvider:(id)a3
{
  objc_storeWeak(&self->_offlineMapProvider, a3);

  [(MUPlaceUnifiedActionRowSectionController *)self _buildButtonLayout];
}

- (void)setSecondaryActionButtonController:(id)a3
{
  v10 = a3;
  v4 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
  v5 = [v4 secondaryActionButtonController];

  v6 = v10;
  if (v5 != v10)
  {
    v7 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
    [v7 setSecondaryActionButtonController:v10];

    v8 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
    v9 = [v8 buttonModuleConfiguration];

    v6 = v10;
    if (!v9)
    {
      [(MUPlaceUnifiedActionRowSectionController *)self _buildButtonLayout];
      v6 = v10;
    }
  }
}

- (void)_buildButtonLayout
{
  v3 = [(MUPlaceUnifiedActionRowSectionController *)self layoutBuilder];
  v4 = [v3 buildButtonLayout];

  [(MUPlaceUnifiedActionRowSectionController *)self _updateActions:v4];
}

- (void)actionsRowView:(id)a3 didPresentMenuForViewModel:(id)a4 presentationOptions:(id)a5
{
  v12 = a4;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v12;
    if ([v7 isForActionBar])
    {
      v9 = 6112;
    }

    else
    {
      v9 = 209;
    }

    v10 = [v8 externalActionMenuRevealButtons];
    if ([v7 isForActionBarMoreMenu])
    {
      v11 = @"SECONDARY";
    }

    else if ([v7 isForActionBar])
    {
      v11 = @"PRIMARY";
    }

    else
    {
      v11 = 0;
    }

    [(MUPlaceSectionController *)self captureInfoCardPartnerAction:v9 eventValue:0 sharedStateButtonList:v10 presentationOptions:v7 classification:v11];
  }
}

- (void)actionsRowView:(id)a3 didSelectViewModel:(id)a4 presentationOptions:(id)a5
{
  v38[5] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 1;
  }

  else
  {
    v10 = [v8 isForActionBar];
  }

  v11 = [(MUPlaceUnifiedActionRowSectionController *)self analyticsModuleForAction:0 presentationOptions:v8];
  if (v10)
  {
    v12 = [MEMORY[0x1E69A1B10] moduleFromModuleType:46];

    v11 = v12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37[0] = *MEMORY[0x1E696F118];
    v13 = [v8 sourceView];
    v14 = *MEMORY[0x1E696F108];
    v38[0] = v13;
    v38[1] = v11;
    v15 = *MEMORY[0x1E696F100];
    v37[1] = v14;
    v37[2] = v15;
    v38[2] = MEMORY[0x1E695E110];
    v37[3] = *MEMORY[0x1E696F0F0];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:v10];
    v38[3] = v16;
    v37[4] = *MEMORY[0x1E696F0F8];
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isForActionBarMoreMenu")}];
    v38[4] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:5];

    v19 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
    v20 = [v19 actionManager];
    v21 = [v7 actionRowItem];
    v22 = [v21 resolvedActionItem];
    [v20 performAction:v22 options:v18 completion:0];

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v18 = [(MUPlaceUnifiedActionRowSectionController *)self actionDelegate];
    v23 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
    [v18 sectionController:self didSelectPrimaryButtonType:objc_msgSend(v23 options:{"primaryButtonType"), v8}];
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35[0] = *MEMORY[0x1E696F118];
    v25 = v7;
    v26 = [v8 sourceView];
    v27 = *MEMORY[0x1E696F108];
    v36[0] = v26;
    v36[1] = v11;
    v28 = *MEMORY[0x1E696F100];
    v35[1] = v27;
    v35[2] = v28;
    v36[2] = MEMORY[0x1E695E110];
    v35[3] = *MEMORY[0x1E696F0F0];
    v29 = [MEMORY[0x1E696AD98] numberWithBool:v10];
    v36[3] = v29;
    v35[4] = *MEMORY[0x1E696F0F8];
    v30 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "isForActionBarMoreMenu")}];
    v36[4] = v30;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:5];

    v31 = MEMORY[0x1E696F308];
    v32 = [v25 actionItemType];

    v23 = [v31 actionItemWithType:v32];
    v33 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
    v34 = [v33 actionManager];
    [v34 performAction:v23 options:v18 completion:0];

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 performSingleVendorSelectionActionWithPresentationOptions:v8];
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 performWithPresentationOptions:v8];
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v18 = [(MUPlaceUnifiedActionRowSectionController *)self actionDelegate];
  [v18 sectionControllerDidSelectViewContactButton:self];
LABEL_12:

LABEL_13:
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_populateRevealedAnalyticsModule:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        v12 = [*(*(&v23 + 1) + 8 * v11) analyticsButtonValues];
        [v6 _mapsui_addObjectsFromArrayIfNotNil:v12];

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
    [v4 setUnifiedActionRow:v5];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_updateHasContent
{
  v3 = [(MUGroupedActionsRowView *)self->_actionsRowView hasContent];
  if (self->_hasContent != v3)
  {
    self->_hasContent = v3;
    v4 = [(MUPlaceSectionController *)self delegate];
    [v4 placeSectionControllerDidUpdateContent:self];
  }
}

- (id)menuElementForActionItem:(id)a3
{
  v4 = a3;
  v5 = [(MUPlaceUnifiedActionRowSectionController *)self configuration];
  v6 = [v5 actionRowMenuProvider];
  v7 = [v6 menuElementForActionItem:v4];

  return v7;
}

- (id)menuForActionItem:(id)a3
{
  v3 = [(MUPlaceUnifiedActionRowSectionController *)self menuElementForActionItem:a3];
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
  v7 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v7 bundleIdentifier];
  v9 = [v8 isEqualToString:*MEMORY[0x1E69A1A78]];

  if ((v9 & 1) == 0)
  {
    v10 = +[MUPlaceholderGridCache unretainedInstance];
    placeholderGridCache = self->_placeholderGridCache;
    self->_placeholderGridCache = v10;

    [(MUPlaceholderGridCache *)self->_placeholderGridCache loadPlaceholderGridImages];
  }
}

- (MUPlaceUnifiedActionRowSectionController)initWithMapItem:(id)a3 configuration:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MUPlaceUnifiedActionRowSectionController;
  v8 = [(MUPlaceSectionController *)&v15 initWithMapItem:a3];
  if (v8)
  {
    v9 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v9))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceActionRowSectionControllerInit", "", v14, 2u);
    }

    objc_storeStrong(&v8->_configuration, a4);
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