@interface OBViewUtilities
+ (BOOL)_isNavigationItemEligibleForCustomization:(id)a3 usingHeaderView:(id)a4;
+ (BOOL)_navigationBarTitleShouldShowForHeaderView:(id)a3 inScrollView:(id)a4;
+ (BOOL)shouldUpdateAlphaForNavigationItem:(id)a3 andHeaderView:(id)a4 inScrollView:(id)a5;
+ (BOOL)shouldUseAccessibilityLayout;
+ (id)pointImageOfColor:(id)a3;
+ (int64_t)activeInterfaceOrientationForView:(id)a3;
+ (void)_setBackButtonTitleOnNavigationItem:(id)a3 usingHeaderView:(id)a4 isHeaderViewVisible:(BOOL)a5;
+ (void)updateAlphaForNavigationItem:(id)a3 andHeaderView:(id)a4 usingNavigationTitleAlpha:(double)a5 animated:(BOOL)a6;
+ (void)updateNavigationBarWithNavigationItem:(id)a3 forHeaderView:(id)a4 inScrollView:(id)a5 animated:(BOOL)a6;
@end

@implementation OBViewUtilities

+ (void)updateNavigationBarWithNavigationItem:(id)a3 forHeaderView:(id)a4 inScrollView:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v26 = a3;
  v10 = a4;
  v11 = a5;
  if ([a1 _isNavigationItemEligibleForCustomization:v26 usingHeaderView:v10] && objc_msgSend(a1, "shouldUpdateAlphaForNavigationItem:andHeaderView:inScrollView:", v26, v10, v11))
  {
    v12 = [OBViewUtilities _navigationBarTitleShouldShowForHeaderView:v10 inScrollView:v11];
    if (v12)
    {
      v13 = [v26 titleView];

      if (!v13)
      {
        v14 = objc_alloc(MEMORY[0x1E69DCC10]);
        v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:@"UICTFontTextStyleShortEmphasizedBody"];
        v17 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC78]];
        v18 = [v16 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v17];
        [v15 setFont:v18];

        [v15 setAdjustsFontForContentSizeCategory:0];
        v19 = [v10 headerLabel];
        v20 = [v19 text];
        [v15 setText:v20];

        [v26 setTitle:0];
        [v26 setTitleView:v15];
        v21 = [v26 titleView];
        [v21 setAlpha:0.0];
      }
    }

    v22 = [v11 panGestureRecognizer];
    [v22 velocityInView:v11];
    v24 = v23;

    v25 = v24 > -300.0 && v6;
    [a1 updateAlphaForNavigationItem:v26 andHeaderView:v10 usingNavigationTitleAlpha:v25 animated:v12];
  }
}

+ (void)updateAlphaForNavigationItem:(id)a3 andHeaderView:(id)a4 usingNavigationTitleAlpha:(double)a5 animated:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __97__OBViewUtilities_updateAlphaForNavigationItem_andHeaderView_usingNavigationTitleAlpha_animated___block_invoke;
  v26[3] = &unk_1E7C15818;
  v12 = v10;
  v27 = v12;
  v29 = a5;
  v13 = v11;
  v28 = v13;
  v30 = a1;
  v14 = MEMORY[0x1B8C83960](v26);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __97__OBViewUtilities_updateAlphaForNavigationItem_andHeaderView_usingNavigationTitleAlpha_animated___block_invoke_2;
  v21 = &unk_1E7C15840;
  v15 = v12;
  v25 = a6;
  v22 = v15;
  v24 = a1;
  v16 = v13;
  v23 = v16;
  v17 = MEMORY[0x1B8C83960](&v18);
  if (a6)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v14 options:v17 animations:0.25 completion:{0.0, v18, v19, v20, v21, v22}];
  }

  else
  {
    v14[2](v14);
    v17[2](v17, 1);
  }
}

void __97__OBViewUtilities_updateAlphaForNavigationItem_andHeaderView_usingNavigationTitleAlpha_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) titleView];
  [v3 setAlpha:v2];

  v4 = 1.0 - *(a1 + 48);
  v5 = [*(a1 + 40) headerLabel];
  [v5 setAlpha:v4];

  if (*(a1 + 48) != 0.0)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);

    [v6 _setBackButtonTitleOnNavigationItem:v7 usingHeaderView:v8 isHeaderViewVisible:0];
  }
}

void __97__OBViewUtilities_updateAlphaForNavigationItem_andHeaderView_usingNavigationTitleAlpha_animated___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) titleView];
    if (v3)
    {
      v4 = v3;
      v5 = [*(a1 + 32) titleView];
      [v5 alpha];
      v7 = v6;

      if (v7 == 0.0)
      {
        if (*(a1 + 56) != 1)
        {
          goto LABEL_7;
        }

        v8 = [*(a1 + 32) titleView];
        v9 = [v8 layer];
        v10 = [v9 animationKeys];
        v11 = [v10 count];

        if (!v11 || (*(a1 + 56) & 1) == 0)
        {
LABEL_7:
          [*(a1 + 32) setTitleView:0];
        }

        v13 = *(a1 + 40);
        v12 = *(a1 + 48);
        v14 = *(a1 + 32);

        [v12 _setBackButtonTitleOnNavigationItem:v14 usingHeaderView:v13 isHeaderViewVisible:1];
      }
    }
  }
}

+ (BOOL)shouldUpdateAlphaForNavigationItem:(id)a3 andHeaderView:(id)a4 inScrollView:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 headerLabel];
  [v10 frame];
  [v9 convertRect:v8 fromView:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v43.origin.x = v12;
  v43.origin.y = v14;
  v43.size.width = v16;
  v43.size.height = v18;
  MinY = CGRectGetMinY(v43);
  v20 = [v8 headerLabel];
  v21 = [v20 font];
  [v21 ascender];
  v23 = MinY - v22;

  v44.origin.x = v12;
  v44.origin.y = v14;
  v44.size.width = v16;
  v44.size.height = v18;
  MaxY = CGRectGetMaxY(v44);
  v25 = [v8 headerLabel];
  v26 = [v25 font];
  [v26 descender];
  v28 = v27;

  [v9 safeAreaInsets];
  v30 = v29;
  [v9 contentOffset];
  v32 = v31;

  v33 = v30 + v32;
  v34 = [v7 titleView];

  if (!v34)
  {
    if (v33 <= v23)
    {
LABEL_9:
      v39 = [v8 headerLabel];
      [v39 alpha];
      v38 = v41 < 1.0;
      goto LABEL_10;
    }

LABEL_7:
    v38 = 1;
    goto LABEL_11;
  }

  v35 = [v7 titleView];
  [v35 alpha];
  v37 = v36;

  if (v33 <= v23)
  {
    if (v37 <= 0.0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v38 = 1;
  if (v33 >= MaxY + v28 && v37 >= 1.0)
  {
    v39 = [v8 headerLabel];
    [v39 alpha];
    v38 = v40 > 0.0;
LABEL_10:
  }

LABEL_11:

  return v38;
}

+ (BOOL)_navigationBarTitleShouldShowForHeaderView:(id)a3 inScrollView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 headerLabel];
  [v7 frame];
  [v5 convertRect:v6 fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v26.origin.x = v9;
  v26.origin.y = v11;
  v26.size.width = v13;
  v26.size.height = v15;
  MaxY = CGRectGetMaxY(v26);
  v17 = [v6 headerLabel];

  v18 = [v17 font];
  [v18 descender];
  v20 = MaxY + v19;

  [v5 safeAreaInsets];
  v22 = v21;
  [v5 contentOffset];
  v24 = v23;

  return v22 + v24 > 0.0 && v22 + v24 >= v20;
}

+ (id)pointImageOfColor:(id)a3
{
  v3 = a3;
  v7.width = 1.0;
  v7.height = 1.0;
  UIGraphicsBeginImageContext(v7);
  [v3 set];

  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 1.0;
  v8.size.height = 1.0;
  UIRectFill(v8);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
}

+ (BOOL)shouldUseAccessibilityLayout
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC50]) > NSOrderedSame;
  return v2;
}

+ (int64_t)activeInterfaceOrientationForView:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  if ([v4 isFrontBoard])
  {

LABEL_4:
    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    v9 = [v8 activeInterfaceOrientation];
    goto LABEL_5;
  }

  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.springboard"];

  if (v7)
  {
    goto LABEL_4;
  }

  v12 = [v3 window];

  if (!v12)
  {
    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    v13 = [v8 windows];
    v14 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_3];
    v15 = [v13 filteredArrayUsingPredicate:v14];
    v16 = [v15 firstObject];
    v10 = [v16 interfaceOrientation];

    goto LABEL_6;
  }

  v8 = [v3 window];
  v9 = [v8 interfaceOrientation];
LABEL_5:
  v10 = v9;
LABEL_6:

  return v10;
}

+ (void)_setBackButtonTitleOnNavigationItem:(id)a3 usingHeaderView:(id)a4 isHeaderViewVisible:(BOOL)a5
{
  v15 = a3;
  v7 = a4;
  v8 = v7;
  if (a5)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v7 title];
  }

  v10 = [v15 backButtonTitle];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  v12 = [v15 backButtonTitle];
  v13 = [v8 title];
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
LABEL_6:
    [v15 setBackButtonTitle:v9];
  }

  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    [v15 setBackButtonDisplayMode:2];
  }
}

+ (BOOL)_isNavigationItemEligibleForCustomization:(id)a3 usingHeaderView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 title];

  if (!v7)
  {
    v10 = [v6 headerLabel];
    v11 = [v10 text];
    if (v11)
    {
      v12 = v11;
      v13 = [v6 headerLabel];
      v14 = [v13 text];
      v15 = [v14 isEqualToString:&stru_1F2CE9518];

      if ((v15 & 1) == 0)
      {
        v16 = [v5 titleView];
        if (!v16 || (v17 = v16, [v5 titleView], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v19 = objc_opt_isKindOfClass(), v18, v17, (v19 & 1) != 0))
        {
          v20 = [v5 titleView];
          if (!v20)
          {
            goto LABEL_11;
          }

          v21 = v20;
          v22 = [v5 titleView];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_11;
          }

          v24 = [v5 titleView];
          v25 = [v24 text];
          v26 = [v6 headerLabel];
          v27 = [v26 text];

          if (v25 == v27)
          {
LABEL_11:
            v8 = 1;
            goto LABEL_3;
          }
        }
      }
    }

    else
    {
    }
  }

  v8 = 0;
LABEL_3:

  return v8;
}

@end