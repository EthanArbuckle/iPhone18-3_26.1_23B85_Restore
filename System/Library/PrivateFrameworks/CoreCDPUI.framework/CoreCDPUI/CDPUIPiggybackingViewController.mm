@interface CDPUIPiggybackingViewController
- (CDPUIPiggybackingViewController)initWithViewModel:(id)a3 cdpContext:(id)a4;
- (void)_handleCantGetToDevicesButtonAction:(id)a3;
- (void)_handleSendCodeAction:(id)a3;
- (void)startSpinning;
- (void)stopSpinning;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CDPUIPiggybackingViewController

- (CDPUIPiggybackingViewController)initWithViewModel:(id)a3 cdpContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 title];
  v10 = [v7 message];
  v11 = [v7 iconName];
  v16.receiver = self;
  v16.super_class = CDPUIPiggybackingViewController;
  v12 = [(CDPUIPiggybackingViewController *)&v16 initWithTitle:v9 detailText:v10 symbolName:v11 contentLayout:2];

  if (v12)
  {
    objc_storeStrong(&v12->_viewModel, a3);
    objc_storeStrong(&v12->_cdpContext, a4);
    v13 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
    activityIndicator = v12->_activityIndicator;
    v12->_activityIndicator = v13;

    [(UIActivityIndicatorView *)v12->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v12;
}

- (void)viewDidLoad
{
  v33[4] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = CDPUIPiggybackingViewController;
  [(OBBaseWelcomeController *)&v32 viewDidLoad];
  v3 = [(CDPUIPiggybackingViewController *)self contentView];
  [v3 addSubview:self->_activityIndicator];

  v4 = [MEMORY[0x277D37618] boldButton];
  [v4 addTarget:self action:sel__handleSendCodeAction_ forControlEvents:64];
  v5 = [(CDPUIPiggybackingViewModel *)self->_viewModel sendCodeOption];
  v6 = [v5 title];
  v31 = v4;
  [v4 setTitle:v6 forState:0];

  v7 = [(CDPUIPiggybackingViewController *)self buttonTray];
  [v7 addButton:v4];

  v8 = [MEMORY[0x277D37650] linkButton];
  [v8 addTarget:self action:sel__handleCantGetToDevicesButtonAction_ forControlEvents:64];
  v9 = [(CDPUIPiggybackingViewModel *)self->_viewModel cantGetToDeviceOption];
  v10 = [v9 escapeOfferName];
  v30 = v8;
  [v8 setTitle:v10 forState:0];

  v11 = [(CDPUIPiggybackingViewController *)self buttonTray];
  [v11 addButton:v8];

  v22 = MEMORY[0x277CCAAD0];
  v28 = [(UIActivityIndicatorView *)self->_activityIndicator leadingAnchor];
  v29 = [(CDPUIPiggybackingViewController *)self contentView];
  v27 = [v29 leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v33[0] = v26;
  v24 = [(UIActivityIndicatorView *)self->_activityIndicator trailingAnchor];
  v25 = [(CDPUIPiggybackingViewController *)self contentView];
  v23 = [v25 trailingAnchor];
  v12 = [v24 constraintEqualToAnchor:v23];
  v33[1] = v12;
  v13 = [(UIActivityIndicatorView *)self->_activityIndicator topAnchor];
  v14 = [(CDPUIPiggybackingViewController *)self contentView];
  v15 = [v14 topAnchor];
  v16 = [v13 constraintEqualToAnchor:v15 constant:100.0];
  v33[2] = v16;
  v17 = [(UIActivityIndicatorView *)self->_activityIndicator bottomAnchor];
  v18 = [(CDPUIPiggybackingViewController *)self contentView];
  v19 = [v18 bottomAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  v33[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  [v22 activateConstraints:v21];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CDPUIPiggybackingViewController;
  [(OBBaseWelcomeController *)&v3 viewDidAppear:a3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CDPUIPiggybackingViewController;
  [(OBBaseWelcomeController *)&v3 viewWillDisappear:a3];
}

- (void)_handleSendCodeAction:(id)a3
{
  v4 = [(CDPUIPiggybackingViewModel *)self->_viewModel sendCodeOption];

  if (v4)
  {
    v6 = [(CDPUIPiggybackingViewModel *)self->_viewModel sendCodeOption];
    v5 = [v6 escapeAction];
    v5[2]();
  }
}

- (void)_handleCantGetToDevicesButtonAction:(id)a3
{
  v4 = [(CDPUIPiggybackingViewModel *)self->_viewModel cantGetToDeviceOption];

  if (v4)
  {
    v5 = [(CDPUIPiggybackingViewModel *)self->_viewModel cantGetToDeviceOption];
    [v5 handleEscapeAction:self];
  }
}

- (void)startSpinning
{
  v3 = [(CDPUIPiggybackingViewController *)self buttonTray];
  [v3 setHidden:1];

  activityIndicator = self->_activityIndicator;

  [(UIActivityIndicatorView *)activityIndicator startAnimating];
}

- (void)stopSpinning
{
  [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
  v3 = [(CDPUIPiggybackingViewController *)self buttonTray];
  [v3 setHidden:0];
}

@end