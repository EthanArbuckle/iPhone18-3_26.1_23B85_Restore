@interface HUEnergyIndicatorAccessoryView
- (CGSize)energyIndicatorViewSizeThatFits;
- (HUEnergyIndicatorAccessoryView)initWithEnergyIndicator:(id)indicator;
- (void)updateConstraints;
- (void)updateEnergyIndicatorViewSizeThatFits;
@end

@implementation HUEnergyIndicatorAccessoryView

- (HUEnergyIndicatorAccessoryView)initWithEnergyIndicator:(id)indicator
{
  indicatorCopy = indicator;
  v10.receiver = self;
  v10.super_class = HUEnergyIndicatorAccessoryView;
  v6 = [(HUEnergyIndicatorAccessoryView *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_energyIndicatorView, indicator);
    [(UIView *)v7->_energyIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v7->_energyIndicatorView setBackgroundColor:clearColor];

    [(UIView *)v7->_energyIndicatorView setContentMode:1];
    [(UIView *)v7->_energyIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7->_energyIndicatorViewSizeThatFits = *MEMORY[0x277CBF3A8];
    [(HUEnergyIndicatorAccessoryView *)v7 addSubview:v7->_energyIndicatorView];
    [(HUEnergyIndicatorAccessoryView *)v7 setNeedsUpdateConstraints];
  }

  return v7;
}

- (void)updateConstraints
{
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(HUEnergyIndicatorAccessoryView:updateConstraints)", buf, 2u);
  }

  constraints = [(HUEnergyIndicatorAccessoryView *)self constraints];

  if (!constraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6 = MEMORY[0x277CCAAD0];
    energyIndicatorView = [(HUEnergyIndicatorAccessoryView *)self energyIndicatorView];
    v8 = [v6 constraintWithItem:energyIndicatorView attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:16.0];
    [array addObject:v8];

    v9 = MEMORY[0x277CCAAD0];
    energyIndicatorView2 = [(HUEnergyIndicatorAccessoryView *)self energyIndicatorView];
    v11 = [v9 constraintWithItem:energyIndicatorView2 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:16.0];
    [array addObject:v11];

    v12 = MEMORY[0x277CCAAD0];
    energyIndicatorView3 = [(HUEnergyIndicatorAccessoryView *)self energyIndicatorView];
    v14 = [v12 constraintWithItem:energyIndicatorView3 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:-16.0];
    [array addObject:v14];

    v15 = MEMORY[0x277CCAAD0];
    energyIndicatorView4 = [(HUEnergyIndicatorAccessoryView *)self energyIndicatorView];
    v17 = [v15 constraintWithItem:energyIndicatorView4 attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [array addObject:v17];

    [(HUEnergyIndicatorAccessoryView *)self setConstraints:array];
    v18 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUEnergyIndicatorAccessoryView *)self constraints];
    [v18 activateConstraints:constraints2];

    [(HUEnergyIndicatorAccessoryView *)self updateEnergyIndicatorViewSizeThatFits];
  }

  v20.receiver = self;
  v20.super_class = HUEnergyIndicatorAccessoryView;
  [(HUEnergyIndicatorAccessoryView *)&v20 updateConstraints];
}

- (void)updateEnergyIndicatorViewSizeThatFits
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "(HUEnergyIndicatorAccessoryView:updateEnergyIndicatorViewSizeThatFits)", &v19, 2u);
  }

  [(HUEnergyIndicatorAccessoryView *)self energyIndicatorViewSizeThatFits];
  v5 = v4;
  v7 = v6;
  energyIndicatorView = [(HUEnergyIndicatorAccessoryView *)self energyIndicatorView];
  [energyIndicatorView systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v10 = v9;
  v12 = v11;

  [(HUEnergyIndicatorAccessoryView *)self setEnergyIndicatorViewSizeThatFits:v10 + 16.0, v12 + 32.0];
  [(HUEnergyIndicatorAccessoryView *)self energyIndicatorViewSizeThatFits];
  if (v5 != v14 || v7 != v13)
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      [(HUEnergyIndicatorAccessoryView *)self energyIndicatorViewSizeThatFits];
      v17 = v16;
      [(HUEnergyIndicatorAccessoryView *)self energyIndicatorViewSizeThatFits];
      v19 = 134218752;
      v20 = v17;
      v21 = 2048;
      v22 = v18;
      v23 = 2048;
      v24 = v5;
      v25 = 2048;
      v26 = v7;
      _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "(HUEnergyIndicatorAccessoryView:updateEnergyIndicatorViewSizeThatFits) energyIndicatorViewSize = (%f, %f) | prevSizeThatFits = (%f, %f)", &v19, 0x2Au);
    }
  }
}

- (CGSize)energyIndicatorViewSizeThatFits
{
  width = self->_energyIndicatorViewSizeThatFits.width;
  height = self->_energyIndicatorViewSizeThatFits.height;
  result.height = height;
  result.width = width;
  return result;
}

@end