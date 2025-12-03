@interface MTPAFTracker
- (void)forEachVideoTracker:(id)tracker;
- (void)playStartedAtSeconds:(double)seconds type:(id)type reason:(id)reason eventData:(id)data;
- (void)playStartedWithPlaybackRate:(float)rate atMilliseconds:(unint64_t)milliseconds type:(id)type reason:(id)reason eventData:(id)data;
- (void)playStoppedAtMilliseconds:(unint64_t)milliseconds type:(id)type reason:(id)reason eventData:(id)data;
- (void)seekStartedAtMilliseconds:(unint64_t)milliseconds type:(id)type reason:(id)reason eventData:(id)data;
- (void)seekStoppedAtMilliseconds:(unint64_t)milliseconds type:(id)type reason:(id)reason eventData:(id)data;
- (void)startActivity:(int64_t)activity playbackRate:(float)rate atMilliseconds:(unint64_t)milliseconds triggerType:(id)type reason:(id)reason eventData:(id)data;
- (void)stopActivity:(int64_t)activity atMilliseconds:(unint64_t)milliseconds triggerType:(id)type reason:(id)reason eventData:(id)data;
- (void)synchronizeAtMilliseconds:(unint64_t)milliseconds;
- (void)trackPlaylist:(id)playlist using:(id)using;
- (void)updateEventData:(id)data;
@end

@implementation MTPAFTracker

- (void)trackPlaylist:(id)playlist using:(id)using
{
  v22[1] = *MEMORY[0x277D85DE8];
  playlistCopy = playlist;
  usingCopy = using;
  if ([playlistCopy conformsToProtocol:&unk_286A515C8])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"NotSupported" format:{@"%@ cannot be used to handle video events on a MTMediaPlaylist. Please use MTVPAFKit instead.", objc_opt_class()}];
    }

    v8 = usingCopy;
    v9 = [v8 trackerWithPlayList:playlistCopy];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    videoTrackers = selfCopy->_videoTrackers;
    if (videoTrackers)
    {
      [(NSArray *)videoTrackers arrayByAddingObject:v9];
    }

    else
    {
      [MEMORY[0x277CBEA60] arrayWithObject:v9];
    }
    v12 = ;
    v18 = selfCopy->_videoTrackers;
    selfCopy->_videoTrackers = v12;

    objc_sync_exit(selfCopy);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_alloc_init(MTPAFPlaylistKitBinding);
      [(MTPAFPlaylistKitBinding *)v13 setPlaylist:playlistCopy];
      [(MTPAFPlaylistKitBinding *)v13 setPafKit:usingCopy];
      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      playlistBindings = selfCopy2->_playlistBindings;
      if (playlistBindings)
      {
        v16 = [(NSArray *)playlistBindings arrayByAddingObject:v13];
        v17 = selfCopy2->_playlistBindings;
        selfCopy2->_playlistBindings = v16;
      }

      else
      {
        v22[0] = v13;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
        v20 = selfCopy2->_playlistBindings;
        selfCopy2->_playlistBindings = v19;
      }

      objc_sync_exit(selfCopy2);
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"NotSupported" format:{@"Unsupported playlist type: %@.", objc_opt_class()}];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)playStartedWithPlaybackRate:(float)rate atMilliseconds:(unint64_t)milliseconds type:(id)type reason:(id)reason eventData:(id)data
{
  typeCopy = type;
  reasonCopy = reason;
  dataCopy = data;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__MTPAFTracker_playStartedWithPlaybackRate_atMilliseconds_type_reason_eventData___block_invoke;
  v19[3] = &unk_2798CE610;
  rateCopy = rate;
  v20 = typeCopy;
  v21 = reasonCopy;
  v22 = dataCopy;
  millisecondsCopy = milliseconds;
  v15 = dataCopy;
  v16 = reasonCopy;
  v17 = typeCopy;
  [(MTPAFTracker *)self forEachVideoTracker:v19];
  *&v18 = rate;
  [(MTPAFTracker *)self startActivity:0 playbackRate:milliseconds atMilliseconds:v17 triggerType:v16 reason:v15 eventData:v18];
}

- (void)playStartedAtSeconds:(double)seconds type:(id)type reason:(id)reason eventData:(id)data
{
  v9 = seconds * 1000.0;
  v10 = v9;
  LODWORD(v9) = 1.0;
  [(MTPAFTracker *)self playStartedWithPlaybackRate:v10 atMilliseconds:type type:reason reason:data eventData:v9];
}

- (void)playStoppedAtMilliseconds:(unint64_t)milliseconds type:(id)type reason:(id)reason eventData:(id)data
{
  typeCopy = type;
  reasonCopy = reason;
  dataCopy = data;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __64__MTPAFTracker_playStoppedAtMilliseconds_type_reason_eventData___block_invoke;
  v19 = &unk_2798CE638;
  v20 = typeCopy;
  v21 = reasonCopy;
  v22 = dataCopy;
  millisecondsCopy = milliseconds;
  v13 = dataCopy;
  v14 = reasonCopy;
  v15 = typeCopy;
  [(MTPAFTracker *)self forEachVideoTracker:&v16];
  [(MTPAFTracker *)self stopActivity:0 atMilliseconds:milliseconds triggerType:v15 reason:v14 eventData:v13, v16, v17, v18, v19];
}

- (void)seekStartedAtMilliseconds:(unint64_t)milliseconds type:(id)type reason:(id)reason eventData:(id)data
{
  typeCopy = type;
  reasonCopy = reason;
  dataCopy = data;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __64__MTPAFTracker_seekStartedAtMilliseconds_type_reason_eventData___block_invoke;
  v20 = &unk_2798CE638;
  v21 = typeCopy;
  v22 = reasonCopy;
  v23 = dataCopy;
  millisecondsCopy = milliseconds;
  v13 = dataCopy;
  v14 = reasonCopy;
  v15 = typeCopy;
  [(MTPAFTracker *)self forEachVideoTracker:&v17];
  LODWORD(v16) = 1.0;
  [(MTPAFTracker *)self startActivity:1 playbackRate:milliseconds atMilliseconds:v15 triggerType:v14 reason:v13 eventData:v16, v17, v18, v19, v20];
}

- (void)seekStoppedAtMilliseconds:(unint64_t)milliseconds type:(id)type reason:(id)reason eventData:(id)data
{
  typeCopy = type;
  reasonCopy = reason;
  dataCopy = data;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __64__MTPAFTracker_seekStoppedAtMilliseconds_type_reason_eventData___block_invoke;
  v19 = &unk_2798CE638;
  v20 = typeCopy;
  v21 = reasonCopy;
  v22 = dataCopy;
  millisecondsCopy = milliseconds;
  v13 = dataCopy;
  v14 = reasonCopy;
  v15 = typeCopy;
  [(MTPAFTracker *)self forEachVideoTracker:&v16];
  [(MTPAFTracker *)self stopActivity:1 atMilliseconds:milliseconds triggerType:v15 reason:v14 eventData:v13, v16, v17, v18, v19];
}

- (void)synchronizeAtMilliseconds:(unint64_t)milliseconds
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__MTPAFTracker_synchronizeAtMilliseconds___block_invoke;
  v6[3] = &__block_descriptor_40_e32_v16__0__MTMediaActivityTracker_8l;
  v6[4] = milliseconds;
  [(MTPAFTracker *)self forEachVideoTracker:v6];
  currentActivity = [(MTPAFTracker *)self currentActivity];
  [currentActivity synchronizeAtMilliseconds:milliseconds];
}

- (void)updateEventData:(id)data
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __32__MTPAFTracker_updateEventData___block_invoke;
  v17[3] = &unk_2798CE680;
  v5 = dataCopy;
  v18 = v5;
  [(MTPAFTracker *)self forEachVideoTracker:v17];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  playlistBindings = [(MTPAFTracker *)selfCopy playlistBindings];
  v8 = [playlistBindings countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(playlistBindings);
        }

        playlist = [*(*(&v13 + 1) + 8 * v10) playlist];
        [playlist updateEventData:v5];

        ++v10;
      }

      while (v8 != v10);
      v8 = [playlistBindings countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v8);
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)forEachVideoTracker:(id)tracker
{
  v17 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  videoTrackers = [(MTPAFTracker *)selfCopy videoTrackers];
  objc_sync_exit(selfCopy);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = videoTrackers;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        trackerCopy[2](trackerCopy, *(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startActivity:(int64_t)activity playbackRate:(float)rate atMilliseconds:(unint64_t)milliseconds triggerType:(id)type reason:(id)reason eventData:(id)data
{
  v43 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  reasonCopy = reason;
  dataCopy = data;
  currentActivity = [(MTPAFTracker *)self currentActivity];

  if (currentActivity)
  {
    v22 = MTConfigurationError(110, @"MTPAFTracker inconsistent state: did you forget to call stopped?", v16, v17, v18, v19, v20, v21, typeCopy);
  }

  v23 = [MTPAFActivity alloc];
  *&v24 = rate;
  v25 = [(MTPAFActivity *)v23 initWithType:activity playbackRate:milliseconds atMilliseconds:typeCopy triggerType:reasonCopy reason:dataCopy eventData:v24];
  if (v25)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    playlistBindings = [(MTPAFTracker *)selfCopy playlistBindings];
    objc_sync_exit(selfCopy);

    if (playlistBindings)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v28 = playlistBindings;
      v29 = [v28 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v29)
      {
        v30 = *v39;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v39 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v38 + 1) + 8 * i);
            playlist = [v32 playlist];
            pafKit = [v32 pafKit];
            [(MTPAFActivity *)v25 addItemsFromPlaylist:playlist pafKit:pafKit];
          }

          v29 = [v28 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v29);
      }
    }

    [(MTPAFTracker *)selfCopy setCurrentActivity:v25, typeCopy];
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)stopActivity:(int64_t)activity atMilliseconds:(unint64_t)milliseconds triggerType:(id)type reason:(id)reason eventData:(id)data
{
  typeCopy = type;
  reasonCopy = reason;
  dataCopy = data;
  currentActivity = [(MTPAFTracker *)self currentActivity];
  v15 = currentActivity;
  if (currentActivity)
  {
    if ([currentActivity activityType] == activity)
    {
      [v15 stoppedAtMilliseconds:milliseconds triggerType:typeCopy reason:reasonCopy eventData:dataCopy];
      [(MTPAFTracker *)self setCurrentActivity:0];
    }

    else
    {
      v22 = MTConfigurationError(110, @"MTPAFTracker inconsistent state: did you forget to call started?", v16, v17, v18, v19, v20, v21, v23);
    }
  }
}

@end