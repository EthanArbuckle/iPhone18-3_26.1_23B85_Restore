@interface HUTopContentOBWelcomeController
- (CGSize)maxSize;
- (HUTopContentOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (HUTopContentOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (HUTopContentOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentView:(id)a6;
- (HUTopContentOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (UIEdgeInsets)contentInsets;
- (void)_updateContentViewContainerConstraints;
- (void)_updateContentViewInsetConstraints;
- (void)_viewDidUpdateContent;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setContentMode:(unint64_t)a3;
- (void)setMaxSize:(CGSize)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HUTopContentOBWelcomeController

- (HUTopContentOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentView:(id)a6
{
  v11 = a6;
  v46.receiver = self;
  v46.super_class = HUTopContentOBWelcomeController;
  v12 = [(HUTopContentOBWelcomeController *)&v46 initWithTitle:a3 detailText:a4 icon:a5 contentLayout:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_centerFillContentView, a6);
    [(UIView *)v13->_centerFillContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13->_contentMode = 1;
    *&v13->_contentInsets.top = xmmword_20D5CAA60;
    *&v13->_contentInsets.bottom = xmmword_20D5CAA60;
    v13->_maxSize = *MEMORY[0x277CBF3A8];
    v14 = [(HUTopContentOBWelcomeController *)v13 contentView];
    v15 = [v14 heightAnchor];
    v16 = [v15 constraintEqualToConstant:1.0];
    contentViewContainerHeightConstraint = v13->_contentViewContainerHeightConstraint;
    v13->_contentViewContainerHeightConstraint = v16;

    v18 = [(HUTopContentOBWelcomeController *)v13 contentView];
    v19 = [v18 widthAnchor];
    v20 = [v19 constraintEqualToConstant:1.0];
    contentViewContainerWidthConstraint = v13->_contentViewContainerWidthConstraint;
    v13->_contentViewContainerWidthConstraint = v20;

    v22 = [(UIView *)v13->_centerFillContentView topAnchor];
    v23 = [(HUTopContentOBWelcomeController *)v13 contentView];
    v24 = [v23 topAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    contentViewTopConstraint = v13->_contentViewTopConstraint;
    v13->_contentViewTopConstraint = v25;

    v27 = [(UIView *)v13->_centerFillContentView bottomAnchor];
    v28 = [(HUTopContentOBWelcomeController *)v13 contentView];
    v29 = [v28 bottomAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    contentViewBottomConstraint = v13->_contentViewBottomConstraint;
    v13->_contentViewBottomConstraint = v30;

    v32 = [(UIView *)v13->_centerFillContentView leadingAnchor];
    v33 = [(HUTopContentOBWelcomeController *)v13 contentView];
    v34 = [v33 leadingAnchor];
    v35 = [v32 constraintEqualToAnchor:v34];
    contentViewLeadingConstraint = v13->_contentViewLeadingConstraint;
    v13->_contentViewLeadingConstraint = v35;

    v37 = [(UIView *)v13->_centerFillContentView trailingAnchor];
    v38 = [(HUTopContentOBWelcomeController *)v13 contentView];
    v39 = [v38 trailingAnchor];
    v40 = [v37 constraintEqualToAnchor:v39];
    contentViewTrailingConstraint = v13->_contentViewTrailingConstraint;
    v13->_contentViewTrailingConstraint = v40;

    v42 = [(HUTopContentOBWelcomeController *)v13 contentView];
    [v42 addSubview:v13->_centerFillContentView];

    v43 = [(HUTopContentOBWelcomeController *)v13 contentView];
    v44 = [MEMORY[0x277D75348] clearColor];
    [v43 setBackgroundColor:v44];
  }

  return v13;
}

- (HUTopContentOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithTitle_detailText_icon_contentView_);
  [v8 handleFailureInMethod:a2 object:self file:@"HUTopContentOBWelcomeController.m" lineNumber:70 description:{@"%s is unavailable; use %@ instead", "-[HUTopContentOBWelcomeController initWithTitle:detailText:symbolName:contentLayout:]", v9}];

  return 0;
}

- (HUTopContentOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithTitle_detailText_icon_contentView_);
  [v8 handleFailureInMethod:a2 object:self file:@"HUTopContentOBWelcomeController.m" lineNumber:75 description:{@"%s is unavailable; use %@ instead", "-[HUTopContentOBWelcomeController initWithTitle:detailText:icon:contentLayout:]", v9}];

  return 0;
}

- (HUTopContentOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithTitle_detailText_icon_contentView_);
  [v7 handleFailureInMethod:a2 object:self file:@"HUTopContentOBWelcomeController.m" lineNumber:80 description:{@"%s is unavailable; use %@ instead", "-[HUTopContentOBWelcomeController initWithTitle:detailText:icon:]", v8}];

  return 0;
}

- (void)setContentMode:(unint64_t)a3
{
  if (self->_contentMode != a3)
  {
    self->_contentMode = a3;
    if ([(HUTopContentOBWelcomeController *)self isViewLoaded])
    {
      [(HUTopContentOBWelcomeController *)self _updateContentViewContainerConstraints];

      [(HUTopContentOBWelcomeController *)self _updateContentViewInsetConstraints];
    }
  }
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    if ([(HUTopContentOBWelcomeController *)self isViewLoaded])
    {
      [(HUTopContentOBWelcomeController *)self _updateContentViewContainerConstraints];

      [(HUTopContentOBWelcomeController *)self _updateContentViewInsetConstraints];
    }
  }
}

- (void)setMaxSize:(CGSize)a3
{
  if (self->_maxSize.width != a3.width || self->_maxSize.height != a3.height)
  {
    self->_maxSize = a3;
    if ([(HUTopContentOBWelcomeController *)self isViewLoaded])
    {
      [(HUTopContentOBWelcomeController *)self _updateContentViewContainerConstraints];

      [(HUTopContentOBWelcomeController *)self _updateContentViewInsetConstraints];
    }
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUTopContentOBWelcomeController;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  [(HUTopContentOBWelcomeController *)self _updateContentViewContainerConstraints];
  [(HUTopContentOBWelcomeController *)self _updateContentViewInsetConstraints];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUTopContentOBWelcomeController;
  [(HUTopContentOBWelcomeController *)&v3 viewWillLayoutSubviews];
  [(HUTopContentOBWelcomeController *)self _updateContentViewContainerConstraints];
}

- (void)_viewDidUpdateContent
{
  [(HUTopContentOBWelcomeController *)self _updateContentViewContainerConstraints];

  [(HUTopContentOBWelcomeController *)self _updateContentViewInsetConstraints];
}

- (void)_updateContentViewContainerConstraints
{
  if ([(HUTopContentOBWelcomeController *)self contentMode]!= 1)
  {
    v8 = [(HUTopContentOBWelcomeController *)self contentViewContainerHeightConstraint];
    [v8 setActive:0];

    v9 = [(HUTopContentOBWelcomeController *)self contentViewContainerWidthConstraint];
    v34 = v9;
    v10 = 0;
LABEL_14:
    [v9 setActive:v10];

    return;
  }

  [(HUTopContentOBWelcomeController *)self maxSize];
  if (v3 > 0.0)
  {
    [(HUTopContentOBWelcomeController *)self maxSize];
    v7 = v11;
  }

  else
  {
    v4 = [(HUTopContentOBWelcomeController *)self contentView];
    v5 = [v4 superview];
    [v5 frame];
    v7 = v6 * 0.8;
  }

  [(HUTopContentOBWelcomeController *)self maxSize];
  if (v12 <= 0.0)
  {
    [(HUTopContentOBWelcomeController *)self availableContentViewHeight];
    v14 = v15;
  }

  else
  {
    [(HUTopContentOBWelcomeController *)self maxSize];
    v14 = v13;
  }

  if (v7 > 0.0)
  {
    [(HUTopContentOBWelcomeController *)self contentInsets];
    v17 = v16;
    [(HUTopContentOBWelcomeController *)self contentInsets];
    v19 = v7 - (v17 + v18);
    [(HUTopContentOBWelcomeController *)self _contentAspectRatio];
    v21 = ceil(v19 / v20);
    [(HUTopContentOBWelcomeController *)self contentInsets];
    v23 = v22;
    [(HUTopContentOBWelcomeController *)self contentInsets];
    v25 = v21 + v23 + v24;
    if (v25 > v14 && [(HUTopContentOBWelcomeController *)self _limitToNonScrollingContentHeight])
    {
      [(HUTopContentOBWelcomeController *)self contentInsets];
      v27 = v26;
      [(HUTopContentOBWelcomeController *)self contentInsets];
      v29 = v14 - (v27 + v28);
      [(HUTopContentOBWelcomeController *)self _contentAspectRatio];
      v7 = ceil(v30 * v29);
      v25 = v14;
    }

    v31 = [(HUTopContentOBWelcomeController *)self contentViewContainerWidthConstraint];
    [v31 setConstant:v7];

    v32 = [(HUTopContentOBWelcomeController *)self contentViewContainerWidthConstraint];
    [v32 setActive:1];

    v33 = [(HUTopContentOBWelcomeController *)self contentViewContainerHeightConstraint];
    [v33 setConstant:v25];

    v9 = [(HUTopContentOBWelcomeController *)self contentViewContainerHeightConstraint];
    v34 = v9;
    v10 = 1;
    goto LABEL_14;
  }
}

- (void)_updateContentViewInsetConstraints
{
  if ([(HUTopContentOBWelcomeController *)self contentMode]== 1)
  {
    [(HUTopContentOBWelcomeController *)self contentInsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v3 = *MEMORY[0x277D768C8];
    v5 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 16);
    v9 = *(MEMORY[0x277D768C8] + 24);
  }

  v10 = v3 + -20.0;
  v11 = [(HUTopContentOBWelcomeController *)self contentViewTopConstraint];
  [v11 setConstant:v10];

  v12 = [(HUTopContentOBWelcomeController *)self contentViewTopConstraint];
  [v12 setActive:1];

  v13 = [(HUTopContentOBWelcomeController *)self contentViewBottomConstraint];
  [v13 setConstant:-20.0 - v7];

  v14 = [(HUTopContentOBWelcomeController *)self contentViewBottomConstraint];
  [v14 setActive:1];

  v15 = [(HUTopContentOBWelcomeController *)self contentViewLeadingConstraint];
  [v15 setConstant:v5];

  v16 = [(HUTopContentOBWelcomeController *)self contentViewLeadingConstraint];
  [v16 setActive:1];

  v17 = [(HUTopContentOBWelcomeController *)self contentViewTrailingConstraint];
  [v17 setConstant:-v9];

  v18 = [(HUTopContentOBWelcomeController *)self contentViewTrailingConstraint];
  [v18 setActive:1];
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end