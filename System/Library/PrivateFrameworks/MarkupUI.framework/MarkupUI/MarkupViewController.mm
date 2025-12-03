@interface MarkupViewController
+ (double)_maxImageDimensionInView;
- (AKController)annotationController;
- (BOOL)_canShowWhileLocked;
- (BOOL)_shouldShowUndoRedoButtonsInNavigationBar;
- (BOOL)_useLegacyToolbar;
- (BOOL)_writeToDataConsumer:(CGDataConsumer *)consumer embedSourceImageAndEditModel:(BOOL)model options:(id)options error:(id *)error;
- (BOOL)allEditingDisabled;
- (BOOL)allowsThumbnailViewPageReordering;
- (BOOL)annotationEditingEnabled;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)contentViewController:(id)controller shouldHandleURL:(id)l;
- (BOOL)fixedThumbnailView;
- (BOOL)formFillingEnabled;
- (BOOL)isTouchInThumbnailView:(id)view;
- (BOOL)pencilAlwaysDraws;
- (BOOL)validateRedo:(id)redo;
- (BOOL)validateUndo:(id)undo;
- (BOOL)writeToURL:(id)l embeddingSourceImageAndEditModel:(BOOL)model options:(id)options error:(id *)error;
- (CGSize)adjustedSourceImageSize;
- (MarkupViewController)initWithCoder:(id)coder;
- (MarkupViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MarkupViewControllerDelegate)delegate;
- (NSString)outputType;
- (UIEdgeInsets)sketchOverlayInsets;
- (UIScrollView)contentViewScrollView;
- (UIView)imageViewCombinedContentView;
- (UIView)toolbar;
- (UTType)outputContentType;
- (id)_effectiveBackgroundColor;
- (id)_effectiveNavBarTitleColor;
- (id)_effectiveToolbarItemTintColor;
- (id)_effectiveToolbarTintColor;
- (id)_pdfDocument;
- (id)_pdfView;
- (id)annotationControllerOfContentViewController:(id)controller willSetToolbarItems:(id)items;
- (id)createArchivedModelData;
- (id)dataRepresentationEmbeddingSourceImageAndEditModel:(BOOL)model error:(id *)error;
- (id)dataRepresentationEmbeddingSourceImageAndEditModel:(BOOL)model withDestinationType:(id)type error:(id *)error;
- (id)getMenuElementsForPage:(id)page;
- (int64_t)positionForBar:(id)bar;
- (int64_t)preferredStatusBarStyle;
- (int64_t)thumbnailViewStyle;
- (unint64_t)currentPDFPageIndex;
- (void)_cancel;
- (void)_cleanupPlaceholderImage;
- (void)_commonInit;
- (void)_createCancelDoneNavBar;
- (void)_installContentViewControllerForUTI:(id)i;
- (void)_loadSourceContentWithCompletion:(id)completion;
- (void)_notifyDidChangeShowingSignaturesUI;
- (void)_presentPlaceholderImage;
- (void)_saveEditing:(id)editing;
- (void)_setFileURL:(id)l withArchivedModelData:(id)data withCompletion:(id)completion;
- (void)_setLegacyToolbarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)_setThumbnailViewHidden:(BOOL)hidden;
- (void)_setupAnnotationController;
- (void)_setupInitialBaseModelScaleFactorWithScreenSize:(CGSize)size windowDecorationSize:(CGSize)decorationSize;
- (void)_showTextStyleOptions:(id)options;
- (void)_startObservingAnnotationController;
- (void)_stopObservingAnnotationController;
- (void)_toolbarShareButtonTapped:(id)tapped;
- (void)_updateAndLoadSourceContent:(id)content withArchivedModelData:(id)data withCompletion:(id)completion;
- (void)_updateAppearanceForTraitCollection:(id)collection;
- (void)_updateConstraintsForBarPosition:(int64_t)position;
- (void)_updateNavBarProperties;
- (void)_updateundoBarButtonWithController:(id)controller;
- (void)adjustContentInsetsForBars;
- (void)annotationController:(id)controller detectedEditOfType:(unint64_t)type;
- (void)cancel:(id)cancel;
- (void)dealloc;
- (void)delete:(id)delete;
- (void)documentDidCloseTeardown;
- (void)duplicate:(id)duplicate;
- (void)editTextAnnotation:(id)annotation;
- (void)finalizeCrop;
- (void)fullTeardown;
- (void)motionEnded:(int64_t)ended withEvent:(id)event;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)positionSketchOverlay:(id)overlay forContentViewController:(id)controller;
- (void)redo:(id)redo;
- (void)restoreToolModeForContentType;
- (void)revert;
- (void)setAllEditingDisabled:(BOOL)disabled;
- (void)setAllowsThumbnailViewPageReordering:(BOOL)reordering;
- (void)setAnnotationEditingEnabled:(BOOL)enabled;
- (void)setBackgroundColor:(id)color;
- (void)setCurrentPDFPageIndex:(unint64_t)index;
- (void)setData:(id)data withArchivedModelData:(id)modelData placeholderImage:(id)image;
- (void)setFileURL:(id)l withArchivedModelData:(id)data placeholderImage:(id)image;
- (void)setFixedThumbnailView:(BOOL)view;
- (void)setForcesPDFViewTopAlignment:(BOOL)alignment;
- (void)setFormFillingEnabled:(BOOL)enabled didUseBanner:(BOOL)banner;
- (void)setImage:(id)image withArchivedModelData:(id)data placeholderImage:(id)placeholderImage;
- (void)setNavBar:(id)bar;
- (void)setNavBarTitleColor:(id)color;
- (void)setNavigationModeHorizontal:(BOOL)horizontal;
- (void)setPencilAlwaysDraws:(BOOL)draws;
- (void)setPreferredFileDisplayName:(id)name;
- (void)setShapeDetectionEnabled:(BOOL)enabled;
- (void)setShowShareButtonInToolbar:(BOOL)toolbar;
- (void)setShowThumbnailViewForMultipage:(BOOL)multipage;
- (void)setSourceContent:(id)content withArchivedModelData:(id)data;
- (void)setThumbnailViewStyle:(int64_t)style;
- (void)setToolbarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setToolbarItemTintColor:(id)color;
- (void)setToolbarPosition:(int64_t)position;
- (void)setToolbarTintColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
- (void)undo:(id)undo;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willBeginLoadingNewDocument;
@end

@implementation MarkupViewController

- (MarkupViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MarkupViewController;
  v3 = [(MarkupViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(MarkupViewController *)v3 _commonInit];
  }

  return v4;
}

- (MarkupViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = MarkupViewController;
  v4 = [(MarkupViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(MarkupViewController *)v4 _commonInit];
  }

  return v5;
}

- (void)_commonInit
{
  kdebug_trace();
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  hostProcessBundleIdentifier = self->_hostProcessBundleIdentifier;
  self->_hostProcessBundleIdentifier = bundleIdentifier;

  [MEMORY[0x277CD93F8] EnableAnnotationKit];
  self->_toolbarHidden = 0;
  self->_shapeDetectionEnabled = 1;
  self->_toolbarPosition = 1;
  self->_allowShakeToUndo = 1;
  self->_thumbnailViewHidden = 1;
  self->_navigationModeHorizontal = 0;
  self->_initialContentScale = 1.0;
  self->_encryptPrivateMetadata = 1;
  self->_showAsFormSheet = 0;
  self->_pencilAlwaysDraws = [MEMORY[0x277CEA698] canConnectToStylus];
  if (![(MarkupViewController *)self _useLegacyToolbar])
  {
    v6 = objc_alloc(MEMORY[0x277CEA738]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    modernToolbar = self->_modernToolbar;
    self->_modernToolbar = v7;

    objc_storeStrong(&self->_toolbar, self->_modernToolbar);
    [(AKToolbarView *)self->_modernToolbar setTranslatesAutoresizingMaskIntoConstraints:0];
    [(AKToolbarView *)self->_modernToolbar setContentsHidden:1];
  }

  [(MarkupViewController *)self setNeedToPerformFullTeardown:1];
}

- (void)dealloc
{
  [(MarkupViewController *)self fullTeardown];
  v3.receiver = self;
  v3.super_class = MarkupViewController;
  [(MarkupViewController *)&v3 dealloc];
}

- (BOOL)_canShowWhileLocked
{
  delegate = [(MarkupViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [delegate controllerCanShowWhileLocked:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)willBeginLoadingNewDocument
{
  if ([(MarkupViewController *)self needToPerformDocumentClosedTeardown])
  {
    [(MarkupViewController *)self documentDidCloseTeardown];
  }

  [(MarkupViewController *)self setNeedToPerformDocumentClosedTeardown:1];
}

- (void)fullTeardown
{
  NSLog(&cfstr_FullteardownCa.isa, a2);
  if ([(MarkupViewController *)self needToPerformFullTeardown])
  {
    [(MarkupViewController *)self setNeedToPerformFullTeardown:0];
    [(MarkupViewController *)self documentDidCloseTeardown];
    [(MarkupViewController *)self setContentContainerView:0];
    NSLog(&cfstr_FullteardownPe.isa);
  }
}

- (void)documentDidCloseTeardown
{
  NSLog(&cfstr_Documentdidclo.isa, a2);
  if ([(MarkupViewController *)self needToPerformDocumentClosedTeardown])
  {
    [(MarkupViewController *)self setNeedToPerformDocumentClosedTeardown:0];
    contentViewController = [(MarkupViewController *)self contentViewController];
    [contentViewController uninstallAllAnnotationControllerOverlays];

    toolbarTopConstraint = [(MarkupViewController *)self toolbarTopConstraint];
    [toolbarTopConstraint setActive:0];

    toolbarTopAttachedConstraint = [(MarkupViewController *)self toolbarTopAttachedConstraint];
    [toolbarTopAttachedConstraint setActive:0];

    toolbarBottomConstraint = [(MarkupViewController *)self toolbarBottomConstraint];
    [toolbarBottomConstraint setActive:0];

    [(MarkupViewController *)self setToolbarTopConstraint:0];
    [(MarkupViewController *)self setToolbarTopAttachedConstraint:0];
    [(MarkupViewController *)self setToolbarBottomConstraint:0];
    if ([(MarkupViewController *)self _useLegacyToolbar])
    {
      annotationController = [(MarkupViewController *)self annotationController];
      toolbarViewController = [annotationController toolbarViewController];

      view = [toolbarViewController view];
      [view setDelegate:0];

      [toolbarViewController willMoveToParentViewController:0];
      [toolbarViewController removeFromParentViewController];
      annotationController2 = [(MarkupViewController *)self annotationController];
      toolbarView = [annotationController2 toolbarView];
      [toolbarView removeFromSuperview];
    }

    toolbar = [(MarkupViewController *)self toolbar];
    [toolbar removeFromSuperview];

    [(MarkupViewController *)self setToolbar:0];
    [(MarkupViewController *)self _stopObservingAnnotationController];
    contentViewController2 = [(MarkupViewController *)self contentViewController];
    [contentViewController2 willMoveToParentViewController:0];

    contentViewController3 = [(MarkupViewController *)self contentViewController];
    [contentViewController3 removeFromParentViewController];

    contentViewController4 = [(MarkupViewController *)self contentViewController];
    view2 = [contentViewController4 view];
    [view2 removeFromSuperview];

    contentViewController5 = [(MarkupViewController *)self contentViewController];
    [contentViewController5 teardown];

    [(MarkupViewController *)self setContentViewController:0];
    [(MarkupViewController *)self setAkUndoManager:0];
    [(MarkupViewController *)self setSourceContent:0];
    [(MarkupViewController *)self setDigestedSourceContent:0];
    [(MarkupViewController *)self setSourceContentType:0];
    navBar = [(MarkupViewController *)self navBar];
    [navBar setDelegate:0];

    [(MarkupViewController *)self setNavBar:0];
    [(MarkupViewController *)self setNavItem:0];
    [(MarkupViewController *)self setCancelButton:0];
    [(MarkupViewController *)self setDoneButton:0];
    transitionDimmingView = [(MarkupViewController *)self transitionDimmingView];
    [transitionDimmingView removeFromSuperview];

    [(MarkupViewController *)self setTransitionDimmingView:0];
    whiteView = [(MarkupViewController *)self whiteView];
    [whiteView removeFromSuperview];

    [(MarkupViewController *)self setWhiteView:0];
    [(MarkupViewController *)self setAlreadyLoggedSavingForThisDocument:0];
    NSLog(&cfstr_Documentdidclo_0.isa);
  }
}

- (void)viewDidLoad
{
  kdebug_trace();
  v19.receiver = self;
  v19.super_class = MarkupViewController;
  [(MarkupViewController *)&v19 viewDidLoad];
  view = [(MarkupViewController *)self view];
  [view addSubview:self->_modernToolbar];

  if ([(AKToolbarView *)self->_modernToolbar useNewFullscreenPalette])
  {
    view2 = [(MarkupViewController *)self view];
    [view2 bringSubviewToFront:self->_modernToolbar];
  }

  bottomAnchor = [(AKToolbarView *)self->_modernToolbar bottomAnchor];
  view3 = [(MarkupViewController *)self view];
  bottomAnchor2 = [view3 bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [(MarkupViewController *)self setToolbarBottomConstraint:v8];

  leadingAnchor = [(AKToolbarView *)self->_modernToolbar leadingAnchor];
  view4 = [(MarkupViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v12 setActive:1];

  trailingAnchor = [(AKToolbarView *)self->_modernToolbar trailingAnchor];
  view5 = [(MarkupViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v16 setActive:1];

  [(AKToolbarView *)self->_modernToolbar setShareButtonAction:sel__toolbarShareButtonTapped_];
  [(AKToolbarView *)self->_modernToolbar setShareButtonTarget:self];
  toolbarBottomConstraint = [(MarkupViewController *)self toolbarBottomConstraint];
  [toolbarBottomConstraint setActive:1];

  view6 = [(MarkupViewController *)self view];
  [(MarkupViewController *)self setContentContainerView:view6];

  [(MarkupViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MarkupViewController;
  [(MarkupViewController *)&v6 viewWillAppear:appear];
  navBar = [(MarkupViewController *)self navBar];

  if (!navBar)
  {
    contentViewController = [(MarkupViewController *)self contentViewController];
    [(MarkupViewController *)self _updateundoBarButtonWithController:contentViewController];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  kdebug_trace();
  v8.receiver = self;
  v8.super_class = MarkupViewController;
  [(MarkupViewController *)&v8 viewDidAppear:appearCopy];
  if (!self->_toolbarHidden)
  {
    annotationController = [(MarkupViewController *)self annotationController];
    if (annotationController)
    {
      annotationController2 = [(MarkupViewController *)self annotationController];
      toolPicker = [annotationController2 toolPicker];

      [toolPicker setVisible:1 forFirstResponder:self];
      [(AKToolbarView *)self->_modernToolbar setContentsHidden:0];
    }

    else
    {
      [(MarkupViewController *)self setNeedsToolPickerVisibleWhenAnnotationControllerIsAvailable:1];
    }

    [(MarkupViewController *)self becomeFirstResponder];
  }
}

- (BOOL)canBecomeFirstResponder
{
  if (self->_showingSignaturesUI)
  {
    return 0;
  }

  _pdfDocument = [(MarkupViewController *)self _pdfDocument];
  isLocked = [_pdfDocument isLocked];

  if (isLocked)
  {
    return 0;
  }

  delegate = [(MarkupViewController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [delegate controllerCanBecomeFirstResponder:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = MarkupViewController;
  [(MarkupViewController *)&v3 viewWillLayoutSubviews];
  [(MarkupViewController *)self adjustContentInsetsForBars];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = MarkupViewController;
  [(MarkupViewController *)&v4 viewDidLayoutSubviews];
  [(MarkupViewController *)self adjustContentInsetsForBars];
  contentViewController = [(MarkupViewController *)self contentViewController];
  [(MarkupViewController *)self _updateundoBarButtonWithController:contentViewController];
}

- (UIEdgeInsets)sketchOverlayInsets
{
  delegate = [(MarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate customSketchOverlayInsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    contentViewController = [(MarkupViewController *)self contentViewController];
    [contentViewController edgeInsets];
    v5 = v13;
    v7 = v14;
    v9 = v15;
    v11 = v16;
  }

  v17 = v5;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = MarkupViewController;
  [(MarkupViewController *)&v13 traitCollectionDidChange:changeCopy];
  userInterfaceIdiom = [changeCopy userInterfaceIdiom];
  traitCollection = [(MarkupViewController *)self traitCollection];
  userInterfaceIdiom2 = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != userInterfaceIdiom2)
  {
    traitCollection2 = [(MarkupViewController *)self traitCollection];
    [(MarkupViewController *)self _updateAppearanceForTraitCollection:traitCollection2];
  }

  horizontalSizeClass = [changeCopy horizontalSizeClass];
  traitCollection3 = [(MarkupViewController *)self traitCollection];
  horizontalSizeClass2 = [traitCollection3 horizontalSizeClass];

  if (horizontalSizeClass != horizontalSizeClass2)
  {
    contentViewController = [(MarkupViewController *)self contentViewController];
    [(MarkupViewController *)self _updateundoBarButtonWithController:contentViewController];
  }
}

- (int64_t)preferredStatusBarStyle
{
  traitCollection = [(MarkupViewController *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] != 1;

  return v3;
}

- (BOOL)_useLegacyToolbar
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__MarkupViewController__useLegacyToolbar__block_invoke;
  block[3] = &unk_27986E2C8;
  block[4] = self;
  if (_useLegacyToolbar_onceToken != -1)
  {
    dispatch_once(&_useLegacyToolbar_onceToken, block);
  }

  return _useLegacyToolbar__isItunesU;
}

void __41__MarkupViewController__useLegacyToolbar__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hostProcessBundleIdentifier];
  v1 = [v2 lowercaseString];
  _useLegacyToolbar__isItunesU = [v1 containsString:@"itunesu"];
}

- (void)_setLegacyToolbarHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  annotationController = [(MarkupViewController *)self annotationController];
  toolbarViewController = [annotationController toolbarViewController];

  [toolbarViewController beginAppearanceTransition:hiddenCopy ^ 1 animated:animatedCopy];
  if (animatedCopy && !hiddenCopy)
  {
    toolbar = [(MarkupViewController *)self toolbar];
    [toolbar setAlpha:0.0];

    toolbar2 = [(MarkupViewController *)self toolbar];
    [toolbar2 setHidden:0];
  }

  if (animatedCopy)
  {
    v11 = MEMORY[0x277D75D18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__MarkupViewController__setLegacyToolbarHidden_animated___block_invoke;
    v17[3] = &unk_27986E5B8;
    v17[4] = self;
    v18 = hiddenCopy;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__MarkupViewController__setLegacyToolbarHidden_animated___block_invoke_2;
    v13[3] = &unk_27986E5E0;
    v14 = toolbarViewController;
    selfCopy = self;
    v16 = hiddenCopy;
    [v11 _animateUsingDefaultTimingWithOptions:6 animations:v17 completion:v13];
  }

  else
  {
    [toolbarViewController endAppearanceTransition];
    toolbar3 = [(MarkupViewController *)self toolbar];
    [toolbar3 setHidden:hiddenCopy];
  }
}

void __57__MarkupViewController__setLegacyToolbarHidden_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 1.0;
  }

  v2 = [*(a1 + 32) toolbar];
  [v2 setAlpha:v1];
}

void __57__MarkupViewController__setLegacyToolbarHidden_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) endAppearanceTransition];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 40) toolbar];
  [v3 setHidden:v2];
}

- (void)setToolbarHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (self->_toolbarHidden != hidden)
  {
    animatedCopy = animated;
    hiddenCopy = hidden;
    self->_toolbarHidden = hidden;
    if ([(MarkupViewController *)self _useLegacyToolbar])
    {

      [(MarkupViewController *)self _setLegacyToolbarHidden:hiddenCopy animated:animatedCopy];
    }

    else
    {
      annotationController = [(MarkupViewController *)self annotationController];
      toolPicker = [annotationController toolPicker];

      [toolPicker setVisible:1 forFirstResponder:self];
      if (self->_toolbarHidden)
      {
        if (([(MarkupViewController *)self isFirstResponder]& 1) == 0)
        {
          [(MarkupViewController *)self becomeFirstResponder];
        }

        toolbar = [(MarkupViewController *)self toolbar];
        [toolbar endAnnotationEditing];

        toolbar2 = [(MarkupViewController *)self toolbar];
        [toolbar2 dismissPresentedPopoversAnimated:1];

        toolbar3 = [(MarkupViewController *)self toolbar];
        [toolbar3 forceHideRuler];

        [toolPicker setVisible:0 forFirstResponder:self];
      }

      else
      {
        [(MarkupViewController *)self becomeFirstResponder];
      }

      toolbar4 = [(MarkupViewController *)self toolbar];
      [toolbar4 setContentsHidden:hiddenCopy animated:animatedCopy];
    }
  }
}

- (void)setToolbarPosition:(int64_t)position
{
  if ([(MarkupViewController *)self _useLegacyToolbar])
  {
    if (self->_toolbarPosition != position)
    {
      self->_toolbarPosition = position;

      [(MarkupViewController *)self _updateConstraintsForBarPosition:position];
    }
  }

  else
  {
    NSLog(&cfstr_ThisApiIsDepre.isa);
  }
}

- (void)setShowThumbnailViewForMultipage:(BOOL)multipage
{
  multipageCopy = multipage;
  contentViewController = [(MarkupViewController *)self contentViewController];
  v5 = !multipageCopy || (objc_opt_respondsToSelector() & 1) == 0 || -[MarkupViewController thumbnailViewStyle](self, "thumbnailViewStyle") != 1 && [contentViewController pageCount] == 1;
  [(MarkupViewController *)self _setThumbnailViewHidden:v5];
}

- (void)_setThumbnailViewHidden:(BOOL)hidden
{
  self->_thumbnailViewHidden = hidden;
  contentViewController = [(MarkupViewController *)self contentViewController];
  if (contentViewController)
  {
    v5 = contentViewController;
    if (objc_opt_respondsToSelector())
    {
      [v5 setShowsThumbnailView:!self->_thumbnailViewHidden];
    }
  }

  MEMORY[0x2821F97C8]();
}

- (void)setFixedThumbnailView:(BOOL)view
{
  viewCopy = view;
  contentViewController = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentViewController2 = [(MarkupViewController *)self contentViewController];
    [contentViewController2 setFixedThumbnailView:viewCopy];
  }
}

- (BOOL)fixedThumbnailView
{
  contentViewController = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  contentViewController2 = [(MarkupViewController *)self contentViewController];
  fixedThumbnailView = [contentViewController2 fixedThumbnailView];

  return fixedThumbnailView;
}

- (BOOL)isTouchInThumbnailView:(id)view
{
  viewCopy = view;
  contentViewController = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentViewController2 = [(MarkupViewController *)self contentViewController];
    v8 = [contentViewController2 isTouchInThumbnailView:viewCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setNavigationModeHorizontal:(BOOL)horizontal
{
  self->_navigationModeHorizontal = horizontal;
  contentViewController = [(MarkupViewController *)self contentViewController];
  if (contentViewController)
  {
    v5 = contentViewController;
    if (objc_opt_respondsToSelector())
    {
      [v5 setNavigationModeHorizontal:self->_navigationModeHorizontal];
    }
  }

  MEMORY[0x2821F97C8]();
}

- (void)setFileURL:(id)l withArchivedModelData:(id)data placeholderImage:(id)image
{
  lCopy = l;
  dataCopy = data;
  imageCopy = image;
  v11 = dispatch_get_global_queue(2, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__MarkupViewController_setFileURL_withArchivedModelData_placeholderImage___block_invoke;
  v15[3] = &unk_27986E630;
  v16 = imageCopy;
  selfCopy = self;
  v18 = lCopy;
  v19 = dataCopy;
  v12 = dataCopy;
  v13 = lCopy;
  v14 = imageCopy;
  dispatch_sync(v11, v15);
}

void __74__MarkupViewController_setFileURL_withArchivedModelData_placeholderImage___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, 100.0, 100.0}];
    [*(a1 + 40) setPlaceholderImageView:v2];

    [*(a1 + 40) setPlaceholderImage:*(a1 + 32)];
    [*(a1 + 40) _presentPlaceholderImage];
  }

  objc_initWeak(&location, *(a1 + 40));
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = 1;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__MarkupViewController_setFileURL_withArchivedModelData_placeholderImage___block_invoke_2;
  v6[3] = &unk_27986E608;
  v6[4] = v8;
  objc_copyWeak(&v7, &location);
  [v3 _setFileURL:v4 withArchivedModelData:v5 withCompletion:v6];
  objc_destroyWeak(&v7);
  _Block_object_dispose(v8, 8);
  objc_destroyWeak(&location);
}

void __74__MarkupViewController_setFileURL_withArchivedModelData_placeholderImage___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _cleanupPlaceholderImage];
}

- (void)_setFileURL:(id)l withArchivedModelData:(id)data withCompletion:(id)completion
{
  lCopy = l;
  dataCopy = data;
  completionCopy = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v11 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__MarkupViewController__setFileURL_withArchivedModelData_withCompletion___block_invoke;
  v13[3] = &unk_27986E658;
  v13[4] = &v14;
  [v11 coordinateReadingItemAtURL:lCopy options:0 error:0 byAccessor:v13];
  v12 = v15[5];

  [(MarkupViewController *)self _updateAndLoadSourceContent:v12 withArchivedModelData:dataCopy withCompletion:completionCopy];
  _Block_object_dispose(&v14, 8);
}

- (void)setImage:(id)image withArchivedModelData:(id)data placeholderImage:(id)placeholderImage
{
  imageCopy = image;
  dataCopy = data;
  placeholderImageCopy = placeholderImage;
  if (placeholderImageCopy)
  {
    v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, 100.0, 100.0}];
    [(MarkupViewController *)self setPlaceholderImageView:v11];

    [(MarkupViewController *)self setPlaceholderImage:placeholderImageCopy];
  }

  objc_initWeak(&location, self);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __72__MarkupViewController_setImage_withArchivedModelData_placeholderImage___block_invoke;
  v15 = &unk_27986E318;
  objc_copyWeak(&v16, &location);
  [(MarkupViewController *)self _updateAndLoadSourceContent:imageCopy withArchivedModelData:dataCopy withCompletion:&v12];
  [(MarkupViewController *)self _presentPlaceholderImage:v12];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __72__MarkupViewController_setImage_withArchivedModelData_placeholderImage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanupPlaceholderImage];
    WeakRetained = v2;
  }
}

- (void)setData:(id)data withArchivedModelData:(id)modelData placeholderImage:(id)image
{
  dataCopy = data;
  modelDataCopy = modelData;
  imageCopy = image;
  if (imageCopy)
  {
    v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, 100.0, 100.0}];
    [(MarkupViewController *)self setPlaceholderImageView:v11];

    [(MarkupViewController *)self setPlaceholderImage:imageCopy];
  }

  objc_initWeak(&location, self);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __71__MarkupViewController_setData_withArchivedModelData_placeholderImage___block_invoke;
  v15 = &unk_27986E318;
  objc_copyWeak(&v16, &location);
  [(MarkupViewController *)self _setData:dataCopy withArchivedModelData:modelDataCopy withCompletion:&v12];
  [(MarkupViewController *)self _presentPlaceholderImage:v12];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __71__MarkupViewController_setData_withArchivedModelData_placeholderImage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _cleanupPlaceholderImage];
    WeakRetained = v2;
  }
}

- (UTType)outputContentType
{
  sourceContentType = [(MarkupViewController *)self sourceContentType];
  if (sourceContentType)
  {
    v3 = [MEMORY[0x277CE1CB8] typeWithIdentifier:sourceContentType];
    v4 = *MEMORY[0x277CE1E08];
    if ([v3 conformsToType:*MEMORY[0x277CE1E08]] || (v4 = *MEMORY[0x277CE1E10], objc_msgSend(v3, "conformsToType:", *MEMORY[0x277CE1E10])) || (v4 = *MEMORY[0x277CE1E80], objc_msgSend(v3, "conformsToType:", *MEMORY[0x277CE1E80])) || (v4 = *MEMORY[0x277CE1D90], objc_msgSend(v3, "conformsToType:", *MEMORY[0x277CE1D90])))
    {
      v5 = v4;
    }

    else
    {
      if (![v3 conformsToType:*MEMORY[0x277CE1DB0]])
      {
        NSLog(&cfstr_SNullOutputtyp.isa, "[MarkupViewController outputContentType]", sourceContentType);
        v6 = 0;
        goto LABEL_8;
      }

      v5 = *MEMORY[0x277CE1DC0];
    }

    v6 = v5;
LABEL_8:

    goto LABEL_10;
  }

  NSLog(&cfstr_SSourcecontent.isa, "[MarkupViewController outputContentType]");
  v6 = 0;
LABEL_10:

  return v6;
}

- (NSString)outputType
{
  outputContentType = [(MarkupViewController *)self outputContentType];
  identifier = [outputContentType identifier];

  return identifier;
}

- (BOOL)writeToURL:(id)l embeddingSourceImageAndEditModel:(BOOL)model options:(id)options error:(id *)error
{
  modelCopy = model;
  optionsCopy = options;
  v11 = CGDataConsumerCreateWithURL(l);
  if (v11)
  {
    v12 = v11;
    v13 = [(MarkupViewController *)self _writeToDataConsumer:v11 embedSourceImageAndEditModel:modelCopy options:optionsCopy error:error];
    CFRelease(v12);
    if (!error)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    if (!error)
    {
      goto LABEL_8;
    }
  }

  if (!v13 && !*error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];
  }

LABEL_8:

  return v13;
}

- (id)dataRepresentationEmbeddingSourceImageAndEditModel:(BOOL)model error:(id *)error
{
  modelCopy = model;
  data = [MEMORY[0x277CBEB28] data];
  v8 = CGDataConsumerCreateWithCFData(data);
  if (!v8)
  {
    v16 = 0;
    v17 = 1;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v9 = v8;
  v10 = [(MarkupViewController *)self _writeToDataConsumer:v8 embedSourceImageAndEditModel:modelCopy error:error];
  if (v10)
  {
    if (_MUWriteOutputToTemp())
    {
      outputContentType = [(MarkupViewController *)self outputContentType];
      preferredFilenameExtension = [outputContentType preferredFilenameExtension];

      v13 = NSTemporaryDirectory();
      v14 = [v13 stringByAppendingPathComponent:@"output"];
      v15 = [v14 stringByAppendingPathExtension:preferredFilenameExtension];

      NSLog(&cfstr_WritingOutputT.isa, v15);
      [(__CFData *)data writeToFile:v15 atomically:0];
    }

    v16 = data;
  }

  else
  {
    v16 = 0;
  }

  CFRelease(v9);
  v17 = !v10;
  if (error)
  {
LABEL_10:
    if (v17 && !*error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];
    }
  }

LABEL_13:

  return v16;
}

- (id)dataRepresentationEmbeddingSourceImageAndEditModel:(BOOL)model withDestinationType:(id)type error:(id *)error
{
  modelCopy = model;
  data = [MEMORY[0x277CBEB28] data];
  v9 = CGDataConsumerCreateWithCFData(data);
  if (!v9)
  {
    v17 = 0;
    v18 = 1;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v10 = v9;
  v11 = [(MarkupViewController *)self _writeToDataConsumer:v9 embedSourceImageAndEditModel:modelCopy error:error];
  if (v11)
  {
    if (_MUWriteOutputToTemp())
    {
      outputContentType = [(MarkupViewController *)self outputContentType];
      preferredFilenameExtension = [outputContentType preferredFilenameExtension];

      v14 = NSTemporaryDirectory();
      v15 = [v14 stringByAppendingPathComponent:@"output"];
      v16 = [v15 stringByAppendingPathExtension:preferredFilenameExtension];

      NSLog(&cfstr_WritingOutputT.isa, v16);
      [(__CFData *)data writeToFile:v16 atomically:0];
    }

    v17 = data;
  }

  else
  {
    v17 = 0;
  }

  CFRelease(v10);
  v18 = !v11;
  if (error)
  {
LABEL_10:
    if (v18 && !*error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];
    }
  }

LABEL_13:

  return v17;
}

- (id)createArchivedModelData
{
  v3 = objc_alloc_init(MUImageWriter);
  annotationController = [(MarkupViewController *)self annotationController];
  v5 = [(MUImageWriter *)v3 encodedModelFromAnnotationsController:annotationController encrypt:0];

  return v5;
}

- (void)finalizeCrop
{
  if (self->_contentViewController && [objc_opt_class() instancesRespondToSelector:sel_finalizeCrop])
  {
    contentViewController = self->_contentViewController;

    [(MUContentViewControllerProtocol *)contentViewController performSelector:sel_finalizeCrop];
  }
}

- (void)cancel:(id)cancel
{
  cancelCopy = cancel;
  annotationController = [(MarkupViewController *)self annotationController];
  v6 = [annotationController validateUndo:0];

  if (v6)
  {
    v7 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
    v8 = MEMORY[0x277D750F8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"Discard Changes" value:&stru_286962590 table:@"MarkupViewController"];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __31__MarkupViewController_cancel___block_invoke;
    v18[3] = &unk_27986E680;
    v18[4] = self;
    v11 = [v8 actionWithTitle:v10 style:2 handler:v18];
    [v7 addAction:v11];

    v12 = MEMORY[0x277D750F8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"Cancel" value:&stru_286962590 table:@"MarkupViewController"];
    v15 = [v12 actionWithTitle:v14 style:1 handler:0];
    [v7 addAction:v15];

    [v7 setModalPresentationStyle:7];
    popoverPresentationController = [v7 popoverPresentationController];
    [popoverPresentationController setPermittedArrowDirections:1];

    popoverPresentationController2 = [v7 popoverPresentationController];
    [popoverPresentationController2 setBarButtonItem:cancelCopy];

    [(MarkupViewController *)self presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    [(MarkupViewController *)self _cancel];
  }
}

- (void)_cancel
{
  [(MarkupViewController *)self setUserDidCancel:1];
  if ([(MarkupViewController *)self useFancyTransition])
  {
    _remoteViewControllerProxy = [(MarkupViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy serviceDidFinishwithResults:0 andSandboxExtension:0];
  }

  else
  {
    _remoteViewControllerProxy = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    extensionContext = [(MarkupViewController *)self extensionContext];
    [extensionContext cancelRequestWithError:_remoteViewControllerProxy];

    [(MarkupViewController *)self documentDidCloseTeardown];
  }
}

- (BOOL)validateRedo:(id)redo
{
  redoCopy = redo;
  annotationController = [(MarkupViewController *)self annotationController];
  v6 = [annotationController validateRedo:redoCopy];

  return v6;
}

- (BOOL)validateUndo:(id)undo
{
  undoCopy = undo;
  annotationController = [(MarkupViewController *)self annotationController];
  v6 = [annotationController validateUndo:undoCopy];

  return v6;
}

- (void)undo:(id)undo
{
  undoCopy = undo;
  annotationController = [(MarkupViewController *)self annotationController];
  [annotationController undo:undoCopy];
}

- (void)redo:(id)redo
{
  redoCopy = redo;
  annotationController = [(MarkupViewController *)self annotationController];
  [annotationController redo:redoCopy];
}

- (void)revert
{
  undoManager = [(MarkupViewController *)self undoManager];
  canUndo = [undoManager canUndo];

  if (canUndo)
  {
    do
    {
      undoManager2 = [(MarkupViewController *)self undoManager];
      [undoManager2 undo];

      undoManager3 = [(MarkupViewController *)self undoManager];
      canUndo2 = [undoManager3 canUndo];
    }

    while ((canUndo2 & 1) != 0);
  }

  undoManager4 = [(MarkupViewController *)self undoManager];
  [undoManager4 removeAllActions];
}

- (BOOL)_writeToDataConsumer:(CGDataConsumer *)consumer embedSourceImageAndEditModel:(BOOL)model options:(id)options error:(id *)error
{
  modelCopy = model;
  optionsCopy = options;
  undoManager = [(MarkupViewController *)self undoManager];
  if ([undoManager canUndo])
  {
    alreadyLoggedSavingForThisDocument = self->_alreadyLoggedSavingForThisDocument;

    if (!alreadyLoggedSavingForThisDocument)
    {
      sourceContentType = [(MarkupViewController *)self sourceContentType];
      hostProcessBundleIdentifier = [(MarkupViewController *)self hostProcessBundleIdentifier];
      [MUStatistics logFileTypeSaved:sourceContentType byProcess:hostProcessBundleIdentifier];

      [(MarkupViewController *)self setAlreadyLoggedSavingForThisDocument:1];
    }
  }

  else
  {
  }

  annotationController = [(MarkupViewController *)self annotationController];
  [annotationController endLogging];

  outputContentType = [(MarkupViewController *)self outputContentType];
  if ([outputContentType conformsToType:*MEMORY[0x277CE1DB0]])
  {
    v17 = objc_alloc_init(MUImageWriter);
    digestedSourceContent = [(MarkupViewController *)self digestedSourceContent];
    annotationController2 = [(MarkupViewController *)self annotationController];
    identifier = [outputContentType identifier];
    v21 = [(MUImageWriter *)v17 writeUsingBaseImage:digestedSourceContent withAnnotationsFromController:annotationController2 asImageOfType:identifier toConsumer:consumer embedSourceImageAndAnnotationsAsMetadata:modelCopy encryptPrivateMetadata:[(MarkupViewController *)self encryptPrivateMetadata] error:error];
  }

  else if ([outputContentType conformsToType:*MEMORY[0x277CE1E08]])
  {
    digestedSourceContent2 = [(MarkupViewController *)self digestedSourceContent];
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v23 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CD9458]];
    if (optionsCopy && [optionsCopy count])
    {
      [v23 addEntriesFromDictionary:optionsCopy];
    }

    v24 = [v23 copy];
    v21 = [digestedSourceContent2 writeToConsumer:consumer withOptions:v24];
  }

  else
  {
    NSLog(&cfstr_SUnexpectedOut.isa, "[MarkupViewController _writeToDataConsumer:embedSourceImageAndEditModel:options:error:]", outputContentType);
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:518 userInfo:0];
      *error = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (void)_updateAndLoadSourceContent:(id)content withArchivedModelData:(id)data withCompletion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  contentCopy = content;
  kdebug_trace();
  [(MarkupViewController *)self willBeginLoadingNewDocument];
  [(MarkupViewController *)self setSourceContent:contentCopy withArchivedModelData:dataCopy];

  sourceContentType = [(MarkupViewController *)self sourceContentType];

  if (sourceContentType)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __89__MarkupViewController__updateAndLoadSourceContent_withArchivedModelData_withCompletion___block_invoke;
    v12[3] = &unk_27986E4C8;
    v12[4] = self;
    v13 = completionCopy;
    [(MarkupViewController *)self _loadSourceContentWithCompletion:v12];
  }

  else
  {
    [(MarkupViewController *)self _bailFailedAnimateEnterMarkup];
  }
}

void __89__MarkupViewController__updateAndLoadSourceContent_withArchivedModelData_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [*(a1 + 32) view];
  [v8 frame];
  v10 = v9;
  v12 = v11;

  v13 = [*(a1 + 32) contentViewController];
  v14 = [v13 view];
  [v14 frame];
  v16 = v15;
  v18 = v17;

  [*(a1 + 32) _setupInitialBaseModelScaleFactorWithScreenSize:v5 windowDecorationSize:{v7, v10 - v16, v12 - v18}];
  v19 = *(a1 + 32);
  v20 = v19[1030];
  v21 = [v19 annotationController];
  [v21 setPencilAlwaysDraws:v20];

  [*(a1 + 32) restoreToolModeForContentType];
  v22 = *(a1 + 40);
  if (v22)
  {
    (*(v22 + 16))();
  }

  v23 = [MEMORY[0x277CCAB98] defaultCenter];
  [v23 postNotificationName:@"_MUDocumentFinishedLoading" object:*(a1 + 32)];

  kdebug_trace();
  v24 = [*(a1 + 32) contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v26 = MEMORY[0x277CEA668];
  if ((isKindOfClass & 1) == 0)
  {
    v26 = MEMORY[0x277CEA660];
  }

  v28 = *v26;
  v27 = [*(a1 + 32) annotationController];
  [v27 beginLogging:@"markup" documentType:v28];
}

- (void)_loadSourceContentWithCompletion:(id)completion
{
  completionCopy = completion;
  sourceContent = [(MarkupViewController *)self sourceContent];

  if (sourceContent)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__MarkupViewController__loadSourceContentWithCompletion___block_invoke;
    block[3] = &unk_27986E318;
    objc_copyWeak(&v26, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    sourceContentType = [(MarkupViewController *)self sourceContentType];
    [(MarkupViewController *)self _installContentViewControllerForUTI:sourceContentType];

    v7 = MEMORY[0x277CE1CB8];
    sourceContentType2 = [(MarkupViewController *)self sourceContentType];
    v9 = [v7 typeWithIdentifier:sourceContentType2];

    if ([v9 conformsToType:*MEMORY[0x277CE1E08]])
    {
      contentViewController = [(MarkupViewController *)self contentViewController];
      [contentViewController setForcesPDFViewTopAlignment:{-[MarkupViewController forcesPDFViewTopAlignment](self, "forcesPDFViewTopAlignment")}];

      contentViewController2 = [(MarkupViewController *)self contentViewController];
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __57__MarkupViewController__loadSourceContentWithCompletion___block_invoke_2;
      v22 = &unk_27986E4C8;
      selfCopy = self;
      v24 = completionCopy;
      [contentViewController2 loadContentWithCompletionBlock:&v19];
    }

    else if ([v9 conformsToType:*MEMORY[0x277CE1DB0]])
    {
      contentViewController3 = [(MarkupViewController *)self contentViewController];
      if (v9)
      {
        v13 = +[MUImageWriter outputTypesSupportingHDR];
        identifier = [v9 identifier];
        v15 = [v13 containsObject:identifier];

        if (v15)
        {
          [contentViewController3 enableHDRAnnotations];
        }
      }

      [(MarkupViewController *)self _setupAnnotationController];
      placeholderImage = [(MarkupViewController *)self placeholderImage];
      [contentViewController3 setTentativePlaceholderImage:placeholderImage];

      contentViewController4 = [(MarkupViewController *)self contentViewController];
      [contentViewController4 loadContentWithCompletionBlock:completionCopy];
    }

    [(MarkupViewController *)self setAllEditingDisabled:0, v19, v20, v21, v22, selfCopy];
    [(MarkupViewController *)self setAnnotationEditingEnabled:1];
    [(MarkupViewController *)self setFormFillingEnabled:0];
    [(MarkupViewController *)self _startObservingAnnotationController];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  contentViewController5 = [(MarkupViewController *)self contentViewController];
  [(MarkupViewController *)self _updateundoBarButtonWithController:contentViewController5];
}

void __57__MarkupViewController__loadSourceContentWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained _hostApplicationBundleIdentifier];
    if (v2)
    {
      [v5 setHostProcessBundleIdentifier:v2];
    }

    v3 = [v5 sourceContentType];
    v4 = [v5 hostProcessBundleIdentifier];
    [MUStatistics logFileTypeOpened:v3 byProcess:v4];

    WeakRetained = v5;
  }
}

uint64_t __57__MarkupViewController__loadSourceContentWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setupAnnotationController];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (BOOL)allEditingDisabled
{
  annotationController = [(MarkupViewController *)self annotationController];
  allEditingDisabled = [annotationController allEditingDisabled];

  return allEditingDisabled;
}

- (void)setAllEditingDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  annotationController = [(MarkupViewController *)self annotationController];
  [annotationController setAllEditingDisabled:disabledCopy];
}

- (void)setAnnotationEditingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  annotationController = [(MarkupViewController *)self annotationController];
  if ([annotationController annotationEditingEnabled] != enabledCopy)
  {
    [annotationController setAnnotationEditingEnabled:enabledCopy];
    if (enabledCopy)
    {
      [(MarkupViewController *)self restoreToolModeForContentType];
    }

    else
    {
      modelController = [annotationController modelController];
      [modelController deselectAllAnnotations];

      [annotationController resetToDefaultToolMode];
    }
  }
}

- (void)setFormFillingEnabled:(BOOL)enabled didUseBanner:(BOOL)banner
{
  enabledCopy = enabled;
  v6 = [(MarkupViewController *)self _pdfView:enabled];
  if (v6)
  {
    v10 = v6;
    v7 = [v6 isInFormFillingMode] == enabledCopy;
    v6 = v10;
    if (!v7)
    {
      [v10 setInFormFillingMode:enabledCopy];
      v6 = v10;
      if (!enabledCopy)
      {
        annotationController = [(MarkupViewController *)self annotationController];
        modelController = [annotationController modelController];
        [modelController deselectAllAnnotations];

        v6 = v10;
      }
    }
  }
}

- (void)restoreToolModeForContentType
{
  annotationController = [(MarkupViewController *)self annotationController];
  if (-[MarkupViewController annotationEditingEnabled](self, "annotationEditingEnabled") && (-[MarkupViewController contentViewController](self, "contentViewController"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 defaultToolTag], v3, v4 != 763000))
  {
    v5 = objc_opt_new();
    [v5 setTag:v4];
    [annotationController performActionForSender:v5];
    if ([annotationController toolMode] != 4)
    {
      [annotationController performActionForSender:v5];
    }
  }

  else
  {
    [annotationController resetToDefaultToolMode];
  }
}

- (BOOL)annotationEditingEnabled
{
  annotationController = [(MarkupViewController *)self annotationController];
  annotationEditingEnabled = [annotationController annotationEditingEnabled];

  return annotationEditingEnabled;
}

- (BOOL)formFillingEnabled
{
  annotationController = [(MarkupViewController *)self annotationController];
  formFillingEnabled = [annotationController formFillingEnabled];

  return formFillingEnabled;
}

- (void)setPencilAlwaysDraws:(BOOL)draws
{
  self->_pencilAlwaysDraws = [MEMORY[0x277CEA698] canConnectToStylus] & draws;
  annotationController = [(MarkupViewController *)self annotationController];
  pencilAlwaysDraws = self->_pencilAlwaysDraws;
  v6 = annotationController;
  if (pencilAlwaysDraws != [annotationController pencilAlwaysDraws])
  {
    [v6 setPencilAlwaysDraws:self->_pencilAlwaysDraws];
  }
}

- (BOOL)pencilAlwaysDraws
{
  annotationController = [(MarkupViewController *)self annotationController];
  pencilAlwaysDraws = self->_pencilAlwaysDraws;
  if (pencilAlwaysDraws != [annotationController pencilAlwaysDraws])
  {
    NSLog(&cfstr_TheAkcontrolle.isa);
  }

  v5 = self->_pencilAlwaysDraws;

  return v5;
}

- (void)_saveEditing:(id)editing
{
  v38[1] = *MEMORY[0x277D85DE8];
  extensionContext = [(MarkupViewController *)self extensionContext];

  if (extensionContext)
  {
    outputContentType = [(MarkupViewController *)self outputContentType];
    v6 = +[MUImageDownsamplingUtilities _uniqueTemporaryDirectory];
    preferredFileDisplayName = [(MarkupViewController *)self preferredFileDisplayName];
    preferredFilenameExtension = [outputContentType preferredFilenameExtension];
    if (preferredFilenameExtension)
    {
      v9 = [preferredFileDisplayName stringByAppendingPathExtension:preferredFilenameExtension];

      preferredFileDisplayName = v9;
    }

    else
    {
      NSLog(&cfstr_SNoPreferredFi.isa, "[MarkupViewController _saveEditing:]");
    }

    v10 = [v6 URLByAppendingPathComponent:preferredFileDisplayName];
    filePathURL = [v10 filePathURL];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v36 = 0;
    [defaultManager createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v36];
    v13 = v36;

    if (v13)
    {
      NSLog(&cfstr_FailedToCreate_1.isa, v13);
    }

    v35 = 0;
    [(MarkupViewController *)self writeToURL:filePathURL error:&v35];
    v14 = v35;
    v15 = v14;
    if (v14)
    {
      NSLog(&cfstr_FailedToWriteF.isa, v14);
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];
      extensionContext2 = [(MarkupViewController *)self extensionContext];
      [extensionContext2 cancelRequestWithError:v16];

      [(MarkupViewController *)self documentDidCloseTeardown];
    }

    else
    {
      v30 = outputContentType;
      v18 = objc_alloc_init(MEMORY[0x277CCAA88]);
      identifier = [*MEMORY[0x277CE1D70] identifier];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __37__MarkupViewController__saveEditing___block_invoke;
      v33[3] = &unk_27986E6A8;
      v31 = filePathURL;
      v34 = v31;
      [v18 registerItemForTypeIdentifier:identifier loadHandler:v33];

      v20 = v18;
      v21 = objc_opt_new();
      v29 = v20;
      v38[0] = v20;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
      [v21 setAttachments:v22];

      v37 = v21;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      if ([(MarkupViewController *)self useFancyTransition])
      {
        _remoteViewControllerProxy = [(MarkupViewController *)self _remoteViewControllerProxy];
        path = [v31 path];
        [path UTF8String];

        v24 = sandbox_extension_issue_file();
        if (v24)
        {
          v25 = v24;
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:v24];
          free(v25);
        }

        else
        {
          NSLog(&cfstr_SFailedToCreat.isa, "[MarkupViewController _saveEditing:]", v31);
          v26 = 0;
        }

        outputContentType = v30;
        [_remoteViewControllerProxy serviceDidFinishwithResults:v31 andSandboxExtension:v26];
      }

      else
      {
        extensionContext3 = [(MarkupViewController *)self extensionContext];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __37__MarkupViewController__saveEditing___block_invoke_2;
        v32[3] = &unk_27986E6D0;
        v32[4] = self;
        [extensionContext3 completeRequestReturningItems:v16 completionHandler:v32];

        outputContentType = v30;
      }
    }
  }
}

void __37__MarkupViewController__saveEditing___block_invoke_2(uint64_t a1)
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2 = *(a1 + 32);

    [v2 documentDidCloseTeardown];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__MarkupViewController__saveEditing___block_invoke_3;
    block[3] = &unk_27986E2C8;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)setSourceContent:(id)content withArchivedModelData:(id)data
{
  contentCopy = content;
  dataCopy = data;
  if (self->_sourceContent == contentCopy)
  {
    goto LABEL_70;
  }

  objc_storeStrong(&self->_sourceContent, content);
  [(MarkupViewController *)self setSourceContentType:0];
  [(MarkupViewController *)self setDigestedSourceContent:0];
  [(MarkupViewController *)self setPreferredFileDisplayName:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v16 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        if (contentCopy)
        {
          NSLog(&cfstr_SUnsupportedSo.isa, "[MarkupViewController setSourceContent:withArchivedModelData:]", contentCopy);
        }

        goto LABEL_67;
      }
    }

    v18 = 0x27986D000uLL;
    v15 = [MUImageDownsamplingUtilities _sourceContentType:contentCopy];
    if (!v15)
    {
      NSLog(&cfstr_SFailedToGetCo.isa, "[MarkupViewController setSourceContent:withArchivedModelData:]", contentCopy);
      goto LABEL_66;
    }

    v19 = objc_alloc_init(MEMORY[0x277CCAD90]);
    [(MarkupViewController *)self setAkUndoManager:v19];

    v20 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v15];
    if ([v20 conformsToType:*MEMORY[0x277CE1E08]])
    {
      sourceContent = [(MarkupViewController *)self sourceContent];
      v22 = objc_opt_self();
      v23 = objc_opt_isKindOfClass();

      if (v23)
      {
        v24 = objc_alloc(MEMORY[0x277CD93D0]);
        sourceContent2 = [(MarkupViewController *)self sourceContent];
        v26 = [v24 initWithURL:sourceContent2];
      }

      else
      {
        sourceContent3 = [(MarkupViewController *)self sourceContent];
        v31 = objc_opt_self();
        v32 = objc_opt_isKindOfClass();

        if ((v32 & 1) == 0)
        {
          goto LABEL_62;
        }

        v33 = objc_alloc(MEMORY[0x277CD93D0]);
        sourceContent2 = [(MarkupViewController *)self sourceContent];
        v26 = [v33 initWithData:sourceContent2];
      }

      v29 = v26;

      if (v29)
      {
        [(MarkupViewController *)self setDigestedSourceContent:v29];
        [(MarkupViewController *)self setSourceContentType:v15];
LABEL_61:
      }

LABEL_62:
      sourceContentType = [(MarkupViewController *)self sourceContentType];

      if (sourceContentType)
      {
        v51 = [*(v18 + 2976) _preferredFileDisplayNameForSourceContent:contentCopy];
        [(MarkupViewController *)self setPreferredFileDisplayName:v51];
      }

      else
      {
        NSLog(&cfstr_SUnsupportedCo.isa, "[MarkupViewController setSourceContent:withArchivedModelData:]", v15);
        [(MarkupViewController *)self _stopObservingAnnotationController];
        [(MarkupViewController *)self setAkUndoManager:0];
      }

      goto LABEL_66;
    }

    if (![v20 conformsToType:*MEMORY[0x277CE1DB0]])
    {
      goto LABEL_62;
    }

    v58 = 0;
    [MUImageDownsamplingUtilities _shouldFlattenEXIFOrientation:&v58 + 1 andDownsample:&v58 sourceContent:contentCopy];
    if ([objc_opt_class() _isInLowMemoryEnvironment])
    {
      v27 = HIBYTE(v58);
      v28 = HIBYTE(v58) ^ 1 | v58;
      if ((v58 & 0x100) == 0 && (v58 & 1) == 0)
      {
        v29 = 0;
        v18 = 0x27986D000;
        goto LABEL_37;
      }
    }

    else
    {
      LOBYTE(v58) = 0;
      if (HIBYTE(v58) != 1)
      {
        v29 = 0;
        goto LABEL_37;
      }

      v28 = 0;
      v27 = 1;
    }

    outputContentType = [(MarkupViewController *)self outputContentType];
    v29 = [MUImageDownsamplingUtilities _flattenEXIFOrientation:v27 withDownsampling:v28 & 1 sourceContent:contentCopy withContentType:outputContentType];

    v18 = 0x27986D000uLL;
    if (v29 || ([MUImageDownsamplingUtilities _flattenEXIFOrientation:HIBYTE(v58) withDownsampling:v58 sourceContent:contentCopy withContentType:*MEMORY[0x277CE1DC0]], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      objc_storeStrong(&self->_sourceContent, v29);
      v29 = v29;

      [(MarkupViewController *)self _cleanupPlaceholderImage];
      contentCopy = v29;
    }

LABEL_37:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v41 = objc_opt_class();
        v35 = NSStringFromClass(v41);
        NSLog(&cfstr_SEncounteredAn.isa, "[MarkupViewController setSourceContent:withArchivedModelData:]", v35);
LABEL_60:

        goto LABEL_61;
      }
    }

    v35 = objc_alloc_init(MUImageReader);
    if ([(MarkupViewController *)self _sourceImageMayContainBaseImageAndModel])
    {
      v55 = v29;
      v57 = 0;
      sourceContent4 = [(MarkupViewController *)self sourceContent];
      v37 = objc_opt_self();
      v38 = objc_opt_isKindOfClass();

      sourceContent5 = [(MarkupViewController *)self sourceContent];
      if (v38)
      {
        [(MUImageReader *)v35 readBaseImageFromData:sourceContent5 baseWasValid:&v57];
      }

      else
      {
        [(MUImageReader *)v35 readBaseImageFromImageAtURL:sourceContent5 baseWasValid:&v57];
      }
      sourceContent8 = ;

      v29 = v55;
      if (sourceContent8)
      {
        if (v57 == 1)
        {
          sourceContent6 = [(MarkupViewController *)self sourceContent];
          v43 = objc_opt_self();
          v54 = objc_opt_isKindOfClass();

          sourceContent7 = [(MarkupViewController *)self sourceContent];
          if (v54)
          {
            [(MUImageReader *)v35 readArchivedModelDataFromImageData:sourceContent7];
          }

          else
          {
            [(MUImageReader *)v35 readArchivedModelDataFromImageURL:sourceContent7];
          }
          v45 = ;

          v29 = v55;
        }

        else
        {
          v45 = 0;
        }

        [(MarkupViewController *)self setDigestedSourceContent:sourceContent8];
        goto LABEL_54;
      }
    }

    else
    {
      sourceContent8 = [(MarkupViewController *)self sourceContent];
      [(MarkupViewController *)self setDigestedSourceContent:sourceContent8];
    }

    v45 = 0;
LABEL_54:

    if (dataCopy && !v45)
    {
      v45 = dataCopy;
    }

    [(MarkupViewController *)self setArchivedModelData:v45];
    [(MarkupViewController *)self setSourceContentType:v15];
    originalImageDescription = [(MarkupViewController *)self originalImageDescription];

    if (!originalImageDescription)
    {
      [(MarkupViewController *)self sourceContent];
      v56 = v35;
      v48 = v47 = v29;
      v49 = [MUImageReader imageDescriptionFromSourceContent:v48];
      [(MarkupViewController *)self setOriginalImageDescription:v49];

      v29 = v47;
      v35 = v56;
    }

    v18 = 0x27986D000uLL;
    goto LABEL_60;
  }

  identifier = [*MEMORY[0x277CE1DC0] identifier];
  [(MarkupViewController *)self setSourceContentType:identifier];

  sourceContent9 = [(MarkupViewController *)self sourceContent];
  [(MarkupViewController *)self setDigestedSourceContent:sourceContent9];

  v59 = 0;
  [MUImageDownsamplingUtilities _shouldFlattenEXIFOrientation:&v59 + 1 andDownsample:&v59 sourceContent:contentCopy];
  if ([objc_opt_class() _isInLowMemoryEnvironment])
  {
    if (v59 & 0x100) != 0 || (v59)
    {
LABEL_10:
      v12 = [MUImageDownsamplingUtilities _flattenRotation:"_flattenRotation:withDownsampling:sourceImage:" withDownsampling:? sourceImage:?];
      if (v12)
      {
        v13 = v12;

        [(MarkupViewController *)self setSourceContent:v13];
        sourceContent10 = [(MarkupViewController *)self sourceContent];
        [(MarkupViewController *)self setDigestedSourceContent:sourceContent10];

        [(MarkupViewController *)self _cleanupPlaceholderImage];
        contentCopy = v13;
      }
    }
  }

  else
  {
    LOBYTE(v59) = 0;
    if (HIBYTE(v59) == 1)
    {
      goto LABEL_10;
    }
  }

  v15 = objc_alloc_init(MEMORY[0x277CCAD90]);
  [(MarkupViewController *)self setAkUndoManager:v15];
LABEL_66:

LABEL_67:
  if (self->_sourceContent)
  {
    sourceContentType2 = [(MarkupViewController *)self sourceContentType];

    if (!sourceContentType2)
    {
      NSLog(&cfstr_SClearingSourc.isa, "[MarkupViewController setSourceContent:withArchivedModelData:]");
      sourceContent = self->_sourceContent;
      self->_sourceContent = 0;

      [(MarkupViewController *)self setDigestedSourceContent:0];
    }
  }

LABEL_70:
}

- (void)setPreferredFileDisplayName:(id)name
{
  v6 = [name copy];
  stringByDeletingPathExtension = [v6 stringByDeletingPathExtension];
  preferredFileDisplayName = self->_preferredFileDisplayName;
  self->_preferredFileDisplayName = stringByDeletingPathExtension;
}

- (id)_pdfView
{
  contentViewController = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentViewController2 = [(MarkupViewController *)self contentViewController];
    pdfView = [contentViewController2 pdfView];
  }

  else
  {
    pdfView = 0;
  }

  return pdfView;
}

- (id)_pdfDocument
{
  contentViewController = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentViewController2 = [(MarkupViewController *)self contentViewController];
    pdfDocument = [contentViewController2 pdfDocument];
  }

  else
  {
    pdfDocument = 0;
  }

  return pdfDocument;
}

- (int64_t)thumbnailViewStyle
{
  contentViewController = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  contentViewController2 = [(MarkupViewController *)self contentViewController];
  thumbnailViewStyle = [contentViewController2 thumbnailViewStyle];

  return thumbnailViewStyle;
}

- (void)setThumbnailViewStyle:(int64_t)style
{
  contentViewController = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentViewController2 = [(MarkupViewController *)self contentViewController];
    [contentViewController2 setThumbnailViewStyle:style];
  }
}

- (BOOL)allowsThumbnailViewPageReordering
{
  contentViewController = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  contentViewController2 = [(MarkupViewController *)self contentViewController];
  allowsThumbnailViewPageReordering = [contentViewController2 allowsThumbnailViewPageReordering];

  return allowsThumbnailViewPageReordering;
}

- (void)setAllowsThumbnailViewPageReordering:(BOOL)reordering
{
  reorderingCopy = reordering;
  contentViewController = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentViewController2 = [(MarkupViewController *)self contentViewController];
    [contentViewController2 setAllowsThumbnailViewPageReordering:reorderingCopy];
  }
}

- (UIScrollView)contentViewScrollView
{
  contentViewController = [(MarkupViewController *)self contentViewController];
  contentViewScrollView = [contentViewController contentViewScrollView];

  return contentViewScrollView;
}

- (UIView)imageViewCombinedContentView
{
  contentViewController = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    combinedContentView = [contentViewController combinedContentView];
  }

  else
  {
    combinedContentView = 0;
  }

  return combinedContentView;
}

- (unint64_t)currentPDFPageIndex
{
  contentViewController = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  annotationController = [(MarkupViewController *)self annotationController];
  currentPageIndex = [annotationController currentPageIndex];

  return currentPageIndex;
}

- (void)setCurrentPDFPageIndex:(unint64_t)index
{
  contentViewController = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentViewController2 = [(MarkupViewController *)self contentViewController];
    pdfView = [contentViewController2 pdfView];
    document = [pdfView document];
    v9 = document;
    if (pdfView && document)
    {
      v10 = [document pageAtIndex:index];
      if (v10)
      {
        [pdfView goToPage:v10];
      }
    }
  }
}

- (void)setShapeDetectionEnabled:(BOOL)enabled
{
  if (self->_shapeDetectionEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_shapeDetectionEnabled = enabled;
    annotationController = [(MarkupViewController *)self annotationController];
    [annotationController setShapeDetectionEnabled:enabledCopy];
  }
}

- (void)setForcesPDFViewTopAlignment:(BOOL)alignment
{
  self->_forcesPDFViewTopAlignment = alignment;
  contentViewController = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contentViewController2 = [(MarkupViewController *)self contentViewController];
    [contentViewController2 setForcesPDFViewTopAlignment:{-[MarkupViewController forcesPDFViewTopAlignment](self, "forcesPDFViewTopAlignment")}];
  }
}

- (void)setShowShareButtonInToolbar:(BOOL)toolbar
{
  toolbarCopy = toolbar;
  self->_showShareButtonInToolbar = toolbar;
  annotationController = [(MarkupViewController *)self annotationController];
  modernToolbarView = [annotationController modernToolbarView];
  [modernToolbarView setShareButtonHidden:!toolbarCopy];
}

- (AKController)annotationController
{
  contentViewController = [(MarkupViewController *)self contentViewController];
  annotationController = [contentViewController annotationController];

  return annotationController;
}

+ (double)_maxImageDimensionInView
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  if (v4 < v6)
  {
    v4 = v6;
  }

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 nativeScale];
  v9 = v4 * floor(v8);

  return fmax(v9, 1500.0);
}

- (void)_setupInitialBaseModelScaleFactorWithScreenSize:(CGSize)size windowDecorationSize:(CGSize)decorationSize
{
  height = decorationSize.height;
  width = decorationSize.width;
  v6 = size.height;
  v7 = size.width;
  contentViewController = [(MarkupViewController *)self contentViewController];
  [contentViewController idealContentSizeForScreenSize:v7 windowDecorationSize:{v6, width, height}];
  v11 = v10;

  contentViewController2 = [(MarkupViewController *)self contentViewController];
  [contentViewController2 contentSize];
  v14 = v13;

  [(MarkupViewController *)self setInitialContentScale:v14 / v11];
}

- (BOOL)_shouldShowUndoRedoButtonsInNavigationBar
{
  traitCollection = [(MarkupViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {
    v4 = 1;
  }

  else
  {
    traitCollection2 = [(MarkupViewController *)self traitCollection];
    v4 = [traitCollection2 userInterfaceIdiom] == 0;
  }

  return v4;
}

- (void)_updateundoBarButtonWithController:(id)controller
{
  controllerCopy = controller;
  extensionContext = [(MarkupViewController *)self extensionContext];
  if (objc_opt_respondsToSelector())
  {
    if ([(MarkupViewController *)self _shouldShowUndoRedoButtonsInNavigationBar])
    {
      undoManager = [(MarkupViewController *)self undoManager];
    }

    else
    {
      undoManager = 0;
    }

    [extensionContext setUndoManagerForBarButtons:undoManager];
  }

  navItem = [(MarkupViewController *)self navItem];

  if (navItem)
  {
    navItem2 = [(MarkupViewController *)self navItem];
  }

  else
  {
    navigationItem = [(MarkupViewController *)self navigationItem];

    if (!navigationItem)
    {
LABEL_18:
      array = 0;
      goto LABEL_27;
    }

    navItem2 = [(MarkupViewController *)self navigationItem];
  }

  navigationItem = navItem2;
  if (!navItem2)
  {
    goto LABEL_18;
  }

  array = [MEMORY[0x277CBEB18] array];
  rightBarButtonItems = [navigationItem rightBarButtonItems];

  if (rightBarButtonItems)
  {
    rightBarButtonItems2 = [navigationItem rightBarButtonItems];
    [array addObjectsFromArray:rightBarButtonItems2];
  }

  if (controllerCopy)
  {
    annotationController = [controllerCopy annotationController];
    v13 = [annotationController toolbarButtonItemOfType:10];

    annotationController2 = [controllerCopy annotationController];
    v15 = [annotationController2 toolbarButtonItemOfType:11];

    if ([(MarkupViewController *)self _useLegacyToolbar])
    {
      if (v13 && ([array containsObject:v13] & 1) == 0)
      {
        [array addObject:v13];
      }

      goto LABEL_26;
    }

    toolbar = [(MarkupViewController *)self toolbar];
    _shouldShowUndoRedoButtonsInNavigationBar = [(MarkupViewController *)self _shouldShowUndoRedoButtonsInNavigationBar];
    if (_shouldShowUndoRedoButtonsInNavigationBar)
    {
      if (!v13 || !v15)
      {
        goto LABEL_25;
      }

      [array removeObjectIdenticalTo:v13];
      [array removeObjectIdenticalTo:v15];
      [array addObject:v15];
      [array addObject:v13];
    }

    else
    {
      [array removeObject:v13];
      [array removeObject:v15];
    }

    [toolbar setUndoRedoButtonsHidden:_shouldShowUndoRedoButtonsInNavigationBar];
LABEL_25:

LABEL_26:
  }

LABEL_27:
  [navigationItem setRightBarButtonItems:array];
}

- (void)_presentPlaceholderImage
{
  placeholderImage = [(MarkupViewController *)self placeholderImage];

  if (placeholderImage)
  {
    contentViewController = [(MarkupViewController *)self contentViewController];
    view = [(MarkupViewController *)self view];
    [contentViewController visibleContentRectInCoordinateSpace:view];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    placeholderImageView = [(MarkupViewController *)self placeholderImageView];
    [placeholderImageView setFrame:{v7, v9, v11, v13}];

    placeholderImage2 = [(MarkupViewController *)self placeholderImage];
    placeholderImageView2 = [(MarkupViewController *)self placeholderImageView];
    [placeholderImageView2 setImage:placeholderImage2];

    annotationController = [(MarkupViewController *)self annotationController];
    toolbarView = [annotationController toolbarView];

    superview = [toolbarView superview];
    view2 = [(MarkupViewController *)self view];

    view3 = [(MarkupViewController *)self view];
    placeholderImageView3 = [(MarkupViewController *)self placeholderImageView];
    if (superview == view2)
    {
      annotationController2 = [(MarkupViewController *)self annotationController];
      toolbarView2 = [annotationController2 toolbarView];
      [view3 insertSubview:placeholderImageView3 belowSubview:toolbarView2];
    }

    else
    {
      [view3 addSubview:placeholderImageView3];
    }
  }
}

- (void)_cleanupPlaceholderImage
{
  placeholderImageView = [(MarkupViewController *)self placeholderImageView];
  [placeholderImageView removeFromSuperview];

  [(MarkupViewController *)self setPlaceholderImageView:0];

  [(MarkupViewController *)self setPlaceholderImage:0];
}

- (void)_startObservingAnnotationController
{
  annotationController = [(MarkupViewController *)self annotationController];
  if (annotationController)
  {
    v4 = annotationController;
    isObservingAKCurrentPageIndex = [(MarkupViewController *)self isObservingAKCurrentPageIndex];

    if (!isObservingAKCurrentPageIndex)
    {
      [(MarkupViewController *)self setObservingAKCurrentPageIndex:1];
      annotationController2 = [(MarkupViewController *)self annotationController];
      [annotationController2 addObserver:self forKeyPath:@"currentPageIndex" options:11 context:@"MUVCcurrentPageObservationContext"];
    }
  }
}

- (void)_stopObservingAnnotationController
{
  annotationController = [(MarkupViewController *)self annotationController];
  if (annotationController)
  {
    v4 = annotationController;
    isObservingAKCurrentPageIndex = [(MarkupViewController *)self isObservingAKCurrentPageIndex];

    if (isObservingAKCurrentPageIndex)
    {
      [(MarkupViewController *)self setObservingAKCurrentPageIndex:0];
      annotationController2 = [(MarkupViewController *)self annotationController];
      [annotationController2 removeObserver:self forKeyPath:@"currentPageIndex" context:@"MUVCcurrentPageObservationContext"];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  v11 = changeCopy;
  if (context == @"MUVCcurrentPageObservationContext")
  {
    v12 = [changeCopy objectForKey:*MEMORY[0x277CCA2F8]];
    bOOLValue = [v12 BOOLValue];

    if (bOOLValue)
    {
      [(MarkupViewController *)self willChangeValueForKey:@"currentPDFPageIndex"];
      goto LABEL_16;
    }

    [(MarkupViewController *)self didChangeValueForKey:@"currentPDFPageIndex"];
    delegate = [(MarkupViewController *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([(MarkupViewController *)self contentViewController], v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, (isKindOfClass & 1) == 0))
    {
LABEL_15:

      goto LABEL_16;
    }

    v17 = [v11 objectForKey:*MEMORY[0x277CCA2F0]];
    v18 = [v11 objectForKey:*MEMORY[0x277CCA300]];
    v19 = v18;
    if (v18)
    {
      unsignedIntegerValue = [v18 unsignedIntegerValue];
      if (v17)
      {
LABEL_9:
        unsignedIntegerValue2 = [v17 unsignedIntegerValue];
LABEL_12:
        if (unsignedIntegerValue != unsignedIntegerValue2)
        {
          [delegate controller:self didChangeToPDFPageIndex:?];
        }

        goto LABEL_15;
      }
    }

    else
    {
      unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
      if (v17)
      {
        goto LABEL_9;
      }
    }

    unsignedIntegerValue2 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_12;
  }

  v22.receiver = self;
  v22.super_class = MarkupViewController;
  [(MarkupViewController *)&v22 observeValueForKeyPath:path ofObject:object change:changeCopy context:context];
LABEL_16:
}

- (void)_installContentViewControllerForUTI:(id)i
{
  iCopy = i;
  contentContainerView = [(MarkupViewController *)self contentContainerView];

  if (!contentContainerView)
  {
    view = [(MarkupViewController *)self view];
    [(MarkupViewController *)self setContentContainerView:view];
  }

  if (iCopy)
  {
    v6 = [MEMORY[0x277CE1CB8] typeWithIdentifier:?];
  }

  else
  {
    v6 = 0;
  }

  if (![v6 conformsToType:*MEMORY[0x277CE1E08]])
  {
    if ([v6 conformsToType:*MEMORY[0x277CE1DB0]])
    {
      v9 = [MUImageContentViewController alloc];
      digestedSourceContent = [(MarkupViewController *)self digestedSourceContent];
      archivedModelData = [(MarkupViewController *)self archivedModelData];
      v8 = [(MUImageContentViewController *)v9 initWithSourceContent:digestedSourceContent archivedDataModel:archivedModelData delegate:self];

      [(MUPDFContentViewController *)v8 setInkStyle:[(MarkupViewController *)self inkStyle]];
      if (v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      NSLog(&cfstr_SUnexpectedCon.isa, "[MarkupViewController _installContentViewControllerForUTI:]", iCopy);
    }

LABEL_23:
    NSLog(&cfstr_FailedToLoadFi.isa, iCopy);
    goto LABEL_24;
  }

  digestedSourceContent2 = [(MarkupViewController *)self digestedSourceContent];
  v8 = [[MUPDFContentViewController alloc] initWithPDFDocument:digestedSourceContent2 delegate:self];
  [(MUPDFContentViewController *)v8 setInkStyle:[(MarkupViewController *)self inkStyle]];

  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_11:
  [(MarkupViewController *)self setContentViewController:v8];
  contentViewController = [(MarkupViewController *)self contentViewController];
  [(MarkupViewController *)self addChildViewController:contentViewController];

  if (objc_opt_respondsToSelector())
  {
    [(MUPDFContentViewController *)v8 setShowsThumbnailView:!self->_thumbnailViewHidden];
  }

  if (objc_opt_respondsToSelector())
  {
    [(MUPDFContentViewController *)v8 setCentersIgnoringContentInsets:[(MarkupViewController *)self centersIgnoringContentInsets]];
  }

  if (objc_opt_respondsToSelector())
  {
    [(MUPDFContentViewController *)v8 setNavigationModeHorizontal:[(MarkupViewController *)self isNavigationModeHorizontal]];
  }

  [(MUPDFContentViewController *)v8 setup];
  if (objc_opt_respondsToSelector())
  {
    [objc_opt_class() _maxImageDimensionInView];
    [(MUPDFContentViewController *)v8 setMaxImageDimension:?];
  }

  contentViewController2 = [(MarkupViewController *)self contentViewController];
  view2 = [contentViewController2 view];

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  _effectiveBackgroundColor = [(MarkupViewController *)self _effectiveBackgroundColor];
  [view2 setBackgroundColor:_effectiveBackgroundColor];

  contentContainerView2 = [(MarkupViewController *)self contentContainerView];
  [contentContainerView2 insertSubview:view2 atIndex:0];

  if ([(MarkupViewController *)self useFancyTransition])
  {
    [view2 setAlpha:0.0];
  }

  contentViewController3 = [(MarkupViewController *)self contentViewController];
  [contentViewController3 didMoveToParentViewController:self];

  v18 = _NSDictionaryOfVariableBindings(&cfstr_Contentview.isa, view2, 0);
  v19 = MEMORY[0x277CCAAD0];
  v20 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[contentView]|" options:0 metrics:0 views:v18];
  [v19 activateConstraints:v20];

  v21 = MEMORY[0x277CCAAD0];
  v22 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[contentView]|" options:0 metrics:0 views:v18];
  [v21 activateConstraints:v22];

LABEL_24:
}

- (void)_setupAnnotationController
{
  annotationController = [(MarkupViewController *)self annotationController];
  v41 = annotationController;
  if (annotationController)
  {
    legacyDoodleController = [annotationController legacyDoodleController];
    [legacyDoodleController setPreferDoodle:1];

    legacyDoodleController2 = [v41 legacyDoodleController];
    [legacyDoodleController2 setCoalescesDoodles:1];

    [v41 setSelectNewlyCreatedAnnotations:1];
    [v41 setShapeDetectionEnabled:{-[MarkupViewController isShapeDetectionEnabled](self, "isShapeDetectionEnabled")}];
    [v41 setIsUsedOnDarkBackground:{-[MarkupViewController isUsedOnDarkBackground](self, "isUsedOnDarkBackground")}];
    attributeController = [v41 attributeController];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v8 = [attributeController strokeColorIsEqualTo:whiteColor];

    if (v8)
    {
      attributeController2 = [v41 attributeController];
      [attributeController2 restoreStrokeColorToSystemDefault];
    }

    if ([(MarkupViewController *)self _useLegacyToolbar])
    {
      toolbarViewController = [v41 toolbarViewController];
      [(MarkupViewController *)self addChildViewController:toolbarViewController];
      view = [toolbarViewController view];
      [view setDelegate:self];

      [toolbarViewController beginAppearanceTransition:1 animated:0];
      contentContainerView = [(MarkupViewController *)self contentContainerView];
      view2 = [toolbarViewController view];
      [contentContainerView addSubview:view2];

      [toolbarViewController didMoveToParentViewController:self];
      [toolbarViewController endAppearanceTransition];
      toolbarView = [v41 toolbarView];
      [(MarkupViewController *)self setToolbar:toolbarView];

      isToolbarHidden = [(MarkupViewController *)self isToolbarHidden];
      toolbar = [(MarkupViewController *)self toolbar];
      [toolbar setHidden:isToolbarHidden];

      toolbar2 = [(MarkupViewController *)self toolbar];
      [toolbar2 setTranslatesAutoresizingMaskIntoConstraints:0];

      _effectiveToolbarTintColor = [(MarkupViewController *)self _effectiveToolbarTintColor];
      [toolbarViewController setBarTintColor:_effectiveToolbarTintColor];

      _effectiveToolbarItemTintColor = [(MarkupViewController *)self _effectiveToolbarItemTintColor];
      [toolbarViewController setTintColor:_effectiveToolbarItemTintColor];

      if ([(MarkupViewController *)self useFancyTransition])
      {
        toolbar3 = [(MarkupViewController *)self toolbar];
        [toolbar3 setAlpha:0.0];

        floatingAttributeToolbarContainer = [toolbarViewController floatingAttributeToolbarContainer];
        [floatingAttributeToolbarContainer setAlpha:0.0];
      }

      toolbar4 = [(MarkupViewController *)self toolbar];
      leadingAnchor = [toolbar4 leadingAnchor];
      contentContainerView2 = [(MarkupViewController *)self contentContainerView];
      leadingAnchor2 = [contentContainerView2 leadingAnchor];
      v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v26 setActive:1];

      toolbar5 = [(MarkupViewController *)self toolbar];
      trailingAnchor = [toolbar5 trailingAnchor];
      contentContainerView3 = [(MarkupViewController *)self contentContainerView];
      trailingAnchor2 = [contentContainerView3 trailingAnchor];
      v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v31 setActive:1];

      toolbar6 = [(MarkupViewController *)self toolbar];
      LODWORD(v33) = 1148846080;
      [toolbar6 setContentHuggingPriority:1 forAxis:v33];

      [(MarkupViewController *)self _updateConstraintsForBarPosition:self->_toolbarPosition];
    }

    else
    {
      modernToolbar = [(MarkupViewController *)self modernToolbar];
      [modernToolbar setAnnotationController:v41];

      LODWORD(modernToolbar) = [(MarkupViewController *)self showShareButtonInToolbar];
      modernToolbar2 = [(MarkupViewController *)self modernToolbar];
      [modernToolbar2 setShareButtonHidden:modernToolbar ^ 1];

      toolbarViewController = [(MarkupViewController *)self modernToolbar];
      [(MarkupViewController *)self setToolbar:toolbarViewController];
    }

    [v41 setRulerHostingDelegate:self];
    [(MarkupViewController *)self adjustContentInsetsForBars];
    if ([(MarkupViewController *)self needsToolPickerVisibleWhenAnnotationControllerIsAvailable])
    {
      annotationController2 = [(MarkupViewController *)self annotationController];
      toolPicker = [annotationController2 toolPicker];
      [toolPicker setVisible:1 forFirstResponder:self];

      [(AKToolbarView *)self->_modernToolbar setContentsHidden:0];
      [(MarkupViewController *)self setNeedsToolPickerVisibleWhenAnnotationControllerIsAvailable:0];
    }

    contentViewController = [(MarkupViewController *)self contentViewController];
    view3 = [contentViewController view];
    [view3 layoutSubviews];

    view4 = [(MarkupViewController *)self view];
    [view4 layoutSubviews];
  }

  else
  {
    NSLog(&cfstr_FailedToLoadAk.isa);
  }
}

- (void)_createCancelDoneNavBar
{
  v30[1] = *MEMORY[0x277D85DE8];
  navBar = [(MarkupViewController *)self navBar];

  if (!navBar)
  {
    v4 = objc_alloc(MEMORY[0x277D75780]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setDelegate:self];
    contentContainerView = [(MarkupViewController *)self contentContainerView];
    [contentContainerView addSubview:v5];

    [(MarkupViewController *)self setNavBar:v5];
    [(MarkupViewController *)self _updateNavBarProperties];
    if ([(MarkupViewController *)self useFancyTransition])
    {
      navBar2 = [(MarkupViewController *)self navBar];
      [navBar2 setAlpha:0.0];
    }

    v8 = _NSDictionaryOfVariableBindings(&cfstr_Navbar.isa, v5, 0);
    contentContainerView2 = [(MarkupViewController *)self contentContainerView];
    v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[navBar]|" options:0 metrics:0 views:v8];
    [contentContainerView2 addConstraints:v10];

    if ([(MarkupViewController *)self showAsFormSheet]&& [(MarkupViewController *)self useFancyTransition])
    {
      v11 = MEMORY[0x277CCAAD0];
      contentContainerView3 = [(MarkupViewController *)self contentContainerView];
      v13 = [v11 constraintWithItem:v5 attribute:3 relatedBy:0 toItem:contentContainerView3 attribute:3 multiplier:1.0 constant:0.0];
    }

    else
    {
      contentContainerView3 = [v5 topAnchor];
      view = [(MarkupViewController *)self view];
      safeAreaLayoutGuide = [view safeAreaLayoutGuide];
      topAnchor = [safeAreaLayoutGuide topAnchor];
      v13 = [contentContainerView3 constraintEqualToAnchor:topAnchor];
    }

    [v13 setActive:1];
    v17 = objc_alloc(MEMORY[0x277D757A8]);
    title = [(MarkupViewController *)self title];
    v19 = [v17 initWithTitle:title];
    [(MarkupViewController *)self setNavItem:v19];

    v20 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
    [(MarkupViewController *)self setCancelButton:v20];

    v21 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
    [(MarkupViewController *)self setDoneButton:v21];

    navItem = [(MarkupViewController *)self navItem];
    cancelButton = [(MarkupViewController *)self cancelButton];
    v30[0] = cancelButton;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    [navItem setLeftBarButtonItems:v24];

    navItem2 = [(MarkupViewController *)self navItem];
    doneButton = [(MarkupViewController *)self doneButton];
    [navItem2 setRightBarButtonItem:doneButton];

    navItem3 = [(MarkupViewController *)self navItem];
    v29 = navItem3;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    [v5 setItems:v28];
  }
}

- (void)adjustContentInsetsForBars
{
  delegate = [(MarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate customEdgeInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    if (![(MarkupViewController *)self _useLegacyToolbar])
    {
      goto LABEL_17;
    }

    annotationController = [(MarkupViewController *)self annotationController];
    toolbarViewController = [annotationController toolbarViewController];
    [toolbarViewController visibleHeightOfAttributeBar];
    v8 = v8 + v13;
    goto LABEL_10;
  }

  v14 = MEMORY[0x277D768C8];
  v6 = *(MEMORY[0x277D768C8] + 8);
  v10 = *(MEMORY[0x277D768C8] + 24);
  navBar = [(MarkupViewController *)self navBar];

  if (navBar)
  {
    if (![(MarkupViewController *)self showAsFormSheet]|| (v16 = 0.0, ![(MarkupViewController *)self useFancyTransition]))
    {
      view = [(MarkupViewController *)self view];
      [view safeAreaInsets];
      v16 = v18;
    }

    navBar2 = [(MarkupViewController *)self navBar];
    [navBar2 frame];
    v4 = v16 + v20;

    if ([(MarkupViewController *)self _useLegacyToolbar])
    {
      annotationController = [(MarkupViewController *)self annotationController];
      toolbarViewController = [annotationController toolbarViewController];
      [toolbarViewController heightIncludingAdditionalVisibleBars];
      v8 = v21;
LABEL_10:

      goto LABEL_17;
    }

    modernToolbar = [(MarkupViewController *)self modernToolbar];
    view2 = [(MarkupViewController *)self view];
    [view2 bounds];
    [modernToolbar sizeThatFits:{CGRectGetWidth(v46), 1000.0}];

    v8 = 0.0;
  }

  else
  {
    v22 = *v14;
    v23 = v14[2];
    view3 = [(MarkupViewController *)self view];
    [view3 safeAreaInsets];
    v26 = v25;

    v4 = v22 + fmax(v26, 0.0);
    view4 = [(MarkupViewController *)self view];
    [view4 safeAreaInsets];
    v29 = v28;

    v8 = v23 + fmax(v29, 0.0);
    if (![(MarkupViewController *)self isToolbarHidden])
    {
      toolbarPosition = self->_toolbarPosition;
      v31 = toolbarPosition >= 2;
      v32 = toolbarPosition - 2;
      if (v31)
      {
        if (v32 <= 1)
        {
          toolbar = [(MarkupViewController *)self toolbar];
          [toolbar frame];
          v35 = v34;

          v4 = v4 + v35;
        }
      }

      else
      {
        if (![(MarkupViewController *)self _useLegacyToolbar])
        {
          annotationController = [(MarkupViewController *)self modernToolbar];
          toolbarViewController = [(MarkupViewController *)self view];
          [toolbarViewController bounds];
          [annotationController sizeThatFits:{CGRectGetWidth(v47), 1000.0}];
          v8 = v43;
          goto LABEL_10;
        }

        annotationController2 = [(MarkupViewController *)self annotationController];
        toolbarViewController2 = [annotationController2 toolbarViewController];
        [toolbarViewController2 heightIncludingAdditionalVisibleBars];
        v42 = v41;

        v8 = v8 + v42;
      }
    }
  }

LABEL_17:
  contentViewController = [(MarkupViewController *)self contentViewController];
  [contentViewController setEdgeInsets:{v4, v6, v8, v10}];
}

- (void)_updateConstraintsForBarPosition:(int64_t)position
{
  toolbarTopConstraint = [(MarkupViewController *)self toolbarTopConstraint];
  [toolbarTopConstraint setActive:0];

  toolbarTopAttachedConstraint = [(MarkupViewController *)self toolbarTopAttachedConstraint];
  [toolbarTopAttachedConstraint setActive:0];

  toolbarBottomConstraint = [(MarkupViewController *)self toolbarBottomConstraint];
  [toolbarBottomConstraint setActive:0];

  if (position < 2)
  {
    toolbarBottomConstraint2 = [(MarkupViewController *)self toolbarBottomConstraint];

    if (!toolbarBottomConstraint2)
    {
      toolbar = [(MarkupViewController *)self toolbar];
      bottomAnchor = [toolbar bottomAnchor];
      view = [(MarkupViewController *)self view];
      bottomAnchor2 = [view bottomAnchor];
      v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [(MarkupViewController *)self setToolbarBottomConstraint:v19];
    }

    toolbarBottomConstraint3 = [(MarkupViewController *)self toolbarBottomConstraint];
  }

  else if (position == 3)
  {
    toolbarTopAttachedConstraint2 = [(MarkupViewController *)self toolbarTopAttachedConstraint];

    if (!toolbarTopAttachedConstraint2)
    {
      toolbar2 = [(MarkupViewController *)self toolbar];
      topAnchor = [toolbar2 topAnchor];
      view2 = [(MarkupViewController *)self view];
      safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
      topAnchor2 = [safeAreaLayoutGuide topAnchor];
      v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [(MarkupViewController *)self setToolbarTopAttachedConstraint:v26];
    }

    toolbarBottomConstraint3 = [(MarkupViewController *)self toolbarTopAttachedConstraint];
  }

  else
  {
    if (position != 2)
    {
      return;
    }

    toolbarTopConstraint2 = [(MarkupViewController *)self toolbarTopConstraint];

    if (!toolbarTopConstraint2)
    {
      v9 = MEMORY[0x277CCAAD0];
      toolbar3 = [(MarkupViewController *)self toolbar];
      contentContainerView = [(MarkupViewController *)self contentContainerView];
      v12 = [v9 constraintWithItem:toolbar3 attribute:3 relatedBy:0 toItem:contentContainerView attribute:3 multiplier:1.0 constant:0.0];
      [(MarkupViewController *)self setToolbarTopConstraint:v12];
    }

    toolbarBottomConstraint3 = [(MarkupViewController *)self toolbarTopConstraint];
  }

  v27 = toolbarBottomConstraint3;
  [toolbarBottomConstraint3 setActive:1];
}

- (void)_updateAppearanceForTraitCollection:(id)collection
{
  collectionCopy = collection;
  contentViewController = [(MarkupViewController *)self contentViewController];
  view = [contentViewController view];
  [view alpha];
  v8 = v7;

  if (v8 == 1.0)
  {
    _effectiveBackgroundColor = [(MarkupViewController *)self _effectiveBackgroundColor];
    contentContainerView = [(MarkupViewController *)self contentContainerView];
    [contentContainerView setBackgroundColor:_effectiveBackgroundColor];
  }

  _effectiveBackgroundColor2 = [(MarkupViewController *)self _effectiveBackgroundColor];
  contentViewController2 = [(MarkupViewController *)self contentViewController];
  view2 = [contentViewController2 view];
  [view2 setBackgroundColor:_effectiveBackgroundColor2];

  if ([(MarkupViewController *)self _useLegacyToolbar])
  {
    annotationController = [(MarkupViewController *)self annotationController];
    toolbarViewController = [annotationController toolbarViewController];

    _effectiveToolbarTintColor = [(MarkupViewController *)self _effectiveToolbarTintColor];
    [toolbarViewController setBarTintColor:_effectiveToolbarTintColor];

    _effectiveToolbarItemTintColor = [(MarkupViewController *)self _effectiveToolbarItemTintColor];
    [toolbarViewController setTintColor:_effectiveToolbarItemTintColor];
  }

  [(MarkupViewController *)self _updateNavBarProperties];
  annotationController2 = [(MarkupViewController *)self annotationController];
  toolbarViewController2 = [annotationController2 toolbarViewController];
  [toolbarViewController2 traitCollectionDidChange:collectionCopy];

  [(MarkupViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)setNavBar:(id)bar
{
  barCopy = bar;
  if (self->_navBar != barCopy)
  {
    v6 = barCopy;
    objc_storeStrong(&self->_navBar, bar);
    [(MarkupViewController *)self _updateNavBarProperties];
    barCopy = v6;
  }
}

- (void)_updateNavBarProperties
{
  v9[1] = *MEMORY[0x277D85DE8];
  _effectiveToolbarTintColor = [(MarkupViewController *)self _effectiveToolbarTintColor];
  navBar = [(MarkupViewController *)self navBar];
  [navBar setBarTintColor:_effectiveToolbarTintColor];

  _effectiveNavBarTitleColor = [(MarkupViewController *)self _effectiveNavBarTitleColor];
  if (_effectiveNavBarTitleColor)
  {
    v8 = *MEMORY[0x277D740C0];
    navBar = [(MarkupViewController *)self _effectiveNavBarTitleColor];
    v9[0] = navBar;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  navBar2 = [(MarkupViewController *)self navBar];
  [navBar2 setTitleTextAttributes:v6];

  if (_effectiveNavBarTitleColor)
  {
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundColor = [(MarkupViewController *)self backgroundColor];
  v5 = [backgroundColor isEqual:colorCopy];

  if ((v5 & 1) == 0)
  {
    v6 = [colorCopy copy];
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v6;

    v8 = self->_backgroundColor;
    contentViewController = [(MarkupViewController *)self contentViewController];
    view = [contentViewController view];
    [view setBackgroundColor:v8];
  }
}

- (id)_effectiveBackgroundColor
{
  traitCollection = [(MarkupViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [(MarkupViewController *)self _markupBlackColor];
  }
  v4 = ;

  backgroundColor = [(MarkupViewController *)self backgroundColor];
  if (backgroundColor)
  {
    backgroundColor2 = [(MarkupViewController *)self backgroundColor];
  }

  else
  {
    backgroundColor2 = v4;
  }

  v7 = backgroundColor2;

  return v7;
}

- (void)setToolbarItemTintColor:(id)color
{
  colorCopy = color;
  toolbarItemTintColor = [(MarkupViewController *)self toolbarItemTintColor];
  v5 = [toolbarItemTintColor isEqual:colorCopy];

  if ((v5 & 1) == 0 && [(MarkupViewController *)self _useLegacyToolbar])
  {
    v6 = [colorCopy copy];
    toolbarItemTintColor = self->_toolbarItemTintColor;
    self->_toolbarItemTintColor = v6;

    annotationController = [(MarkupViewController *)self annotationController];
    toolbarViewController = [annotationController toolbarViewController];

    [toolbarViewController setTintColor:colorCopy];
  }
}

- (id)_effectiveToolbarItemTintColor
{
  traitCollection = [(MarkupViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {
    [MEMORY[0x277D75348] systemBlueColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v4 = ;

  if (self->_toolbarItemTintColor)
  {
    toolbarItemTintColor = self->_toolbarItemTintColor;
  }

  else
  {
    toolbarItemTintColor = v4;
  }

  v6 = toolbarItemTintColor;

  return toolbarItemTintColor;
}

- (void)setToolbarTintColor:(id)color
{
  colorCopy = color;
  toolbarTintColor = [(MarkupViewController *)self toolbarTintColor];
  v5 = [toolbarTintColor isEqual:colorCopy];

  if ((v5 & 1) == 0 && [(MarkupViewController *)self _useLegacyToolbar])
  {
    v6 = [colorCopy copy];
    toolbarTintColor = self->_toolbarTintColor;
    self->_toolbarTintColor = v6;

    annotationController = [(MarkupViewController *)self annotationController];
    toolbarViewController = [annotationController toolbarViewController];

    [toolbarViewController setBarTintColor:self->_toolbarTintColor];
  }
}

- (id)_effectiveToolbarTintColor
{
  traitCollection = [(MarkupViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {
    _markupBlackColor = 0;
  }

  else
  {
    _markupBlackColor = [(MarkupViewController *)self _markupBlackColor];
  }

  toolbarTintColor = _markupBlackColor;
  if (self->_toolbarItemTintColor)
  {
    toolbarTintColor = self->_toolbarTintColor;
  }

  v6 = toolbarTintColor;

  return toolbarTintColor;
}

- (void)setNavBarTitleColor:(id)color
{
  v13[1] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  navBarTitleColor = [(MarkupViewController *)self navBarTitleColor];
  v6 = [navBarTitleColor isEqual:colorCopy];

  if ((v6 & 1) == 0)
  {
    v7 = [colorCopy copy];
    navBarTitleColor = self->_navBarTitleColor;
    self->_navBarTitleColor = v7;

    v9 = self->_navBarTitleColor;
    if (v9)
    {
      v12 = *MEMORY[0x277D740C0];
      v13[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    }

    else
    {
      v10 = 0;
    }

    navBar = [(MarkupViewController *)self navBar];
    [navBar setTitleTextAttributes:v10];

    if (v9)
    {
    }
  }
}

- (id)_effectiveNavBarTitleColor
{
  traitCollection = [(MarkupViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v4 = ;

  navBarTitleColor = [(MarkupViewController *)self navBarTitleColor];
  if (navBarTitleColor)
  {
    navBarTitleColor2 = [(MarkupViewController *)self navBarTitleColor];
  }

  else
  {
    navBarTitleColor2 = v4;
  }

  v7 = navBarTitleColor2;

  return v7;
}

- (void)delete:(id)delete
{
  deleteCopy = delete;
  annotationController = [(MarkupViewController *)self annotationController];
  v5 = [annotationController validateDelete:deleteCopy];

  if (v5)
  {
    annotationController2 = [(MarkupViewController *)self annotationController];
    [annotationController2 delete:deleteCopy];
  }
}

- (void)duplicate:(id)duplicate
{
  duplicateCopy = duplicate;
  annotationController = [(MarkupViewController *)self annotationController];
  v5 = [annotationController validateDuplicate:duplicateCopy];

  if (v5)
  {
    annotationController2 = [(MarkupViewController *)self annotationController];
    [annotationController2 duplicate:duplicateCopy];
  }
}

- (void)editTextAnnotation:(id)annotation
{
  annotationCopy = annotation;
  annotationController = [(MarkupViewController *)self annotationController];
  v5 = [annotationController validateEditTextAnnotation:annotationCopy];

  if (v5)
  {
    annotationController2 = [(MarkupViewController *)self annotationController];
    [annotationController2 editTextAnnotation:annotationCopy];
  }
}

- (void)motionEnded:(int64_t)ended withEvent:(id)event
{
  eventCopy = event;
  allowShakeToUndo = [(MarkupViewController *)self allowShakeToUndo];
  if (ended == 1 && allowShakeToUndo)
  {
    annotationController = [(MarkupViewController *)self annotationController];
    v9 = [annotationController validateUndo:0];

    annotationController2 = [(MarkupViewController *)self annotationController];
    v11 = [annotationController2 validateRedo:0];

    annotationController3 = [(MarkupViewController *)self annotationController];
    objc_initWeak(location, annotationController3);

    objc_initWeak(&from, self);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __46__MarkupViewController_motionEnded_withEvent___block_invoke;
    v42[3] = &unk_27986E318;
    objc_copyWeak(&v43, &from);
    v13 = MEMORY[0x259C7BE00](v42);
    if ((v9 & 1) != 0 || v11)
    {
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"Undo" value:&stru_286962590 table:@"MarkupViewController"];

      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"Redo" value:&stru_286962590 table:@"MarkupViewController"];

      v30 = v15;
      v31 = v17;
      if (v9)
      {
        v18 = v15;
      }

      else
      {
        v18 = v17;
      }

      v29 = v18;
      v19 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:? preferredStyle:?];
      v20 = MEMORY[0x277D750F8];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"Cancel" value:&stru_286962590 table:@"MarkupViewController"];
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __46__MarkupViewController_motionEnded_withEvent___block_invoke_2;
      v40[3] = &unk_27986E6F8;
      v23 = v13;
      v41 = v23;
      v24 = [v20 actionWithTitle:v22 style:1 handler:v40];
      [v19 addAction:v24];

      if (v9)
      {
        v25 = MEMORY[0x277D750F8];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __46__MarkupViewController_motionEnded_withEvent___block_invoke_3;
        v37[3] = &unk_27986E720;
        objc_copyWeak(&v39, location);
        v38 = v23;
        v26 = [v25 actionWithTitle:v30 style:0 handler:v37];
        [v19 addAction:v26];

        objc_destroyWeak(&v39);
      }

      if (v11)
      {
        v27 = MEMORY[0x277D750F8];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __46__MarkupViewController_motionEnded_withEvent___block_invoke_4;
        v34[3] = &unk_27986E720;
        objc_copyWeak(&v36, location);
        v35 = v23;
        v28 = [v27 actionWithTitle:v31 style:0 handler:v34];
        [v19 addAction:v28];

        objc_destroyWeak(&v36);
      }

      [(MarkupViewController *)self presentViewController:v19 animated:1 completion:0];
    }

    objc_destroyWeak(&v43);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  else
  {
    v33.receiver = self;
    v33.super_class = MarkupViewController;
    if ([(MarkupViewController *)&v33 respondsToSelector:sel_motionEnded_withEvent_])
    {
      v32.receiver = self;
      v32.super_class = MarkupViewController;
      [(MarkupViewController *)&v32 motionEnded:ended withEvent:eventCopy];
    }
  }
}

void __46__MarkupViewController_motionEnded_withEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained becomeFirstResponder];
}

void __46__MarkupViewController_motionEnded_withEvent___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  [WeakRetained undo:0];
}

void __46__MarkupViewController_motionEnded_withEvent___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
  [WeakRetained redo:0];
}

- (void)_showTextStyleOptions:(id)options
{
  optionsCopy = options;
  annotationController = [(MarkupViewController *)self annotationController];
  v5 = [annotationController validateShowAttributeInspector:optionsCopy];

  if (v5)
  {
    annotationController2 = [(MarkupViewController *)self annotationController];
    [annotationController2 showAttributeInspector:optionsCopy];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel__showTextStyleOptions_ == action)
  {
    annotationController = [(MarkupViewController *)self annotationController];
    v9 = [annotationController validateShowAttributeInspector:senderCopy];
LABEL_10:
    v7 = v9;

    goto LABEL_11;
  }

  if (sel_editTextAnnotation_ == action)
  {
    annotationController = [(MarkupViewController *)self annotationController];
    v9 = [annotationController validateEditTextAnnotation:senderCopy];
    goto LABEL_10;
  }

  if (sel_duplicate_ == action)
  {
    annotationController = [(MarkupViewController *)self annotationController];
    v9 = [annotationController validateDuplicate:senderCopy];
    goto LABEL_10;
  }

  if (sel_delete_ == action)
  {
    annotationController = [(MarkupViewController *)self annotationController];
    v9 = [annotationController validateDelete:senderCopy];
    goto LABEL_10;
  }

  v11.receiver = self;
  v11.super_class = MarkupViewController;
  v7 = [(MarkupViewController *)&v11 canPerformAction:action withSender:senderCopy];
LABEL_11:

  return v7;
}

- (void)positionSketchOverlay:(id)overlay forContentViewController:(id)controller
{
  overlayCopy = overlay;
  toolbar = [(MarkupViewController *)self toolbar];
  superview = [toolbar superview];

  [superview bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(MarkupViewController *)self sketchOverlayInsets];
  v16 = v8 + v15;
  v18 = v10 + v17;
  v20 = v12 - (v15 + v19);
  v22 = v14 - (v17 + v21);
  NSClassFromString(&cfstr_Aksmoothpathvi.isa);
  if (objc_opt_isKindOfClass())
  {
    contentViewController = [(MarkupViewController *)self contentViewController];
    [contentViewController visibleContentRectInCoordinateSpace:superview];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    contentViewController2 = [(MarkupViewController *)self contentViewController];
    view = [contentViewController2 view];
    [view convertRect:superview toView:{v25, v27, v29, v31}];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v51.origin.x = v16;
    v51.origin.y = v18;
    v51.size.width = v20;
    v51.size.height = v22;
    v55.origin.x = v35;
    v55.origin.y = v37;
    v55.size.width = v39;
    v55.size.height = v41;
    v52 = CGRectIntersection(v51, v55);
    x = v52.origin.x;
    y = v52.origin.y;
    width = v52.size.width;
    height = v52.size.height;
    if (!CGRectIsNull(v52))
    {
      v22 = height;
      v20 = width;
      v18 = y;
      v16 = x;
    }
  }

  [superview convertRect:0 toView:{v16, v18, v20, v22}];
  v54 = CGRectIntegral(v53);
  [superview convertRect:0 fromView:{v54.origin.x, v54.origin.y, v54.size.width, v54.size.height}];
  [overlayCopy setFrame:?];
  superview2 = [overlayCopy superview];

  if (superview2 != superview)
  {
    [overlayCopy setAutoresizingMask:18];
    toolbar2 = [(MarkupViewController *)self toolbar];
    superview3 = [toolbar2 superview];
    [superview3 addSubview:overlayCopy];
  }
}

- (id)annotationControllerOfContentViewController:(id)controller willSetToolbarItems:(id)items
{
  itemsCopy = items;
  annotationController = [controller annotationController];
  sourceContent = [(MarkupViewController *)self sourceContent];
  v9 = [MUImageDownsamplingUtilities _sourceContentType:sourceContent];

  if (v9)
  {
    v10 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v9];
  }

  else
  {
    v10 = 0;
  }

  if (([v10 conformsToType:*MEMORY[0x277CE1E08]] & 1) == 0)
  {
    v11 = [itemsCopy indexOfObjectPassingTest:&__block_literal_global_0];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11;
      v13 = [itemsCopy mutableCopy];
      [v13 removeObjectAtIndex:v12];

      itemsCopy = v13;
    }
  }

  v14 = [(MarkupViewController *)self filteredToolbarItemsForItems:itemsCopy fromController:annotationController];

  delegate = [(MarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v16 = [delegate controller:self willSetToolbarItems:v14];

    v14 = v16;
  }

  return v14;
}

BOOL __88__MarkupViewController_annotationControllerOfContentViewController_willSetToolbarItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 akToolbarButtonItemType] == 12;
  *a4 = result;
  return result;
}

- (BOOL)contentViewController:(id)controller shouldHandleURL:(id)l
{
  lCopy = l;
  delegate = [(MarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate controller:self shouldOpenLinkAtURL:lCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)annotationController:(id)controller detectedEditOfType:(unint64_t)type
{
  v5 = [(MarkupViewController *)self delegate:controller];
  if (v5)
  {
    v6 = v5;
    if (objc_opt_respondsToSelector())
    {
      [v6 controllerDidChangeContent:self];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)_notifyDidChangeShowingSignaturesUI
{
  delegate = [(MarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate markupViewController:self didChangeShowingSignaturesUI:self->_showingSignaturesUI];
  }
}

- (CGSize)adjustedSourceImageSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (int64_t)positionForBar:(id)bar
{
  barCopy = bar;
  navBar = [(MarkupViewController *)self navBar];

  if (navBar == barCopy)
  {
    return 3;
  }

  else
  {
    return self->_toolbarPosition;
  }
}

- (UIView)toolbar
{
  if ([(MarkupViewController *)self _useLegacyToolbar])
  {
    annotationController = [(MarkupViewController *)self annotationController];
    toolbarView = [annotationController toolbarView];
  }

  else
  {
    toolbarView = [(MarkupViewController *)self modernToolbar];
  }

  return toolbarView;
}

- (void)_toolbarShareButtonTapped:(id)tapped
{
  delegate = [(MarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate performSelector:sel_controllerWantsToShowShareSheet_ withObject:self];
  }
}

- (id)getMenuElementsForPage:(id)page
{
  pageCopy = page;
  delegate = [(MarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate menuElementsForPage:pageCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (MarkupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end