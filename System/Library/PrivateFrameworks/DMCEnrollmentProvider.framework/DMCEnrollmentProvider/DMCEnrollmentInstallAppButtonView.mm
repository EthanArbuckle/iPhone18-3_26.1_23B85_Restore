@interface DMCEnrollmentInstallAppButtonView
- (CGSize)sizeThatFits:(CGSize)fits;
- (DMCEnrollmentInstallAppButtonView)initWithLockupRequest:(id)request lockupViewGroup:(id)group beginInstallationHandler:(id)handler completionHandler:(id)completionHandler;
- (void)layoutSubviews;
- (void)lockupView:(id)view appStateDidChange:(id)change;
@end

@implementation DMCEnrollmentInstallAppButtonView

- (DMCEnrollmentInstallAppButtonView)initWithLockupRequest:(id)request lockupViewGroup:(id)group beginInstallationHandler:(id)handler completionHandler:(id)completionHandler
{
  requestCopy = request;
  groupCopy = group;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v26.receiver = self;
  v26.super_class = DMCEnrollmentInstallAppButtonView;
  v14 = *MEMORY[0x277CBF3A0];
  v15 = *(MEMORY[0x277CBF3A0] + 8);
  v16 = *(MEMORY[0x277CBF3A0] + 16);
  v17 = *(MEMORY[0x277CBF3A0] + 24);
  v18 = [(DMCEnrollmentInstallAppButtonView *)&v26 initWithFrame:*MEMORY[0x277CBF3A0], v15, v16, v17];
  if (v18)
  {
    v19 = _Block_copy(completionHandlerCopy);
    completionHandler = v18->_completionHandler;
    v18->_completionHandler = v19;

    v21 = _Block_copy(handlerCopy);
    beginInstallationHandler = v18->_beginInstallationHandler;
    v18->_beginInstallationHandler = v21;

    v23 = [objc_alloc(MEMORY[0x277CEC298]) initWithFrame:{v14, v15, v16, v17}];
    lockupView = v18->_lockupView;
    v18->_lockupView = v23;

    [(ASCLockupView *)v18->_lockupView setLockupSize:*MEMORY[0x277CEC240]];
    [(ASCLockupView *)v18->_lockupView setGroup:groupCopy];
    [(ASCLockupView *)v18->_lockupView setRequest:requestCopy];
    [(ASCLockupView *)v18->_lockupView setDelegate:v18];
    [(DMCEnrollmentInstallAppButtonView *)v18 addSubview:v18->_lockupView];
  }

  return v18;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = DMCEnrollmentInstallAppButtonView;
  [(DMCEnrollmentInstallAppButtonView *)&v15 layoutSubviews];
  lockupView = [(DMCEnrollmentInstallAppButtonView *)self lockupView];
  [(DMCEnrollmentInstallAppButtonView *)self bounds];
  [lockupView sizeThatFits:{v4, 1.79769313e308}];
  v6 = v5;
  v8 = v7;

  if ([MEMORY[0x277D03530] isPad])
  {
    [(DMCEnrollmentInstallAppButtonView *)self bounds];
    v9 = (CGRectGetWidth(v16) + -360.0) * 0.5;
    lockupView2 = [(DMCEnrollmentInstallAppButtonView *)self lockupView];
    v11 = lockupView2;
    v12 = 360.0;
    v13 = v9;
  }

  else
  {
    lockupView2 = [(DMCEnrollmentInstallAppButtonView *)self lockupView];
    v11 = lockupView2;
    v13 = 0.0;
    v12 = v6;
  }

  [lockupView2 setFrame:{v13, 0.0, v12, v8}];

  lockupView3 = [(DMCEnrollmentInstallAppButtonView *)self lockupView];
  [lockupView3 setAutoresizingMask:18];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(DMCEnrollmentInstallAppButtonView *)self preferredHeight:fits.width];
  if (v5 == 0.0)
  {
    boldButton = [MEMORY[0x277D37618] boldButton];
    [boldButton setTitle:@" " forState:0];
    [boldButton intrinsicContentSize];
    v8 = v7;
    linkButton = [MEMORY[0x277D37650] linkButton];
    [linkButton setTitle:@" " forState:0];
    [linkButton intrinsicContentSize];
    [(DMCEnrollmentInstallAppButtonView *)self setPreferredHeight:v8 + v10 + 3.0];
  }

  [(DMCEnrollmentInstallAppButtonView *)self preferredHeight];
  v12 = v11;
  v13 = width;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)lockupView:(id)view appStateDidChange:(id)change
{
  v13 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  changeCopy = change;
  v8 = *DMCLogObjects();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = changeCopy;
    _os_log_impl(&dword_247E7D000, v8, OS_LOG_TYPE_DEFAULT, "DMCEnrollmentInstallAppButtonView: App state did change: %{public}@", &v11, 0xCu);
  }

  if ([changeCopy isEqualToString:*MEMORY[0x277CEC1B8]])
  {
    beginInstallationHandler = [(DMCEnrollmentInstallAppButtonView *)self beginInstallationHandler];
LABEL_8:
    v10 = beginInstallationHandler;
    (*(beginInstallationHandler + 16))();

    goto LABEL_9;
  }

  if (([changeCopy isEqualToString:*MEMORY[0x277CEC190]] & 1) != 0 || objc_msgSend(changeCopy, "isEqualToString:", *MEMORY[0x277CEC1A0]))
  {
    [viewCopy setHidden:1];
    beginInstallationHandler = [(DMCEnrollmentInstallAppButtonView *)self completionHandler];
    goto LABEL_8;
  }

LABEL_9:
}

@end