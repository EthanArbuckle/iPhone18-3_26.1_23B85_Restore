@interface MRDExternalDeviceHomeServer
- (MRDExternalDeviceHomeServer)init;
- (NSString)mostRecentDeviceUID;
- (id)decodeEntries;
- (id)encodeEntries;
- (void)_addEntry:(id)a3;
- (void)_handleLocalPlaybackBeganNotification:(id)a3;
- (void)_handleSetNearbyDevicesToRemoteControlMessage:(id)a3 fromClient:(id)a4;
- (void)_maybeMostRecentlyPlayedDeviceChanged:(id)a3;
- (void)_maybeSendPlaybackStateMessageToCompanion;
- (void)_registerCompanionLinkHandlers;
- (void)_registerNotifications;
- (void)handleXPCMessage:(id)a3 fromClient:(id)a4;
@end

@implementation MRDExternalDeviceHomeServer

- (MRDExternalDeviceHomeServer)init
{
  v8.receiver = self;
  v8.super_class = MRDExternalDeviceHomeServer;
  v2 = [(MRDExternalDeviceHomeServer *)&v8 init];
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mediaremote"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;

    v5 = [(MRDExternalDeviceHomeServer *)v2 decodeEntries];
    entries = v2->_entries;
    v2->_entries = v5;

    [(MRDExternalDeviceHomeServer *)v2 _registerNotifications];
    [(MRDExternalDeviceHomeServer *)v2 _registerCompanionLinkHandlers];
  }

  return v2;
}

- (NSString)mostRecentDeviceUID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_entries lastObject];
  v4 = [v3 deviceInfo];
  v5 = [v4 deviceUID];

  objc_sync_exit(v2);

  return v5;
}

- (void)handleXPCMessage:(id)a3 fromClient:(id)a4
{
  xdict = a3;
  v6 = a4;
  if (xpc_dictionary_get_uint64(xdict, "MRXPC_MESSAGE_ID_KEY") == 0x300000000000022)
  {
    [(MRDExternalDeviceHomeServer *)self _handleSetNearbyDevicesToRemoteControlMessage:xdict fromClient:v6];
  }
}

- (void)_registerCompanionLinkHandlers
{
  v3 = +[MRCompanionLinkClient sharedIDSCompanionLinkClient];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B24C4;
  v12[3] = &unk_1004BA640;
  v12[4] = self;
  v4 = [v3 registerEvent:MRCompanionLinkClientEventPlaybackSessionChanged callback:v12];

  v5 = +[MRCompanionLinkClient sharedIDSCompanionLinkClient];
  v6 = [v5 registerRequest:MRCompanionLinkClientRequestNowPlayingState callback:&stru_1004BA680];

  v7 = +[MRCompanionLinkClient sharedIDSCompanionLinkClient];
  v8 = [v7 registerRequest:MRCompanionLinkClientRequestPlaybackSession callback:&stru_1004BA740];

  v9 = +[MRCompanionLinkClient sharedCompanionLinkClient];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B2C24;
  v11[3] = &unk_1004BA640;
  v11[4] = self;
  v10 = [v9 registerEvent:MRCompanionLinkClientEventUpdateActiveSystemEndpoint callback:v11];
}

- (void)_registerNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification;
  [v3 addObserver:self selector:"_handleLocalPlaybackBeganNotification:" name:kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_maybeMostRecentlyPlayedDeviceChanged:" name:v4 object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_maybeMostRecentlyPlayedDeviceChanged:" name:kMRMediaRemoteOriginSupportedCommandsDidChangeNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"_maybeMostRecentlyPlayedDeviceChanged:" name:kMROriginNowPlayingPlaybackQueueChangedNotification object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"_maybeMostRecentlyPlayedDeviceChanged:" name:kMROriginPlaybackQueueContentItemsChangedNotification object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"_maybeMostRecentlyPlayedDeviceChanged:" name:kMRDeviceInfoDidChangeNotification object:0];
}

- (void)_handleLocalPlaybackBeganNotification:(id)a3
{
  v16 = a3;
  v4 = +[MRUserSettings currentSettings];
  v5 = [v4 notifyDevicesInHomeThatPlaybackStarted];

  v6 = v16;
  if (v5)
  {
    v7 = [v16 userInfo];
    v8 = MRGetOriginFromUserInfo();

    if ([v8 isLocal])
    {
      v9 = [v16 userInfo];
      v10 = [v9 objectForKeyedSubscript:kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey];
      v11 = [v10 BOOLValue];

      if (v11)
      {
        if ([(MRDExternalDeviceHomeServer *)self _shouldSendCompanionLinkMessage])
        {
          v12 = objc_alloc_init(NSMutableDictionary);
          v13 = [v16 userInfo];
          v14 = MRGetPlayerPathFromUserInfo();
          MRAddPlayerPathToUserInfo();

          v15 = +[MRCompanionLinkClient sharedCompanionLinkClient];
          [v15 sendEventToHome:MRCompanionLinkClientEventIsPlaying userInfo:v12];
        }
      }
    }

    v6 = v16;
  }
}

- (void)_maybeMostRecentlyPlayedDeviceChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = MRGetOriginFromUserInfo();

  if ([v5 isLocal])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B3084;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_handleSetNearbyDevicesToRemoteControlMessage:(id)a3 fromClient:(id)a4
{
  v4 = MRCreateStringFromXPCMessage();
  if (v4)
  {
    v5 = +[MRDeviceInfoRequest localDeviceInfo];
    v6 = [v5 deviceUID];

    if (v6)
    {
      v7 = +[MRCompanionLinkClient sharedCompanionLinkClient];
      v8 = MRCompanionLinkClientEventUpdateActiveSystemEndpoint;
      v10 = MRCompanionLinkClientActiveSystemEndpointUIDUserInfoKey;
      v11 = v6;
      v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      [v7 sendEvent:v8 toDevicesOfHomeUser:v4 userInfo:v9];
    }
  }
}

- (void)_maybeSendPlaybackStateMessageToCompanion
{
  v2 = +[MRUserSettings currentSettings];
  v3 = [v2 supportLastPlayingDevice];

  if (v3 && [(MRDExternalDeviceHomeServer *)self _shouldSendCompanionLinkMessage])
  {
    v4 = +[MRDMediaRemoteServer server];
    v5 = [v4 nowPlayingServer];
    v35 = [v5 localOriginClient];

    v6 = [v35 activeNowPlayingClient];
    v37 = [v6 activePlayerClient];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [v37 supportedRemoteControlCommands];
    v7 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v7)
    {
      v40 = 0;
      v8 = 0;
      v9 = 0;
      v10 = *v42;
      v38 = kMRMediaRemoteCommandInfoCurrentPlaybackSessionTypes;
      v11 = kMRMediaRemoteCommandInfoSupportedPlaybackSessionTypes;
      v12 = kMRMediaRemoteCommandInfoPlaybackSessionIdentifier;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v41 + 1) + 8 * i);
          if ([v14 command] == 133)
          {
            v15 = [v14 options];
            v16 = [v15 objectForKeyedSubscript:v38];

            v17 = [v14 options];
            v18 = [v17 objectForKeyedSubscript:v11];

            v19 = [v14 options];
            v20 = [v19 objectForKeyedSubscript:v12];

            v40 = v20;
            v8 = v18;
            v9 = v16;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v7);
    }

    else
    {
      v40 = 0;
      v8 = 0;
      v9 = 0;
    }

    v21 = objc_alloc_init(MRDExternalDeviceHomeServerRecentlyPlayedEntry);
    [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v21 setCurrentPlaybackSessionTypes:v9];
    [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v21 setSupportedPlaybackSessionTypes:v8];
    [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v21 setCurrentPlaybackSessionIdentifier:v40];
    -[MRDExternalDeviceHomeServerRecentlyPlayedEntry setIsPlaying:](v21, "setIsPlaying:", [v37 isPlaying]);
    v22 = [v37 snapshotForIsPlaying:1];
    v23 = [v22 date];
    [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v21 setLastPlayingDate:v23];

    v24 = [v37 snapshotForIsPlaying:0];
    v25 = [v24 date];
    [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v21 setLastNotPlayingDate:v25];

    v26 = [v37 nowPlayingContentItem];
    [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v21 setContentItem:v26];

    v27 = [v37 playerPath];
    [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v21 setPlayerPath:v27];

    v28 = [v35 deviceInfo];
    [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v21 setDeviceInfo:v28];

    v29 = self;
    objc_sync_enter(v29);
    if (![(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v29->_lastSentEntry isEqual:v21])
    {
      v30 = objc_alloc_init(NSMutableDictionary);
      v31 = [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v21 dictionaryRepresentation];
      [v30 addEntriesFromDictionary:v31];

      v32 = +[MRUserSettings currentSettings];
      v33 = [v32 sendLastPlayingDeviceToHome];

      +[MRCompanionLinkClient sharedIDSCompanionLinkClient];
      if (v33)
        v34 = {;
        [v34 sendEventToHome:MRCompanionLinkClientEventPlaybackSessionChanged userInfo:v30];
      }

      else
        v34 = {;
        [v34 sendEventToCompanion:MRCompanionLinkClientEventPlaybackSessionChanged userInfo:v30];
      }

      objc_storeStrong(&v29->_lastSentEntry, v21);
    }

    objc_sync_exit(v29);
  }
}

- (void)_addEntry:(id)a3
{
  v27 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v24 = v4;
  v5 = [(NSMutableArray *)v4->_entries copy];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v25 = *v30;
    do
    {
      v26 = v6;
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v29 + 1) + 8 * i);
        v8 = [v28 deviceInfo];
        v9 = [v8 deviceUID];
        v10 = [v27 deviceInfo];
        v11 = [v10 deviceUID];
        v12 = v11;
        if (v9 == v11)
        {

LABEL_10:
          [(NSMutableArray *)v24->_entries removeObject:v28];
          continue;
        }

        v13 = [v28 deviceInfo];
        v14 = [v13 deviceUID];
        v15 = [v27 deviceInfo];
        v16 = [v15 deviceUID];
        v17 = [v14 isEqualToString:v16];

        if (v17)
        {
          goto LABEL_10;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v6);
  }

  entries = v24->_entries;
  if (!entries)
  {
    v19 = objc_alloc_init(NSMutableArray);
    v20 = v24->_entries;
    v24->_entries = v19;

    entries = v24->_entries;
  }

  [(NSMutableArray *)entries addObject:v27];
  userDefaults = v24->_userDefaults;
  v22 = [(MRDExternalDeviceHomeServer *)v24 encodeEntries];
  [(NSUserDefaults *)userDefaults setObject:v22 forKey:@"RecentlyPlayedEntries"];

  objc_sync_exit(v24);
}

- (id)encodeEntries
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v2->_entries;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) dictionaryRepresentation];
        v9 = MRCreateEncodedUserInfo();

        [v3 addObject:v9];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v2);

  return v3;
}

- (id)decodeEntries
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"RecentlyPlayedEntries"];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B3C30;
  v7[3] = &unk_1004BA790;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];
  [v5 sortUsingComparator:&stru_1004BA7D0];

  return v5;
}

@end