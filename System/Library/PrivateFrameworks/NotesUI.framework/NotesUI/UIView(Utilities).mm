@interface UIView(Utilities)
+ (void)ic_animateWithDuration:()Utilities animations:completion:;
+ (void)ic_performWithoutAnimationOnMainThread:()Utilities;
- (double)ic_backingScaleFactor;
@end

@implementation UIView(Utilities)

- (double)ic_backingScaleFactor
{
  window = [self window];
  screen = [window screen];
  v3 = screen;
  if (screen)
  {
    mainScreen = screen;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v5 = mainScreen;

  [v5 scale];
  if (v6 >= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  return v7;
}

+ (void)ic_performWithoutAnimationOnMainThread:()Utilities
{
  v4 = a3;
  v3 = v4;
  performBlockOnMainThread();
}

+ (void)ic_animateWithDuration:()Utilities animations:completion:
{
  v7 = a5;
  v8 = MEMORY[0x1E69DD250];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__UIView_Utilities__ic_animateWithDuration_animations_completion___block_invoke;
  v10[3] = &unk_1E8469BB0;
  v11 = v7;
  v9 = v7;
  [v8 animateWithDuration:a4 animations:v10 completion:self];
}

@end