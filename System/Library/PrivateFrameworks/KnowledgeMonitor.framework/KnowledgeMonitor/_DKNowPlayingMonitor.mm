@interface _DKNowPlayingMonitor
+ (id)_bmEventWithDKEvent:(id)a3 outputDevices:(id)a4 biomeEventMetadata:(id)a5 excludeFromSuggestions:(BOOL)a6;
+ (id)_eventWithBundleIdentifier:(id)a3 metadata:(id)a4;
- (_DKNowPlayingMonitor)init;
- (id)_metadataFromInfo:(id)a3 outputDevices:(id)a4;
- (void)_nowPlayingInfoDidChange:(void *)a3 outputDevices:(id)a4;
- (void)_registerForNowPlayingNotifications;
- (void)_stripMetadata:(id)a3;
- (void)deactivate;
- (void)dealloc;
- (void)outputDevicesDidChange:(id)a3;
- (void)saveBMEventWithCurrent:(id)a3 outputDevices:(id)a4 artistStoreIdentifier:(id)a5 albumStoreIdentifier:(id)a6 excludeFromSuggestions:(BOOL)a7;
- (void)start;
- (void)stop;
@end

@implementation _DKNowPlayingMonitor

- (id)_metadataFromInfo:(id)a3 outputDevices:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277D27B60]];
  v9 = [v8 copy];

  if (v9)
  {
    v10 = [MEMORY[0x277CFE248] album];
    [v7 setObject:v9 forKey:v10];
  }

  v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277D27B70]];
  v12 = [v11 copy];

  if (v12)
  {
    v13 = [MEMORY[0x277CFE248] artist];
    [v7 setObject:v12 forKey:v13];
  }

  v14 = [v5 objectForKeyedSubscript:*MEMORY[0x277D27BD8]];
  v15 = [v14 copy];

  if (v15)
  {
    v16 = [MEMORY[0x277CFE248] duration];
    [v7 setObject:v15 forKey:v16];
  }

  v70 = v9;
  v17 = [v5 objectForKeyedSubscript:*MEMORY[0x277D27C00]];
  v18 = [v17 copy];

  if (v18)
  {
    v19 = [MEMORY[0x277CFE248] genre];
    [v7 setObject:v18 forKey:v19];
  }

  v20 = v6;
  v21 = [v5 objectForKeyedSubscript:*MEMORY[0x277D27C88]];
  v22 = [v21 copy];

  if (v22)
  {
    v23 = [MEMORY[0x277CFE248] title];
    [v7 setObject:v22 forKey:v23];
  }

  v24 = [v5 objectForKeyedSubscript:*MEMORY[0x277D27C30]];
  v25 = [v24 copy];

  if (v25)
  {
    v26 = [MEMORY[0x277CFE248] mediaType];
    [v7 setObject:v25 forKey:v26];
  }

  v72 = v25;
  v27 = [v5 objectForKeyedSubscript:*MEMORY[0x277D27CC8]];
  v28 = [v27 copy];

  if (v28)
  {
    v29 = [MEMORY[0x277CFE248] iTunesStoreIdentifier];
    [v7 setObject:v28 forKey:v29];
  }

  v68 = v18;
  v30 = [v5 objectForKeyedSubscript:*MEMORY[0x277D27CD0]];
  v31 = [v30 copy];

  if (v31)
  {
    v32 = [MEMORY[0x277CFE248] iTunesSubscriptionIdentifier];
    [v7 setObject:v31 forKey:v32];
  }

  v67 = v31;
  v33 = v28;
  v34 = v20;
  v69 = v15;
  if (v20)
  {
    v35 = [v20 count];
    v36 = v70;
    if (!v35)
    {
      v39 = 0;
      v56 = v34;
      v41 = 0x277CCA000;
      goto LABEL_48;
    }

    v63 = v12;
    v65 = v7;
    v66 = v5;
    v74 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v64 = v34;
    obj = v34;
    v37 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
    if (v37)
    {
      v38 = v37;
      LOBYTE(v39) = 0;
      v40 = *v76;
      v71 = *MEMORY[0x277D27CB8];
      v41 = 0x277CCA000uLL;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          v43 = v22;
          if (*v76 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v75 + 1) + 8 * i);
          v45 = [v44 deviceID];

          if (v45)
          {
            v46 = [*(v41 + 2992) numberWithInteger:{objc_msgSend(v44, "deviceType")}];
            v47 = [v74 objectForKeyedSubscript:v46];

            if (!v47)
            {
              v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v48 = [*(v41 + 2992) numberWithInteger:{objc_msgSend(v44, "deviceType")}];
              [v74 setObject:v47 forKeyedSubscript:v48];
            }

            v49 = [*(v41 + 2992) numberWithInteger:{objc_msgSend(v44, "deviceSubType")}];
            v50 = [v47 objectForKeyedSubscript:v49];

            if (!v50)
            {
              v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v51 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v44, "deviceSubType")}];
              [v47 setObject:v50 forKeyedSubscript:v51];
            }

            v52 = [v44 deviceID];
            [v50 addObject:v52];

            v41 = 0x277CCA000;
          }

          if (v39)
          {
            v39 = 1;
            v22 = v43;
          }

          else
          {
            v53 = v44;
            v54 = v72;
            v55 = v54;
            if (v72 && ![v54 isEqualToString:v71] || objc_msgSend(v53, "deviceType"))
            {
              v39 = 0;
            }

            else
            {
              v39 = ([v53 deviceFeatures] >> 2) & 1;
            }

            v22 = v43;
            v41 = 0x277CCA000;
          }

          v33 = v28;
        }

        v38 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
      }

      while (v38);
    }

    else
    {
      v39 = 0;
      v41 = 0x277CCA000;
    }

    v7 = v65;
    if ([v74 count])
    {
      v57 = [v74 copy];
      v58 = [MEMORY[0x277CFE248] outputDeviceIDs];
      [v65 setObject:v57 forKey:v58];

      v41 = 0x277CCA000uLL;
    }

    v5 = v66;
    v12 = v63;
    v56 = v64;
  }

  else
  {
    v39 = 0;
    v56 = 0;
    v41 = 0x277CCA000;
  }

  v36 = v70;
LABEL_48:
  v59 = [*(v41 + 2992) numberWithBool:{v39, v63}];
  v60 = [MEMORY[0x277CFE248] isAirPlayVideo];
  [v7 setObject:v59 forKeyedSubscript:v60];

  v61 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_eventWithBundleIdentifier:(id)a3 metadata:(id)a4
{
  v5 = MEMORY[0x277CFE1D8];
  v6 = MEMORY[0x277CFE298];
  v7 = a4;
  v8 = a3;
  v9 = [v6 nowPlayingStream];
  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [MEMORY[0x277CBEAA8] distantFuture];
  v12 = [MEMORY[0x277CFE1A8] withBundle:v8];

  v13 = [v5 eventWithStream:v9 startDate:v10 endDate:v11 value:v12 metadata:v7];

  return v13;
}

- (_DKNowPlayingMonitor)init
{
  v7.receiver = self;
  v7.super_class = _DKNowPlayingMonitor;
  v2 = [(_DKMonitor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(_DKMonitor *)v2 setEventComparator:&__block_literal_global_5];
    previousEvent = v3->_previousEvent;
    v3->_previousEvent = 0;

    previousBiomeEventMetadata = v3->_previousBiomeEventMetadata;
    v3->_previousBiomeEventMetadata = 0;

    v3->_bmSaveState = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(_DKNowPlayingMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKNowPlayingMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

- (void)start
{
  v6.receiver = self;
  v6.super_class = _DKNowPlayingMonitor;
  if ([(_DKMonitor *)&v6 instantMonitorNeedsActivation])
  {
    v3 = [objc_opt_class() _eventFilterBlock];
    [(_DKMonitor *)self setFilter:v3];

    v4 = [MEMORY[0x277CB8698] sharedAudioPresentationOutputContext];
    outputContext = self->_outputContext;
    self->_outputContext = v4;

    [(_DKNowPlayingMonitor *)self _registerForNowPlayingNotifications];
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKNowPlayingMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKNowPlayingMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CB8628];
  v5 = [(_DKNowPlayingMonitor *)self outputContext];
  [v3 removeObserver:self name:v4 object:v5];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = *MEMORY[0x277CB8630];
  v8 = [(_DKNowPlayingMonitor *)self outputContext];
  [v6 removeObserver:self name:v7 object:v8];

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x277D27BC8], 0);
  v10 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v10, self, *MEMORY[0x277D27B38], 0);

  MRMediaRemoteSetWantsNowPlayingNotifications();
}

- (void)_registerForNowPlayingNotifications
{
  v3 = [MEMORY[0x277CFE0C8] contextChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_22595A000, v3, OS_LOG_TYPE_INFO, "Registering for now playing events", v12, 2u);
  }

  MRMediaRemoteSetWantsNowPlayingNotifications();
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, self, _nowPlayingInfoInfoCallback, *MEMORY[0x277D27BC8], 0, CFNotificationSuspensionBehaviorDrop);
  v5 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v5, self, _nowPlayingInfoStateCallback, *MEMORY[0x277D27B38], 0, CFNotificationSuspensionBehaviorDrop);
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = *MEMORY[0x277CB8628];
  v8 = [(_DKNowPlayingMonitor *)self outputContext];
  [v6 addObserver:self selector:sel_outputDevicesDidChange_ name:v7 object:v8];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = *MEMORY[0x277CB8630];
  v11 = [(_DKNowPlayingMonitor *)self outputContext];
  [v9 addObserver:self selector:sel_outputDevicesDidChange_ name:v10 object:v11];
}

- (void)outputDevicesDidChange:(id)a3
{
  v4 = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47___DKNowPlayingMonitor_outputDevicesDidChange___block_invoke;
  block[3] = &unk_27856F060;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)saveBMEventWithCurrent:(id)a3 outputDevices:(id)a4 artistStoreIdentifier:(id)a5 albumStoreIdentifier:(id)a6 excludeFromSuggestions:(BOOL)a7
{
  v83 = a7;
  v11 = a3;
  v84 = a4;
  v12 = a5;
  v13 = a6;
  if (!self->_nowPlayingSource)
  {
    v14 = BiomeLibrary();
    v15 = [v14 Media];
    v16 = [v15 NowPlaying];
    v17 = [v16 source];
    nowPlayingSource = self->_nowPlayingSource;
    self->_nowPlayingSource = v17;
  }

  v19 = [(_DKEvent *)self->_previousEvent metadata];
  v20 = [MEMORY[0x277CFE248] playing];
  v21 = [v19 objectForKeyedSubscript:v20];

  v22 = [v11 metadata];
  v23 = [MEMORY[0x277CFE248] playing];
  v24 = [v22 objectForKeyedSubscript:v23];

  v25 = objc_opt_new();
  if (v12)
  {
    v26 = [v12 stringValue];
    [(NSDictionary *)v25 setObject:v26 forKeyedSubscript:@"iTunesArtistIdentifierKey"];
  }

  if (v13)
  {
    v27 = [v13 stringValue];
    [(NSDictionary *)v25 setObject:v27 forKeyedSubscript:@"iTunesAlbumIdentifierKey"];
  }

  v86 = v25;
  v28 = [MEMORY[0x277D27990] localDeviceInfo];
  v85 = v28;
  if ([v28 hasAirPlayActive])
  {
    v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v28, "isAirPlayActive")}];
    [(NSDictionary *)v25 setObject:v29 forKeyedSubscript:@"isAirPlayActive"];

    v28 = v85;
  }

  if ([v28 hasParentGroupContainsDiscoverableGroupLeader])
  {
    v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v85, "parentGroupContainsDiscoverableGroupLeader")}];
    [(NSDictionary *)v25 setObject:v30 forKeyedSubscript:@"parentGroupContainsDiscoverableGroupLeader"];
  }

  v31 = objc_autoreleasePoolPush();
  if (self->_previousEvent)
  {
    v76 = v31;
    v77 = v13;
    v79 = v21;
    v78 = v12;
    v32 = objc_alloc(MEMORY[0x277CBEB38]);
    v33 = [(_DKEvent *)self->_previousEvent metadata];
    v34 = [v32 initWithDictionary:v33];

    v35 = [MEMORY[0x277CFE248] duration];
    [v34 removeObjectForKey:v35];

    v36 = objc_alloc(MEMORY[0x277CBEB38]);
    v37 = [v11 metadata];
    v38 = [v36 initWithDictionary:v37];

    v39 = [MEMORY[0x277CFE248] duration];
    [v38 removeObjectForKey:v39];

    v75 = [v38 isEqualToDictionary:v34];
    v81 = v11;
    v40 = [v11 metadata];
    v41 = [MEMORY[0x277CFE248] duration];
    v42 = [v40 objectForKeyedSubscript:v41];
    [v42 floatValue];
    v44 = v43;
    v45 = [(_DKEvent *)self->_previousEvent metadata];
    v46 = [MEMORY[0x277CFE248] duration];
    v47 = [v45 objectForKeyedSubscript:v46];
    [v47 floatValue];
    v49 = v48;

    v50 = [(NSDictionary *)v86 isEqualToDictionary:self->_previousBiomeEventMetadata];
    v51 = !v75 || vabds_f32(v44, v49) >= 0.2 || !v50;
    v13 = v77;
    v12 = v78;
    v11 = v81;

    v21 = v79;
    v31 = v76;
  }

  else
  {
    v51 = 1;
  }

  objc_autoreleasePoolPop(v31);
  bmSaveState = self->_bmSaveState;
  if (bmSaveState == 2)
  {
    if ([v24 longValue] == 1)
    {
      v69 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        *v87 = 0;
        _os_log_impl(&dword_22595A000, v69, OS_LOG_TYPE_INFO, "Biome state transition Stopped -> Playing", v87, 2u);
      }

      v54 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        [_DKNowPlayingMonitor saveBMEventWithCurrent:v11 outputDevices:? artistStoreIdentifier:? albumStoreIdentifier:? excludeFromSuggestions:?];
      }

      goto LABEL_41;
    }
  }

  else if (bmSaveState == 1)
  {
    if ([v21 longValue] == 1 && (objc_msgSend(v21, "isEqualToNumber:", v24) & 1) == 0)
    {
      v74 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        *v89 = 0;
        _os_log_impl(&dword_22595A000, v74, OS_LOG_TYPE_INFO, "Biome state transition Playing -> Stopped", v89, 2u);
      }

      v70 = 2;
      goto LABEL_42;
    }

    if (v51)
    {
      v55 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *v88 = 0;
        _os_log_impl(&dword_22595A000, v55, OS_LOG_TYPE_INFO, "Biome state transition Playing -> Playing", v88, 2u);
      }

      v56 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        [_DKNowPlayingMonitor saveBMEventWithCurrent:? outputDevices:? artistStoreIdentifier:? albumStoreIdentifier:? excludeFromSuggestions:?];
      }

      v80 = v21;

      v57 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        [_DKNowPlayingMonitor saveBMEventWithCurrent:v11 outputDevices:? artistStoreIdentifier:? albumStoreIdentifier:? excludeFromSuggestions:?];
      }

      v58 = [(_DKEvent *)self->_previousEvent metadata];
      v59 = [v58 mutableCopy];

      v60 = [MEMORY[0x277CFE248] playing];
      [v59 setObject:&unk_2838F78D0 forKeyedSubscript:v60];

      v61 = objc_opt_class();
      v62 = objc_opt_class();
      [(_DKEvent *)self->_previousEvent value];
      v63 = v82 = v11;
      v64 = [v63 stringValue];
      v65 = [v62 _eventWithBundleIdentifier:v64 metadata:v59];
      v66 = [(NSDictionary *)self->_previousBiomeEventMetadata copy];
      v67 = [v61 _bmEventWithDKEvent:v65 outputDevices:v84 biomeEventMetadata:v66 excludeFromSuggestions:v83];

      v11 = v82;
      [(BMSource *)self->_nowPlayingSource sendEvent:v67];
      v68 = [objc_opt_class() _bmEventWithDKEvent:v82 outputDevices:v84 biomeEventMetadata:v86 excludeFromSuggestions:v83];
      [(BMSource *)self->_nowPlayingSource sendEvent:v68];

      v21 = v80;
      goto LABEL_43;
    }
  }

  else if (!bmSaveState && [v24 longValue] == 1)
  {
    v53 = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22595A000, v53, OS_LOG_TYPE_INFO, "Biome state transition Unknown -> Playing", buf, 2u);
    }

    v54 = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      [_DKNowPlayingMonitor saveBMEventWithCurrent:v11 outputDevices:? artistStoreIdentifier:? albumStoreIdentifier:? excludeFromSuggestions:?];
    }

LABEL_41:

    v70 = 1;
LABEL_42:
    self->_bmSaveState = v70;
    v59 = [objc_opt_class() _bmEventWithDKEvent:v11 outputDevices:v84 biomeEventMetadata:v86 excludeFromSuggestions:v83];
    [(BMSource *)self->_nowPlayingSource sendEvent:v59];
LABEL_43:
  }

  previousEvent = self->_previousEvent;
  self->_previousEvent = v11;
  v72 = v11;

  previousBiomeEventMetadata = self->_previousBiomeEventMetadata;
  self->_previousBiomeEventMetadata = v86;
}

- (void)_nowPlayingInfoDidChange:(void *)a3 outputDevices:(id)a4
{
  v5 = a4;
  v6 = dispatch_group_create();
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = __Block_byref_object_copy__4;
  v66[4] = __Block_byref_object_dispose__4;
  v67 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = __Block_byref_object_copy__4;
  v64[4] = __Block_byref_object_dispose__4;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__4;
  v62[4] = __Block_byref_object_dispose__4;
  v63 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v61 = 0;
  dispatch_group_enter(v6);
  v7 = os_transaction_create();
  v8 = [(_DKMonitor *)self queue];
  v48 = MEMORY[0x277D85DD0];
  v49 = 3221225472;
  v50 = __63___DKNowPlayingMonitor__nowPlayingInfoDidChange_outputDevices___block_invoke;
  v51 = &unk_27856F4E8;
  v56 = v66;
  v52 = self;
  v9 = v5;
  v53 = v9;
  v57 = v64;
  v58 = v62;
  v59 = v60;
  v10 = v6;
  v54 = v10;
  v11 = v7;
  v55 = v11;
  MRMediaRemoteGetNowPlayingInfoWithOptionalArtwork();

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy__4;
  v46[4] = __Block_byref_object_dispose__4;
  v47 = 0;
  dispatch_group_enter(v10);
  v12 = [(_DKMonitor *)self queue];
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = __63___DKNowPlayingMonitor__nowPlayingInfoDidChange_outputDevices___block_invoke_2;
  v42 = &unk_27856F510;
  v45 = v46;
  v13 = v10;
  v43 = v13;
  v14 = v11;
  v44 = v14;
  MRMediaRemoteGetNowPlayingClientForOrigin();

  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  dispatch_group_enter(v13);
  v15 = [(_DKMonitor *)self queue];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __63___DKNowPlayingMonitor__nowPlayingInfoDidChange_outputDevices___block_invoke_66;
  v33 = &unk_27856F538;
  v36 = v37;
  v16 = v13;
  v34 = v16;
  v35 = v14;
  MRMediaRemoteGetNowPlayingApplicationPlaybackState();

  v17 = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63___DKNowPlayingMonitor__nowPlayingInfoDidChange_outputDevices___block_invoke_2_68;
  block[3] = &unk_27856F560;
  v25 = v66;
  v26 = v60;
  v21 = v9;
  v22 = self;
  v27 = v37;
  v28 = v64;
  v29 = v62;
  v23 = v35;
  v24 = v46;
  v18 = v35;
  v19 = v9;
  dispatch_group_notify(v16, v17, block);

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v46, 8);

  _Block_object_dispose(v60, 8);
  _Block_object_dispose(v62, 8);

  _Block_object_dispose(v64, 8);
  _Block_object_dispose(v66, 8);
}

- (void)_stripMetadata:(id)a3
{
  v3 = MEMORY[0x277CFE248];
  v4 = a3;
  v5 = [v3 album];
  [v4 removeObjectForKey:v5];

  v6 = [MEMORY[0x277CFE248] artist];
  [v4 removeObjectForKey:v6];

  v7 = [MEMORY[0x277CFE248] duration];
  [v4 removeObjectForKey:v7];

  v8 = [MEMORY[0x277CFE248] elapsed];
  [v4 removeObjectForKey:v8];

  v9 = [MEMORY[0x277CFE248] genre];
  [v4 removeObjectForKey:v9];

  v10 = [MEMORY[0x277CFE248] iTunesStoreIdentifier];
  [v4 removeObjectForKey:v10];

  v11 = [MEMORY[0x277CFE248] iTunesSubscriptionIdentifier];
  [v4 removeObjectForKey:v11];

  v12 = [MEMORY[0x277CFE248] title];
  [v4 removeObjectForKey:v12];
}

+ (id)_bmEventWithDKEvent:(id)a3 outputDevices:(id)a4 biomeEventMetadata:(id)a5 excludeFromSuggestions:(BOOL)a6
{
  v118 = *MEMORY[0x277D85DE8];
  v9 = a3;
  obj = a4;
  v105 = a5;
  v10 = [v9 metadata];
  v11 = [MEMORY[0x277CFE248] playing];
  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = [v12 unsignedIntValue];

  v94 = objc_alloc(MEMORY[0x277CF1320]);
  if (a6)
  {
    v103 = 0;
  }

  else
  {
    v83 = [v9 source];
    v103 = [v83 itemID];
  }

  v14 = [v9 startDate];
  if (v13 >= 6)
  {
    v15 = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_DKNowPlayingMonitor _bmEventWithDKEvent:v13 outputDevices:v15 biomeEventMetadata:? excludeFromSuggestions:?];
    }

    v13 = 0;
  }

  v95 = v13;
  if (a6)
  {
    v16 = 0;
    v100 = 0;
    v102 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v20 = [v9 metadata];
    v81 = [MEMORY[0x277CFE248] album];
    v82 = v20;
    v102 = [v20 objectForKeyedSubscript:?];
    v21 = [v9 metadata];
    v13 = [MEMORY[0x277CFE248] artist];
    v80 = v21;
    v17 = [v21 objectForKeyedSubscript:v13];
    v22 = [v9 metadata];
    v78 = [MEMORY[0x277CFE248] duration];
    v79 = v22;
    v100 = [v22 objectForKeyedSubscript:?];
    v23 = [v9 metadata];
    v76 = [MEMORY[0x277CFE248] genre];
    v77 = v23;
    v18 = [v23 objectForKeyedSubscript:?];
    v24 = [v9 metadata];
    v74 = [MEMORY[0x277CFE248] title];
    v75 = v24;
    v16 = [v24 objectForKeyedSubscript:?];
    v25 = [v9 metadata];
    v72 = [MEMORY[0x277CFE248] elapsed];
    v73 = v25;
    v19 = [v25 objectForKeyedSubscript:?];
  }

  v26 = [v9 metadata];
  [MEMORY[0x277CFE248] mediaType];
  v92 = v91 = v26;
  [v26 objectForKeyedSubscript:?];
  v97 = v14;
  v98 = v19;
  v104 = a6;
  v101 = v17;
  v84 = v13;
  v93 = v18;
  v90 = v99 = v16;
  if (a6)
  {
    v107 = 0;
    v27 = 0;
  }

  else
  {
    v28 = [v9 metadata];
    v70 = [MEMORY[0x277CFE248] iTunesStoreIdentifier];
    v71 = v28;
    v69 = [v28 objectForKeyedSubscript:?];
    v107 = [v69 stringValue];
    v29 = [v9 metadata];
    v67 = [MEMORY[0x277CFE248] iTunesSubscriptionIdentifier];
    v68 = v29;
    v66 = [v29 objectForKeyedSubscript:?];
    v27 = [v66 stringValue];
  }

  v89 = v27;
  v106 = v9;
  v30 = [v9 metadata];
  v87 = [MEMORY[0x277CFE248] isAirPlayVideo];
  v88 = v30;
  v86 = [v30 objectForKeyedSubscript:?];
  v31 = obj;
  v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v31, "count")}];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  obja = v31;
  v33 = [obja countByEnumeratingWithState:&v111 objects:v115 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v112;
    do
    {
      v36 = 0;
      do
      {
        if (*v112 != v35)
        {
          objc_enumerationMutation(obja);
        }

        v37 = *(*(&v111 + 1) + 8 * v36);
        v38 = objc_alloc(MEMORY[0x277CF1328]);
        v39 = [v37 deviceType];
        v40 = v39;
        if (v39 >= 5)
        {
          v42 = [MEMORY[0x277CFE0C8] contextChannel];
          if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            v117 = v40;
            _os_log_fault_impl(&dword_22595A000, v42, OS_LOG_TYPE_FAULT, "BMMediaNowPlayingOutputDeviceType: Unrecognized value for outputDevice: %ld", buf, 0xCu);
          }

          v41 = 0;
        }

        else
        {
          v41 = (v39 + 1);
        }

        v43 = [v37 deviceSubType];
        v44 = v43;
        if (v43 >= 0x15)
        {
          v46 = [MEMORY[0x277CFE0C8] contextChannel];
          if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            v117 = v44;
            _os_log_fault_impl(&dword_22595A000, v46, OS_LOG_TYPE_FAULT, "BMMediaNowPlayingOutputDeviceSubType: Unrecognized value for outputSubtype: %ld", buf, 0xCu);
          }

          v45 = 0;
        }

        else
        {
          v45 = (v43 + 1);
        }

        v47 = [v37 deviceID];
        v48 = [v38 initWithType:v41 subType:v45 outputDeviceID:v47];
        [v32 addObject:v48];

        ++v36;
      }

      while (v34 != v36);
      v34 = [obja countByEnumeratingWithState:&v111 objects:v115 count:16];
    }

    while (v34);
  }

  v49 = [v106 value];
  [v49 stringValue];
  v85 = v108 = v49;
  if (v104)
  {
    v50 = 0;
    v51 = 0;
    v52 = v105;
  }

  else
  {
    v52 = v105;
    v50 = [v105 objectForKeyedSubscript:@"iTunesArtistIdentifierKey"];
    v51 = [v105 objectForKeyedSubscript:@"iTunesAlbumIdentifierKey"];
  }

  v53 = v97;
  v54 = v86;
  v55 = [v52 objectForKeyedSubscript:@"isAirPlayActive"];
  v56 = [v52 objectForKeyedSubscript:@"parentGroupContainsDiscoverableGroupLeader"];
  v57 = v90;
  v96 = [v94 initWithUniqueID:v103 absoluteTimestamp:v97 playbackState:v95 album:v102 artist:v101 duration:v100 genre:v93 title:v99 elapsed:v98 mediaType:v90 iTunesStoreIdentifier:v107 iTunesSubscriptionIdentifier:v89 isAirPlayVideo:v86 outputDevices:v32 bundleID:v85 iTunesArtistIdentifier:v50 iTunesAlbumIdentifier:v51 groupIdentifier:0 isRemoteControl:0 itemMediaType:0 itemMediaSubtype:v55 isAirPlayActive:v56 parentGroupContainsDiscoverableGroupLeader:?];

  if (v104)
  {
    v58 = v85;
    v59 = v108;
    v60 = v87;
    v61 = v88;
    v62 = v97;
    v63 = v91;
    v53 = v92;
  }

  else
  {

    v57 = v82;
    v62 = v83;
    v60 = v102;
    v63 = v103;
    v54 = v80;
    v61 = v81;
    v59 = v101;
    v32 = v84;
    v58 = v79;
  }

  v64 = *MEMORY[0x277D85DE8];

  return v96;
}

- (void)saveBMEventWithCurrent:(void *)a1 outputDevices:artistStoreIdentifier:albumStoreIdentifier:excludeFromSuggestions:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 metadata];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(&dword_22595A000, v2, v3, "Biome new metadata:%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)saveBMEventWithCurrent:(id *)a1 outputDevices:artistStoreIdentifier:albumStoreIdentifier:excludeFromSuggestions:.cold.2(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 metadata];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(&dword_22595A000, v2, v3, "Biome old metadata:%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_bmEventWithDKEvent:(uint64_t)a1 outputDevices:(NSObject *)a2 biomeEventMetadata:excludeFromSuggestions:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_22595A000, a2, OS_LOG_TYPE_ERROR, "BMMediaNowPlaying: unable to convert MRPlaybackState enum value: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end