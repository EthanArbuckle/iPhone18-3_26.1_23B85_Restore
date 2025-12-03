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
  [self setBackgroundColor:v4];
}

- (double)itk_backingScaleFactor
{
  window = [self window];
  screen = [window screen];
  [screen scale];
  v4 = v3;

  return v4;
}

- (uint64_t)setItk_transform:()ITKUtilities
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  v5[2] = a3[2];
  return [self setTransform:v5];
}

- (double)itk_safeAreaBounds
{
  [self bounds];
  v3 = v2;
  [self safeAreaInsets];
  v5 = v4;
  if (itk_isiOS())
  {
    [self itk_viewPointRatioFromWindow];
    if (v6 != 1.0 && fabs(v6 + -1.0) >= 0.000000999999997)
    {
      v5 = 0.0;
    }
  }

  v7 = v3 + v5;
  if (([self itk_isFlipped] & 1) == 0)
  {
    ITKFlipRect();
    return v8;
  }

  return v7;
}

- (uint64_t)itk_setHidden:()ITKUtilities animated:
{
  result = [self isHidden];
  if (result != a3)
  {
    if (a4)
    {
      isHidden = [self isHidden];
      v9 = 1.0;
      if (isHidden)
      {
        v9 = 0.0;
      }

      [self setItk_alpha:v9];
      if ((a3 & 1) == 0)
      {
        [self setHidden:0];
      }

      v10 = MEMORY[0x277D75D18];
      [MEMORY[0x277D75D18] inheritedAnimationDuration];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __47__UIView_ITKUtilities__itk_setHidden_animated___block_invoke;
      v13[3] = &unk_2797B0388;
      v13[4] = self;
      v14 = a3;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __47__UIView_ITKUtilities__itk_setHidden_animated___block_invoke_2;
      v11[3] = &unk_2797B03B0;
      v11[4] = self;
      v12 = a3;
      return [v10 animateWithDuration:v13 animations:v11 completion:?];
    }

    else
    {

      return [self setHidden:a3];
    }
  }

  return result;
}

- (BOOL)itk_configureToFillSuperView
{
  superview = [self superview];

  if (superview)
  {
    [self setTranslatesAutoresizingMaskIntoConstraints:1];
    [self setAutoresizingMask:18];
    superview2 = [self superview];
    [superview2 bounds];
    [self setFrame:?];
  }

  return superview != 0;
}

- (double)itk_viewLengthFromWindowLength:()ITKUtilities
{
  ITKRectWithSize();
  [self convertRect:0 fromView:?];
  return v2;
}

- (double)itk_windowLengthFromViewLength:()ITKUtilities
{
  ITKRectWithSize();
  [self convertRect:0 toView:?];
  return v2;
}

- (id)itk_autoFadeOutShapeRectLayer
{
  layer = [self layer];
  itk_autoFadeOutShapeRectLayer = [layer itk_autoFadeOutShapeRectLayer];

  return itk_autoFadeOutShapeRectLayer;
}

- (id)itk_autoFadeOutShapePointLayer
{
  layer = [self layer];
  itk_autoFadeOutShapePointLayer = [layer itk_autoFadeOutShapePointLayer];

  return itk_autoFadeOutShapePointLayer;
}

- (id)itk_autoFadeOutLayerWithQuad:()ITKUtilities fadeOutDelay:
{
  path = [a4 path];
  v7 = [self itk_autoFadeOutLayerWithPath:path fadeOutDelay:a2];

  return v7;
}

- (id)itk_autoFadeOutLayerWithPath:()ITKUtilities fadeOutDelay:
{
  v4 = MEMORY[0x277CD9F90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [self bounds];
  [v6 setFrame:?];
  itk_CGPath = [v5 itk_CGPath];

  [v6 setPath:itk_CGPath];
  itk_randomColor = [MEMORY[0x277D75348] itk_randomColor];
  [v6 setStrokeColor:{objc_msgSend(itk_randomColor, "CGColor")}];

  [v6 setFillColor:0];
  [v6 setLineWidth:2.0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v6 setBackgroundColor:{objc_msgSend(clearColor, "CGColor")}];

  layer = [self layer];
  [layer addSublayer:v6];

  v12 = v6;
  itk_dispatchMainAfterDelay();

  return v12;
}

- (id)itk_constraintsToFillView:()ITKUtilities
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  v7 = v4;
  if (v7)
  {
    [selfCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [selfCopy leadingAnchor];
    leadingAnchor2 = [v7 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v5 addObject:v10];

    trailingAnchor = [selfCopy trailingAnchor];
    trailingAnchor2 = [v7 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v5 addObject:v13];

    topAnchor = [selfCopy topAnchor];
    topAnchor2 = [v7 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v5 addObject:v16];

    bottomAnchor = [selfCopy bottomAnchor];
    bottomAnchor2 = [v7 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
  defaultFormat = [MEMORY[0x277D75568] defaultFormat];
  v11 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:defaultFormat format:{a4, a5}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__UIView_ITKUtilities__itk_renderImageFromViewBackingStoreWithSubrect___block_invoke;
  v14[3] = &unk_2797B0400;
  v14[4] = self;
  *&v14[5] = a2;
  *&v14[6] = a3;
  *&v14[7] = a4;
  *&v14[8] = a5;
  v12 = [v11 imageWithActions:v14];

  return v12;
}

- (uint64_t)itk_renderImageFromViewBackingStore
{
  [self bounds];

  return [self itk_renderImageFromViewBackingStoreWithSubrect:?];
}

- (id)itk_constraintsToFillLayoutGuide:()ITKUtilities
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  v7 = selfCopy;
  if (v4)
  {
    [selfCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [v7 leadingAnchor];
    leadingAnchor2 = [v4 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v5 addObject:v10];

    trailingAnchor = [v7 trailingAnchor];
    trailingAnchor2 = [v4 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v5 addObject:v13];

    topAnchor = [v7 topAnchor];
    topAnchor2 = [v4 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v5 addObject:v16];

    bottomAnchor = [v7 bottomAnchor];
    bottomAnchor2 = [v4 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
  traitCollection = [self traitCollection];
  [traitCollection displayScale];

  return a2;
}

- (NSString)summaryDescription
{
  [self frame];

  return NSStringFromCGRect(*&v1);
}

@end