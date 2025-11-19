@interface HUQuickControlSummaryNavigationBarTitleView
- (HUQuickControlSummaryNavigationBarTitleView)initWithFrame:(CGRect)a3;
- (HUQuickControlSummaryView)summaryView;
- (void)layoutSubviews;
- (void)transitionCompleted:(int64_t)a3 willBeDisplayed:(BOOL)a4;
- (void)updateConstraints;
- (void)updateLeadingMargin:(double)a3;
- (void)updateTitleView:(id)a3;
- (void)updateTrailingMargin:(double)a3;
@end

@implementation HUQuickControlSummaryNavigationBarTitleView

- (HUQuickControlSummaryNavigationBarTitleView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = HUQuickControlSummaryNavigationBarTitleView;
  v3 = [(_UINavigationBarTitleView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(HUQuickControlSummaryView);
    [(HUQuickControlSummaryView *)v4 setPreferredIconAlignment:1];
    objc_storeStrong(&v3->_titleView, v4);
    [(UIView *)v3->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_titleView setPreservesSuperviewLayoutMargins:1];
    [(HUQuickControlSummaryNavigationBarTitleView *)v3 addSubview:v3->_titleView];
    [(_UINavigationBarTitleView *)v3 setHideStandardTitle:1];
    [(_UINavigationBarTitleView *)v3 setPreferredContentAlignment:1];
    v3->_leadingMargin = 0.0;
    v3->_trailingMargin = 40.0;
    v3->_navigationBarMinHeight = 50.0;
    if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
    {
      [(HUQuickControlSummaryNavigationBarTitleView *)v3 layoutMargins];
      v6 = v5;
      v8 = v7;
      [(UIView *)v3->_titleView setLayoutMargins:0.0];
      [(HUQuickControlSummaryNavigationBarTitleView *)v3 setLayoutMargins:0.0, v6, 0.0, v8];
    }
  }

  return v3;
}

- (HUQuickControlSummaryView)summaryView
{
  objc_opt_class();
  v3 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)updateTitleView:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
  v6 = [v5 isEqual:v4];

  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v13 = 136315394;
      v14 = "[HUQuickControlSummaryNavigationBarTitleView updateTitleView:]";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%s Not updating titleView because same as before %@", &v13, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v13 = 136315394;
      v14 = "[HUQuickControlSummaryNavigationBarTitleView updateTitleView:]";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%s Updating to new titleView %@", &v13, 0x16u);
    }

    v9 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
    [v9 removeFromSuperview];

    [(HUQuickControlSummaryNavigationBarTitleView *)self setTitleView:v4];
    v10 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
    [v11 setPreservesSuperviewLayoutMargins:1];

    v12 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
    [(HUQuickControlSummaryNavigationBarTitleView *)self addSubview:v12];

    [(HUQuickControlSummaryNavigationBarTitleView *)self updateConstraints];
  }
}

- (void)updateLeadingMargin:(double)a3
{
  v14 = *MEMORY[0x277D85DE8];
  [(HUQuickControlSummaryNavigationBarTitleView *)self leadingMargin];
  *&v5 = v5;
  v6 = a3;
  v7 = vabds_f32(*&v5, v6);
  v8 = HFLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 >= 0.00000011921)
  {
    if (v9)
    {
      v10 = 136315394;
      v11 = "[HUQuickControlSummaryNavigationBarTitleView updateLeadingMargin:]";
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%s Updating to new leadingMargin %f", &v10, 0x16u);
    }

    [(HUQuickControlSummaryNavigationBarTitleView *)self setLeadingMargin:a3];
    [(HUQuickControlSummaryNavigationBarTitleView *)self updateConstraints];
  }

  else
  {
    if (v9)
    {
      v10 = 136315394;
      v11 = "[HUQuickControlSummaryNavigationBarTitleView updateLeadingMargin:]";
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%s Not updating leadingMargin %f because same as before", &v10, 0x16u);
    }
  }
}

- (void)updateTrailingMargin:(double)a3
{
  v14 = *MEMORY[0x277D85DE8];
  [(HUQuickControlSummaryNavigationBarTitleView *)self trailingMargin];
  *&v5 = v5;
  v6 = a3;
  v7 = vabds_f32(*&v5, v6);
  v8 = HFLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 >= 0.00000011921)
  {
    if (v9)
    {
      v10 = 136315394;
      v11 = "[HUQuickControlSummaryNavigationBarTitleView updateTrailingMargin:]";
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%s Updating to new trailingMargin %f", &v10, 0x16u);
    }

    [(HUQuickControlSummaryNavigationBarTitleView *)self setTrailingMargin:a3];
    [(HUQuickControlSummaryNavigationBarTitleView *)self updateConstraints];
  }

  else
  {
    if (v9)
    {
      v10 = 136315394;
      v11 = "[HUQuickControlSummaryNavigationBarTitleView updateTrailingMargin:]";
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%s Not updating trailingMargin %f because same as before", &v10, 0x16u);
    }
  }
}

- (void)updateConstraints
{
  v30[3] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = HUQuickControlSummaryNavigationBarTitleView;
  [(HUQuickControlSummaryNavigationBarTitleView *)&v29 updateConstraints];
  v3 = [(HUQuickControlSummaryNavigationBarTitleView *)self contentConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(HUQuickControlSummaryNavigationBarTitleView *)self contentConstraints];
    [v4 deactivateConstraints:v5];
  }

  v6 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
  v7 = [v6 trailingAnchor];
  v8 = [(HUQuickControlSummaryNavigationBarTitleView *)self layoutMarginsGuide];
  v9 = [v8 trailingAnchor];
  [(HUQuickControlSummaryNavigationBarTitleView *)self trailingMargin];
  v11 = [v7 constraintEqualToAnchor:v9 constant:-v10];

  if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
  {
    v12 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
    v13 = [v12 trailingAnchor];
    v14 = [(HUQuickControlSummaryNavigationBarTitleView *)self trailingAnchor];
    [(HUQuickControlSummaryNavigationBarTitleView *)self trailingMargin];
    v16 = [v13 constraintEqualToAnchor:v14 constant:-v15];

    v11 = v16;
  }

  v28 = v11;
  v17 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
  v18 = [v17 leadingAnchor];
  v19 = [(HUQuickControlSummaryNavigationBarTitleView *)self leadingAnchor];
  [(HUQuickControlSummaryNavigationBarTitleView *)self leadingMargin];
  v20 = [v18 constraintEqualToAnchor:v19 constant:?];
  v30[0] = v20;
  v30[1] = v11;
  v21 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
  v22 = [v21 topAnchor];
  v23 = [(HUQuickControlSummaryNavigationBarTitleView *)self topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v30[2] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  [(HUQuickControlSummaryNavigationBarTitleView *)self setContentConstraints:v25];

  v26 = MEMORY[0x277CCAAD0];
  v27 = [(HUQuickControlSummaryNavigationBarTitleView *)self contentConstraints];
  [v26 activateConstraints:v27];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = HUQuickControlSummaryNavigationBarTitleView;
  [(HUQuickControlSummaryNavigationBarTitleView *)&v13 layoutSubviews];
  v3 = [MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials];
  [(HUQuickControlSummaryNavigationBarTitleView *)self navigationBarMinHeight];
  v5 = v4;
  v6 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
  [v6 frame];
  v8 = v7;
  if ((v3 & 1) == 0)
  {
    [(HUQuickControlSummaryNavigationBarTitleView *)self layoutMargins];
    v10 = v8 + v9;
    [(HUQuickControlSummaryNavigationBarTitleView *)self layoutMargins];
    v8 = v10 + v11;
  }

  if (v5 >= v8)
  {
    v12 = v5;
  }

  else
  {
    v12 = v8;
  }

  [(_UINavigationBarTitleView *)self setHeight:v12];
}

- (void)transitionCompleted:(int64_t)a3 willBeDisplayed:(BOOL)a4
{
  v4 = a4;
  v5 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
  [v5 setHidden:!v4];
}

@end