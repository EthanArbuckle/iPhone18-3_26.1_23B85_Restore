@interface OBViewUtilities
+ (BOOL)_isNavigationItemEligibleForCustomization:(id)customization usingHeaderView:(id)view;
+ (BOOL)_navigationBarTitleShouldShowForHeaderView:(id)view inScrollView:(id)scrollView;
+ (BOOL)shouldUpdateAlphaForNavigationItem:(id)item andHeaderView:(id)view inScrollView:(id)scrollView;
+ (BOOL)shouldUseAccessibilityLayout;
+ (id)pointImageOfColor:(id)color;
+ (int64_t)activeInterfaceOrientationForView:(id)view;
+ (void)_setBackButtonTitleOnNavigationItem:(id)item usingHeaderView:(id)view isHeaderViewVisible:(BOOL)visible;
+ (void)updateAlphaForNavigationItem:(id)item andHeaderView:(id)view usingNavigationTitleAlpha:(double)alpha animated:(BOOL)animated;
+ (void)updateNavigationBarWithNavigationItem:(id)item forHeaderView:(id)view inScrollView:(id)scrollView animated:(BOOL)animated;
@end

@implementation OBViewUtilities

+ (void)updateNavigationBarWithNavigationItem:(id)item forHeaderView:(id)view inScrollView:(id)scrollView animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  viewCopy = view;
  scrollViewCopy = scrollView;
  if ([self _isNavigationItemEligibleForCustomization:itemCopy usingHeaderView:viewCopy] && objc_msgSend(self, "shouldUpdateAlphaForNavigationItem:andHeaderView:inScrollView:", itemCopy, viewCopy, scrollViewCopy))
  {
    v12 = [OBViewUtilities _navigationBarTitleShouldShowForHeaderView:viewCopy inScrollView:scrollViewCopy];
    if (v12)
    {
      titleView = [itemCopy titleView];

      if (!titleView)
      {
        v14 = objc_alloc(MEMORY[0x1E69DCC10]);
        v15 = [v14 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:@"UICTFontTextStyleShortEmphasizedBody"];
        v17 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC78]];
        v18 = [v16 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v17];
        [v15 setFont:v18];

        [v15 setAdjustsFontForContentSizeCategory:0];
        headerLabel = [viewCopy headerLabel];
        text = [headerLabel text];
        [v15 setText:text];

        [itemCopy setTitle:0];
        [itemCopy setTitleView:v15];
        titleView2 = [itemCopy titleView];
        [titleView2 setAlpha:0.0];
      }
    }

    panGestureRecognizer = [scrollViewCopy panGestureRecognizer];
    [panGestureRecognizer velocityInView:scrollViewCopy];
    v24 = v23;

    v25 = v24 > -300.0 && animatedCopy;
    [self updateAlphaForNavigationItem:itemCopy andHeaderView:viewCopy usingNavigationTitleAlpha:v25 animated:v12];
  }
}

+ (void)updateAlphaForNavigationItem:(id)item andHeaderView:(id)view usingNavigationTitleAlpha:(double)alpha animated:(BOOL)animated
{
  itemCopy = item;
  viewCopy = view;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __97__OBViewUtilities_updateAlphaForNavigationItem_andHeaderView_usingNavigationTitleAlpha_animated___block_invoke;
  v26[3] = &unk_1E7C15818;
  v12 = itemCopy;
  v27 = v12;
  alphaCopy = alpha;
  v13 = viewCopy;
  v28 = v13;
  selfCopy = self;
  v14 = MEMORY[0x1B8C83960](v26);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __97__OBViewUtilities_updateAlphaForNavigationItem_andHeaderView_usingNavigationTitleAlpha_animated___block_invoke_2;
  v21 = &unk_1E7C15840;
  v15 = v12;
  animatedCopy = animated;
  v22 = v15;
  selfCopy2 = self;
  v16 = v13;
  v23 = v16;
  v17 = MEMORY[0x1B8C83960](&v18);
  if (animated)
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

+ (BOOL)shouldUpdateAlphaForNavigationItem:(id)item andHeaderView:(id)view inScrollView:(id)scrollView
{
  itemCopy = item;
  viewCopy = view;
  scrollViewCopy = scrollView;
  headerLabel = [viewCopy headerLabel];
  [headerLabel frame];
  [scrollViewCopy convertRect:viewCopy fromView:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v43.origin.x = v12;
  v43.origin.y = v14;
  v43.size.width = v16;
  v43.size.height = v18;
  MinY = CGRectGetMinY(v43);
  headerLabel2 = [viewCopy headerLabel];
  font = [headerLabel2 font];
  [font ascender];
  v23 = MinY - v22;

  v44.origin.x = v12;
  v44.origin.y = v14;
  v44.size.width = v16;
  v44.size.height = v18;
  MaxY = CGRectGetMaxY(v44);
  headerLabel3 = [viewCopy headerLabel];
  font2 = [headerLabel3 font];
  [font2 descender];
  v28 = v27;

  [scrollViewCopy safeAreaInsets];
  v30 = v29;
  [scrollViewCopy contentOffset];
  v32 = v31;

  v33 = v30 + v32;
  titleView = [itemCopy titleView];

  if (!titleView)
  {
    if (v33 <= v23)
    {
LABEL_9:
      headerLabel4 = [viewCopy headerLabel];
      [headerLabel4 alpha];
      v38 = v41 < 1.0;
      goto LABEL_10;
    }

LABEL_7:
    v38 = 1;
    goto LABEL_11;
  }

  titleView2 = [itemCopy titleView];
  [titleView2 alpha];
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
    headerLabel4 = [viewCopy headerLabel];
    [headerLabel4 alpha];
    v38 = v40 > 0.0;
LABEL_10:
  }

LABEL_11:

  return v38;
}

+ (BOOL)_navigationBarTitleShouldShowForHeaderView:(id)view inScrollView:(id)scrollView
{
  scrollViewCopy = scrollView;
  viewCopy = view;
  headerLabel = [viewCopy headerLabel];
  [headerLabel frame];
  [scrollViewCopy convertRect:viewCopy fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v26.origin.x = v9;
  v26.origin.y = v11;
  v26.size.width = v13;
  v26.size.height = v15;
  MaxY = CGRectGetMaxY(v26);
  headerLabel2 = [viewCopy headerLabel];

  font = [headerLabel2 font];
  [font descender];
  v20 = MaxY + v19;

  [scrollViewCopy safeAreaInsets];
  v22 = v21;
  [scrollViewCopy contentOffset];
  v24 = v23;

  return v22 + v24 > 0.0 && v22 + v24 >= v20;
}

+ (id)pointImageOfColor:(id)color
{
  colorCopy = color;
  v7.width = 1.0;
  v7.height = 1.0;
  UIGraphicsBeginImageContext(v7);
  [colorCopy set];

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
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  LOBYTE(mEMORY[0x1E69DC668]) = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC50]) > NSOrderedSame;
  return mEMORY[0x1E69DC668];
}

+ (int64_t)activeInterfaceOrientationForView:(id)view
{
  viewCopy = view;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if ([mEMORY[0x1E69DC668] isFrontBoard])
  {

LABEL_4:
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    activeInterfaceOrientation = [mEMORY[0x1E69DC668]2 activeInterfaceOrientation];
    goto LABEL_5;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:@"com.apple.springboard"];

  if (v7)
  {
    goto LABEL_4;
  }

  window = [viewCopy window];

  if (!window)
  {
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    windows = [mEMORY[0x1E69DC668]2 windows];
    v14 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_3];
    v15 = [windows filteredArrayUsingPredicate:v14];
    firstObject = [v15 firstObject];
    interfaceOrientation = [firstObject interfaceOrientation];

    goto LABEL_6;
  }

  mEMORY[0x1E69DC668]2 = [viewCopy window];
  activeInterfaceOrientation = [mEMORY[0x1E69DC668]2 interfaceOrientation];
LABEL_5:
  interfaceOrientation = activeInterfaceOrientation;
LABEL_6:

  return interfaceOrientation;
}

+ (void)_setBackButtonTitleOnNavigationItem:(id)item usingHeaderView:(id)view isHeaderViewVisible:(BOOL)visible
{
  itemCopy = item;
  viewCopy = view;
  v8 = viewCopy;
  if (visible)
  {
    title = 0;
  }

  else
  {
    title = [viewCopy title];
  }

  backButtonTitle = [itemCopy backButtonTitle];
  if (!backButtonTitle)
  {
    goto LABEL_6;
  }

  v11 = backButtonTitle;
  backButtonTitle2 = [itemCopy backButtonTitle];
  title2 = [v8 title];
  v14 = [backButtonTitle2 isEqualToString:title2];

  if (v14)
  {
LABEL_6:
    [itemCopy setBackButtonTitle:title];
  }

  if (+[OBFeatureFlags isNaturalUIEnabled])
  {
    [itemCopy setBackButtonDisplayMode:2];
  }
}

+ (BOOL)_isNavigationItemEligibleForCustomization:(id)customization usingHeaderView:(id)view
{
  customizationCopy = customization;
  viewCopy = view;
  title = [customizationCopy title];

  if (!title)
  {
    headerLabel = [viewCopy headerLabel];
    text = [headerLabel text];
    if (text)
    {
      v12 = text;
      headerLabel2 = [viewCopy headerLabel];
      text2 = [headerLabel2 text];
      v15 = [text2 isEqualToString:&stru_1F2CE9518];

      if ((v15 & 1) == 0)
      {
        titleView = [customizationCopy titleView];
        if (!titleView || (v17 = titleView, [customizationCopy titleView], v18 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v19 = objc_opt_isKindOfClass(), v18, v17, (v19 & 1) != 0))
        {
          titleView2 = [customizationCopy titleView];
          if (!titleView2)
          {
            goto LABEL_11;
          }

          v21 = titleView2;
          titleView3 = [customizationCopy titleView];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_11;
          }

          titleView4 = [customizationCopy titleView];
          text3 = [titleView4 text];
          headerLabel3 = [viewCopy headerLabel];
          text4 = [headerLabel3 text];

          if (text3 == text4)
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