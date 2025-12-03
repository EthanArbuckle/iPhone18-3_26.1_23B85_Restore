@interface CDPUIInfoViewController
- (CDPUIInfoViewController)initWithViewModel:(id)model;
- (void)_handleButton1Action:(id)action;
- (void)_handleButton2Action:(id)action;
- (void)viewDidLoad;
@end

@implementation CDPUIInfoViewController

- (CDPUIInfoViewController)initWithViewModel:(id)model
{
  modelCopy = model;
  title = [modelCopy title];
  message = [modelCopy message];
  v10.receiver = self;
  v10.super_class = CDPUIInfoViewController;
  v8 = [(CDPUIInfoViewController *)&v10 initWithTitle:title detailText:message icon:0 contentLayout:3];

  if (v8)
  {
    objc_storeStrong(&v8->_viewModel, model);
  }

  return v8;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = CDPUIInfoViewController;
  [(OBBaseWelcomeController *)&v12 viewDidLoad];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton addTarget:self action:sel__handleButton1Action_ forControlEvents:64];
  option1 = [(CDPUIInfoViewModel *)self->_viewModel option1];
  title = [option1 title];
  [boldButton setTitle:title forState:0];

  buttonTray = [(CDPUIInfoViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  option2 = [(CDPUIInfoViewModel *)self->_viewModel option2];

  if (option2)
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    [linkButton addTarget:self action:sel__handleButton2Action_ forControlEvents:64];
    option22 = [(CDPUIInfoViewModel *)self->_viewModel option2];
    title2 = [option22 title];
    [linkButton setTitle:title2 forState:0];

    buttonTray2 = [(CDPUIInfoViewController *)self buttonTray];
    [buttonTray2 addButton:linkButton];
  }
}

- (void)_handleButton1Action:(id)action
{
  option1 = [(CDPUIInfoViewModel *)self->_viewModel option1];
  escapeAction = [option1 escapeAction];

  if (escapeAction)
  {
    option12 = [(CDPUIInfoViewModel *)self->_viewModel option1];
    escapeAction2 = [option12 escapeAction];
    escapeAction2[2]();
  }
}

- (void)_handleButton2Action:(id)action
{
  option2 = [(CDPUIInfoViewModel *)self->_viewModel option2];
  escapeAction = [option2 escapeAction];

  if (escapeAction)
  {
    option22 = [(CDPUIInfoViewModel *)self->_viewModel option2];
    escapeAction2 = [option22 escapeAction];
    escapeAction2[2]();
  }
}

@end