@interface CCUIContentModuleContainerReducedMotionTransition
- (CGAffineTransform)snapshotCorrectiveTransform;
- (UIWindow)snapshotHostWindow;
- (id)customAnimator;
- (void)performTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5;
- (void)setSnapshotCorrectiveTransform:(CGAffineTransform *)a3;
@end

@implementation CCUIContentModuleContainerReducedMotionTransition

- (void)performTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x277D75D18];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __100__CCUIContentModuleContainerReducedMotionTransition_performTransitionFromView_toView_containerView___block_invoke;
  v21[3] = &unk_278382DD0;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = self;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [v11 performWithoutAnimation:v21];
  v15 = [v14 window];
  v16 = [v15 windowScene];
  v17 = [v16 screen];

  v18 = [v17 snapshotViewAfterScreenUpdates:0];
  snapshotView = self->_snapshotView;
  self->_snapshotView = v18;

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __100__CCUIContentModuleContainerReducedMotionTransition_performTransitionFromView_toView_containerView___block_invoke_2;
  v20[3] = &unk_278381DF0;
  v20[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v20];
  [(UIView *)self->_snapshotView setAlpha:0.0];
}

id __100__CCUIContentModuleContainerReducedMotionTransition_performTransitionFromView_toView_containerView___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5.receiver = *(a1 + 56);
  v5.super_class = CCUIContentModuleContainerReducedMotionTransition;
  return objc_msgSendSuper2(&v5, sel_performTransitionFromView_toView_containerView_, v1, v2, v3);
}

uint64_t __100__CCUIContentModuleContainerReducedMotionTransition_performTransitionFromView_toView_containerView___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) viewController];
  v3 = [v2 view];
  [v3 layoutIfNeeded];

  v4 = [*(a1 + 32) snapshotHostWindow];
  [v4 addSubview:*(*(a1 + 32) + 64)];

  v5 = *(a1 + 32);
  v6 = v5[8];
  v7 = [v5 snapshotHostWindow];
  [v7 center];
  [v6 setCenter:?];

  v8 = *(a1 + 32);
  v9 = v8[8];
  [v8 snapshotCorrectiveTransform];
  return [v9 setTransform:&v11];
}

- (id)customAnimator
{
  v3 = [objc_alloc(MEMORY[0x277D75D40]) initWithDuration:0 curve:0 animations:0.2];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__CCUIContentModuleContainerReducedMotionTransition_customAnimator__block_invoke;
  v5[3] = &unk_278382DF8;
  v5[4] = self;
  [v3 addCompletion:v5];

  return v3;
}

uint64_t __67__CCUIContentModuleContainerReducedMotionTransition_customAnimator__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) snapshotView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 setSnapshotView:0];
}

- (UIWindow)snapshotHostWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotHostWindow);

  return WeakRetained;
}

- (CGAffineTransform)snapshotCorrectiveTransform
{
  v3 = *&self[1].ty;
  *&retstr->a = *&self[1].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].b;
  return self;
}

- (void)setSnapshotCorrectiveTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_snapshotCorrectiveTransform.a = *&a3->a;
  *&self->_snapshotCorrectiveTransform.c = v4;
  *&self->_snapshotCorrectiveTransform.tx = v3;
}

@end