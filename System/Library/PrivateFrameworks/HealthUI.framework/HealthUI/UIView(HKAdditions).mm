@interface UIView(HKAdditions)
- (double)hk_layoutHeightFittingWidth:()HKAdditions;
- (double)hk_safeAreaAdjustedEdgeInsets:()HKAdditions;
- (id)hk_addConstraintsWithFormat:()HKAdditions options:metrics:views:;
- (id)hk_addEqualsConstraintWithItem:()HKAdditions attribute:relatedTo:attribute:constant:;
- (id)hk_addEqualsConstraintWithItem:()HKAdditions attribute:relatedTo:constant:;
- (uint64_t)hk_alignCenterConstraintsWithView:()HKAdditions;
- (uint64_t)hk_alignConstraintsWithGuide:()HKAdditions;
- (uint64_t)hk_alignConstraintsWithView:()HKAdditions;
- (uint64_t)hk_alignConstraintsWithView:()HKAdditions insets:;
- (uint64_t)hk_alignConstraintsWithViewController:()HKAdditions;
- (uint64_t)hk_alignHorizontalConstraintsWithGuide:()HKAdditions insets:;
- (uint64_t)hk_alignHorizontalConstraintsWithView:()HKAdditions insets:;
- (uint64_t)hk_alignHorizontalConstraintsWithView:()HKAdditions margin:;
- (uint64_t)hk_alignVerticalConstraintsWithGuide:()HKAdditions insets:;
- (uint64_t)hk_alignVerticalConstraintsWithView:()HKAdditions insets:;
- (uint64_t)hk_alignVerticalConstraintsWithView:()HKAdditions margin:;
- (uint64_t)hk_trailingTextAlignmentAtOrBelowSizeCategory:()HKAdditions;
- (void)hk_alignConstraintsWithLeadingAnchor:()HKAdditions trailingAnchor:insets:;
- (void)hk_alignConstraintsWithTopAnchor:()HKAdditions bottomAnchor:insets:;
- (void)hk_constrainToSuperviewAlongEdges:()HKAdditions constant:;
- (void)hk_constrainToView:()HKAdditions fromEdge:toEdge:constant:;
- (void)hk_constraintAspectRatioFromSize:()HKAdditions;
- (void)hk_maskCorners:()HKAdditions radius:;
@end

@implementation UIView(HKAdditions)

- (id)hk_addEqualsConstraintWithItem:()HKAdditions attribute:relatedTo:constant:
{
  if (a6)
  {
    v7 = a5;
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ACD8] constraintWithItem:a4 attribute:a5 relatedBy:0 toItem:a6 attribute:v7 multiplier:1.0 constant:a2];
  [self addConstraint:v8];

  return v8;
}

- (id)hk_addEqualsConstraintWithItem:()HKAdditions attribute:relatedTo:attribute:constant:
{
  if (a6)
  {
    v8 = a7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696ACD8] constraintWithItem:a4 attribute:a5 relatedBy:0 toItem:a6 attribute:v8 multiplier:1.0 constant:a2];
  [self addConstraint:v9];

  return v9;
}

- (id)hk_addConstraintsWithFormat:()HKAdditions options:metrics:views:
{
  v2 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:? options:? metrics:? views:?];
  [self addConstraints:v2];

  return v2;
}

- (uint64_t)hk_trailingTextAlignmentAtOrBelowSizeCategory:()HKAdditions
{
  if (HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory(a3))
  {
    return 4;
  }

  if ([self hk_isLeftToRight])
  {
    return 2;
  }

  return 0;
}

- (void)hk_constrainToView:()HKAdditions fromEdge:toEdge:constant:
{
  v10[1] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:a5 relatedBy:0 toItem:a4 attribute:a6 multiplier:1.0 constant:a2];
  v8 = MEMORY[0x1E696ACD8];
  v10[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v8 activateConstraints:v9];

  [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)hk_constrainToSuperviewAlongEdges:()HKAdditions constant:
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  superview = [self superview];
  if (!superview)
  {
    goto LABEL_21;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:v6];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  v12 = *v23;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v23 != v12)
      {
        objc_enumerationMutation(v9);
      }

      integerValue = [*(*(&v22 + 1) + 8 * i) integerValue];
      v15 = integerValue;
      if ((integerValue & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        v16 = MEMORY[0x1E696ACD8];
        v17 = 1.0;
        selfCopy = self;
        selfCopy2 = superview;
LABEL_15:
        v21 = [v16 constraintWithItem:selfCopy attribute:v15 relatedBy:0 toItem:selfCopy2 attribute:v15 multiplier:v17 constant:a2];
        [v8 addObject:v21];

        continue;
      }

      if (integerValue == 4 || integerValue == 2)
      {
        v16 = MEMORY[0x1E696ACD8];
        v17 = 1.0;
        selfCopy = superview;
        selfCopy2 = self;
        goto LABEL_15;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v11);
LABEL_18:
  if ([v8 count])
  {
    [MEMORY[0x1E696ACD8] activateConstraints:v8];
    [self setTranslatesAutoresizingMaskIntoConstraints:0];
  }

LABEL_21:
}

- (uint64_t)hk_alignConstraintsWithView:()HKAdditions
{
  v4 = a3;
  leadingAnchor = [self leadingAnchor];
  leadingAnchor2 = [v4 leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v7 setActive:1];

  trailingAnchor = [self trailingAnchor];
  trailingAnchor2 = [v4 trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v10 setActive:1];

  topAnchor = [self topAnchor];
  topAnchor2 = [v4 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v13 setActive:1];

  bottomAnchor = [self bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];

  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v16 setActive:1];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignConstraintsWithGuide:()HKAdditions
{
  v4 = a3;
  topAnchor = [self topAnchor];
  topAnchor2 = [v4 topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v7 setActive:1];

  trailingAnchor = [self trailingAnchor];
  trailingAnchor2 = [v4 trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v10 setActive:1];

  bottomAnchor = [self bottomAnchor];
  bottomAnchor2 = [v4 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v13 setActive:1];

  leadingAnchor = [self leadingAnchor];
  leadingAnchor2 = [v4 leadingAnchor];

  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v16 setActive:1];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignVerticalConstraintsWithView:()HKAdditions margin:
{
  v6 = a4;
  topAnchor = [self topAnchor];
  topAnchor2 = [v6 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:a2];
  [v9 setActive:1];

  bottomAnchor = [self bottomAnchor];
  bottomAnchor2 = [v6 bottomAnchor];

  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-a2];
  [v12 setActive:1];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignHorizontalConstraintsWithView:()HKAdditions margin:
{
  v6 = a4;
  leadingAnchor = [self leadingAnchor];
  leadingAnchor2 = [v6 leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:a2];
  [v9 setActive:1];

  trailingAnchor = [self trailingAnchor];
  trailingAnchor2 = [v6 trailingAnchor];

  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-a2];
  [v12 setActive:1];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignCenterConstraintsWithView:()HKAdditions
{
  v4 = a3;
  centerXAnchor = [self centerXAnchor];
  centerXAnchor2 = [v4 centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v7 setActive:1];

  centerYAnchor = [self centerYAnchor];
  centerYAnchor2 = [v4 centerYAnchor];

  v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v10 setActive:1];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignConstraintsWithViewController:()HKAdditions
{
  v4 = a3;
  leadingAnchor = [self leadingAnchor];
  view = [v4 view];
  leadingAnchor2 = [view leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v8 setActive:1];

  trailingAnchor = [self trailingAnchor];
  view2 = [v4 view];
  trailingAnchor2 = [view2 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v12 setActive:1];

  topAnchor = [self topAnchor];
  view3 = [v4 view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v17 setActive:1];

  bottomAnchor = [self bottomAnchor];
  view4 = [v4 view];

  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v22 setActive:1];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)hk_alignConstraintsWithLeadingAnchor:()HKAdditions trailingAnchor:insets:
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

- (void)hk_alignConstraintsWithTopAnchor:()HKAdditions bottomAnchor:insets:
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

- (uint64_t)hk_alignConstraintsWithView:()HKAdditions insets:
{
  v12 = a7;
  topAnchor = [v12 topAnchor];
  bottomAnchor = [v12 bottomAnchor];
  [self hk_alignConstraintsWithTopAnchor:topAnchor bottomAnchor:bottomAnchor insets:{a2, a3, a4, a5}];

  leadingAnchor = [v12 leadingAnchor];
  trailingAnchor = [v12 trailingAnchor];

  [self hk_alignConstraintsWithLeadingAnchor:leadingAnchor trailingAnchor:trailingAnchor insets:{a2, a3, a4, a5}];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignHorizontalConstraintsWithView:()HKAdditions insets:
{
  v12 = a7;
  leadingAnchor = [v12 leadingAnchor];
  trailingAnchor = [v12 trailingAnchor];

  [self hk_alignConstraintsWithLeadingAnchor:leadingAnchor trailingAnchor:trailingAnchor insets:{a2, a3, a4, a5}];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignVerticalConstraintsWithView:()HKAdditions insets:
{
  v12 = a7;
  topAnchor = [v12 topAnchor];
  bottomAnchor = [v12 bottomAnchor];

  [self hk_alignConstraintsWithTopAnchor:topAnchor bottomAnchor:bottomAnchor insets:{a2, a3, a4, a5}];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignHorizontalConstraintsWithGuide:()HKAdditions insets:
{
  v12 = a7;
  leadingAnchor = [v12 leadingAnchor];
  trailingAnchor = [v12 trailingAnchor];

  [self hk_alignConstraintsWithLeadingAnchor:leadingAnchor trailingAnchor:trailingAnchor insets:{a2, a3, a4, a5}];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignVerticalConstraintsWithGuide:()HKAdditions insets:
{
  v12 = a7;
  topAnchor = [v12 topAnchor];
  bottomAnchor = [v12 bottomAnchor];

  [self hk_alignConstraintsWithTopAnchor:topAnchor bottomAnchor:bottomAnchor insets:{a2, a3, a4, a5}];

  return [self setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)hk_constraintAspectRatioFromSize:()HKAdditions
{
  v4 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:8 relatedBy:0 toItem:self attribute:7 multiplier:a3 / a2 constant:0.0];
  [self addConstraint:v4];
}

- (void)hk_maskCorners:()HKAdditions radius:
{
  layer = [self layer];
  [layer setCornerRadius:a2];

  layer2 = [self layer];
  [layer2 setMaskedCorners:a4 & 0xF];

  layer3 = [self layer];
  [layer3 setMasksToBounds:1];
}

- (double)hk_layoutHeightFittingWidth:()HKAdditions
{
  LODWORD(a4) = 1148846080;
  LODWORD(a5) = 1112014848;
  [self systemLayoutSizeFittingSize:a2 withHorizontalFittingPriority:0.0 verticalFittingPriority:{a4, a5}];
  return v5;
}

- (double)hk_safeAreaAdjustedEdgeInsets:()HKAdditions
{
  [self safeAreaInsets];
  traitCollection = [self traitCollection];
  [traitCollection layoutDirection];

  [self safeAreaInsets];
  v6 = a2 + v5;
  [self safeAreaInsets];
  return v6;
}

@end