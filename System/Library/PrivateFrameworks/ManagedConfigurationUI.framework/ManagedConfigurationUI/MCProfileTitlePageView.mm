@interface MCProfileTitlePageView
- (MCProfileTitlePageView)initWithFrame:(CGRect)a3;
- (id)_createBottomView;
- (id)_createCancelButton;
- (id)_createInfoButton;
- (id)_createInstallButton;
- (void)layoutSubviews;
- (void)showBottomView:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation MCProfileTitlePageView

- (MCProfileTitlePageView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = MCProfileTitlePageView;
  v3 = [(MCSectionBasedTableView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MCProfileTitlePageView *)v3 safeAreaInsets];
    v6 = v5 + 127.0;
    v7 = [(MCSectionBasedTableView *)v4 tableView];
    [v7 setContentInset:{55.0, 0.0, v6, 0.0}];

    v8 = objc_opt_new();
    topBarView = v4->_topBarView;
    v4->_topBarView = v8;

    v10 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v11 = [v10 colorWithAlphaComponent:0.0];
    [(UIView *)v4->_topBarView setBackgroundColor:v11];

    v12 = [(MCProfileTitlePageView *)v4 _createBottomView];
    bottomBarView = v4->_bottomBarView;
    v4->_bottomBarView = v12;

    v14 = [(MCProfileTitlePageView *)v4 _createCancelButton];
    cancelButton = v4->_cancelButton;
    v4->_cancelButton = v14;

    v16 = [(MCProfileTitlePageView *)v4 _createInstallButton];
    installButton = v4->_installButton;
    v4->_installButton = v16;

    v18 = [(MCProfileTitlePageView *)v4 _createInfoButton];
    infoButton = v4->_infoButton;
    v4->_infoButton = v18;

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
  v5 = [(MCProfileTitlePageView *)self topBarView];
  [v5 setFrame:{0.0, 0.0, Width, v3}];

  v6 = [(MCProfileTitlePageView *)self cancelButton];
  [v6 intrinsicContentSize];
  v8 = v7;

  v9 = [(MCProfileTitlePageView *)self installButton];
  [v9 intrinsicContentSize];
  v11 = v10;

  [(MCProfileTitlePageView *)self safeAreaInsets];
  v13 = v12 + v8 + v11 + 17.0 + 10.0;
  [(MCProfileTitlePageView *)self bounds];
  v14 = CGRectGetHeight(v32) - v13;
  [(MCProfileTitlePageView *)self bounds];
  v15 = CGRectGetWidth(v33);
  v16 = [(MCProfileTitlePageView *)self bottomBarView];
  [v16 setFrame:{0.0, v14, v15, v13}];

  LODWORD(v16) = MCUIIsiPad();
  [(MCProfileTitlePageView *)self bounds];
  v17 = CGRectGetWidth(v34);
  if (v16)
  {
    v18 = (v17 + -360.0) * 0.5;
    v19 = [(MCProfileTitlePageView *)self installButton];
    v20 = 360.0;
  }

  else
  {
    v20 = v17 + -48.0;
    v19 = [(MCProfileTitlePageView *)self installButton];
    v18 = 24.0;
  }

  [v19 setFrame:{v18, 17.0, v20, v11}];

  v21 = [(MCProfileTitlePageView *)self installButton];
  [v21 frame];
  v22 = CGRectGetMaxY(v35) + 5.0;
  [(MCProfileTitlePageView *)self bounds];
  v23 = CGRectGetWidth(v36) + -48.0;
  v24 = [(MCProfileTitlePageView *)self cancelButton];
  [v24 setFrame:{24.0, v22, v23, v8}];

  v25 = [(MCProfileTitlePageView *)self infoButton];
  [v25 frame];
  v26 = CGRectGetWidth(v37);

  v27 = [(MCProfileTitlePageView *)self topBarView];
  [v27 bounds];
  v28 = CGRectGetWidth(v38) - v26 + -12.0;
  v29 = [(MCProfileTitlePageView *)self infoButton];
  [v29 setFrame:{v28, 7.0, v26, 30.0}];
}

- (id)_createInstallButton
{
  v2 = [MEMORY[0x277D37618] boldButton];
  v3 = MCUILocalizedStringByDevice(@"ENROLL_MY");
  [v2 setTitle:v3 forState:0];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:1];

  return v2;
}

- (id)_createCancelButton
{
  v2 = [MEMORY[0x277D37650] linkButton];
  v3 = MCUILocalizedString(@"CANCEL_AND_DELETE_PROFILE");
  [v2 setTitle:v3 forState:0];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:1];

  return v2;
}

- (id)_createInfoButton
{
  v2 = [MEMORY[0x277D75220] buttonWithType:1];
  v3 = MCUILocalizedString(@"CERT_DETAILS");
  [v2 setTitle:v3 forState:0];

  v4 = [MEMORY[0x277D75348] systemBlueColor];
  [v2 setTitleColor:v4 forState:0];

  v5 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
  v6 = [v2 titleLabel];
  [v6 setFont:v5];

  [v2 sizeToFit];

  return v2;
}

- (id)_createBottomView
{
  v2 = objc_opt_new();
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v3 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    v4 = [MEMORY[0x277D75348] systemFillColor];
    v5 = [v4 colorWithAlphaComponent:0.150000006];
    [v2 setBackgroundColor:v5];

    v3 = [MEMORY[0x277D75210] effectWithStyle:4];
    v6 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v3];
    [v2 bounds];
    [v6 setFrame:?];
    [v6 setAutoresizingMask:18];
    [v2 insertSubview:v6 atIndex:0];
  }

  return v2;
}

- (void)showBottomView:(BOOL)a3 animated:(BOOL)a4
{
  v4 = 0.200000003;
  v5[1] = 3221225472;
  v5[0] = MEMORY[0x277D85DD0];
  v5[2] = __50__MCProfileTitlePageView_showBottomView_animated___block_invoke;
  v5[3] = &unk_279861C18;
  if (!a4)
  {
    v4 = 0.0;
  }

  v5[4] = self;
  v6 = a3;
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