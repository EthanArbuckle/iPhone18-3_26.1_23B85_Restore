@interface MRUNowPlayingViewController
- (BOOL)isShowingMediaSuggestions;
- (BOOL)shouldShowMediaSuggestions;
- (BOOL)showRouteLabel;
- (MPAVOutputDevicePlaybackDataSource)playbackDataSource;
- (MRUArtworkView)artworkView;
- (MRUNowPlayingViewController)initWithController:(id)controller routeControlsPresentation:(int64_t)presentation;
- (MRUNowPlayingViewController)initWithRouteUID:(id)d client:(id)client player:(id)player;
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
- (void)didSelectArtworkView:(id)view;
- (void)didSelectQuickControl:(id)control;
- (void)launchNowPlayingApp;
- (void)loadView;
- (void)mediaSuggestionsViewController:(id)controller didSelectSuggestion:(id)suggestion completion:(id)completion;
- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeBundleID:(id)d;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeNowPlayingInfo:(id)info;
- (void)nowPlayingController:(id)controller queueHandoffCoordinator:(id)coordinator didChangeState:(int64_t)state;
- (void)nowPlayingController:(id)controller tvRemoteController:(id)remoteController didChangeShowTVRemote:(BOOL)remote;
- (void)presentRoutingControlsFromSourceView:(id)view;
- (void)routingViewController:(id)controller didSelectRoutingViewItem:(id)item;
- (void)routingViewControllerDidUpdateItems:(id)items;
- (void)setConfigureRoutingButton:(id)button;
- (void)setContentEdgeInsets:(UIEdgeInsets)insets;
- (void)setContext:(int64_t)context;
- (void)setController:(id)controller;
- (void)setLayout:(int64_t)layout;
- (void)setOnScreen:(BOOL)screen;
- (void)setPlaybackDataSource:(id)source;
- (void)setRoutingViewController:(id)controller;
- (void)setShowArtworkView:(BOOL)view;
- (void)setStylingProvider:(id)provider;
- (void)setSupportsHorizontalLayout:(BOOL)layout;
- (void)trackStartedShowingMediaSuggestions;
- (void)trackSuggestionSelected:(id)selected atIndex:(unint64_t)index error:(id)error;
- (void)trackSuggestionsDisplayed:(id)displayed;
- (void)transportControlsView:(id)view didSelectTVRemoteButton:(id)button;
- (void)updateArtwork;
- (void)updateContentAnimated:(id)animated completion:(id)completion;
- (void)updateLayout;
- (void)updateNowPlayingInfo;
- (void)updateQuickControl;
- (void)updateRouteLabel;
- (void)updateRoutingButtonAnimated:(BOOL)animated;
- (void)updateRoutingContentEdgeInsets;
- (void)updateRoutingDiscoveryMode;
- (void)updateSuggestionContext;
- (void)updateSuggestions;
- (void)updateTimeControlsForPresentationInterval:(id)interval;
- (void)updateTransportControls;
- (void)updateVisibility;
- (void)updateVolumeControls;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MRUNowPlayingViewController

- (void)trackSuggestionsDisplayed:(id)displayed
{
  v38 = *MEMORY[0x1E69E9840];
  displayedCopy = displayed;
  v4 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = displayedCopy;
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

        bundleID = [*(*(&v32 + 1) + 8 * i) bundleID];
        v11 = bundleID;
        if (bundleID)
        {
          v12 = bundleID;
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
        selfCopy = self;
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

- (void)trackSuggestionSelected:(id)selected atIndex:(unint64_t)index error:(id)error
{
  selectedCopy = selected;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __80__MRUNowPlayingViewController_Analytics__trackSuggestionSelected_atIndex_error___block_invoke;
  v10[3] = &unk_1E7663870;
  v10[4] = self;
  v11 = selectedCopy;
  indexCopy = index;
  v9 = selectedCopy;
  [MRUAnalytics sendEvent:@"com.apple.mediaremote.suggestion-selected" withError:error payload:v10];
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
  context = [(MRUNowPlayingViewController *)self context];

  return MRUNowPlayingContextDescription(context);
}

- (id)destination
{
  controller = [(MRUNowPlayingViewController *)self controller];
  endpointController = [controller endpointController];
  route = [endpointController route];
  endpoint = [route endpoint];

  return endpoint;
}

- (MRUNowPlayingViewController)initWithController:(id)controller routeControlsPresentation:(int64_t)presentation
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = MRUNowPlayingViewController;
  v8 = [(MRUNowPlayingViewController *)&v16 init];
  v9 = v8;
  if (v8)
  {
    v8->_routeControlsPresentation = presentation;
    objc_storeStrong(&v8->_controller, controller);
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

- (MRUNowPlayingViewController)initWithRouteUID:(id)d client:(id)client player:(id)player
{
  dCopy = d;
  playerCopy = player;
  clientCopy = client;
  v11 = [[MRUEndpointController alloc] initWithRouteUID:dCopy client:clientCopy player:playerCopy];

  v12 = [[MRUNowPlayingController alloc] initWithEndpointController:v11];
  v13 = [(MRUNowPlayingViewController *)self initWithController:v12 routeControlsPresentation:2];
  if (v13)
  {
    localDeviceUID = dCopy;
    if (!dCopy)
    {
      localDeviceUID = [MEMORY[0x1E69B09A8] localDeviceUID];
    }

    objc_storeStrong(&v13->_routeUID, localDeviceUID);
    if (!dCopy)
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
  view = [(MRUNowPlayingViewController *)self view];
  [view setLayout:layout];

  context = self->_context;
  view2 = [(MRUNowPlayingViewController *)self view];
  [view2 setContext:context];

  supportsHorizontalLayout = self->_supportsHorizontalLayout;
  view3 = [(MRUNowPlayingViewController *)self view];
  [view3 setSupportsHorizontalLayout:supportsHorizontalLayout];

  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  view4 = [(MRUNowPlayingViewController *)self view];
  [view4 setContentEdgeInsets:{top, left, bottom, right}];

  stylingProvider = self->_stylingProvider;
  view5 = [(MRUNowPlayingViewController *)self view];
  [view5 setStylingProvider:stylingProvider];

  view6 = [(MRUNowPlayingViewController *)self view];
  artworkView = [view6 artworkView];
  [artworkView addTarget:self action:sel_didSelectArtworkView_ forControlEvents:64];

  view7 = [(MRUNowPlayingViewController *)self view];
  headerView = [view7 headerView];
  labelView = [headerView labelView];
  [labelView addTarget:self action:sel_didSelectLabelView_ forControlEvents:64];

  view8 = [(MRUNowPlayingViewController *)self view];
  headerView2 = [view8 headerView];
  routingButton = [headerView2 routingButton];
  [routingButton addTarget:self action:sel_didSelectRoutingButton_ forControlEvents:64];

  view9 = [(MRUNowPlayingViewController *)self view];
  transportControlsView = [view9 transportControlsView];
  [transportControlsView setDelegate:self];

  view10 = [(MRUNowPlayingViewController *)self view];
  volumeControlsView = [view10 volumeControlsView];
  [volumeControlsView setDelegate:self];

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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = MRUNowPlayingViewController;
  [(MRUNowPlayingViewController *)&v7 viewWillAppear:?];
  [(MRUNowPlayingViewController *)self setOnScreen:1];
  view = [(MRUNowPlayingViewController *)self view];
  showSuggestionsView = [view showSuggestionsView];

  if (showSuggestionsView)
  {
    [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController beginAppearanceTransition:1 animated:appearCopy];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MRUNowPlayingViewController;
  [(MRUNowPlayingViewController *)&v6 viewDidAppear:appear];
  view = [(MRUNowPlayingViewController *)self view];
  showSuggestionsView = [view showSuggestionsView];

  if (showSuggestionsView)
  {
    [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController endAppearanceTransition];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = MRUNowPlayingViewController;
  [(MRUNowPlayingViewController *)&v7 viewWillDisappear:?];
  [(MRUNowPlayingViewController *)self setOnScreen:0];
  view = [(MRUNowPlayingViewController *)self view];
  showSuggestionsView = [view showSuggestionsView];

  if (showSuggestionsView)
  {
    [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController beginAppearanceTransition:0 animated:disappearCopy];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MRUNowPlayingViewController;
  [(MRUNowPlayingViewController *)&v6 viewDidDisappear:disappear];
  view = [(MRUNowPlayingViewController *)self view];
  showSuggestionsView = [view showSuggestionsView];

  if (showSuggestionsView)
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
  controller = [(MRUNowPlayingViewController *)self controller];
  endpointController = [controller endpointController];
  route = [endpointController route];
  v8 = [v3 stringWithFormat:@"<%@: %p route: %@", v4, self, route];

  return v8;
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    screenCopy = screen;
    self->_onScreen = screen;
    controller = [(MRUNowPlayingViewController *)self controller];
    [controller updateAutomaticResponseLoading];

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
    if (screenCopy)
    {
      controller2 = [(MRUNowPlayingViewController *)self controller];
      mediaSuggestionsController = [controller2 mediaSuggestionsController];
      [mediaSuggestionsController refreshMediaSuggestions];
    }
  }
}

- (MRUArtworkView)artworkView
{
  view = [(MRUNowPlayingViewController *)self view];
  artworkView = [view artworkView];

  return artworkView;
}

- (void)setController:(id)controller
{
  controllerCopy = controller;
  [(MRUNowPlayingController *)self->_controller removeObserver:self];
  controller = self->_controller;
  self->_controller = controllerCopy;
  v6 = controllerCopy;

  [(MRUNowPlayingController *)self->_controller addObserver:self];
  context = [(MRUNowPlayingViewController *)self context];
  tvRemoteController = [(MRUNowPlayingController *)v6 tvRemoteController];

  [tvRemoteController setContext:context];
  [(MRUNowPlayingViewController *)self createRoutingViewController];
  controller = [(MRUNowPlayingViewController *)self controller];
  mediaSuggestionsController = [controller mediaSuggestionsController];
  [mediaSuggestionsController refreshMediaSuggestions];

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

- (void)setLayout:(int64_t)layout
{
  layout = self->_layout;
  if (layout != layout)
  {
    self->_layout = layout;
    viewIfLoaded = [(MRUNowPlayingViewController *)self viewIfLoaded];
    [viewIfLoaded setLayout:layout];

    suggestionsViewController = [(MRUNowPlayingViewController *)self suggestionsViewController];
    [suggestionsViewController setLayout:layout == 4];

    [(MRUNowPlayingViewController *)self updateRoutingContentEdgeInsets];
    [(MRUNowPlayingViewController *)self updateArtwork];
    [(MRUNowPlayingViewController *)self updateRoutingButton];
    [(MRUNowPlayingViewController *)self updateRouteLabel];
    [(MRUNowPlayingViewController *)self updateNowPlayingInfo];
    [(MRUNowPlayingViewController *)self updateVolumeControls];
    [(MRUNowPlayingViewController *)self updateRoutingDiscoveryMode];
    [(MRUNowPlayingViewController *)self updateSuggestions];
    [(MRUNowPlayingViewController *)self updateVisibility];
    v8 = layout != 1 || layout == 1;
    v9 = !v8;
    if (!v8 || layout != 1 && layout == 1)
    {
      [(MRURoutingViewController *)self->_routingViewController beginAppearanceTransition:v9 animated:1];
      routingViewController = self->_routingViewController;

      [(MRURoutingViewController *)routingViewController endAppearanceTransition];
    }
  }
}

- (void)setContext:(int64_t)context
{
  if (self->_context != context)
  {
    self->_context = context;
    viewIfLoaded = [(MRUNowPlayingViewController *)self viewIfLoaded];
    [viewIfLoaded setContext:context];

    controller = [(MRUNowPlayingViewController *)self controller];
    tvRemoteController = [controller tvRemoteController];
    [tvRemoteController setContext:context];

    [(MRUNowPlayingViewController *)self updateSuggestionContext];

    [(MRUNowPlayingViewController *)self updateVolumeControls];
  }
}

- (void)setSupportsHorizontalLayout:(BOOL)layout
{
  if (self->_supportsHorizontalLayout != layout)
  {
    layoutCopy = layout;
    self->_supportsHorizontalLayout = layout;
    viewIfLoaded = [(MRUNowPlayingViewController *)self viewIfLoaded];
    [viewIfLoaded setSupportsHorizontalLayout:layoutCopy];

    suggestionsViewController = [(MRUNowPlayingViewController *)self suggestionsViewController];
    [suggestionsViewController setSupportsHorizontalLayout:layoutCopy];
  }
}

- (void)setContentEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentEdgeInsets.top, v3), vceqq_f64(*&self->_contentEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentEdgeInsets = insets;
    right = insets.right;
    left = insets.left;
    bottom = insets.bottom;
    top = insets.top;
    viewIfLoaded = [(MRUNowPlayingViewController *)self viewIfLoaded];
    [viewIfLoaded setContentEdgeInsets:{top, left, bottom, right}];

    suggestionsViewController = [(MRUNowPlayingViewController *)self suggestionsViewController];
    [suggestionsViewController setContentEdgeInsets:{top, left, bottom, right}];

    [(MRUNowPlayingViewController *)self updateRoutingContentEdgeInsets];
  }
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v9 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    viewIfLoaded = [(MRUNowPlayingViewController *)self viewIfLoaded];
    [viewIfLoaded setStylingProvider:v9];

    suggestionsViewController = [(MRUNowPlayingViewController *)self suggestionsViewController];
    [suggestionsViewController setStylingProvider:v9];

    routingViewController = [(MRUNowPlayingViewController *)self routingViewController];
    [routingViewController setStylingProvider:v9];

    providerCopy = v9;
  }
}

- (void)setPlaybackDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_playbackDataSource);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_playbackDataSource, obj);
    routingViewController = [(MRUNowPlayingViewController *)self routingViewController];
    routingController = [routingViewController routingController];
    [routingController setPlaybackDataSource:obj];
  }
}

- (void)setConfigureRoutingButton:(id)button
{
  v4 = [button copy];
  configureRoutingButton = self->_configureRoutingButton;
  self->_configureRoutingButton = v4;

  [(MRUNowPlayingViewController *)self updateRoutingButton];
}

- (void)setRoutingViewController:(id)controller
{
  controllerCopy = controller;
  [(MRURoutingViewController *)self->_routingViewController setDelegate:0];
  if (self->_layout == 1)
  {
    [(MRURoutingViewController *)self->_routingViewController beginAppearanceTransition:0 animated:0];
    [(MRURoutingViewController *)self->_routingViewController endAppearanceTransition];
  }

  [(MRURoutingViewController *)self->_routingViewController willMoveToParentViewController:0];
  [(MRURoutingViewController *)self->_routingViewController removeFromParentViewController];
  objc_storeStrong(&self->_routingViewController, controller);
  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  route = [endpointController route];
  [(MRURoutingViewController *)self->_routingViewController setEndpointRoute:route];

  [(MRURoutingViewController *)self->_routingViewController setDelegate:self];
  [(MRURoutingViewController *)self->_routingViewController setVolumeGroupCoordinator:self->_volumeGroupCoordinator];
  [(MRURoutingViewController *)self->_routingViewController setStylingProvider:self->_stylingProvider];
  [(MRUNowPlayingViewController *)self updateRoutingContentEdgeInsets];
  [(MRUNowPlayingViewController *)self updateRoutingDiscoveryMode];
  [(MRUNowPlayingViewController *)self addChildViewController:controllerCopy];
  view = [controllerCopy view];
  view2 = [(MRUNowPlayingViewController *)self view];
  [view2 setContentView:view];

  [controllerCopy didMoveToParentViewController:self];
  if (self->_layout == 1)
  {
    [(MRURoutingViewController *)self->_routingViewController beginAppearanceTransition:1 animated:0];
    [(MRURoutingViewController *)self->_routingViewController endAppearanceTransition];
  }
}

- (void)setShowArtworkView:(BOOL)view
{
  if (self->_showArtworkView != view)
  {
    v9 = v3;
    v10 = v4;
    self->_showArtworkView = view;
    [(MRUNowPlayingViewController *)self updateArtwork];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__MRUNowPlayingViewController_setShowArtworkView___block_invoke;
    v7[3] = &unk_1E7663F38;
    v7[4] = self;
    viewCopy = view;
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
  view = [(MRUNowPlayingViewController *)self view];
  if ([view showSuggestionsView])
  {
    view2 = [(MRUNowPlayingViewController *)self view];
    suggestionsView = [view2 suggestionsView];

    if (!suggestionsView)
    {
      goto LABEL_5;
    }

    view3 = [(MRUNowPlayingViewController *)self view];
    suggestionsView2 = [view3 suggestionsView];
    [suggestionsView2 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    view = [MEMORY[0x1E696B098] valueWithRect:{v10, v12, v14, v16}];
    [v3 addObject:view];
  }

LABEL_5:
  view4 = [(MRUNowPlayingViewController *)self view];
  showArtworkView = [view4 showArtworkView];

  if (showArtworkView)
  {
    view5 = [(MRUNowPlayingViewController *)self view];
    artworkView = [view5 artworkView];
    [artworkView frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = [MEMORY[0x1E696B098] valueWithRect:{v22, v24, v26, v28}];
    [v3 addObject:v29];
  }

  view6 = [(MRUNowPlayingViewController *)self view];
  headerView = [view6 headerView];
  [headerView frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = [MEMORY[0x1E696B098] valueWithRect:{v33, v35, v37, v39}];
  [v3 addObject:v40];

  view7 = [(MRUNowPlayingViewController *)self view];
  LODWORD(headerView) = [view7 showTimeControlsView];

  if (headerView)
  {
    view8 = [(MRUNowPlayingViewController *)self view];
    timeControlsView = [view8 timeControlsView];
    [timeControlsView frame];

    UIRectInset();
    v44 = [MEMORY[0x1E696B098] valueWithRect:?];
    [v3 addObject:v44];
  }

  view9 = [(MRUNowPlayingViewController *)self view];
  showTransportControlsView = [view9 showTransportControlsView];

  if (showTransportControlsView)
  {
    view10 = [(MRUNowPlayingViewController *)self view];
    transportControlsView = [view10 transportControlsView];
    [transportControlsView frame];

    UIRectInset();
    v49 = [MEMORY[0x1E696B098] valueWithRect:?];
    [v3 addObject:v49];
  }

  view11 = [(MRUNowPlayingViewController *)self view];
  showVolumeControlsView = [view11 showVolumeControlsView];

  if (showVolumeControlsView)
  {
    view12 = [(MRUNowPlayingViewController *)self view];
    volumeControlsView = [view12 volumeControlsView];
    [volumeControlsView frame];

    UIRectInset();
    v54 = [MEMORY[0x1E696B098] valueWithRect:?];
    [v3 addObject:v54];
  }

  v55 = [v3 copy];

  return v55;
}

- (void)didSelectArtworkView:(id)view
{
  delegate = [(MRUNowPlayingViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0 || (-[MRUNowPlayingViewController delegate](self, "delegate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 nowPlayingViewControllerDidSelectArtworkView:self], v6, (v7 & 1) == 0))
  {

    [(MRUNowPlayingViewController *)self launchNowPlayingApp];
  }
}

- (void)didSelectQuickControl:(id)control
{
  quickControlItem = [(MRUNowPlayingController *)self->_controller quickControlItem];
  mainAction = [quickControlItem mainAction];

  v4 = mainAction;
  if (mainAction)
  {
    (*(mainAction + 16))(mainAction);
    v4 = mainAction;
  }
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeBundleID:(id)d
{
  [(MRUNowPlayingViewController *)self updateRoutingButton:controller];

  [(MRUNowPlayingViewController *)self updateNowPlayingInfo];
}

- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route
{
  [(MRUNowPlayingViewController *)self updateRouteLabel:controller];
  [(MRUNowPlayingViewController *)self updateVolumeControls];
  [(MRUNowPlayingViewController *)self updateRoutingButtonAnimated:1];

  [(MRUNowPlayingViewController *)self updateLayout];
}

- (void)nowPlayingController:(id)controller tvRemoteController:(id)remoteController didChangeShowTVRemote:(BOOL)remote
{
  showTVRemote = [remoteController showTVRemote];
  view = [(MRUNowPlayingViewController *)self view];
  transportControlsView = [view transportControlsView];
  [transportControlsView setShowTVRemoteButton:showTVRemote];
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeNowPlayingInfo:(id)info
{
  self->_playing = [info isPlaying];

  [(MRUNowPlayingViewController *)self updateNowPlayingInfo];
}

- (void)nowPlayingController:(id)controller queueHandoffCoordinator:(id)coordinator didChangeState:(int64_t)state
{
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  v9 = coordinatorCopy;
  if (state == 4)
  {
    artworkView = [(MRUNowPlayingViewController *)self artworkView];
    layer = [artworkView layer];
    [layer removeAllAnimations];
  }

  else
  {
    if (state == 2)
    {
      v21 = *MEMORY[0x1E695F060];
      v22 = *(MEMORY[0x1E695F060] + 8);
      view = [(MRUNowPlayingViewController *)self view];
      [view setArtworkOverrideSize:{v21, v22}];

      view2 = [(MRUNowPlayingViewController *)self view];
      artworkView = view2;
      v20 = 0;
    }

    else
    {
      if (state != 1)
      {
        goto LABEL_12;
      }

      [coordinatorCopy artworkSize];
      v11 = v10;
      v13 = v12;
      view3 = [(MRUNowPlayingViewController *)self view];
      [view3 setArtworkOverrideSize:{v11, v13}];

      [v9 artworkSize];
      v17 = v16 != *(MEMORY[0x1E695F060] + 8) || v15 != *MEMORY[0x1E695F060];
      view2 = [(MRUNowPlayingViewController *)self view];
      artworkView = view2;
      v20 = v17;
    }

    [view2 setUseArtworkOverrideSize:v20];
  }

LABEL_12:
}

- (void)mediaSuggestionsViewController:(id)controller didSelectSuggestion:(id)suggestion completion:(id)completion
{
  suggestionCopy = suggestion;
  completionCopy = completion;
  mediaSuggestions = [controller mediaSuggestions];
  v11 = [mediaSuggestions indexOfObject:suggestionCopy];

  mediaSuggestionsController = [(MRUNowPlayingController *)self->_controller mediaSuggestionsController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__MRUNowPlayingViewController_mediaSuggestionsViewController_didSelectSuggestion_completion___block_invoke;
  v15[3] = &unk_1E76656A0;
  v15[4] = self;
  v16 = suggestionCopy;
  v17 = completionCopy;
  v18 = v11;
  v13 = completionCopy;
  v14 = suggestionCopy;
  [mediaSuggestionsController playSuggestion:v14 completion:v15];
}

uint64_t __93__MRUNowPlayingViewController_mediaSuggestionsViewController_didSelectSuggestion_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) trackSuggestionSelected:*(a1 + 40) atIndex:*(a1 + 56) error:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)routingViewController:(id)controller didSelectRoutingViewItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  actionIdentifier = [itemCopy actionIdentifier];
  if ([actionIdentifier isEqualToString:*MEMORY[0x1E696F8A8]])
  {
    delegate = [(MRUNowPlayingViewController *)self delegate];
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

- (void)routingViewControllerDidUpdateItems:(id)items
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

- (void)transportControlsView:(id)view didSelectTVRemoteButton:(id)button
{
  viewCopy = view;
  buttonCopy = button;
  if (self->_coordinatedDismissalBlock)
  {
    tvRemoteController = [(MRUNowPlayingController *)self->_controller tvRemoteController];
    objc_initWeak(&location, tvRemoteController);

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
    tvRemoteController2 = [(MRUNowPlayingController *)self->_controller tvRemoteController];
    [tvRemoteController2 presentTVRemoteUsingApp:0];
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
  mediaSuggestionsController = [(MRUNowPlayingController *)self->_controller mediaSuggestionsController];
  mediaSuggestions = [mediaSuggestionsController mediaSuggestions];

  v4 = [[MRUMediaSuggestionsViewController alloc] initWithMediaSuggestions:mediaSuggestions];
  suggestionsViewController = self->_suggestionsViewController;
  self->_suggestionsViewController = v4;

  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setDelegate:self];
  view = [(MRUNowPlayingViewController *)self view];
  -[MRUMediaSuggestionsViewController setLayout:](self->_suggestionsViewController, "setLayout:", [view layout] == 4);

  stylingProvider = [(MRUNowPlayingViewController *)self stylingProvider];
  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setStylingProvider:stylingProvider];

  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setSupportsHorizontalLayout:self->_supportsHorizontalLayout];
  [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setContentEdgeInsets:self->_contentEdgeInsets.top, self->_contentEdgeInsets.left, self->_contentEdgeInsets.bottom, self->_contentEdgeInsets.right];
  [(MRUNowPlayingViewController *)self addChildViewController:self->_suggestionsViewController];
  view2 = [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController view];
  view3 = [(MRUNowPlayingViewController *)self view];
  [view3 setSuggestionsView:view2];

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
    metadataController = [(MRUNowPlayingController *)self->_controller metadataController];
    artwork = [metadataController artwork];

    view = [(MRUNowPlayingViewController *)self view];
    artworkView = [view artworkView];

    [artworkView setArtwork:artwork];
  }
}

- (void)updateRouteLabel
{
  view = [(MRUNowPlayingViewController *)self view];
  artworkView = [view artworkView];

  view2 = [(MRUNowPlayingViewController *)self view];
  headerView = [view2 headerView];
  labelView = [headerView labelView];

  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  route = [endpointController route];

  v10 = MEMORY[0x1E69DCAB8];
  deviceSymbolName = [(MRUNowPlayingController *)self->_controller deviceSymbolName];
  v12 = [v10 _systemImageNamed:deviceSymbolName];
  [artworkView setPlaceholderImage:v12];

  [labelView setRoute:route];
  showRouteLabel = [(MRUNowPlayingViewController *)self showRouteLabel];
  if (showRouteLabel != [labelView showRoute])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __47__MRUNowPlayingViewController_updateRouteLabel__block_invoke;
    v14[3] = &unk_1E7663F38;
    v15 = labelView;
    v16 = showRouteLabel;
    [(MRUNowPlayingViewController *)self updateContentAnimated:v14 completion:0];
  }
}

- (void)updateNowPlayingInfo
{
  metadataController = [(MRUNowPlayingController *)self->_controller metadataController];
  nowPlayingInfo = [metadataController nowPlayingInfo];

  view = [(MRUNowPlayingViewController *)self view];
  headerView = [view headerView];
  labelView = [headerView labelView];

  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  if (([endpointController isEndpointDiscovered] & 1) != 0 || -[MRUNowPlayingViewController context](self, "context") != 3)
  {
    placeholder = [nowPlayingInfo placeholder];
  }

  else
  {
    placeholder = +[MRUStringsProvider controlsUnavailable];
  }

  v10 = placeholder;
  [labelView setPlaceholder:placeholder];

  v11 = [nowPlayingInfo stringForComponents:1];
  v12 = [nowPlayingInfo stringForComponents:58];
  if (v11 | v12)
  {
    [labelView setTitle:v11];
    v13 = v12;
  }

  else
  {
    metadataController2 = [(MRUNowPlayingController *)self->_controller metadataController];
    bundleName = [metadataController2 bundleName];
    [labelView setTitle:bundleName];

    v13 = 0;
  }

  [labelView setSubtitle:v13];
  v16 = self->_layout != 3 || self->_context == 3;
  showPlaceholder = [nowPlayingInfo showPlaceholder];
  if (showPlaceholder != [labelView showPlaceholder] || v16 != objc_msgSend(labelView, "showSubtitle"))
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __51__MRUNowPlayingViewController_updateNowPlayingInfo__block_invoke;
    v22 = &unk_1E76656C8;
    v23 = labelView;
    v24 = showPlaceholder;
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

- (void)updateTimeControlsForPresentationInterval:(id)interval
{
  controller = self->_controller;
  intervalCopy = interval;
  metadataController = [(MRUNowPlayingController *)controller metadataController];
  timeControls = [metadataController timeControls];

  view = [(MRUNowPlayingViewController *)self view];
  timeControlsView = [view timeControlsView];

  [timeControlsView setTimeControls:timeControls forPresentationInterval:intervalCopy];
}

- (void)updateTransportControls
{
  metadataController = [(MRUNowPlayingController *)self->_controller metadataController];
  transportControls = [metadataController transportControls];

  view = [(MRUNowPlayingViewController *)self view];
  transportControlsView = [view transportControlsView];

  [transportControlsView setTransportControls:transportControls];
  tvRemoteController = [(MRUNowPlayingController *)self->_controller tvRemoteController];
  [transportControlsView setShowTVRemoteButton:{objc_msgSend(tvRemoteController, "showTVRemote")}];
}

- (void)updateQuickControl
{
  view = [(MRUNowPlayingViewController *)self view];
  headerView = [view headerView];

  quickControlItem = [(MRUNowPlayingController *)self->_controller quickControlItem];
  [headerView setShowTransportButton:{objc_msgSend(quickControlItem, "isEnabled")}];
  transportButton = [headerView transportButton];
  asset = [quickControlItem asset];
  [transportButton setAsset:asset];
}

- (void)updateVolumeControls
{
  v65 = *MEMORY[0x1E69E9840];
  view = [(MRUNowPlayingViewController *)self view];
  volumeControlsView = [view volumeControlsView];

  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  route = [endpointController route];

  volumeController = [volumeControlsView volumeController];
  dataSource = [volumeController dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    volumeController2 = [volumeControlsView volumeController];
    dataSource2 = [volumeController2 dataSource];
  }

  else
  {
    dataSource2 = 0;
  }

  volumeController3 = [volumeControlsView volumeController];

  if (!volumeController3)
  {
    v14 = [objc_alloc(MEMORY[0x1E6970A20]) initWithGroupRoute:route outputDeviceRoute:0];

    v15 = [(MPVolumeController *)[MRUVolumeController alloc] initWithDataSource:v14];
    [volumeControlsView setVolumeController:v15];

    goto LABEL_8;
  }

  groupRoute = [dataSource2 groupRoute];
  v13 = [groupRoute isEqual:route];

  if ((v13 & 1) == 0)
  {
    v14 = [objc_alloc(MEMORY[0x1E6970A20]) initWithGroupRoute:route outputDeviceRoute:0];

    [volumeControlsView setDataSource:v14];
LABEL_8:
    dataSource2 = v14;
  }

  if (!self->_volumeGroupCoordinator && !self->_routeControlsPresentation)
  {
    v16 = [MRUVolumeGroupCoordinator alloc];
    volumeController4 = [volumeControlsView volumeController];
    v18 = [(MRUVolumeGroupCoordinator *)v16 initWithMainVolumeController:volumeController4];
    volumeGroupCoordinator = self->_volumeGroupCoordinator;
    self->_volumeGroupCoordinator = v18;

    [volumeControlsView setVolumeGroupCoordinator:self->_volumeGroupCoordinator];
    [(MRURoutingViewController *)self->_routingViewController setVolumeGroupCoordinator:self->_volumeGroupCoordinator];
  }

  if ([(MRUNowPlayingViewController *)self context]== 2 || [(MRUNowPlayingViewController *)self context]== 8)
  {
    endpointController2 = [(MRUNowPlayingController *)self->_controller endpointController];
    if ([endpointController2 isDeviceSystemRoute])
    {
      endpointController3 = [(MRUNowPlayingController *)self->_controller endpointController];
      if ([endpointController3 isAirPlaying])
      {
        alwaysShowVolumeControls = 1;
      }

      else
      {
        currentSettings = [MEMORY[0x1E69B0B28] currentSettings];
        alwaysShowVolumeControls = [currentSettings alwaysShowVolumeControls];
      }
    }

    else
    {
      alwaysShowVolumeControls = 1;
    }
  }

  else
  {
    alwaysShowVolumeControls = 1;
  }

  v24 = 0;
  if (self->_onScreen && alwaysShowVolumeControls)
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
  isOnCall = [v27 isOnCall];

  volumeControlCapabilities = [dataSource2 volumeControlCapabilities];
  if (+[MRUFeatureFlagProvider isAutobahnEnabled])
  {
    [(MRUNowPlayingViewController *)self view];
    v31 = v30 = route;
    [v31 volumeControlsView];
    v33 = v32 = volumeControlsView;
    [v33 setOnScreen:v24];

    view2 = [(MRUNowPlayingViewController *)self view];
    LODWORD(v33) = [view2 showVolumeControlsView];

    route = v30;
    v26 = alwaysShowVolumeControls == v33;
    volumeControlsView = v32;
    if (!v26)
    {
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __51__MRUNowPlayingViewController_updateVolumeControls__block_invoke;
      v53[3] = &unk_1E7663F38;
      v53[4] = self;
      v54 = alwaysShowVolumeControls;
      [(MRUNowPlayingViewController *)self updateContentAnimated:v53 completion:0];
    }
  }

  if (!(isOnCall & 1 | ((v24 & 1) == 0)) && ([route isDeviceRoute] & 1) == 0 && (volumeControlCapabilities & 3) != 0)
  {
    v42 = MCLogCategoryVolume();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = objc_opt_class();
      v44 = MRUNowPlayingLayoutDescription(self->_layout);
      MRUNowPlayingContextDescription(self->_context);
      v46 = v45 = route;
      *buf = 138545154;
      v56 = v43;
      v57 = 1024;
      v58 = 1;
      v59 = 1024;
      v60 = alwaysShowVolumeControls;
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

      route = v45;
    }

    v41 = +[MRUHardwareVolumeController sharedInstance];
    v47 = objc_opt_class();
    v48 = NSStringFromClass(v47);
    v49 = [v41 requestControlsForVolumeDataSource:dataSource2 reason:v48];
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
      v51 = alwaysShowVolumeControls;
      v36 = dataSource2;
      v37 = route;
      v38 = objc_opt_class();
      MRUNowPlayingLayoutDescription(self->_layout);
      v39 = v52 = volumeControlsView;
      v40 = MRUNowPlayingContextDescription(self->_context);
      *buf = 138544898;
      v56 = v38;
      route = v37;
      dataSource2 = v36;
      v57 = 1024;
      v58 = v24;
      v59 = 1024;
      v60 = v51;
      v61 = 1024;
      v62 = isOnCall;
      v63 = 2114;
      *v64 = v39;
      *&v64[8] = 2114;
      *&v64[10] = v40;
      *&v64[18] = 2114;
      *&v64[20] = route;
      _os_log_impl(&dword_1A20FC000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ removing hardware assertion: on screen: %{BOOL}u | show: %{BOOL}u | call: %{BOOL}u | layout: %{public}@ | context: %{public}@ | route: %{public}@", buf, 0x3Cu);

      volumeControlsView = v52;
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

- (void)updateRoutingButtonAnimated:(BOOL)animated
{
  v25[2] = *MEMORY[0x1E69E9840];
  view = [(MRUNowPlayingViewController *)self view];
  headerView = [view headerView];

  view2 = [(MRUNowPlayingViewController *)self view];
  transportControlsView = [view2 transportControlsView];

  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  route = [endpointController route];
  canModifyGroupMembership = [route canModifyGroupMembership];

  v12 = canModifyGroupMembership && self->_context == 3 && self->_layout == 3;
  [headerView setShowRoutingButton:v12];
  [transportControlsView setShowRoutingButton:canModifyGroupMembership];
  routingButton = [transportControlsView routingButton];
  v25[0] = routingButton;
  routingButton2 = [headerView routingButton];
  v25[1] = routingButton2;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

  configureRoutingButton = self->_configureRoutingButton;
  if (configureRoutingButton)
  {
    v17 = configureRoutingButton[2](configureRoutingButton, canModifyGroupMembership);
    v18 = [v15 arrayByAddingObject:v17];

    v15 = v18;
  }

  controller = self->_controller;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__MRUNowPlayingViewController_updateRoutingButtonAnimated___block_invoke;
  v21[3] = &unk_1E76656F0;
  v22 = v15;
  selfCopy = self;
  animatedCopy = animated;
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

  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  if ([endpointController isDeviceSystemRoute])
  {
    endpointController2 = [(MRUNowPlayingController *)self->_controller endpointController];
    isAirPlaying = [endpointController2 isAirPlaying];
  }

  else
  {
    isAirPlaying = 1;
  }

  return isAirPlaying;
}

- (void)updateLayout
{
  if ([(MRUNowPlayingViewController *)self isViewLoaded])
  {
    endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
    route = [endpointController route];
    if ([route canModifyGroupMembership])
    {
    }

    else
    {
      layout = [(MRUNowPlayingViewController *)self layout];

      if (layout == 1)
      {

        [(MRUNowPlayingViewController *)self setLayout:2];
      }
    }
  }
}

- (void)updateVisibility
{
  onScreen = self->_onScreen;
  view = [(MRUNowPlayingViewController *)self view];
  [view setOnScreen:onScreen];

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
  view2 = [(MRUNowPlayingViewController *)self view];
  artworkView = [view2 artworkView];
  [artworkView setEnabled:v7];

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
  view3 = [(MRUNowPlayingViewController *)self view];
  headerView = [view3 headerView];
  labelView = [headerView labelView];
  [labelView setEnabled:v12];

  v16 = self->_layout == 3;
  view4 = [(MRUNowPlayingViewController *)self view];
  artworkView2 = [view4 artworkView];
  [artworkView2 setShowPlaceholder:v16];
}

- (void)updateSuggestionContext
{
  if ([(MRUNowPlayingViewController *)self context]== 3)
  {
    v3 = *MEMORY[0x1E69B0970];
    mediaSuggestionsController = [(MRUNowPlayingController *)self->_controller mediaSuggestionsController];
    [mediaSuggestionsController setContext:v3];
  }

  v5 = *MEMORY[0x1E69B0978];
  mediaSuggestionsController2 = [(MRUNowPlayingController *)self->_controller mediaSuggestionsController];
  [mediaSuggestionsController2 setContext:v5];
}

- (void)updateSuggestions
{
  shouldShowMediaSuggestions = [(MRUNowPlayingViewController *)self shouldShowMediaSuggestions];
  objc_initWeak(&location, self);
  view = [(MRUNowPlayingViewController *)self view];
  showSuggestionsView = [view showSuggestionsView];

  if (shouldShowMediaSuggestions == showSuggestionsView)
  {
    if (shouldShowMediaSuggestions)
    {
      mediaSuggestionsController = [(MRUNowPlayingController *)self->_controller mediaSuggestionsController];
      mediaSuggestions = [mediaSuggestionsController mediaSuggestions];
      [(MRUMediaSuggestionsViewController *)self->_suggestionsViewController setMediaSuggestions:mediaSuggestions];
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__MRUNowPlayingViewController_updateSuggestions__block_invoke;
    v11[3] = &unk_1E7665718;
    objc_copyWeak(&v12, &location);
    v13 = shouldShowMediaSuggestions;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__MRUNowPlayingViewController_updateSuggestions__block_invoke_2;
    v8[3] = &unk_1E7665718;
    objc_copyWeak(&v9, &location);
    v10 = shouldShowMediaSuggestions;
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
    mediaSuggestionsController = [(MRUNowPlayingController *)self->_controller mediaSuggestionsController];
    mediaSuggestions = [mediaSuggestionsController mediaSuggestions];
    if (mediaSuggestions)
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
  view = [(MRUNowPlayingViewController *)self view];
  showSuggestionsView = [view showSuggestionsView];

  return showSuggestionsView;
}

- (void)trackStartedShowingMediaSuggestions
{
  if ([(MRUNowPlayingViewController *)self shouldShowMediaSuggestions]&& [(MRUNowPlayingViewController *)self isOnScreen])
  {
    mediaSuggestionsController = [(MRUNowPlayingController *)self->_controller mediaSuggestionsController];
    mediaSuggestions = [mediaSuggestionsController mediaSuggestions];

    [(MRUNowPlayingViewController *)self trackSuggestionsDisplayed:mediaSuggestions];
  }
}

- (void)presentRoutingControlsFromSourceView:(id)view
{
  v35 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (self->_routeControlsPresentation)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69705B8]);
    if (!+[MRUFeatureFlagProvider isCayenneEnabled])
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      [v5 setPresentingAppBundleID:bundleIdentifier];
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
        endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
        routeUID = [endpointController routeUID];
        [v5 setRouteUID:routeUID];
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

      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 && [(MRUNowPlayingViewController *)self context]!= 2)
      {
        [(MPMediaControls *)self->_mediaControls setSourceView:viewCopy];
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
    layout = [(MRUNowPlayingViewController *)self layout];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      if (layout == 1)
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

- (void)updateContentAnimated:(id)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__MRUNowPlayingViewController_updateContentAnimated_completion___block_invoke;
  aBlock[3] = &unk_1E7664490;
  aBlock[4] = self;
  v8 = animatedCopy;
  v16 = v8;
  v9 = _Block_copy(aBlock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained nowPlayingViewController:self didChangeSizeWithAnimations:v9 completion:completionCopy];
  }

  else
  {
    v11 = MEMORY[0x1E69DD250];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__MRUNowPlayingViewController_updateContentAnimated_completion___block_invoke_3;
    v12[3] = &unk_1E7665740;
    v13 = v9;
    v14 = completionCopy;
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
    endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
    objc_initWeak(&location, endpointController);

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
    endpointController2 = [(MRUNowPlayingController *)self->_controller endpointController];
    [endpointController2 launchNowPlayingApp];
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
  endpointController = [(MRUNowPlayingController *)self->_controller endpointController];
  v13 = endpointController;
  if (endpointController)
  {
    v14 = endpointController;
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
  view = [(MRUNowPlayingViewController *)self view];
  window = [view window];
  v20 = window;
  if (window)
  {
    v21 = window;
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