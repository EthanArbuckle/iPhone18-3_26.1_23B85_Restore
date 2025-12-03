@interface CDPUICustodianInstructionsViewController
- (CDPUICustodianInstructionsViewController)initWithViewModel:(id)model;
- (void)_handleContinueAction:(id)action;
- (void)viewDidLoad;
@end

@implementation CDPUICustodianInstructionsViewController

- (CDPUICustodianInstructionsViewController)initWithViewModel:(id)model
{
  modelCopy = model;
  title = [modelCopy title];
  subtitle = [modelCopy subtitle];
  v10.receiver = self;
  v10.super_class = CDPUICustodianInstructionsViewController;
  v8 = [(CDPUICustodianInstructionsViewController *)&v10 initWithTitle:title detailText:subtitle symbolName:0];

  if (v8)
  {
    objc_storeStrong(&v8->_viewModel, model);
  }

  return v8;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = CDPUICustodianInstructionsViewController;
  [(OBBaseWelcomeController *)&v17 viewDidLoad];
  instructionHeader = [(CDPUICustodianInstructionsViewModel *)self->_viewModel instructionHeader];
  [(OBTextWelcomeController *)self addSectionWithHeader:0 content:instructionHeader];

  instructions = [(CDPUICustodianInstructionsViewModel *)self->_viewModel instructions];
  [(OBTextWelcomeController *)self addSectionWithHeader:0 content:instructions];

  footerText = [(CDPUICustodianInstructionsViewModel *)self->_viewModel footerText];
  [(OBTextWelcomeController *)self addSectionWithHeader:0 content:footerText];

  continueOption = [(CDPUICustodianInstructionsViewModel *)self->_viewModel continueOption];

  if (continueOption)
  {
    boldButton = [MEMORY[0x277D37618] boldButton];
    [boldButton addTarget:self action:sel__handleContinueAction_ forControlEvents:64];
    continueOption2 = [(CDPUICustodianInstructionsViewModel *)self->_viewModel continueOption];
    title = [continueOption2 title];
    [boldButton setTitle:title forState:0];

    buttonTray = [(CDPUICustodianInstructionsViewController *)self buttonTray];
    [buttonTray addButton:boldButton];
  }

  escapeOffer = [(CDPUICustodianInstructionsViewModel *)self->_viewModel escapeOffer];

  if (escapeOffer)
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    escapeOffer2 = [(CDPUICustodianInstructionsViewModel *)self->_viewModel escapeOffer];
    [linkButton addTarget:escapeOffer2 action:sel_handleEscapeAction_ forControlEvents:64];

    escapeOffer3 = [(CDPUICustodianInstructionsViewModel *)self->_viewModel escapeOffer];
    escapeOfferName = [escapeOffer3 escapeOfferName];
    [linkButton setTitle:escapeOfferName forState:0];

    buttonTray2 = [(CDPUICustodianInstructionsViewController *)self buttonTray];
    [buttonTray2 addButton:linkButton];
  }
}

- (void)_handleContinueAction:(id)action
{
  continueOption = [(CDPUICustodianInstructionsViewModel *)self->_viewModel continueOption];

  if (continueOption)
  {
    continueOption2 = [(CDPUICustodianInstructionsViewModel *)self->_viewModel continueOption];
    escapeAction = [continueOption2 escapeAction];
    escapeAction[2]();
  }
}

@end