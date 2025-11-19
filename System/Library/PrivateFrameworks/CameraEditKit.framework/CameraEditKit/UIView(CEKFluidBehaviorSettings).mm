@interface UIView(CEKFluidBehaviorSettings)
+ (void)cek_animateWithSettings:()CEKFluidBehaviorSettings interactive:animations:completion:;
+ (void)cek_animateWithSettings:()CEKFluidBehaviorSettings mode:animations:completion:;
@end

@implementation UIView(CEKFluidBehaviorSettings)

+ (void)cek_animateWithSettings:()CEKFluidBehaviorSettings interactive:animations:completion:
{
  v15 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [v15 behaviorType];
  if ((v11 - 1) >= 2)
  {
    if (v11)
    {
      goto LABEL_6;
    }

    v14 = MEMORY[0x1E69DD250];
    v13 = _CEKModifyFrameRateForAnimationBlockFromSettings(v9, v15);
    [v14 _animateWithFrictionBounceAnimations:v13 completion:v10];
  }

  else
  {
    v12 = MEMORY[0x1E69DD250];
    v13 = _CEKModifyFrameRateForAnimationBlockFromSettings(v9, v15);
    [v12 _animateUsingSpringBehavior:v15 tracking:a4 animations:v13 completion:v10];
  }

LABEL_6:
}

+ (void)cek_animateWithSettings:()CEKFluidBehaviorSettings mode:animations:completion:
{
  v17 = a3;
  v10 = a5;
  v11 = a6;
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      v10[2](v10);
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_15;
      }

      [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v10];
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    v11[2](v11, 1, 0);
    goto LABEL_15;
  }

  if (a4 == 3)
  {
    v12 = a1;
    v13 = v17;
    v14 = 0;
LABEL_11:
    [v12 cek_animateWithSettings:v13 interactive:v14 animations:v10 completion:v11];
    goto LABEL_15;
  }

  if (a4 != 4)
  {
    if (a4 != 5)
    {
      goto LABEL_15;
    }

    v12 = a1;
    v13 = v17;
    v14 = 1;
    goto LABEL_11;
  }

  v15 = MEMORY[0x1E69DD250];
  v16 = _CEKModifyFrameRateForAnimationBlockFromSettings(v10, v17);
  [v15 _animateByRetargetingAnimations:v16 completion:v11];

LABEL_15:
}

@end