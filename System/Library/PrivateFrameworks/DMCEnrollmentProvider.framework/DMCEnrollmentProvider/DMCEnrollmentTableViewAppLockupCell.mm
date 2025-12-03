@interface DMCEnrollmentTableViewAppLockupCell
- (DMCEnrollmentTableViewAppLockupCell)initWithLockupRequest:(id)request lockupViewGroup:(id)group presentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (double)cellHeight;
- (void)layoutSubviews;
@end

@implementation DMCEnrollmentTableViewAppLockupCell

- (DMCEnrollmentTableViewAppLockupCell)initWithLockupRequest:(id)request lockupViewGroup:(id)group presentingViewController:(id)controller
{
  requestCopy = request;
  groupCopy = group;
  controllerCopy = controller;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v29.receiver = self;
  v29.super_class = DMCEnrollmentTableViewAppLockupCell;
  v13 = [(DMCEnrollmentTableViewAppLockupCell *)&v29 initWithStyle:0 reuseIdentifier:v12];

  if (v13)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(DMCEnrollmentTableViewAppLockupCell *)v13 setBackgroundColor:systemBackgroundColor];

    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    contentView = [(DMCEnrollmentTableViewAppLockupCell *)v13 contentView];
    [contentView setBackgroundColor:secondarySystemBackgroundColor];

    contentView2 = [(DMCEnrollmentTableViewAppLockupCell *)v13 contentView];
    layer = [contentView2 layer];
    [layer setCornerRadius:15.0];

    contentView3 = [(DMCEnrollmentTableViewAppLockupCell *)v13 contentView];
    layer2 = [contentView3 layer];
    [layer2 setMasksToBounds:1];

    [(DMCEnrollmentTableViewAppLockupCell *)v13 setSelectionStyle:0];
    objc_storeWeak(&v13->_presentingViewController, controllerCopy);
    v21 = objc_alloc(MEMORY[0x277CEC298]);
    v22 = [v21 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    lockupView = v13->_lockupView;
    v13->_lockupView = v22;

    [(ASCLockupView *)v13->_lockupView setLockupSize:*MEMORY[0x277CEC248]];
    [(ASCLockupView *)v13->_lockupView setShowsPlaceholderContent:1];
    [(ASCLockupView *)v13->_lockupView setGroup:groupCopy];
    [(ASCLockupView *)v13->_lockupView setRequest:requestCopy];
    [(ASCLockupView *)v13->_lockupView setDelegate:v13];
    v24 = [MEMORY[0x277CEC278] viewInAppStoreOfferForLockupView:v13->_lockupView];
    lockup = [(ASCLockupView *)v13->_lockupView lockup];
    v26 = [lockup lockupWithOffer:v24];
    [(ASCLockupView *)v13->_lockupView setLockup:v26];

    contentView4 = [(DMCEnrollmentTableViewAppLockupCell *)v13 contentView];
    [contentView4 addSubview:v13->_lockupView];
  }

  return v13;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = DMCEnrollmentTableViewAppLockupCell;
  [(DMCEnrollmentTableViewAppLockupCell *)&v12 layoutSubviews];
  [(DMCEnrollmentTableViewAppLockupCell *)self bounds];
  [(DMCEnrollmentTableViewAppLockupCell *)self setSeparatorInset:0.0, CGRectGetWidth(v13), 0.0, 0.0];
  [(DMCEnrollmentTableViewAppLockupCell *)self bounds];
  Width = CGRectGetWidth(v14);
  [(DMCEnrollmentTableViewAppLockupCell *)self bounds];
  v4 = CGRectGetHeight(v15) + -20.0;
  contentView = [(DMCEnrollmentTableViewAppLockupCell *)self contentView];
  [contentView setFrame:{0.0, 10.0, Width, v4}];

  contentView2 = [(DMCEnrollmentTableViewAppLockupCell *)self contentView];
  [contentView2 bounds];
  v7 = CGRectGetWidth(v16) + -30.0;
  contentView3 = [(DMCEnrollmentTableViewAppLockupCell *)self contentView];
  [contentView3 bounds];
  v9 = CGRectGetHeight(v17) + -30.0;
  lockupView = [(DMCEnrollmentTableViewAppLockupCell *)self lockupView];
  [lockupView setFrame:{15.0, 15.0, v7, v9}];

  lockupView2 = [(DMCEnrollmentTableViewAppLockupCell *)self lockupView];
  [lockupView2 setAutoresizingMask:18];
}

- (double)cellHeight
{
  contentView = [(DMCEnrollmentTableViewAppLockupCell *)self contentView];
  [contentView bounds];
  Width = CGRectGetWidth(v9);

  lockupView = [(DMCEnrollmentTableViewAppLockupCell *)self lockupView];
  [lockupView sizeThatFits:{Width, 1.79769313e308}];
  v7 = v6;

  return v7 + 30.0 + 20.0;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end