@interface HUAssociatedServiceTypeOptionCell
- (id)colorForCurrentState;
- (void)prepareForReuse;
- (void)setChecked:(BOOL)checked;
- (void)setDisabled:(BOOL)disabled;
- (void)setSuggestion:(BOOL)suggestion;
@end

@implementation HUAssociatedServiceTypeOptionCell

- (void)prepareForReuse
{
  [(HUAssociatedServiceTypeOptionCell *)self setChecked:0];
  [(HUAssociatedServiceTypeOptionCell *)self setSuggestion:0];
  v3.receiver = self;
  v3.super_class = HUAssociatedServiceTypeOptionCell;
  [(HUAssociatedServiceTypeOptionCell *)&v3 prepareForReuse];
}

- (void)setChecked:(BOOL)checked
{
  self->_checked = checked;
  if (checked)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  [(HUAssociatedServiceTypeOptionCell *)self setAccessoryType:v3];
}

- (void)setSuggestion:(BOOL)suggestion
{
  self->_suggestion = suggestion;
  colorForCurrentState = [(HUAssociatedServiceTypeOptionCell *)self colorForCurrentState];
  textLabel = [(HUAssociatedServiceTypeOptionCell *)self textLabel];
  [textLabel setTextColor:colorForCurrentState];
}

- (void)setDisabled:(BOOL)disabled
{
  self->_disabled = disabled;
  colorForCurrentState = [(HUAssociatedServiceTypeOptionCell *)self colorForCurrentState];
  textLabel = [(HUAssociatedServiceTypeOptionCell *)self textLabel];
  [textLabel setTextColor:colorForCurrentState];
}

- (id)colorForCurrentState
{
  if ([(HUAssociatedServiceTypeOptionCell *)self isDisabled]|| [(HUAssociatedServiceTypeOptionCell *)self isSuggestion])
  {
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    systemGrayColor = [MEMORY[0x277D75348] labelColor];
  }

  return systemGrayColor;
}

@end