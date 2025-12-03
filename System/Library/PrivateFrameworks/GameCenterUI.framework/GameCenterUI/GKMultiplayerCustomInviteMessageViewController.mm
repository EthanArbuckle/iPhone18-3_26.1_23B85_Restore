@interface GKMultiplayerCustomInviteMessageViewController
- (GKMultiplayerCustomInviteMessageViewControllerDelegate)delegate;
- (void)donePressed:(id)pressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

  doneButton = [(GKMultiplayerCustomInviteMessageViewController *)self doneButton];
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();
  [doneButton setTitle:v7 forState:0];

  doneButton2 = [(GKMultiplayerCustomInviteMessageViewController *)self doneButton];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [doneButton2 setTitleColor:whiteColor forState:0];

  delegate = [(GKMultiplayerCustomInviteMessageViewController *)self delegate];
  v11 = [delegate existingMessageForInviteViewController:self];

  if (v11)
  {
    messageTextField = [(GKMultiplayerCustomInviteMessageViewController *)self messageTextField];
    [messageTextField setText:v11];
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CCA898]);
    messageTextField = GKGameCenterUIFrameworkBundle();
    v14 = GKGetLocalizedStringFromTableInBundle();
    v15 = [v13 initWithString:v14];
    messageTextField2 = [(GKMultiplayerCustomInviteMessageViewController *)self messageTextField];
    [messageTextField2 setAttributedPlaceholder:v15];
  }

  navigationController = [(GKMultiplayerCustomInviteMessageViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1];

  backgroundEffectView = [(GKMultiplayerCustomInviteMessageViewController *)self backgroundEffectView];

  if (!backgroundEffectView)
  {
    v19 = objc_alloc(MEMORY[0x277D75D68]);
    v20 = [MEMORY[0x277D75210] effectWithStyle:2];
    v21 = [v19 initWithEffect:v20];
    [(GKMultiplayerCustomInviteMessageViewController *)self setBackgroundEffectView:v21];

    _gkGameLayerBackgroundVisualEffect = [MEMORY[0x277D75D58] _gkGameLayerBackgroundVisualEffect];
    backgroundEffectView2 = [(GKMultiplayerCustomInviteMessageViewController *)self backgroundEffectView];
    [backgroundEffectView2 setBackgroundEffects:_gkGameLayerBackgroundVisualEffect];

    backgroundEffectView3 = [(GKMultiplayerCustomInviteMessageViewController *)self backgroundEffectView];
    [backgroundEffectView3 _setGroupName:@"gameLayerGroup"];

    view = [(GKMultiplayerCustomInviteMessageViewController *)self view];
    [view bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    backgroundEffectView4 = [(GKMultiplayerCustomInviteMessageViewController *)self backgroundEffectView];
    [backgroundEffectView4 setFrame:{v27, v29, v31, v33}];

    backgroundEffectView5 = [(GKMultiplayerCustomInviteMessageViewController *)self backgroundEffectView];
    [backgroundEffectView5 setAutoresizingMask:18];
  }

  view2 = [(GKMultiplayerCustomInviteMessageViewController *)self view];
  backgroundEffectView6 = [(GKMultiplayerCustomInviteMessageViewController *)self backgroundEffectView];
  [view2 insertSubview:backgroundEffectView6 atIndex:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = GKMultiplayerCustomInviteMessageViewController;
  [(GKMultiplayerCustomInviteMessageViewController *)&v5 viewWillAppear:appear];
  messageTextField = [(GKMultiplayerCustomInviteMessageViewController *)self messageTextField];
  [messageTextField becomeFirstResponder];
}

- (void)donePressed:(id)pressed
{
  messageTextField = [(GKMultiplayerCustomInviteMessageViewController *)self messageTextField];
  [messageTextField resignFirstResponder];

  messageTextField2 = [(GKMultiplayerCustomInviteMessageViewController *)self messageTextField];
  text = [messageTextField2 text];
  if ([text length])
  {
    messageTextField3 = [(GKMultiplayerCustomInviteMessageViewController *)self messageTextField];
    text2 = [messageTextField3 text];
  }

  else
  {
    text2 = 0;
  }

  delegate = [(GKMultiplayerCustomInviteMessageViewController *)self delegate];
  [delegate customInviteViewController:self didFinishWithMessage:text2];
}

- (GKMultiplayerCustomInviteMessageViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end