@interface DRFlockAnimator
- (void)_runAnimatableWithBarelyBouncyAnimation:(id)a3;
- (void)_runAnimatableWithBouncyAnimation:(id)a3;
- (void)_runAnimatableWithBouncyAnimation:(id)a3 response:(double)a4;
- (void)_runAnimatableWithOneToOneTracking:(id)a3;
- (void)_runAnimatableWithOneToOneTracking:(id)a3 response:(double)a4;
- (void)_runBadgeLayout:(id)a3 oneToOneTrack:(BOOL)a4 bouncy:(BOOL)a5 slowOffset:(BOOL)a6;
- (void)_runWithoutRetargeting:(id)a3;
- (void)animateFlockLayoutOutput:(id)a3;
@end

@implementation DRFlockAnimator

- (void)animateFlockLayoutOutput:(id)a3
{
  v4 = a3;
  v5 = [(DRFlockAnimator *)self lastLayout];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v6 = [v4 touchesCount];
  v7 = v6 != [v5 touchesCount];
  v8 = [v4 badgeLayout];
  v9 = [v8 justBecameVisible];

  if (v9)
  {
LABEL_5:
    v10 = [v4 badgeLayout];
    v11 = [v10 position];
    [(DRFlockAnimator *)self _runWithoutRetargeting:v11];

    v12 = [v4 badgeLayout];
    v13 = [v12 offset];
    [(DRFlockAnimator *)self _runWithoutRetargeting:v13];

    v14 = [v4 badgeLayout];
    v15 = [v14 alpha];
    [(DRFlockAnimator *)self _runWithoutRetargeting:v15];
  }

  v16 = [v4 itemLayouts];
  v17 = [v16 count] - 1;

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v19 = [v4 itemLayouts];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001FCF4;
  v26[3] = &unk_100055AB8;
  v30 = v7;
  v26[4] = self;
  v20 = v5;
  v27 = v20;
  v29 = v17;
  v31 = IsReduceMotionEnabled;
  v21 = v4;
  v28 = v21;
  [v19 enumerateObjectsUsingBlock:v26];

  v22 = [v21 badgeLayout];
  if (v22)
  {
    if (v5)
    {
      v23 = [v21 itemLayouts];
      v24 = [v23 count];
      v25 = [v20 itemLayouts];
      v5 = v24 > [v25 count];
    }

    -[DRFlockAnimator _runBadgeLayout:oneToOneTrack:bouncy:slowOffset:](self, "_runBadgeLayout:oneToOneTrack:bouncy:slowOffset:", v22, [v21 reduceBadgeAnimationSpring], v7, v5);
  }

  [(DRFlockAnimator *)self setLastLayout:v21];
}

- (void)_runBadgeLayout:(id)a3 oneToOneTrack:(BOOL)a4 bouncy:(BOOL)a5 slowOffset:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v21 = v10;
  if (v7)
  {
    v11 = [v10 position];
    [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:v11];
  }

  else
  {
    v12 = [v10 offsetAdjustment];

    if (v12)
    {
      v13 = [v21 offsetAdjustment];
      [(DRFlockAnimator *)self _runWithoutRetargeting:v13];
    }

    v14 = [(DRFlockAnimator *)self badgeAppeared];
    v11 = [v21 position];
    if (!v14)
    {
      [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:v11];

      v17 = [v21 size];
      [(DRFlockAnimator *)self _runWithoutRetargeting:v17];

      [(DRFlockAnimator *)self setBadgeAppeared:1];
      if (v6)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (v8)
      {
        v18 = [v21 offsetAdjustment];

        v15 = [v21 offset];
        if (v18)
        {
          [(DRFlockAnimator *)self _runAnimatableWithOneToOneTracking:v15];
        }

        else
        {
          [(DRFlockAnimator *)self _runWithoutRetargeting:v15];
        }
      }

      else
      {
        v15 = [v21 offset];
        [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:v15];
      }

      goto LABEL_19;
    }

    [(DRFlockAnimator *)self _runAnimatableWithOneToOneTracking:v11];
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = [v21 offset];
  if (qword_100063678 != -1)
  {
    sub_100030F90();
  }

  if (byte_100063680 == 1)
  {
    v16 = sub_100020AA4();
  }

  else
  {
    v16 = 0.35;
  }

  [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:v15 response:v16];
LABEL_19:

  v19 = [v21 size];
  [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:v19];

  v20 = [v21 alpha];
  [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:v20];
}

- (void)_runAnimatableWithBouncyAnimation:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (qword_100063678 == -1)
  {
    v5 = v4;
  }

  else
  {
    sub_100030FA4();
    v5 = v7;
  }

  if (byte_100063680 == 1)
  {
    v6 = sub_100020C4C();
    v5 = v7;
  }

  else
  {
    v6 = 0.0015;
  }

  [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:v5 response:v6];
}

- (void)_runAnimatableWithBouncyAnimation:(id)a3 response:(double)a4
{
  v5 = a3;
  if (qword_100063678 != -1)
  {
    sub_100030FB8();
  }

  v6 = 1.0;
  if (byte_100063680 == 1)
  {
    v6 = sub_100020DF4();
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055BF8);
    }
  }

  if (byte_100063680 == 1)
  {
    v7 = sub_100020F98();
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055C58);
    }
  }

  else
  {
    v7 = 0.707106781;
  }

  if (byte_100063680 == 1)
  {
    v8 = sub_100021140();
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055CB8);
    }
  }

  else
  {
    v8 = 0.65;
  }

  v9 = 1.0;
  if (byte_100063680 == 1)
  {
    v9 = sub_1000212E8();
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055D18);
    }
  }

  v10 = 1.0;
  if (byte_100063680 == 1)
  {
    v10 = sub_10002148C();
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100020394;
  v13[3] = &unk_100054B50;
  v14 = v5;
  v11 = v5;
  v12 = [v11 completionBlock];
  [UIView _animateUsingSpringWithDampingRatio:1 response:v13 tracking:v12 initialDampingRatio:v6 initialResponse:a4 dampingRatioSmoothing:v7 responseSmoothing:v8 targetSmoothing:v9 projectionDeceleration:v10 animations:0.0 completion:0.0];
}

- (void)_runAnimatableWithBarelyBouncyAnimation:(id)a3
{
  v3 = a3;
  if (qword_100063678 != -1)
  {
    sub_100030FCC();
  }

  if (byte_100063680 == 1)
  {
    v4 = sub_100021630();
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055DD8);
    }
  }

  else
  {
    v4 = 0.80835;
  }

  if (byte_100063680 == 1)
  {
    v5 = sub_1000217D8();
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055CB8);
    }
  }

  else
  {
    v5 = 0.2109;
  }

  v6 = 1.0;
  if (byte_100063680 == 1)
  {
    v6 = sub_1000212E8();
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055D18);
    }
  }

  v7 = 1.0;
  if (byte_100063680 == 1)
  {
    v7 = sub_10002148C();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100020614;
  v10[3] = &unk_100054B50;
  v11 = v3;
  v8 = v3;
  v9 = [v8 completionBlock];
  [UIView _animateUsingSpringWithDampingRatio:1 response:v10 tracking:v9 dampingRatioSmoothing:v4 responseSmoothing:v5 targetSmoothing:v6 projectionDeceleration:v7 animations:0.0 completion:0.0];
}

- (void)_runAnimatableWithOneToOneTracking:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (qword_100063678 == -1)
  {
    v5 = v4;
  }

  else
  {
    sub_100030FA4();
    v5 = v7;
  }

  if (byte_100063680 == 1)
  {
    v6 = sub_100020C4C();
    v5 = v7;
  }

  else
  {
    v6 = 0.0015;
  }

  [(DRFlockAnimator *)self _runAnimatableWithOneToOneTracking:v5 response:v6];
}

- (void)_runAnimatableWithOneToOneTracking:(id)a3 response:(double)a4
{
  v5 = a3;
  if (qword_100063678 != -1)
  {
    sub_100030FB8();
  }

  v6 = 1.0;
  if (byte_100063680 == 1)
  {
    v6 = sub_100020DF4();
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055CB8);
    }
  }

  v7 = 1.0;
  if (byte_100063680 == 1)
  {
    v7 = sub_1000212E8();
    if (qword_100063678 != -1)
    {
      dispatch_once(&qword_100063678, &stru_100055D18);
    }
  }

  v8 = 1.0;
  if (byte_100063680 == 1)
  {
    v8 = sub_10002148C();
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000208E8;
  v11[3] = &unk_100054B50;
  v12 = v5;
  v9 = v5;
  v10 = [v9 completionBlock];
  [UIView _animateUsingSpringWithDampingRatio:1 response:v11 tracking:v10 dampingRatioSmoothing:v6 responseSmoothing:a4 targetSmoothing:v7 projectionDeceleration:v8 animations:0.0 completion:0.0];
}

- (void)_runWithoutRetargeting:(id)a3
{
  v7 = a3;
  v3 = [v7 animationBlock];

  if (v3)
  {
    v4 = [v7 animationBlock];
    [UIView _performWithoutRetargetingAnimations:v4];
  }

  v5 = [v7 completionBlock];

  if (v5)
  {
    v6 = [v7 completionBlock];
    v6[2](v6, 1, 0);
  }
}

@end