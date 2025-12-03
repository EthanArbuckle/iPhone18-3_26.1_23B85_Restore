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

    centerYAnchor = [(UILabel *)self->_textLabel centerYAnchor];
    centerYAnchor2 = [(HUTimerIntervalPickerCell *)self centerYAnchor];
    v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v20[0] = v10;
    heightAnchor = [(UILabel *)self->_textLabel heightAnchor];
    v12 = [heightAnchor constraintEqualToConstant:32.0];
    v20[1] = v12;
    leadingAnchor = [(UILabel *)self->_textLabel leadingAnchor];
    leadingAnchor2 = [(HUTimerIntervalPickerCell *)self leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v8];
    v20[2] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
    [v18 activateConstraints:v16];

    textLabel = self->_textLabel;
  }

  return textLabel;
}

@end