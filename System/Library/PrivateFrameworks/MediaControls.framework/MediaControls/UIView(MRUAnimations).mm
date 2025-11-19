@interface UIView(MRUAnimations)
+ (uint64_t)mru_animateWithSpringParameters:()MRUAnimations options:animations:;
+ (void)mru_animateUsingType:()MRUAnimations animations:completion:;
@end

@implementation UIView(MRUAnimations)

+ (void)mru_animateUsingType:()MRUAnimations animations:completion:
{
  v8 = a4;
  v9 = a5;
  switch(a3)
  {
    case 2:
      v10 = [MEMORY[0x1E69DD280] behaviorWithDampingRatio:0.8165 response:0.51302];
      v13 = MEMORY[0x1E69DD250];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __68__UIView_MRUAnimations__mru_animateUsingType_animations_completion___block_invoke_4;
      v16[3] = &unk_1E7665C50;
      v17 = v8;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __68__UIView_MRUAnimations__mru_animateUsingType_animations_completion___block_invoke_5;
      v14[3] = &unk_1E7665C78;
      v15 = v9;
      [v13 _animateUsingSpringBehavior:v10 tracking:0 animations:v16 completion:v14];

      v12 = v17;
      goto LABEL_7;
    case 1:
      v10 = [MEMORY[0x1E69DD280] behaviorWithDampingRatio:0.8165 response:0.51302];
      v11 = MEMORY[0x1E69DD250];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __68__UIView_MRUAnimations__mru_animateUsingType_animations_completion___block_invoke_2;
      v20[3] = &unk_1E7665C50;
      v21 = v8;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __68__UIView_MRUAnimations__mru_animateUsingType_animations_completion___block_invoke_3;
      v18[3] = &unk_1E7665C78;
      v19 = v9;
      [v11 _animateUsingSpringBehavior:v10 tracking:0 animations:v20 completion:v18];

      v12 = v21;
LABEL_7:

      goto LABEL_8;
    case 0:
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __68__UIView_MRUAnimations__mru_animateUsingType_animations_completion___block_invoke;
      v22[3] = &unk_1E7665C50;
      v23 = v8;
      [a1 _animateUsingSpringWithDuration:5 delay:v22 options:v9 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:42.0 completion:0.0];
      v10 = v23;
LABEL_8:

      break;
  }
}

+ (uint64_t)mru_animateWithSpringParameters:()MRUAnimations options:animations:
{
  v5 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v5;
  v8 = *(a3 + 32);
  return [a1 mru_animateWithSpringParameters:v7 options:a4 animations:a5 completion:0];
}

@end