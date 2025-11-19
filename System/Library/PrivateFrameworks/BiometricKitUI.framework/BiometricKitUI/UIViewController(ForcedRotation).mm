@interface UIViewController(ForcedRotation)
+ (uint64_t)bkui_reverseLeftRight:()ForcedRotation;
- (uint64_t)bkui_deviceOrientationForIterfaceOrientation:()ForcedRotation;
- (uint64_t)bkui_uiforDeviceOrientation:()ForcedRotation;
- (void)bkui_rotateView:()ForcedRotation fromOrientation:toOrientation:containerBounds:animatedDuration:alongSide:completion:;
@end

@implementation UIViewController(ForcedRotation)

- (uint64_t)bkui_uiforDeviceOrientation:()ForcedRotation
{
  if (a3 > 6)
  {
    return 1;
  }

  else
  {
    return qword_241B72BC8[a3];
  }
}

- (void)bkui_rotateView:()ForcedRotation fromOrientation:toOrientation:containerBounds:animatedDuration:alongSide:completion:
{
  v21 = a8;
  v22 = a11;
  v23 = a12;
  if (a9 == a10)
  {
    if (v22)
    {
      v22[2](v22, 1.0);
    }

    if (v23)
    {
      v23[2](v23, 1);
    }
  }

  else
  {
    v24 = MEMORY[0x277D75D18];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __136__UIViewController_ForcedRotation__bkui_rotateView_fromOrientation_toOrientation_containerBounds_animatedDuration_alongSide_completion___block_invoke;
    v25[3] = &unk_278D0A378;
    v26 = v21;
    v28 = a9;
    v29 = a10;
    v30 = a1;
    v31 = a2;
    v32 = a3;
    v33 = a4;
    v27 = v22;
    [v24 animateWithDuration:v25 animations:v23 completion:a5];
  }
}

- (uint64_t)bkui_deviceOrientationForIterfaceOrientation:()ForcedRotation
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_241B72C88[a3 - 1];
  }
}

+ (uint64_t)bkui_reverseLeftRight:()ForcedRotation
{
  v3 = 3;
  if (a3 == 3)
  {
    v3 = 4;
  }

  if ((a3 - 5) >= 0xFFFFFFFFFFFFFFFELL)
  {
    return v3;
  }

  else
  {
    return a3;
  }
}

@end