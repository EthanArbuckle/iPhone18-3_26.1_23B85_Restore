@interface MUPlaceCardActionsRowView
- (MKPlaceActionManagerProtocol)actionManager;
- (MUPlaceCardActionsRowView)initWithConfiguration:(id)configuration style:(unint64_t)style;
- (MUPlaceCardActionsRowView)initWithStyle:(unint64_t)style;
- (MUPlaceCardActionsRowViewMenuProvider)menuProvider;
- (id)_buildModuleForAnalytics;
- (int)_buttonItemTypeFromActionItem:(id)item;
- (void)_createActionsFromActionManager;
- (void)actionsRowView:(id)view didSelectViewModel:(id)model presentationOptions:(id)options;
- (void)reload;
- (void)setActionManager:(id)manager;
- (void)setMenuProvider:(id)provider;
@end

@implementation MUPlaceCardActionsRowView

- (MUPlaceCardActionsRowViewMenuProvider)menuProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_menuProvider);

  return WeakRetained;
}

- (MKPlaceActionManagerProtocol)actionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_actionManager);

  return WeakRetained;
}

- (id)_buildModuleForAnalytics
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A1B10] moduleFromModuleType:12];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_viewModels;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        actionRowItem = [*(*(&v13 + 1) + 8 * i) actionRowItem];
        v10 = [(MUPlaceCardActionsRowView *)self _buttonItemTypeFromActionItem:actionRowItem];

        if (v10)
        {
          [v3 addContent:v10];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (int)_buttonItemTypeFromActionItem:(id)item
{
  resolvedActionItem = [item resolvedActionItem];
  type = [resolvedActionItem type];

  if (type <= 20)
  {
    if (type > 10)
    {
      if (type == 11)
      {
        return 5;
      }

      if (type != 13)
      {
        v5 = type == 16;
        v6 = 3;
LABEL_24:
        if (v5)
        {
          return v6;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      if ((type - 1) < 2)
      {
        return 2;
      }

      if (type != 7)
      {
        v5 = type == 10;
        v6 = 4;
        goto LABEL_24;
      }
    }

    return 6;
  }

  if ((type - 44) >= 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = 17;
  }

  if (type == 34)
  {
    v8 = 11;
  }

  else
  {
    v8 = 0;
  }

  if (type == 21)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  if ((type - 42) >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 16;
  }

  if (type <= 43)
  {
    return v10;
  }

  else
  {
    return v7;
  }
}

- (void)_createActionsFromActionManager
{
  v35 = *MEMORY[0x1E69E9840];
  viewModels = [(MUGroupedActionsRowView *)self viewModels];
  v4 = [viewModels count];

  if (!v4)
  {
    actionManager = [(MUPlaceCardActionsRowView *)self actionManager];
    v6 = [actionManager createRowActionsWithStyle:self->_style];
    v7 = [v6 copy];

    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v8 = [MEMORY[0x1E695DFA8] set];
    selfCopy = self;
    if (self->_myPlacesEnabled && MapKitIdiomIsMacCatalyst())
    {
      [v8 addObjectsFromArray:&unk_1F450E248];
    }

    IsMacCatalyst = MapKitIdiomIsMacCatalyst();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          if (IsMacCatalyst)
          {
            resolvedActionItem = [*(*(&v30 + 1) + 8 * i) resolvedActionItem];
            glyph = [resolvedActionItem glyph];
            v18 = [glyph length];

            if (!v18)
            {
              continue;
            }
          }

          v19 = MEMORY[0x1E696AD98];
          resolvedActionItem2 = [v15 resolvedActionItem];
          v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(resolvedActionItem2, "type")}];
          v22 = [v8 containsObject:v21];

          if ((v22 & 1) == 0)
          {
            v23 = [MUPlaceActionRowItemViewModel alloc];
            menuProvider = [(MUPlaceCardActionsRowView *)selfCopy menuProvider];
            v25 = [(MUPlaceActionRowItemViewModel *)v23 initWithActionRowItem:v15 menuProvider:menuProvider style:selfCopy->_style];

            [v29 addObject:v25];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);
    }

    v26 = [v29 copy];
    [(MUGroupedActionsRowView *)selfCopy setViewModels:v26];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)setMenuProvider:(id)provider
{
  v19 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_menuProvider);

  if (WeakRetained != providerCopy)
  {
    objc_storeWeak(&self->_menuProvider, providerCopy);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_viewModels;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = objc_loadWeakRetained(&self->_menuProvider);
          [v11 setMenuProvider:{v12, v14}];

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)actionsRowView:(id)view didSelectViewModel:(id)model presentationOptions:(id)options
{
  v30[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  modelCopy = model;
  optionsCopy = options;
  if (modelCopy)
  {
    _buildModuleForAnalytics = [(MUPlaceCardActionsRowView *)self _buildModuleForAnalytics];
    v29[0] = *MEMORY[0x1E696F118];
    sourceView = [optionsCopy sourceView];
    v13 = *MEMORY[0x1E696F108];
    v30[0] = sourceView;
    v30[1] = _buildModuleForAnalytics;
    v14 = *MEMORY[0x1E696F0F0];
    v29[1] = v13;
    v29[2] = v14;
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(optionsCopy, "isForActionBar")}];
    v30[2] = v15;
    v29[3] = *MEMORY[0x1E696F0F8];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(optionsCopy, "isForActionBarMoreMenu")}];
    v30[3] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];
  }

  else
  {
    v17 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actionRowItem = [modelCopy actionRowItem];
    selectedItem = [actionRowItem selectedItem];

    if (selectedItem)
    {
      [actionRowItem setEnabled:0];
    }

    selectedItem3 = actionRowItem;
    if ([actionRowItem selected])
    {
      selectedItem2 = [actionRowItem selectedItem];

      selectedItem3 = actionRowItem;
      if (selectedItem2)
      {
        selectedItem3 = [actionRowItem selectedItem];
      }
    }

    actionManager = [(MUPlaceCardActionsRowView *)self actionManager];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __83__MUPlaceCardActionsRowView_actionsRowView_didSelectViewModel_presentationOptions___block_invoke;
    v26[3] = &unk_1E821A870;
    v27 = selectedItem3;
    v28 = actionRowItem;
    v23 = actionRowItem;
    v24 = selectedItem3;
    [actionManager performAction:v24 options:v17 completion:v26];
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __83__MUPlaceCardActionsRowView_actionsRowView_didSelectViewModel_presentationOptions___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEnabled:1];
  v2 = *(a1 + 40);

  return [v2 setEnabled:1];
}

- (void)reload
{
  viewModels = self->_viewModels;
  self->_viewModels = 0;

  [(MUPlaceCardActionsRowView *)self _createActionsFromActionManager];
}

- (void)setActionManager:(id)manager
{
  obj = manager;
  WeakRetained = objc_loadWeakRetained(&self->_actionManager);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_actionManager, obj);
    viewModels = self->_viewModels;
    self->_viewModels = 0;

    [(MUPlaceCardActionsRowView *)self _createActionsFromActionManager];
    v5 = obj;
  }
}

- (MUPlaceCardActionsRowView)initWithConfiguration:(id)configuration style:(unint64_t)style
{
  v8.receiver = self;
  v8.super_class = MUPlaceCardActionsRowView;
  v5 = [(MUGroupedActionsRowView *)&v8 initWithConfiguration:configuration];
  v6 = v5;
  if (v5)
  {
    v5->_style = style;
    [(MUPlaceCardActionsRowView *)v5 setAccessibilityIdentifier:@"PlaceCardActionsRow"];
    [(MUGroupedActionsRowView *)v6 setDelegate:v6];
    v6->_myPlacesEnabled = MapsFeature_IsEnabled_MyPlacesFeatures();
  }

  return v6;
}

- (MUPlaceCardActionsRowView)initWithStyle:(unint64_t)style
{
  v5 = +[MUGroupedActionsRowViewConfiguration defaultConfiguration];
  v6 = [(MUPlaceCardActionsRowView *)self initWithConfiguration:v5 style:style];

  return v6;
}

@end