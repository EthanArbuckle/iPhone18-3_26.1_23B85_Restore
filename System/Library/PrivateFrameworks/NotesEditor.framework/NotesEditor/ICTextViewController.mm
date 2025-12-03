@interface ICTextViewController
+ (id)createTextViewUsingTextController:(id)controller stylingTextUsingSeparateTextStorageForRendering:(BOOL)rendering note:(id)note containerWidth:(double)width forManualRendering:(BOOL)manualRendering scrollState:(id)state traitCollection:(id)collection;
+ (id)printFormatterForNote:(id)note withSize:(CGSize)size traitCollection:(id)collection;
- (ICLayoutManager)layoutManager;
- (ICTextView)textView;
- (ICTextView)textViewIfLoaded;
- (ICTextViewController)initWithViewControllerManager:(id)manager editorViewController:(id)controller note:(id)note initialContainerWidth:(double)width scrollState:(id)state;
- (ICViewControllerManager)viewControllerManager;
- (id)captureContentOffsetStateIfNecessary;
- (id)editorController;
- (void)applyCapturedContentOffsetStateIfNecessary:(id)necessary;
- (void)applyInitialScrollState;
- (void)layoutManager:(id)manager didCompleteLayoutForTextContainer:(id)container atEnd:(BOOL)end;
- (void)layoutManagerDidInvalidateLayout:(id)layout;
- (void)loadView;
- (void)setAttributionSidebarWidth:(double)width isGestureActive:(BOOL)active animated:(BOOL)animated currentVelocity:(double)velocity;
- (void)setBackgroundColor:(id)color;
- (void)setIgnoresTaps:(BOOL)taps;
- (void)splitViewControllerDidEndAnimatedTransitionToStateRequest:(id)request;
- (void)splitViewControllerWillBeginAnimatedTransitionToStateRequest:(id)request;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ICTextViewController

- (ICTextViewController)initWithViewControllerManager:(id)manager editorViewController:(id)controller note:(id)note initialContainerWidth:(double)width scrollState:(id)state
{
  managerCopy = manager;
  controllerCopy = controller;
  noteCopy = note;
  stateCopy = state;
  v46.receiver = self;
  v46.super_class = ICTextViewController;
  v16 = [(ICTextViewController *)&v46 initWithNibName:0 bundle:0];
  if (v16)
  {
    v45 = noteCopy;
    v17 = objc_alloc_init(MEMORY[0x277D36968]);
    textController = v16->_textController;
    v16->_textController = v17;

    objc_storeWeak(&v16->_viewControllerManager, managerCopy);
    objc_storeStrong(&v16->_note, note);
    v16->_initialContainerWidth = width;
    objc_storeStrong(&v16->_initialScrollState, state);
    v19 = [MEMORY[0x277CBEB58] set];
    enabledSubviews = v16->_enabledSubviews;
    v16->_enabledSubviews = v19;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v16 selector:sel_splitViewControllerWillBeginAnimatedTransitionToStateRequest_ name:@"ICSplitViewControllerWillBeginAnimatedTransitionToStateRequest" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v16 selector:sel_splitViewControllerDidEndAnimatedTransitionToStateRequest_ name:@"ICSplitViewControllerDidEndAnimatedTransitionToStateRequest" object:0];

    v23 = [MEMORY[0x277CBEAA8] now];
    v24 = objc_opt_class();
    textController = [(ICTextViewController *)v16 textController];
    note = [(ICTextViewController *)v16 note];
    [(ICTextViewController *)v16 initialContainerWidth];
    v28 = v27;
    transitionScrollState = [(ICTextViewController *)v16 transitionScrollState];
    traitCollection = [controllerCopy traitCollection];
    v31 = [v24 createTextViewUsingTextController:textController stylingTextUsingSeparateTextStorageForRendering:0 note:note containerWidth:0 forManualRendering:transitionScrollState scrollState:traitCollection traitCollection:v28];
    textView = v16->_textView;
    v16->_textView = v31;

    [(ICTextView *)v16->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ICTextView *)v16->_textView setClipsToBounds:0];
    layoutManager = [(ICTextView *)v16->_textView layoutManager];
    [layoutManager setDelegate:v16];

    [(ICEditingTextView *)v16->_textView setEditorController:controllerCopy];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:v23];
    v36 = v35;

    v37 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [ICTextViewController initWithViewControllerManager:v16 editorViewController:v37 note:v36 initialContainerWidth:? scrollState:?];
    }

    v38 = objc_alloc_init(MEMORY[0x277D36958]);
    backgroundView = v16->_backgroundView;
    v16->_backgroundView = v38;

    [(ICTextBackgroundView *)v16->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    editorController = [(ICEditingTextView *)v16->_textView editorController];
    isEditingOnSystemPaper = [editorController isEditingOnSystemPaper];

    if ((isEditingOnSystemPaper & 1) == 0)
    {
      v42 = objc_alloc_init(ICAttributionSidebarView);
      attributionSidebarView = v16->_attributionSidebarView;
      v16->_attributionSidebarView = v42;

      [(ICAttributionSidebarView *)v16->_attributionSidebarView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(ICAttributionSidebarView *)v16->_attributionSidebarView setTextView:v16->_textView];
    }

    noteCopy = v45;
  }

  return v16;
}

- (void)loadView
{
  v3 = [[ICTextViewControllerView alloc] initWithTextView:self->_textView];
  [(ICTextViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v72[4] = *MEMORY[0x277D85DE8];
  v69.receiver = self;
  v69.super_class = ICTextViewController;
  [(ICTextViewController *)&v69 viewDidLoad];
  view = [(ICTextViewController *)self view];
  textView = [(ICTextViewController *)self textView];
  [view addSubview:textView];

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    textView2 = [(ICTextViewController *)self textView];
    backgroundView = [(ICTextViewController *)self backgroundView];
    [textView2 insertSubview:backgroundView atIndex:0];

    attributionSidebarView = [(ICTextViewController *)self attributionSidebarView];

    if (attributionSidebarView)
    {
      textView3 = [(ICTextViewController *)self textView];
      attributionSidebarView2 = [(ICTextViewController *)self attributionSidebarView];
      [textView3 insertSubview:attributionSidebarView2 atIndex:0];

      v46 = MEMORY[0x277CCAAD0];
      attributionSidebarView3 = [(ICTextViewController *)self attributionSidebarView];
      widthAnchor = [attributionSidebarView3 widthAnchor];
      attributionSidebarView4 = [(ICTextViewController *)self attributionSidebarView];
      [attributionSidebarView4 fullContentWidth];
      v65 = widthAnchor;
      v11 = [widthAnchor constraintEqualToConstant:?];
      attributionSidebarWidthConstraint = self->_attributionSidebarWidthConstraint;
      self->_attributionSidebarWidthConstraint = v11;

      v72[0] = v11;
      attributionSidebarView5 = [(ICTextViewController *)self attributionSidebarView];
      topAnchor = [attributionSidebarView5 topAnchor];
      backgroundView2 = [(ICTextViewController *)self backgroundView];
      [backgroundView2 topAnchor];
      v55 = v59 = topAnchor;
      textView6 = [topAnchor constraintEqualToAnchor:?];
      v72[1] = textView6;
      attributionSidebarView6 = [(ICTextViewController *)self attributionSidebarView];
      trailingAnchor = [attributionSidebarView6 trailingAnchor];
      textView4 = [(ICTextViewController *)self textView];
      leadingAnchor = [textView4 leadingAnchor];
      v49 = trailingAnchor;
      view2 = [trailingAnchor constraintEqualToAnchor:leadingAnchor];
      v72[2] = view2;
      attributionSidebarView7 = [(ICTextViewController *)self attributionSidebarView];
      bottomAnchor = [attributionSidebarView7 bottomAnchor];
      backgroundView3 = [(ICTextViewController *)self backgroundView];
      bottomAnchor2 = [backgroundView3 bottomAnchor];
      v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v72[3] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:4];
      [v46 activateConstraints:v23];

LABEL_6:
    }
  }

  else
  {
    attributionSidebarView8 = [(ICTextViewController *)self attributionSidebarView];

    if (attributionSidebarView8)
    {
      textView5 = [(ICTextViewController *)self textView];
      attributionSidebarView9 = [(ICTextViewController *)self attributionSidebarView];
      [textView5 insertSubview:attributionSidebarView9 atIndex:0];

      v47 = MEMORY[0x277CCAAD0];
      attributionSidebarView3 = [(ICTextViewController *)self attributionSidebarView];
      topAnchor2 = [attributionSidebarView3 topAnchor];
      attributionSidebarView4 = [(ICTextViewController *)self textView];
      [attributionSidebarView4 topAnchor];
      attributionSidebarView5 = v65 = topAnchor2;
      v59 = [topAnchor2 constraintEqualToAnchor:?];
      v71[0] = v59;
      backgroundView2 = [(ICTextViewController *)self attributionSidebarView];
      heightAnchor = [backgroundView2 heightAnchor];
      textView6 = [(ICTextViewController *)self textView];
      [textView6 heightAnchor];
      attributionSidebarView6 = v55 = heightAnchor;
      v49 = [heightAnchor constraintEqualToAnchor:?];
      v71[1] = v49;
      textView4 = [(ICTextViewController *)self attributionSidebarView];
      leadingAnchor = [textView4 trailingAnchor];
      view2 = [(ICTextViewController *)self view];
      attributionSidebarView7 = [view2 leadingAnchor];
      v29 = [leadingAnchor constraintEqualToAnchor:attributionSidebarView7];
      attributionSidebarTrailingConstraint = self->_attributionSidebarTrailingConstraint;
      self->_attributionSidebarTrailingConstraint = v29;

      v71[2] = v29;
      bottomAnchor = [(ICTextViewController *)self attributionSidebarView];
      backgroundView3 = [bottomAnchor widthAnchor];
      bottomAnchor2 = [(ICTextViewController *)self attributionSidebarView];
      [bottomAnchor2 fullContentWidth];
      v31 = [backgroundView3 constraintEqualToConstant:?];
      v32 = self->_attributionSidebarWidthConstraint;
      self->_attributionSidebarWidthConstraint = v31;

      v71[3] = v31;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:4];
      [v47 activateConstraints:v22];
      goto LABEL_6;
    }
  }

  v54 = MEMORY[0x277CCAAD0];
  textView7 = [(ICTextViewController *)self textView];
  leadingAnchor2 = [textView7 leadingAnchor];
  view3 = [(ICTextViewController *)self view];
  leadingAnchor3 = [view3 leadingAnchor];
  v33 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
  textViewLeadingConstraint = self->_textViewLeadingConstraint;
  self->_textViewLeadingConstraint = v33;

  v70[0] = v33;
  textView8 = [(ICTextViewController *)self textView];
  topAnchor3 = [textView8 topAnchor];
  view4 = [(ICTextViewController *)self view];
  topAnchor4 = [view4 topAnchor];
  v50 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v70[1] = v50;
  textView9 = [(ICTextViewController *)self textView];
  widthAnchor2 = [textView9 widthAnchor];
  view5 = [(ICTextViewController *)self view];
  widthAnchor3 = [view5 widthAnchor];
  v37 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
  v70[2] = v37;
  textView10 = [(ICTextViewController *)self textView];
  bottomAnchor3 = [textView10 bottomAnchor];
  view6 = [(ICTextViewController *)self view];
  bottomAnchor4 = [view6 bottomAnchor];
  v42 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v70[3] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:4];
  [v54 activateConstraints:v43];

  textView11 = [(ICTextViewController *)self textView];
  [textView11 setFindInteractionEnabled:1];
}

- (void)setIgnoresTaps:(BOOL)taps
{
  tapsCopy = taps;
  v29 = *MEMORY[0x277D85DE8];
  self->_ignoresTaps = taps;
  if (taps)
  {
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    textView = [(ICTextViewController *)self textView];
    subviews = [textView subviews];

    v7 = [subviews countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(subviews);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          if ([v11 isUserInteractionEnabled])
          {
            enabledSubviews = [(ICTextViewController *)self enabledSubviews];
            [enabledSubviews addObject:v11];

            [v11 setUserInteractionEnabled:0];
          }
        }

        v8 = [subviews countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v21 = 0uLL;
    v22 = 0uLL;
    *(&v19 + 1) = 0;
    v20 = 0uLL;
    enabledSubviews2 = [(ICTextViewController *)self enabledSubviews];
    v14 = [enabledSubviews2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(enabledSubviews2);
          }

          [*(*(&v19 + 1) + 8 * j) setUserInteractionEnabled:1];
        }

        v15 = [enabledSubviews2 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v15);
    }

    subviews = [(ICTextViewController *)self enabledSubviews];
    [subviews removeAllObjects];
  }

  textView2 = [(ICTextViewController *)self textView];
  [textView2 setSelectable:!tapsCopy];
}

- (void)setAttributionSidebarWidth:(double)width isGestureActive:(BOOL)active animated:(BOOL)animated currentVelocity:(double)velocity
{
  animatedCopy = animated;
  activeCopy = active;
  attributionSidebarView = [(ICTextViewController *)self attributionSidebarView];

  if (!attributionSidebarView)
  {
    return;
  }

  textViewLeadingConstraint = [(ICTextViewController *)self textViewLeadingConstraint];
  [textViewLeadingConstraint constant];
  v14 = v13;

  if (v14 == width)
  {
    attributionSidebarView2 = [(ICTextViewController *)self attributionSidebarView];
    [attributionSidebarView2 setVisibleContentWidth:activeCopy isGestureActive:width];

    if (width == 0.0)
    {

      [(ICTextViewController *)self setIgnoresTaps:0];
    }

    return;
  }

  attributionSidebarOpenedDate = [(ICTextViewController *)self attributionSidebarOpenedDate];
  [attributionSidebarOpenedDate timeIntervalSinceNow];
  v18 = v17;

  attributionSidebarView3 = [(ICTextViewController *)self attributionSidebarView];
  [attributionSidebarView3 visibleContentWidth];
  if (width == 0.0 && v20 > 0.0)
  {
    if (v18 < 0.0)
    {
      v18 = -v18;
    }

    if (v18 <= 2.0)
    {
      goto LABEL_14;
    }

    attributionSidebarView3 = [MEMORY[0x277CBEAA8] now];
    note = [(ICTextViewController *)self note];
    [note setLastAttributionsViewedDate:attributionSidebarView3];
  }

LABEL_14:
  attributionSidebarView4 = [(ICTextViewController *)self attributionSidebarView];
  [attributionSidebarView4 fullContentWidth];
  v24 = v23;

  if (v24 == width)
  {
    textView = [(ICTextViewController *)self textView];
    [textView clampTextView];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__ICTextViewController_setAttributionSidebarWidth_isGestureActive_animated_currentVelocity___block_invoke;
  aBlock[3] = &unk_2781AF5D8;
  aBlock[4] = self;
  v35 = v24 == width;
  *&aBlock[5] = width;
  v26 = _Block_copy(aBlock);
  attributionSidebarView5 = [(ICTextViewController *)self attributionSidebarView];
  [attributionSidebarView5 setVisibleContentWidth:activeCopy isGestureActive:width];

  if (animatedCopy)
  {
    v28 = 1.0;
    if (velocity > 0.0)
    {
      attributionSidebarView6 = [(ICTextViewController *)self attributionSidebarView];
      [attributionSidebarView6 visibleContentWidth];
      v28 = (width - v30) / velocity;
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __92__ICTextViewController_setAttributionSidebarWidth_isGestureActive_animated_currentVelocity___block_invoke_2;
    v33[3] = &unk_2781AD1C0;
    v33[4] = self;
    *&v33[5] = width;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v33 usingSpringWithDamping:v26 initialSpringVelocity:0.3 options:0.0 animations:0.65 completion:v28];
  }

  else
  {
    if ([MEMORY[0x277D75418] ic_isVision])
    {
      view = [(ICTextViewController *)self view];
      [view setNeedsLayout];
    }

    else
    {
      textViewLeadingConstraint2 = [(ICTextViewController *)self textViewLeadingConstraint];
      [textViewLeadingConstraint2 setConstant:width];

      view = [(ICTextViewController *)self attributionSidebarTrailingConstraint];
      [view setConstant:width];
    }

    v26[2](v26, 1);
  }
}

void __92__ICTextViewController_setAttributionSidebarWidth_isGestureActive_animated_currentVelocity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textView];
  [v2 unclampTextView];

  v3 = *(a1 + 48);
  if (v3 == 1)
  {
    v4 = [MEMORY[0x277CBEAA8] now];
    [*(a1 + 32) setAttributionSidebarOpenedDate:v4];
  }

  else
  {
    if (*(a1 + 40) != 0.0)
    {
      return;
    }

    v4 = [*(a1 + 32) attributionSidebarView];
    [v4 reload];
  }

  v5 = *(a1 + 32);

  [v5 setIgnoresTaps:v3];
}

void __92__ICTextViewController_setAttributionSidebarWidth_isGestureActive_animated_currentVelocity___block_invoke_2(uint64_t a1)
{
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    v2 = [*(a1 + 32) view];
    [v2 setNeedsLayout];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) textViewLeadingConstraint];
    [v4 setConstant:v3];

    v5 = *(a1 + 40);
    v2 = [*(a1 + 32) attributionSidebarTrailingConstraint];
    [v2 setConstant:v5];
  }

  v6 = [*(a1 + 32) view];
  [v6 layoutIfNeeded];
}

- (ICTextView)textView
{
  view = [(ICTextViewController *)self view];
  if (view)
  {
    textView = self->_textView;
  }

  else
  {
    textView = 0;
  }

  v5 = textView;

  return textView;
}

- (ICTextView)textViewIfLoaded
{
  viewIfLoaded = [(ICTextViewController *)self viewIfLoaded];
  if (viewIfLoaded)
  {
    textView = self->_textView;
  }

  else
  {
    textView = 0;
  }

  v5 = textView;

  return textView;
}

- (id)editorController
{
  textView = [(ICTextViewController *)self textView];
  editorController = [textView editorController];

  return editorController;
}

- (ICLayoutManager)layoutManager
{
  objc_opt_class();
  textView = [(ICTextViewController *)self textView];
  layoutManager = [textView layoutManager];
  v5 = ICCheckedDynamicCast();

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  captureContentOffsetStateIfNecessary = [(ICTextViewController *)self captureContentOffsetStateIfNecessary];
  [(ICTextViewController *)self setTransitionScrollState:captureContentOffsetStateIfNecessary];
  textView = [(ICTextViewController *)self textView];
  [textView setIsTransitioningToNewSize:1];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__ICTextViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v14[3] = &unk_2781AF600;
  v14[4] = self;
  v15 = captureContentOffsetStateIfNecessary;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__ICTextViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v12[3] = &unk_2781AF600;
  v12[4] = self;
  v13 = v15;
  v10 = v15;
  [coordinatorCopy animateAlongsideTransition:v14 completion:v12];
  v11.receiver = self;
  v11.super_class = ICTextViewController;
  [(ICTextViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

uint64_t __75__ICTextViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) applyCapturedContentOffsetStateIfNecessary:*(a1 + 40)];
  v2 = [*(a1 + 32) textView];
  [v2 setIsTransitioningToNewSize:0];

  v3 = *(a1 + 32);

  return [v3 setTransitionScrollState:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICTextViewController;
  [(ICTextViewController *)&v4 viewDidAppear:appear];
  [(ICTextViewController *)self applyInitialScrollState];
}

- (void)applyInitialScrollState
{
  initialScrollState = [(ICTextViewController *)self initialScrollState];

  if (initialScrollState)
  {
    initialScrollState2 = [(ICTextViewController *)self initialScrollState];
    [(ICTextViewController *)self applyCapturedContentOffsetStateIfNecessary:initialScrollState2];
  }

  [(ICTextViewController *)self setInitialScrollState:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = ICTextViewController;
  [(ICTextViewController *)&v9 viewWillDisappear:disappear];
  attributionSidebarView = [(ICTextViewController *)self attributionSidebarView];

  if (attributionSidebarView)
  {
    attributionSidebarView2 = [(ICTextViewController *)self attributionSidebarView];
    [attributionSidebarView2 unfocusAttributionDetails];

    textView = [(ICTextViewController *)self textView];
    editorController = [textView editorController];
    attributionSidebarController = [editorController attributionSidebarController];
    [attributionSidebarController hideSidebarAnimated:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v22.receiver = self;
  v22.super_class = ICTextViewController;
  [(ICTextViewController *)&v22 viewDidLayoutSubviews];
  textView = [(ICTextViewController *)self textView];
  isTransitioningToNewSize = [textView isTransitioningToNewSize];

  if (isTransitioningToNewSize)
  {
    transitionScrollState = [(ICTextViewController *)self transitionScrollState];
LABEL_3:
    v6 = transitionScrollState;
    [(ICTextViewController *)self applyCapturedContentOffsetStateIfNecessary:transitionScrollState];

    goto LABEL_8;
  }

  if (![(ICTextViewController *)self performingInitialSetup])
  {
    initialScrollState = [(ICTextViewController *)self initialScrollState];
    if (initialScrollState)
    {
      v8 = initialScrollState;
      textView2 = [(ICTextViewController *)self textView];
      [textView2 bounds];
      v11 = v10;

      if (v11 > 0.0)
      {
        transitionScrollState = [(ICTextViewController *)self initialScrollState];
        goto LABEL_3;
      }
    }
  }

LABEL_8:
  ic_isVision = [MEMORY[0x277D75418] ic_isVision];
  attributionSidebarView = [(ICTextViewController *)self attributionSidebarView];
  v14 = attributionSidebarView;
  if (ic_isVision)
  {
    [attributionSidebarView visibleContentWidth];
    v16 = v15;
    textViewLeadingConstraint = [(ICTextViewController *)self textViewLeadingConstraint];
    [textViewLeadingConstraint setConstant:v16];
  }

  else
  {

    if (!v14)
    {
      return;
    }
  }

  attributionSidebarView2 = [(ICTextViewController *)self attributionSidebarView];
  [attributionSidebarView2 fullContentWidth];
  v20 = v19;
  attributionSidebarWidthConstraint = [(ICTextViewController *)self attributionSidebarWidthConstraint];
  [attributionSidebarWidthConstraint setConstant:v20];
}

- (id)captureContentOffsetStateIfNecessary
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:*MEMORY[0x277D362D8]];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    textView = [(ICTextViewController *)self textView];
    v5 = [ICTextViewScrollState scrollStateForTextView:textView];
  }

  return v5;
}

- (void)applyCapturedContentOffsetStateIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:*MEMORY[0x277D362D8]];

  if (+[ICExtensionSafeAPIShims applicationState]!= 2 && (v5 & 1) == 0)
  {
    textView = [(ICTextViewController *)self textView];
    [necessaryCopy applyToTextView:textView];
  }
}

+ (id)createTextViewUsingTextController:(id)controller stylingTextUsingSeparateTextStorageForRendering:(BOOL)rendering note:(id)note containerWidth:(double)width forManualRendering:(BOOL)manualRendering scrollState:(id)state traitCollection:(id)collection
{
  manualRenderingCopy = manualRendering;
  renderingCopy = rendering;
  controllerCopy = controller;
  noteCopy = note;
  stateCopy = state;
  collectionCopy = collection;
  v18 = objc_alloc_init(ICLayoutManager);
  [(ICLayoutManager *)v18 setShouldManuallyRenderSeparateSubviews:manualRenderingCopy];
  if (createTextViewUsingTextController_stylingTextUsingSeparateTextStorageForRendering_note_containerWidth_forManualRendering_scrollState_traitCollection__onceToken != -1)
  {
    +[ICTextViewController createTextViewUsingTextController:stylingTextUsingSeparateTextStorageForRendering:note:containerWidth:forManualRendering:scrollState:traitCollection:];
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v20 = [standardUserDefaults BOOLForKey:@"UseNonContiguousLayout"];

  if (v20)
  {
    [(ICLayoutManager *)v18 setAllowsNonContiguousLayout:1];
    v21 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [ICTextViewController createTextViewUsingTextController:v21 stylingTextUsingSeparateTextStorageForRendering:? note:? containerWidth:? forManualRendering:? scrollState:? traitCollection:?];
    }
  }

  v45 = stateCopy;
  [controllerCopy setNote:noteCopy stylingTextUsingSeparateTextStorageForRendering:renderingCopy withLayoutManager:v18 traitCollection:collectionCopy firstVisibleCharLocation:{objc_msgSend(stateCopy, "topLeftTextCharacterIndex")}];
  v22 = [objc_alloc(MEMORY[0x277D36960]) initWithSize:{width, 1.79769313e308}];
  [v22 setWidthTracksTextView:1];
  [(ICLayoutManager *)v18 addTextContainer:v22];
  v23 = [(ICBaseTextView *)[ICTextView alloc] initWithFrame:v22 textContainer:0.0, 0.0, width, 0.0];
  v24 = ICInternalSettingsDefaultToPaperKitAttachments();
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __173__ICTextViewController_createTextViewUsingTextController_stylingTextUsingSeparateTextStorageForRendering_note_containerWidth_forManualRendering_scrollState_traitCollection___block_invoke_55;
  v47[3] = &unk_2781AF0B8;
  v47[4] = &v52;
  v47[5] = &v48;
  [noteCopy enumerateAttachmentsInOrderUsingBlock:v47];
  calculateDocumentController = [noteCopy calculateDocumentController];
  [calculateDocumentController updateAffectingChangeCounts:0];
  if ([calculateDocumentController hasExpressions])
  {
    v42 = v24;
    v43 = noteCopy;
    v44 = controllerCopy;
    v26 = objc_alloc(MEMORY[0x277CCAB48]);
    tTTextStorage = [(ICEditingTextView *)v23 TTTextStorage];
    attributedString = [tTTextStorage attributedString];
    v29 = [v26 initWithAttributedString:attributedString];

    ic_range = [v29 ic_range];
    [calculateDocumentController formatExpressionsInAttributedString:v29 range:ic_range textStorageOffset:v31 skipStaleExpressions:{0, 1}];
    tTTextStorage2 = [(ICEditingTextView *)v23 TTTextStorage];
    tTTextStorage3 = [(ICEditingTextView *)v23 TTTextStorage];
    ic_range2 = [tTTextStorage3 ic_range];
    v36 = v35;
    v37 = [v29 copy];
    [tTTextStorage2 replaceCharactersInRange:ic_range2 withAttributedString:{v36, v37}];

    noteCopy = v43;
    controllerCopy = v44;
    v24 = v42;
  }

  if (![MEMORY[0x277D368E8] isEnabled] || (v49[3] & 1) == 0 && ((v53[3] & 1) != 0 || ((v24 ^ 1) & 1) != 0) || (objc_msgSend(noteCopy, "isUnsupported") & 1) != 0)
  {
    [(ICTextView *)v23 setStylusDrawingEnabled:1];
  }

  else
  {
    [(ICTextView *)v23 setPaperEnabled:1];
    if (*(v53 + 24) == 1)
    {
      managedObjectContext = [noteCopy managedObjectContext];
      if (managedObjectContext)
      {
        v41 = [[_TtC11NotesEditor28ICInlineDrawingUpgradeHelper alloc] initWithNote:noteCopy managedObjectContext:managedObjectContext textView:v23];
        [(ICInlineDrawingUpgradeHelper *)v41 upgradeAllAttachmentsInNote];
      }
    }
  }

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    ic_pkTiledView = [(ICTextView *)v23 ic_pkTiledView];
    [ic_pkTiledView setOverrideUserInterfaceStyle:1];
  }

  [(ICTextView *)v23 _setContentScrollInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  [(ICBaseLayoutManager *)v18 setTextView:v23];

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);

  return v23;
}

void __173__ICTextViewController_createTextViewUsingTextController_stylingTextUsingSeparateTextStorageForRendering_note_containerWidth_forManualRendering_scrollState_traitCollection___block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = @"UseNonContiguousLayout";
  v3[0] = MEMORY[0x277CBEC38];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  [v0 registerDefaults:v1];
}

void __173__ICTextViewController_createTextViewUsingTextController_stylingTextUsingSeparateTextStorageForRendering_note_containerWidth_forManualRendering_scrollState_traitCollection___block_invoke_55(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 attachmentType] == 10)
  {
    v3 = 32;
    v4 = v6;
LABEL_6:
    *(*(*(a1 + v3) + 8) + 24) = 1;
    goto LABEL_7;
  }

  v5 = [v6 attachmentType] == 13;
  v4 = v6;
  if (v5)
  {
    v3 = 40;
    goto LABEL_6;
  }

LABEL_7:
}

+ (id)printFormatterForNote:(id)note withSize:(CGSize)size traitCollection:(id)collection
{
  height = size.height;
  width = size.width;
  v8 = MEMORY[0x277D36968];
  collectionCopy = collection;
  noteCopy = note;
  v11 = objc_alloc_init(v8);
  [v11 setDisableSingleLineA:1];
  userInterfaceStyle = [collectionCopy userInterfaceStyle];
  [v11 setOverrideAppearanceType:userInterfaceStyle == 2];
  [v11 setIsForPrint:1];
  v13 = [ICTextViewController createTextViewUsingTextController:v11 stylingTextUsingSeparateTextStorageForRendering:1 note:noteCopy containerWidth:1 forManualRendering:0 scrollState:collectionCopy traitCollection:width];

  v14 = [MEMORY[0x277D75348] ic_tintColorWithTraitCollection:collectionCopy];
  [v13 setTintColor:v14];

  objc_opt_class();
  textStorage = [v13 textStorage];
  v43 = ICDynamicCast();

  [v43 setStyler:v11];
  [v13 setOverrideUserInterfaceStyle:userInterfaceStyle];
  preferredDefaultFontColor = [MEMORY[0x277D75348] preferredDefaultFontColor];
  v17 = [preferredDefaultFontColor resolvedColorWithTraitCollection:collectionCopy];

  textStorage2 = [v13 textStorage];
  [textStorage2 beginEditing];

  textStorage3 = [v13 textStorage];
  v20 = *MEMORY[0x277D740C0];
  textStorage4 = [v13 textStorage];
  ic_range = [textStorage4 ic_range];
  v24 = v23;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __71__ICTextViewController_printFormatterForNote_withSize_traitCollection___block_invoke;
  v47[3] = &unk_2781AC8D0;
  v48 = v13;
  v49 = v17;
  v42 = v17;
  v25 = v13;
  [textStorage3 enumerateAttribute:v20 inRange:ic_range options:v24 usingBlock:{0, v47}];

  objc_opt_class();
  layoutManager = [v25 layoutManager];
  v27 = ICDynamicCast();

  [v27 setIsRenderingImageForPrint:1];
  textStorage5 = [v25 textStorage];
  v29 = *MEMORY[0x277D74060];
  textStorage6 = [v25 textStorage];
  ic_range2 = [textStorage6 ic_range];
  v33 = v32;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __71__ICTextViewController_printFormatterForNote_withSize_traitCollection___block_invoke_2;
  v44[3] = &unk_2781AF628;
  v45 = v27;
  v46 = userInterfaceStyle;
  v34 = v27;
  [textStorage5 enumerateAttribute:v29 inRange:ic_range2 options:v33 usingBlock:{0, v44}];

  textStorage7 = [v25 textStorage];
  [textStorage7 endEditing];

  objc_opt_class();
  layoutManager2 = [v25 layoutManager];
  v37 = ICDynamicCast();
  [v37 setShouldAdjustTodoButtonFramesForPrinting:1];

  objc_opt_class();
  layoutManager3 = [v25 layoutManager];
  v39 = ICDynamicCast();
  [v39 setOverrideTraitCollection:collectionCopy];

  [v25 setFrame:{0.0, 0.0, width, height}];
  viewPrintFormatter = [v25 viewPrintFormatter];
  [viewPrintFormatter setPerPageContentInsets:{8.0, 8.0, 8.0, 8.0}];
  [v11 setIsForPrint:0];

  return viewPrintFormatter;
}

void __71__ICTextViewController_printFormatterForNote_withSize_traitCollection___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x277D75348];
  v8 = a2;
  v9 = [v7 preferredDefaultFontColor];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = [*(a1 + 32) textStorage];
    [v11 addAttribute:*MEMORY[0x277D740C0] value:*(a1 + 40) range:{a3, a4}];
  }
}

void __71__ICTextViewController_printFormatterForNote_withSize_traitCollection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v6 = ICDynamicCast();

  v4 = v6;
  if (v6)
  {
    v5 = [*(a1 + 32) viewForTextAttachment:v6];
    [v5 setOverrideUserInterfaceStyle:*(a1 + 40)];

    v4 = v6;
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_backgroundColor, color);
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    v5 = 0;
  }

  else
  {
    v5 = colorCopy;
  }

  textView = [(ICTextViewController *)self textView];
  [textView setBackgroundColor:v5];

  backgroundView = [(ICTextViewController *)self backgroundView];
  [backgroundView setBackgroundColor:colorCopy];

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    view = [(ICTextViewController *)self view];
    [view setBackgroundColor:colorCopy];
  }
}

- (void)splitViewControllerWillBeginAnimatedTransitionToStateRequest:(id)request
{
  v65 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  objc_opt_class();
  v41 = requestCopy;
  object = [requestCopy object];
  v42 = ICCheckedDynamicCast();

  splitViewControllerDidEndAnimatedTransitionToStateRequestHandler = [(ICTextViewController *)self splitViewControllerDidEndAnimatedTransitionToStateRequestHandler];
  if (!splitViewControllerDidEndAnimatedTransitionToStateRequestHandler)
  {
    ic_viewControllerManager = [v42 ic_viewControllerManager];
    ic_viewControllerManager2 = [(ICTextViewController *)self ic_viewControllerManager];

    if (ic_viewControllerManager != ic_viewControllerManager2)
    {
      goto LABEL_29;
    }

    objc_initWeak(&location, self);
    layoutManager = [(ICTextViewController *)self layoutManager];
    textView = [(ICTextViewController *)self textView];
    [textView setIsTransitioningToNewSize:1];
    captureContentOffsetStateIfNecessary = [(ICTextViewController *)self captureContentOffsetStateIfNecessary];
    [(ICTextViewController *)self setTransitionScrollState:captureContentOffsetStateIfNecessary];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __85__ICTextViewController_splitViewControllerWillBeginAnimatedTransitionToStateRequest___block_invoke;
    v58[3] = &unk_2781AF650;
    objc_copyWeak(&v62, &location);
    v38 = captureContentOffsetStateIfNecessary;
    v59 = v38;
    v37 = layoutManager;
    v60 = v37;
    v47 = textView;
    v61 = v47;
    [(ICTextViewController *)self setSplitViewControllerDidEndAnimatedTransitionToStateRequestHandler:v58];
    objc_opt_class();
    object2 = [v41 object];
    v40 = ICDynamicCast();

    objc_opt_class();
    userInfo = [v41 userInfo];
    v13 = [userInfo objectForKeyedSubscript:@"ICSplitViewControllerPredictedDetailSizeUserInfo"];
    v39 = ICDynamicCast();

    viewControllerManager = [(ICTextViewController *)self viewControllerManager];
    mainSplitViewController = [viewControllerManager mainSplitViewController];
    if (v40 != mainSplitViewController || ![(ICTextViewController *)self shouldAnimateTransitionForSplitViewController:?])
    {
      goto LABEL_27;
    }

    if (!v39)
    {
LABEL_28:

      objc_destroyWeak(&v62);
      objc_destroyWeak(&location);
      goto LABEL_29;
    }

    [v39 CGSizeValue];
    v16 = v15;
    v18 = v17;
    viewControllerManager = [MEMORY[0x277CBEB18] array];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    superview = [v47 superview];
    obj = [superview constraints];

    v20 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (!v20)
    {
      goto LABEL_24;
    }

    v45 = *v55;
LABEL_9:
    v21 = 0;
    while (1)
    {
      if (*v55 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v54 + 1) + 8 * v21);
      firstItem = [v22 firstItem];
      if (firstItem != v47)
      {
        mainSplitViewController = [v22 secondItem];
        if (mainSplitViewController != v47)
        {
          goto LABEL_18;
        }
      }

      firstItem2 = [v22 firstItem];
      attributionSidebarView = [(ICTextViewController *)self attributionSidebarView];
      v26 = attributionSidebarView;
      if (firstItem2 != attributionSidebarView)
      {
        secondItem = [v22 secondItem];
        attributionSidebarView2 = [(ICTextViewController *)self attributionSidebarView];

        if (firstItem != v47)
        {
        }

        if (secondItem != attributionSidebarView2)
        {
          [viewControllerManager addObject:v22];
        }

        goto LABEL_22;
      }

      if (firstItem != v47)
      {
LABEL_18:
      }

LABEL_22:
      if (v20 == ++v21)
      {
        v20 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
        if (!v20)
        {
LABEL_24:

          [(ICTextViewController *)self setTransitionConstraints:viewControllerManager];
          [MEMORY[0x277CCAAD0] deactivateConstraints:viewControllerManager];
          [v47 setTranslatesAutoresizingMaskIntoConstraints:1];
          userInfo2 = [v41 userInfo];
          v30 = [userInfo2 objectForKeyedSubscript:@"ICSplitViewControllerPredictedDurationUserInfo"];
          v31 = v30;
          v32 = &unk_28277E680;
          if (v30)
          {
            v32 = v30;
          }

          mainSplitViewController = v32;

          v33 = MEMORY[0x277D75D18];
          [mainSplitViewController floatValue];
          v35 = v34;
          v50[0] = MEMORY[0x277D85DD0];
          v50[1] = 3221225472;
          v50[2] = __85__ICTextViewController_splitViewControllerWillBeginAnimatedTransitionToStateRequest___block_invoke_74;
          v50[3] = &unk_2781AC678;
          v50[4] = self;
          v36 = v47;
          v51 = v36;
          v52 = v16;
          v53 = v18;
          [v33 transitionWithView:v36 duration:5242880 options:v50 animations:0 completion:v35];
          [v36 setAlpha:0.0];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __85__ICTextViewController_splitViewControllerWillBeginAnimatedTransitionToStateRequest___block_invoke_2;
          block[3] = &unk_2781ABEB8;
          block[4] = self;
          v49 = v36;
          dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_27:
          goto LABEL_28;
        }

        goto LABEL_9;
      }
    }
  }

LABEL_29:
}

uint64_t __85__ICTextViewController_splitViewControllerWillBeginAnimatedTransitionToStateRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained applyCapturedContentOffsetStateIfNecessary:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 56));
  [v3 setTransitionScrollState:0];

  v4 = *(a1 + 40);
  [*(a1 + 48) bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [*(a1 + 48) textContainer];
  v14 = [v4 glyphRangeForBoundingRect:v13 inTextContainer:{v6, v8, v10, v12}];
  v16 = v15;

  v17 = [*(a1 + 40) characterRangeForGlyphRange:v14 actualGlyphRange:{v16, 0}];
  v19 = v18;
  [*(a1 + 40) invalidateLayoutForCharacterRange:v17 actualCharacterRange:{v18, 0}];
  [*(a1 + 40) invalidateDisplayForCharacterRange:{v17, v19}];
  [*(a1 + 40) ensureLayoutForCharacterRange:{v17, v19}];
  v20 = *(a1 + 40);

  return [v20 updateVisibleSupplementalViews];
}

uint64_t __85__ICTextViewController_splitViewControllerWillBeginAnimatedTransitionToStateRequest___block_invoke_74(uint64_t a1)
{
  v2 = [*(a1 + 32) attributionSidebarView];
  [v2 visibleContentWidth];
  v4 = v3;

  v8.size.width = *(a1 + 48);
  v8.size.height = *(a1 + 56);
  v8.origin.y = 0.0;
  v8.origin.x = v4;
  v9 = CGRectIntegral(v8);
  v5 = *(a1 + 40);

  return [v5 setFrame:{v9.origin.x, v9.origin.y, v9.size.width, v9.size.height}];
}

void __85__ICTextViewController_splitViewControllerWillBeginAnimatedTransitionToStateRequest___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) splitViewControllerDidEndAnimatedTransitionToStateRequestHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) splitViewControllerDidEndAnimatedTransitionToStateRequestHandler];
    v3[2]();
  }

  v4 = MEMORY[0x277D75D18];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__ICTextViewController_splitViewControllerWillBeginAnimatedTransitionToStateRequest___block_invoke_3;
  v5[3] = &unk_2781ABCF8;
  v6 = *(a1 + 40);
  [v4 animateWithDuration:v5 animations:0.3];
}

- (void)splitViewControllerDidEndAnimatedTransitionToStateRequest:(id)request
{
  requestCopy = request;
  NSClassFromString(&cfstr_Icmainsplitvie.isa);
  object = [requestCopy object];

  v20 = ICCheckedDynamicCast();

  viewControllerManager = [(ICTextViewController *)self viewControllerManager];
  mainSplitViewController = [viewControllerManager mainSplitViewController];

  v8 = v20;
  if (mainSplitViewController == v20)
  {
    textView = [(ICTextViewController *)self textView];
    [textView setIsTransitioningToNewSize:0];
    splitViewControllerDidEndAnimatedTransitionToStateRequestHandler = [(ICTextViewController *)self splitViewControllerDidEndAnimatedTransitionToStateRequestHandler];

    if (splitViewControllerDidEndAnimatedTransitionToStateRequestHandler)
    {
      splitViewControllerDidEndAnimatedTransitionToStateRequestHandler2 = [(ICTextViewController *)self splitViewControllerDidEndAnimatedTransitionToStateRequestHandler];
      splitViewControllerDidEndAnimatedTransitionToStateRequestHandler2[2]();

      [(ICTextViewController *)self setSplitViewControllerDidEndAnimatedTransitionToStateRequestHandler:0];
    }

    transitionScrollState = [(ICTextViewController *)self transitionScrollState];
    [(ICTextViewController *)self applyCapturedContentOffsetStateIfNecessary:transitionScrollState];

    [(ICTextViewController *)self setTransitionScrollState:0];
    window = [textView window];
    if (window)
    {
      v14 = window;
      translatesAutoresizingMaskIntoConstraints = [textView translatesAutoresizingMaskIntoConstraints];

      if (translatesAutoresizingMaskIntoConstraints)
      {
        [textView setTranslatesAutoresizingMaskIntoConstraints:0];
        superview = [textView superview];
        transitionConstraints = [(ICTextViewController *)self transitionConstraints];
        [superview addConstraints:transitionConstraints];

        v18 = MEMORY[0x277CCAAD0];
        transitionConstraints2 = [(ICTextViewController *)self transitionConstraints];
        [v18 activateConstraints:transitionConstraints2];

        [(ICTextViewController *)self setTransitionConstraints:0];
      }
    }

    v8 = v20;
  }
}

- (void)layoutManagerDidInvalidateLayout:(id)layout
{
  layoutManager = [(ICTextViewController *)self layoutManager];
  [layoutManager clearLayoutEnsuredBounds];
}

- (void)layoutManager:(id)manager didCompleteLayoutForTextContainer:(id)container atEnd:(BOOL)end
{
  v6 = [(ICTextViewController *)self layoutManager:manager];
  [v6 updateVisibleSupplementalViews];

  objc_opt_class();
  textView = [(ICTextViewController *)self textView];
  v12 = ICDynamicCast();

  ic_visibleRange = [v12 ic_visibleRange];
  [v12 updateStyleLayersInRange:{ic_visibleRange, v9}];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  textView2 = [(ICTextViewController *)self textView];
  [defaultCenter postNotificationName:@"ICTextViewLayoutDidChangeNotification" object:textView2];
}

- (ICViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerManager);

  return WeakRetained;
}

- (void)initWithViewControllerManager:(double)a3 editorViewController:note:initialContainerWidth:scrollState:.cold.1(void *a1, NSObject *a2, double a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 note];
  v6 = [v5 identifier];
  v7 = 138412546;
  v8 = v6;
  v9 = 2048;
  v10 = (a3 * 1000.0);
  _os_log_debug_impl(&dword_2151A1000, a2, OS_LOG_TYPE_DEBUG, "TextView for note %@ loaded in: %ld ms", &v7, 0x16u);
}

@end