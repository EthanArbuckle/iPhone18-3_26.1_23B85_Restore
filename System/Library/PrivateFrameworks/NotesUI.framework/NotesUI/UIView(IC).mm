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
  traitCollection = [self traitCollection];
  ic_hasCompactWidth = [traitCollection ic_hasCompactWidth];

  return ic_hasCompactWidth;
}

- (id)ic_windowScene
{
  window = [self window];
  windowScene = [window windowScene];

  return windowScene;
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
  ic_viewControllerManager = [v6[5] ic_viewControllerManager];
  _Block_object_dispose(&v5, 8);

  return ic_viewControllerManager;
}

- (uint64_t)ic_isInSecureWindow
{
  window = [self window];

  if (window)
  {
    window2 = [self window];
    screen = [window2 screen];
    ic_isSecure = [screen ic_isSecure];

    return ic_isSecure;
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
  result = [self ic_isInSecureWindow];
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
  traitCollection = [self traitCollection];
  ic_appearanceInfo = [traitCollection ic_appearanceInfo];

  return ic_appearanceInfo;
}

- (id)ic_window
{
  objc_opt_class();
  window = [self window];
  v3 = ICDynamicCast();
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    ic_windowScene = [self ic_windowScene];
    windows = [ic_windowScene windows];
    v5 = [windows ic_firstObjectOfClass:objc_opt_class()];
  }

  return v5;
}

- (id)ic_enclosingScrollView
{
  superview = [self superview];
  if (superview)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v1Superview = [superview superview];

      superview = v1Superview;
      if (!v1Superview)
      {
        goto LABEL_6;
      }
    }

    superview = superview;
  }

LABEL_6:

  return superview;
}

- (void)ic_applyRoundedCorners:()IC radius:
{
  layer = [self layer];
  layer2 = layer;
  if (a4 == -1)
  {
    [layer setCornerRadius:a2];
  }

  else
  {
    [layer setCornerRadius:0.0];

    layer2 = [MEMORY[0x1E69794A0] layer];
    v9 = MEMORY[0x1E69DC728];
    [self bounds];
    v10 = [v9 bezierPathWithRoundedRect:a4 byRoundingCorners:? cornerRadii:?];
    [layer2 setPath:{objc_msgSend(v10, "CGPath")}];
    layer3 = [self layer];
    [layer3 setMask:layer2];
  }

  v12 = *MEMORY[0x1E69796E8];
  layer4 = [self layer];
  [layer4 setCornerCurve:v12];

  layer5 = [self layer];
  [layer5 setMasksToBounds:1];
}

- (void)ic_applyRoundedCornersWithTopLeadingRadius:()IC topTrailingRadius:bottomLeadingRadius:bottomTrailingRadius:
{
  v10 = *MEMORY[0x1E69796E8];
  layer = [self layer];
  [layer setCornerCurve:v10];

  effectiveUserInterfaceLayoutDirection = [self effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v13 = a3;
  }

  else
  {
    v13 = a2;
  }

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    a3 = a2;
    v14 = a4;
  }

  else
  {
    v14 = a5;
  }

  if (effectiveUserInterfaceLayoutDirection != 1)
  {
    a5 = a4;
  }

  layer2 = [self layer];
  *v16 = a5;
  *&v16[1] = a5;
  *&v16[2] = v14;
  *&v16[3] = v14;
  *&v16[4] = a3;
  *&v16[5] = a3;
  *&v16[6] = v13;
  *&v16[7] = v13;
  [layer2 setCornerRadii:v16];
}

- (void)ic_applyRoundedCornersFromView:()IC
{
  v4 = a3;
  layer = [v4 layer];
  cornerCurve = [layer cornerCurve];
  layer2 = [self layer];
  [layer2 setCornerCurve:cornerCurve];

  layer3 = [v4 layer];
  v9 = layer3;
  if (layer3)
  {
    [layer3 cornerRadii];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
  }

  layer4 = [self layer];
  v14[0] = v15;
  v14[1] = v16;
  v14[2] = v17;
  v14[3] = v18;
  [layer4 setCornerRadii:v14];

  layer5 = [v4 layer];
  masksToBounds = [layer5 masksToBounds];
  layer6 = [self layer];
  [layer6 setMasksToBounds:masksToBounds];
}

- (void)ic_applyShadowWithRadius:()IC opacity:offset:shadowPathIsBounds:
{
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  cGColor = [blackColor CGColor];
  layer = [self layer];
  [layer setShadowColor:cGColor];

  layer2 = [self layer];
  [layer2 setShadowRadius:a2];

  layer3 = [self layer];
  *&a3 = a3;
  LODWORD(v18) = LODWORD(a3);
  [layer3 setShadowOpacity:v18];

  layer4 = [self layer];
  [layer4 setShadowOffset:{a4, a5}];

  layer5 = [self layer];
  [layer5 setShadowPathIsBounds:a7];
}

- (void)ic_removeShadow
{
  layer = [self layer];
  [layer setShadowColor:0];

  layer2 = [self layer];
  [layer2 setShadowOpacity:0.0];
}

- (BOOL)ic_inSidebar
{
  traitCollection = [self traitCollection];
  if ([traitCollection _splitViewControllerContext] == 1)
  {
    v3 = 1;
  }

  else
  {
    traitCollection2 = [self traitCollection];
    v3 = [traitCollection2 _splitViewControllerContext] == 2;
  }

  return v3;
}

- (uint64_t)ic_hasCompactHeight
{
  traitCollection = [self traitCollection];
  ic_hasCompactHeight = [traitCollection ic_hasCompactHeight];

  return ic_hasCompactHeight;
}

- (uint64_t)ic_hasCompactSize
{
  traitCollection = [self traitCollection];
  ic_hasCompactSize = [traitCollection ic_hasCompactSize];

  return ic_hasCompactSize;
}

- (uint64_t)ic_behavior
{
  traitCollection = [self traitCollection];
  ic_behavior = [traitCollection ic_behavior];

  return ic_behavior;
}

- (id)ic_preferredContentSizeCategory
{
  minimumContentSizeCategory = [self minimumContentSizeCategory];
  maximumContentSizeCategory = [self maximumContentSizeCategory];
  if (UIContentSizeCategoryCompareToCategory(minimumContentSizeCategory, maximumContentSizeCategory))
  {
    minimumContentSizeCategory2 = 0;
  }

  else
  {
    minimumContentSizeCategory2 = [self minimumContentSizeCategory];
  }

  return minimumContentSizeCategory2;
}

- (void)setIc_preferredContentSizeCategory:()IC
{
  v4 = a3;
  [self setMinimumContentSizeCategory:v4];
  [self setMaximumContentSizeCategory:v4];
}

- (id)ic_imageRenderedFromLayer
{
  layer = [self layer];
  [layer layoutIfNeeded];

  defaultFormat = [MEMORY[0x1E69DCA80] defaultFormat];
  v4 = objc_alloc(MEMORY[0x1E69DCA78]);
  [self bounds];
  v7 = [v4 initWithSize:defaultFormat format:{v5, v6}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__UIView_IC__ic_imageRenderedFromLayer__block_invoke;
  v10[3] = &unk_1E8468D20;
  v10[4] = self;
  v8 = [v7 imageWithActions:v10];

  return v8;
}

- (id)ic_imageRenderedFromViewHierarchyAfterScreenUpdates:()IC fallback:
{
  v6 = a4;
  layer = [self layer];
  [layer layoutIfNeeded];

  defaultFormat = [MEMORY[0x1E69DCA80] defaultFormat];
  v9 = objc_alloc(MEMORY[0x1E69DCA78]);
  [self bounds];
  v12 = [v9 initWithSize:defaultFormat format:{v10, v11}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__UIView_IC__ic_imageRenderedFromViewHierarchyAfterScreenUpdates_fallback___block_invoke;
  v16[3] = &unk_1E846B988;
  v18 = a3;
  v16[4] = self;
  v17 = v6;
  v13 = v6;
  v14 = [v12 imageWithActions:v16];

  return v14;
}

- (id)ic_imageViewRenderedFromLayer
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [self bounds];
  v3 = [v2 initWithFrame:?];
  ic_imageRenderedFromLayer = [self ic_imageRenderedFromLayer];
  [v3 setImage:ic_imageRenderedFromLayer];

  return v3;
}

- (id)ic_imageViewRenderedFromViewHierarchy
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [self bounds];
  v3 = [v2 initWithFrame:?];
  v4 = [self ic_imageRenderedFromViewHierarchyAfterScreenUpdates:0];
  [v3 setImage:v4];

  return v3;
}

- (void)ic_removeAllConstraintsForSubview:()IC
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  constraints = [self constraints];
  v7 = [constraints countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(constraints);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        firstItem = [v11 firstItem];
        v13 = firstItem;
        if (firstItem == v4)
        {
        }

        else
        {
          secondItem = [v11 secondItem];

          if (secondItem != v4)
          {
            continue;
          }
        }

        [array addObject:v11];
      }

      v8 = [constraints countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [self removeConstraints:array];
}

- (void)ic_addAnchorsToFillSuperviewWithLeadingPadding:()IC trailingPadding:topPadding:bottomPadding:usesSafeAreaLayoutGuideHorizontally:usesSafeAreaLayoutGuideVertically:
{
  v37[4] = *MEMORY[0x1E69E9840];
  [self setTranslatesAutoresizingMaskIntoConstraints:0];
  superview = [self superview];
  safeAreaLayoutGuide = [superview safeAreaLayoutGuide];
  if (a8)
  {
    v17 = safeAreaLayoutGuide;
  }

  else
  {
    v17 = superview;
  }

  v18 = safeAreaLayoutGuide;
  v36 = safeAreaLayoutGuide;
  topAnchor = [v17 topAnchor];
  v35 = topAnchor;
  bottomAnchor = [v17 bottomAnchor];
  v33 = bottomAnchor;
  if (a7)
  {
    v21 = v18;
  }

  else
  {
    v21 = superview;
  }

  leadingAnchor = [v21 leadingAnchor];
  trailingAnchor = [v21 trailingAnchor];
  v31 = MEMORY[0x1E696ACD8];
  topAnchor2 = [self topAnchor];
  v23 = [topAnchor2 constraintEqualToAnchor:topAnchor constant:a4];
  v37[0] = v23;
  bottomAnchor2 = [self bottomAnchor];
  v25 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor constant:-a5];
  v37[1] = v25;
  leadingAnchor2 = [self leadingAnchor];
  v27 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor constant:a2];
  v37[2] = v27;
  trailingAnchor2 = [self trailingAnchor];
  v29 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor constant:-a3];
  v37[3] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:4];
  [v31 activateConstraints:v30];
}

- (void)ic_addAnchorsToFillSuperviewLayoutMargins
{
  v18[4] = *MEMORY[0x1E69E9840];
  [self setTranslatesAutoresizingMaskIntoConstraints:0];
  superview = [self superview];
  layoutMarginsGuide = [superview layoutMarginsGuide];
  v12 = MEMORY[0x1E696ACD8];
  topAnchor = [self topAnchor];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v18[0] = v14;
  bottomAnchor = [self bottomAnchor];
  bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
  v4 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v18[1] = v4;
  leadingAnchor = [self leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v18[2] = v7;
  trailingAnchor = [self trailingAnchor];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v18[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
  [v12 activateConstraints:v11];
}

- (void)ic_addConstraintsToFillSuperview
{
  selfCopy = self;
  [selfCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = _NSDictionaryOfVariableBindings(&cfstr_View_0.isa, selfCopy, 0);

  v2 = MEMORY[0x1E696ACD8];
  v3 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:0 views:v6];
  [v2 activateConstraints:v3];

  v4 = MEMORY[0x1E696ACD8];
  v5 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[view]|" options:0 metrics:0 views:v6];
  [v4 activateConstraints:v5];
}

- (id)ic_renderImage
{
  layer = [self layer];
  [layer layoutIfNeeded];

  defaultFormat = [MEMORY[0x1E69DCA80] defaultFormat];
  v4 = objc_alloc(MEMORY[0x1E69DCA78]);
  [self bounds];
  v7 = [v4 initWithSize:defaultFormat format:{v5, v6}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__UIView_IC__ic_renderImage__block_invoke;
  v10[3] = &unk_1E8468D20;
  v10[4] = self;
  v8 = [v7 imageWithActions:v10];

  return v8;
}

- (id)ic_renderImageView
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [self bounds];
  v3 = [v2 initWithFrame:?];
  ic_renderImage = [self ic_renderImage];
  [v3 setImage:ic_renderImage];

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
    [v13 animateWithDuration:v11 animations:v14 completion:self];

    [MEMORY[0x1E6979518] commit];
  }
}

- (uint64_t)ic_isFrontSubview:()IC
{
  v4 = a3;
  subviews = [self subviews];
  lastObject = [subviews lastObject];

  if (lastObject)
  {
    v7 = lastObject == v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v8;
}

@end