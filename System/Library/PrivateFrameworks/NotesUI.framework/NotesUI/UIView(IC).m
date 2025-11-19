@interface UIView(IC)
+ (void)ic_animateWithDuration:()IC timingFunction:animations:completion:;
- (BOOL)ic_inSidebar;
- (id)ic_appearanceInfo;
- (id)ic_enclosingScrollView;
- (id)ic_imageRenderedFromLayer;
- (id)ic_imageRenderedFromViewHierarchyAfterScreenUpdates:()IC fallback:;
- (id)ic_imageViewRenderedFromLayer;
- (id)ic_imageViewRenderedFromViewHierarchy;
- (id)ic_preferredContentSizeCategory;
- (id)ic_renderImage;
- (id)ic_renderImageView;
- (id)ic_viewControllerManager;
- (id)ic_window;
- (id)ic_windowScene;
- (uint64_t)ic_behavior;
- (uint64_t)ic_crashIfWindowIsSecure;
- (uint64_t)ic_hasCompactHeight;
- (uint64_t)ic_hasCompactSize;
- (uint64_t)ic_hasCompactWidth;
- (uint64_t)ic_isFrontSubview:()IC;
- (uint64_t)ic_isInSecureWindow;
- (void)ic_addAnchorsToFillSuperviewLayoutMargins;
- (void)ic_addAnchorsToFillSuperviewWithLeadingPadding:()IC trailingPadding:topPadding:bottomPadding:usesSafeAreaLayoutGuideHorizontally:usesSafeAreaLayoutGuideVertically:;
- (void)ic_addConstraintsToFillSuperview;
- (void)ic_applyRoundedCorners:()IC radius:;
- (void)ic_applyRoundedCornersFromView:()IC;
- (void)ic_applyRoundedCornersWithTopLeadingRadius:()IC topTrailingRadius:bottomLeadingRadius:bottomTrailingRadius:;
- (void)ic_applyShadowWithRadius:()IC opacity:offset:shadowPathIsBounds:;
- (void)ic_removeAllConstraintsForSubview:()IC;
- (void)ic_removeShadow;
- (void)setIc_preferredContentSizeCategory:()IC;
@end

@implementation UIView(IC)

- (uint64_t)ic_hasCompactWidth
{
  v1 = [a1 traitCollection];
  v2 = [v1 ic_hasCompactWidth];

  return v2;
}

- (id)ic_windowScene
{
  v1 = [a1 window];
  v2 = [v1 windowScene];

  return v2;
}

- (id)ic_viewControllerManager
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__39;
  v9 = __Block_byref_object_dispose__39;
  v10 = 0;
  v3 = MEMORY[0x1E69E9820];
  performBlockOnMainThreadAndWait();
  v1 = [v6[5] ic_viewControllerManager];
  _Block_object_dispose(&v5, 8);

  return v1;
}

- (uint64_t)ic_isInSecureWindow
{
  v2 = [a1 window];

  if (v2)
  {
    v3 = [a1 window];
    v4 = [v3 screen];
    v5 = [v4 ic_isSecure];

    return v5;
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(UIView(IC) *)v7 ic_isInSecureWindow];
    }

    return 1;
  }
}

- (uint64_t)ic_crashIfWindowIsSecure
{
  result = [a1 ic_isInSecureWindow];
  if (result)
  {
    v2 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(UIView(IC) *)v2 ic_crashIfWindowIsSecure];
    }

    return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"Attempted to show notes during unsecure session."];
  }

  return result;
}

- (id)ic_appearanceInfo
{
  v1 = [a1 traitCollection];
  v2 = [v1 ic_appearanceInfo];

  return v2;
}

- (id)ic_window
{
  objc_opt_class();
  v2 = [a1 window];
  v3 = ICDynamicCast();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [a1 ic_windowScene];
    v7 = [v6 windows];
    v5 = [v7 ic_firstObjectOfClass:objc_opt_class()];
  }

  return v5;
}

- (id)ic_enclosingScrollView
{
  v1 = [a1 superview];
  if (v1)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2 = [v1 superview];

      v1 = v2;
      if (!v2)
      {
        goto LABEL_6;
      }
    }

    v1 = v1;
  }

LABEL_6:

  return v1;
}

- (void)ic_applyRoundedCorners:()IC radius:
{
  v7 = [a1 layer];
  v8 = v7;
  if (a4 == -1)
  {
    [v7 setCornerRadius:a2];
  }

  else
  {
    [v7 setCornerRadius:0.0];

    v8 = [MEMORY[0x1E69794A0] layer];
    v9 = MEMORY[0x1E69DC728];
    [a1 bounds];
    v10 = [v9 bezierPathWithRoundedRect:a4 byRoundingCorners:? cornerRadii:?];
    [v8 setPath:{objc_msgSend(v10, "CGPath")}];
    v11 = [a1 layer];
    [v11 setMask:v8];
  }

  v12 = *MEMORY[0x1E69796E8];
  v13 = [a1 layer];
  [v13 setCornerCurve:v12];

  v14 = [a1 layer];
  [v14 setMasksToBounds:1];
}

- (void)ic_applyRoundedCornersWithTopLeadingRadius:()IC topTrailingRadius:bottomLeadingRadius:bottomTrailingRadius:
{
  v10 = *MEMORY[0x1E69796E8];
  v11 = [a1 layer];
  [v11 setCornerCurve:v10];

  v12 = [a1 effectiveUserInterfaceLayoutDirection];
  if (v12 == 1)
  {
    v13 = a3;
  }

  else
  {
    v13 = a2;
  }

  if (v12 == 1)
  {
    a3 = a2;
    v14 = a4;
  }

  else
  {
    v14 = a5;
  }

  if (v12 != 1)
  {
    a5 = a4;
  }

  v15 = [a1 layer];
  *v16 = a5;
  *&v16[1] = a5;
  *&v16[2] = v14;
  *&v16[3] = v14;
  *&v16[4] = a3;
  *&v16[5] = a3;
  *&v16[6] = v13;
  *&v16[7] = v13;
  [v15 setCornerRadii:v16];
}

- (void)ic_applyRoundedCornersFromView:()IC
{
  v4 = a3;
  v5 = [v4 layer];
  v6 = [v5 cornerCurve];
  v7 = [a1 layer];
  [v7 setCornerCurve:v6];

  v8 = [v4 layer];
  v9 = v8;
  if (v8)
  {
    [v8 cornerRadii];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
  }

  v10 = [a1 layer];
  v14[0] = v15;
  v14[1] = v16;
  v14[2] = v17;
  v14[3] = v18;
  [v10 setCornerRadii:v14];

  v11 = [v4 layer];
  v12 = [v11 masksToBounds];
  v13 = [a1 layer];
  [v13 setMasksToBounds:v12];
}

- (void)ic_applyShadowWithRadius:()IC opacity:offset:shadowPathIsBounds:
{
  v13 = [MEMORY[0x1E69DC888] blackColor];
  v14 = [v13 CGColor];
  v15 = [a1 layer];
  [v15 setShadowColor:v14];

  v16 = [a1 layer];
  [v16 setShadowRadius:a2];

  v17 = [a1 layer];
  *&a3 = a3;
  LODWORD(v18) = LODWORD(a3);
  [v17 setShadowOpacity:v18];

  v19 = [a1 layer];
  [v19 setShadowOffset:{a4, a5}];

  v20 = [a1 layer];
  [v20 setShadowPathIsBounds:a7];
}

- (void)ic_removeShadow
{
  v2 = [a1 layer];
  [v2 setShadowColor:0];

  v3 = [a1 layer];
  [v3 setShadowOpacity:0.0];
}

- (BOOL)ic_inSidebar
{
  v2 = [a1 traitCollection];
  if ([v2 _splitViewControllerContext] == 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 traitCollection];
    v3 = [v4 _splitViewControllerContext] == 2;
  }

  return v3;
}

- (uint64_t)ic_hasCompactHeight
{
  v1 = [a1 traitCollection];
  v2 = [v1 ic_hasCompactHeight];

  return v2;
}

- (uint64_t)ic_hasCompactSize
{
  v1 = [a1 traitCollection];
  v2 = [v1 ic_hasCompactSize];

  return v2;
}

- (uint64_t)ic_behavior
{
  v1 = [a1 traitCollection];
  v2 = [v1 ic_behavior];

  return v2;
}

- (id)ic_preferredContentSizeCategory
{
  v2 = [a1 minimumContentSizeCategory];
  v3 = [a1 maximumContentSizeCategory];
  if (UIContentSizeCategoryCompareToCategory(v2, v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = [a1 minimumContentSizeCategory];
  }

  return v4;
}

- (void)setIc_preferredContentSizeCategory:()IC
{
  v4 = a3;
  [a1 setMinimumContentSizeCategory:v4];
  [a1 setMaximumContentSizeCategory:v4];
}

- (id)ic_imageRenderedFromLayer
{
  v2 = [a1 layer];
  [v2 layoutIfNeeded];

  v3 = [MEMORY[0x1E69DCA80] defaultFormat];
  v4 = objc_alloc(MEMORY[0x1E69DCA78]);
  [a1 bounds];
  v7 = [v4 initWithSize:v3 format:{v5, v6}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__UIView_IC__ic_imageRenderedFromLayer__block_invoke;
  v10[3] = &unk_1E8468D20;
  v10[4] = a1;
  v8 = [v7 imageWithActions:v10];

  return v8;
}

- (id)ic_imageRenderedFromViewHierarchyAfterScreenUpdates:()IC fallback:
{
  v6 = a4;
  v7 = [a1 layer];
  [v7 layoutIfNeeded];

  v8 = [MEMORY[0x1E69DCA80] defaultFormat];
  v9 = objc_alloc(MEMORY[0x1E69DCA78]);
  [a1 bounds];
  v12 = [v9 initWithSize:v8 format:{v10, v11}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__UIView_IC__ic_imageRenderedFromViewHierarchyAfterScreenUpdates_fallback___block_invoke;
  v16[3] = &unk_1E846B988;
  v18 = a3;
  v16[4] = a1;
  v17 = v6;
  v13 = v6;
  v14 = [v12 imageWithActions:v16];

  return v14;
}

- (id)ic_imageViewRenderedFromLayer
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [a1 bounds];
  v3 = [v2 initWithFrame:?];
  v4 = [a1 ic_imageRenderedFromLayer];
  [v3 setImage:v4];

  return v3;
}

- (id)ic_imageViewRenderedFromViewHierarchy
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [a1 bounds];
  v3 = [v2 initWithFrame:?];
  v4 = [a1 ic_imageRenderedFromViewHierarchyAfterScreenUpdates:0];
  [v3 setImage:v4];

  return v3;
}

- (void)ic_removeAllConstraintsForSubview:()IC
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a1 constraints];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 firstItem];
        v13 = v12;
        if (v12 == v4)
        {
        }

        else
        {
          v14 = [v11 secondItem];

          if (v14 != v4)
          {
            continue;
          }
        }

        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [a1 removeConstraints:v5];
}

- (void)ic_addAnchorsToFillSuperviewWithLeadingPadding:()IC trailingPadding:topPadding:bottomPadding:usesSafeAreaLayoutGuideHorizontally:usesSafeAreaLayoutGuideVertically:
{
  v37[4] = *MEMORY[0x1E69E9840];
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [a1 superview];
  v16 = [v15 safeAreaLayoutGuide];
  if (a8)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = v16;
  v36 = v16;
  v19 = [v17 topAnchor];
  v35 = v19;
  v20 = [v17 bottomAnchor];
  v33 = v20;
  if (a7)
  {
    v21 = v18;
  }

  else
  {
    v21 = v15;
  }

  v32 = [v21 leadingAnchor];
  v22 = [v21 trailingAnchor];
  v31 = MEMORY[0x1E696ACD8];
  v34 = [a1 topAnchor];
  v23 = [v34 constraintEqualToAnchor:v19 constant:a4];
  v37[0] = v23;
  v24 = [a1 bottomAnchor];
  v25 = [v24 constraintEqualToAnchor:v20 constant:-a5];
  v37[1] = v25;
  v26 = [a1 leadingAnchor];
  v27 = [v26 constraintEqualToAnchor:v32 constant:a2];
  v37[2] = v27;
  v28 = [a1 trailingAnchor];
  v29 = [v28 constraintEqualToAnchor:v22 constant:-a3];
  v37[3] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  [v31 activateConstraints:v30];
}

- (void)ic_addAnchorsToFillSuperviewLayoutMargins
{
  v18[4] = *MEMORY[0x1E69E9840];
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [a1 superview];
  v2 = [v17 layoutMarginsGuide];
  v12 = MEMORY[0x1E696ACD8];
  v16 = [a1 topAnchor];
  v15 = [v2 topAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v18[0] = v14;
  v13 = [a1 bottomAnchor];
  v3 = [v2 bottomAnchor];
  v4 = [v13 constraintEqualToAnchor:v3];
  v18[1] = v4;
  v5 = [a1 leadingAnchor];
  v6 = [v2 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v18[2] = v7;
  v8 = [a1 trailingAnchor];
  v9 = [v2 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v18[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
  [v12 activateConstraints:v11];
}

- (void)ic_addConstraintsToFillSuperview
{
  v1 = a1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = _NSDictionaryOfVariableBindings(&cfstr_View_0.isa, v1, 0);

  v2 = MEMORY[0x1E696ACD8];
  v3 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:0 views:v6];
  [v2 activateConstraints:v3];

  v4 = MEMORY[0x1E696ACD8];
  v5 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v6];
  [v4 activateConstraints:v5];
}

- (id)ic_renderImage
{
  v2 = [a1 layer];
  [v2 layoutIfNeeded];

  v3 = [MEMORY[0x1E69DCA80] defaultFormat];
  v4 = objc_alloc(MEMORY[0x1E69DCA78]);
  [a1 bounds];
  v7 = [v4 initWithSize:v3 format:{v5, v6}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__UIView_IC__ic_renderImage__block_invoke;
  v10[3] = &unk_1E8468D20;
  v10[4] = a1;
  v8 = [v7 imageWithActions:v10];

  return v8;
}

- (id)ic_renderImageView
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [a1 bounds];
  v3 = [v2 initWithFrame:?];
  v4 = [a1 ic_renderImage];
  [v3 setImage:v4];

  return v3;
}

+ (void)ic_animateWithDuration:()IC timingFunction:animations:completion:
{
  v9 = a6;
  if (a5)
  {
    v10 = MEMORY[0x1E6979518];
    v11 = a5;
    v12 = a4;
    [v10 begin];
    [MEMORY[0x1E6979518] setAnimationTimingFunction:v12];

    v13 = MEMORY[0x1E69DD250];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__UIView_IC__ic_animateWithDuration_timingFunction_animations_completion___block_invoke;
    v14[3] = &unk_1E8469BB0;
    v15 = v9;
    [v13 animateWithDuration:v11 animations:v14 completion:a1];

    [MEMORY[0x1E6979518] commit];
  }
}

- (uint64_t)ic_isFrontSubview:()IC
{
  v4 = a3;
  v5 = [a1 subviews];
  v6 = [v5 lastObject];

  if (v6)
  {
    v7 = v6 == v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v8;
}

@end