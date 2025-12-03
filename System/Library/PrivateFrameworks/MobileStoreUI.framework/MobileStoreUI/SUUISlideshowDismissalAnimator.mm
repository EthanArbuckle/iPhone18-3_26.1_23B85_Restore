@interface SUUISlideshowDismissalAnimator
- (CGRect)imageRect;
- (void)animateTransition:(id)transition;
@end

@implementation SUUISlideshowDismissalAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  view = [v6 view];
  view2 = [v5 view];
  containerView = [transitionCopy containerView];
  [transitionCopy finalFrameForViewController:v6];
  [view setFrame:?];
  [view2 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(UIImageView *)self->_imageView frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  superview = [(UIImageView *)self->_imageView superview];
  [containerView convertRect:superview fromView:{v19, v21, v23, v25}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [view2 setAlpha:0.0];
  v35 = [objc_alloc(MEMORY[0x277D75DE8]) initWithFrame:2020 privateStyle:{v11, v13, v15, v17}];
  [v35 setAlpha:1.0];
  [v35 setAutoresizingMask:18];
  [containerView addSubview:v35];
  [(UIImageView *)self->_imageView setFrame:self->_imageRect.origin.x, self->_imageRect.origin.y, self->_imageRect.size.width, self->_imageRect.size.height];
  [containerView addSubview:self->_imageView];
  v36 = MEMORY[0x277D75D18];
  [(SUUISlideshowDismissalAnimator *)self transitionDuration:transitionCopy];
  v38 = v37;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __52__SUUISlideshowDismissalAnimator_animateTransition___block_invoke;
  v46[3] = &unk_2798F8DB0;
  v47 = v35;
  selfCopy = self;
  v49 = v28;
  v50 = v30;
  v51 = v32;
  v52 = v34;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __52__SUUISlideshowDismissalAnimator_animateTransition___block_invoke_2;
  v42[3] = &unk_2798F8A30;
  v42[4] = self;
  v43 = v47;
  v44 = view2;
  v45 = transitionCopy;
  v39 = transitionCopy;
  v40 = view2;
  v41 = v47;
  [v36 animateWithDuration:v46 animations:v42 completion:v38];
}

uint64_t __52__SUUISlideshowDismissalAnimator_animateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);

  return [v2 setFrame:{v3, v4, v5, v6}];
}

uint64_t __52__SUUISlideshowDismissalAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 8) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  v4 = *(a1 + 56);

  return [v4 completeTransition:1];
}

- (CGRect)imageRect
{
  x = self->_imageRect.origin.x;
  y = self->_imageRect.origin.y;
  width = self->_imageRect.size.width;
  height = self->_imageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end