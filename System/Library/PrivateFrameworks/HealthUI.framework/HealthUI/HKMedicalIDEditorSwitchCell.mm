@interface HKMedicalIDEditorSwitchCell
- (HKMedicalIDEditorSwitchCell)initWithTitle:(id)title defaultState:(BOOL)state;
- (HKMedicalIDEditorSwitchDelegate)delegate;
- (void)_switchSwitched:(id)switched;
- (void)setUIDisabled;
@end

@implementation HKMedicalIDEditorSwitchCell

- (HKMedicalIDEditorSwitchCell)initWithTitle:(id)title defaultState:(BOOL)state
{
  stateCopy = state;
  titleCopy = title;
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
    textLabel = [(HKMedicalIDEditorSwitchCell *)v8 textLabel];
    [textLabel setText:titleCopy];

    textLabel2 = [(HKMedicalIDEditorSwitchCell *)v8 textLabel];
    [textLabel2 setNumberOfLines:0];

    v13 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    textLabel3 = [(HKMedicalIDEditorSwitchCell *)v8 textLabel];
    [textLabel3 setFont:v13];

    [(UISwitch *)v8->_switch setOn:stateCopy];
  }

  return v8;
}

- (void)_switchSwitched:(id)switched
{
  switchedCopy = switched;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  isOn = [switchedCopy isOn];

  [WeakRetained switchWasChanged:isOn];
}

- (void)setUIDisabled
{
  [(HKMedicalIDEditorSwitchCell *)self setUserInteractionEnabled:0];
  textLabel = [(HKMedicalIDEditorSwitchCell *)self textLabel];
  [textLabel setEnabled:0];

  v4 = self->_switch;

  [(UISwitch *)v4 setEnabled:0];
}

- (HKMedicalIDEditorSwitchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end