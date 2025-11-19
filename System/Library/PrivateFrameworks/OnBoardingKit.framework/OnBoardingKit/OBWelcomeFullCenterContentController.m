@interface OBWelcomeFullCenterContentController
- (double)_availablePreScrollContentHeight;
- (void)insertCenterContentView;
- (void)recalculateLayoutForTraitCollectionChange;
- (void)setCenteredContentView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)setCenteredContentView:(id)a3
{
  v9 = a3;
  v4 = [(OBWelcomeFullCenterContentController *)self centerContentView];

  if (v4 != v9)
  {
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    v6 = [v5 superview];
    v7 = [(OBWelcomeController *)self contentView];

    if (v6 == v7)
    {
      v8 = [(OBWelcomeFullCenterContentController *)self centerContentView];
      [v8 removeFromSuperview];
    }

    [(OBWelcomeFullCenterContentController *)self setCenterContentView:v9];
  }

  if ([(OBWelcomeFullCenterContentController *)self isViewLoaded])
  {
    [(OBWelcomeFullCenterContentController *)self insertCenterContentView];
  }
}

- (void)insertCenterContentView
{
  v47[4] = *MEMORY[0x1E69E9840];
  v3 = [(OBWelcomeFullCenterContentController *)self centerContentView];
  v4 = [v3 superview];
  v5 = [(OBWelcomeController *)self contentView];

  if (v4 != v5)
  {
    v6 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    [v6 removeFromSuperview];

    v7 = [(OBWelcomeController *)self contentView];
    v8 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    [v7 addSubview:v8];

    v46 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    v44 = [v46 centerXAnchor];
    v45 = [(OBWelcomeController *)self contentView];
    v43 = [v45 centerXAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v47[0] = v42;
    v41 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    v39 = [v41 centerYAnchor];
    v40 = [(OBWelcomeController *)self contentView];
    v38 = [v40 centerYAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v47[1] = v37;
    v36 = [(OBWelcomeController *)self contentView];
    v35 = [v36 bottomAnchor];
    v9 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    v10 = [v9 bottomAnchor];
    v11 = [v35 constraintGreaterThanOrEqualToAnchor:v10];
    v47[2] = v11;
    v12 = [(OBWelcomeController *)self contentView];
    v13 = [v12 topAnchor];
    v14 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    v15 = [v14 topAnchor];
    v16 = [v13 constraintLessThanOrEqualToAnchor:v15];
    v47[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
    [(OBWelcomeFullCenterContentController *)self setFloatingConstraintGroup:v17];

    v18 = [(OBWelcomeController *)self contentView];
    v19 = [v18 heightAnchor];
    [(OBWelcomeFullCenterContentController *)self _availablePreScrollContentHeight];
    v20 = [v19 constraintEqualToConstant:?];
    [(OBWelcomeFullCenterContentController *)self setContentViewOptionalHeightAnchor:v20];

    v21 = [(OBWelcomeFullCenterContentController *)self contentViewOptionalHeightAnchor];
    [v21 setActive:1];

    v22 = [(OBWelcomeFullCenterContentController *)self contentViewOptionalHeightAnchor];
    LODWORD(v23) = 1132068864;
    [v22 setPriority:v23];

    v24 = MEMORY[0x1E696ACD8];
    v25 = [(OBWelcomeFullCenterContentController *)self floatingConstraintGroup];
    [v24 activateConstraints:v25];

    v26 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    v27 = [v26 widthAnchor];
    v28 = [(OBWelcomeController *)self contentView];
    v29 = [v28 widthAnchor];
    v30 = [v27 constraintLessThanOrEqualToAnchor:v29];
    [v30 setActive:1];

    v31 = [(OBWelcomeFullCenterContentController *)self centerContentView];
    v32 = [(OBWelcomeController *)self contentView];
    v33 = [v31 ob_pinToEdgesConstraints:v32];
    [(OBWelcomeFullCenterContentController *)self setPinnedConstraintGroup:v33];
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)viewDidLayoutSubviews
{
  [(OBWelcomeFullCenterContentController *)self _availablePreScrollContentHeight];
  v4 = v3;
  v5 = [(OBWelcomeFullCenterContentController *)self contentViewOptionalHeightAnchor];
  [v5 setConstant:v4];

  v15.receiver = self;
  v15.super_class = OBWelcomeFullCenterContentController;
  [(OBWelcomeController *)&v15 viewDidLayoutSubviews];
  [(OBWelcomeFullCenterContentController *)self recalculateLayoutForTraitCollectionChange];
  v6 = [(OBWelcomeController *)self headerView];
  [v6 frame];
  if (v7 == 0.0)
  {
    v8 = [(OBWelcomeController *)self headerView];
    v9 = [v8 headerLabel];
    v10 = [v9 text];
    if ([v10 length])
    {
    }

    else
    {
      v11 = [(OBWelcomeController *)self headerView];
      v12 = [v11 detailLabel];
      v13 = [v12 text];
      v14 = [v13 length];

      if (!v14)
      {
        return;
      }
    }

    v6 = [(OBWelcomeFullCenterContentController *)self view];
    [v6 setNeedsLayout];
  }
}

- (double)_availablePreScrollContentHeight
{
  v3 = [(OBWelcomeController *)self scrollView];
  [v3 bounds];
  v5 = v4;

  v6 = [(OBWelcomeController *)self contentView];
  [v6 frame];
  v8 = v5 - v7;

  v9 = [(OBWelcomeController *)self buttonTray];
  [v9 bounds];
  v11 = v8 - v10;

  return v11;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = OBWelcomeFullCenterContentController;
  [(OBWelcomeController *)&v4 traitCollectionDidChange:a3];
  [(OBWelcomeFullCenterContentController *)self recalculateLayoutForTraitCollectionChange];
}

- (void)recalculateLayoutForTraitCollectionChange
{
  v3 = [(OBWelcomeFullCenterContentController *)self centerContentView];
  [v3 bounds];
  v5 = v4;
  [(OBWelcomeFullCenterContentController *)self _availablePreScrollContentHeight];
  if (v5 <= v6)
  {
  }

  else
  {
    v7 = [(OBWelcomeFullCenterContentController *)self floatingConstraintGroup];
    v8 = [v7 firstObject];
    v9 = [v8 isActive];

    if (v9)
    {
      v10 = MEMORY[0x1E696ACD8];
      v11 = [(OBWelcomeFullCenterContentController *)self floatingConstraintGroup];
      [v10 deactivateConstraints:v11];

      v12 = MEMORY[0x1E696ACD8];
      v13 = [(OBWelcomeFullCenterContentController *)self pinnedConstraintGroup];
LABEL_8:
      v22 = v13;
      [v12 activateConstraints:?];
      goto LABEL_9;
    }
  }

  v22 = [(OBWelcomeFullCenterContentController *)self centerContentView];
  [v22 bounds];
  v15 = v14;
  [(OBWelcomeFullCenterContentController *)self _availablePreScrollContentHeight];
  if (v15 < v16)
  {
    v17 = [(OBWelcomeFullCenterContentController *)self pinnedConstraintGroup];
    v18 = [v17 firstObject];
    v19 = [v18 isActive];

    if (!v19)
    {
      return;
    }

    v20 = MEMORY[0x1E696ACD8];
    v21 = [(OBWelcomeFullCenterContentController *)self pinnedConstraintGroup];
    [v20 deactivateConstraints:v21];

    v12 = MEMORY[0x1E696ACD8];
    v13 = [(OBWelcomeFullCenterContentController *)self floatingConstraintGroup];
    goto LABEL_8;
  }

LABEL_9:
}

@end