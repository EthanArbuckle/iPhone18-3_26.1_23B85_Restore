@interface NUSlideViewAnimator
- (CGAffineTransform)fromViewTransformForDirection:(SEL)a3;
- (CGAffineTransform)toViewTransformForDirection:(SEL)a3;
- (CGRect)bounds;
- (NUSlideViewAnimator)initWithBounds:(CGRect)a3;
- (unint64_t)animationOptionsForAnimationFactory:(id)a3;
- (void)setMediaTimingFunction:(id)a3;
- (void)translateFromView:(id)a3 toView:(id)a4 direction:(unint64_t)a5 completion:(id)a6;
@end

@implementation NUSlideViewAnimator

- (NUSlideViewAnimator)initWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = NUSlideViewAnimator;
  result = [(NUSlideViewAnimator *)&v8 init];
  if (result)
  {
    result->_animating = 0;
    result->_duration = 0.75;
    result->_bounds.origin.x = x;
    result->_bounds.origin.y = y;
    result->_bounds.size.width = width;
    result->_bounds.size.height = height;
    result->_translateBoundsPadding = 1.0;
  }

  return result;
}

- (void)translateFromView:(id)a3 toView:(id)a4 direction:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  [MEMORY[0x277CCACC8] isMainThread];
  [(NUSlideViewAnimator *)self setAnimating:1];
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  [(NUSlideViewAnimator *)self toViewTransformForDirection:a5];
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  [(NUSlideViewAnimator *)self fromViewTransformForDirection:a5];
  v32[0] = v36;
  v32[1] = v37;
  v32[2] = v38;
  [v11 setTransform:v32];
  v13 = [(NUSlideViewAnimator *)self animationFactory];
  v14 = [(NUSlideViewAnimator *)self animationOptionsForAnimationFactory:v13];

  v15 = MEMORY[0x277D75D18];
  [(NUSlideViewAnimator *)self duration];
  v17 = v16;
  v18 = [(NUSlideViewAnimator *)self animationFactory];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __69__NUSlideViewAnimator_translateFromView_toView_direction_completion___block_invoke;
  v26[3] = &unk_2799A33C8;
  v27 = v11;
  v28 = v10;
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__NUSlideViewAnimator_translateFromView_toView_direction_completion___block_invoke_2;
  v22[3] = &unk_2799A33F0;
  v24 = self;
  v25 = v12;
  v23 = v28;
  v19 = v12;
  v20 = v28;
  v21 = v11;
  [v15 _animateWithDuration:v14 delay:v18 options:v26 factory:v22 animations:v17 completion:0.0];
}

uint64_t __69__NUSlideViewAnimator_translateFromView_toView_direction_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v6 = *MEMORY[0x277CBF2C0];
  v7 = v3;
  v8 = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:&v6];
  v4 = *(a1 + 64);
  v6 = *(a1 + 48);
  v7 = v4;
  v8 = *(a1 + 80);
  return [*(a1 + 40) setTransform:&v6];
}

uint64_t __69__NUSlideViewAnimator_translateFromView_toView_direction_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v6[0] = *MEMORY[0x277CBF2C0];
  v6[1] = v3;
  v6[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v6];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))();
  }

  return [*(a1 + 40) setAnimating:0];
}

- (void)setMediaTimingFunction:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v4 = [[NUAnimationFactory alloc] initWithMediaTimingFunction:v5];
    [(NUSlideViewAnimator *)self setAnimationFactory:v4];
  }

  else
  {
    [(NUSlideViewAnimator *)self setAnimationFactory:0];
  }
}

- (CGAffineTransform)fromViewTransformForDirection:(SEL)a3
{
  [(NUSlideViewAnimator *)self bounds];
  Height = CGRectGetHeight(v16);
  [(NUSlideViewAnimator *)self translateBoundsPadding];
  v9 = v8;
  [(NUSlideViewAnimator *)self bounds];
  Width = CGRectGetWidth(v17);
  result = [(NUSlideViewAnimator *)self translateBoundsPadding];
  if (a4 > 1)
  {
    v14 = Width + v12;
    if (a4 == 2)
    {
      v14 = -v14;
    }

    else if (a4 != 3)
    {
      return result;
    }

    v13 = 0.0;
  }

  else
  {
    v13 = Height + v9;
    if (a4)
    {
      if (a4 != 1)
      {
        return result;
      }

      v13 = -v13;
    }

    v14 = 0.0;
  }

  return CGAffineTransformMakeTranslation(retstr, v14, v13);
}

- (CGAffineTransform)toViewTransformForDirection:(SEL)a3
{
  [(NUSlideViewAnimator *)self bounds];
  Height = CGRectGetHeight(v16);
  [(NUSlideViewAnimator *)self translateBoundsPadding];
  v9 = v8;
  [(NUSlideViewAnimator *)self bounds];
  Width = CGRectGetWidth(v17);
  result = [(NUSlideViewAnimator *)self translateBoundsPadding];
  if (a4 > 1)
  {
    v14 = Width + v12;
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        return result;
      }

      v14 = -v14;
    }

    v13 = 0.0;
  }

  else
  {
    v13 = Height + v9;
    if (a4)
    {
      if (a4 != 1)
      {
        return result;
      }
    }

    else
    {
      v13 = -v13;
    }

    v14 = 0.0;
  }

  return CGAffineTransformMakeTranslation(retstr, v14, v13);
}

- (unint64_t)animationOptionsForAnimationFactory:(id)a3
{
  if (a3)
  {
    return 393216;
  }

  else
  {
    return 0;
  }
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end