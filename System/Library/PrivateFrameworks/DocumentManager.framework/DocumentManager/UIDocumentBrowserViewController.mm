@interface UIDocumentBrowserViewController
+ (id)placeholderURLForDownloadsFolder;
- (BOOL)_canSendDocumentLandingDidPickDocumentsAtURLs;
- (BOOL)_delegateRespondsToSelector:(SEL)a3;
- (BOOL)_expectsRemoteViewController;
- (BOOL)_hasExistingRemoteViewControllerWithInUIPDocumentLanding:(BOOL)a3;
- (BOOL)_shouldConsultDelegateShouldShowActivityViewControllerForItemBookmarks:(id)a3;
- (BOOL)_updateAppearanceShowsCreateButton;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)enclosedInUIPDocumentLanding;
- (BOOL)supportsRemovableFileProvidersForConfiguration:(id)a3;
- (CGSize)preferredContentSize;
- (DOCDocBrowserVC_UIActivityViewController)activityViewController;
- (NSArray)allowedContentTypes;
- (NSArray)contentTypesForRecentDocuments;
- (NSArray)recentDocumentsContentTypes;
- (NSString)_activeDocumentCreationIntent;
- (UIDocumentBrowserTransitionController)transitionControllerForDocumentAtURL:(NSURL *)documentURL;
- (UIDocumentBrowserViewController)initForOpeningContentTypes:(NSArray *)contentTypes;
- (UIDocumentBrowserViewController)initForOpeningFilesWithContentTypes:(NSArray *)allowedContentTypes;
- (UIDocumentBrowserViewController)initWithCoder:(id)a3;
- (UIDocumentBrowserViewController)initWithConfiguration:(id)a3;
- (_UIDocumentLandingPresenter)documentLandingPresenter;
- (id)_activityViewControllerWithItemBookmarks:(id)a3 isForTitleMenuFolderSharing:(BOOL)a4 popoverTracker:(id)a5 isContentManaged:(BOOL)a6 additionalActivities:(id)a7 activityRunner:(id)a8;
- (id)_sandboxingURLWrapperForURL:(id)a3 readonly:(BOOL)a4 error:(id *)a5;
- (id)_unavailableConfigurationForTryAgain;
- (id)configurationForOpeningDocumentsWithContentTypes:(id)a3;
- (id)delegate;
- (id)keyCommands;
- (id)preferredFocusEnvironments;
- (id)recentDocumentsContentTypesFromInfoPlist;
- (id)remoteBarButtonForUUID:(id)a3;
- (id)trackingViewForUUID:(id)a3;
- (int64_t)_currentLandingModeBasedForObservedPresentationController;
- (int64_t)_preferredModalPresentationStyle;
- (void)__commonInit;
- (void)_applyBrowserStateChange:(id)a3 serviceProxy:(id)a4 animated:(BOOL)a5;
- (void)_beginMonitoringUIPPresentationController;
- (void)_beginTransitionCoordinatorSessionForDocumentURL:(id)a3;
- (void)_checkIfObservedUIPPresentationControllerDetentDidChangeForReason:(id)a3;
- (void)_clearCurrentOpenInteractionUnlessUIPDocumentLanding;
- (void)_clearShownViewControllers;
- (void)_commitDocumentURLPreview:(id)a3;
- (void)_core_didImportDocumentAtURL:(id)a3 toDestinationURL:(id)a4;
- (void)_core_didRequestDocumentCreationWithHandler:(id)a3;
- (void)_core_didTriggerDocumentCreationIntent:(id)a3;
- (void)_core_failedToImportDocumentAtURL:(id)a3 error:(id)a4;
- (void)_didAttachToDocumentLaunchOptionsForUseInUIPDocumentLanding;
- (void)_didDenyCreateDocumentSessionWithError:(id)a3;
- (void)_didPickItemBookmarks:(id)a3;
- (void)_didTapTryAgainButton;
- (void)_didTriggerBarButtonWithUUID:(id)a3 overflowAction:(BOOL)a4;
- (void)_didTriggerCustomActionWithIdentifier:(id)a3 onItemBookmarks:(id)a4;
- (void)_displayActivityControllerWithItemBookmarks:(id)a3 popoverTracker:(id)a4 isContentManaged:(BOOL)a5 additionalActivities:(id)a6 activityProxy:(id)a7;
- (void)_displayRemoteControllerIfNeeded;
- (void)_doc_endDelayingRemotePresentation;
- (void)_doc_performRemoteUpdateAppearanceForReason:(unint64_t)a3;
- (void)_embedDocumentBrowserViewController;
- (void)_embedViewController:(id)a3;
- (void)_endMonitoringUIPPresentationController;
- (void)_endTransitionCoordinatorSession;
- (void)_ensurePreparedForAPIRequringXPC;
- (void)_ensurePreparedForAPIRequringXPC_asLegacy;
- (void)_ensurePreparedForAPIRequringXPC_asUIP;
- (void)_establishFirstResponderOnServiceSideForKeyCommand:(id)a3;
- (void)_fallbackRenameDocumentAtURL:(id)a3 proposedName:(id)a4 completionHandler:(id)a5;
- (void)_iOS_didImportDocumentAtURL:(id)a3 toDestinationItemBookmark:(id)a4;
- (void)_iOS_didRequestDocumentCreationWithHandler:(id)a3;
- (void)_iOS_failedToImportDocumentAtURL:(id)a3 error:(id)a4;
- (void)_importDocumentAtURL:(id)a3 neighbourURL:(id)a4 mode:(unint64_t)a5 completionHandler:(id)a6;
- (void)_initiateDocumentCreationWithIntent:(id)a3;
- (void)_instantiateRemoteViewControllerWithCompletion:(id)a3;
- (void)_prepareForPresentingInUIPDocumentLanding;
- (void)_presentActivityViewControllerForItemBookmarks:(id)a3 withPopoverTracker:(id)a4 isContentManaged:(BOOL)a5 additionalActivities:(id)a6 activityProxy:(id)a7;
- (void)_requestAnimationInfoForDocumentAtURL:(id)a3 completion:(id)a4;
- (void)_sendBrowserChange:(id)a3 serviceProxy:(id)a4;
- (void)_sendBrowserLandingModeChangeForReason:(id)a3;
- (void)_sendDocumentLandingDidPickDocumentsAtURLs:(id)a3;
- (void)_showDocumentBrowserViewController:(BOOL)a3;
- (void)_showErrorViewController;
- (void)_updateRemoteBarButtonFrames:(id)a3 forUUID:(id)a4;
- (void)_viewControllerPresentationDidInitiate;
- (void)addDummySplitViewControllerForPreferredContentSize;
- (void)addOperationToServiceQueue:(id)a3;
- (void)applicationDidBecomeActive:(id)a3;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)dismissAllPresentedViewControllers:(BOOL)a3 completion:(id)a4;
- (void)effectiveAppearanceDidChange:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)forwardHostSceneIdentifier:(id)a3;
- (void)getTrackingViews:(id *)a3 remoteButtons:(id *)a4 fromBarButtons:(id)a5;
- (void)importDocumentAtURL:(NSURL *)documentURL nextToDocumentAtURL:(NSURL *)neighbourURL mode:(UIDocumentBrowserImportMode)importMode completionHandler:(void *)completion;
- (void)importDocumentAtURL:(id)a3 byMoving:(BOOL)a4 toCurrentBrowserLocationWithCompletion:(id)a5;
- (void)manageOverrideIfNecessaryForPresentationController:(id)a3;
- (void)performBrowserStateChange:(id)a3;
- (void)performBrowserStateChange:(id)a3 animated:(BOOL)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)prepareItemBookmarks:(id)a3 forMode:(unint64_t)a4 usingBookmark:(BOOL)a5 completionBlock:(id)a6;
- (void)prepareItemBookmarks:(id)a3 usingBookmark:(BOOL)a4 completionBlock:(id)a5;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)remoteViewControllerDidTerminateViewServiceWithError:(id)a3;
- (void)renameDocumentAtURL:(NSURL *)documentURL proposedName:(NSString *)proposedName completionHandler:(void *)completionHandler;
- (void)revealDocumentAtURL:(NSURL *)url importIfNeeded:(BOOL)importIfNeeded completion:(void *)completion;
- (void)setAdditionalLeadingNavigationBarButtonItems:(NSArray *)additionalLeadingNavigationBarButtonItems;
- (void)setAdditionalTrailingNavigationBarButtonItems:(NSArray *)additionalTrailingNavigationBarButtonItems;
- (void)setAllowsDocumentCreation:(BOOL)allowsDocumentCreation;
- (void)setAllowsPickingMultipleItems:(BOOL)allowsPickingMultipleItems;
- (void)setBrowserHostedCreateDocumentsMenu:(id)a3;
- (void)setBrowserUserInterfaceStyle:(UIDocumentBrowserUserInterfaceStyle)browserUserInterfaceStyle;
- (void)setCustomActions:(NSArray *)customActions;
- (void)setDefaultDocumentAspectRatio:(CGFloat)defaultDocumentAspectRatio;
- (void)setDelegate:(id)delegate;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setLocalizedCreateDocumentActionTitle:(NSString *)localizedCreateDocumentActionTitle;
- (void)setPreferredUIPBrowserState:(id)a3;
- (void)setShouldShowFileExtensions:(BOOL)shouldShowFileExtensions;
- (void)updateBackgroundColor;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation UIDocumentBrowserViewController

- (id)recentDocumentsContentTypesFromInfoPlist
{
  if (recentDocumentsContentTypesFromInfoPlist_onceToken != -1)
  {
    [UIDocumentBrowserViewController recentDocumentsContentTypesFromInfoPlist];
  }

  v3 = recentDocumentsContentTypesFromInfoPlist_recentDocumentsContentTypesFromInfoPlist;

  return v3;
}

void __75__UIDocumentBrowserViewController_recentDocumentsContentTypesFromInfoPlist__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v0 objectForInfoDictionaryKey:@"UIDocumentBrowserRecentDocumentContentTypes"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 count])
  {
    v1 = [MEMORY[0x1E6982C38] doc_contentTypesForIdentifiers:v3];
    v2 = recentDocumentsContentTypesFromInfoPlist_recentDocumentsContentTypesFromInfoPlist;
    recentDocumentsContentTypesFromInfoPlist_recentDocumentsContentTypesFromInfoPlist = v1;
  }
}

- (void)__commonInit
{
  customActions = self->_customActions;
  v4 = MEMORY[0x1E695E0F0];
  self->_customActions = MEMORY[0x1E695E0F0];

  additionalLeadingNavigationBarButtonItems = self->_additionalLeadingNavigationBarButtonItems;
  self->_additionalLeadingNavigationBarButtonItems = v4;

  additionalTrailingNavigationBarButtonItems = self->_additionalTrailingNavigationBarButtonItems;
  self->_additionalTrailingNavigationBarButtonItems = v4;

  v7 = objc_alloc_init(DOCAppearance);
  appearance = self->_appearance;
  self->_appearance = v7;

  [(DOCAppearance *)self->_appearance setShowsCreateButton:1];
  self->_allowsDocumentCreation = 1;
  self->_configuredForUIPDocumentLanding = 0;
  v9 = [[DOCDocumentCreationController alloc] initForBrowserViewController:self];
  documentCreationController = self->_documentCreationController;
  self->_documentCreationController = v9;

  v11 = objc_alloc(MEMORY[0x1E69DD250]);
  v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  trackingViewsContainer = self->_trackingViewsContainer;
  self->_trackingViewsContainer = v12;

  v14 = [(UIDocumentBrowserViewController *)self configuration];
  v15 = [v14 inProcess];

  if ((v15 & 1) == 0)
  {
    v16 = objc_opt_new();
    serviceQueue = self->_serviceQueue;
    self->_serviceQueue = v16;

    [(NSOperationQueue *)self->_serviceQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)self->_serviceQueue setSuspended:1];
  }

  v18 = [MEMORY[0x1E696AD88] defaultCenter];
  [v18 addObserver:self selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];

  v20 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
  v19 = [(UIDocumentBrowserViewController *)self registerForTraitChanges:v20 withAction:sel_updateForChangedTraitsAffectingColors];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = UIDocumentBrowserViewController;
  [(UIDocumentBrowserViewController *)&v6 viewDidLoad];
  v3 = [(UIDocumentBrowserViewController *)self view];
  [v3 bounds];
  [(UIView *)self->_trackingViewsContainer setFrame:?];

  [(UIView *)self->_trackingViewsContainer setAutoresizingMask:18];
  v4 = [(UIDocumentBrowserViewController *)self view];
  [v4 addSubview:self->_trackingViewsContainer];

  [(UIDocumentBrowserViewController *)self addDummySplitViewControllerForPreferredContentSize];
  [(UIDocumentBrowserViewController *)self _showDocumentBrowserViewController:0];
  [(UIDocumentBrowserViewController *)self effectiveAppearanceDidChange:self->_appearance];
  if ([(UIDocumentBrowserViewController *)self allowsDocumentCreation])
  {
    v5 = [(UIDocumentBrowserViewController *)self documentCreationController];
    [v5 warnIfNoValidCreationHandler];
  }
}

- (void)addDummySplitViewControllerForPreferredContentSize
{
  v18 = [(UIDocumentBrowserViewController *)self configuration];
  if ([v18 isPickerUI])
  {
    v3 = [(UIDocumentBrowserViewController *)self dummySplitViewController];

    if (v3)
    {
      return;
    }

    v18 = [objc_alloc(MEMORY[0x1E69DCF78]) initWithStyle:1];
    v4 = [v18 view];
    [v4 setHidden:1];

    v5 = [v18 view];
    [v5 setAutoresizingMask:18];

    v6 = [(UIDocumentBrowserViewController *)self view];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v18 view];
    [v15 setFrame:{v8, v10, v12, v14}];

    [v18 set_alwaysAllowsSystemPreferredContentSize:1];
    [(UIDocumentBrowserViewController *)self addChildViewController:v18];
    v16 = [(UIDocumentBrowserViewController *)self view];
    v17 = [v18 view];
    [v16 addSubview:v17];

    [v18 didMoveToParentViewController:self];
    [(UIDocumentBrowserViewController *)self setDummySplitViewController:v18];
    [v18 preferredContentSize];
    [(UIDocumentBrowserViewController *)self setPreferredContentSize:?];
  }
}

- (void)_clearShownViewControllers
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(UIDocumentBrowserViewController *)self childViewControllers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        [v7 willMoveToParentViewController:0];
        v8 = [v7 view];
        [v8 removeFromSuperview];

        [v7 removeFromParentViewController];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_embedDocumentBrowserViewController
{
  [(UIDocumentBrowserViewController *)self setContentUnavailableConfiguration:0];
  v3 = [(UIDocumentBrowserViewController *)self configuration];
  v4 = [v3 inProcess];

  if ((v4 & 1) == 0)
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __70__UIDocumentBrowserViewController__embedDocumentBrowserViewController__block_invoke;
    v8 = &unk_1E87824D8;
    objc_copyWeak(&v9, &location);
    [(UIDocumentBrowserViewController *)self _instantiateRemoteViewControllerWithCompletion:&v5];
    [(UIDocumentBrowserViewController *)self _embedViewController:self->_remoteViewController, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (_UIDocumentLandingPresenter)documentLandingPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_documentLandingPresenter);

  return WeakRetained;
}

- (BOOL)_updateAppearanceShowsCreateButton
{
  v3 = [(DOCAppearance *)self->_appearance showsCreateButton];
  v4 = self->_browserHostedCreateDocumentsMenu == 0 && self->_allowsDocumentCreation;
  v5 = v3 ^ (self->_browserHostedCreateDocumentsMenu == 0 && self->_allowsDocumentCreation);
  if (v3 != v4)
  {
    v6 = [(DOCAppearance *)self->_appearance copy];
    [v6 setShowsCreateButton:v4];
    [(UIDocumentBrowserViewController *)self effectiveAppearanceDidChange:v6];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__UIDocumentBrowserViewController__updateAppearanceShowsCreateButton__block_invoke;
    v8[3] = &__block_descriptor_33_e88_v24__0___DOCServiceDocumentBrowserViewControllerInterface__8__DOCRemoteViewController_16l;
    v9 = v4;
    [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v8];
  }

  return v5;
}

- (BOOL)_expectsRemoteViewController
{
  v2 = [(UIDocumentBrowserViewController *)self configuration];
  v3 = [v2 inProcess];

  return v3 ^ 1;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)enclosedInUIPDocumentLanding
{
  v2 = [(UIDocumentBrowserViewController *)self configuration];
  v3 = [v2 isInUIPDocumentLanding];

  return v3;
}

- (CGSize)preferredContentSize
{
  v3 = [(UIDocumentBrowserViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    v5 = 640.0;
    v6 = 960.0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIDocumentBrowserViewController;
    [(UIDocumentBrowserViewController *)&v7 preferredContentSize];
  }

  result.height = v5;
  result.width = v6;
  return result;
}

- (int64_t)_preferredModalPresentationStyle
{
  v3 = [(UIDocumentBrowserViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    return 2;
  }

  v6.receiver = self;
  v6.super_class = UIDocumentBrowserViewController;
  return [(UIDocumentBrowserViewController *)&v6 _preferredModalPresentationStyle];
}

- (void)updateBackgroundColor
{
  v2 = self;
  v3 = [(UIDocumentBrowserViewController *)self configuration];
  v4 = [v3 isPickerUI];

  if (v4)
  {
    if (v2->_isDisplayingRemoteViewController)
    {
      v15 = [MEMORY[0x1E69DC888] clearColor];
      v5 = [(UIDocumentBrowserViewController *)v2 viewIfLoaded];
      goto LABEL_16;
    }

    v15 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    v6 = [(DOCAppearance *)v2->_appearance backgroundColor];
    v7 = [(UIDocumentBrowserViewController *)v2 traitCollection];
    v15 = [v6 resolvedColorWithTraitCollection:v7];

    v2 = v2;
    v8 = [(UIDocumentBrowserViewController *)v2 activePresentationController];
    objc_opt_class();
    LOBYTE(v7) = objc_opt_isKindOfClass();

    if (v7)
    {
      objc_opt_class();
      v9 = v2;
      v10 = v9;
      do
      {
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v11 = [v10 parentViewController];
        if (!v11)
        {
          v11 = [v10 presentingViewController];
        }

        v10 = v11;
      }

      while (v11);

      if (!v10)
      {
        goto LABEL_15;
      }

      v12 = [MEMORY[0x1E69DC888] clearColor];
      v13 = v15;
      v15 = v12;
    }

    else
    {
      v13 = v2;
    }
  }

LABEL_15:
  v5 = [(UIDocumentBrowserViewController *)v2 view];
LABEL_16:
  v14 = v5;
  [v5 setBackgroundColor:v15];
}

- (void)_beginMonitoringUIPPresentationController
{
  if (self->_configuredForUIPDocumentLanding)
  {
    v10[11] = v2;
    v10[12] = v3;
    v5 = [(UIDocumentBrowserViewController *)self presentationController];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v5 != self->_observedUIPPresentationController)
    {
      [(UIDocumentBrowserViewController *)self _endMonitoringUIPPresentationController];
      objc_storeStrong(&self->_observedUIPPresentationController, v5);
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      v7 = *MEMORY[0x1E69DE888];
      v8 = [MEMORY[0x1E696ADC8] mainQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __106__UIDocumentBrowserViewController_DOCUIPPresentationController___beginMonitoringUIPPresentationController__block_invoke;
      v10[3] = &unk_1E8782E30;
      v10[4] = self;
      v9 = [v6 addObserverForName:v7 object:v5 queue:v8 usingBlock:v10];

      if ([(UIDocumentBrowserViewController *)self _appearState]- 1 <= 1)
      {
        [(UIDocumentBrowserViewController *)self _checkIfObservedUIPPresentationControllerDetentDidChangeForReason:@"initial state check"];
      }
    }
  }
}

- (void)_doc_endDelayingRemotePresentation
{
  if (self->_isDelayingRemotePresentation)
  {
    self->_isDelayingRemotePresentation = 0;
    [(UIDocumentBrowserViewController *)self _endDelayingPresentation];
    if (self->_isDelayingParentPresentation)
    {
      self->_isDelayingParentPresentation = 0;
      v4 = [(UIDocumentBrowserViewController *)self parentViewController];
      [v4 _endDelayingPresentation];
    }

    [(UIDocumentBrowserViewController *)self _displayRemoteControllerIfNeeded];
  }
}

- (UIDocumentBrowserViewController)initForOpeningFilesWithContentTypes:(NSArray *)allowedContentTypes
{
  v4 = [(UIDocumentBrowserViewController *)self configurationForOpeningDocumentsWithContentTypes:allowedContentTypes];
  v9.receiver = self;
  v9.super_class = UIDocumentBrowserViewController;
  v5 = [(UIDocumentBrowserViewController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_configuration, v4);
    [(UIDocumentBrowserViewController *)v6 __commonInit];
    v7 = v6;
  }

  return v6;
}

- (UIDocumentBrowserViewController)initForOpeningContentTypes:(NSArray *)contentTypes
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = contentTypes;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v4, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v18 + 1) + 8 * i) identifier];
          [v5 addObject:v11];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = [(UIDocumentBrowserViewController *)self configurationForOpeningDocumentsWithContentTypes:v5];
  v17.receiver = self;
  v17.super_class = UIDocumentBrowserViewController;
  v13 = [(UIDocumentBrowserViewController *)&v17 initWithNibName:0 bundle:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_configuration, v12);
    [(UIDocumentBrowserViewController *)v14 __commonInit];
    v15 = v14;
  }

  return v14;
}

- (id)configurationForOpeningDocumentsWithContentTypes:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E6982C38] doc_contentTypesForIdentifiers:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E699A3E0] configurationForImportingDocumentContentTypes:v4 mode:1];
  [v5 setSupportsRemovableFileProviders:{-[UIDocumentBrowserViewController supportsRemovableFileProvidersForConfiguration:](self, "supportsRemovableFileProvidersForConfiguration:", v5)}];
  v6 = [(UIDocumentBrowserViewController *)self recentDocumentsContentTypesFromInfoPlist];
  [v5 setRecentDocumentsContentTypes:v6];

  return v5;
}

- (UIDocumentBrowserViewController)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UIDocumentBrowserViewController;
  v5 = [(UIDocumentBrowserViewController *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E699A3E0];
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = [v7 bundleIdentifier];
    v9 = [v6 configurationForOpeningDocumentsOfApplicationWithBundleIdentifier:v8];
    configuration = v5->_configuration;
    v5->_configuration = v9;

    [(DOCConfiguration *)v5->_configuration setSupportsRemovableFileProviders:[(UIDocumentBrowserViewController *)v5 supportsRemovableFileProvidersForConfiguration:v5->_configuration]];
    [(UIDocumentBrowserViewController *)v5 __commonInit];
    v11 = [v4 decodeObjectForKey:@"UIDocumentBrowserViewControllerAllowsDocumentCreation"];

    if (v11)
    {
      v5->_allowsDocumentCreation = [v4 decodeBoolForKey:@"UIDocumentBrowserViewControllerAllowsDocumentCreation"];
    }

    else
    {
      v5->_allowsDocumentCreation = 1;
    }

    v5->_allowsPickingMultipleItems = [v4 decodeBoolForKey:@"UIDocumentBrowserViewControllerAllowsPickingMultipleItems"];
    -[DOCAppearance setBrowserUserInterfaceStyle:](v5->_appearance, "setBrowserUserInterfaceStyle:", [v4 decodeIntForKey:@"UIDocumentBrowserViewControllerBrowserUserInterfaceStyle"]);
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[UIDocumentBrowserViewController allowsDocumentCreation](self forKey:{"allowsDocumentCreation"), @"UIDocumentBrowserViewControllerAllowsDocumentCreation"}];
  [v4 encodeBool:-[UIDocumentBrowserViewController allowsPickingMultipleItems](self forKey:{"allowsPickingMultipleItems"), @"UIDocumentBrowserViewControllerAllowsPickingMultipleItems"}];
  [v4 encodeInteger:-[UIDocumentBrowserViewController browserUserInterfaceStyle](self forKey:{"browserUserInterfaceStyle"), @"UIDocumentBrowserViewControllerBrowserUserInterfaceStyle"}];
}

- (UIDocumentBrowserViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  if ([v5 isPickerUI] && (objc_msgSend(v5, "shouldIgnoreInteractionMode") & 1) == 0)
  {
    [v5 setSupportsRemovableFileProviders:{-[UIDocumentBrowserViewController supportsRemovableFileProvidersForConfiguration:](self, "supportsRemovableFileProvidersForConfiguration:", v5)}];
  }

  v10.receiver = self;
  v10.super_class = UIDocumentBrowserViewController;
  v6 = [(UIDocumentBrowserViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    [(UIDocumentBrowserViewController *)v7 __commonInit];
    v8 = v7;
  }

  return v7;
}

- (void)performBrowserStateChange:(id)a3
{
  v4 = a3;
  v3 = v4;
  DOCRunInMainThread();
}

- (void)performBrowserStateChange:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  if (self->_configuredForUIPDocumentLanding && [MEMORY[0x1E699A3F0] _UIPDocLandingInfrastructureEnabled] && (self->_serviceProxy || !self->_remoteHasReceivedInitialUIPBrowserState))
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__UIDocumentBrowserViewController_performBrowserStateChange_animated___block_invoke;
    v6[3] = &unk_1E8782370;
    objc_copyWeak(&v8, &location);
    v7 = v5;
    [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __70__UIDocumentBrowserViewController_performBrowserStateChange_animated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 40));
  v7 = objc_loadWeakRetained(&to);

  if (v7)
  {
    objc_copyWeak(&v10, &to);
    v8 = *(a1 + 32);
    v9 = v5;
    DOCRunInMainThread();

    objc_destroyWeak(&v10);
  }

  objc_destroyWeak(&to);
}

void __70__UIDocumentBrowserViewController_performBrowserStateChange_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _applyBrowserStateChange:*(a1 + 32) serviceProxy:*(a1 + 40) animated:1];
}

- (void)setPreferredUIPBrowserState:(id)a3
{
  v5 = a3;
  if (([(DOCUIPBrowserState *)self->_preferredUIPBrowserState isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_preferredUIPBrowserState, a3);
    [(UIDocumentBrowserViewController *)self _updateAppearanceShowsCreateButton];
  }
}

- (void)_applyBrowserStateChange:(id)a3 serviceProxy:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  self->_remoteHasReceivedInitialUIPBrowserState = 1;
  v10 = [(UIDocumentBrowserViewController *)self sheetPresentationController];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __82__UIDocumentBrowserViewController__applyBrowserStateChange_serviceProxy_animated___block_invoke;
  v22[3] = &unk_1E8782398;
  v22[4] = self;
  v11 = v8;
  v23 = v11;
  v12 = v9;
  v24 = v12;
  v13 = v10;
  v25 = v13;
  v14 = MEMORY[0x1E692E2E0](v22);
  v15 = v14;
  if (v5)
  {
    if (v13)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __82__UIDocumentBrowserViewController__applyBrowserStateChange_serviceProxy_animated___block_invoke_2;
      v20[3] = &unk_1E87823C0;
      v21 = v14;
      [v13 animateChanges:v20];
      v16 = v21;
    }

    else
    {
      v17 = MEMORY[0x1E69DD250];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __82__UIDocumentBrowserViewController__applyBrowserStateChange_serviceProxy_animated___block_invoke_3;
      v18[3] = &unk_1E87823C0;
      v19 = v14;
      [v17 animateWithDuration:v18 animations:0.5];
      v16 = v19;
    }
  }

  else
  {
    v14[2](v14);
  }
}

uint64_t __82__UIDocumentBrowserViewController__applyBrowserStateChange_serviceProxy_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _sendBrowserChange:*(a1 + 40) serviceProxy:*(a1 + 48)];
  v2 = [*(a1 + 56) doc_detentForDocumentLandingMode:{objc_msgSend(*(a1 + 40), "documentLandingMode")}];
  if (v2)
  {
    v5 = v2;
    v3 = [*(a1 + 56) selectedDetentIdentifier];

    if (v3 != v5)
    {
      [*(a1 + 56) setSelectedDetentIdentifier:v5];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)_sendBrowserChange:(id)a3 serviceProxy:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 documentLandingMode] != -1)
  {
    v7 = [(UIDocumentBrowserViewController *)self preferredUIPBrowserState];
    v8 = [v7 copy];

    [v8 setDocumentLandingMode:{objc_msgSend(v9, "documentLandingMode")}];
    [(UIDocumentBrowserViewController *)self setPreferredUIPBrowserState:v8];
  }

  [v6 applyBrowserStateChange:v9];
}

- (BOOL)_hasExistingRemoteViewControllerWithInUIPDocumentLanding:(BOOL)a3
{
  remoteViewController = self->_remoteViewController;
  if (remoteViewController)
  {
    v5 = [(DOCRemoteContainerViewController *)remoteViewController configuration];
    v6 = [v5 isInUIPDocumentLanding];

    LOBYTE(remoteViewController) = v6 ^ a3 ^ 1;
  }

  return remoteViewController;
}

- (void)_didAttachToDocumentLaunchOptionsForUseInUIPDocumentLanding
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() description];
  [v3 UTF8String];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1E57D8000, v1, OS_LOG_TYPE_FAULT, "UIDocumentBrowserViewController's view should not be created prior to attaching it to UIDocumentViewControllerLaunchOptions. This can cause undefined document launch UI issues. Consider using .viewIfLoaded (vs .view), or reordering your code for %s. ", v4, 0xCu);
}

- (void)_prepareForPresentingInUIPDocumentLanding
{
  v3 = [(UIDocumentBrowserViewController *)self configuration];
  v4 = [v3 inProcess];

  if ((v4 & 1) == 0 && !self->_configuredForUIPDocumentLanding)
  {
    self->_configuredForUIPDocumentLanding = 1;
    [(UIDocumentBrowserViewController *)self _didAttachToDocumentLaunchOptionsForUseInUIPDocumentLanding];
    v5 = objc_alloc_init(MEMORY[0x1E699A438]);
    [v5 setContentMode:-1];
    [v5 setDocumentLandingMode:1];
    [(UIDocumentBrowserViewController *)self setPreferredUIPBrowserState:v5];
    [(UIDocumentBrowserViewController *)self performBrowserStateChange:v5 animated:0];
    [(UIDocumentBrowserViewController *)self _doc_performRemoteUpdateAppearanceForReason:1];
    [(UIDocumentBrowserViewController *)self loadViewIfNeeded];
    [(UIDocumentBrowserViewController *)self _beginMonitoringUIPPresentationController];
  }
}

- (void)_initiateDocumentCreationWithIntent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UIDocumentBrowserViewController *)self documentCreationController];
    [v5 setActiveDocumentCreationIntent:v4];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__UIDocumentBrowserViewController__initiateDocumentCreationWithIntent___block_invoke;
    v6[3] = &unk_1E87823E8;
    v7 = v4;
    [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v6];
  }
}

- (NSString)_activeDocumentCreationIntent
{
  v2 = [(UIDocumentBrowserViewController *)self documentCreationController];
  v3 = [v2 activeDocumentCreationIntent];

  return v3;
}

- (void)_didDenyCreateDocumentSessionWithError:(id)a3
{
  v4 = a3;
  v3 = v4;
  DOCRunInMainThread();
}

void __74__UIDocumentBrowserViewController__didDenyCreateDocumentSessionWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) documentCreationController];
  [v2 didDenyCreateDocumentSessionWithError:*(a1 + 40)];
}

- (void)_requestAnimationInfoForDocumentAtURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    [UIDocumentBrowserViewController _requestAnimationInfoForDocumentAtURL:completion:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [UIDocumentBrowserViewController _requestAnimationInfoForDocumentAtURL:completion:];
    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__UIDocumentBrowserViewController__requestAnimationInfoForDocumentAtURL_completion___block_invoke;
  v11[3] = &unk_1E87824B0;
  objc_copyWeak(&v14, &location);
  v9 = v8;
  v13 = v9;
  v10 = v6;
  v12 = v10;
  [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __84__UIDocumentBrowserViewController__requestAnimationInfoForDocumentAtURL_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = [a1[4] startAccessingSecurityScopedResource];
      v9 = a1[4];
      v31[0] = 0;
      v10 = [WeakRetained _sandboxingURLWrapperForURL:v9 readonly:1 error:v31];
      v11 = v31[0];
      if (v8)
      {
        [a1[4] stopAccessingSecurityScopedResource];
      }

      if (v10)
      {
        v24[0] = 0;
        v24[1] = v24;
        v24[2] = 0x2020000000;
        v25 = 0;
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __84__UIDocumentBrowserViewController__requestAnimationInfoForDocumentAtURL_completion___block_invoke_5;
        v21[3] = &unk_1E8782438;
        v23 = v24;
        v22 = a1[5];
        v12 = MEMORY[0x1E692E2E0](v21);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __84__UIDocumentBrowserViewController__requestAnimationInfoForDocumentAtURL_completion___block_invoke_7;
        v18[3] = &unk_1E8782460;
        v20 = v24;
        v13 = v12;
        v19 = v13;
        v14 = [v5 remoteObjectProxyWithErrorHandler:v18];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __84__UIDocumentBrowserViewController__requestAnimationInfoForDocumentAtURL_completion___block_invoke_82;
        v16[3] = &unk_1E8782488;
        v15 = v13;
        v17 = v15;
        [v14 _getAnimationInfoForDocumentAtURL:v10 completion:v16];

        _Block_object_dispose(v24, 8);
      }

      else
      {
        v26 = MEMORY[0x1E69E9820];
        v27 = 3221225472;
        v28 = __84__UIDocumentBrowserViewController__requestAnimationInfoForDocumentAtURL_completion___block_invoke_4;
        v29 = &unk_1E87823C0;
        v30 = a1[5];
        DOCRunInMainThread();
      }
    }

    else
    {
      v31[1] = MEMORY[0x1E69E9820];
      v31[2] = 3221225472;
      v31[3] = __84__UIDocumentBrowserViewController__requestAnimationInfoForDocumentAtURL_completion___block_invoke_3;
      v31[4] = &unk_1E87823C0;
      v32 = a1[5];
      DOCRunInMainThread();
      v11 = v32;
    }
  }

  else
  {
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __84__UIDocumentBrowserViewController__requestAnimationInfoForDocumentAtURL_completion___block_invoke_2;
    v36 = &unk_1E87823C0;
    v37 = a1[5];
    DOCRunInMainThread();
    v11 = v37;
  }
}

void __84__UIDocumentBrowserViewController__requestAnimationInfoForDocumentAtURL_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v4 = v6;
  v5 = v3;
  DOCRunInMainThread();
}

void *__84__UIDocumentBrowserViewController__requestAnimationInfoForDocumentAtURL_completion___block_invoke_6(void *result)
{
  v1 = *(result[6] + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(result[5] + 16))(result[5], result[4]);
  }

  return result;
}

void __84__UIDocumentBrowserViewController__requestAnimationInfoForDocumentAtURL_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E699A450];
  v5 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __84__UIDocumentBrowserViewController__requestAnimationInfoForDocumentAtURL_completion___block_invoke_7_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAB0] object:0];

  [(UIDocumentBrowserViewController *)self _endMonitoringUIPPresentationController];
  v4.receiver = self;
  v4.super_class = UIDocumentBrowserViewController;
  [(UIDocumentBrowserViewController *)&v4 dealloc];
}

- (void)_viewControllerPresentationDidInitiate
{
  if ([(UIDocumentBrowserViewController *)self _expectsRemoteViewController])
  {

    [(UIDocumentBrowserViewController *)self loadViewIfNeeded];
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  isKindOfClass = a3;
  v5 = isKindOfClass;
  if (self->_isDelayingRemotePresentation && !self->_isDelayingParentPresentation)
  {
    v6 = isKindOfClass;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = v6;
    if (isKindOfClass)
    {
      self->_isDelayingParentPresentation = 1;
      isKindOfClass = [v6 _beginDelayingPresentation:0 cancellationHandler:3.0];
      v5 = v6;
    }
  }

  MEMORY[0x1EEE66BB8](isKindOfClass, v5);
}

- (void)_ensurePreparedForAPIRequringXPC
{
  if ([(UIDocumentBrowserViewController *)self _expectsRemoteViewController])
  {
    if ([MEMORY[0x1E699A3F0] _UIPDocLandingInfrastructureEnabled] && (-[UIDocumentBrowserViewController documentLandingPresenter](self, "documentLandingPresenter"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
    {

      [(UIDocumentBrowserViewController *)self _ensurePreparedForAPIRequringXPC_asUIP];
    }

    else
    {

      [(UIDocumentBrowserViewController *)self _ensurePreparedForAPIRequringXPC_asLegacy];
    }
  }
}

- (void)_ensurePreparedForAPIRequringXPC_asUIP
{
  if (![(UIDocumentBrowserViewController *)self isViewLoaded]|| !self->_configuredForUIPDocumentLanding)
  {

    [(UIDocumentBrowserViewController *)self _prepareForPresentingInUIPDocumentLanding];
  }
}

- (void)_ensurePreparedForAPIRequringXPC_asLegacy
{
  if (([(UIDocumentBrowserViewController *)self isViewLoaded]& 1) == 0)
  {

    [(UIDocumentBrowserViewController *)self loadViewIfNeeded];
  }
}

void __70__UIDocumentBrowserViewController__embedDocumentBrowserViewController__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      v10 = MEMORY[0x1E699A450];
      v11 = *MEMORY[0x1E699A450];
      if (!*MEMORY[0x1E699A450])
      {
        DOCInitLogging();
        v11 = *v10;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __70__UIDocumentBrowserViewController__embedDocumentBrowserViewController__block_invoke_cold_1();
      }

      [v9 remoteViewControllerDidTerminateViewServiceWithError:v7];
    }

    else
    {
      [WeakRetained setServiceProxy:v6];
      [v9 _displayRemoteControllerIfNeeded];
    }
  }
}

- (void)_instantiateRemoteViewControllerWithCompletion:(id)a3
{
  v4 = a3;
  [(NSOperationQueue *)self->_serviceQueue setSuspended:1];
  self->_isDisplayingRemoteViewController = 0;
  v5 = [(UIDocumentBrowserViewController *)self configuration];
  v6 = [v5 isPickerUI];

  if (v6)
  {
    [(UIDocumentBrowserViewController *)self updateBackgroundColor];
  }

  objc_initWeak(&location, self);
  v7 = [(UIDocumentBrowserViewController *)self preferredUIPBrowserState];
  self->_remoteHasReceivedInitialUIPBrowserState = v7 != 0;
  v8 = [(UIDocumentBrowserViewController *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__UIDocumentBrowserViewController__instantiateRemoteViewControllerWithCompletion___block_invoke;
  v13[3] = &unk_1E8782500;
  objc_copyWeak(&v15, &location);
  v9 = v4;
  v14 = v9;
  v10 = [DOCRemoteViewController instantiateRemoteDocumentBrowserViewControllerWithHostProxy:self configuration:v8 initialUIPBrowserState:v7 completionBlock:v13];
  remoteViewController = self->_remoteViewController;
  self->_remoteViewController = v10;

  v12 = [(DOCRemoteContainerViewController *)self->_remoteViewController view];
  [v12 setAlpha:0.0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __82__UIDocumentBrowserViewController__instantiateRemoteViewControllerWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
    [v11 setDelegate:WeakRetained];
    v10 = [WeakRetained serviceQueue];
    [v10 setSuspended:0];
  }
}

- (void)_embedViewController:(id)a3
{
  v17 = a3;
  v4 = [v17 view];
  [v4 setAutoresizingMask:18];

  v5 = [(UIDocumentBrowserViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v17 view];
  [v14 setFrame:{v7, v9, v11, v13}];

  [(UIDocumentBrowserViewController *)self addChildViewController:v17];
  v15 = [(UIDocumentBrowserViewController *)self view];
  v16 = [v17 view];
  [v15 addSubview:v16];

  [v17 didMoveToParentViewController:self];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = UIDocumentBrowserViewController;
  v4 = a3;
  [(UIDocumentBrowserViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(UIDocumentBrowserViewController *)self setPreferredContentSize:v6, v8];
}

- (void)_displayRemoteControllerIfNeeded
{
  if (!self->_isDisplayingRemoteViewController && !self->_isDelayingRemotePresentation && self->_serviceProxy)
  {
    v3 = MEMORY[0x1E699A450];
    v4 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1E57D8000, v4, OS_LOG_TYPE_DEFAULT, "Displaying remote controller", v16, 2u);
    }

    self->_isDisplayingRemoteViewController = 1;
    [(UIDocumentBrowserViewController *)self updateBackgroundColor];
    v5 = [(DOCRemoteContainerViewController *)self->_remoteViewController view];
    [v5 setAlpha:1.0];

    v6 = [(UIDocumentBrowserViewController *)self view];
    v7 = [v6 window];
    v8 = [v7 windowScene];
    v9 = [v8 session];
    v10 = [v9 persistentIdentifier];

    if (v10)
    {
      v11 = [(UIDocumentBrowserViewController *)self view];
      v12 = [v11 window];
      v13 = [v12 windowScene];
      v14 = [v13 session];
      v15 = [v14 persistentIdentifier];
      [(UIDocumentBrowserViewController *)self forwardHostSceneIdentifier:v15];
    }
  }
}

- (void)effectiveAppearanceDidChange:(id)a3
{
  v4 = a3;
  v5 = [(DOCAppearance *)self->_appearance browserUserInterfaceStyle];
  if (v5 != [(DOCAppearance *)v4 browserUserInterfaceStyle])
  {
    [(UIDocumentBrowserViewController *)self updateBackgroundColor];
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      [(UIDocumentBrowserViewController *)self setNeedsStatusBarAppearanceUpdate];
    }
  }

  appearance = self->_appearance;
  self->_appearance = v4;

  [(UIDocumentBrowserViewController *)self _doc_performRemoteUpdateAppearanceForReason:0];
}

- (void)_doc_performRemoteUpdateAppearanceForReason:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(UIDocumentBrowserViewController *)self _expectsRemoteViewController])
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (self->_isDelayingRemotePresentation)
        {
          return;
        }

        v5 = @"Update Coordination";
      }

      else
      {
        v5 = @"???";
      }
    }

    else
    {
      if (self->_hasScheduledAppearanceUpdateXPC)
      {
        return;
      }

      v5 = @"Appearance Changed";
    }

    isDelayingRemotePresentation = self->_isDelayingRemotePresentation;
    if (!isDelayingRemotePresentation)
    {
      self->_isDelayingRemotePresentation = 1;
      [(UIDocumentBrowserViewController *)self _beginDelayingPresentation:0 cancellationHandler:3.0];
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"scheduling appearance update XPC invocation (reason: %@)", v5];
    v8 = MEMORY[0x1E699A460];
    v9 = *MEMORY[0x1E699A460];
    if (!*MEMORY[0x1E699A460])
    {
      DOCInitLogging();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v7;
      v11 = v9;
      *buf = 136315138;
      v17 = [v7 UTF8String];
      _os_log_impl(&dword_1E57D8000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    self->_hasScheduledAppearanceUpdateXPC = 1;
    objc_initWeak(buf, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__UIDocumentBrowserViewController__doc_performRemoteUpdateAppearanceForReason___block_invoke;
    v12[3] = &unk_1E8782550;
    objc_copyWeak(&v14, buf);
    v13 = v5;
    v15 = !isDelayingRemotePresentation;
    [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __79__UIDocumentBrowserViewController__doc_performRemoteUpdateAppearanceForReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = *(a1 + 32);
  v8 = v6;
  v10 = *(a1 + 48);
  DOCRunInMainThread();

  objc_destroyWeak(&v9);
}

void __79__UIDocumentBrowserViewController__doc_performRemoteUpdateAppearanceForReason___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invoking appearance update XPC invocation (reason: %@)", *(a1 + 32)];
    v4 = MEMORY[0x1E699A460];
    v5 = *MEMORY[0x1E699A460];
    if (!*MEMORY[0x1E699A460])
    {
      DOCInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v3;
      v7 = v5;
      *buf = 136315138;
      v16 = [v3 UTF8String];
      _os_log_impl(&dword_1E57D8000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    WeakRetained[995] = 0;
    v8 = *(WeakRetained + 126);
    v9 = *(a1 + 56);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__UIDocumentBrowserViewController__doc_performRemoteUpdateAppearanceForReason___block_invoke_113;
    v12[3] = &unk_1E8782320;
    v10 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = WeakRetained;
    v11 = v8;
    [v10 updateAppearance:v11 shouldFlushCA:1 requiresAck:v9 completionBlock:v12];
  }
}

void __79__UIDocumentBrowserViewController__doc_performRemoteUpdateAppearanceForReason___block_invoke_113(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __79__UIDocumentBrowserViewController__doc_performRemoteUpdateAppearanceForReason___block_invoke_2_114;
  v2[3] = &unk_1E8782320;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

void __79__UIDocumentBrowserViewController__doc_performRemoteUpdateAppearanceForReason___block_invoke_2_114(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"got appearance update XPC infocation (reason: %@)", *(a1 + 32)];
  v3 = MEMORY[0x1E699A460];
  v4 = *MEMORY[0x1E699A460];
  if (!*MEMORY[0x1E699A460])
  {
    DOCInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v2;
    v6 = v4;
    *buf = 136315138;
    v8 = [v2 UTF8String];
    _os_log_impl(&dword_1E57D8000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [*(a1 + 40) _doc_endDelayingRemotePresentation];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = UIDocumentBrowserViewController;
  [UIDocumentBrowserViewController setEditing:sel_setEditing_animated_ animated:?];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__UIDocumentBrowserViewController_setEditing_animated___block_invoke;
  v7[3] = &__block_descriptor_34_e88_v24__0___DOCServiceDocumentBrowserViewControllerInterface__8__DOCRemoteViewController_16l;
  v8 = a3;
  v9 = a4;
  [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v7];
}

void __55__UIDocumentBrowserViewController_setEditing_animated___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v3 = v4;
  DOCRunInMainThread();
}

- (void)revealDocumentAtURL:(NSURL *)url importIfNeeded:(BOOL)importIfNeeded completion:(void *)completion
{
  v8 = url;
  v9 = completion;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &__block_literal_global_1;
  }

  if (!v8)
  {
    [UIDocumentBrowserViewController revealDocumentAtURL:importIfNeeded:completion:];
  }

  objc_initWeak(&location, self);
  [(UIDocumentBrowserViewController *)self _ensurePreparedForAPIRequringXPC];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_2;
  v13[3] = &unk_1E8782748;
  objc_copyWeak(&v16, &location);
  v11 = v10;
  v15 = v11;
  v12 = v8;
  v14 = v12;
  v17 = importIfNeeded;
  [(UIDocumentBrowserViewController *)self dismissAllPresentedViewControllers:1 completion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_3;
  v3[3] = &unk_1E8782720;
  objc_copyWeak(&v6, (a1 + 48));
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  v7 = *(a1 + 56);
  [WeakRetained addOperationToServiceQueue:v3];

  objc_destroyWeak(&v6);
}

void __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v46 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_4;
    v37[3] = &unk_1E8782608;
    v39 = v45;
    v38 = *(a1 + 40);
    v40 = &v41;
    v8 = MEMORY[0x1E692E2E0](v37);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_125;
    v35[3] = &unk_1E8782658;
    v9 = v8;
    v36 = v9;
    v10 = MEMORY[0x1E692E2E0](v35);
    v11 = v10;
    if (v5)
    {
      v25 = v6;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_128;
      v31[3] = &unk_1E87826D0;
      v12 = v10;
      v33 = v12;
      v13 = WeakRetained;
      v32 = v13;
      v34 = v9;
      v14 = MEMORY[0x1E692E2E0](v31);
      v15 = [*(a1 + 32) absoluteString];
      v16 = [v15 isEqualToString:UIDocumentBrowserDownloadsFolderPlaceholderPath];

      if (v16)
      {
        v17 = [v5 remoteObjectProxyWithErrorHandler:v12];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_133;
        v29[3] = &unk_1E87826F8;
        v30 = v14;
        [v17 _revealSymbolicLocation:0 completion:v29];
        v18 = v30;
      }

      else
      {
        v21 = [*(a1 + 32) startAccessingSecurityScopedResource];
        *(v42 + 24) = v21;
        v22 = *(a1 + 32);
        v28 = 0;
        v18 = [v13 _sandboxingURLWrapperForURL:v22 readonly:1 error:&v28];
        v17 = v28;
        if (v18)
        {
          v23 = [v5 remoteObjectProxyWithErrorHandler:v12];
          v24 = *(a1 + 56);
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_2_134;
          v26[3] = &unk_1E87826F8;
          v27 = v14;
          [v23 _revealDocumentAtURL:v18 importIfNeeded:v24 completion:v26];
        }

        else
        {
          (*(v12 + 2))(v12, v17);
        }
      }

      v6 = v25;
    }

    else
    {
      v19 = MEMORY[0x1E699A450];
      v20 = *MEMORY[0x1E699A450];
      if (!*MEMORY[0x1E699A450])
      {
        DOCInitLogging();
        v20 = *v19;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_3_cold_1();
      }

      v11[2](v11, 0);
    }

    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(v45, 8);
  }
}

void __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = *(a1 + 32);
  v7 = v10;
  v11 = v6;
  v8 = v6;
  v9 = v5;
  DOCRunInMainThread();
}

void __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_5(void *a1)
{
  v1 = *(a1[7] + 8);
  if (*(v1 + 24) == 1)
  {
    v2 = MEMORY[0x1E699A450];
    v3 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v3 = *v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_5_cold_1();
    }
  }

  else
  {
    *(v1 + 24) = 1;
    (*(a1[6] + 16))();
    v5 = *(a1[8] + 8);
    if (*(v5 + 24) == 1)
    {
      *(v5 + 24) = 0;
      v6 = a1[4];

      [v6 stopAccessingSecurityScopedResource];
    }
  }
}

void __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_125(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  DOCRunInMainThread();
}

void __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_2_126(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.DocumentManager" code:1 userInfo:0];
  }

  v4 = v3;
  v5 = MEMORY[0x1E699A450];
  v6 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_2_126_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_128(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v10 = a1[5];
  v9 = a1[4];
  v11 = a1[6];
  v6 = v5;
  v7 = v8;
  DOCRunInMainThread();
}

void __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_2_129(uint64_t a1)
{
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v2 = *(*(a1 + 56) + 16);

    v2();
  }

  else
  {
    v3 = MEMORY[0x1E699A450];
    v4 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_2_129_cold_1();
    }

    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) configuration];
    v7 = [v6 interactionModeForPreparing];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_130;
    v8[3] = &unk_1E8782680;
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v9 = *(a1 + 40);
    [v5 prepareForMode:v7 usingBookmark:1 completionBlock:v8];
  }
}

void __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_130(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v6 = [*(a1 + 32) fileURL];
    (*(v3 + 16))(v3, v6, 0);
  }

  else
  {
    v4 = MEMORY[0x1E699A450];
    v5 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_130_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UIDocumentBrowserViewController *)self clearCurrentOpenInteraction];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15.receiver = self;
    v15.super_class = UIDocumentBrowserViewController;
    [(UIDocumentBrowserViewController *)&v15 presentViewController:v8 animated:v6 completion:v9];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__UIDocumentBrowserViewController_presentViewController_animated_completion___block_invoke;
    v10[3] = &unk_1E8782770;
    v11 = v8;
    v14 = v6;
    v12 = self;
    v13 = v9;
    [(UIDocumentBrowserViewController *)self dismissAllPresentedViewControllers:v6 completion:v10];
  }
}

void __77__UIDocumentBrowserViewController_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  DOCRunInMainThread();
}

id __77__UIDocumentBrowserViewController_presentViewController_animated_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = *(a1 + 48);
  v5.receiver = *(a1 + 40);
  v5.super_class = UIDocumentBrowserViewController;
  return objc_msgSendSuper2(&v5, sel_presentViewController_animated_completion_, v1, v2, v3);
}

- (void)dismissAllPresentedViewControllers:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  if ([(UIDocumentBrowserViewController *)self _expectsRemoteViewController])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81__UIDocumentBrowserViewController_dismissAllPresentedViewControllers_completion___block_invoke;
    v7[3] = &unk_1E87827C0;
    v8 = v6;
    v9 = a3;
    [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v7];
  }

  else
  {
    v6[2](v6);
  }
}

void __81__UIDocumentBrowserViewController_dismissAllPresentedViewControllers_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__UIDocumentBrowserViewController_dismissAllPresentedViewControllers_completion___block_invoke_2;
  v16[3] = &unk_1E8782798;
  v18 = v19;
  v17 = *(a1 + 32);
  v7 = MEMORY[0x1E692E2E0](v16);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__UIDocumentBrowserViewController_dismissAllPresentedViewControllers_completion___block_invoke_4;
  v14[3] = &unk_1E8782658;
  v8 = v7;
  v15 = v8;
  v9 = [v5 remoteObjectProxyWithErrorHandler:v14];
  v10 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__UIDocumentBrowserViewController_dismissAllPresentedViewControllers_completion___block_invoke_138;
  v12[3] = &unk_1E87823C0;
  v11 = v8;
  v13 = v11;
  [v9 _dismissAllPresentedViewControllers:v10 completion:v12];

  _Block_object_dispose(v19, 8);
}

void __81__UIDocumentBrowserViewController_dismissAllPresentedViewControllers_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = v2;
  DOCRunInMainThread();
}

uint64_t __81__UIDocumentBrowserViewController_dismissAllPresentedViewControllers_completion___block_invoke_3(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __81__UIDocumentBrowserViewController_dismissAllPresentedViewControllers_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E699A450];
  v5 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[UIDocumentBrowserViewController dismissAllPresentedViewControllers:completion:]_block_invoke_4";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1E57D8000, v5, OS_LOG_TYPE_INFO, "%s XPC error calling _dismissAllPresentedViewControllers: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_beginTransitionCoordinatorSessionForDocumentURL:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(UIDocumentBrowserTransitionController *)self->_uipTransitionCoordinator isCoordinatingForURL:v4])
  {
    v5 = MEMORY[0x1E699A450];
    v6 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&dword_1E57D8000, v6, OS_LOG_TYPE_INFO, "Beginning UIP transition to open document: %@", buf, 0xCu);
    }

    v7 = [UIDocumentBrowserTransitionController alloc];
    serviceProxy = self->_serviceProxy;
    v9 = [(UIDocumentBrowserViewController *)self view];
    v10 = [(UIDocumentBrowserTransitionController *)v7 initWithItemURL:v4 documentBrowserProxy:serviceProxy referenceView:v9];

    objc_storeStrong(&self->_uipTransitionCoordinator, v10);
    v11 = dispatch_time(0, 30000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__UIDocumentBrowserViewController__beginTransitionCoordinatorSessionForDocumentURL___block_invoke;
    block[3] = &unk_1E87827E8;
    block[4] = self;
    v14 = v10;
    v15 = v4;
    v12 = v10;
    dispatch_after(v11, MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __84__UIDocumentBrowserViewController__beginTransitionCoordinatorSessionForDocumentURL___block_invoke(uint64_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 1024) == *(result + 40))
  {
    v1 = result;
    v2 = MEMORY[0x1E699A450];
    v3 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v3 = *v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(v1 + 48);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1E57D8000, v3, OS_LOG_TYPE_INFO, "Timeout waiting for UIP transition to open document: %@", &v5, 0xCu);
    }

    return [*(v1 + 32) _endTransitionCoordinatorSession];
  }

  return result;
}

- (void)_endTransitionCoordinatorSession
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_uipTransitionCoordinator)
  {
    v3 = MEMORY[0x1E699A450];
    v4 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      uipTransitionCoordinator = self->_uipTransitionCoordinator;
      v6 = v4;
      v7 = [(UIDocumentBrowserTransitionController *)uipTransitionCoordinator itemURL];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1E57D8000, v6, OS_LOG_TYPE_INFO, "Ending UIP transition to open document: %@", &v9, 0xCu);
    }

    [(UIDocumentBrowserTransitionController *)self->_uipTransitionCoordinator setLoadingProgress:0];
    [(UIDocumentBrowserTransitionController *)self->_uipTransitionCoordinator setTargetView:0];
    v8 = self->_uipTransitionCoordinator;
    self->_uipTransitionCoordinator = 0;

    [(UIDocumentBrowserViewController *)self clearCurrentOpenInteraction];
  }
}

- (UIDocumentBrowserTransitionController)transitionControllerForDocumentAtURL:(NSURL *)documentURL
{
  v4 = documentURL;
  uipTransitionCoordinator = self->_uipTransitionCoordinator;
  if (uipTransitionCoordinator && [(UIDocumentBrowserTransitionController *)uipTransitionCoordinator isCoordinatingForURL:v4])
  {
    v6 = self->_uipTransitionCoordinator;
  }

  else
  {
    v7 = [UIDocumentBrowserTransitionController alloc];
    serviceProxy = self->_serviceProxy;
    v9 = [(UIDocumentBrowserViewController *)self view];
    v6 = [(UIDocumentBrowserTransitionController *)v7 initWithItemURL:v4 documentBrowserProxy:serviceProxy referenceView:v9];
  }

  return v6;
}

- (void)importDocumentAtURL:(NSURL *)documentURL nextToDocumentAtURL:(NSURL *)neighbourURL mode:(UIDocumentBrowserImportMode)importMode completionHandler:(void *)completion
{
  v10 = completion;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &__block_literal_global_141;
  }

  v12 = v11;
  [(UIDocumentBrowserViewController *)self _importDocumentAtURL:documentURL neighbourURL:neighbourURL mode:importMode completionHandler:?];
}

- (void)importDocumentAtURL:(id)a3 byMoving:(BOOL)a4 toCurrentBrowserLocationWithCompletion:(id)a5
{
  if (a4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [(UIDocumentBrowserViewController *)self _importDocumentAtURL:a3 neighbourURL:0 mode:v6 completionHandler:a5];
}

- (void)_importDocumentAtURL:(id)a3 neighbourURL:(id)a4 mode:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(UIDocumentBrowserViewController *)self configuration];
  v14 = [v13 inProcess];

  if (v14)
  {
    if (v11)
    {
      [(UIDocumentBrowserViewController *)self importDocumentAtURL:v10 nextToDocumentAtURL:v11 mode:a5 completionHandler:v12];
    }

    else
    {
      [(UIDocumentBrowserViewController *)self importDocumentAtURL:v10 mode:a5 toCurrentBrowserLocationWithCompletion:v12];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    [(UIDocumentBrowserViewController *)self _ensurePreparedForAPIRequringXPC];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke;
    v15[3] = &unk_1E87828D8;
    objc_copyWeak(v19, &location);
    v20 = a5 == 2;
    v16 = v10;
    v18 = v12;
    v17 = v11;
    v19[1] = a5;
    [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v15];

    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }
}

void __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);
    v50[0] = 0;
    v8 = [WeakRetained _sandboxingURLWrapperForURL:v7 readonly:(v6 & 1) == 0 error:v50];
    v9 = v50[0];
    if (v8)
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke_2;
      v47[3] = &unk_1E8782860;
      v48 = *(a1 + 48);
      v49 = *(a1 + 72);
      v10 = MEMORY[0x1E692E2E0](v47);
      v11 = *(a1 + 40);
      if (v11)
      {
        v12 = [v11 startAccessingSecurityScopedResource];
        v13 = *(a1 + 40);
        v46 = 0;
        v25 = [v5 _sandboxingURLWrapperForURL:v13 readonly:1 error:&v46];
        v14 = v46;
        if (v14)
        {
          v38 = MEMORY[0x1E69E9820];
          v39 = 3221225472;
          v40 = __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke_2_143;
          v41 = &unk_1E8782770;
          v24 = &v42;
          v42 = *(a1 + 40);
          v15 = &v44;
          v44 = v10;
          v43 = v14;
          v45 = v12;
          DOCRunInMainThread();
          v16 = v43;
          v17 = v25;
        }

        else
        {
          v34[0] = MEMORY[0x1E69E9820];
          v34[1] = 3221225472;
          v34[2] = __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke_144;
          v34[3] = &unk_1E8782888;
          v24 = &v36;
          v21 = v10;
          v36 = v21;
          v37 = v12;
          v35 = *(a1 + 40);
          v16 = [v3 remoteObjectProxyWithErrorHandler:v34];
          objc_storeStrong(v5 + 127, *(a1 + 32));
          v23 = *(a1 + 64);
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke_2_145;
          v30[3] = &unk_1E87828B0;
          v22 = v21;
          v15 = &v35;
          v32 = v22;
          v33 = v12;
          v31 = *(a1 + 40);
          v17 = v25;
          [v16 _importDocumentAtURLWrapper:v8 nextToDocumentAtURLWrapper:v25 mode:v23 completionHandler:v30];
        }
      }

      else
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke_3_146;
        v28[3] = &unk_1E8782658;
        v18 = v10;
        v29 = v18;
        v19 = [v3 remoteObjectProxyWithErrorHandler:v28];
        objc_storeStrong(v5 + 127, *(a1 + 32));
        v20 = *(a1 + 64);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke_4;
        v26[3] = &unk_1E87826F8;
        v27 = v18;
        [v19 _importDocumentAtURLWrapper:v8 mode:v20 toCurrentBrowserLocationWithCompletion:v26];

        v14 = v29;
      }
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

void __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 32))
  {
    v8 = v6;
    v9 = v5;
    v10 = *(a1 + 32);
    DOCRunInMainThread();
  }
}

void __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    v3 = MEMORY[0x1E699A450];
    v4 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E57D8000, v4, OS_LOG_TYPE_INFO, "prepareForMode: _importDocumentAtURL with usingBookmark == YES", buf, 2u);
    }

    if (*(a1 + 56))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke_142;
    v7[3] = &unk_1E8782810;
    v6 = *(a1 + 40);
    v9 = *(a1 + 48);
    v8 = *(a1 + 40);
    [v6 prepareForMode:v5 usingBookmark:1 completionBlock:v7];
  }
}

void __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke_142(uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v5 = [*(a1 + 32) fileURL];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4, 0, 0);
  }
}

uint64_t __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke_2_143(uint64_t a1)
{
  v2 = MEMORY[0x1E699A450];
  v3 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke_2_143_cold_1();
  }

  result = (*(*(a1 + 48) + 16))();
  if (*(a1 + 56) == 1)
  {
    return [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  return result;
}

uint64_t __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke_144(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 stopAccessingSecurityScopedResource];
  }

  return result;
}

uint64_t __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke_2_145(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 stopAccessingSecurityScopedResource];
  }

  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIDocumentBrowserViewController;
  [(UIDocumentBrowserViewController *)&v4 viewWillAppear:a3];
  [(UIDocumentBrowserViewController *)self _checkIfObservedUIPPresentationControllerDetentDidChangeForReason:@"initial state check (viewWillAppear)"];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = UIDocumentBrowserViewController;
  v7 = a4;
  [(UIDocumentBrowserViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[4] = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__UIDocumentBrowserViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E8782900;
  v9[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__UIDocumentBrowserViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_1E8782900;
  [v7 animateAlongsideTransition:v9 completion:v8];
}

void __86__UIDocumentBrowserViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) activityViewController];

  if (v4)
  {
    v5 = MEMORY[0x1E699A450];
    v6 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1E57D8000, v6, OS_LOG_TYPE_DEFAULT, "viewWillTransitionToSize performed with the activity VC on screen. Asking for new frames.", buf, 2u);
    }

    v7 = [*(a1 + 32) activityViewController];
    objc_initWeak(buf, *(a1 + 32));
    v8 = [*(a1 + 32) activityViewController];
    v9 = [v8 popoverTracker];

    v10 = *(a1 + 32);
    if (v9)
    {
      v11 = [v10 activityViewController];
      v12 = [v11 popoverTracker];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __86__UIDocumentBrowserViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_158;
      v19[3] = &unk_1E8782950;
      v20 = v7;
      objc_copyWeak(&v21, buf);
      [v12 getFrameForRegion:0 waitForNewThumbnail:0 completionBlock:v19];

      objc_destroyWeak(&v21);
      v13 = v20;
    }

    else
    {
      v14 = [v10 activityViewController];
      v15 = [v14 barButtonItem];

      if (!v15)
      {
LABEL_11:
        objc_destroyWeak(buf);

        goto LABEL_12;
      }

      v13 = [*(a1 + 32) activityViewController];
      v16 = [v13 barButtonItem];
      v17 = [*(a1 + 32) activityViewController];
      v18 = [v17 popoverPresentationController];
      [v18 setBarButtonItem:v16];
    }

    goto LABEL_11;
  }

LABEL_12:
}

void __86__UIDocumentBrowserViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_158(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = *(a1 + 32);
  v11[1] = *&a2;
  v11[2] = *&a3;
  v11[3] = *&a4;
  v11[4] = *&a5;
  objc_copyWeak(v11, (a1 + 40));
  DOCRunInMainThread();
  objc_destroyWeak(v11);
}

void __86__UIDocumentBrowserViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2_159(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E699A450];
  v3 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 popoverPresentationController];
    [v6 sourceRect];
    v7 = NSStringFromCGRect(v21);
    v8 = NSStringFromCGRect(*(a1 + 48));
    v14 = 138412802;
    v15 = v4;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_1E57D8000, v5, OS_LOG_TYPE_DEFAULT, "new popover location retrieved updating location on targetController %@ from: %@ to: %@", &v14, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = [*(a1 + 32) popoverPresentationController];
    [v10 setSourceRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    v11 = [v10 barButtonItem];
    if (v11)
    {
    }

    else
    {
      v12 = [v10 sourceView];

      if (!v12)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    v13 = [*(a1 + 32) popoverPresentationController];
    [v13 containerViewWillLayoutSubviews];

    goto LABEL_10;
  }

LABEL_11:
}

- (void)applicationDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E699A450];
  v6 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1E57D8000, v6, OS_LOG_TYPE_DEFAULT, "Application did become active.", v10, 2u);
  }

  v7 = [(UIDocumentBrowserViewController *)self configuration];
  v8 = [v7 inProcess];

  if ((v8 & 1) == 0)
  {
    v9 = [(UIDocumentBrowserViewController *)self presentedViewController];

    if (!v9)
    {
      [(UIDocumentBrowserViewController *)self _establishFirstResponderOnServiceSideForKeyCommand:0];
    }
  }
}

- (void)remoteViewControllerDidTerminateViewServiceWithError:(id)a3
{
  v4 = a3;
  remoteViewController = self->_remoteViewController;
  self->_remoteViewController = 0;

  serviceProxy = self->_serviceProxy;
  self->_serviceProxy = 0;

  [(NSOperationQueue *)self->_serviceQueue setSuspended:1];
  v7 = MEMORY[0x1E699A450];
  if (self->_urlCurrentlyBeingImported)
  {
    v8 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [UIDocumentBrowserViewController remoteViewControllerDidTerminateViewServiceWithError:];
    }

    [(UIDocumentBrowserViewController *)self _failedToImportDocumentAtURL:self->_urlCurrentlyBeingImported error:v4];
    urlCurrentlyBeingImported = self->_urlCurrentlyBeingImported;
    self->_urlCurrentlyBeingImported = 0;
  }

  v10 = [MEMORY[0x1E695DF00] date];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __88__UIDocumentBrowserViewController_remoteViewControllerDidTerminateViewServiceWithError___block_invoke;
  v19[3] = &unk_1E8782978;
  v11 = v10;
  v20 = v11;
  v12 = MEMORY[0x1E692E2E0](v19);
  v13 = v12[2]();
  if (DOCViewServiceRecoveryAttemptTimeThreshold_onceToken != -1)
  {
    [UIDocumentBrowserViewController remoteViewControllerDidTerminateViewServiceWithError:];
  }

  if (v13 <= *&DOCViewServiceRecoveryAttemptTimeThreshold_interval)
  {
    v14 = remoteViewControllerDidTerminateViewServiceWithError__remoteViewControllerRecoveryAttempts + 1;
  }

  else
  {
    v14 = 1;
  }

  remoteViewControllerDidTerminateViewServiceWithError__remoteViewControllerRecoveryAttempts = v14;
  objc_storeStrong(&remoteViewControllerDidTerminateViewServiceWithError__lastRemoteViewControllerRecoveryAttempt, v10);
  v15 = *v7;
  if (remoteViewControllerDidTerminateViewServiceWithError__remoteViewControllerRecoveryAttempts < 4)
  {
    if (!v15)
    {
      DOCInitLogging();
      v15 = *v7;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [UIDocumentBrowserViewController remoteViewControllerDidTerminateViewServiceWithError:];
    }

    [(UIDocumentBrowserViewController *)self _clearShownViewControllers];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __88__UIDocumentBrowserViewController_remoteViewControllerDidTerminateViewServiceWithError___block_invoke_163;
    v18[3] = &unk_1E87829A0;
    v18[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v18);
  }

  else
  {
    if (!v15)
    {
      DOCInitLogging();
      v15 = *v7;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [UIDocumentBrowserViewController remoteViewControllerDidTerminateViewServiceWithError:];
    }

    v16 = [(UIDocumentBrowserViewController *)self configuration];
    v17 = [v16 isPickerUI];

    if (v17)
    {
      [(UIDocumentBrowserViewController *)self dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      [(UIDocumentBrowserViewController *)self _showErrorViewController];
    }
  }
}

double __88__UIDocumentBrowserViewController_remoteViewControllerDidTerminateViewServiceWithError___block_invoke(uint64_t a1)
{
  if (remoteViewControllerDidTerminateViewServiceWithError__lastRemoteViewControllerRecoveryAttempt)
  {
    v2 = remoteViewControllerDidTerminateViewServiceWithError__lastRemoteViewControllerRecoveryAttempt;
  }

  else
  {
    v2 = [MEMORY[0x1E695DF00] distantPast];
  }

  v3 = v2;
  [*(a1 + 32) timeIntervalSinceDate:v2];
  v5 = v4;

  return v5;
}

- (NSArray)allowedContentTypes
{
  v2 = MEMORY[0x1E6982C38];
  v3 = [(UIDocumentBrowserViewController *)self configuration];
  v4 = [v3 documentContentTypes];
  v5 = [v2 doc_identifiersForContentTypes:v4];

  return v5;
}

- (NSArray)recentDocumentsContentTypes
{
  v2 = MEMORY[0x1E6982C38];
  v3 = [(UIDocumentBrowserViewController *)self configuration];
  v4 = [v3 recentDocumentsContentTypes];
  v5 = [v2 doc_identifiersForContentTypes:v4];

  return v5;
}

- (NSArray)contentTypesForRecentDocuments
{
  v2 = [(UIDocumentBrowserViewController *)self configuration];
  v3 = [v2 recentDocumentsContentTypes];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (void)setAdditionalLeadingNavigationBarButtonItems:(NSArray *)additionalLeadingNavigationBarButtonItems
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = additionalLeadingNavigationBarButtonItems;
  v6 = MEMORY[0x1E699A450];
  v7 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    *buf = 134217984;
    v29 = [(NSArray *)v5 count];
    _os_log_impl(&dword_1E57D8000, v8, OS_LOG_TYPE_INFO, "setAdditionalLeadingNavigationBarButtonItems for %lu buttons", buf, 0xCu);
  }

  objc_storeStrong(&self->_additionalLeadingNavigationBarButtonItems, additionalLeadingNavigationBarButtonItems);
  v9 = [(UIDocumentBrowserViewController *)self configuration];
  v10 = [v9 inProcess];

  if ((v10 & 1) == 0)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = self->_leadingBarButtonTrackingViews;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = *v24;
      do
      {
        v14 = 0;
        do
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v23 + 1) + 8 * v14++) removeFromSuperview];
        }

        while (v12 != v14);
        v12 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    v21 = 0;
    v22 = 0;
    [(UIDocumentBrowserViewController *)self getTrackingViews:&v22 remoteButtons:&v21 fromBarButtons:v5];
    v15 = v22;
    v16 = v22;
    v17 = v21;
    v18 = v21;
    objc_storeStrong(&self->_leadingBarButtonTrackingViews, v15);
    objc_storeStrong(&self->_remoteAdditionalLeadingNavigationBarButtonItems, v17);
    objc_initWeak(buf, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__UIDocumentBrowserViewController_setAdditionalLeadingNavigationBarButtonItems___block_invoke;
    v19[3] = &unk_1E87829C8;
    objc_copyWeak(&v20, buf);
    [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

void __80__UIDocumentBrowserViewController_setAdditionalLeadingNavigationBarButtonItems___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained remoteAdditionalLeadingNavigationBarButtonItems];
    [v6 _setAdditionalLeadingNavigationBarButtonItems:v5];
  }
}

- (void)setAdditionalTrailingNavigationBarButtonItems:(NSArray *)additionalTrailingNavigationBarButtonItems
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = additionalTrailingNavigationBarButtonItems;
  objc_storeStrong(&self->_additionalTrailingNavigationBarButtonItems, additionalTrailingNavigationBarButtonItems);
  v6 = [(UIDocumentBrowserViewController *)self configuration];
  v7 = [v6 inProcess];

  if ((v7 & 1) == 0)
  {
    v8 = MEMORY[0x1E699A450];
    v9 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      *buf = 134217984;
      v29 = [(NSArray *)v5 count];
      _os_log_impl(&dword_1E57D8000, v10, OS_LOG_TYPE_INFO, "setAdditionalTrailingNavigationBarButtonItems for %lu button", buf, 0xCu);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = self->_trailingBarButtonTrackingViews;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = *v24;
      do
      {
        v14 = 0;
        do
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v23 + 1) + 8 * v14++) removeFromSuperview];
        }

        while (v12 != v14);
        v12 = [(NSArray *)v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    v21 = 0;
    v22 = 0;
    [(UIDocumentBrowserViewController *)self getTrackingViews:&v22 remoteButtons:&v21 fromBarButtons:v5];
    v15 = v22;
    v16 = v22;
    v17 = v21;
    v18 = v21;
    objc_storeStrong(&self->_trailingBarButtonTrackingViews, v15);
    objc_storeStrong(&self->_remoteAdditionalTrailingNavigationBarButtonItems, v17);
    objc_initWeak(buf, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __81__UIDocumentBrowserViewController_setAdditionalTrailingNavigationBarButtonItems___block_invoke;
    v19[3] = &unk_1E87829C8;
    objc_copyWeak(&v20, buf);
    [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

void __81__UIDocumentBrowserViewController_setAdditionalTrailingNavigationBarButtonItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = MEMORY[0x1E699A450];
    v6 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E57D8000, v6, OS_LOG_TYPE_INFO, "setAdditionalTrailingNavigationBarButtonItems: sending to service", v8, 2u);
    }

    v7 = [WeakRetained remoteAdditionalTrailingNavigationBarButtonItems];
    [v3 _setAdditionalTrailingNavigationBarButtonItems:v7];
  }
}

- (void)setCustomActions:(NSArray *)customActions
{
  v4 = customActions;
  v5 = [(NSArray *)v4 copy];
  v6 = self->_customActions;
  self->_customActions = v5;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__UIDocumentBrowserViewController_setCustomActions___block_invoke;
  v8[3] = &unk_1E87823E8;
  v9 = v4;
  v7 = v4;
  [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v8];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = [(UIDocumentBrowserViewController *)self allowsDocumentCreation];
    v6 = obj;
    if (v5)
    {
      v7 = [(UIDocumentBrowserViewController *)self viewIfLoaded];

      v6 = obj;
      if (v7)
      {
        v8 = [(UIDocumentBrowserViewController *)self documentCreationController];
        [v8 warnIfNoValidCreationHandler];

        v6 = obj;
      }
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setAllowsPickingMultipleItems:(BOOL)allowsPickingMultipleItems
{
  self->_allowsPickingMultipleItems = allowsPickingMultipleItems;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__UIDocumentBrowserViewController_setAllowsPickingMultipleItems___block_invoke;
  v3[3] = &__block_descriptor_33_e88_v24__0___DOCServiceDocumentBrowserViewControllerInterface__8__DOCRemoteViewController_16l;
  v4 = allowsPickingMultipleItems;
  [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v3];
}

- (void)setAllowsDocumentCreation:(BOOL)allowsDocumentCreation
{
  if (allowsDocumentCreation)
  {
    v4 = [(UIDocumentBrowserViewController *)self documentCreationController];
    v5 = [v4 hasCreationHandlerWithoutValidatingMethodRequirements];

    if (v5)
    {
      v6 = [(UIDocumentBrowserViewController *)self documentCreationController];
      [v6 warnIfNoValidCreationHandler];

      v7 = [(UIDocumentBrowserViewController *)self documentCreationController];
      v8 = [v7 hasCreationHandlerWithRequiredMethods];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  self->_allowsDocumentCreation = v8;

  [(UIDocumentBrowserViewController *)self _updateAppearanceShowsCreateButton];
}

- (void)setDefaultDocumentAspectRatio:(CGFloat)defaultDocumentAspectRatio
{
  [(DOCAppearance *)self->_appearance defaultDocumentAspectRatio];
  if (v5 != defaultDocumentAspectRatio)
  {
    v6 = [(DOCAppearance *)self->_appearance copy];
    [v6 setDefaultDocumentAspectRatio:defaultDocumentAspectRatio];
    [(UIDocumentBrowserViewController *)self effectiveAppearanceDidChange:v6];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__UIDocumentBrowserViewController_setDefaultDocumentAspectRatio___block_invoke;
  v7[3] = &__block_descriptor_40_e88_v24__0___DOCServiceDocumentBrowserViewControllerInterface__8__DOCRemoteViewController_16l;
  *&v7[4] = defaultDocumentAspectRatio;
  [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v7];
}

- (void)setLocalizedCreateDocumentActionTitle:(NSString *)localizedCreateDocumentActionTitle
{
  v4 = localizedCreateDocumentActionTitle;
  v5 = [(DOCAppearance *)self->_appearance collectionCreateButtonTitle];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(DOCAppearance *)self->_appearance copy];
    [v7 setCollectionCreateButtonTitle:v4];
    [(UIDocumentBrowserViewController *)self effectiveAppearanceDidChange:v7];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__UIDocumentBrowserViewController_setLocalizedCreateDocumentActionTitle___block_invoke;
  v9[3] = &unk_1E87823E8;
  v10 = v4;
  v8 = v4;
  [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v9];
}

- (void)setBrowserHostedCreateDocumentsMenu:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_browserHostedCreateDocumentsMenu, a3);
  [(UIDocumentBrowserViewController *)self _updateAppearanceShowsCreateButton];
  v6 = [(UIDocumentBrowserViewController *)self configuration];
  v7 = [v6 inProcess];

  if ((v7 & 1) == 0)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__UIDocumentBrowserViewController_setBrowserHostedCreateDocumentsMenu___block_invoke;
    v8[3] = &unk_1E87829C8;
    objc_copyWeak(&v9, &location);
    [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __71__UIDocumentBrowserViewController_setBrowserHostedCreateDocumentsMenu___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained browserHostedCreateDocumentsMenu];
    [v6 _setBrowserHostedCreateDocumentsMenu:v5];
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = UIDocumentBrowserViewController;
  v6 = a3;
  [(UIDocumentBrowserViewController *)&v8 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  if (v6)
  {
    [(UIDocumentBrowserViewController *)self updateBackgroundColor:v8.receiver];
    [(UIDocumentBrowserViewController *)self _beginMonitoringUIPPresentationController];
  }

  else
  {
    [(UIDocumentBrowserViewController *)self _endMonitoringUIPPresentationController:v8.receiver];
  }

  v7 = [v6 rootViewController];

  if (v7 == self)
  {
    [(UIDocumentBrowserViewController *)self _doc_endDelayingRemotePresentation];
  }
}

- (void)setBrowserUserInterfaceStyle:(UIDocumentBrowserUserInterfaceStyle)browserUserInterfaceStyle
{
  if ([(DOCAppearance *)self->_appearance browserUserInterfaceStyle]!= browserUserInterfaceStyle)
  {
    [(UIDocumentBrowserViewController *)self setOverrideUserInterfaceStyle:2 * (browserUserInterfaceStyle == UIDocumentBrowserUserInterfaceStyleDark)];
    v5 = [(DOCAppearance *)self->_appearance copy];
    [v5 setBrowserUserInterfaceStyle:browserUserInterfaceStyle];
    [(UIDocumentBrowserViewController *)self effectiveAppearanceDidChange:v5];
  }
}

- (void)setShouldShowFileExtensions:(BOOL)shouldShowFileExtensions
{
  v3 = shouldShowFileExtensions;
  if ([(DOCAppearance *)self->_appearance shouldShowFileExtensions]!= shouldShowFileExtensions)
  {
    v5 = [(DOCAppearance *)self->_appearance copy];
    [v5 setShouldShowFileExtensions:v3];
    [(UIDocumentBrowserViewController *)self effectiveAppearanceDidChange:v5];
  }
}

- (id)_unavailableConfigurationForTryAgain
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = _DocumentManagerBundle();
    v6 = [v7 localizedStringForKey:@"Error [UIDocumentBrowserViewController view service error]" value:@"Error" table:@"Localizable"];
  }

  v8 = _DocumentManagerBundle();
  v9 = [v8 localizedStringForKey:@"Something went wrong while displaying documents." value:@"Something went wrong while displaying documents." table:@"Localizable"];

  v10 = [MEMORY[0x1E69DC8C8] emptyConfiguration];
  [v10 setText:v6];
  [v10 setSecondaryText:v9];
  if ([(UIDocumentBrowserViewController *)self enclosedInUIPDocumentLanding])
  {
    v11 = objc_alloc(MEMORY[0x1E69DD298]);
    v12 = [MEMORY[0x1E69DC730] effectWithStyle:8];
    v13 = [v11 initWithEffect:v12];
    v14 = [v10 background];
    [v14 setCustomView:v13];
  }

  v15 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v16 = _DocumentManagerBundle();
  v17 = [v16 localizedStringForKey:@"Try Again" value:@"Try Again" table:@"Localizable"];
  [v15 setTitle:v17];

  v18 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v15 setBaseForegroundColor:v18];

  objc_initWeak(&location, self);
  [v10 setButton:v15];
  v19 = MEMORY[0x1E69DC628];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __71__UIDocumentBrowserViewController__unavailableConfigurationForTryAgain__block_invoke;
  v26 = &unk_1E8782A50;
  objc_copyWeak(&v27, &location);
  v20 = [v19 actionWithHandler:&v23];
  v21 = [v10 buttonProperties];
  [v21 setPrimaryAction:v20];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  return v10;
}

void __71__UIDocumentBrowserViewController__unavailableConfigurationForTryAgain__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didTapTryAgainButton];
}

- (void)_showErrorViewController
{
  [(UIDocumentBrowserViewController *)self _clearShownViewControllers];
  v3 = [(UIDocumentBrowserViewController *)self _unavailableConfigurationForTryAgain];
  [(UIDocumentBrowserViewController *)self setContentUnavailableConfiguration:v3];
}

- (void)_didTapTryAgainButton
{
  v4 = [(UIDocumentBrowserViewController *)self contentUnavailableConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v4 buttonProperties];
    [v3 setEnabled:0];

    [(UIDocumentBrowserViewController *)self setContentUnavailableConfiguration:v4];
  }

  [(UIDocumentBrowserViewController *)self _showDocumentBrowserViewController:1];
}

- (void)_showDocumentBrowserViewController:(BOOL)a3
{
  v3 = a3;
  [(UIDocumentBrowserViewController *)self _clearShownViewControllers];
  [(UIDocumentBrowserViewController *)self _embedDocumentBrowserViewController];
  [(UIDocumentBrowserViewController *)self setAllowsDocumentCreation:[(UIDocumentBrowserViewController *)self allowsDocumentCreation]];
  if (v3)
  {
    [(UIDocumentBrowserViewController *)self effectiveAppearanceDidChange:self->_appearance];
    [(UIDocumentBrowserViewController *)self setEditing:[(UIDocumentBrowserViewController *)self isEditing]];
    [(UIDocumentBrowserViewController *)self setAdditionalLeadingNavigationBarButtonItems:self->_additionalLeadingNavigationBarButtonItems];
    [(UIDocumentBrowserViewController *)self setAdditionalTrailingNavigationBarButtonItems:self->_additionalTrailingNavigationBarButtonItems];
    [(UIDocumentBrowserViewController *)self setBrowserHostedCreateDocumentsMenu:self->_browserHostedCreateDocumentsMenu];
    v5 = [(UIDocumentBrowserViewController *)self customActions];
    [(UIDocumentBrowserViewController *)self setCustomActions:v5];
  }
}

- (BOOL)_delegateRespondsToSelector:(SEL)a3
{
  v3 = [(UIDocumentBrowserViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (void)prepareItemBookmarks:(id)a3 usingBookmark:(BOOL)a4 completionBlock:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(UIDocumentBrowserViewController *)self configuration];
  -[UIDocumentBrowserViewController prepareItemBookmarks:forMode:usingBookmark:completionBlock:](self, "prepareItemBookmarks:forMode:usingBookmark:completionBlock:", v9, [v10 interactionModeForPreparing], v5, v8);
}

- (void)prepareItemBookmarks:(id)a3 forMode:(unint64_t)a4 usingBookmark:(BOOL)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__UIDocumentBrowserViewController_prepareItemBookmarks_forMode_usingBookmark_completionBlock___block_invoke;
  block[3] = &unk_1E8782AC8;
  v20 = a5;
  v16 = v10;
  v17 = self;
  v18 = v11;
  v19 = a4;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, block);
}

void __94__UIDocumentBrowserViewController_prepareItemBookmarks_forMode_usingBookmark_completionBlock___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = dispatch_group_create();
  v15 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 32);
  v16 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v14 = *v25;
    do
    {
      v3 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v24 + 1) + 8 * v3);
        dispatch_group_enter(v2);
        v5 = *(a1 + 56);
        v6 = *(a1 + 64);
        v7 = [*(a1 + 40) configuration];
        v8 = [v7 shouldConvert];
        v9 = [*(a1 + 40) configuration];
        v10 = [v9 allowedConversions];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __94__UIDocumentBrowserViewController_prepareItemBookmarks_forMode_usingBookmark_completionBlock___block_invoke_2;
        v20[3] = &unk_1E8782A78;
        v21 = v15;
        v22 = v4;
        v23 = v2;
        [v4 prepareForMode:v5 usingBookmark:v6 shouldConvert:v8 conversionRules:v10 completionBlock:v20];

        ++v3;
      }

      while (v16 != v3);
      v16 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__UIDocumentBrowserViewController_prepareItemBookmarks_forMode_usingBookmark_completionBlock___block_invoke_3;
  block[3] = &unk_1E8782AA0;
  v11 = *(a1 + 48);
  v18 = v15;
  v19 = v11;
  v12 = v15;
  dispatch_group_notify(v2, MEMORY[0x1E69E96A0], block);
}

void __94__UIDocumentBrowserViewController_prepareItemBookmarks_forMode_usingBookmark_completionBlock___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    [*(a1 + 32) addObject:*(a1 + 40)];
    objc_sync_exit(v3);
  }

  v4 = *(a1 + 48);

  dispatch_group_leave(v4);
}

void __94__UIDocumentBrowserViewController_prepareItemBookmarks_forMode_usingBookmark_completionBlock___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (void)getTrackingViews:(id *)a3 remoteButtons:(id *)a4 fromBarButtons:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v6;
  v32 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v32)
  {
    v9 = *v34;
    v10 = 0x1E8781000uLL;
    v11 = 0x1E8781000uLL;
    v30 = *v34;
    do
    {
      v12 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [objc_alloc(*(v10 + 3368)) initWithBarButton:*(*(&v33 + 1) + 8 * v12)];
        v14 = objc_alloc(*(v11 + 3376));
        v15 = [v13 uuid];
        v16 = [v14 initWithUUID:v15];

        [v7 addObject:v13];
        [v8 addObject:v16];
        v17 = [v13 barButton];
        [v17 set_doc_ipi_view:v16];

        [(UIView *)self->_trackingViewsContainer addSubview:v16];
        v18 = *MEMORY[0x1E699A450];
        if (!*MEMORY[0x1E699A450])
        {
          DOCInitLogging();
          v18 = *MEMORY[0x1E699A450];
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = v18;
          [v13 uuid];
          v20 = v8;
          v21 = self;
          v23 = v22 = v7;
          [v23 UUIDString];
          v25 = v24 = v11;
          *buf = 138412290;
          v38 = v25;
          _os_log_impl(&dword_1E57D8000, v19, OS_LOG_TYPE_INFO, "getTrackingViews:remoteButtons:fromBarButtons: creating RemoteButton with uuid: %@", buf, 0xCu);

          v11 = v24;
          v7 = v22;
          self = v21;
          v8 = v20;
          v9 = v30;
          v10 = 0x1E8781000;
        }

        ++v12;
      }

      while (v32 != v12);
      v32 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v32);
  }

  v26 = v8;
  *a3 = v8;
  v27 = v7;
  *a4 = v7;
}

- (id)trackingViewForUUID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  [v5 addObjectsFromArray:self->_leadingBarButtonTrackingViews];
  [v5 addObjectsFromArray:self->_trailingBarButtonTrackingViews];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 uuid];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)remoteBarButtonForUUID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  [v5 addObjectsFromArray:self->_remoteAdditionalLeadingNavigationBarButtonItems];
  [v5 addObjectsFromArray:self->_remoteAdditionalTrailingNavigationBarButtonItems];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 uuid];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)addOperationToServiceQueue:(id)a3
{
  v4 = a3;
  v5 = [(UIDocumentBrowserViewController *)self configuration];
  v6 = [v5 inProcess];

  if ((v6 & 1) == 0)
  {
    serviceQueue = self->_serviceQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__UIDocumentBrowserViewController_addOperationToServiceQueue___block_invoke;
    v8[3] = &unk_1E8782AA0;
    v8[4] = self;
    v9 = v4;
    [(NSOperationQueue *)serviceQueue addOperationWithBlock:v8];
  }
}

void __62__UIDocumentBrowserViewController_addOperationToServiceQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) serviceProxy];
  v3 = [*(a1 + 32) remoteViewController];
  v4 = [v3 remoteViewController];
  (*(v2 + 16))(v2, v5, v4);
}

- (void)_displayActivityControllerWithItemBookmarks:(id)a3 popoverTracker:(id)a4 isContentManaged:(BOOL)a5 additionalActivities:(id)a6 activityProxy:(id)a7
{
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [(UIDocumentBrowserViewController *)self _activityViewControllerWithItemBookmarks:v12 isForTitleMenuFolderSharing:0 popoverTracker:v13 isContentManaged:v9 additionalActivities:v14 activityRunner:v15];
  v17 = v16;
  if (v13 && v16)
  {
    objc_initWeak(location, self);
    objc_storeWeak(&self->_activityViewController, v17);
    v20 = v17;
    v21 = v13;
    objc_copyWeak(&v22, location);
    DOCRunInMainThread();
    objc_destroyWeak(&v22);

    objc_destroyWeak(location);
  }

  else
  {
    v18 = MEMORY[0x1E699A450];
    v19 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1E57D8000, v19, OS_LOG_TYPE_DEFAULT, "Cannot present the activity view controller without a barButton or popoverTracker", location, 2u);
    }
  }
}

void __146__UIDocumentBrowserViewController__displayActivityControllerWithItemBookmarks_popoverTracker_isContentManaged_additionalActivities_activityProxy___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPopoverTracker:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __146__UIDocumentBrowserViewController__displayActivityControllerWithItemBookmarks_popoverTracker_isContentManaged_additionalActivities_activityProxy___block_invoke_2;
  v3[3] = &unk_1E8782B18;
  objc_copyWeak(&v5, (a1 + 56));
  v3[4] = *(a1 + 48);
  v4 = *(a1 + 32);
  [v2 getFrameForRegion:0 waitForNewThumbnail:0 completionBlock:v3];

  objc_destroyWeak(&v5);
}

void __146__UIDocumentBrowserViewController__displayActivityControllerWithItemBookmarks_popoverTracker_isContentManaged_additionalActivities_activityProxy___block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  objc_copyWeak(v11, (a1 + 48));
  v10 = *(a1 + 40);
  v11[1] = *&a2;
  v11[2] = *&a3;
  v11[3] = *&a4;
  v11[4] = *&a5;
  DOCRunInMainThread();

  objc_destroyWeak(v11);
}

void __146__UIDocumentBrowserViewController__displayActivityControllerWithItemBookmarks_popoverTracker_isContentManaged_additionalActivities_activityProxy___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v3 = [*(a1 + 32) configuration];
    v4 = [v3 isFilesApp];
    v5 = [v16 view];
    v6 = v5;
    if (v4)
    {
      v7 = [v5 window];

      v6 = v7;
    }

    v8 = [*(a1 + 40) popoverPresentationController];
    [v8 setSourceView:v6];

    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v12 = *(a1 + 80);
    v13 = [*(a1 + 40) popoverPresentationController];
    [v13 setSourceRect:{v9, v10, v11, v12}];

    v14 = *(a1 + 32);
    v15 = [*(a1 + 40) presentationController];
    [v14 manageOverrideIfNecessaryForPresentationController:v15];

    [v16 presentViewController:*(a1 + 40) animated:1 completion:0];
    WeakRetained = v16;
  }
}

- (BOOL)_shouldConsultDelegateShouldShowActivityViewControllerForItemBookmarks:(id)a3
{
  v4 = a3;
  v5 = [(UIDocumentBrowserViewController *)self configuration];
  v6 = [v5 documentContentTypes];

  v7 = [MEMORY[0x1E695DFA8] set];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __106__UIDocumentBrowserViewController__shouldConsultDelegateShouldShowActivityViewControllerForItemBookmarks___block_invoke;
  v19[3] = &unk_1E8782B68;
  v20 = v7;
  v8 = v7;
  [v4 enumerateObjectsUsingBlock:v19];

  v9 = [v8 allObjects];
  v10 = [v9 indexOfObjectPassingTest:&__block_literal_global_201];

  v11 = [v8 allObjects];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __106__UIDocumentBrowserViewController__shouldConsultDelegateShouldShowActivityViewControllerForItemBookmarks___block_invoke_3;
  v17[3] = &unk_1E8782BB0;
  v18 = v6;
  v12 = v6;
  v13 = [v11 indexOfObjectPassingTest:v17];

  v15 = v10 != 0x7FFFFFFFFFFFFFFFLL || v13 != 0x7FFFFFFFFFFFFFFFLL;
  return v15;
}

uint64_t __106__UIDocumentBrowserViewController__shouldConsultDelegateShouldShowActivityViewControllerForItemBookmarks___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentType];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

BOOL __106__UIDocumentBrowserViewController__shouldConsultDelegateShouldShowActivityViewControllerForItemBookmarks___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __106__UIDocumentBrowserViewController__shouldConsultDelegateShouldShowActivityViewControllerForItemBookmarks___block_invoke_4;
  v8[3] = &unk_1E8782BB0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

- (id)_activityViewControllerWithItemBookmarks:(id)a3 isForTitleMenuFolderSharing:(BOOL)a4 popoverTracker:(id)a5 isContentManaged:(BOOL)a6 additionalActivities:(id)a7 activityRunner:(id)a8
{
  v59 = a6;
  v83 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v58 = a5;
  v12 = a7;
  v68 = a8;
  v61 = v11;
  obj = v12;
  if ([DOCItemBookmark isAnyItemBookmarkAFault:v11]&& !DOCIsNetworkReachable())
  {
    if (!a4)
    {
      DOCAlertUserTheNetworkIsNotReachable(self);
    }

    goto LABEL_10;
  }

  if (a4 || ![(UIDocumentBrowserViewController *)self _shouldConsultDelegateShouldShowActivityViewControllerForItemBookmarks:v11])
  {
    goto LABEL_13;
  }

  v13 = [(UIDocumentBrowserViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if ((v14 & 1) == 0)
  {
    v19 = [(UIDocumentBrowserViewController *)self delegate];
    v20 = objc_opt_respondsToSelector();

    if ((v20 & 1) == 0)
    {
      goto LABEL_13;
    }

    v21 = [DOCItemBookmark documentsURLsForItemBookmarks:v11];
    v22 = [(UIDocumentBrowserViewController *)self delegate];
    v23 = [v22 documentBrowser:self shouldShowActivityViewControllerForDocumentURLs:v21 barButtonItem:0 popoverTracker:v58];

    if (v23)
    {
      goto LABEL_13;
    }

LABEL_10:
    v18 = 0;
    goto LABEL_44;
  }

  v15 = [DOCItemBookmark documentsURLsForItemBookmarks:v11];
  v16 = [(UIDocumentBrowserViewController *)self delegate];
  v17 = [v16 documentBrowser:self shouldShowActivityViewControllerForDocumentURLs:v15 popoverTracker:v58 isContentManaged:v59 additionalActivities:obj activityProxy:v68];

  if ((v17 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v24 = [(UIDocumentBrowserViewController *)self delegate];
  v25 = objc_opt_respondsToSelector();

  if ((v25 & 1) == 0 || (+[DOCItemBookmark documentsURLsForItemBookmarks:](DOCItemBookmark, "documentsURLsForItemBookmarks:", v11), v26 = objc_claimAutoreleasedReturnValue(), -[UIDocumentBrowserViewController delegate](self, "delegate"), v27 = objc_claimAutoreleasedReturnValue(), [v27 documentBrowser:self applicationActivitiesForDocumentURLs:v26], v28 = objc_claimAutoreleasedReturnValue(), v27, v26, !v28))
  {
    v28 = [MEMORY[0x1E695DF70] array];
  }

  v62 = [MEMORY[0x1E695DF70] array];
  [v62 addObject:@"com.apple.DocumentManagerUICore.SaveToFiles"];
  v29 = [MEMORY[0x1E699A3F8] defaultPermission];
  v30 = [v29 canCopySourceIsContentManaged:v59];

  if (v30)
  {
    v31 = [obj arrayByAddingObject:@"com.apple.DocumentManager.action.copy"];

    v32 = v31;
  }

  else
  {
    v32 = obj;
  }

  [v62 addObject:*MEMORY[0x1E69CDA90]];
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  v77 = 0u;
  obj = v32;
  v33 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
  if (v33)
  {
    v34 = *v78;
    do
    {
      v35 = 0;
      v36 = v28;
      do
      {
        if (*v78 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v37 = [DOCActivity activityWithIdentifier:*(*(&v77 + 1) + 8 * v35) actionPerformerProxy:v68];
        v28 = [v36 arrayByAddingObject:v37];

        ++v35;
        v36 = v28;
      }

      while (v33 != v35);
      v33 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
    }

    while (v33);
  }

  v67 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v61, "count")}];
  v64 = [MEMORY[0x1E695DF70] array];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v65 = v61;
  v38 = 0;
  v39 = [v65 countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v39)
  {
    v40 = *v74;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v74 != v40)
        {
          objc_enumerationMutation(v65);
        }

        v42 = *(*(&v73 + 1) + 8 * i);
        v43 = [v42 fileURL];
        [v67 addObject:v43];
        v44 = [v42 node];
        v45 = [v44 isTrashed];

        v46 = [v42 fileURL];
        v47 = [v46 startAccessingSecurityScopedResource];

        if (v47)
        {
          v48 = [v42 fileURL];
          [v64 addObject:v48];
        }

        v38 |= v45;
      }

      v39 = [v65 countByEnumeratingWithState:&v73 objects:v81 count:16];
    }

    while (v39);
  }

  objc_initWeak(&location, self);
  v49 = [[DOCDocBrowserVC_UIActivityViewController alloc] initWithActivityItems:v67 applicationActivities:v28];
  [(DOCDocBrowserVC_UIActivityViewController *)v49 setIsContentManaged:v59];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __172__UIDocumentBrowserViewController__activityViewControllerWithItemBookmarks_isForTitleMenuFolderSharing_popoverTracker_isContentManaged_additionalActivities_activityRunner___block_invoke;
  v69[3] = &unk_1E8782BD8;
  v50 = v64;
  v70 = v50;
  objc_copyWeak(&v71, &location);
  [(DOCDocBrowserVC_UIActivityViewController *)v49 setCompletionWithItemsHandler:v69];
  if (!a4)
  {
    v51 = [(UIDocumentBrowserViewController *)self delegate];
    v52 = objc_opt_respondsToSelector();

    if (v52)
    {
      v53 = [(UIDocumentBrowserViewController *)self delegate];
      [v53 documentBrowser:self willPresentActivityViewController:v49];
    }
  }

  if (v38)
  {
    [v62 addObject:@"com.apple.UIKit.activity.CloudSharing"];
    [v62 addObject:@"com.apple.DocumentManager.action.copySharedLink"];
    v54 = [(DOCDocBrowserVC_UIActivityViewController *)v49 excludedActivityTypes];
    v55 = [v54 count] == 0;

    if (!v55)
    {
      v56 = [(DOCDocBrowserVC_UIActivityViewController *)v49 excludedActivityTypes];
      [v62 addObjectsFromArray:v56];
    }
  }

  if ([v62 count])
  {
    [(DOCDocBrowserVC_UIActivityViewController *)v49 setExcludedActivityTypes:v62];
  }

  [(DOCDocBrowserVC_UIActivityViewController *)v49 setModalPresentationStyle:7];
  v18 = v49;
  objc_destroyWeak(&v71);

  objc_destroyWeak(&location);
LABEL_44:

  return v18;
}

void __172__UIDocumentBrowserViewController__activityViewControllerWithItemBookmarks_isForTitleMenuFolderSharing_popoverTracker_isContentManaged_additionalActivities_activityRunner___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v11 + 1) + 8 * v8++) stopAccessingSecurityScopedResource];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v10 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained setEditing:0];
    }
  }
}

- (id)_sandboxingURLWrapperForURL:(id)a3 readonly:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  if ([v7 checkPromisedItemIsReachableAndReturnError:a5])
  {
    v8 = [MEMORY[0x1E6967408] wrapperWithURL:v7 readonly:v6 error:a5];
  }

  else
  {
    v9 = MEMORY[0x1E699A450];
    v10 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1E57D8000, v10, OS_LOG_TYPE_DEFAULT, "Error while trying to reveal a document at a URL: The resource is not reachable.", v12, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)keyCommands
{
  v3 = [(UIDocumentBrowserViewController *)self presentedViewController];
  if ([(UIDocumentBrowserViewController *)self isViewLoaded])
  {
    v4 = [(UIDocumentBrowserViewController *)self view];
    v5 = [v4 window];
    if (v5)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
    if (v3)
    {
LABEL_9:
      v8 = [v3 conformsToProtocol:&unk_1F5F80E68];
      goto LABEL_12;
    }
  }

  v8 = 0;
LABEL_12:
  if ((v7 | v8))
  {
    IsKeyInput = DOCFirstResponderIsKeyInput();
    v10 = [(UIDocumentBrowserViewController *)self configuration];
    v11 = [v10 isFilesApp];

    v12 = objc_opt_new();
    if ((v11 & 1) == 0)
    {
      v13 = objc_opt_new();
      v14 = [(UIDocumentBrowserViewController *)self configuration];
      if ([v14 inProcess])
      {
        [v13 allKeyCommands];
      }

      else
      {
        [v13 allKeyCommandsWithAction:sel_performKeyCommandNoOpOnHostSide_ attributes:4];
      }
      v16 = ;

      [v12 addObjectsFromArray:v16];
      v17 = [(UIDocumentBrowserViewController *)self configuration];
      v18 = [v17 inProcess] | IsKeyInput;

      if ((v18 & 1) == 0)
      {
        v19 = [DOCKeyboardFocusManager allDirectionalKeyCommandsWithAction:sel_performKeyCommandNoOpOnHostSide_ prioritize:1];
        [v12 addObjectsFromArray:v19];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)preferredFocusEnvironments
{
  v4.receiver = self;
  v4.super_class = UIDocumentBrowserViewController;
  v2 = [(UIDocumentBrowserViewController *)&v4 preferredFocusEnvironments];

  return v2;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(UIDocumentBrowserViewController *)self configuration];
  v8 = [v7 isFilesApp];

  objc_opt_class();
  v9 = a3;
  if (objc_opt_isKindOfClass())
  {
    v9 = a3;
    if (objc_opt_respondsToSelector())
    {
      v10 = [v6 propertyList];
      v9 = a3;
      if (v10)
      {
        v11 = v10;
        v12 = [v6 propertyList];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v9 = a3;
        if (isKindOfClass)
        {
          v14 = [v6 propertyList];
          v15 = [v14 objectForKeyedSubscript:@"com.apple.DocumentManager.keyCommands.originalKeyCommandAction"];

          v9 = a3;
          if (v15)
          {
            v16 = NSSelectorFromString(v15);
            if (v16)
            {
              v9 = v16;
            }

            else
            {
              v9 = a3;
            }
          }
        }
      }
    }
  }

  if (v9 == sel_performPreview_)
  {
LABEL_15:
    v17 = 0;
    goto LABEL_18;
  }

  if (v9 == sel_performConnectToServer_)
  {
    if ((v8 & 1) == 0)
    {
      v18 = [(UIDocumentBrowserViewController *)self configuration];
      v17 = [(UIDocumentBrowserViewController *)self supportsRemovableFileProvidersForConfiguration:v18];

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (sel_performKeyCommandNoOpOnHostSide_ == a3)
  {
    v17 = 1;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = UIDocumentBrowserViewController;
    v17 = [(UIDocumentBrowserViewController *)&v20 canPerformAction:a3 withSender:v6];
  }

LABEL_18:

  return v17;
}

- (void)_establishFirstResponderOnServiceSideForKeyCommand:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__UIDocumentBrowserViewController__establishFirstResponderOnServiceSideForKeyCommand___block_invoke;
  v6[3] = &unk_1E87823E8;
  v7 = v4;
  v5 = v4;
  [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v6];
}

- (void)_presentActivityViewControllerForItemBookmarks:(id)a3 withPopoverTracker:(id)a4 isContentManaged:(BOOL)a5 additionalActivities:(id)a6 activityProxy:(id)a7
{
  v31 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = MEMORY[0x1E699A450];
  v17 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v17 = *v16;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v12;
    v29 = 2112;
    v30 = v13;
    _os_log_impl(&dword_1E57D8000, v17, OS_LOG_TYPE_DEFAULT, "Present the activity view controller in the host on items: %@ popoverTracker:%@", buf, 0x16u);
  }

  v18 = *v16;
  if (!*v16)
  {
    DOCInitLogging();
    v18 = *v16;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E57D8000, v18, OS_LOG_TYPE_INFO, "prepareForMode: _presentActivityViewControllerForItemBookmarks with usingBookmark == NO", buf, 2u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __153__UIDocumentBrowserViewController__presentActivityViewControllerForItemBookmarks_withPopoverTracker_isContentManaged_additionalActivities_activityProxy___block_invoke;
  v22[3] = &unk_1E8782C00;
  v22[4] = self;
  v23 = v13;
  v26 = a5;
  v24 = v14;
  v25 = v15;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  [(UIDocumentBrowserViewController *)self prepareItemBookmarks:v12 forMode:1 usingBookmark:0 completionBlock:v22];
}

- (BOOL)_canSendDocumentLandingDidPickDocumentsAtURLs
{
  WeakRetained = objc_loadWeakRetained(&self->_documentLandingPresenter);
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (void)_sendDocumentLandingDidPickDocumentsAtURLs:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_documentLandingPresenter);
  [WeakRetained documentLandingBrowser:self didPickDocumentsAtURLs:v4];
}

- (void)_commitDocumentURLPreview:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__UIDocumentBrowserViewController__commitDocumentURLPreview___block_invoke;
  v7[3] = &unk_1E8782C28;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [(UIDocumentBrowserViewController *)self prepareItemBookmarks:v5 usingBookmark:1 completionBlock:v7];
}

void __61__UIDocumentBrowserViewController__commitDocumentURLPreview___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) fileURL];
  v9[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  if ([*(a1 + 40) _canSendDocumentLandingDidPickDocumentsAtURLs])
  {
    [*(a1 + 40) _sendDocumentLandingDidPickDocumentsAtURLs:v3];
  }

  v4 = [*(a1 + 40) delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = [*(a1 + 40) delegate];
  v7 = v6;
  if (v5)
  {
    [v6 documentBrowser:*(a1 + 40) didPickDocumentsAtURLs:v3];
LABEL_7:

    goto LABEL_8;
  }

  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v7 = [*(a1 + 40) delegate];
    [v7 documentBrowser:*(a1 + 40) didPickDocumentURLs:v3];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_didTriggerCustomActionWithIdentifier:(id)a3 onItemBookmarks:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E699A450];
  v9 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v9 = *v8;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E57D8000, v9, OS_LOG_TYPE_INFO, "prepareForMode: _didTriggerCustomActionWithIdentifier with usingBookmark == NO", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89__UIDocumentBrowserViewController__didTriggerCustomActionWithIdentifier_onItemBookmarks___block_invoke;
  v11[3] = &unk_1E8782C28;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [(UIDocumentBrowserViewController *)self prepareItemBookmarks:v7 forMode:1 usingBookmark:0 completionBlock:v11];
}

void __89__UIDocumentBrowserViewController__didTriggerCustomActionWithIdentifier_onItemBookmarks___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) customActions];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__UIDocumentBrowserViewController__didTriggerCustomActionWithIdentifier_onItemBookmarks___block_invoke_2;
  v13[3] = &unk_1E8782C50;
  v14 = *(a1 + 40);
  v5 = [v4 indexOfObjectPassingTest:v13];

  v6 = [*(a1 + 32) customActions];
  v7 = [v6 objectAtIndexedSubscript:v5];
  v8 = [v7 copy];

  if (v8)
  {
    v9 = [v8 resolvedHandler];
    (v9)[2](v9, v3, 0);
  }

  else
  {
    v10 = MEMORY[0x1E699A450];
    v11 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1E57D8000, v11, OS_LOG_TYPE_INFO, "tried to perform an action that does not exist anymore", v12, 2u);
    }
  }
}

uint64_t __89__UIDocumentBrowserViewController__didTriggerCustomActionWithIdentifier_onItemBookmarks___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

- (void)_didPickItemBookmarks:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(UIDocumentBrowserViewController *)self enclosedInUIPDocumentLanding]|| !self->_uipTransitionCoordinator)
  {
    [(UIDocumentBrowserViewController *)self _clearCurrentOpenInteractionUnlessUIPDocumentLanding];
    v5 = [(UIDocumentBrowserViewController *)self _delegateRespondsToSelector:sel_documentBrowser_didPickDocumentURLs_];
    v6 = [(UIDocumentBrowserViewController *)self _delegateRespondsToSelector:sel_documentBrowser_didPickDocumentsAtURLs_];
    v7 = [(UIDocumentBrowserViewController *)self _canSendDocumentLandingDidPickDocumentsAtURLs];
    v8 = v7;
    if (v5 || v6 || v7)
    {
      v9 = [(UIDocumentBrowserViewController *)self configuration];
      v10 = [v9 interactionMode];

      v11 = MEMORY[0x1E699A450];
      v12 = *MEMORY[0x1E699A450];
      if (!*MEMORY[0x1E699A450])
      {
        DOCInitLogging();
        v12 = *v11;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = @"NO";
        if (v10 == 1)
        {
          v13 = @"YES";
        }

        *buf = 138412290;
        v20 = v13;
        _os_log_impl(&dword_1E57D8000, v12, OS_LOG_TYPE_INFO, "prepareForMode: _didPickItemBookmarks with usingBookmark == %@", buf, 0xCu);
      }

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __57__UIDocumentBrowserViewController__didPickItemBookmarks___block_invoke;
      v14[3] = &unk_1E8782CA0;
      v16 = v8;
      v14[4] = self;
      v17 = v6;
      v18 = v5;
      v15 = v4;
      [(UIDocumentBrowserViewController *)self prepareItemBookmarks:v15 usingBookmark:v10 == 1 completionBlock:v14];
    }
  }
}

void __57__UIDocumentBrowserViewController__didPickItemBookmarks___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v19 + 1) + 8 * v9) fileURL];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__UIDocumentBrowserViewController__didPickItemBookmarks___block_invoke_2;
  v16[3] = &unk_1E8782C78;
  v17 = *(a1 + 48);
  v16[4] = *(a1 + 32);
  v18 = *(a1 + 49);
  v11 = MEMORY[0x1E692E2E0](v16);
  if ([v4 count])
  {
    goto LABEL_14;
  }

  v12 = [*(a1 + 32) configuration];
  v13 = [v12 forSavingDocuments];

  v14 = MEMORY[0x1E699A450];
  v15 = *MEMORY[0x1E699A450];
  if (v13)
  {
    if (!v15)
    {
      DOCInitLogging();
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __57__UIDocumentBrowserViewController__didPickItemBookmarks___block_invoke_cold_2();
    }

LABEL_14:
    (v11)[2](v11, v4);
    goto LABEL_15;
  }

  if (!v15)
  {
    DOCInitLogging();
    v15 = *v14;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    __57__UIDocumentBrowserViewController__didPickItemBookmarks___block_invoke_cold_1();
  }

LABEL_15:
}

void __57__UIDocumentBrowserViewController__didPickItemBookmarks___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _sendDocumentLandingDidPickDocumentsAtURLs:v3];
  }

  if (*(a1 + 41) == 1)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 documentBrowser:*(a1 + 32) didPickDocumentsAtURLs:v3];
LABEL_7:

    goto LABEL_8;
  }

  if (*(a1 + 42) == 1)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 documentBrowser:*(a1 + 32) didPickDocumentURLs:v3];
    goto LABEL_7;
  }

LABEL_8:
  if ([*(a1 + 32) enclosedInUIPDocumentLanding] && !*(*(a1 + 32) + 1024))
  {
    DOCRunInMainThread();
  }
}

- (void)_clearCurrentOpenInteractionUnlessUIPDocumentLanding
{
  if (![(UIDocumentBrowserViewController *)self enclosedInUIPDocumentLanding])
  {
    if (dyld_program_sdk_at_least())
    {
      objc_initWeak(&location, self);
      block[5] = MEMORY[0x1E69E9820];
      block[6] = 3221225472;
      block[7] = __87__UIDocumentBrowserViewController__clearCurrentOpenInteractionUnlessUIPDocumentLanding__block_invoke;
      block[8] = &unk_1E8782CC8;
      objc_copyWeak(&v5, &location);
      DOCRunInMainThread();
      objc_destroyWeak(&v5);
      objc_destroyWeak(&location);
    }

    else
    {
      v3 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __87__UIDocumentBrowserViewController__clearCurrentOpenInteractionUnlessUIPDocumentLanding__block_invoke_2;
      block[3] = &unk_1E87829A0;
      block[4] = self;
      dispatch_after(v3, MEMORY[0x1E69E96A0], block);
    }
  }
}

void __87__UIDocumentBrowserViewController__clearCurrentOpenInteractionUnlessUIPDocumentLanding__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained clearCurrentOpenInteraction];
}

void __62__UIDocumentBrowserViewController__documentPickerWasCancelled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = [*(a1 + 32) delegate];
  v6 = v4;
  if (v3)
  {
    [v4 documentBrowser:*(a1 + 32) didPickDocumentURLs:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = [*(a1 + 32) delegate];
    [v6 documentManagerWasCancelled:*(a1 + 32)];
  }
}

- (void)_core_didTriggerDocumentCreationIntent:(id)a3
{
  v4 = a3;
  v3 = v4;
  DOCRunInMainThread();
}

- (void)_iOS_didRequestDocumentCreationWithHandler:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Got %s: %s", "iOS", "-[UIDocumentBrowserViewController _iOS_didRequestDocumentCreationWithHandler:]"];
  v6 = MEMORY[0x1E699A448];
  v7 = *MEMORY[0x1E699A448];
  if (!*MEMORY[0x1E699A448])
  {
    DOCInitLogging();
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v5;
    v9 = v7;
    *buf = 136315138;
    v19 = [v5 UTF8String];
    _os_log_impl(&dword_1E57D8000, v9, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10 = [(UIDocumentBrowserViewController *)self documentCreationController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__UIDocumentBrowserViewController__iOS_didRequestDocumentCreationWithHandler___block_invoke;
  v13[3] = &unk_1E8782CF0;
  objc_copyWeak(&v17, buf);
  v11 = v4;
  v16 = v11;
  v12 = v10;
  v14 = v12;
  v15 = self;
  [(UIDocumentBrowserViewController *)self _core_didRequestDocumentCreationWithHandler:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __78__UIDocumentBrowserViewController__iOS_didRequestDocumentCreationWithHandler___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = WeakRetained;
  if (a3 && v6 && WeakRetained)
  {
    v13[0] = 0;
    v9 = [WeakRetained _sandboxingURLWrapperForURL:v6 readonly:a3 != 2 error:v13];
    v10 = v13[0];
    if (v10)
    {
      v11 = MEMORY[0x1E699A448];
      v12 = *MEMORY[0x1E699A448];
      if (!*MEMORY[0x1E699A448])
      {
        DOCInitLogging();
        v12 = *v11;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __78__UIDocumentBrowserViewController__iOS_didRequestDocumentCreationWithHandler___block_invoke_cold_1();
      }

      (*(a1[6] + 2))();
      [a1[5] _failedToImportDocumentAtURL:v6 error:v10];
    }

    else
    {
      objc_storeStrong(v8 + 127, a2);
      (*(a1[6] + 2))();
    }
  }

  else
  {
    v13[1] = MEMORY[0x1E69E9820];
    v13[2] = 3221225472;
    v13[3] = __78__UIDocumentBrowserViewController__iOS_didRequestDocumentCreationWithHandler___block_invoke_2;
    v13[4] = &unk_1E8782AA0;
    v15 = a1[6];
    v14 = a1[4];
    DOCRunInMainThread();

    v10 = v15;
  }
}

uint64_t __78__UIDocumentBrowserViewController__iOS_didRequestDocumentCreationWithHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 didEndSessionWithImportedURL:0 canceled:1 error:0];
}

- (void)_core_didRequestDocumentCreationWithHandler:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"Got %s: %s", "core", "-[UIDocumentBrowserViewController _core_didRequestDocumentCreationWithHandler:]"];
  v7 = MEMORY[0x1E699A448];
  v8 = *MEMORY[0x1E699A448];
  if (!*MEMORY[0x1E699A448])
  {
    DOCInitLogging();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v6;
    v10 = v8;
    *buf = 136315138;
    v20 = [v6 UTF8String];
    _os_log_impl(&dword_1E57D8000, v10, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v11 = MEMORY[0x1E692E2E0](v5);

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__UIDocumentBrowserViewController__core_didRequestDocumentCreationWithHandler___block_invoke;
  v16[3] = &unk_1E8782D18;
  objc_copyWeak(&v18, buf);
  v12 = v11;
  v17 = v12;
  v13 = MEMORY[0x1E692E2E0](v16);
  objc_copyWeak(&v15, buf);
  v14 = v13;
  DOCRunInMainThread();

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v18);

  objc_destroyWeak(buf);
}

void __79__UIDocumentBrowserViewController__core_didRequestDocumentCreationWithHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = MEMORY[0x1E699A448];
  v8 = *MEMORY[0x1E699A448];
  if (WeakRetained)
  {
    if (!v8)
    {
      DOCInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v5;
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&dword_1E57D8000, v8, OS_LOG_TYPE_DEFAULT, "Document creation (core) - completion called with url: %@, mode: %lu.", &v10, 0x16u);
    }

    if (v5 && a3)
    {
      [WeakRetained _setURLCurrentlyBeingImported:v5];
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (!v8)
    {
      DOCInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1E57D8000, v8, OS_LOG_TYPE_DEFAULT, "Document creation (core) skipped - strongSelf == nil", &v10, 2u);
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

void __79__UIDocumentBrowserViewController__core_didRequestDocumentCreationWithHandler___block_invoke_256(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained documentCreationController];
    if ([v4 handlesDidRequestDocumentCreation])
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __79__UIDocumentBrowserViewController__core_didRequestDocumentCreationWithHandler___block_invoke_257;
      v9[3] = &unk_1E8782D40;
      v10 = *(a1 + 32);
      [v4 performDidRequestDocumentCreationWithHandler:v9];
    }

    else
    {
      v7 = MEMORY[0x1E699A448];
      v8 = *MEMORY[0x1E699A448];
      if (!*MEMORY[0x1E699A448])
      {
        DOCInitLogging();
        v8 = *v7;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E57D8000, v8, OS_LOG_TYPE_DEFAULT, "Document creation (core) skipped - handlesDidRequestDocumentCreation == false", buf, 2u);
      }

      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v5 = MEMORY[0x1E699A448];
    v6 = *MEMORY[0x1E699A448];
    if (!*MEMORY[0x1E699A448])
    {
      DOCInitLogging();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E57D8000, v6, OS_LOG_TYPE_DEFAULT, "Document creation (core) skipped - strongSelf == nil", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_iOS_didImportDocumentAtURL:(id)a3 toDestinationItemBookmark:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Got %s: %s", "iOS", "-[UIDocumentBrowserViewController _iOS_didImportDocumentAtURL:toDestinationItemBookmark:]"];
  v9 = MEMORY[0x1E699A448];
  v10 = *MEMORY[0x1E699A448];
  if (!*MEMORY[0x1E699A448])
  {
    DOCInitLogging();
    v10 = *v9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v8;
    v12 = v10;
    *buf = 136315138;
    v18 = [v8 UTF8String];
    _os_log_impl(&dword_1E57D8000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  urlCurrentlyBeingImported = self->_urlCurrentlyBeingImported;
  self->_urlCurrentlyBeingImported = 0;

  v16 = v6;
  v14 = v6;
  v15 = v7;
  DOCRunInMainThread();
}

void __89__UIDocumentBrowserViewController__iOS_didImportDocumentAtURL_toDestinationItemBookmark___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E699A448];
  v3 = *MEMORY[0x1E699A448];
  if (!*MEMORY[0x1E699A448])
  {
    DOCInitLogging();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E57D8000, v3, OS_LOG_TYPE_INFO, "prepareForMode: _didImportDocumentAtURL with usingBookmark == YES", buf, 2u);
  }

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) configuration];
  v6 = [v5 interactionModeForPreparing];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__UIDocumentBrowserViewController__iOS_didImportDocumentAtURL_toDestinationItemBookmark___block_invoke_258;
  v8[3] = &unk_1E8782A78;
  v7 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v9 = v7;
  v10 = *(a1 + 32);
  [v4 prepareForMode:v6 usingBookmark:1 completionBlock:v8];
}

void __89__UIDocumentBrowserViewController__iOS_didImportDocumentAtURL_toDestinationItemBookmark___block_invoke_258(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) fileURL];
    [v3 _core_didImportDocumentAtURL:v4 toDestinationURL:?];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.DocumentManager" code:1 userInfo:0];
    [*(a1 + 32) _failedToImportDocumentAtURL:*(a1 + 40) error:?];
  }
}

- (void)_core_didImportDocumentAtURL:(id)a3 toDestinationURL:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Got %s: %s", "core", "-[UIDocumentBrowserViewController _core_didImportDocumentAtURL:toDestinationURL:]"];
  v9 = MEMORY[0x1E699A448];
  v10 = *MEMORY[0x1E699A448];
  if (!*MEMORY[0x1E699A448])
  {
    DOCInitLogging();
    v10 = *v9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v8;
    v12 = v10;
    *buf = 136315138;
    v18 = [v8 UTF8String];
    _os_log_impl(&dword_1E57D8000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  urlCurrentlyBeingImported = self->_urlCurrentlyBeingImported;
  self->_urlCurrentlyBeingImported = 0;

  v16 = v6;
  v14 = v7;
  v15 = v6;
  DOCRunInMainThread();
}

void __81__UIDocumentBrowserViewController__core_didImportDocumentAtURL_toDestinationURL___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) documentCreationController];
  [v2 performDidImportDocumentAtURL:*(a1 + 40) toDestinationURL:*(a1 + 48)];
}

- (void)_iOS_failedToImportDocumentAtURL:(id)a3 error:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Got %s: %s", "iOS", "-[UIDocumentBrowserViewController _iOS_failedToImportDocumentAtURL:error:]"];
  v9 = MEMORY[0x1E699A448];
  v10 = *MEMORY[0x1E699A448];
  if (!*MEMORY[0x1E699A448])
  {
    DOCInitLogging();
    v10 = *v9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v8;
    v12 = v10;
    *buf = 136315138;
    v18 = [v8 UTF8String];
    _os_log_impl(&dword_1E57D8000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  urlCurrentlyBeingImported = self->_urlCurrentlyBeingImported;
  self->_urlCurrentlyBeingImported = 0;

  v16 = v6;
  v14 = v7;
  v15 = v6;
  DOCRunInMainThread();
}

void __74__UIDocumentBrowserViewController__iOS_failedToImportDocumentAtURL_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) documentCreationController];
  [v2 performFailedToImportDocumentAtURL:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_core_failedToImportDocumentAtURL:(id)a3 error:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Got %s: %s", "core", "-[UIDocumentBrowserViewController _core_failedToImportDocumentAtURL:error:]"];
  v9 = MEMORY[0x1E699A448];
  v10 = *MEMORY[0x1E699A448];
  if (!*MEMORY[0x1E699A448])
  {
    DOCInitLogging();
    v10 = *v9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v8;
    v12 = v10;
    *buf = 136315138;
    v18 = [v8 UTF8String];
    _os_log_impl(&dword_1E57D8000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  urlCurrentlyBeingImported = self->_urlCurrentlyBeingImported;
  self->_urlCurrentlyBeingImported = 0;

  v16 = v6;
  v14 = v7;
  v15 = v6;
  DOCRunInMainThread();
}

void __75__UIDocumentBrowserViewController__core_failedToImportDocumentAtURL_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) documentCreationController];
  [v2 performFailedToImportDocumentAtURL:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_updateRemoteBarButtonFrames:(id)a3 forUUID:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v8;
  v7 = v5;
  DOCRunInMainThread();
}

void __72__UIDocumentBrowserViewController__updateRemoteBarButtonFrames_forUUID___block_invoke(id *a1)
{
  v2 = [a1[4] presentedViewController];
  v22 = [v2 popoverPresentationController];

  if ([a1[5] count])
  {
    v3 = 0;
    do
    {
      v4 = [a1[5] objectAtIndexedSubscript:v3];
      [v4 CGRectValue];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v13 = [a1[6] objectAtIndexedSubscript:v3];
      v14 = [a1[4] trackingViewForUUID:v13];
      v15 = [a1[4] remoteBarButtonForUUID:v13];
      [v14 setFrame:{v6, v8, v10, v12}];
      if (v22)
      {
        v16 = [v22 barButtonItem];
        v17 = [v15 barButton];

        if (v16 == v17)
        {
          v18 = [v22 containerView];
          [v18 setNeedsLayout];
        }
      }

      ++v3;
    }

    while ([a1[5] count] > v3);
  }

  v19 = [a1[4] delegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = [a1[4] delegate];
    [v21 documentBrowserDidUpdateAdditionalNavigationBarButtonItems:a1[4]];
  }
}

- (void)_didTriggerBarButtonWithUUID:(id)a3 overflowAction:(BOOL)a4
{
  v5 = a3;
  v4 = v5;
  DOCRunInMainThread();
}

void __79__UIDocumentBrowserViewController__didTriggerBarButtonWithUUID_overflowAction___block_invoke(uint64_t a1)
{
  *&v29[5] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E699A450];
  v3 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 UUIDString];
    *buf = 138412290;
    *v29 = v6;
    _os_log_impl(&dword_1E57D8000, v5, OS_LOG_TYPE_INFO, "_didTriggerBarButtonWithUUID: %@", buf, 0xCu);
  }

  v7 = (a1 + 32);
  v8 = [*(a1 + 40) remoteBarButtonForUUID:*(a1 + 32)];
  if (v8)
  {
    v9 = *v2;
    if (!*v2)
    {
      DOCInitLogging();
      v9 = *v2;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *v7;
      v11 = v9;
      v12 = [v10 UUIDString];
      *buf = 138412290;
      *v29 = v12;
      _os_log_impl(&dword_1E57D8000, v11, OS_LOG_TYPE_INFO, "_didTriggerBarButtonWithUUID: %@ button found, perform action", buf, 0xCu);
    }

    if (*(a1 + 48) == 1)
    {
      [v8 performOverflowAction];
    }

    else
    {
      [v8 performPrimaryAction];
    }
  }

  else
  {
    v13 = objc_opt_new();
    [v13 addObjectsFromArray:*(*(a1 + 40) + 1088)];
    [v13 addObjectsFromArray:*(*(a1 + 40) + 1096)];
    v14 = *v2;
    if (!*v2)
    {
      DOCInitLogging();
      v14 = *v2;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __79__UIDocumentBrowserViewController__didTriggerBarButtonWithUUID_overflowAction___block_invoke_cold_1(v7, v14);
    }

    v15 = *v2;
    if (!*v2)
    {
      DOCInitLogging();
      v15 = *v2;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __79__UIDocumentBrowserViewController__didTriggerBarButtonWithUUID_overflowAction___block_invoke_cold_2();
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        v20 = 0;
        do
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v23 + 1) + 8 * v20);
          v22 = *v2;
          if (!*v2)
          {
            DOCInitLogging();
            v22 = *v2;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            __79__UIDocumentBrowserViewController__didTriggerBarButtonWithUUID_overflowAction___block_invoke_cold_3(buf, v22, v21, v29);
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v18);
    }
  }
}

- (void)_fallbackRenameDocumentAtURL:(id)a3 proposedName:(id)a4 completionHandler:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v13 = 0;
  v9 = [DOCFileRenamingSupport fallbackRename:v7 toProposedName:a4 error:&v13];
  v10 = v13;
  v11 = MEMORY[0x1E699A450];
  v12 = *MEMORY[0x1E699A450];
  if (!v9)
  {
    if (!v12)
    {
      DOCInitLogging();
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [UIDocumentBrowserViewController _fallbackRenameDocumentAtURL:v12 proposedName:? completionHandler:?];
      if (v10)
      {
        goto LABEL_12;
      }
    }

    else if (v10)
    {
LABEL_12:
      v8[2](v8, 0, v10);
      goto LABEL_13;
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:0];
    goto LABEL_12;
  }

  if (!v12)
  {
    DOCInitLogging();
    v12 = *v11;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1E57D8000, v12, OS_LOG_TYPE_INFO, "Success. Renamed from: %@ to: %@", buf, 0x16u);
  }

  (v8)[2](v8, v9, 0);
LABEL_13:
}

- (void)renameDocumentAtURL:(NSURL *)documentURL proposedName:(NSString *)proposedName completionHandler:(void *)completionHandler
{
  v8 = documentURL;
  v9 = proposedName;
  v10 = completionHandler;
  v11 = v10;
  if (v8)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_20:
    [UIDocumentBrowserViewController renameDocumentAtURL:proposedName:completionHandler:];
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

  [UIDocumentBrowserViewController renameDocumentAtURL:proposedName:completionHandler:];
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v9)
  {
    goto LABEL_4;
  }

LABEL_21:
  [UIDocumentBrowserViewController renameDocumentAtURL:proposedName:completionHandler:];
LABEL_4:
  v34[0] = 0;
  v12 = [MEMORY[0x1E6967408] wrapperWithURL:v8 readonly:0 error:v34];
  v13 = v34[0];
  v14 = v13;
  if (v12)
  {
    v24 = v13;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __86__UIDocumentBrowserViewController_renameDocumentAtURL_proposedName_completionHandler___block_invoke;
    v30[3] = &unk_1E8782DE0;
    v30[4] = self;
    v15 = v8;
    v31 = v15;
    v25 = v9;
    v16 = v9;
    v32 = v16;
    v17 = v11;
    v33 = v17;
    v23 = MEMORY[0x1E692E2E0](v30);
    v18 = MEMORY[0x1E699A458];
    v19 = *MEMORY[0x1E699A458];
    if (self->_serviceProxy)
    {
      if (!v19)
      {
        DOCInitLogging();
        v19 = *v18;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [UIDocumentBrowserViewController renameDocumentAtURL:proposedName:completionHandler:];
      }

      serviceProxy = self->_serviceProxy;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __86__UIDocumentBrowserViewController_renameDocumentAtURL_proposedName_completionHandler___block_invoke_272;
      v28[3] = &unk_1E8782658;
      v29 = v17;
      v21 = [(DOCServiceDocumentBrowserViewControllerInterface *)serviceProxy remoteObjectProxyWithErrorHandler:v28];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __86__UIDocumentBrowserViewController_renameDocumentAtURL_proposedName_completionHandler___block_invoke_3;
      v26[3] = &unk_1E8782E08;
      v22 = v23;
      v27 = v23;
      [v21 _renameDocumentAtURL:v12 newName:v16 completion:v26];
    }

    else
    {
      if (!v19)
      {
        DOCInitLogging();
        v19 = *v18;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [UIDocumentBrowserViewController renameDocumentAtURL:proposedName:completionHandler:];
      }

      v22 = v23;
      [MEMORY[0x1E699A408] _spi_renameDocumentAtURL:v15 proposedName:v16 completionHandler:v23];
    }

    v9 = v25;

    v14 = v24;
  }

  else
  {
    (v11)[2](v11, 0, v13);
  }
}

void __86__UIDocumentBrowserViewController_renameDocumentAtURL_proposedName_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v6 = v5;
  v7 = v8;
  DOCRunInMainThread();
}

uint64_t __86__UIDocumentBrowserViewController_renameDocumentAtURL_proposedName_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) domain];
  if ([v2 isEqual:*MEMORY[0x1E696A250]])
  {
    v3 = [*(a1 + 32) code];

    if (v3 == 4)
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      v7 = *(a1 + 72);

      return [v4 _fallbackRenameDocumentAtURL:v5 proposedName:v6 completionHandler:v7];
    }
  }

  else
  {
  }

  v9 = [*(a1 + 64) path];
  [v9 UTF8String];
  sandbox_extension_update_file();

  v10 = *(*(a1 + 72) + 16);

  return v10();
}

void __86__UIDocumentBrowserViewController_renameDocumentAtURL_proposedName_completionHandler___block_invoke_272(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  DOCRunInMainThread();
}

void __86__UIDocumentBrowserViewController_renameDocumentAtURL_proposedName_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 url];
  (*(v4 + 16))(v4, v6, v5);
}

- (BOOL)supportsRemovableFileProvidersForConfiguration:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__UIDocumentBrowserViewController_supportsRemovableFileProvidersForConfiguration___block_invoke;
  block[3] = &unk_1E87829A0;
  v9 = v3;
  v4 = supportsRemovableFileProvidersForConfiguration__onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&supportsRemovableFileProvidersForConfiguration__onceToken, block);
  }

  v6 = supportsRemovableFileProvidersForConfiguration__supportsRemovableFileProviders;

  return v6;
}

void __82__UIDocumentBrowserViewController_supportsRemovableFileProvidersForConfiguration___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v6 = [v2 initWithSuiteName:*MEMORY[0x1E699A360]];
  v3 = [v6 BOOLForKey:@"DOCUserDefaultsKeyForceRemovableFPSupport"];
  v4 = [*(a1 + 32) forPickingDownloadsFolder];
  v5 = v4 ^ 1;
  if ((v4 & 1) == 0 && (v3 & 1) == 0)
  {
    v5 = dyld_program_sdk_at_least();
  }

  supportsRemovableFileProvidersForConfiguration__supportsRemovableFileProviders = v5;
}

- (void)forwardHostSceneIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__UIDocumentBrowserViewController_forwardHostSceneIdentifier___block_invoke;
  v6[3] = &unk_1E87823E8;
  v7 = v4;
  v5 = v4;
  [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v6];
}

+ (id)placeholderURLForDownloadsFolder
{
  if (placeholderURLForDownloadsFolder_onceToken != -1)
  {
    +[UIDocumentBrowserViewController placeholderURLForDownloadsFolder];
  }

  v3 = placeholderURLForDownloadsFolder__placeholderURLForDownloadsFolder;

  return v3;
}

uint64_t __67__UIDocumentBrowserViewController_placeholderURLForDownloadsFolder__block_invoke()
{
  v0 = [MEMORY[0x1E695DFF8] URLWithString:UIDocumentBrowserDownloadsFolderPlaceholderPath];
  v1 = placeholderURLForDownloadsFolder__placeholderURLForDownloadsFolder;
  placeholderURLForDownloadsFolder__placeholderURLForDownloadsFolder = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)manageOverrideIfNecessaryForPresentationController:(id)a3
{
  v8 = a3;
  v4 = [v8 presentedViewController];
  if ([(UIDocumentBrowserViewController *)self overrideUserInterfaceStyle])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (dyld_program_sdk_at_least())
      {
        v5 = [(UIDocumentBrowserViewController *)self traitCollection];
        v6 = [v5 userInterfaceStyle];

        v7 = [v8 traitOverrides];
        [v7 setUserInterfaceStyle:v6];

        [v8 setDelegate:self];
      }
    }
  }
}

- (DOCDocBrowserVC_UIActivityViewController)activityViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_activityViewController);

  return WeakRetained;
}

- (void)_checkIfObservedUIPPresentationControllerDetentDidChangeForReason:(id)a3
{
  v8 = a3;
  v4 = self->_observedUIPPresentationController;
  if (v4)
  {
    v5 = [(UIDocumentBrowserViewController *)self _currentLandingModeBasedForObservedPresentationController];
    v6 = [(UIDocumentBrowserViewController *)self preferredUIPBrowserState];
    v7 = [v6 documentLandingMode];

    if (v5 != v7)
    {
      [(UIDocumentBrowserViewController *)self _sendBrowserLandingModeChangeForReason:v8];
    }
  }
}

- (int64_t)_currentLandingModeBasedForObservedPresentationController
{
  v3 = self->_observedUIPPresentationController;
  v4 = v3;
  if (v3)
  {
    v5 = [(UISheetPresentationController *)v3 selectedDetentIdentifier];
    v6 = [(UIDocumentBrowserViewController *)self traitCollection];
    v7 = [v6 verticalSizeClass];

    if (v7 == 1)
    {
      v8 = [(UISheetPresentationController *)v4 doc_detentForDocumentLandingMode:0];

      v5 = v8;
    }

    v9 = [(UISheetPresentationController *)v4 doc_documentLandingModeForDetent:v5];
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)_sendBrowserLandingModeChangeForReason:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_observedUIPPresentationController;
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E699A438]);
    [v6 setDocumentLandingMode:{-[UIDocumentBrowserViewController _currentLandingModeBasedForObservedPresentationController](self, "_currentLandingModeBasedForObservedPresentationController")}];
    v7 = MEMORY[0x1E699A450];
    v8 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1E57D8000, v8, OS_LOG_TYPE_DEFAULT, "Sending updated landingMode change in response to: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __104__UIDocumentBrowserViewController_DOCUIPPresentationController___sendBrowserLandingModeChangeForReason___block_invoke;
    v10[3] = &unk_1E8782370;
    objc_copyWeak(&v12, buf);
    v9 = v6;
    v11 = v9;
    [(UIDocumentBrowserViewController *)self addOperationToServiceQueue:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

void __104__UIDocumentBrowserViewController_DOCUIPPresentationController___sendBrowserLandingModeChangeForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sendBrowserChange:*(a1 + 32) serviceProxy:v3];
}

- (void)_endMonitoringUIPPresentationController
{
  observedUIPPresentationController = self->_observedUIPPresentationController;
  if (observedUIPPresentationController)
  {
    v4 = MEMORY[0x1E696AD88];
    v7 = observedUIPPresentationController;
    v5 = [v4 defaultCenter];
    [v5 removeObserver:self name:*MEMORY[0x1E69DE888] object:0];

    v6 = self->_observedUIPPresentationController;
    self->_observedUIPPresentationController = 0;
  }
}

- (void)_requestAnimationInfoForDocumentAtURL:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"url != nil" object:? file:? lineNumber:? description:?];
}

- (void)_requestAnimationInfoForDocumentAtURL:completion:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:@"completion != nil" object:? file:? lineNumber:? description:?];
}

void __70__UIDocumentBrowserViewController__embedDocumentBrowserViewController__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)revealDocumentAtURL:importIfNeeded:completion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_5_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_2_126_cold_1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_2_129_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __81__UIDocumentBrowserViewController_revealDocumentAtURL_importIfNeeded_completion___block_invoke_130_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __92__UIDocumentBrowserViewController__importDocumentAtURL_neighbourURL_mode_completionHandler___block_invoke_2_143_cold_1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)remoteViewControllerDidTerminateViewServiceWithError:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)remoteViewControllerDidTerminateViewServiceWithError:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)remoteViewControllerDidTerminateViewServiceWithError:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __57__UIDocumentBrowserViewController__didPickItemBookmarks___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __57__UIDocumentBrowserViewController__didPickItemBookmarks___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __78__UIDocumentBrowserViewController__iOS_didRequestDocumentCreationWithHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void __79__UIDocumentBrowserViewController__didTriggerBarButtonWithUUID_overflowAction___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_7() UUIDString];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10(&dword_1E57D8000, v5, v6, "_didTriggerBarButtonWithUUID: Button not found to perform action. Requested UUID: %@", v7, v8, v9, v10, v11);
}

void __79__UIDocumentBrowserViewController__didTriggerBarButtonWithUUID_overflowAction___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __79__UIDocumentBrowserViewController__didTriggerBarButtonWithUUID_overflowAction___block_invoke_cold_3(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 uuid];
  v9 = [v8 UUIDString];
  *a1 = 138412290;
  *a4 = v9;
  _os_log_error_impl(&dword_1E57D8000, v7, OS_LOG_TYPE_ERROR, "_didTriggerBarButtonWithUUID                                       %@", a1, 0xCu);
}

- (void)_fallbackRenameDocumentAtURL:(void *)a1 proposedName:completionHandler:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10(&dword_1E57D8000, v4, v5, "Error. Rename failed: %@", v6, v7, v8, v9, v10);
}

- (void)renameDocumentAtURL:proposedName:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)renameDocumentAtURL:proposedName:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)renameDocumentAtURL:proposedName:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)renameDocumentAtURL:proposedName:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)renameDocumentAtURL:proposedName:completionHandler:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

@end