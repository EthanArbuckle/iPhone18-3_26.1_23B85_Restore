@interface NSLayoutConstraint(GKAdditions)
+ (id)_gkConstraintWithItem:()GKAdditions attribute:relatedBy:toItem:attribute:multiplier:leading:fontTextStyle:;
+ (id)_gkConstraintsForView:()GKAdditions centeredXInView:enforceMargin:;
+ (id)_gkConstraintsForView:()GKAdditions withinView:insets:;
+ (id)_gkConstraintsForViews:()GKAdditions alignedByAttribute:;
+ (id)_gkConstraintsForViews:()GKAdditions contiguouslyLaidOutVertically:overlap:withinView:insets:applyOrthogonalConstraints:;
+ (void)_gkInstallEdgeConstraintsForLayoutGuide:()GKAdditions containedWithinParentView:;
+ (void)_gkInstallEdgeConstraintsForView:()GKAdditions containedWithinParentView:edgeInsets:;
+ (void)_gkInstallEdgeConstraintsForView:()GKAdditions containedWithinParentView:margin:;
@end

@implementation NSLayoutConstraint(GKAdditions)

+ (id)_gkConstraintWithItem:()GKAdditions attribute:relatedBy:toItem:attribute:multiplier:leading:fontTextStyle:
{
  v16 = MEMORY[0x277CCAAD0];
  v17 = a10;
  v18 = [v16 constraintWithItem:a5 attribute:a6 relatedBy:a7 toItem:a8 attribute:a9 multiplier:1.0 constant:0.0];
  v19 = +[GKConstraintUpdateController sharedController];
  [v19 registerConstraint:v18 leading:v17 forFontTextStyle:a2];

  return v18;
}

+ (id)_gkConstraintsForView:()GKAdditions centeredXInView:enforceMargin:
{
  v15[3] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAAD0];
  v8 = a5;
  v9 = a4;
  v10 = [v7 constraintWithItem:v9 attribute:9 relatedBy:0 toItem:v8 attribute:9 multiplier:1.0 constant:0.0];
  v11 = [MEMORY[0x277CCAAD0] constraintWithItem:v9 attribute:1 relatedBy:1 toItem:v8 attribute:1 multiplier:1.0 constant:a1];
  v12 = [MEMORY[0x277CCAAD0] constraintWithItem:v9 attribute:2 relatedBy:-1 toItem:v8 attribute:2 multiplier:1.0 constant:-a1];

  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  return v13;
}

+ (id)_gkConstraintsForView:()GKAdditions withinView:insets:
{
  v22[4] = *MEMORY[0x277D85DE8];
  v13 = MEMORY[0x277CCAAD0];
  v14 = a8;
  v15 = a7;
  v16 = [v13 constraintWithItem:v14 attribute:1 relatedBy:0 toItem:v15 attribute:1 multiplier:1.0 constant:a2];
  v17 = [MEMORY[0x277CCAAD0] constraintWithItem:v14 attribute:2 relatedBy:0 toItem:v15 attribute:2 multiplier:1.0 constant:-a4];
  v18 = [MEMORY[0x277CCAAD0] constraintWithItem:v14 attribute:3 relatedBy:0 toItem:v15 attribute:3 multiplier:1.0 constant:a1];
  v19 = [MEMORY[0x277CCAAD0] constraintWithItem:v14 attribute:4 relatedBy:0 toItem:v15 attribute:4 multiplier:1.0 constant:-a3];

  v22[0] = v18;
  v22[1] = v16;
  v22[2] = v19;
  v22[3] = v17;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

  return v20;
}

+ (void)_gkInstallEdgeConstraintsForView:()GKAdditions containedWithinParentView:margin:
{
  v7 = a5;
  v8 = a4;
  v9 = [v8 leadingAnchor];
  v10 = [v7 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:a1];
  [v11 setActive:1];

  v12 = [v8 trailingAnchor];
  v13 = [v7 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:a1];
  [v14 setActive:1];

  v15 = [v8 topAnchor];
  v16 = [v7 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:a1];
  [v17 setActive:1];

  v20 = [v8 bottomAnchor];

  v18 = [v7 bottomAnchor];

  v19 = [v20 constraintEqualToAnchor:v18 constant:a1];
  [v19 setActive:1];
}

+ (void)_gkInstallEdgeConstraintsForView:()GKAdditions containedWithinParentView:edgeInsets:
{
  v13 = a8;
  v14 = a7;
  v15 = [v14 leadingAnchor];
  v16 = [v13 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:a2];
  [v17 setActive:1];

  v18 = [v14 trailingAnchor];
  v19 = [v13 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:a4];
  [v20 setActive:1];

  v21 = [v14 topAnchor];
  v22 = [v13 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:a1];
  [v23 setActive:1];

  v26 = [v14 bottomAnchor];

  v24 = [v13 bottomAnchor];

  v25 = [v26 constraintEqualToAnchor:v24 constant:a3];
  [v25 setActive:1];
}

+ (void)_gkInstallEdgeConstraintsForLayoutGuide:()GKAdditions containedWithinParentView:
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 leadingAnchor];
  v8 = [v5 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [v6 trailingAnchor];
  v11 = [v5 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [v6 topAnchor];
  v14 = [v5 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v18 = [v6 bottomAnchor];

  v16 = [v5 bottomAnchor];

  v17 = [v18 constraintEqualToAnchor:v16];
  [v17 setActive:1];
}

+ (id)_gkConstraintsForViews:()GKAdditions alignedByAttribute:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v17 + 1) + 8 * v12);
        if (v13)
        {
          v15 = [MEMORY[0x277CCAAD0] constraintWithItem:*(*(&v17 + 1) + 8 * v12) attribute:a4 relatedBy:0 toItem:v13 attribute:a4 multiplier:1.0 constant:{0.0, v17}];
          [v6 addObject:v15];
        }

        v10 = v14;

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)_gkConstraintsForViews:()GKAdditions contiguouslyLaidOutVertically:overlap:withinView:insets:applyOrthogonalConstraints:
{
  v19 = a8;
  v20 = a10;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = __Block_byref_object_copy__11;
  v50[4] = __Block_byref_object_dispose__11;
  v51 = 0;
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v19, "count")}];
  if ([v19 count])
  {
    v22 = [v19 objectAtIndex:0];
    v37 = a11;
    v23 = [v19 lastObject];
    if (a9)
    {
      v24 = 3;
    }

    else
    {
      v24 = 1;
    }

    if (a9)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (a9)
    {
      v26 = 1;
    }

    else
    {
      v26 = 3;
    }

    if (a9)
    {
      v27 = 2;
    }

    else
    {
      v27 = 4;
    }

    if (a9)
    {
      v28 = a2;
    }

    else
    {
      v28 = a3;
    }

    if (a9)
    {
      v29 = a4;
    }

    else
    {
      v29 = a5;
    }

    if (!a9)
    {
      a3 = a2;
      a5 = a4;
    }

    v30 = [MEMORY[0x277CCAAD0] constraintWithItem:v22 attribute:v24 relatedBy:0 toItem:v20 attribute:v24 multiplier:1.0 constant:{v28, v27}];
    [v21 addObject:v30];
    v31 = [MEMORY[0x277CCAAD0] constraintWithItem:v23 attribute:v25 relatedBy:0 toItem:v20 attribute:v25 multiplier:1.0 constant:-v29];
    [v21 addObject:v31];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __141__NSLayoutConstraint_GKAdditions___gkConstraintsForViews_contiguouslyLaidOutVertically_overlap_withinView_insets_applyOrthogonalConstraints___block_invoke;
    v38[3] = &unk_27966CE98;
    v41 = v50;
    v42 = v24;
    v43 = v25;
    v44 = a1;
    v32 = v21;
    v49 = v37;
    v39 = v32;
    v45 = v26;
    v40 = v20;
    v46 = a3;
    v47 = v36;
    v48 = a5;
    [v19 enumerateObjectsUsingBlock:v38];
    v33 = v40;
    v34 = v32;
  }

  _Block_object_dispose(v50, 8);

  return v21;
}

@end