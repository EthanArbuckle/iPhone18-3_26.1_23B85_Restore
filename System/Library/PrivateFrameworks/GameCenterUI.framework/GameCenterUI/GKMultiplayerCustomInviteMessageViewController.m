@interface GKMultiplayerCustomInviteMessageViewController
- (GKMultiplayerCustomInviteMessageViewControllerDelegate)delegate;
- (void)donePressed:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation GKMultiplayerCustomInviteMessageViewController

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = GKMultiplayerCustomInviteMessageViewController;
  [(GKMultiplayerCustomInviteMessageViewController *)&v38 viewDidLoad];
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();
  [(GKMultiplayerCustomInviteMessageViewController *)self setTitle:v4];

  v5 = [(GKMultiplayerCustomInviteMessageViewController *)self doneButton];
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();
  [v5 setTitle:v7 forState:0];

  v8 = [(GKMultiplayerCustomInviteMessageViewController *)self doneButton];
  v9 = [MEMORY[0x277D75348] whiteColor];
  [v8 setTitleColor:v9 forState:0];

  v10 = [(GKMultiplayerCustomInviteMessageViewController *)self delegate];
  v11 = [v10 existingMessageForInviteViewController:self];

  if (v11)
  {
    v12 = [(GKMultiplayerCustomInviteMessageViewController *)self messageTextField];
    [v12 setText:v11];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CCA898]);
    v12 = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();
    v15 = [v13 initWithString:v14];
    v16 = [(GKMultiplayerCustomInviteMessageViewController *)self messageTextField];
    [v16 setAttributedPlaceholder:v15];
  }

  v17 = [(GKMultiplayerCustomInviteMessageViewController *)self navigationController];
  [v17 setNavigationBarHidden:1];

  v18 = [(GKMultiplayerCustomInviteMessageViewController *)self backgroundEffectView];

  if (!v18)
  {
    v19 = objc_alloc(MEMORY[0x277D75D68]);
    v20 = [MEMORY[0x277D75210] effectWithStyle:2];
    v21 = [v19 initWithEffect:v20];
    [(GKMultiplayerCustomInviteMessageViewController *)self setBackgroundEffectView:v21];

    v22 = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
    v23 = [(GKMultiplayerCustomInviteMessageViewController *)self backgroundEffectView];
    [v23 setBackgroundEffects:v22];

    v24 = [(GKMultiplayerCustomInviteMessageViewController *)self backgroundEffectView];
    [v24 _setGroupName:@"gameLayerGroup"];

    v25 = [(GKMultiplayerCustomInviteMessageViewController *)self view];
    [v25 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = [(GKMultiplayerCustomInviteMessageViewController *)self backgroundEffectView];
    [v34 setFrame:{v27, v29, v31, v33}];

    v35 = [(GKMultiplayerCustomInviteMessageViewController *)self backgroundEffectView];
    [v35 setAutoresizingMask:18];
  }

  v36 = [(GKMultiplayerCustomInviteMessageViewController *)self view];
  v37 = [(GKMultiplayerCustomInviteMessageViewController *)self backgroundEffectView];
  [v36 insertSubview:v37 atIndex:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = GKMultiplayerCustomInviteMessageViewController;
  [(GKMultiplayerCustomInviteMessageViewController *)&v5 viewWillAppear:a3];
  v4 = [(GKMultiplayerCustomInviteMessageViewController *)self messageTextField];
  [v4 becomeFirstResponder];
}

- (void)donePressed:(id)a3
{
  v4 = [(GKMultiplayerCustomInviteMessageViewController *)self messageTextField];
  [v4 resignFirstResponder];

  v5 = [(GKMultiplayerCustomInviteMessageViewController *)self messageTextField];
  v6 = [v5 text];
  if ([v6 length])
  {
    v7 = [(GKMultiplayerCustomInviteMessageViewController *)self messageTextField];
    v9 = [v7 text];
  }

  else
  {
    v9 = 0;
  }

  v8 = [(GKMultiplayerCustomInviteMessageViewController *)self delegate];
  [v8 customInviteViewController:self didFinishWithMessage:v9];
}

- (GKMultiplayerCustomInviteMessageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end