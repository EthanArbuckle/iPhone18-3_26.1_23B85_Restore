@interface CCUIOverlayTransitionState
+ (BOOL)isSignificantStatusBarTransitionFrom:(id)a3 to:(id)a4;
+ (BOOL)isSignificantTransitionFrom:(id)a3 to:(id)a4;
+ (CCUIOverlayTransitionState)stateWithType:(unint64_t)a3 interactive:(BOOL)a4 progress:(double)a5 pagingProgress:(double)a6;
+ (id)fullyDismissedState;
+ (id)fullyPresentedState;
- (double)snappedStatusBarPresentationProgress;
- (id)_initWithType:(unint64_t)a3 interactive:(BOOL)a4 progress:(double)a5 pagingProgress:(double)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation CCUIOverlayTransitionState

+ (BOOL)isSignificantStatusBarTransitionFrom:(id)a3 to:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 isSignificantTransitionFrom:v6 to:v7])
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    [v6 snappedStatusBarPresentationProgress];
    [v7 snappedStatusBarPresentationProgress];
    v8 = BSFloatEqualToFloat() ^ 1;
  }

  return v8;
}

- (double)snappedStatusBarPresentationProgress
{
  [(CCUIOverlayTransitionState *)self clampedPresentationProgress];
  v3 = v2;
  v4 = CCUIPortraitHeaderHeight();
  v5 = v4 - CCUIStatusBarHeight();
  return fmax(fmin(floor(v3 * (v5 / (CCUIStatusBarHeight() * 0.75))), 1.0), 0.0);
}

+ (BOOL)isSignificantTransitionFrom:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && (v7 = [v5 isInteractive], v7 == objc_msgSend(v6, "isInteractive")) && (v8 = objc_msgSend(v5, "type"), v8 == objc_msgSend(v6, "type")))
  {
    [v5 snappedPresentationProgress];
    [v6 snappedPresentationProgress];
    v9 = BSFloatEqualToFloat() ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

+ (id)fullyDismissedState
{
  if (fullyDismissedState_onceToken != -1)
  {
    +[CCUIOverlayTransitionState fullyDismissedState];
  }

  v3 = fullyDismissedState_transitionState;

  return v3;
}

void __49__CCUIOverlayTransitionState_fullyDismissedState__block_invoke()
{
  v0 = [CCUIOverlayTransitionState stateWithType:2 interactive:0 progress:1.0];
  v1 = fullyDismissedState_transitionState;
  fullyDismissedState_transitionState = v0;
}

+ (id)fullyPresentedState
{
  if (fullyPresentedState_onceToken != -1)
  {
    +[CCUIOverlayTransitionState fullyPresentedState];
  }

  v3 = fullyPresentedState_transitionState;

  return v3;
}

void __49__CCUIOverlayTransitionState_fullyPresentedState__block_invoke()
{
  v0 = [CCUIOverlayTransitionState stateWithType:1 interactive:0 progress:1.0];
  v1 = fullyPresentedState_transitionState;
  fullyPresentedState_transitionState = v0;
}

+ (CCUIOverlayTransitionState)stateWithType:(unint64_t)a3 interactive:(BOOL)a4 progress:(double)a5 pagingProgress:(double)a6
{
  v6 = [[a1 alloc] _initWithType:a3 interactive:a4 progress:a5 pagingProgress:a6];

  return v6;
}

- (id)_initWithType:(unint64_t)a3 interactive:(BOOL)a4 progress:(double)a5 pagingProgress:(double)a6
{
  v13.receiver = self;
  v13.super_class = CCUIOverlayTransitionState;
  result = [(CCUIOverlayTransitionState *)&v13 init];
  if (result)
  {
    *(result + 2) = a3;
    *(result + 8) = a4;
    *(result + 3) = a5;
    *(result + 4) = a6;
    v11 = 1.0 - a5;
    if (a3 != 2)
    {
      v11 = a5;
    }

    v12 = fmax(fmin(v11, 1.0), 0.0);
    *(result + 5) = v11;
    *(result + 6) = v12;
    *(result + 7) = fmax(v11, 0.0);
    *(result + 8) = floor(v12);
  }

  return result;
}

- (id)succinctDescription
{
  v2 = [(CCUIOverlayTransitionState *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CCUIOverlayTransitionState *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(CCUIOverlayTransitionState *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__CCUIOverlayTransitionState_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_278381DC8;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

id __68__CCUIOverlayTransitionState_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromCCUIOverlayTransitionType(*(*(a1 + 40) + 16));
  [v2 appendString:v3 withName:@"type"];

  v4 = [*(a1 + 32) appendFloat:@"progress" withName:*(*(a1 + 40) + 24)];
  v5 = [*(a1 + 32) appendFloat:@"pagingProgress" withName:*(*(a1 + 40) + 32)];
  v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"interactive"];
  v7 = [*(a1 + 32) appendFloat:@"presentationProgress" withName:*(*(a1 + 40) + 40)];
  v8 = [*(a1 + 32) appendFloat:@"clampedPresentationProgress" withName:*(*(a1 + 40) + 48)];
  v9 = [*(a1 + 32) appendFloat:@"nonZeroPresentationProgress" withName:*(*(a1 + 40) + 56)];
  return [*(a1 + 32) appendFloat:@"snappedPresentationProgress" withName:*(*(a1 + 40) + 64)];
}

@end