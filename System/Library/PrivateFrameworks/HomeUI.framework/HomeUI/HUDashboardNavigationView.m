@interface HUDashboardNavigationView
- (HUDashboardNavigationView)initWithCoder:(id)a3;
- (HUDashboardNavigationView)initWithFrame:(CGRect)a3;
- (HUDashboardNavigationViewDelegate)delegate;
- (NSString)headerTitle;
- (NSString)title;
- (void)_didTapHomeAppButton:(id)a3;
- (void)_didTapLargeTitleButton:(id)a3;
- (void)_rotateChevronButtonToAngle:(double)a3;
- (void)_updateTitleButton;
- (void)layoutSubviews;
- (void)setHasTitleAction:(BOOL)a3;
- (void)setHeaderTitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)updateConstraints;
@end

@implementation HUDashboardNavigationView

- (HUDashboardNavigationView)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithStyle_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUDashboardNavigationView.m" lineNumber:61 description:{@"%s is unavailable; use %@ instead", "-[HUDashboardNavigationView initWithCoder:]", v6}];

  return 0;
}

- (HUDashboardNavigationView)initWithFrame:(CGRect)a3
{
  v35.receiver = self;
  v35.super_class = HUDashboardNavigationView;
  v3 = [(HUDashboardNavigationView *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUDashboardNavigationView *)v3 setTitle:&stru_2823E0EE8];
    [(HUDashboardNavigationView *)v4 setHeaderTitle:0];
    v4->_hasTitleAction = 1;
    v5 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    v6 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v5];
    headerTitleLabelEffectView = v4->_headerTitleLabelEffectView;
    v4->_headerTitleLabelEffectView = v6;

    [(UIVisualEffectView *)v4->_headerTitleLabelEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUDashboardNavigationView *)v4 addSubview:v4->_headerTitleLabelEffectView];
    v8 = objc_alloc(MEMORY[0x277D756B8]);
    v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    headerTitleLabel = v4->_headerTitleLabel;
    v4->_headerTitleLabel = v9;

    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v4->_headerTitleLabel setFont:v11];

    v12 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v4->_headerTitleLabel setTextColor:v12];

    [(UILabel *)v4->_headerTitleLabel setLineBreakMode:4];
    [(UILabel *)v4->_headerTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(UIVisualEffectView *)v4->_headerTitleLabelEffectView contentView];
    [v13 addSubview:v4->_headerTitleLabel];

    v14 = [MEMORY[0x277D75D00] controlCenterPrimaryVibrancyEffect];
    v15 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v14];
    titleButtonEffectView = v4->_titleButtonEffectView;
    v4->_titleButtonEffectView = v15;

    [(UIVisualEffectView *)v4->_titleButtonEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUDashboardNavigationView *)v4 addSubview:v4->_titleButtonEffectView];
    v17 = [MEMORY[0x277D75220] buttonWithType:1];
    titleButton = v4->_titleButton;
    v4->_titleButton = v17;

    [(UIButton *)v4->_titleButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [(UIButton *)v4->_titleButton titleLabel];
    [v19 setLineBreakMode:4];

    [(UIButton *)v4->_titleButton setContentEdgeInsets:0.0, 0.0, 0.0, 4.0];
    v20 = [(UIVisualEffectView *)v4->_titleButtonEffectView contentView];
    [v20 addSubview:v4->_titleButton];

    v21 = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)v4->_titleButton setTintColor:v21];

    if ([(HUDashboardNavigationView *)v4 effectiveUserInterfaceLayoutDirection]== 1)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    [(UIButton *)v4->_titleButton setContentHorizontalAlignment:v22];
    if ([(HUDashboardNavigationView *)v4 effectiveUserInterfaceLayoutDirection]== 1)
    {
      v23 = 3;
    }

    else
    {
      v23 = 4;
    }

    [(UIButton *)v4->_titleButton setSemanticContentAttribute:v23];
    [(HUDashboardNavigationView *)v4 _updateTitleButton];
    v24 = [MEMORY[0x277D75220] buttonWithType:0];
    homeAppButton = v4->_homeAppButton;
    v4->_homeAppButton = v24;

    [(UIButton *)v4->_homeAppButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [MEMORY[0x277D75348] whiteColor];
    [(UIButton *)v4->_homeAppButton setTintColor:v26];

    v27 = [(UIButton *)v4->_homeAppButton imageView];
    [v27 setContentMode:1];

    [(UIButton *)v4->_homeAppButton addTarget:v4 action:sel__didTapHomeAppButton_ forControlEvents:64];
    v28 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:48.0];
    v29 = [MEMORY[0x277D755B8] systemImageNamed:@"homekit"];
    v30 = [v29 imageWithConfiguration:v28];
    v31 = [v30 imageWithRenderingMode:2];

    [(UIButton *)v4->_homeAppButton setImage:v31 forState:0];
    [(HUDashboardNavigationView *)v4 addSubview:v4->_homeAppButton];
    v32 = [MEMORY[0x277CFC960] controlCenterTertiaryMaterial];
    separatorView = v4->_separatorView;
    v4->_separatorView = v32;

    [(UIView *)v4->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUDashboardNavigationView *)v4 addSubview:v4->_separatorView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = HUDashboardNavigationView;
  [(HUDashboardNavigationView *)&v18 layoutSubviews];
  v3 = [(HUDashboardNavigationView *)self titleButton];
  v4 = [v3 titleLabel];
  v5 = [v4 font];
  [v5 ascender];
  v7 = v6 + -22.0;
  v8 = [(HUDashboardNavigationView *)self titleButton];
  [v8 imageEdgeInsets];
  v10 = v9;
  v11 = [(HUDashboardNavigationView *)self titleButton];
  [v11 imageEdgeInsets];
  v13 = v12;
  v14 = [(HUDashboardNavigationView *)self titleButton];
  [v14 imageEdgeInsets];
  v16 = v15;
  v17 = [(HUDashboardNavigationView *)self titleButton];
  [v17 setImageEdgeInsets:{v7, v10, v13, v16}];
}

- (void)_rotateChevronButtonToAngle:(double)a3
{
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformMakeRotation(&v12, a3);
  v4 = [(HUDashboardNavigationView *)self titleButton];
  v5 = [v4 imageView];
  v6 = v5;
  if (v5)
  {
    [v5 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  t2 = v12;
  v7 = CGAffineTransformEqualToTransform(&t1, &t2);

  if (!v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v9 = v12;
    v8[2] = __57__HUDashboardNavigationView__rotateChevronButtonToAngle___block_invoke;
    v8[3] = &unk_277DB80E8;
    v8[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v8 usingSpringWithDamping:&__block_literal_global_54 initialSpringVelocity:1.0 options:0.0 animations:0.5 completion:0.0];
  }
}

void __57__HUDashboardNavigationView__rotateChevronButtonToAngle___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) titleButton];
  v2 = [v1 imageView];
  [v2 setTransform:&v3];
}

- (void)_didTapLargeTitleButton:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@ User tapped large title button", &v9, 0xCu);
  }

  v6 = [(HUDashboardNavigationView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HUDashboardNavigationView *)self delegate];
    [v8 dashboardNavigationView:self didTapLargeTitleButton:v4];
  }
}

- (void)_didTapHomeAppButton:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = self;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@ User tapped Home app button", buf, 0xCu);
  }

  v6 = [(HUDashboardNavigationView *)self delegate];
  [v6 dashboardNavigationView:self didTapHomeAppButton:v4];

  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@-homeAppButton", v9];

  [MEMORY[0x277D143D8] sendGeneralButtonTapEventWithButtonTitle:v10 sourceViewController:0];
}

- (NSString)title
{
  v2 = [(HUDashboardNavigationView *)self titleButton];
  v3 = [v2 currentAttributedTitle];
  v4 = [v3 string];

  return v4;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(HUDashboardNavigationView *)self title];
  v19 = v4;
  v6 = v5;
  if (v6 == v19)
  {
    v7 = 1;
  }

  else if (v19)
  {
    v7 = [v19 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = v19;
  if (v19 && (v7 & 1) == 0)
  {
    v9 = [(HUDashboardNavigationView *)self largeTitleTextAttributes];

    if (!v9)
    {
      v10 = objc_alloc_init(MEMORY[0x277D75788]);
      v11 = [v10 largeTitleTextAttributes];
      [(HUDashboardNavigationView *)self setLargeTitleTextAttributes:v11];
    }

    v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v19];
    v13 = [(HUDashboardNavigationView *)self largeTitleTextAttributes];
    v14 = [v12 hf_attributedStringWithDefaultAttributes:v13];
    v15 = [v14 mutableCopy];

    v16 = [(HUDashboardNavigationView *)self effectiveUserInterfaceLayoutDirection];
    v17 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
    if (v16 == 1)
    {
      [v15 insertAttributedString:v17 atIndex:0];
    }

    else
    {
      [v15 appendAttributedString:v17];
    }

    v18 = [(HUDashboardNavigationView *)self titleButton];
    [v18 setAttributedTitle:v15 forState:0];

    v8 = v19;
  }
}

- (NSString)headerTitle
{
  v2 = [(HUDashboardNavigationView *)self headerTitleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setHeaderTitle:(id)a3
{
  v4 = a3;
  v5 = [(HUDashboardNavigationView *)self headerTitle];
  v10 = v4;
  v6 = v5;
  if (v6 == v10)
  {

    goto LABEL_8;
  }

  if (!v10)
  {

    goto LABEL_7;
  }

  v7 = [v10 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = [(HUDashboardNavigationView *)self headerTitleLabel];
    [v8 setText:v10];

    v9 = [(HUDashboardNavigationView *)self headerTitleLabel];
    [v9 sizeToFit];

    [(HUDashboardNavigationView *)self setNeedsUpdateConstraints];
  }

LABEL_8:
}

- (void)setHasTitleAction:(BOOL)a3
{
  if (self->_hasTitleAction != a3)
  {
    self->_hasTitleAction = a3;
    [(HUDashboardNavigationView *)self _updateTitleButton];
  }
}

- (void)updateConstraints
{
  v118[23] = *MEMORY[0x277D85DE8];
  v117.receiver = self;
  v117.super_class = HUDashboardNavigationView;
  [(HUDashboardNavigationView *)&v117 updateConstraints];
  v3 = [(HUDashboardNavigationView *)self allConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(HUDashboardNavigationView *)self allConstraints];
    [v4 deactivateConstraints:v5];
  }

  v116 = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  v115 = [v116 topAnchor];
  v114 = [(HUDashboardNavigationView *)self topAnchor];
  v113 = [v115 constraintEqualToAnchor:v114];
  v118[0] = v113;
  v112 = [(HUDashboardNavigationView *)self headerTitleLabel];
  v110 = [v112 topAnchor];
  v111 = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  v109 = [v111 topAnchor];
  v108 = [v110 constraintEqualToAnchor:v109];
  v118[1] = v108;
  v107 = [(HUDashboardNavigationView *)self headerTitleLabel];
  v105 = [v107 bottomAnchor];
  v106 = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  v104 = [v106 bottomAnchor];
  v103 = [v105 constraintEqualToAnchor:v104];
  v118[2] = v103;
  v102 = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  v100 = [v102 bottomAnchor];
  v101 = [(HUDashboardNavigationView *)self titleButtonEffectView];
  v99 = [v101 topAnchor];
  v98 = [v100 constraintEqualToAnchor:v99];
  v118[3] = v98;
  v97 = [(HUDashboardNavigationView *)self titleButton];
  v95 = [v97 topAnchor];
  v96 = [(HUDashboardNavigationView *)self titleButtonEffectView];
  v94 = [v96 topAnchor];
  v93 = [v95 constraintEqualToAnchor:v94];
  v118[4] = v93;
  v92 = [(HUDashboardNavigationView *)self titleButton];
  v90 = [v92 bottomAnchor];
  v91 = [(HUDashboardNavigationView *)self titleButtonEffectView];
  v89 = [v91 bottomAnchor];
  v88 = [v90 constraintEqualToAnchor:v89];
  v118[5] = v88;
  v87 = [(HUDashboardNavigationView *)self homeAppButton];
  v85 = [v87 bottomAnchor];
  v86 = [(HUDashboardNavigationView *)self titleButton];
  v84 = [v86 bottomAnchor];
  v83 = [v85 constraintEqualToAnchor:v84];
  v118[6] = v83;
  v82 = [(HUDashboardNavigationView *)self separatorView];
  v80 = [v82 topAnchor];
  v81 = [(HUDashboardNavigationView *)self titleButtonEffectView];
  v79 = [v81 bottomAnchor];
  v78 = [v80 constraintEqualToAnchor:v79 constant:18.0];
  v118[7] = v78;
  v77 = [(HUDashboardNavigationView *)self separatorView];
  v75 = [v77 bottomAnchor];
  v76 = [(HUDashboardNavigationView *)self safeAreaLayoutGuide];
  v74 = [v76 bottomAnchor];
  v73 = [v75 constraintEqualToAnchor:v74];
  v118[8] = v73;
  v72 = [(HUDashboardNavigationView *)self separatorView];
  v71 = [v72 heightAnchor];
  v70 = [v71 constraintEqualToConstant:0.75];
  v118[9] = v70;
  v69 = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  v67 = [v69 leadingAnchor];
  v68 = [(HUDashboardNavigationView *)self safeAreaLayoutGuide];
  v66 = [v68 leadingAnchor];
  v65 = [v67 constraintEqualToAnchor:v66];
  v118[10] = v65;
  v64 = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  v62 = [v64 trailingAnchor];
  v63 = [(HUDashboardNavigationView *)self safeAreaLayoutGuide];
  v61 = [v63 trailingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v118[11] = v60;
  v59 = [(HUDashboardNavigationView *)self headerTitleLabel];
  v57 = [v59 leadingAnchor];
  v58 = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  v56 = [v58 leadingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v118[12] = v55;
  v54 = [(HUDashboardNavigationView *)self headerTitleLabel];
  v51 = [v54 trailingAnchor];
  v52 = [(HUDashboardNavigationView *)self headerTitleLabelEffectView];
  v50 = [v52 trailingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v118[13] = v49;
  v48 = [(HUDashboardNavigationView *)self titleButtonEffectView];
  v46 = [v48 leadingAnchor];
  v47 = [(HUDashboardNavigationView *)self safeAreaLayoutGuide];
  v45 = [v47 leadingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v118[14] = v44;
  v43 = [(HUDashboardNavigationView *)self titleButton];
  v41 = [v43 leadingAnchor];
  v42 = [(HUDashboardNavigationView *)self titleButtonEffectView];
  v40 = [v42 leadingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v118[15] = v39;
  v38 = [(HUDashboardNavigationView *)self titleButton];
  v36 = [v38 trailingAnchor];
  v37 = [(HUDashboardNavigationView *)self titleButtonEffectView];
  v35 = [v37 trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v118[16] = v34;
  v33 = [(HUDashboardNavigationView *)self homeAppButton];
  v31 = [v33 leadingAnchor];
  v32 = [(HUDashboardNavigationView *)self titleButtonEffectView];
  v30 = [v32 trailingAnchor];
  v29 = [v31 constraintGreaterThanOrEqualToAnchor:v30];
  v118[17] = v29;
  v28 = [(HUDashboardNavigationView *)self homeAppButton];
  v26 = [v28 trailingAnchor];
  v27 = [(HUDashboardNavigationView *)self safeAreaLayoutGuide];
  v25 = [v27 trailingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v118[18] = v24;
  v23 = [(HUDashboardNavigationView *)self separatorView];
  v21 = [v23 leadingAnchor];
  v22 = [(HUDashboardNavigationView *)self safeAreaLayoutGuide];
  v20 = [v22 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v118[19] = v19;
  v18 = [(HUDashboardNavigationView *)self separatorView];
  v17 = [v18 trailingAnchor];
  v6 = [(HUDashboardNavigationView *)self safeAreaLayoutGuide];
  v7 = [v6 trailingAnchor];
  v8 = [v17 constraintEqualToAnchor:v7];
  v118[20] = v8;
  v9 = [(HUDashboardNavigationView *)self homeAppButton];
  v10 = [v9 heightAnchor];
  v11 = [v10 constraintEqualToConstant:48.0];
  v118[21] = v11;
  v12 = [(HUDashboardNavigationView *)self homeAppButton];
  v13 = [v12 widthAnchor];
  v14 = [v13 constraintEqualToConstant:48.0];
  v118[22] = v14;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:23];

  [(HUDashboardNavigationView *)self setAllConstraints:v53];
  v15 = MEMORY[0x277CCAAD0];
  v16 = [(HUDashboardNavigationView *)self allConstraints];
  [v15 activateConstraints:v16];
}

- (void)_updateTitleButton
{
  v3 = [(HUDashboardNavigationView *)self hasTitleAction];
  v4 = [(HUDashboardNavigationView *)self titleButton];
  [v4 setUserInteractionEnabled:v3];

  if ([(HUDashboardNavigationView *)self hasTitleAction])
  {
    v11 = [MEMORY[0x277D755D0] configurationWithWeight:6];
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.down"];
    v6 = [v5 imageWithConfiguration:v11];
    v7 = [v6 imageWithRenderingMode:2];

    v8 = [(HUDashboardNavigationView *)self titleButton];
    [v8 setImage:v7 forState:0];

    v9 = [(HUDashboardNavigationView *)self titleButton];
    [v9 addTarget:self action:sel__didTapLargeTitleButton_ forControlEvents:64];
  }

  else
  {
    v10 = [(HUDashboardNavigationView *)self titleButton];
    [v10 setImage:0 forState:0];

    v11 = [(HUDashboardNavigationView *)self titleButton];
    [v11 removeTarget:self action:sel__didTapLargeTitleButton_ forControlEvents:64];
  }
}

- (HUDashboardNavigationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end