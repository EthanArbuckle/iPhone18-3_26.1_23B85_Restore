@interface CDPWaitingApprovalViewController
- (CDPWaitingApprovalViewController)initWithEscapeOffer:(id)offer;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)cancelRemoteApproval;
- (void)escapeOfferSelectedWithOption:(id)option;
- (void)loadView;
- (void)remoteApprovalSucceeded;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
@end

@implementation CDPWaitingApprovalViewController

- (CDPWaitingApprovalViewController)initWithEscapeOffer:(id)offer
{
  offerCopy = offer;
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  deviceClass = [mEMORY[0x277CFD4F8] deviceClass];

  v8 = [MEMORY[0x277CFD508] builderForKey:@"WAITING_APPROVAL_TITLE"];
  v9 = [v8 addDeviceClass:deviceClass];
  localizedString = [v9 localizedString];

  v11 = [MEMORY[0x277CFD508] builderForKey:@"WAITING_APPROVAL_SUBTITLE"];
  v12 = [v11 addDeviceClass:deviceClass];
  localizedString2 = [v12 localizedString];

  v14 = [(CDPTableViewController *)self initWithTitle:localizedString subTitle:localizedString2];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_escapeOffer, offer);
    [(CDPRemoteValidationEscapeOffer *)v15->_escapeOffer setPresentingViewController:v15];
  }

  return v15;
}

- (void)cancelRemoteApproval
{
  remoteApprovalCompletion = [(CDPWaitingApprovalViewController *)self remoteApprovalCompletion];

  if (remoteApprovalCompletion)
  {
    remoteApprovalCompletion2 = [(CDPWaitingApprovalViewController *)self remoteApprovalCompletion];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CFD418] code:-5307 userInfo:0];
    remoteApprovalCompletion2[2](remoteApprovalCompletion2, 0, v4);
  }
}

- (void)loadView
{
  v21.receiver = self;
  v21.super_class = CDPWaitingApprovalViewController;
  [(CDPTableViewController *)&v21 loadView];
  v3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v3;

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  tableView = [(CDPTableViewController *)self tableView];
  [tableView addSubview:self->_spinner];

  v6 = objc_alloc(MEMORY[0x277D756B8]);
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  waitingLabel = self->_waitingLabel;
  self->_waitingLabel = v7;

  v9 = self->_waitingLabel;
  v10 = CDPLocalizedString();
  [(UILabel *)v9 setText:v10];

  v11 = self->_waitingLabel;
  v12 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
  [(UILabel *)v11 setFont:v12];

  [(UILabel *)self->_waitingLabel sizeToFit];
  tableView2 = [(CDPTableViewController *)self tableView];
  [tableView2 addSubview:self->_waitingLabel];

  if (self->_escapeOffer)
  {
    v14 = [MEMORY[0x277D75220] buttonWithType:1];
    escapeButton = self->_escapeButton;
    self->_escapeButton = v14;

    v16 = self->_escapeButton;
    title = [(CDPRemoteValidationEscapeOffer *)self->_escapeOffer title];
    [(UIButton *)v16 setTitle:title forState:0];

    titleLabel = [(UIButton *)self->_escapeButton titleLabel];
    v19 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [titleLabel setFont:v19];

    [(UIButton *)self->_escapeButton addTarget:self->_escapeOffer action:sel_handleEscapeAction_ forControlEvents:64];
    [(UIButton *)self->_escapeButton sizeToFit];
    [(UIButton *)self->_escapeButton setAutoresizingMask:12];
    tableView3 = [(CDPTableViewController *)self tableView];
    [tableView3 addSubview:self->_escapeButton];
  }
}

- (void)viewDidLayoutSubviews
{
  v24.receiver = self;
  v24.super_class = CDPWaitingApprovalViewController;
  [(CDPTableViewController *)&v24 viewDidLayoutSubviews];
  tableView = [(CDPTableViewController *)self tableView];
  [tableView bounds];
  MidX = CGRectGetMidX(v25);
  [(UIButton *)self->_escapeButton frame];
  v5 = MidX - CGRectGetWidth(v26) * 0.5;
  tableView2 = [(CDPTableViewController *)self tableView];
  [tableView2 bounds];
  MaxY = CGRectGetMaxY(v27);
  [(UIButton *)self->_escapeButton frame];
  v8 = MaxY - CGRectGetHeight(v28) + -10.0;
  [(UIButton *)self->_escapeButton frame];
  Width = CGRectGetWidth(v29);
  [(UIButton *)self->_escapeButton frame];
  Height = CGRectGetHeight(v30);

  [(UIButton *)self->_escapeButton setFrame:v5, v8, Width, Height];
  tableView3 = [(CDPTableViewController *)self tableView];
  [tableView3 bounds];
  v12 = CGRectGetMidX(v31);
  tableView4 = [(CDPTableViewController *)self tableView];
  [tableView4 bounds];
  MidY = CGRectGetMidY(v32);
  [(UIActivityIndicatorView *)self->_spinner frame];
  v15 = CGRectGetWidth(v33);
  [(UIActivityIndicatorView *)self->_spinner frame];
  v16 = CGRectGetHeight(v34);

  [(UIActivityIndicatorView *)self->_spinner setFrame:v12, MidY, v15, v16];
  v35.origin.x = v12;
  v35.origin.y = MidY;
  v35.size.width = v15;
  v35.size.height = v16;
  v17 = CGRectGetMidX(v35);
  [(UILabel *)self->_waitingLabel frame];
  v19 = v17 - v18 * 0.5;
  v36.origin.x = v12;
  v36.origin.y = MidY;
  v36.size.width = v15;
  v36.size.height = v16;
  v20 = CGRectGetMaxY(v36);
  [(UILabel *)self->_waitingLabel frame];
  v22 = v20 + v21;
  [(UILabel *)self->_waitingLabel frame];
  v23 = CGRectGetWidth(v37);
  [(UILabel *)self->_waitingLabel frame];
  [(UILabel *)self->_waitingLabel setFrame:v19, v22, v23, CGRectGetHeight(v38)];
}

- (void)remoteApprovalSucceeded
{
  [(UIActivityIndicatorView *)self->_spinner stopAnimating];
  [(UILabel *)self->_waitingLabel setHidden:1];
  [(UILabel *)self->_waitingLabel sizeToFit];
  [(UIButton *)self->_escapeButton removeFromSuperview];
  view = [(CDPWaitingApprovalViewController *)self view];
  [view setNeedsLayout];

  mEMORY[0x277D3FA90] = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  navigationItem = [(CDPWaitingApprovalViewController *)self navigationItem];
  [mEMORY[0x277D3FA90] startAnimatingInNavItem:navigationItem forIdentifier:@"waitingApproval"];

  remoteApprovalCompletion = [(CDPWaitingApprovalViewController *)self remoteApprovalCompletion];

  if (remoteApprovalCompletion)
  {
    remoteApprovalCompletion2 = [(CDPWaitingApprovalViewController *)self remoteApprovalCompletion];
    remoteApprovalCompletion2[2](remoteApprovalCompletion2, 1, 0);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = CDPWaitingApprovalViewController;
  [(CDPWaitingApprovalViewController *)&v3 viewDidAppear:appear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CDPWaitingApprovalViewController;
  [(CDPWaitingApprovalViewController *)&v4 viewDidDisappear:disappear];
  mEMORY[0x277D3FA90] = [MEMORY[0x277D3FA90] sharedSpinnerManager];
  [mEMORY[0x277D3FA90] stopAnimatingForIdentifier:@"waitingApproval"];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = objc_alloc_init(MEMORY[0x277D75B48]);

  return v4;
}

- (void)escapeOfferSelectedWithOption:(id)option
{
  optionCopy = option;
  progressTitle = [optionCopy progressTitle];

  if (progressTitle)
  {
    progressTitle2 = [optionCopy progressTitle];
    [(CDPTableViewController *)self setHeaderTitle:progressTitle2];

    [(CDPTableViewController *)self setHeaderSubTitle:0];
    progressLabel = [optionCopy progressLabel];
    [(UILabel *)self->_waitingLabel setText:progressLabel];

    [(UILabel *)self->_waitingLabel sizeToFit];
    [(UIButton *)self->_escapeButton removeFromSuperview];
    view = [(CDPWaitingApprovalViewController *)self view];
    [view setNeedsLayout];
  }
}

@end