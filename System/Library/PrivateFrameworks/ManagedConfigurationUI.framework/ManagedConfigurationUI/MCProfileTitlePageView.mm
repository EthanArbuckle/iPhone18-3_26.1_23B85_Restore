@interface MCProfileTitlePageView
- (MCProfileTitlePageView)initWithFrame:(CGRect)frame;
- (id)_createBottomView;
- (id)_createCancelButton;
- (id)_createInfoButton;
- (id)_createInstallButton;
- (void)layoutSubviews;
- (void)showBottomView:(BOOL)view animated:(BOOL)animated;
@end

@implementation MCProfileTitlePageView

- (MCProfileTitlePageView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = MCProfileTitlePageView;
  v3 = [(MCSectionBasedTableView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MCProfileTitlePageView *)v3 safeAreaInsets];
    v6 = v5 + 127.0;
    tableView = [(MCSectionBasedTableView *)v4 tableView];
    [tableView setContentInset:{55.0, 0.0, v6, 0.0}];

    v8 = objc_opt_new();
    topBarView = v4->_topBarView;
    v4->_topBarView = v8;

    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v11 = [secondarySystemBackgroundColor colorWithAlphaComponent:0.0];
    [(UIView *)v4->_topBarView setBackgroundColor:v11];

    _createBottomView = [(MCProfileTitlePageView *)v4 _createBottomView];
    bottomBarView = v4->_bottomBarView;
    v4->_bottomBarView = _createBottomView;

    _createCancelButton = [(MCProfileTitlePageView *)v4 _createCancelButton];
    cancelButton = v4->_cancelButton;
    v4->_cancelButton = _createCancelButton;

    _createInstallButton = [(MCProfileTitlePageView *)v4 _createInstallButton];
    installButton = v4->_installButton;
    v4->_installButton = _createInstallButton;

    _createInfoButton = [(MCProfileTitlePageView *)v4 _createInfoButton];
    infoButton = v4->_infoButton;
    v4->_infoButton = _createInfoButton;

    [(UIView *)v4->_bottomBarView addSubview:v4->_cancelButton];
    [(UIView *)v4->_bottomBarView addSubview:v4->_installButton];
    [(UIView *)v4->_topBarView addSubview:v4->_infoButton];
    [(MCProfileTitlePageView *)v4 addSubview:v4->_topBarView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = MCProfileTitlePageView;
  [(MCSectionBasedTableView *)&v30 layoutSubviews];
  if (MCUIIsiPhone())
  {
    v3 = 44.0;
  }

  else
  {
    v3 = 50.0;
  }

  [(MCProfileTitlePageView *)self bounds];
  Width = CGRectGetWidth(v31);
  topBarView = [(MCProfileTitlePageView *)self topBarView];
  [topBarView setFrame:{0.0, 0.0, Width, v3}];

  cancelButton = [(MCProfileTitlePageView *)self cancelButton];
  [cancelButton intrinsicContentSize];
  v8 = v7;

  installButton = [(MCProfileTitlePageView *)self installButton];
  [installButton intrinsicContentSize];
  v11 = v10;

  [(MCProfileTitlePageView *)self safeAreaInsets];
  v13 = v12 + v8 + v11 + 17.0 + 10.0;
  [(MCProfileTitlePageView *)self bounds];
  v14 = CGRectGetHeight(v32) - v13;
  [(MCProfileTitlePageView *)self bounds];
  v15 = CGRectGetWidth(v33);
  bottomBarView = [(MCProfileTitlePageView *)self bottomBarView];
  [bottomBarView setFrame:{0.0, v14, v15, v13}];

  LODWORD(bottomBarView) = MCUIIsiPad();
  [(MCProfileTitlePageView *)self bounds];
  v17 = CGRectGetWidth(v34);
  if (bottomBarView)
  {
    v18 = (v17 + -360.0) * 0.5;
    installButton2 = [(MCProfileTitlePageView *)self installButton];
    v20 = 360.0;
  }

  else
  {
    v20 = v17 + -48.0;
    installButton2 = [(MCProfileTitlePageView *)self installButton];
    v18 = 24.0;
  }

  [installButton2 setFrame:{v18, 17.0, v20, v11}];

  installButton3 = [(MCProfileTitlePageView *)self installButton];
  [installButton3 frame];
  v22 = CGRectGetMaxY(v35) + 5.0;
  [(MCProfileTitlePageView *)self bounds];
  v23 = CGRectGetWidth(v36) + -48.0;
  cancelButton2 = [(MCProfileTitlePageView *)self cancelButton];
  [cancelButton2 setFrame:{24.0, v22, v23, v8}];

  infoButton = [(MCProfileTitlePageView *)self infoButton];
  [infoButton frame];
  v26 = CGRectGetWidth(v37);

  topBarView2 = [(MCProfileTitlePageView *)self topBarView];
  [topBarView2 bounds];
  v28 = CGRectGetWidth(v38) - v26 + -12.0;
  infoButton2 = [(MCProfileTitlePageView *)self infoButton];
  [infoButton2 setFrame:{v28, 7.0, v26, 30.0}];
}

- (id)_createInstallButton
{
  boldButton = [MEMORY[0x277D37618] boldButton];
  v3 = MCUILocalizedStringByDevice(@"ENROLL_MY");
  [boldButton setTitle:v3 forState:0];

  [boldButton setTranslatesAutoresizingMaskIntoConstraints:1];

  return boldButton;
}

- (id)_createCancelButton
{
  linkButton = [MEMORY[0x277D37650] linkButton];
  v3 = MCUILocalizedString(@"CANCEL_AND_DELETE_PROFILE");
  [linkButton setTitle:v3 forState:0];

  [linkButton setTranslatesAutoresizingMaskIntoConstraints:1];

  return linkButton;
}

- (id)_createInfoButton
{
  v2 = [MEMORY[0x277D75220] buttonWithType:1];
  v3 = MCUILocalizedString(@"CERT_DETAILS");
  [v2 setTitle:v3 forState:0];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v2 setTitleColor:systemBlueColor forState:0];

  v5 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
  titleLabel = [v2 titleLabel];
  [titleLabel setFont:v5];

  [v2 sizeToFit];

  return v2;
}

- (id)_createBottomView
{
  v2 = objc_opt_new();
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [v2 setBackgroundColor:secondarySystemBackgroundColor];
  }

  else
  {
    systemFillColor = [MEMORY[0x277D75348] systemFillColor];
    v5 = [systemFillColor colorWithAlphaComponent:0.150000006];
    [v2 setBackgroundColor:v5];

    secondarySystemBackgroundColor = [MEMORY[0x277D75210] effectWithStyle:4];
    v6 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:secondarySystemBackgroundColor];
    [v2 bounds];
    [v6 setFrame:?];
    [v6 setAutoresizingMask:18];
    [v2 insertSubview:v6 atIndex:0];
  }

  return v2;
}

- (void)showBottomView:(BOOL)view animated:(BOOL)animated
{
  v4 = 0.200000003;
  v5[1] = 3221225472;
  v5[0] = MEMORY[0x277D85DD0];
  v5[2] = __50__MCProfileTitlePageView_showBottomView_animated___block_invoke;
  v5[3] = &unk_279861C18;
  if (!animated)
  {
    v4 = 0.0;
  }

  v5[4] = self;
  viewCopy = view;
  [MEMORY[0x277D75D18] animateWithDuration:v5 animations:v4];
}

void __50__MCProfileTitlePageView_showBottomView_animated___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v3 = [*(a1 + 32) bottomBarView];
  [v3 setAlpha:v2];
}

@end