@interface HUPCCenterFillContentController
- (HUPCCenterFillContentController)initWithTitle:(id)a3 detailText:(id)a4 contentView:(id)a5;
- (UIEdgeInsets)contentInsets;
- (void)_updateContentViewContainerConstraints;
- (void)_updateContentViewInsetConstraints;
- (void)_viewDidUpdateContent;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setContentMode:(unint64_t)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HUPCCenterFillContentController

- (HUPCCenterFillContentController)initWithTitle:(id)a3 detailText:(id)a4 contentView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v38.receiver = self;
  v38.super_class = HUPCCenterFillContentController;
  v11 = [(HUPCCenterFillContentController *)&v38 initWithContentView:0];
  v12 = v11;
  if (v11)
  {
    [(HUPCCenterFillContentController *)v11 setTitle:v8];
    [(HUPCCenterFillContentController *)v12 setSubtitle:v9];
    objc_storeStrong(&v12->_centerFillContentView, a5);
    [(UIView *)v12->_centerFillContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    contentViewContainer = v12->_contentViewContainer;
    v12->_contentViewContainer = v13;

    [(UIView *)v12->_contentViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v12->_contentViewContainer addSubview:v12->_centerFillContentView];
    v12->_contentMode = 1;
    *&v12->_contentInsets.top = xmmword_20D5CAA60;
    *&v12->_contentInsets.bottom = xmmword_20D5CAA60;
    v15 = [(UIView *)v12->_contentViewContainer heightAnchor];
    v16 = [v15 constraintEqualToConstant:1.0];
    contentViewContainerHeightConstraint = v12->_contentViewContainerHeightConstraint;
    v12->_contentViewContainerHeightConstraint = v16;

    v18 = [(UIView *)v12->_contentViewContainer widthAnchor];
    v19 = [v18 constraintEqualToConstant:1.0];
    contentViewContainerWidthConstraint = v12->_contentViewContainerWidthConstraint;
    v12->_contentViewContainerWidthConstraint = v19;

    v21 = [(UIView *)v12->_centerFillContentView topAnchor];
    v22 = [(UIView *)v12->_contentViewContainer topAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    contentViewTopConstraint = v12->_contentViewTopConstraint;
    v12->_contentViewTopConstraint = v23;

    v25 = [(UIView *)v12->_centerFillContentView bottomAnchor];
    v26 = [(UIView *)v12->_contentViewContainer bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    contentViewBottomConstraint = v12->_contentViewBottomConstraint;
    v12->_contentViewBottomConstraint = v27;

    v29 = [(UIView *)v12->_centerFillContentView leadingAnchor];
    v30 = [(UIView *)v12->_contentViewContainer leadingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    contentViewLeadingConstraint = v12->_contentViewLeadingConstraint;
    v12->_contentViewLeadingConstraint = v31;

    v33 = [(UIView *)v12->_centerFillContentView trailingAnchor];
    v34 = [(UIView *)v12->_contentViewContainer trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    contentViewTrailingConstraint = v12->_contentViewTrailingConstraint;
    v12->_contentViewTrailingConstraint = v35;

    [(HUPCFullCenterContentViewController *)v12 setCenteredContentView:v12->_contentViewContainer];
  }

  return v12;
}

- (void)setContentMode:(unint64_t)a3
{
  if (self->_contentMode != a3)
  {
    self->_contentMode = a3;
    if ([(HUPCCenterFillContentController *)self isViewLoaded])
    {
      [(HUPCCenterFillContentController *)self _updateContentViewContainerConstraints];

      [(HUPCCenterFillContentController *)self _updateContentViewInsetConstraints];
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
    if ([(HUPCCenterFillContentController *)self isViewLoaded])
    {
      [(HUPCCenterFillContentController *)self _updateContentViewContainerConstraints];

      [(HUPCCenterFillContentController *)self _updateContentViewInsetConstraints];
    }
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUPCCenterFillContentController;
  [(HUPCFullCenterContentViewController *)&v3 viewDidLoad];
  [(HUPCCenterFillContentController *)self _updateContentViewContainerConstraints];
  [(HUPCCenterFillContentController *)self _updateContentViewInsetConstraints];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUPCCenterFillContentController;
  [(HUPCCenterFillContentController *)&v3 viewWillLayoutSubviews];
  [(HUPCCenterFillContentController *)self _updateContentViewContainerConstraints];
}

- (void)_viewDidUpdateContent
{
  [(HUPCCenterFillContentController *)self _updateContentViewContainerConstraints];

  [(HUPCCenterFillContentController *)self _updateContentViewInsetConstraints];
}

- (void)_updateContentViewContainerConstraints
{
  if ([(HUPCCenterFillContentController *)self contentMode]== 1)
  {
    v3 = [(HUPCCenterFillContentController *)self contentViewContainer];
    v4 = [v3 superview];
    [v4 frame];
    v6 = v5;

    if (v6 <= 0.0)
    {
      return;
    }

    [(HUPCCenterFillContentController *)self contentInsets];
    v8 = v7;
    [(HUPCCenterFillContentController *)self contentInsets];
    v10 = v6 - (v8 + v9);
    [(HUPCCenterFillContentController *)self _contentAspectRatio];
    v12 = ceil(v10 / v11);
    [(HUPCCenterFillContentController *)self contentInsets];
    v14 = v13;
    [(HUPCCenterFillContentController *)self contentInsets];
    v16 = v12 + v14 + v15;
    v17 = [(HUPCCenterFillContentController *)self contentViewContainerWidthConstraint];
    [v17 setConstant:v6];

    v18 = [(HUPCCenterFillContentController *)self contentViewContainerWidthConstraint];
    [v18 setActive:1];

    v19 = [(HUPCCenterFillContentController *)self contentViewContainerHeightConstraint];
    [v19 setConstant:v16];

    v20 = [(HUPCCenterFillContentController *)self contentViewContainerHeightConstraint];
    v23 = v20;
    v21 = 1;
  }

  else
  {
    v22 = [(HUPCCenterFillContentController *)self contentViewContainerHeightConstraint];
    [v22 setActive:0];

    v20 = [(HUPCCenterFillContentController *)self contentViewContainerWidthConstraint];
    v23 = v20;
    v21 = 0;
  }

  [v20 setActive:v21];
}

- (void)_updateContentViewInsetConstraints
{
  if ([(HUPCCenterFillContentController *)self contentMode]== 1)
  {
    [(HUPCCenterFillContentController *)self contentInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = *MEMORY[0x277D768C8];
    v6 = *(MEMORY[0x277D768C8] + 8);
    v8 = *(MEMORY[0x277D768C8] + 16);
    v10 = *(MEMORY[0x277D768C8] + 24);
  }

  v11 = [(HUPCCenterFillContentController *)self contentViewTopConstraint];
  [v11 setConstant:v4];

  v12 = [(HUPCCenterFillContentController *)self contentViewTopConstraint];
  [v12 setActive:1];

  v13 = [(HUPCCenterFillContentController *)self contentViewBottomConstraint];
  [v13 setConstant:-v8];

  v14 = [(HUPCCenterFillContentController *)self contentViewBottomConstraint];
  [v14 setActive:1];

  v15 = [(HUPCCenterFillContentController *)self contentViewLeadingConstraint];
  [v15 setConstant:v6];

  v16 = [(HUPCCenterFillContentController *)self contentViewLeadingConstraint];
  [v16 setActive:1];

  v17 = [(HUPCCenterFillContentController *)self contentViewTrailingConstraint];
  [v17 setConstant:-v10];

  v18 = [(HUPCCenterFillContentController *)self contentViewTrailingConstraint];
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

@end