@interface HKMedicalIDEditorSwitchCell
- (HKMedicalIDEditorSwitchCell)initWithTitle:(id)a3 defaultState:(BOOL)a4;
- (HKMedicalIDEditorSwitchDelegate)delegate;
- (void)_switchSwitched:(id)a3;
- (void)setUIDisabled;
@end

@implementation HKMedicalIDEditorSwitchCell

- (HKMedicalIDEditorSwitchCell)initWithTitle:(id)a3 defaultState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v16.receiver = self;
  v16.super_class = HKMedicalIDEditorSwitchCell;
  v7 = [(HKMedicalIDEditorSwitchCell *)&v16 initWithStyle:0 reuseIdentifier:@"HKMedicalIDEditorSwitchCellIdentifier"];
  v8 = v7;
  if (v7)
  {
    [(HKMedicalIDEditorSwitchCell *)v7 setSeparatorInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    v9 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    v10 = v8->_switch;
    v8->_switch = v9;

    [(UISwitch *)v8->_switch addTarget:v8 action:sel__switchSwitched_ forControlEvents:4096];
    [(HKMedicalIDEditorSwitchCell *)v8 setAccessoryView:v8->_switch];
    v11 = [(HKMedicalIDEditorSwitchCell *)v8 textLabel];
    [v11 setText:v6];

    v12 = [(HKMedicalIDEditorSwitchCell *)v8 textLabel];
    [v12 setNumberOfLines:0];

    v13 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v14 = [(HKMedicalIDEditorSwitchCell *)v8 textLabel];
    [v14 setFont:v13];

    [(UISwitch *)v8->_switch setOn:v4];
  }

  return v8;
}

- (void)_switchSwitched:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [v4 isOn];

  [WeakRetained switchWasChanged:v5];
}

- (void)setUIDisabled
{
  [(HKMedicalIDEditorSwitchCell *)self setUserInteractionEnabled:0];
  v3 = [(HKMedicalIDEditorSwitchCell *)self textLabel];
  [v3 setEnabled:0];

  v4 = self->_switch;

  [(UISwitch *)v4 setEnabled:0];
}

- (HKMedicalIDEditorSwitchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end