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
  [a1 addConstraint:v8];

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
  [a1 addConstraint:v9];

  return v9;
}

- (id)hk_addConstraintsWithFormat:()HKAdditions options:metrics:views:
{
  v2 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:? options:? metrics:? views:?];
  [a1 addConstraints:v2];

  return v2;
}

- (uint64_t)hk_trailingTextAlignmentAtOrBelowSizeCategory:()HKAdditions
{
  if (HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory(a3))
  {
    return 4;
  }

  if ([a1 hk_isLeftToRight])
  {
    return 2;
  }

  return 0;
}

- (void)hk_constrainToView:()HKAdditions fromEdge:toEdge:constant:
{
  v10[1] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696ACD8] constraintWithItem:a1 attribute:a5 relatedBy:0 toItem:a4 attribute:a6 multiplier:1.0 constant:a2];
  v8 = MEMORY[0x1E696ACD8];
  v10[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v8 activateConstraints:v9];

  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)hk_constrainToSuperviewAlongEdges:()HKAdditions constant:
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a1 superview];
  if (!v7)
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

      v14 = [*(*(&v22 + 1) + 8 * i) integerValue];
      v15 = v14;
      if ((v14 & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        v16 = MEMORY[0x1E696ACD8];
        v17 = 1.0;
        v18 = a1;
        v19 = v7;
LABEL_15:
        v21 = [v16 constraintWithItem:v18 attribute:v15 relatedBy:0 toItem:v19 attribute:v15 multiplier:v17 constant:a2];
        [v8 addObject:v21];

        continue;
      }

      if (v14 == 4 || v14 == 2)
      {
        v16 = MEMORY[0x1E696ACD8];
        v17 = 1.0;
        v18 = v7;
        v19 = a1;
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
    [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

LABEL_21:
}

- (uint64_t)hk_alignConstraintsWithView:()HKAdditions
{
  v4 = a3;
  v5 = [a1 leadingAnchor];
  v6 = [v4 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [a1 trailingAnchor];
  v9 = [v4 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [a1 topAnchor];
  v12 = [v4 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [a1 bottomAnchor];
  v15 = [v4 bottomAnchor];

  v16 = [v14 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignConstraintsWithGuide:()HKAdditions
{
  v4 = a3;
  v5 = [a1 topAnchor];
  v6 = [v4 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [a1 trailingAnchor];
  v9 = [v4 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [a1 bottomAnchor];
  v12 = [v4 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  v14 = [a1 leadingAnchor];
  v15 = [v4 leadingAnchor];

  v16 = [v14 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignVerticalConstraintsWithView:()HKAdditions margin:
{
  v6 = a4;
  v7 = [a1 topAnchor];
  v8 = [v6 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:a2];
  [v9 setActive:1];

  v10 = [a1 bottomAnchor];
  v11 = [v6 bottomAnchor];

  v12 = [v10 constraintEqualToAnchor:v11 constant:-a2];
  [v12 setActive:1];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignHorizontalConstraintsWithView:()HKAdditions margin:
{
  v6 = a4;
  v7 = [a1 leadingAnchor];
  v8 = [v6 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:a2];
  [v9 setActive:1];

  v10 = [a1 trailingAnchor];
  v11 = [v6 trailingAnchor];

  v12 = [v10 constraintEqualToAnchor:v11 constant:-a2];
  [v12 setActive:1];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignCenterConstraintsWithView:()HKAdditions
{
  v4 = a3;
  v5 = [a1 centerXAnchor];
  v6 = [v4 centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [a1 centerYAnchor];
  v9 = [v4 centerYAnchor];

  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignConstraintsWithViewController:()HKAdditions
{
  v4 = a3;
  v5 = [a1 leadingAnchor];
  v6 = [v4 view];
  v7 = [v6 leadingAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  [v8 setActive:1];

  v9 = [a1 trailingAnchor];
  v10 = [v4 view];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [a1 topAnchor];
  v14 = [v4 view];
  v15 = [v14 safeAreaLayoutGuide];
  v16 = [v15 topAnchor];
  v17 = [v13 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = [a1 bottomAnchor];
  v19 = [v4 view];

  v20 = [v19 safeAreaLayoutGuide];
  v21 = [v20 bottomAnchor];
  v22 = [v18 constraintEqualToAnchor:v21];
  [v22 setActive:1];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)hk_alignConstraintsWithLeadingAnchor:()HKAdditions trailingAnchor:insets:
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

- (void)hk_alignConstraintsWithTopAnchor:()HKAdditions bottomAnchor:insets:
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

- (uint64_t)hk_alignConstraintsWithView:()HKAdditions insets:
{
  v12 = a7;
  v13 = [v12 topAnchor];
  v14 = [v12 bottomAnchor];
  [a1 hk_alignConstraintsWithTopAnchor:v13 bottomAnchor:v14 insets:{a2, a3, a4, a5}];

  v15 = [v12 leadingAnchor];
  v16 = [v12 trailingAnchor];

  [a1 hk_alignConstraintsWithLeadingAnchor:v15 trailingAnchor:v16 insets:{a2, a3, a4, a5}];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignHorizontalConstraintsWithView:()HKAdditions insets:
{
  v12 = a7;
  v13 = [v12 leadingAnchor];
  v14 = [v12 trailingAnchor];

  [a1 hk_alignConstraintsWithLeadingAnchor:v13 trailingAnchor:v14 insets:{a2, a3, a4, a5}];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignVerticalConstraintsWithView:()HKAdditions insets:
{
  v12 = a7;
  v13 = [v12 topAnchor];
  v14 = [v12 bottomAnchor];

  [a1 hk_alignConstraintsWithTopAnchor:v13 bottomAnchor:v14 insets:{a2, a3, a4, a5}];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignHorizontalConstraintsWithGuide:()HKAdditions insets:
{
  v12 = a7;
  v13 = [v12 leadingAnchor];
  v14 = [v12 trailingAnchor];

  [a1 hk_alignConstraintsWithLeadingAnchor:v13 trailingAnchor:v14 insets:{a2, a3, a4, a5}];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (uint64_t)hk_alignVerticalConstraintsWithGuide:()HKAdditions insets:
{
  v12 = a7;
  v13 = [v12 topAnchor];
  v14 = [v12 bottomAnchor];

  [a1 hk_alignConstraintsWithTopAnchor:v13 bottomAnchor:v14 insets:{a2, a3, a4, a5}];

  return [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)hk_constraintAspectRatioFromSize:()HKAdditions
{
  v4 = [MEMORY[0x1E696ACD8] constraintWithItem:a1 attribute:8 relatedBy:0 toItem:a1 attribute:7 multiplier:a3 / a2 constant:0.0];
  [a1 addConstraint:v4];
}

- (void)hk_maskCorners:()HKAdditions radius:
{
  v7 = [a1 layer];
  [v7 setCornerRadius:a2];

  v8 = [a1 layer];
  [v8 setMaskedCorners:a4 & 0xF];

  v9 = [a1 layer];
  [v9 setMasksToBounds:1];
}

- (double)hk_layoutHeightFittingWidth:()HKAdditions
{
  LODWORD(a4) = 1148846080;
  LODWORD(a5) = 1112014848;
  [a1 systemLayoutSizeFittingSize:a2 withHorizontalFittingPriority:0.0 verticalFittingPriority:{a4, a5}];
  return v5;
}

- (double)hk_safeAreaAdjustedEdgeInsets:()HKAdditions
{
  [a1 safeAreaInsets];
  v4 = [a1 traitCollection];
  [v4 layoutDirection];

  [a1 safeAreaInsets];
  v6 = a2 + v5;
  [a1 safeAreaInsets];
  return v6;
}

@end