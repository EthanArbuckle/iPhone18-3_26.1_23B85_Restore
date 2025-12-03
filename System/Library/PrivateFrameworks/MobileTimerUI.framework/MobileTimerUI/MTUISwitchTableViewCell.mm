@interface MTUISwitchTableViewCell
- (MTUISwitchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (MTUISwitchTableViewCellDelegate)delegate;
- (void)setSwitchStateEnabled:(BOOL)enabled;
- (void)switchAction:(id)action;
@end

@implementation MTUISwitchTableViewCell

- (MTUISwitchTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = MTUISwitchTableViewCell;
  v4 = [(MTUIBaseTableViewCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_new();
    [(MTUISwitchTableViewCell *)v4 setEnabledSwitch:v5];

    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    enabledSwitch = [(MTUISwitchTableViewCell *)v4 enabledSwitch];
    [enabledSwitch setOnTintColor:systemGreenColor];

    mtui_switchTintColor = [MEMORY[0x277D75348] mtui_switchTintColor];
    enabledSwitch2 = [(MTUISwitchTableViewCell *)v4 enabledSwitch];
    [enabledSwitch2 setTintColor:mtui_switchTintColor];

    enabledSwitch3 = [(MTUISwitchTableViewCell *)v4 enabledSwitch];
    [enabledSwitch3 addTarget:v4 action:sel_switchAction_ forControlEvents:4096];

    enabledSwitch4 = [(MTUISwitchTableViewCell *)v4 enabledSwitch];
    [(MTUISwitchTableViewCell *)v4 setAccessoryView:enabledSwitch4];

    [(MTUISwitchTableViewCell *)v4 setSelectionStyle:0];
  }

  return v4;
}

- (void)switchAction:(id)action
{
  actionCopy = action;
  delegate = [(MTUISwitchTableViewCell *)self delegate];

  if (delegate)
  {
    delegate2 = [(MTUISwitchTableViewCell *)self delegate];
    [delegate2 switchDidChangeToState:objc_msgSend(actionCopy senderCell:{"isOn"), self}];
  }
}

- (void)setSwitchStateEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  enabledSwitch = [(MTUISwitchTableViewCell *)self enabledSwitch];
  [enabledSwitch setOn:enabledCopy];
}

- (MTUISwitchTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end