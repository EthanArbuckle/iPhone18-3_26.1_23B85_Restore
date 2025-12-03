@interface HUSwitchControlView
- (BOOL)isDisabled;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (HUControlViewDelegate)delegate;
- (HUSwitchControlView)initWithFrame:(CGRect)frame;
- (id)value;
- (void)_switchValueChanged:(id)changed;
- (void)setDisabled:(BOOL)disabled;
- (void)setValue:(id)value;
@end

@implementation HUSwitchControlView

- (HUSwitchControlView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = HUSwitchControlView;
  v3 = [(HUSwitchControlView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  switchView = [(HUSwitchControlView *)self switchView];
  [switchView sizeThatFits:{width, height}];
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
  switchView = [(HUSwitchControlView *)self switchView];
  [switchView intrinsicContentSize];
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
  switchView = [(HUSwitchControlView *)self switchView];
  v4 = [v2 numberWithBool:{objc_msgSend(switchView, "isOn")}];

  return v4;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  switchView = [(HUSwitchControlView *)self switchView];
  bOOLValue = [valueCopy BOOLValue];

  [switchView setOn:bOOLValue animated:{objc_msgSend(MEMORY[0x277D75D18], "_isInAnimationBlock")}];
}

- (BOOL)isDisabled
{
  switchView = [(HUSwitchControlView *)self switchView];
  isEnabled = [switchView isEnabled];

  return isEnabled ^ 1;
}

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  switchView = [(HUSwitchControlView *)self switchView];
  [switchView setEnabled:!disabledCopy];
}

- (void)_switchValueChanged:(id)changed
{
  delegate = [(HUSwitchControlView *)self delegate];
  [delegate controlViewDidBeginUserInteraction:self];

  delegate2 = [(HUSwitchControlView *)self delegate];
  value = [(HUSwitchControlView *)self value];
  [delegate2 controlView:self valueDidChange:value];

  delegate3 = [(HUSwitchControlView *)self delegate];
  [delegate3 controlViewDidEndUserInteraction:self];
}

- (HUControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end