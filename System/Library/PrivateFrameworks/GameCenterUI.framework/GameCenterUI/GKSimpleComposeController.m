@interface GKSimpleComposeController
- (void)donePressed;
- (void)loadView;
- (void)pushOntoNavigationController:(id)a3 withDoneHandler:(id)a4;
- (void)setPlayers:(id)a3;
- (void)setupSendButton;
- (void)viewWillAppear:(BOOL)a3;
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
  v7 = [(GKSimpleComposeController *)self navigationItem];
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = GKGameCenterUIFrameworkBundle();
  v5 = GKGetLocalizedStringFromTableInBundle();
  v6 = [v3 initWithTitle:v5 style:2 target:self action:sel_donePressed];

  [v7 setRightBarButtonItem:v6];
}

- (void)setPlayers:(id)a3
{
  v5 = a3;
  if (self->_players != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_players, a3);
    v5 = v6;
  }
}

- (void)pushOntoNavigationController:(id)a3 withDoneHandler:(id)a4
{
  v6 = a3;
  [(GKSimpleComposeController *)self setDoneHandler:a4];
  [v6 pushViewController:self animated:1];
}

- (void)donePressed
{
  v3 = [(GKSimpleComposeController *)self doneHandler];
  if (v3)
  {
    v6 = v3;
    v4 = [(GKBaseComposeController *)self messageField];
    v5 = [v4 text];
    v6[2](v6, v5, 0);

    [(GKSimpleComposeController *)self setDoneHandler:0];
    v3 = v6;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(NSArray *)self->_players _gkMapWithBlock:&__block_literal_global_5];
  [(GKComposeHeaderWithStaticRecipients *)self->_toField setRecipientNameStrings:v5];

  v10.receiver = self;
  v10.super_class = GKSimpleComposeController;
  [(GKBaseComposeController *)&v10 viewWillAppear:v3];
  v6 = [MEMORY[0x277D0C138] localPlayer];
  LODWORD(v5) = [v6 isUnderage];

  v7 = [(GKBaseComposeController *)self messageField];
  v8 = v7;
  if (v5)
  {
    [v7 setEditable:0];

    [(GKBaseComposeController *)self setMessageFieldText:@" "];
    v9 = [(GKBaseComposeController *)self messageField];
    [v9 setPlaceholderText:0];
  }

  else
  {
    [v7 setEditable:1];

    v9 = [(GKSimpleComposeController *)self defaultMessage];
    [(GKBaseComposeController *)self setMessageFieldText:v9];
  }
}

@end