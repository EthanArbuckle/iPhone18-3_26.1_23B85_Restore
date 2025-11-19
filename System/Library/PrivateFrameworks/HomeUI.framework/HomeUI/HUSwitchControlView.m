@interface HUSwitchControlView
- (BOOL)isDisabled;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (HUControlViewDelegate)delegate;
- (HUSwitchControlView)initWithFrame:(CGRect)a3;
- (id)value;
- (void)_switchValueChanged:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setValue:(id)a3;
@end

@implementation HUSwitchControlView

- (HUSwitchControlView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = HUSwitchControlView;
  v3 = [(HUSwitchControlView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75AE8]);
    switchView = v3->_switchView;
    v3->_switchView = v4;

    [(UISwitch *)v3->_switchView sizeToFit];
    [(UISwitch *)v3->_switchView addTarget:v3 action:sel__switchValueChanged_ forControlEvents:4096];
    [(HUSwitchControlView *)v3 addSubview:v3->_switchView];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(HUSwitchControlView *)self switchView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(HUSwitchControlView *)self switchView];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)value
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(HUSwitchControlView *)self switchView];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "isOn")}];

  return v4;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  v6 = [(HUSwitchControlView *)self switchView];
  v5 = [v4 BOOLValue];

  [v6 setOn:v5 animated:{objc_msgSend(MEMORY[0x277D75D18], "_isInAnimationBlock")}];
}

- (BOOL)isDisabled
{
  v2 = [(HUSwitchControlView *)self switchView];
  v3 = [v2 isEnabled];

  return v3 ^ 1;
}

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUSwitchControlView *)self switchView];
  [v4 setEnabled:!v3];
}

- (void)_switchValueChanged:(id)a3
{
  v4 = [(HUSwitchControlView *)self delegate];
  [v4 controlViewDidBeginUserInteraction:self];

  v5 = [(HUSwitchControlView *)self delegate];
  v6 = [(HUSwitchControlView *)self value];
  [v5 controlView:self valueDidChange:v6];

  v7 = [(HUSwitchControlView *)self delegate];
  [v7 controlViewDidEndUserInteraction:self];
}

- (HUControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end