@interface DRFlockAnimator
- (void)_runAnimatableWithBarelyBouncyAnimation:(id)animation;
- (void)_runAnimatableWithBouncyAnimation:(id)animation;
- (void)_runAnimatableWithBouncyAnimation:(id)animation response:(double)response;
- (void)_runAnimatableWithOneToOneTracking:(id)tracking;
- (void)_runAnimatableWithOneToOneTracking:(id)tracking response:(double)response;
- (void)_runBadgeLayout:(id)layout oneToOneTrack:(BOOL)track bouncy:(BOOL)bouncy slowOffset:(BOOL)offset;
- (void)_runWithoutRetargeting:(id)retargeting;
- (void)animateFlockLayoutOutput:(id)output;
@end

@implementation DRFlockAnimator

- (void)animateFlockLayoutOutput:(id)output
{
  outputCopy = output;
  lastLayout = [(DRFlockAnimator *)self lastLayout];
  if (!lastLayout)
  {
    v7 = 0;
    goto LABEL_5;
  }

  touchesCount = [outputCopy touchesCount];
  v7 = touchesCount != [lastLayout touchesCount];
  badgeLayout = [outputCopy badgeLayout];
  justBecameVisible = [badgeLayout justBecameVisible];

  if (justBecameVisible)
  {
LABEL_5:
    badgeLayout2 = [outputCopy badgeLayout];
    position = [badgeLayout2 position];
    [(DRFlockAnimator *)self _runWithoutRetargeting:position];

    badgeLayout3 = [outputCopy badgeLayout];
    offset = [badgeLayout3 offset];
    [(DRFlockAnimator *)self _runWithoutRetargeting:offset];

    badgeLayout4 = [outputCopy badgeLayout];
    alpha = [badgeLayout4 alpha];
    [(DRFlockAnimator *)self _runWithoutRetargeting:alpha];
  }

  itemLayouts = [outputCopy itemLayouts];
  v17 = [itemLayouts count] - 1;

  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  itemLayouts2 = [outputCopy itemLayouts];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10001FCF4;
  v26[3] = &unk_100055AB8;
  v30 = v7;
  v26[4] = self;
  v20 = lastLayout;
  v27 = v20;
  v29 = v17;
  v31 = IsReduceMotionEnabled;
  v21 = outputCopy;
  v28 = v21;
  [itemLayouts2 enumerateObjectsUsingBlock:v26];

  badgeLayout5 = [v21 badgeLayout];
  if (badgeLayout5)
  {
    if (lastLayout)
    {
      itemLayouts3 = [v21 itemLayouts];
      v24 = [itemLayouts3 count];
      itemLayouts4 = [v20 itemLayouts];
      lastLayout = v24 > [itemLayouts4 count];
    }

    -[DRFlockAnimator _runBadgeLayout:oneToOneTrack:bouncy:slowOffset:](self, "_runBadgeLayout:oneToOneTrack:bouncy:slowOffset:", badgeLayout5, [v21 reduceBadgeAnimationSpring], v7, lastLayout);
  }

  [(DRFlockAnimator *)self setLastLayout:v21];
}

- (void)_runBadgeLayout:(id)layout oneToOneTrack:(BOOL)track bouncy:(BOOL)bouncy slowOffset:(BOOL)offset
{
  offsetCopy = offset;
  bouncyCopy = bouncy;
  trackCopy = track;
  layoutCopy = layout;
  v21 = layoutCopy;
  if (bouncyCopy)
  {
    position = [layoutCopy position];
    [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:position];
  }

  else
  {
    offsetAdjustment = [layoutCopy offsetAdjustment];

    if (offsetAdjustment)
    {
      offsetAdjustment2 = [v21 offsetAdjustment];
      [(DRFlockAnimator *)self _runWithoutRetargeting:offsetAdjustment2];
    }

    badgeAppeared = [(DRFlockAnimator *)self badgeAppeared];
    position = [v21 position];
    if (!badgeAppeared)
    {
      [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:position];

      v17 = [v21 size];
      [(DRFlockAnimator *)self _runWithoutRetargeting:v17];

      [(DRFlockAnimator *)self setBadgeAppeared:1];
      if (offsetCopy)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (trackCopy)
      {
        offsetAdjustment3 = [v21 offsetAdjustment];

        offset = [v21 offset];
        if (offsetAdjustment3)
        {
          [(DRFlockAnimator *)self _runAnimatableWithOneToOneTracking:offset];
        }

        else
        {
          [(DRFlockAnimator *)self _runWithoutRetargeting:offset];
        }
      }

      else
      {
        offset = [v21 offset];
        [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:offset];
      }

      goto LABEL_19;
    }

    [(DRFlockAnimator *)self _runAnimatableWithOneToOneTracking:position];
  }

  if (!offsetCopy)
  {
    goto LABEL_14;
  }

LABEL_8:
  offset = [v21 offset];
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

  [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:offset response:v16];
LABEL_19:

  v19 = [v21 size];
  [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:v19];

  alpha = [v21 alpha];
  [(DRFlockAnimator *)self _runAnimatableWithBouncyAnimation:alpha];
}

- (void)_runAnimatableWithBouncyAnimation:(id)animation
{
  animationCopy = animation;
  v7 = animationCopy;
  if (qword_100063678 == -1)
  {
    v5 = animationCopy;
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

- (void)_runAnimatableWithBouncyAnimation:(id)animation response:(double)response
{
  animationCopy = animation;
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
  v14 = animationCopy;
  v11 = animationCopy;
  completionBlock = [v11 completionBlock];
  [UIView _animateUsingSpringWithDampingRatio:1 response:v13 tracking:completionBlock initialDampingRatio:v6 initialResponse:response dampingRatioSmoothing:v7 responseSmoothing:v8 targetSmoothing:v9 projectionDeceleration:v10 animations:0.0 completion:0.0];
}

- (void)_runAnimatableWithBarelyBouncyAnimation:(id)animation
{
  animationCopy = animation;
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
  v11 = animationCopy;
  v8 = animationCopy;
  completionBlock = [v8 completionBlock];
  [UIView _animateUsingSpringWithDampingRatio:1 response:v10 tracking:completionBlock dampingRatioSmoothing:v4 responseSmoothing:v5 targetSmoothing:v6 projectionDeceleration:v7 animations:0.0 completion:0.0];
}

- (void)_runAnimatableWithOneToOneTracking:(id)tracking
{
  trackingCopy = tracking;
  v7 = trackingCopy;
  if (qword_100063678 == -1)
  {
    v5 = trackingCopy;
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

- (void)_runAnimatableWithOneToOneTracking:(id)tracking response:(double)response
{
  trackingCopy = tracking;
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
  v12 = trackingCopy;
  v9 = trackingCopy;
  completionBlock = [v9 completionBlock];
  [UIView _animateUsingSpringWithDampingRatio:1 response:v11 tracking:completionBlock dampingRatioSmoothing:v6 responseSmoothing:response targetSmoothing:v7 projectionDeceleration:v8 animations:0.0 completion:0.0];
}

- (void)_runWithoutRetargeting:(id)retargeting
{
  retargetingCopy = retargeting;
  animationBlock = [retargetingCopy animationBlock];

  if (animationBlock)
  {
    animationBlock2 = [retargetingCopy animationBlock];
    [UIView _performWithoutRetargetingAnimations:animationBlock2];
  }

  completionBlock = [retargetingCopy completionBlock];

  if (completionBlock)
  {
    completionBlock2 = [retargetingCopy completionBlock];
    completionBlock2[2](completionBlock2, 1, 0);
  }
}

@end