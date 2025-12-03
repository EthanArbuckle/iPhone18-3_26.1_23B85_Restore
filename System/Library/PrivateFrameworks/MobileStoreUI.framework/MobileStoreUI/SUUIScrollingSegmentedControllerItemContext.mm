@interface SUUIScrollingSegmentedControllerItemContext
- (SUUIScrollingSegmentedControllerItemContext)initWithViewController:(id)controller;
- (SUUIScrollingSegmentedControllerItemContextDelegate)delegate;
- (void)_applyNewContentInset:(UIEdgeInsets)inset withOldContentInset:(UIEdgeInsets)contentInset toContentScrollView:(id)view;
- (void)applyNewContentInset:(UIEdgeInsets)inset;
- (void)updateAppliedContentInsetsAdjustment;
@end

@implementation SUUIScrollingSegmentedControllerItemContext

- (SUUIScrollingSegmentedControllerItemContext)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SUUIScrollingSegmentedControllerItemContext;
  v6 = [(SUUIScrollingSegmentedControllerItemContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (controllerCopy)
    {
      objc_storeStrong(&v6->_viewController, controller);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)applyNewContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_desiredContentInsetsAdjustment.top, v3), vceqq_f64(*&self->_desiredContentInsetsAdjustment.bottom, v4)))) & 1) == 0)
  {
    self->_desiredContentInsetsAdjustment = inset;
    [(SUUIScrollingSegmentedControllerItemContext *)self updateAppliedContentInsetsAdjustment];
  }
}

- (void)updateAppliedContentInsetsAdjustment
{
  contentScrollView = [(UIViewController *)self->_viewController contentScrollView];
  insetAdjustedContentScrollView = self->_insetAdjustedContentScrollView;
  obj = contentScrollView;
  if (insetAdjustedContentScrollView == contentScrollView)
  {
    if (insetAdjustedContentScrollView)
    {
LABEL_5:
      [(SUUIScrollingSegmentedControllerItemContext *)self _applyNewContentInset:self->_desiredContentInsetsAdjustment.top withOldContentInset:self->_desiredContentInsetsAdjustment.left toContentScrollView:self->_desiredContentInsetsAdjustment.bottom, self->_desiredContentInsetsAdjustment.right, self->_appliedContentInsetsAdjustment.top, self->_appliedContentInsetsAdjustment.left, self->_appliedContentInsetsAdjustment.bottom, self->_appliedContentInsetsAdjustment.right];
      *&self->_appliedContentInsetsAdjustment.top = *&self->_desiredContentInsetsAdjustment.top;
      *&self->_appliedContentInsetsAdjustment.bottom = *&self->_desiredContentInsetsAdjustment.bottom;
    }
  }

  else
  {
    v5 = MEMORY[0x277D768C8];
    if (insetAdjustedContentScrollView)
    {
      [(SUUIScrollingSegmentedControllerItemContext *)self _applyNewContentInset:insetAdjustedContentScrollView withOldContentInset:*MEMORY[0x277D768C8] toContentScrollView:*(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24), self->_appliedContentInsetsAdjustment.top, self->_appliedContentInsetsAdjustment.left, self->_appliedContentInsetsAdjustment.bottom, self->_appliedContentInsetsAdjustment.right];
    }

    v6 = v5[1];
    *&self->_appliedContentInsetsAdjustment.top = *v5;
    *&self->_appliedContentInsetsAdjustment.bottom = v6;
    objc_storeStrong(&self->_insetAdjustedContentScrollView, obj);
    if (self->_insetAdjustedContentScrollView)
    {
      goto LABEL_5;
    }
  }

  if (insetAdjustedContentScrollView != obj)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained contentScrollViewDidChangeForScrollingSegmentedControllerItemContext:self];
    }
  }
}

- (void)_applyNewContentInset:(UIEdgeInsets)inset withOldContentInset:(UIEdgeInsets)contentInset toContentScrollView:(id)view
{
  if (contentInset.left != inset.left || contentInset.top != inset.top || contentInset.right != inset.right || contentInset.bottom != inset.bottom)
  {
    right = contentInset.right;
    bottom = contentInset.bottom;
    left = contentInset.left;
    top = contentInset.top;
    v13 = inset.right;
    v14 = inset.bottom;
    v15 = inset.left;
    v16 = inset.top;
    viewCopy = view;
    [viewCopy contentInset];
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    [viewCopy scrollIndicatorInsets];
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    [viewCopy contentOffset];
    v35 = v26;
    v36 = v25;
    [viewCopy setContentInset:{v16 + v27 - top, v15 + v28 - left, v14 + v29 - bottom, v13 + v30 - right}];
    [viewCopy setScrollIndicatorInsets:{v16 + v31 - top, v15 + v32 - left, v14 + v33 - bottom, v13 + v34 - right}];
    [viewCopy setContentOffset:{v36, top + v35 - v16}];
  }
}

- (SUUIScrollingSegmentedControllerItemContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end