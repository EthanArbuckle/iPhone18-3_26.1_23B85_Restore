@interface CCUIOverlayTransitionState
+ (BOOL)isSignificantStatusBarTransitionFrom:(id)from to:(id)to;
+ (BOOL)isSignificantTransitionFrom:(id)from to:(id)to;
+ (CCUIOverlayTransitionState)stateWithType:(unint64_t)type interactive:(BOOL)interactive progress:(double)progress pagingProgress:(double)pagingProgress;
+ (id)fullyDismissedState;
+ (id)fullyPresentedState;
- (double)snappedStatusBarPresentationProgress;
- (id)_initWithType:(unint64_t)type interactive:(BOOL)interactive progress:(double)progress pagingProgress:(double)pagingProgress;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation CCUIOverlayTransitionState

+ (BOOL)isSignificantStatusBarTransitionFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if ([self isSignificantTransitionFrom:fromCopy to:toCopy])
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    [fromCopy snappedStatusBarPresentationProgress];
    [toCopy snappedStatusBarPresentationProgress];
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

+ (BOOL)isSignificantTransitionFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (fromCopy && (v7 = [fromCopy isInteractive], v7 == objc_msgSend(toCopy, "isInteractive")) && (v8 = objc_msgSend(fromCopy, "type"), v8 == objc_msgSend(toCopy, "type")))
  {
    [fromCopy snappedPresentationProgress];
    [toCopy snappedPresentationProgress];
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

+ (CCUIOverlayTransitionState)stateWithType:(unint64_t)type interactive:(BOOL)interactive progress:(double)progress pagingProgress:(double)pagingProgress
{
  v6 = [[self alloc] _initWithType:type interactive:interactive progress:progress pagingProgress:pagingProgress];

  return v6;
}

- (id)_initWithType:(unint64_t)type interactive:(BOOL)interactive progress:(double)progress pagingProgress:(double)pagingProgress
{
  v13.receiver = self;
  v13.super_class = CCUIOverlayTransitionState;
  result = [(CCUIOverlayTransitionState *)&v13 init];
  if (result)
  {
    *(result + 2) = type;
    *(result + 8) = interactive;
    *(result + 3) = progress;
    *(result + 4) = pagingProgress;
    progressCopy = 1.0 - progress;
    if (type != 2)
    {
      progressCopy = progress;
    }

    v12 = fmax(fmin(progressCopy, 1.0), 0.0);
    *(result + 5) = progressCopy;
    *(result + 6) = v12;
    *(result + 7) = fmax(progressCopy, 0.0);
    *(result + 8) = floor(v12);
  }

  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CCUIOverlayTransitionState *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CCUIOverlayTransitionState *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(CCUIOverlayTransitionState *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__CCUIOverlayTransitionState_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_278381DC8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

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