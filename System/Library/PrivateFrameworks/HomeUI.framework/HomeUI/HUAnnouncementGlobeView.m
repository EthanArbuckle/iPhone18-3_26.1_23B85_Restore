@interface HUAnnouncementGlobeView
- (BOOL)_isNextAnnouncementTheOldest;
- (BOOL)hasActivePlaybackSession;
- (CGSize)playbackBoundingBoxSize;
- (HUAnnouncementGlobeView)initWithAnnouncementPayload:(id)a3 delegate:(id)a4;
- (HUAnnouncementsGlobeViewDelegate)globeViewDelegate;
- (double)_radiusOfPlaybackViewInSlotPosition:(unint64_t)a3;
- (double)_xCoordinateForPlaybackViewInSlotPosition:(unint64_t)a3;
- (double)_yCoordinateForPlaybackViewInSlotPosition:(unint64_t)a3;
- (id)_blurEffectForCurrentInterfaceStyle;
- (id)_nextAnnouncementPlaybackView;
- (id)_onQueue_fetchNewAnnouncementInfo:(id)a3 oldestVisitedAnnouncementID:(id)a4;
- (unint64_t)_indexOfLatestCachedAnnouncementFromIDs:(id)a3;
- (unint64_t)_numberOfSlotsAvailableForNewAnnouncements:(id)a3;
- (unint64_t)_numberOfUnplayedAnnouncements;
- (void)_addOrInsertAnnouncementsFromIDs:(id)a3 withInfo:(id)a4 withinRange:(_NSRange)a5 inFreeSlots:(unint64_t)a6;
- (void)_addVisitedAnnouncementsToDisplayQueueIfNeeded;
- (void)_appendAnnouncements:(id)a3 withInfo:(id)a4;
- (void)_configureVisualStyleForBackgroundView;
- (void)_layoutPlaybackViewCenteredIfNeeded:(id)a3;
- (void)_layoutPlaybackViewsWithAnimationDuration:(double)a3 completion:(id)a4;
- (void)_playAnnouncementWithInfo:(id)a3;
- (void)_playNextAnnouncement;
- (void)_playRecentlyAddedAnnouncements;
- (void)_seedVisitedAnouncements:(id)a3 withInfo:(id)a4;
- (void)_setupConstrainstsForPlaybackViews;
- (void)_setupConstraintsForPlaybackViewIfNeeded:(id)a3 slotPosition:(unint64_t)a4;
- (void)_setupIncomingAnnouncementSession;
- (void)_setupSubviewsForAnnouncementInfo:(id)a3;
- (void)_showVisitedAnnouncementsView;
- (void)_submitAnalyticsForAnnouncePlaybackCompletedSuccessfully:(BOOL)a3 forAnnouncementID:(id)a4 interruptedByUser:(BOOL)a5;
- (void)_togglePlayback:(id)a3;
- (void)_updateLayoutAndAppearanceForPlaybackView:(id)a3 atSlotPosition:(unint64_t)a4;
- (void)audioPlayer:(id)a3 didPausePlaybackWithReason:(id)a4;
- (void)audioPlayer:(id)a3 didUpdateAveragePower:(double)a4;
- (void)audioPlayerDidFinishPlayback:(id)a3 withError:(id)a4;
- (void)layoutSubviews;
- (void)skipToNextAnnouncement;
- (void)stopPlayback;
- (void)teardownAnnouncements;
- (void)updateConstraints;
@end

@implementation HUAnnouncementGlobeView

- (HUAnnouncementGlobeView)initWithAnnouncementPayload:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = HUAnnouncementGlobeView;
  v8 = [(HUAnnouncementGlobeView *)&v27 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_globeViewDelegate, v7);
    v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277CEA768]];
    v11 = [v6 objectForKeyedSubscript:*MEMORY[0x277CEA9E8]];
    announcementGroupID = v9->_announcementGroupID;
    v9->_announcementGroupID = v11;

    v13 = objc_opt_new();
    announcementsInfo = v9->_announcementsInfo;
    v9->_announcementsInfo = v13;

    v15 = objc_opt_new();
    announcementIDs = v9->_announcementIDs;
    v9->_announcementIDs = v15;

    v17 = objc_opt_new();
    currentlyDisplayedAnnouncements = v9->_currentlyDisplayedAnnouncements;
    v9->_currentlyDisplayedAnnouncements = v17;

    v19 = objc_opt_new();
    visitedAnnouncements = v9->_visitedAnnouncements;
    v9->_visitedAnnouncements = v19;

    [(NSMutableDictionary *)v9->_announcementsInfo setObject:&unk_2824917F0 forKey:*MEMORY[0x277CEAA18]];
    [(NSMutableDictionary *)v9->_announcementsInfo setObject:v6 forKey:v10];
    [(NSMutableArray *)v9->_announcementIDs addObject:v10];
    v21 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v9 action:sel__togglePlayback_];
    tapGestureRecognizer = v9->_tapGestureRecognizer;
    v9->_tapGestureRecognizer = v21;

    v23 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v24 = dispatch_queue_create("com.apple.dataSourceUpdateQueue", v23);
    dataSourceUpdateQueue = v9->_dataSourceUpdateQueue;
    v9->_dataSourceUpdateQueue = v24;

    v9->_totalNumberOfAnnouncements = 1;
    v9->_seedOnceToken = 0;
    v9->_displayVisitedOnceToken = 0;
    [(HUAnnouncementGlobeView *)v9 _setupSubviewsForAnnouncementInfo:v6];
    [(HUAnnouncementGlobeView *)v9 _setupIncomingAnnouncementSession];
  }

  return v9;
}

- (BOOL)hasActivePlaybackSession
{
  v2 = [(HUAnnouncementGlobeView *)self audioPlayer];
  v3 = v2 != 0;

  return v3;
}

- (void)_setupSubviewsForAnnouncementInfo:(id)a3
{
  v4 = MEMORY[0x277D75D68];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(HUAnnouncementGlobeView *)self _blurEffectForCurrentInterfaceStyle];
  v8 = [v6 initWithEffect:v7];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v8;

  [(HUAnnouncementGlobeView *)self _configureVisualStyleForBackgroundView];
  [(UIVisualEffectView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIVisualEffectView *)self->_backgroundView setUserInteractionEnabled:0];
  [(HUAnnouncementGlobeView *)self addSubview:self->_backgroundView];
  v10 = [HUAnnouncementPlaybackView alloc];
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  v29 = [(HUAnnouncementPlaybackView *)v10 initWithFrame:*MEMORY[0x277CBF3A0], v12, v13, v14];
  [(HUAnnouncementPlaybackView *)v29 setAnnouncementInfo:v5];

  [(HUAnnouncementPlaybackView *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HUAnnouncementPlaybackView *)v29 setUserInteractionEnabled:0];
  v15 = [(UIVisualEffectView *)self->_backgroundView contentView];
  [v15 addSubview:v29];

  v16 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  [v16 addObject:v29];

  v17 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v11, v12, v13, v14}];
  tappableCoverView = self->_tappableCoverView;
  self->_tappableCoverView = v17;

  [(UIView *)self->_tappableCoverView setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [MEMORY[0x277D75348] clearColor];
  [(UIView *)self->_tappableCoverView setBackgroundColor:v19];

  [(UIView *)self->_tappableCoverView addGestureRecognizer:self->_tapGestureRecognizer];
  v20 = _HULocalizedStringWithDefaultValue(@"HUAnnounceStopPlayback_AX_Label_Title", @"HUAnnounceStopPlayback_AX_Label_Title", 1);
  [(UIView *)self->_tappableCoverView setAccessibilityLabel:v20];

  v21 = _HULocalizedStringWithDefaultValue(@"HUAnnounceStopPlayback_AX_Label_Hint", @"HUAnnounceStopPlayback_AX_Label_Hint", 1);
  [(UIView *)self->_tappableCoverView setAccessibilityHint:v21];

  [(UIView *)self->_tappableCoverView setIsAccessibilityElement:1];
  [(HUAnnouncementGlobeView *)self addSubview:self->_tappableCoverView];
  v22 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v11, v12, v13, v14}];
  playImageView = self->_playImageView;
  self->_playImageView = v22;

  [(UIImageView *)self->_playImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [MEMORY[0x277D755B8] _systemImageNamed:@"play.fill"];
  v25 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:-1];
  v26 = [v24 imageWithConfiguration:v25];

  [(UIImageView *)self->_playImageView setContentMode:1];
  [(UIImageView *)self->_playImageView setImage:v26];
  v27 = self->_playImageView;
  v28 = [MEMORY[0x277D75348] systemBlackColor];
  [(UIImageView *)v27 setTintColor:v28];

  [(UIImageView *)self->_playImageView setAlpha:0.0];
  [(UIView *)self->_tappableCoverView addSubview:self->_playImageView];
}

- (void)updateConstraints
{
  v58.receiver = self;
  v58.super_class = HUAnnouncementGlobeView;
  [(HUAnnouncementGlobeView *)&v58 updateConstraints];
  v3 = objc_opt_new();
  v4 = [(UIVisualEffectView *)self->_backgroundView centerXAnchor];
  v5 = [(HUAnnouncementGlobeView *)self centerXAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [v3 addObject:v6];

  v7 = [(UIVisualEffectView *)self->_backgroundView centerYAnchor];
  v8 = [(HUAnnouncementGlobeView *)self centerYAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v3 addObject:v9];

  v10 = [(UIVisualEffectView *)self->_backgroundView heightAnchor];
  v11 = [(HUAnnouncementGlobeView *)self heightAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v3 addObject:v12];

  v13 = [(UIVisualEffectView *)self->_backgroundView widthAnchor];
  v14 = [(UIVisualEffectView *)self->_backgroundView heightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v3 addObject:v15];

  v16 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v17 = [v16 objectAtIndexedSubscript:0];

  v18 = [v17 centerXAnchor];
  v19 = [(UIVisualEffectView *)self->_backgroundView centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:0.0];
  [v17 setCenterXConstraint:v20];

  v21 = [v17 centerYAnchor];
  v22 = [(UIVisualEffectView *)self->_backgroundView centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:0.0];
  [v17 setCenterYConstraint:v23];

  v24 = [v17 heightAnchor];
  v25 = [v24 constraintEqualToConstant:120.0];
  [v17 setHeightConstraint:v25];

  v26 = [v17 widthAnchor];
  v27 = [v17 heightAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [v17 setWidthConstraint:v28];

  v29 = [v17 centerXConstraint];
  [v3 addObject:v29];

  v30 = [v17 centerYConstraint];
  [v3 addObject:v30];

  v31 = [v17 heightConstraint];
  [v3 addObject:v31];

  v32 = [v17 widthAnchor];
  v33 = [v17 heightAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  [v3 addObject:v34];

  v35 = [(UIView *)self->_tappableCoverView centerXAnchor];
  v36 = [(HUAnnouncementGlobeView *)self centerXAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  [v3 addObject:v37];

  v38 = [(UIView *)self->_tappableCoverView centerYAnchor];
  v39 = [(HUAnnouncementGlobeView *)self centerYAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  [v3 addObject:v40];

  v41 = [(UIView *)self->_tappableCoverView heightAnchor];
  v42 = [(HUAnnouncementGlobeView *)self heightAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  [v3 addObject:v43];

  v44 = [(UIView *)self->_tappableCoverView widthAnchor];
  v45 = [(HUAnnouncementGlobeView *)self heightAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  [v3 addObject:v46];

  v47 = [(UIImageView *)self->_playImageView centerXAnchor];
  v48 = [(UIView *)self->_tappableCoverView centerXAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  [v3 addObject:v49];

  v50 = [(UIImageView *)self->_playImageView centerYAnchor];
  v51 = [(UIView *)self->_tappableCoverView centerYAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  [v3 addObject:v52];

  v53 = [(UIImageView *)self->_playImageView heightAnchor];
  v54 = [v53 constraintEqualToConstant:44.0];
  [v3 addObject:v54];

  v55 = [(UIImageView *)self->_playImageView widthAnchor];
  v56 = [(UIImageView *)self->_playImageView heightAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];
  [v3 addObject:v57];

  [MEMORY[0x277CCAAD0] activateConstraints:v3];
  [v17 setNeedsUpdateConstraints];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = HUAnnouncementGlobeView;
  [(HUAnnouncementGlobeView *)&v6 layoutSubviews];
  v3 = [(HUAnnouncementGlobeView *)self layer];
  [v3 setMasksToBounds:1];

  v4 = [(HUAnnouncementGlobeView *)self layer];
  [(HUAnnouncementGlobeView *)self bounds];
  [v4 setCornerRadius:v5 * 0.5];
}

- (void)skipToNextAnnouncement
{
  v3 = [(HUAnnouncementGlobeView *)self audioPlayer];
  v4 = [v3 isPlaying];

  if (v4)
  {
    v5 = [(HUAnnouncementGlobeView *)self audioPlayer];
    [v5 stop];

    v6 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v7 = [v6 objectAtIndexedSubscript:0];

    [v7 playbackStopped];
    [(HUAnnouncementGlobeView *)self _playNextAnnouncement];
  }
}

- (void)stopPlayback
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(HUAnnouncementGlobeView *)self audioPlayer];
  [v3 stop];

  v4 = [(HUAnnouncementGlobeView *)self playImageView];
  [v4 setAlpha:1.0];

  v5 = _HULocalizedStringWithDefaultValue(@"HUAnnounceStartPlayback_AX_Label_Title", @"HUAnnounceStartPlayback_AX_Label_Title", 1);
  v6 = [(HUAnnouncementGlobeView *)self tappableCoverView];
  [v6 setAccessibilityLabel:v5];

  v7 = _HULocalizedStringWithDefaultValue(@"HUAnnounceResumePlayback_AX_Label_Hint", @"HUAnnounceResumePlayback_AX_Label_Hint", 1);
  v8 = [(HUAnnouncementGlobeView *)self tappableCoverView];
  [v8 setAccessibilityHint:v7];

  v9 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v12 = [v11 objectAtIndexedSubscript:0];

    [v12 playbackStopped];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        v17 = 0;
        do
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v26 + 1) + 8 * v17++) setAlpha:0.5];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    v18 = [(HUAnnouncementGlobeView *)self globeViewDelegate];
    if (v18)
    {
      v19 = v18;
      v20 = [(HUAnnouncementGlobeView *)self globeViewDelegate];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        v22 = [(HUAnnouncementGlobeView *)self globeViewDelegate];
        v23 = [v12 announcementInfo];
        [v22 didSelectItemWithInfo:v23 totalNumberOfAnnouncements:{-[HUAnnouncementGlobeView totalNumberOfAnnouncements](self, "totalNumberOfAnnouncements")}];
      }
    }
  }

  [(HUAnnouncementGlobeView *)self setAudioPlayer:0];
  v24 = [(HUAnnouncementGlobeView *)self announceRemotePlaybackSession];
  v25 = [(HUAnnouncementGlobeView *)self lastPlayedAnnouncementID];
  [v24 setPlaybackStoppedForAnnouncement:v25];
}

- (void)teardownAnnouncements
{
  v3 = [(HUAnnouncementGlobeView *)self audioPlayer];
  v4 = [v3 isPlaying];

  v5 = [(HUAnnouncementGlobeView *)self announceRemotePlaybackSession];
  [v5 endSession];

  [(HUAnnouncementGlobeView *)self setAnnounceRemotePlaybackSession:0];
  v6 = [(HUAnnouncementGlobeView *)self audioPlayer];
  [v6 stop];

  if (v4)
  {
    v7 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v8 = [v7 objectAtIndexedSubscript:0];

    v9 = [v8 announcementInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CEA768]];

    [(HUAnnouncementGlobeView *)self _submitAnalyticsForAnnouncePlaybackCompletedSuccessfully:1 forAnnouncementID:v10 interruptedByUser:1];
  }

  v11 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  [v11 makeObjectsPerformSelector:sel_removeFromSuperview];

  v12 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  [v12 removeAllObjects];

  v13 = [(HUAnnouncementGlobeView *)self visitedAnnouncements];
  [v13 removeAllObjects];

  v14 = [(HUAnnouncementGlobeView *)self announcementIDs];
  [v14 removeAllObjects];

  v15 = [(HUAnnouncementGlobeView *)self announcementsInfo];
  [v15 removeAllObjects];
}

- (void)_configureVisualStyleForBackgroundView
{
  v3 = [(HUAnnouncementGlobeView *)self backgroundView];
  v4 = [(HUAnnouncementGlobeView *)self _blurEffectForCurrentInterfaceStyle];
  [v3 setEffect:v4];

  v5 = [(HUAnnouncementGlobeView *)self traitCollection];
  [v5 userInterfaceStyle];

  backgroundView = self->_backgroundView;
  v7 = [MEMORY[0x277D75348] colorWithRed:0.882352941 green:0.88627451 blue:0.894117647 alpha:1.0];
  [(UIVisualEffectView *)backgroundView setBackgroundColor:v7];
}

- (void)_setupIncomingAnnouncementSession
{
  v3 = [(HUAnnouncementGlobeView *)self announcementGroupID];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CEABC8]);
    [(HUAnnouncementGlobeView *)self setAnnounceRemotePlaybackSession:v4];

    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Now setting up Announce Remote Playback Session", buf, 2u);
    }

    v6 = [(HUAnnouncementGlobeView *)self announceRemotePlaybackSession];
    v7 = [(HUAnnouncementGlobeView *)self announcementGroupID];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__HUAnnouncementGlobeView__setupIncomingAnnouncementSession__block_invoke;
    v8[3] = &unk_277DBA608;
    v8[4] = self;
    [v6 startSessionForGroupID:v7 announcementsHandler:v8];
  }
}

void __60__HUAnnouncementGlobeView__setupIncomingAnnouncementSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSourceUpdateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HUAnnouncementGlobeView__setupIncomingAnnouncementSession__block_invoke_2;
  v7[3] = &unk_277DB7558;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __60__HUAnnouncementGlobeView__setupIncomingAnnouncementSession__block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) count];
    *buf = 134217984;
    v24 = v5;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Received announcements handler callback with [%lu] announcements", buf, 0xCu);
  }

  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 32);
    *buf = 138412290;
    v24 = v19;
    _os_log_debug_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEBUG, "Received announcements handler callback with announcements = %@", buf, 0xCu);
  }

  if ([*(a1 + 32) count])
  {
    v7 = 0;
    v8 = *MEMORY[0x277CEAA18];
    do
    {
      v9 = [*(a1 + 32) objectAtIndexedSubscript:v7];
      v10 = [v9 contextDictionary];
      v11 = [v10 mutableCopy];

      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      [v11 setObject:v12 forKey:v8];

      v13 = [v9 announcementID];
      [v3 setObject:v11 forKey:v13];

      v14 = [v9 announcementID];
      [v2 addObject:v14];

      ++v7;
    }

    while (v7 < [*(a1 + 32) count]);
  }

  [*(a1 + 40) setAnnouncementsInfo:v3];
  [*(a1 + 40) setAnnouncementIDs:v2];
  v15 = HFLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [*(a1 + 40) announcementsInfo];
    *buf = 138412290;
    v24 = v16;
    _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "New Announcement Info %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HUAnnouncementGlobeView__setupIncomingAnnouncementSession__block_invoke_37;
  block[3] = &unk_277DB8810;
  block[4] = *(a1 + 40);
  v21 = v2;
  v22 = v3;
  v17 = v3;
  v18 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__HUAnnouncementGlobeView__setupIncomingAnnouncementSession__block_invoke_37(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) copy];
  v3 = [*(a1 + 48) copy];
  [v2 _appendAnnouncements:v4 withInfo:v3];
}

- (void)_appendAnnouncements:(id)a3 withInfo:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(HUAnnouncementGlobeView *)self _seedVisitedAnouncements:v7 withInfo:v8];
  -[HUAnnouncementGlobeView setTotalNumberOfAnnouncements:](self, "setTotalNumberOfAnnouncements:", [v7 count]);
  v9 = [(HUAnnouncementGlobeView *)self _indexOfLatestCachedAnnouncementFromIDs:v7];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_29;
  }

  v10 = v9;
  v11 = [v7 count] + ~v9;
  v12 = [(HUAnnouncementGlobeView *)self _numberOfSlotsAvailableForNewAnnouncements:v7];
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138413058;
    v60 = self;
    v61 = 2112;
    v62 = v14;
    v63 = 2048;
    v64 = v11;
    v65 = 2048;
    v66 = v12;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@ New Announcements count = %lu, Free slots = %lu", buf, 0x2Au);
  }

  if (v11 && v12)
  {
    v15 = objc_opt_new();
    v16 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v17 = [v16 count];

    if (v12 >= v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = v12;
    }

    if (v17 == 3)
    {
      aSelector = a2;
      if (v18 <= 2)
      {
        v19 = 2;
        do
        {
          v20 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
          v21 = [v20 objectAtIndexedSubscript:v19];

          v22 = [(HUAnnouncementGlobeView *)self visitedAnnouncements];
          [v22 insertObject:v21 atIndex:0];

          [v15 addObject:v21];
          --v19;
        }

        while (v19 > 2 - v18);
      }

      v23 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
      [v23 removeObjectsInArray:v15];

      v24 = HFLogForCategory();
      a2 = aSelectora;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = NSStringFromSelector(aSelectora);
        *buf = 138412802;
        v60 = self;
        v61 = 2112;
        v62 = v25;
        v63 = 2112;
        v64 = v15;
        _os_log_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_DEFAULT, "%@:%@ [Insert-Operation] Removing and Pushing back views into visited announcements = %@", buf, 0x20u);
      }

      v26 = v18;
    }

    else
    {
      v26 = 0;
    }

    [(HUAnnouncementGlobeView *)self _addOrInsertAnnouncementsFromIDs:v7 withInfo:v8 withinRange:v10 inFreeSlots:v18, v12];
    [(HUAnnouncementGlobeView *)self _addVisitedAnnouncementsToDisplayQueueIfNeeded];
    v37 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v38 = [v37 objectAtIndexedSubscript:0];

    [(HUAnnouncementGlobeView *)self _setupConstrainstsForPlaybackViews];
    v39 = [(HUAnnouncementGlobeView *)self globeViewDelegate];
    if (v39)
    {
      v40 = v39;
      v41 = [(HUAnnouncementGlobeView *)self globeViewDelegate];
      v42 = objc_opt_respondsToSelector();

      if (v42)
      {
        v43 = [(HUAnnouncementGlobeView *)self globeViewDelegate];
        v44 = [v38 announcementInfo];
        [v43 didSelectItemWithInfo:v44 totalNumberOfAnnouncements:{-[HUAnnouncementGlobeView totalNumberOfAnnouncements](self, "totalNumberOfAnnouncements")}];
      }
    }

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __57__HUAnnouncementGlobeView__appendAnnouncements_withInfo___block_invoke;
    v55[3] = &unk_277DBDE40;
    v55[4] = self;
    v56 = v15;
    v57 = a2;
    v58 = v26;
    v45 = v15;
    [(HUAnnouncementGlobeView *)self _layoutPlaybackViewsWithAnimationDuration:v55 completion:0.5];

    goto LABEL_29;
  }

  v27 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  if (![v27 count])
  {
    goto LABEL_19;
  }

  v28 = [(HUAnnouncementGlobeView *)self audioPlayer];
  if (v28)
  {

LABEL_19:
    goto LABEL_20;
  }

  v46 = [(HUAnnouncementGlobeView *)self _numberOfUnplayedAnnouncements];

  if (!v46)
  {
LABEL_20:
    v29 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v30 = [v29 objectAtIndexedSubscript:0];

    v31 = [(HUAnnouncementGlobeView *)self globeViewDelegate];
    if (v31)
    {
      v32 = v31;
      v33 = [(HUAnnouncementGlobeView *)self globeViewDelegate];
      v34 = objc_opt_respondsToSelector();

      if (v34)
      {
        v35 = [(HUAnnouncementGlobeView *)self globeViewDelegate];
        v36 = [v30 announcementInfo];
        [v35 didSelectItemWithInfo:v36 totalNumberOfAnnouncements:{-[HUAnnouncementGlobeView totalNumberOfAnnouncements](self, "totalNumberOfAnnouncements")}];
      }
    }

    goto LABEL_29;
  }

  v47 = HFLogForCategory();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = NSStringFromSelector(a2);
    v49 = [(HUAnnouncementGlobeView *)self _numberOfUnplayedAnnouncements];
    v50 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    *buf = 138413058;
    v60 = self;
    v61 = 2112;
    v62 = v48;
    v63 = 2048;
    v64 = v49;
    v65 = 2112;
    v66 = v50;
    _os_log_impl(&dword_20CEB6000, v47, OS_LOG_TYPE_DEFAULT, "%@:%@ Now Playing [%lu] unplayed announcements [%@]....", buf, 0x2Au);
  }

  [(HUAnnouncementGlobeView *)self _addVisitedAnnouncementsToDisplayQueueIfNeeded];
  v51 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v52 = [v51 count];

  if (v52 >= 2)
  {
    [(HUAnnouncementGlobeView *)self _setupConstrainstsForPlaybackViews];
    [(HUAnnouncementGlobeView *)self _layoutPlaybackViewsWithAnimationDuration:0 completion:0.5];
  }

  [(HUAnnouncementGlobeView *)self _togglePlayback:0];
LABEL_29:
}

void __57__HUAnnouncementGlobeView__appendAnnouncements_withInfo___block_invoke(uint64_t a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return;
  }

  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = NSStringFromSelector(*(a1 + 48));
    v6 = *(a1 + 40);
    v18 = 138412802;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "%@:%@ Animation Complete! Removing unused views [%@] ", &v18, 0x20u);
  }

  [*(a1 + 40) makeObjectsPerformSelector:sel_removeFromSuperview];
  v7 = [*(a1 + 32) audioPlayer];
  if (v7)
  {

    goto LABEL_6;
  }

  if (!*(a1 + 56))
  {
LABEL_6:
    v8 = [*(a1 + 32) audioPlayer];

    if (v8)
    {
      v9 = [*(a1 + 32) currentlyDisplayedAnnouncements];
      v10 = [v9 objectAtIndexedSubscript:0];

      [v10 resumePlaybackAnimation];
    }

    else
    {
      v14 = HFLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = NSStringFromSelector(*(a1 + 48));
        v17 = [*(a1 + 32) currentlyDisplayedAnnouncements];
        v18 = 138412802;
        v19 = v15;
        v20 = 2112;
        v21 = v16;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ Starting playback for added announcements [%@]....", &v18, 0x20u);
      }

      [*(a1 + 32) _togglePlayback:0];
    }

    return;
  }

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = NSStringFromSelector(*(a1 + 48));
    v18 = 138412546;
    v19 = v12;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "%@:%@ Now Playing recently added announcements...", &v18, 0x16u);
  }

  [*(a1 + 32) _playRecentlyAddedAnnouncements];
}

- (void)_seedVisitedAnouncements:(id)a3 withInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__HUAnnouncementGlobeView__seedVisitedAnouncements_withInfo___block_invoke;
  v12[3] = &unk_277DBDE68;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v15 = a2;
  seedOnceToken = self->_seedOnceToken;
  v10 = v8;
  v11 = v7;
  if (seedOnceToken != -1)
  {
    dispatch_once(&self->_seedOnceToken, v12);
  }
}

void __61__HUAnnouncementGlobeView__seedVisitedAnouncements_withInfo___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentlyDisplayedAnnouncements];
  v3 = [v2 objectAtIndexedSubscript:0];

  v4 = [v3 announcementInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEAA18]];
  v6 = [v5 unsignedIntegerValue];

  if (v6)
  {
    v7 = 0;
    v8 = *MEMORY[0x277CBF3A0];
    v9 = *(MEMORY[0x277CBF3A0] + 8);
    v10 = *(MEMORY[0x277CBF3A0] + 16);
    v11 = *(MEMORY[0x277CBF3A0] + 24);
    do
    {
      if (v7 >= [*(a1 + 40) count])
      {
        break;
      }

      v12 = [*(a1 + 40) objectAtIndexedSubscript:v7];
      v13 = [[HUAnnouncementPlaybackView alloc] initWithFrame:v8, v9, v10, v11];
      v14 = [*(a1 + 48) objectForKeyedSubscript:v12];
      [(HUAnnouncementPlaybackView *)v13 setAnnouncementInfo:v14];

      [(HUAnnouncementPlaybackView *)v13 setFullyPlayed:1];
      [(HUAnnouncementPlaybackView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(HUAnnouncementPlaybackView *)v13 setUserInteractionEnabled:0];
      [(HUAnnouncementPlaybackView *)v13 setAlpha:0.0];
      v15 = [*(a1 + 32) visitedAnnouncements];
      [v15 addObject:v13];

      ++v7;
    }

    while (v6 != v7);
  }

  v16 = [*(a1 + 32) visitedAnnouncements];
  v17 = [v16 count];

  if (v17)
  {
    v18 = HFLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = NSStringFromSelector(*(a1 + 56));
      v21 = [*(a1 + 32) visitedAnnouncements];
      v22 = 138412802;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      v26 = 2112;
      v27 = v21;
      _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "%@:%@ Seeded visitedAnnouncements =  [%@]", &v22, 0x20u);
    }
  }
}

- (void)_addVisitedAnnouncementsToDisplayQueueIfNeeded
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HUAnnouncementGlobeView__addVisitedAnnouncementsToDisplayQueueIfNeeded__block_invoke;
  block[3] = &unk_277DB8488;
  block[4] = self;
  if (self->_displayVisitedOnceToken != -1)
  {
    dispatch_once(&self->_displayVisitedOnceToken, block);
  }
}

void __73__HUAnnouncementGlobeView__addVisitedAnnouncementsToDisplayQueueIfNeeded__block_invoke(uint64_t a1)
{
  v15 = [*(a1 + 32) visitedAnnouncements];
  if (![v15 count])
  {
LABEL_10:

    return;
  }

  v2 = [*(a1 + 32) currentlyDisplayedAnnouncements];
  v3 = [v2 count];

  if (v3 <= 2)
  {
    v4 = [*(a1 + 32) visitedAnnouncements];
    v5 = [v4 count];

    v6 = [*(a1 + 32) currentlyDisplayedAnnouncements];
    v7 = 3 - [v6 count];

    v8 = v5 >= v7 ? v7 : v5;
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = [*(a1 + 32) visitedAnnouncements];
        v11 = [v10 objectAtIndexedSubscript:i];

        v12 = [*(a1 + 32) currentlyDisplayedAnnouncements];
        [v12 addObject:v11];

        [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v11 setUserInteractionEnabled:0];
        v13 = [*(a1 + 32) backgroundView];
        v14 = [v13 contentView];
        [v14 addSubview:v11];
      }

      v15 = [*(a1 + 32) visitedAnnouncements];
      [v15 removeObjectsInRange:{0, v8}];
      goto LABEL_10;
    }
  }
}

- (void)_setupConstrainstsForPlaybackViews
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v5 = [v4 objectAtIndexedSubscript:0];

  v6 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v7 = 0;
  if ([v6 count] >= 2)
  {
    v8 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v7 = [v8 objectAtIndexedSubscript:1];
  }

  v9 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  if ([v9 count] < 3)
  {
    v11 = 0;
  }

  else
  {
    v10 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v11 = [v10 objectAtIndexedSubscript:2];
  }

  [(HUAnnouncementGlobeView *)self _layoutPlaybackViewCenteredIfNeeded:v5];
  [(HUAnnouncementGlobeView *)self _setupConstraintsForPlaybackViewIfNeeded:v7 slotPosition:2];
  [(HUAnnouncementGlobeView *)self _setupConstraintsForPlaybackViewIfNeeded:v11 slotPosition:3];
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v16 = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@ Setup complete for All Playback views. Animation Begins!", &v16, 0x16u);
  }

  v14 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v15 = [v14 objectAtIndexedSubscript:0];

  [v15 pausePlaybackAnimation];
}

- (void)_layoutPlaybackViewsWithAnimationDuration:(double)a3 completion:(id)a4
{
  v7 = a4;
  v8 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v9 = [v8 objectAtIndexedSubscript:0];

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__14;
  v26[4] = __Block_byref_object_dispose__14;
  v10 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  if ([v10 count] <= 1)
  {
    v27 = 0;
  }

  else
  {
    v11 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v27 = [v11 objectAtIndexedSubscript:1];
  }

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__14;
  v24[4] = __Block_byref_object_dispose__14;
  v12 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  if ([v12 count] < 3)
  {
    v25 = 0;
  }

  else
  {
    v13 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v25 = [v13 objectAtIndexedSubscript:2];
  }

  v14 = MEMORY[0x277D75D18];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __80__HUAnnouncementGlobeView__layoutPlaybackViewsWithAnimationDuration_completion___block_invoke;
  v19[3] = &unk_277DBDE90;
  v19[4] = self;
  v15 = v9;
  v20 = v15;
  v21 = v26;
  v22 = v24;
  v23 = a2;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__HUAnnouncementGlobeView__layoutPlaybackViewsWithAnimationDuration_completion___block_invoke_41;
  v17[3] = &unk_277DB8090;
  v17[4] = self;
  v16 = v7;
  v18 = v16;
  [v14 animateWithDuration:v19 animations:v17 completion:a3];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);
}

uint64_t __80__HUAnnouncementGlobeView__layoutPlaybackViewsWithAnimationDuration_completion___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) playImageView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) currentlyDisplayedAnnouncements];
  if ([v3 count] <= 1)
  {
  }

  else
  {
    v4 = [*(a1 + 40) centerXConstraint];
    [v4 constant];
    v6 = v5;

    if (v6 == 0.0)
    {
      v7 = HFLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = NSStringFromSelector(*(a1 + 64));
        v10 = *(a1 + 40);
        v12 = 138412802;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating constraints for view [%@] to display in the first slot", &v12, 0x20u);
      }

      [*(a1 + 32) _updateLayoutAndAppearanceForPlaybackView:*(a1 + 40) atSlotPosition:1];
    }
  }

  [*(a1 + 40) setAlpha:1.0];
  [*(a1 + 32) _updateLayoutAndAppearanceForPlaybackView:*(*(*(a1 + 48) + 8) + 40) atSlotPosition:2];
  [*(a1 + 32) _updateLayoutAndAppearanceForPlaybackView:*(*(*(a1 + 56) + 8) + 40) atSlotPosition:3];
  return [*(a1 + 32) layoutIfNeeded];
}

uint64_t __80__HUAnnouncementGlobeView__layoutPlaybackViewsWithAnimationDuration_completion___block_invoke_41(uint64_t a1)
{
  v2 = _HULocalizedStringWithDefaultValue(@"HUAnnounceStartPlayback_AX_Label_Title", @"HUAnnounceStartPlayback_AX_Label_Title", 1);
  v3 = [*(a1 + 32) tappableCoverView];
  [v3 setAccessibilityLabel:v2];

  v4 = _HULocalizedStringWithDefaultValue(@"HUAnnounceStartPlayback_AX_Label_Hint", @"HUAnnounceStartPlayback_AX_Label_Hint", 1);
  v5 = [*(a1 + 32) tappableCoverView];
  [v5 setAccessibilityHint:v4];

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (unint64_t)_indexOfLatestCachedAnnouncementFromIDs:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  if ([v5 count])
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = self;
  v7 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    v11 = *MEMORY[0x277CEA768];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v27 + 1) + 8 * i) announcementInfo];
        v14 = [v13 objectForKeyedSubscript:v11];

        v15 = [v4 indexOfObject:v14];
        if (v15 <= v6)
        {
          v16 = v6;
        }

        else
        {
          v16 = v15;
        }

        if (v6 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v6 = v16;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  v17 = [(HUAnnouncementGlobeView *)v26 visitedAnnouncements];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [(HUAnnouncementGlobeView *)v26 visitedAnnouncements];
    v20 = [v19 lastObject];

    v21 = [v20 announcementInfo];
    v22 = [v21 objectForKeyedSubscript:*MEMORY[0x277CEA768]];
    v23 = [v4 indexOfObject:v22];

    if (v23 <= v6)
    {
      v24 = v6;
    }

    else
    {
      v24 = v23;
    }

    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v24;
    }
  }

  return v6;
}

- (unint64_t)_numberOfSlotsAvailableForNewAnnouncements:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v6 = [v5 count];

  if (v6 == 3)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v23 = self;
      v10 = *v27;
      v11 = *MEMORY[0x277CEA768];
      v12 = 3;
      while (2)
      {
        v13 = 0;
        v25 = v12;
        v24 = v12 - v9;
        do
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(*(&v26 + 1) + 8 * v13);
          v15 = [v14 announcementInfo];
          v16 = [v15 objectForKeyedSubscript:v11];
          v17 = [v4 indexOfObject:v16];

          if (!v17)
          {
            v19 = [(HUAnnouncementGlobeView *)v23 currentlyDisplayedAnnouncements];
            v20 = [v19 objectAtIndexedSubscript:0];
            v18 = v25 - v13;
            if ([v20 isEqual:v14])
            {
              v21 = [(HUAnnouncementGlobeView *)v23 hasActivePlaybackSession];

              if (v21)
              {
                v18 = 0;
              }
            }

            else
            {
            }

            goto LABEL_18;
          }

          ++v13;
        }

        while (v9 != v13);
        v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
        v18 = v24;
        v12 = v24;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v18 = 3;
    }

LABEL_18:
  }

  else
  {
    v18 = 3 - v6;
  }

  return v18;
}

- (void)_addOrInsertAnnouncementsFromIDs:(id)a3 withInfo:(id)a4 withinRange:(_NSRange)a5 inFreeSlots:(unint64_t)a6
{
  length = a5.length;
  location = a5.location;
  v52 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v43 = a4;
  v12 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v13 = [v12 objectAtIndexedSubscript:0];

  v14 = [v13 announcementInfo];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CEA768]];
  v16 = [v11 indexOfObject:v15];

  v36 = v13;
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = [v13 fullyPlayed];
  }

  v18 = location + 1;
  v42 = location + length;
  if (location + 1 <= location + length)
  {
    v19 = 0;
    v20 = *MEMORY[0x277CBF3A0];
    v21 = *(MEMORY[0x277CBF3A0] + 8);
    v22 = *(MEMORY[0x277CBF3A0] + 16);
    v23 = *(MEMORY[0x277CBF3A0] + 24);
    v39 = -length;
    v37 = a6 - 3;
    v38 = a6 - 2;
    v40 = v11;
    do
    {
      v24 = [v11 objectAtIndexedSubscript:v18 + v19];
      v25 = [[HUAnnouncementPlaybackView alloc] initWithFrame:v20, v21, v22, v23];
      v26 = [v43 objectForKeyedSubscript:v24];
      [(HUAnnouncementPlaybackView *)v25 setAnnouncementInfo:v26];

      [(HUAnnouncementPlaybackView *)v25 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(HUAnnouncementPlaybackView *)v25 setUserInteractionEnabled:0];
      v27 = [(HUAnnouncementGlobeView *)self backgroundView];
      v28 = [v27 contentView];
      [v28 addSubview:v25];

      [(HUAnnouncementPlaybackView *)v25 setAlpha:0.0];
      if (v17)
      {
        if (length <= 1)
        {
          goto LABEL_15;
        }

        v29 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
        v30 = [v29 count] - 1;

        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v39 + v19 == -1 && v38 == v19)
        {
          v30 = 1;
LABEL_16:
          v31 = HFLogForCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = NSStringFromSelector(a2);
            *buf = 138413314;
            v45 = self;
            v46 = 2112;
            v47 = v32;
            v48 = 1024;
            *v49 = v17;
            *&v49[4] = 2112;
            *&v49[6] = v25;
            v50 = 2048;
            v51 = v30;
            _os_log_impl(&dword_20CEB6000, v31, OS_LOG_TYPE_DEFAULT, "%@:%@ [Insert-Operation-DM] InsertInFirstSlot = [%d] Inserting [%@] at index = [%ld]", buf, 0x30u);

            v11 = v40;
          }

          v33 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
          [v33 insertObject:v25 atIndex:v30];
          goto LABEL_22;
        }

        if (v39 + v19 && v37 == v19)
        {
LABEL_15:
          v30 = 0;
          goto LABEL_16;
        }
      }

      v34 = HFLogForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = NSStringFromSelector(a2);
        *buf = 138412802;
        v45 = self;
        v46 = 2112;
        v47 = v35;
        v48 = 2112;
        *v49 = v25;
        _os_log_impl(&dword_20CEB6000, v34, OS_LOG_TYPE_DEFAULT, "%@:%@ [Append-Operation-DM] Appending [%@] to displayed announcements", buf, 0x20u);

        v11 = v40;
      }

      v33 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
      [v33 addObject:v25];
LABEL_22:

      --length;
      ++v19;
    }

    while (v18 + v19 <= v42);
  }
}

- (void)_showVisitedAnnouncementsView
{
  v62 = *MEMORY[0x277D85DE8];
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy__14;
  v54[4] = __Block_byref_object_dispose__14;
  v4 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v55 = [v4 objectAtIndexedSubscript:0];

  v5 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  if ([v5 count] < 2)
  {
    v6 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    [v6 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    [v6 objectAtIndexedSubscript:1];
  }
  v7 = ;

  v8 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  if ([v8 count] < 3)
  {
  }

  else
  {
    v9 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v10 = [v9 objectAtIndexedSubscript:2];

    if (v10)
    {
      goto LABEL_11;
    }
  }

  v11 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v12 = [v11 count] > 1;

  if (v12)
  {
    v13 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v10 = [v13 objectAtIndexedSubscript:0];
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  v14 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  if ([v14 count] < 3)
  {
    v17 = 0;
    goto LABEL_15;
  }

  v15 = [(HUAnnouncementGlobeView *)self visitedAnnouncements];
  v16 = [v15 count] == 0;

  if (!v16)
  {
    v14 = [(HUAnnouncementGlobeView *)self visitedAnnouncements];
    v17 = [v14 objectAtIndexedSubscript:0];
LABEL_15:

    goto LABEL_16;
  }

  v17 = 0;
LABEL_16:
  v18 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  [v18 removeAllObjects];

  v19 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  [v19 na_safeAddObject:v7];

  v20 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  [v20 na_safeAddObject:v10];

  v21 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  [v21 na_safeAddObject:v17];

  v22 = HFLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = NSStringFromSelector(a2);
    v24 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    *buf = 138412802;
    v57 = self;
    v58 = 2112;
    v59 = v23;
    v60 = 2112;
    v61 = v24;
    _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "%@:%@ Updated data model to display announcements =  [%@]....", buf, 0x20u);
  }

  v25 = [(HUAnnouncementGlobeView *)self visitedAnnouncements];
  v26 = [v25 count];

  if (v26)
  {
    v27 = HFLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = NSStringFromSelector(a2);
      v29 = [(HUAnnouncementGlobeView *)self visitedAnnouncements];
      v30 = [v29 objectAtIndexedSubscript:0];
      *buf = 138412802;
      v57 = self;
      v58 = 2112;
      v59 = v28;
      v60 = 2112;
      v61 = v30;
      _os_log_impl(&dword_20CEB6000, v27, OS_LOG_TYPE_DEFAULT, "%@:%@ Removing oldest visited announcement since we already pulled it in to display = %@.", buf, 0x20u);
    }

    v31 = [(HUAnnouncementGlobeView *)self visitedAnnouncements];
    [v31 removeObjectAtIndex:0];
  }

  if (v17)
  {
    v32 = [v17 superview];
    v33 = v32 == 0;

    if (v33)
    {
      v34 = MEMORY[0x277CCAAD0];
      v35 = [v17 constraints];
      [v34 deactivateConstraints:v35];

      v36 = [(HUAnnouncementGlobeView *)self backgroundView];
      v37 = [v36 contentView];
      [v37 addSubview:v17];

      [v17 setAlpha:0.0];
      [(HUAnnouncementGlobeView *)self _setupConstraintsForPlaybackViewIfNeeded:v17 slotPosition:3];
    }
  }

  v38 = HFLogForCategory();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = NSStringFromSelector(a2);
    *buf = 138412546;
    v57 = self;
    v58 = 2112;
    v59 = v39;
    _os_log_impl(&dword_20CEB6000, v38, OS_LOG_TYPE_DEFAULT, "%@:%@ Begin animating announcements", buf, 0x16u);
  }

  v40 = MEMORY[0x277D75D18];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __56__HUAnnouncementGlobeView__showVisitedAnnouncementsView__block_invoke;
  v48[3] = &unk_277DBDEB8;
  v41 = v10;
  v49 = v41;
  v50 = self;
  v51 = v7;
  v42 = v17;
  v52 = v42;
  v53 = v54;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __56__HUAnnouncementGlobeView__showVisitedAnnouncementsView__block_invoke_2;
  v44[3] = &unk_277DBDEE0;
  v46 = v54;
  v47 = a2;
  v44[4] = self;
  v43 = v51;
  v45 = v43;
  [v40 animateWithDuration:v48 animations:v44 completion:0.25];

  _Block_object_dispose(v54, 8);
}

uint64_t __56__HUAnnouncementGlobeView__showVisitedAnnouncementsView__block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _updateLayoutAndAppearanceForPlaybackView:*(a1 + 48) atSlotPosition:1];
  }

  v2 = *(a1 + 48);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  *&v10.a = *MEMORY[0x277CBF2C0];
  *&v10.c = v3;
  *&v10.tx = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:&v10];
  [*(a1 + 48) setNeedsUpdateConstraints];
  [*(a1 + 48) setAlpha:0.5];
  [*(a1 + 40) _updateLayoutAndAppearanceForPlaybackView:*(a1 + 32) atSlotPosition:2];
  [*(a1 + 32) setNeedsUpdateConstraints];
  [*(a1 + 32) setAlpha:0.5];
  v4 = *(a1 + 56);
  if (v4)
  {
    [v4 alpha];
    if (v5 == 0.0)
    {
      CGAffineTransformMakeScale(&v9, 0.1, 0.1);
      v6 = *(*(*(a1 + 64) + 8) + 40);
      v10 = v9;
      [v6 setTransform:&v10];
      [*(*(*(a1 + 64) + 8) + 40) setAlpha:0.0];
    }
  }

  [*(a1 + 40) _updateLayoutAndAppearanceForPlaybackView:*(a1 + 56) atSlotPosition:3];
  [*(a1 + 56) setAlpha:0.5];
  v7 = [*(a1 + 40) playImageView];
  [v7 setAlpha:1.0];

  [*(a1 + 40) setLastPlayedAnnouncementID:0];
  return [*(a1 + 40) layoutIfNeeded];
}

void __56__HUAnnouncementGlobeView__showVisitedAnnouncementsView__block_invoke_2(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = _HULocalizedStringWithDefaultValue(@"HUAnnounceStartPlayback_AX_Label_Title", @"HUAnnounceStartPlayback_AX_Label_Title", 1);
    v4 = [*(a1 + 32) tappableCoverView];
    [v4 setAccessibilityLabel:v3];

    v5 = _HULocalizedStringWithDefaultValue(@"HUAnnounceResumePlayback_AX_Label_Hint", @"HUAnnounceResumePlayback_AX_Label_Hint", 1);
    v6 = [*(a1 + 32) tappableCoverView];
    [v6 setAccessibilityHint:v5];

    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = NSStringFromSelector(*(a1 + 56));
      v17 = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Finished animating announcements.\nTearing down audio player. Updating UI state to playback stopped.", &v17, 0x16u);
    }

    [*(a1 + 32) setAudioPlayer:0];
    [*(*(*(a1 + 48) + 8) + 40) alpha];
    if (v10 == 0.0)
    {
      [*(*(*(a1 + 48) + 8) + 40) removeFromSuperview];
    }

    v11 = [*(a1 + 32) globeViewDelegate];
    if (v11)
    {
      v12 = v11;
      v13 = [*(a1 + 32) globeViewDelegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = [*(a1 + 32) globeViewDelegate];
        v16 = [*(a1 + 40) announcementInfo];
        [v15 didSelectItemWithInfo:v16 totalNumberOfAnnouncements:{objc_msgSend(*(a1 + 32), "totalNumberOfAnnouncements")}];
      }
    }
  }
}

- (void)_layoutPlaybackViewCenteredIfNeeded:(id)a3
{
  v37[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 alpha];
    if (v7 == 0.0)
    {
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v6 setUserInteractionEnabled:0];
      v8 = [(HUAnnouncementGlobeView *)self backgroundView];
      v9 = [v8 contentView];
      [v9 addSubview:v6];

      v10 = [v6 centerXAnchor];
      v11 = [(HUAnnouncementGlobeView *)self backgroundView];
      v12 = [v11 centerXAnchor];
      v13 = [v10 constraintEqualToAnchor:v12 constant:0.0];
      [v6 setCenterXConstraint:v13];

      v14 = [v6 centerYAnchor];
      v15 = [(HUAnnouncementGlobeView *)self backgroundView];
      v16 = [v15 centerYAnchor];
      v17 = [v14 constraintEqualToAnchor:v16 constant:0.0];
      [v6 setCenterYConstraint:v17];

      v18 = [v6 heightAnchor];
      v19 = [v18 constraintEqualToConstant:120.0];
      [v6 setHeightConstraint:v19];

      v20 = [v6 widthAnchor];
      v21 = [v6 heightAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      [v6 setWidthConstraint:v22];

      v23 = MEMORY[0x277CCAAD0];
      v24 = [v6 centerXConstraint];
      v37[0] = v24;
      v25 = [v6 centerYConstraint];
      v37[1] = v25;
      v26 = [v6 heightConstraint];
      v37[2] = v26;
      v27 = [v6 widthConstraint];
      v37[3] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
      [v23 activateConstraints:v28];

      [(HUAnnouncementGlobeView *)self layoutIfNeeded];
      v29 = HFLogForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = NSStringFromSelector(a2);
        v31 = 138412802;
        v32 = self;
        v33 = 2112;
        v34 = v30;
        v35 = 2112;
        v36 = v6;
        _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, "%@:%@ Playback View layout in center/default position complete for view [%@]", &v31, 0x20u);
      }
    }
  }
}

- (void)_setupConstraintsForPlaybackViewIfNeeded:(id)a3 slotPosition:(unint64_t)a4
{
  v45[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    [v7 alpha];
    if (v9 == 0.0)
    {
      [(HUAnnouncementGlobeView *)self _xCoordinateForPlaybackViewInSlotPosition:a4];
      v11 = v10;
      [(HUAnnouncementGlobeView *)self _yCoordinateForPlaybackViewInSlotPosition:a4];
      v13 = v12;
      [(HUAnnouncementGlobeView *)self _radiusOfPlaybackViewInSlotPosition:a4];
      v15 = v14;
      v16 = [v8 centerXAnchor];
      v17 = [(HUAnnouncementGlobeView *)self backgroundView];
      v18 = [v17 centerXAnchor];
      v19 = [v16 constraintEqualToAnchor:v18 constant:v11];
      [v8 setCenterXConstraint:v19];

      v20 = [v8 centerYAnchor];
      v21 = [(HUAnnouncementGlobeView *)self backgroundView];
      v22 = [v21 centerYAnchor];
      v23 = [v20 constraintEqualToAnchor:v22 constant:v13];
      [v8 setCenterYConstraint:v23];

      v24 = [v8 heightAnchor];
      v25 = [v24 constraintEqualToConstant:v15 * 0.5];
      [v8 setHeightConstraint:v25];

      v26 = [v8 widthAnchor];
      v27 = [v8 heightAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];
      [v8 setWidthConstraint:v28];

      v29 = MEMORY[0x277CCAAD0];
      v30 = [v8 centerXConstraint];
      v45[0] = v30;
      v31 = [v8 centerYConstraint];
      v45[1] = v31;
      v32 = [v8 heightConstraint];
      v45[2] = v32;
      v33 = [v8 widthConstraint];
      v45[3] = v33;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
      [v29 activateConstraints:v34];

      [v8 setNeedsUpdateConstraints];
      [(HUAnnouncementGlobeView *)self layoutIfNeeded];
      v35 = HFLogForCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = NSStringFromSelector(a2);
        v37 = 138413058;
        v38 = self;
        v39 = 2112;
        v40 = v36;
        v41 = 2112;
        v42 = v8;
        v43 = 2048;
        v44 = a4;
        _os_log_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_DEFAULT, "%@:%@ Setting up playback view [%@] to display in slot [%lu]", &v37, 0x2Au);
      }
    }
  }
}

- (void)_updateLayoutAndAppearanceForPlaybackView:(id)a3 atSlotPosition:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  [(HUAnnouncementGlobeView *)self _xCoordinateForPlaybackViewInSlotPosition:a4];
  v9 = v8;
  [(HUAnnouncementGlobeView *)self _yCoordinateForPlaybackViewInSlotPosition:a4];
  v11 = v10;
  [(HUAnnouncementGlobeView *)self _radiusOfPlaybackViewInSlotPosition:a4];
  v13 = v12;
  v14 = [v7 centerXConstraint];
  [v14 setConstant:v9];

  v15 = [v7 centerYConstraint];
  [v15 setConstant:v11];

  v16 = [v7 heightConstraint];
  [v16 setConstant:v13 + v13];

  v17 = [v7 fullyPlayed];
  v18 = 1.0;
  if (v17)
  {
    v18 = 0.5;
  }

  [v7 setAlpha:v18];
  v19 = *(MEMORY[0x277CBF2C0] + 16);
  *v22 = *MEMORY[0x277CBF2C0];
  *&v22[16] = v19;
  v23 = *(MEMORY[0x277CBF2C0] + 32);
  [v7 setTransform:v22];
  v20 = HFLogForCategory();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = NSStringFromSelector(a2);
    *v22 = 138413058;
    *&v22[4] = self;
    *&v22[12] = 2112;
    *&v22[14] = v21;
    *&v22[22] = 2112;
    *&v22[24] = v7;
    LOWORD(v23) = 2048;
    *(&v23 + 2) = a4;
    _os_log_impl(&dword_20CEB6000, v20, OS_LOG_TYPE_DEFAULT, "%@:%@ Updating constraints and alpha for playback view [%@] in Slot Position [%lu]", v22, 0x2Au);
  }
}

- (double)_xCoordinateForPlaybackViewInSlotPosition:(unint64_t)a3
{
  if (a3 == 3)
  {
    v4 = [(HUAnnouncementGlobeView *)self backgroundView];
    [v4 bounds];
    v6 = v9 * 0.5 + -49.6;
    v7 = -0.0871557427;
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    v4 = [(HUAnnouncementGlobeView *)self backgroundView];
    [v4 bounds];
    v6 = v8 * 0.5 + -44.0;
    v7 = 0.965925826;
    goto LABEL_7;
  }

  v3 = 0.0;
  if (a3 == 1)
  {
    v4 = [(HUAnnouncementGlobeView *)self backgroundView];
    [v4 bounds];
    v6 = v5 * 0.5 + -54.0;
    v7 = -0.707106781;
LABEL_7:
    v3 = v6 * v7;
  }

  return v3;
}

- (double)_yCoordinateForPlaybackViewInSlotPosition:(unint64_t)a3
{
  if (a3 == 3)
  {
    v4 = [(HUAnnouncementGlobeView *)self backgroundView];
    [v4 bounds];
    v6 = v9 * 0.5 + -49.6;
    v7 = 0.996194698;
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    v4 = [(HUAnnouncementGlobeView *)self backgroundView];
    [v4 bounds];
    v6 = v8 * 0.5 + -44.0;
    v7 = 0.258819045;
    goto LABEL_7;
  }

  v3 = 0.0;
  if (a3 == 1)
  {
    v4 = [(HUAnnouncementGlobeView *)self backgroundView];
    [v4 bounds];
    v6 = v5 * 0.5 + -54.0;
    v7 = -0.707106781;
LABEL_7:
    v3 = v6 * v7;
  }

  return v3;
}

- (double)_radiusOfPlaybackViewInSlotPosition:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 60.0;
  }

  else
  {
    return dbl_20D5CABF0[a3 - 1];
  }
}

- (id)_nextAnnouncementPlaybackView
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v4 = [v3 objectAtIndexedSubscript:0];

  v5 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v6 = 0;
  if ([v5 count] >= 2)
  {
    v7 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v6 = [v7 objectAtIndexedSubscript:1];
  }

  v8 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  if ([v8 count] <= 2)
  {

    v11 = 0;
    v12 = 0;
    v10 = 0;
LABEL_9:
    v13 = 0;
    goto LABEL_29;
  }

  v9 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v10 = [v9 objectAtIndexedSubscript:2];

  if (!v10)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  if ([v10 fullyPlayed])
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v48 = v6;
    v49 = v4;
    v14 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v15 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v16 = [v15 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v52;
      v19 = *MEMORY[0x277CEA768];
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v52 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = [*(*(&v51 + 1) + 8 * i) announcementInfo];
          v22 = [v21 objectForKeyedSubscript:v19];

          [v14 addObject:v22];
        }

        v17 = [v15 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v17);
    }

    v23 = [(HUAnnouncementGlobeView *)self visitedAnnouncements];
    if ([v23 count])
    {
      v24 = [(HUAnnouncementGlobeView *)self visitedAnnouncements];
      v25 = [v24 firstObject];
    }

    else
    {
      v25 = 0;
    }

    v47 = v25;
    v26 = [v25 announcementInfo];
    v27 = [v26 objectForKeyedSubscript:*MEMORY[0x277CEA768]];

    v11 = [(HUAnnouncementGlobeView *)self _onQueue_fetchNewAnnouncementInfo:v14 oldestVisitedAnnouncementID:v27];
    v28 = HFLogForCategory();
    v6 = v48;
    v4 = v49;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      *&buf[22] = 2112;
      *&buf[24] = v11;
      _os_log_impl(&dword_20CEB6000, v28, OS_LOG_TYPE_DEFAULT, "%@:%@ Next Announcement Info to bring into visibility = [%@]", buf, 0x20u);
    }

    v12 = v11 != 0;
    if (v11)
    {
      v30 = [HUAnnouncementPlaybackView alloc];
      v31 = [(HUAnnouncementPlaybackView *)v30 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      [(HUAnnouncementPlaybackView *)v31 setAnnouncementInfo:v11];
    }

    else
    {
      v31 = 0;
    }

    if (v31)
    {
      if (!v11)
      {
        goto LABEL_45;
      }

      goto LABEL_34;
    }
  }

  v13 = 1;
LABEL_29:
  v32 = [(HUAnnouncementGlobeView *)self visitedAnnouncements];
  v31 = [v32 count];

  if (v31)
  {
    v33 = [(HUAnnouncementGlobeView *)self visitedAnnouncements];
    v31 = [v33 objectAtIndexedSubscript:0];

    v34 = [(HUAnnouncementGlobeView *)self visitedAnnouncements];
    [v34 removeObjectAtIndex:0];

    v35 = HFLogForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v36;
      *&buf[22] = 2112;
      *&buf[24] = v31;
      _os_log_impl(&dword_20CEB6000, v35, OS_LOG_TYPE_DEFAULT, "%@:%@ No, new announcements found. Removing the oldest visited announcement [%@]", buf, 0x20u);
    }

    if (([v4 isEqual:v31] & 1) == 0)
    {
      [(HUAnnouncementPlaybackView *)v31 setAlpha:0.0];
      if (v6)
      {
        v38 = 1;
      }

      else
      {
        v38 = v13;
      }

      if (v10 == 0 && v6 != 0)
      {
        v37 = 2;
      }

      else
      {
        v37 = 3;
      }

      if (((v12 | v38) & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }
  }

  if (!v12)
  {
    goto LABEL_45;
  }

LABEL_34:
  v37 = 3;
LABEL_42:
  v39 = HFLogForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = NSStringFromSelector(a2);
    *buf = 138412802;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v40;
    *&buf[22] = 2048;
    *&buf[24] = v37;
    _os_log_impl(&dword_20CEB6000, v39, OS_LOG_TYPE_DEFAULT, "%@:%@ Now displaying the next announcement in slot position [%lu]", buf, 0x20u);
  }

  v41 = MEMORY[0x277CCAAD0];
  v42 = [(HUAnnouncementPlaybackView *)v31 constraints];
  [v41 deactivateConstraints:v42];

  [(HUAnnouncementPlaybackView *)v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HUAnnouncementPlaybackView *)v31 setUserInteractionEnabled:0];
  v43 = [(HUAnnouncementGlobeView *)self backgroundView];
  v44 = [v43 contentView];
  [v44 addSubview:v31];

  [(HUAnnouncementPlaybackView *)v31 setAlpha:0.0];
  v45 = *(MEMORY[0x277CBF2C0] + 16);
  *buf = *MEMORY[0x277CBF2C0];
  *&buf[16] = v45;
  v56 = *(MEMORY[0x277CBF2C0] + 32);
  [(HUAnnouncementPlaybackView *)v31 setTransform:buf];
  [(HUAnnouncementGlobeView *)self _setupConstraintsForPlaybackViewIfNeeded:v31 slotPosition:v37];
LABEL_45:

  return v31;
}

- (void)_togglePlayback:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = [(HUAnnouncementGlobeView *)self audioPlayer];
  if (v5)
  {
    v6 = v5;
    v7 = [(HUAnnouncementGlobeView *)self audioPlayer];
    v8 = [v7 isPlaying];

    if (v8)
    {
      if (a3)
      {
        v9 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
        v10 = [v9 objectAtIndexedSubscript:0];

        v11 = [v10 announcementInfo];
        v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CEA768]];

        [(HUAnnouncementGlobeView *)self _submitAnalyticsForAnnouncePlaybackCompletedSuccessfully:1 forAnnouncementID:v12 interruptedByUser:1];
      }

      [(HUAnnouncementGlobeView *)self stopPlayback];
      return;
    }
  }

  v13 = [(HUAnnouncementGlobeView *)self lastPlayedAnnouncementID];
  if (v13)
  {
    v14 = [(HUAnnouncementGlobeView *)self announcementsInfo];
    v15 = [(HUAnnouncementGlobeView *)self lastPlayedAnnouncementID];
    [v14 objectForKeyedSubscript:v15];
  }

  else
  {
    v14 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v15 = [v14 objectAtIndexedSubscript:0];
    [v15 announcementInfo];
  }
  v16 = ;

  v17 = [(HUAnnouncementGlobeView *)self audioPlayer];

  if (!v17)
  {
    v18 = MEMORY[0x277CBEBC0];
    v19 = [v16 objectForKeyedSubscript:*MEMORY[0x277CEA7F0]];
    v20 = [v18 fileURLWithPath:v19];

    v21 = [objc_alloc(MEMORY[0x277D14420]) initWithAudioFileURL:v20 audioSessionOptions:2 delegate:self];
    [(HUAnnouncementGlobeView *)self setAudioPlayer:v21];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v22 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v23 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v47;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v46 + 1) + 8 * i);
        v28 = [(HUAnnouncementGlobeView *)self lastPlayedAnnouncementID];

        if (v28)
        {
          if ([v27 fullyPlayed])
          {
            v29 = 0.5;
          }

          else
          {
            v29 = 1.0;
          }
        }

        else
        {
          if (!a3)
          {
            continue;
          }

          [v27 setFullyPlayed:0];
          v29 = 1.0;
        }

        [v27 setAlpha:v29];
      }

      v24 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v24);
  }

  v30 = [(HUAnnouncementGlobeView *)self lastPlayedAnnouncementID];

  if (!v30)
  {
    v31 = [(HUAnnouncementGlobeView *)self visitedAnnouncements];
    [v31 makeObjectsPerformSelector:sel_setFullyPlayed_ withObject:MEMORY[0x277CBEC28]];
  }

  v32 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v33 = [v32 objectAtIndexedSubscript:0];

  v34 = [v33 fullyPlayed];
  v35 = 1.0;
  if (v34)
  {
    v35 = 0.5;
  }

  [v33 setAlpha:v35];
  [(HUAnnouncementGlobeView *)self _playAnnouncementWithInfo:v16];
  v36 = [(HUAnnouncementGlobeView *)self playImageView];
  [v36 setAlpha:0.0];

  v37 = _HULocalizedStringWithDefaultValue(@"HUAnnounceStopPlayback_AX_Label_Title", @"HUAnnounceStopPlayback_AX_Label_Title", 1);
  v38 = [(HUAnnouncementGlobeView *)self tappableCoverView];
  [v38 setAccessibilityLabel:v37];

  v39 = _HULocalizedStringWithDefaultValue(@"HUAnnounceStopPlayback_AX_Label_Hint", @"HUAnnounceStopPlayback_AX_Label_Hint", 1);
  v40 = [(HUAnnouncementGlobeView *)self tappableCoverView];
  [v40 setAccessibilityHint:v39];

  v41 = [(HUAnnouncementGlobeView *)self globeViewDelegate];
  if (v41)
  {
    v42 = v41;
    v43 = [(HUAnnouncementGlobeView *)self globeViewDelegate];
    v44 = objc_opt_respondsToSelector();

    if (v44)
    {
      v45 = [(HUAnnouncementGlobeView *)self globeViewDelegate];
      [v45 didSelectItemWithInfo:v16 totalNumberOfAnnouncements:{-[HUAnnouncementGlobeView totalNumberOfAnnouncements](self, "totalNumberOfAnnouncements")}];
    }
  }
}

- (void)_playRecentlyAddedAnnouncements
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [(HUAnnouncementGlobeView *)self audioPlayer];
  if (v4 && (v5 = v4, -[HUAnnouncementGlobeView audioPlayer](self, "audioPlayer"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isPlaying], v6, v5, (v7 & 1) != 0))
  {
    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      *buf = 138412546;
      v28 = self;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ Not playing the next announcement since audio player is busy playing", buf, 0x16u);
    }
  }

  else
  {
    v10 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v11 = [v10 objectAtIndexedSubscript:0];
    v26 = [v11 announcementInfo];

    v12 = [(HUAnnouncementGlobeView *)self audioPlayer];

    if (!v12)
    {
      v13 = MEMORY[0x277CBEBC0];
      v14 = [v26 objectForKeyedSubscript:*MEMORY[0x277CEA7F0]];
      v15 = [v13 fileURLWithPath:v14];

      v16 = [objc_alloc(MEMORY[0x277D14420]) initWithAudioFileURL:v15 audioSessionOptions:2 delegate:self];
      [(HUAnnouncementGlobeView *)self setAudioPlayer:v16];
    }

    v17 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v18 = [v17 objectAtIndexedSubscript:0];

    v19 = [v18 fullyPlayed];
    v20 = 1.0;
    if (v19)
    {
      v20 = 0.5;
    }

    [v18 setAlpha:v20];
    [(HUAnnouncementGlobeView *)self _playAnnouncementWithInfo:v26];
    v21 = [(HUAnnouncementGlobeView *)self playImageView];
    [v21 setAlpha:0.0];

    v22 = _HULocalizedStringWithDefaultValue(@"HUAnnounceStopPlayback_AX_Label_Title", @"HUAnnounceStopPlayback_AX_Label_Title", 1);
    v23 = [(HUAnnouncementGlobeView *)self tappableCoverView];
    [v23 setAccessibilityLabel:v22];

    v24 = _HULocalizedStringWithDefaultValue(@"HUAnnounceStopPlayback_AX_Label_Hint", @"HUAnnounceStopPlayback_AX_Label_Hint", 1);
    v25 = [(HUAnnouncementGlobeView *)self tappableCoverView];
    [v25 setAccessibilityHint:v24];
  }
}

- (void)_playAnnouncementWithInfo:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v7 = [v6 objectAtIndexedSubscript:0];

  v8 = [(HUAnnouncementGlobeView *)self visitedAnnouncements];
  v9 = [v8 lastObject];
  v10 = [v9 isEqual:v7];

  if ((v10 & 1) == 0)
  {
    v11 = [(HUAnnouncementGlobeView *)self visitedAnnouncements];
    [v11 addObject:v7];

    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412802;
      v29 = self;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@ Adding and Playing announcement to visited list [%@]", buf, 0x20u);
    }
  }

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    v16 = [v7 announcementInfo];
    *buf = 138412802;
    v29 = self;
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "%@:%@ Now Playing announcement with Info [%@]", buf, 0x20u);
  }

  v17 = MEMORY[0x277CBEBC0];
  v18 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEA7F0]];
  v19 = [v17 fileURLWithPath:v18];

  v20 = [(HUAnnouncementGlobeView *)self audioPlayer];
  [v20 updateAudioFileURL:v19];

  v21 = [(HUAnnouncementGlobeView *)self audioPlayer];
  v27 = 0;
  [v21 prepareToPlay:&v27];
  v22 = v27;

  if (v22)
  {
    v23 = HFLogForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = v19;
      v30 = 2112;
      v31 = v22;
      _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "Audio Player Failed to prepare for announcement URL [%@] with reason[%@]", buf, 0x16u);
    }
  }

  else
  {
    v24 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEA768]];
    [(HUAnnouncementGlobeView *)self setLastPlayedAnnouncementID:v24];

    v25 = [(HUAnnouncementGlobeView *)self audioPlayer];
    [v25 play];

    v23 = [(HUAnnouncementGlobeView *)self announceRemotePlaybackSession];
    v26 = [(HUAnnouncementGlobeView *)self lastPlayedAnnouncementID];
    [v23 setPlaybackStartedForAnnouncement:v26];
  }
}

- (void)_playNextAnnouncement
{
  v3 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  if ([v3 count] >= 2 && -[HUAnnouncementGlobeView _numberOfUnplayedAnnouncements](self, "_numberOfUnplayedAnnouncements"))
  {
    v4 = [(HUAnnouncementGlobeView *)self _isNextAnnouncementTheOldest];

    if (!v4)
    {
      v5 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
      v6 = [v5 objectAtIndexedSubscript:0];

      v7 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
      v8 = 0;
      if ([v7 count] >= 2)
      {
        v9 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
        v8 = [v9 objectAtIndexedSubscript:1];
      }

      v10 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
      if ([v10 count] < 3)
      {
        v12 = 0;
      }

      else
      {
        v11 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
        v12 = [v11 objectAtIndexedSubscript:2];
      }

      v13 = [(HUAnnouncementGlobeView *)self _nextAnnouncementPlaybackView];
      v14 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
      [v14 addObject:v13];

      v15 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
      [v15 removeObjectAtIndex:0];

      v16 = MEMORY[0x277D75D18];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __48__HUAnnouncementGlobeView__playNextAnnouncement__block_invoke;
      v25[3] = &unk_277DBDF08;
      v25[4] = self;
      v26 = v8;
      v27 = v13;
      v28 = v6;
      v29 = v12;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __48__HUAnnouncementGlobeView__playNextAnnouncement__block_invoke_2;
      v21[3] = &unk_277DB8838;
      v22 = v28;
      v23 = self;
      v24 = v26;
      v17 = v26;
      v18 = v28;
      v19 = v12;
      v20 = v13;
      [v16 animateWithDuration:v25 animations:v21 completion:0.5];

      return;
    }
  }

  else
  {
  }

  [(HUAnnouncementGlobeView *)self _showVisitedAnnouncementsView];
}

uint64_t __48__HUAnnouncementGlobeView__playNextAnnouncement__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateLayoutAndAppearanceForPlaybackView:*(a1 + 40) atSlotPosition:1];
  if ([*(a1 + 48) isEqual:*(a1 + 56)])
  {
    if (*(a1 + 64))
    {
      v2 = 3;
    }

    else
    {
      v2 = 2;
    }

    [*(a1 + 32) _updateLayoutAndAppearanceForPlaybackView:*(a1 + 48) atSlotPosition:v2];
    CGAffineTransformMakeScale(&v17, 1.0, 1.0);
    v3 = *(a1 + 48);
    *&v16.a = *&v17.a;
    *&v16.c = *&v17.c;
    v4 = *&v17.tx;
  }

  else
  {
    [*(a1 + 56) setAlpha:0.0];
    CGAffineTransformMakeScale(&v15, 0.1, 0.1);
    v5 = *(a1 + 56);
    v16 = v15;
    [v5 setTransform:&v16];
    v6 = [*(a1 + 48) heightConstraint];
    [v6 setConstant:35.2];

    v7 = *(a1 + 48);
    v8 = [v7 fullyPlayed];
    v9 = 1.0;
    if (v8)
    {
      v9 = 0.5;
    }

    [v7 setAlpha:v9];
    CGAffineTransformMakeScale(&v14, 1.0, 1.0);
    v3 = *(a1 + 48);
    *&v16.a = *&v14.a;
    *&v16.c = *&v14.c;
    v4 = *&v14.tx;
  }

  *&v16.tx = v4;
  [v3 setTransform:&v16];
  [*(a1 + 32) _updateLayoutAndAppearanceForPlaybackView:*(a1 + 64) atSlotPosition:2];
  v10 = *(a1 + 40);
  v11 = [v10 fullyPlayed];
  v12 = 1.0;
  if (v11)
  {
    v12 = 0.5;
  }

  [v10 setAlpha:v12];
  return [*(a1 + 32) layoutIfNeeded];
}

void __48__HUAnnouncementGlobeView__playNextAnnouncement__block_invoke_2(id *a1, int a2)
{
  if (a2)
  {
    [a1[4] alpha];
    if (v3 == 0.0)
    {
      [a1[4] removeFromSuperview];
    }

    v4 = [a1[5] globeViewDelegate];
    if (v4)
    {
      v5 = v4;
      v6 = [a1[5] globeViewDelegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [a1[5] globeViewDelegate];
        v9 = [a1[6] announcementInfo];
        [v8 didSelectItemWithInfo:v9 totalNumberOfAnnouncements:{objc_msgSend(a1[5], "totalNumberOfAnnouncements")}];
      }
    }

    v10 = a1[5];
    v11 = [a1[6] announcementInfo];
    [v10 _playAnnouncementWithInfo:v11];
  }
}

- (unint64_t)_numberOfUnplayedAnnouncements
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (v8)
        {
          v5 += [v8 fullyPlayed] ^ 1;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isNextAnnouncementTheOldest
{
  v3 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v4 = [v3 count];

  if (v4 < 2)
  {
    return 1;
  }

  v5 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v6 = [v5 objectAtIndexedSubscript:1];
  v7 = [v6 announcementInfo];

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CEAA18]];
  v9 = [v8 unsignedIntegerValue];

  v10 = v9 == 0;
  return v10;
}

- (id)_onQueue_fetchNewAnnouncementInfo:(id)a3 oldestVisitedAnnouncementID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__14;
  v23 = __Block_byref_object_dispose__14;
  v24 = 0;
  v9 = [(HUAnnouncementGlobeView *)self dataSourceUpdateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__HUAnnouncementGlobeView__onQueue_fetchNewAnnouncementInfo_oldestVisitedAnnouncementID___block_invoke;
  block[3] = &unk_277DBDF30;
  block[4] = self;
  v15 = v7;
  v17 = &v19;
  v18 = a2;
  v16 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_sync(v9, block);

  v12 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v12;
}

void __89__HUAnnouncementGlobeView__onQueue_fetchNewAnnouncementInfo_oldestVisitedAnnouncementID___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) announcementIDs];
  v3 = [*(a1 + 40) objectAtIndexedSubscript:0];
  v4 = [v2 indexOfObject:v3];

  v5 = [*(a1 + 32) announcementIDs];
  v6 = [*(a1 + 40) objectAtIndexedSubscript:1];
  v7 = [v5 indexOfObject:v6];

  v8 = [*(a1 + 32) announcementIDs];
  v9 = [*(a1 + 40) objectAtIndexedSubscript:2];
  v10 = [v8 indexOfObject:v9];

  if (*(a1 + 48))
  {
    v11 = [*(a1 + 32) announcementIDs];
    v12 = [v11 indexOfObject:*(a1 + 48)];
  }

  else
  {
    v12 = 0;
  }

  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = NSStringFromSelector(*(a1 + 64));
    v25 = 138413570;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    v29 = 2048;
    v30 = v4;
    v31 = 2048;
    v32 = v7;
    v33 = 2048;
    v34 = v10;
    v35 = 2048;
    v36 = v12;
    _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "%@:%@ Displayed announcement indexes = [%lu, %lu, %lu] & Oldest Visited Index = %lu", &v25, 0x3Eu);
  }

  if (v4 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v4;
  }

  v17 = v16 + 1;
  if (v16 + 1 != v12 && (v17 != v10 && v4 >= v10 && v17 != v7 || v10 >= v4 && v17 != v4 && v17 != v7))
  {
    v18 = [*(a1 + 32) announcementIDs];
    if ([v18 count] > v17)
    {
      v19 = [*(a1 + 32) announcementIDs];
      v20 = [v19 objectAtIndexedSubscript:v17];

      if (!v20)
      {
        return;
      }

      v21 = [*(a1 + 32) announcementsInfo];
      v22 = [v21 objectForKeyedSubscript:v20];
      v23 = *(*(a1 + 56) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      v18 = v20;
    }
  }
}

- (id)_blurEffectForCurrentInterfaceStyle
{
  v2 = [(HUAnnouncementGlobeView *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = MEMORY[0x277D75210];

  return [v5 effectWithStyle:v4];
}

- (void)audioPlayer:(id)a3 didUpdateAveragePower:(double)a4
{
  if ([a3 isPlaying])
  {
    v6 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
    v7 = [v6 objectAtIndexedSubscript:0];

    [v7 didUpdateAveragePower:a4];
  }
}

- (void)audioPlayer:(id)a3 didPausePlaybackWithReason:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v13 = 138412802;
    v14 = self;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ Playback paused with reason [%@]", &v13, 0x20u);
  }

  v9 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v10 = [v9 objectAtIndexedSubscript:0];

  v11 = [v10 announcementInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CEA768]];

  [(HUAnnouncementGlobeView *)self _submitAnalyticsForAnnouncePlaybackCompletedSuccessfully:1 forAnnouncementID:v12 interruptedByUser:0];
  [(HUAnnouncementGlobeView *)self stopPlayback];
}

- (void)audioPlayerDidFinishPlayback:(id)a3 withError:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HUAnnouncementGlobeView *)self currentlyDisplayedAnnouncements];
  v8 = [v7 objectAtIndexedSubscript:0];

  [v8 setFullyPlayed:1];
  [v8 playbackStopped];
  v9 = [v8 announcementInfo];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CEA768]];

  v11 = [(HUAnnouncementGlobeView *)self announceRemotePlaybackSession];
  [v11 setPlaybackStoppedForAnnouncement:v10];

  v12 = HFLogForCategory();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v13)
    {
      v14 = NSStringFromSelector(a2);
      v18 = 138413058;
      v19 = self;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v6;
      v15 = "%@:%@ Error finishing playing announcement [%@] - Error %@";
      v16 = v12;
      v17 = 42;
LABEL_6:
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, v15, &v18, v17);
    }
  }

  else if (v13)
  {
    v14 = NSStringFromSelector(a2);
    v18 = 138412802;
    v19 = self;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = v8;
    v15 = "%@:%@ Successfully Finished playing announcement [%@]";
    v16 = v12;
    v17 = 32;
    goto LABEL_6;
  }

  [(HUAnnouncementGlobeView *)self _submitAnalyticsForAnnouncePlaybackCompletedSuccessfully:v6 == 0 forAnnouncementID:v10 interruptedByUser:0];
  [(HUAnnouncementGlobeView *)self _playNextAnnouncement];
}

- (void)_submitAnalyticsForAnnouncePlaybackCompletedSuccessfully:(BOOL)a3 forAnnouncementID:(id)a4 interruptedByUser:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  v9 = [(HUAnnouncementGlobeView *)self audioPlayer];
  v10 = [v9 playerStopSource];

  v11 = [(HUAnnouncementGlobeView *)self audioPlayer];
  [v11 duration];
  v13 = v12;

  v26 = objc_opt_new();
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  [v26 setObject:v14 forKey:*MEMORY[0x277D133F8]];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:!v6];
  [v26 setObject:v15 forKey:*MEMORY[0x277D13400]];

  [v26 setObject:v8 forKey:*MEMORY[0x277D133F0]];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v26 setObject:v16 forKey:*MEMORY[0x277D13418]];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:(v10 & 0xFFFFFFFFFFFFFFFELL) == 2];
  [v26 setObject:v17 forKey:*MEMORY[0x277D13410]];

  v18 = [MEMORY[0x277CCABB0] numberWithInt:v10 == 4];
  [v26 setObject:v18 forKey:*MEMORY[0x277D13408]];

  v19 = [(HUAnnouncementGlobeView *)self audioPlayer];
  v20 = [v19 routeChangeReason];

  if (v20)
  {
    v21 = [(HUAnnouncementGlobeView *)self audioPlayer];
    v22 = [v21 routeChangeReason];
    [v26 setObject:v22 forKey:*MEMORY[0x277D13690]];
  }

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:_AXSShowAudioTranscriptions()];
  [v26 setObject:v23 forKey:*MEMORY[0x277D134A8]];

  v24 = MEMORY[0x277D143D8];
  v25 = [v26 copy];
  [v24 sendEvent:19 withData:v25];
}

- (CGSize)playbackBoundingBoxSize
{
  width = self->_playbackBoundingBoxSize.width;
  height = self->_playbackBoundingBoxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (HUAnnouncementsGlobeViewDelegate)globeViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_globeViewDelegate);

  return WeakRetained;
}

@end