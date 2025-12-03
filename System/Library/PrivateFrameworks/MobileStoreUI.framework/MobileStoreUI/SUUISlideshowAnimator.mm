@interface SUUISlideshowAnimator
- (void)animateTransition:(id)transition;
@end

@implementation SUUISlideshowAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77230]];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x277D77240]];
  view = [v6 view];
  view2 = [v5 view];
  containerView = [transitionCopy containerView];
  [transitionCopy finalFrameForViewController:v6];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [view setAlpha:0.0];
  [view setFrame:{v11, v13, v15, v17}];
  [containerView insertSubview:view aboveSubview:view2];
  v18 = [objc_alloc(MEMORY[0x277D75DE8]) initWithFrame:2020 privateStyle:{v11, v13, v15, v17}];
  [v18 setAlpha:0.0];
  [v18 setAutoresizingMask:18];
  [containerView addSubview:v18];
  imageView = self->_imageView;
  [(UIImageView *)imageView frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  superview = [(UIImageView *)self->_imageView superview];
  [containerView convertRect:superview fromView:{v21, v23, v25, v27}];
  [(UIImageView *)imageView setFrame:?];

  [containerView addSubview:self->_imageView];
  v29 = MEMORY[0x277D75D18];
  [(SUUISlideshowAnimator *)self transitionDuration:transitionCopy];
  v31 = v30;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __43__SUUISlideshowAnimator_animateTransition___block_invoke;
  v44[3] = &unk_2798F8DB0;
  v45 = v18;
  selfCopy = self;
  v47 = v11;
  v48 = v13;
  v49 = v15;
  v50 = v17;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __43__SUUISlideshowAnimator_animateTransition___block_invoke_2;
  v35[3] = &unk_2798F8DD8;
  v40 = v11;
  v41 = v13;
  v42 = v15;
  v43 = v17;
  v36 = view;
  selfCopy2 = self;
  v38 = v45;
  v39 = transitionCopy;
  v32 = transitionCopy;
  v33 = v45;
  v34 = view;
  [v29 animateWithDuration:v44 animations:v35 completion:v31];
}

uint64_t __43__SUUISlideshowAnimator_animateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);

  return [v2 setFrame:{v3, v4, v5, v6}];
}

uint64_t __43__SUUISlideshowAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  [*(a1 + 32) setFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  [*(*(a1 + 40) + 8) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  [*(a1 + 48) removeFromSuperview];
  v4 = *(a1 + 56);

  return [v4 completeTransition:1];
}

@end