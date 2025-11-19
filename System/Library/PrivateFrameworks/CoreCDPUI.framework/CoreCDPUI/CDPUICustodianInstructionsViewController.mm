@interface CDPUICustodianInstructionsViewController
- (CDPUICustodianInstructionsViewController)initWithViewModel:(id)a3;
- (void)_handleContinueAction:(id)a3;
- (void)viewDidLoad;
@end

@implementation CDPUICustodianInstructionsViewController

- (CDPUICustodianInstructionsViewController)initWithViewModel:(id)a3
{
  v5 = a3;
  v6 = [v5 title];
  v7 = [v5 subtitle];
  v10.receiver = self;
  v10.super_class = CDPUICustodianInstructionsViewController;
  v8 = [(CDPUICustodianInstructionsViewController *)&v10 initWithTitle:v6 detailText:v7 symbolName:0];

  if (v8)
  {
    objc_storeStrong(&v8->_viewModel, a3);
  }

  return v8;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = CDPUICustodianInstructionsViewController;
  [(OBBaseWelcomeController *)&v17 viewDidLoad];
  v3 = [(CDPUICustodianInstructionsViewModel *)self->_viewModel instructionHeader];
  [(OBTextWelcomeController *)self addSectionWithHeader:0 content:v3];

  v4 = [(CDPUICustodianInstructionsViewModel *)self->_viewModel instructions];
  [(OBTextWelcomeController *)self addSectionWithHeader:0 content:v4];

  v5 = [(CDPUICustodianInstructionsViewModel *)self->_viewModel footerText];
  [(OBTextWelcomeController *)self addSectionWithHeader:0 content:v5];

  v6 = [(CDPUICustodianInstructionsViewModel *)self->_viewModel continueOption];

  if (v6)
  {
    v7 = [MEMORY[0x277D37618] boldButton];
    [v7 addTarget:self action:sel__handleContinueAction_ forControlEvents:64];
    v8 = [(CDPUICustodianInstructionsViewModel *)self->_viewModel continueOption];
    v9 = [v8 title];
    [v7 setTitle:v9 forState:0];

    v10 = [(CDPUICustodianInstructionsViewController *)self buttonTray];
    [v10 addButton:v7];
  }

  v11 = [(CDPUICustodianInstructionsViewModel *)self->_viewModel escapeOffer];

  if (v11)
  {
    v12 = [MEMORY[0x277D37650] linkButton];
    v13 = [(CDPUICustodianInstructionsViewModel *)self->_viewModel escapeOffer];
    [v12 addTarget:v13 action:sel_handleEscapeAction_ forControlEvents:64];

    v14 = [(CDPUICustodianInstructionsViewModel *)self->_viewModel escapeOffer];
    v15 = [v14 escapeOfferName];
    [v12 setTitle:v15 forState:0];

    v16 = [(CDPUICustodianInstructionsViewController *)self buttonTray];
    [v16 addButton:v12];
  }
}

- (void)_handleContinueAction:(id)a3
{
  v4 = [(CDPUICustodianInstructionsViewModel *)self->_viewModel continueOption];

  if (v4)
  {
    v6 = [(CDPUICustodianInstructionsViewModel *)self->_viewModel continueOption];
    v5 = [v6 escapeAction];
    v5[2]();
  }
}

@end