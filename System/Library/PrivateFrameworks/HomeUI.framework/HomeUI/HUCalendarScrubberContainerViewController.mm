@interface HUCalendarScrubberContainerViewController
- (HFCameraPlaybackEngine)playbackEngine;
- (HUCalendarScrubberContainerViewController)initWithPlaybackEngine:(id)engine calendarScrubberDataSource:(id)source;
- (void)_jumpToDate:(id)date animated:(BOOL)animated;
- (void)_updateNextPreviousButtonState;
- (void)handleNextButton:(id)button;
- (void)handlePreviousButton:(id)button;
- (void)playbackEngine:(id)engine didUpdateEventCache:(id)cache;
- (void)playbackEngine:(id)engine didUpdatePlaybackPosition:(id)position;
- (void)scrubberViewController:(id)controller didSelectItemAtIndex:(id)index;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation HUCalendarScrubberContainerViewController

- (HUCalendarScrubberContainerViewController)initWithPlaybackEngine:(id)engine calendarScrubberDataSource:(id)source
{
  engineCopy = engine;
  sourceCopy = source;
  v33.receiver = self;
  v33.super_class = HUCalendarScrubberContainerViewController;
  v8 = [(HUCalendarScrubberContainerViewController *)&v33 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_isEditing = 0;
    objc_storeWeak(&v8->_playbackEngine, engineCopy);
    v10 = objc_alloc_init(MEMORY[0x277D144C8]);
    [v10 setPeriodicTimeUpdateInterval:&unk_2824933C0];
    WeakRetained = objc_loadWeakRetained(&v9->_playbackEngine);
    [WeakRetained addObserver:v9 withOptions:v10];

    v12 = [[HUCalendarScrubberViewController alloc] initWithDataSource:sourceCopy];
    calendarScrubber = v9->_calendarScrubber;
    v9->_calendarScrubber = v12;

    [(HUCalendarScrubberViewController *)v9->_calendarScrubber setScrubberDelegate:v9];
    v14 = objc_alloc(MEMORY[0x277D75220]);
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    v19 = [v14 initWithFrame:{*MEMORY[0x277CBF3A0], v16, v17, v18}];
    prevWeekButton = v9->_prevWeekButton;
    v9->_prevWeekButton = v19;

    v21 = [objc_alloc(MEMORY[0x277D75220]) initWithFrame:{v15, v16, v17, v18}];
    nextWeekButton = v9->_nextWeekButton;
    v9->_nextWeekButton = v21;

    v23 = [objc_alloc(MEMORY[0x277CB8590]) initWithFrame:{v15, v16, v17, v18}];
    backgroundView = v9->_backgroundView;
    v9->_backgroundView = v23;

    [(AVBackgroundView *)v9->_backgroundView setClipsToBounds:1];
    [(AVBackgroundView *)v9->_backgroundView _setContinuousCornerRadius:16.0];
    v25 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v15, v16, v17, v18}];
    hairlineViewLeft = v9->_hairlineViewLeft;
    v9->_hairlineViewLeft = v25;

    v27 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:1.0];
    [(UIView *)v9->_hairlineViewLeft setBackgroundColor:v27];

    v28 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v15, v16, v17, v18}];
    hairlineViewRight = v9->_hairlineViewRight;
    v9->_hairlineViewRight = v28;

    v30 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:1.0];
    [(UIView *)v9->_hairlineViewRight setBackgroundColor:v30];

    lastSelectedDate = v9->_lastSelectedDate;
    v9->_lastSelectedDate = 0;
  }

  return v9;
}

- (void)viewDidLoad
{
  v29.receiver = self;
  v29.super_class = HUCalendarScrubberContainerViewController;
  [(HUCalendarScrubberContainerViewController *)&v29 viewDidLoad];
  view = [(HUCalendarScrubberContainerViewController *)self view];
  backgroundView = [(HUCalendarScrubberContainerViewController *)self backgroundView];
  calendarScrubber = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  view2 = [calendarScrubber view];

  prevWeekButton = [(HUCalendarScrubberContainerViewController *)self prevWeekButton];
  nextWeekButton = [(HUCalendarScrubberContainerViewController *)self nextWeekButton];
  hairlineViewLeft = [(HUCalendarScrubberContainerViewController *)self hairlineViewLeft];
  hairlineViewRight = [(HUCalendarScrubberContainerViewController *)self hairlineViewRight];
  [prevWeekButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [nextWeekButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [hairlineViewRight setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = hairlineViewLeft;
  [hairlineViewLeft setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [MEMORY[0x277D755B8] kitImageNamed:@"UINavigationBarBackIndicatorDefault"];
  v10 = [v9 imageWithRenderingMode:2];

  [prevWeekButton setImage:v10 forState:0];
  v21 = v10;
  [nextWeekButton setImage:v10 forState:0];
  if (nextWeekButton)
  {
    [nextWeekButton transform];
  }

  else
  {
    memset(&v27, 0, sizeof(v27));
  }

  CGAffineTransformRotate(&v28, &v27, 3.14159265);
  v27 = v28;
  [nextWeekButton setTransform:&v27];
  traitCollection = [(HUCalendarScrubberContainerViewController *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (layoutDirection)
  {
    if (prevWeekButton)
    {
      [prevWeekButton transform];
    }

    else
    {
      memset(&v27, 0, sizeof(v27));
    }

    CGAffineTransformRotate(&v26, &v27, 3.14159265);
    v27 = v26;
    [prevWeekButton setTransform:&v27];
    if (nextWeekButton)
    {
      [nextWeekButton transform];
    }

    else
    {
      memset(&v27, 0, sizeof(v27));
    }

    CGAffineTransformRotate(&v25, &v27, 3.14159265);
    v27 = v25;
    [nextWeekButton setTransform:&v27];
    v13 = &selRef_handlePreviousButton_;
    v14 = &selRef_handleNextButton_;
  }

  else
  {
    v13 = &selRef_handleNextButton_;
    v14 = &selRef_handlePreviousButton_;
  }

  [prevWeekButton addTarget:self action:*v14 forControlEvents:64];
  [nextWeekButton addTarget:self action:*v13 forControlEvents:64];
  [view naui_addAutoLayoutSubview:backgroundView];
  [backgroundView addSubview:prevWeekButton applyingMaterialStyle:0 tintEffectStyle:0];
  [backgroundView addSubview:nextWeekButton applyingMaterialStyle:0 tintEffectStyle:0];
  calendarScrubber2 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  [(HUCalendarScrubberContainerViewController *)self addChildViewController:calendarScrubber2];

  [backgroundView naui_addAutoLayoutSubview:view2];
  calendarScrubber3 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  [calendarScrubber3 didMoveToParentViewController:self];

  [backgroundView addSubview:hairlineViewRight applyingMaterialStyle:1 tintEffectStyle:1];
  [backgroundView addSubview:v22 applyingMaterialStyle:1 tintEffectStyle:1];
  [view setNeedsUpdateConstraints];
  [(HUCalendarScrubberContainerViewController *)self _updateNextPreviousButtonState];
  playbackEngine = [(HUCalendarScrubberContainerViewController *)self playbackEngine];
  playbackPosition = [playbackEngine playbackPosition];
  v19 = [playbackPosition contentType] == 0;
  view3 = [(HUCalendarScrubberContainerViewController *)self view];
  [view3 setHidden:v19];
}

- (void)updateViewConstraints
{
  selfCopy = self;
  v110[30] = *MEMORY[0x277D85DE8];
  constraints = [(HUCalendarScrubberContainerViewController *)self constraints];

  if (!constraints)
  {
    backgroundView = [(HUCalendarScrubberContainerViewController *)selfCopy backgroundView];
    [(HUCalendarScrubberContainerViewController *)selfCopy calendarScrubber];
    v5 = v108 = selfCopy;
    view = [v5 view];

    prevWeekButton = [(HUCalendarScrubberContainerViewController *)v108 prevWeekButton];
    nextWeekButton = [(HUCalendarScrubberContainerViewController *)v108 nextWeekButton];
    hairlineViewLeft = [(HUCalendarScrubberContainerViewController *)v108 hairlineViewLeft];
    hairlineViewRight = [(HUCalendarScrubberContainerViewController *)v108 hairlineViewRight];
    centerXAnchor = [backgroundView centerXAnchor];
    view2 = [(HUCalendarScrubberContainerViewController *)v108 view];
    centerXAnchor2 = [view2 centerXAnchor];
    v104 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v110[0] = v104;
    centerYAnchor = [backgroundView centerYAnchor];
    view3 = [(HUCalendarScrubberContainerViewController *)v108 view];
    centerYAnchor2 = [view3 centerYAnchor];
    v100 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v110[1] = v100;
    widthAnchor = [backgroundView widthAnchor];
    view4 = [(HUCalendarScrubberContainerViewController *)v108 view];
    widthAnchor2 = [view4 widthAnchor];
    v96 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v110[2] = v96;
    heightAnchor = [backgroundView heightAnchor];
    v94 = [heightAnchor constraintEqualToConstant:47.0];
    v110[3] = v94;
    leadingAnchor = [view leadingAnchor];
    trailingAnchor = [hairlineViewLeft trailingAnchor];
    v91 = [leadingAnchor constraintEqualToAnchor:trailingAnchor];
    v110[4] = v91;
    trailingAnchor2 = [view trailingAnchor];
    leadingAnchor2 = [hairlineViewRight leadingAnchor];
    v88 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor2];
    v110[5] = v88;
    topAnchor = [view topAnchor];
    topAnchor2 = [backgroundView topAnchor];
    v85 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v110[6] = v85;
    bottomAnchor = [view bottomAnchor];
    bottomAnchor2 = [backgroundView bottomAnchor];
    v81 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v110[7] = v81;
    centerXAnchor3 = [view centerXAnchor];
    centerXAnchor4 = [backgroundView centerXAnchor];
    v78 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v110[8] = v78;
    widthAnchor3 = [view widthAnchor];
    v76 = [widthAnchor3 constraintLessThanOrEqualToConstant:400.0];
    v110[9] = v76;
    topAnchor3 = [prevWeekButton topAnchor];
    topAnchor4 = [backgroundView topAnchor];
    v71 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v110[10] = v71;
    bottomAnchor3 = [prevWeekButton bottomAnchor];
    bottomAnchor4 = [backgroundView bottomAnchor];
    v68 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v110[11] = v68;
    leadingAnchor3 = [prevWeekButton leadingAnchor];
    leadingAnchor4 = [backgroundView leadingAnchor];
    v65 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v110[12] = v65;
    trailingAnchor3 = [prevWeekButton trailingAnchor];
    leadingAnchor5 = [hairlineViewLeft leadingAnchor];
    v61 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5];
    v110[13] = v61;
    v83 = prevWeekButton;
    widthAnchor4 = [prevWeekButton widthAnchor];
    v59 = [widthAnchor4 constraintEqualToConstant:60.0];
    v110[14] = v59;
    leadingAnchor6 = [hairlineViewLeft leadingAnchor];
    trailingAnchor4 = [prevWeekButton trailingAnchor];
    v54 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4];
    v110[15] = v54;
    trailingAnchor5 = [hairlineViewLeft trailingAnchor];
    v74 = view;
    leadingAnchor7 = [view leadingAnchor];
    v51 = [trailingAnchor5 constraintEqualToAnchor:leadingAnchor7];
    v110[16] = v51;
    widthAnchor5 = [hairlineViewLeft widthAnchor];
    v49 = [widthAnchor5 constraintEqualToConstant:1.0];
    v110[17] = v49;
    v75 = hairlineViewLeft;
    topAnchor5 = [hairlineViewLeft topAnchor];
    topAnchor6 = [backgroundView topAnchor];
    v46 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v110[18] = v46;
    bottomAnchor5 = [hairlineViewLeft bottomAnchor];
    bottomAnchor6 = [backgroundView bottomAnchor];
    v43 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v110[19] = v43;
    leadingAnchor8 = [hairlineViewRight leadingAnchor];
    trailingAnchor6 = [view trailingAnchor];
    v40 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor6];
    v110[20] = v40;
    trailingAnchor7 = [hairlineViewRight trailingAnchor];
    v11 = nextWeekButton;
    v55 = nextWeekButton;
    leadingAnchor9 = [nextWeekButton leadingAnchor];
    v37 = [trailingAnchor7 constraintEqualToAnchor:leadingAnchor9];
    v110[21] = v37;
    widthAnchor6 = [hairlineViewRight widthAnchor];
    v35 = [widthAnchor6 constraintEqualToConstant:1.0];
    v110[22] = v35;
    topAnchor7 = [hairlineViewRight topAnchor];
    topAnchor8 = [backgroundView topAnchor];
    v32 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v110[23] = v32;
    v62 = hairlineViewRight;
    bottomAnchor7 = [hairlineViewRight bottomAnchor];
    v58 = backgroundView;
    bottomAnchor8 = [backgroundView bottomAnchor];
    v29 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
    v110[24] = v29;
    leadingAnchor10 = [nextWeekButton leadingAnchor];
    trailingAnchor8 = [hairlineViewRight trailingAnchor];
    v26 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor8];
    v110[25] = v26;
    trailingAnchor9 = [nextWeekButton trailingAnchor];
    trailingAnchor10 = [backgroundView trailingAnchor];
    v12 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v110[26] = v12;
    topAnchor9 = [nextWeekButton topAnchor];
    topAnchor10 = [backgroundView topAnchor];
    v15 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    v110[27] = v15;
    bottomAnchor9 = [v11 bottomAnchor];
    bottomAnchor10 = [backgroundView bottomAnchor];
    v18 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
    v110[28] = v18;
    widthAnchor7 = [v11 widthAnchor];
    v20 = [widthAnchor7 constraintEqualToConstant:60.0];
    v110[29] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:30];
    [(HUCalendarScrubberContainerViewController *)v108 setConstraints:v21];

    selfCopy = v108;
    v22 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUCalendarScrubberContainerViewController *)v108 constraints];
    [v22 activateConstraints:constraints2];
  }

  v109.receiver = selfCopy;
  v109.super_class = HUCalendarScrubberContainerViewController;
  [(HUCalendarScrubberContainerViewController *)&v109 updateViewConstraints];
}

- (void)handleNextButton:(id)button
{
  calendarScrubber = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  calendarScrubber2 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  [calendarScrubber jumpToSection:objc_msgSend(calendarScrubber2 animated:"nextSection") completion:{1, 0}];

  [(HUCalendarScrubberContainerViewController *)self _updateNextPreviousButtonState];
}

- (void)handlePreviousButton:(id)button
{
  calendarScrubber = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  calendarScrubber2 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  [calendarScrubber jumpToSection:objc_msgSend(calendarScrubber2 animated:"previousSection") completion:{1, 0}];

  [(HUCalendarScrubberContainerViewController *)self _updateNextPreviousButtonState];
}

- (void)_jumpToDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  calendarScrubber = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  dataSource = [calendarScrubber dataSource];
  v9 = [dataSource indexPathForDate:dateCopy];

  objc_initWeak(&location, self);
  calendarScrubber2 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  section = [v9 section];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HUCalendarScrubberContainerViewController__jumpToDate_animated___block_invoke;
  v14[3] = &unk_277DB98C8;
  objc_copyWeak(&v17, &location);
  v12 = calendarScrubber;
  v15 = v12;
  v13 = v9;
  v16 = v13;
  [calendarScrubber2 jumpToSection:section animated:animatedCopy completion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __66__HUCalendarScrubberContainerViewController__jumpToDate_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) collectionView];
  [v2 selectItemAtIndexPath:*(a1 + 40) animated:0 scrollPosition:0];

  [WeakRetained _updateNextPreviousButtonState];
}

- (void)_updateNextPreviousButtonState
{
  calendarScrubber = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  traitCollection = [(HUCalendarScrubberContainerViewController *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (layoutDirection)
  {
    v5 = [calendarScrubber nextSection] != 0x7FFFFFFFFFFFFFFFLL;
    prevWeekButton = [(HUCalendarScrubberContainerViewController *)self prevWeekButton];
    [prevWeekButton setEnabled:v5];

    previousSection = [calendarScrubber previousSection];
  }

  else
  {
    v8 = [calendarScrubber previousSection] != 0x7FFFFFFFFFFFFFFFLL;
    prevWeekButton2 = [(HUCalendarScrubberContainerViewController *)self prevWeekButton];
    [prevWeekButton2 setEnabled:v8];

    previousSection = [calendarScrubber nextSection];
  }

  v10 = previousSection != 0x7FFFFFFFFFFFFFFFLL;
  nextWeekButton = [(HUCalendarScrubberContainerViewController *)self nextWeekButton];
  [nextWeekButton setEnabled:v10];
}

- (void)scrubberViewController:(id)controller didSelectItemAtIndex:(id)index
{
  v22 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  dataSource = [controller dataSource];
  v8 = [dataSource dateAtIndexPath:indexCopy];

  playbackEngine = [(HUCalendarScrubberContainerViewController *)self playbackEngine];
  v10 = [playbackEngine firstOfTheDayClipForDate:v8];

  v11 = HFLogForCategory();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [v10 uniqueIdentifier];
      v18 = 138412546;
      v19 = uniqueIdentifier;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Calendar moving to first clip:%@ for date:%@", &v18, 0x16u);
    }

    playbackEngine2 = [(HUCalendarScrubberContainerViewController *)self playbackEngine];
    [playbackEngine2 setTimelineState:2];

    [v10 dateOfOccurrence];
    v8 = v12 = v8;
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v18 = 138412290;
    v19 = v8;
    _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "Calendar unable to find first clip for date:%@", &v18, 0xCu);
  }

  isEditing = [(HUCalendarScrubberContainerViewController *)self isEditing];
  playbackEngine3 = [(HUCalendarScrubberContainerViewController *)self playbackEngine];
  v17 = playbackEngine3;
  if (isEditing)
  {
    [playbackEngine3 updatePlaybackPositionToDate:v8 usingClip:v10];
  }

  else
  {
    [playbackEngine3 startPlaybackAtDate:v8 withClip:v10];
  }
}

- (void)playbackEngine:(id)engine didUpdatePlaybackPosition:(id)position
{
  v26 = *MEMORY[0x277D85DE8];
  positionCopy = position;
  v6 = [positionCopy contentType] == 0;
  view = [(HUCalendarScrubberContainerViewController *)self view];
  [view setHidden:v6];

  view2 = [(HUCalendarScrubberContainerViewController *)self view];
  LOBYTE(view) = [view2 isHidden];

  if ((view & 1) == 0)
  {
    clipPlaybackDate = [positionCopy clipPlaybackDate];
    lastSelectedDate = [(HUCalendarScrubberContainerViewController *)self lastSelectedDate];
    if (lastSelectedDate && (v11 = lastSelectedDate, [MEMORY[0x277CBEA80] currentCalendar], v12 = objc_claimAutoreleasedReturnValue(), -[HUCalendarScrubberContainerViewController lastSelectedDate](self, "lastSelectedDate"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isDate:inSameDayAsDate:", clipPlaybackDate, v13), v13, v12, v11, (v14 & 1) != 0))
    {
      calendarScrubber = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
      collectionView = [calendarScrubber collectionView];
      indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
      v18 = [indexPathsForSelectedItems count];

      if (v18)
      {
LABEL_12:

        goto LABEL_13;
      }

      v19 = HFLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = clipPlaybackDate;
        _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "Update calendar to selected date:%@ because there was no selected index path.", &v22, 0xCu);
      }

      v20 = 0;
    }

    else
    {
      v19 = HFLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        lastSelectedDate2 = [(HUCalendarScrubberContainerViewController *)self lastSelectedDate];
        v22 = 138412546;
        v23 = clipPlaybackDate;
        v24 = 2112;
        v25 = lastSelectedDate2;
        _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "Update calendar to selected date:%@ from date:%@.", &v22, 0x16u);
      }

      v20 = 1;
    }

    [(HUCalendarScrubberContainerViewController *)self setLastSelectedDate:clipPlaybackDate];
    [(HUCalendarScrubberContainerViewController *)self _jumpToDate:clipPlaybackDate animated:v20];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)playbackEngine:(id)engine didUpdateEventCache:(id)cache
{
  engineCopy = engine;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  calendarScrubber = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  dataSource = [calendarScrubber dataSource];
  daysWithClips = [engineCopy daysWithClips];

  [dataSource addDatesWithClips:daysWithClips];
}

- (HFCameraPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

@end