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
  leadingAnchor = [self leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:v13 constant:a3];

  [v15 setActive:1];
  trailingAnchor = [self trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:v12 constant:-a5];

  [v16 setActive:1];
}

- (void)hrui_alignConstraintsWithTopAnchor:()HeartRhythmUI bottomAnchor:insets:
{
  v11 = a7;
  v12 = a6;
  topAnchor = [self topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:v12 constant:a2];

  [v14 setActive:1];
  bottomAnchor = [self bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:v11 constant:-a4];

  [v15 setActive:1];
}

- (uint64_t)hrui_alignConstraintsWithView:()HeartRhythmUI insets:
{
  v12 = a7;
  topAnchor = [v12 topAnchor];
  bottomAnchor = [v12 bottomAnchor];
  [self hrui_alignConstraintsWithTopAnchor:topAnchor bottomAnchor:bottomAnchor insets:{a2, a3, a4, a5}];

  leadingAnchor = [v12 leadingAnchor];
  trailingAnchor = [v12 trailingAnchor];

  [self hrui_alignConstraintsWithLeadingAnchor:leadingAnchor trailingAnchor:trailingAnchor insets:{a2, a3, a4, a5}];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hrui_alignHorizontalConstraintsWithView:()HeartRhythmUI insets:
{
  v12 = a7;
  leadingAnchor = [v12 leadingAnchor];
  trailingAnchor = [v12 trailingAnchor];

  [self hrui_alignConstraintsWithLeadingAnchor:leadingAnchor trailingAnchor:trailingAnchor insets:{a2, a3, a4, a5}];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hrui_alignVerticalConstraintsWithView:()HeartRhythmUI insets:
{
  v12 = a7;
  topAnchor = [v12 topAnchor];
  bottomAnchor = [v12 bottomAnchor];

  [self hrui_alignConstraintsWithTopAnchor:topAnchor bottomAnchor:bottomAnchor insets:{a2, a3, a4, a5}];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hrui_alignHorizontalConstraintsWithGuide:()HeartRhythmUI insets:
{
  v12 = a7;
  leadingAnchor = [v12 leadingAnchor];
  trailingAnchor = [v12 trailingAnchor];

  [self hrui_alignConstraintsWithLeadingAnchor:leadingAnchor trailingAnchor:trailingAnchor insets:{a2, a3, a4, a5}];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hrui_alignVerticalConstraintsWithGuide:()HeartRhythmUI insets:
{
  v12 = a7;
  topAnchor = [v12 topAnchor];
  bottomAnchor = [v12 bottomAnchor];

  [self hrui_alignConstraintsWithTopAnchor:topAnchor bottomAnchor:bottomAnchor insets:{a2, a3, a4, a5}];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)hrui_constraintAspectRatioFromSize:()HeartRhythmUI
{
  v4 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:8 relatedBy:0 toItem:self attribute:7 multiplier:a3 / a2 constant:0.0];
  [self addConstraint:v4];
}

- (void)hrui_maskCorners:()HeartRhythmUI radius:
{
  layer = [self layer];
  [layer setCornerRadius:a2];

  layer2 = [self layer];
  [layer2 setMaskedCorners:a4 & 0xF];

  layer3 = [self layer];
  [layer3 setMasksToBounds:1];
}

@end