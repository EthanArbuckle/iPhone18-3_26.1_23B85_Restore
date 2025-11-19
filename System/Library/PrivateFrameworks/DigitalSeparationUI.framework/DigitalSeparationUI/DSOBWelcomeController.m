@interface DSOBWelcomeController
- (void)presentErrorAlertController:(id)a3;
- (void)presentErrorAlertWithTitle:(id)a3 message:(id)a4 continueHandler:(id)a5 tryAgainHandler:(id)a6;
- (void)viewDidLoad;
@end

@implementation DSOBWelcomeController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = DSOBWelcomeController;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  [(DSOBWelcomeController *)self setShouldMoveHeaderViewTitleToNavigationTitleWhenScrolledOffScreen:0];
}

- (void)presentErrorAlertWithTitle:(id)a3 message:(id)a4 continueHandler:(id)a5 tryAgainHandler:(id)a6
{
  v10 = MEMORY[0x277D75110];
  v11 = a6;
  v12 = a5;
  v19 = [v10 alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v13 = MEMORY[0x277D750F8];
  v14 = DSUILocStringForKey(@"CONTINUE");
  v15 = [v13 actionWithTitle:v14 style:0 handler:v12];

  v16 = MEMORY[0x277D750F8];
  v17 = DSUILocStringForKey(@"TRY_AGAIN");
  v18 = [v16 actionWithTitle:v17 style:0 handler:v11];

  [v19 addAction:v15];
  [v19 addAction:v18];
  [(DSOBWelcomeController *)self presentViewController:v19 animated:1 completion:0];
}

- (void)presentErrorAlertController:(id)a3
{
  v4 = MEMORY[0x277D750F8];
  v5 = a3;
  v6 = DSUILocStringForKey(@"OK");
  v7 = [v4 actionWithTitle:v6 style:0 handler:&__block_literal_global];

  [v5 addAction:v7];
  [(DSOBWelcomeController *)self presentViewController:v5 animated:1 completion:0];
}

@end