@interface MTPAFTracker
- (void)forEachVideoTracker:(id)a3;
- (void)playStartedAtSeconds:(double)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6;
- (void)playStartedWithPlaybackRate:(float)a3 atMilliseconds:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7;
- (void)playStoppedAtMilliseconds:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6;
- (void)seekStartedAtMilliseconds:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6;
- (void)seekStoppedAtMilliseconds:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6;
- (void)startActivity:(int64_t)a3 playbackRate:(float)a4 atMilliseconds:(unint64_t)a5 triggerType:(id)a6 reason:(id)a7 eventData:(id)a8;
- (void)stopActivity:(int64_t)a3 atMilliseconds:(unint64_t)a4 triggerType:(id)a5 reason:(id)a6 eventData:(id)a7;
- (void)synchronizeAtMilliseconds:(unint64_t)a3;
- (void)trackPlaylist:(id)a3 using:(id)a4;
- (void)updateEventData:(id)a3;
@end

@implementation MTPAFTracker

- (void)trackPlaylist:(id)a3 using:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 conformsToProtocol:&unk_286A515C8])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"NotSupported" format:{@"%@ cannot be used to handle video events on a MTMediaPlaylist. Please use MTVPAFKit instead.", objc_opt_class()}];
    }

    v8 = v7;
    v9 = [v8 trackerWithPlayList:v6];
    v10 = self;
    objc_sync_enter(v10);
    videoTrackers = v10->_videoTrackers;
    if (videoTrackers)
    {
      [(NSArray *)videoTrackers arrayByAddingObject:v9];
    }

    else
    {
      [MEMORY[0x277CBEA60] arrayWithObject:v9];
    }
    v12 = ;
    v18 = v10->_videoTrackers;
    v10->_videoTrackers = v12;

    objc_sync_exit(v10);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_alloc_init(MTPAFPlaylistKitBinding);
      [(MTPAFPlaylistKitBinding *)v13 setPlaylist:v6];
      [(MTPAFPlaylistKitBinding *)v13 setPafKit:v7];
      v14 = self;
      objc_sync_enter(v14);
      playlistBindings = v14->_playlistBindings;
      if (playlistBindings)
      {
        v16 = [(NSArray *)playlistBindings arrayByAddingObject:v13];
        v17 = v14->_playlistBindings;
        v14->_playlistBindings = v16;
      }

      else
      {
        v22[0] = v13;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
        v20 = v14->_playlistBindings;
        v14->_playlistBindings = v19;
      }

      objc_sync_exit(v14);
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:@"NotSupported" format:{@"Unsupported playlist type: %@.", objc_opt_class()}];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)playStartedWithPlaybackRate:(float)a3 atMilliseconds:(unint64_t)a4 type:(id)a5 reason:(id)a6 eventData:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__MTPAFTracker_playStartedWithPlaybackRate_atMilliseconds_type_reason_eventData___block_invoke;
  v19[3] = &unk_2798CE610;
  v24 = a3;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = a4;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  [(MTPAFTracker *)self forEachVideoTracker:v19];
  *&v18 = a3;
  [(MTPAFTracker *)self startActivity:0 playbackRate:a4 atMilliseconds:v17 triggerType:v16 reason:v15 eventData:v18];
}

- (void)playStartedAtSeconds:(double)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6
{
  v9 = a3 * 1000.0;
  v10 = v9;
  LODWORD(v9) = 1.0;
  [(MTPAFTracker *)self playStartedWithPlaybackRate:v10 atMilliseconds:a4 type:a5 reason:a6 eventData:v9];
}

- (void)playStoppedAtMilliseconds:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __64__MTPAFTracker_playStoppedAtMilliseconds_type_reason_eventData___block_invoke;
  v19 = &unk_2798CE638;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = a3;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  [(MTPAFTracker *)self forEachVideoTracker:&v16];
  [(MTPAFTracker *)self stopActivity:0 atMilliseconds:a3 triggerType:v15 reason:v14 eventData:v13, v16, v17, v18, v19];
}

- (void)seekStartedAtMilliseconds:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __64__MTPAFTracker_seekStartedAtMilliseconds_type_reason_eventData___block_invoke;
  v20 = &unk_2798CE638;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = a3;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  [(MTPAFTracker *)self forEachVideoTracker:&v17];
  LODWORD(v16) = 1.0;
  [(MTPAFTracker *)self startActivity:1 playbackRate:a3 atMilliseconds:v15 triggerType:v14 reason:v13 eventData:v16, v17, v18, v19, v20];
}

- (void)seekStoppedAtMilliseconds:(unint64_t)a3 type:(id)a4 reason:(id)a5 eventData:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __64__MTPAFTracker_seekStoppedAtMilliseconds_type_reason_eventData___block_invoke;
  v19 = &unk_2798CE638;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = a3;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  [(MTPAFTracker *)self forEachVideoTracker:&v16];
  [(MTPAFTracker *)self stopActivity:1 atMilliseconds:a3 triggerType:v15 reason:v14 eventData:v13, v16, v17, v18, v19];
}

- (void)synchronizeAtMilliseconds:(unint64_t)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__MTPAFTracker_synchronizeAtMilliseconds___block_invoke;
  v6[3] = &__block_descriptor_40_e32_v16__0__MTMediaActivityTracker_8l;
  v6[4] = a3;
  [(MTPAFTracker *)self forEachVideoTracker:v6];
  v5 = [(MTPAFTracker *)self currentActivity];
  [v5 synchronizeAtMilliseconds:a3];
}

- (void)updateEventData:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __32__MTPAFTracker_updateEventData___block_invoke;
  v17[3] = &unk_2798CE680;
  v5 = v4;
  v18 = v5;
  [(MTPAFTracker *)self forEachVideoTracker:v17];
  v6 = self;
  objc_sync_enter(v6);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(MTPAFTracker *)v6 playlistBindings];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) playlist];
        [v11 updateEventData:v5];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)forEachVideoTracker:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MTPAFTracker *)v5 videoTrackers];
  objc_sync_exit(v5);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
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

        v4[2](v4, *(*(&v12 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startActivity:(int64_t)a3 playbackRate:(float)a4 atMilliseconds:(unint64_t)a5 triggerType:(id)a6 reason:(id)a7 eventData:(id)a8
{
  v43 = *MEMORY[0x277D85DE8];
  v36 = a6;
  v37 = a7;
  v14 = a8;
  v15 = [(MTPAFTracker *)self currentActivity];

  if (v15)
  {
    v22 = MTConfigurationError(110, @"MTPAFTracker inconsistent state: did you forget to call stopped?", v16, v17, v18, v19, v20, v21, v36);
  }

  v23 = [MTPAFActivity alloc];
  *&v24 = a4;
  v25 = [(MTPAFActivity *)v23 initWithType:a3 playbackRate:a5 atMilliseconds:v36 triggerType:v37 reason:v14 eventData:v24];
  if (v25)
  {
    v26 = self;
    objc_sync_enter(v26);
    v27 = [(MTPAFTracker *)v26 playlistBindings];
    objc_sync_exit(v26);

    if (v27)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v28 = v27;
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
            v33 = [v32 playlist];
            v34 = [v32 pafKit];
            [(MTPAFActivity *)v25 addItemsFromPlaylist:v33 pafKit:v34];
          }

          v29 = [v28 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v29);
      }
    }

    [(MTPAFTracker *)v26 setCurrentActivity:v25, v36];
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)stopActivity:(int64_t)a3 atMilliseconds:(unint64_t)a4 triggerType:(id)a5 reason:(id)a6 eventData:(id)a7
{
  v24 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [(MTPAFTracker *)self currentActivity];
  v15 = v14;
  if (v14)
  {
    if ([v14 activityType] == a3)
    {
      [v15 stoppedAtMilliseconds:a4 triggerType:v24 reason:v12 eventData:v13];
      [(MTPAFTracker *)self setCurrentActivity:0];
    }

    else
    {
      v22 = MTConfigurationError(110, @"MTPAFTracker inconsistent state: did you forget to call started?", v16, v17, v18, v19, v20, v21, v23);
    }
  }
}

@end