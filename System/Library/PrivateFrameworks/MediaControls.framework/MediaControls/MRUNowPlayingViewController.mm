@interface MRUNowPlayingViewController
- (BOOL)isShowingMediaSuggestions;
- (BOOL)shouldShowMediaSuggestions;
- (BOOL)showRouteLabel;
- (MPAVOutputDevicePlaybackDataSource)playbackDataSource;
- (MRUArtworkView)artworkView;
- (MRUNowPlayingViewController)initWithController:(id)a3 routeControlsPresentation:(int64_t)a4;
- (MRUNowPlayingViewController)initWithRouteUID:(id)a3 client:(id)a4 player:(id)a5;
- (MRUNowPlayingViewControllerDelegate)delegate;
- (NSArray)restrictedRects;
- (NSString)description;
- (UIEdgeInsets)contentEdgeInsets;
- (id)_stateDumpObject;
- (id)contextString;
- (id)destination;
- (void)createRoutingViewController;
- (void)createSuggestionsViewController;
- (void)dealloc;
- (void)didSelectArtworkView:(id)a3;
- (void)didSelectQuickControl:(id)a3;
- (void)launchNowPlayingApp;
- (void)loadView;
- (void)mediaSuggestionsViewController:(id)a3 didSelectSuggestion:(id)a4 completion:(id)a5;
- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeBundleID:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeNowPlayingInfo:(id)a5;
- (void)nowPlayingController:(id)a3 queueHandoffCoordinator:(id)a4 didChangeState:(int64_t)a5;
- (void)nowPlayingController:(id)a3 tvRemoteController:(id)a4 didChangeShowTVRemote:(BOOL)a5;
- (void)presentRoutingControlsFromSourceView:(id)a3;
- (void)routingViewController:(id)a3 didSelectRoutingViewItem:(id)a4;
- (void)routingViewControllerDidUpdateItems:(id)a3;
- (void)setConfigureRoutingButton:(id)a3;
- (void)setContentEdgeInsets:(UIEdgeInsets)a3;
- (void)setContext:(int64_t)a3;
- (void)setController:(id)a3;
- (void)setLayout:(int64_t)a3;
- (void)setOnScreen:(BOOL)a3;
- (void)setPlaybackDataSource:(id)a3;
- (void)setRoutingViewController:(id)a3;
- (void)setShowArtworkView:(BOOL)a3;
- (void)setStylingProvider:(id)a3;
- (void)setSupportsHorizontalLayout:(BOOL)a3;
- (void)trackStartedShowingMediaSuggestions;
- (void)trackSuggestionSelected:(id)a3 atIndex:(unint64_t)a4 error:(id)a5;
- (void)trackSuggestionsDisplayed:(id)a3;
- (void)transportControlsView:(id)a3 didSelectTVRemoteButton:(id)a4;
- (void)updateArtwork;
- (void)updateContentAnimated:(id)a3 completion:(id)a4;
- (void)updateLayout;
- (void)updateNowPlayingInfo;
- (void)updateQuickControl;
- (void)updateRouteLabel;
- (void)updateRoutingButtonAnimated:(BOOL)a3;
- (void)updateRoutingContentEdgeInsets;
- (void)updateRoutingDiscoveryMode;
- (void)updateSuggestionContext;
- (void)updateSuggestions;
- (void)updateTimeControlsForPresentationInterval:(id)a3;
- (void)updateTransportControls;
- (void)updateVisibility;
- (void)updateVolumeControls;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MRUNowPlayingViewController

- (void)trackSuggestionsDisplayed:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v32 + 1) + 8 * i) bundleID];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = @"unspecified";
        }

        v13 = v12;

        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v7);
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __68__MRUNowPlayingViewController_Analytics__trackSuggestionsDisplayed___block_invoke;
  v30[3] = &unk_1E7663820;
  v30[4] = self;
  v21 = v5;
  v31 = v21;
  [MRUAnalytics sendEvent:@"com.apple.mediaremote.suggestions-displayed" withError:0 payload:v30];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * j);
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __68__MRUNowPlayingViewController_Analytics__trackSuggestionsDisplayed___block_invoke_2;
        v23[3] = &unk_1E7663848;
        v23[4] = v19;
        v20 = v14;
        v24 = v20;
        v25 = self;
        [MRUAnalytics sendEvent:@"com.apple.mediaremote.suggestion-provider-displayed" withError:0 payload:v23];
      }

      v16 = [v20 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v16);
  }
}

id __68__MRUNowPlayingViewController_Analytics__trackSuggestionsDisplayed___block_invoke(uint64_t a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) destination];
  v3 = [v2 designatedGroupLeader];
  [v3 deviceSubtype];
  v4 = MRAVOutputDeviceSubtypeCopyDescription();

  v12[0] = @"populatedItemsCount";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count")}];
  v13[0] = v5;
  v12[1] = @"context";
  v6 = [*(a1 + 32) contextString];
  v13[1] = v6;
  v13[2] = v4;
  v12[2] = 0x1F1446A88;
  v12[3] = @"isRemoteDestination";
  v7 = MEMORY[0x1E696AD98];
  v8 = [*(a1 + 32) destination];
  v9 = [v7 numberWithInt:{objc_msgSend(v8, "isLocalEndpoint") ^ 1}];
  v13[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

id __68__MRUNowPlayingViewController_Analytics__trackSuggestionsDisplayed___block_invoke_2(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v9[0] = v3;
  v8[0] = 0x1F1446A68;
  v8[1] = @"suggestionsCount";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v2, "countForObject:")}];
  v9[1] = v4;
  v8[2] = @"context";
  v5 = [*(a1 + 48) contextString];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (void)trackSuggestionSelected:(id)a3 atIndex:(unint64_t)a4 error:(id)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__MRUNowPlayingViewController_Analytics__trackSuggestionSelected_atIndex_error___block_invoke;
  v10[3] = &unk_1E7663870;
  v10[4] = self;
  v11 = v8;
  v12 = a4;
  v9 = v8;
  [MRUAnalytics sendEvent:@"com.apple.mediaremote.suggestion-selected" withError:a5 payload:v10];
}

id __80__MRUNowPlayingViewController_Analytics__trackSuggestionSelected_atIndex_error___block_invoke(uint64_t a1)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) destination];
  v3 = [v2 designatedGroupLeader];
  [v3 deviceSubtype];
  v4 = MRAVOutputDeviceSubtypeCopyDescription();

  v13[0] = 0x1F1446A68;
  v5 = [*(a1 + 40) bundleID];
  v14[0] = v5;
  v13[1] = @"selectedIndex";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  v14[1] = v6;
  v14[2] = v4;
  v13[2] = 0x1F1446A88;
  v13[3] = @"isRemoteDestination";
  v7 = MEMORY[0x1E696AD98];
  v8 = [*(a1 + 32) destination];
  v9 = [v7 numberWithInt:{objc_msgSend(v8, "isLocalEndpoint") ^ 1}];
  v14[3] = v9;
  v13[4] = @"context";
  v10 = [*(a1 + 32) contextString];
  v14[4] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];

  return v11;
}

- (id)contextString
{
  v2 = [(MRUNowPlayingViewController *)self context];

  return MRUNowPlayingContextDescription(v2);
}

- (id)destination
{
  v2 = [(MRUNowPlayingViewController *)self controller];
  v3 = [v2 endpointController];
  v4 = [v3 route];
  v5 = [v4 endpoint];

  return v5;
}

- (MRUNowPlayingViewController)initWithController:(id)a3 routeControlsPresentation:(int64_t)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = MRUNowPlayingViewController;
  v8 = [(MRUNowPlayingViewController *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_routeControlsPresentation = a4;
    objc_storeStrong(&v8->_controller, a3);
    v10 = objc_alloc_init(MRUVisualStylingProvider);
    stylingProvider = v9->_stylingProvider;
    v9->_stylingProvider = v10;

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__MRUNowPlayingViewController_initWithController_routeControlsPresentation___block_invoke;
    v14[3] = &unk_1E7664C58;
    v12 = v9;
    v15 = v12;
    v12->_stateHandle = __76__MRUNowPlayingViewController_initWithController_routeControlsPresentation___block_invoke(v14);
    *&v12->_contentEdgeInsets.top = MRUNowPlayingContentEdgeInsetsDefault;
    *&v12->_contentEdgeInsets.bottom = *&qword_1A2307CA8;
    v12->_showArtworkView = 1;
  }

  return v9;
}

uint64_t __76__MRUNowPlayingViewController_initWithController_routeControlsPresentation___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p", objc_opt_class(), *(a1 + 32)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__MRUNowPlayingViewController_initWithController_routeControlsPresentation___block_invoke_2;
  v5[3] = &unk_1E7664C30;
  objc_copyWeak(&v6, &location);
  v3 = MCLogAddStateHandlerWithName(v2, v5);
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);
  return v3;
}

id __76__MRUNowPlayingViewController_initWithController_routeControlsPresentation___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = [WeakRetained _stateDumpObject];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MRUNowPlayingViewController)initWithRouteUID:(id)a3 client:(id)a4 player:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [[MRUEndpointController alloc] initWithRouteUID:v8 client:v10 player:v9];

  v12 = [[MRUNowPlayingController alloc] initWithEndpointController:v11];
  v13 = [(MRUNowPlayingViewController *)self initWithController:v12 routeControlsPresentation:2];
  if (v13)
  {
    v14 = v8;
    if (!v8)
    {
      v14 = [MEMORY[0x1E69B09A8] localDeviceUID];
    }

    objc_storeStrong(&v13->_routeUID, v14);
    if (!v8)
    {
    }
  }

  return v13;
}

- (void)loadView
{
  v3 = objc_alloc_init(MRUNowPlayingView);
  [(MRUNowPlayingViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = MRUNowPlayingViewController;
  [(MRUNowPlayingViewController *)&v29 viewDidLoad];
  layout = self->_layout;
  v4 = [(MRUNowPlayingViewController *)self view];
  [v4 setLayout:layout];

  context = self->_context;
  v6 = [(MRUNowPlayingViewController *)self view];
  [v6 setContext:context];

  supportsHorizontalLayout = self->_supportsHorizontalLayout;
  v8 = [(MRUNowPlayingViewController *)self view];
  [v8 setSupportsHorizontalLayout:supportsHorizontalLayout];

  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  v13 = [(MRUNowPlayingViewController *)self view];
  [v13 setContentEdgeInsets:{top, left, bottom, right}];

  stylingProvider = self->_stylingProvider;
  v15 = [(MRUNowPlayingViewController *)self view];
  [v15 setStylingProvider:stylingProvider];

  v16 = [(MRUNowPlayingViewController *)self view];
  v17 = [v16 artworkView];
  [v17 addTarget:self action:sel_didSelectArtworkView_ forControlEvents:64];

  v18 = [(MRUNowPlayingViewController *)self view];
  v19 = [v18 headerView];
  v20 = [v19 labelView];
  [v20 addTarget:self action:sel_didSelectLabelView_ forControlEvents:64];

  v21 = [(MRUNowPlayingViewController *)self view];
  v22 = [v21 headerView];
  v23 = [v22 routingButton];
  [v23 addTarget:self action:sel_didSelectRoutingButton_ forControlEvents:64];

  v24 = [(MRUNowPlayingViewController *)self view];
  v25 = [v24 transportControlsView];
  [v25 setDelegate:self];

  v26 = [(MRUNowPlayingViewController *)self view];
  v27 = [v26 volumeControlsView];
  [v27 setDelegate:self];

  [(MRUNowPlayingController *)self->_controller addObserver:self];
  v28 = +[MRUCallMonitor sharedMonitor];
  [v28 addObserver:self];

  [(MRUNowPlayingViewController *)self createRoutingViewController];
  [(MRUNowPlayingViewController *)self updateRoutingButton];
  [(MRUNowPlayingViewController *)self updateRouteLabel];
  [(MRUNowPlayingViewController *)self updateArtwork];
  [(MRUNowPlayingViewController *)self updateNowPlayingInfo];
  [(MRUNowPlayingViewController *)self updateTimeControls];
  [(MRUNowPlayingViewController *)self updateTransportControls];
  [(MRUNowPlayingViewController *)self updateQuickControl];
  [(MRUNowPlayingViewController *)self updateVolumeControls];
  [(MRUNowPlayingViewController *)self updateVisibility];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = MRUNowPlayingViewController;
  [(MRUNowPlayingViewController *)&v7 viewWillAppear:?];
  [(MRUNowPlayingViewController *)self setOnScreen:1];
  v5 = [(MRUNowPlayingViewController *)self view];
  v6 = [v5 showSuggestionsView];

  if (v6)
  {
    [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController beginAppearanceTransition:1 animated:v3];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MRUNowPlayingViewController;
  [(MRUNowPlayingViewController *)&v6 viewDidAppear:a3];
  v4 = [(MRUNowPlayingViewController *)self view];
  v5 = [v4 showSuggestionsView];

  if (v5)
  {
    [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController endAppearanceTransition];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = MRUNowPlayingViewController;
  [(MRUNowPlayingViewController *)&v7 viewWillDisappear:?];
  [(MRUNowPlayingViewController *)self setOnScreen:0];
  v5 = [(MRUNowPlayingViewController *)self view];
  v6 = [v5 showSuggestionsView];

  if (v6)
  {
    [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController beginAppearanceTransition:0 animated:v3];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MRUNowPlayingViewController;
  [(MRUNowPlayingViewController *)&v6 viewDidDisappear:a3];
  v4 = [(MRUNowPlayingViewController *)self view];
  v5 = [v4 showSuggestionsView];

  if (v5)
  {
    [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController endAppearanceTransition];
  }
}

- (void)dealloc
{
  os_state_remove_handler();
  [(MRUNowPlayingController *)self->_controller updateAutomaticResponseLoading];
  v3.receiver = self;
  v3.super_class = MRUNowPlayingViewController;
  [(MRUNowPlayingViewController *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MRUNowPlayingViewController *)self controller];
  v6 = [v5 endpointController];
  v7 = [v6 route];
  v8 = [v3 stringWithFormat:@"<%@: %p route: %@", v4, self, v7];

  return v8;
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    v3 = a3;
    self->_onScreen = a3;
    v5 = [(MRUNowPlayingViewController *)self controller];
    [v5 updateAutomaticResponseLoading];

    [(MRUNowPlayingViewController *)self updateRoutingButton];
    [(MRUNowPlayingViewController *)self updateRouteLabel];
    [(MRUNowPlayingViewController *)self updateArtwork];
    [(MRUNowPlayingViewController *)self updateNowPlayingInfo];
    [(MRUNowPlayingViewController *)self updateTransportControls];
    [(MRUNowPlayingViewController *)self updateQuickControl];
    [(MRUNowPlayingViewController *)self updateRoutingDiscoveryMode];
    [(MRUNowPlayingViewController *)self updateSuggestions];
    [(MRUNowPlayingViewController *)self trackStartedShowingMediaSuggestions];
    [(MRUNowPlayingViewController *)self updateTimeControls];
    [(MRUNowPlayingViewController *)self updateVolumeControls];
    [(MRUNowPlayingViewController *)self updateVisibility];
    if (v3)
    {
      v7 = [(MRUNowPlayingViewController *)self controller];
      v6 = [v7 mediaSuggestionsController];
      [v6 refreshMediaSuggestions];
    }
  }
}

- (MRUArtworkView)artworkView
{
  v2 = [(MRUNowPlayingViewController *)self view];
  v3 = [v2 artworkView];

  return v3;
}

- (void)setController:(id)a3
{
  v4 = a3;
  [(MRUNowPlayingController *)self->_controller removeObserver:self];
  controller = self->_controller;
  self->_controller = v4;
  v6 = v4;

  [(MRUNowPlayingController *)self->_controller addObserver:self];
  v7 = [(MRUNowPlayingViewController *)self context];
  v8 = [(MRUNowPlayingController *)v6 tvRemoteController];

  [v8 setContext:v7];
  [(MRUNowPlayingViewController *)self createRoutingViewController];
  v9 = [(MRUNowPlayingViewController *)self controller];
  v10 = [v9 mediaSuggestionsController];
  [v10 refreshMediaSuggestions];

  [(MRUNowPlayingViewController *)self updateRoutingButton];
  [(MRUNowPlayingViewController *)self updateRouteLabel];
  [(MRUNowPlayingViewController *)self updateArtwork];
  [(MRUNowPlayingViewController *)self updateNowPlayingInfo];
  [(MRUNowPlayingViewController *)self updateTimeControls];
  [(MRUNowPlayingViewController *)self updateTransportControls];
  [(MRUNowPlayingViewController *)self updateQuickControl];
  [(MRUNowPlayingViewController *)self updateVolumeControls];
  [(MRUNowPlayingViewController *)self updateVisibility];
  [(MRUNowPlayingViewController *)self updateRoutingDiscoveryMode];
  [(MRUNowPlayingViewController *)self updateSuggestions];

  [(MRUNowPlayingViewController *)self trackStartedShowingMediaSuggestions];
}

- (void)setLayout:(int64_t)a3
{
  layout = self->_layout;
  if (layout != a3)
  {
    self->_layout = a3;
    v6 = [(MRUNowPlayingViewController *)self viewIfLoaded];
    [v6 setLayout:a3];

    v7 = [(MRUNowPlayingViewController *)self suggestionsViewController];
    [v7 setLayout:a3 == 4];

    [(MRUNowPlayingViewController *)self updateRoutingContentEdgeInsets];
    [(MRUNowPlayingViewController *)self updateArtwork];
    [(MRUNowPlayingViewController *)self updateRoutingButton];
    [(MRUNowPlayingViewController *)self updateRouteLabel];
    [(MRUNowPlayingViewController *)self updateNowPlayingInfo];
    [(MRUNowPlayingViewController *)self updateVolumeControls];
    [(MRUNowPlayingViewController *)self updateRoutingDiscoveryMode];
    [(MRUNowPlayingViewController *)self updateSuggestions];
    [(MRUNowPlayingViewController *)self updateVisibility];
    v8 = a3 != 1 || layout == 1;
    v9 = !v8;
    if (!v8 || a3 != 1 && layout == 1)
    {
      [(MRURoutingViewController *)self->_routingViewController beginAppearanceTransition:v9 animated:1];
      routingViewController = self->_routingViewController;

      [(MRURoutingViewController *)routingViewController endAppearanceTransition];
    }
  }
}

- (void)setContext:(int64_t)a3
{
  if (self->_context != a3)
  {
    self->_context = a3;
    v6 = [(MRUNowPlayingViewController *)self viewIfLoaded];
    [v6 setContext:a3];

    v7 = [(MRUNowPlayingViewController *)self controller];
    v8 = [v7 tvRemoteController];
    [v8 setContext:a3];

    [(MRUNowPlayingViewController *)self updateSuggestionContext];

    [(MRUNowPlayingViewController *)self updateVolumeControls];
  }
}

- (void)setSupportsHorizontalLayout:(BOOL)a3
{
  if (self->_supportsHorizontalLayout != a3)
  {
    v4 = a3;
    self->_supportsHorizontalLayout = a3;
    v6 = [(MRUNowPlayingViewController *)self viewIfLoaded];
    [v6 setSupportsHorizontalLayout:v4];

    v7 = [(MRUNowPlayingViewController *)self suggestionsViewController];
    [v7 setSupportsHorizontalLayout:v4];
  }
}

- (void)setContentEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentEdgeInsets.top, v3), vceqq_f64(*&self->_contentEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentEdgeInsets = a3;
    right = a3.right;
    left = a3.left;
    bottom = a3.bottom;
    top = a3.top;
    v6 = [(MRUNowPlayingViewController *)self viewIfLoaded];
    [v6 setContentEdgeInsets:{top, left, bottom, right}];

    v7 = [(MRUNowPlayingViewController *)self suggestionsViewController];
    [v7 setContentEdgeInsets:{top, left, bottom, right}];

    [(MRUNowPlayingViewController *)self updateRoutingContentEdgeInsets];
  }
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    v6 = [(MRUNowPlayingViewController *)self viewIfLoaded];
    [v6 setStylingProvider:v9];

    v7 = [(MRUNowPlayingViewController *)self suggestionsViewController];
    [v7 setStylingProvider:v9];

    v8 = [(MRUNowPlayingViewController *)self routingViewController];
    [v8 setStylingProvider:v9];

    v5 = v9;
  }
}

- (void)setPlaybackDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_playbackDataSource);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_playbackDataSource, obj);
    v5 = [(MRUNowPlayingViewController *)self routingViewController];
    v6 = [v5 routingController];
    [v6 setPlaybackDataSource:obj];
  }
}

- (void)setConfigureRoutingButton:(id)a3
{
  v4 = [a3 copy];
  configureRoutingButton = self->_configureRoutingButton;
  self->_configureRoutingButton = v4;

  [(MRUNowPlayingViewController *)self updateRoutingButton];
}

- (void)setRoutingViewController:(id)a3
{
  v9 = a3;
  [(MRURoutingViewController *)self->_routingViewController setDelegate:0];
  if (self->_layout == 1)
  {
    [(MRURoutingViewController *)self->_routingViewController beginAppearanceTransition:0 animated:0];
    [(MRURoutingViewController *)self->_routingViewController endAppearanceTransition];
  }

  [(MRURoutingViewController *)self->_routingViewController willMoveToParentViewController:0];
  [(MRURoutingViewController *)self->_routingViewController removeFromParentViewController];
  objc_storeStrong(&self->_routingViewController, a3);
  v5 = [(MRUNowPlayingController *)self->_controller endpointController];
  v6 = [v5 route];
  [(MRURoutingViewController *)self->_routingViewController setEndpointRoute:v6];

  [(MRURoutingViewController *)self->_routingViewController setDelegate:self];
  [(MRURoutingViewController *)self->_routingViewController setVolumeGroupCoordinator:self->_volumeGroupCoordinator];
  [(MRURoutingViewController *)self->_routingViewController setStylingProvider:self->_stylingProvider];
  [(MRUNowPlayingViewController *)self updateRoutingContentEdgeInsets];
  [(MRUNowPlayingViewController *)self updateRoutingDiscoveryMode];
  [(MRUNowPlayingViewController *)self addChildViewController:v9];
  v7 = [v9 view];
  v8 = [(MRUNowPlayingViewController *)self view];
  [v8 setContentView:v7];

  [v9 didMoveToParentViewController:self];
  if (self->_layout == 1)
  {
    [(MRURoutingViewController *)self->_routingViewController beginAppearanceTransition:1 animated:0];
    [(MRURoutingViewController *)self->_routingViewController endAppearanceTransition];
  }
}

- (void)setShowArtworkView:(BOOL)a3
{
  if (self->_showArtworkView != a3)
  {
    v9 = v3;
    v10 = v4;
    self->_showArtworkView = a3;
    [(MRUNowPlayingViewController *)self updateArtwork];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__MRUNowPlayingViewController_setShowArtworkView___block_invoke;
    v7[3] = &unk_1E7663F38;
    v7[4] = self;
    v8 = a3;
    [(MRUNowPlayingViewController *)self updateContentAnimated:v7 completion:0];
  }
}

void __50__MRUNowPlayingViewController_setShowArtworkView___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) view];
  [v2 setShowArtworkView:v1];
}

- (NSArray)restrictedRects
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  v4 = [(MRUNowPlayingViewController *)self view];
  if ([v4 showSuggestionsView])
  {
    v5 = [(MRUNowPlayingViewController *)self view];
    v6 = [v5 suggestionsView];

    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = [(MRUNowPlayingViewController *)self view];
    v8 = [v7 suggestionsView];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v4 = [MEMORY[0x1E696B098] valueWithRect:{v10, v12, v14, v16}];
    [v3 addObject:v4];
  }

LABEL_5:
  v17 = [(MRUNowPlayingViewController *)self view];
  v18 = [v17 showArtworkView];

  if (v18)
  {
    v19 = [(MRUNowPlayingViewController *)self view];
    v20 = [v19 artworkView];
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = [MEMORY[0x1E696B098] valueWithRect:{v22, v24, v26, v28}];
    [v3 addObject:v29];
  }

  v30 = [(MRUNowPlayingViewController *)self view];
  v31 = [v30 headerView];
  [v31 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = [MEMORY[0x1E696B098] valueWithRect:{v33, v35, v37, v39}];
  [v3 addObject:v40];

  v41 = [(MRUNowPlayingViewController *)self view];
  LODWORD(v31) = [v41 showTimeControlsView];

  if (v31)
  {
    v42 = [(MRUNowPlayingViewController *)self view];
    v43 = [v42 timeControlsView];
    [v43 frame];

    UIRectInset();
    v44 = [MEMORY[0x1E696B098] valueWithRect:?];
    [v3 addObject:v44];
  }

  v45 = [(MRUNowPlayingViewController *)self view];
  v46 = [v45 showTransportControlsView];

  if (v46)
  {
    v47 = [(MRUNowPlayingViewController *)self view];
    v48 = [v47 transportControlsView];
    [v48 frame];

    UIRectInset();
    v49 = [MEMORY[0x1E696B098] valueWithRect:?];
    [v3 addObject:v49];
  }

  v50 = [(MRUNowPlayingViewController *)self view];
  v51 = [v50 showVolumeControlsView];

  if (v51)
  {
    v52 = [(MRUNowPlayingViewController *)self view];
    v53 = [v52 volumeControlsView];
    [v53 frame];

    UIRectInset();
    v54 = [MEMORY[0x1E696B098] valueWithRect:?];
    [v3 addObject:v54];
  }

  v55 = [v3 copy];

  return v55;
}

- (void)didSelectArtworkView:(id)a3
{
  v4 = [(MRUNowPlayingViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0 || (-[MRUNowPlayingViewController delegate](self, "delegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 nowPlayingViewControllerDidSelectArtworkView:self], v6, (v7 & 1) == 0))
  {

    [(MRUNowPlayingViewController *)self launchNowPlayingApp];
  }
}

- (void)didSelectQuickControl:(id)a3
{
  v3 = [(MRUNowPlayingController *)self->_controller quickControlItem];
  v5 = [v3 mainAction];

  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v4 = v5;
  }
}

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeBundleID:(id)a5
{
  [(MRUNowPlayingViewController *)self updateRoutingButton:a3];

  [(MRUNowPlayingViewController *)self updateNowPlayingInfo];
}

- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5
{
  [(MRUNowPlayingViewController *)self updateRouteLabel:a3];
  [(MRUNowPlayingViewController *)self updateVolumeControls];
  [(MRUNowPlayingViewController *)self updateRoutingButtonAnimated:1];

  [(MRUNowPlayingViewController *)self updateLayout];
}

- (void)nowPlayingController:(id)a3 tvRemoteController:(id)a4 didChangeShowTVRemote:(BOOL)a5
{
  v6 = [a4 showTVRemote];
  v8 = [(MRUNowPlayingViewController *)self view];
  v7 = [v8 transportControlsView];
  [v7 setShowTVRemoteButton:v6];
}

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeNowPlayingInfo:(id)a5
{
  self->_playing = [a5 isPlaying];

  [(MRUNowPlayingViewController *)self updateNowPlayingInfo];
}

- (void)nowPlayingController:(id)a3 queueHandoffCoordinator:(id)a4 didChangeState:(int64_t)a5
{
  v25 = a3;
  v8 = a4;
  v9 = v8;
  if (a5 == 4)
  {
    v19 = [(MRUNowPlayingViewController *)self artworkView];
    v24 = [v19 layer];
    [v24 removeAllAnimations];
  }

  else
  {
    if (a5 == 2)
    {
      v21 = *MEMORY[0x1E695F060];
      v22 = *(MEMORY[0x1E695F060] + 8);
      v23 = [(MRUNowPlayingViewController *)self view];
      [v23 setArtworkOverrideSize:{v21, v22}];

      v18 = [(MRUNowPlayingViewController *)self view];
      v19 = v18;
      v20 = 0;
    }

    else
    {
      if (a5 != 1)
      {
        goto LABEL_12;
      }

      [v8 artworkSize];
      v11 = v10;
      v13 = v12;
      v14 = [(MRUNowPlayingViewController *)self view];
      [v14 setArtworkOverrideSize:{v11, v13}];

      [v9 artworkSize];
      v17 = v16 != *(MEMORY[0x1E695F060] + 8) || v15 != *MEMORY[0x1E695F060];
      v18 = [(MRUNowPlayingViewController *)self view];
      v19 = v18;
      v20 = v17;
    }

    [v18 setUseArtworkOverrideSize:v20];
  }

LABEL_12:
}

- (void)mediaSuggestionsViewController:(id)a3 didSelectSuggestion:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 mediaSuggestions];
  v11 = [v10 indexOfObject:v8];

  v12 = [(MRUNowPlayingController *)self->_controller mediaSuggestionsController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__MRUNowPlayingViewController_mediaSuggestionsViewController_didSelectSuggestion_completion___block_invoke;
  v15[3] = &unk_1E76656A0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v11;
  v13 = v9;
  v14 = v8;
  [v12 playSuggestion:v14 completion:v15];
}

uint64_t __93__MRUNowPlayingViewController_mediaSuggestionsViewController_didSelectSuggestion_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) trackSuggestionSelected:*(a1 + 40) atIndex:*(a1 + 56) error:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)routingViewController:(id)a3 didSelectRoutingViewItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 actionIdentifier];
  if ([v8 isEqualToString:*MEMORY[0x1E696F8A8]])
  {
    v9 = [(MRUNowPlayingViewController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      objc_initWeak(&location, self);
      objc_copyWeak(&v11, &location);
      SBSRequestPasscodeUnlockAlertUI();
      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }

  else
  {
  }
}

void __78__MRUNowPlayingViewController_routingViewController_didSelectRoutingViewItem___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v4 = [MEMORY[0x1E69CDFD0] instantiateViewController];
    [v4 setFlags:1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__MRUNowPlayingViewController_routingViewController_didSelectRoutingViewItem___block_invoke_2;
    v7[3] = &unk_1E7663DA8;
    v5 = WeakRetained;
    v8 = v5;
    [v4 setCompletion:v7];
    v6 = [v5 delegate];
    [v6 nowPlayingViewController:v5 showViewController:v4];
  }
}

void __78__MRUNowPlayingViewController_routingViewController_didSelectRoutingViewItem___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MCLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = [v5 mediaRouteIdentifier];
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "%@ ShareAudio dismissed: RouteID %@, Error %@", &v11, 0x20u);
  }

  v10 = [*(a1 + 32) delegate];
  [v10 nowPlayingViewController:*(a1 + 32) showViewController:0];
}

- (void)routingViewControllerDidUpdateItems:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (self->_layout == 1)
  {
    v7 = WeakRetained;
    v6 = objc_opt_respondsToSelector();
    v5 = v7;
    if (v6)
    {
      [v7 nowPlayingViewController:self didChangeSizeWithAnimations:0 completion:0];
      v5 = v7;
    }
  }
}

- (void)transportControlsView:(id)a3 didSelectTVRemoteButton:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_coordinatedDismissalBlock)
  {
    v8 = [(MRUNowPlayingController *)self->_controller tvRemoteController];
    objc_initWeak(&location, v8);

    coordinatedDismissalBlock = self->_coordinatedDismissalBlock;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__MRUNowPlayingViewController_transportControlsView_didSelectTVRemoteButton___block_invoke;
    v11[3] = &unk_1E7663AE8;
    objc_copyWeak(&v12, &location);
    coordinatedDismissalBlock[2](coordinatedDismissalBlock, v11);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [(MRUNowPlayingController *)self->_controller tvRemoteController];
    [v10 presentTVRemoteUsingApp:0];
  }
}

void __77__MRUNowPlayingViewController_transportControlsView_didSelectTVRemoteButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentTVRemoteUsingApp:0];
}

- (void)createRoutingViewController
{
  if (!self->_routeControlsPresentation)
  {
    v14[5] = v2;
    v14[6] = v3;
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"%@(devices)", v7];

    v9 = dispatch_get_global_queue(25, 0);
    objc_initWeak(v14, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__MRUNowPlayingViewController_createRoutingViewController__block_invoke;
    block[3] = &unk_1E7663980;
    objc_copyWeak(&v13, v14);
    v12 = v8;
    v10 = v8;
    dispatch_async(v9, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(v14);
  }
}

void __58__MRUNowPlayingViewController_createRoutingViewController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MRUOutputDeviceRoutingDataSource);
    v4 = [WeakRetained controller];
    v5 = [v4 endpointController];
    v6 = [v5 route];
    [(MRUOutputDeviceRoutingDataSource *)v3 setEndpointRoute:v6];

    if (MRAVOutputContextGetSharedAudioPresentationContext())
    {
      v7 = MRAVOutputContextCopyUniqueIdentifier();
      [(MRUOutputDeviceRoutingDataSource *)v3 setRoutingContextUID:v7];
    }

    [(MRUOutputDeviceRoutingDataSource *)v3 setSupportsMultipleSelection:1];
    [(MPAVRoutingDataSource *)v3 setFilterMode:0];
    [(MRUOutputDeviceRoutingDataSource *)v3 setInitiator:*MEMORY[0x1E698A710]];
    [(MRUOutputDeviceRoutingDataSource *)v3 setDetachesRoutesToGroup:1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__MRUNowPlayingViewController_createRoutingViewController__block_invoke_2;
    block[3] = &unk_1E7663D30;
    v10 = v3;
    v11 = *(a1 + 32);
    v12 = WeakRetained;
    v8 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __58__MRUNowPlayingViewController_createRoutingViewController__block_invoke_2(uint64_t a1)
{
  v4 = [objc_alloc(MEMORY[0x1E6970490]) initWithDataSource:*(a1 + 32) name:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 1112));
  [v4 setPlaybackDataSource:WeakRetained];

  v3 = [[MRURoutingViewController alloc] initWithRoutingController:v4];
  [*(a1 + 48) setRoutingViewController:v3];
  [*(a1 + 32) setHearingAidDelegate:v3];
}

- (void)createSuggestionsViewController
{
  v3 = [(MRUNowPlayingController *)self->_controller mediaSuggestionsController];
  v10 = [v3 mediaSuggestions];

  v4 = [[MRUMediaSuggestionsViewController alloc] initWithMediaSuggestions:v10];
  suggestionsViewController = self->_suggestionsViewController;
  self->_suggestionsViewController = v4;

  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setDelegate:self];
  v6 = [(MRUNowPlayingViewController *)self view];
  -[MRUMediaSuggestionsViewController setLayout:](self->_suggestionsViewController, "setLayout:", [v6 layout] == 4);

  v7 = [(MRUNowPlayingViewController *)self stylingProvider];
  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setStylingProvider:v7];

  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setSupportsHorizontalLayout:self->_supportsHorizontalLayout];
  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setContentEdgeInsets:self->_contentEdgeInsets.top, self->_contentEdgeInsets.left, self->_contentEdgeInsets.bottom, self->_contentEdgeInsets.right];
  [(MRUNowPlayingViewController *)self addChildViewController:self->_suggestionsViewController];
  v8 = [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController view];
  v9 = [(MRUNowPlayingViewController *)self view];
  [v9 setSuggestionsView:v8];

  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController didMoveToParentViewController:self];
}

- (void)updateRoutingContentEdgeInsets
{
  if (self->_supportsHorizontalLayout && ([(MRUNowPlayingViewController *)self view], v3 = objc_claimAutoreleasedReturnValue(), ShouldBeVertical = MRULayoutShouldBeVertical(), v3, !ShouldBeVertical))
  {
    v8 = 13.0;
    routingViewController = self->_routingViewController;
    left = self->_contentEdgeInsets.left;
    right = self->_contentEdgeInsets.right;
  }

  else
  {
    left = self->_contentEdgeInsets.left;
    routingViewController = self->_routingViewController;
    right = self->_contentEdgeInsets.right;
    v8 = 0.0;
  }

  [(MRURoutingViewController *)routingViewController setContentEdgeInsets:v8, left, 13.0, right];
}

- (void)updateRoutingDiscoveryMode
{
  if ([(MRUNowPlayingViewController *)self isOnScreen])
  {
    if ([(MRUNowPlayingViewController *)self layout]== 1)
    {
      v3 = 3;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 1;
  }

  routingViewController = self->_routingViewController;

  [(MRURoutingViewController *)routingViewController setDiscoveryMode:v3];
}

- (void)updateArtwork
{
  if ([(MRUNowPlayingViewController *)self showArtworkView])
  {
    v3 = [(MRUNowPlayingController *)self->_controller metadataController];
    v6 = [v3 artwork];

    v4 = [(MRUNowPlayingViewController *)self view];
    v5 = [v4 artworkView];

    [v5 setArtwork:v6];
  }
}

- (void)updateRouteLabel
{
  v3 = [(MRUNowPlayingViewController *)self view];
  v4 = [v3 artworkView];

  v5 = [(MRUNowPlayingViewController *)self view];
  v6 = [v5 headerView];
  v7 = [v6 labelView];

  v8 = [(MRUNowPlayingController *)self->_controller endpointController];
  v9 = [v8 route];

  v10 = MEMORY[0x1E69DCAB8];
  v11 = [(MRUNowPlayingController *)self->_controller deviceSymbolName];
  v12 = [v10 _systemImageNamed:v11];
  [v4 setPlaceholderImage:v12];

  [v7 setRoute:v9];
  v13 = [(MRUNowPlayingViewController *)self showRouteLabel];
  if (v13 != [v7 showRoute])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__MRUNowPlayingViewController_updateRouteLabel__block_invoke;
    v14[3] = &unk_1E7663F38;
    v15 = v7;
    v16 = v13;
    [(MRUNowPlayingViewController *)self updateContentAnimated:v14 completion:0];
  }
}

- (void)updateNowPlayingInfo
{
  v3 = [(MRUNowPlayingController *)self->_controller metadataController];
  v4 = [v3 nowPlayingInfo];

  v5 = [(MRUNowPlayingViewController *)self view];
  v6 = [v5 headerView];
  v7 = [v6 labelView];

  v8 = [(MRUNowPlayingController *)self->_controller endpointController];
  if (([v8 isEndpointDiscovered] & 1) != 0 || -[MRUNowPlayingViewController context](self, "context") != 3)
  {
    v9 = [v4 placeholder];
  }

  else
  {
    v9 = +[MRUStringsProvider controlsUnavailable];
  }

  v10 = v9;
  [v7 setPlaceholder:v9];

  v11 = [v4 stringForComponents:1];
  v12 = [v4 stringForComponents:58];
  if (v11 | v12)
  {
    [v7 setTitle:v11];
    v13 = v12;
  }

  else
  {
    v14 = [(MRUNowPlayingController *)self->_controller metadataController];
    v15 = [v14 bundleName];
    [v7 setTitle:v15];

    v13 = 0;
  }

  [v7 setSubtitle:v13];
  v16 = self->_layout != 3 || self->_context == 3;
  v17 = [v4 showPlaceholder];
  if (v17 != [v7 showPlaceholder] || v16 != objc_msgSend(v7, "showSubtitle"))
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __51__MRUNowPlayingViewController_updateNowPlayingInfo__block_invoke;
    v22 = &unk_1E76656C8;
    v23 = v7;
    v24 = v17;
    v25 = v16;
    [(MRUNowPlayingViewController *)self updateContentAnimated:&v19 completion:0];
  }

  v18 = [(MRUNowPlayingViewController *)self view:v19];
  [v18 setNeedsLayout];
}

uint64_t __51__MRUNowPlayingViewController_updateNowPlayingInfo__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShowPlaceholder:*(a1 + 40)];
  v2 = *(a1 + 41);
  v3 = *(a1 + 32);

  return [v3 setShowSubtitle:v2];
}

- (void)updateTimeControlsForPresentationInterval:(id)a3
{
  controller = self->_controller;
  v5 = a3;
  v6 = [(MRUNowPlayingController *)controller metadataController];
  v9 = [v6 timeControls];

  v7 = [(MRUNowPlayingViewController *)self view];
  v8 = [v7 timeControlsView];

  [v8 setTimeControls:v9 forPresentationInterval:v5];
}

- (void)updateTransportControls
{
  v3 = [(MRUNowPlayingController *)self->_controller metadataController];
  v7 = [v3 transportControls];

  v4 = [(MRUNowPlayingViewController *)self view];
  v5 = [v4 transportControlsView];

  [v5 setTransportControls:v7];
  v6 = [(MRUNowPlayingController *)self->_controller tvRemoteController];
  [v5 setShowTVRemoteButton:{objc_msgSend(v6, "showTVRemote")}];
}

- (void)updateQuickControl
{
  v3 = [(MRUNowPlayingViewController *)self view];
  v7 = [v3 headerView];

  v4 = [(MRUNowPlayingController *)self->_controller quickControlItem];
  [v7 setShowTransportButton:{objc_msgSend(v4, "isEnabled")}];
  v5 = [v7 transportButton];
  v6 = [v4 asset];
  [v5 setAsset:v6];
}

- (void)updateVolumeControls
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = [(MRUNowPlayingViewController *)self view];
  v4 = [v3 volumeControlsView];

  v5 = [(MRUNowPlayingController *)self->_controller endpointController];
  v6 = [v5 route];

  v7 = [v4 volumeController];
  v8 = [v7 dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v4 volumeController];
    v10 = [v9 dataSource];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v4 volumeController];

  if (!v11)
  {
    v14 = [objc_alloc(MEMORY[0x1E6970A20]) initWithGroupRoute:v6 outputDeviceRoute:0];

    v15 = [(MPVolumeController *)[MRUVolumeController alloc] initWithDataSource:v14];
    [v4 setVolumeController:v15];

    goto LABEL_8;
  }

  v12 = [v10 groupRoute];
  v13 = [v12 isEqual:v6];

  if ((v13 & 1) == 0)
  {
    v14 = [objc_alloc(MEMORY[0x1E6970A20]) initWithGroupRoute:v6 outputDeviceRoute:0];

    [v4 setDataSource:v14];
LABEL_8:
    v10 = v14;
  }

  if (!self->_volumeGroupCoordinator && !self->_routeControlsPresentation)
  {
    v16 = [MRUVolumeGroupCoordinator alloc];
    v17 = [v4 volumeController];
    v18 = [(MRUVolumeGroupCoordinator *)v16 initWithMainVolumeController:v17];
    volumeGroupCoordinator = self->_volumeGroupCoordinator;
    self->_volumeGroupCoordinator = v18;

    [v4 setVolumeGroupCoordinator:self->_volumeGroupCoordinator];
    [(MRURoutingViewController *)self->_routingViewController setVolumeGroupCoordinator:self->_volumeGroupCoordinator];
  }

  if ([(MRUNowPlayingViewController *)self context]== 2 || [(MRUNowPlayingViewController *)self context]== 8)
  {
    v20 = [(MRUNowPlayingController *)self->_controller endpointController];
    if ([v20 isDeviceSystemRoute])
    {
      v21 = [(MRUNowPlayingController *)self->_controller endpointController];
      if ([v21 isAirPlaying])
      {
        v22 = 1;
      }

      else
      {
        v23 = [MEMORY[0x1E69B0B28] currentSettings];
        v22 = [v23 alwaysShowVolumeControls];
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 1;
  }

  v24 = 0;
  if (self->_onScreen && v22)
  {
    layout = self->_layout;
    if (layout)
    {
      v26 = layout == 3;
    }

    else
    {
      v26 = 1;
    }

    v24 = !v26;
  }

  v27 = +[MRUCallMonitor sharedMonitor];
  v28 = [v27 isOnCall];

  v29 = [v10 volumeControlCapabilities];
  if (+[MRUFeatureFlagProvider isAutobahnEnabled])
  {
    [(MRUNowPlayingViewController *)self view];
    v31 = v30 = v6;
    [v31 volumeControlsView];
    v33 = v32 = v4;
    [v33 setOnScreen:v24];

    v34 = [(MRUNowPlayingViewController *)self view];
    LODWORD(v33) = [v34 showVolumeControlsView];

    v6 = v30;
    v26 = v22 == v33;
    v4 = v32;
    if (!v26)
    {
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __51__MRUNowPlayingViewController_updateVolumeControls__block_invoke;
      v53[3] = &unk_1E7663F38;
      v53[4] = self;
      v54 = v22;
      [(MRUNowPlayingViewController *)self updateContentAnimated:v53 completion:0];
    }
  }

  if (!(v28 & 1 | ((v24 & 1) == 0)) && ([v6 isDeviceRoute] & 1) == 0 && (v29 & 3) != 0)
  {
    v42 = MCLogCategoryVolume();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = objc_opt_class();
      v44 = MRUNowPlayingLayoutDescription(self->_layout);
      MRUNowPlayingContextDescription(self->_context);
      v46 = v45 = v6;
      *buf = 138545154;
      v56 = v43;
      v57 = 1024;
      v58 = 1;
      v59 = 1024;
      v60 = v22;
      v61 = 1024;
      v62 = 0;
      v63 = 1024;
      *v64 = 1;
      *&v64[4] = 2114;
      *&v64[6] = v44;
      *&v64[14] = 2114;
      *&v64[16] = v46;
      *&v64[24] = 2114;
      *&v64[26] = v45;
      _os_log_impl(&dword_1A20FC000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ taking hardware assertion: on screen: %{BOOL}u | show: %{BOOL}u | call: %{BOOL}u | control: %{BOOL}u | layout: %{public}@ | context: %{public}@ | route: %{public}@", buf, 0x42u);

      v6 = v45;
    }

    v41 = +[MRUHardwareVolumeController sharedInstance];
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    v49 = [v41 requestControlsForVolumeDataSource:v10 reason:v48];
    hardwareVolumeControlAssertion = self->_hardwareVolumeControlAssertion;
    self->_hardwareVolumeControlAssertion = v49;

LABEL_43:
    goto LABEL_44;
  }

  if (self->_hardwareVolumeControlAssertion)
  {
    v35 = MCLogCategoryVolume();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v22;
      v36 = v10;
      v37 = v6;
      v38 = objc_opt_class();
      MRUNowPlayingLayoutDescription(self->_layout);
      v39 = v52 = v4;
      v40 = MRUNowPlayingContextDescription(self->_context);
      *buf = 138544898;
      v56 = v38;
      v6 = v37;
      v10 = v36;
      v57 = 1024;
      v58 = v24;
      v59 = 1024;
      v60 = v51;
      v61 = 1024;
      v62 = v28;
      v63 = 2114;
      *v64 = v39;
      *&v64[8] = 2114;
      *&v64[10] = v40;
      *&v64[18] = 2114;
      *&v64[20] = v6;
      _os_log_impl(&dword_1A20FC000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ removing hardware assertion: on screen: %{BOOL}u | show: %{BOOL}u | call: %{BOOL}u | layout: %{public}@ | context: %{public}@ | route: %{public}@", buf, 0x3Cu);

      v4 = v52;
    }

    v41 = self->_hardwareVolumeControlAssertion;
    self->_hardwareVolumeControlAssertion = 0;
    goto LABEL_43;
  }

LABEL_44:
}

void __51__MRUNowPlayingViewController_updateVolumeControls__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) view];
  [v2 setShowVolumeControlsView:v1];
}

- (void)updateRoutingButtonAnimated:(BOOL)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v5 = [(MRUNowPlayingViewController *)self view];
  v6 = [v5 headerView];

  v7 = [(MRUNowPlayingViewController *)self view];
  v8 = [v7 transportControlsView];

  v9 = [(MRUNowPlayingController *)self->_controller endpointController];
  v10 = [v9 route];
  v11 = [v10 canModifyGroupMembership];

  v12 = v11 && self->_context == 3 && self->_layout == 3;
  [v6 setShowRoutingButton:v12];
  [v8 setShowRoutingButton:v11];
  v13 = [v8 routingButton];
  v25[0] = v13;
  v14 = [v6 routingButton];
  v25[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

  configureRoutingButton = self->_configureRoutingButton;
  if (configureRoutingButton)
  {
    v17 = configureRoutingButton[2](configureRoutingButton, v11);
    v18 = [v15 arrayByAddingObject:v17];

    v15 = v18;
  }

  controller = self->_controller;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__MRUNowPlayingViewController_updateRoutingButtonAnimated___block_invoke;
  v21[3] = &unk_1E76656F0;
  v22 = v15;
  v23 = self;
  v24 = a3;
  v20 = v15;
  [(MRUNowPlayingController *)controller routingDeviceImage:v21];
}

void __59__MRUNowPlayingViewController_updateRoutingButtonAnimated___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MRUAsset image:a2];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([*(a1 + 40) isOnScreen])
        {
          v10 = *(a1 + 48);
        }

        else
        {
          v10 = 0;
        }

        [v9 setAsset:v3 animated:v10 & 1];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (BOOL)showRouteLabel
{
  layout = self->_layout;
  if (!layout)
  {
    return 0;
  }

  if (layout == 2)
  {
    return self->_context != 3;
  }

  if (layout != 4 || [(MRUNowPlayingViewController *)self context]!= 2)
  {
    return 1;
  }

  v4 = [(MRUNowPlayingController *)self->_controller endpointController];
  if ([v4 isDeviceSystemRoute])
  {
    v5 = [(MRUNowPlayingController *)self->_controller endpointController];
    v6 = [v5 isAirPlaying];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)updateLayout
{
  if ([(MRUNowPlayingViewController *)self isViewLoaded])
  {
    v5 = [(MRUNowPlayingController *)self->_controller endpointController];
    v3 = [v5 route];
    if ([v3 canModifyGroupMembership])
    {
    }

    else
    {
      v4 = [(MRUNowPlayingViewController *)self layout];

      if (v4 == 1)
      {

        [(MRUNowPlayingViewController *)self setLayout:2];
      }
    }
  }
}

- (void)updateVisibility
{
  onScreen = self->_onScreen;
  v4 = [(MRUNowPlayingViewController *)self view];
  [v4 setOnScreen:onScreen];

  layout = self->_layout;
  if (layout)
  {
    v6 = layout == 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  v8 = [(MRUNowPlayingViewController *)self view];
  v9 = [v8 artworkView];
  [v9 setEnabled:v7];

  v10 = self->_layout;
  if (v10)
  {
    v11 = v10 == 3;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  v13 = [(MRUNowPlayingViewController *)self view];
  v14 = [v13 headerView];
  v15 = [v14 labelView];
  [v15 setEnabled:v12];

  v16 = self->_layout == 3;
  v18 = [(MRUNowPlayingViewController *)self view];
  v17 = [v18 artworkView];
  [v17 setShowPlaceholder:v16];
}

- (void)updateSuggestionContext
{
  if ([(MRUNowPlayingViewController *)self context]== 3)
  {
    v3 = *MEMORY[0x1E69B0970];
    v4 = [(MRUNowPlayingController *)self->_controller mediaSuggestionsController];
    [v4 setContext:v3];
  }

  v5 = *MEMORY[0x1E69B0978];
  v6 = [(MRUNowPlayingController *)self->_controller mediaSuggestionsController];
  [v6 setContext:v5];
}

- (void)updateSuggestions
{
  v3 = [(MRUNowPlayingViewController *)self shouldShowMediaSuggestions];
  objc_initWeak(&location, self);
  v4 = [(MRUNowPlayingViewController *)self view];
  v5 = [v4 showSuggestionsView];

  if (v3 == v5)
  {
    if (v3)
    {
      v6 = [(MRUNowPlayingController *)self->_controller mediaSuggestionsController];
      v7 = [v6 mediaSuggestions];
      [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setMediaSuggestions:v7];
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__MRUNowPlayingViewController_updateSuggestions__block_invoke;
    v11[3] = &unk_1E7665718;
    objc_copyWeak(&v12, &location);
    v13 = v3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__MRUNowPlayingViewController_updateSuggestions__block_invoke_2;
    v8[3] = &unk_1E7665718;
    objc_copyWeak(&v9, &location);
    v10 = v3;
    [(MRUNowPlayingViewController *)self updateContentAnimated:v11 completion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&location);
}

void __48__MRUNowPlayingViewController_updateSuggestions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (*(a1 + 40) == 1)
  {
    [WeakRetained createSuggestionsViewController];
    WeakRetained = v7;
  }

  v3 = [WeakRetained suggestionsViewController];
  [v3 beginAppearanceTransition:*(a1 + 40) animated:0];

  v4 = *(a1 + 40);
  v5 = [v7 view];
  [v5 setShowSuggestionsView:v4];

  v6 = [v7 suggestionsViewController];
  [v6 endAppearanceTransition];
}

void __48__MRUNowPlayingViewController_updateSuggestions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained trackStartedShowingMediaSuggestions];
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = [WeakRetained suggestionsViewController];
    [v2 willMoveToParentViewController:0];

    v3 = [WeakRetained view];
    [v3 setSuggestionsView:0];

    v4 = [WeakRetained suggestionsViewController];
    [v4 removeFromParentViewController];

    [WeakRetained setSuggestionsViewController:0];
  }
}

- (BOOL)shouldShowMediaSuggestions
{
  layout = self->_layout;
  v3 = layout == 4 || layout == 2;
  if (v3 && self->_context != 7)
  {
    v6 = [(MRUNowPlayingController *)self->_controller mediaSuggestionsController];
    v7 = [v6 mediaSuggestions];
    if (v7)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v5 = objc_opt_respondsToSelector();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)isShowingMediaSuggestions
{
  v2 = [(MRUNowPlayingViewController *)self view];
  v3 = [v2 showSuggestionsView];

  return v3;
}

- (void)trackStartedShowingMediaSuggestions
{
  if ([(MRUNowPlayingViewController *)self shouldShowMediaSuggestions]&& [(MRUNowPlayingViewController *)self isOnScreen])
  {
    v3 = [(MRUNowPlayingController *)self->_controller mediaSuggestionsController];
    v4 = [v3 mediaSuggestions];

    [(MRUNowPlayingViewController *)self trackSuggestionsDisplayed:v4];
  }
}

- (void)presentRoutingControlsFromSourceView:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_routeControlsPresentation)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69705B8]);
    if (!+[MRUFeatureFlagProvider isCayenneEnabled])
    {
      v6 = [MEMORY[0x1E696AAE8] mainBundle];
      v7 = [v6 bundleIdentifier];
      [v5 setPresentingAppBundleID:v7];
    }

    [v5 setStyle:2];
    v8 = [(MRUNowPlayingViewController *)self context]- 1;
    if (v8 > 7)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_1A23080A0[v8];
    }

    [v5 setSurface:v9];
    if (MRAVOutputContextGetSharedAudioPresentationContext())
    {
      v13 = MRAVOutputContextCopyUniqueIdentifier();
      [v5 setRoutingContextUID:v13];
    }

    if (self->_routeControlsPresentation == 2)
    {
      if (+[MRUFeatureFlagProvider isCayenneEnabled])
      {
        v14 = MCLogCategoryDefault();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = objc_opt_class();
          routeUID = self->_routeUID;
          *buf = 138543618;
          v32 = v15;
          v33 = 2112;
          v34 = routeUID;
          _os_log_impl(&dword_1A20FC000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ will present route picker with routeUID: %@", buf, 0x16u);
        }

        [v5 setRouteUID:self->_routeUID];
      }

      else
      {
        v17 = [(MRUNowPlayingController *)self->_controller endpointController];
        v18 = [v17 routeUID];
        [v5 setRouteUID:v18];
      }
    }

    objc_initWeak(buf, self);
    if ([MEMORY[0x1E696AAE8] mru_isProximityControl])
    {
      v19 = [MRUViewServiceProvider viewControllerForConfiguration:v5];
      [v19 setModalPresentationStyle:5];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __68__MRUNowPlayingViewController_presentRoutingControlsFromSourceView___block_invoke;
      v29[3] = &unk_1E7663AE8;
      objc_copyWeak(&v30, buf);
      [v19 setDismissalBlock:v29];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __68__MRUNowPlayingViewController_presentRoutingControlsFromSourceView___block_invoke_2;
      v27[3] = &unk_1E7663898;
      v20 = v19;
      v28 = v20;
      [(MRUNowPlayingViewController *)self presentViewController:v20 animated:0 completion:v27];

      objc_destroyWeak(&v30);
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x1E69705B0]) initWithConfiguration:v5 shouldObserveRoutingContextUIDChanges:0];
      mediaControls = self->_mediaControls;
      self->_mediaControls = v21;

      v23 = [MEMORY[0x1E69DC938] currentDevice];
      v24 = [v23 userInterfaceIdiom];

      if ((v24 & 0xFFFFFFFFFFFFFFFBLL) == 1 && [(MRUNowPlayingViewController *)self context]!= 2)
      {
        [(MPMediaControls *)self->_mediaControls setSourceView:v4];
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __68__MRUNowPlayingViewController_presentRoutingControlsFromSourceView___block_invoke_3;
      v25[3] = &unk_1E7663AE8;
      objc_copyWeak(&v26, buf);
      [(MPMediaControls *)self->_mediaControls setDismissHandler:v25];
      [(MPMediaControls *)self->_mediaControls present];
      objc_destroyWeak(&v26);
    }

    objc_destroyWeak(buf);
  }

  else
  {
    v10 = [(MRUNowPlayingViewController *)self layout];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      if (v10 == 1)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      [WeakRetained nowPlayingViewController:self applyLayout:v12];
    }
  }
}

void __68__MRUNowPlayingViewController_presentRoutingControlsFromSourceView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:0 completion:0];
}

void __68__MRUNowPlayingViewController_presentRoutingControlsFromSourceView___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setMediaControls:0];
}

- (void)updateContentAnimated:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__MRUNowPlayingViewController_updateContentAnimated_completion___block_invoke;
  aBlock[3] = &unk_1E7664490;
  aBlock[4] = self;
  v8 = v6;
  v16 = v8;
  v9 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained nowPlayingViewController:self didChangeSizeWithAnimations:v9 completion:v7];
  }

  else
  {
    v11 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__MRUNowPlayingViewController_updateContentAnimated_completion___block_invoke_3;
    v12[3] = &unk_1E7665740;
    v13 = v9;
    v14 = v7;
    [v11 mru_animateUsingType:0 animations:v12];
  }
}

void __64__MRUNowPlayingViewController_updateContentAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 bounds];
  if (v3 == 0.0)
  {

    goto LABEL_7;
  }

  v4 = [*(a1 + 32) view];
  [v4 bounds];
  v6 = v5;

  if (v6 == 0.0)
  {
LABEL_7:
    v8 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__MRUNowPlayingViewController_updateContentAnimated_completion___block_invoke_2;
    v11[3] = &unk_1E7663FD8;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v9;
    [v8 performWithoutAnimation:v11];

    return;
  }

  (*(*(a1 + 40) + 16))();
  v7 = [*(a1 + 32) view];
  [v7 setNeedsLayout];

  v10 = [*(a1 + 32) view];
  [v10 layoutIfNeeded];
}

void __64__MRUNowPlayingViewController_updateContentAnimated_completion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

uint64_t __64__MRUNowPlayingViewController_updateContentAnimated_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)launchNowPlayingApp
{
  if (self->_coordinatedDismissalBlock)
  {
    v3 = [(MRUNowPlayingController *)self->_controller endpointController];
    objc_initWeak(&location, v3);

    coordinatedDismissalBlock = self->_coordinatedDismissalBlock;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__MRUNowPlayingViewController_launchNowPlayingApp__block_invoke;
    v6[3] = &unk_1E7663AE8;
    objc_copyWeak(&v7, &location);
    coordinatedDismissalBlock[2](coordinatedDismissalBlock, v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = [(MRUNowPlayingController *)self->_controller endpointController];
    [v5 launchNowPlayingApp];
  }
}

void __50__MRUNowPlayingViewController_launchNowPlayingApp__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained launchNowPlayingApp];
}

- (id)_stateDumpObject
{
  v25[8] = *MEMORY[0x1E69E9840];
  v24[0] = @"hardwareVolumeControlAssertion";
  v3 = [(BSInvalidatable *)self->_hardwareVolumeControlAssertion description];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"<NONE>";
  }

  v25[0] = v5;
  v24[1] = @"layout";
  v6 = MRUNowPlayingLayoutDescription(self->_layout);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"<NONE>";
  }

  v25[1] = v8;
  v24[2] = @"context";
  v9 = MRUNowPlayingContextDescription(self->_context);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"<NONE>";
  }

  v25[2] = v11;
  v24[3] = @"endpointController";
  v12 = [(MRUNowPlayingController *)self->_controller endpointController];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"<NONE>";
  }

  controller = self->_controller;
  if (!controller)
  {
    controller = @"<NONE>";
  }

  v25[3] = v14;
  v25[4] = controller;
  v24[4] = @"dataController";
  v24[5] = @"routingViewController";
  routingViewController = self->_routingViewController;
  if (!routingViewController)
  {
    routingViewController = @"<NONE>";
  }

  mediaControls = self->_mediaControls;
  if (!mediaControls)
  {
    mediaControls = @"<NONE>";
  }

  v25[5] = routingViewController;
  v25[6] = mediaControls;
  v24[6] = @"mediaControls";
  v24[7] = @"window";
  v18 = [(MRUNowPlayingViewController *)self view];
  v19 = [v18 window];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = @"<NONE>";
  }

  v25[7] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:8];

  return v22;
}

- (MRUNowPlayingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (MPAVOutputDevicePlaybackDataSource)playbackDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackDataSource);

  return WeakRetained;
}

@end