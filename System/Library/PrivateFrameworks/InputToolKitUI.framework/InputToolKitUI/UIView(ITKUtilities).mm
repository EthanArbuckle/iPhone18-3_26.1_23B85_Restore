@interface UIView(ITKUtilities)
- (BOOL)itk_configureToFillSuperView;
- (NSString)summaryDescription;
- (double)itk_backingScaleFactor;
- (double)itk_roundRectToViewScale:()ITKUtilities;
- (double)itk_safeAreaBounds;
- (double)itk_viewLengthFromWindowLength:()ITKUtilities;
- (double)itk_windowLengthFromViewLength:()ITKUtilities;
- (id)itk_autoFadeOutLayerWithPath:()ITKUtilities fadeOutDelay:;
- (id)itk_autoFadeOutLayerWithQuad:()ITKUtilities fadeOutDelay:;
- (id)itk_autoFadeOutShapePointLayer;
- (id)itk_autoFadeOutShapeRectLayer;
- (id)itk_constraintsToFillLayoutGuide:()ITKUtilities;
- (id)itk_constraintsToFillView:()ITKUtilities;
- (id)itk_renderImageFromViewBackingStoreWithSubrect:()ITKUtilities;
- (uint64_t)itk_renderImageFromViewBackingStore;
- (uint64_t)itk_setHidden:()ITKUtilities animated:;
- (uint64_t)setItk_transform:()ITKUtilities;
- (void)setItk_backgroundColor:()ITKUtilities;
@end

@implementation UIView(ITKUtilities)

- (void)setItk_backgroundColor:()ITKUtilities
{
  v4 = [a3 copy];
  [a1 setBackgroundColor:v4];
}

- (double)itk_backingScaleFactor
{
  v1 = [a1 window];
  v2 = [v1 screen];
  [v2 scale];
  v4 = v3;

  return v4;
}

- (uint64_t)setItk_transform:()ITKUtilities
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  v5[2] = a3[2];
  return [a1 setTransform:v5];
}

- (double)itk_safeAreaBounds
{
  [a1 bounds];
  v3 = v2;
  [a1 safeAreaInsets];
  v5 = v4;
  if (itk_isiOS())
  {
    [a1 itk_viewPointRatioFromWindow];
    if (v6 != 1.0 && fabs(v6 + -1.0) >= 0.000000999999997)
    {
      v5 = 0.0;
    }
  }

  v7 = v3 + v5;
  if (([a1 itk_isFlipped] & 1) == 0)
  {
    ITKFlipRect();
    return v8;
  }

  return v7;
}

- (uint64_t)itk_setHidden:()ITKUtilities animated:
{
  result = [a1 isHidden];
  if (result != a3)
  {
    if (a4)
    {
      v8 = [a1 isHidden];
      v9 = 1.0;
      if (v8)
      {
        v9 = 0.0;
      }

      [a1 setItk_alpha:v9];
      if ((a3 & 1) == 0)
      {
        [a1 setHidden:0];
      }

      v10 = MEMORY[0x277D75D18];
      [MEMORY[0x277D75D18] inheritedAnimationDuration];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __47__UIView_ITKUtilities__itk_setHidden_animated___block_invoke;
      v13[3] = &unk_2797B0388;
      v13[4] = a1;
      v14 = a3;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __47__UIView_ITKUtilities__itk_setHidden_animated___block_invoke_2;
      v11[3] = &unk_2797B03B0;
      v11[4] = a1;
      v12 = a3;
      return [v10 animateWithDuration:v13 animations:v11 completion:?];
    }

    else
    {

      return [a1 setHidden:a3];
    }
  }

  return result;
}

- (BOOL)itk_configureToFillSuperView
{
  v2 = [a1 superview];

  if (v2)
  {
    [a1 setTranslatesAutoresizingMaskIntoConstraints:1];
    [a1 setAutoresizingMask:18];
    v3 = [a1 superview];
    [v3 bounds];
    [a1 setFrame:?];
  }

  return v2 != 0;
}

- (double)itk_viewLengthFromWindowLength:()ITKUtilities
{
  ITKRectWithSize();
  [a1 convertRect:0 fromView:?];
  return v2;
}

- (double)itk_windowLengthFromViewLength:()ITKUtilities
{
  ITKRectWithSize();
  [a1 convertRect:0 toView:?];
  return v2;
}

- (id)itk_autoFadeOutShapeRectLayer
{
  v1 = [a1 layer];
  v2 = [v1 itk_autoFadeOutShapeRectLayer];

  return v2;
}

- (id)itk_autoFadeOutShapePointLayer
{
  v1 = [a1 layer];
  v2 = [v1 itk_autoFadeOutShapePointLayer];

  return v2;
}

- (id)itk_autoFadeOutLayerWithQuad:()ITKUtilities fadeOutDelay:
{
  v6 = [a4 path];
  v7 = [a1 itk_autoFadeOutLayerWithPath:v6 fadeOutDelay:a2];

  return v7;
}

- (id)itk_autoFadeOutLayerWithPath:()ITKUtilities fadeOutDelay:
{
  v4 = MEMORY[0x277CD9F90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [a1 bounds];
  [v6 setFrame:?];
  v7 = [v5 itk_CGPath];

  [v6 setPath:v7];
  v8 = [MEMORY[0x277D75348] itk_randomColor];
  [v6 setStrokeColor:{objc_msgSend(v8, "CGColor")}];

  [v6 setFillColor:0];
  [v6 setLineWidth:2.0];
  v9 = [MEMORY[0x277D75348] clearColor];
  [v6 setBackgroundColor:{objc_msgSend(v9, "CGColor")}];

  v10 = [a1 layer];
  [v10 addSublayer:v6];

  v12 = v6;
  itk_dispatchMainAfterDelay();

  return v12;
}

- (id)itk_constraintsToFillView:()ITKUtilities
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = a1;
  v7 = v4;
  if (v7)
  {
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v6 leadingAnchor];
    v9 = [v7 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v5 addObject:v10];

    v11 = [v6 trailingAnchor];
    v12 = [v7 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v5 addObject:v13];

    v14 = [v6 topAnchor];
    v15 = [v7 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v5 addObject:v16];

    v17 = [v6 bottomAnchor];
    v18 = [v7 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v5 addObject:v19];
  }

  else
  {
    [MEMORY[0x277D1C0E8] handleFailedAssertWithCondition:"((v2) != nil)" functionName:"-[UIView(ITKUtilities) itk_constraintsToFillView:]" simulateCrash:0 showAlert:0 format:{@"Expected non-nil value for '%s'", "v2"}];
  }

  v20 = [v5 copy];

  return v20;
}

- (id)itk_renderImageFromViewBackingStoreWithSubrect:()ITKUtilities
{
  v10 = [MEMORY[0x277D75568] defaultFormat];
  v11 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v10 format:{a4, a5}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__UIView_ITKUtilities__itk_renderImageFromViewBackingStoreWithSubrect___block_invoke;
  v14[3] = &unk_2797B0400;
  v14[4] = a1;
  *&v14[5] = a2;
  *&v14[6] = a3;
  *&v14[7] = a4;
  *&v14[8] = a5;
  v12 = [v11 imageWithActions:v14];

  return v12;
}

- (uint64_t)itk_renderImageFromViewBackingStore
{
  [a1 bounds];

  return [a1 itk_renderImageFromViewBackingStoreWithSubrect:?];
}

- (id)itk_constraintsToFillLayoutGuide:()ITKUtilities
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = a1;
  v7 = v6;
  if (v4)
  {
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v7 leadingAnchor];
    v9 = [v4 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v5 addObject:v10];

    v11 = [v7 trailingAnchor];
    v12 = [v4 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [v5 addObject:v13];

    v14 = [v7 topAnchor];
    v15 = [v4 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v5 addObject:v16];

    v17 = [v7 bottomAnchor];
    v18 = [v4 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [v5 addObject:v19];
  }

  else
  {
    [MEMORY[0x277D1C0E8] handleFailedAssertWithCondition:"((layoutGuide) != nil)" functionName:"-[UIView(ITKUtilities) itk_constraintsToFillLayoutGuide:]" simulateCrash:0 showAlert:0 format:{@"Expected non-nil value for '%s'", "layoutGuide"}];
  }

  v20 = [v5 copy];

  return v20;
}

- (double)itk_roundRectToViewScale:()ITKUtilities
{
  v3 = [a1 traitCollection];
  [v3 displayScale];

  return a2;
}

- (NSString)summaryDescription
{
  [a1 frame];

  return NSStringFromCGRect(*&v1);
}

@end