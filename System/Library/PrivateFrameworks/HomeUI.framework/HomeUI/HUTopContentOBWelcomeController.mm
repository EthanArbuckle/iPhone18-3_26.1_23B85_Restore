@interface HUTopContentOBWelcomeController
- (CGSize)maxSize;
- (HUTopContentOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (HUTopContentOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (HUTopContentOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentView:(id)view;
- (HUTopContentOBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (UIEdgeInsets)contentInsets;
- (void)_updateContentViewContainerConstraints;
- (void)_updateContentViewInsetConstraints;
- (void)_viewDidUpdateContent;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)setContentMode:(unint64_t)mode;
- (void)setMaxSize:(CGSize)size;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HUTopContentOBWelcomeController

- (HUTopContentOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentView:(id)view
{
  viewCopy = view;
  v46.receiver = self;
  v46.super_class = HUTopContentOBWelcomeController;
  v12 = [(HUTopContentOBWelcomeController *)&v46 initWithTitle:title detailText:text icon:icon contentLayout:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_centerFillContentView, view);
    [(UIView *)v13->_centerFillContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13->_contentMode = 1;
    *&v13->_contentInsets.top = xmmword_20D5CAA60;
    *&v13->_contentInsets.bottom = xmmword_20D5CAA60;
    v13->_maxSize = *MEMORY[0x277CBF3A8];
    contentView = [(HUTopContentOBWelcomeController *)v13 contentView];
    heightAnchor = [contentView heightAnchor];
    v16 = [heightAnchor constraintEqualToConstant:1.0];
    contentViewContainerHeightConstraint = v13->_contentViewContainerHeightConstraint;
    v13->_contentViewContainerHeightConstraint = v16;

    contentView2 = [(HUTopContentOBWelcomeController *)v13 contentView];
    widthAnchor = [contentView2 widthAnchor];
    v20 = [widthAnchor constraintEqualToConstant:1.0];
    contentViewContainerWidthConstraint = v13->_contentViewContainerWidthConstraint;
    v13->_contentViewContainerWidthConstraint = v20;

    topAnchor = [(UIView *)v13->_centerFillContentView topAnchor];
    contentView3 = [(HUTopContentOBWelcomeController *)v13 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    contentViewTopConstraint = v13->_contentViewTopConstraint;
    v13->_contentViewTopConstraint = v25;

    bottomAnchor = [(UIView *)v13->_centerFillContentView bottomAnchor];
    contentView4 = [(HUTopContentOBWelcomeController *)v13 contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    contentViewBottomConstraint = v13->_contentViewBottomConstraint;
    v13->_contentViewBottomConstraint = v30;

    leadingAnchor = [(UIView *)v13->_centerFillContentView leadingAnchor];
    contentView5 = [(HUTopContentOBWelcomeController *)v13 contentView];
    leadingAnchor2 = [contentView5 leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    contentViewLeadingConstraint = v13->_contentViewLeadingConstraint;
    v13->_contentViewLeadingConstraint = v35;

    trailingAnchor = [(UIView *)v13->_centerFillContentView trailingAnchor];
    contentView6 = [(HUTopContentOBWelcomeController *)v13 contentView];
    trailingAnchor2 = [contentView6 trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    contentViewTrailingConstraint = v13->_contentViewTrailingConstraint;
    v13->_contentViewTrailingConstraint = v40;

    contentView7 = [(HUTopContentOBWelcomeController *)v13 contentView];
    [contentView7 addSubview:v13->_centerFillContentView];

    contentView8 = [(HUTopContentOBWelcomeController *)v13 contentView];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [contentView8 setBackgroundColor:clearColor];
  }

  return v13;
}

- (HUTopContentOBWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithTitle_detailText_icon_contentView_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTopContentOBWelcomeController.m" lineNumber:70 description:{@"%s is unavailable; use %@ instead", "-[HUTopContentOBWelcomeController initWithTitle:detailText:symbolName:contentLayout:]", v9}];

  return 0;
}

- (HUTopContentOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithTitle_detailText_icon_contentView_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTopContentOBWelcomeController.m" lineNumber:75 description:{@"%s is unavailable; use %@ instead", "-[HUTopContentOBWelcomeController initWithTitle:detailText:icon:contentLayout:]", v9}];

  return 0;
}

- (HUTopContentOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithTitle_detailText_icon_contentView_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTopContentOBWelcomeController.m" lineNumber:80 description:{@"%s is unavailable; use %@ instead", "-[HUTopContentOBWelcomeController initWithTitle:detailText:icon:]", v8}];

  return 0;
}

- (void)setContentMode:(unint64_t)mode
{
  if (self->_contentMode != mode)
  {
    self->_contentMode = mode;
    if ([(HUTopContentOBWelcomeController *)self isViewLoaded])
    {
      [(HUTopContentOBWelcomeController *)self _updateContentViewContainerConstraints];

      [(HUTopContentOBWelcomeController *)self _updateContentViewInsetConstraints];
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
    if ([(HUTopContentOBWelcomeController *)self isViewLoaded])
    {
      [(HUTopContentOBWelcomeController *)self _updateContentViewContainerConstraints];

      [(HUTopContentOBWelcomeController *)self _updateContentViewInsetConstraints];
    }
  }
}

- (void)setMaxSize:(CGSize)size
{
  if (self->_maxSize.width != size.width || self->_maxSize.height != size.height)
  {
    self->_maxSize = size;
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
    contentViewContainerHeightConstraint = [(HUTopContentOBWelcomeController *)self contentViewContainerHeightConstraint];
    [contentViewContainerHeightConstraint setActive:0];

    contentViewContainerWidthConstraint = [(HUTopContentOBWelcomeController *)self contentViewContainerWidthConstraint];
    v34 = contentViewContainerWidthConstraint;
    v10 = 0;
LABEL_14:
    [contentViewContainerWidthConstraint setActive:v10];

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
    contentView = [(HUTopContentOBWelcomeController *)self contentView];
    superview = [contentView superview];
    [superview frame];
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

    contentViewContainerWidthConstraint2 = [(HUTopContentOBWelcomeController *)self contentViewContainerWidthConstraint];
    [contentViewContainerWidthConstraint2 setConstant:v7];

    contentViewContainerWidthConstraint3 = [(HUTopContentOBWelcomeController *)self contentViewContainerWidthConstraint];
    [contentViewContainerWidthConstraint3 setActive:1];

    contentViewContainerHeightConstraint2 = [(HUTopContentOBWelcomeController *)self contentViewContainerHeightConstraint];
    [contentViewContainerHeightConstraint2 setConstant:v25];

    contentViewContainerWidthConstraint = [(HUTopContentOBWelcomeController *)self contentViewContainerHeightConstraint];
    v34 = contentViewContainerWidthConstraint;
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
  contentViewTopConstraint = [(HUTopContentOBWelcomeController *)self contentViewTopConstraint];
  [contentViewTopConstraint setConstant:v10];

  contentViewTopConstraint2 = [(HUTopContentOBWelcomeController *)self contentViewTopConstraint];
  [contentViewTopConstraint2 setActive:1];

  contentViewBottomConstraint = [(HUTopContentOBWelcomeController *)self contentViewBottomConstraint];
  [contentViewBottomConstraint setConstant:-20.0 - v7];

  contentViewBottomConstraint2 = [(HUTopContentOBWelcomeController *)self contentViewBottomConstraint];
  [contentViewBottomConstraint2 setActive:1];

  contentViewLeadingConstraint = [(HUTopContentOBWelcomeController *)self contentViewLeadingConstraint];
  [contentViewLeadingConstraint setConstant:v5];

  contentViewLeadingConstraint2 = [(HUTopContentOBWelcomeController *)self contentViewLeadingConstraint];
  [contentViewLeadingConstraint2 setActive:1];

  contentViewTrailingConstraint = [(HUTopContentOBWelcomeController *)self contentViewTrailingConstraint];
  [contentViewTrailingConstraint setConstant:-v9];

  contentViewTrailingConstraint2 = [(HUTopContentOBWelcomeController *)self contentViewTrailingConstraint];
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

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end