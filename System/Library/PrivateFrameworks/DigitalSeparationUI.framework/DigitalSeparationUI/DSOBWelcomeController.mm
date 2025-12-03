@interface DSOBWelcomeController
- (void)presentErrorAlertController:(id)controller;
- (void)presentErrorAlertWithTitle:(id)title message:(id)message continueHandler:(id)handler tryAgainHandler:(id)againHandler;
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

- (void)presentErrorAlertWithTitle:(id)title message:(id)message continueHandler:(id)handler tryAgainHandler:(id)againHandler
{
  v10 = MEMORY[0x277D75110];
  againHandlerCopy = againHandler;
  handlerCopy = handler;
  v19 = [v10 alertControllerWithTitle:title message:message preferredStyle:1];
  v13 = MEMORY[0x277D750F8];
  v14 = DSUILocStringForKey(@"CONTINUE");
  v15 = [v13 actionWithTitle:v14 style:0 handler:handlerCopy];

  v16 = MEMORY[0x277D750F8];
  v17 = DSUILocStringForKey(@"TRY_AGAIN");
  v18 = [v16 actionWithTitle:v17 style:0 handler:againHandlerCopy];

  [v19 addAction:v15];
  [v19 addAction:v18];
  [(DSOBWelcomeController *)self presentViewController:v19 animated:1 completion:0];
}

- (void)presentErrorAlertController:(id)controller
{
  v4 = MEMORY[0x277D750F8];
  controllerCopy = controller;
  v6 = DSUILocStringForKey(@"OK");
  v7 = [v4 actionWithTitle:v6 style:0 handler:&__block_literal_global];

  [controllerCopy addAction:v7];
  [(DSOBWelcomeController *)self presentViewController:controllerCopy animated:1 completion:0];
}

@end