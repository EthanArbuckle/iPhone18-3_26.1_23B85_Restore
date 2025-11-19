@interface DMCEnrollmentInstallAppButtonView
- (CGSize)sizeThatFits:(CGSize)a3;
- (DMCEnrollmentInstallAppButtonView)initWithLockupRequest:(id)a3 lockupViewGroup:(id)a4 beginInstallationHandler:(id)a5 completionHandler:(id)a6;
- (void)layoutSubviews;
- (void)lockupView:(id)a3 appStateDidChange:(id)a4;
@end

@implementation DMCEnrollmentInstallAppButtonView

- (DMCEnrollmentInstallAppButtonView)initWithLockupRequest:(id)a3 lockupViewGroup:(id)a4 beginInstallationHandler:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = DMCEnrollmentInstallAppButtonView;
  v14 = *MEMORY[0x277CBF3A0];
  v15 = *(MEMORY[0x277CBF3A0] + 8);
  v16 = *(MEMORY[0x277CBF3A0] + 16);
  v17 = *(MEMORY[0x277CBF3A0] + 24);
  v18 = [(DMCEnrollmentInstallAppButtonView *)&v26 initWithFrame:*MEMORY[0x277CBF3A0], v15, v16, v17];
  if (v18)
  {
    v19 = _Block_copy(v13);
    completionHandler = v18->_completionHandler;
    v18->_completionHandler = v19;

    v21 = _Block_copy(v12);
    beginInstallationHandler = v18->_beginInstallationHandler;
    v18->_beginInstallationHandler = v21;

    v23 = [objc_alloc(MEMORY[0x277CEC298]) initWithFrame:{v14, v15, v16, v17}];
    lockupView = v18->_lockupView;
    v18->_lockupView = v23;

    [(ASCLockupView *)v18->_lockupView setLockupSize:*MEMORY[0x277CEC240]];
    [(ASCLockupView *)v18->_lockupView setGroup:v11];
    [(ASCLockupView *)v18->_lockupView setRequest:v10];
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
  v3 = [(DMCEnrollmentInstallAppButtonView *)self lockupView];
  [(DMCEnrollmentInstallAppButtonView *)self bounds];
  [v3 sizeThatFits:{v4, 1.79769313e308}];
  v6 = v5;
  v8 = v7;

  if ([MEMORY[0x277D03530] isPad])
  {
    [(DMCEnrollmentInstallAppButtonView *)self bounds];
    v9 = (CGRectGetWidth(v16) + -360.0) * 0.5;
    v10 = [(DMCEnrollmentInstallAppButtonView *)self lockupView];
    v11 = v10;
    v12 = 360.0;
    v13 = v9;
  }

  else
  {
    v10 = [(DMCEnrollmentInstallAppButtonView *)self lockupView];
    v11 = v10;
    v13 = 0.0;
    v12 = v6;
  }

  [v10 setFrame:{v13, 0.0, v12, v8}];

  v14 = [(DMCEnrollmentInstallAppButtonView *)self lockupView];
  [v14 setAutoresizingMask:18];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(DMCEnrollmentInstallAppButtonView *)self preferredHeight:a3.width];
  if (v5 == 0.0)
  {
    v6 = [MEMORY[0x277D37618] boldButton];
    [v6 setTitle:@" " forState:0];
    [v6 intrinsicContentSize];
    v8 = v7;
    v9 = [MEMORY[0x277D37650] linkButton];
    [v9 setTitle:@" " forState:0];
    [v9 intrinsicContentSize];
    [(DMCEnrollmentInstallAppButtonView *)self setPreferredHeight:v8 + v10 + 3.0];
  }

  [(DMCEnrollmentInstallAppButtonView *)self preferredHeight];
  v12 = v11;
  v13 = width;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)lockupView:(id)a3 appStateDidChange:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *DMCLogObjects();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_247E7D000, v8, OS_LOG_TYPE_DEFAULT, "DMCEnrollmentInstallAppButtonView: App state did change: %{public}@", &v11, 0xCu);
  }

  if ([v7 isEqualToString:*MEMORY[0x277CEC1B8]])
  {
    v9 = [(DMCEnrollmentInstallAppButtonView *)self beginInstallationHandler];
LABEL_8:
    v10 = v9;
    (*(v9 + 16))();

    goto LABEL_9;
  }

  if (([v7 isEqualToString:*MEMORY[0x277CEC190]] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CEC1A0]))
  {
    [v6 setHidden:1];
    v9 = [(DMCEnrollmentInstallAppButtonView *)self completionHandler];
    goto LABEL_8;
  }

LABEL_9:
}

@end