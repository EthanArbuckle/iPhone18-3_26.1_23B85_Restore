@interface ICTextViewController
+ (id)createTextViewUsingTextController:(id)a3 stylingTextUsingSeparateTextStorageForRendering:(BOOL)a4 note:(id)a5 containerWidth:(double)a6 forManualRendering:(BOOL)a7 scrollState:(id)a8 traitCollection:(id)a9;
+ (id)printFormatterForNote:(id)a3 withSize:(CGSize)a4 traitCollection:(id)a5;
- (ICLayoutManager)layoutManager;
- (ICTextView)textView;
- (ICTextView)textViewIfLoaded;
- (ICTextViewController)initWithViewControllerManager:(id)a3 editorViewController:(id)a4 note:(id)a5 initialContainerWidth:(double)a6 scrollState:(id)a7;
- (ICViewControllerManager)viewControllerManager;
- (id)captureContentOffsetStateIfNecessary;
- (id)editorController;
- (void)applyCapturedContentOffsetStateIfNecessary:(id)a3;
- (void)applyInitialScrollState;
- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5;
- (void)layoutManagerDidInvalidateLayout:(id)a3;
- (void)loadView;
- (void)setAttributionSidebarWidth:(double)a3 isGestureActive:(BOOL)a4 animated:(BOOL)a5 currentVelocity:(double)a6;
- (void)setBackgroundColor:(id)a3;
- (void)setIgnoresTaps:(BOOL)a3;
- (void)splitViewControllerDidEndAnimatedTransitionToStateRequest:(id)a3;
- (void)splitViewControllerWillBeginAnimatedTransitionToStateRequest:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ICTextViewController

- (ICTextViewController)initWithViewControllerManager:(id)a3 editorViewController:(id)a4 note:(id)a5 initialContainerWidth:(double)a6 scrollState:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v46.receiver = self;
  v46.super_class = ICTextViewController;
  v16 = [(ICTextViewController *)&v46 initWithNibName:0 bundle:0];
  if (v16)
  {
    v45 = v14;
    v17 = objc_alloc_init(MEMORY[0x277D36968]);
    textController = v16->_textController;
    v16->_textController = v17;

    objc_storeWeak(&v16->_viewControllerManager, v12);
    objc_storeStrong(&v16->_note, a5);
    v16->_initialContainerWidth = a6;
    objc_storeStrong(&v16->_initialScrollState, a7);
    v19 = [MEMORY[0x277CBEB58] set];
    enabledSubviews = v16->_enabledSubviews;
    v16->_enabledSubviews = v19;

    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:v16 selector:sel_splitViewControllerWillBeginAnimatedTransitionToStateRequest_ name:@"ICSplitViewControllerWillBeginAnimatedTransitionToStateRequest" object:0];

    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    [v22 addObserver:v16 selector:sel_splitViewControllerDidEndAnimatedTransitionToStateRequest_ name:@"ICSplitViewControllerDidEndAnimatedTransitionToStateRequest" object:0];

    v23 = [MEMORY[0x277CBEAA8] now];
    v24 = objc_opt_class();
    v25 = [(ICTextViewController *)v16 textController];
    v26 = [(ICTextViewController *)v16 note];
    [(ICTextViewController *)v16 initialContainerWidth];
    v28 = v27;
    v29 = [(ICTextViewController *)v16 transitionScrollState];
    v30 = [v13 traitCollection];
    v31 = [v24 createTextViewUsingTextController:v25 stylingTextUsingSeparateTextStorageForRendering:0 note:v26 containerWidth:0 forManualRendering:v29 scrollState:v30 traitCollection:v28];
    textView = v16->_textView;
    v16->_textView = v31;

    [(ICTextView *)v16->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ICTextView *)v16->_textView setClipsToBounds:0];
    v33 = [(ICTextView *)v16->_textView layoutManager];
    [v33 setDelegate:v16];

    [(ICEditingTextView *)v16->_textView setEditorController:v13];
    v34 = [MEMORY[0x277CBEAA8] date];
    [v34 timeIntervalSinceDate:v23];
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
    v40 = [(ICEditingTextView *)v16->_textView editorController];
    v41 = [v40 isEditingOnSystemPaper];

    if ((v41 & 1) == 0)
    {
      v42 = objc_alloc_init(ICAttributionSidebarView);
      attributionSidebarView = v16->_attributionSidebarView;
      v16->_attributionSidebarView = v42;

      [(ICAttributionSidebarView *)v16->_attributionSidebarView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(ICAttributionSidebarView *)v16->_attributionSidebarView setTextView:v16->_textView];
    }

    v14 = v45;
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
  v3 = [(ICTextViewController *)self view];
  v4 = [(ICTextViewController *)self textView];
  [v3 addSubview:v4];

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    v5 = [(ICTextViewController *)self textView];
    v6 = [(ICTextViewController *)self backgroundView];
    [v5 insertSubview:v6 atIndex:0];

    v7 = [(ICTextViewController *)self attributionSidebarView];

    if (v7)
    {
      v8 = [(ICTextViewController *)self textView];
      v9 = [(ICTextViewController *)self attributionSidebarView];
      [v8 insertSubview:v9 atIndex:0];

      v46 = MEMORY[0x277CCAAD0];
      v67 = [(ICTextViewController *)self attributionSidebarView];
      v10 = [v67 widthAnchor];
      v63 = [(ICTextViewController *)self attributionSidebarView];
      [v63 fullContentWidth];
      v65 = v10;
      v11 = [v10 constraintEqualToConstant:?];
      attributionSidebarWidthConstraint = self->_attributionSidebarWidthConstraint;
      self->_attributionSidebarWidthConstraint = v11;

      v72[0] = v11;
      v61 = [(ICTextViewController *)self attributionSidebarView];
      v13 = [v61 topAnchor];
      v57 = [(ICTextViewController *)self backgroundView];
      [v57 topAnchor];
      v55 = v59 = v13;
      v53 = [v13 constraintEqualToAnchor:?];
      v72[1] = v53;
      v51 = [(ICTextViewController *)self attributionSidebarView];
      v14 = [v51 trailingAnchor];
      v15 = [(ICTextViewController *)self textView];
      v16 = [v15 leadingAnchor];
      v49 = v14;
      v17 = [v14 constraintEqualToAnchor:v16];
      v72[2] = v17;
      v18 = [(ICTextViewController *)self attributionSidebarView];
      v19 = [v18 bottomAnchor];
      v20 = [(ICTextViewController *)self backgroundView];
      v21 = [v20 bottomAnchor];
      v22 = [v19 constraintEqualToAnchor:v21];
      v72[3] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:4];
      [v46 activateConstraints:v23];

LABEL_6:
    }
  }

  else
  {
    v24 = [(ICTextViewController *)self attributionSidebarView];

    if (v24)
    {
      v25 = [(ICTextViewController *)self textView];
      v26 = [(ICTextViewController *)self attributionSidebarView];
      [v25 insertSubview:v26 atIndex:0];

      v47 = MEMORY[0x277CCAAD0];
      v67 = [(ICTextViewController *)self attributionSidebarView];
      v27 = [v67 topAnchor];
      v63 = [(ICTextViewController *)self textView];
      [v63 topAnchor];
      v61 = v65 = v27;
      v59 = [v27 constraintEqualToAnchor:?];
      v71[0] = v59;
      v57 = [(ICTextViewController *)self attributionSidebarView];
      v28 = [v57 heightAnchor];
      v53 = [(ICTextViewController *)self textView];
      [v53 heightAnchor];
      v51 = v55 = v28;
      v49 = [v28 constraintEqualToAnchor:?];
      v71[1] = v49;
      v15 = [(ICTextViewController *)self attributionSidebarView];
      v16 = [v15 trailingAnchor];
      v17 = [(ICTextViewController *)self view];
      v18 = [v17 leadingAnchor];
      v29 = [v16 constraintEqualToAnchor:v18];
      attributionSidebarTrailingConstraint = self->_attributionSidebarTrailingConstraint;
      self->_attributionSidebarTrailingConstraint = v29;

      v71[2] = v29;
      v19 = [(ICTextViewController *)self attributionSidebarView];
      v20 = [v19 widthAnchor];
      v21 = [(ICTextViewController *)self attributionSidebarView];
      [v21 fullContentWidth];
      v31 = [v20 constraintEqualToConstant:?];
      v32 = self->_attributionSidebarWidthConstraint;
      self->_attributionSidebarWidthConstraint = v31;

      v71[3] = v31;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:4];
      [v47 activateConstraints:v22];
      goto LABEL_6;
    }
  }

  v54 = MEMORY[0x277CCAAD0];
  v68 = [(ICTextViewController *)self textView];
  v64 = [v68 leadingAnchor];
  v66 = [(ICTextViewController *)self view];
  v62 = [v66 leadingAnchor];
  v33 = [v64 constraintEqualToAnchor:v62];
  textViewLeadingConstraint = self->_textViewLeadingConstraint;
  self->_textViewLeadingConstraint = v33;

  v70[0] = v33;
  v60 = [(ICTextViewController *)self textView];
  v56 = [v60 topAnchor];
  v58 = [(ICTextViewController *)self view];
  v52 = [v58 topAnchor];
  v50 = [v56 constraintEqualToAnchor:v52];
  v70[1] = v50;
  v48 = [(ICTextViewController *)self textView];
  v45 = [v48 widthAnchor];
  v35 = [(ICTextViewController *)self view];
  v36 = [v35 widthAnchor];
  v37 = [v45 constraintEqualToAnchor:v36];
  v70[2] = v37;
  v38 = [(ICTextViewController *)self textView];
  v39 = [v38 bottomAnchor];
  v40 = [(ICTextViewController *)self view];
  v41 = [v40 bottomAnchor];
  v42 = [v39 constraintEqualToAnchor:v41];
  v70[3] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:4];
  [v54 activateConstraints:v43];

  v44 = [(ICTextViewController *)self textView];
  [v44 setFindInteractionEnabled:1];
}

- (void)setIgnoresTaps:(BOOL)a3
{
  v3 = a3;
  v29 = *MEMORY[0x277D85DE8];
  self->_ignoresTaps = a3;
  if (a3)
  {
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v5 = [(ICTextViewController *)self textView];
    v6 = [v5 subviews];

    v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          if ([v11 isUserInteractionEnabled])
          {
            v12 = [(ICTextViewController *)self enabledSubviews];
            [v12 addObject:v11];

            [v11 setUserInteractionEnabled:0];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
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
    v13 = [(ICTextViewController *)self enabledSubviews];
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
            objc_enumerationMutation(v13);
          }

          [*(*(&v19 + 1) + 8 * j) setUserInteractionEnabled:1];
        }

        v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v15);
    }

    v6 = [(ICTextViewController *)self enabledSubviews];
    [v6 removeAllObjects];
  }

  v18 = [(ICTextViewController *)self textView];
  [v18 setSelectable:!v3];
}

- (void)setAttributionSidebarWidth:(double)a3 isGestureActive:(BOOL)a4 animated:(BOOL)a5 currentVelocity:(double)a6
{
  v7 = a5;
  v8 = a4;
  v11 = [(ICTextViewController *)self attributionSidebarView];

  if (!v11)
  {
    return;
  }

  v12 = [(ICTextViewController *)self textViewLeadingConstraint];
  [v12 constant];
  v14 = v13;

  if (v14 == a3)
  {
    v15 = [(ICTextViewController *)self attributionSidebarView];
    [v15 setVisibleContentWidth:v8 isGestureActive:a3];

    if (a3 == 0.0)
    {

      [(ICTextViewController *)self setIgnoresTaps:0];
    }

    return;
  }

  v16 = [(ICTextViewController *)self attributionSidebarOpenedDate];
  [v16 timeIntervalSinceNow];
  v18 = v17;

  v19 = [(ICTextViewController *)self attributionSidebarView];
  [v19 visibleContentWidth];
  if (a3 == 0.0 && v20 > 0.0)
  {
    if (v18 < 0.0)
    {
      v18 = -v18;
    }

    if (v18 <= 2.0)
    {
      goto LABEL_14;
    }

    v19 = [MEMORY[0x277CBEAA8] now];
    v21 = [(ICTextViewController *)self note];
    [v21 setLastAttributionsViewedDate:v19];
  }

LABEL_14:
  v22 = [(ICTextViewController *)self attributionSidebarView];
  [v22 fullContentWidth];
  v24 = v23;

  if (v24 == a3)
  {
    v25 = [(ICTextViewController *)self textView];
    [v25 clampTextView];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__ICTextViewController_setAttributionSidebarWidth_isGestureActive_animated_currentVelocity___block_invoke;
  aBlock[3] = &unk_2781AF5D8;
  aBlock[4] = self;
  v35 = v24 == a3;
  *&aBlock[5] = a3;
  v26 = _Block_copy(aBlock);
  v27 = [(ICTextViewController *)self attributionSidebarView];
  [v27 setVisibleContentWidth:v8 isGestureActive:a3];

  if (v7)
  {
    v28 = 1.0;
    if (a6 > 0.0)
    {
      v29 = [(ICTextViewController *)self attributionSidebarView];
      [v29 visibleContentWidth];
      v28 = (a3 - v30) / a6;
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __92__ICTextViewController_setAttributionSidebarWidth_isGestureActive_animated_currentVelocity___block_invoke_2;
    v33[3] = &unk_2781AD1C0;
    v33[4] = self;
    *&v33[5] = a3;
    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v33 usingSpringWithDamping:v26 initialSpringVelocity:0.3 options:0.0 animations:0.65 completion:v28];
  }

  else
  {
    if ([MEMORY[0x277D75418] ic_isVision])
    {
      v31 = [(ICTextViewController *)self view];
      [v31 setNeedsLayout];
    }

    else
    {
      v32 = [(ICTextViewController *)self textViewLeadingConstraint];
      [v32 setConstant:a3];

      v31 = [(ICTextViewController *)self attributionSidebarTrailingConstraint];
      [v31 setConstant:a3];
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
  v3 = [(ICTextViewController *)self view];
  if (v3)
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
  v3 = [(ICTextViewController *)self viewIfLoaded];
  if (v3)
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
  v2 = [(ICTextViewController *)self textView];
  v3 = [v2 editorController];

  return v3;
}

- (ICLayoutManager)layoutManager
{
  objc_opt_class();
  v3 = [(ICTextViewController *)self textView];
  v4 = [v3 layoutManager];
  v5 = ICCheckedDynamicCast();

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(ICTextViewController *)self captureContentOffsetStateIfNecessary];
  [(ICTextViewController *)self setTransitionScrollState:v8];
  v9 = [(ICTextViewController *)self textView];
  [v9 setIsTransitioningToNewSize:1];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__ICTextViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v14[3] = &unk_2781AF600;
  v14[4] = self;
  v15 = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__ICTextViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v12[3] = &unk_2781AF600;
  v12[4] = self;
  v13 = v15;
  v10 = v15;
  [v7 animateAlongsideTransition:v14 completion:v12];
  v11.receiver = self;
  v11.super_class = ICTextViewController;
  [(ICTextViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

uint64_t __75__ICTextViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) applyCapturedContentOffsetStateIfNecessary:*(a1 + 40)];
  v2 = [*(a1 + 32) textView];
  [v2 setIsTransitioningToNewSize:0];

  v3 = *(a1 + 32);

  return [v3 setTransitionScrollState:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ICTextViewController;
  [(ICTextViewController *)&v4 viewDidAppear:a3];
  [(ICTextViewController *)self applyInitialScrollState];
}

- (void)applyInitialScrollState
{
  v3 = [(ICTextViewController *)self initialScrollState];

  if (v3)
  {
    v4 = [(ICTextViewController *)self initialScrollState];
    [(ICTextViewController *)self applyCapturedContentOffsetStateIfNecessary:v4];
  }

  [(ICTextViewController *)self setInitialScrollState:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = ICTextViewController;
  [(ICTextViewController *)&v9 viewWillDisappear:a3];
  v4 = [(ICTextViewController *)self attributionSidebarView];

  if (v4)
  {
    v5 = [(ICTextViewController *)self attributionSidebarView];
    [v5 unfocusAttributionDetails];

    v6 = [(ICTextViewController *)self textView];
    v7 = [v6 editorController];
    v8 = [v7 attributionSidebarController];
    [v8 hideSidebarAnimated:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v22.receiver = self;
  v22.super_class = ICTextViewController;
  [(ICTextViewController *)&v22 viewDidLayoutSubviews];
  v3 = [(ICTextViewController *)self textView];
  v4 = [v3 isTransitioningToNewSize];

  if (v4)
  {
    v5 = [(ICTextViewController *)self transitionScrollState];
LABEL_3:
    v6 = v5;
    [(ICTextViewController *)self applyCapturedContentOffsetStateIfNecessary:v5];

    goto LABEL_8;
  }

  if (![(ICTextViewController *)self performingInitialSetup])
  {
    v7 = [(ICTextViewController *)self initialScrollState];
    if (v7)
    {
      v8 = v7;
      v9 = [(ICTextViewController *)self textView];
      [v9 bounds];
      v11 = v10;

      if (v11 > 0.0)
      {
        v5 = [(ICTextViewController *)self initialScrollState];
        goto LABEL_3;
      }
    }
  }

LABEL_8:
  v12 = [MEMORY[0x277D75418] ic_isVision];
  v13 = [(ICTextViewController *)self attributionSidebarView];
  v14 = v13;
  if (v12)
  {
    [v13 visibleContentWidth];
    v16 = v15;
    v17 = [(ICTextViewController *)self textViewLeadingConstraint];
    [v17 setConstant:v16];
  }

  else
  {

    if (!v14)
    {
      return;
    }
  }

  v18 = [(ICTextViewController *)self attributionSidebarView];
  [v18 fullContentWidth];
  v20 = v19;
  v21 = [(ICTextViewController *)self attributionSidebarWidthConstraint];
  [v21 setConstant:v20];
}

- (id)captureContentOffsetStateIfNecessary
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 BOOLForKey:*MEMORY[0x277D362D8]];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(ICTextViewController *)self textView];
    v5 = [ICTextViewScrollState scrollStateForTextView:v6];
  }

  return v5;
}

- (void)applyCapturedContentOffsetStateIfNecessary:(id)a3
{
  v7 = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 BOOLForKey:*MEMORY[0x277D362D8]];

  if (+[ICExtensionSafeAPIShims applicationState]!= 2 && (v5 & 1) == 0)
  {
    v6 = [(ICTextViewController *)self textView];
    [v7 applyToTextView:v6];
  }
}

+ (id)createTextViewUsingTextController:(id)a3 stylingTextUsingSeparateTextStorageForRendering:(BOOL)a4 note:(id)a5 containerWidth:(double)a6 forManualRendering:(BOOL)a7 scrollState:(id)a8 traitCollection:(id)a9
{
  v11 = a7;
  v14 = a4;
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v46 = a9;
  v18 = objc_alloc_init(ICLayoutManager);
  [(ICLayoutManager *)v18 setShouldManuallyRenderSeparateSubviews:v11];
  if (createTextViewUsingTextController_stylingTextUsingSeparateTextStorageForRendering_note_containerWidth_forManualRendering_scrollState_traitCollection__onceToken != -1)
  {
    +[ICTextViewController createTextViewUsingTextController:stylingTextUsingSeparateTextStorageForRendering:note:containerWidth:forManualRendering:scrollState:traitCollection:];
  }

  v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v20 = [v19 BOOLForKey:@"UseNonContiguousLayout"];

  if (v20)
  {
    [(ICLayoutManager *)v18 setAllowsNonContiguousLayout:1];
    v21 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [ICTextViewController createTextViewUsingTextController:v21 stylingTextUsingSeparateTextStorageForRendering:? note:? containerWidth:? forManualRendering:? scrollState:? traitCollection:?];
    }
  }

  v45 = v17;
  [v15 setNote:v16 stylingTextUsingSeparateTextStorageForRendering:v14 withLayoutManager:v18 traitCollection:v46 firstVisibleCharLocation:{objc_msgSend(v17, "topLeftTextCharacterIndex")}];
  v22 = [objc_alloc(MEMORY[0x277D36960]) initWithSize:{a6, 1.79769313e308}];
  [v22 setWidthTracksTextView:1];
  [(ICLayoutManager *)v18 addTextContainer:v22];
  v23 = [(ICBaseTextView *)[ICTextView alloc] initWithFrame:v22 textContainer:0.0, 0.0, a6, 0.0];
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
  [v16 enumerateAttachmentsInOrderUsingBlock:v47];
  v25 = [v16 calculateDocumentController];
  [v25 updateAffectingChangeCounts:0];
  if ([v25 hasExpressions])
  {
    v42 = v24;
    v43 = v16;
    v44 = v15;
    v26 = objc_alloc(MEMORY[0x277CCAB48]);
    v27 = [(ICEditingTextView *)v23 TTTextStorage];
    v28 = [v27 attributedString];
    v29 = [v26 initWithAttributedString:v28];

    v30 = [v29 ic_range];
    [v25 formatExpressionsInAttributedString:v29 range:v30 textStorageOffset:v31 skipStaleExpressions:{0, 1}];
    v32 = [(ICEditingTextView *)v23 TTTextStorage];
    v33 = [(ICEditingTextView *)v23 TTTextStorage];
    v34 = [v33 ic_range];
    v36 = v35;
    v37 = [v29 copy];
    [v32 replaceCharactersInRange:v34 withAttributedString:{v36, v37}];

    v16 = v43;
    v15 = v44;
    v24 = v42;
  }

  if (![MEMORY[0x277D368E8] isEnabled] || (v49[3] & 1) == 0 && ((v53[3] & 1) != 0 || ((v24 ^ 1) & 1) != 0) || (objc_msgSend(v16, "isUnsupported") & 1) != 0)
  {
    [(ICTextView *)v23 setStylusDrawingEnabled:1];
  }

  else
  {
    [(ICTextView *)v23 setPaperEnabled:1];
    if (*(v53 + 24) == 1)
    {
      v40 = [v16 managedObjectContext];
      if (v40)
      {
        v41 = [[_TtC11NotesEditor28ICInlineDrawingUpgradeHelper alloc] initWithNote:v16 managedObjectContext:v40 textView:v23];
        [(ICInlineDrawingUpgradeHelper *)v41 upgradeAllAttachmentsInNote];
      }
    }
  }

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    v38 = [(ICTextView *)v23 ic_pkTiledView];
    [v38 setOverrideUserInterfaceStyle:1];
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

+ (id)printFormatterForNote:(id)a3 withSize:(CGSize)a4 traitCollection:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = MEMORY[0x277D36968];
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(v8);
  [v11 setDisableSingleLineA:1];
  v12 = [v9 userInterfaceStyle];
  [v11 setOverrideAppearanceType:v12 == 2];
  [v11 setIsForPrint:1];
  v13 = [ICTextViewController createTextViewUsingTextController:v11 stylingTextUsingSeparateTextStorageForRendering:1 note:v10 containerWidth:1 forManualRendering:0 scrollState:v9 traitCollection:width];

  v14 = [MEMORY[0x277D75348] ic_tintColorWithTraitCollection:v9];
  [v13 setTintColor:v14];

  objc_opt_class();
  v15 = [v13 textStorage];
  v43 = ICDynamicCast();

  [v43 setStyler:v11];
  [v13 setOverrideUserInterfaceStyle:v12];
  v16 = [MEMORY[0x277D75348] preferredDefaultFontColor];
  v17 = [v16 resolvedColorWithTraitCollection:v9];

  v18 = [v13 textStorage];
  [v18 beginEditing];

  v19 = [v13 textStorage];
  v20 = *MEMORY[0x277D740C0];
  v21 = [v13 textStorage];
  v22 = [v21 ic_range];
  v24 = v23;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __71__ICTextViewController_printFormatterForNote_withSize_traitCollection___block_invoke;
  v47[3] = &unk_2781AC8D0;
  v48 = v13;
  v49 = v17;
  v42 = v17;
  v25 = v13;
  [v19 enumerateAttribute:v20 inRange:v22 options:v24 usingBlock:{0, v47}];

  objc_opt_class();
  v26 = [v25 layoutManager];
  v27 = ICDynamicCast();

  [v27 setIsRenderingImageForPrint:1];
  v28 = [v25 textStorage];
  v29 = *MEMORY[0x277D74060];
  v30 = [v25 textStorage];
  v31 = [v30 ic_range];
  v33 = v32;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __71__ICTextViewController_printFormatterForNote_withSize_traitCollection___block_invoke_2;
  v44[3] = &unk_2781AF628;
  v45 = v27;
  v46 = v12;
  v34 = v27;
  [v28 enumerateAttribute:v29 inRange:v31 options:v33 usingBlock:{0, v44}];

  v35 = [v25 textStorage];
  [v35 endEditing];

  objc_opt_class();
  v36 = [v25 layoutManager];
  v37 = ICDynamicCast();
  [v37 setShouldAdjustTodoButtonFramesForPrinting:1];

  objc_opt_class();
  v38 = [v25 layoutManager];
  v39 = ICDynamicCast();
  [v39 setOverrideTraitCollection:v9];

  [v25 setFrame:{0.0, 0.0, width, height}];
  v40 = [v25 viewPrintFormatter];
  [v40 setPerPageContentInsets:{8.0, 8.0, 8.0, 8.0}];
  [v11 setIsForPrint:0];

  return v40;
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

- (void)setBackgroundColor:(id)a3
{
  v9 = a3;
  objc_storeStrong(&self->_backgroundColor, a3);
  if ([MEMORY[0x277D75418] ic_isVision])
  {
    v5 = 0;
  }

  else
  {
    v5 = v9;
  }

  v6 = [(ICTextViewController *)self textView];
  [v6 setBackgroundColor:v5];

  v7 = [(ICTextViewController *)self backgroundView];
  [v7 setBackgroundColor:v9];

  if ([MEMORY[0x277D75418] ic_isVision])
  {
    v8 = [(ICTextViewController *)self view];
    [v8 setBackgroundColor:v9];
  }
}

- (void)splitViewControllerWillBeginAnimatedTransitionToStateRequest:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  v41 = v3;
  v4 = [v3 object];
  v42 = ICCheckedDynamicCast();

  v5 = [(ICTextViewController *)self splitViewControllerDidEndAnimatedTransitionToStateRequestHandler];
  if (!v5)
  {
    v6 = [v42 ic_viewControllerManager];
    v7 = [(ICTextViewController *)self ic_viewControllerManager];

    if (v6 != v7)
    {
      goto LABEL_29;
    }

    objc_initWeak(&location, self);
    v8 = [(ICTextViewController *)self layoutManager];
    v9 = [(ICTextViewController *)self textView];
    [v9 setIsTransitioningToNewSize:1];
    v10 = [(ICTextViewController *)self captureContentOffsetStateIfNecessary];
    [(ICTextViewController *)self setTransitionScrollState:v10];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __85__ICTextViewController_splitViewControllerWillBeginAnimatedTransitionToStateRequest___block_invoke;
    v58[3] = &unk_2781AF650;
    objc_copyWeak(&v62, &location);
    v38 = v10;
    v59 = v38;
    v37 = v8;
    v60 = v37;
    v47 = v9;
    v61 = v47;
    [(ICTextViewController *)self setSplitViewControllerDidEndAnimatedTransitionToStateRequestHandler:v58];
    objc_opt_class();
    v11 = [v41 object];
    v40 = ICDynamicCast();

    objc_opt_class();
    v12 = [v41 userInfo];
    v13 = [v12 objectForKeyedSubscript:@"ICSplitViewControllerPredictedDetailSizeUserInfo"];
    v39 = ICDynamicCast();

    v43 = [(ICTextViewController *)self viewControllerManager];
    v14 = [v43 mainSplitViewController];
    if (v40 != v14 || ![(ICTextViewController *)self shouldAnimateTransitionForSplitViewController:?])
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
    v43 = [MEMORY[0x277CBEB18] array];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v19 = [v47 superview];
    obj = [v19 constraints];

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
      v23 = [v22 firstItem];
      if (v23 != v47)
      {
        v14 = [v22 secondItem];
        if (v14 != v47)
        {
          goto LABEL_18;
        }
      }

      v24 = [v22 firstItem];
      v25 = [(ICTextViewController *)self attributionSidebarView];
      v26 = v25;
      if (v24 != v25)
      {
        v27 = [v22 secondItem];
        v28 = [(ICTextViewController *)self attributionSidebarView];

        if (v23 != v47)
        {
        }

        if (v27 != v28)
        {
          [v43 addObject:v22];
        }

        goto LABEL_22;
      }

      if (v23 != v47)
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

          [(ICTextViewController *)self setTransitionConstraints:v43];
          [MEMORY[0x277CCAAD0] deactivateConstraints:v43];
          [v47 setTranslatesAutoresizingMaskIntoConstraints:1];
          v29 = [v41 userInfo];
          v30 = [v29 objectForKeyedSubscript:@"ICSplitViewControllerPredictedDurationUserInfo"];
          v31 = v30;
          v32 = &unk_28277E680;
          if (v30)
          {
            v32 = v30;
          }

          v14 = v32;

          v33 = MEMORY[0x277D75D18];
          [v14 floatValue];
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

- (void)splitViewControllerDidEndAnimatedTransitionToStateRequest:(id)a3
{
  v4 = a3;
  NSClassFromString(&cfstr_Icmainsplitvie.isa);
  v5 = [v4 object];

  v20 = ICCheckedDynamicCast();

  v6 = [(ICTextViewController *)self viewControllerManager];
  v7 = [v6 mainSplitViewController];

  v8 = v20;
  if (v7 == v20)
  {
    v9 = [(ICTextViewController *)self textView];
    [v9 setIsTransitioningToNewSize:0];
    v10 = [(ICTextViewController *)self splitViewControllerDidEndAnimatedTransitionToStateRequestHandler];

    if (v10)
    {
      v11 = [(ICTextViewController *)self splitViewControllerDidEndAnimatedTransitionToStateRequestHandler];
      v11[2]();

      [(ICTextViewController *)self setSplitViewControllerDidEndAnimatedTransitionToStateRequestHandler:0];
    }

    v12 = [(ICTextViewController *)self transitionScrollState];
    [(ICTextViewController *)self applyCapturedContentOffsetStateIfNecessary:v12];

    [(ICTextViewController *)self setTransitionScrollState:0];
    v13 = [v9 window];
    if (v13)
    {
      v14 = v13;
      v15 = [v9 translatesAutoresizingMaskIntoConstraints];

      if (v15)
      {
        [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
        v16 = [v9 superview];
        v17 = [(ICTextViewController *)self transitionConstraints];
        [v16 addConstraints:v17];

        v18 = MEMORY[0x277CCAAD0];
        v19 = [(ICTextViewController *)self transitionConstraints];
        [v18 activateConstraints:v19];

        [(ICTextViewController *)self setTransitionConstraints:0];
      }
    }

    v8 = v20;
  }
}

- (void)layoutManagerDidInvalidateLayout:(id)a3
{
  v3 = [(ICTextViewController *)self layoutManager];
  [v3 clearLayoutEnsuredBounds];
}

- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5
{
  v6 = [(ICTextViewController *)self layoutManager:a3];
  [v6 updateVisibleSupplementalViews];

  objc_opt_class();
  v7 = [(ICTextViewController *)self textView];
  v12 = ICDynamicCast();

  v8 = [v12 ic_visibleRange];
  [v12 updateStyleLayersInRange:{v8, v9}];
  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  v11 = [(ICTextViewController *)self textView];
  [v10 postNotificationName:@"ICTextViewLayoutDidChangeNotification" object:v11];
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