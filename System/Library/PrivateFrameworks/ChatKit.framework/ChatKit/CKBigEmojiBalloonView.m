@interface CKBigEmojiBalloonView
- (CKBalloonDescriptor_t)balloonDescriptorForAbsentBalloonShape;
- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)a3;
- (void)addFilter:(id)a3;
- (void)attachInvisibleInkEffectView;
- (void)clearFilters;
- (void)detachInvisibleInkEffectView;
- (void)invisibleInkEffectViewWasUncovered;
@end

@implementation CKBigEmojiBalloonView

- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)a3
{
  v3 = [CKUIBehavior sharedBehaviors:a3.width];
  [v3 bigEmojiAlignmentRectInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (CKBalloonDescriptor_t)balloonDescriptorForAbsentBalloonShape
{
  result = [(CKColoredBalloonView *)self balloonDescriptor];
  *retstr = *CKBalloonDescriptorZero;
  if (v6 == 4)
  {
    return [(CKColoredBalloonView *)self balloonDescriptor];
  }

  return result;
}

- (void)addFilter:(id)a3
{
  v6 = a3;
  v7 = [v6 balloonFilters];

  if (v7)
  {
    v8 = [(CKTextBalloonView *)self textView];
    v9 = [v8 layer];
    v10 = [v9 filters];
    if (v10)
    {
      v23 = [(CKTextBalloonView *)self textView];
      v22 = [v23 layer];
      v3 = [v22 filters];
      v4 = [v6 balloonFilters];
      [v3 arrayByAddingObjectsFromArray:v4];
    }

    else
    {
      [v6 balloonFilters];
    }
    v11 = ;
    v12 = [(CKTextBalloonView *)self textView];
    v13 = [v12 layer];
    [v13 setFilters:v11];

    if (v10)
    {

      v11 = v23;
    }
  }

  [v6 contentAlpha];
  if (v14 != 0.0)
  {
    [v6 contentAlpha];
    v16 = v15;
    v17 = [(CKTextBalloonView *)self textView];
    [v17 setAlpha:v16];
  }

  v18 = [v6 textCompositingFilter];

  if (v18)
  {
    v19 = [v6 textCompositingFilter];
    v20 = [(CKTextBalloonView *)self textView];
    v21 = [v20 layer];
    [v21 setCompositingFilter:v19];
  }

  v24.receiver = self;
  v24.super_class = CKBigEmojiBalloonView;
  [(CKTextBalloonView *)&v24 addFilter:v6];
}

- (void)clearFilters
{
  v3 = [(CKTextBalloonView *)self textView];
  v4 = [v3 layer];
  [v4 setFilters:0];

  v5 = [(CKTextBalloonView *)self textView];
  v6 = [v5 layer];
  [v6 setCompositingFilter:0];

  v7 = [(CKTextBalloonView *)self textView];
  [v7 setAlpha:1.0];

  v8.receiver = self;
  v8.super_class = CKBigEmojiBalloonView;
  [(CKTextBalloonView *)&v8 clearFilters];
}

- (void)invisibleInkEffectViewWasUncovered
{
  v2 = [(CKBalloonView *)self invisibleInkEffectController];
  [v2 suspendForTimeInterval:5.0];
}

- (void)attachInvisibleInkEffectView
{
  v3 = [(CKBalloonView *)self invisibleInkEffectController];
  v5 = [v3 effectView];

  [v5 attachToBalloonView:self];
  v4 = [(CKTextBalloonView *)self textView];
  [(CKBigEmojiBalloonView *)self insertSubview:v5 aboveSubview:v4];
}

- (void)detachInvisibleInkEffectView
{
  v2 = [(CKBalloonView *)self invisibleInkEffectController];
  v3 = [v2 effectView];

  [v3 detachFromBalloonView];
  [v3 removeFromSuperview];
}

@end