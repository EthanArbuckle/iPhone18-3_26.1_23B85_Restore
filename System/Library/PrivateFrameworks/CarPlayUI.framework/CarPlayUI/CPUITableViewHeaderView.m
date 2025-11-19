@interface CPUITableViewHeaderView
- (void)setLabelText:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation CPUITableViewHeaderView

- (void)setLabelText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_labelText isEqualToString:?])
  {
    v4 = [v6 copy];
    labelText = self->_labelText;
    self->_labelText = v4;

    [(CPUITableViewHeaderView *)self setNeedsUpdateConfiguration];
  }
}

- (void)updateConfigurationUsingState:(id)a3
{
  v11 = [MEMORY[0x277D756E0] headerConfiguration];
  v4 = [(CPUITableViewHeaderView *)self labelText];
  [v11 setText:v4];

  v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] weight:*MEMORY[0x277D743F8]];
  v6 = [v11 textProperties];
  [v6 setFont:v5];

  v7 = [MEMORY[0x277D75348] labelColor];
  v8 = [v11 textProperties];
  [v8 setColor:v7];

  v9 = [v11 textProperties];
  [v9 setNumberOfLines:2];

  [v11 setDirectionalLayoutMargins:{4.0, 8.0, 4.0, 12.0}];
  v10 = [MEMORY[0x277D751C0] clearConfiguration];
  [(CPUITableViewHeaderView *)self setBackgroundConfiguration:v10];

  [(CPUITableViewHeaderView *)self setContentConfiguration:v11];
}

@end