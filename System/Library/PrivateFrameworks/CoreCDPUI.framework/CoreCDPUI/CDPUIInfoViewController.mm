@interface CDPUIInfoViewController
- (CDPUIInfoViewController)initWithViewModel:(id)a3;
- (void)_handleButton1Action:(id)a3;
- (void)_handleButton2Action:(id)a3;
- (void)viewDidLoad;
@end

@implementation CDPUIInfoViewController

- (CDPUIInfoViewController)initWithViewModel:(id)a3
{
  v5 = a3;
  v6 = [v5 title];
  v7 = [v5 message];
  v10.receiver = self;
  v10.super_class = CDPUIInfoViewController;
  v8 = [(CDPUIInfoViewController *)&v10 initWithTitle:v6 detailText:v7 icon:0 contentLayout:3];

  if (v8)
  {
    objc_storeStrong(&v8->_viewModel, a3);
  }

  return v8;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = CDPUIInfoViewController;
  [(OBBaseWelcomeController *)&v12 viewDidLoad];
  v3 = [MEMORY[0x277D37618] boldButton];
  [v3 addTarget:self action:sel__handleButton1Action_ forControlEvents:64];
  v4 = [(CDPUIInfoViewModel *)self->_viewModel option1];
  v5 = [v4 title];
  [v3 setTitle:v5 forState:0];

  v6 = [(CDPUIInfoViewController *)self buttonTray];
  [v6 addButton:v3];

  v7 = [(CDPUIInfoViewModel *)self->_viewModel option2];

  if (v7)
  {
    v8 = [MEMORY[0x277D37650] linkButton];
    [v8 addTarget:self action:sel__handleButton2Action_ forControlEvents:64];
    v9 = [(CDPUIInfoViewModel *)self->_viewModel option2];
    v10 = [v9 title];
    [v8 setTitle:v10 forState:0];

    v11 = [(CDPUIInfoViewController *)self buttonTray];
    [v11 addButton:v8];
  }
}

- (void)_handleButton1Action:(id)a3
{
  v4 = [(CDPUIInfoViewModel *)self->_viewModel option1];
  v5 = [v4 escapeAction];

  if (v5)
  {
    v7 = [(CDPUIInfoViewModel *)self->_viewModel option1];
    v6 = [v7 escapeAction];
    v6[2]();
  }
}

- (void)_handleButton2Action:(id)a3
{
  v4 = [(CDPUIInfoViewModel *)self->_viewModel option2];
  v5 = [v4 escapeAction];

  if (v5)
  {
    v7 = [(CDPUIInfoViewModel *)self->_viewModel option2];
    v6 = [v7 escapeAction];
    v6[2]();
  }
}

@end