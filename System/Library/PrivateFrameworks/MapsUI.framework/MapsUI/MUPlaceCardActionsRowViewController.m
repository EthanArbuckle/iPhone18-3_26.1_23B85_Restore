@interface MUPlaceCardActionsRowViewController
- (MKPlaceActionManagerProtocol)actionManager;
- (MUPlaceCardActionsRowViewController)initWithStyle:(unint64_t)a3;
- (MUPlaceCardActionsRowViewMenuProvider)menuProvider;
- (void)setActionManager:(id)a3;
- (void)setMenuProvider:(id)a3;
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
  v4 = [(MUPlaceCardActionsRowViewController *)self view];
  [v4 setPreservesSuperviewLayoutMargins:1];

  [(MUPlaceCardActionsRowView *)self->_actionsRowView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUPlaceCardActionsRowView *)self->_actionsRowView setPreservesSuperviewLayoutMargins:1];
  WeakRetained = objc_loadWeakRetained(&self->_actionManager);
  [(MUPlaceCardActionsRowView *)self->_actionsRowView setActionManager:WeakRetained];

  v6 = [(MUPlaceCardActionsRowViewController *)self view];
  [v6 addSubview:self->_actionsRowView];

  v19 = MEMORY[0x1E696ACD8];
  v25 = [(MUPlaceCardActionsRowView *)self->_actionsRowView topAnchor];
  v26 = [(MUPlaceCardActionsRowViewController *)self view];
  v24 = [v26 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v29[0] = v23;
  v21 = [(MUPlaceCardActionsRowView *)self->_actionsRowView leadingAnchor];
  v22 = [(MUPlaceCardActionsRowViewController *)self view];
  v20 = [v22 leadingAnchor];
  v7 = [v21 constraintEqualToAnchor:v20];
  v29[1] = v7;
  v8 = [(MUPlaceCardActionsRowView *)self->_actionsRowView trailingAnchor];
  v9 = [(MUPlaceCardActionsRowViewController *)self view];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v29[2] = v11;
  v12 = [(MUPlaceCardActionsRowView *)self->_actionsRowView bottomAnchor];
  v13 = [(MUPlaceCardActionsRowViewController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
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

- (void)setMenuProvider:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_menuProvider, v4);
  [(MUPlaceCardActionsRowView *)self->_actionsRowView setMenuProvider:v4];
}

- (void)setActionManager:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_actionManager, v4);
  [(MUPlaceCardActionsRowView *)self->_actionsRowView setActionManager:v4];
}

- (MUPlaceCardActionsRowViewController)initWithStyle:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = MUPlaceCardActionsRowViewController;
  v4 = [(MUPlaceCardActionsRowViewController *)&v10 initWithNibName:0 bundle:0];
  if (v4)
  {
    if (!a3)
    {
      v5 = [MEMORY[0x1E696F3B8] sharedInstance];
      v6 = [v5 userInterfaceIdiom] == 2;

      a3 = 2 * v6;
    }

    v7 = [[MUPlaceCardActionsRowView alloc] initWithStyle:a3];
    actionsRowView = v4->_actionsRowView;
    v4->_actionsRowView = v7;
  }

  return v4;
}

@end