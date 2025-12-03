@interface GKSimpleComposeController
- (void)donePressed;
- (void)loadView;
- (void)pushOntoNavigationController:(id)controller withDoneHandler:(id)handler;
- (void)setPlayers:(id)players;
- (void)setupSendButton;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation GKSimpleComposeController

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = GKSimpleComposeController;
  [(GKBaseComposeController *)&v3 loadView];
  [(GKSimpleComposeController *)self setupSendButton];
}

- (void)setupSendButton
{
  navigationItem = [(GKSimpleComposeController *)self navigationItem];
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();
  v6 = [v3 initWithTitle:v5 style:2 target:self action:sel_donePressed];

  [navigationItem setRightBarButtonItem:v6];
}

- (void)setPlayers:(id)players
{
  playersCopy = players;
  if (self->_players != playersCopy)
  {
    v6 = playersCopy;
    objc_storeStrong(&self->_players, players);
    playersCopy = v6;
  }
}

- (void)pushOntoNavigationController:(id)controller withDoneHandler:(id)handler
{
  controllerCopy = controller;
  [(GKSimpleComposeController *)self setDoneHandler:handler];
  [controllerCopy pushViewController:self animated:1];
}

- (void)donePressed
{
  doneHandler = [(GKSimpleComposeController *)self doneHandler];
  if (doneHandler)
  {
    v6 = doneHandler;
    messageField = [(GKBaseComposeController *)self messageField];
    text = [messageField text];
    v6[2](v6, text, 0);

    [(GKSimpleComposeController *)self setDoneHandler:0];
    doneHandler = v6;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = [(NSArray *)self->_players _gkMapWithBlock:&__block_literal_global_5];
  [(GKComposeHeaderWithStaticRecipients *)self->_toField setRecipientNameStrings:v5];

  v10.receiver = self;
  v10.super_class = GKSimpleComposeController;
  [(GKBaseComposeController *)&v10 viewWillAppear:appearCopy];
  localPlayer = [MEMORY[0x277D0C138] localPlayer];
  LODWORD(v5) = [localPlayer isUnderage];

  messageField = [(GKBaseComposeController *)self messageField];
  v8 = messageField;
  if (v5)
  {
    [messageField setEditable:0];

    [(GKBaseComposeController *)self setMessageFieldText:@" "];
    messageField2 = [(GKBaseComposeController *)self messageField];
    [messageField2 setPlaceholderText:0];
  }

  else
  {
    [messageField setEditable:1];

    messageField2 = [(GKSimpleComposeController *)self defaultMessage];
    [(GKBaseComposeController *)self setMessageFieldText:messageField2];
  }
}

@end