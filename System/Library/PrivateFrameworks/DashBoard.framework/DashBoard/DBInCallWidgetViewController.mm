@interface DBInCallWidgetViewController
- (BOOL)_shouldUseMultilineTitleButton;
- (CGSize)lastViewSize;
- (id)_displayNameForCall:(id)call;
- (id)linearFocusItems;
- (void)_displayLinkFired:(id)fired;
- (void)_updateUIForCallState;
- (void)buttonTapped:(id)tapped;
- (void)dealloc;
- (void)handleCallStatusChanged;
- (void)invalidate;
- (void)setHidden:(BOOL)hidden;
- (void)setupConstraints;
- (void)updateLabelsForCurrentStyle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)widgetViewTapped;
@end

@implementation DBInCallWidgetViewController

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = DBInCallWidgetViewController;
  [(DBInCallWidgetViewController *)&v13 viewDidLayoutSubviews];
  view = [(DBInCallWidgetViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  if (v5 != *MEMORY[0x277CBF3A8] || v7 != *(MEMORY[0x277CBF3A8] + 8))
  {
    [(DBInCallWidgetViewController *)self lastViewSize];
    v11 = v10 == v5 && v9 == v7;
    if (!v11 && ![(DBWidgetViewController *)self isHidden])
    {
      [(DBInCallWidgetViewController *)self setLastViewSize:v5, v7];
      if (v7 >= 136.0)
      {
        v12 = 4;
      }

      else if (v5 >= 265.0)
      {
        v12 = 3;
      }

      else if (v5 < 212.0)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      [(DBInCallWidgetViewController *)self setWidgetStyle:v12];
      [(DBInCallWidgetViewController *)self setupConstraints];
      [(DBInCallWidgetViewController *)self updateLabelsForCurrentStyle];
    }
  }
}

- (CGSize)lastViewSize
{
  width = self->_lastViewSize.width;
  height = self->_lastViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)handleCallStatusChanged
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  displayedAudioAndVideoCalls = [mEMORY[0x277D6EDF8] displayedAudioAndVideoCalls];

  if ([displayedAudioAndVideoCalls count] < 2)
  {
    firstObject = [displayedAudioAndVideoCalls firstObject];
    goto LABEL_5;
  }

  firstObject = [displayedAudioAndVideoCalls bs_firstObjectPassingTest:&__block_literal_global_8];
  if (firstObject)
  {
LABEL_5:
    [(DBInCallWidgetViewController *)self setCurrentCall:firstObject];
  }

  [(DBInCallWidgetViewController *)self _updateUIForCallState];
}

- (void)_updateUIForCallState
{
  currentCall = [(DBInCallWidgetViewController *)self currentCall];
  avatarButton = [(DBInCallWidgetViewController *)self avatarButton];
  [avatarButton setCurrentCall:currentCall];

  currentCall2 = [(DBInCallWidgetViewController *)self currentCall];
  provider = [currentCall2 provider];
  displayAppBundleIdentifier = [provider displayAppBundleIdentifier];
  appIconButton = [(DBInCallWidgetViewController *)self appIconButton];
  [appIconButton setApplicationBundleIdentifier:displayAppBundleIdentifier];

  currentCall3 = [(DBInCallWidgetViewController *)self currentCall];
  isUplinkMuted = [currentCall3 isUplinkMuted];

  muteButton = [(DBInCallWidgetViewController *)self muteButton];
  [muteButton setSelected:isUplinkMuted];

  currentCall4 = [(DBInCallWidgetViewController *)self currentCall];
  v42 = [(DBInCallWidgetViewController *)self _displayNameForCall:currentCall4];

  contactNameLabel = [(DBInCallWidgetViewController *)self contactNameLabel];
  [contactNameLabel setText:v42];

  multiwayTitleButton = [(DBInCallWidgetViewController *)self multiwayTitleButton];
  multilineTitleLabel = [multiwayTitleButton multilineTitleLabel];
  [multilineTitleLabel setText:v42];

  _shouldUseMultilineTitleButton = [(DBInCallWidgetViewController *)self _shouldUseMultilineTitleButton];
  if ([(DBInCallWidgetViewController *)self widgetStyle]== 4)
  {
    contactNameLabel2 = [(DBInCallWidgetViewController *)self contactNameLabel];
    [contactNameLabel2 setHidden:_shouldUseMultilineTitleButton];

    multiwayTitleButton2 = [(DBInCallWidgetViewController *)self multiwayTitleButton];
    [multiwayTitleButton2 setHidden:_shouldUseMultilineTitleButton ^ 1];

    multiwayTitleButton3 = [(DBInCallWidgetViewController *)self multiwayTitleButton];
    isHidden = [multiwayTitleButton3 isHidden];
    avatarButton2 = [(DBInCallWidgetViewController *)self avatarButton];
    [avatarButton2 setHidden:isHidden ^ 1u];

    if (_shouldUseMultilineTitleButton)
    {
      tallMultiwayOnlyConstraints = [(DBInCallWidgetViewController *)self tallMultiwayOnlyConstraints];
      [(DBInCallWidgetViewController *)self tallNonMultiwayConstraints];
    }

    else
    {
      tallMultiwayOnlyConstraints = [(DBInCallWidgetViewController *)self tallNonMultiwayConstraints];
      [(DBInCallWidgetViewController *)self tallMultiwayOnlyConstraints];
    }
    v24 = ;
    [MEMORY[0x277CCAAD0] deactivateConstraints:v24];
    [MEMORY[0x277CCAAD0] activateConstraints:tallMultiwayOnlyConstraints];
    constraints = [(DBInCallWidgetViewController *)self constraints];
    v26 = [constraints mutableCopy];

    [v26 removeObjectsInArray:v24];
    [v26 addObjectsFromArray:tallMultiwayOnlyConstraints];
    [(DBInCallWidgetViewController *)self setConstraints:v26];
  }

  else
  {
    appIconButton2 = [(DBInCallWidgetViewController *)self appIconButton];
    [appIconButton2 setHidden:_shouldUseMultilineTitleButton ^ 1];

    tallMultiwayOnlyConstraints = [(DBInCallWidgetViewController *)self avatarButton];
    [tallMultiwayOnlyConstraints setHidden:_shouldUseMultilineTitleButton];
  }

  currentCall5 = [(DBInCallWidgetViewController *)self currentCall];
  if (currentCall5)
  {
    v28 = currentCall5;
    callTimeDisplayLink = [(DBInCallWidgetViewController *)self callTimeDisplayLink];
    if (callTimeDisplayLink)
    {
    }

    else
    {
      invalidated = [(DBInCallWidgetViewController *)self invalidated];

      if (!invalidated)
      {
        view = [(DBInCallWidgetViewController *)self view];
        window = [view window];
        screen = [window screen];
        v38 = [screen displayLinkWithTarget:self selector:sel__displayLinkFired_];
        [(DBInCallWidgetViewController *)self setCallTimeDisplayLink:v38];

        callTimeDisplayLink2 = [(DBInCallWidgetViewController *)self callTimeDisplayLink];
        [callTimeDisplayLink2 setPreferredFramesPerSecond:1];

        callTimeDisplayLink3 = [(DBInCallWidgetViewController *)self callTimeDisplayLink];
        mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
        [callTimeDisplayLink3 addToRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE738]];

        goto LABEL_16;
      }
    }
  }

  currentCall6 = [(DBInCallWidgetViewController *)self currentCall];
  if (currentCall6)
  {
  }

  else
  {
    callTimeDisplayLink4 = [(DBInCallWidgetViewController *)self callTimeDisplayLink];

    if (callTimeDisplayLink4)
    {
      callTimeDisplayLink5 = [(DBInCallWidgetViewController *)self callTimeDisplayLink];
      [callTimeDisplayLink5 setPaused:1];

      callTimeDisplayLink6 = [(DBInCallWidgetViewController *)self callTimeDisplayLink];
      [callTimeDisplayLink6 invalidate];

      [(DBInCallWidgetViewController *)self setCallTimeDisplayLink:0];
    }
  }

LABEL_16:
}

- (BOOL)_shouldUseMultilineTitleButton
{
  currentCall = [(DBInCallWidgetViewController *)self currentCall];
  isConferenced = [currentCall isConferenced];

  if (!isConferenced)
  {
    currentCall2 = [(DBInCallWidgetViewController *)self currentCall];
    isConversation = [currentCall2 isConversation];

    if (isConversation)
    {
      mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
      currentCall3 = [(DBInCallWidgetViewController *)self currentCall];
      v5 = [mEMORY[0x277D6EDF8] activeConversationForCall:currentCall3];

      if (![v5 isOneToOneModeEnabled])
      {
        v17 = DBLogForCategory(2uLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          _os_log_impl(&dword_248146000, v17, OS_LOG_TYPE_INFO, "Using multiline label for multiway FaceTime call.", v21, 2u);
        }

        goto LABEL_17;
      }
    }

    currentCall4 = [(DBInCallWidgetViewController *)self currentCall];
    contactIdentifiers = [currentCall4 contactIdentifiers];
    firstObject = [contactIdentifiers firstObject];

    v5 = DBLogForCategory(2uLL);
    v16 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (firstObject)
    {
      if (v16)
      {
        *v19 = 0;
        _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_INFO, "Not using multiline label for call.", v19, 2u);
      }

      v6 = 0;
      goto LABEL_18;
    }

    if (v16)
    {
      *buf = 0;
      v7 = "Using multiline label because call has no stored contact identifier.";
      v6 = 1;
      v8 = buf;
      goto LABEL_13;
    }

LABEL_17:
    v6 = 1;
    goto LABEL_18;
  }

  v5 = DBLogForCategory(2uLL);
  v6 = 1;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v22 = 0;
    v7 = "Using multiline label for multiway telephony call.";
    v8 = &v22;
LABEL_13:
    _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_INFO, v7, v8, 2u);
  }

LABEL_18:

  return v6;
}

- (void)dealloc
{
  callTimeDisplayLink = [(DBInCallWidgetViewController *)self callTimeDisplayLink];
  [callTimeDisplayLink invalidate];

  v4.receiver = self;
  v4.super_class = DBInCallWidgetViewController;
  [(DBInCallWidgetViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v71.receiver = self;
  v71.super_class = DBInCallWidgetViewController;
  [(DBInCallWidgetViewController *)&v71 viewDidLoad];
  view = [(DBInCallWidgetViewController *)self view];
  [view setAccessibilityIdentifier:@"CARAppTodayInCallViewWidget"];

  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  displayedAudioAndVideoCalls = [mEMORY[0x277D6EDF8] displayedAudioAndVideoCalls];

  firstObject = [displayedAudioAndVideoCalls firstObject];
  currentCall = self->_currentCall;
  self->_currentCall = firstObject;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__muteStateChanged_ name:*MEMORY[0x277D6F0A0] object:0];
  self->_lastViewSize = *MEMORY[0x277CBF3A8];
  [(DBInCallWidgetViewController *)self setWidgetStyle:0];
  v9 = objc_alloc_init(_TtC9DashBoard29DBGlassInCallWidgetAvatarView);
  [(DBInCallWidgetViewController *)self setAvatarButton:v9];

  v10 = objc_alloc_init(_TtC9DashBoard32DBGlassInCallWidgetAppIconButton);
  [(DBInCallWidgetViewController *)self setAppIconButton:v10];

  avatarButton = [(DBInCallWidgetViewController *)self avatarButton];
  [avatarButton addTarget:self action:sel_buttonTapped_ forControlEvents:0x2000];

  contentView = [(DBWidgetViewController *)self contentView];
  avatarButton2 = [(DBInCallWidgetViewController *)self avatarButton];
  [contentView addSubview:avatarButton2];

  avatarButton3 = [(DBInCallWidgetViewController *)self avatarButton];
  [avatarButton3 setAccessibilityIdentifier:@"AvatarButton"];

  appIconButton = [(DBInCallWidgetViewController *)self appIconButton];
  [appIconButton setTranslatesAutoresizingMaskIntoConstraints:0];

  appIconButton2 = [(DBInCallWidgetViewController *)self appIconButton];
  [appIconButton2 addTarget:self action:sel_buttonTapped_ forControlEvents:0x2000];

  contentView2 = [(DBWidgetViewController *)self contentView];
  appIconButton3 = [(DBInCallWidgetViewController *)self appIconButton];
  [contentView2 addSubview:appIconButton3];

  v19 = objc_alloc(MEMORY[0x277D756B8]);
  v20 = *MEMORY[0x277CBF3A0];
  v21 = *(MEMORY[0x277CBF3A0] + 8);
  v22 = *(MEMORY[0x277CBF3A0] + 16);
  v23 = *(MEMORY[0x277CBF3A0] + 24);
  v24 = [v19 initWithFrame:{*MEMORY[0x277CBF3A0], v21, v22, v23}];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [v24 setTextColor:labelColor];

  [v24 setTextAlignment:1];
  v26 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] variant:1280];
  [v24 setFont:v26];

  [v24 setAdjustsFontForContentSizeCategory:1];
  [v24 setNumberOfLines:1];
  contentView3 = [(DBWidgetViewController *)self contentView];
  [contentView3 addSubview:v24];

  [(DBInCallWidgetViewController *)self setContactNameLabel:v24];
  contactNameLabel = [(DBInCallWidgetViewController *)self contactNameLabel];
  [contactNameLabel setAccessibilityIdentifier:@"ContactName"];

  v29 = [[DBInCallWidgetMultiwayTitleButton alloc] initWithFrame:v20, v21, v22, v23];
  [(DBInCallWidgetMultiwayTitleButton *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(DBInCallWidgetMultiwayTitleButton *)v29 addTarget:self action:sel_buttonTapped_ forControlEvents:0x2000];
  contentView4 = [(DBWidgetViewController *)self contentView];
  [contentView4 addSubview:v29];

  [(DBInCallWidgetViewController *)self setMultiwayTitleButton:v29];
  multiwayTitleButton = [(DBInCallWidgetViewController *)self multiwayTitleButton];
  [multiwayTitleButton setAccessibilityIdentifier:@"MultiwayTitle"];

  v32 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v20, v21, v22, v23}];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  _carSystemPrimaryColor = [MEMORY[0x277D75348] _carSystemPrimaryColor];
  [v32 setTextColor:_carSystemPrimaryColor];

  [v32 setTextAlignment:1];
  v34 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
  [v32 setFont:v34];

  [v32 setAdjustsFontForContentSizeCategory:1];
  [v32 setNumberOfLines:1];
  contentView5 = [(DBWidgetViewController *)self contentView];
  [contentView5 addSubview:v32];

  [(DBInCallWidgetViewController *)self setCallTimeLabel:v32];
  callTimeLabel = [(DBInCallWidgetViewController *)self callTimeLabel];
  [callTimeLabel setAccessibilityIdentifier:@"CallTime"];

  v37 = [[_TtC9DashBoard25DBGlassInCallWidgetButton alloc] initWithButtonType:1];
  [(DBInCallWidgetViewController *)self setMuteButton:v37];

  v38 = [[_TtC9DashBoard25DBGlassInCallWidgetButton alloc] initWithButtonType:0];
  [(DBInCallWidgetViewController *)self setEndCallButton:v38];

  muteButton = [(DBInCallWidgetViewController *)self muteButton];
  [muteButton addTarget:self action:sel_buttonTapped_ forControlEvents:0x2000];

  contentView6 = [(DBWidgetViewController *)self contentView];
  muteButton2 = [(DBInCallWidgetViewController *)self muteButton];
  [contentView6 addSubview:muteButton2];

  muteButton3 = [(DBInCallWidgetViewController *)self muteButton];
  [muteButton3 setAccessibilityIdentifier:@"MuteButton"];

  endCallButton = [(DBInCallWidgetViewController *)self endCallButton];
  [endCallButton addTarget:self action:sel_buttonTapped_ forControlEvents:0x2000];

  contentView7 = [(DBWidgetViewController *)self contentView];
  endCallButton2 = [(DBInCallWidgetViewController *)self endCallButton];
  [contentView7 addSubview:endCallButton2];

  endCallButton3 = [(DBInCallWidgetViewController *)self endCallButton];
  [endCallButton3 setAccessibilityIdentifier:@"EndCallButton"];

  v47 = objc_opt_new();
  [(DBInCallWidgetViewController *)self setLeftButtonGuide:v47];

  contentView8 = [(DBWidgetViewController *)self contentView];
  leftButtonGuide = [(DBInCallWidgetViewController *)self leftButtonGuide];
  [contentView8 addLayoutGuide:leftButtonGuide];

  v50 = objc_opt_new();
  [(DBInCallWidgetViewController *)self setMidButtonGuide:v50];

  contentView9 = [(DBWidgetViewController *)self contentView];
  midButtonGuide = [(DBInCallWidgetViewController *)self midButtonGuide];
  [contentView9 addLayoutGuide:midButtonGuide];

  v53 = objc_opt_new();
  [(DBInCallWidgetViewController *)self setRightButtonGuide:v53];

  contentView10 = [(DBWidgetViewController *)self contentView];
  rightButtonGuide = [(DBInCallWidgetViewController *)self rightButtonGuide];
  [contentView10 addLayoutGuide:rightButtonGuide];

  v56 = objc_opt_new();
  [(DBInCallWidgetViewController *)self setLabelContainerGuide:v56];

  contentView11 = [(DBWidgetViewController *)self contentView];
  labelContainerGuide = [(DBInCallWidgetViewController *)self labelContainerGuide];
  [contentView11 addLayoutGuide:labelContainerGuide];

  v59 = objc_opt_new();
  [(DBInCallWidgetViewController *)self setTopRowGuide:v59];

  contentView12 = [(DBWidgetViewController *)self contentView];
  topRowGuide = [(DBInCallWidgetViewController *)self topRowGuide];
  [contentView12 addLayoutGuide:topRowGuide];

  v62 = objc_opt_new();
  [(DBInCallWidgetViewController *)self setMidTopRowGuide:v62];

  contentView13 = [(DBWidgetViewController *)self contentView];
  midTopRowGuide = [(DBInCallWidgetViewController *)self midTopRowGuide];
  [contentView13 addLayoutGuide:midTopRowGuide];

  v65 = objc_opt_new();
  [(DBInCallWidgetViewController *)self setMidBottomGuide:v65];

  contentView14 = [(DBWidgetViewController *)self contentView];
  midBottomGuide = [(DBInCallWidgetViewController *)self midBottomGuide];
  [contentView14 addLayoutGuide:midBottomGuide];

  v68 = objc_opt_new();
  [(DBInCallWidgetViewController *)self setBottomRowGuide:v68];

  contentView15 = [(DBWidgetViewController *)self contentView];
  bottomRowGuide = [(DBInCallWidgetViewController *)self bottomRowGuide];
  [contentView15 addLayoutGuide:bottomRowGuide];

  [(DBInCallWidgetViewController *)self setupConstraints];
  [(DBInCallWidgetViewController *)self handleCallStatusChanged];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = DBInCallWidgetViewController;
  [(DBInCallWidgetViewController *)&v4 viewDidAppear:appear];
  [(DBInCallWidgetViewController *)self _updateUIForCallState];
}

- (void)setupConstraints
{
  avatarButton = [(DBInCallWidgetViewController *)self avatarButton];
  appIconButton = [(DBInCallWidgetViewController *)self appIconButton];
  contactNameLabel = [(DBInCallWidgetViewController *)self contactNameLabel];
  callTimeLabel = [(DBInCallWidgetViewController *)self callTimeLabel];
  muteButton = [(DBInCallWidgetViewController *)self muteButton];
  endCallButton = [(DBInCallWidgetViewController *)self endCallButton];
  multiwayTitleButton = [(DBInCallWidgetViewController *)self multiwayTitleButton];
  leftButtonGuide = [(DBInCallWidgetViewController *)self leftButtonGuide];
  midButtonGuide = [(DBInCallWidgetViewController *)self midButtonGuide];
  rightButtonGuide = [(DBInCallWidgetViewController *)self rightButtonGuide];
  labelContainerGuide = [(DBInCallWidgetViewController *)self labelContainerGuide];
  topRowGuide = [(DBInCallWidgetViewController *)self topRowGuide];
  midTopRowGuide = [(DBInCallWidgetViewController *)self midTopRowGuide];
  midBottomGuide = [(DBInCallWidgetViewController *)self midBottomGuide];
  bottomRowGuide = [(DBInCallWidgetViewController *)self bottomRowGuide];
  [avatarButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v350 = contactNameLabel;
  [contactNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [callTimeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v351 = muteButton;
  [muteButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v349 = endCallButton;
  [endCallButton setTranslatesAutoresizingMaskIntoConstraints:0];
  constraints = [(DBInCallWidgetViewController *)self constraints];

  v10 = 0x277CCA000uLL;
  if (constraints)
  {
    v11 = MEMORY[0x277CCAAD0];
    constraints2 = [(DBInCallWidgetViewController *)self constraints];
    [v11 deactivateConstraints:constraints2];

    [(DBInCallWidgetViewController *)self setConstraints:0];
  }

  topFocusContainerGuide = [(DBInCallWidgetViewController *)self topFocusContainerGuide];

  if (topFocusContainerGuide)
  {
    contentView = [(DBWidgetViewController *)self contentView];
    topFocusContainerGuide2 = [(DBInCallWidgetViewController *)self topFocusContainerGuide];
    [contentView removeLayoutGuide:topFocusContainerGuide2];

    [(DBInCallWidgetViewController *)self setTopFocusContainerGuide:0];
  }

  bottomFocusContainerGuide = [(DBInCallWidgetViewController *)self bottomFocusContainerGuide];

  if (bottomFocusContainerGuide)
  {
    contentView2 = [(DBWidgetViewController *)self contentView];
    bottomFocusContainerGuide2 = [(DBInCallWidgetViewController *)self bottomFocusContainerGuide];
    [contentView2 removeLayoutGuide:bottomFocusContainerGuide2];

    [(DBInCallWidgetViewController *)self setBottomFocusContainerGuide:0];
  }

  multiwayLabelFocusContainerGuide = [(DBInCallWidgetViewController *)self multiwayLabelFocusContainerGuide];

  if (multiwayLabelFocusContainerGuide)
  {
    contentView3 = [(DBWidgetViewController *)self contentView];
    multiwayLabelFocusContainerGuide2 = [(DBInCallWidgetViewController *)self multiwayLabelFocusContainerGuide];
    [contentView3 removeLayoutGuide:multiwayLabelFocusContainerGuide2];

    [(DBInCallWidgetViewController *)self setMultiwayLabelFocusContainerGuide:0];
  }

  v22 = objc_opt_new();
  widgetStyle = [(DBInCallWidgetViewController *)self widgetStyle];
  if (widgetStyle == 4)
  {
    v24 = objc_opt_new();
    v339 = objc_opt_new();
    leadingAnchor = [topRowGuide leadingAnchor];
    [(DBWidgetViewController *)self contentView];
    v27 = v26 = callTimeLabel;
    leadingAnchor2 = [v27 leadingAnchor];
    [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30 = v29 = topRowGuide;
    [v24 addObject:v30];

    trailingAnchor = [v29 trailingAnchor];
    contentView4 = [(DBWidgetViewController *)self contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v24 addObject:v34];

    topAnchor = [v29 topAnchor];
    contentView5 = [(DBWidgetViewController *)self contentView];
    topAnchor2 = [contentView5 topAnchor];
    v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v24 addObject:v38];

    v336 = v29;
    heightAnchor = [v29 heightAnchor];
    heightAnchor2 = [bottomRowGuide heightAnchor];
    v41 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0];
    [v24 addObject:v41];

    centerXAnchor = [avatarButton centerXAnchor];
    contentView6 = [(DBWidgetViewController *)self contentView];
    centerXAnchor2 = [contentView6 centerXAnchor];
    v45 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v24 addObject:v45];

    topAnchor3 = [avatarButton topAnchor];
    topRowGuide2 = [(DBInCallWidgetViewController *)self topRowGuide];
    bottomAnchor = [topRowGuide2 bottomAnchor];
    v49 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:0.0];
    [v24 addObject:v49];

    [appIconButton setHidden:1];
    leadingAnchor3 = [midTopRowGuide leadingAnchor];
    contentView7 = [(DBWidgetViewController *)self contentView];
    leadingAnchor4 = [contentView7 leadingAnchor];
    v53 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v22 addObject:v53];

    trailingAnchor3 = [midTopRowGuide trailingAnchor];
    contentView8 = [(DBWidgetViewController *)self contentView];
    trailingAnchor4 = [contentView8 trailingAnchor];
    v57 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    [v22 addObject:v57];

    heightAnchor3 = [midTopRowGuide heightAnchor];
    heightAnchor4 = [bottomRowGuide heightAnchor];
    v60 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4 multiplier:1.0];
    [v22 addObject:v60];

    topAnchor4 = [midTopRowGuide topAnchor];
    bottomAnchor2 = [avatarButton bottomAnchor];
    v63 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
    [v24 addObject:v63];

    topAnchor5 = [midTopRowGuide topAnchor];
    contentView9 = [(DBWidgetViewController *)self contentView];
    topAnchor6 = [contentView9 topAnchor];
    v67 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    [v339 addObject:v67];

    leadingAnchor5 = [labelContainerGuide leadingAnchor];
    contentView10 = [(DBWidgetViewController *)self contentView];
    leadingAnchor6 = [contentView10 leadingAnchor];
    v71 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:12.0];
    [v22 addObject:v71];

    trailingAnchor5 = [labelContainerGuide trailingAnchor];
    contentView11 = [(DBWidgetViewController *)self contentView];
    trailingAnchor6 = [contentView11 trailingAnchor];
    v75 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-12.0];
    [v22 addObject:v75];

    topAnchor7 = [labelContainerGuide topAnchor];
    bottomAnchor3 = [midTopRowGuide bottomAnchor];
    v78 = [topAnchor7 constraintEqualToAnchor:bottomAnchor3];
    [v22 addObject:v78];

    leadingAnchor7 = [v350 leadingAnchor];
    leadingAnchor8 = [labelContainerGuide leadingAnchor];
    v81 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    [v24 addObject:v81];

    trailingAnchor7 = [v350 trailingAnchor];
    trailingAnchor8 = [labelContainerGuide trailingAnchor];
    v84 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    [v24 addObject:v84];

    topAnchor8 = [v350 topAnchor];
    topAnchor9 = [labelContainerGuide topAnchor];
    v87 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
    [v24 addObject:v87];

    [v350 setHidden:0];
    leadingAnchor9 = [v26 leadingAnchor];
    leadingAnchor10 = [labelContainerGuide leadingAnchor];
    v90 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    [v22 addObject:v90];

    trailingAnchor9 = [v26 trailingAnchor];
    trailingAnchor10 = [labelContainerGuide trailingAnchor];
    v93 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    [v22 addObject:v93];

    bottomAnchor4 = [v26 bottomAnchor];
    bottomAnchor5 = [labelContainerGuide bottomAnchor];
    v96 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    [v22 addObject:v96];

    firstBaselineAnchor = [v26 firstBaselineAnchor];
    lastBaselineAnchor = [v350 lastBaselineAnchor];
    v99 = [firstBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor constant:14.0];
    [v22 addObject:v99];

    firstBaselineAnchor2 = [v26 firstBaselineAnchor];
    bottomAnchor6 = [multiwayTitleButton bottomAnchor];
    v102 = [firstBaselineAnchor2 constraintEqualToAnchor:bottomAnchor6 constant:14.0];
    [v22 addObject:v102];

    v338 = v26;
    [v26 setHidden:0];
    leadingAnchor11 = [multiwayTitleButton leadingAnchor];
    leadingAnchor12 = [labelContainerGuide leadingAnchor];
    v105 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    [v339 addObject:v105];

    trailingAnchor11 = [multiwayTitleButton trailingAnchor];
    trailingAnchor12 = [labelContainerGuide trailingAnchor];
    v108 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    [v339 addObject:v108];

    topAnchor10 = [multiwayTitleButton topAnchor];
    topAnchor11 = [labelContainerGuide topAnchor];
    v111 = [topAnchor10 constraintEqualToSystemSpacingBelowAnchor:topAnchor11 multiplier:1.0];
    [v339 addObject:v111];

    leadingAnchor13 = [midBottomGuide leadingAnchor];
    contentView12 = [(DBWidgetViewController *)self contentView];
    leadingAnchor14 = [contentView12 leadingAnchor];
    v115 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
    [v22 addObject:v115];

    trailingAnchor13 = [midBottomGuide trailingAnchor];
    contentView13 = [(DBWidgetViewController *)self contentView];
    trailingAnchor14 = [contentView13 trailingAnchor];
    v119 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
    [v22 addObject:v119];

    topAnchor12 = [midBottomGuide topAnchor];
    bottomAnchor7 = [labelContainerGuide bottomAnchor];
    v122 = [topAnchor12 constraintEqualToAnchor:bottomAnchor7];
    [v22 addObject:v122];

    heightAnchor5 = [midBottomGuide heightAnchor];
    heightAnchor6 = [bottomRowGuide heightAnchor];
    v125 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6 multiplier:1.0];
    [v22 addObject:v125];

    leadingAnchor15 = [leftButtonGuide leadingAnchor];
    contentView14 = [(DBWidgetViewController *)self contentView];
    leadingAnchor16 = [contentView14 leadingAnchor];
    v129 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16];
    [v22 addObject:v129];

    trailingAnchor15 = [leftButtonGuide trailingAnchor];
    leadingAnchor17 = [v351 leadingAnchor];
    v132 = [trailingAnchor15 constraintEqualToAnchor:leadingAnchor17 constant:0.0];
    [v22 addObject:v132];

    topAnchor13 = [leftButtonGuide topAnchor];
    topAnchor14 = [v351 topAnchor];
    v135 = [topAnchor13 constraintEqualToAnchor:topAnchor14];
    [v22 addObject:v135];

    bottomAnchor8 = [leftButtonGuide bottomAnchor];
    bottomAnchor9 = [v351 bottomAnchor];
    v138 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    [v22 addObject:v138];

    topAnchor15 = [v351 topAnchor];
    bottomAnchor10 = [midBottomGuide bottomAnchor];
    v141 = [topAnchor15 constraintEqualToAnchor:bottomAnchor10];
    [v22 addObject:v141];

    trailingAnchor16 = [v351 trailingAnchor];
    leadingAnchor18 = [midButtonGuide leadingAnchor];
    v144 = [trailingAnchor16 constraintEqualToAnchor:leadingAnchor18 constant:0.0];
    [v22 addObject:v144];

    [v351 setHidden:0];
    trailingAnchor17 = [midButtonGuide trailingAnchor];
    leadingAnchor19 = [v349 leadingAnchor];
    v147 = [trailingAnchor17 constraintEqualToAnchor:leadingAnchor19 constant:0.0];
    [v22 addObject:v147];

    widthAnchor = [midButtonGuide widthAnchor];
    widthAnchor2 = [leftButtonGuide widthAnchor];
    v150 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v22 addObject:v150];

    topAnchor16 = [midButtonGuide topAnchor];
    topAnchor17 = [leftButtonGuide topAnchor];
    v153 = [topAnchor16 constraintEqualToAnchor:topAnchor17];
    [v22 addObject:v153];

    bottomAnchor11 = [midButtonGuide bottomAnchor];
    bottomAnchor12 = [leftButtonGuide bottomAnchor];
    v156 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
    [v22 addObject:v156];

    bottomAnchor13 = [v349 bottomAnchor];
    bottomAnchor14 = [v351 bottomAnchor];
    v159 = [bottomAnchor13 constraintEqualToAnchor:bottomAnchor14];
    [v22 addObject:v159];

    trailingAnchor18 = [v349 trailingAnchor];
    leadingAnchor20 = [rightButtonGuide leadingAnchor];
    v162 = [trailingAnchor18 constraintEqualToAnchor:leadingAnchor20 constant:0.0];
    [v22 addObject:v162];

    [v349 setHidden:0];
    trailingAnchor19 = [rightButtonGuide trailingAnchor];
    contentView15 = [(DBWidgetViewController *)self contentView];
    trailingAnchor20 = [contentView15 trailingAnchor];
    v166 = [trailingAnchor19 constraintEqualToAnchor:trailingAnchor20];
    [v22 addObject:v166];

    widthAnchor3 = [rightButtonGuide widthAnchor];
    widthAnchor4 = [leftButtonGuide widthAnchor];
    v169 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    [v22 addObject:v169];

    topAnchor18 = [rightButtonGuide topAnchor];
    topAnchor19 = [leftButtonGuide topAnchor];
    v172 = [topAnchor18 constraintEqualToAnchor:topAnchor19];
    [v22 addObject:v172];

    bottomAnchor15 = [rightButtonGuide bottomAnchor];
    bottomAnchor16 = [leftButtonGuide bottomAnchor];
    v175 = [bottomAnchor15 constraintEqualToAnchor:bottomAnchor16];
    [v22 addObject:v175];

    leadingAnchor21 = [bottomRowGuide leadingAnchor];
    contentView16 = [(DBWidgetViewController *)self contentView];
    leadingAnchor22 = [contentView16 leadingAnchor];
    v179 = [leadingAnchor21 constraintEqualToAnchor:leadingAnchor22];
    [v22 addObject:v179];

    trailingAnchor21 = [bottomRowGuide trailingAnchor];
    contentView17 = [(DBWidgetViewController *)self contentView];
    trailingAnchor22 = [contentView17 trailingAnchor];
    v183 = [trailingAnchor21 constraintEqualToAnchor:trailingAnchor22];
    [v22 addObject:v183];

    topAnchor20 = [bottomRowGuide topAnchor];
    v185 = appIconButton;
    bottomAnchor17 = [v351 bottomAnchor];
    v187 = [topAnchor20 constraintEqualToAnchor:bottomAnchor17];
    [v22 addObject:v187];

    bottomAnchor18 = [bottomRowGuide bottomAnchor];
    contentView18 = [(DBWidgetViewController *)self contentView];
    bottomAnchor19 = [contentView18 bottomAnchor];
    v191 = [bottomAnchor18 constraintEqualToAnchor:bottomAnchor19 constant:-0.0];
    [v22 addObject:v191];

    [(DBInCallWidgetViewController *)self setTallNonMultiwayConstraints:v24];
    [(DBInCallWidgetViewController *)self setTallMultiwayOnlyConstraints:v339];
    [v22 addObjectsFromArray:v24];
    traitCollection = [(DBInCallWidgetViewController *)self traitCollection];
    primaryInteractionModel = [traitCollection primaryInteractionModel];

    if (primaryInteractionModel == 8)
    {
      v194 = objc_opt_new();
      [(DBInCallWidgetViewController *)self setTopFocusContainerGuide:v194];

      contentView19 = [(DBWidgetViewController *)self contentView];
      topFocusContainerGuide3 = [(DBInCallWidgetViewController *)self topFocusContainerGuide];
      [contentView19 addLayoutGuide:topFocusContainerGuide3];

      topFocusContainerGuide4 = [(DBInCallWidgetViewController *)self topFocusContainerGuide];
      leadingAnchor23 = [topFocusContainerGuide4 leadingAnchor];
      contentView20 = [(DBWidgetViewController *)self contentView];
      leadingAnchor24 = [contentView20 leadingAnchor];
      v201 = [leadingAnchor23 constraintEqualToAnchor:leadingAnchor24];
      [v22 addObject:v201];

      topFocusContainerGuide5 = [(DBInCallWidgetViewController *)self topFocusContainerGuide];
      trailingAnchor23 = [topFocusContainerGuide5 trailingAnchor];
      contentView21 = [(DBWidgetViewController *)self contentView];
      trailingAnchor24 = [contentView21 trailingAnchor];
      v206 = [trailingAnchor23 constraintEqualToAnchor:trailingAnchor24];
      [v22 addObject:v206];

      topFocusContainerGuide6 = [(DBInCallWidgetViewController *)self topFocusContainerGuide];
      topAnchor21 = [topFocusContainerGuide6 topAnchor];
      topAnchor22 = [avatarButton topAnchor];
      v210 = [topAnchor21 constraintEqualToAnchor:topAnchor22];
      [v22 addObject:v210];

      topFocusContainerGuide7 = [(DBInCallWidgetViewController *)self topFocusContainerGuide];
      bottomAnchor20 = [topFocusContainerGuide7 bottomAnchor];
      bottomAnchor21 = [avatarButton bottomAnchor];
      v214 = [bottomAnchor20 constraintEqualToAnchor:bottomAnchor21];
      [v22 addObject:v214];

      v215 = objc_opt_new();
      [(DBInCallWidgetViewController *)self setBottomFocusContainerGuide:v215];

      contentView22 = [(DBWidgetViewController *)self contentView];
      bottomFocusContainerGuide3 = [(DBInCallWidgetViewController *)self bottomFocusContainerGuide];
      [contentView22 addLayoutGuide:bottomFocusContainerGuide3];

      bottomFocusContainerGuide4 = [(DBInCallWidgetViewController *)self bottomFocusContainerGuide];
      leadingAnchor25 = [bottomFocusContainerGuide4 leadingAnchor];
      contentView23 = [(DBWidgetViewController *)self contentView];
      leadingAnchor26 = [contentView23 leadingAnchor];
      v222 = [leadingAnchor25 constraintEqualToAnchor:leadingAnchor26];
      [v22 addObject:v222];

      bottomFocusContainerGuide5 = [(DBInCallWidgetViewController *)self bottomFocusContainerGuide];
      trailingAnchor25 = [bottomFocusContainerGuide5 trailingAnchor];
      contentView24 = [(DBWidgetViewController *)self contentView];
      trailingAnchor26 = [contentView24 trailingAnchor];
      v227 = [trailingAnchor25 constraintEqualToAnchor:trailingAnchor26];
      [v22 addObject:v227];

      bottomFocusContainerGuide6 = [(DBInCallWidgetViewController *)self bottomFocusContainerGuide];
      topAnchor23 = [bottomFocusContainerGuide6 topAnchor];
      topAnchor24 = [v351 topAnchor];
      v231 = [topAnchor23 constraintEqualToAnchor:topAnchor24];
      [v22 addObject:v231];

      bottomFocusContainerGuide7 = [(DBInCallWidgetViewController *)self bottomFocusContainerGuide];
      bottomAnchor22 = [bottomFocusContainerGuide7 bottomAnchor];
      bottomAnchor23 = [v351 bottomAnchor];
      v235 = [bottomAnchor22 constraintEqualToAnchor:bottomAnchor23];
      [v22 addObject:v235];

      v185 = appIconButton;
    }

    topRowGuide = v336;
    callTimeLabel = v338;
    v236 = midButtonGuide;
    v237 = midTopRowGuide;
    goto LABEL_20;
  }

  v238 = widgetStyle;
  if ((widgetStyle & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v337 = topRowGuide;
    leadingAnchor27 = [avatarButton leadingAnchor];
    contentView25 = [(DBWidgetViewController *)self contentView];
    leadingAnchor28 = [contentView25 leadingAnchor];
    v242 = [leadingAnchor27 constraintEqualToAnchor:leadingAnchor28 constant:13.0];
    [v22 addObject:v242];

    centerYAnchor = [avatarButton centerYAnchor];
    contentView26 = [(DBWidgetViewController *)self contentView];
    centerYAnchor2 = [contentView26 centerYAnchor];
    v246 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v22 addObject:v246];

    [avatarButton setHidden:0];
    leadingAnchor29 = [appIconButton leadingAnchor];
    leadingAnchor30 = [avatarButton leadingAnchor];
    v249 = [leadingAnchor29 constraintEqualToAnchor:leadingAnchor30];
    [v22 addObject:v249];

    trailingAnchor27 = [appIconButton trailingAnchor];
    trailingAnchor28 = [avatarButton trailingAnchor];
    v252 = [trailingAnchor27 constraintEqualToAnchor:trailingAnchor28 constant:-1.0];
    [v22 addObject:v252];

    topAnchor25 = [appIconButton topAnchor];
    topAnchor26 = [avatarButton topAnchor];
    v255 = [topAnchor25 constraintEqualToAnchor:topAnchor26];
    [v22 addObject:v255];

    bottomAnchor24 = [appIconButton bottomAnchor];
    bottomAnchor25 = [avatarButton bottomAnchor];
    v258 = [bottomAnchor24 constraintEqualToAnchor:bottomAnchor25 constant:-1.0];
    [v22 addObject:v258];

    v346 = appIconButton;
    [appIconButton setHidden:0];
    if (v238 == 3)
    {
      firstBaselineAnchor3 = [v350 firstBaselineAnchor];
      topAnchor27 = [avatarButton topAnchor];
      v261 = [firstBaselineAnchor3 constraintEqualToAnchor:topAnchor27 constant:17.0];
      [v22 addObject:v261];

      leadingAnchor31 = [v350 leadingAnchor];
      trailingAnchor29 = [avatarButton trailingAnchor];
      v264 = [leadingAnchor31 constraintEqualToAnchor:trailingAnchor29 constant:7.0];
      [v22 addObject:v264];

      trailingAnchor30 = [v350 trailingAnchor];
      leadingAnchor32 = [muteButton leadingAnchor];
      v267 = [trailingAnchor30 constraintEqualToAnchor:leadingAnchor32 constant:-8.0];
      [v22 addObject:v267];

      [v350 setHidden:0];
      [multiwayTitleButton setHidden:1];
      v268 = callTimeLabel;
      firstBaselineAnchor4 = [callTimeLabel firstBaselineAnchor];
      lastBaselineAnchor2 = [v350 lastBaselineAnchor];
      v271 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor2 constant:17.0];
      [v22 addObject:v271];

      leadingAnchor33 = [callTimeLabel leadingAnchor];
      leadingAnchor34 = [v350 leadingAnchor];
      v274 = [leadingAnchor33 constraintEqualToAnchor:leadingAnchor34];
      [v22 addObject:v274];

      trailingAnchor31 = [callTimeLabel trailingAnchor];
      trailingAnchor32 = [v350 trailingAnchor];
      [trailingAnchor31 constraintEqualToAnchor:trailingAnchor32];
    }

    else
    {
      [v350 setHidden:1];
      [multiwayTitleButton setHidden:1];
      v268 = callTimeLabel;
      centerYAnchor3 = [callTimeLabel centerYAnchor];
      contentView27 = [(DBWidgetViewController *)self contentView];
      centerYAnchor4 = [contentView27 centerYAnchor];
      v316 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      [v22 addObject:v316];

      leadingAnchor35 = [callTimeLabel leadingAnchor];
      trailingAnchor33 = [avatarButton trailingAnchor];
      v319 = [leadingAnchor35 constraintEqualToAnchor:trailingAnchor33 constant:7.0];
      [v22 addObject:v319];

      trailingAnchor31 = [callTimeLabel trailingAnchor];
      trailingAnchor32 = [muteButton leadingAnchor];
      [trailingAnchor31 constraintEqualToAnchor:trailingAnchor32 constant:-8.0];
    }
    v320 = ;
    v237 = midTopRowGuide;
    [v22 addObject:v320];

    [v268 setHidden:0];
    leadingAnchor36 = [v349 leadingAnchor];
    trailingAnchor34 = [muteButton trailingAnchor];
    v323 = [leadingAnchor36 constraintEqualToAnchor:trailingAnchor34 constant:13.0];
    [v22 addObject:v323];

    centerYAnchor5 = [muteButton centerYAnchor];
    contentView28 = [(DBWidgetViewController *)self contentView];
    centerYAnchor6 = [contentView28 centerYAnchor];
    v327 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v22 addObject:v327];

    [muteButton setHidden:0];
    contentView29 = [(DBWidgetViewController *)self contentView];
    trailingAnchor35 = [contentView29 trailingAnchor];
    trailingAnchor36 = [v349 trailingAnchor];
    v331 = [trailingAnchor35 constraintEqualToAnchor:trailingAnchor36 constant:13.0];
    [v22 addObject:v331];

    centerYAnchor7 = [v349 centerYAnchor];
    contentView30 = [(DBWidgetViewController *)self contentView];
    centerYAnchor8 = [contentView30 centerYAnchor];
    v335 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    [v22 addObject:v335];

    [v349 setHidden:0];
    v236 = midButtonGuide;
    v185 = v346;
    callTimeLabel = v268;
    topRowGuide = v337;
LABEL_20:
    v10 = 0x277CCA000uLL;
    goto LABEL_21;
  }

  v236 = midButtonGuide;
  v185 = appIconButton;
  v237 = midTopRowGuide;
  if (widgetStyle == 1)
  {
    leadingAnchor37 = [avatarButton leadingAnchor];
    [(DBWidgetViewController *)self contentView];
    v278 = v347 = v185;
    leadingAnchor38 = [v278 leadingAnchor];
    v280 = [leadingAnchor37 constraintEqualToAnchor:leadingAnchor38 constant:13.0];
    [v22 addObject:v280];

    centerYAnchor9 = [avatarButton centerYAnchor];
    contentView31 = [(DBWidgetViewController *)self contentView];
    centerYAnchor10 = [contentView31 centerYAnchor];
    v284 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
    [v22 addObject:v284];

    [avatarButton setHidden:0];
    leadingAnchor39 = [v347 leadingAnchor];
    leadingAnchor40 = [avatarButton leadingAnchor];
    v287 = [leadingAnchor39 constraintEqualToAnchor:leadingAnchor40];
    [v22 addObject:v287];

    trailingAnchor37 = [v347 trailingAnchor];
    trailingAnchor38 = [avatarButton trailingAnchor];
    v290 = [trailingAnchor37 constraintEqualToAnchor:trailingAnchor38 constant:-1.0];
    [v22 addObject:v290];

    topAnchor28 = [v347 topAnchor];
    topAnchor29 = [avatarButton topAnchor];
    v293 = [topAnchor28 constraintEqualToAnchor:topAnchor29];
    [v22 addObject:v293];

    bottomAnchor26 = [v347 bottomAnchor];
    bottomAnchor27 = [avatarButton bottomAnchor];
    v296 = [bottomAnchor26 constraintEqualToAnchor:bottomAnchor27 constant:-1.0];
    [v22 addObject:v296];

    [v347 setHidden:0];
    [v350 setHidden:1];
    [multiwayTitleButton setHidden:1];
    [callTimeLabel setHidden:1];
    centerXAnchor3 = [muteButton centerXAnchor];
    contentView32 = [(DBWidgetViewController *)self contentView];
    centerXAnchor4 = [contentView32 centerXAnchor];
    v300 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v22 addObject:v300];

    centerYAnchor11 = [muteButton centerYAnchor];
    contentView33 = [(DBWidgetViewController *)self contentView];
    centerYAnchor12 = [contentView33 centerYAnchor];
    v304 = [centerYAnchor11 constraintEqualToAnchor:centerYAnchor12];
    [v22 addObject:v304];

    [muteButton setHidden:0];
    contentView34 = [(DBWidgetViewController *)self contentView];
    trailingAnchor39 = [contentView34 trailingAnchor];
    trailingAnchor40 = [v349 trailingAnchor];
    v308 = [trailingAnchor39 constraintEqualToAnchor:trailingAnchor40 constant:13.0];
    [v22 addObject:v308];

    centerYAnchor13 = [v349 centerYAnchor];
    contentView35 = [(DBWidgetViewController *)self contentView];
    centerYAnchor14 = [contentView35 centerYAnchor];
    v312 = [centerYAnchor13 constraintEqualToAnchor:centerYAnchor14];
    [v22 addObject:v312];

    v10 = 0x277CCA000;
    v185 = v347;

    v236 = midButtonGuide;
    [v349 setHidden:0];
  }

LABEL_21:
  [*(v10 + 2768) activateConstraints:v22];
  [(DBInCallWidgetViewController *)self setConstraints:v22];
}

- (void)updateLabelsForCurrentStyle
{
  _shouldUseMultilineTitleButton = [(DBInCallWidgetViewController *)self _shouldUseMultilineTitleButton];
  if ([(DBInCallWidgetViewController *)self widgetStyle]== 4)
  {
    contactNameLabel = [(DBInCallWidgetViewController *)self contactNameLabel];
    [contactNameLabel setTextAlignment:1];

    v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76938] variant:1280];
    contactNameLabel2 = [(DBInCallWidgetViewController *)self contactNameLabel];
    [contactNameLabel2 setFont:v5];

    callTimeLabel = [(DBInCallWidgetViewController *)self callTimeLabel];
    [callTimeLabel setTextAlignment:1];

    contactNameLabel3 = [(DBInCallWidgetViewController *)self contactNameLabel];
    [contactNameLabel3 setHidden:_shouldUseMultilineTitleButton];

    multiwayTitleButton = [(DBInCallWidgetViewController *)self multiwayTitleButton];
    [multiwayTitleButton setHidden:_shouldUseMultilineTitleButton ^ 1];

    multiwayTitleButton2 = [(DBInCallWidgetViewController *)self multiwayTitleButton];
    LODWORD(contactNameLabel2) = [multiwayTitleButton2 isHidden];
    avatarButton = [(DBInCallWidgetViewController *)self avatarButton];
    [avatarButton setHidden:contactNameLabel2 ^ 1];

    if (_shouldUseMultilineTitleButton)
    {
      tallMultiwayOnlyConstraints = [(DBInCallWidgetViewController *)self tallMultiwayOnlyConstraints];
      [(DBInCallWidgetViewController *)self tallNonMultiwayConstraints];
    }

    else
    {
      tallMultiwayOnlyConstraints = [(DBInCallWidgetViewController *)self tallNonMultiwayConstraints];
      [(DBInCallWidgetViewController *)self tallMultiwayOnlyConstraints];
    }
    v18 = ;
    [MEMORY[0x277CCAAD0] deactivateConstraints:v18];
    [MEMORY[0x277CCAAD0] activateConstraints:tallMultiwayOnlyConstraints];
    constraints = [(DBInCallWidgetViewController *)self constraints];
    v20 = [constraints mutableCopy];

    [v20 removeObjectsInArray:v18];
    [v20 addObjectsFromArray:tallMultiwayOnlyConstraints];
    [(DBInCallWidgetViewController *)self setConstraints:v20];
  }

  else
  {
    appIconButton = [(DBInCallWidgetViewController *)self appIconButton];
    [appIconButton setHidden:_shouldUseMultilineTitleButton ^ 1];

    avatarButton2 = [(DBInCallWidgetViewController *)self avatarButton];
    [avatarButton2 setHidden:_shouldUseMultilineTitleButton];

    contactNameLabel4 = [(DBInCallWidgetViewController *)self contactNameLabel];
    [contactNameLabel4 setTextAlignment:4];

    v15 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1280];
    contactNameLabel5 = [(DBInCallWidgetViewController *)self contactNameLabel];
    [contactNameLabel5 setFont:v15];

    if ([(DBInCallWidgetViewController *)self widgetStyle]== 3)
    {
      v17 = 4;
    }

    else
    {
      v17 = 1;
    }

    tallMultiwayOnlyConstraints = [(DBInCallWidgetViewController *)self callTimeLabel];
    [tallMultiwayOnlyConstraints setTextAlignment:v17];
  }
}

- (void)buttonTapped:(id)tapped
{
  v22 = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  avatarButton = [(DBInCallWidgetViewController *)self avatarButton];

  if (avatarButton == tappedCopy)
  {
    v12 = DBLogForCategory(2uLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    LOWORD(v20) = 0;
    v13 = "In-call widget avatar button selected";
LABEL_15:
    _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, v13, &v20, 2u);
    goto LABEL_16;
  }

  appIconButton = [(DBInCallWidgetViewController *)self appIconButton];

  if (appIconButton == tappedCopy)
  {
    v12 = DBLogForCategory(2uLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    LOWORD(v20) = 0;
    v13 = "In-call widget app icon button selected";
    goto LABEL_15;
  }

  multiwayTitleButton = [(DBInCallWidgetViewController *)self multiwayTitleButton];

  if (multiwayTitleButton == tappedCopy)
  {
    v12 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      v13 = "In-call widget multiway title button selected";
      goto LABEL_15;
    }

LABEL_16:

    [(DBInCallWidgetViewController *)self widgetViewTapped];
    goto LABEL_17;
  }

  muteButton = [(DBInCallWidgetViewController *)self muteButton];

  if (muteButton == tappedCopy)
  {
    v14 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_248146000, v14, OS_LOG_TYPE_DEFAULT, "In-call widget mute button selected", &v20, 2u);
    }

    currentCall = [(DBInCallWidgetViewController *)self currentCall];
    isUplinkMuted = [currentCall isUplinkMuted];

    v17 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = @"Muting";
      if (isUplinkMuted)
      {
        v18 = @"Unmuting";
      }

      v20 = 138412290;
      v21 = v18;
      _os_log_impl(&dword_248146000, v17, OS_LOG_TYPE_INFO, "%@ current call", &v20, 0xCu);
    }

    currentCall2 = [(DBInCallWidgetViewController *)self currentCall];
    [currentCall2 setUplinkMuted:isUplinkMuted ^ 1u];

    [(DBInCallWidgetViewController *)self _updateUIForCallState];
  }

  else
  {
    endCallButton = [(DBInCallWidgetViewController *)self endCallButton];

    if (endCallButton == tappedCopy)
    {
      v10 = DBLogForCategory(2uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "In-call widget end call button selected", &v20, 2u);
      }

      mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
      [mEMORY[0x277D6EDF8] disconnectCurrentCallAndActivateHeld];
    }
  }

LABEL_17:
}

- (id)linearFocusItems
{
  v19[3] = *MEMORY[0x277D85DE8];
  widgetStyle = [(DBInCallWidgetViewController *)self widgetStyle];
  if (widgetStyle - 1 >= 2)
  {
    if (widgetStyle != 4)
    {
      view = [(DBInCallWidgetViewController *)self view];
      v15 = view;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
      goto LABEL_11;
    }

    multiwayTitleButton = [(DBInCallWidgetViewController *)self multiwayTitleButton];
    isHidden = [multiwayTitleButton isHidden];

    if (isHidden)
    {
      view = [(DBInCallWidgetViewController *)self avatarButton];
      v19[0] = view;
      muteButton = [(DBInCallWidgetViewController *)self muteButton];
      v19[1] = muteButton;
      endCallButton = [(DBInCallWidgetViewController *)self endCallButton];
      v19[2] = endCallButton;
      v9 = MEMORY[0x277CBEA60];
      v10 = v19;
    }

    else
    {
      view = [(DBInCallWidgetViewController *)self multiwayTitleButton];
      v18[0] = view;
      muteButton = [(DBInCallWidgetViewController *)self muteButton];
      v18[1] = muteButton;
      endCallButton = [(DBInCallWidgetViewController *)self endCallButton];
      v18[2] = endCallButton;
      v9 = MEMORY[0x277CBEA60];
      v10 = v18;
    }
  }

  else
  {
    appIconButton = [(DBInCallWidgetViewController *)self appIconButton];
    isHidden2 = [appIconButton isHidden];

    if (isHidden2)
    {
      view = [(DBInCallWidgetViewController *)self avatarButton];
      v17[0] = view;
      muteButton = [(DBInCallWidgetViewController *)self muteButton];
      v17[1] = muteButton;
      endCallButton = [(DBInCallWidgetViewController *)self endCallButton];
      v17[2] = endCallButton;
      v9 = MEMORY[0x277CBEA60];
      v10 = v17;
    }

    else
    {
      view = [(DBInCallWidgetViewController *)self appIconButton];
      v16[0] = view;
      muteButton = [(DBInCallWidgetViewController *)self muteButton];
      v16[1] = muteButton;
      endCallButton = [(DBInCallWidgetViewController *)self endCallButton];
      v16[2] = endCallButton;
      v9 = MEMORY[0x277CBEA60];
      v10 = v16;
    }
  }

  v13 = [v9 arrayWithObjects:v10 count:3];

LABEL_11:

  return v13;
}

- (void)widgetViewTapped
{
  v3 = +[DBApplicationController sharedInstance];
  inCallServiceApplication = [v3 inCallServiceApplication];

  if (inCallServiceApplication)
  {
    v5 = DBLogForCategory(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "Requesting activation of InCallService", v9, 2u);
    }

    v6 = objc_alloc_init(DBMutableWorkspaceStateChangeRequest);
    [(DBMutableWorkspaceStateChangeRequest *)v6 activateStackedApplication:inCallServiceApplication];
    environment = [(DBWidgetViewController *)self environment];
    workspace = [environment workspace];
    [workspace requestStateChange:v6];
  }
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v11.receiver = self;
  v11.super_class = DBInCallWidgetViewController;
  [(DBWidgetViewController *)&v11 setHidden:?];
  if (hiddenCopy)
  {
    callTimeDisplayLink = [(DBInCallWidgetViewController *)self callTimeDisplayLink];
    [callTimeDisplayLink invalidate];

    [(DBInCallWidgetViewController *)self setCallTimeDisplayLink:0];
  }

  avatarButton = [(DBInCallWidgetViewController *)self avatarButton];
  [avatarButton setUserInteractionEnabled:!hiddenCopy];

  appIconButton = [(DBInCallWidgetViewController *)self appIconButton];
  [appIconButton setUserInteractionEnabled:!hiddenCopy];

  multiwayTitleButton = [(DBInCallWidgetViewController *)self multiwayTitleButton];
  [multiwayTitleButton setUserInteractionEnabled:!hiddenCopy];

  muteButton = [(DBInCallWidgetViewController *)self muteButton];
  [muteButton setUserInteractionEnabled:!hiddenCopy];

  endCallButton = [(DBInCallWidgetViewController *)self endCallButton];
  [endCallButton setUserInteractionEnabled:!hiddenCopy];
}

- (void)invalidate
{
  callTimeDisplayLink = [(DBInCallWidgetViewController *)self callTimeDisplayLink];
  [callTimeDisplayLink invalidate];

  [(DBInCallWidgetViewController *)self setCallTimeDisplayLink:0];

  [(DBInCallWidgetViewController *)self setInvalidated:1];
}

- (id)_displayNameForCall:(id)call
{
  callCopy = call;
  if ([callCopy status] == 5 || objc_msgSend(callCopy, "status") == 6)
  {
    displayName = 0;
  }

  else if ([callCopy isConversation])
  {
    mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
    v7 = [mEMORY[0x277D6EDF8] activeConversationForCall:callCopy];

    displayName = [v7 displayName];
  }

  else if ([callCopy isConferenced])
  {
    mEMORY[0x277D6EDF8]2 = [MEMORY[0x277D6EDF8] sharedInstance];
    conferenceParticipantCalls = [mEMORY[0x277D6EDF8]2 conferenceParticipantCalls];

    v10 = [conferenceParticipantCalls count];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v12 = v11;
    if (v10 >= 3)
    {
      v13 = @"PHONE_WIDGET_CALL_TITLE_%@_%@_AND_OTHERS";
    }

    else
    {
      v13 = @"PHONE_WIDGET_CALL_TITLE_%@_AND_%@";
    }

    v14 = [v11 localizedStringForKey:v13 value:&stru_285A57218 table:@"CarPlayApp"];

    if ([conferenceParticipantCalls count] < 2)
    {
      displayName = [callCopy displayName];
    }

    else
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [conferenceParticipantCalls objectAtIndexedSubscript:0];
      displayFirstName = [v16 displayFirstName];
      v18 = [conferenceParticipantCalls objectAtIndexedSubscript:1];
      displayFirstName2 = [v18 displayFirstName];
      displayName = [v15 stringWithFormat:v14, displayFirstName, displayFirstName2];
    }
  }

  else
  {
    displayName = [callCopy displayName];
  }

  return displayName;
}

- (void)_displayLinkFired:(id)fired
{
  currentCall = [(DBInCallWidgetViewController *)self currentCall];
  isOnHold = [currentCall isOnHold];

  if (isOnHold)
  {
    callDurationString = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v6 = [callDurationString localizedStringForKey:@"PHONE_WIDGET_HOLD" value:&stru_285A57218 table:@"CarPlayApp"];
  }

  else
  {
    currentCall2 = [(DBInCallWidgetViewController *)self currentCall];
    callDurationString = [currentCall2 callDurationString];

    if ([callDurationString length])
    {
      goto LABEL_6;
    }

    v6 = @" ";
  }

  callDurationString = v6;
LABEL_6:
  callTimeLabel = [(DBInCallWidgetViewController *)self callTimeLabel];
  [callTimeLabel setText:callDurationString];
}

@end