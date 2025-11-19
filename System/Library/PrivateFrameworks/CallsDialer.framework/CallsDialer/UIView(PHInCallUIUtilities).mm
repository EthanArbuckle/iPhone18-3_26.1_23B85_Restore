@interface UIView(PHInCallUIUtilities)
- (double)xOriginForCenterOfSuperview;
- (double)yOriginForCenterOfSuperview;
- (void)transformToAbutToEdge:()PHInCallUIUtilities ofView:;
@end

@implementation UIView(PHInCallUIUtilities)

- (void)transformToAbutToEdge:()PHInCallUIUtilities ofView:
{
  v20 = a3;
  v7 = MEMORY[0x277CBF2C0];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *a4 = *MEMORY[0x277CBF2C0];
  *(a4 + 16) = v8;
  *(a4 + 32) = *(v7 + 32);
  if (a2 == 8)
  {
    [a1 frame];
    [a1 convertPoint:0 toView:?];
    v13 = v15;
    [v20 frame];
    v17 = v16;
    [v20 frame];
    v14 = v17 + v18;
  }

  else
  {
    if (a2 != 2)
    {
      goto LABEL_6;
    }

    [a1 frame];
    v10 = v9;
    [a1 frame];
    [a1 convertPoint:0 toView:{v10 + v11, 0.0}];
    v13 = v12;
    [v20 frame];
  }

  [a1 convertPoint:0 toView:{v14, 0.0}];
  *&v19 = v19 - v13;
  CGAffineTransformMakeTranslation(a4, roundf(*&v19), 0.0);
LABEL_6:
}

- (double)xOriginForCenterOfSuperview
{
  v2 = [a1 superview];
  [v2 bounds];
  v4 = v3 * 0.5;
  [a1 bounds];
  v6 = v4 - v5 * 0.5;
  v7 = floorf(v6);

  return v7;
}

- (double)yOriginForCenterOfSuperview
{
  v2 = [a1 superview];
  [v2 bounds];
  v4 = v3 * 0.5;
  [a1 bounds];
  v6 = v4 - v5 * 0.5;
  v7 = floorf(v6);

  return v7;
}

@end