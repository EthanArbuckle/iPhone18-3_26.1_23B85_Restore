@interface MRDAVSystemEndpointController
- (BOOL)_hasPersonalDeviceForContext:(id)a3;
- (BOOL)_requiresConnectionToUpdate:(id)a3;
- (MRDAVSystemEndpointController)initWithRoutingController:(id)a3;
- (MRDAVSystemEndpointControllerDelegate)delegate;
- (NSArray)recentlyDismissedRecommendationsInfo;
- (NSDictionary)systemEndpointInfo;
- (id)_isAllowedToUpdateRecommendationForOutputDevice:(id)a3 recentlyDismissed:(id)a4;
- (id)_onSerialQueue_calculateActiveEndpoint:(int64_t)a3 event:(int64_t)a4 reason:(id *)a5 suppressPairedDeviceSync:(BOOL *)a6;
- (id)_onSerialQueue_calculateProactiveEndpointForEvent:(int64_t)a3 reason:(id *)a4;
- (id)_onSerialQueue_calculateProactiveRecommendedEndpoint:(id *)a3;
- (id)_onSerialQueue_calculateProactiveRecommendedEndpointForWatch:(id *)a3;
- (id)_onSerialQueue_calculateRecommendedEndpointForEvent:(int64_t)a3 reason:(id *)a4;
- (id)_onSerialQueue_calculateUserSelectedEndpointForEvent:(int64_t)a3 reason:(id *)a4 suppressPairedDeviceSync:(BOOL *)a5;
- (id)_onSerialQueue_updateSystemEndpoint:(id)a3 event:(int64_t)a4 eventReason:(id)a5;
- (id)_validate:(id)a3;
- (id)activeOutputDeviceUID:(int64_t)a3;
- (id)originClientForDeviceUID:(id)a3;
- (void)_deviceInfoDidChange:(id)a3;
- (void)_handleIsPlayingDidChangeNotification:(id)a3;
- (void)_handleOriginDidRegisterNotification:(id)a3;
- (void)_handleOriginDidUnregisterNotification:(id)a3;
- (void)_handleOutputContextDidAddOutputDeviceNotification:(id)a3;
- (void)_initializeSystemEndpointInfo;
- (void)_onSerialQueue_clearActiveEndpointType:(int64_t)a3 outputDeviceUID:(id)a4 event:(int64_t)a5 reason:(id)a6 clientBundleIdentifier:(id)a7;
- (void)_onSerialQueue_maybeSetupPlaybackTimerForEvent:(int64_t)a3;
- (void)_onSerialQueue_maybeSetupUserSelectedTimerForEvent:(int64_t)a3;
- (void)_onSerialQueue_reconnectToOutputDevice:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)_onSerialQueue_reevaluateActiveEndpoint:(int64_t)a3 event:(int64_t)a4 changeType:(int64_t)a5 eventReason:(id)a6 clientBundleIdentifier:(id)a7;
- (void)_storeRecentlyDismissedRecommendationForOutputDeviceUID:(id)a3 disableDuration:(double)a4;
- (void)_writeSystemEndpointInfo:(id)a3 recentlyDismissedRecommendationsInfo:(id)a4;
- (void)clearActiveEndpointType:(int64_t)a3 outputDeviceUID:(id)a4 event:(int64_t)a5 reason:(id)a6 clientBundleIdentifier:(id)a7;
- (void)dealloc;
- (void)updateSystemEndpointForRequest:(id)a3 completion:(id)a4;
- (void)updateSystemEndpointForRequest:(id)a3 event:(int64_t)a4 completion:(id)a5;
- (void)updateSystemEndpointForRequest:(id)a3 event:(int64_t)a4 eventReason:(id)a5 completion:(id)a6;
@end

@implementation MRDAVSystemEndpointController

- (NSDictionary)systemEndpointInfo
{
  v3 = objc_alloc_init(NSMutableDictionary);
  serialQueue = self->_serialQueue;
  v7 = v3;
  msv_dispatch_sync_on_queue();
  v5 = v7;

  return v7;
}

- (NSArray)recentlyDismissedRecommendationsInfo
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100034F90;
  v9 = sub_10003598C;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (MRDAVSystemEndpointController)initWithRoutingController:(id)a3
{
  v5 = a3;
  v31.receiver = self;
  v31.super_class = MRDAVSystemEndpointController;
  v6 = [(MRDAVSystemEndpointController *)&v31 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routingController, a3);
    v8 = +[MRDMediaRemoteServer server];
    v9 = [v8 nowPlayingServer];
    nowPlayingServer = v7->_nowPlayingServer;
    v7->_nowPlayingServer = v9;

    v11 = objc_opt_class();
    Name = class_getName(v11);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(Name, v13);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v14;

    v16 = +[MRDSettings currentSettings];
    v17 = [v16 userDefaults];
    userDefaults = v7->_userDefaults;
    v7->_userDefaults = v17;

    v19 = +[MRAVOutputContext sharedSystemAudioContext];
    v7->_cachedHasPersonalDevices = [(MRDAVSystemEndpointController *)v7 _hasPersonalDeviceForContext:v19];

    v20 = objc_alloc_init(NSMutableDictionary);
    systemEndpointEntries = v7->_systemEndpointEntries;
    v7->_systemEndpointEntries = v20;

    v22 = objc_alloc_init(NSMutableArray);
    recentlyDismissedRecommendations = v7->_recentlyDismissedRecommendations;
    v7->_recentlyDismissedRecommendations = v22;

    [(MRDAVSystemEndpointController *)v7 _initializeSystemEndpointInfo];
    v24 = [[MRDSystemEndpointControllerHelper alloc] initWithSystemEndpointController:v7];
    helper = v7->_helper;
    v7->_helper = v24;

    v26 = +[NSNotificationCenter defaultCenter];
    v27 = kMRMediaRemoteOriginDidRegisterNotification;
    [v26 addObserver:v7 selector:"_handleOriginDidRegisterNotification:" name:kMRMediaRemoteOriginDidRegisterNotification object:0];
    [v26 addObserver:v7 selector:"_handleOriginDidUnregisterNotification:" name:kMRMediaRemoteOriginDidUnregisterNotification object:0];
    v28 = MRAVOutputContextDidAddOutputDeviceNotification;
    v29 = +[MRAVOutputContext sharedSystemAudioContext];
    [v26 addObserver:v7 selector:"_handleOutputContextDidAddOutputDeviceNotification:" name:v28 object:v29];

    [v26 addObserver:v7 selector:"_handleIsPlayingDidChangeNotification:" name:kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification object:0];
    [v26 addObserver:v7 selector:"_deviceInfoDidChange:" name:kMRDeviceInfoDidChangeNotification object:0];
    [v26 addObserver:v7 selector:"_deviceInfoDidChange:" name:v27 object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MRDAVSystemEndpointController;
  [(MRDAVSystemEndpointController *)&v4 dealloc];
}

- (id)activeOutputDeviceUID:(int64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100034F90;
  v10 = sub_10003598C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v4 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v4;
}

- (BOOL)_requiresConnectionToUpdate:(id)a3
{
  v3 = a3;
  if ([v3 type] == 2)
  {
    v4 = [v3 outputDeviceUID];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_validate:(id)a3
{
  v3 = a3;
  if ([v3 type] != 2)
  {
    goto LABEL_4;
  }

  v4 = [v3 outputDeviceUID];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = +[MRUserSettings currentSettings];
  v6 = [v5 enableRouteRecommendations];

  if ((v6 & 1) == 0)
  {
    v8 = [NSError alloc];
    active = MRMediaRemoteActiveEndpointTypeCopyDescription();
    v4 = [v8 initWithMRError:3 format:{@"%@ is disabled via Settings", active}];
  }

  else
  {
LABEL_4:
    v4 = 0;
  }

LABEL_5:

  return v4;
}

- (void)updateSystemEndpointForRequest:(id)a3 event:(int64_t)a4 eventReason:(id)a5 completion:(id)a6
{
  v9 = a3;
  v46 = a5;
  v10 = a6;
  v43 = v9;
  v11 = [v9 copy];
  v45 = +[MRDeviceInfoRequest localDeviceInfo];
  v12 = [v11 outputDeviceUID];
  v13 = [v45 WHAIdentifier];
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
    [v11 setOutputDeviceUID:0];
  }

  v15 = +[NSDate now];
  v16 = [NSString alloc];
  [v11 type];
  active = MRMediaRemoteActiveEndpointTypeCopyDescription();
  v18 = [v16 initWithFormat:@"SystemEndpointController.update%@", active];

  v44 = v18;
  v19 = [[MRRequestDetails alloc] initWithName:v18 requestID:0 reason:v46];
  v20 = [NSMutableString alloc];
  v21 = [v19 name];
  v22 = [v19 requestID];
  v23 = [v20 initWithFormat:@"%@<%@>", v21, v22];

  v24 = [v11 outputDeviceUID];

  if (v24)
  {
    v25 = [v11 outputDeviceUID];
    [v23 appendFormat:@" for %@", v25];
  }

  v26 = _MRLogForCategory();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v23;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_100046A74;
  v59[3] = &unk_1004B69A8;
  v27 = v11;
  v60 = v27;
  v28 = v19;
  v61 = v28;
  v42 = v15;
  v62 = v42;
  v41 = v10;
  v63 = v41;
  v29 = objc_retainBlock(v59);
  v30 = [(MRDAVSystemEndpointController *)self _validate:v27];
  if (!v30)
  {
    v31 = +[NSDate now];
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100046D54;
    block[3] = &unk_1004B69D0;
    block[4] = self;
    v33 = v27;
    v57 = v33;
    v34 = v31;
    v58 = v34;
    dispatch_sync(serialQueue, block);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v65 = 0x3032000000;
    v66 = sub_100034F90;
    v67 = sub_10003598C;
    v68 = 0;
    v35 = dispatch_group_create();
    if ([(MRDAVSystemEndpointController *)self _requiresPlaybackToUpdate:v33])
    {
      dispatch_group_enter(v35);
      v36 = [v33 outputDeviceUID];
      v37 = v55;
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100046DFC;
      v55[3] = &unk_1004B6A20;
      v55[5] = &buf;
      v55[4] = v35;
      [MRAVEndpoint connectToEndpointContainingOutputDeviceUID:v36 options:0 details:v28 completion:v55];
    }

    else
    {
      if (![(MRDAVSystemEndpointController *)self _requiresConnectionToUpdate:v33])
      {
LABEL_14:
        v38 = self->_serialQueue;
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_100046FD4;
        v47[3] = &unk_1004B6A48;
        p_buf = &buf;
        v47[4] = self;
        v48 = v33;
        v49 = v34;
        v53 = a4;
        v50 = v46;
        v51 = v29;
        v39 = v34;
        dispatch_group_notify(v35, v38, v47);

        _Block_object_dispose(&buf, 8);
        goto LABEL_15;
      }

      dispatch_group_enter(v35);
      v36 = [v33 outputDeviceUID];
      v37 = v54;
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100046F70;
      v54[3] = &unk_1004B6A20;
      v54[5] = &buf;
      v54[4] = v35;
      [MRAVEndpoint connectToEndpointContainingOutputDeviceUID:v36 options:0 details:v28 completion:v54];
    }

    goto LABEL_14;
  }

  (v29[2])(v29, v30);
LABEL_15:
}

- (void)updateSystemEndpointForRequest:(id)a3 event:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 reason];
  [(MRDAVSystemEndpointController *)self updateSystemEndpointForRequest:v9 event:a4 eventReason:v10 completion:v8];
}

- (void)updateSystemEndpointForRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 reason];
  [(MRDAVSystemEndpointController *)self updateSystemEndpointForRequest:v7 event:1 eventReason:v8 completion:v6];
}

- (void)clearActiveEndpointType:(int64_t)a3 outputDeviceUID:(id)a4 event:(int64_t)a5 reason:(id)a6 clientBundleIdentifier:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  serialQueue = self->_serialQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004732C;
  v19[3] = &unk_1004B6A70;
  v19[4] = self;
  v20 = v12;
  v23 = a3;
  v24 = a5;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_sync(serialQueue, v19);
}

- (void)_onSerialQueue_clearActiveEndpointType:(int64_t)a3 outputDeviceUID:(id)a4 event:(int64_t)a5 reason:(id)a6 clientBundleIdentifier:(id)a7
{
  v17 = a4;
  v12 = a6;
  v13 = a7;
  dispatch_assert_queue_V2(self->_serialQueue);
  v14 = [(MRDAVSystemEndpointController *)self activeOutputDeviceUID:a3];
  if (v14 == v17 || [v17 isEqualToString:v14])
  {
    v15 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:0 reason:v12];
    [v15 setClientBundleIdentifier:v13];
    [v15 setType:a3];
    v16 = [(MRDAVSystemEndpointController *)self _onSerialQueue_updateSystemEndpoint:v15 event:a5 eventReason:v12];
  }
}

- (id)originClientForDeviceUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(MRDHostedRoutingController *)self->_routingController availableEndpoints];
    v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v26;
      v23 = v4;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          if ([v10 containsOutputDeviceWithUID:{v4, v23}])
          {
            v11 = [v10 externalDevice];
            v12 = [v11 customOrigin];

            v13 = [(MRDNowPlayingServer *)self->_nowPlayingServer originClientForOrigin:v12];
            if (!v7)
            {
              goto LABEL_11;
            }

            v14 = [v7 registrationDate];
            [v13 registrationDate];
            v16 = v15 = self;
            v17 = v6;
            v18 = v8;
            v19 = [v14 compare:v16];

            self = v15;
            v20 = v19 == 1;
            v8 = v18;
            v6 = v17;
            if (v20)
            {
LABEL_11:
              v21 = v13;

              v7 = v21;
            }

            v4 = v23;
          }
        }

        v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [(MRDNowPlayingServer *)self->_nowPlayingServer localOriginClient];
  }

  return v7;
}

- (void)_handleOriginDidRegisterNotification:(id)a3
{
  v4 = [a3 userInfo];
  v15 = MRGetDeviceInfoFromUserInfo();

  v5 = [(MRDAVSystemEndpointController *)self activeOutputDeviceUID:0];
  v6 = [NSString alloc];
  active = MRMediaRemoteActiveEndpointTypeCopyDescription();
  v8 = [v15 deviceUID];
  v9 = [v15 name];
  v10 = [v6 initWithFormat:@"%@ origin registered <%@> (<%@>) ", active, v8, v9];

  v11 = [v15 deviceUID];
  LODWORD(v8) = [v5 isEqualToString:v11];

  if (v8)
  {
    v12 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:v5 reason:v10];
    [v12 setChangeType:1];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 bundleIdentifier];
    [v12 setClientBundleIdentifier:v14];

    [(MRDAVSystemEndpointController *)self updateSystemEndpointForRequest:v12 event:3 eventReason:v10 completion:0];
  }
}

- (void)_handleOriginDidUnregisterNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = MRGetOriginFromUserInfo();

  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004789C;
  v8[3] = &unk_1004B68F0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_sync(serialQueue, v8);
}

- (void)_handleOutputContextDidAddOutputDeviceNotification:(id)a3
{
  v9 = [a3 object];
  v4 = [(MRDAVSystemEndpointController *)self _hasPersonalDeviceForContext:?];
  v5 = v4;
  if (v4 && !self->_cachedHasPersonalDevices)
  {
    v6 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:0 reason:@"personal device was attached"];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 bundleIdentifier];
    [v6 setClientBundleIdentifier:v8];

    [(MRDAVSystemEndpointController *)self updateSystemEndpointForRequest:v6];
  }

  self->_cachedHasPersonalDevices = v5;
}

- (void)_handleIsPlayingDidChangeNotification:(id)a3
{
  v4 = [a3 playerPath];
  v5 = [v4 client];
  v6 = [v5 processIdentifier];

  v7 = 5;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047D5C;
  block[3] = &unk_1004B6AC0;
  if (!v6)
  {
    v7 = 7;
  }

  v11 = v4;
  v12 = self;
  v13 = v7;
  v9 = v4;
  dispatch_sync(serialQueue, block);
}

- (void)_onSerialQueue_reevaluateActiveEndpoint:(int64_t)a3 event:(int64_t)a4 changeType:(int64_t)a5 eventReason:(id)a6 clientBundleIdentifier:(id)a7
{
  v12 = a6;
  v13 = a7;
  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A48D0(a3, v12, v14);
  }

  v20 = 0;
  v19 = 0;
  v15 = [(MRDAVSystemEndpointController *)self _onSerialQueue_calculateActiveEndpoint:a3 event:a4 reason:&v19 suppressPairedDeviceSync:&v20];
  v16 = v19;
  v17 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:v15 reason:v16];
  [v17 setChangeType:a5];
  [v17 setClientBundleIdentifier:v13];

  [v17 setType:a3];
  [v17 setSuppressPairedDeviceSync:v20];
  v18 = [(MRDAVSystemEndpointController *)self _onSerialQueue_updateSystemEndpoint:v17 event:a4 eventReason:v12];
}

- (id)_onSerialQueue_calculateActiveEndpoint:(int64_t)a3 event:(int64_t)a4 reason:(id *)a5 suppressPairedDeviceSync:(BOOL *)a6
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v11 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v11 = [(MRDAVSystemEndpointController *)self _onSerialQueue_calculateRecommendedEndpointForEvent:a4 reason:a5];
    }

    else if (a3 == 3)
    {
      v11 = [(MRDAVSystemEndpointController *)self _onSerialQueue_calculateProactiveRecommendedEndpoint:a5];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v11 = [(MRDAVSystemEndpointController *)self _onSerialQueue_calculateProactiveEndpointForEvent:a4 reason:a5];
    }
  }

  else
  {
    v11 = [(MRDAVSystemEndpointController *)self _onSerialQueue_calculateUserSelectedEndpointForEvent:a4 reason:a5 suppressPairedDeviceSync:a6];
  }

  return v11;
}

- (id)_onSerialQueue_calculateUserSelectedEndpointForEvent:(int64_t)a3 reason:(id *)a4 suppressPairedDeviceSync:(BOOL *)a5
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v8 = [(NSMutableDictionary *)self->_systemEndpointEntries objectForKeyedSubscript:&off_1004E04A0];
  v9 = v8;
  if (!v8)
  {
    v18 = [NSString alloc];
    active = MRMediaRemoteActiveEndpointTypeCopyDescription();
    v17 = [v18 initWithFormat:@"No %@SystemEndpoint", active];
    goto LABEL_7;
  }

  v10 = [v8 outputDeviceUID];
  active = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:v10];

  [active timeSincePlaying];
  v13 = v12;
  v14 = [v9 date];
  [v14 timeIntervalSinceNow];
  v16 = v15;

  if (([v9 supportsIdleReset] & 1) == 0)
  {
    *a4 = @"doesn't participate in idle reset";
LABEL_9:
    v19 = [v9 outputDeviceUID];
    goto LABEL_10;
  }

  if (a3 == 6 && active)
  {
    v17 = [[NSString alloc] initWithFormat:@"was not playing sort of recently <%lf> seconds ago", *&v13];
LABEL_7:
    v19 = 0;
    *a4 = v17;
    goto LABEL_10;
  }

  if (active)
  {
    v21 = +[MRUserSettings currentSettings];
    [v21 mediaRecentlyPlayedInterval];
    v23 = v22;

    if (v13 < v23)
    {
      *a4 = [[NSString alloc] initWithFormat:@"was playing recently <%lf> seconds ago", *&v13];
      goto LABEL_9;
    }
  }

  if (a3 == 2)
  {
    v24 = [NSString alloc];
    v25 = MRMediaRemoteActiveEndpointTypeCopyDescription();
    v26 = [v24 initWithFormat:@"was not <%@> sort of recently <%lf> seconds ago", v25, *&v13];
  }

  else
  {
    v27 = -v16;
    v28 = +[MRUserSettings currentSettings];
    [v28 endpointRecentlyUserSelectedInterval];
    v30 = v29;

    v31 = [NSString alloc];
    if (v30 > v27)
    {
      v32 = MRMediaRemoteActiveEndpointTypeCopyDescription();
      *a4 = [v31 initWithFormat:@"was <%@> recently <%lf> seconds ago", v32, *&v27];

      goto LABEL_9;
    }

    if (active)
    {
      [active timeSincePlaying];
      v34 = v33;
      v25 = MRMediaRemoteActiveEndpointTypeCopyDescription();
      v35 = [v9 date];
      [v35 timeIntervalSinceNow];
      *a4 = [v31 initWithFormat:@"was not playing recently <%lf> ago and was not <%@> recently <%lf> seconds ago", v34, v25, -v36];

      goto LABEL_23;
    }

    v25 = [v9 outputDeviceUID];
    v26 = [v31 initWithFormat:@"Could not find origin with deviceUID = <%@>", v25, v37];
  }

  *a4 = v26;
LABEL_23:

  v19 = 0;
LABEL_10:

  return v19;
}

- (id)_onSerialQueue_calculateProactiveEndpointForEvent:(int64_t)a3 reason:(id *)a4
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v6 = [(MRDNowPlayingServer *)self->_nowPlayingServer localOriginClient];
  v7 = [v6 activeNowPlayingClient];
  v8 = [v7 activePlayerClient];

  if ([v8 isPlaying])
  {
    v9 = [NSString alloc];
    v10 = [v8 playerPath];
    v11 = [v9 initWithFormat:@"local activePlayer %@ is playing", v10];
    v12 = 0;
    *a4 = v11;
  }

  else
  {
    v10 = [(NSMutableDictionary *)self->_systemEndpointEntries objectForKeyedSubscript:&off_1004E04A0];
    v13 = [v10 outputDeviceUID];
    v14 = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:v13];
    if (v14)
    {
      *a4 = MRMediaRemoteActiveEndpointTypeCopyDescription();
      v15 = v13;
    }

    else
    {
      *a4 = @"Fallback to previous";
      v15 = [(MRDAVSystemEndpointController *)self activeOutputDeviceUID:1];
    }

    v12 = v15;
  }

  return v12;
}

- (id)_onSerialQueue_calculateRecommendedEndpointForEvent:(int64_t)a3 reason:(id *)a4
{
  dispatch_assert_queue_V2(self->_serialQueue);
  systemEndpointEntries = self->_systemEndpointEntries;
  v7 = [NSNumber numberWithInteger:2];
  v8 = [(NSMutableDictionary *)systemEndpointEntries objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [v8 outputDeviceUID];
    active = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:v9];

    v11 = [active activeNowPlayingClient];
    v12 = [v11 activePlayerClient];

    if ([v12 isPlaying])
    {
      v13 = [NSString alloc];
      v14 = [v12 playerPath];
      *a4 = [v13 initWithFormat:@"%@ is playing", v14];

      v15 = [v8 outputDeviceUID];
    }

    else
    {
      if (v12)
      {
        v17 = [NSString alloc];
        v18 = [v12 playerPath];
        v19 = [v17 initWithFormat:@"%@ is not playing", v18];
      }

      else
      {
        v20 = [NSString alloc];
        if (active)
        {
          v18 = [active playerPath];
          v19 = [v20 initWithFormat:@"%@ does not have a now playing app", v18];
        }

        else
        {
          v18 = [v8 outputDeviceUID];
          v19 = [v20 initWithFormat:@"Could not find origin with deviceUID = <%@>", v18];
        }
      }

      *a4 = v19;

      v15 = 0;
    }
  }

  else
  {
    v16 = [NSString alloc];
    active = MRMediaRemoteActiveEndpointTypeCopyDescription();
    v15 = 0;
    *a4 = [v16 initWithFormat:@"No %@SystemEndpoint", active];
  }

  return v15;
}

- (id)_onSerialQueue_calculateProactiveRecommendedEndpoint:(id *)a3
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = [(MRDNowPlayingServer *)self->_nowPlayingServer localOriginClient];
  v6 = [v5 activeNowPlayingClient];
  v7 = [v6 activePlayerClient];

  if ([v7 isPlaying])
  {
    v8 = [NSString alloc];
    v9 = [v7 playerPath];
    v10 = [v8 initWithFormat:@"local activePlayer %@ is playing", v9];
    v11 = 0;
    *a3 = v10;
  }

  else
  {
    *a3 = @"Fallback to recommended";
    v9 = [(NSMutableDictionary *)self->_systemEndpointEntries objectForKeyedSubscript:&off_1004E04B8];
    v11 = [v9 outputDeviceUID];
  }

  return v11;
}

- (id)_onSerialQueue_calculateProactiveRecommendedEndpointForWatch:(id *)a3
{
  v5 = [MRDWatchRSECandidate alloc];
  v6 = [(MRDNowPlayingServer *)self->_nowPlayingServer localOriginClient];
  v7 = [(MRDWatchRSECandidate *)v5 initWithOriginClient:v6 namePrefix:@"LOCAL" isLocal:1];

  v8 = [(MRDNowPlayingServer *)self->_nowPlayingServer companionOriginClient];

  v9 = _MRLogForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[SystemEndpointController] Adding companionOriginClient", buf, 2u);
    }

    v11 = [MRDWatchRSECandidate alloc];
    v9 = [(MRDNowPlayingServer *)self->_nowPlayingServer companionOriginClient];
    v12 = [(MRDWatchRSECandidate *)v11 initWithOriginClient:v9 namePrefix:@"CMPN" isLocal:0];
  }

  else
  {
    if (v10)
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[SystemEndpointController] companionOriginClient not present", v23, 2u);
    }

    v12 = 0;
  }

  v13 = [(NSMutableDictionary *)self->_systemEndpointEntries objectForKeyedSubscript:&off_1004E04A0];
  v14 = [v13 outputDeviceUID];

  if (v14)
  {
    v15 = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:v14];
    if (v15)
    {
      v16 = [[MRDWatchRSECandidate alloc] initWithOriginClient:v15 namePrefix:@"UserSelected" isLocal:0];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [(NSMutableDictionary *)self->_systemEndpointEntries objectForKeyedSubscript:&off_1004E04B8];
  v18 = [v17 outputDeviceUID];

  if (v18)
  {
    v19 = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:v18];
    if (v19)
    {
      v20 = [[MRDWatchRSECandidate alloc] initWithOriginClient:v19 namePrefix:@"RSE" isLocal:0];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = [MRDWatchRSECandidatePicker proactiveRecommendedWithLocal:v7 companion:v12 userSelected:v16 rse:v20 selectionReason:a3];

  return v21;
}

- (id)_isAllowedToUpdateRecommendationForOutputDevice:(id)a3 recentlyDismissed:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v26 = 0;
    goto LABEL_13;
  }

  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_100048D90;
  v35 = &unk_1004B6AE8;
  v7 = v5;
  v36 = v7;
  v8 = [a4 msv_firstWhere:&v32];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 date];
    [v9 disableDuration];
    v11 = [v10 dateByAddingTimeInterval:?];

    v12 = +[NSDate now];
    v13 = [v12 compare:v11];

    if (v13 == -1)
    {
      v27 = [NSError alloc];
      active = MRMediaRemoteActiveEndpointTypeCopyDescription();
      v21 = [v9 date];
      v22 = [v9 date];
      [v22 timeIntervalSinceNow];
      v29 = v28;
      [v11 timeIntervalSinceNow];
      v26 = [v27 initWithMRError:3 format:{@"Cannot update the %@ yet. Was last dismissed at %@ (%lf seconds ago). Cannot set until %@ (%lf more seconds)", active, v21, v29, v11, v30, v32, v33, v34, v35}];
    }

    else
    {
      v14 = +[MRDMediaRemoteServer server];
      v15 = [v14 nowPlayingServer];
      active = [v15 originClientForDeviceUID:v7];

      v17 = [active devicePlaybackSessionID];
      v18 = [v9 devicePlaybackSessionID];
      v19 = [v17 isEqualToString:v18];

      if (!v19)
      {
        v26 = 0;
        goto LABEL_11;
      }

      v20 = [NSError alloc];
      v21 = MRMediaRemoteActiveEndpointTypeCopyDescription();
      v22 = [v9 devicePlaybackSessionID];
      v23 = [v9 date];
      v24 = [v9 date];
      [v24 timeIntervalSinceNow];
      v26 = [v20 initWithMRError:3 format:{@"Cannot update the %@ to outputDeviceUID=%@ while devicePlaybackSessionID=%@, it was already dismissed at %@ (%lf seconds ago)", v21, v7, v22, v23, v25, v32, v33, v34, v35}];
    }

LABEL_11:
    goto LABEL_12;
  }

  v26 = 0;
LABEL_12:

LABEL_13:

  return v26;
}

- (void)_storeRecentlyDismissedRecommendationForOutputDeviceUID:(id)a3 disableDuration:(double)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && a4 > 0.0)
  {
    recentlyDismissedRecommendations = self->_recentlyDismissedRecommendations;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100048F74;
    v18[3] = &unk_1004B6AE8;
    v9 = v6;
    v19 = v9;
    v10 = [(NSMutableArray *)recentlyDismissedRecommendations msv_firstWhere:v18];
    if (v10)
    {
      [(NSMutableArray *)self->_recentlyDismissedRecommendations removeObject:v10];
    }

    v11 = +[MRDMediaRemoteServer server];
    v12 = [v11 nowPlayingServer];
    v13 = [v12 originClientForDeviceUID:v9];

    v14 = [MRDSystemEndpointControllerRecentlyDismissedRecommendation alloc];
    v15 = +[NSDate now];
    v16 = [v13 devicePlaybackSessionID];
    v17 = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)v14 initWithOutputDevice:v9 date:v15 disableDuration:v16 devicePlaybackSessionID:a4];

    [(NSMutableArray *)self->_recentlyDismissedRecommendations addObject:v17];
  }
}

- (id)_onSerialQueue_updateSystemEndpoint:(id)a3 event:(int64_t)a4 eventReason:(id)a5
{
  v7 = a3;
  v8 = a5;
  dispatch_assert_queue_V2(self->_serialQueue);
  v9 = [v7 type];
  systemEndpointEntries = self->_systemEndpointEntries;
  v11 = [NSNumber numberWithInteger:v9];
  v12 = [(NSMutableDictionary *)systemEndpointEntries objectForKeyedSubscript:v11];

  v13 = [v12 outputDeviceUID];
  v14 = [v7 outputDeviceUID];
  v15 = +[MRDMediaRemoteServer server];
  v16 = [v15 groupSessionServer];
  v17 = [v16 sessionManager];

  v95 = v17;
  v18 = [v17 session];
  v19 = [v18 identifier];
  v20 = [v19 isEqualToString:v14];

  v21 = v9;
  if (v9 == 2)
  {
    [v7 disableDuration];
    [(MRDAVSystemEndpointController *)self _storeRecentlyDismissedRecommendationForOutputDeviceUID:v13 disableDuration:?];
    v22 = [(MRDAVSystemEndpointController *)self _isAllowedToUpdateRecommendationForOutputDevice:v14 recentlyDismissed:self->_recentlyDismissedRecommendations];
    if (v22)
    {
      goto LABEL_48;
    }
  }

  v23 = [v7 changeType];
  v24 = 0;
  v99 = v21;
  if (v21 == 1 && v23)
  {
    if (a4 == 5)
    {
      if (v13)
      {
        v24 = 0;
        goto LABEL_13;
      }

      v25 = [v7 outputDeviceUID];
      goto LABEL_12;
    }

    v24 = 0;
    if ((a4 & 0xFFFFFFFFFFFFFFFBLL) == 2 && v13)
    {
      v25 = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:v13];
LABEL_12:
      v24 = v25 != 0;
    }
  }

LABEL_13:
  v92 = self;
  v26 = v14 != 0;
  v27 = objc_alloc_init(MRDSystemEndpointEntry);
  v90 = v14;
  [(MRDSystemEndpointEntry *)v27 setOutputDeviceUID:v14];
  [(MRDSystemEndpointEntry *)v27 setType:v99];
  [(MRDSystemEndpointEntry *)v27 setEvent:a4];
  v28 = [v7 reason];
  [(MRDSystemEndpointEntry *)v27 setSelectionReason:v28];

  v29 = v8;
  [(MRDSystemEndpointEntry *)v27 setEventReason:v8];
  [(MRDSystemEndpointEntry *)v27 setChangeType:v24];
  v94 = v27;
  [(MRDSystemEndpointEntry *)v27 setSupportsIdleReset:v26 & (v20 ^ 1)];
  v30 = [v7 demoteWhenSyncingToCompanion];
  v31 = +[NSDate date];
  v96 = v7;
  v32 = [v7 outputDeviceUID];
  v33 = v32;
  v97 = v13;
  v98 = v29;
  if (v32 == v13)
  {

    v35 = v92;
  }

  else
  {
    v34 = [v32 isEqual:v13];

    v35 = v92;
    if (!v34)
    {
      v36 = a4;
      v37 = v24;
LABEL_20:
      v38 = v99;
      goto LABEL_21;
    }
  }

  v30 = (v30 | [v12 demoteWhenSyncingToCompanion]);
  v36 = a4;
  v37 = v24;
  if (a4 == 1)
  {
    goto LABEL_20;
  }

  v38 = v99;
  if (v12)
  {
    v39 = [v12 date];

    v31 = v39;
  }

LABEL_21:
  v40 = v94;
  [(MRDSystemEndpointEntry *)v94 setDemoteWhenSyncingToCompanion:v30];
  v89 = v31;
  [(MRDSystemEndpointEntry *)v94 setDate:v31];
  v41 = v35->_systemEndpointEntries;
  v42 = [NSNumber numberWithInteger:v38];
  [(NSMutableDictionary *)v41 setObject:v94 forKeyedSubscript:v42];

  v43 = [(MRDAVSystemEndpointController *)v35 systemEndpointInfo];
  v44 = [(MRDAVSystemEndpointController *)v35 recentlyDismissedRecommendationsInfo];
  [(MRDAVSystemEndpointController *)v35 _writeSystemEndpointInfo:v43 recentlyDismissedRecommendationsInfo:v44];

  v112[0] = _NSConcreteStackBlock;
  v112[1] = 3221225472;
  v112[2] = sub_100049A50;
  v112[3] = &unk_1004B6B10;
  v116 = v36;
  v117 = v37;
  v91 = v12;
  v45 = v12;
  v113 = v45;
  v46 = v96;
  v114 = v46;
  v47 = v97;
  v115 = v47;
  v93 = objc_retainBlock(v112);
  if ((v93[2])())
  {
    v86 = v45;
    v87 = v37;
    v48 = MRMediaRemoteActiveEndpointChangeTypeCopyDescription();
    active = MRMediaRemoteActiveEndpointTypeCopyDescription();
    v50 = [NSString alloc];
    v51 = [v46 outputDeviceUID];
    v52 = sub_100035750(v36);
    v53 = [v46 reason];
    v101 = v48;
    v88 = active;
    v54 = [v50 initWithFormat:@"%@SystemEndpoint changed from <%@> to <%@> with changeType = <%@>, eventType = <%@>, eventReason = <%@>, selectionReason = <%@>", active, v47, v51, v48, v52, v98, v53];

    v55 = _MRLogForCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v119 = v54;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[SystemEndpointController] %{public}@", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100049AF4;
    block[3] = &unk_1004B6B38;
    v56 = v46;
    v107 = v56;
    v108 = v47;
    v109 = v35;
    v37 = v87;
    v38 = v99;
    v110 = v87;
    v111 = v99;
    dispatch_async(&_dispatch_main_q, block);
    v40 = v94;
    if (([v56 isPairedDeviceSync] & 1) == 0)
    {
      v85 = v54;
      v57 = sub_100049B74(v54);
      v58 = v57;
      if (v57)
      {
        v59 = v57;
      }

      else
      {
        v65 = sub_100035750(v36);
        v66 = v65;
        v67 = @"unknown";
        if (v65)
        {
          v67 = v65;
        }

        v59 = v67;
      }

      v102 = v56;
      v103 = v88;
      v104 = v101;
      v105 = v86;
      v68 = v59;
      MRAnalyticsSendEvent();

      v54 = v85;
    }

    goto LABEL_34;
  }

  v60 = _MRLogForCategory();
  v101 = v60;
  if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
LABEL_34:
    v8 = v98;
    goto LABEL_35;
  }

  v61 = MRMediaRemoteActiveEndpointTypeCopyDescription();
  v62 = [v46 outputDeviceUID];
  v63 = sub_100035750(v36);
  v64 = [v46 reason];
  *buf = 138413314;
  v119 = v61;
  v120 = 2112;
  v121 = v62;
  v122 = 2112;
  v123 = v63;
  v124 = 2112;
  v125 = v98;
  v126 = 2112;
  v127 = v64;
  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "[SystemEndpointController] %@SystemEndpoint remains <%@>, eventType = <%@>, eventReason = <%@>, selectionReason = <%@>", buf, 0x34u);

  v8 = v98;
  v40 = v94;

  v38 = v99;
LABEL_35:

  v69 = [v46 outputDeviceUID];
  v70 = [(MRDAVSystemEndpointController *)v35 originClientForDeviceUID:v69];

  if (v38 == 1)
  {
    v77 = v93;
    if (v36 == 5)
    {
      notify_post(kMRMediaRemoteProactiveSystemEndpointDidStartPlayingNotifyName);
    }
  }

  else if (v38)
  {
    v77 = v93;
    if (v38 == 2)
    {
      v78 = [v70 origin];
      v79 = [v78 copy];

      v80 = _MRLogForCategory();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        activeRecommendedOrigin = v35->_activeRecommendedOrigin;
        *buf = 138412546;
        v119 = activeRecommendedOrigin;
        v120 = 2112;
        v121 = v79;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "[SystemEndpointController] RSE origin changed from %@ to %@", buf, 0x16u);
      }

      v82 = v35->_activeRecommendedOrigin;
      v35->_activeRecommendedOrigin = v79;

      v83 = [v46 clientBundleIdentifier];
      v8 = v98;
      [(MRDAVSystemEndpointController *)v35 _onSerialQueue_reevaluateActiveEndpoint:3 event:v36 changeType:v37 eventReason:v98 clientBundleIdentifier:v83];

      v77 = v93;
    }
  }

  else
  {
    v71 = [v70 origin];
    v72 = [v71 copy];

    v73 = _MRLogForCategory();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      activeOrigin = v35->_activeOrigin;
      *buf = 138412546;
      v119 = activeOrigin;
      v120 = 2112;
      v121 = v72;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "[SystemEndpointController] ASE origin changed from %@ to %@", buf, 0x16u);
    }

    v75 = v35->_activeOrigin;
    v35->_activeOrigin = v72;

    v76 = [v46 clientBundleIdentifier];
    v8 = v98;
    [(MRDAVSystemEndpointController *)v35 _onSerialQueue_reevaluateActiveEndpoint:1 event:v36 changeType:v37 eventReason:v98 clientBundleIdentifier:v76];

    v77 = v93;
    if ((v93[2])(v93))
    {
      [(MRDAVSystemEndpointController *)v35 _onSerialQueue_maybeSetupUserSelectedTimerForEvent:1];
      [(MRDAVSystemEndpointController *)v35 _onSerialQueue_maybeSetupPlaybackTimerForEvent:1];
    }
  }

  v22 = 0;
  v14 = v90;
  v12 = v91;
  v7 = v96;
  v13 = v97;
LABEL_48:

  return v22;
}

- (void)_onSerialQueue_reconnectToOutputDevice:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [NSString alloc];
  active = MRMediaRemoteActiveEndpointTypeCopyDescription();
  v13 = [v11 initWithFormat:@"%@ endpoint disconnected and attempting to reconnect", active];

  [MRDAutoConnectionControllerReason reasonWithType:3 string:v13];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100049FE4;
  v22[3] = &unk_1004B6BD8;
  v23 = v9;
  v25 = v24 = v8;
  v26 = self;
  v14 = v25;
  v15 = v8;
  v16 = v9;
  v20 = objc_retainBlock(v22);
  v21 = v10;
  v17 = v20[2];
  v18 = v10;
  v19 = v20;
  v17(0.0);
}

- (void)_onSerialQueue_maybeSetupUserSelectedTimerForEvent:(int64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_systemEndpointEntries objectForKeyedSubscript:&off_1004E04A0];
  v6 = v5;
  if (v5)
  {
    if ([v5 supportsIdleReset])
    {
      v7 = [v6 outputDeviceUID];
      v8 = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:v7];

      if ([v8 isPlaying])
      {
        userSelectedTimer = self->_userSelectedTimer;
        v10 = [NSString alloc];
        active = MRMediaRemoteActiveEndpointTypeCopyDescription();
        v12 = [v10 initWithFormat:@"%@Endpoint is playing", active];
      }

      else
      {
        v17 = [v6 date];
        [v17 timeIntervalSinceNow];
        v19 = v18;
        v20 = -v18;

        v21 = +[MRUserSettings currentSettings];
        [v21 endpointRecentlyUserSelectedInterval];
        v23 = v22 + 5.0;

        if (v23 > v20)
        {
          v24 = self->_userSelectedTimer;
          v25 = [NSString alloc];
          v26 = MRMediaRemoteActiveEndpointTypeCopyDescription();
          v27 = [v25 initWithFormat:@"%@Endpoint changed", v26];
          [(MRPersistentTimer *)v24 invalidateWithReason:v27];

          v28 = [MRPersistentTimer alloc];
          serialQueue = self->_serialQueue;
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_10004A61C;
          v34[3] = &unk_1004B6C50;
          *&v34[6] = v23;
          v34[4] = self;
          v34[5] = a3;
          v30 = [v28 initWithInterval:@"com.apple.mediaremote.systemendpointcontroller.userselectedtimer" name:serialQueue queue:v34 block:v19 + v23];
          v31 = self->_userSelectedTimer;
          self->_userSelectedTimer = v30;

LABEL_10:
          goto LABEL_11;
        }

        userSelectedTimer = self->_userSelectedTimer;
        v32 = [NSString alloc];
        active = MRMediaRemoteActiveEndpointTypeCopyDescription();
        v12 = [v32 initWithFormat:@"%@Endpoint timeout imminent", active];
      }

      v33 = v12;
      [(MRPersistentTimer *)userSelectedTimer invalidateWithReason:v12];

      goto LABEL_10;
    }

    v13 = self->_userSelectedTimer;
    v14 = [NSString alloc];
    v15 = MRMediaRemoteActiveEndpointTypeCopyDescription();
    v16 = [v14 initWithFormat:@"%@Endpoint doesn't reset when idle", v15];
    [(MRPersistentTimer *)v13 invalidateWithReason:v16];
  }

LABEL_11:
}

- (void)_onSerialQueue_maybeSetupPlaybackTimerForEvent:(int64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_systemEndpointEntries objectForKeyedSubscript:&off_1004E04A0];
  v6 = v5;
  if (v5)
  {
    if ([v5 supportsIdleReset])
    {
      v7 = [v6 outputDeviceUID];
      v8 = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:v7];

      if ([v8 isPlaying])
      {
        [(MRDAVSystemEndpointController *)self _onSerialQueue_maybeSetupUserSelectedTimerForEvent:a3];
        playbackTimer = self->_playbackTimer;
        v10 = [NSString alloc];
        active = MRMediaRemoteActiveEndpointTypeCopyDescription();
        v12 = [v10 initWithFormat:@"%@Endpoint is playing", active];
      }

      else
      {
        [v8 timeSincePlaying];
        v18 = v17;
        v19 = +[MRUserSettings currentSettings];
        [v19 mediaRecentlyPlayedInterval];
        v21 = v20 + 5.0;

        if (v18 < v21)
        {
          v22 = [MRPersistentTimer alloc];
          serialQueue = self->_serialQueue;
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_10004A950;
          v28[3] = &unk_1004B6C78;
          v30 = self;
          v31 = a3;
          v32 = v21;
          v29 = v8;
          v24 = [v22 initWithInterval:@"com.apple.mediaremote.systemendpointcontroller.playbacktimer" name:serialQueue queue:v28 block:v21 - v18];
          v25 = self->_playbackTimer;
          self->_playbackTimer = v24;

LABEL_10:
          goto LABEL_11;
        }

        playbackTimer = self->_playbackTimer;
        v26 = [NSString alloc];
        active = MRMediaRemoteActiveEndpointTypeCopyDescription();
        v12 = [v26 initWithFormat:@"%@Endpoint timeout imminent", active];
      }

      v27 = v12;
      [(MRPersistentTimer *)playbackTimer invalidateWithReason:v12];

      goto LABEL_10;
    }

    v13 = self->_playbackTimer;
    v14 = [NSString alloc];
    v15 = MRMediaRemoteActiveEndpointTypeCopyDescription();
    v16 = [v14 initWithFormat:@"%@Endpoint doesn't reset when idle", v15];
    [(MRPersistentTimer *)v13 invalidateWithReason:v16];
  }

LABEL_11:
}

- (BOOL)_hasPersonalDeviceForContext:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 outputDevices];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 deviceType] != 1 && objc_msgSend(v7, "deviceType") != 4 && objc_msgSend(v7, "deviceSubtype") != 8)
        {
          LOBYTE(v4) = 1;
          goto LABEL_13;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v4;
}

- (void)_writeSystemEndpointInfo:(id)a3 recentlyDismissedRecommendationsInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1005291C8 != -1)
  {
    sub_1003A497C();
  }

  v8 = qword_1005291C0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004ACC0;
  block[3] = &unk_1004B69D0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_initializeSystemEndpointInfo
{
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"SystemEndpoint"];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10004AF9C;
  v23[3] = &unk_1004B6CE0;
  v23[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v23];
  v4 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"SystemEndpointRecentlyDismissedRecommendations"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v4);
        }

        recentlyDismissedRecommendations = self->_recentlyDismissedRecommendations;
        v10 = [[MRDSystemEndpointControllerRecentlyDismissedRecommendation alloc] initWithDictionaryRepresentation:*(*(&v19 + 1) + 8 * i)];
        [(NSMutableArray *)recentlyDismissedRecommendations addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v11 = [(NSMutableDictionary *)self->_systemEndpointEntries objectForKeyedSubscript:&off_1004E04A0];
  v12 = [v11 outputDeviceUID];
  if (v12)
  {
    v13 = +[MRUserSettings currentSettings];
    [v13 activeSystemEndpointStartupDelayToAllowAllPreviousClientsTimeToInitializeInterval];
    v15 = (v14 * 1000000000.0);
  }

  else
  {
    v15 = 0;
  }

  v16 = dispatch_time(0, v15);
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004B1B8;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_after(v16, serialQueue, block);
}

- (void)_deviceInfoDidChange:(id)a3
{
  v4 = a3;
  v5 = [(MRDAVSystemEndpointController *)self activeOutputDeviceUID:0];
  v6 = [v4 userInfo];
  v7 = MRGetDeviceInfoFromUserInfo();

  v8 = [v4 userInfo];
  v9 = MRGetOriginFromUserInfo();

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_100034F90;
  v37 = sub_10003598C;
  v38 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004B698;
  block[3] = &unk_1004B6D30;
  block[4] = self;
  block[5] = &v33;
  dispatch_sync(serialQueue, block);
  if ([v34[5] isLocal] & 1) == 0 && (objc_msgSend(v9, "isEqual:", v34[5]))
  {
    v11 = [v7 deviceClass];
    if (v11 > 0xD || ((1 << v11) & 0x224E) == 0)
    {
      v12 = [v7 deviceUID];
      if (([v12 isEqual:v5] & 1) == 0)
      {
        v13 = [v7 clusterID];
        v14 = [v13 isEqual:v5];

        if (v14)
        {
          goto LABEL_5;
        }

        v15 = [v7 groupedDevices];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_10004B6AC;
        v30[3] = &unk_1004B6D58;
        v16 = v5;
        v31 = v16;
        v17 = [v15 mr_any:v30];

        if ((v17 & 1) == 0)
        {
          v18 = [v7 deviceUID];
          v19 = [v18 isEqual:v16];

          if ((v19 & 1) == 0)
          {
            v20 = [v7 deviceUID];
            if (v20)
            {
              goto LABEL_12;
            }
          }

          v21 = [v7 groupedDevices];
          v25 = _NSConcreteStackBlock;
          v26 = 3221225472;
          v27 = sub_10004B6F0;
          v28 = &unk_1004B6D58;
          v29 = v16;
          v22 = [v21 mr_first:&v25];
          v20 = [v22 deviceUID];

          if (v20)
          {
LABEL_12:
            v23 = _MRLogForCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v40 = v20;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[SystemEndpointController] Requesting to move ASE to deviceUID: %{public}@ because the old ASE changed groups", buf, 0xCu);
            }

            v24 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:v20 reason:@"ASE moved to another endpoint"];
            [(MRDAVSystemEndpointController *)self updateSystemEndpointForRequest:v24 event:9 completion:0];
          }

          else
          {
            v20 = _MRLogForCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[SystemEndpointController] ASE changed groups, but no other devices found in old group", buf, 2u);
            }
          }
        }

        v12 = v31;
      }
    }
  }

LABEL_5:
  _Block_object_dispose(&v33, 8);
}

- (MRDAVSystemEndpointControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end