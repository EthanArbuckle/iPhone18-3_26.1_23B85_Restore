@interface UIView(HeartRhythmUI)
- (uint64_t)hrui_alignConstraintsWithView:()HeartRhythmUI insets:;
- (uint64_t)hrui_alignHorizontalConstraintsWithGuide:()HeartRhythmUI insets:;
- (uint64_t)hrui_alignHorizontalConstraintsWithView:()HeartRhythmUI insets:;
- (uint64_t)hrui_alignVerticalConstraintsWithGuide:()HeartRhythmUI insets:;
- (uint64_t)hrui_alignVerticalConstraintsWithView:()HeartRhythmUI insets:;
- (void)hrui_alignConstraintsWithLeadingAnchor:()HeartRhythmUI trailingAnchor:insets:;
- (void)hrui_alignConstraintsWithTopAnchor:()HeartRhythmUI bottomAnchor:insets:;
- (void)hrui_constraintAspectRatioFromSize:()HeartRhythmUI;
- (void)hrui_maskCorners:()HeartRhythmUI radius:;
@end

@implementation UIView(HeartRhythmUI)

- (void)hrui_alignConstraintsWithLeadingAnchor:()HeartRhythmUI trailingAnchor:insets:
{
  v12 = a8;
  v13 = a7;
  v14 = [a1 leadingAnchor];
  v15 = [v14 constraintEqualToAnchor:v13 constant:a3];

  [v15 setActive:1];
  v17 = [a1 trailingAnchor];
  v16 = [v17 constraintEqualToAnchor:v12 constant:-a5];

  [v16 setActive:1];
}

- (void)hrui_alignConstraintsWithTopAnchor:()HeartRhythmUI bottomAnchor:insets:
{
  v11 = a7;
  v12 = a6;
  v13 = [a1 topAnchor];
  v14 = [v13 constraintEqualToAnchor:v12 constant:a2];

  [v14 setActive:1];
  v16 = [a1 bottomAnchor];
  v15 = [v16 constraintEqualToAnchor:v11 constant:-a4];

  [v15 setActive:1];
}

- (uint64_t)hrui_alignConstraintsWithView:()HeartRhythmUI insets:
{
  v12 = a7;
  v13 = [v12 topAnchor];
  v14 = [v12 bottomAnchor];
  [a1 hrui_alignConstraintsWithTopAnchor:v13 bottomAnchor:v14 insets:{a2, a3, a4, a5}];

  v15 = [v12 leadingAnchor];
  v16 = [v12 trailingAnchor];

  [a1 hrui_alignConstraintsWithLeadingAnchor:v15 trailingAnchor:v16 insets:{a2, a3, a4, a5}];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hrui_alignHorizontalConstraintsWithView:()HeartRhythmUI insets:
{
  v12 = a7;
  v13 = [v12 leadingAnchor];
  v14 = [v12 trailingAnchor];

  [a1 hrui_alignConstraintsWithLeadingAnchor:v13 trailingAnchor:v14 insets:{a2, a3, a4, a5}];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hrui_alignVerticalConstraintsWithView:()HeartRhythmUI insets:
{
  v12 = a7;
  v13 = [v12 topAnchor];
  v14 = [v12 bottomAnchor];

  [a1 hrui_alignConstraintsWithTopAnchor:v13 bottomAnchor:v14 insets:{a2, a3, a4, a5}];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hrui_alignHorizontalConstraintsWithGuide:()HeartRhythmUI insets:
{
  v12 = a7;
  v13 = [v12 leadingAnchor];
  v14 = [v12 trailingAnchor];

  [a1 hrui_alignConstraintsWithLeadingAnchor:v13 trailingAnchor:v14 insets:{a2, a3, a4, a5}];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hrui_alignVerticalConstraintsWithGuide:()HeartRhythmUI insets:
{
  v12 = a7;
  v13 = [v12 topAnchor];
  v14 = [v12 bottomAnchor];

  [a1 hrui_alignConstraintsWithTopAnchor:v13 bottomAnchor:v14 insets:{a2, a3, a4, a5}];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)hrui_constraintAspectRatioFromSize:()HeartRhythmUI
{
  v4 = [MEMORY[0x277CCAAD0] constraintWithItem:a1 attribute:8 relatedBy:0 toItem:a1 attribute:7 multiplier:a3 / a2 constant:0.0];
  [a1 addConstraint:v4];
}

- (void)hrui_maskCorners:()HeartRhythmUI radius:
{
  v7 = [a1 layer];
  [v7 setCornerRadius:a2];

  v8 = [a1 layer];
  [v8 setMaskedCorners:a4 & 0xF];

  v9 = [a1 layer];
  [v9 setMasksToBounds:1];
}

@end