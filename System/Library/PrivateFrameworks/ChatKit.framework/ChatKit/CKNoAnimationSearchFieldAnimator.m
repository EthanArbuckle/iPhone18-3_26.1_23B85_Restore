@interface CKNoAnimationSearchFieldAnimator
- (CKNoAnimationSearchFieldAnimator)initWithAppearing:(BOOL)a3;
- (void)animateTransition:(id)a3;
@end

@implementation CKNoAnimationSearchFieldAnimator

- (CKNoAnimationSearchFieldAnimator)initWithAppearing:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CKNoAnimationSearchFieldAnimator;
  result = [(CKNoAnimationSearchFieldAnimator *)&v5 init];
  if (result)
  {
    result->_appearing = a3;
  }

  return result;
}

- (void)animateTransition:(id)a3
{
  v6 = a3;
  if ([(CKNoAnimationSearchFieldAnimator *)self isAppearing])
  {
    v4 = [v6 viewForKey:*MEMORY[0x1E69DE780]];
    v5 = [v6 containerView];
    [v5 bounds];
    [v4 setFrame:?];
    [v5 addSubview:v4];
  }

  else
  {
    v4 = [v6 viewForKey:*MEMORY[0x1E69DE770]];
    [v4 removeFromSuperview];
  }

  [v6 completeTransition:1];
}

@end