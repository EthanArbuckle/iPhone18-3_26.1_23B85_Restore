@interface DMCEnrollmentTableViewAppLockupCell
- (DMCEnrollmentTableViewAppLockupCell)initWithLockupRequest:(id)a3 lockupViewGroup:(id)a4 presentingViewController:(id)a5;
- (UIViewController)presentingViewController;
- (double)cellHeight;
- (void)layoutSubviews;
@end

@implementation DMCEnrollmentTableViewAppLockupCell

- (DMCEnrollmentTableViewAppLockupCell)initWithLockupRequest:(id)a3 lockupViewGroup:(id)a4 presentingViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v29.receiver = self;
  v29.super_class = DMCEnrollmentTableViewAppLockupCell;
  v13 = [(DMCEnrollmentTableViewAppLockupCell *)&v29 initWithStyle:0 reuseIdentifier:v12];

  if (v13)
  {
    v14 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(DMCEnrollmentTableViewAppLockupCell *)v13 setBackgroundColor:v14];

    v15 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v16 = [(DMCEnrollmentTableViewAppLockupCell *)v13 contentView];
    [v16 setBackgroundColor:v15];

    v17 = [(DMCEnrollmentTableViewAppLockupCell *)v13 contentView];
    v18 = [v17 layer];
    [v18 setCornerRadius:15.0];

    v19 = [(DMCEnrollmentTableViewAppLockupCell *)v13 contentView];
    v20 = [v19 layer];
    [v20 setMasksToBounds:1];

    [(DMCEnrollmentTableViewAppLockupCell *)v13 setSelectionStyle:0];
    objc_storeWeak(&v13->_presentingViewController, v10);
    v21 = objc_alloc(MEMORY[0x277CEC298]);
    v22 = [v21 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    lockupView = v13->_lockupView;
    v13->_lockupView = v22;

    [(ASCLockupView *)v13->_lockupView setLockupSize:*MEMORY[0x277CEC248]];
    [(ASCLockupView *)v13->_lockupView setShowsPlaceholderContent:1];
    [(ASCLockupView *)v13->_lockupView setGroup:v9];
    [(ASCLockupView *)v13->_lockupView setRequest:v8];
    [(ASCLockupView *)v13->_lockupView setDelegate:v13];
    v24 = [MEMORY[0x277CEC278] viewInAppStoreOfferForLockupView:v13->_lockupView];
    v25 = [(ASCLockupView *)v13->_lockupView lockup];
    v26 = [v25 lockupWithOffer:v24];
    [(ASCLockupView *)v13->_lockupView setLockup:v26];

    v27 = [(DMCEnrollmentTableViewAppLockupCell *)v13 contentView];
    [v27 addSubview:v13->_lockupView];
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
  v5 = [(DMCEnrollmentTableViewAppLockupCell *)self contentView];
  [v5 setFrame:{0.0, 10.0, Width, v4}];

  v6 = [(DMCEnrollmentTableViewAppLockupCell *)self contentView];
  [v6 bounds];
  v7 = CGRectGetWidth(v16) + -30.0;
  v8 = [(DMCEnrollmentTableViewAppLockupCell *)self contentView];
  [v8 bounds];
  v9 = CGRectGetHeight(v17) + -30.0;
  v10 = [(DMCEnrollmentTableViewAppLockupCell *)self lockupView];
  [v10 setFrame:{15.0, 15.0, v7, v9}];

  v11 = [(DMCEnrollmentTableViewAppLockupCell *)self lockupView];
  [v11 setAutoresizingMask:18];
}

- (double)cellHeight
{
  v3 = [(DMCEnrollmentTableViewAppLockupCell *)self contentView];
  [v3 bounds];
  Width = CGRectGetWidth(v9);

  v5 = [(DMCEnrollmentTableViewAppLockupCell *)self lockupView];
  [v5 sizeThatFits:{Width, 1.79769313e308}];
  v7 = v6;

  return v7 + 30.0 + 20.0;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end