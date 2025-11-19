@interface UIView(SafariGraphicsUtilities)
+ (uint64_t)sf_animate:()SafariGraphicsUtilities usingDefaultMotionWithDelay:options:animations:completion:;
+ (uint64_t)sf_animate:()SafariGraphicsUtilities usingDefaultMotionWithOptions:animations:completion:;
+ (void)sf_animate:()SafariGraphicsUtilities usingDefaultDampedSpringWithDelay:initialSpringVelocity:options:animations:completion:;
+ (void)sf_animate:()SafariGraphicsUtilities usingDefaultDampedSpringWithDelay:initialSpringVelocity:options:preferredFrameRateRange:animations:completion:;
+ (void)sf_animate:()SafariGraphicsUtilities usingDefaultTimingWithOptions:animations:completion:;
+ (void)sf_animate:()SafariGraphicsUtilities usingDefaultTimingWithOptions:preferredFrameRateRange:animations:completion:;
+ (void)sf_animate:()SafariGraphicsUtilities withDuration:delay:options:animations:completion:;
+ (void)sf_animated:()SafariGraphicsUtilities usingFastSpringWithDelay:options:animations:completion:;
- (double)ss_untransformedFrame;
- (uint64_t)ss_setUntransformedFrame:()SafariGraphicsUtilities;
@end

@implementation UIView(SafariGraphicsUtilities)

- (double)ss_untransformedFrame
{
  [a1 bounds];
  v3 = v2;
  v4 = [a1 layer];
  [v4 anchorPoint];
  v6 = v5;

  [a1 center];
  return v7 - v6 * v3;
}

- (uint64_t)ss_setUntransformedFrame:()SafariGraphicsUtilities
{
  v10 = fabs(a5);
  if (a5 >= 0.0)
  {
    v11 = a5;
  }

  else
  {
    v11 = v10;
  }

  v12 = fabs(a4);
  if (a4 >= 0.0)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  [a1 bounds];
  [a1 setBounds:?];
  v14 = [a1 layer];
  [v14 anchorPoint];
  v16 = v15;
  v18 = v17;
  if (a4 >= 0.0)
  {
    v19 = a2;
  }

  else
  {
    v19 = a2 + a4;
  }

  if (a5 >= 0.0)
  {
    v20 = a3;
  }

  else
  {
    v20 = a3 + a5;
  }

  return [a1 setCenter:{v19 + v16 * v13, v20 + v18 * v11}];
}

+ (void)sf_animate:()SafariGraphicsUtilities usingDefaultTimingWithOptions:animations:completion:
{
  v11 = a5;
  v10 = a6;
  if (a3)
  {
    [a1 _animateUsingDefaultTimingWithOptions:a4 animations:v11 completion:v10];
  }

  else
  {
    if (v11)
    {
      v11[2]();
    }

    if (v10)
    {
      v10[2](v10, 1);
    }
  }
}

+ (uint64_t)sf_animate:()SafariGraphicsUtilities usingDefaultMotionWithOptions:animations:completion:
{
  LODWORD(a3) = *MEMORY[0x1E69792B8];
  LODWORD(a4) = *(MEMORY[0x1E69792B8] + 4);
  LODWORD(a5) = *(MEMORY[0x1E69792B8] + 8);
  return [a1 sf_animate:a3 usingDefaultTimingWithOptions:a4 preferredFrameRateRange:a5 animations:? completion:?];
}

+ (uint64_t)sf_animate:()SafariGraphicsUtilities usingDefaultMotionWithDelay:options:animations:completion:
{
  LODWORD(a5) = *MEMORY[0x1E69792B8];
  LODWORD(a6) = *(MEMORY[0x1E69792B8] + 4);
  LODWORD(a7) = *(MEMORY[0x1E69792B8] + 8);
  return [a1 sf_animate:a3 usingDefaultDampedSpringWithDelay:0.0 initialSpringVelocity:a5 options:a6 preferredFrameRateRange:a7 animations:? completion:?];
}

+ (void)sf_animate:()SafariGraphicsUtilities withDuration:delay:options:animations:completion:
{
  v15 = a7;
  v14 = a8;
  if (a5)
  {
    [a1 animateWithDuration:a6 delay:v15 options:v14 animations:a2 completion:a3];
  }

  else
  {
    if (v15)
    {
      v15[2]();
    }

    if (v14)
    {
      v14[2](v14, 1);
    }
  }
}

+ (void)sf_animate:()SafariGraphicsUtilities usingDefaultDampedSpringWithDelay:initialSpringVelocity:options:animations:completion:
{
  v15 = a7;
  v14 = a8;
  if (a5)
  {
    [a1 _animateUsingDefaultDampedSpringWithDelay:a6 initialSpringVelocity:v15 options:v14 animations:a2 completion:a3];
  }

  else
  {
    if (v15)
    {
      v15[2]();
    }

    if (v14)
    {
      v14[2](v14, 1);
    }
  }
}

+ (void)sf_animated:()SafariGraphicsUtilities usingFastSpringWithDelay:options:animations:completion:
{
  v13 = a6;
  v12 = a7;
  if (a4)
  {
    [a1 _animateUsingSpringWithDuration:a5 delay:v13 options:v12 mass:0.25 stiffness:a2 damping:3.0 initialVelocity:4000.0 animations:500.0 completion:0.0];
  }

  else
  {
    if (v13)
    {
      v13[2]();
    }

    if (v12)
    {
      v12[2](v12, 1);
    }
  }
}

+ (void)sf_animate:()SafariGraphicsUtilities usingDefaultTimingWithOptions:preferredFrameRateRange:animations:completion:
{
  v16 = a8;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __122__UIView_SafariGraphicsUtilities__sf_animate_usingDefaultTimingWithOptions_preferredFrameRateRange_animations_completion___block_invoke;
  v18[3] = &unk_1E721C658;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v19 = v16;
  v20 = a1;
  v17 = v16;
  [a1 sf_animate:a6 usingDefaultTimingWithOptions:a7 animations:v18 completion:a9];
}

+ (void)sf_animate:()SafariGraphicsUtilities usingDefaultDampedSpringWithDelay:initialSpringVelocity:options:preferredFrameRateRange:animations:completion:
{
  v20 = a10;
  v21 = a11;
  if (a8)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __156__UIView_SafariGraphicsUtilities__sf_animate_usingDefaultDampedSpringWithDelay_initialSpringVelocity_options_preferredFrameRateRange_animations_completion___block_invoke;
    v22[3] = &unk_1E721C658;
    v24 = a1;
    v25 = a4;
    v26 = a5;
    v27 = a6;
    v23 = v20;
    [a1 _animateUsingDefaultDampedSpringWithDelay:a9 initialSpringVelocity:v22 options:v21 animations:a2 completion:a3];
  }

  else
  {
    if (v20)
    {
      v20[2](v20);
    }

    if (v21)
    {
      v21[2](v21, 1);
    }
  }
}

@end