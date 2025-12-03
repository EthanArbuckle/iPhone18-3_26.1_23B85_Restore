@interface HKInfographicTitleDetailOptionalButtonCell
- (HKInfographicTitleDetailOptionalButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)updateAutomationIdentifiersWith:(id)with;
@end

@implementation HKInfographicTitleDetailOptionalButtonCell

- (HKInfographicTitleDetailOptionalButtonCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = HKInfographicTitleDetailOptionalButtonCell;
  v4 = [(HKInfographicTitleDetailOptionalButtonCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(HKTitleDetailOptionalButtonView);
    titleDetailOptionalButtonView = v4->_titleDetailOptionalButtonView;
    v4->_titleDetailOptionalButtonView = v5;

    contentView = [(HKInfographicTitleDetailOptionalButtonCell *)v4 contentView];
    [contentView addSubview:v4->_titleDetailOptionalButtonView];

    v8 = v4->_titleDetailOptionalButtonView;
    contentView2 = [(HKInfographicTitleDetailOptionalButtonCell *)v4 contentView];
    [(UIView *)v8 hk_alignConstraintsWithView:contentView2];
  }

  return v4;
}

- (void)updateAutomationIdentifiersWith:(id)with
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (with)
  {
    v11[0] = with;
    v11[1] = @"InfographicTitleDetailOptionalButtonItem";
    v11[2] = @"Cell";
    v4 = MEMORY[0x1E695DEC8];
    withCopy = with;
    v6 = [v4 arrayWithObjects:v11 count:3];
    v7 = HKUIJoinStringsForAutomationIdentifier(v6);
    [(HKInfographicTitleDetailOptionalButtonCell *)self setAccessibilityIdentifier:v7];

    v10[0] = withCopy;
    v10[1] = @"InfographicTitleDetailOptionalButtonItem";
    v10[2] = @"View";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
    v9 = HKUIJoinStringsForAutomationIdentifier(v8);
    [(HKTitleDetailOptionalButtonView *)self->_titleDetailOptionalButtonView setAccessibilityIdentifier:v9];
  }

  else
  {
    v8 = 0;
    [(HKInfographicTitleDetailOptionalButtonCell *)self setAccessibilityIdentifier:0];
    [(HKTitleDetailOptionalButtonView *)self->_titleDetailOptionalButtonView setAccessibilityIdentifier:0];
  }
}

@end