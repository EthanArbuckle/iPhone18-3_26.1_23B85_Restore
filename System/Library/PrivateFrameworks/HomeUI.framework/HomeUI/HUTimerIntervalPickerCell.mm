@interface HUTimerIntervalPickerCell
- (UILabel)textLabel;
@end

@implementation HUTimerIntervalPickerCell

- (UILabel)textLabel
{
  v20[3] = *MEMORY[0x277D85DE8];
  textLabel = self->_textLabel;
  if (!textLabel)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(HUTimerIntervalPickerCell *)self setTextLabel:v5];

    [(UILabel *)self->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v6) = 1148846080;
    [(UILabel *)self->_textLabel setContentHuggingPriority:0 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(UILabel *)self->_textLabel setContentCompressionResistancePriority:0 forAxis:v7];
    [(HUTimerIntervalPickerCell *)self addSubview:self->_textLabel];
    if ([(HUTimerIntervalPickerCell *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      v8 = 4.0;
    }

    else
    {
      v8 = 10.0;
    }

    v19 = [(UILabel *)self->_textLabel centerYAnchor];
    v9 = [(HUTimerIntervalPickerCell *)self centerYAnchor];
    v10 = [v19 constraintEqualToAnchor:v9];
    v20[0] = v10;
    v11 = [(UILabel *)self->_textLabel heightAnchor];
    v12 = [v11 constraintEqualToConstant:32.0];
    v20[1] = v12;
    v13 = [(UILabel *)self->_textLabel leadingAnchor];
    v14 = [(HUTimerIntervalPickerCell *)self leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:v8];
    v20[2] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
    [v18 activateConstraints:v16];

    textLabel = self->_textLabel;
  }

  return textLabel;
}

@end