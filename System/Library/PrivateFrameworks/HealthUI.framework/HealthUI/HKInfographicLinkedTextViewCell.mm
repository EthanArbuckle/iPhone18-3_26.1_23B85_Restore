@interface HKInfographicLinkedTextViewCell
- (HKInfographicLinkedTextViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)didTapDescriptionLabel;
- (void)updateAutomationIdentifiersWith:(id)with;
@end

@implementation HKInfographicLinkedTextViewCell

- (HKInfographicLinkedTextViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = HKInfographicLinkedTextViewCell;
  v4 = [(HKInfographicTextViewCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_didTapDescriptionLabel];
    descriptionLabel = [(HKInfographicTextViewCell *)v4 descriptionLabel];
    [descriptionLabel addGestureRecognizer:v5];

    descriptionLabel2 = [(HKInfographicTextViewCell *)v4 descriptionLabel];
    [descriptionLabel2 setUserInteractionEnabled:1];
  }

  return v4;
}

- (void)didTapDescriptionLabel
{
  didTapLinkedText = [(HKInfographicLinkedTextViewCell *)self didTapLinkedText];
  didTapLinkedText[2]();
}

- (void)updateAutomationIdentifiersWith:(id)with
{
  v13[3] = *MEMORY[0x1E69E9840];
  withCopy = with;
  v5 = withCopy;
  if (withCopy)
  {
    v13[0] = withCopy;
    v13[1] = @"InfographicLinkedTextItem";
    v13[2] = @"Cell";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v7 = HKUIJoinStringsForAutomationIdentifier(v6);
    [(HKInfographicLinkedTextViewCell *)self setAccessibilityIdentifier:v7];

    v12[0] = v5;
    v12[1] = @"InfographicLinkedTextItem";
    v12[2] = @"Description";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
    v9 = HKUIJoinStringsForAutomationIdentifier(v8);
    descriptionLabel = [(HKInfographicTextViewCell *)self descriptionLabel];
    [descriptionLabel setAccessibilityIdentifier:v9];
  }

  else
  {
    [(HKInfographicLinkedTextViewCell *)self setAccessibilityIdentifier:0];
    descriptionLabel2 = [(HKInfographicTextViewCell *)self descriptionLabel];
    [descriptionLabel2 setAccessibilityIdentifier:0];
  }
}

@end