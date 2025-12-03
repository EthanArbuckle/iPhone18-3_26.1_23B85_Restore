@interface MRDExternalDeviceHomeServer
- (MRDExternalDeviceHomeServer)init;
- (NSString)mostRecentDeviceUID;
- (id)decodeEntries;
- (id)encodeEntries;
- (void)_addEntry:(id)entry;
- (void)_handleLocalPlaybackBeganNotification:(id)notification;
- (void)_handleSetNearbyDevicesToRemoteControlMessage:(id)message fromClient:(id)client;
- (void)_maybeMostRecentlyPlayedDeviceChanged:(id)changed;
- (void)_maybeSendPlaybackStateMessageToCompanion;
- (void)_registerCompanionLinkHandlers;
- (void)_registerNotifications;
- (void)handleXPCMessage:(id)message fromClient:(id)client;
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

    decodeEntries = [(MRDExternalDeviceHomeServer *)v2 decodeEntries];
    entries = v2->_entries;
    v2->_entries = decodeEntries;

    [(MRDExternalDeviceHomeServer *)v2 _registerNotifications];
    [(MRDExternalDeviceHomeServer *)v2 _registerCompanionLinkHandlers];
  }

  return v2;
}

- (NSString)mostRecentDeviceUID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastObject = [(NSMutableArray *)selfCopy->_entries lastObject];
  deviceInfo = [lastObject deviceInfo];
  deviceUID = [deviceInfo deviceUID];

  objc_sync_exit(selfCopy);

  return deviceUID;
}

- (void)handleXPCMessage:(id)message fromClient:(id)client
{
  xdict = message;
  clientCopy = client;
  if (xpc_dictionary_get_uint64(xdict, "MRXPC_MESSAGE_ID_KEY") == 0x300000000000022)
  {
    [(MRDExternalDeviceHomeServer *)self _handleSetNearbyDevicesToRemoteControlMessage:xdict fromClient:clientCopy];
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

- (void)_handleLocalPlaybackBeganNotification:(id)notification
{
  notificationCopy = notification;
  v4 = +[MRUserSettings currentSettings];
  notifyDevicesInHomeThatPlaybackStarted = [v4 notifyDevicesInHomeThatPlaybackStarted];

  v6 = notificationCopy;
  if (notifyDevicesInHomeThatPlaybackStarted)
  {
    userInfo = [notificationCopy userInfo];
    v8 = MRGetOriginFromUserInfo();

    if ([v8 isLocal])
    {
      userInfo2 = [notificationCopy userInfo];
      v10 = [userInfo2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey];
      bOOLValue = [v10 BOOLValue];

      if (bOOLValue)
      {
        if ([(MRDExternalDeviceHomeServer *)self _shouldSendCompanionLinkMessage])
        {
          v12 = objc_alloc_init(NSMutableDictionary);
          userInfo3 = [notificationCopy userInfo];
          v14 = MRGetPlayerPathFromUserInfo();
          MRAddPlayerPathToUserInfo();

          v15 = +[MRCompanionLinkClient sharedCompanionLinkClient];
          [v15 sendEventToHome:MRCompanionLinkClientEventIsPlaying userInfo:v12];
        }
      }
    }

    v6 = notificationCopy;
  }
}

- (void)_maybeMostRecentlyPlayedDeviceChanged:(id)changed
{
  userInfo = [changed userInfo];
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

- (void)_handleSetNearbyDevicesToRemoteControlMessage:(id)message fromClient:(id)client
{
  v4 = MRCreateStringFromXPCMessage();
  if (v4)
  {
    v5 = +[MRDeviceInfoRequest localDeviceInfo];
    deviceUID = [v5 deviceUID];

    if (deviceUID)
    {
      v7 = +[MRCompanionLinkClient sharedCompanionLinkClient];
      v8 = MRCompanionLinkClientEventUpdateActiveSystemEndpoint;
      v10 = MRCompanionLinkClientActiveSystemEndpointUIDUserInfoKey;
      v11 = deviceUID;
      v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      [v7 sendEvent:v8 toDevicesOfHomeUser:v4 userInfo:v9];
    }
  }
}

- (void)_maybeSendPlaybackStateMessageToCompanion
{
  v2 = +[MRUserSettings currentSettings];
  supportLastPlayingDevice = [v2 supportLastPlayingDevice];

  if (supportLastPlayingDevice && [(MRDExternalDeviceHomeServer *)self _shouldSendCompanionLinkMessage])
  {
    v4 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v4 nowPlayingServer];
    localOriginClient = [nowPlayingServer localOriginClient];

    activeNowPlayingClient = [localOriginClient activeNowPlayingClient];
    activePlayerClient = [activeNowPlayingClient activePlayerClient];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [activePlayerClient supportedRemoteControlCommands];
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
            options = [v14 options];
            v16 = [options objectForKeyedSubscript:v38];

            options2 = [v14 options];
            v18 = [options2 objectForKeyedSubscript:v11];

            options3 = [v14 options];
            v20 = [options3 objectForKeyedSubscript:v12];

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
    -[MRDExternalDeviceHomeServerRecentlyPlayedEntry setIsPlaying:](v21, "setIsPlaying:", [activePlayerClient isPlaying]);
    v22 = [activePlayerClient snapshotForIsPlaying:1];
    date = [v22 date];
    [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v21 setLastPlayingDate:date];

    v24 = [activePlayerClient snapshotForIsPlaying:0];
    date2 = [v24 date];
    [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v21 setLastNotPlayingDate:date2];

    nowPlayingContentItem = [activePlayerClient nowPlayingContentItem];
    [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v21 setContentItem:nowPlayingContentItem];

    playerPath = [activePlayerClient playerPath];
    [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v21 setPlayerPath:playerPath];

    deviceInfo = [localOriginClient deviceInfo];
    [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v21 setDeviceInfo:deviceInfo];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (![(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)selfCopy->_lastSentEntry isEqual:v21])
    {
      v30 = objc_alloc_init(NSMutableDictionary);
      dictionaryRepresentation = [(MRDExternalDeviceHomeServerRecentlyPlayedEntry *)v21 dictionaryRepresentation];
      [v30 addEntriesFromDictionary:dictionaryRepresentation];

      v32 = +[MRUserSettings currentSettings];
      sendLastPlayingDeviceToHome = [v32 sendLastPlayingDeviceToHome];

      +[MRCompanionLinkClient sharedIDSCompanionLinkClient];
      if (sendLastPlayingDeviceToHome)
        v34 = {;
        [v34 sendEventToHome:MRCompanionLinkClientEventPlaybackSessionChanged userInfo:v30];
      }

      else
        v34 = {;
        [v34 sendEventToCompanion:MRCompanionLinkClientEventPlaybackSessionChanged userInfo:v30];
      }

      objc_storeStrong(&selfCopy->_lastSentEntry, v21);
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)_addEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v24 = selfCopy;
  v5 = [(NSMutableArray *)selfCopy->_entries copy];
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
        deviceInfo = [v28 deviceInfo];
        deviceUID = [deviceInfo deviceUID];
        deviceInfo2 = [entryCopy deviceInfo];
        deviceUID2 = [deviceInfo2 deviceUID];
        v12 = deviceUID2;
        if (deviceUID == deviceUID2)
        {

LABEL_10:
          [(NSMutableArray *)v24->_entries removeObject:v28];
          continue;
        }

        deviceInfo3 = [v28 deviceInfo];
        deviceUID3 = [deviceInfo3 deviceUID];
        deviceInfo4 = [entryCopy deviceInfo];
        deviceUID4 = [deviceInfo4 deviceUID];
        v17 = [deviceUID3 isEqualToString:deviceUID4];

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

  [(NSMutableArray *)entries addObject:entryCopy];
  userDefaults = v24->_userDefaults;
  encodeEntries = [(MRDExternalDeviceHomeServer *)v24 encodeEntries];
  [(NSUserDefaults *)userDefaults setObject:encodeEntries forKey:@"RecentlyPlayedEntries"];

  objc_sync_exit(v24);
}

- (id)encodeEntries
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = selfCopy->_entries;
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

        dictionaryRepresentation = [*(*(&v11 + 1) + 8 * i) dictionaryRepresentation];
        v9 = MRCreateEncodedUserInfo();

        [v3 addObject:v9];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  objc_sync_exit(selfCopy);

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