@interface UIView(MUXCrossPlatformOperations)
+ (void)_mapsui_animateWithDuration:()MUXCrossPlatformOperations animations:completion:;
- (uint64_t)_mapsui_setCardCorner;
- (void)_mapsui_addSelectGestureRecognizerWithTarget:()MUXCrossPlatformOperations action:;
- (void)_mapsui_performImageLoadingTransitionWithAnimations:()MUXCrossPlatformOperations completion:;
@end

@implementation UIView(MUXCrossPlatformOperations)

- (void)_mapsui_addSelectGestureRecognizerWithTarget:()MUXCrossPlatformOperations action:
{
  v6 = MEMORY[0x1E69DD060];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  [v8 setAllowedPressTypes:&unk_1F450E2F0];
  [v8 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
  [v8 addTarget:v7 action:a4];

  [self addGestureRecognizer:v8];
}

- (void)_mapsui_performImageLoadingTransitionWithAnimations:()MUXCrossPlatformOperations completion:
{
  v6 = a4;
  v7 = MEMORY[0x1E69DD250];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __101__UIView_MUXCrossPlatformOperations___mapsui_performImageLoadingTransitionWithAnimations_completion___block_invoke;
  v9[3] = &unk_1E821A730;
  v10 = v6;
  v8 = v6;
  [v7 transitionWithView:self duration:5242882 options:a3 animations:v9 completion:0.3];
}

- (uint64_t)_mapsui_setCardCorner
{
  [self setClipsToBounds:1];
  v2 = MUPlacePlatterCornerRadius(self);

  return [self _setContinuousCornerRadius:v2];
}

+ (void)_mapsui_animateWithDuration:()MUXCrossPlatformOperations animations:completion:
{
  v8 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__UIView_MUXCrossPlatformOperations___mapsui_animateWithDuration_animations_completion___block_invoke;
  v10[3] = &unk_1E821B8B0;
  v12 = a2;
  v11 = v8;
  v9 = v8;
  [self animateWithDuration:v10 animations:a5 completion:a2];
}

@end