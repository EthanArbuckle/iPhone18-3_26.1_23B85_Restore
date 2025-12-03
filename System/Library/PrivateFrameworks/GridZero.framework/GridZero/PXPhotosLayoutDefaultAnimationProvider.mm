@interface PXPhotosLayoutDefaultAnimationProvider
- (id)createAnimationForLayout:(id)layout presentedLayoutState:(id)state targetLayoutState:(id)layoutState;
@end

@implementation PXPhotosLayoutDefaultAnimationProvider

- (id)createAnimationForLayout:(id)layout presentedLayoutState:(id)state targetLayoutState:(id)layoutState
{
  layoutCopy = layout;
  stateCopy = state;
  layoutStateCopy = layoutState;
  pendingAnimations = [layoutCopy pendingAnimations];
  lastObject = [pendingAnimations lastObject];

  if (!lastObject)
  {
    superlayout = [layoutCopy superlayout];

    if (superlayout)
    {
      superlayout2 = [layoutCopy superlayout];
      lastObject = [superlayout2 createDefaultAnimationForCurrentContext];
    }

    else
    {
      lastObject = [layoutCopy createAnimation];
    }
  }

  bodyProvider = [stateCopy bodyProvider];
  [layoutStateCopy bodyProvider];

  v15 = objc_opt_class();
  delegate = [lastObject delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate2 = [lastObject delegate];
  }

  else
  {
    delegate2 = 0;
  }

  context = [delegate2 context];
  v19 = context;
  if (context)
  {
    v20 = context;
  }

  else
  {
    v20 = objc_alloc_init(PXPhotosLayoutAnimationContext);
  }

  v21 = v20;

  [(PXPhotosLayoutAnimationContext *)v21 setFromState:stateCopy];
  [(PXPhotosLayoutAnimationContext *)v21 setToState:layoutStateCopy];
  if (v15 == objc_opt_class())
  {
    v22 = delegate2;
  }

  else
  {
    v22 = [[v15 alloc] initWithContext:v21];
  }

  v23 = v22;
  [lastObject setCurve:{objc_msgSend(v22, "animationCurve")}];
  [v23 animationDuration];
  [lastObject setDuration:?];
  [lastObject setDoubleSided:{objc_msgSend(v23, "wantsDoubleSidedAnimations")}];
  [lastObject setSupportsPresentationAdjustment:{objc_msgSend(v23, "wantsPresentationAdjustment")}];
  [lastObject setSupportsSpriteTransfer:{objc_msgSend(v23, "wantsAnimationWithSpriteTransfer")}];
  [lastObject setHighFrameRateReason:{objc_msgSend(v23, "highFrameRateReason")}];
  [lastObject setDelegate:v23];

  return lastObject;
}

@end