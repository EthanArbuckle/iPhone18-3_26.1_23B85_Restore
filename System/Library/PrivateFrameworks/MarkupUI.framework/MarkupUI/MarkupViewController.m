@interface MarkupViewController
+ (double)_maxImageDimensionInView;
- (AKController)annotationController;
- (BOOL)_canShowWhileLocked;
- (BOOL)_shouldShowUndoRedoButtonsInNavigationBar;
- (BOOL)_useLegacyToolbar;
- (BOOL)_writeToDataConsumer:(CGDataConsumer *)a3 embedSourceImageAndEditModel:(BOOL)a4 options:(id)a5 error:(id *)a6;
- (BOOL)allEditingDisabled;
- (BOOL)allowsThumbnailViewPageReordering;
- (BOOL)annotationEditingEnabled;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)contentViewController:(id)a3 shouldHandleURL:(id)a4;
- (BOOL)fixedThumbnailView;
- (BOOL)formFillingEnabled;
- (BOOL)isTouchInThumbnailView:(id)a3;
- (BOOL)pencilAlwaysDraws;
- (BOOL)validateRedo:(id)a3;
- (BOOL)validateUndo:(id)a3;
- (BOOL)writeToURL:(id)a3 embeddingSourceImageAndEditModel:(BOOL)a4 options:(id)a5 error:(id *)a6;
- (CGSize)adjustedSourceImageSize;
- (MarkupViewController)initWithCoder:(id)a3;
- (MarkupViewController)initWithNibName:(id)a3 bundle:(id)a4;
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
- (id)annotationControllerOfContentViewController:(id)a3 willSetToolbarItems:(id)a4;
- (id)createArchivedModelData;
- (id)dataRepresentationEmbeddingSourceImageAndEditModel:(BOOL)a3 error:(id *)a4;
- (id)dataRepresentationEmbeddingSourceImageAndEditModel:(BOOL)a3 withDestinationType:(id)a4 error:(id *)a5;
- (id)getMenuElementsForPage:(id)a3;
- (int64_t)positionForBar:(id)a3;
- (int64_t)preferredStatusBarStyle;
- (int64_t)thumbnailViewStyle;
- (unint64_t)currentPDFPageIndex;
- (void)_cancel;
- (void)_cleanupPlaceholderImage;
- (void)_commonInit;
- (void)_createCancelDoneNavBar;
- (void)_installContentViewControllerForUTI:(id)a3;
- (void)_loadSourceContentWithCompletion:(id)a3;
- (void)_notifyDidChangeShowingSignaturesUI;
- (void)_presentPlaceholderImage;
- (void)_saveEditing:(id)a3;
- (void)_setFileURL:(id)a3 withArchivedModelData:(id)a4 withCompletion:(id)a5;
- (void)_setLegacyToolbarHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)_setThumbnailViewHidden:(BOOL)a3;
- (void)_setupAnnotationController;
- (void)_setupInitialBaseModelScaleFactorWithScreenSize:(CGSize)a3 windowDecorationSize:(CGSize)a4;
- (void)_showTextStyleOptions:(id)a3;
- (void)_startObservingAnnotationController;
- (void)_stopObservingAnnotationController;
- (void)_toolbarShareButtonTapped:(id)a3;
- (void)_updateAndLoadSourceContent:(id)a3 withArchivedModelData:(id)a4 withCompletion:(id)a5;
- (void)_updateAppearanceForTraitCollection:(id)a3;
- (void)_updateConstraintsForBarPosition:(int64_t)a3;
- (void)_updateNavBarProperties;
- (void)_updateundoBarButtonWithController:(id)a3;
- (void)adjustContentInsetsForBars;
- (void)annotationController:(id)a3 detectedEditOfType:(unint64_t)a4;
- (void)cancel:(id)a3;
- (void)dealloc;
- (void)delete:(id)a3;
- (void)documentDidCloseTeardown;
- (void)duplicate:(id)a3;
- (void)editTextAnnotation:(id)a3;
- (void)finalizeCrop;
- (void)fullTeardown;
- (void)motionEnded:(int64_t)a3 withEvent:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)positionSketchOverlay:(id)a3 forContentViewController:(id)a4;
- (void)redo:(id)a3;
- (void)restoreToolModeForContentType;
- (void)revert;
- (void)setAllEditingDisabled:(BOOL)a3;
- (void)setAllowsThumbnailViewPageReordering:(BOOL)a3;
- (void)setAnnotationEditingEnabled:(BOOL)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setCurrentPDFPageIndex:(unint64_t)a3;
- (void)setData:(id)a3 withArchivedModelData:(id)a4 placeholderImage:(id)a5;
- (void)setFileURL:(id)a3 withArchivedModelData:(id)a4 placeholderImage:(id)a5;
- (void)setFixedThumbnailView:(BOOL)a3;
- (void)setForcesPDFViewTopAlignment:(BOOL)a3;
- (void)setFormFillingEnabled:(BOOL)a3 didUseBanner:(BOOL)a4;
- (void)setImage:(id)a3 withArchivedModelData:(id)a4 placeholderImage:(id)a5;
- (void)setNavBar:(id)a3;
- (void)setNavBarTitleColor:(id)a3;
- (void)setNavigationModeHorizontal:(BOOL)a3;
- (void)setPencilAlwaysDraws:(BOOL)a3;
- (void)setPreferredFileDisplayName:(id)a3;
- (void)setShapeDetectionEnabled:(BOOL)a3;
- (void)setShowShareButtonInToolbar:(BOOL)a3;
- (void)setShowThumbnailViewForMultipage:(BOOL)a3;
- (void)setSourceContent:(id)a3 withArchivedModelData:(id)a4;
- (void)setThumbnailViewStyle:(int64_t)a3;
- (void)setToolbarHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setToolbarItemTintColor:(id)a3;
- (void)setToolbarPosition:(int64_t)a3;
- (void)setToolbarTintColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)undo:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willBeginLoadingNewDocument;
@end

@implementation MarkupViewController

- (MarkupViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MarkupViewController;
  v3 = [(MarkupViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(MarkupViewController *)v3 _commonInit];
  }

  return v4;
}

- (MarkupViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = MarkupViewController;
  v4 = [(MarkupViewController *)&v7 initWithNibName:a3 bundle:a4];
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
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];
  hostProcessBundleIdentifier = self->_hostProcessBundleIdentifier;
  self->_hostProcessBundleIdentifier = v4;

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
  v3 = [(MarkupViewController *)self delegate];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 controllerCanShowWhileLocked:self];
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
    v3 = [(MarkupViewController *)self contentViewController];
    [v3 uninstallAllAnnotationControllerOverlays];

    v4 = [(MarkupViewController *)self toolbarTopConstraint];
    [v4 setActive:0];

    v5 = [(MarkupViewController *)self toolbarTopAttachedConstraint];
    [v5 setActive:0];

    v6 = [(MarkupViewController *)self toolbarBottomConstraint];
    [v6 setActive:0];

    [(MarkupViewController *)self setToolbarTopConstraint:0];
    [(MarkupViewController *)self setToolbarTopAttachedConstraint:0];
    [(MarkupViewController *)self setToolbarBottomConstraint:0];
    if ([(MarkupViewController *)self _useLegacyToolbar])
    {
      v7 = [(MarkupViewController *)self annotationController];
      v8 = [v7 toolbarViewController];

      v9 = [v8 view];
      [v9 setDelegate:0];

      [v8 willMoveToParentViewController:0];
      [v8 removeFromParentViewController];
      v10 = [(MarkupViewController *)self annotationController];
      v11 = [v10 toolbarView];
      [v11 removeFromSuperview];
    }

    v12 = [(MarkupViewController *)self toolbar];
    [v12 removeFromSuperview];

    [(MarkupViewController *)self setToolbar:0];
    [(MarkupViewController *)self _stopObservingAnnotationController];
    v13 = [(MarkupViewController *)self contentViewController];
    [v13 willMoveToParentViewController:0];

    v14 = [(MarkupViewController *)self contentViewController];
    [v14 removeFromParentViewController];

    v15 = [(MarkupViewController *)self contentViewController];
    v16 = [v15 view];
    [v16 removeFromSuperview];

    v17 = [(MarkupViewController *)self contentViewController];
    [v17 teardown];

    [(MarkupViewController *)self setContentViewController:0];
    [(MarkupViewController *)self setAkUndoManager:0];
    [(MarkupViewController *)self setSourceContent:0];
    [(MarkupViewController *)self setDigestedSourceContent:0];
    [(MarkupViewController *)self setSourceContentType:0];
    v18 = [(MarkupViewController *)self navBar];
    [v18 setDelegate:0];

    [(MarkupViewController *)self setNavBar:0];
    [(MarkupViewController *)self setNavItem:0];
    [(MarkupViewController *)self setCancelButton:0];
    [(MarkupViewController *)self setDoneButton:0];
    v19 = [(MarkupViewController *)self transitionDimmingView];
    [v19 removeFromSuperview];

    [(MarkupViewController *)self setTransitionDimmingView:0];
    v20 = [(MarkupViewController *)self whiteView];
    [v20 removeFromSuperview];

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
  v3 = [(MarkupViewController *)self view];
  [v3 addSubview:self->_modernToolbar];

  if ([(AKToolbarView *)self->_modernToolbar useNewFullscreenPalette])
  {
    v4 = [(MarkupViewController *)self view];
    [v4 bringSubviewToFront:self->_modernToolbar];
  }

  v5 = [(AKToolbarView *)self->_modernToolbar bottomAnchor];
  v6 = [(MarkupViewController *)self view];
  v7 = [v6 bottomAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  [(MarkupViewController *)self setToolbarBottomConstraint:v8];

  v9 = [(AKToolbarView *)self->_modernToolbar leadingAnchor];
  v10 = [(MarkupViewController *)self view];
  v11 = [v10 leadingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [(AKToolbarView *)self->_modernToolbar trailingAnchor];
  v14 = [(MarkupViewController *)self view];
  v15 = [v14 trailingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  [(AKToolbarView *)self->_modernToolbar setShareButtonAction:sel__toolbarShareButtonTapped_];
  [(AKToolbarView *)self->_modernToolbar setShareButtonTarget:self];
  v17 = [(MarkupViewController *)self toolbarBottomConstraint];
  [v17 setActive:1];

  v18 = [(MarkupViewController *)self view];
  [(MarkupViewController *)self setContentContainerView:v18];

  [(MarkupViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MarkupViewController;
  [(MarkupViewController *)&v6 viewWillAppear:a3];
  v4 = [(MarkupViewController *)self navBar];

  if (!v4)
  {
    v5 = [(MarkupViewController *)self contentViewController];
    [(MarkupViewController *)self _updateundoBarButtonWithController:v5];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  kdebug_trace();
  v8.receiver = self;
  v8.super_class = MarkupViewController;
  [(MarkupViewController *)&v8 viewDidAppear:v3];
  if (!self->_toolbarHidden)
  {
    v5 = [(MarkupViewController *)self annotationController];
    if (v5)
    {
      v6 = [(MarkupViewController *)self annotationController];
      v7 = [v6 toolPicker];

      [v7 setVisible:1 forFirstResponder:self];
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

  v3 = [(MarkupViewController *)self _pdfDocument];
  v4 = [v3 isLocked];

  if (v4)
  {
    return 0;
  }

  v6 = [(MarkupViewController *)self delegate];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v6 controllerCanBecomeFirstResponder:self];
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
  v3 = [(MarkupViewController *)self contentViewController];
  [(MarkupViewController *)self _updateundoBarButtonWithController:v3];
}

- (UIEdgeInsets)sketchOverlayInsets
{
  v3 = [(MarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 customSketchOverlayInsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v12 = [(MarkupViewController *)self contentViewController];
    [v12 edgeInsets];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MarkupViewController;
  [(MarkupViewController *)&v13 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceIdiom];
  v6 = [(MarkupViewController *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v5 != v7)
  {
    v8 = [(MarkupViewController *)self traitCollection];
    [(MarkupViewController *)self _updateAppearanceForTraitCollection:v8];
  }

  v9 = [v4 horizontalSizeClass];
  v10 = [(MarkupViewController *)self traitCollection];
  v11 = [v10 horizontalSizeClass];

  if (v9 != v11)
  {
    v12 = [(MarkupViewController *)self contentViewController];
    [(MarkupViewController *)self _updateundoBarButtonWithController:v12];
  }
}

- (int64_t)preferredStatusBarStyle
{
  v2 = [(MarkupViewController *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] != 1;

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

- (void)_setLegacyToolbarHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(MarkupViewController *)self annotationController];
  v8 = [v7 toolbarViewController];

  [v8 beginAppearanceTransition:v5 ^ 1 animated:v4];
  if (v4 && !v5)
  {
    v9 = [(MarkupViewController *)self toolbar];
    [v9 setAlpha:0.0];

    v10 = [(MarkupViewController *)self toolbar];
    [v10 setHidden:0];
  }

  if (v4)
  {
    v11 = MEMORY[0x277D75D18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__MarkupViewController__setLegacyToolbarHidden_animated___block_invoke;
    v17[3] = &unk_27986E5B8;
    v17[4] = self;
    v18 = v5;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__MarkupViewController__setLegacyToolbarHidden_animated___block_invoke_2;
    v13[3] = &unk_27986E5E0;
    v14 = v8;
    v15 = self;
    v16 = v5;
    [v11 _animateUsingDefaultTimingWithOptions:6 animations:v17 completion:v13];
  }

  else
  {
    [v8 endAppearanceTransition];
    v12 = [(MarkupViewController *)self toolbar];
    [v12 setHidden:v5];
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

- (void)setToolbarHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_toolbarHidden != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_toolbarHidden = a3;
    if ([(MarkupViewController *)self _useLegacyToolbar])
    {

      [(MarkupViewController *)self _setLegacyToolbarHidden:v5 animated:v4];
    }

    else
    {
      v7 = [(MarkupViewController *)self annotationController];
      v12 = [v7 toolPicker];

      [v12 setVisible:1 forFirstResponder:self];
      if (self->_toolbarHidden)
      {
        if (([(MarkupViewController *)self isFirstResponder]& 1) == 0)
        {
          [(MarkupViewController *)self becomeFirstResponder];
        }

        v8 = [(MarkupViewController *)self toolbar];
        [v8 endAnnotationEditing];

        v9 = [(MarkupViewController *)self toolbar];
        [v9 dismissPresentedPopoversAnimated:1];

        v10 = [(MarkupViewController *)self toolbar];
        [v10 forceHideRuler];

        [v12 setVisible:0 forFirstResponder:self];
      }

      else
      {
        [(MarkupViewController *)self becomeFirstResponder];
      }

      v11 = [(MarkupViewController *)self toolbar];
      [v11 setContentsHidden:v5 animated:v4];
    }
  }
}

- (void)setToolbarPosition:(int64_t)a3
{
  if ([(MarkupViewController *)self _useLegacyToolbar])
  {
    if (self->_toolbarPosition != a3)
    {
      self->_toolbarPosition = a3;

      [(MarkupViewController *)self _updateConstraintsForBarPosition:a3];
    }
  }

  else
  {
    NSLog(&cfstr_ThisApiIsDepre.isa);
  }
}

- (void)setShowThumbnailViewForMultipage:(BOOL)a3
{
  v3 = a3;
  v6 = [(MarkupViewController *)self contentViewController];
  v5 = !v3 || (objc_opt_respondsToSelector() & 1) == 0 || -[MarkupViewController thumbnailViewStyle](self, "thumbnailViewStyle") != 1 && [v6 pageCount] == 1;
  [(MarkupViewController *)self _setThumbnailViewHidden:v5];
}

- (void)_setThumbnailViewHidden:(BOOL)a3
{
  self->_thumbnailViewHidden = a3;
  v4 = [(MarkupViewController *)self contentViewController];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 setShowsThumbnailView:!self->_thumbnailViewHidden];
    }
  }

  MEMORY[0x2821F97C8]();
}

- (void)setFixedThumbnailView:(BOOL)a3
{
  v3 = a3;
  v5 = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(MarkupViewController *)self contentViewController];
    [v7 setFixedThumbnailView:v3];
  }
}

- (BOOL)fixedThumbnailView
{
  v3 = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(MarkupViewController *)self contentViewController];
  v6 = [v5 fixedThumbnailView];

  return v6;
}

- (BOOL)isTouchInThumbnailView:(id)a3
{
  v4 = a3;
  v5 = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(MarkupViewController *)self contentViewController];
    v8 = [v7 isTouchInThumbnailView:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setNavigationModeHorizontal:(BOOL)a3
{
  self->_navigationModeHorizontal = a3;
  v4 = [(MarkupViewController *)self contentViewController];
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      [v5 setNavigationModeHorizontal:self->_navigationModeHorizontal];
    }
  }

  MEMORY[0x2821F97C8]();
}

- (void)setFileURL:(id)a3 withArchivedModelData:(id)a4 placeholderImage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(2, 0);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__MarkupViewController_setFileURL_withArchivedModelData_placeholderImage___block_invoke;
  v15[3] = &unk_27986E630;
  v16 = v10;
  v17 = self;
  v18 = v8;
  v19 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v10;
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

- (void)_setFileURL:(id)a3 withArchivedModelData:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  [v11 coordinateReadingItemAtURL:v8 options:0 error:0 byAccessor:v13];
  v12 = v15[5];

  [(MarkupViewController *)self _updateAndLoadSourceContent:v12 withArchivedModelData:v9 withCompletion:v10];
  _Block_object_dispose(&v14, 8);
}

- (void)setImage:(id)a3 withArchivedModelData:(id)a4 placeholderImage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, 100.0, 100.0}];
    [(MarkupViewController *)self setPlaceholderImageView:v11];

    [(MarkupViewController *)self setPlaceholderImage:v10];
  }

  objc_initWeak(&location, self);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __72__MarkupViewController_setImage_withArchivedModelData_placeholderImage___block_invoke;
  v15 = &unk_27986E318;
  objc_copyWeak(&v16, &location);
  [(MarkupViewController *)self _updateAndLoadSourceContent:v8 withArchivedModelData:v9 withCompletion:&v12];
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

- (void)setData:(id)a3 withArchivedModelData:(id)a4 placeholderImage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{0.0, 0.0, 100.0, 100.0}];
    [(MarkupViewController *)self setPlaceholderImageView:v11];

    [(MarkupViewController *)self setPlaceholderImage:v10];
  }

  objc_initWeak(&location, self);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __71__MarkupViewController_setData_withArchivedModelData_placeholderImage___block_invoke;
  v15 = &unk_27986E318;
  objc_copyWeak(&v16, &location);
  [(MarkupViewController *)self _setData:v8 withArchivedModelData:v9 withCompletion:&v12];
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
  v2 = [(MarkupViewController *)self sourceContentType];
  if (v2)
  {
    v3 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v2];
    v4 = *MEMORY[0x277CE1E08];
    if ([v3 conformsToType:*MEMORY[0x277CE1E08]] || (v4 = *MEMORY[0x277CE1E10], objc_msgSend(v3, "conformsToType:", *MEMORY[0x277CE1E10])) || (v4 = *MEMORY[0x277CE1E80], objc_msgSend(v3, "conformsToType:", *MEMORY[0x277CE1E80])) || (v4 = *MEMORY[0x277CE1D90], objc_msgSend(v3, "conformsToType:", *MEMORY[0x277CE1D90])))
    {
      v5 = v4;
    }

    else
    {
      if (![v3 conformsToType:*MEMORY[0x277CE1DB0]])
      {
        NSLog(&cfstr_SNullOutputtyp.isa, "[MarkupViewController outputContentType]", v2);
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
  v2 = [(MarkupViewController *)self outputContentType];
  v3 = [v2 identifier];

  return v3;
}

- (BOOL)writeToURL:(id)a3 embeddingSourceImageAndEditModel:(BOOL)a4 options:(id)a5 error:(id *)a6
{
  v7 = a4;
  v10 = a5;
  v11 = CGDataConsumerCreateWithURL(a3);
  if (v11)
  {
    v12 = v11;
    v13 = [(MarkupViewController *)self _writeToDataConsumer:v11 embedSourceImageAndEditModel:v7 options:v10 error:a6];
    CFRelease(v12);
    if (!a6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    if (!a6)
    {
      goto LABEL_8;
    }
  }

  if (!v13 && !*a6)
  {
    *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];
  }

LABEL_8:

  return v13;
}

- (id)dataRepresentationEmbeddingSourceImageAndEditModel:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v7 = [MEMORY[0x277CBEB28] data];
  v8 = CGDataConsumerCreateWithCFData(v7);
  if (!v8)
  {
    v16 = 0;
    v17 = 1;
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v9 = v8;
  v10 = [(MarkupViewController *)self _writeToDataConsumer:v8 embedSourceImageAndEditModel:v5 error:a4];
  if (v10)
  {
    if (_MUWriteOutputToTemp())
    {
      v11 = [(MarkupViewController *)self outputContentType];
      v12 = [v11 preferredFilenameExtension];

      v13 = NSTemporaryDirectory();
      v14 = [v13 stringByAppendingPathComponent:@"output"];
      v15 = [v14 stringByAppendingPathExtension:v12];

      NSLog(&cfstr_WritingOutputT.isa, v15);
      [(__CFData *)v7 writeToFile:v15 atomically:0];
    }

    v16 = v7;
  }

  else
  {
    v16 = 0;
  }

  CFRelease(v9);
  v17 = !v10;
  if (a4)
  {
LABEL_10:
    if (v17 && !*a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];
    }
  }

LABEL_13:

  return v16;
}

- (id)dataRepresentationEmbeddingSourceImageAndEditModel:(BOOL)a3 withDestinationType:(id)a4 error:(id *)a5
{
  v6 = a3;
  v8 = [MEMORY[0x277CBEB28] data];
  v9 = CGDataConsumerCreateWithCFData(v8);
  if (!v9)
  {
    v17 = 0;
    v18 = 1;
    if (!a5)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v10 = v9;
  v11 = [(MarkupViewController *)self _writeToDataConsumer:v9 embedSourceImageAndEditModel:v6 error:a5];
  if (v11)
  {
    if (_MUWriteOutputToTemp())
    {
      v12 = [(MarkupViewController *)self outputContentType];
      v13 = [v12 preferredFilenameExtension];

      v14 = NSTemporaryDirectory();
      v15 = [v14 stringByAppendingPathComponent:@"output"];
      v16 = [v15 stringByAppendingPathExtension:v13];

      NSLog(&cfstr_WritingOutputT.isa, v16);
      [(__CFData *)v8 writeToFile:v16 atomically:0];
    }

    v17 = v8;
  }

  else
  {
    v17 = 0;
  }

  CFRelease(v10);
  v18 = !v11;
  if (a5)
  {
LABEL_10:
    if (v18 && !*a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];
    }
  }

LABEL_13:

  return v17;
}

- (id)createArchivedModelData
{
  v3 = objc_alloc_init(MUImageWriter);
  v4 = [(MarkupViewController *)self annotationController];
  v5 = [(MUImageWriter *)v3 encodedModelFromAnnotationsController:v4 encrypt:0];

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

- (void)cancel:(id)a3
{
  v4 = a3;
  v5 = [(MarkupViewController *)self annotationController];
  v6 = [v5 validateUndo:0];

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
    v16 = [v7 popoverPresentationController];
    [v16 setPermittedArrowDirections:1];

    v17 = [v7 popoverPresentationController];
    [v17 setBarButtonItem:v4];

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
    v4 = [(MarkupViewController *)self _remoteViewControllerProxy];
    [v4 serviceDidFinishwithResults:0 andSandboxExtension:0];
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    v3 = [(MarkupViewController *)self extensionContext];
    [v3 cancelRequestWithError:v4];

    [(MarkupViewController *)self documentDidCloseTeardown];
  }
}

- (BOOL)validateRedo:(id)a3
{
  v4 = a3;
  v5 = [(MarkupViewController *)self annotationController];
  v6 = [v5 validateRedo:v4];

  return v6;
}

- (BOOL)validateUndo:(id)a3
{
  v4 = a3;
  v5 = [(MarkupViewController *)self annotationController];
  v6 = [v5 validateUndo:v4];

  return v6;
}

- (void)undo:(id)a3
{
  v4 = a3;
  v5 = [(MarkupViewController *)self annotationController];
  [v5 undo:v4];
}

- (void)redo:(id)a3
{
  v4 = a3;
  v5 = [(MarkupViewController *)self annotationController];
  [v5 redo:v4];
}

- (void)revert
{
  v3 = [(MarkupViewController *)self undoManager];
  v4 = [v3 canUndo];

  if (v4)
  {
    do
    {
      v5 = [(MarkupViewController *)self undoManager];
      [v5 undo];

      v6 = [(MarkupViewController *)self undoManager];
      v7 = [v6 canUndo];
    }

    while ((v7 & 1) != 0);
  }

  v8 = [(MarkupViewController *)self undoManager];
  [v8 removeAllActions];
}

- (BOOL)_writeToDataConsumer:(CGDataConsumer *)a3 embedSourceImageAndEditModel:(BOOL)a4 options:(id)a5 error:(id *)a6
{
  v7 = a4;
  v10 = a5;
  v11 = [(MarkupViewController *)self undoManager];
  if ([v11 canUndo])
  {
    alreadyLoggedSavingForThisDocument = self->_alreadyLoggedSavingForThisDocument;

    if (!alreadyLoggedSavingForThisDocument)
    {
      v13 = [(MarkupViewController *)self sourceContentType];
      v14 = [(MarkupViewController *)self hostProcessBundleIdentifier];
      [MUStatistics logFileTypeSaved:v13 byProcess:v14];

      [(MarkupViewController *)self setAlreadyLoggedSavingForThisDocument:1];
    }
  }

  else
  {
  }

  v15 = [(MarkupViewController *)self annotationController];
  [v15 endLogging];

  v16 = [(MarkupViewController *)self outputContentType];
  if ([v16 conformsToType:*MEMORY[0x277CE1DB0]])
  {
    v17 = objc_alloc_init(MUImageWriter);
    v18 = [(MarkupViewController *)self digestedSourceContent];
    v19 = [(MarkupViewController *)self annotationController];
    v20 = [v16 identifier];
    v21 = [(MUImageWriter *)v17 writeUsingBaseImage:v18 withAnnotationsFromController:v19 asImageOfType:v20 toConsumer:a3 embedSourceImageAndAnnotationsAsMetadata:v7 encryptPrivateMetadata:[(MarkupViewController *)self encryptPrivateMetadata] error:a6];
  }

  else if ([v16 conformsToType:*MEMORY[0x277CE1E08]])
  {
    v22 = [(MarkupViewController *)self digestedSourceContent];
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v23 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CD9458]];
    if (v10 && [v10 count])
    {
      [v23 addEntriesFromDictionary:v10];
    }

    v24 = [v23 copy];
    v21 = [v22 writeToConsumer:a3 withOptions:v24];
  }

  else
  {
    NSLog(&cfstr_SUnexpectedOut.isa, "[MarkupViewController _writeToDataConsumer:embedSourceImageAndEditModel:options:error:]", v16);
    if (a6)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:518 userInfo:0];
      *a6 = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (void)_updateAndLoadSourceContent:(id)a3 withArchivedModelData:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  kdebug_trace();
  [(MarkupViewController *)self willBeginLoadingNewDocument];
  [(MarkupViewController *)self setSourceContent:v10 withArchivedModelData:v9];

  v11 = [(MarkupViewController *)self sourceContentType];

  if (v11)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __89__MarkupViewController__updateAndLoadSourceContent_withArchivedModelData_withCompletion___block_invoke;
    v12[3] = &unk_27986E4C8;
    v12[4] = self;
    v13 = v8;
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

- (void)_loadSourceContentWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MarkupViewController *)self sourceContent];

  if (v5)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__MarkupViewController__loadSourceContentWithCompletion___block_invoke;
    block[3] = &unk_27986E318;
    objc_copyWeak(&v26, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    v6 = [(MarkupViewController *)self sourceContentType];
    [(MarkupViewController *)self _installContentViewControllerForUTI:v6];

    v7 = MEMORY[0x277CE1CB8];
    v8 = [(MarkupViewController *)self sourceContentType];
    v9 = [v7 typeWithIdentifier:v8];

    if ([v9 conformsToType:*MEMORY[0x277CE1E08]])
    {
      v10 = [(MarkupViewController *)self contentViewController];
      [v10 setForcesPDFViewTopAlignment:{-[MarkupViewController forcesPDFViewTopAlignment](self, "forcesPDFViewTopAlignment")}];

      v11 = [(MarkupViewController *)self contentViewController];
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __57__MarkupViewController__loadSourceContentWithCompletion___block_invoke_2;
      v22 = &unk_27986E4C8;
      v23 = self;
      v24 = v4;
      [v11 loadContentWithCompletionBlock:&v19];
    }

    else if ([v9 conformsToType:*MEMORY[0x277CE1DB0]])
    {
      v12 = [(MarkupViewController *)self contentViewController];
      if (v9)
      {
        v13 = +[MUImageWriter outputTypesSupportingHDR];
        v14 = [v9 identifier];
        v15 = [v13 containsObject:v14];

        if (v15)
        {
          [v12 enableHDRAnnotations];
        }
      }

      [(MarkupViewController *)self _setupAnnotationController];
      v16 = [(MarkupViewController *)self placeholderImage];
      [v12 setTentativePlaceholderImage:v16];

      v17 = [(MarkupViewController *)self contentViewController];
      [v17 loadContentWithCompletionBlock:v4];
    }

    [(MarkupViewController *)self setAllEditingDisabled:0, v19, v20, v21, v22, v23];
    [(MarkupViewController *)self setAnnotationEditingEnabled:1];
    [(MarkupViewController *)self setFormFillingEnabled:0];
    [(MarkupViewController *)self _startObservingAnnotationController];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  v18 = [(MarkupViewController *)self contentViewController];
  [(MarkupViewController *)self _updateundoBarButtonWithController:v18];
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
  v2 = [(MarkupViewController *)self annotationController];
  v3 = [v2 allEditingDisabled];

  return v3;
}

- (void)setAllEditingDisabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(MarkupViewController *)self annotationController];
  [v4 setAllEditingDisabled:v3];
}

- (void)setAnnotationEditingEnabled:(BOOL)a3
{
  v3 = a3;
  v6 = [(MarkupViewController *)self annotationController];
  if ([v6 annotationEditingEnabled] != v3)
  {
    [v6 setAnnotationEditingEnabled:v3];
    if (v3)
    {
      [(MarkupViewController *)self restoreToolModeForContentType];
    }

    else
    {
      v5 = [v6 modelController];
      [v5 deselectAllAnnotations];

      [v6 resetToDefaultToolMode];
    }
  }
}

- (void)setFormFillingEnabled:(BOOL)a3 didUseBanner:(BOOL)a4
{
  v4 = a3;
  v6 = [(MarkupViewController *)self _pdfView:a3];
  if (v6)
  {
    v10 = v6;
    v7 = [v6 isInFormFillingMode] == v4;
    v6 = v10;
    if (!v7)
    {
      [v10 setInFormFillingMode:v4];
      v6 = v10;
      if (!v4)
      {
        v8 = [(MarkupViewController *)self annotationController];
        v9 = [v8 modelController];
        [v9 deselectAllAnnotations];

        v6 = v10;
      }
    }
  }
}

- (void)restoreToolModeForContentType
{
  v6 = [(MarkupViewController *)self annotationController];
  if (-[MarkupViewController annotationEditingEnabled](self, "annotationEditingEnabled") && (-[MarkupViewController contentViewController](self, "contentViewController"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 defaultToolTag], v3, v4 != 763000))
  {
    v5 = objc_opt_new();
    [v5 setTag:v4];
    [v6 performActionForSender:v5];
    if ([v6 toolMode] != 4)
    {
      [v6 performActionForSender:v5];
    }
  }

  else
  {
    [v6 resetToDefaultToolMode];
  }
}

- (BOOL)annotationEditingEnabled
{
  v2 = [(MarkupViewController *)self annotationController];
  v3 = [v2 annotationEditingEnabled];

  return v3;
}

- (BOOL)formFillingEnabled
{
  v2 = [(MarkupViewController *)self annotationController];
  v3 = [v2 formFillingEnabled];

  return v3;
}

- (void)setPencilAlwaysDraws:(BOOL)a3
{
  self->_pencilAlwaysDraws = [MEMORY[0x277CEA698] canConnectToStylus] & a3;
  v4 = [(MarkupViewController *)self annotationController];
  pencilAlwaysDraws = self->_pencilAlwaysDraws;
  v6 = v4;
  if (pencilAlwaysDraws != [v4 pencilAlwaysDraws])
  {
    [v6 setPencilAlwaysDraws:self->_pencilAlwaysDraws];
  }
}

- (BOOL)pencilAlwaysDraws
{
  v3 = [(MarkupViewController *)self annotationController];
  pencilAlwaysDraws = self->_pencilAlwaysDraws;
  if (pencilAlwaysDraws != [v3 pencilAlwaysDraws])
  {
    NSLog(&cfstr_TheAkcontrolle.isa);
  }

  v5 = self->_pencilAlwaysDraws;

  return v5;
}

- (void)_saveEditing:(id)a3
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = [(MarkupViewController *)self extensionContext];

  if (v4)
  {
    v5 = [(MarkupViewController *)self outputContentType];
    v6 = +[MUImageDownsamplingUtilities _uniqueTemporaryDirectory];
    v7 = [(MarkupViewController *)self preferredFileDisplayName];
    v8 = [v5 preferredFilenameExtension];
    if (v8)
    {
      v9 = [v7 stringByAppendingPathExtension:v8];

      v7 = v9;
    }

    else
    {
      NSLog(&cfstr_SNoPreferredFi.isa, "[MarkupViewController _saveEditing:]");
    }

    v10 = [v6 URLByAppendingPathComponent:v7];
    v11 = [v10 filePathURL];

    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v36 = 0;
    [v12 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v36];
    v13 = v36;

    if (v13)
    {
      NSLog(&cfstr_FailedToCreate_1.isa, v13);
    }

    v35 = 0;
    [(MarkupViewController *)self writeToURL:v11 error:&v35];
    v14 = v35;
    v15 = v14;
    if (v14)
    {
      NSLog(&cfstr_FailedToWriteF.isa, v14);
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];
      v17 = [(MarkupViewController *)self extensionContext];
      [v17 cancelRequestWithError:v16];

      [(MarkupViewController *)self documentDidCloseTeardown];
    }

    else
    {
      v30 = v5;
      v18 = objc_alloc_init(MEMORY[0x277CCAA88]);
      v19 = [*MEMORY[0x277CE1D70] identifier];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __37__MarkupViewController__saveEditing___block_invoke;
      v33[3] = &unk_27986E6A8;
      v31 = v11;
      v34 = v31;
      [v18 registerItemForTypeIdentifier:v19 loadHandler:v33];

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
        v28 = [(MarkupViewController *)self _remoteViewControllerProxy];
        v23 = [v31 path];
        [v23 UTF8String];

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

        v5 = v30;
        [v28 serviceDidFinishwithResults:v31 andSandboxExtension:v26];
      }

      else
      {
        v27 = [(MarkupViewController *)self extensionContext];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __37__MarkupViewController__saveEditing___block_invoke_2;
        v32[3] = &unk_27986E6D0;
        v32[4] = self;
        [v27 completeRequestReturningItems:v16 completionHandler:v32];

        v5 = v30;
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

- (void)setSourceContent:(id)a3 withArchivedModelData:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_sourceContent == v7)
  {
    goto LABEL_70;
  }

  objc_storeStrong(&self->_sourceContent, a3);
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
        if (v7)
        {
          NSLog(&cfstr_SUnsupportedSo.isa, "[MarkupViewController setSourceContent:withArchivedModelData:]", v7);
        }

        goto LABEL_67;
      }
    }

    v18 = 0x27986D000uLL;
    v15 = [MUImageDownsamplingUtilities _sourceContentType:v7];
    if (!v15)
    {
      NSLog(&cfstr_SFailedToGetCo.isa, "[MarkupViewController setSourceContent:withArchivedModelData:]", v7);
      goto LABEL_66;
    }

    v19 = objc_alloc_init(MEMORY[0x277CCAD90]);
    [(MarkupViewController *)self setAkUndoManager:v19];

    v20 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v15];
    if ([v20 conformsToType:*MEMORY[0x277CE1E08]])
    {
      v21 = [(MarkupViewController *)self sourceContent];
      v22 = objc_opt_self();
      v23 = objc_opt_isKindOfClass();

      if (v23)
      {
        v24 = objc_alloc(MEMORY[0x277CD93D0]);
        v25 = [(MarkupViewController *)self sourceContent];
        v26 = [v24 initWithURL:v25];
      }

      else
      {
        v30 = [(MarkupViewController *)self sourceContent];
        v31 = objc_opt_self();
        v32 = objc_opt_isKindOfClass();

        if ((v32 & 1) == 0)
        {
          goto LABEL_62;
        }

        v33 = objc_alloc(MEMORY[0x277CD93D0]);
        v25 = [(MarkupViewController *)self sourceContent];
        v26 = [v33 initWithData:v25];
      }

      v29 = v26;

      if (v29)
      {
        [(MarkupViewController *)self setDigestedSourceContent:v29];
        [(MarkupViewController *)self setSourceContentType:v15];
LABEL_61:
      }

LABEL_62:
      v50 = [(MarkupViewController *)self sourceContentType];

      if (v50)
      {
        v51 = [*(v18 + 2976) _preferredFileDisplayNameForSourceContent:v7];
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
    [MUImageDownsamplingUtilities _shouldFlattenEXIFOrientation:&v58 + 1 andDownsample:&v58 sourceContent:v7];
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

    v34 = [(MarkupViewController *)self outputContentType];
    v29 = [MUImageDownsamplingUtilities _flattenEXIFOrientation:v27 withDownsampling:v28 & 1 sourceContent:v7 withContentType:v34];

    v18 = 0x27986D000uLL;
    if (v29 || ([MUImageDownsamplingUtilities _flattenEXIFOrientation:HIBYTE(v58) withDownsampling:v58 sourceContent:v7 withContentType:*MEMORY[0x277CE1DC0]], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      objc_storeStrong(&self->_sourceContent, v29);
      v29 = v29;

      [(MarkupViewController *)self _cleanupPlaceholderImage];
      v7 = v29;
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
      v36 = [(MarkupViewController *)self sourceContent];
      v37 = objc_opt_self();
      v38 = objc_opt_isKindOfClass();

      v39 = [(MarkupViewController *)self sourceContent];
      if (v38)
      {
        [(MUImageReader *)v35 readBaseImageFromData:v39 baseWasValid:&v57];
      }

      else
      {
        [(MUImageReader *)v35 readBaseImageFromImageAtURL:v39 baseWasValid:&v57];
      }
      v40 = ;

      v29 = v55;
      if (v40)
      {
        if (v57 == 1)
        {
          v42 = [(MarkupViewController *)self sourceContent];
          v43 = objc_opt_self();
          v54 = objc_opt_isKindOfClass();

          v44 = [(MarkupViewController *)self sourceContent];
          if (v54)
          {
            [(MUImageReader *)v35 readArchivedModelDataFromImageData:v44];
          }

          else
          {
            [(MUImageReader *)v35 readArchivedModelDataFromImageURL:v44];
          }
          v45 = ;

          v29 = v55;
        }

        else
        {
          v45 = 0;
        }

        [(MarkupViewController *)self setDigestedSourceContent:v40];
        goto LABEL_54;
      }
    }

    else
    {
      v40 = [(MarkupViewController *)self sourceContent];
      [(MarkupViewController *)self setDigestedSourceContent:v40];
    }

    v45 = 0;
LABEL_54:

    if (v8 && !v45)
    {
      v45 = v8;
    }

    [(MarkupViewController *)self setArchivedModelData:v45];
    [(MarkupViewController *)self setSourceContentType:v15];
    v46 = [(MarkupViewController *)self originalImageDescription];

    if (!v46)
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

  v9 = [*MEMORY[0x277CE1DC0] identifier];
  [(MarkupViewController *)self setSourceContentType:v9];

  v10 = [(MarkupViewController *)self sourceContent];
  [(MarkupViewController *)self setDigestedSourceContent:v10];

  v59 = 0;
  [MUImageDownsamplingUtilities _shouldFlattenEXIFOrientation:&v59 + 1 andDownsample:&v59 sourceContent:v7];
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
        v14 = [(MarkupViewController *)self sourceContent];
        [(MarkupViewController *)self setDigestedSourceContent:v14];

        [(MarkupViewController *)self _cleanupPlaceholderImage];
        v7 = v13;
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
    v52 = [(MarkupViewController *)self sourceContentType];

    if (!v52)
    {
      NSLog(&cfstr_SClearingSourc.isa, "[MarkupViewController setSourceContent:withArchivedModelData:]");
      sourceContent = self->_sourceContent;
      self->_sourceContent = 0;

      [(MarkupViewController *)self setDigestedSourceContent:0];
    }
  }

LABEL_70:
}

- (void)setPreferredFileDisplayName:(id)a3
{
  v6 = [a3 copy];
  v4 = [v6 stringByDeletingPathExtension];
  preferredFileDisplayName = self->_preferredFileDisplayName;
  self->_preferredFileDisplayName = v4;
}

- (id)_pdfView
{
  v3 = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(MarkupViewController *)self contentViewController];
    v6 = [v5 pdfView];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_pdfDocument
{
  v3 = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(MarkupViewController *)self contentViewController];
    v6 = [v5 pdfDocument];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)thumbnailViewStyle
{
  v3 = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(MarkupViewController *)self contentViewController];
  v6 = [v5 thumbnailViewStyle];

  return v6;
}

- (void)setThumbnailViewStyle:(int64_t)a3
{
  v5 = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(MarkupViewController *)self contentViewController];
    [v7 setThumbnailViewStyle:a3];
  }
}

- (BOOL)allowsThumbnailViewPageReordering
{
  v3 = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(MarkupViewController *)self contentViewController];
  v6 = [v5 allowsThumbnailViewPageReordering];

  return v6;
}

- (void)setAllowsThumbnailViewPageReordering:(BOOL)a3
{
  v3 = a3;
  v5 = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(MarkupViewController *)self contentViewController];
    [v7 setAllowsThumbnailViewPageReordering:v3];
  }
}

- (UIScrollView)contentViewScrollView
{
  v2 = [(MarkupViewController *)self contentViewController];
  v3 = [v2 contentViewScrollView];

  return v3;
}

- (UIView)imageViewCombinedContentView
{
  v2 = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 combinedContentView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)currentPDFPageIndex
{
  v3 = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(MarkupViewController *)self annotationController];
  v6 = [v5 currentPageIndex];

  return v6;
}

- (void)setCurrentPDFPageIndex:(unint64_t)a3
{
  v5 = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [(MarkupViewController *)self contentViewController];
    v7 = [v11 pdfView];
    v8 = [v7 document];
    v9 = v8;
    if (v7 && v8)
    {
      v10 = [v8 pageAtIndex:a3];
      if (v10)
      {
        [v7 goToPage:v10];
      }
    }
  }
}

- (void)setShapeDetectionEnabled:(BOOL)a3
{
  if (self->_shapeDetectionEnabled != a3)
  {
    v4 = a3;
    self->_shapeDetectionEnabled = a3;
    v5 = [(MarkupViewController *)self annotationController];
    [v5 setShapeDetectionEnabled:v4];
  }
}

- (void)setForcesPDFViewTopAlignment:(BOOL)a3
{
  self->_forcesPDFViewTopAlignment = a3;
  v4 = [(MarkupViewController *)self contentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(MarkupViewController *)self contentViewController];
    [v6 setForcesPDFViewTopAlignment:{-[MarkupViewController forcesPDFViewTopAlignment](self, "forcesPDFViewTopAlignment")}];
  }
}

- (void)setShowShareButtonInToolbar:(BOOL)a3
{
  v3 = a3;
  self->_showShareButtonInToolbar = a3;
  v5 = [(MarkupViewController *)self annotationController];
  v4 = [v5 modernToolbarView];
  [v4 setShareButtonHidden:!v3];
}

- (AKController)annotationController
{
  v2 = [(MarkupViewController *)self contentViewController];
  v3 = [v2 annotationController];

  return v3;
}

+ (double)_maxImageDimensionInView
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  if (v4 < v6)
  {
    v4 = v6;
  }

  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 nativeScale];
  v9 = v4 * floor(v8);

  return fmax(v9, 1500.0);
}

- (void)_setupInitialBaseModelScaleFactorWithScreenSize:(CGSize)a3 windowDecorationSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  v9 = [(MarkupViewController *)self contentViewController];
  [v9 idealContentSizeForScreenSize:v7 windowDecorationSize:{v6, width, height}];
  v11 = v10;

  v12 = [(MarkupViewController *)self contentViewController];
  [v12 contentSize];
  v14 = v13;

  [(MarkupViewController *)self setInitialContentScale:v14 / v11];
}

- (BOOL)_shouldShowUndoRedoButtonsInNavigationBar
{
  v3 = [(MarkupViewController *)self traitCollection];
  if ([v3 horizontalSizeClass] == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(MarkupViewController *)self traitCollection];
    v4 = [v5 userInterfaceIdiom] == 0;
  }

  return v4;
}

- (void)_updateundoBarButtonWithController:(id)a3
{
  v18 = a3;
  v4 = [(MarkupViewController *)self extensionContext];
  if (objc_opt_respondsToSelector())
  {
    if ([(MarkupViewController *)self _shouldShowUndoRedoButtonsInNavigationBar])
    {
      v5 = [(MarkupViewController *)self undoManager];
    }

    else
    {
      v5 = 0;
    }

    [v4 setUndoManagerForBarButtons:v5];
  }

  v6 = [(MarkupViewController *)self navItem];

  if (v6)
  {
    v7 = [(MarkupViewController *)self navItem];
  }

  else
  {
    v8 = [(MarkupViewController *)self navigationItem];

    if (!v8)
    {
LABEL_18:
      v9 = 0;
      goto LABEL_27;
    }

    v7 = [(MarkupViewController *)self navigationItem];
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_18;
  }

  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [v8 rightBarButtonItems];

  if (v10)
  {
    v11 = [v8 rightBarButtonItems];
    [v9 addObjectsFromArray:v11];
  }

  if (v18)
  {
    v12 = [v18 annotationController];
    v13 = [v12 toolbarButtonItemOfType:10];

    v14 = [v18 annotationController];
    v15 = [v14 toolbarButtonItemOfType:11];

    if ([(MarkupViewController *)self _useLegacyToolbar])
    {
      if (v13 && ([v9 containsObject:v13] & 1) == 0)
      {
        [v9 addObject:v13];
      }

      goto LABEL_26;
    }

    v16 = [(MarkupViewController *)self toolbar];
    v17 = [(MarkupViewController *)self _shouldShowUndoRedoButtonsInNavigationBar];
    if (v17)
    {
      if (!v13 || !v15)
      {
        goto LABEL_25;
      }

      [v9 removeObjectIdenticalTo:v13];
      [v9 removeObjectIdenticalTo:v15];
      [v9 addObject:v15];
      [v9 addObject:v13];
    }

    else
    {
      [v9 removeObject:v13];
      [v9 removeObject:v15];
    }

    [v16 setUndoRedoButtonsHidden:v17];
LABEL_25:

LABEL_26:
  }

LABEL_27:
  [v8 setRightBarButtonItems:v9];
}

- (void)_presentPlaceholderImage
{
  v3 = [(MarkupViewController *)self placeholderImage];

  if (v3)
  {
    v4 = [(MarkupViewController *)self contentViewController];
    v5 = [(MarkupViewController *)self view];
    [v4 visibleContentRectInCoordinateSpace:v5];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [(MarkupViewController *)self placeholderImageView];
    [v14 setFrame:{v7, v9, v11, v13}];

    v15 = [(MarkupViewController *)self placeholderImage];
    v16 = [(MarkupViewController *)self placeholderImageView];
    [v16 setImage:v15];

    v17 = [(MarkupViewController *)self annotationController];
    v24 = [v17 toolbarView];

    v18 = [v24 superview];
    v19 = [(MarkupViewController *)self view];

    v20 = [(MarkupViewController *)self view];
    v21 = [(MarkupViewController *)self placeholderImageView];
    if (v18 == v19)
    {
      v22 = [(MarkupViewController *)self annotationController];
      v23 = [v22 toolbarView];
      [v20 insertSubview:v21 belowSubview:v23];
    }

    else
    {
      [v20 addSubview:v21];
    }
  }
}

- (void)_cleanupPlaceholderImage
{
  v3 = [(MarkupViewController *)self placeholderImageView];
  [v3 removeFromSuperview];

  [(MarkupViewController *)self setPlaceholderImageView:0];

  [(MarkupViewController *)self setPlaceholderImage:0];
}

- (void)_startObservingAnnotationController
{
  v3 = [(MarkupViewController *)self annotationController];
  if (v3)
  {
    v4 = v3;
    v5 = [(MarkupViewController *)self isObservingAKCurrentPageIndex];

    if (!v5)
    {
      [(MarkupViewController *)self setObservingAKCurrentPageIndex:1];
      v6 = [(MarkupViewController *)self annotationController];
      [v6 addObserver:self forKeyPath:@"currentPageIndex" options:11 context:@"MUVCcurrentPageObservationContext"];
    }
  }
}

- (void)_stopObservingAnnotationController
{
  v3 = [(MarkupViewController *)self annotationController];
  if (v3)
  {
    v4 = v3;
    v5 = [(MarkupViewController *)self isObservingAKCurrentPageIndex];

    if (v5)
    {
      [(MarkupViewController *)self setObservingAKCurrentPageIndex:0];
      v6 = [(MarkupViewController *)self annotationController];
      [v6 removeObserver:self forKeyPath:@"currentPageIndex" context:@"MUVCcurrentPageObservationContext"];
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  v11 = v10;
  if (a6 == @"MUVCcurrentPageObservationContext")
  {
    v12 = [v10 objectForKey:*MEMORY[0x277CCA2F8]];
    v13 = [v12 BOOLValue];

    if (v13)
    {
      [(MarkupViewController *)self willChangeValueForKey:@"currentPDFPageIndex"];
      goto LABEL_16;
    }

    [(MarkupViewController *)self didChangeValueForKey:@"currentPDFPageIndex"];
    v14 = [(MarkupViewController *)self delegate];
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
      v20 = [v18 unsignedIntegerValue];
      if (v17)
      {
LABEL_9:
        v21 = [v17 unsignedIntegerValue];
LABEL_12:
        if (v20 != v21)
        {
          [v14 controller:self didChangeToPDFPageIndex:?];
        }

        goto LABEL_15;
      }
    }

    else
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
      if (v17)
      {
        goto LABEL_9;
      }
    }

    v21 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_12;
  }

  v22.receiver = self;
  v22.super_class = MarkupViewController;
  [(MarkupViewController *)&v22 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
LABEL_16:
}

- (void)_installContentViewControllerForUTI:(id)a3
{
  v23 = a3;
  v4 = [(MarkupViewController *)self contentContainerView];

  if (!v4)
  {
    v5 = [(MarkupViewController *)self view];
    [(MarkupViewController *)self setContentContainerView:v5];
  }

  if (v23)
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
      v10 = [(MarkupViewController *)self digestedSourceContent];
      v11 = [(MarkupViewController *)self archivedModelData];
      v8 = [(MUImageContentViewController *)v9 initWithSourceContent:v10 archivedDataModel:v11 delegate:self];

      [(MUPDFContentViewController *)v8 setInkStyle:[(MarkupViewController *)self inkStyle]];
      if (v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      NSLog(&cfstr_SUnexpectedCon.isa, "[MarkupViewController _installContentViewControllerForUTI:]", v23);
    }

LABEL_23:
    NSLog(&cfstr_FailedToLoadFi.isa, v23);
    goto LABEL_24;
  }

  v7 = [(MarkupViewController *)self digestedSourceContent];
  v8 = [[MUPDFContentViewController alloc] initWithPDFDocument:v7 delegate:self];
  [(MUPDFContentViewController *)v8 setInkStyle:[(MarkupViewController *)self inkStyle]];

  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_11:
  [(MarkupViewController *)self setContentViewController:v8];
  v12 = [(MarkupViewController *)self contentViewController];
  [(MarkupViewController *)self addChildViewController:v12];

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

  v13 = [(MarkupViewController *)self contentViewController];
  v14 = [v13 view];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [(MarkupViewController *)self _effectiveBackgroundColor];
  [v14 setBackgroundColor:v15];

  v16 = [(MarkupViewController *)self contentContainerView];
  [v16 insertSubview:v14 atIndex:0];

  if ([(MarkupViewController *)self useFancyTransition])
  {
    [v14 setAlpha:0.0];
  }

  v17 = [(MarkupViewController *)self contentViewController];
  [v17 didMoveToParentViewController:self];

  v18 = _NSDictionaryOfVariableBindings(&cfstr_Contentview.isa, v14, 0);
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
  v3 = [(MarkupViewController *)self annotationController];
  v41 = v3;
  if (v3)
  {
    v4 = [v3 legacyDoodleController];
    [v4 setPreferDoodle:1];

    v5 = [v41 legacyDoodleController];
    [v5 setCoalescesDoodles:1];

    [v41 setSelectNewlyCreatedAnnotations:1];
    [v41 setShapeDetectionEnabled:{-[MarkupViewController isShapeDetectionEnabled](self, "isShapeDetectionEnabled")}];
    [v41 setIsUsedOnDarkBackground:{-[MarkupViewController isUsedOnDarkBackground](self, "isUsedOnDarkBackground")}];
    v6 = [v41 attributeController];
    v7 = [MEMORY[0x277D75348] whiteColor];
    v8 = [v6 strokeColorIsEqualTo:v7];

    if (v8)
    {
      v9 = [v41 attributeController];
      [v9 restoreStrokeColorToSystemDefault];
    }

    if ([(MarkupViewController *)self _useLegacyToolbar])
    {
      v10 = [v41 toolbarViewController];
      [(MarkupViewController *)self addChildViewController:v10];
      v11 = [v10 view];
      [v11 setDelegate:self];

      [v10 beginAppearanceTransition:1 animated:0];
      v12 = [(MarkupViewController *)self contentContainerView];
      v13 = [v10 view];
      [v12 addSubview:v13];

      [v10 didMoveToParentViewController:self];
      [v10 endAppearanceTransition];
      v14 = [v41 toolbarView];
      [(MarkupViewController *)self setToolbar:v14];

      v15 = [(MarkupViewController *)self isToolbarHidden];
      v16 = [(MarkupViewController *)self toolbar];
      [v16 setHidden:v15];

      v17 = [(MarkupViewController *)self toolbar];
      [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

      v18 = [(MarkupViewController *)self _effectiveToolbarTintColor];
      [v10 setBarTintColor:v18];

      v19 = [(MarkupViewController *)self _effectiveToolbarItemTintColor];
      [v10 setTintColor:v19];

      if ([(MarkupViewController *)self useFancyTransition])
      {
        v20 = [(MarkupViewController *)self toolbar];
        [v20 setAlpha:0.0];

        v21 = [v10 floatingAttributeToolbarContainer];
        [v21 setAlpha:0.0];
      }

      v22 = [(MarkupViewController *)self toolbar];
      v23 = [v22 leadingAnchor];
      v24 = [(MarkupViewController *)self contentContainerView];
      v25 = [v24 leadingAnchor];
      v26 = [v23 constraintEqualToAnchor:v25];
      [v26 setActive:1];

      v27 = [(MarkupViewController *)self toolbar];
      v28 = [v27 trailingAnchor];
      v29 = [(MarkupViewController *)self contentContainerView];
      v30 = [v29 trailingAnchor];
      v31 = [v28 constraintEqualToAnchor:v30];
      [v31 setActive:1];

      v32 = [(MarkupViewController *)self toolbar];
      LODWORD(v33) = 1148846080;
      [v32 setContentHuggingPriority:1 forAxis:v33];

      [(MarkupViewController *)self _updateConstraintsForBarPosition:self->_toolbarPosition];
    }

    else
    {
      v34 = [(MarkupViewController *)self modernToolbar];
      [v34 setAnnotationController:v41];

      LODWORD(v34) = [(MarkupViewController *)self showShareButtonInToolbar];
      v35 = [(MarkupViewController *)self modernToolbar];
      [v35 setShareButtonHidden:v34 ^ 1];

      v10 = [(MarkupViewController *)self modernToolbar];
      [(MarkupViewController *)self setToolbar:v10];
    }

    [v41 setRulerHostingDelegate:self];
    [(MarkupViewController *)self adjustContentInsetsForBars];
    if ([(MarkupViewController *)self needsToolPickerVisibleWhenAnnotationControllerIsAvailable])
    {
      v36 = [(MarkupViewController *)self annotationController];
      v37 = [v36 toolPicker];
      [v37 setVisible:1 forFirstResponder:self];

      [(AKToolbarView *)self->_modernToolbar setContentsHidden:0];
      [(MarkupViewController *)self setNeedsToolPickerVisibleWhenAnnotationControllerIsAvailable:0];
    }

    v38 = [(MarkupViewController *)self contentViewController];
    v39 = [v38 view];
    [v39 layoutSubviews];

    v40 = [(MarkupViewController *)self view];
    [v40 layoutSubviews];
  }

  else
  {
    NSLog(&cfstr_FailedToLoadAk.isa);
  }
}

- (void)_createCancelDoneNavBar
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = [(MarkupViewController *)self navBar];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75780]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setDelegate:self];
    v6 = [(MarkupViewController *)self contentContainerView];
    [v6 addSubview:v5];

    [(MarkupViewController *)self setNavBar:v5];
    [(MarkupViewController *)self _updateNavBarProperties];
    if ([(MarkupViewController *)self useFancyTransition])
    {
      v7 = [(MarkupViewController *)self navBar];
      [v7 setAlpha:0.0];
    }

    v8 = _NSDictionaryOfVariableBindings(&cfstr_Navbar.isa, v5, 0);
    v9 = [(MarkupViewController *)self contentContainerView];
    v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[navBar]|" options:0 metrics:0 views:v8];
    [v9 addConstraints:v10];

    if ([(MarkupViewController *)self showAsFormSheet]&& [(MarkupViewController *)self useFancyTransition])
    {
      v11 = MEMORY[0x277CCAAD0];
      v12 = [(MarkupViewController *)self contentContainerView];
      v13 = [v11 constraintWithItem:v5 attribute:3 relatedBy:0 toItem:v12 attribute:3 multiplier:1.0 constant:0.0];
    }

    else
    {
      v12 = [v5 topAnchor];
      v14 = [(MarkupViewController *)self view];
      v15 = [v14 safeAreaLayoutGuide];
      v16 = [v15 topAnchor];
      v13 = [v12 constraintEqualToAnchor:v16];
    }

    [v13 setActive:1];
    v17 = objc_alloc(MEMORY[0x277D757A8]);
    v18 = [(MarkupViewController *)self title];
    v19 = [v17 initWithTitle:v18];
    [(MarkupViewController *)self setNavItem:v19];

    v20 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
    [(MarkupViewController *)self setCancelButton:v20];

    v21 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
    [(MarkupViewController *)self setDoneButton:v21];

    v22 = [(MarkupViewController *)self navItem];
    v23 = [(MarkupViewController *)self cancelButton];
    v30[0] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    [v22 setLeftBarButtonItems:v24];

    v25 = [(MarkupViewController *)self navItem];
    v26 = [(MarkupViewController *)self doneButton];
    [v25 setRightBarButtonItem:v26];

    v27 = [(MarkupViewController *)self navItem];
    v29 = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    [v5 setItems:v28];
  }
}

- (void)adjustContentInsetsForBars
{
  v44 = [(MarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v44 customEdgeInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    if (![(MarkupViewController *)self _useLegacyToolbar])
    {
      goto LABEL_17;
    }

    v11 = [(MarkupViewController *)self annotationController];
    v12 = [v11 toolbarViewController];
    [v12 visibleHeightOfAttributeBar];
    v8 = v8 + v13;
    goto LABEL_10;
  }

  v14 = MEMORY[0x277D768C8];
  v6 = *(MEMORY[0x277D768C8] + 8);
  v10 = *(MEMORY[0x277D768C8] + 24);
  v15 = [(MarkupViewController *)self navBar];

  if (v15)
  {
    if (![(MarkupViewController *)self showAsFormSheet]|| (v16 = 0.0, ![(MarkupViewController *)self useFancyTransition]))
    {
      v17 = [(MarkupViewController *)self view];
      [v17 safeAreaInsets];
      v16 = v18;
    }

    v19 = [(MarkupViewController *)self navBar];
    [v19 frame];
    v4 = v16 + v20;

    if ([(MarkupViewController *)self _useLegacyToolbar])
    {
      v11 = [(MarkupViewController *)self annotationController];
      v12 = [v11 toolbarViewController];
      [v12 heightIncludingAdditionalVisibleBars];
      v8 = v21;
LABEL_10:

      goto LABEL_17;
    }

    v36 = [(MarkupViewController *)self modernToolbar];
    v37 = [(MarkupViewController *)self view];
    [v37 bounds];
    [v36 sizeThatFits:{CGRectGetWidth(v46), 1000.0}];

    v8 = 0.0;
  }

  else
  {
    v22 = *v14;
    v23 = v14[2];
    v24 = [(MarkupViewController *)self view];
    [v24 safeAreaInsets];
    v26 = v25;

    v4 = v22 + fmax(v26, 0.0);
    v27 = [(MarkupViewController *)self view];
    [v27 safeAreaInsets];
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
          v33 = [(MarkupViewController *)self toolbar];
          [v33 frame];
          v35 = v34;

          v4 = v4 + v35;
        }
      }

      else
      {
        if (![(MarkupViewController *)self _useLegacyToolbar])
        {
          v11 = [(MarkupViewController *)self modernToolbar];
          v12 = [(MarkupViewController *)self view];
          [v12 bounds];
          [v11 sizeThatFits:{CGRectGetWidth(v47), 1000.0}];
          v8 = v43;
          goto LABEL_10;
        }

        v39 = [(MarkupViewController *)self annotationController];
        v40 = [v39 toolbarViewController];
        [v40 heightIncludingAdditionalVisibleBars];
        v42 = v41;

        v8 = v8 + v42;
      }
    }
  }

LABEL_17:
  v38 = [(MarkupViewController *)self contentViewController];
  [v38 setEdgeInsets:{v4, v6, v8, v10}];
}

- (void)_updateConstraintsForBarPosition:(int64_t)a3
{
  v5 = [(MarkupViewController *)self toolbarTopConstraint];
  [v5 setActive:0];

  v6 = [(MarkupViewController *)self toolbarTopAttachedConstraint];
  [v6 setActive:0];

  v7 = [(MarkupViewController *)self toolbarBottomConstraint];
  [v7 setActive:0];

  if (a3 < 2)
  {
    v14 = [(MarkupViewController *)self toolbarBottomConstraint];

    if (!v14)
    {
      v15 = [(MarkupViewController *)self toolbar];
      v16 = [v15 bottomAnchor];
      v17 = [(MarkupViewController *)self view];
      v18 = [v17 bottomAnchor];
      v19 = [v16 constraintEqualToAnchor:v18];
      [(MarkupViewController *)self setToolbarBottomConstraint:v19];
    }

    v13 = [(MarkupViewController *)self toolbarBottomConstraint];
  }

  else if (a3 == 3)
  {
    v20 = [(MarkupViewController *)self toolbarTopAttachedConstraint];

    if (!v20)
    {
      v21 = [(MarkupViewController *)self toolbar];
      v22 = [v21 topAnchor];
      v23 = [(MarkupViewController *)self view];
      v24 = [v23 safeAreaLayoutGuide];
      v25 = [v24 topAnchor];
      v26 = [v22 constraintEqualToAnchor:v25];
      [(MarkupViewController *)self setToolbarTopAttachedConstraint:v26];
    }

    v13 = [(MarkupViewController *)self toolbarTopAttachedConstraint];
  }

  else
  {
    if (a3 != 2)
    {
      return;
    }

    v8 = [(MarkupViewController *)self toolbarTopConstraint];

    if (!v8)
    {
      v9 = MEMORY[0x277CCAAD0];
      v10 = [(MarkupViewController *)self toolbar];
      v11 = [(MarkupViewController *)self contentContainerView];
      v12 = [v9 constraintWithItem:v10 attribute:3 relatedBy:0 toItem:v11 attribute:3 multiplier:1.0 constant:0.0];
      [(MarkupViewController *)self setToolbarTopConstraint:v12];
    }

    v13 = [(MarkupViewController *)self toolbarTopConstraint];
  }

  v27 = v13;
  [v13 setActive:1];
}

- (void)_updateAppearanceForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(MarkupViewController *)self contentViewController];
  v6 = [v5 view];
  [v6 alpha];
  v8 = v7;

  if (v8 == 1.0)
  {
    v9 = [(MarkupViewController *)self _effectiveBackgroundColor];
    v10 = [(MarkupViewController *)self contentContainerView];
    [v10 setBackgroundColor:v9];
  }

  v11 = [(MarkupViewController *)self _effectiveBackgroundColor];
  v12 = [(MarkupViewController *)self contentViewController];
  v13 = [v12 view];
  [v13 setBackgroundColor:v11];

  if ([(MarkupViewController *)self _useLegacyToolbar])
  {
    v14 = [(MarkupViewController *)self annotationController];
    v15 = [v14 toolbarViewController];

    v16 = [(MarkupViewController *)self _effectiveToolbarTintColor];
    [v15 setBarTintColor:v16];

    v17 = [(MarkupViewController *)self _effectiveToolbarItemTintColor];
    [v15 setTintColor:v17];
  }

  [(MarkupViewController *)self _updateNavBarProperties];
  v18 = [(MarkupViewController *)self annotationController];
  v19 = [v18 toolbarViewController];
  [v19 traitCollectionDidChange:v4];

  [(MarkupViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)setNavBar:(id)a3
{
  v5 = a3;
  if (self->_navBar != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_navBar, a3);
    [(MarkupViewController *)self _updateNavBarProperties];
    v5 = v6;
  }
}

- (void)_updateNavBarProperties
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(MarkupViewController *)self _effectiveToolbarTintColor];
  v4 = [(MarkupViewController *)self navBar];
  [v4 setBarTintColor:v3];

  v5 = [(MarkupViewController *)self _effectiveNavBarTitleColor];
  if (v5)
  {
    v8 = *MEMORY[0x277D740C0];
    v4 = [(MarkupViewController *)self _effectiveNavBarTitleColor];
    v9[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(MarkupViewController *)self navBar];
  [v7 setTitleTextAttributes:v6];

  if (v5)
  {
  }
}

- (void)setBackgroundColor:(id)a3
{
  v11 = a3;
  v4 = [(MarkupViewController *)self backgroundColor];
  v5 = [v4 isEqual:v11];

  if ((v5 & 1) == 0)
  {
    v6 = [v11 copy];
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v6;

    v8 = self->_backgroundColor;
    v9 = [(MarkupViewController *)self contentViewController];
    v10 = [v9 view];
    [v10 setBackgroundColor:v8];
  }
}

- (id)_effectiveBackgroundColor
{
  v3 = [(MarkupViewController *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 1)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [(MarkupViewController *)self _markupBlackColor];
  }
  v4 = ;

  v5 = [(MarkupViewController *)self backgroundColor];
  if (v5)
  {
    v6 = [(MarkupViewController *)self backgroundColor];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (void)setToolbarItemTintColor:(id)a3
{
  v10 = a3;
  v4 = [(MarkupViewController *)self toolbarItemTintColor];
  v5 = [v4 isEqual:v10];

  if ((v5 & 1) == 0 && [(MarkupViewController *)self _useLegacyToolbar])
  {
    v6 = [v10 copy];
    toolbarItemTintColor = self->_toolbarItemTintColor;
    self->_toolbarItemTintColor = v6;

    v8 = [(MarkupViewController *)self annotationController];
    v9 = [v8 toolbarViewController];

    [v9 setTintColor:v10];
  }
}

- (id)_effectiveToolbarItemTintColor
{
  v3 = [(MarkupViewController *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 1)
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

- (void)setToolbarTintColor:(id)a3
{
  v10 = a3;
  v4 = [(MarkupViewController *)self toolbarTintColor];
  v5 = [v4 isEqual:v10];

  if ((v5 & 1) == 0 && [(MarkupViewController *)self _useLegacyToolbar])
  {
    v6 = [v10 copy];
    toolbarTintColor = self->_toolbarTintColor;
    self->_toolbarTintColor = v6;

    v8 = [(MarkupViewController *)self annotationController];
    v9 = [v8 toolbarViewController];

    [v9 setBarTintColor:self->_toolbarTintColor];
  }
}

- (id)_effectiveToolbarTintColor
{
  v3 = [(MarkupViewController *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(MarkupViewController *)self _markupBlackColor];
  }

  toolbarTintColor = v4;
  if (self->_toolbarItemTintColor)
  {
    toolbarTintColor = self->_toolbarTintColor;
  }

  v6 = toolbarTintColor;

  return toolbarTintColor;
}

- (void)setNavBarTitleColor:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MarkupViewController *)self navBarTitleColor];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 copy];
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

    v11 = [(MarkupViewController *)self navBar];
    [v11 setTitleTextAttributes:v10];

    if (v9)
    {
    }
  }
}

- (id)_effectiveNavBarTitleColor
{
  v3 = [(MarkupViewController *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 1)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v4 = ;

  v5 = [(MarkupViewController *)self navBarTitleColor];
  if (v5)
  {
    v6 = [(MarkupViewController *)self navBarTitleColor];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (void)delete:(id)a3
{
  v7 = a3;
  v4 = [(MarkupViewController *)self annotationController];
  v5 = [v4 validateDelete:v7];

  if (v5)
  {
    v6 = [(MarkupViewController *)self annotationController];
    [v6 delete:v7];
  }
}

- (void)duplicate:(id)a3
{
  v7 = a3;
  v4 = [(MarkupViewController *)self annotationController];
  v5 = [v4 validateDuplicate:v7];

  if (v5)
  {
    v6 = [(MarkupViewController *)self annotationController];
    [v6 duplicate:v7];
  }
}

- (void)editTextAnnotation:(id)a3
{
  v7 = a3;
  v4 = [(MarkupViewController *)self annotationController];
  v5 = [v4 validateEditTextAnnotation:v7];

  if (v5)
  {
    v6 = [(MarkupViewController *)self annotationController];
    [v6 editTextAnnotation:v7];
  }
}

- (void)motionEnded:(int64_t)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = [(MarkupViewController *)self allowShakeToUndo];
  if (a3 == 1 && v7)
  {
    v8 = [(MarkupViewController *)self annotationController];
    v9 = [v8 validateUndo:0];

    v10 = [(MarkupViewController *)self annotationController];
    v11 = [v10 validateRedo:0];

    v12 = [(MarkupViewController *)self annotationController];
    objc_initWeak(location, v12);

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
      [(MarkupViewController *)&v32 motionEnded:a3 withEvent:v6];
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

- (void)_showTextStyleOptions:(id)a3
{
  v7 = a3;
  v4 = [(MarkupViewController *)self annotationController];
  v5 = [v4 validateShowAttributeInspector:v7];

  if (v5)
  {
    v6 = [(MarkupViewController *)self annotationController];
    [v6 showAttributeInspector:v7];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel__showTextStyleOptions_ == a3)
  {
    v8 = [(MarkupViewController *)self annotationController];
    v9 = [v8 validateShowAttributeInspector:v6];
LABEL_10:
    v7 = v9;

    goto LABEL_11;
  }

  if (sel_editTextAnnotation_ == a3)
  {
    v8 = [(MarkupViewController *)self annotationController];
    v9 = [v8 validateEditTextAnnotation:v6];
    goto LABEL_10;
  }

  if (sel_duplicate_ == a3)
  {
    v8 = [(MarkupViewController *)self annotationController];
    v9 = [v8 validateDuplicate:v6];
    goto LABEL_10;
  }

  if (sel_delete_ == a3)
  {
    v8 = [(MarkupViewController *)self annotationController];
    v9 = [v8 validateDelete:v6];
    goto LABEL_10;
  }

  v11.receiver = self;
  v11.super_class = MarkupViewController;
  v7 = [(MarkupViewController *)&v11 canPerformAction:a3 withSender:v6];
LABEL_11:

  return v7;
}

- (void)positionSketchOverlay:(id)a3 forContentViewController:(id)a4
{
  v49 = a3;
  v5 = [(MarkupViewController *)self toolbar];
  v6 = [v5 superview];

  [v6 bounds];
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
    v23 = [(MarkupViewController *)self contentViewController];
    [v23 visibleContentRectInCoordinateSpace:v6];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = [(MarkupViewController *)self contentViewController];
    v33 = [v32 view];
    [v33 convertRect:v6 toView:{v25, v27, v29, v31}];
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

  [v6 convertRect:0 toView:{v16, v18, v20, v22}];
  v54 = CGRectIntegral(v53);
  [v6 convertRect:0 fromView:{v54.origin.x, v54.origin.y, v54.size.width, v54.size.height}];
  [v49 setFrame:?];
  v46 = [v49 superview];

  if (v46 != v6)
  {
    [v49 setAutoresizingMask:18];
    v47 = [(MarkupViewController *)self toolbar];
    v48 = [v47 superview];
    [v48 addSubview:v49];
  }
}

- (id)annotationControllerOfContentViewController:(id)a3 willSetToolbarItems:(id)a4
{
  v6 = a4;
  v7 = [a3 annotationController];
  v8 = [(MarkupViewController *)self sourceContent];
  v9 = [MUImageDownsamplingUtilities _sourceContentType:v8];

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
    v11 = [v6 indexOfObjectPassingTest:&__block_literal_global_0];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11;
      v13 = [v6 mutableCopy];
      [v13 removeObjectAtIndex:v12];

      v6 = v13;
    }
  }

  v14 = [(MarkupViewController *)self filteredToolbarItemsForItems:v6 fromController:v7];

  v15 = [(MarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v16 = [v15 controller:self willSetToolbarItems:v14];

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

- (BOOL)contentViewController:(id)a3 shouldHandleURL:(id)a4
{
  v5 = a4;
  v6 = [(MarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 controller:self shouldOpenLinkAtURL:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)annotationController:(id)a3 detectedEditOfType:(unint64_t)a4
{
  v5 = [(MarkupViewController *)self delegate:a3];
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
  v3 = [(MarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 markupViewController:self didChangeShowingSignaturesUI:self->_showingSignaturesUI];
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

- (int64_t)positionForBar:(id)a3
{
  v4 = a3;
  v5 = [(MarkupViewController *)self navBar];

  if (v5 == v4)
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
    v3 = [(MarkupViewController *)self annotationController];
    v4 = [v3 toolbarView];
  }

  else
  {
    v4 = [(MarkupViewController *)self modernToolbar];
  }

  return v4;
}

- (void)_toolbarShareButtonTapped:(id)a3
{
  v4 = [(MarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 performSelector:sel_controllerWantsToShowShareSheet_ withObject:self];
  }
}

- (id)getMenuElementsForPage:(id)a3
{
  v4 = a3;
  v5 = [(MarkupViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 menuElementsForPage:v4];
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