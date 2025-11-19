@interface MRDNowPlayingOriginClient
- (BOOL)_shouldHandleNotification:(id)a3;
- (BOOL)containsActiveStream;
- (BOOL)isActivityActive;
- (BOOL)isMuted;
- (BOOL)isPlaying;
- (MRDNowPlayingClient)activeNowPlayingClient;
- (MRDNowPlayingOriginClient)initWithDeviceInfoDataSource:(id)a3 delegate:(id)a4;
- (MRDNowPlayingOriginClient)initWithOrigin:(id)a3 deviceInfo:(id)a4 deviceInfoDataSource:(id)a5 delegate:(id)a6;
- (MRDNowPlayingOriginClientDelegate)delegate;
- (MRDeviceInfo)deviceInfo;
- (MRPlayerPath)activePlayerPath;
- (NSArray)activePlayerClients;
- (NSArray)mostRecentPlayers;
- (NSArray)nowPlayingAudioFormatContentInfos;
- (NSArray)nowPlayingClients;
- (NSData)deviceInfoData;
- (NSDate)lastPlayingDateSnapshot;
- (NSDictionary)defaultSupportedCommands;
- (NSString)debugDescription;
- (NSString)description;
- (double)timeSincePlaybackStarted;
- (double)timeSincePlaying;
- (float)volume;
- (id)_onQueue_addNowPlayingClient:(id)a3;
- (id)_onQueue_calculateActiveNowPlayingClient;
- (id)_onQueue_calculateActiveNowPlayingPlayerClients;
- (id)_onQueue_calculateComputedNowPlayingClient;
- (id)_onQueue_calculateInferredNowPlayingClient;
- (id)_playerPathForNowPlayingClient:(id)a3;
- (id)activeContent;
- (id)defaultSupportedCommandsDataForClient:(id)a3;
- (id)defaultSupportedCommandsForClient:(id)a3;
- (id)existingNowPlayingClientForClient:(id)a3;
- (id)existingNowPlayingClientForDisplayID:(id)a3;
- (id)existingNowPlayingClientForPlayerPath:(id)a3;
- (id)nowPlayingClientForClient:(id)a3;
- (id)nowPlayingClientForPlayerPath:(id)a3;
- (unsigned)_onQueue_calculateInferredPlaybackStateForPlayer:(id)a3;
- (unsigned)_stateFromDataSource:(id)a3;
- (unsigned)volumeControlCapabilities;
- (void)_handleActivePlayerDidChange:(id)a3;
- (void)_handleNowPlayingAppMaybeDidChange:(id)a3;
- (void)_handleNowPlayingApplicationDidUnregisterCanBeNowPlaying:(id)a3;
- (void)_handleOriginIsPlayingDidChange:(id)a3;
- (void)_handlePlayerDidRegister:(id)a3;
- (void)_handlePlayerIsPlayingDidChange:(id)a3;
- (void)_handlePlayerPictureInPictureEnabledDidChange:(id)a3;
- (void)_handlePlayerPropertiesDidChange:(id)a3;
- (void)_onQueue_maybeSavePlaybackStateForNotification:(id)a3;
- (void)_onQueue_maybeSetupPlaybackTimeoutTimerForNotification:(id)a3;
- (void)_onQueue_reevaluateStateWithReason:(id)a3;
- (void)_onQueue_reloadInferredStateFromDataSource:(id)a3 reason:(id)a4;
- (void)_onQueue_removeNowPlayingClient:(id)a3;
- (void)_registerCallbacks;
- (void)clearDefaultSupportedCommandsData;
- (void)deviceInfoDataSource:(id)a3 deviceInfoDidChange:(id)a4;
- (void)nowPlayingDataSourceNowPlayingApplicationDidChange:(id)a3;
- (void)nowPlayingDataSourceNowPlayingApplicationPlaybackStateDidChange:(id)a3;
- (void)nowPlayingDataSourceNowPlayingApplicationsPlaybackStateDidChange:(id)a3;
- (void)nowPlayingDataSourceNowPlayingAudioFormatContentInfosDidChange:(id)a3;
- (void)nowPlayingDataSourceNowPlayingSessionsPlaybackStateDidChange:(id)a3;
- (void)registerApplicationConnectionOutgoingMessageCallback:(id)a3;
- (void)registerCreateNewApplicationConnectionCallback:(id)a3;
- (void)removeAllClients;
- (void)removeNowPlayingClientForClient:(id)a3;
- (void)setActivity:(id)a3;
- (void)setComputedNowPlayingClient:(id)a3;
- (void)setDeviceInfo:(id)a3;
- (void)setDevicePlaybackSessionID:(id)a3;
- (void)setExplicitNowPlayingClient:(id)a3;
- (void)setInferredNowPlayingClient:(id)a3;
- (void)setIsMuted:(BOOL)a3;
- (void)setNowPlayingDataSource:(id)a3;
- (void)setOverrideClient:(id)a3;
- (void)updateDefaultSupportedCommandsData:(id)a3 forClient:(id)a4;
- (void)updateLastPlayingDate:(id)a3;
@end

@implementation MRDNowPlayingOriginClient

- (MRDeviceInfo)deviceInfo
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000350EC;
  v9 = sub_100035A2C;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (float)volume
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[6];
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (unsigned)volumeControlCapabilities
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (BOOL)isMuted
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (MRDNowPlayingClient)activeNowPlayingClient
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000350EC;
  v9 = sub_100035A2C;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (id)_onQueue_calculateInferredNowPlayingClient
{
  v2 = self;
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = v2->_nowPlayingDataSource;
  v4 = +[MRUserSettings currentSettings];
  v5 = [v4 supportNowPlayingPIP];

  v6 = &MROutputContextDataSourceVolumeCapabilitiesUserInfoKey_ptr;
  if (!v5)
  {
LABEL_20:
    v26 = objc_alloc(v6[55]);
    v27 = [(MRDNowPlayingDataSource *)v3 nowPlayingApplicationPID];
    v28 = [(MRDNowPlayingDataSource *)v3 nowPlayingApplicationDisplayID];
    v29 = [v26 initWithProcessIdentifier:v27 bundleIdentifier:v28];

    v33 = [(MRDNowPlayingOriginClient *)v2 existingNowPlayingClientForClient:v29];

    goto LABEL_21;
  }

  v7 = [(MRDNowPlayingDataSource *)v3 nowPlayingApplications];
  v8 = [v7 allValues];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v10)
  {

    goto LABEL_20;
  }

  v11 = v10;
  v31 = v3;
  v12 = *v35;
  v32 = *v35;
  v33 = 0;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v35 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v34 + 1) + 8 * i);
      v15 = objc_alloc(v6[55]);
      v16 = [v14 pid];
      v17 = [v14 nowPlayingApplicationDisplayID];
      v18 = [v15 initWithProcessIdentifier:v16 bundleIdentifier:v17];

      v19 = [(MRDNowPlayingOriginClient *)v2 existingNowPlayingClientForClient:v18];
      if ([v14 isEligible])
      {
        v20 = [v19 activePlayerClient];
        if ([v20 canBeNowPlayingPlayer])
        {
          v21 = v9;
          v22 = v2;
          v23 = v6;
          if (v33)
          {
            v24 = [v33 activePlayerClient];
            v25 = [v24 isPictureInPictureEnabled];

            if (!v25)
            {
              v6 = v23;
              v2 = v22;
              v9 = v21;
              v12 = v32;
              goto LABEL_15;
            }
          }

          else
          {
          }

          v20 = v33;
          v33 = v19;
          v6 = v23;
          v2 = v22;
          v9 = v21;
          v12 = v32;
        }
      }

LABEL_15:
    }

    v11 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
  }

  while (v11);

  v3 = v31;
  if (!v33)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v33;
}

- (id)_onQueue_calculateActiveNowPlayingClient
{
  dispatch_assert_queue_V2(self->_serialQueue);
  overrideClient = self->_overrideClient;
  if (overrideClient)
  {
    v4 = [(MRDNowPlayingOriginClient *)self existingNowPlayingClientForPid:[(MRDMediaRemoteClient *)overrideClient pid]];
    goto LABEL_3;
  }

  explicitNowPlayingClient = self->_explicitNowPlayingClient;
  if (!explicitNowPlayingClient)
  {
    if (self->_computedNowPlayingClient && (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 computeNowPlayingApplication], v7, v8))
    {
      explicitNowPlayingClient = self->_computedNowPlayingClient;
    }

    else
    {
      explicitNowPlayingClient = self->_inferredNowPlayingClient;
      if (!explicitNowPlayingClient)
      {
        v4 = 0;
        goto LABEL_12;
      }
    }
  }

  v4 = explicitNowPlayingClient;
LABEL_12:
  if (self->_activity)
  {
    [(MRDNowPlayingOriginClient *)self timeSincePlaying];
    v10 = v9;
    v11 = +[MRUserSettings currentSettings];
    [v11 mediaRecentlyPlayedInterval];
    v13 = v12;

    if (v10 > v13)
    {
      v14 = [[MRClient alloc] initWithProcessIdentifier:-[MRMutableApplicationActivity creatorProcessID](self->_activity bundleIdentifier:{"creatorProcessID"), 0}];
      v15 = [(MRDNowPlayingOriginClient *)self nowPlayingClientForClient:v14];

      v4 = v15;
    }
  }

LABEL_3:

  return v4;
}

- (id)_onQueue_calculateActiveNowPlayingPlayerClients
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = objc_alloc_init(NSMutableSet);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(MRDNowPlayingOriginClient *)self nowPlayingClients];
  v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v20)
  {
    v19 = *v27;
    do
    {
      v4 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v4;
        v5 = *(*(&v26 + 1) + 8 * v4);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v6 = [v5 playerClients];
        v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v23;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v23 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v22 + 1) + 8 * i);
              v12 = [(MRDNowPlayingOriginClient *)self activeNowPlayingClient];
              v13 = [v12 activePlayerClient];
              v14 = v13;
              if (v13 == v11)
              {

LABEL_15:
                [v3 addObject:v11];
                continue;
              }

              v15 = [v11 isPictureInPictureEnabled];

              if (v15)
              {
                goto LABEL_15;
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v8);
        }

        v4 = v21 + 1;
      }

      while ((v21 + 1) != v20);
      v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }

  v16 = [v3 copy];

  return v16;
}

- (NSArray)nowPlayingClients
{
  v3 = objc_alloc_init(NSMutableSet);
  serialQueue = self->_serialQueue;
  v8 = self;
  v9 = v3;
  v5 = v3;
  msv_dispatch_sync_on_queue();
  v6 = [v5 allObjects];

  return v6;
}

- (MRPlayerPath)activePlayerPath
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000350EC;
  v10 = sub_100035A2C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000F994;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)activePlayerClients
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000350EC;
  v10 = sub_100035A2C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000F940;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_onQueue_calculateComputedNowPlayingClient
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(MRDNowPlayingOriginClient *)self mostRecentPlayers];
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        if ([v10 isPlaying])
        {
          goto LABEL_13;
        }

        v11 = [v10 playerPath];
        v12 = [v11 client];
        v13 = [(MRDNowPlayingOriginClient *)self nowPlayingClientForClient:v12];

        if (v13 == self->_computedNowPlayingClient || v13 == self->_inferredNowPlayingClient)
        {
          goto LABEL_12;
        }

        v14 = [v10 snapshotForIsPlaying:0];
        v15 = [v14 date];

        if (!v15)
        {
          goto LABEL_11;
        }

        v16 = +[NSDate date];
        [v16 timeIntervalSinceDate:v15];
        v18 = v17;

        v19 = +[MRUserSettings currentSettings];
        [v19 nowPlayingApplicationTimeout];
        v21 = v20;

        if (v18 <= v21)
        {
LABEL_11:

LABEL_12:
LABEL_13:
          v13 = [v10 playerPath];
          [v4 addObject:v13];
          goto LABEL_14;
        }

LABEL_14:
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v22 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v7 = v22;
    }

    while (v22);
  }

  v23 = [v4 firstObject];
  v24 = [v23 client];
  v25 = [(MRDNowPlayingOriginClient *)self nowPlayingClientForClient:v24];

  return v25;
}

- (NSArray)mostRecentPlayers
{
  v3 = objc_alloc_init(NSMutableArray);
  serialQueue = self->_serialQueue;
  v7 = v3;
  msv_dispatch_sync_on_queue();
  v5 = v7;

  return v7;
}

- (NSArray)nowPlayingAudioFormatContentInfos
{
  v2 = [(MRDNowPlayingDataSource *)self->_nowPlayingDataSource nowPlayingAudioFormatContentInfos];
  v3 = [v2 allValues];

  return v3;
}

- (NSDate)lastPlayingDateSnapshot
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000350EC;
  v9 = sub_100035A2C;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (BOOL)containsActiveStream
{
  v2 = [(MRDNowPlayingOriginClient *)self activeNowPlayingClient];
  v3 = [v2 activePlayerClient];
  v4 = [v3 isActiveStream];

  return v4;
}

- (id)activeContent
{
  v2 = [(MRDNowPlayingOriginClient *)self activeNowPlayingClient];
  v3 = [v2 activePlayerClient];
  v4 = [v3 activeContent];

  return v4;
}

- (MRDNowPlayingOriginClient)initWithOrigin:(id)a3 deviceInfo:(id)a4 deviceInfoDataSource:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v40.receiver = self;
  v40.super_class = MRDNowPlayingOriginClient;
  v15 = [(MRDNowPlayingOriginClient *)&v40 init];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create("com.apple.mediaremote.MRDNowPlayingOriginClient", v16);
  serialQueue = v15->_serialQueue;
  v15->_serialQueue = v17;

  objc_storeStrong(&v15->_origin, a3);
  [(MRDNowPlayingOriginClient *)v15 setDeviceInfo:v12];
  objc_storeStrong(&v15->_deviceInfoDataSource, a5);
  [(MRDDeviceInfoDataSource *)v15->_deviceInfoDataSource setDelegate:v15];
  objc_storeWeak(&v15->_delegate, v14);
  v19 = [[MRPlayerPath alloc] initWithOrigin:v15->_origin client:0 player:0];
  playerPath = v15->_playerPath;
  v15->_playerPath = v19;

  if (![(MROrigin *)v15->_origin isLocal])
  {
    v22 = +[NSDate distantPast];
    goto LABEL_6;
  }

  v21 = +[MRDSettings currentSettings];
  [v21 localPlaybackState];

  if (MRMediaRemotePlaybackStateIsAdvancing())
  {
    v22 = +[NSDate date];
LABEL_6:
    lastPlayingDate = v15->_lastPlayingDate;
    v15->_lastPlayingDate = v22;
    goto LABEL_11;
  }

  lastPlayingDate = +[MRDSettings currentSettings];
  v24 = [lastPlayingDate localLastPlayingDate];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = +[NSDate distantPast];
  }

  v27 = v15->_lastPlayingDate;
  v15->_lastPlayingDate = v26;

LABEL_11:
  v28 = +[NSDate date];
  registrationDate = v15->_registrationDate;
  v15->_registrationDate = v28;

  if ([(MROrigin *)v15->_origin isLocallyHosted])
  {
    v30 = +[MRUserSettings currentSettings];
    v31 = [v30 computeDevicePlaybackSessionID];

    if (v31)
    {
      v32 = +[NSUUID UUID];
      v33 = [v32 UUIDString];
      devicePlaybackSessionID = v15->_devicePlaybackSessionID;
      v15->_devicePlaybackSessionID = v33;
    }
  }

  v35 = v15->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8BA0;
  block[3] = &unk_1004B6D08;
  v36 = v15;
  v39 = v36;
  dispatch_sync(v35, block);
  [(MRDNowPlayingOriginClient *)v36 _registerCallbacks];

LABEL_15:
  return v15;
}

- (MRDNowPlayingOriginClient)initWithDeviceInfoDataSource:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[MROrigin localOrigin];
  v9 = [v7 deviceInfo];
  v10 = [(MRDNowPlayingOriginClient *)self initWithOrigin:v8 deviceInfo:v9 deviceInfoDataSource:v7 delegate:v6];

  return v10;
}

- (NSString)description
{
  v3 = [(NSMutableArray *)self->_nowPlayingClients count];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = "s";
  if (v3 == 1)
  {
    v7 = "";
  }

  v8 = [NSString stringWithFormat:@"<%@ %p origin=%@ %llu nowPlayingClient%s>", v5, self, self->_origin, v3, v7];

  return v8;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  origin = self->_origin;
  v6 = MRCreateIndentedDebugDescriptionFromObject();
  deviceInfo = self->_deviceInfo;
  v8 = MRCreateIndentedDebugDescriptionFromObject();
  volume = self->_volume;
  volumeControlCapabilities = self->_volumeControlCapabilities;
  v11 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription();
  v12 = @"YES";
  if (self->_isMuted)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [(MRDNowPlayingOriginClient *)self timeSincePlaying];
  v15 = v14;
  [(MRDNowPlayingOriginClient *)self timeSincePlaybackStarted];
  v17 = v16;
  if (![(MRDNowPlayingOriginClient *)self isPlaying])
  {
    v12 = @"NO";
  }

  v18 = [(MRDNowPlayingOriginClient *)self devicePlaybackSessionID];
  v19 = [NSMutableString stringWithFormat:@"%@ %p {\n  origin = %@\n  deviceInfo = %@\n  volume = %f\n  volume capabilities = %@\n  isMuted = %@\n  time since playing = %lf\n  time since playback started = %lf\n  is playing = %@\n  devicePlaybackSessionID = %@\n", v4, self, v6, v8, *&volume, v11, v13, v15, v17, v12, v18];

  activeNowPlayingClient = self->_activeNowPlayingClient;
  if (activeNowPlayingClient)
  {
    v21 = [(MRDNowPlayingClient *)activeNowPlayingClient client];
    [v19 appendFormat:@"  active now playing client = %@\n", v21];
  }

  overrideClient = self->_overrideClient;
  if (overrideClient)
  {
    v23 = [(MRDMediaRemoteClient *)overrideClient bundleIdentifier];
    [v19 appendFormat:@"  override client = %@\n", v23];
  }

  explicitNowPlayingClient = self->_explicitNowPlayingClient;
  if (explicitNowPlayingClient)
  {
    v25 = [(MRDNowPlayingClient *)explicitNowPlayingClient client];
    v26 = MRCreateIndentedDebugDescriptionFromObject();
    [v19 appendFormat:@"  explicit now playing client = %@\n", v26];
  }

  computedNowPlayingClient = self->_computedNowPlayingClient;
  if (computedNowPlayingClient)
  {
    v28 = [(MRDNowPlayingClient *)computedNowPlayingClient client];
    v29 = MRCreateIndentedDebugDescriptionFromObject();
    [v19 appendFormat:@"  computed now playing client = %@\n", v29];
  }

  inferredNowPlayingClient = self->_inferredNowPlayingClient;
  if (inferredNowPlayingClient)
  {
    v31 = [(MRDNowPlayingClient *)inferredNowPlayingClient client];
    v32 = MRCreateIndentedDebugDescriptionFromObject();
    [v19 appendFormat:@"  inferred now playing client = %@\n", v32];
  }

  if (self->_activity)
  {
    v33 = MRCreateIndentedDebugDescriptionFromObject();
    [v19 appendFormat:@"  app activity = %@\n", v33];
  }

  if (self->_nowPlayingDataSource)
  {
    v34 = MRCreateIndentedDebugDescriptionFromObject();
    [v19 appendFormat:@"  datasource = %@\n", v34];
  }

  v35 = [(MRDNowPlayingOriginClient *)self defaultSupportedCommands];
  if ([v35 count])
  {
    v36 = MRMediaRemoteCopyReadableDictionaryDescription();
    v37 = MRCreateIndentedDebugDescriptionFromObject();
    [v19 appendFormat:@"  default supportedCommands = %@\n", v37];
  }

  if ([(NSMutableArray *)self->_nowPlayingClients count])
  {
    nowPlayingClients = self->_nowPlayingClients;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000E9098;
    v42[3] = &unk_1004BC320;
    v42[4] = self;
    v39 = [(NSMutableArray *)nowPlayingClients sortedArrayUsingComparator:v42];
    v40 = MRCreateIndentedDebugDescriptionFromArray();
    [v19 appendFormat:@"all now playing clients = %@\n", v40];
  }

  return v19;
}

- (void)setDeviceInfo:(id)a3
{
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_1000350EC;
  v23[4] = sub_100035A2C;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_1000350EC;
  v21[4] = sub_100035A2C;
  v22 = 0;
  serialQueue = self->_serialQueue;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000E93AC;
  v15 = &unk_1004BC348;
  v16 = self;
  v6 = v4;
  v17 = v6;
  v18 = &v25;
  v19 = v23;
  v20 = v21;
  msv_dispatch_sync_on_queue();
  if (*(v26 + 24) == 1)
  {
    v7 = dispatch_get_global_queue(-32768, 0);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000E95E8;
    v8[3] = &unk_1004B9C58;
    v10 = v21;
    v9 = v6;
    v11 = v23;
    dispatch_async(v7, v8);
  }

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(&v25, 8);
}

- (NSData)deviceInfoData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000350EC;
  v10 = sub_100035A2C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E98B0;
  v5[3] = &unk_1004B6958;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setIsMuted:(BOOL)a3
{
  serialQueue = self->_serialQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E9E54;
  v4[3] = &unk_1004B8820;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(serialQueue, v4);
}

- (void)setComputedNowPlayingClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)setExplicitNowPlayingClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)setInferredNowPlayingClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)setOverrideClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)setActivity:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (BOOL)isActivityActive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (BOOL)isPlaying
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (double)timeSincePlaying
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (double)timeSincePlaybackStarted
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (id)nowPlayingClientForClient:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MRPlayerPath);
  [v5 setOrigin:self->_origin];
  [v5 setClient:v4];

  v6 = [(MRDNowPlayingOriginClient *)self nowPlayingClientForPlayerPath:v5];

  return v6;
}

- (id)nowPlayingClientForPlayerPath:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000350EC;
  v13 = sub_100035A2C;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v8 = v4;
  msv_dispatch_sync_on_queue();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)existingNowPlayingClientForPlayerPath:(id)a3
{
  v4 = [a3 client];
  v5 = [(MRDNowPlayingOriginClient *)self existingNowPlayingClientForClient:v4];

  return v5;
}

- (id)existingNowPlayingClientForDisplayID:(id)a3
{
  v4 = a3;
  v5 = [[MRClient alloc] initWithProcessIdentifier:0 bundleIdentifier:v4];

  v6 = [(MRDNowPlayingOriginClient *)self existingNowPlayingClientForClient:v5];

  return v6;
}

- (id)existingNowPlayingClientForClient:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000350EC;
  v13 = sub_100035A2C;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v8 = v4;
  msv_dispatch_sync_on_queue();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)removeAllClients
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EBC00;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)removeNowPlayingClientForClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)_onQueue_removeNowPlayingClient:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MRDNowPlayingClient *)v4 client];
    playerPath = self->_playerPath;
    *buf = 138543618;
    v28 = v6;
    v29 = 2114;
    v30 = playerPath;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingOriginClient] Removing nowPlayingClient %{public}@ for %{public}@", buf, 0x16u);
  }

  v8 = [(MRDNowPlayingClient *)v4 playerClients];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v22 + 1) + 8 * v12) player];
        [(MRDNowPlayingClient *)v4 removePlayerClientForPlayer:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained nowPlayingOriginClient:self clientDidUnregister:v4];

  [(NSMutableArray *)self->_nowPlayingClients removeObject:v4];
  v15 = [(MRDNowPlayingClient *)v4 client];
  v16 = [(MRDMediaRemoteClient *)self->_overrideClient pid];
  if (v16 == [v15 processIdentifier])
  {
    [(MRDNowPlayingOriginClient *)self setOverrideClient:0];
  }

  if (self->_explicitNowPlayingClient == v4)
  {
    [(MRDNowPlayingOriginClient *)self setExplicitNowPlayingClient:0];
  }

  if (self->_inferredNowPlayingClient == v4)
  {
    [(MRDNowPlayingOriginClient *)self setInferredNowPlayingClient:0];
  }

  if (self->_computedNowPlayingClient == v4)
  {
    v17 = [(MRDNowPlayingOriginClient *)self _onQueue_calculateComputedNowPlayingClient];
    [(MRDNowPlayingOriginClient *)self setComputedNowPlayingClient:v17];
  }

  activity = self->_activity;
  if (activity)
  {
    v19 = [(MRMutableApplicationActivity *)activity creatorProcessID];
    v20 = [(MRDNowPlayingClient *)v4 client];
    v21 = [v20 processIdentifier];

    if (v19 == v21)
    {
      [(MRDNowPlayingOriginClient *)self setActivity:0];
    }
  }
}

- (void)updateDefaultSupportedCommandsData:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC180;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(serialQueue, block);
}

- (id)defaultSupportedCommandsDataForClient:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000350EC;
  v13 = sub_100035A2C;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v8 = v4;
  msv_dispatch_sync_on_queue();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)defaultSupportedCommandsForClient:(id)a3
{
  v3 = [(MRDNowPlayingOriginClient *)self defaultSupportedCommandsDataForClient:a3];
  v4 = [MRCommandInfo commandInfosFromData:v3];

  return v4;
}

- (NSDictionary)defaultSupportedCommands
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000350EC;
  v24 = sub_100035A2C;
  v25 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC644;
  block[3] = &unk_1004B6958;
  block[4] = self;
  block[5] = &v20;
  dispatch_sync(serialQueue, block);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v21[5];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000EC6E0;
  v12 = &unk_1004BC390;
  v5 = v3;
  v13 = v5;
  v14 = &v15;
  [v4 enumerateKeysAndObjectsUsingBlock:&v9];
  if ((v16[3] & 1) == 0)
  {
    v6 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    v7 = MRMediaRemoteCopySystemMediaApplicationDefaultSupportedCommands();
    [v5 setObject:v7 forKeyedSubscript:{v6, v9, v10, v11, v12}];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v20, 8);

  return v5;
}

- (void)clearDefaultSupportedCommandsData
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC7DC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)updateLastPlayingDate:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EC880;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)setDevicePlaybackSessionID:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EC95C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)registerCreateNewApplicationConnectionCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ECA00;
  v7[3] = &unk_1004B79F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(serialQueue, v7);
}

- (void)registerApplicationConnectionOutgoingMessageCallback:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ECADC;
  v7[3] = &unk_1004B79F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(serialQueue, v7);
}

- (void)setNowPlayingDataSource:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_nowPlayingDataSource, a3);
  [(MRDNowPlayingDataSource *)self->_nowPlayingDataSource addObserver:self];
  if (self->_nowPlayingDataSource)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ECBD4;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(serialQueue, block);
  }
}

- (void)nowPlayingDataSourceNowPlayingApplicationDidChange:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ECC80;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)nowPlayingDataSourceNowPlayingApplicationPlaybackStateDidChange:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ECD2C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)nowPlayingDataSourceNowPlayingApplicationsPlaybackStateDidChange:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ECDD8;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)nowPlayingDataSourceNowPlayingSessionsPlaybackStateDidChange:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ECE84;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)nowPlayingDataSourceNowPlayingAudioFormatContentInfosDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 nowPlayingOriginClientDidChangeAudioFormatContentInfo:self];
  }
}

- (void)_onQueue_reloadInferredStateFromDataSource:(id)a3 reason:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    v20 = v6;
    v8 = [(MRDNowPlayingOriginClient *)self _onQueue_calculateInferredNowPlayingClient];
    [(MRDNowPlayingOriginClient *)self setInferredNowPlayingClient:v8];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = self->_nowPlayingClients;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        v13 = 0;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * v13);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v15 = [v14 playerClients];
          v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v22;
            do
            {
              v19 = 0;
              do
              {
                if (*v22 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [*(*(&v21 + 1) + 8 * v19) setInferredPlaybackState:{-[MRDNowPlayingOriginClient _onQueue_calculateInferredPlaybackStateForPlayer:](self, "_onQueue_calculateInferredPlaybackStateForPlayer:", *(*(&v21 + 1) + 8 * v19))}];
                v19 = v19 + 1;
              }

              while (v17 != v19);
              v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v17);
          }

          v13 = v13 + 1;
        }

        while (v13 != v11);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v11);
    }

    v7 = v20;
    [(MRDNowPlayingOriginClient *)self _onQueue_reevaluateStateWithReason:v20];
  }
}

- (void)deviceInfoDataSource:(id)a3 deviceInfoDidChange:(id)a4
{
  v7 = a4;
  v5 = [(MRDNowPlayingOriginClient *)self origin];
  v6 = [v5 isLocal];

  if (v6)
  {
    [(MRDNowPlayingOriginClient *)self setDeviceInfo:v7];
  }
}

- (void)_handleNowPlayingAppMaybeDidChange:(id)a3
{
  v4 = a3;
  if ([(MRDNowPlayingOriginClient *)self _shouldHandleNotification:v4])
  {
    serialQueue = self->_serialQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000ED238;
    v6[3] = &unk_1004B68F0;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(serialQueue, v6);
  }
}

- (void)_handlePlayerIsPlayingDidChange:(id)a3
{
  v4 = a3;
  if ([(MRDNowPlayingOriginClient *)self _shouldHandleNotification:v4])
  {
    serialQueue = self->_serialQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000ED3C8;
    v6[3] = &unk_1004B68F0;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(serialQueue, v6);
  }
}

- (void)_handleOriginIsPlayingDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetOriginFromUserInfo();

  if ([v6 isLocal])
  {
    serialQueue = self->_serialQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000ED520;
    v8[3] = &unk_1004B68F0;
    v8[4] = self;
    v9 = v4;
    dispatch_sync(serialQueue, v8);
  }
}

- (void)_handlePlayerPropertiesDidChange:(id)a3
{
  if (self->_nowPlayingDataSource)
  {
    v4 = a3;
    v5 = [NSString alloc];
    v6 = [v4 name];
    v7 = [v4 userInfo];

    v8 = MRGetPlayerPathFromUserInfo();
    v9 = [v5 initWithFormat:@"%@-%@", v6, v8];

    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ED650;
    block[3] = &unk_1004B68F0;
    block[4] = self;
    v13 = v9;
    v11 = v9;
    dispatch_async(serialQueue, block);
  }
}

- (void)_handlePlayerPictureInPictureEnabledDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = MRGetOriginFromUserInfo();

  if ([v5 isEqual:self->_origin])
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ED718;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }
}

- (void)_handleActivePlayerDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = MRGetOriginFromUserInfo();

  if ([v5 isEqual:self->_origin])
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ED7E0;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }
}

- (void)_handleNowPlayingApplicationDidUnregisterCanBeNowPlaying:(id)a3
{
  v4 = [a3 userInfo];
  v5 = MRGetOriginFromUserInfo();

  if ([v5 isEqual:self->_origin])
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ED8A8;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }
}

- (void)_handlePlayerDidRegister:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_nowPlayingDataSource)
  {
    v6 = [v4 userInfo];
    v7 = MRGetOriginFromUserInfo();

    if ([v7 isEqual:self->_origin])
    {
      v8 = [NSString alloc];
      v9 = [v5 name];
      v10 = [v5 userInfo];
      v11 = MRGetPlayerPathFromUserInfo();
      v12 = [v8 initWithFormat:@"%@-%@", v9, v11];

      serialQueue = self->_serialQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000EDA0C;
      block[3] = &unk_1004B68F0;
      block[4] = self;
      v16 = v12;
      v14 = v12;
      dispatch_sync(serialQueue, block);
    }
  }
}

- (BOOL)_shouldHandleNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetOriginFromUserInfo();

  if ([v6 isEqual:self->_origin])
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey];
    v9 = [v8 BOOLValue];

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unsigned)_onQueue_calculateInferredPlaybackStateForPlayer:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = self->_nowPlayingDataSource;
  v6 = +[MRUserSettings currentSettings];
  v7 = [v6 supportMultiplayerHost];

  if (v7)
  {
    v8 = [(MRDNowPlayingDataSource *)v5 nowPlayingSessions];
    v9 = [v4 player];
    v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 audioSessionID]);
    v11 = [v8 objectForKeyedSubscript:v10];

    if ([v11 isPlaying])
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    goto LABEL_32;
  }

  v13 = +[MRUserSettings currentSettings];
  if ([v13 supportNowPlayingPIP])
  {
    v14 = [v4 player];
    v15 = [v14 mxSessionIDs];
    v16 = [v15 count];

    if (v16)
    {
      v17 = +[NSMutableSet set];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v35 = v5;
      v18 = [(MRDNowPlayingDataSource *)v5 nowPlayingApplications];
      v19 = [v18 allValues];

      v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (!v20)
      {
        goto LABEL_20;
      }

      v21 = v20;
      v22 = *v37;
      while (1)
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v36 + 1) + 8 * i);
          v25 = [v4 playerPath];
          v26 = [v25 client];
          v27 = [v26 processIdentifier];
          if (v27 == [v24 pid])
          {
            v28 = [v24 mxSessionIDs];

            if (!v28)
            {
              continue;
            }

            v25 = [v24 mxSessionIDs];
            [v17 unionSet:v25];
          }

          else
          {
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (!v21)
        {
LABEL_20:

          v5 = v35;
          if ([(MRDNowPlayingDataSource *)v35 nowPlayingApplicationIsInterrupted])
          {
            v29 = 4;
          }

          else
          {
            v29 = 1;
          }

          v30 = [v4 player];
          v31 = [v30 mxSessionIDs];
          if ([v17 intersectsSet:v31])
          {
            v12 = v29;
          }

          else
          {
            v12 = 2;
          }

          goto LABEL_32;
        }
      }
    }
  }

  else
  {
  }

  v32 = [(MRDNowPlayingOriginClient *)self inferredNowPlayingClient];
  v33 = [v32 activePlayerClient];
  if (v33 == v4)
  {
    v12 = [(MRDNowPlayingOriginClient *)self _stateFromDataSource:v5];
  }

  else
  {
    v12 = 2;
  }

LABEL_32:
  return v12;
}

- (void)_onQueue_reevaluateStateWithReason:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A8774(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  v12 = [(MRDNowPlayingOriginClient *)self _playerPathForNowPlayingClient:self->_activeNowPlayingClient];
  v13 = [(MRDNowPlayingOriginClient *)self _onQueue_calculateActiveNowPlayingClient];
  v14 = [(MRDNowPlayingOriginClient *)self _playerPathForNowPlayingClient:v13];
  if (v13 == self->_activeNowPlayingClient)
  {
    goto LABEL_21;
  }

  v15 = _MRLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v56 = v12;
    v57 = 2114;
    v58 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingOriginClient] ActiveNowPlayingClient changed from %{public}@ to %{public}@", buf, 0x16u);
  }

  objc_storeStrong(&self->_activeNowPlayingClient, v13);
  if (!self->_activeNowPlayingClient)
  {
    v28 = _MRLogForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A8850(self, v28, v29, v30, v31, v32, v33, v34);
    }

    activeNowPlayingClientTransaction = self->_activeNowPlayingClientTransaction;
    self->_activeNowPlayingClientTransaction = 0;
    goto LABEL_14;
  }

  if (!self->_activeNowPlayingClientTransaction)
  {
    v16 = _MRLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A87E0(self, v16, v17, v18, v19, v20, v21, v22);
    }

    v23 = [(MRPlayerPath *)self->_playerPath description];
    activeNowPlayingClientTransaction = [NSString stringWithFormat:@"com.apple.mediaremoted.MRDNowPlayingOriginClient/%@", v23];

    v25 = [[MROSTransaction alloc] initWithName:activeNowPlayingClientTransaction];
    v26 = self->_activeNowPlayingClientTransaction;
    self->_activeNowPlayingClientTransaction = v25;

    v27 = self->_activeNowPlayingClientTransaction;
    MRRegisterTransaction();
LABEL_14:
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v36 = [v14 copy];
  v37 = [(MRDNowPlayingClient *)self->_activeNowPlayingClient activePlayerClient];
  [WeakRetained nowPlayingOriginClient:self activePlayerPathDidChange:v36 withPlaybackState:{objc_msgSend(v37, "playbackState")}];

  if (!self->_activity)
  {
    goto LABEL_21;
  }

  v38 = [v12 client];
  v39 = [v38 processIdentifier];
  v40 = [(MRMutableApplicationActivity *)self->_activity creatorProcessID];

  if (v39 == v40)
  {
    v41 = 4;
  }

  else
  {
    v42 = [(MRDNowPlayingClient *)self->_activeNowPlayingClient client];
    v43 = [v42 processIdentifier];
    v44 = [(MRMutableApplicationActivity *)self->_activity creatorProcessID];

    if (v43 != v44)
    {
      goto LABEL_21;
    }

    v41 = 2;
  }

  [(MRDNowPlayingOriginClient *)self _onQueue_updateActivityStatus:v41];
LABEL_21:
  v45 = [(MRDNowPlayingOriginClient *)self _onQueue_calculateActiveNowPlayingPlayerClients];
  v46 = [NSSet setWithArray:self->_activePlayerClients];
  v47 = [v46 isEqualToSet:v45];

  if ((v47 & 1) == 0)
  {
    v48 = _MRLogForCategory();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = [(NSArray *)self->_activePlayerClients mr_map:&stru_1004BC3D0];
      v50 = [v45 allObjects];
      v51 = [v50 mr_map:&stru_1004BC3F0];
      *buf = 138543618;
      v56 = v49;
      v57 = 2114;
      v58 = v51;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingOriginClient] ActiveNowPlayingPlayersClients changed from %{public}@ to %{public}@", buf, 0x16u);
    }

    v52 = [v45 allObjects];
    activePlayerClients = self->_activePlayerClients;
    self->_activePlayerClients = v52;

    v54 = objc_loadWeakRetained(&self->_delegate);
    [v54 nowPlayingOriginClient:self activePlayerClientsDidChange:self->_activePlayerClients];
  }
}

- (id)_onQueue_addNowPlayingClient:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingOriginClient] Creating nowPlayingClient for %{public}@", buf, 0xCu);
  }

  v6 = [[MRDNowPlayingClient alloc] initWithPlayerPath:v4];
  v7 = +[MRDMediaRemoteServer server];
  v8 = [v7 nowPlayingServer];
  [(MRDNowPlayingClient *)v6 setDelegate:v8];

  nowPlayingClients = self->_nowPlayingClients;
  if (!nowPlayingClients)
  {
    v10 = objc_alloc_init(NSMutableArray);
    v11 = self->_nowPlayingClients;
    self->_nowPlayingClients = v10;

    nowPlayingClients = self->_nowPlayingClients;
  }

  [(NSMutableArray *)nowPlayingClients addObject:v6];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained nowPlayingOriginClient:self clientDidRegister:v6];

  [(MRDNowPlayingClient *)v6 initializeDisplayName];
  v13 = [v4 player];
  v14 = [(MRDNowPlayingClient *)v6 playerClientForPlayer:v13];

  nowPlayingDataSource = self->_nowPlayingDataSource;
  v16 = [NSString alloc];
  v17 = [v14 playerPath];
  v18 = [v16 initWithFormat:@"addNowPlayingClient-%@", v17];
  [(MRDNowPlayingOriginClient *)self _onQueue_reloadInferredStateFromDataSource:nowPlayingDataSource reason:v18];

  return v6;
}

- (void)_onQueue_maybeSetupPlaybackTimeoutTimerForNotification:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000EE770;
  v25[3] = &unk_1004B9FE8;
  v25[4] = self;
  if (sub_1000EE770(v25))
  {
    v5 = [(MRDNowPlayingClient *)self->_activeNowPlayingClient activePlayerClient];
    if ([v5 isPlaying])
    {
      playbackTimer = self->_playbackTimer;
      v7 = [NSString alloc];
      v8 = [v5 playerPath];
      v9 = [v4 name];
      v10 = [v7 initWithFormat:@"%@ is playing for notification <%@>", v8, v9];
      [(MRPersistentTimer *)playbackTimer invalidateWithReason:v10];
    }

    else
    {
      [(MRDNowPlayingOriginClient *)self timeSincePlaying];
      v12 = v11;
      v13 = +[MRUserSettings currentSettings];
      [v13 mediaRecentlyPlayedInterval];
      v15 = v14 + 5.0;

      if (v12 < v15)
      {
        v16 = [MRPersistentTimer alloc];
        serialQueue = self->_serialQueue;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1000EE808;
        v23[3] = &unk_1004B68F0;
        v23[4] = self;
        v24 = v4;
        v18 = [v16 initWithInterval:@"com.apple.mediaremote.originclient.playbacktimer" name:serialQueue queue:v23 block:v15 - v12];
        v19 = self->_playbackTimer;
        self->_playbackTimer = v18;

LABEL_8:
        goto LABEL_9;
      }

      v20 = self->_playbackTimer;
      v21 = [NSString alloc];
      v8 = [v5 playerPath];
      v22 = [v21 initWithFormat:@"%@ was not playing recently", v8];
      [(MRPersistentTimer *)v20 invalidateWithReason:v22];
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)_onQueue_maybeSavePlaybackStateForNotification:(id)a3
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v4 = [(MRDNowPlayingClient *)self->_activeNowPlayingClient activePlayerClient];
  v5 = [v4 playbackState];
  v6 = +[MRDSettings currentSettings];
  v7 = [v6 localPlaybackState];

  v8 = self->_lastPlayingDate;
  if (v7 != v5)
  {
    if (qword_1005293E0 != -1)
    {
      sub_1003A88C0();
    }

    v9 = qword_1005293D8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000EEA90;
    v10[3] = &unk_1004B7650;
    v12 = v5;
    v13 = v7;
    v11 = v8;
    dispatch_async(v9, v10);
  }
}

- (void)_registerCallbacks
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = kMRMediaRemotePlayerIsPlayingDidChangeNotification;
  [v3 addObserver:self selector:"_handleNowPlayingAppMaybeDidChange:" name:kMRMediaRemotePlayerIsPlayingDidChangeNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_handleNowPlayingAppMaybeDidChange:" name:kMRMediaRemoteNowPlayingApplicationDidRegisterCanBeNowPlaying object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_handleNowPlayingAppMaybeDidChange:" name:kMRMediaRemoteNowPlayingApplicationDidUnregisterCanBeNowPlaying object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = kMRMediaRemoteNowPlayingPlayerDidRegister;
  [v7 addObserver:self selector:"_handleNowPlayingAppMaybeDidChange:" name:kMRMediaRemoteNowPlayingPlayerDidRegister object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  v10 = kMRMediaRemoteNowPlayingPlayerDidUnregister;
  [v9 addObserver:self selector:"_handleNowPlayingAppMaybeDidChange:" name:kMRMediaRemoteNowPlayingPlayerDidUnregister object:0];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"_handlePlayerIsPlayingDidChange:" name:v4 object:0];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"_handleOriginIsPlayingDidChange:" name:kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"_handlePlayerPropertiesDidChange:" name:kMRMediaRemotePlayerStateDidChange object:0];

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"_handlePlayerPictureInPictureEnabledDidChange:" name:kMRMediaRemotePlayerPictureInPictureDidChange object:0];

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 addObserver:self selector:"_handleActivePlayerDidChange:" name:kMRMediaRemoteActivePlayerDidChange object:0];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_handleNowPlayingApplicationDidUnregisterCanBeNowPlaying:" name:v10 object:0];

  v17 = +[NSNotificationCenter defaultCenter];
  [v17 addObserver:self selector:"_handlePlayerDidRegister:" name:v8 object:0];

  if ([(MROrigin *)self->_origin isLocal])
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EEE38;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }
}

- (unsigned)_stateFromDataSource:(id)a3
{
  v3 = a3;
  if ([v3 nowPlayingApplicationIsPlaying])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v3 nowPlayingApplicationIsInterrupted];

  if (v5)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

- (id)_playerPathForNowPlayingClient:(id)a3
{
  v4 = a3;
  v5 = [v4 activePlayerClient];
  v6 = [v5 playerPath];

  if (!v6)
  {
    v7 = [v4 playerPath];
    if (!v7)
    {
      v7 = [(MRPlayerPath *)self->_playerPath copy];
    }

    v6 = v7;
  }

  return v6;
}

- (MRDNowPlayingOriginClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end