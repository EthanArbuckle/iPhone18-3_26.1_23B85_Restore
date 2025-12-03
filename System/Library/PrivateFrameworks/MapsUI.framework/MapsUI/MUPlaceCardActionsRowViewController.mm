@interface MUPlaceCardActionsRowViewController
- (MKPlaceActionManagerProtocol)actionManager;
- (MUPlaceCardActionsRowViewController)initWithStyle:(unint64_t)style;
- (MUPlaceCardActionsRowViewMenuProvider)menuProvider;
- (void)setActionManager:(id)manager;
- (void)setMenuProvider:(id)provider;
- (void)viewDidLoad;
@end

@implementation MUPlaceCardActionsRowViewController

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

- (void)viewDidLoad
{
  v29[4] = *MEMORY[0x1E69E9840];
  v3 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PlaceCardActionsRowViewDidLoad", "", buf, 2u);
  }

  v27.receiver = self;
  v27.super_class = MUPlaceCardActionsRowViewController;
  [(MUPlaceCardActionsRowViewController *)&v27 viewDidLoad];
  view = [(MUPlaceCardActionsRowViewController *)self view];
  [view setPreservesSuperviewLayoutMargins:1];

  [(MUPlaceCardActionsRowView *)self->_actionsRowView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUPlaceCardActionsRowView *)self->_actionsRowView setPreservesSuperviewLayoutMargins:1];
  WeakRetained = objc_loadWeakRetained(&self->_actionManager);
  [(MUPlaceCardActionsRowView *)self->_actionsRowView setActionManager:WeakRetained];

  view2 = [(MUPlaceCardActionsRowViewController *)self view];
  [view2 addSubview:self->_actionsRowView];

  v19 = MEMORY[0x1E696ACD8];
  topAnchor = [(MUPlaceCardActionsRowView *)self->_actionsRowView topAnchor];
  view3 = [(MUPlaceCardActionsRowViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[0] = v23;
  leadingAnchor = [(MUPlaceCardActionsRowView *)self->_actionsRowView leadingAnchor];
  view4 = [(MUPlaceCardActionsRowViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[1] = v7;
  trailingAnchor = [(MUPlaceCardActionsRowView *)self->_actionsRowView trailingAnchor];
  view5 = [(MUPlaceCardActionsRowViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[2] = v11;
  bottomAnchor = [(MUPlaceCardActionsRowView *)self->_actionsRowView bottomAnchor];
  view6 = [(MUPlaceCardActionsRowViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v19 activateConstraints:v16];

  v17 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PlaceCardActionsRowViewDidLoad", "", buf, 2u);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setMenuProvider:(id)provider
{
  providerCopy = provider;
  objc_storeWeak(&self->_menuProvider, providerCopy);
  [(MUPlaceCardActionsRowView *)self->_actionsRowView setMenuProvider:providerCopy];
}

- (void)setActionManager:(id)manager
{
  managerCopy = manager;
  objc_storeWeak(&self->_actionManager, managerCopy);
  [(MUPlaceCardActionsRowView *)self->_actionsRowView setActionManager:managerCopy];
}

- (MUPlaceCardActionsRowViewController)initWithStyle:(unint64_t)style
{
  v10.receiver = self;
  v10.super_class = MUPlaceCardActionsRowViewController;
  v4 = [(MUPlaceCardActionsRowViewController *)&v10 initWithNibName:0 bundle:0];
  if (v4)
  {
    if (!style)
    {
      mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
      v6 = [mEMORY[0x1E696F3B8] userInterfaceIdiom] == 2;

      style = 2 * v6;
    }

    v7 = [[MUPlaceCardActionsRowView alloc] initWithStyle:style];
    actionsRowView = v4->_actionsRowView;
    v4->_actionsRowView = v7;
  }

  return v4;
}

@end