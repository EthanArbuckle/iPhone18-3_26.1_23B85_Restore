@interface CDPUIPiggybackingViewController
- (CDPUIPiggybackingViewController)initWithViewModel:(id)model cdpContext:(id)context;
- (void)_handleCantGetToDevicesButtonAction:(id)action;
- (void)_handleSendCodeAction:(id)action;
- (void)startSpinning;
- (void)stopSpinning;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CDPUIPiggybackingViewController

- (CDPUIPiggybackingViewController)initWithViewModel:(id)model cdpContext:(id)context
{
  modelCopy = model;
  contextCopy = context;
  title = [modelCopy title];
  message = [modelCopy message];
  iconName = [modelCopy iconName];
  v16.receiver = self;
  v16.super_class = CDPUIPiggybackingViewController;
  v12 = [(CDPUIPiggybackingViewController *)&v16 initWithTitle:title detailText:message symbolName:iconName contentLayout:2];

  if (v12)
  {
    objc_storeStrong(&v12->_viewModel, model);
    objc_storeStrong(&v12->_cdpContext, context);
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
  contentView = [(CDPUIPiggybackingViewController *)self contentView];
  [contentView addSubview:self->_activityIndicator];

  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton addTarget:self action:sel__handleSendCodeAction_ forControlEvents:64];
  sendCodeOption = [(CDPUIPiggybackingViewModel *)self->_viewModel sendCodeOption];
  title = [sendCodeOption title];
  v31 = boldButton;
  [boldButton setTitle:title forState:0];

  buttonTray = [(CDPUIPiggybackingViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [linkButton addTarget:self action:sel__handleCantGetToDevicesButtonAction_ forControlEvents:64];
  cantGetToDeviceOption = [(CDPUIPiggybackingViewModel *)self->_viewModel cantGetToDeviceOption];
  escapeOfferName = [cantGetToDeviceOption escapeOfferName];
  v30 = linkButton;
  [linkButton setTitle:escapeOfferName forState:0];

  buttonTray2 = [(CDPUIPiggybackingViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];

  v22 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UIActivityIndicatorView *)self->_activityIndicator leadingAnchor];
  contentView2 = [(CDPUIPiggybackingViewController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v33[0] = v26;
  trailingAnchor = [(UIActivityIndicatorView *)self->_activityIndicator trailingAnchor];
  contentView3 = [(CDPUIPiggybackingViewController *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v33[1] = v12;
  topAnchor = [(UIActivityIndicatorView *)self->_activityIndicator topAnchor];
  contentView4 = [(CDPUIPiggybackingViewController *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:100.0];
  v33[2] = v16;
  bottomAnchor = [(UIActivityIndicatorView *)self->_activityIndicator bottomAnchor];
  contentView5 = [(CDPUIPiggybackingViewController *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v33[3] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  [v22 activateConstraints:v21];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = CDPUIPiggybackingViewController;
  [(OBBaseWelcomeController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = CDPUIPiggybackingViewController;
  [(OBBaseWelcomeController *)&v3 viewWillDisappear:disappear];
}

- (void)_handleSendCodeAction:(id)action
{
  sendCodeOption = [(CDPUIPiggybackingViewModel *)self->_viewModel sendCodeOption];

  if (sendCodeOption)
  {
    sendCodeOption2 = [(CDPUIPiggybackingViewModel *)self->_viewModel sendCodeOption];
    escapeAction = [sendCodeOption2 escapeAction];
    escapeAction[2]();
  }
}

- (void)_handleCantGetToDevicesButtonAction:(id)action
{
  cantGetToDeviceOption = [(CDPUIPiggybackingViewModel *)self->_viewModel cantGetToDeviceOption];

  if (cantGetToDeviceOption)
  {
    cantGetToDeviceOption2 = [(CDPUIPiggybackingViewModel *)self->_viewModel cantGetToDeviceOption];
    [cantGetToDeviceOption2 handleEscapeAction:self];
  }
}

- (void)startSpinning
{
  buttonTray = [(CDPUIPiggybackingViewController *)self buttonTray];
  [buttonTray setHidden:1];

  activityIndicator = self->_activityIndicator;

  [(UIActivityIndicatorView *)activityIndicator startAnimating];
}

- (void)stopSpinning
{
  [(UIActivityIndicatorView *)self->_activityIndicator stopAnimating];
  buttonTray = [(CDPUIPiggybackingViewController *)self buttonTray];
  [buttonTray setHidden:0];
}

@end