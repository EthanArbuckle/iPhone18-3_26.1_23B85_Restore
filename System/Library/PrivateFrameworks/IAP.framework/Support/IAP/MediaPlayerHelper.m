@interface MediaPlayerHelper
+ (id)sharedSystemMusicPlayer;
+ (id)sharedSystemMusicPlayerQueue;
- (BOOL)_isSetElapsedTimeAvailable;
- (BOOL)currentNowPlayingInfoArtworkExists;
- (BOOL)currentNowPlayingInfoTrackCountExists;
- (BOOL)fakeStreamTrackIndexSet;
- (BOOL)fakeStreamTrackIndexTimeExpired;
- (BOOL)iBooksAppSelected;
- (BOOL)iTunesUAppSelected;
- (BOOL)isLoadingRadioStation;
- (BOOL)podcastAppSelected;
- (MediaPlayerHelper)init;
- (double)currentNowPlayingInfoDuration;
- (double)currentPlaybackTime;
- (double)nowPlayingAppPlaybackRate;
- (double)nowPlayingAppPlaybackSpeed;
- (id)_nowPlayingInfoDesc:(id)a3;
- (id)currentNowPlayingInfoArtwork;
- (id)currentNowPlayingInfoString:(id)a3;
- (id)getPBQItemsFromQueueQuery;
- (id)nowPlayingAppName;
- (id)nowPlayingInfoTitleForAudiobookIndex:(unsigned int)a3;
- (int)currentRepeatMode;
- (int)currentShuffleMode;
- (int)nowPlayingAppPlaybackState;
- (int)prepareForPlaybackWithQuery:(id)a3 andFirstItem:(id)a4;
- (unint64_t)currentNowPlayingInfoPID;
- (unsigned)_currentNowPlayingInfoTrack:(BOOL)a3;
- (unsigned)currentNowPlayingInfoNumber:(id)a3;
- (unsigned)currentNowPlayingInfoTrackCount;
- (unsigned)nowPlayingAppIsIPodApp;
- (unsigned)nowPlayingAppIsPodcastApp;
- (unsigned)nowPlayingAppIsValid;
- (unsigned)nowPlayingAppIsVideosApp;
- (unsigned)nowPlayingAppIsiBooksApp;
- (unsigned)nowPlayingAppIsiTunesRadio;
- (unsigned)nowPlayingAppIsiTunesUApp;
- (void)_calcNewFakeStreamIndexCount;
- (void)_canShowCloudTracksDidChangeNotification:(id)a3;
- (void)_checkShuffleRepeatModeChange;
- (void)_findCommandRefForCommand:(unsigned int)a3;
- (void)_handleNowPlayingAppDidChange:(id)a3;
- (void)_handleNowPlayingInfo:(__CFDictionary *)a3;
- (void)_handlePlaybackQueueDidChange;
- (void)_itemPlaybackDidEnd:(id)a3;
- (void)_mediaLibraryChanged:(id)a3;
- (void)_nowPlayingAppChanged:(id)a3;
- (void)_nowPlayingAppIsPlayingChanged:(id)a3;
- (void)_nowPlayingInfoChanged:(id)a3;
- (void)_nowPlayingItemChanged:(id)a3;
- (void)_playbackQueueDidChangeNotification:(id)a3;
- (void)_printNowPlayingInfo:(id)a3 forName:(id)a4;
- (void)_repeatModeChanged:(id)a3;
- (void)_resetFakeStreamTrackCount;
- (void)_setNowPlayingApp:(id)a3;
- (void)_shuffleModeChanged:(id)a3;
- (void)_startMusicPlayerNotifications:(id)a3;
- (void)_stopMusicPlayerNotifications:(id)a3;
- (void)_supportedCommandsDidChange:(__CFArray *)a3;
- (void)_supportedCommandsDidChangeNotification;
- (void)_waitForNowPlayingInfoReceived;
- (void)dealloc;
- (void)initPBQItemsFromQueueQuery;
- (void)postFakeShuffleModeChanged;
- (void)setExpectedRepeatMode:(int)a3;
- (void)setExpectedShuffleMode:(int)a3;
- (void)setRepeatModeCache:(int)a3;
- (void)setShuffleModeCache:(int)a3;
@end

@implementation MediaPlayerHelper

- (void)_resetFakeStreamTrackCount
{
  if (((self - 100) & 3) != 0 || (self->_fakeStreamTrackCount = 0, ((self - 104) & 3) != 0) || (self->_fakeStreamTrackIndex = 0, self->_fakeStreamTrackIndexSet = 0, ((self - 92) & 3) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    self->_fakeStreamTrackIndexSetTimestamp = 0;
    self->_fakeStreamTrackIndexNeedChange = 0;
  }
}

- (void)_calcNewFakeStreamIndexCount
{
  if (dword_100129630 != 3)
  {
    return;
  }

  v4 = arc4random_uniform(8u);
  v5 = __CFADD__(v4, 2);
  v6 = v4 + 2;
  if (v5)
  {
LABEL_7:
    __break(0x5500u);
  }

  else
  {
    p_fakeStreamTrackCount = &self->_fakeStreamTrackCount;
    if ((&self->_fakeStreamTrackCount & 3) != 0)
    {
      goto LABEL_9;
    }

    while (*p_fakeStreamTrackCount == v6)
    {
      v7 = arc4random_uniform(8u);
      v5 = __CFADD__(v7, 2);
      v6 = v7 + 2;
      if (v5)
      {
        goto LABEL_7;
      }
    }
  }

  self->_fakeStreamTrackCount = v6;
  v8 = arc4random_uniform(v6);
  self = (self + 152);
  if ((self & 3) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  __break(0x5516u);
  do
  {
    v8 = arc4random_uniform(*p_fakeStreamTrackCount);
LABEL_11:
    ;
  }

  while (LODWORD(self->super.isa) == v8);
  LODWORD(self->super.isa) = v8;
}

- (BOOL)fakeStreamTrackIndexTimeExpired
{
  v3 = sub_100067278();
  p_fakeStreamTrackIndexSetTimestamp = &self->_fakeStreamTrackIndexSetTimestamp;
  if ((&self->_fakeStreamTrackIndexSetTimestamp & 3) != 0)
  {
    __break(0x5516u);
    goto LABEL_7;
  }

  v5 = v3;
  LODWORD(v3) = sub_10006814C(self->_fakeStreamTrackIndexSetTimestamp, v3, 1);
  fakeStreamTrackIndexSet = self->_fakeStreamTrackIndexSet;
  if (fakeStreamTrackIndexSet >= 2)
  {
LABEL_7:
    __break(0x550Au);
    return v3;
  }

  v7 = (v3 < 0x7D1) & fakeStreamTrackIndexSet;
  if (v7 == 1)
  {
    NSLog(@"MR: %s:%d curTimeMs=%u _fakeStreamTrackIndexSetTimestamp=%u _fakeStreamTrackIndexSet=%d, Not Expired Yet!", "[MediaPlayerHelper fakeStreamTrackIndexTimeExpired]", 501, v5, *p_fakeStreamTrackIndexSetTimestamp, 1);
  }

  LOBYTE(v3) = v7 ^ 1;
  return v3;
}

- (void)_waitForNowPlayingInfoReceived
{
  nowPlayingInfoEverReceived = self->_nowPlayingInfoEverReceived;
  if (nowPlayingInfoEverReceived >= 2)
  {
    goto LABEL_14;
  }

  if (nowPlayingInfoEverReceived)
  {
    return;
  }

  v2 = self;
  v3 = "[MediaPlayerHelper _waitForNowPlayingInfoReceived]";
  NSLog(@"MR: %s:%d wait for _nowPlayingInfoEverReceived, maxWaitTimeMs %d, maxWaitTimePerIterationMs %d, maxNumIterations %d", a2, "[MediaPlayerHelper _waitForNowPlayingInfoReceived]", 518, 15000, 50, 300);
  v5 = v2->_nowPlayingInfoEverReceived;
  if (v5 > 1)
  {
LABEL_14:
    do
    {
LABEL_8:
      __break(0x550Au);
LABEL_9:
      NSLog(@"WARNING timedout waiting for nowPlayingInfo dictionary!, playback information may not be correct", a2);
      v5 = v2->_nowPlayingInfoEverReceived;
    }

    while (v5 > 1);
    v6 = 301;
  }

  else
  {
    v6 = 0;
    while ((v5 & 1) == 0)
    {
      if (v6 == 300)
      {
        goto LABEL_9;
      }

      v6 = (v6 + 1);
      usleep(0xC350u);
      v5 = v2->_nowPlayingInfoEverReceived;
      if (v5 >= 2)
      {
        goto LABEL_8;
      }
    }
  }

  NSLog(@"MR: %s:%d after waiting for _nowPlayingInfoEverReceived(%d), iteration %d / %d", v3, 529, v5, v6, 300);
}

- (void)_startMusicPlayerNotifications:(id)a3
{
  NSLog(@"system music player installed!", a2, a3);
  v4 = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
  if (v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003901C;
    block[3] = &unk_100111C88;
    block[4] = self;
    dispatch_sync(v4, block);
  }

  else
  {
    __break(0x5510u);
  }
}

- (void)_stopMusicPlayerNotifications:(id)a3
{
  NSLog(@"system music player uninstalled!", a2, a3);
  v3 = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
  if (v3)
  {

    dispatch_sync(v3, &stru_1001145A0);
  }

  else
  {
    __break(0x5510u);
  }
}

- (MediaPlayerHelper)init
{
  v6.receiver = self;
  v6.super_class = MediaPlayerHelper;
  v2 = [(MediaPlayerHelper *)&v6 init];
  if (!v2)
  {
    return v2;
  }

  result = dispatch_queue_create("com.apple.iapd.nowPlayingQueue", 0);
  v4 = (v2 + 104);
  if (((v2 + 104) & 7) != 0)
  {
    goto LABEL_26;
  }

  *(v2 + 13) = result;
  pthread_mutex_init((v2 + 16), 0);
  sub_1000DDE90(6u, @"MP: initing observers");
  sub_1000DDE90(7u, @"MR: initing observers");
  if (((v2 + 8) & 7) != 0)
  {
    goto LABEL_26;
  }

  *(v2 + 1) = 0;
  if (((v2 + 80) & 7) != 0)
  {
    goto LABEL_26;
  }

  *(v2 + 10) = 0;
  if (((v2 + 88) & 7) != 0)
  {
    goto LABEL_26;
  }

  *(v2 + 11) = 0;
  *(v2 + 97) = 0;
  if (((v2 + 112) & 3) != 0)
  {
    goto LABEL_26;
  }

  *(v2 + 28) = 1;
  if (((v2 + 116) & 3) != 0)
  {
    goto LABEL_26;
  }

  *(v2 + 29) = 1;
  if (((v2 + 120) & 3) != 0)
  {
    goto LABEL_26;
  }

  *(v2 + 30) = 1;
  if (((v2 + 124) & 3) != 0)
  {
    goto LABEL_26;
  }

  *(v2 + 31) = 1;
  if (((v2 + 0x80) & 3) != 0)
  {
    goto LABEL_26;
  }

  *(v2 + 32) = 0;
  if (((v2 - 124) & 3) != 0)
  {
    goto LABEL_26;
  }

  *(v2 + 33) = 0;
  if (((v2 - 120) & 7) != 0)
  {
    goto LABEL_26;
  }

  *(v2 + 17) = 0;
  if (((v2 - 100) & 3) != 0)
  {
    goto LABEL_26;
  }

  *(v2 + 39) = 0;
  if (((v2 - 104) & 3) != 0)
  {
    goto LABEL_26;
  }

  *(v2 + 38) = 0;
  v2[160] = 0;
  if (((v2 - 92) & 3) != 0)
  {
    goto LABEL_26;
  }

  *(v2 + 41) = 0;
  v2[168] = 0;
  if (((v2 - 84) & 3) != 0)
  {
    goto LABEL_26;
  }

  *(v2 + 43) = 0;
  *(v2 + 88) = 0;
  *(v2 + 106) = 0;
  v2[214] = 0;
  if (((v2 - 112) & 7) != 0 || (*(v2 + 18) = 0, result = objc_alloc_init(IAPApplicationStateMonitor), ((v2 - 56) & 7) != 0) || (*(v2 + 25) = result, ((v2 - 48) & 3) != 0) || (*(v2 + 52) = -1, ((v2 - 72) & 7) != 0))
  {
LABEL_26:
    __break(0x5516u);
  }

  else
  {
    *(v2 + 23) = 0;
    v2[192] = 0;
    if (dword_100129640 == -1)
    {
      dword_100129640 = CFPreferencesGetAppBooleanValue(@"PodcastPlaybackInMusicApp", @"com.apple.iapd", 0) != 0;
    }

    result = *v4;
    if (*v4)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100039384;
      block[3] = &unk_100111C88;
      block[4] = v2;
      dispatch_async(&result->super, block);
      return v2;
    }
  }

  __break(0x5510u);
  return result;
}

- (void)dealloc
{
  sub_1000DDE90(6u, @"MP: dealloc'ing observers");
  sub_1000DDE90(7u, @"MR: dealloc'ing observers");
  v3 = +[NSNotificationCenter defaultCenter];
  MRMediaRemoteUnregisterForNowPlayingNotifications();
  [(NSNotificationCenter *)v3 removeObserver:self name:kMRMediaRemoteNowPlayingInfoDidChangeNotification object:0];
  [(NSNotificationCenter *)v3 removeObserver:self name:kMRMediaRemoteNowPlayingApplicationDidChangeNotification object:0];
  [(NSNotificationCenter *)v3 removeObserver:self name:kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification object:0];
  [(NSNotificationCenter *)v3 removeObserver:self name:MPMusicPlayerControllerItemPlaybackDidEndNotification object:0];
  if (sub_100036DB4())
  {
    [(MediaPlayerHelper *)self _stopMusicPlayerNotifications:0];
  }

  v4 = +[MPMediaLibrary defaultMediaLibrary];
  [(NSNotificationCenter *)v3 removeObserver:self name:MPMediaLibraryEntitiesAddedOrRemovedNotification object:v4];
  [(MPMediaLibrary *)v4 endGeneratingLibraryChangeNotifications];
  pthread_mutex_lock(&self->_nowPlayingInfoLock);
  p_nowPlayingInfo = &self->_nowPlayingInfo;
  if ((&self->_nowPlayingInfo & 7) != 0)
  {
    goto LABEL_25;
  }

  if (*p_nowPlayingInfo)
  {

    *p_nowPlayingInfo = 0;
  }

  p_nowPlayingAppIdentifier = &self->_nowPlayingAppIdentifier;
  if ((&self->_nowPlayingAppIdentifier & 7) != 0)
  {
    goto LABEL_25;
  }

  if (*p_nowPlayingAppIdentifier)
  {

    *p_nowPlayingAppIdentifier = 0;
  }

  p_nowPlayingAppName = &self->_nowPlayingAppName;
  if ((&self->_nowPlayingAppName & 7) != 0)
  {
    goto LABEL_25;
  }

  if (*p_nowPlayingAppName)
  {

    *p_nowPlayingAppName = 0;
  }

  p_nowPlayingAppIsPlayingTimestamp = &self->_nowPlayingAppIsPlayingTimestamp;
  if ((&self->_nowPlayingAppIsPlayingTimestamp & 7) != 0)
  {
    goto LABEL_25;
  }

  if (*p_nowPlayingAppIsPlayingTimestamp)
  {

    *p_nowPlayingAppIsPlayingTimestamp = 0;
  }

  p_currentSupportedCommands = &self->_currentSupportedCommands;
  if ((&self->_currentSupportedCommands & 7) != 0)
  {
    goto LABEL_25;
  }

  if (*p_currentSupportedCommands)
  {
    CFRelease(*p_currentSupportedCommands);
    *p_currentSupportedCommands = 0;
  }

  p_pbqItems = &self->pbqItems;
  if ((&self->pbqItems & 7) != 0)
  {
    goto LABEL_25;
  }

  if (*p_pbqItems)
  {

    *p_pbqItems = 0;
  }

  if (((self - 56) & 7) != 0 || (self->_appStateMonitor, pthread_mutex_unlock(&self->_nowPlayingInfoLock), p_nowPlayingHandlerQueue = &self->nowPlayingHandlerQueue, (&self->nowPlayingHandlerQueue & 7) != 0))
  {
LABEL_25:
    __break(0x5516u);
  }

  else if (*p_nowPlayingHandlerQueue)
  {
    dispatch_release(*p_nowPlayingHandlerQueue);
    v12.receiver = self;
    v12.super_class = MediaPlayerHelper;
    [(MediaPlayerHelper *)&v12 dealloc];
    return;
  }

  __break(0x5510u);
}

+ (id)sharedSystemMusicPlayer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039A94;
  block[3] = &unk_100111C88;
  block[4] = a1;
  if (qword_10012BAF0 != -1)
  {
    dispatch_once(&qword_10012BAF0, block);
  }

  return qword_10012BAE8;
}

+ (id)sharedSystemMusicPlayerQueue
{
  if (qword_10012BB00 != -1)
  {
    sub_1000E1F9C();
  }

  return qword_10012BAF8;
}

- (void)postFakeShuffleModeChanged
{
  sub_1000DDE90(6u, @"MP: postFakeShuffleModeChanged");
  [(MediaPlayerHelper *)self performSelectorOnMainThread:"_shuffleModeChanged:" withObject:0 waitUntilDone:0];

  [(MediaPlayerHelper *)self performSelectorOnMainThread:"_nowPlayingItemChanged:" withObject:0 waitUntilDone:0];
}

- (int)prepareForPlaybackWithQuery:(id)a3 andFirstItem:(id)a4
{
  v7 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (dword_100129640)
  {
    goto LABEL_2;
  }

  *&self->podcastAppSelected = 0;
  self->iTunesUAppSelected = 0;
  v10 = [a3 items];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v11)
  {
    v12 = *v23;
    v13 = 1;
    LOBYTE(v14) = 1;
    v15 = 1;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v17 = [*(*(&v22 + 1) + 8 * i) mediaType];
        if (v17 == 1024)
        {
          v18 = v15;
        }

        else
        {
          v18 = 0;
        }

        if (v17 != 2)
        {
          v15 = v18;
        }

        v14 = (v17 == 4) & v14;
        if (v17 == 4096)
        {
          v19 = v13;
        }

        else
        {
          v19 = 0;
        }

        if (v17 != 8)
        {
          v13 = v19;
        }

        if (((v15 | v14) & 1) == 0 && (v13 & 1) == 0)
        {
          LOBYTE(v13) = 0;
          v14 = 0;
          goto LABEL_29;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

LABEL_29:
    if (((v15 | v14) & 1) == 0 && (v13 & 1) == 0)
    {
      v7 = 0;
      goto LABEL_42;
    }
  }

  else
  {
    LOBYTE(v15) = 1;
    LOBYTE(v13) = 1;
    v14 = 1;
  }

  [NSKeyedArchiver archivedDataWithRootObject:a3];
  v7 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetLocalQueryData();
  if (v15)
  {
    NSLog(@"prepareForPlaybackWithQuery:andFirstItem: allPodcast, query=%@ count=%lu firstItem(%llu)=%@", a3, [objc_msgSend(a3 "items")], objc_msgSend(a4, "persistentID"), a4);
    self->podcastAppSelected = 1;
    if (a4)
    {
      [a4 persistentID];
      MRSystemAppPlaybackQueueSetLocalQueryFirstItemPID();
    }

    goto LABEL_4;
  }

  if (v14)
  {
LABEL_2:
    NSLog(@"prepareForPlaybackWithQuery:andFirstItem: allAudioBooks, query=%@ count=%lu firstItem(%llu)=%@", a3, [objc_msgSend(a3 "items")], objc_msgSend(a4, "persistentID"), a4);
    self->iBooksAppSelected = 1;
    if (a4)
    {
      [a4 persistentID];
      MRSystemAppPlaybackQueueSetLocalQueryFirstItemPID();
    }

LABEL_4:
    MRSystemAppPlaybackQueueInternalPrepareBundleIDForPlayback();
    MRMediaRemoteSetAppPlaybackQueue();
    usleep(0x493E0u);
    goto LABEL_5;
  }

  if (v13)
  {
    NSLog(@"prepareForPlaybackWithQuery:andFirstItem: alliTunesU, query=%@ count=%lu firstItem(%llu)=%@", a3, [objc_msgSend(a3 "items")], objc_msgSend(a4, "persistentID"), a4);
    self->iTunesUAppSelected = 1;
    if (a4)
    {
      [a4 persistentID];
      MRSystemAppPlaybackQueueSetLocalQueryFirstItemPID();
    }

    goto LABEL_4;
  }

LABEL_42:
  if (sub_100036874())
  {
    [a3 setIgnoreSystemFilterPredicates:1];
  }

  if (sub_100036DB4())
  {
    v9 = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
    if (!v9)
    {
      __break(0x5510u);
      return v9;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100039FF4;
    block[3] = &unk_100114638;
    block[4] = a3;
    block[5] = a4;
    block[6] = &v26;
    dispatch_sync(v9, block);
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  NSLog(@"prepareForPlaybackWithQuery:andFirstItem: no systemMusicPlayer!");
LABEL_5:
  if (v7)
  {
LABEL_6:
    MRSystemAppPlaybackQueueDestroy();
  }

LABEL_7:
  v8 = *(v27 + 6);
  _Block_object_dispose(&v26, 8);
  LODWORD(v9) = v8;
  return v9;
}

- (void)_nowPlayingItemChanged:(id)a3
{
  sub_1000DDE90(6u, @"MP: _nowPlayingItemChanged", a3);
  if (byte_10012C64C >= 2u)
  {
    goto LABEL_24;
  }

  if (byte_10012C64C)
  {
    byte_10012C64C = 0;
    if (qword_10012BB28 != -1)
    {
      sub_1000E1F88();
    }

    if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
    {
      goto LABEL_23;
    }

    (*(*qword_10012BB20 + 680))(qword_10012BB20);
    v4 = objc_alloc_init(NSAutoreleasePool);
    if (qword_10012BB28 != -1)
    {
      sub_1000E1F88();
    }

    if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
    {
      goto LABEL_23;
    }

    (*(*qword_10012BB20 + 568))(qword_10012BB20);
    v5 = [[MPMediaQuery alloc] initWithEntities:objc_msgSend(qword_10012C650 entityType:{"items"), 0}];
    [(MediaPlayerHelper *)self prepareForPlaybackWithQuery:v5 andFirstItem:qword_10012C658];

    if (qword_10012BB28 != -1)
    {
      sub_1000E1F88();
    }

    if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
    {
      goto LABEL_23;
    }

    (*(*qword_10012BB20 + 560))(qword_10012BB20);
    sub_10003A2CC();
  }

  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
  {
LABEL_23:
    __break(0x5516u);
LABEL_24:
    __break(0x550Au);
    return;
  }

  v6 = *(*qword_10012BB20 + 56);

  v6();
}

- (void)_repeatModeChanged:(id)a3
{
  sub_1000DDE90(6u, @"MP: _repeatModeChanged", a3);
  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  if (qword_10012BB20)
  {
    v3 = (qword_10012BB20 & 7) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *(*qword_10012BB20 + 56);

    v4();
  }

  else
  {
    __break(0x5516u);
  }
}

- (void)_shuffleModeChanged:(id)a3
{
  sub_1000DDE90(6u, @"MP: _shuffleModeChanged", a3);
  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  if (qword_10012BB20)
  {
    v3 = (qword_10012BB20 & 7) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *(*qword_10012BB20 + 56);

    v4();
  }

  else
  {
    __break(0x5516u);
  }
}

- (unsigned)nowPlayingAppIsValid
{
  p_nowPlayingAppIdentifier = &self->_nowPlayingAppIdentifier;
  if ((&self->_nowPlayingAppIdentifier & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    self = *p_nowPlayingAppIdentifier;
    if (*p_nowPlayingAppIdentifier)
    {
      LOBYTE(self) = [(MediaPlayerHelper *)self length:v2]!= 0;
    }
  }

  return self;
}

- (unsigned)nowPlayingAppIsIPodApp
{
  v2 = self;
  if (self->_nowPlayingAppIsIPodIsValid)
  {
    goto LABEL_10;
  }

  p_nowPlayingAppIdentifier = &self->_nowPlayingAppIdentifier;
  if ((&self->_nowPlayingAppIdentifier & 7) != 0)
  {
    goto LABEL_11;
  }

  if ([(NSString *)*p_nowPlayingAppIdentifier isEqualToString:@"com.apple.mobileipod"])
  {
    LODWORD(self) = 1;
  }

  else
  {
    LODWORD(self) = [(NSString *)*p_nowPlayingAppIdentifier isEqualToString:@"com.apple.Music"];
  }

  v2->_nowPlayingAppIsIPod = self;
  v2->_nowPlayingAppIsIPodRadio = 0;
  if (!self)
  {
    goto LABEL_9;
  }

  if (((v2 + 8) & 7) != 0)
  {
LABEL_11:
    __break(0x5516u);
    return self;
  }

  v2->_nowPlayingAppIsIPodRadio = [(NSMutableDictionary *)v2->_nowPlayingInfo objectForKey:kMRMediaRemoteNowPlayingInfoRadioStationName]!= 0;
LABEL_9:
  v2->_nowPlayingAppIsIPodIsValid = 1;
LABEL_10:
  LOBYTE(self) = v2->_nowPlayingAppIsIPod;
  return self;
}

- (unsigned)nowPlayingAppIsiTunesRadio
{
  v3 = [(MediaPlayerHelper *)self nowPlayingAppIsIPodApp];
  if (v3)
  {
    LOBYTE(v3) = self->_nowPlayingAppIsIPodRadio != 0;
  }

  return v3;
}

- (unsigned)nowPlayingAppIsVideosApp
{
  if ((&self->_nowPlayingAppIdentifier & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    LOBYTE(self) = [(NSString *)self->_nowPlayingAppIdentifier isEqualToString:@"com.apple.videos", v2, v3];
  }

  return self;
}

- (unsigned)nowPlayingAppIsPodcastApp
{
  if ((&self->_nowPlayingAppIdentifier & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    LOBYTE(self) = [(NSString *)self->_nowPlayingAppIdentifier isEqualToString:@"com.apple.podcasts", v2, v3];
  }

  return self;
}

- (unsigned)nowPlayingAppIsiBooksApp
{
  if ((&self->_nowPlayingAppIdentifier & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    LOBYTE(self) = [(NSString *)self->_nowPlayingAppIdentifier isEqualToString:@"com.apple.iBooks", v2, v3];
  }

  return self;
}

- (unsigned)nowPlayingAppIsiTunesUApp
{
  if ((&self->_nowPlayingAppIdentifier & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    LOBYTE(self) = [(NSString *)self->_nowPlayingAppIdentifier isEqualToString:@"com.apple.itunesu", v2, v3];
  }

  return self;
}

- (id)nowPlayingAppName
{
  if (((self + 88) & 7) == 0)
  {
    v2 = *(self + 11);
    if (v2)
    {
      return v2;
    }

    if (((self + 80) & 7) == 0)
    {
      return *(self + 10);
    }
  }

  __break(0x5516u);
  return self;
}

- (int)nowPlayingAppPlaybackState
{
  [(MediaPlayerHelper *)self _waitForNowPlayingInfoReceived];
  pthread_mutex_lock(&self->_nowPlayingInfoLock);
  v3 = sub_100067278();
  p_lastTimeNowPlayingPBRateChangeToPauseOrStop = &self->_lastTimeNowPlayingPBRateChangeToPauseOrStop;
  if ((&self->_lastTimeNowPlayingPBRateChangeToPauseOrStop & 3) != 0)
  {
    goto LABEL_27;
  }

  v5 = v3;
  v6 = 1;
  LODWORD(v3) = sub_10006814C(*p_lastTimeNowPlayingPBRateChangeToPauseOrStop, v3, 1);
  if (!dword_100129628)
  {
    explicitControlOccurred = self->_explicitControlOccurred;
    if (explicitControlOccurred >= 2)
    {
      goto LABEL_28;
    }

    v6 = (v3 > 0x7D0) | explicitControlOccurred;
  }

  v8 = v6 & (self->_nowPlayingAppIsPlaying == 0);
  if (!v8)
  {
    v9 = self->_explicitControlOccurred;
    if (v9 > 1)
    {
      goto LABEL_28;
    }

    sub_1000DDE90(6u, @"MP: nowPlayingAppPlaybackState: result=%d, _nowPlayingAppIsPlaying(%d) || ! pbRateChangeTimeExpired(%d), _explicitControlOccurred=%d curTime(%u) _lastTimeNowPlayingPBRateChangeToPauseOrStop(%u)", 1, self->_nowPlayingAppIsPlaying, v6 & 1, v9, v5, *p_lastTimeNowPlayingPBRateChangeToPauseOrStop);
  }

  if ((&self->_nowPlayingInfo & 7) != 0)
  {
LABEL_27:
    __break(0x5516u);
    goto LABEL_28;
  }

  v3 = [(NSMutableDictionary *)self->_nowPlayingInfo objectForKey:kMRMediaRemoteNowPlayingInfoPlaybackRate];
  v10 = v3;
  if (v3)
  {
    LODWORD(v3) = [v3 floatValue];
    if (v11 == 0.0)
    {
      if (v6)
      {
        nowPlayingAppIsPlaying = self->_nowPlayingAppIsPlaying;
LABEL_15:
        v13 = 2;
        sub_1000DDE90(6u, @"MP: nowPlayingAppPlaybackState: result=%d, playbackRateObj=%@ _nowPlayingAppIsPlaying=%d pbRateChangeTimeExpired=%d", 2, v10, nowPlayingAppIsPlaying, 1);
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    if ((v6 & (self->_nowPlayingAppIsPlaying == 0)) != 0)
    {
      nowPlayingAppIsPlaying = 0;
      goto LABEL_15;
    }
  }

  if (!v8)
  {
LABEL_19:
    v13 = 1;
    goto LABEL_22;
  }

  LODWORD(v3) = [(MediaPlayerHelper *)self isLoadingRadioStation];
  if (v3)
  {
    v13 = 1;
    sub_1000DDE90(6u, @"MP: nowPlayingAppPlaybackState: result=%d, isLoadingRadioStation=%d", 1, [(MediaPlayerHelper *)self isLoadingRadioStation]);
  }

  else
  {
    v14 = self->_explicitControlOccurred;
    if (v14 > 1)
    {
      goto LABEL_28;
    }

    sub_1000DDE90(6u, @"MP: nowPlayingAppPlaybackState: result=%d, _nowPlayingAppIsPlaying(%d) || ! pbRateChangeTimeExpired(%d), _explicitControlOccurred=%d curTime(%u) _lastTimeNowPlayingPBRateChangeToPauseOrStop(%u) playbackRateObj=%@ isLoadingRadioStation=%d", 0, self->_nowPlayingAppIsPlaying, 1, v14, v5, self->_lastTimeNowPlayingPBRateChangeToPauseOrStop, v10, [(MediaPlayerHelper *)self isLoadingRadioStation]);
    v13 = 0;
  }

LABEL_22:
  if ((&self->_cachedPlaybackStateResult & 3) != 0)
  {
    goto LABEL_27;
  }

  cachedPlaybackStateResult = self->_cachedPlaybackStateResult;
  if (cachedPlaybackStateResult != v13)
  {
    v16 = self->_explicitControlOccurred;
    if (v16 <= 1)
    {
      NSLog(@"MP: nowPlayingAppPlaybackState: playbackState=%d->%d, _nowPlayingAppIsPlaying(%d) pbRateChangeTimeExpired(%d), _explicitControlOccurred=%d curTime(%u) _lastTimeNowPlayingPBRateChangeToPauseOrStop(%u) playbackRateObj=%@ isLoadingRadioStation=%d", cachedPlaybackStateResult, v13, self->_nowPlayingAppIsPlaying, v6 & 1, v16, v5, self->_lastTimeNowPlayingPBRateChangeToPauseOrStop, v10, [(MediaPlayerHelper *)self isLoadingRadioStation]);
      self->_cachedPlaybackStateResult = v13;
      goto LABEL_26;
    }

LABEL_28:
    __break(0x550Au);
    return v3;
  }

LABEL_26:
  pthread_mutex_unlock(&self->_nowPlayingInfoLock);
  LODWORD(v3) = v13;
  return v3;
}

- (double)nowPlayingAppPlaybackRate
{
  [(MediaPlayerHelper *)self _waitForNowPlayingInfoReceived];
  pthread_mutex_lock(&self->_nowPlayingInfoLock);
  p_nowPlayingInfo = &self->_nowPlayingInfo;
  if ((&self->_nowPlayingInfo & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (*p_nowPlayingInfo)
    {
      v5 = [(NSMutableDictionary *)*p_nowPlayingInfo objectForKey:kMRMediaRemoteNowPlayingInfoPlaybackRate];
      [v5 floatValue];
      v7 = v6;
      if (!v5)
      {
        if (self->_nowPlayingAppIsPlaying)
        {
          v7 = 1.0;
        }
      }
    }

    else
    {
      v7 = 0.0;
    }

    pthread_mutex_unlock(&self->_nowPlayingInfoLock);
    return v7;
  }

  return result;
}

- (double)nowPlayingAppPlaybackSpeed
{
  [(MediaPlayerHelper *)self _waitForNowPlayingInfoReceived];
  pthread_mutex_lock(&self->_nowPlayingInfoLock);
  p_nowPlayingInfo = &self->_nowPlayingInfo;
  if ((&self->_nowPlayingInfo & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = 1.0;
    if (*p_nowPlayingInfo)
    {
      v6 = [(NSMutableDictionary *)*p_nowPlayingInfo objectForKey:kMRMediaRemoteNowPlayingInfoDefaultPlaybackRate];
      if (v6)
      {
        [v6 floatValue];
        v5 = v7;
      }
    }

    pthread_mutex_unlock(&self->_nowPlayingInfoLock);
    return v5;
  }

  return result;
}

- (double)currentPlaybackTime
{
  [(MediaPlayerHelper *)self _waitForNowPlayingInfoReceived];
  pthread_mutex_lock(&self->_nowPlayingInfoLock);
  p_nowPlayingInfo = &self->_nowPlayingInfo;
  if ((&self->_nowPlayingInfo & 7) == 0)
  {
    if (*p_nowPlayingInfo)
    {
      v5 = objc_alloc_init(NSAutoreleasePool);
      v6 = [(NSMutableDictionary *)*p_nowPlayingInfo objectForKey:kMRMediaRemoteNowPlayingInfoElapsedTime];
      v7 = [(NSMutableDictionary *)*p_nowPlayingInfo objectForKey:kMRMediaRemoteNowPlayingInfoPlaybackRate];
      v8 = [(NSMutableDictionary *)*p_nowPlayingInfo objectForKey:kMRMediaRemoteNowPlayingInfoTimestamp];
      v9 = +[NSDate date];
      [v7 doubleValue];
      v11 = v10;
      [v6 doubleValue];
      v13 = v12;
      [-[NSMutableDictionary objectForKey:](*p_nowPlayingInfo objectForKey:{kMRMediaRemoteNowPlayingInfoDuration), "doubleValue"}];
      v15 = v14;
      if (!v7 && self->_nowPlayingAppIsPlaying)
      {
        v11 = 1.0;
      }

      [(NSDate *)v9 timeIntervalSinceDate:v8];
      v17 = v13 + v16 * v11;
      if (v17 < 0.0)
      {
        v17 = 0.0;
      }

      if (v17 <= v15 || v15 <= 0.0)
      {
        v19 = v17;
      }

      else
      {
        v19 = v15;
      }

      goto LABEL_14;
    }

    if (!self->_nowPlayingAppIsPlaying)
    {
      v19 = 0.0;
      goto LABEL_15;
    }

    v5 = objc_alloc_init(NSAutoreleasePool);
    v20 = +[NSDate date];
    if ((&self->_nowPlayingAppIsPlayingTimestamp & 7) == 0)
    {
      if (self->_nowPlayingAppIsPlayingTimestamp)
      {
        [(NSDate *)v20 timeIntervalSinceDate:?];
        v19 = v21;
      }

      else
      {
        v19 = 0.0;
      }

LABEL_14:

LABEL_15:
      pthread_mutex_unlock(&self->_nowPlayingInfoLock);
      return v19;
    }
  }

  __break(0x5516u);
  return result;
}

- (double)currentNowPlayingInfoDuration
{
  [(MediaPlayerHelper *)self _waitForNowPlayingInfoReceived];
  pthread_mutex_lock(&self->_nowPlayingInfoLock);
  if ((&self->_nowPlayingInfo & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = [(NSMutableDictionary *)self->_nowPlayingInfo objectForKey:kMRMediaRemoteNowPlayingInfoDuration];
    if (v4)
    {
      [v4 doubleValue];
      v6 = v5;
    }

    else
    {
      v6 = -1.0;
    }

    pthread_mutex_unlock(&self->_nowPlayingInfoLock);
    return v6;
  }

  return result;
}

- (unint64_t)currentNowPlayingInfoPID
{
  [(MediaPlayerHelper *)self _waitForNowPlayingInfoReceived];
  result = pthread_mutex_lock(&self->_nowPlayingInfoLock);
  if (((self + 8) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v4 = [-[NSMutableDictionary objectForKey:](self->_nowPlayingInfo objectForKey:{kMRMediaRemoteNowPlayingInfoUniqueIdentifier), "unsignedLongLongValue"}];
    if (self->_nowPlayingAppIsIPodRadio)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    pthread_mutex_unlock(&self->_nowPlayingInfoLock);
    return v5;
  }

  return result;
}

- (unsigned)currentNowPlayingInfoNumber:(id)a3
{
  [(MediaPlayerHelper *)self _waitForNowPlayingInfoReceived];
  result = pthread_mutex_lock(&self->_nowPlayingInfoLock);
  if ((&self->_nowPlayingInfo & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v6 = [-[NSMutableDictionary objectForKey:](self->_nowPlayingInfo objectForKey:{a3), "unsignedIntValue"}];
    pthread_mutex_unlock(&self->_nowPlayingInfoLock);
    return v6;
  }

  return result;
}

- (id)currentNowPlayingInfoString:(id)a3
{
  [(MediaPlayerHelper *)self _waitForNowPlayingInfoReceived];
  result = pthread_mutex_lock(&self->_nowPlayingInfoLock);
  if ((&self->_nowPlayingInfo & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_nowPlayingInfo objectForKey:a3];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    pthread_mutex_unlock(&self->_nowPlayingInfoLock);
    return v7;
  }

  return result;
}

- (id)nowPlayingInfoTitleForAudiobookIndex:(unsigned int)a3
{
  if (![(MediaPlayerHelper *)self nowPlayingAppIsiBooksApp])
  {
    return 0;
  }

  v5 = [(MediaPlayerHelper *)self currentNowPlayingInfoChapterCount];
  if (v5 <= a3)
  {
    return 0;
  }

  v6 = [NSString stringWithFormat:@"%@ %u/%u", [(MediaPlayerHelper *)self currentNowPlayingInfoString:kMRMediaRemoteNowPlayingInfoAlbum], a3 + 1, v5];

  return v6;
}

- (unsigned)_currentNowPlayingInfoTrack:(BOOL)a3
{
  v3 = a3;
  v5 = [(MediaPlayerHelper *)self currentNowPlayingInfoNumber:kMRMediaRemoteNowPlayingInfoQueueIndex];
  v6 = [(MediaPlayerHelper *)self fakeStreamTrackIndexTimeExpired];
  if (v6)
  {
    if ([(MediaPlayerHelper *)self nowPlayingAppIsiBooksApp])
    {
      v6 = self;

      return [v6 currentNowPlayingInfoChapter];
    }

    if (qword_10012BB28 != -1)
    {
      sub_1000E1F88();
    }

    v6 = qword_10012BB20;
    if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
    {
      goto LABEL_21;
    }

    v6 = sub_10003AF10(qword_10012BB20, v3);
    if (!v6)
    {
      return v5;
    }

    if (dword_100129630 == 1)
    {
      return 0;
    }

    if ((dword_100129630 & 0xFFFFFFFE) != 2)
    {
      if ((&self->_fakeStreamTrackCount & 3) != 0)
      {
        goto LABEL_21;
      }

      if (!self->_fakeStreamTrackCount)
      {
        self->_fakeStreamTrackCount = 2;
        if ((&self->_fakeStreamTrackIndex & 3) != 0)
        {
          goto LABEL_21;
        }

        self->_fakeStreamTrackIndex = 1;
      }
    }
  }

  if ((&self->_fakeStreamTrackIndex & 3) == 0)
  {
    return self->_fakeStreamTrackIndex;
  }

LABEL_21:
  __break(0x5516u);
  return [v6 currentNowPlayingInfoChapter];
}

- (unsigned)currentNowPlayingInfoTrackCount
{
  v3 = [(MediaPlayerHelper *)self currentNowPlayingInfoNumber:kMRMediaRemoteNowPlayingInfoTotalQueueCount];
  if (![(MediaPlayerHelper *)self nowPlayingAppIsiBooksApp])
  {
    if (dword_100129630 != 4 || [(MediaPlayerHelper *)self fakeStreamTrackIndexTimeExpired])
    {
      if (qword_10012BB28 != -1)
      {
        sub_1000E1F88();
      }

      result = qword_10012BB20;
      if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
      {
        goto LABEL_24;
      }

      if (v3 > 0x7FFFFFFE)
      {
        v3 = 0;
      }

      result = (*(*qword_10012BB20 + 512))();
      if (!result)
      {
        return v3;
      }

      v3 = dword_100129630;
      if ((dword_100129630 - 1) < 2)
      {
        return v3;
      }

      p_fakeStreamTrackCount = &self->_fakeStreamTrackCount;
      if (dword_100129630 == 3)
      {
        if (((self - 100) & 3) == 0)
        {
          v3 = *p_fakeStreamTrackCount;
          if (!*p_fakeStreamTrackCount)
          {
            [(MediaPlayerHelper *)self _calcNewFakeStreamIndexCount];
            return self->_fakeStreamTrackCount;
          }

          return v3;
        }

LABEL_24:
        __break(0x5516u);
        return result;
      }

      if (((self - 100) & 3) != 0)
      {
        goto LABEL_24;
      }

      v3 = *p_fakeStreamTrackCount;
      if (!*p_fakeStreamTrackCount)
      {
        self->_fakeStreamTrackCount = 2;
        if ((&self->_fakeStreamTrackIndex & 3) != 0)
        {
          goto LABEL_24;
        }

        self->_fakeStreamTrackIndex = 1;
        return 2;
      }
    }

    return v3;
  }

  return [(MediaPlayerHelper *)self currentNowPlayingInfoChapterCount];
}

- (BOOL)isLoadingRadioStation
{
  p_nowPlayingInfo = &self->_nowPlayingInfo;
  if ((&self->_nowPlayingInfo & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v3 = [(NSMutableDictionary *)*p_nowPlayingInfo objectForKey:kMRMediaRemoteNowPlayingInfoRadioStationStringIdentifier];
    v4 = [(NSMutableDictionary *)*p_nowPlayingInfo objectForKey:kMRMediaRemoteNowPlayingInfoRadioStationHash];
    LOBYTE(self) = (v3 | v4 | [(NSMutableDictionary *)*p_nowPlayingInfo objectForKey:kMRMediaRemoteNowPlayingInfoRadioStationName]) != 0;
  }

  return self;
}

- (int)currentShuffleMode
{
  result = sub_100067278();
  p_expectedShuffleModeTimestamp = &self->expectedShuffleModeTimestamp;
  if ((&self->expectedShuffleModeTimestamp & 3) == 0)
  {
    result = sub_10006814C(*p_expectedShuffleModeTimestamp, result, 1);
    if (*p_expectedShuffleModeTimestamp && (!byte_10012BB08 ? (v5 = 1700) : (v5 = 5000), result < v5))
    {
      p_expectedShuffleMode = &self->expectedShuffleMode;
      if ((p_expectedShuffleMode & 3) == 0)
      {
        NSLog(@"MR: %s:%d return expectedShuffleMode=%d", "[MediaPlayerHelper currentShuffleMode]", 1429, *p_expectedShuffleMode);
        return *p_expectedShuffleMode;
      }
    }

    else
    {
      p_expectedShuffleMode = &self->shuffleModeCache;
      if ((p_expectedShuffleMode & 3) == 0)
      {
        NSLog(@"MR: %s:%d return shuffleModeCache=%d", "[MediaPlayerHelper currentShuffleMode]", 1432, *p_expectedShuffleMode);
        return *p_expectedShuffleMode;
      }
    }
  }

  __break(0x5516u);
  return result;
}

- (int)currentRepeatMode
{
  result = sub_100067278();
  p_expectedRepeatModeTimestamp = &self->expectedRepeatModeTimestamp;
  if ((&self->expectedRepeatModeTimestamp & 3) == 0)
  {
    result = sub_10006814C(*p_expectedRepeatModeTimestamp, result, 1);
    if (*p_expectedRepeatModeTimestamp && (!byte_10012BB08 ? (v5 = 1700) : (v5 = 5000), result < v5))
    {
      p_expectedRepeatMode = &self->expectedRepeatMode;
      if ((p_expectedRepeatMode & 3) == 0)
      {
        NSLog(@"MR: %s:%d return expectedRepeatMode=%d", "[MediaPlayerHelper currentRepeatMode]", 1442, *p_expectedRepeatMode);
        return *p_expectedRepeatMode;
      }
    }

    else
    {
      result = [(MediaPlayerHelper *)self nowPlayingAppIsiTunesRadio];
      if (result)
      {
        v7 = 3;
        NSLog(@"MR: %s:%d return repeatModeCache=%d", "[MediaPlayerHelper currentRepeatMode]", 1450, 3);
        return v7;
      }

      p_expectedRepeatMode = &self->repeatModeCache;
      if ((p_expectedRepeatMode & 3) == 0)
      {
        NSLog(@"MR: %s:%d return repeatModeCache=%d", "[MediaPlayerHelper currentRepeatMode]", 1454, *p_expectedRepeatMode);
        return *p_expectedRepeatMode;
      }
    }
  }

  __break(0x5516u);
  return result;
}

- (void)setExpectedShuffleMode:(int)a3
{
  NSLog(@"MR: %s:%d shuffleMode=%d", a2, "[MediaPlayerHelper setExpectedShuffleMode:]", 1460, a3);
  if ((&self->shuffleModeCache & 3) != 0)
  {
    goto LABEL_7;
  }

  if (self->shuffleModeCache == a3)
  {
    return;
  }

  if ((&self->expectedShuffleMode & 3) != 0 || (self->expectedShuffleMode = a3, v5 = sub_100067278(), (&self->expectedShuffleModeTimestamp & 3) != 0))
  {
LABEL_7:
    __break(0x5516u);
    return;
  }

  self->expectedShuffleModeTimestamp = v5;
  NSLog(@"MR: %s:%d expectedShuffleMode=%d expectedShuffleModeTimestamp=%u", "[MediaPlayerHelper setExpectedShuffleMode:]", 1466, self->expectedShuffleMode, v5);
}

- (void)setExpectedRepeatMode:(int)a3
{
  NSLog(@"MR: %s:%d repeatMode=%d", a2, "[MediaPlayerHelper setExpectedRepeatMode:]", 1472, a3);
  if ((&self->repeatModeCache & 3) != 0)
  {
    goto LABEL_7;
  }

  if (self->repeatModeCache == a3)
  {
    return;
  }

  if ((&self->expectedRepeatMode & 3) != 0 || (self->expectedRepeatMode = a3, v5 = sub_100067278(), (&self->expectedRepeatModeTimestamp & 3) != 0))
  {
LABEL_7:
    __break(0x5516u);
    return;
  }

  self->expectedRepeatModeTimestamp = v5;
  NSLog(@"MR: %s:%d expectedRepeatMode=%d expectedRepeatModeTimestamp=%u", "[MediaPlayerHelper setExpectedRepeatMode:]", 1478, self->expectedRepeatMode, v5);
}

- (id)currentNowPlayingInfoArtwork
{
  result = pthread_mutex_lock(&self->_nowPlayingInfoLock);
  p_nowPlayingInfo = &self->_nowPlayingInfo;
  if ((&self->_nowPlayingInfo & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (*p_nowPlayingInfo)
    {
      v5 = [(NSMutableDictionary *)*p_nowPlayingInfo objectForKey:kMRMediaRemoteNowPlayingInfoArtworkData];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }
    }

    else
    {
      v6 = 0;
    }

    pthread_mutex_unlock(&self->_nowPlayingInfoLock);
    return v6;
  }

  return result;
}

- (BOOL)currentNowPlayingInfoArtworkExists
{
  result = pthread_mutex_lock(&self->_nowPlayingInfoLock);
  p_nowPlayingInfo = &self->_nowPlayingInfo;
  if ((&self->_nowPlayingInfo & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v6 = *p_nowPlayingInfo && (v5 = [*p_nowPlayingInfo objectForKey:kMRMediaRemoteNowPlayingInfoArtworkData]) != 0 && objc_msgSend(v5, "length") != 0;
    pthread_mutex_unlock(&self->_nowPlayingInfoLock);
    return v6;
  }

  return result;
}

- (BOOL)currentNowPlayingInfoTrackCountExists
{
  result = pthread_mutex_lock(&self->_nowPlayingInfoLock);
  p_nowPlayingInfo = &self->_nowPlayingInfo;
  if ((&self->_nowPlayingInfo & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (*p_nowPlayingInfo)
    {
      v5 = [(NSMutableDictionary *)*p_nowPlayingInfo objectForKey:kMRMediaRemoteNowPlayingInfoTotalQueueCount]!= 0;
    }

    else
    {
      v5 = 0;
    }

    pthread_mutex_unlock(&self->_nowPlayingInfoLock);
    return v5;
  }

  return result;
}

- (void)initPBQItemsFromQueueQuery
{
  p_pbqItems = &self->pbqItems;
  if ((&self->pbqItems & 7) != 0)
  {
    __break(0x5516u);
  }

  else if (!*p_pbqItems)
  {
    if (sub_100036DB4())
    {
      v3 = [+[MediaPlayerHelper sharedSystemMusicPlayer](MediaPlayerHelper "sharedSystemMusicPlayer")];
      if (v3)
      {
        v3 = [(NSArray *)v3 items];
      }

      *p_pbqItems = v3;
    }

    else
    {
      NSLog(@"%s:%d no systemMusicPlayer!", "[MediaPlayerHelper initPBQItemsFromQueueQuery]", 1553);
    }
  }
}

- (id)getPBQItemsFromQueueQuery
{
  if (((self + 144) & 7) == 0)
  {
    return *(self + 18);
  }

  __break(0x5516u);
  return self;
}

- (id)_nowPlayingInfoDesc:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoUniqueIdentifier];
  v30 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoTitle];
  v32 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoPlaybackRate];
  v31 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoQueueIndex];
  v29 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoTotalQueueCount];
  v28 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoChapterNumber];
  v27 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoTotalChapterCount];
  v26 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoDiscNumber];
  v25 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoTotalDiscCount];
  v24 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoTrackNumber];
  v23 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoTotalTrackCount];
  v22 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoDuration];
  v21 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoElapsedTime];
  v20 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoArtist];
  v19 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoAlbum];
  v6 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoComposer];
  v7 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoGenre];
  v8 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoStartTime];
  v9 = [a3 objectForKey:kMRMediaRemoteNowPlayingInfoTimestamp];
  v10 = v5;
  v11 = [v5 unsignedLongLongValue];
  result = +[NSDate date];
  if ((&self->repeatModeCache & 3) != 0 || (&self->shuffleModeCache & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v13 = result;
    repeatModeCache = self->repeatModeCache;
    shuffleModeCache = self->shuffleModeCache;
    [result timeIntervalSinceDate:v8];
    v17 = v16;
    [v13 timeIntervalSinceDate:v9];
    return [NSString stringWithFormat:@"    pid=%@, 0x%qx track#:%@/%@ chap#:%@/%@ disc#:%@/%@\n    elapsed=%@/%@ playbackRate=%@\n    albumTrack#:%@/%@ cached:[repeat=%d shuffle=%d]\n    startTime=%@, %lf timeStamp=%@, %lf nowTime=%@\n    title=%@\n    artist=%@\n    album=%@\n    composer=%@\n    genre=%@", v10, v11, v31, v29, v28, v27, v26, v25, v21, v22, v32, v24, v23, repeatModeCache, shuffleModeCache, v8, v17, v9, v18, v13, v30, v20, v19, v6, v7];
  }

  return result;
}

- (void)_printNowPlayingInfo:(id)a3 forName:(id)a4
{
  if (sub_1000DDE68(7))
  {
    NSLog(@"MR: %s:%d %@=%hhx", "[MediaPlayerHelper _printNowPlayingInfo:forName:]", 1633, a4, a3);
    if (a3)
    {
      NSLog(@"MR: %s:%d\n%@", "[MediaPlayerHelper _printNowPlayingInfo:forName:]", 1638, [(MediaPlayerHelper *)self _nowPlayingInfoDesc:a3]);
    }
  }
}

- (void)_handleNowPlayingInfo:(__CFDictionary *)a3
{
  v96 = objc_alloc_init(NSAutoreleasePool);
  v100 = sub_1000CA714();
  pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6D8 >= 0xFFFFFFFFFFFFFFF4)
  {
    goto LABEL_210;
  }

  if (dword_10012B6E4)
  {
    pthread_once(&stru_100129688, sub_100045928);
    pthread_mutex_lock(&stru_100129648);
    if (qword_10012BAE0)
    {
      if (!qword_10012BB10 || (qword_10012BB10 & 7) != 0 || !qword_10012BAD8 || (qword_10012BAD8 & 7) != 0)
      {
        goto LABEL_206;
      }

      if (v100 < *(qword_10012BAD8 + 16))
      {
        goto LABEL_208;
      }

      v5 = *(qword_10012BB10 + 76);
      if (v5 >= 8)
      {
        goto LABEL_207;
      }

      if (v5 >= 4)
      {
        goto LABEL_209;
      }

      if (dword_10012B6D8[v5])
      {
        (*(*qword_10012BB10 + 104))();
      }

      sub_10003C974(&qword_10012BAD0);
    }

    pthread_mutex_unlock(&stru_100129648);
    pthread_once(&stru_100129608, sub_10003851C);
    if (dword_10012C648)
    {
      if (!qword_10012C640 || (qword_10012C640 & 7) != 0)
      {
        goto LABEL_206;
      }

      if (v100 < dword_10012C648)
      {
        goto LABEL_208;
      }

      v6 = *(qword_10012C640 + 76);
      if (v6 >= 8)
      {
        goto LABEL_207;
      }

      if (v6 >= 4)
      {
        goto LABEL_209;
      }

      if (dword_10012B6D8[v6])
      {
        (*(*qword_10012C640 + 104))();
      }

      dword_10012C648 = 0;
    }
  }

  NSLog(@"MR: %s:%d nowPlayingInfo=%hhx", "[MediaPlayerHelper _handleNowPlayingInfo:]", 1670, a3);
  p_nowPlayingInfo = &self->_nowPlayingInfo;
  if ((&self->_nowPlayingInfo & 7) != 0)
  {
    goto LABEL_206;
  }

  v8 = *p_nowPlayingInfo;
  v9 = *p_nowPlayingInfo != 0;
  if (*p_nowPlayingInfo)
  {
    [-[NSMutableDictionary objectForKey:](v8 objectForKey:{kMRMediaRemoteNowPlayingInfoPlaybackRate), "floatValue"}];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  if (!a3 || ![(__CFDictionary *)a3 count])
  {
    sub_1000DDE90(7u, @"MR: %s:%d nil nowPlayingInfo=%hhx oldNowPlayingInfo=%hhx tmpNowPlayingInfo=%hhx", "[MediaPlayerHelper _handleNowPlayingInfo:]", 1706, a3, v8, 0);
    v12 = 0;
    v15 = 0;
    v16 = 0;
    v94 = 0;
    v92 = 0;
    v99 = 0;
    v97 = 0;
    v93 = 0;
    v82 = 0;
    v98 = 0;
    v90 = 1;
    v85 = 1;
    v88 = 1;
    v17 = v9;
    v18 = v9;
    goto LABEL_89;
  }

  sub_1000DDE90(7u, @"MR: %s:%d copy nowPlayingInfo(%hhx) to tmpNowPlayingInfo(%hhx), oldNowPlayingInfo=%hhx", "[MediaPlayerHelper _handleNowPlayingInfo:]", 1700, a3, 0, v8);
  v12 = [NSMutableDictionary dictionaryWithDictionary:a3];
  [NowPlayingHelper validateNowPlayingInfo:v12];
  if (!v12)
  {
    v15 = 0;
    v16 = 0;
    v94 = 0;
    v92 = 0;
    v99 = 0;
    v97 = 0;
    v93 = 0;
    v82 = 0;
    v98 = 0;
    v9 = 0;
    v17 = 0;
    v18 = 0;
    v90 = 1;
    v85 = 1;
    v88 = 1;
    goto LABEL_89;
  }

  v13 = v12;
  v14 = kMRMediaRemoteNowPlayingInfoTimestamp;
  if (dword_100129618 || ![(NSMutableDictionary *)v12 objectForKey:kMRMediaRemoteNowPlayingInfoTimestamp])
  {
    NSLog(@"%s:%s:%d nil timestamp for nowPlayingInfo, setting it to current time", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/IAP/link/MediaPlayer.mm", "[MediaPlayerHelper _handleNowPlayingInfo:]", 1724);
    [(NSMutableDictionary *)v12 setObject:+[NSDate forKey:"date"], v14];
  }

  v19 = kMRMediaRemoteNowPlayingInfoUniqueIdentifier;
  v20 = [(NSMutableDictionary *)v12 objectForKey:kMRMediaRemoteNowPlayingInfoUniqueIdentifier];
  v86 = kMRMediaRemoteNowPlayingInfoTotalQueueCount;
  v21 = [(NSMutableDictionary *)v12 objectForKey:?];
  v83 = kMRMediaRemoteNowPlayingInfoPlaybackRate;
  v22 = [(NSMutableDictionary *)v12 objectForKey:?];
  v23 = [(NSMutableDictionary *)v12 objectForKey:kMRMediaRemoteNowPlayingInfoIsMusicApp];
  v24 = [(NSMutableDictionary *)v12 objectForKey:kMRMediaRemoteNowPlayingInfoRadioStationName];
  v76 = kMRMediaRemoteNowPlayingInfoTitle;
  v25 = [(NSMutableDictionary *)v12 objectForKey:?];
  v98 = v22 != 0;
  v81 = v22;
  [v22 floatValue];
  v27 = v26;
  v97 = v23 != 0;
  v93 = [v23 BOOLValue];
  v89 = v20;
  v91 = v24;
  v28 = [v20 unsignedLongLongValue];
  v92 = v25 != 0;
  v95 = v21;
  v29 = [v21 unsignedLongValue];
  v99 = v24 != 0;
  if (v8)
  {
    v78 = v29;
    v79 = v28;
    v30 = kMRMediaRemoteNowPlayingInfoQueueIndex;
    v80 = [(NSMutableDictionary *)v12 objectForKey:kMRMediaRemoteNowPlayingInfoQueueIndex];
    v31 = kMRMediaRemoteNowPlayingInfoChapterNumber;
    v32 = [(NSMutableDictionary *)v12 objectForKey:kMRMediaRemoteNowPlayingInfoChapterNumber];
    v33 = kMRMediaRemoteNowPlayingInfoArtworkData;
    v77 = [(NSMutableDictionary *)v12 objectForKey:kMRMediaRemoteNowPlayingInfoArtworkData];
    v34 = [(NSMutableDictionary *)v8 objectForKey:v19];
    v35 = [(NSMutableDictionary *)v8 objectForKey:v30];
    v36 = [(NSMutableDictionary *)v8 objectForKey:v86];
    v87 = [(NSMutableDictionary *)v8 objectForKey:v83];
    v84 = [(NSMutableDictionary *)v8 objectForKey:v33];
    v37 = [(NSMutableDictionary *)v8 objectForKey:v31];
    v75 = v32;
    if (v89)
    {
      if (!v34)
      {
        v18 = 1;
        v40 = v79;
        goto LABEL_47;
      }

      v38 = v37;
      v39 = [v89 isEqualToNumber:v34];
      v37 = v38;
      v40 = v79;
      if (v39)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v40 = v79;
      if (!v34)
      {
LABEL_39:
        v41 = v37;
        v42 = [(NSMutableDictionary *)v8 objectForKey:v76];
        v43 = v91;
        if (v25)
        {
          v44 = v95;
          if (!v42 || ![v25 isEqualToString:v42])
          {
            goto LABEL_52;
          }
        }

        else
        {
          v44 = v95;
          if (v42)
          {
            goto LABEL_52;
          }
        }

        if (!v80)
        {
          v18 = v35 != 0;
          goto LABEL_53;
        }

        if (v35)
        {
          v18 = [v80 isEqualToNumber:v35] ^ 1;
LABEL_53:
          v37 = v41;
          goto LABEL_54;
        }

LABEL_52:
        v18 = 1;
        goto LABEL_53;
      }
    }

    v18 = 1;
LABEL_47:
    v44 = v95;
    v43 = v91;
LABEL_54:
    v45 = v87;
    if ((!v44 || v36) && (v44 || !v36))
    {
      v17 = 0;
      if (v44 && v36)
      {
        v52 = v37;
        v53 = [v44 isEqualToNumber:v36];
        v45 = v87;
        v37 = v52;
        v17 = v53 ^ 1;
      }
    }

    else
    {
      v17 = 1;
    }

    if (v45)
    {
      v46 = v37;
      v47 = [v81 isEqualToNumber:?];
      v37 = v46;
      v9 = v47 ^ 1;
    }

    else
    {
      v9 = 1;
    }

    v28 = v40;
    if (v37)
    {
      [v75 isEqualToNumber:v37];
    }

    if (v80)
    {
      v48 = [v80 intValue] == -1;
    }

    else
    {
      v48 = 1;
    }

    v88 = v48;
    v49 = 1;
    if (!v43 && v44 && !dword_100129630)
    {
      v50 = [v44 intValue];
      if (v50 == 0x7FFFFFFF)
      {
        v51 = 0;
      }

      else
      {
        v51 = v50;
      }

      if (v51 < 1)
      {
        v49 = 1;
      }

      else
      {
        if (((self - 100) & 3) != 0)
        {
          goto LABEL_206;
        }

        self->_fakeStreamTrackCount = v51;
        if ((&self->_fakeStreamTrackIndex & 3) != 0)
        {
          goto LABEL_206;
        }

        v49 = 0;
        self->_fakeStreamTrackIndex = v51 - 1;
      }
    }

    v85 = v49;
    if (![v77 length] && objc_msgSend(v84, "length") || objc_msgSend(v77, "length") && !objc_msgSend(v84, "length"))
    {
      v16 = [v77 length] != 0;
      v94 = 1;
    }

    else
    {
      v16 = 0;
      v94 = 0;
    }

    v29 = v78;
    goto LABEL_88;
  }

  v16 = 0;
  v94 = 0;
  v85 = 1;
  v88 = 1;
  v9 = 1;
  v17 = 1;
  v18 = 1;
LABEL_88:
  v15 = v28 != 0;
  v90 = v29 == 0;
  v82 = v27 != 0.0;
LABEL_89:
  NSLog(@"MR: %s:%d\n%@\n.... changed to ....\n%@", "[MediaPlayerHelper _handleNowPlayingInfo:]", 1832, [(MediaPlayerHelper *)self _nowPlayingInfoDesc:v8], [(MediaPlayerHelper *)self _nowPlayingInfoDesc:v12]);
  NSLog(@"MR: %s:%d isTrackChanged=%d isPBContentChanged=%d isPBRateChanged=%d tmpNowPlayingInfo=%hhx oldNowPlayingInfo=%hhx", "[MediaPlayerHelper _handleNowPlayingInfo:]", 1836, v18, v17, v9, v12, v8);
  if (self->_nowPlayingAppChanged)
  {
    self->_nowPlayingAppChanged = 0;
    LODWORD(v17) = 1;
  }

  pthread_mutex_lock(&self->_nowPlayingInfoLock);
  self->_nowPlayingInfo = v12;
  self->_nowPlayingInfoEverReceived = 1;
  pthread_mutex_unlock(&self->_nowPlayingInfoLock);
  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
  {
    goto LABEL_206;
  }

  sub_10003C9E8(qword_10012BB20, 1);
  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
  {
    goto LABEL_206;
  }

  sub_10003CB30(qword_10012BB20);
  if (v97)
  {
    self->_nowPlayingAppIsIPod = v93;
    self->_nowPlayingAppIsIPodIsValid = 1;
  }

  nowPlayingAppIsIPodRadio = self->_nowPlayingAppIsIPodRadio;
  self->_nowPlayingAppIsIPodRadio = 0;
  nowPlayingAppIsIPod = self->_nowPlayingAppIsIPod;
  if (self->_nowPlayingAppIsIPod)
  {
    nowPlayingAppIsIPod = v99;
    self->_nowPlayingAppIsIPodRadio = v99;
  }

  if (nowPlayingAppIsIPod == (nowPlayingAppIsIPodRadio != 0))
  {
    v56 = v17;
  }

  else
  {
    v56 = 1;
  }

  pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6E4)
  {
    v57 = sub_1000CA714();
    if (!qword_10012BB18 || (qword_10012BB18 & 7) != 0)
    {
      goto LABEL_206;
    }

    if (v57 >= v100)
    {
      v58 = *(qword_10012BB18 + 76);
      if (v58 >= 8)
      {
        goto LABEL_207;
      }

      if (v58 < 4)
      {
        if (dword_10012B6D8[v58])
        {
          (*(*qword_10012BB18 + 104))();
        }

        goto LABEL_114;
      }

LABEL_209:
      __break(0x5512u);
LABEL_210:
      __break(0x5513u);
      goto LABEL_211;
    }

LABEL_208:
    __break(0x5515u);
    goto LABEL_209;
  }

LABEL_114:
  fakeStreamTrackIndexNeedChange = self->_fakeStreamTrackIndexNeedChange;
  if (fakeStreamTrackIndexNeedChange > 1)
  {
    goto LABEL_207;
  }

  if (fakeStreamTrackIndexNeedChange)
  {
    self->_fakeStreamTrackIndexNeedChange = 0;
    LODWORD(v18) = 1;
  }

  if (dword_100129630 == 4)
  {
    LODWORD(v18) = 0;
  }

  if ((v16 | v18) != 1)
  {
    goto LABEL_126;
  }

  if (!v15 && !v92 && !v99)
  {
    if (v18)
    {
LABEL_153:
      [(MediaPlayerHelper *)self performSelectorOnMainThread:"_nowPlayingItemChanged:" withObject:0 waitUntilDone:0];
      goto LABEL_154;
    }

LABEL_126:
    if (!v56)
    {
      goto LABEL_162;
    }

    goto LABEL_155;
  }

  if ((v85 | v88 | v99) == 1)
  {
    fakeStreamTrackIndexSet = self->_fakeStreamTrackIndexSet;
    if (fakeStreamTrackIndexSet > 1)
    {
      goto LABEL_207;
    }

    if (fakeStreamTrackIndexSet)
    {
      self->_fakeStreamTrackIndexSet = 0;
    }

    else
    {
      if (dword_100129630)
      {
        if (dword_100129630 == 3)
        {
          [(MediaPlayerHelper *)self _calcNewFakeStreamIndexCount];
        }

        else if (dword_100129630 == 2)
        {
          if ((&self->_fakeStreamTrackIndex & 3) != 0)
          {
            goto LABEL_206;
          }

          self->_fakeStreamTrackIndex = (self->_fakeStreamTrackIndex & 1) == 0;
        }
      }

      else
      {
        if (((self - 100) & 3) != 0)
        {
          goto LABEL_206;
        }

        fakeStreamTrackCount = self->_fakeStreamTrackCount;
        v62 = fakeStreamTrackCount - 1 < 0x1E847F ? fakeStreamTrackCount + 1 : 2;
        self->_fakeStreamTrackCount = v62;
        if ((&self->_fakeStreamTrackIndex & 3) != 0)
        {
          goto LABEL_206;
        }

        self->_fakeStreamTrackIndex = v62 - 1;
      }

      if ((&self->_fakeStreamTrackIndexSetTimestamp & 3) != 0)
      {
        goto LABEL_206;
      }

      self->_fakeStreamTrackIndexSetTimestamp = 0;
    }

    if (qword_10012BB28 != -1)
    {
      sub_1000E1F88();
    }

    if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
    {
      goto LABEL_206;
    }

    LOBYTE(v56) = v18 & (*(*qword_10012BB20 + 512))() | v56;
  }

  if (v18)
  {
    if (qword_10012BB28 != -1)
    {
      sub_1000E1F88();
    }

    if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
    {
      goto LABEL_206;
    }

    sub_10003CBB8(qword_10012BB20);
    goto LABEL_153;
  }

LABEL_154:
  if ((v56 & 1) == 0)
  {
    goto LABEL_162;
  }

LABEL_155:
  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  if (!qword_10012BB20)
  {
    goto LABEL_206;
  }

  if ((qword_10012BB20 & 7) != 0)
  {
    goto LABEL_206;
  }

  (*(*qword_10012BB20 + 56))();
  v63 = sub_10004B1AC();
  if (!v63 || (v63 & 7) != 0)
  {
    goto LABEL_206;
  }

  sub_10004FC1C(v63);
LABEL_162:
  if (v98)
  {
    v64 = v90;
    if (self->_nowPlayingAppIsIPodRadio)
    {
      v64 = 1;
    }

    self->_lastWasStreamPlayback = v64;
  }

  if (v9)
  {
    if (dword_100129628)
    {
      goto LABEL_186;
    }

    if (v11 != 0.0)
    {
      explicitControlOccurred = self->_explicitControlOccurred;
      if (explicitControlOccurred > 1)
      {
        goto LABEL_207;
      }

      if ((explicitControlOccurred & 1) == 0)
      {
        lastWasStreamPlayback = self->_lastWasStreamPlayback;
        if (lastWasStreamPlayback > 1)
        {
          goto LABEL_207;
        }

        if (!v82 || !v98) && (lastWasStreamPlayback)
        {
          v69 = sub_100067278();
          if (((self - 84) & 3) != 0)
          {
            goto LABEL_206;
          }

          self->_lastTimeNowPlayingPBRateChangeToPauseOrStop = v69;
          v70 = dispatch_time(0, 2000000000);
          p_nowPlayingHandlerQueue = &self->nowPlayingHandlerQueue;
          if ((&self->nowPlayingHandlerQueue & 7) != 0)
          {
            goto LABEL_206;
          }

          v72 = *p_nowPlayingHandlerQueue;
          if (!*p_nowPlayingHandlerQueue)
          {
            goto LABEL_211;
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10003CC58;
          block[3] = &unk_100111C88;
          block[4] = self;
          dispatch_after(v70, v72, block);
LABEL_185:
          self->_explicitControlOccurred = 0;
LABEL_186:
          if (qword_10012BB28 != -1)
          {
            sub_1000E1FB0();
          }

          v73 = qword_10012BB20;
          if (qword_10012BB20 && (qword_10012BB20 & 7) == 0)
          {
            [(MediaPlayerHelper *)self nowPlayingAppPlaybackState];
            (*(*v73 + 56))(v73, 524301, 0, 0, 0);
            goto LABEL_191;
          }

LABEL_206:
          __break(0x5516u);
          goto LABEL_207;
        }
      }
    }

    v66 = self->_explicitControlOccurred;
    if (v66 <= 1)
    {
      v67 = v82;
      if (v11 != 0.0)
      {
        v67 = 0;
      }

      if (v67 || (v66 & 1) != 0)
      {
        if ((&self->_lastTimeNowPlayingPBRateChangeToPauseOrStop & 3) != 0)
        {
          goto LABEL_206;
        }

        self->_lastTimeNowPlayingPBRateChangeToPauseOrStop = 0;
      }

      goto LABEL_185;
    }

LABEL_207:
    __break(0x550Au);
    goto LABEL_208;
  }

LABEL_191:
  if (v8)
  {
    sub_1000DDE90(7u, @"MR: %s:%d release oldNowPlayingInfo(%hhx)", "[MediaPlayerHelper _handleNowPlayingInfo:]", 1991, v8);
  }

  if (!v94)
  {
    goto LABEL_199;
  }

  if (qword_10012BB28 != -1)
  {
    sub_1000E1FB0();
  }

  if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
  {
    goto LABEL_206;
  }

  (*(*qword_10012BB20 + 56))();
LABEL_199:
  if (!self->_nowPlayingAppIsIPodIsValid || !self->_nowPlayingAppIsIPod || self->_nowPlayingAppIsIPodRadio)
  {
    goto LABEL_204;
  }

  v74 = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
  if (v74)
  {
    dispatch_sync(v74, &stru_100114658);
LABEL_204:

    return;
  }

LABEL_211:
  __break(0x5510u);
}

- (void)_handlePlaybackQueueDidChange
{
  NSLog(@"MR: %s:%d PlaybackQueueDidChange", a2, "[MediaPlayerHelper _handlePlaybackQueueDidChange]", 2062);
  if (sub_100036DB4())
  {
    v3 = +[MediaPlayerHelper sharedSystemMusicPlayerQueue];
    if (!v3)
    {
      goto LABEL_11;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003D15C;
    block[3] = &unk_100111C88;
    block[4] = self;
    dispatch_sync(v3, block);
  }

  else
  {
    NSLog(@"%s:%d no systemMusicPlayer!", "[MediaPlayerHelper _handlePlaybackQueueDidChange]", 2066);
  }

  if (qword_10012BB28 != -1)
  {
    sub_1000E1FB0();
  }

  if (qword_10012BB20 && (qword_10012BB20 & 7) == 0)
  {
    (*(*qword_10012BB20 + 56))();
    return;
  }

  __break(0x5516u);
LABEL_11:
  __break(0x5510u);
}

- (void)_handleNowPlayingAppDidChange:(id)a3
{
  v14 = objc_alloc_init(NSAutoreleasePool);
  pthread_mutex_lock(&self->_nowPlayingInfoLock);
  if (!a3)
  {
    goto LABEL_5;
  }

  p_nowPlayingAppIdentifier = &self->_nowPlayingAppIdentifier;
  if ((&self->_nowPlayingAppIdentifier & 7) != 0)
  {
    goto LABEL_40;
  }

  if (!*p_nowPlayingAppIdentifier || ([*p_nowPlayingAppIdentifier isEqualToString:a3] & 1) == 0)
  {
LABEL_5:
    v6 = &self->_nowPlayingAppIdentifier;
    if ((&self->_nowPlayingAppIdentifier & 7) == 0)
    {
      NSLog(@"MR: %s:%d app='%@'->'%@'", "[MediaPlayerHelper _handleNowPlayingAppDidChange:]", 2097, *v6, a3);
      if (*v6)
      {

        *v6 = 0;
      }

      if (a3)
      {
        v7 = [NSString stringWithString:a3];
        self->_nowPlayingAppIdentifier = v7;
        v8 = v7;
        self->_nowPlayingAppChanged = 1;
      }

      self->_nowPlayingAppIsIPodIsValid = 0;
      goto LABEL_11;
    }

LABEL_40:
    __break(0x5516u);
    goto LABEL_41;
  }

LABEL_11:
  pthread_mutex_unlock(&self->_nowPlayingInfoLock);
  podcastAppSelected = self->podcastAppSelected;
  if (podcastAppSelected >= 2)
  {
    goto LABEL_41;
  }

  if ((podcastAppSelected & 1) != 0 && [(MediaPlayerHelper *)self nowPlayingAppIsPodcastApp])
  {
    goto LABEL_33;
  }

  iBooksAppSelected = self->iBooksAppSelected;
  if (iBooksAppSelected > 1)
  {
    goto LABEL_41;
  }

  if ((iBooksAppSelected & 1) != 0 && [(MediaPlayerHelper *)self nowPlayingAppIsiBooksApp])
  {
    goto LABEL_33;
  }

  iTunesUAppSelected = self->iTunesUAppSelected;
  if (iTunesUAppSelected > 1)
  {
LABEL_41:
    __break(0x550Au);
    return;
  }

  if ((iTunesUAppSelected & 1) == 0 || ![(MediaPlayerHelper *)self nowPlayingAppIsiTunesUApp])
  {
    if (qword_10012BB28 != -1)
    {
      sub_1000E1F88();
    }

    if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
    {
      goto LABEL_40;
    }

    sub_10003C9E8(qword_10012BB20, 0);
    if (qword_10012BB28 != -1)
    {
      sub_1000E1F88();
    }

    if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
    {
      goto LABEL_40;
    }

    sub_10003CBB8(qword_10012BB20);
    if (qword_10012BB28 != -1)
    {
      sub_1000E1F88();
    }

    if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
    {
      goto LABEL_40;
    }

    sub_10003D3E4(qword_10012BB20, v12, v13);
  }

LABEL_33:
  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  if (!qword_10012BB20 || (qword_10012BB20 & 7) != 0)
  {
    goto LABEL_40;
  }

  sub_10003CB30(qword_10012BB20);
}

- (void)_setNowPlayingApp:(id)a3
{
  pthread_mutex_lock(&self->_nowPlayingInfoLock);
  p_nowPlayingAppIdentifier = &self->_nowPlayingAppIdentifier;
  if ((&self->_nowPlayingAppIdentifier & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    if (*p_nowPlayingAppIdentifier)
    {

      *p_nowPlayingAppIdentifier = 0;
    }

    if (a3)
    {
      v6 = [NSString stringWithString:a3];
      *p_nowPlayingAppIdentifier = v6;
      v7 = v6;
    }

    self->_nowPlayingAppIsIPodIsValid = 0;

    pthread_mutex_unlock(&self->_nowPlayingInfoLock);
  }
}

- (void)_canShowCloudTracksDidChangeNotification:(id)a3
{
  if (byte_100129624 >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    sub_1000DDE90(0, @"%s:%d __showCloudTracksSetting=%d->%d", "-[MediaPlayerHelper _canShowCloudTracksDidChangeNotification:]", 2157, byte_100129624, [+[MPCloudController sharedCloudController](MPCloudController sharedCloudController]);
    byte_100129624 = [+[MPCloudController sharedCloudController](MPCloudController "sharedCloudController")];
  }
}

- (void)_nowPlayingInfoChanged:(id)a3
{
  pthread_once(&stru_10012B6E8, sub_1000CA2C8);
  if (dword_10012B6D8 >= 0xFFFFFFFFFFFFFFF4)
  {
    goto LABEL_36;
  }

  if (!dword_10012B6E4)
  {
    goto LABEL_33;
  }

  v9 = sub_1000CA714();
  pthread_once(&stru_100129688, sub_100045928);
  pthread_mutex_lock(&stru_100129648);
  sub_10003D828(&qword_10012BAD0);
  pthread_mutex_unlock(&stru_100129648);
  pthread_once(&stru_100129608, sub_10003851C);
  if (!dword_10012C638)
  {
    goto LABEL_33;
  }

  pthread_mutex_lock(&stru_1001295C8);
  if (!dword_10012C638)
  {
LABEL_32:
    pthread_mutex_unlock(&stru_1001295C8);
LABEL_33:
    v7 = objc_alloc_init(NSAutoreleasePool);
    NSLog(@"MR: %s", "[MediaPlayerHelper _nowPlayingInfoChanged:]");
    if (((self + 104) & 7) == 0)
    {
      nowPlayingHandlerQueue = self->nowPlayingHandlerQueue;
      MRMediaRemoteGetNowPlayingInfo();

      return;
    }

    goto LABEL_35;
  }

  if (!qword_10012C610 || (qword_10012C610 & 7) != 0)
  {
    goto LABEL_35;
  }

  if (v9 < dword_10012C638)
  {
LABEL_38:
    __break(0x5515u);
    goto LABEL_39;
  }

  v4 = *(qword_10012C610 + 76);
  if (v4 >= 8)
  {
LABEL_37:
    __break(0x550Au);
    goto LABEL_38;
  }

  if (v4 >= 4)
  {
    goto LABEL_39;
  }

  if (dword_10012B6D8[v4])
  {
    (*(*qword_10012C610 + 104))();
  }

  if (dword_10012C63C >= 8)
  {
    goto LABEL_37;
  }

  if (dword_10012C63C <= 2)
  {
    if (dword_10012C63C == 1)
    {
      v5 = qword_10012C618;
      if (!qword_10012C618)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }

    if (dword_10012C63C == 2)
    {
      v5 = qword_10012C620;
      if (!qword_10012C620)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }

LABEL_31:
    dword_10012C638 = 0;
    goto LABEL_32;
  }

  if (dword_10012C63C != 3)
  {
    if (dword_10012C63C == 4)
    {
      v5 = qword_10012C630;
      if (!qword_10012C630)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }

    goto LABEL_31;
  }

  v5 = qword_10012C628;
  if (!qword_10012C628)
  {
LABEL_35:
    __break(0x5516u);
LABEL_36:
    __break(0x5513u);
    goto LABEL_37;
  }

LABEL_25:
  if ((v5 & 7) != 0)
  {
    goto LABEL_35;
  }

  if (v9 < dword_10012C638)
  {
    goto LABEL_38;
  }

  v6 = *(v5 + 76);
  if (v6 >= 8)
  {
    goto LABEL_37;
  }

  if (v6 < 4)
  {
    if (dword_10012B6D8[v6])
    {
      (*(*v5 + 104))(v5, v9 - dword_10012C638, 0, 0);
    }

    goto LABEL_31;
  }

LABEL_39:
  __break(0x5512u);
}

- (void)_nowPlayingAppIsPlayingChanged:(id)a3
{
  sub_1000DDE90(7u, @"MR: %s, notification: %@", "[MediaPlayerHelper _nowPlayingAppIsPlayingChanged:]", a3);
  [(MediaPlayerHelper *)self _supportedCommandsDidChangeNotification];
  if (((self + 104) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    nowPlayingHandlerQueue = self->nowPlayingHandlerQueue;
    MRMediaRemoteGetNowPlayingApplicationIsPlaying();
  }
}

- (void)_playbackQueueDidChangeNotification:(id)a3
{
  sub_1000DDE90(7u, @"MR: %s, notification: %@", "[MediaPlayerHelper _playbackQueueDidChangeNotification:]", a3);
  p_nowPlayingHandlerQueue = &self->nowPlayingHandlerQueue;
  if ((&self->nowPlayingHandlerQueue & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = *p_nowPlayingHandlerQueue;
    if (*p_nowPlayingHandlerQueue)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003DACC;
      block[3] = &unk_100111C88;
      block[4] = self;
      dispatch_async(v5, block);
      return;
    }
  }

  __break(0x5510u);
}

- (void)_nowPlayingAppChanged:(id)a3
{
  sub_1000DDE90(7u, @"MR: %s, notification: %@", "[MediaPlayerHelper _nowPlayingAppChanged:]", a3);
  [(MediaPlayerHelper *)self _supportedCommandsDidChangeNotification];
  if (((self + 104) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    nowPlayingHandlerQueue = self->nowPlayingHandlerQueue;
    MRMediaRemoteGetNowPlayingApplicationPID();
  }
}

- (void)_mediaLibraryChanged:(id)a3
{
  sub_1000DDE90(6u, @"MP: _mediaLibraryChanged", a3);
  sub_10002F99C();
  if (qword_10012BB28 != -1)
  {
    sub_1000E1F88();
  }

  if (qword_10012BB20)
  {
    v3 = (qword_10012BB20 & 7) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *(*qword_10012BB20 + 56);

    v4();
  }

  else
  {
    __break(0x5516u);
  }
}

- (void)_itemPlaybackDidEnd:(id)a3
{
  sub_1000DDE90(6u, @"MP: _itemPlaybackDidEnd", a3);
  p_nowPlayingHandlerQueue = &self->nowPlayingHandlerQueue;
  if ((&self->nowPlayingHandlerQueue & 7) != 0)
  {
    __break(0x5516u);
    goto LABEL_7;
  }

  v5 = *p_nowPlayingHandlerQueue;
  if (!*p_nowPlayingHandlerQueue)
  {
LABEL_7:
    __break(0x5510u);
    return;
  }

  dispatch_async(v5, &stru_1001146A0);
}

- (void)_checkShuffleRepeatModeChange
{
  p_currentSupportedCommands = &self->_currentSupportedCommands;
  if ((&self->_currentSupportedCommands & 7) != 0)
  {
    goto LABEL_33;
  }

  if (*p_currentSupportedCommands)
  {
    Count = CFArrayGetCount(*p_currentSupportedCommands);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        if (CFArrayGetValueAtIndex(*p_currentSupportedCommands, v6) && MRMediaRemoteCommandInfoGetEnabled())
        {
          Command = MRMediaRemoteCommandInfoGetCommand();
          v10 = Command;
          sub_1000DDE90(6u, @"MP: %s: index=%d command=%d", "[MediaPlayerHelper _checkShuffleRepeatModeChange]", v6, Command);
          if (v10 == 26)
          {
            v20 = -1431655766;
            v11 = MRMediaRemoteCommandInfoCopyValueForKey();
            sub_1000DDE90(6u, @"MP: %s: tmpShuffleModeObj=%@", "[MediaPlayerHelper _checkShuffleRepeatModeChange]", v11);
            if (!v11)
            {
              goto LABEL_14;
            }

            CFNumberGetValue(v11, kCFNumberIntType, &v20);
            v8 = v20;
            goto LABEL_13;
          }

          if (v10 == 25)
          {
            valuePtr = -1431655766;
            v11 = MRMediaRemoteCommandInfoCopyValueForKey();
            sub_1000DDE90(6u, @"MP: %s: tmpRepeatModeObj=%@", "[MediaPlayerHelper _checkShuffleRepeatModeChange]", v11);
            if (v11)
            {
              CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
              v7 = valuePtr;
LABEL_13:
              CFRelease(v11);
            }
          }
        }

LABEL_14:
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(0x5500u);
          goto LABEL_33;
        }

        v6 = v12;
        if (v5 <= v12)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v8 = 0;
  v7 = 0;
LABEL_18:
  p_repeatModeCache = &self->repeatModeCache;
  if ((&self->repeatModeCache & 3) != 0)
  {
    goto LABEL_33;
  }

  if (v7 != *p_repeatModeCache || *p_repeatModeCache == 0)
  {
    v15 = MRMediaRemoteCopyShuffleModeDescription();
    v16 = MRMediaRemoteCopyShuffleModeDescription();
    NSLog(@"MR: repeatMode %@->%@", v15, v16);
    CFRelease(v15);
    CFRelease(v16);
    self->repeatModeCache = v7;
    if (((self + 128) & 3) != 0)
    {
      goto LABEL_33;
    }

    self->expectedRepeatModeTimestamp = 0;
    [(MediaPlayerHelper *)self _repeatModeChanged:0];
  }

  p_shuffleModeCache = &self->shuffleModeCache;
  if ((&self->shuffleModeCache & 3) != 0)
  {
LABEL_33:
    __break(0x5516u);
  }

  else if (v8 != *p_shuffleModeCache || !*p_shuffleModeCache)
  {
    v18 = MRMediaRemoteCopyShuffleModeDescription();
    v19 = MRMediaRemoteCopyShuffleModeDescription();
    NSLog(@"MR: shuffleMode %@->%@", v18, v19);
    CFRelease(v18);
    CFRelease(v19);
    self->shuffleModeCache = v8;
    if (((self + 132) & 3) != 0)
    {
      goto LABEL_33;
    }

    self->expectedShuffleModeTimestamp = 0;
    [(MediaPlayerHelper *)self _shuffleModeChanged:0];
  }
}

- (void)_supportedCommandsDidChange:(__CFArray *)a3
{
  p_currentSupportedCommands = &self->_currentSupportedCommands;
  if ((&self->_currentSupportedCommands & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    v5 = self;
    NSLog(@"MR: %s:%d _currentSupportedCommands %@ ---> %@", a2, "[MediaPlayerHelper _supportedCommandsDidChange:]", 2399, *p_currentSupportedCommands, a3);
    if (*p_currentSupportedCommands)
    {
      CFRelease(*p_currentSupportedCommands);
    }

    *p_currentSupportedCommands = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    self = v5;
  }

  [(MediaPlayerHelper *)self _checkShuffleRepeatModeChange];
}

- (void)_supportedCommandsDidChangeNotification
{
  if (((self + 104) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    nowPlayingHandlerQueue = self->nowPlayingHandlerQueue;
    MRMediaRemoteCopySupportedCommands();
  }
}

- (BOOL)_isSetElapsedTimeAvailable
{
  if (self->_nowPlayingAppIsIPodRadio)
  {
    return 0;
  }

  else
  {
    return [(MediaPlayerHelper *)self _isCommandSupported:24];
  }
}

- (void)_findCommandRefForCommand:(unsigned int)a3
{
  if ((&self->_currentSupportedCommands & 7) != 0)
  {
    __break(0x5516u);
  }

  currentSupportedCommands = self->_currentSupportedCommands;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(__CFArray *)currentSupportedCommands countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(currentSupportedCommands);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if (MRMediaRemoteCommandInfoGetCommand() == a3)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(__CFArray *)currentSupportedCommands countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_4;
      }

      return 0;
    }
  }
}

- (void)setRepeatModeCache:(int)a3
{
  if ((&self->repeatModeCache & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    self->repeatModeCache = a3;
  }
}

- (void)setShuffleModeCache:(int)a3
{
  if ((&self->shuffleModeCache & 3) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    self->shuffleModeCache = a3;
  }
}

- (BOOL)podcastAppSelected
{
  if (self->podcastAppSelected >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->podcastAppSelected;
  }

  return self;
}

- (BOOL)iBooksAppSelected
{
  if (self->iBooksAppSelected >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->iBooksAppSelected;
  }

  return self;
}

- (BOOL)iTunesUAppSelected
{
  if (self->iTunesUAppSelected >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->iTunesUAppSelected;
  }

  return self;
}

- (BOOL)fakeStreamTrackIndexSet
{
  if (self->_fakeStreamTrackIndexSet >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->_fakeStreamTrackIndexSet;
  }

  return self;
}

@end