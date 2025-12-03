@interface CKNoAnimationSearchFieldAnimator
- (CKNoAnimationSearchFieldAnimator)initWithAppearing:(BOOL)appearing;
- (void)animateTransition:(id)transition;
@end

@implementation CKNoAnimationSearchFieldAnimator

- (CKNoAnimationSearchFieldAnimator)initWithAppearing:(BOOL)appearing
{
  v5.receiver = self;
  v5.super_class = CKNoAnimationSearchFieldAnimator;
  result = [(CKNoAnimationSearchFieldAnimator *)&v5 init];
  if (result)
  {
    result->_appearing = appearing;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  if ([(CKNoAnimationSearchFieldAnimator *)self isAppearing])
  {
    v4 = [transitionCopy viewForKey:*MEMORY[0x1E69DE780]];
    containerView = [transitionCopy containerView];
    [containerView bounds];
    [v4 setFrame:?];
    [containerView addSubview:v4];
  }

  else
  {
    v4 = [transitionCopy viewForKey:*MEMORY[0x1E69DE770]];
    [v4 removeFromSuperview];
  }

  [transitionCopy completeTransition:1];
}

@end