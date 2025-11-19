@interface NSLayoutConstraint
@end

@implementation NSLayoutConstraint

void __141__NSLayoutConstraint_GKAdditions___gkConstraintsForViews_contiguouslyLaidOutVertically_overlap_withinView_insets_applyOrthogonalConstraints___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    v5 = [MEMORY[0x277CCAAD0] constraintWithItem:v3 attribute:*(a1 + 56) relatedBy:0 toItem:v4 attribute:*(a1 + 64) multiplier:1.0 constant:-*(a1 + 72)];
    [*(a1 + 32) addObject:v5];
  }

  if (*(a1 + 112) == 1)
  {
    v6 = [MEMORY[0x277CCAAD0] constraintWithItem:v3 attribute:*(a1 + 80) relatedBy:0 toItem:*(a1 + 40) attribute:*(a1 + 80) multiplier:1.0 constant:*(a1 + 88)];
    [*(a1 + 32) addObject:v6];
    v7 = [MEMORY[0x277CCAAD0] constraintWithItem:v3 attribute:*(a1 + 96) relatedBy:0 toItem:*(a1 + 40) attribute:*(a1 + 96) multiplier:1.0 constant:-*(a1 + 104)];
    [*(a1 + 32) addObject:v7];
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;
}

void __102__NSLayoutConstraint_GKBaselineLayout___gkBaselineConstraintsForViewsFontsLeadings_superview_options___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 doubleValue];
    *(*(*(a1 + 48) + 8) + 24) = v4;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    }

    else
    {
      v5 = v11;
      [*(a1 + 32) addObject:v5];
      v6 = *(*(a1 + 64) + 8);
      v7 = *(v6 + 40);
      if (v7)
      {
        v8 = [MEMORY[0x277CCAAD0] constraintWithItem:v5 attribute:12 relatedBy:0 toItem:v7 attribute:11 multiplier:1.0 constant:*(*(*(a1 + 48) + 8) + 24)];
        if (*(*(*(a1 + 56) + 8) + 40))
        {
          v9 = +[GKConstraintUpdateController sharedController];
          [v9 registerConstraint:v8 leading:*(*(*(a1 + 56) + 8) + 40) forFontTextStyle:*(*(*(a1 + 48) + 8) + 24)];
        }

        [*(a1 + 40) addObject:v8];

        v6 = *(*(a1 + 64) + 8);
      }

      v10 = *(v6 + 40);
      *(v6 + 40) = v5;
    }
  }
}

void __102__NSLayoutConstraint_GKBaselineLayout___gkBaselineConstraintsForViewsFontsLeadings_superview_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAAD0];
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v3 constraintWithItem:v4 attribute:1 relatedBy:0 toItem:v5 attribute:1 multiplier:1.0 constant:0.0];
  v6 = [MEMORY[0x277CCAAD0] constraintWithItem:*(a1 + 32) attribute:2 relatedBy:0 toItem:v5 attribute:2 multiplier:1.0 constant:0.0];

  [*(a1 + 40) addObject:v7];
  [*(a1 + 40) addObject:v6];
}

@end