@interface HKInfographicLinkedTextViewCell
- (HKInfographicLinkedTextViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)didTapDescriptionLabel;
- (void)updateAutomationIdentifiersWith:(id)a3;
@end

@implementation HKInfographicLinkedTextViewCell

- (HKInfographicLinkedTextViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = HKInfographicLinkedTextViewCell;
  v4 = [(HKInfographicTextViewCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_didTapDescriptionLabel];
    v6 = [(HKInfographicTextViewCell *)v4 descriptionLabel];
    [v6 addGestureRecognizer:v5];

    v7 = [(HKInfographicTextViewCell *)v4 descriptionLabel];
    [v7 setUserInteractionEnabled:1];
  }

  return v4;
}

- (void)didTapDescriptionLabel
{
  v2 = [(HKInfographicLinkedTextViewCell *)self didTapLinkedText];
  v2[2]();
}

- (void)updateAutomationIdentifiersWith:(id)a3
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v13[0] = v4;
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
    v10 = [(HKInfographicTextViewCell *)self descriptionLabel];
    [v10 setAccessibilityIdentifier:v9];
  }

  else
  {
    [(HKInfographicLinkedTextViewCell *)self setAccessibilityIdentifier:0];
    v11 = [(HKInfographicTextViewCell *)self descriptionLabel];
    [v11 setAccessibilityIdentifier:0];
  }
}

@end