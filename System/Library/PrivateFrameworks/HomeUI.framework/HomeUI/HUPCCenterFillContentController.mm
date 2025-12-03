@interface HUPCCenterFillContentController
- (HUPCCenterFillContentController)initWithTitle:(id)title detailText:(id)text contentView:(id)view;
- (UIEdgeInsets)contentInsets;
- (void)_updateContentViewContainerConstraints;
- (void)_updateContentViewInsetConstraints;
- (void)_viewDidUpdateContent;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)setContentMode:(unint64_t)mode;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HUPCCenterFillContentController

- (HUPCCenterFillContentController)initWithTitle:(id)title detailText:(id)text contentView:(id)view
{
  titleCopy = title;
  textCopy = text;
  viewCopy = view;
  v38.receiver = self;
  v38.super_class = HUPCCenterFillContentController;
  v11 = [(HUPCCenterFillContentController *)&v38 initWithContentView:0];
  v12 = v11;
  if (v11)
  {
    [(HUPCCenterFillContentController *)v11 setTitle:titleCopy];
    [(HUPCCenterFillContentController *)v12 setSubtitle:textCopy];
    objc_storeStrong(&v12->_centerFillContentView, view);
    [(UIView *)v12->_centerFillContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    contentViewContainer = v12->_contentViewContainer;
    v12->_contentViewContainer = v13;

    [(UIView *)v12->_contentViewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v12->_contentViewContainer addSubview:v12->_centerFillContentView];
    v12->_contentMode = 1;
    *&v12->_contentInsets.top = xmmword_20D5CAA60;
    *&v12->_contentInsets.bottom = xmmword_20D5CAA60;
    heightAnchor = [(UIView *)v12->_contentViewContainer heightAnchor];
    v16 = [heightAnchor constraintEqualToConstant:1.0];
    contentViewContainerHeightConstraint = v12->_contentViewContainerHeightConstraint;
    v12->_contentViewContainerHeightConstraint = v16;

    widthAnchor = [(UIView *)v12->_contentViewContainer widthAnchor];
    v19 = [widthAnchor constraintEqualToConstant:1.0];
    contentViewContainerWidthConstraint = v12->_contentViewContainerWidthConstraint;
    v12->_contentViewContainerWidthConstraint = v19;

    topAnchor = [(UIView *)v12->_centerFillContentView topAnchor];
    topAnchor2 = [(UIView *)v12->_contentViewContainer topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
    contentViewTopConstraint = v12->_contentViewTopConstraint;
    v12->_contentViewTopConstraint = v23;

    bottomAnchor = [(UIView *)v12->_centerFillContentView bottomAnchor];
    bottomAnchor2 = [(UIView *)v12->_contentViewContainer bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    contentViewBottomConstraint = v12->_contentViewBottomConstraint;
    v12->_contentViewBottomConstraint = v27;

    leadingAnchor = [(UIView *)v12->_centerFillContentView leadingAnchor];
    leadingAnchor2 = [(UIView *)v12->_contentViewContainer leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    contentViewLeadingConstraint = v12->_contentViewLeadingConstraint;
    v12->_contentViewLeadingConstraint = v31;

    trailingAnchor = [(UIView *)v12->_centerFillContentView trailingAnchor];
    trailingAnchor2 = [(UIView *)v12->_contentViewContainer trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    contentViewTrailingConstraint = v12->_contentViewTrailingConstraint;
    v12->_contentViewTrailingConstraint = v35;

    [(HUPCFullCenterContentViewController *)v12 setCenteredContentView:v12->_contentViewContainer];
  }

  return v12;
}

- (void)setContentMode:(unint64_t)mode
{
  if (self->_contentMode != mode)
  {
    self->_contentMode = mode;
    if ([(HUPCCenterFillContentController *)self isViewLoaded])
    {
      [(HUPCCenterFillContentController *)self _updateContentViewContainerConstraints];

      [(HUPCCenterFillContentController *)self _updateContentViewInsetConstraints];
    }
  }
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
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
    contentViewContainer = [(HUPCCenterFillContentController *)self contentViewContainer];
    superview = [contentViewContainer superview];
    [superview frame];
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
    contentViewContainerWidthConstraint = [(HUPCCenterFillContentController *)self contentViewContainerWidthConstraint];
    [contentViewContainerWidthConstraint setConstant:v6];

    contentViewContainerWidthConstraint2 = [(HUPCCenterFillContentController *)self contentViewContainerWidthConstraint];
    [contentViewContainerWidthConstraint2 setActive:1];

    contentViewContainerHeightConstraint = [(HUPCCenterFillContentController *)self contentViewContainerHeightConstraint];
    [contentViewContainerHeightConstraint setConstant:v16];

    contentViewContainerHeightConstraint2 = [(HUPCCenterFillContentController *)self contentViewContainerHeightConstraint];
    v23 = contentViewContainerHeightConstraint2;
    v21 = 1;
  }

  else
  {
    contentViewContainerHeightConstraint3 = [(HUPCCenterFillContentController *)self contentViewContainerHeightConstraint];
    [contentViewContainerHeightConstraint3 setActive:0];

    contentViewContainerHeightConstraint2 = [(HUPCCenterFillContentController *)self contentViewContainerWidthConstraint];
    v23 = contentViewContainerHeightConstraint2;
    v21 = 0;
  }

  [contentViewContainerHeightConstraint2 setActive:v21];
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

  contentViewTopConstraint = [(HUPCCenterFillContentController *)self contentViewTopConstraint];
  [contentViewTopConstraint setConstant:v4];

  contentViewTopConstraint2 = [(HUPCCenterFillContentController *)self contentViewTopConstraint];
  [contentViewTopConstraint2 setActive:1];

  contentViewBottomConstraint = [(HUPCCenterFillContentController *)self contentViewBottomConstraint];
  [contentViewBottomConstraint setConstant:-v8];

  contentViewBottomConstraint2 = [(HUPCCenterFillContentController *)self contentViewBottomConstraint];
  [contentViewBottomConstraint2 setActive:1];

  contentViewLeadingConstraint = [(HUPCCenterFillContentController *)self contentViewLeadingConstraint];
  [contentViewLeadingConstraint setConstant:v6];

  contentViewLeadingConstraint2 = [(HUPCCenterFillContentController *)self contentViewLeadingConstraint];
  [contentViewLeadingConstraint2 setActive:1];

  contentViewTrailingConstraint = [(HUPCCenterFillContentController *)self contentViewTrailingConstraint];
  [contentViewTrailingConstraint setConstant:-v10];

  contentViewTrailingConstraint2 = [(HUPCCenterFillContentController *)self contentViewTrailingConstraint];
  [contentViewTrailingConstraint2 setActive:1];
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