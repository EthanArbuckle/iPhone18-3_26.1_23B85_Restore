@interface MRDMediaServerNowPlayingDataSource
- (AVSystemController)mediaServerController;
- (BOOL)nowPlayingApplicationIsInterrupted;
- (BOOL)nowPlayingApplicationIsPlaying;
- (BOOL)shouldSendCommand:(id)a3;
- (MRDMediaServerNowPlayingDataSource)init;
- (NSDictionary)nowPlayingApplications;
- (NSDictionary)nowPlayingAudioFormatContentInfos;
- (NSDictionary)nowPlayingSessions;
- (NSString)nowPlayingApplicationDisplayID;
- (id)audioFormatContentInfoForApplication:(id)a3 cachedAudioFormatContentInfo:(id)a4;
- (id)bestAvailableContentForConsolidatedSourceContentInfo:(id)a3;
- (id)contentInfoForConsolidatedSourceContentInfo:(id)a3;
- (id)description;
- (id)nowPlayingApplicationsFromSessionsArray:(id)a3;
- (id)nowPlayingAudioFormatContentInfosFromNowPlayingApplications:(id)a3;
- (id)topOfNowPlayingAppStack;
- (int)nowPlayingApplicationPID;
- (void)_avSessionMediaServicesResetNotification:(id)a3;
- (void)_nowPlayingAppDidChangeNotification:(id)a3;
- (void)_nowPlayingAppIsPlayingDidChangeNotification:(id)a3;
- (void)_popNowPlayingAppStack;
- (void)_renderingModeChangeNotification:(id)a3;
- (void)_someSessionIsPlayingDidChangeNotification:(id)a3;
- (void)_sourceFormatInfoDidChangeNotification:(id)a3;
- (void)_updateNowPlayingAudioFormatContentInfo;
- (void)dealloc;
- (void)loadMediaServerState;
- (void)loadMediaServerStateWithController:(id)a3;
- (void)resetMediaServerState;
- (void)setMediaServerController:(id)a3;
- (void)setNowPlayingApplicationDisplayID:(id)a3;
- (void)setNowPlayingApplicationIsPlaying:(BOOL)a3;
- (void)setNowPlayingApplications:(id)a3;
- (void)setNowPlayingAudioFormatContentInfos:(id)a3;
- (void)setNowPlayingSessions:(id)a3;
@end

@implementation MRDMediaServerNowPlayingDataSource

- (NSString)nowPlayingApplicationDisplayID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_cachedNowPlayingAppDisplayID;
  if ([(NSString *)v2->_cachedNowPlayingAppDisplayID isEqualToString:@"AirMusic"]|| [(NSString *)v2->_cachedNowPlayingAppDisplayID isEqualToString:@"com.apple.AirMusic"])
  {
    v4 = @"com.apple.Music";
LABEL_4:

    v3 = v4;
    goto LABEL_5;
  }

  if ([(NSString *)v2->_cachedNowPlayingAppDisplayID isEqualToString:@"AirPodcasts"]|| [(NSString *)v2->_cachedNowPlayingAppDisplayID isEqualToString:@"com.apple.AirPodcasts"])
  {
    v4 = @"com.apple.podcasts";
    goto LABEL_4;
  }

LABEL_5:
  v5 = [(__CFString *)v3 copy];

  objc_sync_exit(v2);

  return v5;
}

- (int)nowPlayingApplicationPID
{
  v2 = self;
  objc_sync_enter(v2);
  cachedNowPlayingAppPID = v2->_cachedNowPlayingAppPID;
  objc_sync_exit(v2);

  return cachedNowPlayingAppPID;
}

- (void)_updateNowPlayingAudioFormatContentInfo
{
  v3 = [(MRDMediaServerNowPlayingDataSource *)self nowPlayingApplications];
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v5 = [(MRDMediaServerNowPlayingDataSource *)self nowPlayingAudioFormatContentInfos];
  if ([v3 count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = v3;
    v6 = [v3 allValues];
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          v12 = [v11 audioSessionID];
          v13 = [v5 objectForKeyedSubscript:v12];

          v14 = [(MRDMediaServerNowPlayingDataSource *)self audioFormatContentInfoForApplication:v11 cachedAudioFormatContentInfo:v13];
          v15 = [v11 audioSessionID];
          [v4 setObject:v14 forKeyedSubscript:v15];
        }

        v8 = [v6 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v8);
    }

    v16 = [v4 copy];
    cachedAudioFormatContentInfos = self->_cachedAudioFormatContentInfos;
    self->_cachedAudioFormatContentInfos = v16;

    v18 = [(MRDNowPlayingDataSource *)self observersForSelector:"nowPlayingDataSourceNowPlayingAudioFormatContentInfosDidChange:"];
    if ([v18 count])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = v18;
      v19 = [v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v27;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v26 + 1) + 8 * j) nowPlayingDataSourceNowPlayingAudioFormatContentInfosDidChange:self];
          }

          v20 = [v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
        }

        while (v20);
      }
    }

    v3 = v25;
  }

  else
  {
    v18 = _MRLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v24 = self->_cachedAudioFormatContentInfos;
      *buf = 138543618;
      v35 = v23;
      v36 = 2114;
      v37 = v24;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ skipping update with no now playing applications | cached audio format content info: %{public}@", buf, 0x16u);
    }
  }
}

- (NSDictionary)nowPlayingApplications
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSDictionary *)v2->_cachedNowPlayingApplications copy];
  objc_sync_exit(v2);

  return v3;
}

- (NSDictionary)nowPlayingAudioFormatContentInfos
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSDictionary *)v2->_cachedAudioFormatContentInfos copy];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)nowPlayingApplicationIsInterrupted
{
  v2 = [(MRDMediaServerNowPlayingDataSource *)self mediaServerController];
  v3 = [v2 attributeForKey:AVSystemController_NowPlayingAppIsInterruptedAttribute];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)nowPlayingApplicationIsPlaying
{
  v2 = self;
  objc_sync_enter(v2);
  cachedNowPlayingAppIsPlaying = v2->_cachedNowPlayingAppIsPlaying;
  objc_sync_exit(v2);

  return cachedNowPlayingAppIsPlaying;
}

- (AVSystemController)mediaServerController
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000351EC;
  v10 = sub_100035AAC;
  v11 = 0;
  mediaServerControllerLock = self->_mediaServerControllerLock;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100020C2C;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mediaServerControllerLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (MRDMediaServerNowPlayingDataSource)init
{
  v10.receiver = self;
  v10.super_class = MRDMediaServerNowPlayingDataSource;
  v2 = [(MRDNowPlayingDataSource *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mediaremote.MRDMediaServerNowPlayingDataSource", &_dispatch_queue_attr_concurrent);
    mediaServerControllerLock = v2->_mediaServerControllerLock;
    v2->_mediaServerControllerLock = v3;

    [(MRDMediaServerNowPlayingDataSource *)v2 loadMediaServerState];
    v5 = [[MSVLRUDictionary alloc] initWithMaximumCapacity:10];
    cachedAudioSessions = v2->_cachedAudioSessions;
    v2->_cachedAudioSessions = v5;

    v7 = objc_alloc_init(MSVWeakLinkClass());
    callObserver = v2->_callObserver;
    v2->_callObserver = v7;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MRDMediaServerNowPlayingDataSource;
  [(MRDMediaServerNowPlayingDataSource *)&v4 dealloc];
}

- (void)setNowPlayingApplications:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [v4 allValues];
    v8 = MRCreateIndentedDebugDescriptionFromArray();
    v12 = 138543874;
    v13 = v6;
    v14 = 2114;
    v15 = @"nowPlayingApplications";
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v12, 0x20u);
  }

  v9 = self;
  objc_sync_enter(v9);
  v10 = [v4 copy];
  cachedNowPlayingApplications = v9->_cachedNowPlayingApplications;
  v9->_cachedNowPlayingApplications = v10;

  objc_sync_exit(v9);
}

- (NSDictionary)nowPlayingSessions
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSDictionary *)v2->_cachedNowPlayingSessions copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setNowPlayingSessions:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [v4 allValues];
    v8 = MRCreateIndentedDebugDescriptionFromArray();
    v12 = 138543874;
    v13 = v6;
    v14 = 2114;
    v15 = @"nowPlayingSessions";
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v12, 0x20u);
  }

  v9 = self;
  objc_sync_enter(v9);
  v10 = [v4 copy];
  cachedNowPlayingSessions = v9->_cachedNowPlayingSessions;
  v9->_cachedNowPlayingSessions = v10;

  objc_sync_exit(v9);
}

- (void)setNowPlayingAudioFormatContentInfos:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [v4 allValues];
    v8 = MRCreateIndentedDebugDescriptionFromArray();
    v12 = 138543874;
    v13 = v6;
    v14 = 2114;
    v15 = @"nowPlayingAudioFormatContentInfos";
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v12, 0x20u);
  }

  v9 = self;
  objc_sync_enter(v9);
  v10 = [v4 copy];
  cachedAudioFormatContentInfos = v9->_cachedAudioFormatContentInfos;
  v9->_cachedAudioFormatContentInfos = v10;

  objc_sync_exit(v9);
}

- (void)setNowPlayingApplicationDisplayID:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543874;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = @"nowPlayingApplicationDisplayID";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v9, 0x20u);
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [v4 copy];
  cachedNowPlayingAppDisplayID = v6->_cachedNowPlayingAppDisplayID;
  v6->_cachedNowPlayingAppDisplayID = v7;

  objc_sync_exit(v6);
}

- (void)setNowPlayingApplicationIsPlaying:(BOOL)a3
{
  v3 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    v9 = 138543874;
    v10 = v6;
    v11 = 2114;
    v12 = @"nowPlayingApplicationIsPlaying";
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v9, 0x20u);
  }

  v8 = self;
  objc_sync_enter(v8);
  v8->_cachedNowPlayingAppIsPlaying = v3;
  objc_sync_exit(v8);
}

- (BOOL)shouldSendCommand:(id)a3
{
  if ([a3 originatedFromAccessory])
  {
    v4 = [(MRDMediaServerNowPlayingDataSource *)self mediaServerController];
    v5 = [v4 attributeForKey:AVSystemController_ShouldIgnorePlayCommandsFromAccessoryAttribute];

    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v6 = [v5 BOOLValue] ^ 1;
      v7 = _MRLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412546;
        v10 = AVSystemController_ShouldIgnorePlayCommandsFromAccessoryAttribute;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MediaServerNowPlayingDataSource] AVSystemController.%@=%@", &v9, 0x16u);
      }
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)topOfNowPlayingAppStack
{
  v2 = [(MRDMediaServerNowPlayingDataSource *)self mediaServerController];
  v3 = [v2 topOfNowPlayingAppStack];

  return v3;
}

- (void)_popNowPlayingAppStack
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MediaServerNowPlayingDataSource] Popping nowPlayingAppStack..", v5, 2u);
  }

  v4 = [(MRDMediaServerNowPlayingDataSource *)self mediaServerController];
  [v4 popNowPlayingAppStack];
}

- (void)_nowPlayingAppDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(MRDMediaServerNowPlayingDataSource *)self mediaServerController];
  v6 = [v5 attributeForKey:AVSystemController_NowPlayingAppDisplayIDAttribute];
  v7 = [v6 copy];

  v8 = [v5 attributeForKey:AVSystemController_NowPlayingAppIsPlayingAttribute];
  v9 = [v8 BOOLValue];

  v10 = [v5 attributeForKey:AVSystemController_NowPlayingAppPIDAttribute];
  v11 = [v10 intValue];

  v12 = self;
  objc_sync_enter(v12);
  [(MRDMediaServerNowPlayingDataSource *)v12 setNowPlayingApplicationDisplayID:v7];
  [(MRDMediaServerNowPlayingDataSource *)v12 setNowPlayingApplicationPID:v11];
  [(MRDMediaServerNowPlayingDataSource *)v12 setNowPlayingApplicationIsPlaying:v9];
  objc_sync_exit(v12);

  v13 = [(MRDNowPlayingDataSource *)v12 observersForSelector:"nowPlayingDataSourceNowPlayingApplicationDidChange:"];
  if ([v13 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v15)
    {
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v18 + 1) + 8 * v17) nowPlayingDataSourceNowPlayingApplicationDidChange:{v12, v18}];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v15);
    }
  }
}

- (void)_nowPlayingAppIsPlayingDidChangeNotification:(id)a3
{
  v4 = [(MRDMediaServerNowPlayingDataSource *)self mediaServerController];
  v5 = [v4 attributeForKey:AVSystemController_NowPlayingAppIsPlayingAttribute];
  -[MRDMediaServerNowPlayingDataSource setNowPlayingApplicationIsPlaying:](self, "setNowPlayingApplicationIsPlaying:", [v5 BOOLValue]);

  v6 = [(MRDNowPlayingDataSource *)self observersForSelector:"nowPlayingDataSourceNowPlayingApplicationPlaybackStateDidChange:"];
  if ([v6 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11) nowPlayingDataSourceNowPlayingApplicationPlaybackStateDidChange:{self, v12}];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)_someSessionIsPlayingDidChangeNotification:(id)a3
{
  v4 = [(MRDMediaServerNowPlayingDataSource *)self mediaServerController];
  v5 = [v4 attributeForKey:AVSystemController_PlayingSessionsDescriptionAttribute];

  if (v5)
  {
    v6 = [(MRDMediaServerNowPlayingDataSource *)self nowPlayingApplicationsFromSessionsArray:v5];
    [(MRDMediaServerNowPlayingDataSource *)self setNowPlayingApplications:v6];

    v7 = [(MRDNowPlayingDataSource *)self observersForSelector:"nowPlayingDataSourceNowPlayingApplicationsPlaybackStateDidChange:"];
    if ([v7 count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v13 + 1) + 8 * v12) nowPlayingDataSourceNowPlayingApplicationsPlaybackStateDidChange:{self, v13}];
            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }
  }
}

- (void)_sourceFormatInfoDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MediaServerNowPlayingDataSource] %@ Handling %@", &v7, 0x16u);
  }

  v6 = self;
  objc_sync_enter(v6);
  [(MRDMediaServerNowPlayingDataSource *)v6 _updateNowPlayingAudioFormatContentInfo];
  objc_sync_exit(v6);
}

- (void)_renderingModeChangeNotification:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ Handling %@", &v7, 0x16u);
  }

  v6 = self;
  objc_sync_enter(v6);
  [(MRDMediaServerNowPlayingDataSource *)v6 _updateNowPlayingAudioFormatContentInfo];
  objc_sync_exit(v6);
}

- (void)_avSessionMediaServicesResetNotification:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 object];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MediaServerNowPlayingDataSource] AVAudioSessionMediaServicesWereReset notification received %@", &v7, 0xCu);
  }

  [(MRDMediaServerNowPlayingDataSource *)self resetMediaServerState];
  [(MRDMediaServerNowPlayingDataSource *)self loadMediaServerState];
}

- (void)setMediaServerController:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = @"YES";
    if (!v4)
    {
      v7 = @"NO";
    }

    *buf = 138543874;
    v17 = v6;
    v18 = 2114;
    v19 = @"mediaServerController";
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", buf, 0x20u);
  }

  mediaServerControllerLock = self->_mediaServerControllerLock;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10016D604;
  v13 = &unk_1004B68F0;
  v14 = self;
  v15 = v4;
  v9 = v4;
  dispatch_barrier_sync(mediaServerControllerLock, &v10);
  [(MRDMediaServerNowPlayingDataSource *)self loadMediaServerStateWithController:v9, v10, v11, v12, v13, v14];
}

- (void)loadMediaServerState
{
  v3 = [(MRDMediaServerNowPlayingDataSource *)self _createMediaServerController];
  [(MRDMediaServerNowPlayingDataSource *)self setMediaServerController:v3];
}

- (void)loadMediaServerStateWithController:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v83 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MediaServerNowPlayingDataSource] loadMediaServerState: %@", buf, 0xCu);
  }

  if (AVSystemController_ServerConnectionDiedNotification)
  {
    v81 = AVSystemController_ServerConnectionDiedNotification;
    v6 = [NSArray arrayWithObjects:&v81 count:1];
    [v4 setAttribute:v6 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"_avSessionMediaServicesResetNotification:" name:AVSystemController_ServerConnectionDiedNotification object:v4];
  }

  if (AVSystemController_NowPlayingAppPIDDidChangeNotification)
  {
    v80 = AVSystemController_NowPlayingAppPIDDidChangeNotification;
    v8 = [NSArray arrayWithObjects:&v80 count:1];
    [v4 setAttribute:v8 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"_nowPlayingAppDidChangeNotification:" name:AVSystemController_NowPlayingAppPIDDidChangeNotification object:v4];
  }

  if (AVSystemController_NowPlayingAppIsPlayingDidChangeNotification)
  {
    v79 = AVSystemController_NowPlayingAppIsPlayingDidChangeNotification;
    v10 = [NSArray arrayWithObjects:&v79 count:1];
    [v4 setAttribute:v10 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"_nowPlayingAppIsPlayingDidChangeNotification:" name:AVSystemController_NowPlayingAppIsPlayingDidChangeNotification object:v4];
  }

  v12 = +[MRUserSettings currentSettings];
  v13 = [v12 needsMXApplications];

  if (v13)
  {
    if (AVSystemController_SomeSessionIsPlayingDidChangeNotification)
    {
      v78 = AVSystemController_SomeSessionIsPlayingDidChangeNotification;
      v14 = [NSArray arrayWithObjects:&v78 count:1];
      [v4 setAttribute:v14 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

      v15 = +[NSNotificationCenter defaultCenter];
      [v15 addObserver:self selector:"_someSessionIsPlayingDidChangeNotification:" name:AVSystemController_SomeSessionIsPlayingDidChangeNotification object:v4];
    }

    if (AVSystemController_SourceFormatInfoDidChangeNotification)
    {
      v77 = AVSystemController_SourceFormatInfoDidChangeNotification;
      v16 = [NSArray arrayWithObjects:&v77 count:1];
      [v4 setAttribute:v16 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

      v17 = +[NSNotificationCenter defaultCenter];
      [v17 addObserver:self selector:"_sourceFormatInfoDidChangeNotification:" name:AVSystemController_SourceFormatInfoDidChangeNotification object:v4];
    }
  }

  v18 = [v4 attributeForKey:AVSystemController_NowPlayingAppDisplayIDAttribute];
  v19 = [v18 copy];

  v20 = [v4 attributeForKey:AVSystemController_NowPlayingAppIsPlayingAttribute];
  v21 = [v20 BOOLValue];

  v22 = [v4 attributeForKey:AVSystemController_NowPlayingAppPIDAttribute];
  v23 = [v22 intValue];

  v24 = +[MRUserSettings currentSettings];
  v25 = [v24 needsMXApplications];

  if (v25)
  {
    v26 = [v4 attributeForKey:AVSystemController_PlayingSessionsDescriptionAttribute];
    v27 = [(MRDMediaServerNowPlayingDataSource *)self nowPlayingApplicationsFromSessionsArray:v26];

    v28 = [(MRDMediaServerNowPlayingDataSource *)self nowPlayingAudioFormatContentInfosFromNowPlayingApplications:v27];
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v29 = self;
  objc_sync_enter(v29);
  [(MRDMediaServerNowPlayingDataSource *)v29 setNowPlayingApplicationDisplayID:v19];
  [(MRDMediaServerNowPlayingDataSource *)v29 setNowPlayingApplicationIsPlaying:v21];
  [(MRDMediaServerNowPlayingDataSource *)v29 setNowPlayingApplicationPID:v23];
  [(MRDMediaServerNowPlayingDataSource *)v29 setNowPlayingSessions:0];
  [(MRDMediaServerNowPlayingDataSource *)v29 setNowPlayingApplications:v27];
  [(MRDMediaServerNowPlayingDataSource *)v29 setNowPlayingAudioFormatContentInfos:v28];
  objc_sync_exit(v29);

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v30 = [(MRDNowPlayingDataSource *)v29 observersForSelector:"nowPlayingDataSourceNowPlayingApplicationDidChange:"];
  v31 = [v30 countByEnumeratingWithState:&v68 objects:v76 count:16];
  if (v31)
  {
    v32 = *v69;
    do
    {
      v33 = 0;
      do
      {
        if (*v69 != v32)
        {
          objc_enumerationMutation(v30);
        }

        [*(*(&v68 + 1) + 8 * v33) nowPlayingDataSourceNowPlayingApplicationDidChange:v29];
        v33 = v33 + 1;
      }

      while (v31 != v33);
      v31 = [v30 countByEnumeratingWithState:&v68 objects:v76 count:16];
    }

    while (v31);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v34 = [(MRDNowPlayingDataSource *)v29 observersForSelector:"nowPlayingDataSourceNowPlayingApplicationPlaybackStateDidChange:"];
  v35 = [v34 countByEnumeratingWithState:&v64 objects:v75 count:16];
  if (v35)
  {
    v36 = *v65;
    do
    {
      v37 = 0;
      do
      {
        if (*v65 != v36)
        {
          objc_enumerationMutation(v34);
        }

        [*(*(&v64 + 1) + 8 * v37) nowPlayingDataSourceNowPlayingApplicationPlaybackStateDidChange:v29];
        v37 = v37 + 1;
      }

      while (v35 != v37);
      v35 = [v34 countByEnumeratingWithState:&v64 objects:v75 count:16];
    }

    while (v35);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v38 = [(MRDNowPlayingDataSource *)v29 observersForSelector:"nowPlayingDataSourceNowPlayingSessionsPlaybackStateDidChange:"];
  v39 = [v38 countByEnumeratingWithState:&v60 objects:v74 count:16];
  if (v39)
  {
    v40 = *v61;
    do
    {
      v41 = 0;
      do
      {
        if (*v61 != v40)
        {
          objc_enumerationMutation(v38);
        }

        [*(*(&v60 + 1) + 8 * v41) nowPlayingDataSourceNowPlayingSessionsPlaybackStateDidChange:v29];
        v41 = v41 + 1;
      }

      while (v39 != v41);
      v39 = [v38 countByEnumeratingWithState:&v60 objects:v74 count:16];
    }

    while (v39);
  }

  v42 = +[MRUserSettings currentSettings];
  v43 = [v42 needsMXApplications];

  if (v43)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v44 = [(MRDNowPlayingDataSource *)v29 observersForSelector:"nowPlayingDataSourceNowPlayingApplicationsPlaybackStateDidChange:"];
    v45 = [v44 countByEnumeratingWithState:&v56 objects:v73 count:16];
    if (v45)
    {
      v46 = *v57;
      do
      {
        v47 = 0;
        do
        {
          if (*v57 != v46)
          {
            objc_enumerationMutation(v44);
          }

          [*(*(&v56 + 1) + 8 * v47) nowPlayingDataSourceNowPlayingApplicationsPlaybackStateDidChange:v29];
          v47 = v47 + 1;
        }

        while (v45 != v47);
        v45 = [v44 countByEnumeratingWithState:&v56 objects:v73 count:16];
      }

      while (v45);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v48 = [(MRDNowPlayingDataSource *)v29 observersForSelector:"nowPlayingDataSourceNowPlayingAudioFormatContentInfosDidChange:", 0];
    v49 = [v48 countByEnumeratingWithState:&v52 objects:v72 count:16];
    if (v49)
    {
      v50 = *v53;
      do
      {
        v51 = 0;
        do
        {
          if (*v53 != v50)
          {
            objc_enumerationMutation(v48);
          }

          [*(*(&v52 + 1) + 8 * v51) nowPlayingDataSourceNowPlayingAudioFormatContentInfosDidChange:v29];
          v51 = v51 + 1;
        }

        while (v49 != v51);
        v49 = [v48 countByEnumeratingWithState:&v52 objects:v72 count:16];
      }

      while (v49);
    }
  }
}

- (void)resetMediaServerState
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MediaServerNowPlayingDataSource] resetMediaServerState", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:AVSystemController_ServerConnectionDiedNotification object:0];
  [v4 removeObserver:self name:AVSystemController_NowPlayingAppPIDDidChangeNotification object:0];
  [v4 removeObserver:self name:AVSystemController_NowPlayingAppIsPlayingDidChangeNotification object:0];
  [v4 removeObserver:self name:AVSystemController_SomeSessionIsPlayingDidChangeNotification object:0];
  [v4 removeObserver:self name:AVSystemController_SourceFormatInfoDidChangeNotification object:0];
}

- (id)nowPlayingApplicationsFromSessionsArray:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:AVSystemController_PlayingSessionsDescriptionKey_ClientPID];
        v11 = [v9 objectForKeyedSubscript:AVSystemController_PlayingSessionsDescriptionKey_AudioSessionID];
        v12 = [v9 objectForKeyedSubscript:AVSystemController_PlayingSessionsDescriptionKey_MXSessionIDs];
        v13 = [NSSet setWithArray:v12];

        v14 = [v9 objectForKeyedSubscript:AVSystemController_PlayingSessionsDescriptionKey_IsNowPlayingEligible];
        v15 = -[MRDNowPlayingDataSourceApplication initWithPID:audioSessionID:mxSessionIDs:isEligible:]([MRDNowPlayingDataSourceApplication alloc], "initWithPID:audioSessionID:mxSessionIDs:isEligible:", [v10 intValue], v11, v13, objc_msgSend(v14, "BOOLValue"));
        [v4 setObject:v15 forKeyedSubscript:v11];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v16 = [v4 copy];

  return v16;
}

- (id)nowPlayingAudioFormatContentInfosFromNowPlayingApplications:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v4 allValues];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(MRDMediaServerNowPlayingDataSource *)self audioFormatContentInfoForApplication:v11 cachedAudioFormatContentInfo:0];
        v13 = [v11 audioSessionID];
        [v5 setObject:v12 forKeyedSubscript:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)audioFormatContentInfoForApplication:(id)a3 cachedAudioFormatContentInfo:(id)a4
{
  v6 = a3;
  v48 = a4;
  v7 = [v6 audioSessionID];

  if (!v7)
  {
    v16 = 0;
    goto LABEL_32;
  }

  v8 = [v6 audioSessionID];
  v9 = [v8 unsignedIntValue];

  v46 = sub_10000AD28([v6 pid]);
  v10 = self;
  objc_sync_enter(v10);
  cachedAudioSessions = v10->_cachedAudioSessions;
  v12 = [NSNumber numberWithUnsignedInt:v9];
  v13 = [(MSVLRUDictionary *)cachedAudioSessions objectForKeyedSubscript:v12];

  if (!v13)
  {
    memset(v50, 0, 32);
    v14 = +[RBSProcessHandle currentProcess];
    v15 = v14;
    if (v14)
    {
      [v14 auditToken];
    }

    else
    {
      memset(v50, 0, 32);
    }

    v17 = [AVAudioSession alloc];
    *buf = *v50;
    *&buf[16] = *&v50[16];
    v13 = [v17 initSiblingSession:v9 auditToken:buf clientIdentifier:@"MediaRemote" autoReconnect:0];
    v18 = _MRLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      *buf = 138543874;
      *&buf[4] = v19;
      *&buf[12] = 1024;
      *&buf[14] = v9;
      *&buf[18] = 2114;
      *&buf[20] = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ getting sibling audio session for: %u | session: %{public}@", buf, 0x1Cu);
    }

    [(MRDMediaServerNowPlayingDataSource *)v10 addCachedAudioSession:v13 forID:v9];
    if (!v13)
    {
      v20 = [AVAudioSession retrieveSessionWithID:v9];
      v21 = _MRLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        *v50 = 138543874;
        *&v50[4] = v22;
        *&v50[12] = 1024;
        *&v50[14] = v9;
        *&v50[18] = 2114;
        *&v50[20] = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ falling back to retrieve audio session for: %u | session: %{public}@", v50, 0x1Cu);
      }

      v13 = v20;
      [(MRDMediaServerNowPlayingDataSource *)v10 addCachedAudioSession:v20 forID:v9];
    }
  }

  v45 = v13;
  objc_sync_exit(v10);

  v47 = [v13 consolidatedSourceContentInfo];
  v23 = _MRLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_opt_class();
    v25 = [v6 pid];
    v26 = [v6 audioSessionID];
    *v50 = 138544386;
    *&v50[4] = v24;
    *&v50[12] = 1024;
    *&v50[14] = v25;
    *&v50[18] = 2114;
    *&v50[20] = v46;
    *&v50[28] = 2114;
    *&v50[30] = v26;
    v51 = 2114;
    v52 = v47;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ pid: %i | bundle id: %{public}@ | session id: %{public}@ | consolidated info: %{public}@", v50, 0x30u);
  }

  v27 = [(MRDMediaServerNowPlayingDataSource *)v10 contentInfoForConsolidatedSourceContentInfo:v47];
  v49 = [(MRDMediaServerNowPlayingDataSource *)v10 bestAvailableContentForConsolidatedSourceContentInfo:v47];
  v28 = [v27 objectForKeyedSubscript:AVAudioSessionSourceContentCurrentlyPlayingFormatKey];
  v29 = [v27 objectForKeyedSubscript:AVAudioSessionSourceContentCurrentlyPlayingChannelCountKey];
  v30 = [v27 objectForKeyedSubscript:AVAudioSessionSourceContentCurrentlyPlayingIsEligibleForSpatializationKey];
  v31 = [v27 objectForKeyedSubscript:AVAudioSessionSourceContentCurrentlyPlayingIsSpatializedKey];
  v44 = [v45 renderingMode];
  v32 = _MRLogForCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = objc_opt_class();
    v34 = [v6 audioSessionID];
    v35 = [v6 pid];
    *v50 = 138545666;
    *&v50[4] = v33;
    *&v50[12] = 2114;
    *&v50[14] = v34;
    *&v50[22] = 1024;
    *&v50[24] = v35;
    *&v50[28] = 2114;
    *&v50[30] = v46;
    v51 = 2114;
    v52 = v28;
    v53 = 2114;
    v54 = v29;
    v55 = 2114;
    v56 = v49;
    v57 = 2114;
    v58 = v30;
    v59 = 2114;
    v60 = v31;
    v61 = 2048;
    v62 = v44;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ selected audio format info | session id: %{public}@ | pid: %i | bundle id: %{public}@ | audio format: %{public}@ | channel #: %{public}@ | available: %{public}@ | eligible: %{public}@ | active: %{public}@ | rendering mode: %ld", v50, 0x62u);
  }

  if (v28)
  {
    if (v29)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v28 = [v48 audioFormat];
    if (v29)
    {
      goto LABEL_22;
    }
  }

  v29 = [v48 channelCount];
LABEL_22:
  if (!v49)
  {
    v49 = [v48 bestAvailableContent];
  }

  if (v30)
  {
    if (!v31)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v30 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v48 isEligibleForSpatialization]);
    if (!v31)
    {
LABEL_28:
      v31 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v48 isSpatialized]);
    }
  }

  v36 = [MRNowPlayingAudioFormatContentInfo alloc];
  v37 = [v6 pid];
  v38 = [v6 audioSessionID];
  v16 = [v36 initWithPid:v37 bundleID:v46 audioSessionID:v38 audioFormat:v28 channelCount:v29 bestAvailableContent:v49 isEligibleForSpatialization:v30 isSpatialized:v31];

  [v16 setRenderingMode:v44];
  v39 = _MRLogForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = objc_opt_class();
    v41 = [v6 audioSessionID];
    v42 = [v6 pid];
    *v50 = 138545410;
    *&v50[4] = v40;
    *&v50[12] = 2114;
    *&v50[14] = v41;
    *&v50[22] = 1024;
    *&v50[24] = v42;
    *&v50[28] = 2114;
    *&v50[30] = v46;
    v51 = 2114;
    v52 = v28;
    v53 = 2114;
    v54 = v29;
    v55 = 2114;
    v56 = v49;
    v57 = 2114;
    v58 = v30;
    v59 = 2114;
    v60 = v31;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ cached selected audio format info | session id: %{public}@ | pid: %i | bundle id: %{public}@ | audio format: %{public}@ | channel #: %{public}@ | available: %{public}@ | eligible: %{public}@ | active: %{public}@", v50, 0x58u);
  }

LABEL_32:

  return v16;
}

- (id)contentInfoForConsolidatedSourceContentInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 firstObject];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v20 = *v22;
    v19 = AVAudioSessionSourceContentCurrentlyPlayingChannelCountKey;
    v9 = AVAudioSessionSourceContentCurrentlyPlayingIsEligibleForSpatializationKey;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:v19];
        v13 = [v12 unsignedIntValue];

        v14 = [v11 objectForKeyedSubscript:v9];
        v15 = [v14 BOOLValue];

        if (v13 > v8 || (v15 & ~v7 & 1) != 0 && v13 == v8)
        {
          v16 = v11;

          v7 = v15;
          v8 = v13;
          v4 = v16;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)bestAvailableContentForConsolidatedSourceContentInfo:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = AVAudioSessionSourceContentBestAvailableContentTypeKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v17 + 1) + 8 * i) objectForKeyedSubscript:{v9, v17}];
        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v12 = kMXSession_SourceFormatInfoKey_BestAvailableContentType_Atmos;
  v13 = kMXSession_SourceFormatInfoKey_BestAvailableContentType_Multichannel;
  if ([v4 containsObject:v12])
  {
    v14 = v12;
  }

  else if ([v4 containsObject:v13])
  {
    v14 = v13;
  }

  else
  {
    v14 = [v4 anyObject];
  }

  v15 = v14;

  return v15;
}

- (id)description
{
  v3 = [(MRDMediaServerNowPlayingDataSource *)self _createMediaServerController];
  v4 = self;
  objc_sync_enter(v4);
  v5 = objc_opt_class();
  v23 = NSStringFromClass(v5);
  mediaServerController = v4->_mediaServerController;
  cachedNowPlayingAppPID = v4->_cachedNowPlayingAppPID;
  v25 = [v3 attributeForKey:AVSystemController_NowPlayingAppPIDAttribute];
  v19 = [v25 intValue];
  cachedNowPlayingAppDisplayID = v4->_cachedNowPlayingAppDisplayID;
  v22 = [v3 attributeForKey:AVSystemController_NowPlayingAppDisplayIDAttribute];
  if (v4->_cachedNowPlayingAppIsPlaying)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  v17 = v6;
  v24 = [v3 attributeForKey:AVSystemController_NowPlayingAppIsPlayingAttribute];
  if ([v24 BOOLValue])
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  v8 = [(NSDictionary *)v4->_cachedNowPlayingApplications allValues];
  v9 = MRCreateIndentedDebugDescriptionFromArray();
  v10 = [v3 attributeForKey:AVSystemController_PlayingSessionsDescriptionAttribute];
  v11 = [(NSDictionary *)v4->_cachedAudioFormatContentInfos allValues];
  v12 = MRCreateIndentedDebugDescriptionFromArray();
  v13 = [(MSVLRUDictionary *)v4->_cachedAudioSessions count];
  v14 = [v3 topOfNowPlayingAppStack];
  v15 = [NSString stringWithFormat:@"%@ %p {\n  %@ vs %@\n  cachedPID %d vs coreMedia %d\n  cachedDisplayID %@ vs CoreMedia %@\n  cachedIsPlaying %@ vs CoreMedia %@\n  cachedApplications %@ vs CoreMedia %@\n  cachedAudioFormatContentInfo = %@\n  audioSessions = %ld\n  topOfNowPlayingAppStack = %@\n}", v23, v4, mediaServerController, v3, cachedNowPlayingAppPID, v19, cachedNowPlayingAppDisplayID, v22, v17, v7, v9, v10, v12, v13, v14];

  objc_sync_exit(v4);

  return v15;
}

@end