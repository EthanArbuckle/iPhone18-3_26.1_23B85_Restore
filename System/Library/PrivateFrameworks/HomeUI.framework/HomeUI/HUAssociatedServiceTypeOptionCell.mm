@interface HUAssociatedServiceTypeOptionCell
- (id)colorForCurrentState;
- (void)prepareForReuse;
- (void)setChecked:(BOOL)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setSuggestion:(BOOL)a3;
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

- (void)setChecked:(BOOL)a3
{
  self->_checked = a3;
  if (a3)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  [(HUAssociatedServiceTypeOptionCell *)self setAccessoryType:v3];
}

- (void)setSuggestion:(BOOL)a3
{
  self->_suggestion = a3;
  v5 = [(HUAssociatedServiceTypeOptionCell *)self colorForCurrentState];
  v4 = [(HUAssociatedServiceTypeOptionCell *)self textLabel];
  [v4 setTextColor:v5];
}

- (void)setDisabled:(BOOL)a3
{
  self->_disabled = a3;
  v5 = [(HUAssociatedServiceTypeOptionCell *)self colorForCurrentState];
  v4 = [(HUAssociatedServiceTypeOptionCell *)self textLabel];
  [v4 setTextColor:v5];
}

- (id)colorForCurrentState
{
  if ([(HUAssociatedServiceTypeOptionCell *)self isDisabled]|| [(HUAssociatedServiceTypeOptionCell *)self isSuggestion])
  {
    v3 = [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    v3 = [MEMORY[0x277D75348] labelColor];
  }

  return v3;
}

@end