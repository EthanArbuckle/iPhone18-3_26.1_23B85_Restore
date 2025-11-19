@interface OBSetupAssistantDynamicLayoutController
- (OBSetupAssistantDynamicLayoutController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (id)_invokeConstraintForLayoutFactoryBlock;
- (id)buttonTray;
- (id)contentView;
- (id)headerView;
- (int64_t)contentViewLayout;
- (void)_relayoutContentSubviewIfNeeded;
- (void)_updateScrollUnderLayout;
- (void)addChildViewController:(id)a3;
- (void)addContentSubView:(id)a3 heightConstraintForLayout:(id)a4;
- (void)resetLayoutTo:(int64_t)a3;
- (void)setBackingController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation OBSetupAssistantDynamicLayoutController

- (OBSetupAssistantDynamicLayoutController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = OBSetupAssistantDynamicLayoutController;
  v14 = [(OBSetupAssistantDynamicLayoutController *)&v20 initWithNibName:0 bundle:0];
  if (v14)
  {
    v15 = [[OBWelcomeController alloc] initWithTitle:v11 detailText:v12 icon:v13 contentLayout:a6];
    [(OBSetupAssistantDynamicLayoutController *)v14 setBackingController:v15];

    objc_storeStrong(&v14->_localImage, a5);
    objc_storeStrong(&v14->_localTitle, a3);
    objc_storeStrong(&v14->_localDetailText, a4);
    v16 = objc_alloc(MEMORY[0x1E69DD250]);
    v17 = [v16 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    outerContentView = v14->_outerContentView;
    v14->_outerContentView = v17;

    [(UIView *)v14->_outerContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v14;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = OBSetupAssistantDynamicLayoutController;
  [(OBSetupAssistantDynamicLayoutController *)&v18 viewDidLoad];
  [(OBSetupAssistantDynamicLayoutController *)self setEdgesForExtendedLayout:0];
  [(OBSetupAssistantDynamicLayoutController *)self setExtendedLayoutIncludesOpaqueBars:1];
  v3 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  v4 = [v3 view];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(OBSetupAssistantDynamicLayoutController *)self view];
  v6 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  v7 = [v6 view];
  [v5 addSubview:v7];

  v8 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  v9 = [v8 view];
  v10 = [(OBSetupAssistantDynamicLayoutController *)self view];
  [v9 ob_pinToEdges:v10];

  v11 = [(OBSetupAssistantDynamicLayoutController *)self view];
  v12 = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];
  [v11 addSubview:v12];

  v13 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  v14 = [v13 bleedView];
  [v14 setHidden:1];

  v15 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  v16 = [v15 bleedView];
  [v16 removeFromSuperview];

  v17 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  [v17 setTemplateType:2];
}

- (void)viewDidLayoutSubviews
{
  [(OBSetupAssistantDynamicLayoutController *)self _updateScrollUnderLayout];
  [(OBSetupAssistantDynamicLayoutController *)self _relayoutContentSubviewIfNeeded];
  v3 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  v4 = [v3 view];
  [v4 layoutIfNeeded];

  v5.receiver = self;
  v5.super_class = OBSetupAssistantDynamicLayoutController;
  [(OBSetupAssistantDynamicLayoutController *)&v5 viewDidLayoutSubviews];
}

- (id)headerView
{
  v2 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  v3 = [v2 headerView];

  return v3;
}

- (id)contentView
{
  v2 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  v3 = [v2 contentView];

  return v3;
}

- (int64_t)contentViewLayout
{
  v2 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  v3 = [v2 contentViewLayout];

  return v3;
}

- (id)buttonTray
{
  v2 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  v3 = [v2 buttonTray];

  return v3;
}

- (void)addContentSubView:(id)a3 heightConstraintForLayout:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBSetupAssistantDynamicLayoutController *)self setMainContentSubview:v7];
  v8 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
  [v8 addSubview:v7];

  [(OBSetupAssistantDynamicLayoutController *)self setConstraintForLayoutFactory:v6];
  v9 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
  [v7 ob_pinToEdges:v9];

  v11 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  v10 = [v11 view];
  [v10 setNeedsLayout];
}

- (void)addChildViewController:(id)a3
{
  v4 = a3;
  v5 = [(OBSetupAssistantDynamicLayoutController *)self backingController];

  if (v5 == v4)
  {
    [(OBSetupAssistantDynamicLayoutController *)&v12 addChildViewController:v4, v11.receiver, v11.super_class, self, OBSetupAssistantDynamicLayoutController];
LABEL_6:
    [v4 didMoveToParentViewController:self];
    goto LABEL_7;
  }

  v6 = [v4 view];
  v7 = [v6 superview];
  v8 = [(OBSetupAssistantDynamicLayoutController *)self view];

  if (v7 == v8)
  {
    [(OBSetupAssistantDynamicLayoutController *)&v11 addChildViewController:v4, self, OBSetupAssistantDynamicLayoutController, v12.receiver, v12.super_class];
    goto LABEL_6;
  }

  v9 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  [v9 addChildViewController:v4];

  v10 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  [v4 didMoveToParentViewController:v10];

LABEL_7:
}

- (void)setBackingController:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  backingController = self->_backingController;
  if (backingController != v5)
  {
    if (backingController)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = [(OBWelcomeController *)backingController childViewControllers];
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            [(OBWelcomeController *)v5 addChildViewController:v12];
            [v12 didMoveToParentViewController:v5];
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }

      [(OBWelcomeController *)self->_backingController removeFromParentViewController];
    }

    objc_storeStrong(&self->_backingController, a3);
    [(OBSetupAssistantDynamicLayoutController *)self addChildViewController:v5];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)resetLayoutTo:(int64_t)a3
{
  if ([(OBSetupAssistantDynamicLayoutController *)self contentViewLayout]!= a3)
  {
    v5 = [OBWelcomeController alloc];
    v6 = [(OBSetupAssistantDynamicLayoutController *)self localTitle];
    v7 = [(OBSetupAssistantDynamicLayoutController *)self localDetailText];
    v8 = [(OBSetupAssistantDynamicLayoutController *)self localImage];
    v27 = [(OBWelcomeController *)v5 initWithTitle:v6 detailText:v7 icon:v8 contentLayout:a3];

    v9 = [(OBWelcomeController *)v27 view];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [MEMORY[0x1E69DC888] clearColor];
    v11 = [(OBWelcomeController *)v27 contentView];
    [v11 setBackgroundColor:v10];

    v12 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
    [v12 setTemplateType:2];

    v13 = [(OBSetupAssistantDynamicLayoutController *)self view];
    v14 = [(OBWelcomeController *)v27 view];
    v15 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
    v16 = [v15 view];
    [v13 insertSubview:v14 belowSubview:v16];

    v17 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
    v18 = [v17 view];
    [v18 removeFromSuperview];

    v19 = [(OBWelcomeController *)v27 view];
    v20 = [(OBSetupAssistantDynamicLayoutController *)self view];
    [v19 ob_pinToEdges:v20];

    v21 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    [v21 removeFromSuperview];

    [(OBSetupAssistantDynamicLayoutController *)self setBackingController:v27];
    v22 = [(OBWelcomeController *)v27 contentView];
    v23 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    [v22 addSubview:v23];

    v24 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    v25 = [(OBWelcomeController *)v27 contentView];
    [v24 ob_pinToEdges:v25];

    [(OBSetupAssistantDynamicLayoutController *)self _updateScrollUnderLayout];
    [(OBSetupAssistantDynamicLayoutController *)self _relayoutContentSubviewIfNeeded];
    v26 = [(OBSetupAssistantDynamicLayoutController *)self view];
    [v26 setNeedsLayout];
  }
}

- (void)_updateScrollUnderLayout
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
  [v51 bounds];
  if (v3 >= 1.0)
  {
    v5 = [(OBSetupAssistantDynamicLayoutController *)self contentViewLayout];

    if (v5 != 1)
    {
LABEL_15:
      v38 = *MEMORY[0x1E69E9840];
      return;
    }

    v6 = [(OBSetupAssistantDynamicLayoutController *)self enableStickyHeader];
    v7 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    v8 = [v7 superview];
    v9 = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];

    if (v6)
    {
      if (v8 != v9)
      {
        v42 = MEMORY[0x1E696ACD8];
        v52 = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];
        v49 = [v52 topAnchor];
        v50 = [(OBSetupAssistantDynamicLayoutController *)self view];
        v48 = [v50 topAnchor];
        v47 = [v49 constraintEqualToAnchor:v48];
        v53[0] = v47;
        v46 = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];
        v44 = [v46 leadingAnchor];
        v45 = [(OBSetupAssistantDynamicLayoutController *)self view];
        v43 = [v45 leadingAnchor];
        v41 = [v44 constraintEqualToAnchor:v43];
        v53[1] = v41;
        v40 = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];
        v39 = [v40 trailingAnchor];
        v10 = [(OBSetupAssistantDynamicLayoutController *)self view];
        v11 = [v10 trailingAnchor];
        v12 = [v39 constraintEqualToAnchor:v11];
        v53[2] = v12;
        v13 = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];
        v14 = [v13 heightAnchor];
        v15 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
        v16 = [v15 heightAnchor];
        v17 = [v14 constraintEqualToAnchor:v16];
        v53[3] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:4];
        [v42 activateConstraints:v18];

        v19 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];

        if (!v19)
        {
          v20 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
          v21 = [v20 subviews];
          v22 = [v21 firstObject];
          [(OBSetupAssistantDynamicLayoutController *)self setMainContentSubview:v22];

          v23 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
          [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
        }

        v24 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
        [v24 removeFromSuperview];

        v25 = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];
        v26 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
        [v25 addSubview:v26];

        v27 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
        v28 = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];
        goto LABEL_13;
      }
    }

    else if (v8 == v9)
    {
      v29 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
      [v29 removeFromSuperview];

      v30 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
      v31 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
      [v30 addSubview:v31];

      v32 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
      [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

      v33 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

      v34 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
      v35 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
      [v34 ob_pinToEdges:v35];

      v27 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
      v28 = [(OBSetupAssistantDynamicLayoutController *)self view];
LABEL_13:
      v36 = v28;
      [v27 ob_pinToEdges:v28];
    }

    v37 = [(OBSetupAssistantDynamicLayoutController *)self _invokeConstraintForLayoutFactoryBlock];
    goto LABEL_15;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_relayoutContentSubviewIfNeeded
{
  if ([(OBSetupAssistantDynamicLayoutController *)self contentViewLayout]!= 1 && [(OBSetupAssistantDynamicLayoutController *)self contentViewLayout]!= 5)
  {
    v3 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    [v3 removeFromSuperview];

    v4 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
    v5 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    [v4 addSubview:v5];

    v6 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    v8 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
    [v7 ob_pinToEdges:v8];

    v9 = [(OBSetupAssistantDynamicLayoutController *)self _invokeConstraintForLayoutFactoryBlock];
  }
}

- (id)_invokeConstraintForLayoutFactoryBlock
{
  v3 = [(OBSetupAssistantDynamicLayoutController *)self constraintForLayoutFactory];

  if (v3)
  {
    v4 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
    v5 = [v4 contentViewHeightConstraintsBlock];

    if (v5)
    {
      v6 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
      v7 = [v6 contentViewHeightConstraintsBlock];
      v8 = v7[2]();

      if (v8)
      {
        [v8 setActive:0];
      }
    }

    v9 = [(OBSetupAssistantDynamicLayoutController *)self constraintForLayoutFactory];
    v10 = [(OBSetupAssistantDynamicLayoutController *)self contentViewLayout];
    v11 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
    v12 = (v9)[2](v9, v10, v11);

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__OBSetupAssistantDynamicLayoutController__invokeConstraintForLayoutFactoryBlock__block_invoke;
    v15[3] = &unk_1E7C156A8;
    v3 = v12;
    v16 = v3;
    v13 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
    [v13 setContentViewHeightConstraintsBlock:v15];

    [v3 setActive:1];
  }

  return v3;
}

@end