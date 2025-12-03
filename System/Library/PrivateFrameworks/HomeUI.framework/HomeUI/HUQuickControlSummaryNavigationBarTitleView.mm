@interface HUQuickControlSummaryNavigationBarTitleView
- (HUQuickControlSummaryNavigationBarTitleView)initWithFrame:(CGRect)frame;
- (HUQuickControlSummaryView)summaryView;
- (void)layoutSubviews;
- (void)transitionCompleted:(int64_t)completed willBeDisplayed:(BOOL)displayed;
- (void)updateConstraints;
- (void)updateLeadingMargin:(double)margin;
- (void)updateTitleView:(id)view;
- (void)updateTrailingMargin:(double)margin;
@end

@implementation HUQuickControlSummaryNavigationBarTitleView

- (HUQuickControlSummaryNavigationBarTitleView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = HUQuickControlSummaryNavigationBarTitleView;
  v3 = [(_UINavigationBarTitleView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  titleView = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
  if (objc_opt_isKindOfClass())
  {
    v4 = titleView;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)updateTitleView:(id)view
{
  v17 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  titleView = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
  v6 = [titleView isEqual:viewCopy];

  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v13 = 136315394;
      v14 = "[HUQuickControlSummaryNavigationBarTitleView updateTitleView:]";
      v15 = 2112;
      v16 = viewCopy;
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
      v16 = viewCopy;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%s Updating to new titleView %@", &v13, 0x16u);
    }

    titleView2 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
    [titleView2 removeFromSuperview];

    [(HUQuickControlSummaryNavigationBarTitleView *)self setTitleView:viewCopy];
    titleView3 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
    [titleView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    titleView4 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
    [titleView4 setPreservesSuperviewLayoutMargins:1];

    titleView5 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
    [(HUQuickControlSummaryNavigationBarTitleView *)self addSubview:titleView5];

    [(HUQuickControlSummaryNavigationBarTitleView *)self updateConstraints];
  }
}

- (void)updateLeadingMargin:(double)margin
{
  v14 = *MEMORY[0x277D85DE8];
  [(HUQuickControlSummaryNavigationBarTitleView *)self leadingMargin];
  *&v5 = v5;
  marginCopy = margin;
  v7 = vabds_f32(*&v5, marginCopy);
  v8 = HFLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 >= 0.00000011921)
  {
    if (v9)
    {
      v10 = 136315394;
      v11 = "[HUQuickControlSummaryNavigationBarTitleView updateLeadingMargin:]";
      v12 = 2048;
      marginCopy3 = margin;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%s Updating to new leadingMargin %f", &v10, 0x16u);
    }

    [(HUQuickControlSummaryNavigationBarTitleView *)self setLeadingMargin:margin];
    [(HUQuickControlSummaryNavigationBarTitleView *)self updateConstraints];
  }

  else
  {
    if (v9)
    {
      v10 = 136315394;
      v11 = "[HUQuickControlSummaryNavigationBarTitleView updateLeadingMargin:]";
      v12 = 2048;
      marginCopy3 = margin;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%s Not updating leadingMargin %f because same as before", &v10, 0x16u);
    }
  }
}

- (void)updateTrailingMargin:(double)margin
{
  v14 = *MEMORY[0x277D85DE8];
  [(HUQuickControlSummaryNavigationBarTitleView *)self trailingMargin];
  *&v5 = v5;
  marginCopy = margin;
  v7 = vabds_f32(*&v5, marginCopy);
  v8 = HFLogForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 >= 0.00000011921)
  {
    if (v9)
    {
      v10 = 136315394;
      v11 = "[HUQuickControlSummaryNavigationBarTitleView updateTrailingMargin:]";
      v12 = 2048;
      marginCopy3 = margin;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%s Updating to new trailingMargin %f", &v10, 0x16u);
    }

    [(HUQuickControlSummaryNavigationBarTitleView *)self setTrailingMargin:margin];
    [(HUQuickControlSummaryNavigationBarTitleView *)self updateConstraints];
  }

  else
  {
    if (v9)
    {
      v10 = 136315394;
      v11 = "[HUQuickControlSummaryNavigationBarTitleView updateTrailingMargin:]";
      v12 = 2048;
      marginCopy3 = margin;
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
  contentConstraints = [(HUQuickControlSummaryNavigationBarTitleView *)self contentConstraints];

  if (contentConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    contentConstraints2 = [(HUQuickControlSummaryNavigationBarTitleView *)self contentConstraints];
    [v4 deactivateConstraints:contentConstraints2];
  }

  titleView = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
  trailingAnchor = [titleView trailingAnchor];
  layoutMarginsGuide = [(HUQuickControlSummaryNavigationBarTitleView *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  [(HUQuickControlSummaryNavigationBarTitleView *)self trailingMargin];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v10];

  if ([MEMORY[0x277D14CE8] isProxHandOffV2Config])
  {
    titleView2 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
    trailingAnchor3 = [titleView2 trailingAnchor];
    trailingAnchor4 = [(HUQuickControlSummaryNavigationBarTitleView *)self trailingAnchor];
    [(HUQuickControlSummaryNavigationBarTitleView *)self trailingMargin];
    v16 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v15];

    v11 = v16;
  }

  v28 = v11;
  titleView3 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
  leadingAnchor = [titleView3 leadingAnchor];
  leadingAnchor2 = [(HUQuickControlSummaryNavigationBarTitleView *)self leadingAnchor];
  [(HUQuickControlSummaryNavigationBarTitleView *)self leadingMargin];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v30[0] = v20;
  v30[1] = v11;
  titleView4 = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
  topAnchor = [titleView4 topAnchor];
  topAnchor2 = [(HUQuickControlSummaryNavigationBarTitleView *)self topAnchor];
  v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[2] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  [(HUQuickControlSummaryNavigationBarTitleView *)self setContentConstraints:v25];

  v26 = MEMORY[0x277CCAAD0];
  contentConstraints3 = [(HUQuickControlSummaryNavigationBarTitleView *)self contentConstraints];
  [v26 activateConstraints:contentConstraints3];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = HUQuickControlSummaryNavigationBarTitleView;
  [(HUQuickControlSummaryNavigationBarTitleView *)&v13 layoutSubviews];
  shouldUseProxHandOffMaterials = [MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials];
  [(HUQuickControlSummaryNavigationBarTitleView *)self navigationBarMinHeight];
  v5 = v4;
  titleView = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
  [titleView frame];
  v8 = v7;
  if ((shouldUseProxHandOffMaterials & 1) == 0)
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

- (void)transitionCompleted:(int64_t)completed willBeDisplayed:(BOOL)displayed
{
  displayedCopy = displayed;
  titleView = [(HUQuickControlSummaryNavigationBarTitleView *)self titleView];
  [titleView setHidden:!displayedCopy];
}

@end