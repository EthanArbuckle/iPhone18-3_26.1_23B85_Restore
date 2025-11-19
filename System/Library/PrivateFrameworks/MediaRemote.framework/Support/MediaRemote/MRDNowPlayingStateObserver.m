@interface MRDNowPlayingStateObserver
- (MRDNowPlayingStateObserver)init;
- (MRDNowPlayingStateObserverDelegate)delegate;
- (id)_onQueue_stateForPlayerPath:(id)a3;
- (id)debugDescription;
- (void)_addNowPlayingNotification:(id)a3 selector:(SEL)a4;
- (void)_handleApplicationClientStateChanged:(id)a3;
- (void)_handleContentItemArtworkChanged:(id)a3;
- (void)_handleContentItemsChanged:(id)a3;
- (void)_handleDefaultSupportedCommandsChanged:(id)a3;
- (void)_handleNowPlayingClientDidChange:(id)a3;
- (void)_handleNowPlayingPlaybackStateChanged:(id)a3;
- (void)_handleNowPlayingPlayerDidChange:(id)a3;
- (void)_handlePlaybackQueueCapabilitiesChanged:(id)a3;
- (void)_handlePlaybackQueueChanged:(id)a3;
- (void)_handlePlayerStateChanged:(id)a3;
- (void)_handleRemoveClient:(id)a3;
- (void)_handleRemovePlayer:(id)a3;
- (void)_handleSupportedCommandsDidChange:(id)a3;
- (void)_handleVolumeAvailabilityDidChangeNotification:(id)a3;
- (void)_onQueue_notifyCoalescedPlayerPath:(id)a3;
- (void)_onQueue_setReceiveNowPlayingUpdates:(BOOL)a3;
- (void)_onQueue_setReceiveVolumeControlUpdates:(BOOL)a3;
- (void)_removeNowPlayingNotifications;
- (void)_setReceiveUpdates:(BOOL)a3 forSource:(int64_t)a4;
- (void)dealloc;
@end

@implementation MRDNowPlayingStateObserver

- (MRDNowPlayingStateObserver)init
{
  v16.receiver = self;
  v16.super_class = MRDNowPlayingStateObserver;
  v2 = [(MRDNowPlayingStateObserver *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(Name, v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = objc_alloc_init(NSMutableArray);
    observedNowPlayingNotifications = v2->_observedNowPlayingNotifications;
    v2->_observedNowPlayingNotifications = v8;

    v10 = +[MRDMediaRemoteServer server];
    v11 = [v10 nowPlayingServer];
    npServer = v2->_npServer;
    v2->_npServer = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    coalescingStates = v2->_coalescingStates;
    v2->_coalescingStates = v13;
  }

  return v2;
}

- (void)dealloc
{
  [(MRDNowPlayingStateObserver *)self stopReceivingUpdatesForSource:1];
  [(MRDNowPlayingStateObserver *)self stopReceivingUpdatesForSource:2];
  v3.receiver = self;
  v3.super_class = MRDNowPlayingStateObserver;
  [(MRDNowPlayingStateObserver *)&v3 dealloc];
}

- (id)debugDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000350FC;
  v10 = sub_100035A34;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F3C14;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_handleNowPlayingClientDidChange:(id)a3
{
  v7 = a3;
  if ([(MRDNowPlayingStateObserver *)self _shouldNotifyChange:?])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [v7 userInfo];
    v6 = MRGetPlayerPathFromUserInfo();
    [WeakRetained stateObserver:self didReceiveNowPlayingClientChange:v6];
  }
}

- (void)_handleNowPlayingPlayerDidChange:(id)a3
{
  v7 = a3;
  if ([(MRDNowPlayingStateObserver *)self _shouldNotifyChange:?])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [v7 userInfo];
    v6 = MRGetPlayerPathFromUserInfo();
    [WeakRetained stateObserver:self didReceiveNowPlayingPlayerChange:v6];
  }
}

- (void)_handleApplicationClientStateChanged:(id)a3
{
  v4 = a3;
  if ([(MRDNowPlayingStateObserver *)self _shouldNotifyChange:v4])
  {
    v5 = [v4 userInfo];
    v6 = MRGetPlayerPathFromUserInfo();

    v7 = +[MRDMediaRemoteServer server];
    v8 = [v7 nowPlayingServer];

    v9 = [v8 queryExistingPlayerPath:v6];
    v10 = [v9 nowPlayingClient];

    if (v10)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F3F84;
      block[3] = &unk_1004B69D0;
      block[4] = self;
      v13 = v6;
      v14 = v9;
      dispatch_async(queue, block);
    }
  }
}

- (void)_handleRemoveClient:(id)a3
{
  v7 = a3;
  if ([(MRDNowPlayingStateObserver *)self _shouldNotifyChange:?])
  {
    v4 = [v7 userInfo];
    v5 = MRGetPlayerPathFromUserInfo();

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained stateObserver:self didReceiveClientDidUnregister:v5];
  }
}

- (void)_handleVolumeAvailabilityDidChangeNotification:(id)a3
{
  if ([(MRDNowPlayingStateObserver *)self _shouldNotifyChange:a3])
  {
    v4 = [MRPlayerPath alloc];
    v5 = +[MROrigin localOrigin];
    v11 = [v4 initWithOrigin:v5 client:0 player:0];

    v6 = +[MRDMediaRemoteServer server];
    v7 = [v6 nowPlayingServer];

    v8 = [v7 queryExistingPlayerPath:v11];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = [v8 originClient];
    [WeakRetained stateObserver:self didReceiveVolumeControlCapabilitiesChange:objc_msgSend(v10 playerPath:{"volumeControlCapabilities"), v11}];
  }
}

- (void)_handleDefaultSupportedCommandsChanged:(id)a3
{
  v14 = a3;
  if ([(MRDNowPlayingStateObserver *)self _shouldNotifyChange:?])
  {
    v4 = [v14 userInfo];
    v5 = MRGetPlayerPathFromUserInfo();

    v6 = +[MRDMediaRemoteServer server];
    v7 = [v6 nowPlayingServer];
    v8 = [v5 origin];
    v9 = [v7 originClientForOrigin:v8];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [v5 client];
    v12 = [v11 bundleIdentifier];
    v13 = [v9 defaultSupportedCommandsForClient:v12];
    [WeakRetained stateObserver:self didReceiveDefaultSupportedCommandsChange:v13 playerPath:v5];
  }
}

- (void)_handleSupportedCommandsDidChange:(id)a3
{
  v4 = a3;
  if ([(MRDNowPlayingStateObserver *)self _shouldNotifyChange:v4])
  {
    v5 = [v4 userInfo];
    v6 = MRGetPlayerPathFromUserInfo();

    v7 = [(MRDNowPlayingServer *)self->_npServer queryExistingPlayerPath:v6];
    v8 = [v7 playerClient];

    if (v8)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F4420;
      block[3] = &unk_1004B69D0;
      block[4] = self;
      v11 = v6;
      v12 = v7;
      dispatch_async(queue, block);
    }
  }
}

- (void)_handleNowPlayingPlaybackStateChanged:(id)a3
{
  v4 = a3;
  if ([(MRDNowPlayingStateObserver *)self _shouldNotifyChange:v4])
  {
    v5 = [v4 userInfo];
    v6 = MRGetPlayerPathFromUserInfo();

    v7 = [(MRDNowPlayingServer *)self->_npServer queryExistingPlayerPath:v6];
    v8 = [v7 playerClient];

    if (v8)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F45B4;
      block[3] = &unk_1004B69D0;
      block[4] = self;
      v11 = v6;
      v12 = v7;
      dispatch_async(queue, block);
    }
  }
}

- (void)_handlePlaybackQueueChanged:(id)a3
{
  v4 = a3;
  if ([(MRDNowPlayingStateObserver *)self _shouldNotifyChange:v4])
  {
    v5 = [v4 userInfo];
    v6 = MRGetPlayerPathFromUserInfo();

    v7 = [(MRDNowPlayingServer *)self->_npServer queryExistingPlayerPath:v6];
    v8 = [v7 playerClient];

    if (v8)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F479C;
      block[3] = &unk_1004B69D0;
      block[4] = self;
      v11 = v6;
      v12 = v7;
      dispatch_async(queue, block);
    }
  }
}

- (void)_handlePlaybackQueueCapabilitiesChanged:(id)a3
{
  v4 = a3;
  if ([(MRDNowPlayingStateObserver *)self _shouldNotifyChange:v4])
  {
    v5 = [v4 userInfo];
    v6 = MRGetPlayerPathFromUserInfo();

    v7 = [(MRDNowPlayingServer *)self->_npServer queryExistingPlayerPath:v6];
    v8 = [v7 playerClient];

    if (v8)
    {
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F4930;
      block[3] = &unk_1004B69D0;
      block[4] = self;
      v11 = v6;
      v12 = v7;
      dispatch_async(queue, block);
    }
  }
}

- (void)_handleContentItemsChanged:(id)a3
{
  v4 = a3;
  if ([(MRDNowPlayingStateObserver *)self _shouldNotifyChange:v4])
  {
    v5 = [v4 userInfo];
    v6 = MRGetPlayerPathFromUserInfo();

    v7 = [(MRDNowPlayingServer *)self->_npServer queryExistingPlayerPath:v6];
    v8 = [v7 playerClient];

    if (v8)
    {
      v9 = [v4 userInfo];
      v10 = MRGetContentItemsFromUserInfo();

      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F4AE0;
      block[3] = &unk_1004B69D0;
      block[4] = self;
      v14 = v6;
      v15 = v10;
      v12 = v10;
      dispatch_async(queue, block);
    }
  }
}

- (void)_handleContentItemArtworkChanged:(id)a3
{
  v4 = a3;
  if ([(MRDNowPlayingStateObserver *)self _shouldNotifyChange:v4])
  {
    v5 = [v4 userInfo];
    v6 = MRGetPlayerPathFromUserInfo();

    v7 = [(MRDNowPlayingServer *)self->_npServer queryExistingPlayerPath:v6];
    v8 = [v7 playerClient];

    if (v8)
    {
      v9 = [v4 userInfo];
      v10 = MRGetContentItemsFromUserInfo();

      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000F4C78;
      block[3] = &unk_1004B69D0;
      block[4] = self;
      v14 = v6;
      v15 = v10;
      v12 = v10;
      dispatch_async(queue, block);
    }
  }
}

- (void)_handlePlayerStateChanged:(id)a3
{
  v4 = a3;
  if ([(MRDNowPlayingStateObserver *)self _shouldNotifyChange:v4])
  {
    v5 = [v4 userInfo];
    v6 = MRGetPlayerPathFromUserInfo();

    v7 = [(MRDNowPlayingServer *)self->_npServer queryExistingPlayerPath:v6];
    v8 = [v7 playerClient];

    if (v8)
    {
      queue = self->_queue;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000F4DDC;
      v10[3] = &unk_1004B68F0;
      v10[4] = self;
      v11 = v6;
      dispatch_async(queue, v10);
    }
  }
}

- (void)_handleRemovePlayer:(id)a3
{
  v4 = a3;
  if ([(MRDNowPlayingStateObserver *)self _shouldNotifyChange:v4])
  {
    v5 = [v4 userInfo];
    v6 = MRGetPlayerPathFromUserInfo();

    v7 = [(MRDNowPlayingServer *)self->_npServer queryExistingPlayerPath:v6];
    v8 = [v7 playerClient];

    if (v8)
    {
      queue = self->_queue;
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_1000F4F70;
      v15 = &unk_1004B68F0;
      v16 = self;
      v10 = v6;
      v17 = v10;
      dispatch_async(queue, &v12);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained stateObserver:self didReceivePlayerDidUnregister:{v10, v12, v13, v14, v15, v16}];
    }
  }
}

- (void)_setReceiveUpdates:(BOOL)a3 forSource:(int64_t)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F4FF8;
  block[3] = &unk_1004BC818;
  block[4] = self;
  block[5] = a4;
  v6 = a3;
  dispatch_sync(queue, block);
}

- (void)_onQueue_setReceiveNowPlayingUpdates:(BOOL)a3
{
  registeredForNowPlayingCount = self->_registeredForNowPlayingCount;
  if (a3)
  {
    self->_registeredForNowPlayingCount = registeredForNowPlayingCount + 1;
    if (!registeredForNowPlayingCount)
    {
      v5 = _MRLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingStateObserver] Registering for Now Playing Updates", buf, 2u);
      }

      [(MRDNowPlayingStateObserver *)self _addNowPlayingNotification:kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification selector:"_handleNowPlayingClientDidChange:"];
      [(MRDNowPlayingStateObserver *)self _addNowPlayingNotification:kMRMediaRemoteActivePlayerDidChange selector:"_handleNowPlayingPlayerDidChange:"];
      [(MRDNowPlayingStateObserver *)self _addNowPlayingNotification:kMRMediaRemotePlayerSupportedCommandsDidChangeNotification selector:"_handleSupportedCommandsDidChange:"];
      [(MRDNowPlayingStateObserver *)self _addNowPlayingNotification:kMRMediaRemotePlayerPlaybackStateDidChangeNotification selector:"_handleNowPlayingPlaybackStateChanged:"];
      [(MRDNowPlayingStateObserver *)self _addNowPlayingNotification:kMRPlayerPlaybackQueueChangedNotification selector:"_handlePlaybackQueueChanged:"];
      [(MRDNowPlayingStateObserver *)self _addNowPlayingNotification:kMRPlaybackQueueCapabilitiesChangedNotification selector:"_handlePlaybackQueueCapabilitiesChanged:"];
      [(MRDNowPlayingStateObserver *)self _addNowPlayingNotification:kMRPlayerPlaybackQueueContentItemsChangedNotification selector:"_handleContentItemsChanged:"];
      [(MRDNowPlayingStateObserver *)self _addNowPlayingNotification:kMRPlayerPlaybackQueueContentItemArtworkChangedNotification selector:"_handleContentItemArtworkChanged:"];
      [(MRDNowPlayingStateObserver *)self _addNowPlayingNotification:kMRMediaRemoteApplicationClientStateDidChange selector:"_handleApplicationClientStateChanged:"];
      [(MRDNowPlayingStateObserver *)self _addNowPlayingNotification:kMRMediaRemotePlayerStateDidChange selector:"_handlePlayerStateChanged:"];
      [(MRDNowPlayingStateObserver *)self _addNowPlayingNotification:kMRMediaRemoteNowPlayingApplicationDidUnregister selector:"_handleRemoveClient:"];
      [(MRDNowPlayingStateObserver *)self _addNowPlayingNotification:kMRMediaRemoteNowPlayingPlayerDidUnregister selector:"_handleRemovePlayer:"];
      [(MRDNowPlayingStateObserver *)self _addNowPlayingNotification:_MRMediaRemoteDefaultSupportedCommandsDidChangeNotification selector:"_handleDefaultSupportedCommandsChanged:"];
    }
  }

  else
  {
    v6 = registeredForNowPlayingCount != 0;
    v8 = registeredForNowPlayingCount - 1;
    v7 = v8 != 0 && v6;
    if (!v6)
    {
      v8 = 0;
    }

    self->_registeredForNowPlayingCount = v8;
    if (!v7)
    {
      [(MRDNowPlayingStateObserver *)self _removeNowPlayingNotifications];
      v9 = _MRLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingStateObserver] Unregistering for Now Playing Updates", v10, 2u);
      }
    }
  }
}

- (void)_onQueue_setReceiveVolumeControlUpdates:(BOOL)a3
{
  registeredForVolumeAvailabilityCount = self->_registeredForVolumeAvailabilityCount;
  if (a3)
  {
    self->_registeredForVolumeAvailabilityCount = registeredForVolumeAvailabilityCount + 1;
    if (!registeredForVolumeAvailabilityCount)
    {
      v5 = _MRLogForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingStateObserver] Registering for volume control updates", buf, 2u);
      }

      objc_initWeak(buf, self);
      v6 = +[NSNotificationCenter defaultCenter];
      v7 = kMRMediaRemotePickedRouteVolumeControlAvailabilityDidChangeNotification;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000F5470;
      v15[3] = &unk_1004B9A58;
      objc_copyWeak(&v16, buf);
      v8 = [v6 addObserverForName:v7 object:0 queue:0 usingBlock:v15];
      observedVolumeControlNotificationToken = self->_observedVolumeControlNotificationToken;
      self->_observedVolumeControlNotificationToken = v8;

      objc_destroyWeak(&v16);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v10 = registeredForVolumeAvailabilityCount != 0;
    v12 = registeredForVolumeAvailabilityCount - 1;
    v11 = v12 != 0 && v10;
    if (!v10)
    {
      v12 = 0;
    }

    self->_registeredForVolumeAvailabilityCount = v12;
    if (!v11 && self->_observedVolumeControlNotificationToken)
    {
      v13 = +[NSNotificationCenter defaultCenter];
      [v13 removeObserver:self->_observedVolumeControlNotificationToken];

      v14 = _MRLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingStateObserver] Unregistering for volume control updates", buf, 2u);
      }
    }
  }
}

- (void)_addNowPlayingNotification:(id)a3 selector:(SEL)a4
{
  v7 = a3;
  v6 = +[NSNotificationCenter defaultCenter];
  if (([(NSMutableArray *)self->_observedNowPlayingNotifications containsObject:v7]& 1) == 0)
  {
    [v6 addObserver:self selector:a4 name:v7 object:0];
    [(NSMutableArray *)self->_observedNowPlayingNotifications addObject:v7];
  }
}

- (void)_removeNowPlayingNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_observedNowPlayingNotifications;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 removeObserver:self name:*(*(&v9 + 1) + 8 * v8) object:{0, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_observedNowPlayingNotifications removeAllObjects];
}

- (id)_onQueue_stateForPlayerPath:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_coalescingStates objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = +[MRUserSettings currentSettings];
    [v6 nowPlayingObserverCoalesceInterval];
    v8 = v7;

    v9 = +[MRUserSettings currentSettings];
    v10 = [v9 verboseNowPlayingStateObserver];

    if (v10)
    {
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = v4;
        v24 = 2048;
        v25 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingStateObserver] Begin Coalescing for %@ for %lf seconds", buf, 0x16u);
      }
    }

    v5 = [[MRDNowPlayingObserverState alloc] initWithPlayerPath:v4];
    v12 = dispatch_time(0, (v8 * 1000000000.0));
    queue = self->_queue;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_1000F5894;
    v19 = &unk_1004B68F0;
    v20 = self;
    v14 = v4;
    v21 = v14;
    dispatch_after(v12, queue, &v16);
    [(NSMutableDictionary *)self->_coalescingStates setObject:v5 forKeyedSubscript:v14, v16, v17, v18, v19, v20];
  }

  return v5;
}

- (void)_onQueue_notifyCoalescedPlayerPath:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_coalescingStates objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = +[MRUserSettings currentSettings];
    v7 = [v6 verboseNowPlayingStateObserver];

    if (v7)
    {
      v8 = _MRLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v14 = v5;
        v15 = 2112;
        v16 = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingStateObserver] End Coalescing %@ for %@", buf, 0x16u);
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F5A3C;
    block[3] = &unk_1004B69D0;
    block[4] = self;
    v11 = v5;
    v9 = v4;
    v12 = v9;
    dispatch_async(&_dispatch_main_q, block);
    [(NSMutableDictionary *)self->_coalescingStates setObject:0 forKeyedSubscript:v9];
  }
}

- (MRDNowPlayingStateObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end