@interface HUQuickControlValveToggleView
- (CGSize)intrinsicContentSize;
- (HUQuickControlValveToggleView)initWithProfile:(id)a3;
- (HUQuickControlViewInteractionDelegate)interactionDelegate;
- (UIColor)backgroundOffColor;
- (UIColor)backgroundOnColor;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3;
- (id)value;
- (void)_handleTap:(id)a3;
- (void)_setupIconView;
- (void)_updateAppearance;
- (void)_updateIconDescriptor;
- (void)_updateUIForReachabilityState:(unint64_t)a3;
- (void)setProfile:(id)a3;
- (void)setUserInteractionActive:(BOOL)a3;
- (void)setValue:(id)a3;
- (void)updateConstraints;
@end

@implementation HUQuickControlValveToggleView

- (HUQuickControlValveToggleView)initWithProfile:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = HUQuickControlValveToggleView;
  v6 = [(HUQuickControlValveToggleView *)&v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, a3);
    v7->_reachabilityState = 0;
    v8 = objc_alloc_init(MEMORY[0x277D180C0]);
    circleView = v7->_circleView;
    v7->_circleView = v8;

    [(HUQuickControlValveToggleView *)v7 naui_addAutoLayoutSubview:v7->_circleView];
    [(HUQuickControlValveToggleView *)v7 _setupIconView];
    [(HUQuickControlValveToggleView *)v7 _updateAppearance];
    v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v7 action:sel__handleTap_];
    [(HUQuickControlValveToggleView *)v7 addGestureRecognizer:v10];
  }

  return v7;
}

- (UIColor)backgroundOnColor
{
  if (_MergedGlobals_3_10 != -1)
  {
    dispatch_once(&_MergedGlobals_3_10, &__block_literal_global_7_3);
  }

  v3 = qword_27C8380C8;

  return v3;
}

void __50__HUQuickControlValveToggleView_backgroundOnColor__block_invoke_2()
{
  v0 = HUColorNamed(@"HUQuickControlValveToggleViewBackgroundColorOn");
  v1 = qword_27C8380C8;
  qword_27C8380C8 = v0;
}

- (UIColor)backgroundOffColor
{
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    v2 = [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    if (qword_27C8380D0 != -1)
    {
      dispatch_once(&qword_27C8380D0, &__block_literal_global_14_3);
    }

    v2 = qword_27C8380D8;
  }

  return v2;
}

void __51__HUQuickControlValveToggleView_backgroundOffColor__block_invoke_2()
{
  v0 = HUColorNamed(@"HUQuickControlValveToggleViewBackgroundColorOff");
  v1 = qword_27C8380D8;
  qword_27C8380D8 = v0;
}

- (void)_setupIconView
{
  v3 = objc_alloc_init(MEMORY[0x277D180D0]);
  iconView = self->_iconView;
  self->_iconView = v3;

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = MEMORY[0x277D75D00];
  v7 = [MEMORY[0x277D75210] effectWithStyle:v5];
  v8 = [v6 effectForBlurEffect:v7];
  [(HUIconView *)self->_iconView setVibrancyEffect:v8];

  [(HUQuickControlValveToggleView *)self _updateIconDescriptor];
  [(HUQuickControlValveToggleView *)self naui_addAutoLayoutSubview:self->_iconView];

  [(HUQuickControlValveToggleView *)self setNeedsLayout];
}

- (void)updateConstraints
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HUQuickControlValveToggleView;
  [(HUQuickControlValveToggleView *)&v12 updateConstraints];
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(HUQuickControlValveToggleView *)self iconView];
  v5 = [(HUQuickControlValveToggleView *)self layoutMarginsGuide];
  v6 = [v3 hu_constraintsSizingAnchorProvider:v4 toAnchorProvider:v5];
  v13[0] = v6;
  v7 = MEMORY[0x277CCAAD0];
  v8 = [(HUQuickControlValveToggleView *)self circleView];
  v9 = [v7 hu_constraintsSizingAnchorProvider:v8 toAnchorProvider:self];
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v11 = [v10 na_arrayByFlattening];
  [v3 activateConstraints:v11];
}

- (void)_handleTap:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HUQuickControlValveToggleView *)self conformsToProtocol:&unk_2824F3238]&& (objc_opt_respondsToSelector() & 1) != 0 && (![(HUQuickControlValveToggleView *)self reachabilityState]|| [(HUQuickControlValveToggleView *)self reachabilityState]== 1))
  {
    v5 = HUQuickControlReachabilityString([(HUQuickControlValveToggleView *)self reachabilityState]);
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412802;
      v10 = self;
      v11 = 2112;
      v12 = v5;
      v13 = 2080;
      v14 = "[HUQuickControlValveToggleView _handleTap:]";
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Control view %@ is in state %@. Ignoring tap gesture in %s", &v9, 0x20u);
    }
  }

  else if ([v4 state] == 3)
  {
    [(HUQuickControlValveToggleView *)self setOpen:[(HUQuickControlValveToggleView *)self open]^ 1];
    [(HUQuickControlValveToggleView *)self setUserInteractionActive:1];
    v7 = [(HUQuickControlValveToggleView *)self interactionDelegate];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HUQuickControlValveToggleView open](self, "open")}];
    [v7 controlView:self valueDidChange:v8];

    [(HUQuickControlValveToggleView *)self setUserInteractionActive:0];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = 54.0;
  v3 = 54.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setUserInteractionActive:(BOOL)a3
{
  userInteractionActive = self->_userInteractionActive;
  self->_userInteractionActive = a3;
  if (userInteractionActive != a3)
  {
    v5 = [(HUQuickControlValveToggleView *)self interactionDelegate];
    [v5 controlView:self interactionStateDidChange:self->_userInteractionActive forFirstTouch:0];
  }
}

- (void)_updateAppearance
{
  if ([(HUQuickControlValveToggleView *)self open])
  {
    [(HUQuickControlValveToggleView *)self backgroundOnColor];
  }

  else
  {
    [(HUQuickControlValveToggleView *)self backgroundOffColor];
  }
  v3 = ;
  v4 = [(HUQuickControlValveToggleView *)self circleView];
  [v4 setBackgroundColor:v3];

  [(HUQuickControlValveToggleView *)self _updateIconDescriptor];
}

- (void)_updateIconDescriptor
{
  if ([(HUQuickControlValveToggleView *)self open])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v6 = [(HUQuickControlValveToggleView *)self iconView];
  v4 = [(HUQuickControlValveToggleView *)self profile];
  v5 = [v4 decorationIconDescriptor];
  [v6 updateWithIconDescriptor:v5 displayStyle:v3 animated:0];
}

- (void)setProfile:(id)a3
{
  objc_storeStrong(&self->_profile, a3);

  [(HUQuickControlValveToggleView *)self _updateIconDescriptor];
}

- (id)value
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(HUQuickControlValveToggleView *)self open];

  return [v2 numberWithBool:v3];
}

- (void)setValue:(id)a3
{
  v4 = [a3 BOOLValue];

  [(HUQuickControlValveToggleView *)self setOpen:v4];
}

- (void)_updateUIForReachabilityState:(unint64_t)a3
{
  if (a3 <= 2)
  {
    [(HUQuickControlValveToggleView *)self setAlpha:dbl_20D5CB438[a3]];
  }
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3
{
  v3 = objc_opt_class();

  return [v3 intrinsicSizeDescriptor];
}

- (HUQuickControlViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end