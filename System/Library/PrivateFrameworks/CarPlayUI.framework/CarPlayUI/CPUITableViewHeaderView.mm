@interface CPUITableViewHeaderView
- (void)setLabelText:(id)text;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation CPUITableViewHeaderView

- (void)setLabelText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_labelText isEqualToString:?])
  {
    v4 = [textCopy copy];
    labelText = self->_labelText;
    self->_labelText = v4;

    [(CPUITableViewHeaderView *)self setNeedsUpdateConfiguration];
  }
}

- (void)updateConfigurationUsingState:(id)state
{
  headerConfiguration = [MEMORY[0x277D756E0] headerConfiguration];
  labelText = [(CPUITableViewHeaderView *)self labelText];
  [headerConfiguration setText:labelText];

  v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] weight:*MEMORY[0x277D743F8]];
  textProperties = [headerConfiguration textProperties];
  [textProperties setFont:v5];

  labelColor = [MEMORY[0x277D75348] labelColor];
  textProperties2 = [headerConfiguration textProperties];
  [textProperties2 setColor:labelColor];

  textProperties3 = [headerConfiguration textProperties];
  [textProperties3 setNumberOfLines:2];

  [headerConfiguration setDirectionalLayoutMargins:{4.0, 8.0, 4.0, 12.0}];
  clearConfiguration = [MEMORY[0x277D751C0] clearConfiguration];
  [(CPUITableViewHeaderView *)self setBackgroundConfiguration:clearConfiguration];

  [(CPUITableViewHeaderView *)self setContentConfiguration:headerConfiguration];
}

@end