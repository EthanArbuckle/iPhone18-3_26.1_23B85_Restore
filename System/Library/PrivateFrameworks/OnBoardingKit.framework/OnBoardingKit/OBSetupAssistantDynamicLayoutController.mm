@interface OBSetupAssistantDynamicLayoutController
- (OBSetupAssistantDynamicLayoutController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (id)_invokeConstraintForLayoutFactoryBlock;
- (id)buttonTray;
- (id)contentView;
- (id)headerView;
- (int64_t)contentViewLayout;
- (void)_relayoutContentSubviewIfNeeded;
- (void)_updateScrollUnderLayout;
- (void)addChildViewController:(id)controller;
- (void)addContentSubView:(id)view heightConstraintForLayout:(id)layout;
- (void)resetLayoutTo:(int64_t)to;
- (void)setBackingController:(id)controller;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation OBSetupAssistantDynamicLayoutController

- (OBSetupAssistantDynamicLayoutController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  titleCopy = title;
  textCopy = text;
  iconCopy = icon;
  v20.receiver = self;
  v20.super_class = OBSetupAssistantDynamicLayoutController;
  v14 = [(OBSetupAssistantDynamicLayoutController *)&v20 initWithNibName:0 bundle:0];
  if (v14)
  {
    v15 = [[OBWelcomeController alloc] initWithTitle:titleCopy detailText:textCopy icon:iconCopy contentLayout:layout];
    [(OBSetupAssistantDynamicLayoutController *)v14 setBackingController:v15];

    objc_storeStrong(&v14->_localImage, icon);
    objc_storeStrong(&v14->_localTitle, title);
    objc_storeStrong(&v14->_localDetailText, text);
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
  backingController = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  view = [backingController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(OBSetupAssistantDynamicLayoutController *)self view];
  backingController2 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  view3 = [backingController2 view];
  [view2 addSubview:view3];

  backingController3 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  view4 = [backingController3 view];
  view5 = [(OBSetupAssistantDynamicLayoutController *)self view];
  [view4 ob_pinToEdges:view5];

  view6 = [(OBSetupAssistantDynamicLayoutController *)self view];
  outerContentView = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];
  [view6 addSubview:outerContentView];

  backingController4 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  bleedView = [backingController4 bleedView];
  [bleedView setHidden:1];

  backingController5 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  bleedView2 = [backingController5 bleedView];
  [bleedView2 removeFromSuperview];

  backingController6 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  [backingController6 setTemplateType:2];
}

- (void)viewDidLayoutSubviews
{
  [(OBSetupAssistantDynamicLayoutController *)self _updateScrollUnderLayout];
  [(OBSetupAssistantDynamicLayoutController *)self _relayoutContentSubviewIfNeeded];
  backingController = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  view = [backingController view];
  [view layoutIfNeeded];

  v5.receiver = self;
  v5.super_class = OBSetupAssistantDynamicLayoutController;
  [(OBSetupAssistantDynamicLayoutController *)&v5 viewDidLayoutSubviews];
}

- (id)headerView
{
  backingController = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  headerView = [backingController headerView];

  return headerView;
}

- (id)contentView
{
  backingController = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  contentView = [backingController contentView];

  return contentView;
}

- (int64_t)contentViewLayout
{
  backingController = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  contentViewLayout = [backingController contentViewLayout];

  return contentViewLayout;
}

- (id)buttonTray
{
  backingController = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  buttonTray = [backingController buttonTray];

  return buttonTray;
}

- (void)addContentSubView:(id)view heightConstraintForLayout:(id)layout
{
  layoutCopy = layout;
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [(OBSetupAssistantDynamicLayoutController *)self setMainContentSubview:viewCopy];
  contentView = [(OBSetupAssistantDynamicLayoutController *)self contentView];
  [contentView addSubview:viewCopy];

  [(OBSetupAssistantDynamicLayoutController *)self setConstraintForLayoutFactory:layoutCopy];
  contentView2 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
  [viewCopy ob_pinToEdges:contentView2];

  backingController = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  view = [backingController view];
  [view setNeedsLayout];
}

- (void)addChildViewController:(id)controller
{
  controllerCopy = controller;
  backingController = [(OBSetupAssistantDynamicLayoutController *)self backingController];

  if (backingController == controllerCopy)
  {
    [(OBSetupAssistantDynamicLayoutController *)&v12 addChildViewController:controllerCopy, v11.receiver, v11.super_class, self, OBSetupAssistantDynamicLayoutController];
LABEL_6:
    [controllerCopy didMoveToParentViewController:self];
    goto LABEL_7;
  }

  view = [controllerCopy view];
  superview = [view superview];
  view2 = [(OBSetupAssistantDynamicLayoutController *)self view];

  if (superview == view2)
  {
    [(OBSetupAssistantDynamicLayoutController *)&v11 addChildViewController:controllerCopy, self, OBSetupAssistantDynamicLayoutController, v12.receiver, v12.super_class];
    goto LABEL_6;
  }

  backingController2 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  [backingController2 addChildViewController:controllerCopy];

  backingController3 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
  [controllerCopy didMoveToParentViewController:backingController3];

LABEL_7:
}

- (void)setBackingController:(id)controller
{
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  backingController = self->_backingController;
  if (backingController != controllerCopy)
  {
    if (backingController)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      childViewControllers = [(OBWelcomeController *)backingController childViewControllers];
      v8 = [childViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
              objc_enumerationMutation(childViewControllers);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            [(OBWelcomeController *)controllerCopy addChildViewController:v12];
            [v12 didMoveToParentViewController:controllerCopy];
          }

          v9 = [childViewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }

      [(OBWelcomeController *)self->_backingController removeFromParentViewController];
    }

    objc_storeStrong(&self->_backingController, controller);
    [(OBSetupAssistantDynamicLayoutController *)self addChildViewController:controllerCopy];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)resetLayoutTo:(int64_t)to
{
  if ([(OBSetupAssistantDynamicLayoutController *)self contentViewLayout]!= to)
  {
    v5 = [OBWelcomeController alloc];
    localTitle = [(OBSetupAssistantDynamicLayoutController *)self localTitle];
    localDetailText = [(OBSetupAssistantDynamicLayoutController *)self localDetailText];
    localImage = [(OBSetupAssistantDynamicLayoutController *)self localImage];
    v27 = [(OBWelcomeController *)v5 initWithTitle:localTitle detailText:localDetailText icon:localImage contentLayout:to];

    view = [(OBWelcomeController *)v27 view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    contentView = [(OBWelcomeController *)v27 contentView];
    [contentView setBackgroundColor:clearColor];

    backingController = [(OBSetupAssistantDynamicLayoutController *)self backingController];
    [backingController setTemplateType:2];

    view2 = [(OBSetupAssistantDynamicLayoutController *)self view];
    view3 = [(OBWelcomeController *)v27 view];
    backingController2 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
    view4 = [backingController2 view];
    [view2 insertSubview:view3 belowSubview:view4];

    backingController3 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
    view5 = [backingController3 view];
    [view5 removeFromSuperview];

    view6 = [(OBWelcomeController *)v27 view];
    view7 = [(OBSetupAssistantDynamicLayoutController *)self view];
    [view6 ob_pinToEdges:view7];

    mainContentSubview = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    [mainContentSubview removeFromSuperview];

    [(OBSetupAssistantDynamicLayoutController *)self setBackingController:v27];
    contentView2 = [(OBWelcomeController *)v27 contentView];
    mainContentSubview2 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    [contentView2 addSubview:mainContentSubview2];

    mainContentSubview3 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    contentView3 = [(OBWelcomeController *)v27 contentView];
    [mainContentSubview3 ob_pinToEdges:contentView3];

    [(OBSetupAssistantDynamicLayoutController *)self _updateScrollUnderLayout];
    [(OBSetupAssistantDynamicLayoutController *)self _relayoutContentSubviewIfNeeded];
    view8 = [(OBSetupAssistantDynamicLayoutController *)self view];
    [view8 setNeedsLayout];
  }
}

- (void)_updateScrollUnderLayout
{
  v53[4] = *MEMORY[0x1E69E9840];
  contentView = [(OBSetupAssistantDynamicLayoutController *)self contentView];
  [contentView bounds];
  if (v3 >= 1.0)
  {
    contentViewLayout = [(OBSetupAssistantDynamicLayoutController *)self contentViewLayout];

    if (contentViewLayout != 1)
    {
LABEL_15:
      v38 = *MEMORY[0x1E69E9840];
      return;
    }

    enableStickyHeader = [(OBSetupAssistantDynamicLayoutController *)self enableStickyHeader];
    mainContentSubview = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    superview = [mainContentSubview superview];
    outerContentView = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];

    if (enableStickyHeader)
    {
      if (superview != outerContentView)
      {
        v42 = MEMORY[0x1E696ACD8];
        outerContentView2 = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];
        topAnchor = [outerContentView2 topAnchor];
        view = [(OBSetupAssistantDynamicLayoutController *)self view];
        topAnchor2 = [view topAnchor];
        v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v53[0] = v47;
        outerContentView3 = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];
        leadingAnchor = [outerContentView3 leadingAnchor];
        view2 = [(OBSetupAssistantDynamicLayoutController *)self view];
        leadingAnchor2 = [view2 leadingAnchor];
        v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v53[1] = v41;
        outerContentView4 = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];
        trailingAnchor = [outerContentView4 trailingAnchor];
        view3 = [(OBSetupAssistantDynamicLayoutController *)self view];
        trailingAnchor2 = [view3 trailingAnchor];
        v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v53[2] = v12;
        outerContentView5 = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];
        heightAnchor = [outerContentView5 heightAnchor];
        contentView2 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
        heightAnchor2 = [contentView2 heightAnchor];
        v17 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
        v53[3] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:4];
        [v42 activateConstraints:v18];

        mainContentSubview2 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];

        if (!mainContentSubview2)
        {
          contentView3 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
          subviews = [contentView3 subviews];
          firstObject = [subviews firstObject];
          [(OBSetupAssistantDynamicLayoutController *)self setMainContentSubview:firstObject];

          mainContentSubview3 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
          [mainContentSubview3 setTranslatesAutoresizingMaskIntoConstraints:0];
        }

        mainContentSubview4 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
        [mainContentSubview4 removeFromSuperview];

        outerContentView6 = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];
        mainContentSubview5 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
        [outerContentView6 addSubview:mainContentSubview5];

        mainContentSubview6 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
        outerContentView7 = [(OBSetupAssistantDynamicLayoutController *)self outerContentView];
        goto LABEL_13;
      }
    }

    else if (superview == outerContentView)
    {
      mainContentSubview7 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
      [mainContentSubview7 removeFromSuperview];

      contentView4 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
      mainContentSubview8 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
      [contentView4 addSubview:mainContentSubview8];

      contentView5 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
      [contentView5 setTranslatesAutoresizingMaskIntoConstraints:0];

      mainContentSubview9 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
      [mainContentSubview9 setTranslatesAutoresizingMaskIntoConstraints:0];

      mainContentSubview10 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
      contentView6 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
      [mainContentSubview10 ob_pinToEdges:contentView6];

      mainContentSubview6 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
      outerContentView7 = [(OBSetupAssistantDynamicLayoutController *)self view];
LABEL_13:
      v36 = outerContentView7;
      [mainContentSubview6 ob_pinToEdges:outerContentView7];
    }

    _invokeConstraintForLayoutFactoryBlock = [(OBSetupAssistantDynamicLayoutController *)self _invokeConstraintForLayoutFactoryBlock];
    goto LABEL_15;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_relayoutContentSubviewIfNeeded
{
  if ([(OBSetupAssistantDynamicLayoutController *)self contentViewLayout]!= 1 && [(OBSetupAssistantDynamicLayoutController *)self contentViewLayout]!= 5)
  {
    mainContentSubview = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    [mainContentSubview removeFromSuperview];

    contentView = [(OBSetupAssistantDynamicLayoutController *)self contentView];
    mainContentSubview2 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    [contentView addSubview:mainContentSubview2];

    mainContentSubview3 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    [mainContentSubview3 setTranslatesAutoresizingMaskIntoConstraints:0];

    mainContentSubview4 = [(OBSetupAssistantDynamicLayoutController *)self mainContentSubview];
    contentView2 = [(OBSetupAssistantDynamicLayoutController *)self contentView];
    [mainContentSubview4 ob_pinToEdges:contentView2];

    _invokeConstraintForLayoutFactoryBlock = [(OBSetupAssistantDynamicLayoutController *)self _invokeConstraintForLayoutFactoryBlock];
  }
}

- (id)_invokeConstraintForLayoutFactoryBlock
{
  constraintForLayoutFactory = [(OBSetupAssistantDynamicLayoutController *)self constraintForLayoutFactory];

  if (constraintForLayoutFactory)
  {
    backingController = [(OBSetupAssistantDynamicLayoutController *)self backingController];
    contentViewHeightConstraintsBlock = [backingController contentViewHeightConstraintsBlock];

    if (contentViewHeightConstraintsBlock)
    {
      backingController2 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
      contentViewHeightConstraintsBlock2 = [backingController2 contentViewHeightConstraintsBlock];
      v8 = contentViewHeightConstraintsBlock2[2]();

      if (v8)
      {
        [v8 setActive:0];
      }
    }

    constraintForLayoutFactory2 = [(OBSetupAssistantDynamicLayoutController *)self constraintForLayoutFactory];
    contentViewLayout = [(OBSetupAssistantDynamicLayoutController *)self contentViewLayout];
    contentView = [(OBSetupAssistantDynamicLayoutController *)self contentView];
    v12 = (constraintForLayoutFactory2)[2](constraintForLayoutFactory2, contentViewLayout, contentView);

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __81__OBSetupAssistantDynamicLayoutController__invokeConstraintForLayoutFactoryBlock__block_invoke;
    v15[3] = &unk_1E7C156A8;
    constraintForLayoutFactory = v12;
    v16 = constraintForLayoutFactory;
    backingController3 = [(OBSetupAssistantDynamicLayoutController *)self backingController];
    [backingController3 setContentViewHeightConstraintsBlock:v15];

    [constraintForLayoutFactory setActive:1];
  }

  return constraintForLayoutFactory;
}

@end