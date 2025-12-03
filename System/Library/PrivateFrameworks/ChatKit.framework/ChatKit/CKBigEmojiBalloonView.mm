@interface CKBigEmojiBalloonView
- (CKBalloonDescriptor_t)balloonDescriptorForAbsentBalloonShape;
- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)size;
- (void)addFilter:(id)filter;
- (void)attachInvisibleInkEffectView;
- (void)clearFilters;
- (void)detachInvisibleInkEffectView;
- (void)invisibleInkEffectViewWasUncovered;
@end

@implementation CKBigEmojiBalloonView

- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)size
{
  v3 = [CKUIBehavior sharedBehaviors:size.width];
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

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  balloonFilters = [filterCopy balloonFilters];

  if (balloonFilters)
  {
    textView = [(CKTextBalloonView *)self textView];
    layer = [textView layer];
    filters = [layer filters];
    if (filters)
    {
      textView2 = [(CKTextBalloonView *)self textView];
      layer2 = [textView2 layer];
      filters2 = [layer2 filters];
      balloonFilters2 = [filterCopy balloonFilters];
      [filters2 arrayByAddingObjectsFromArray:balloonFilters2];
    }

    else
    {
      [filterCopy balloonFilters];
    }
    v11 = ;
    textView3 = [(CKTextBalloonView *)self textView];
    layer3 = [textView3 layer];
    [layer3 setFilters:v11];

    if (filters)
    {

      v11 = textView2;
    }
  }

  [filterCopy contentAlpha];
  if (v14 != 0.0)
  {
    [filterCopy contentAlpha];
    v16 = v15;
    textView4 = [(CKTextBalloonView *)self textView];
    [textView4 setAlpha:v16];
  }

  textCompositingFilter = [filterCopy textCompositingFilter];

  if (textCompositingFilter)
  {
    textCompositingFilter2 = [filterCopy textCompositingFilter];
    textView5 = [(CKTextBalloonView *)self textView];
    layer4 = [textView5 layer];
    [layer4 setCompositingFilter:textCompositingFilter2];
  }

  v24.receiver = self;
  v24.super_class = CKBigEmojiBalloonView;
  [(CKTextBalloonView *)&v24 addFilter:filterCopy];
}

- (void)clearFilters
{
  textView = [(CKTextBalloonView *)self textView];
  layer = [textView layer];
  [layer setFilters:0];

  textView2 = [(CKTextBalloonView *)self textView];
  layer2 = [textView2 layer];
  [layer2 setCompositingFilter:0];

  textView3 = [(CKTextBalloonView *)self textView];
  [textView3 setAlpha:1.0];

  v8.receiver = self;
  v8.super_class = CKBigEmojiBalloonView;
  [(CKTextBalloonView *)&v8 clearFilters];
}

- (void)invisibleInkEffectViewWasUncovered
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  [invisibleInkEffectController suspendForTimeInterval:5.0];
}

- (void)attachInvisibleInkEffectView
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];

  [effectView attachToBalloonView:self];
  textView = [(CKTextBalloonView *)self textView];
  [(CKBigEmojiBalloonView *)self insertSubview:effectView aboveSubview:textView];
}

- (void)detachInvisibleInkEffectView
{
  invisibleInkEffectController = [(CKBalloonView *)self invisibleInkEffectController];
  effectView = [invisibleInkEffectController effectView];

  [effectView detachFromBalloonView];
  [effectView removeFromSuperview];
}

@end