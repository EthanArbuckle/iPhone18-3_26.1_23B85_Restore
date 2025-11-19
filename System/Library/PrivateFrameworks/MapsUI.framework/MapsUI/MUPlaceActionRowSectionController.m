@interface MUPlaceActionRowSectionController
- (BOOL)hasContent;
- (MUPlaceActionRowSectionController)initWithMapItem:(id)a3 actionManager:(id)a4 menuProvider:(id)a5;
- (id)menuElementForActionItem:(id)a3;
- (id)menuForActionItem:(id)a3;
- (void)_setupButtons;
@end

@implementation MUPlaceActionRowSectionController

- (BOOL)hasContent
{
  v2 = [(MUPlaceCardActionsRowViewController *)self->_actionsRowViewController actionButtons];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)menuElementForActionItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_menuProvider);
  v6 = [WeakRetained menuElementForActionItem:v4];

  return v6;
}

- (id)menuForActionItem:(id)a3
{
  v3 = [(MUPlaceActionRowSectionController *)self menuElementForActionItem:a3];
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

- (void)_setupButtons
{
  v3 = [[MUPlaceCardActionsRowViewController alloc] initWithStyle:0];
  actionsRowViewController = self->_actionsRowViewController;
  self->_actionsRowViewController = v3;

  if (MapKitIdiomIsMacCatalyst())
  {
    [(MUPlaceCardActionsRowViewController *)self->_actionsRowViewController setMenuProvider:self];
  }

  WeakRetained = objc_loadWeakRetained(&self->_actionManager);
  [(MUPlaceCardActionsRowViewController *)self->_actionsRowViewController setActionManager:WeakRetained];

  v6 = [(MUPlaceCardActionsRowViewController *)self->_actionsRowViewController view];
  [v6 setPreservesSuperviewLayoutMargins:0];

  v7 = [(MUPlaceCardActionsRowViewController *)self->_actionsRowViewController view];
  [v7 setInsetsLayoutMarginsFromSafeArea:0];

  v8 = [(MUPlaceCardActionsRowViewController *)self->_actionsRowViewController actionsRowView];
  [v8 setPreservesSuperviewLayoutMargins:0];

  v9 = *MEMORY[0x1E69DDCE0];
  v10 = *(MEMORY[0x1E69DDCE0] + 8);
  v11 = *(MEMORY[0x1E69DDCE0] + 16);
  v12 = *(MEMORY[0x1E69DDCE0] + 24);
  v13 = [(MUPlaceCardActionsRowViewController *)self->_actionsRowViewController actionsRowView];
  [v13 setLayoutMargins:{v9, v10, v11, v12}];

  v14 = [[MUPlaceSectionView alloc] initWithStyle:2 sectionHeaderViewModel:0];
  sectionView = self->_sectionView;
  self->_sectionView = v14;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  v16 = self->_sectionView;
  v17 = [(MUPlaceCardActionsRowViewController *)self->_actionsRowViewController view];
  [(MUPlaceSectionView *)v16 attachViewToContentView:v17];

  v18 = [MEMORY[0x1E696AAE8] mainBundle];
  v19 = [v18 bundleIdentifier];
  v20 = [v19 isEqualToString:*MEMORY[0x1E69A1A78]];

  if ((v20 & 1) == 0)
  {
    v21 = +[MUPlaceholderGridCache unretainedInstance];
    placeholderGridCache = self->_placeholderGridCache;
    self->_placeholderGridCache = v21;

    v23 = self->_placeholderGridCache;

    [(MUPlaceholderGridCache *)v23 loadPlaceholderGridImages];
  }
}

- (MUPlaceActionRowSectionController)initWithMapItem:(id)a3 actionManager:(id)a4 menuProvider:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = MUPlaceActionRowSectionController;
  v10 = [(MUPlaceSectionController *)&v15 initWithMapItem:a3];
  if (v10)
  {
    v11 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v11))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceActionRowSectionControllerInit", "", v14, 2u);
    }

    objc_storeWeak(&v10->_actionManager, v8);
    objc_storeWeak(&v10->_menuProvider, v9);
    [(MUPlaceActionRowSectionController *)v10 _setupButtons];
    v12 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v12))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceActionRowSectionControllerInit", "", v14, 2u);
    }
  }

  return v10;
}

@end