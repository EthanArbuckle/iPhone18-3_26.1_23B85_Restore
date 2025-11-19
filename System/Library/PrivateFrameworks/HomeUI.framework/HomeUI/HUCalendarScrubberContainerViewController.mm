@interface HUCalendarScrubberContainerViewController
- (HFCameraPlaybackEngine)playbackEngine;
- (HUCalendarScrubberContainerViewController)initWithPlaybackEngine:(id)a3 calendarScrubberDataSource:(id)a4;
- (void)_jumpToDate:(id)a3 animated:(BOOL)a4;
- (void)_updateNextPreviousButtonState;
- (void)handleNextButton:(id)a3;
- (void)handlePreviousButton:(id)a3;
- (void)playbackEngine:(id)a3 didUpdateEventCache:(id)a4;
- (void)playbackEngine:(id)a3 didUpdatePlaybackPosition:(id)a4;
- (void)scrubberViewController:(id)a3 didSelectItemAtIndex:(id)a4;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation HUCalendarScrubberContainerViewController

- (HUCalendarScrubberContainerViewController)initWithPlaybackEngine:(id)a3 calendarScrubberDataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = HUCalendarScrubberContainerViewController;
  v8 = [(HUCalendarScrubberContainerViewController *)&v33 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_isEditing = 0;
    objc_storeWeak(&v8->_playbackEngine, v6);
    v10 = objc_alloc_init(MEMORY[0x277D144C8]);
    [v10 setPeriodicTimeUpdateInterval:&unk_2824933C0];
    WeakRetained = objc_loadWeakRetained(&v9->_playbackEngine);
    [WeakRetained addObserver:v9 withOptions:v10];

    v12 = [[HUCalendarScrubberViewController alloc] initWithDataSource:v7];
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
  v24 = [(HUCalendarScrubberContainerViewController *)self view];
  v3 = [(HUCalendarScrubberContainerViewController *)self backgroundView];
  v4 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  v23 = [v4 view];

  v5 = [(HUCalendarScrubberContainerViewController *)self prevWeekButton];
  v6 = [(HUCalendarScrubberContainerViewController *)self nextWeekButton];
  v7 = [(HUCalendarScrubberContainerViewController *)self hairlineViewLeft];
  v8 = [(HUCalendarScrubberContainerViewController *)self hairlineViewRight];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [MEMORY[0x277D755B8] kitImageNamed:@"UINavigationBarBackIndicatorDefault"];
  v10 = [v9 imageWithRenderingMode:2];

  [v5 setImage:v10 forState:0];
  v21 = v10;
  [v6 setImage:v10 forState:0];
  if (v6)
  {
    [v6 transform];
  }

  else
  {
    memset(&v27, 0, sizeof(v27));
  }

  CGAffineTransformRotate(&v28, &v27, 3.14159265);
  v27 = v28;
  [v6 setTransform:&v27];
  v11 = [(HUCalendarScrubberContainerViewController *)self traitCollection];
  v12 = [v11 layoutDirection];

  if (v12)
  {
    if (v5)
    {
      [v5 transform];
    }

    else
    {
      memset(&v27, 0, sizeof(v27));
    }

    CGAffineTransformRotate(&v26, &v27, 3.14159265);
    v27 = v26;
    [v5 setTransform:&v27];
    if (v6)
    {
      [v6 transform];
    }

    else
    {
      memset(&v27, 0, sizeof(v27));
    }

    CGAffineTransformRotate(&v25, &v27, 3.14159265);
    v27 = v25;
    [v6 setTransform:&v27];
    v13 = &selRef_handlePreviousButton_;
    v14 = &selRef_handleNextButton_;
  }

  else
  {
    v13 = &selRef_handleNextButton_;
    v14 = &selRef_handlePreviousButton_;
  }

  [v5 addTarget:self action:*v14 forControlEvents:64];
  [v6 addTarget:self action:*v13 forControlEvents:64];
  [v24 naui_addAutoLayoutSubview:v3];
  [v3 addSubview:v5 applyingMaterialStyle:0 tintEffectStyle:0];
  [v3 addSubview:v6 applyingMaterialStyle:0 tintEffectStyle:0];
  v15 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  [(HUCalendarScrubberContainerViewController *)self addChildViewController:v15];

  [v3 naui_addAutoLayoutSubview:v23];
  v16 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  [v16 didMoveToParentViewController:self];

  [v3 addSubview:v8 applyingMaterialStyle:1 tintEffectStyle:1];
  [v3 addSubview:v22 applyingMaterialStyle:1 tintEffectStyle:1];
  [v24 setNeedsUpdateConstraints];
  [(HUCalendarScrubberContainerViewController *)self _updateNextPreviousButtonState];
  v17 = [(HUCalendarScrubberContainerViewController *)self playbackEngine];
  v18 = [v17 playbackPosition];
  v19 = [v18 contentType] == 0;
  v20 = [(HUCalendarScrubberContainerViewController *)self view];
  [v20 setHidden:v19];
}

- (void)updateViewConstraints
{
  v2 = self;
  v110[30] = *MEMORY[0x277D85DE8];
  v3 = [(HUCalendarScrubberContainerViewController *)self constraints];

  if (!v3)
  {
    v4 = [(HUCalendarScrubberContainerViewController *)v2 backgroundView];
    [(HUCalendarScrubberContainerViewController *)v2 calendarScrubber];
    v5 = v108 = v2;
    v6 = [v5 view];

    v7 = [(HUCalendarScrubberContainerViewController *)v108 prevWeekButton];
    v8 = [(HUCalendarScrubberContainerViewController *)v108 nextWeekButton];
    v9 = [(HUCalendarScrubberContainerViewController *)v108 hairlineViewLeft];
    v10 = [(HUCalendarScrubberContainerViewController *)v108 hairlineViewRight];
    v106 = [v4 centerXAnchor];
    v107 = [(HUCalendarScrubberContainerViewController *)v108 view];
    v105 = [v107 centerXAnchor];
    v104 = [v106 constraintEqualToAnchor:v105];
    v110[0] = v104;
    v102 = [v4 centerYAnchor];
    v103 = [(HUCalendarScrubberContainerViewController *)v108 view];
    v101 = [v103 centerYAnchor];
    v100 = [v102 constraintEqualToAnchor:v101];
    v110[1] = v100;
    v98 = [v4 widthAnchor];
    v99 = [(HUCalendarScrubberContainerViewController *)v108 view];
    v97 = [v99 widthAnchor];
    v96 = [v98 constraintEqualToAnchor:v97];
    v110[2] = v96;
    v95 = [v4 heightAnchor];
    v94 = [v95 constraintEqualToConstant:47.0];
    v110[3] = v94;
    v93 = [v6 leadingAnchor];
    v92 = [v9 trailingAnchor];
    v91 = [v93 constraintEqualToAnchor:v92];
    v110[4] = v91;
    v90 = [v6 trailingAnchor];
    v89 = [v10 leadingAnchor];
    v88 = [v90 constraintEqualToAnchor:v89];
    v110[5] = v88;
    v87 = [v6 topAnchor];
    v86 = [v4 topAnchor];
    v85 = [v87 constraintEqualToAnchor:v86];
    v110[6] = v85;
    v84 = [v6 bottomAnchor];
    v82 = [v4 bottomAnchor];
    v81 = [v84 constraintEqualToAnchor:v82];
    v110[7] = v81;
    v80 = [v6 centerXAnchor];
    v79 = [v4 centerXAnchor];
    v78 = [v80 constraintEqualToAnchor:v79];
    v110[8] = v78;
    v77 = [v6 widthAnchor];
    v76 = [v77 constraintLessThanOrEqualToConstant:400.0];
    v110[9] = v76;
    v73 = [v7 topAnchor];
    v72 = [v4 topAnchor];
    v71 = [v73 constraintEqualToAnchor:v72];
    v110[10] = v71;
    v70 = [v7 bottomAnchor];
    v69 = [v4 bottomAnchor];
    v68 = [v70 constraintEqualToAnchor:v69];
    v110[11] = v68;
    v67 = [v7 leadingAnchor];
    v66 = [v4 leadingAnchor];
    v65 = [v67 constraintEqualToAnchor:v66];
    v110[12] = v65;
    v64 = [v7 trailingAnchor];
    v63 = [v9 leadingAnchor];
    v61 = [v64 constraintEqualToAnchor:v63];
    v110[13] = v61;
    v83 = v7;
    v60 = [v7 widthAnchor];
    v59 = [v60 constraintEqualToConstant:60.0];
    v110[14] = v59;
    v57 = [v9 leadingAnchor];
    v56 = [v7 trailingAnchor];
    v54 = [v57 constraintEqualToAnchor:v56];
    v110[15] = v54;
    v53 = [v9 trailingAnchor];
    v74 = v6;
    v52 = [v6 leadingAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v110[16] = v51;
    v50 = [v9 widthAnchor];
    v49 = [v50 constraintEqualToConstant:1.0];
    v110[17] = v49;
    v75 = v9;
    v48 = [v9 topAnchor];
    v47 = [v4 topAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v110[18] = v46;
    v45 = [v9 bottomAnchor];
    v44 = [v4 bottomAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v110[19] = v43;
    v42 = [v10 leadingAnchor];
    v41 = [v6 trailingAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v110[20] = v40;
    v39 = [v10 trailingAnchor];
    v11 = v8;
    v55 = v8;
    v38 = [v8 leadingAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v110[21] = v37;
    v36 = [v10 widthAnchor];
    v35 = [v36 constraintEqualToConstant:1.0];
    v110[22] = v35;
    v34 = [v10 topAnchor];
    v33 = [v4 topAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v110[23] = v32;
    v62 = v10;
    v31 = [v10 bottomAnchor];
    v58 = v4;
    v30 = [v4 bottomAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v110[24] = v29;
    v28 = [v8 leadingAnchor];
    v27 = [v10 trailingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v110[25] = v26;
    v25 = [v8 trailingAnchor];
    v24 = [v4 trailingAnchor];
    v12 = [v25 constraintEqualToAnchor:v24];
    v110[26] = v12;
    v13 = [v8 topAnchor];
    v14 = [v4 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v110[27] = v15;
    v16 = [v11 bottomAnchor];
    v17 = [v4 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v110[28] = v18;
    v19 = [v11 widthAnchor];
    v20 = [v19 constraintEqualToConstant:60.0];
    v110[29] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:30];
    [(HUCalendarScrubberContainerViewController *)v108 setConstraints:v21];

    v2 = v108;
    v22 = MEMORY[0x277CCAAD0];
    v23 = [(HUCalendarScrubberContainerViewController *)v108 constraints];
    [v22 activateConstraints:v23];
  }

  v109.receiver = v2;
  v109.super_class = HUCalendarScrubberContainerViewController;
  [(HUCalendarScrubberContainerViewController *)&v109 updateViewConstraints];
}

- (void)handleNextButton:(id)a3
{
  v5 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  v4 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  [v5 jumpToSection:objc_msgSend(v4 animated:"nextSection") completion:{1, 0}];

  [(HUCalendarScrubberContainerViewController *)self _updateNextPreviousButtonState];
}

- (void)handlePreviousButton:(id)a3
{
  v5 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  v4 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  [v5 jumpToSection:objc_msgSend(v4 animated:"previousSection") completion:{1, 0}];

  [(HUCalendarScrubberContainerViewController *)self _updateNextPreviousButtonState];
}

- (void)_jumpToDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  v8 = [v7 dataSource];
  v9 = [v8 indexPathForDate:v6];

  objc_initWeak(&location, self);
  v10 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  v11 = [v9 section];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__HUCalendarScrubberContainerViewController__jumpToDate_animated___block_invoke;
  v14[3] = &unk_277DB98C8;
  objc_copyWeak(&v17, &location);
  v12 = v7;
  v15 = v12;
  v13 = v9;
  v16 = v13;
  [v10 jumpToSection:v11 animated:v4 completion:v14];

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
  v12 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  v3 = [(HUCalendarScrubberContainerViewController *)self traitCollection];
  v4 = [v3 layoutDirection];

  if (v4)
  {
    v5 = [v12 nextSection] != 0x7FFFFFFFFFFFFFFFLL;
    v6 = [(HUCalendarScrubberContainerViewController *)self prevWeekButton];
    [v6 setEnabled:v5];

    v7 = [v12 previousSection];
  }

  else
  {
    v8 = [v12 previousSection] != 0x7FFFFFFFFFFFFFFFLL;
    v9 = [(HUCalendarScrubberContainerViewController *)self prevWeekButton];
    [v9 setEnabled:v8];

    v7 = [v12 nextSection];
  }

  v10 = v7 != 0x7FFFFFFFFFFFFFFFLL;
  v11 = [(HUCalendarScrubberContainerViewController *)self nextWeekButton];
  [v11 setEnabled:v10];
}

- (void)scrubberViewController:(id)a3 didSelectItemAtIndex:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 dataSource];
  v8 = [v7 dateAtIndexPath:v6];

  v9 = [(HUCalendarScrubberContainerViewController *)self playbackEngine];
  v10 = [v9 firstOfTheDayClipForDate:v8];

  v11 = HFLogForCategory();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v10 uniqueIdentifier];
      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Calendar moving to first clip:%@ for date:%@", &v18, 0x16u);
    }

    v14 = [(HUCalendarScrubberContainerViewController *)self playbackEngine];
    [v14 setTimelineState:2];

    [v10 dateOfOccurrence];
    v8 = v12 = v8;
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v18 = 138412290;
    v19 = v8;
    _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "Calendar unable to find first clip for date:%@", &v18, 0xCu);
  }

  v15 = [(HUCalendarScrubberContainerViewController *)self isEditing];
  v16 = [(HUCalendarScrubberContainerViewController *)self playbackEngine];
  v17 = v16;
  if (v15)
  {
    [v16 updatePlaybackPositionToDate:v8 usingClip:v10];
  }

  else
  {
    [v16 startPlaybackAtDate:v8 withClip:v10];
  }
}

- (void)playbackEngine:(id)a3 didUpdatePlaybackPosition:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 contentType] == 0;
  v7 = [(HUCalendarScrubberContainerViewController *)self view];
  [v7 setHidden:v6];

  v8 = [(HUCalendarScrubberContainerViewController *)self view];
  LOBYTE(v7) = [v8 isHidden];

  if ((v7 & 1) == 0)
  {
    v9 = [v5 clipPlaybackDate];
    v10 = [(HUCalendarScrubberContainerViewController *)self lastSelectedDate];
    if (v10 && (v11 = v10, [MEMORY[0x277CBEA80] currentCalendar], v12 = objc_claimAutoreleasedReturnValue(), -[HUCalendarScrubberContainerViewController lastSelectedDate](self, "lastSelectedDate"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isDate:inSameDayAsDate:", v9, v13), v13, v12, v11, (v14 & 1) != 0))
    {
      v15 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
      v16 = [v15 collectionView];
      v17 = [v16 indexPathsForSelectedItems];
      v18 = [v17 count];

      if (v18)
      {
LABEL_12:

        goto LABEL_13;
      }

      v19 = HFLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v9;
        _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "Update calendar to selected date:%@ because there was no selected index path.", &v22, 0xCu);
      }

      v20 = 0;
    }

    else
    {
      v19 = HFLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(HUCalendarScrubberContainerViewController *)self lastSelectedDate];
        v22 = 138412546;
        v23 = v9;
        v24 = 2112;
        v25 = v21;
        _os_log_impl(&dword_20CEB6000, v19, OS_LOG_TYPE_DEFAULT, "Update calendar to selected date:%@ from date:%@.", &v22, 0x16u);
      }

      v20 = 1;
    }

    [(HUCalendarScrubberContainerViewController *)self setLastSelectedDate:v9];
    [(HUCalendarScrubberContainerViewController *)self _jumpToDate:v9 animated:v20];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)playbackEngine:(id)a3 didUpdateEventCache:(id)a4
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v8 = [(HUCalendarScrubberContainerViewController *)self calendarScrubber];
  v6 = [v8 dataSource];
  v7 = [v5 daysWithClips];

  [v6 addDatesWithClips:v7];
}

- (HFCameraPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

@end