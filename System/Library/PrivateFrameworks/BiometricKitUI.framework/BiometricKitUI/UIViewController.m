@interface UIViewController
@end

@implementation UIViewController

uint64_t __136__UIViewController_ForcedRotation__bkui_rotateView_fromOrientation_toOrientation_containerBounds_animatedDuration_alongSide_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  v3 = [v2 valueForKeyPath:@"transform.rotation.z"];
  [v3 floatValue];
  v5 = v4;

  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = 0.0;
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        goto LABEL_15;
      }

      v9 = v6 - 1;
      if (v9 >= 3)
      {
        goto LABEL_15;
      }

      v10 = &unk_241B72C18;
      goto LABEL_14;
    }

    v9 = v6 - 1;
    if (v9 < 4)
    {
      v10 = &unk_241B72C30;
      goto LABEL_14;
    }
  }

  else
  {
    if (v7 != 1)
    {
      if (v7 != 2)
      {
        goto LABEL_15;
      }

      v9 = v6 - 1;
      if (v9 >= 4)
      {
        goto LABEL_15;
      }

      v10 = &unk_241B72C50;
      goto LABEL_14;
    }

    v9 = v6 - 2;
    if (v9 < 3)
    {
      v10 = &unk_241B72C00;
LABEL_14:
      v8 = v10[v9];
    }
  }

LABEL_15:
  memset(&v31, 0, sizeof(v31));
  CGAffineTransformMakeRotation(&v31, v8);
  b = v31.b;
  a = v31.a;
  v13 = v5 + atan2f(b, a);
  v14 = [*(a1 + 32) layer];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  [v14 setValue:v15 forKeyPath:@"transform.rotation.z"];

  __asm { FMOV            V2.2D, #0.5 }

  [*(a1 + 32) setCenter:{vaddq_f64(*(a1 + 64), vmulq_f64(*(a1 + 80), _Q2))}];
  if (v13 == 0.0)
  {
    goto LABEL_16;
  }

  v23 = 100 * v13;
  if (v23 < 0)
  {
    v23 = -100 * v13;
  }

  HIDWORD(v24) = -1775253149 * v23;
  LODWORD(v24) = -1775253149 * v23;
  if ((v24 >> 2) <= 0xDA740D)
  {
LABEL_16:
    v21 = *(a1 + 32);
    v22 = [v21 superview];
    [v22 bounds];
    [v21 setBounds:?];
  }

  else
  {
    v25 = [*(a1 + 32) superview];
    [v25 bounds];
    v27 = v26;
    v29 = v28;

    [*(a1 + 32) setBounds:{v27, v29, *(a1 + 88), *(a1 + 80)}];
  }

  [*(a1 + 32) layoutIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(v8);
  }

  return result;
}

@end