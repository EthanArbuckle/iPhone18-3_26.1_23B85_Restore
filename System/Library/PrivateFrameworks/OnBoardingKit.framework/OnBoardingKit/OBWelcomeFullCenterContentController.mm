@interface OBWelcomeFullCenterContentController
- (double)_availablePreScrollContentHeight;
- (void)insertCenterContentView;
- (void)recalculateLayoutForTraitCollectionChange;
- (void)setCenteredContentView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation OBWelcomeFullCenterContentController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OBWelcomeFullCenterContentController;
  [(OBWelcomeController *)&v3 viewDidLoad];
  [(OBWelcomeFullCenterContentController *)self insertCenterContentView];
}

- (void)setCenteredContentView:(id)view
{
  viewCopy = view;
  centerContentView = [(OBWelcomeFullCenterContentController *)self centerContentView];

  if (centerContentView != viewCopy)
  {
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    centerContentView2 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    superview = [centerContentView2 superview];
    contentView = [(OBWelcomeController *)self contentView];

    if (superview == contentView)
    {
      centerContentView3 = [(OBWelcomeFullCenterContentController *)self centerContentView];
      [centerContentView3 removeFromSuperview];
    }

    [(OBWelcomeFullCenterContentController *)self setCenterContentView:viewCopy];
  }

  if ([(OBWelcomeFullCenterContentController *)self isViewLoaded])
  {
    [(OBWelcomeFullCenterContentController *)self insertCenterContentView];
  }
}

- (void)insertCenterContentView
{
  v47[4] = *MEMORY[0x1E69E9840];
  centerContentView = [(OBWelcomeFullCenterContentController *)self centerContentView];
  superview = [centerContentView superview];
  contentView = [(OBWelcomeController *)self contentView];

  if (superview != contentView)
  {
    centerContentView2 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    [centerContentView2 removeFromSuperview];

    contentView2 = [(OBWelcomeController *)self contentView];
    centerContentView3 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    [contentView2 addSubview:centerContentView3];

    centerContentView4 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    centerXAnchor = [centerContentView4 centerXAnchor];
    contentView3 = [(OBWelcomeController *)self contentView];
    centerXAnchor2 = [contentView3 centerXAnchor];
    v42 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v47[0] = v42;
    centerContentView5 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    centerYAnchor = [centerContentView5 centerYAnchor];
    contentView4 = [(OBWelcomeController *)self contentView];
    centerYAnchor2 = [contentView4 centerYAnchor];
    v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v47[1] = v37;
    contentView5 = [(OBWelcomeController *)self contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    centerContentView6 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    bottomAnchor2 = [centerContentView6 bottomAnchor];
    v11 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    v47[2] = v11;
    contentView6 = [(OBWelcomeController *)self contentView];
    topAnchor = [contentView6 topAnchor];
    centerContentView7 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    topAnchor2 = [centerContentView7 topAnchor];
    v16 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2];
    v47[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
    [(OBWelcomeFullCenterContentController *)self setFloatingConstraintGroup:v17];

    contentView7 = [(OBWelcomeController *)self contentView];
    heightAnchor = [contentView7 heightAnchor];
    [(OBWelcomeFullCenterContentController *)self _availablePreScrollContentHeight];
    v20 = [heightAnchor constraintEqualToConstant:?];
    [(OBWelcomeFullCenterContentController *)self setContentViewOptionalHeightAnchor:v20];

    contentViewOptionalHeightAnchor = [(OBWelcomeFullCenterContentController *)self contentViewOptionalHeightAnchor];
    [contentViewOptionalHeightAnchor setActive:1];

    contentViewOptionalHeightAnchor2 = [(OBWelcomeFullCenterContentController *)self contentViewOptionalHeightAnchor];
    LODWORD(v23) = 1132068864;
    [contentViewOptionalHeightAnchor2 setPriority:v23];

    v24 = MEMORY[0x1E696ACD8];
    floatingConstraintGroup = [(OBWelcomeFullCenterContentController *)self floatingConstraintGroup];
    [v24 activateConstraints:floatingConstraintGroup];

    centerContentView8 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    widthAnchor = [centerContentView8 widthAnchor];
    contentView8 = [(OBWelcomeController *)self contentView];
    widthAnchor2 = [contentView8 widthAnchor];
    v30 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    [v30 setActive:1];

    centerContentView9 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    contentView9 = [(OBWelcomeController *)self contentView];
    v33 = [centerContentView9 ob_pinToEdgesConstraints:contentView9];
    [(OBWelcomeFullCenterContentController *)self setPinnedConstraintGroup:v33];
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)viewDidLayoutSubviews
{
  [(OBWelcomeFullCenterContentController *)self _availablePreScrollContentHeight];
  v4 = v3;
  contentViewOptionalHeightAnchor = [(OBWelcomeFullCenterContentController *)self contentViewOptionalHeightAnchor];
  [contentViewOptionalHeightAnchor setConstant:v4];

  v15.receiver = self;
  v15.super_class = OBWelcomeFullCenterContentController;
  [(OBWelcomeController *)&v15 viewDidLayoutSubviews];
  [(OBWelcomeFullCenterContentController *)self recalculateLayoutForTraitCollectionChange];
  headerView = [(OBWelcomeController *)self headerView];
  [headerView frame];
  if (v7 == 0.0)
  {
    headerView2 = [(OBWelcomeController *)self headerView];
    headerLabel = [headerView2 headerLabel];
    text = [headerLabel text];
    if ([text length])
    {
    }

    else
    {
      headerView3 = [(OBWelcomeController *)self headerView];
      detailLabel = [headerView3 detailLabel];
      text2 = [detailLabel text];
      v14 = [text2 length];

      if (!v14)
      {
        return;
      }
    }

    headerView = [(OBWelcomeFullCenterContentController *)self view];
    [headerView setNeedsLayout];
  }
}

- (double)_availablePreScrollContentHeight
{
  scrollView = [(OBWelcomeController *)self scrollView];
  [scrollView bounds];
  v5 = v4;

  contentView = [(OBWelcomeController *)self contentView];
  [contentView frame];
  v8 = v5 - v7;

  buttonTray = [(OBWelcomeController *)self buttonTray];
  [buttonTray bounds];
  v11 = v8 - v10;

  return v11;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = OBWelcomeFullCenterContentController;
  [(OBWelcomeController *)&v4 traitCollectionDidChange:change];
  [(OBWelcomeFullCenterContentController *)self recalculateLayoutForTraitCollectionChange];
}

- (void)recalculateLayoutForTraitCollectionChange
{
  centerContentView = [(OBWelcomeFullCenterContentController *)self centerContentView];
  [centerContentView bounds];
  v5 = v4;
  [(OBWelcomeFullCenterContentController *)self _availablePreScrollContentHeight];
  if (v5 <= v6)
  {
  }

  else
  {
    floatingConstraintGroup = [(OBWelcomeFullCenterContentController *)self floatingConstraintGroup];
    firstObject = [floatingConstraintGroup firstObject];
    isActive = [firstObject isActive];

    if (isActive)
    {
      v10 = MEMORY[0x1E696ACD8];
      floatingConstraintGroup2 = [(OBWelcomeFullCenterContentController *)self floatingConstraintGroup];
      [v10 deactivateConstraints:floatingConstraintGroup2];

      v12 = MEMORY[0x1E696ACD8];
      pinnedConstraintGroup = [(OBWelcomeFullCenterContentController *)self pinnedConstraintGroup];
LABEL_8:
      centerContentView2 = pinnedConstraintGroup;
      [v12 activateConstraints:?];
      goto LABEL_9;
    }
  }

  centerContentView2 = [(OBWelcomeFullCenterContentController *)self centerContentView];
  [centerContentView2 bounds];
  v15 = v14;
  [(OBWelcomeFullCenterContentController *)self _availablePreScrollContentHeight];
  if (v15 < v16)
  {
    pinnedConstraintGroup2 = [(OBWelcomeFullCenterContentController *)self pinnedConstraintGroup];
    firstObject2 = [pinnedConstraintGroup2 firstObject];
    isActive2 = [firstObject2 isActive];

    if (!isActive2)
    {
      return;
    }

    v20 = MEMORY[0x1E696ACD8];
    pinnedConstraintGroup3 = [(OBWelcomeFullCenterContentController *)self pinnedConstraintGroup];
    [v20 deactivateConstraints:pinnedConstraintGroup3];

    v12 = MEMORY[0x1E696ACD8];
    pinnedConstraintGroup = [(OBWelcomeFullCenterContentController *)self floatingConstraintGroup];
    goto LABEL_8;
  }

LABEL_9:
}

@end