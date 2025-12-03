@interface MRDAVSystemEndpointController
- (BOOL)_hasPersonalDeviceForContext:(id)context;
- (BOOL)_requiresConnectionToUpdate:(id)update;
- (MRDAVSystemEndpointController)initWithRoutingController:(id)controller;
- (MRDAVSystemEndpointControllerDelegate)delegate;
- (NSArray)recentlyDismissedRecommendationsInfo;
- (NSDictionary)systemEndpointInfo;
- (id)_isAllowedToUpdateRecommendationForOutputDevice:(id)device recentlyDismissed:(id)dismissed;
- (id)_onSerialQueue_calculateActiveEndpoint:(int64_t)endpoint event:(int64_t)event reason:(id *)reason suppressPairedDeviceSync:(BOOL *)sync;
- (id)_onSerialQueue_calculateProactiveEndpointForEvent:(int64_t)event reason:(id *)reason;
- (id)_onSerialQueue_calculateProactiveRecommendedEndpoint:(id *)endpoint;
- (id)_onSerialQueue_calculateProactiveRecommendedEndpointForWatch:(id *)watch;
- (id)_onSerialQueue_calculateRecommendedEndpointForEvent:(int64_t)event reason:(id *)reason;
- (id)_onSerialQueue_calculateUserSelectedEndpointForEvent:(int64_t)event reason:(id *)reason suppressPairedDeviceSync:(BOOL *)sync;
- (id)_onSerialQueue_updateSystemEndpoint:(id)endpoint event:(int64_t)event eventReason:(id)reason;
- (id)_validate:(id)_validate;
- (id)activeOutputDeviceUID:(int64_t)d;
- (id)originClientForDeviceUID:(id)d;
- (void)_deviceInfoDidChange:(id)change;
- (void)_handleIsPlayingDidChangeNotification:(id)notification;
- (void)_handleOriginDidRegisterNotification:(id)notification;
- (void)_handleOriginDidUnregisterNotification:(id)notification;
- (void)_handleOutputContextDidAddOutputDeviceNotification:(id)notification;
- (void)_initializeSystemEndpointInfo;
- (void)_onSerialQueue_clearActiveEndpointType:(int64_t)type outputDeviceUID:(id)d event:(int64_t)event reason:(id)reason clientBundleIdentifier:(id)identifier;
- (void)_onSerialQueue_maybeSetupPlaybackTimerForEvent:(int64_t)event;
- (void)_onSerialQueue_maybeSetupUserSelectedTimerForEvent:(int64_t)event;
- (void)_onSerialQueue_reconnectToOutputDevice:(id)device queue:(id)queue completion:(id)completion;
- (void)_onSerialQueue_reevaluateActiveEndpoint:(int64_t)endpoint event:(int64_t)event changeType:(int64_t)type eventReason:(id)reason clientBundleIdentifier:(id)identifier;
- (void)_storeRecentlyDismissedRecommendationForOutputDeviceUID:(id)d disableDuration:(double)duration;
- (void)_writeSystemEndpointInfo:(id)info recentlyDismissedRecommendationsInfo:(id)recommendationsInfo;
- (void)clearActiveEndpointType:(int64_t)type outputDeviceUID:(id)d event:(int64_t)event reason:(id)reason clientBundleIdentifier:(id)identifier;
- (void)dealloc;
- (void)updateSystemEndpointForRequest:(id)request completion:(id)completion;
- (void)updateSystemEndpointForRequest:(id)request event:(int64_t)event completion:(id)completion;
- (void)updateSystemEndpointForRequest:(id)request event:(int64_t)event eventReason:(id)reason completion:(id)completion;
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

- (MRDAVSystemEndpointController)initWithRoutingController:(id)controller
{
  controllerCopy = controller;
  v31.receiver = self;
  v31.super_class = MRDAVSystemEndpointController;
  v6 = [(MRDAVSystemEndpointController *)&v31 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routingController, controller);
    v8 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v8 nowPlayingServer];
    nowPlayingServer = v7->_nowPlayingServer;
    v7->_nowPlayingServer = nowPlayingServer;

    v11 = objc_opt_class();
    Name = class_getName(v11);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(Name, v13);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v14;

    v16 = +[MRDSettings currentSettings];
    userDefaults = [v16 userDefaults];
    userDefaults = v7->_userDefaults;
    v7->_userDefaults = userDefaults;

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

- (id)activeOutputDeviceUID:(int64_t)d
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

- (BOOL)_requiresConnectionToUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy type] == 2)
  {
    outputDeviceUID = [updateCopy outputDeviceUID];
    v5 = outputDeviceUID != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_validate:(id)_validate
{
  _validateCopy = _validate;
  if ([_validateCopy type] != 2)
  {
    goto LABEL_4;
  }

  outputDeviceUID = [_validateCopy outputDeviceUID];
  if (!outputDeviceUID)
  {
    goto LABEL_5;
  }

  v5 = +[MRUserSettings currentSettings];
  enableRouteRecommendations = [v5 enableRouteRecommendations];

  if ((enableRouteRecommendations & 1) == 0)
  {
    v8 = [NSError alloc];
    active = MRMediaRemoteActiveEndpointTypeCopyDescription();
    outputDeviceUID = [v8 initWithMRError:3 format:{@"%@ is disabled via Settings", active}];
  }

  else
  {
LABEL_4:
    outputDeviceUID = 0;
  }

LABEL_5:

  return outputDeviceUID;
}

- (void)updateSystemEndpointForRequest:(id)request event:(int64_t)event eventReason:(id)reason completion:(id)completion
{
  requestCopy = request;
  reasonCopy = reason;
  completionCopy = completion;
  v43 = requestCopy;
  v11 = [requestCopy copy];
  v45 = +[MRDeviceInfoRequest localDeviceInfo];
  outputDeviceUID = [v11 outputDeviceUID];
  wHAIdentifier = [v45 WHAIdentifier];
  v14 = [outputDeviceUID isEqualToString:wHAIdentifier];

  if (v14)
  {
    [v11 setOutputDeviceUID:0];
  }

  v15 = +[NSDate now];
  v16 = [NSString alloc];
  [v11 type];
  active = MRMediaRemoteActiveEndpointTypeCopyDescription();
  active = [v16 initWithFormat:@"SystemEndpointController.update%@", active];

  v44 = active;
  v19 = [[MRRequestDetails alloc] initWithName:active requestID:0 reason:reasonCopy];
  v20 = [NSMutableString alloc];
  name = [v19 name];
  requestID = [v19 requestID];
  v23 = [v20 initWithFormat:@"%@<%@>", name, requestID];

  outputDeviceUID2 = [v11 outputDeviceUID];

  if (outputDeviceUID2)
  {
    outputDeviceUID3 = [v11 outputDeviceUID];
    [v23 appendFormat:@" for %@", outputDeviceUID3];
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
  v41 = completionCopy;
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
      outputDeviceUID4 = [v33 outputDeviceUID];
      v37 = v55;
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100046DFC;
      v55[3] = &unk_1004B6A20;
      v55[5] = &buf;
      v55[4] = v35;
      [MRAVEndpoint connectToEndpointContainingOutputDeviceUID:outputDeviceUID4 options:0 details:v28 completion:v55];
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
        eventCopy = event;
        v50 = reasonCopy;
        v51 = v29;
        v39 = v34;
        dispatch_group_notify(v35, v38, v47);

        _Block_object_dispose(&buf, 8);
        goto LABEL_15;
      }

      dispatch_group_enter(v35);
      outputDeviceUID4 = [v33 outputDeviceUID];
      v37 = v54;
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100046F70;
      v54[3] = &unk_1004B6A20;
      v54[5] = &buf;
      v54[4] = v35;
      [MRAVEndpoint connectToEndpointContainingOutputDeviceUID:outputDeviceUID4 options:0 details:v28 completion:v54];
    }

    goto LABEL_14;
  }

  (v29[2])(v29, v30);
LABEL_15:
}

- (void)updateSystemEndpointForRequest:(id)request event:(int64_t)event completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  reason = [requestCopy reason];
  [(MRDAVSystemEndpointController *)self updateSystemEndpointForRequest:requestCopy event:event eventReason:reason completion:completionCopy];
}

- (void)updateSystemEndpointForRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  reason = [requestCopy reason];
  [(MRDAVSystemEndpointController *)self updateSystemEndpointForRequest:requestCopy event:1 eventReason:reason completion:completionCopy];
}

- (void)clearActiveEndpointType:(int64_t)type outputDeviceUID:(id)d event:(int64_t)event reason:(id)reason clientBundleIdentifier:(id)identifier
{
  dCopy = d;
  reasonCopy = reason;
  identifierCopy = identifier;
  serialQueue = self->_serialQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10004732C;
  v19[3] = &unk_1004B6A70;
  v19[4] = self;
  v20 = dCopy;
  typeCopy = type;
  eventCopy = event;
  v21 = reasonCopy;
  v22 = identifierCopy;
  v16 = identifierCopy;
  v17 = reasonCopy;
  v18 = dCopy;
  dispatch_sync(serialQueue, v19);
}

- (void)_onSerialQueue_clearActiveEndpointType:(int64_t)type outputDeviceUID:(id)d event:(int64_t)event reason:(id)reason clientBundleIdentifier:(id)identifier
{
  dCopy = d;
  reasonCopy = reason;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_serialQueue);
  v14 = [(MRDAVSystemEndpointController *)self activeOutputDeviceUID:type];
  if (v14 == dCopy || [dCopy isEqualToString:v14])
  {
    v15 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:0 reason:reasonCopy];
    [v15 setClientBundleIdentifier:identifierCopy];
    [v15 setType:type];
    v16 = [(MRDAVSystemEndpointController *)self _onSerialQueue_updateSystemEndpoint:v15 event:event eventReason:reasonCopy];
  }
}

- (id)originClientForDeviceUID:(id)d
{
  dCopy = d;
  if (dCopy)
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
      localOriginClient = 0;
      v8 = *v26;
      v23 = dCopy;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          if ([v10 containsOutputDeviceWithUID:{dCopy, v23}])
          {
            externalDevice = [v10 externalDevice];
            customOrigin = [externalDevice customOrigin];

            v13 = [(MRDNowPlayingServer *)self->_nowPlayingServer originClientForOrigin:customOrigin];
            if (!localOriginClient)
            {
              goto LABEL_11;
            }

            registrationDate = [localOriginClient registrationDate];
            [v13 registrationDate];
            v16 = v15 = self;
            v17 = v6;
            v18 = v8;
            v19 = [registrationDate compare:v16];

            self = v15;
            v20 = v19 == 1;
            v8 = v18;
            v6 = v17;
            if (v20)
            {
LABEL_11:
              v21 = v13;

              localOriginClient = v21;
            }

            dCopy = v23;
          }
        }

        v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v6);
    }

    else
    {
      localOriginClient = 0;
    }
  }

  else
  {
    localOriginClient = [(MRDNowPlayingServer *)self->_nowPlayingServer localOriginClient];
  }

  return localOriginClient;
}

- (void)_handleOriginDidRegisterNotification:(id)notification
{
  userInfo = [notification userInfo];
  v15 = MRGetDeviceInfoFromUserInfo();

  v5 = [(MRDAVSystemEndpointController *)self activeOutputDeviceUID:0];
  v6 = [NSString alloc];
  active = MRMediaRemoteActiveEndpointTypeCopyDescription();
  deviceUID = [v15 deviceUID];
  name = [v15 name];
  v10 = [v6 initWithFormat:@"%@ origin registered <%@> (<%@>) ", active, deviceUID, name];

  deviceUID2 = [v15 deviceUID];
  LODWORD(deviceUID) = [v5 isEqualToString:deviceUID2];

  if (deviceUID)
  {
    v12 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:v5 reason:v10];
    [v12 setChangeType:1];
    v13 = +[NSBundle mainBundle];
    bundleIdentifier = [v13 bundleIdentifier];
    [v12 setClientBundleIdentifier:bundleIdentifier];

    [(MRDAVSystemEndpointController *)self updateSystemEndpointForRequest:v12 event:3 eventReason:v10 completion:0];
  }
}

- (void)_handleOriginDidUnregisterNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = MRGetOriginFromUserInfo();

  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004789C;
  v8[3] = &unk_1004B68F0;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  dispatch_sync(serialQueue, v8);
}

- (void)_handleOutputContextDidAddOutputDeviceNotification:(id)notification
{
  object = [notification object];
  v4 = [(MRDAVSystemEndpointController *)self _hasPersonalDeviceForContext:?];
  v5 = v4;
  if (v4 && !self->_cachedHasPersonalDevices)
  {
    v6 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:0 reason:@"personal device was attached"];
    v7 = +[NSBundle mainBundle];
    bundleIdentifier = [v7 bundleIdentifier];
    [v6 setClientBundleIdentifier:bundleIdentifier];

    [(MRDAVSystemEndpointController *)self updateSystemEndpointForRequest:v6];
  }

  self->_cachedHasPersonalDevices = v5;
}

- (void)_handleIsPlayingDidChangeNotification:(id)notification
{
  playerPath = [notification playerPath];
  client = [playerPath client];
  processIdentifier = [client processIdentifier];

  v7 = 5;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047D5C;
  block[3] = &unk_1004B6AC0;
  if (!processIdentifier)
  {
    v7 = 7;
  }

  v11 = playerPath;
  selfCopy = self;
  v13 = v7;
  v9 = playerPath;
  dispatch_sync(serialQueue, block);
}

- (void)_onSerialQueue_reevaluateActiveEndpoint:(int64_t)endpoint event:(int64_t)event changeType:(int64_t)type eventReason:(id)reason clientBundleIdentifier:(id)identifier
{
  reasonCopy = reason;
  identifierCopy = identifier;
  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A48D0(endpoint, reasonCopy, v14);
  }

  v20 = 0;
  v19 = 0;
  v15 = [(MRDAVSystemEndpointController *)self _onSerialQueue_calculateActiveEndpoint:endpoint event:event reason:&v19 suppressPairedDeviceSync:&v20];
  v16 = v19;
  v17 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:v15 reason:v16];
  [v17 setChangeType:type];
  [v17 setClientBundleIdentifier:identifierCopy];

  [v17 setType:endpoint];
  [v17 setSuppressPairedDeviceSync:v20];
  v18 = [(MRDAVSystemEndpointController *)self _onSerialQueue_updateSystemEndpoint:v17 event:event eventReason:reasonCopy];
}

- (id)_onSerialQueue_calculateActiveEndpoint:(int64_t)endpoint event:(int64_t)event reason:(id *)reason suppressPairedDeviceSync:(BOOL *)sync
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v11 = 0;
  if (endpoint > 1)
  {
    if (endpoint == 2)
    {
      v11 = [(MRDAVSystemEndpointController *)self _onSerialQueue_calculateRecommendedEndpointForEvent:event reason:reason];
    }

    else if (endpoint == 3)
    {
      v11 = [(MRDAVSystemEndpointController *)self _onSerialQueue_calculateProactiveRecommendedEndpoint:reason];
    }
  }

  else if (endpoint)
  {
    if (endpoint == 1)
    {
      v11 = [(MRDAVSystemEndpointController *)self _onSerialQueue_calculateProactiveEndpointForEvent:event reason:reason];
    }
  }

  else
  {
    v11 = [(MRDAVSystemEndpointController *)self _onSerialQueue_calculateUserSelectedEndpointForEvent:event reason:reason suppressPairedDeviceSync:sync];
  }

  return v11;
}

- (id)_onSerialQueue_calculateUserSelectedEndpointForEvent:(int64_t)event reason:(id *)reason suppressPairedDeviceSync:(BOOL *)sync
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v8 = [(NSMutableDictionary *)self->_systemEndpointEntries objectForKeyedSubscript:&off_1004E04A0];
  v9 = v8;
  if (!v8)
  {
    v18 = [NSString alloc];
    active = MRMediaRemoteActiveEndpointTypeCopyDescription();
    active = [v18 initWithFormat:@"No %@SystemEndpoint", active];
    goto LABEL_7;
  }

  outputDeviceUID = [v8 outputDeviceUID];
  active = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:outputDeviceUID];

  [active timeSincePlaying];
  v13 = v12;
  date = [v9 date];
  [date timeIntervalSinceNow];
  v16 = v15;

  if (([v9 supportsIdleReset] & 1) == 0)
  {
    *reason = @"doesn't participate in idle reset";
LABEL_9:
    outputDeviceUID2 = [v9 outputDeviceUID];
    goto LABEL_10;
  }

  if (event == 6 && active)
  {
    active = [[NSString alloc] initWithFormat:@"was not playing sort of recently <%lf> seconds ago", *&v13];
LABEL_7:
    outputDeviceUID2 = 0;
    *reason = active;
    goto LABEL_10;
  }

  if (active)
  {
    v21 = +[MRUserSettings currentSettings];
    [v21 mediaRecentlyPlayedInterval];
    v23 = v22;

    if (v13 < v23)
    {
      *reason = [[NSString alloc] initWithFormat:@"was playing recently <%lf> seconds ago", *&v13];
      goto LABEL_9;
    }
  }

  if (event == 2)
  {
    v24 = [NSString alloc];
    outputDeviceUID3 = MRMediaRemoteActiveEndpointTypeCopyDescription();
    v26 = [v24 initWithFormat:@"was not <%@> sort of recently <%lf> seconds ago", outputDeviceUID3, *&v13];
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
      *reason = [v31 initWithFormat:@"was <%@> recently <%lf> seconds ago", v32, *&v27];

      goto LABEL_9;
    }

    if (active)
    {
      [active timeSincePlaying];
      v34 = v33;
      outputDeviceUID3 = MRMediaRemoteActiveEndpointTypeCopyDescription();
      date2 = [v9 date];
      [date2 timeIntervalSinceNow];
      *reason = [v31 initWithFormat:@"was not playing recently <%lf> ago and was not <%@> recently <%lf> seconds ago", v34, outputDeviceUID3, -v36];

      goto LABEL_23;
    }

    outputDeviceUID3 = [v9 outputDeviceUID];
    v26 = [v31 initWithFormat:@"Could not find origin with deviceUID = <%@>", outputDeviceUID3, v37];
  }

  *reason = v26;
LABEL_23:

  outputDeviceUID2 = 0;
LABEL_10:

  return outputDeviceUID2;
}

- (id)_onSerialQueue_calculateProactiveEndpointForEvent:(int64_t)event reason:(id *)reason
{
  dispatch_assert_queue_V2(self->_serialQueue);
  localOriginClient = [(MRDNowPlayingServer *)self->_nowPlayingServer localOriginClient];
  activeNowPlayingClient = [localOriginClient activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];

  if ([activePlayerClient isPlaying])
  {
    v9 = [NSString alloc];
    playerPath = [activePlayerClient playerPath];
    v11 = [v9 initWithFormat:@"local activePlayer %@ is playing", playerPath];
    v12 = 0;
    *reason = v11;
  }

  else
  {
    playerPath = [(NSMutableDictionary *)self->_systemEndpointEntries objectForKeyedSubscript:&off_1004E04A0];
    outputDeviceUID = [playerPath outputDeviceUID];
    v14 = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:outputDeviceUID];
    if (v14)
    {
      *reason = MRMediaRemoteActiveEndpointTypeCopyDescription();
      v15 = outputDeviceUID;
    }

    else
    {
      *reason = @"Fallback to previous";
      v15 = [(MRDAVSystemEndpointController *)self activeOutputDeviceUID:1];
    }

    v12 = v15;
  }

  return v12;
}

- (id)_onSerialQueue_calculateRecommendedEndpointForEvent:(int64_t)event reason:(id *)reason
{
  dispatch_assert_queue_V2(self->_serialQueue);
  systemEndpointEntries = self->_systemEndpointEntries;
  v7 = [NSNumber numberWithInteger:2];
  v8 = [(NSMutableDictionary *)systemEndpointEntries objectForKeyedSubscript:v7];

  if (v8)
  {
    outputDeviceUID = [v8 outputDeviceUID];
    active = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:outputDeviceUID];

    activeNowPlayingClient = [active activeNowPlayingClient];
    activePlayerClient = [activeNowPlayingClient activePlayerClient];

    if ([activePlayerClient isPlaying])
    {
      v13 = [NSString alloc];
      playerPath = [activePlayerClient playerPath];
      *reason = [v13 initWithFormat:@"%@ is playing", playerPath];

      outputDeviceUID2 = [v8 outputDeviceUID];
    }

    else
    {
      if (activePlayerClient)
      {
        v17 = [NSString alloc];
        playerPath2 = [activePlayerClient playerPath];
        v19 = [v17 initWithFormat:@"%@ is not playing", playerPath2];
      }

      else
      {
        v20 = [NSString alloc];
        if (active)
        {
          playerPath2 = [active playerPath];
          v19 = [v20 initWithFormat:@"%@ does not have a now playing app", playerPath2];
        }

        else
        {
          playerPath2 = [v8 outputDeviceUID];
          v19 = [v20 initWithFormat:@"Could not find origin with deviceUID = <%@>", playerPath2];
        }
      }

      *reason = v19;

      outputDeviceUID2 = 0;
    }
  }

  else
  {
    v16 = [NSString alloc];
    active = MRMediaRemoteActiveEndpointTypeCopyDescription();
    outputDeviceUID2 = 0;
    *reason = [v16 initWithFormat:@"No %@SystemEndpoint", active];
  }

  return outputDeviceUID2;
}

- (id)_onSerialQueue_calculateProactiveRecommendedEndpoint:(id *)endpoint
{
  dispatch_assert_queue_V2(self->_serialQueue);
  localOriginClient = [(MRDNowPlayingServer *)self->_nowPlayingServer localOriginClient];
  activeNowPlayingClient = [localOriginClient activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];

  if ([activePlayerClient isPlaying])
  {
    v8 = [NSString alloc];
    playerPath = [activePlayerClient playerPath];
    v10 = [v8 initWithFormat:@"local activePlayer %@ is playing", playerPath];
    outputDeviceUID = 0;
    *endpoint = v10;
  }

  else
  {
    *endpoint = @"Fallback to recommended";
    playerPath = [(NSMutableDictionary *)self->_systemEndpointEntries objectForKeyedSubscript:&off_1004E04B8];
    outputDeviceUID = [playerPath outputDeviceUID];
  }

  return outputDeviceUID;
}

- (id)_onSerialQueue_calculateProactiveRecommendedEndpointForWatch:(id *)watch
{
  v5 = [MRDWatchRSECandidate alloc];
  localOriginClient = [(MRDNowPlayingServer *)self->_nowPlayingServer localOriginClient];
  v7 = [(MRDWatchRSECandidate *)v5 initWithOriginClient:localOriginClient namePrefix:@"LOCAL" isLocal:1];

  companionOriginClient = [(MRDNowPlayingServer *)self->_nowPlayingServer companionOriginClient];

  companionOriginClient2 = _MRLogForCategory();
  v10 = os_log_type_enabled(companionOriginClient2, OS_LOG_TYPE_DEFAULT);
  if (companionOriginClient)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, companionOriginClient2, OS_LOG_TYPE_DEFAULT, "[SystemEndpointController] Adding companionOriginClient", buf, 2u);
    }

    v11 = [MRDWatchRSECandidate alloc];
    companionOriginClient2 = [(MRDNowPlayingServer *)self->_nowPlayingServer companionOriginClient];
    v12 = [(MRDWatchRSECandidate *)v11 initWithOriginClient:companionOriginClient2 namePrefix:@"CMPN" isLocal:0];
  }

  else
  {
    if (v10)
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, companionOriginClient2, OS_LOG_TYPE_DEFAULT, "[SystemEndpointController] companionOriginClient not present", v23, 2u);
    }

    v12 = 0;
  }

  v13 = [(NSMutableDictionary *)self->_systemEndpointEntries objectForKeyedSubscript:&off_1004E04A0];
  outputDeviceUID = [v13 outputDeviceUID];

  if (outputDeviceUID)
  {
    v15 = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:outputDeviceUID];
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
  outputDeviceUID2 = [v17 outputDeviceUID];

  if (outputDeviceUID2)
  {
    v19 = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:outputDeviceUID2];
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

  v21 = [MRDWatchRSECandidatePicker proactiveRecommendedWithLocal:v7 companion:v12 userSelected:v16 rse:v20 selectionReason:watch];

  return v21;
}

- (id)_isAllowedToUpdateRecommendationForOutputDevice:(id)device recentlyDismissed:(id)dismissed
{
  deviceCopy = device;
  v6 = deviceCopy;
  if (!deviceCopy)
  {
    v26 = 0;
    goto LABEL_13;
  }

  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_100048D90;
  v35 = &unk_1004B6AE8;
  v7 = deviceCopy;
  v36 = v7;
  v8 = [dismissed msv_firstWhere:&v32];
  v9 = v8;
  if (v8)
  {
    date = [v8 date];
    [v9 disableDuration];
    v11 = [date dateByAddingTimeInterval:?];

    v12 = +[NSDate now];
    v13 = [v12 compare:v11];

    if (v13 == -1)
    {
      v27 = [NSError alloc];
      active = MRMediaRemoteActiveEndpointTypeCopyDescription();
      date2 = [v9 date];
      date3 = [v9 date];
      [date3 timeIntervalSinceNow];
      v29 = v28;
      [v11 timeIntervalSinceNow];
      v26 = [v27 initWithMRError:3 format:{@"Cannot update the %@ yet. Was last dismissed at %@ (%lf seconds ago). Cannot set until %@ (%lf more seconds)", active, date2, v29, v11, v30, v32, v33, v34, v35}];
    }

    else
    {
      v14 = +[MRDMediaRemoteServer server];
      nowPlayingServer = [v14 nowPlayingServer];
      active = [nowPlayingServer originClientForDeviceUID:v7];

      devicePlaybackSessionID = [active devicePlaybackSessionID];
      devicePlaybackSessionID2 = [v9 devicePlaybackSessionID];
      v19 = [devicePlaybackSessionID isEqualToString:devicePlaybackSessionID2];

      if (!v19)
      {
        v26 = 0;
        goto LABEL_11;
      }

      v20 = [NSError alloc];
      date2 = MRMediaRemoteActiveEndpointTypeCopyDescription();
      date3 = [v9 devicePlaybackSessionID];
      date4 = [v9 date];
      date5 = [v9 date];
      [date5 timeIntervalSinceNow];
      v26 = [v20 initWithMRError:3 format:{@"Cannot update the %@ to outputDeviceUID=%@ while devicePlaybackSessionID=%@, it was already dismissed at %@ (%lf seconds ago)", date2, v7, date3, date4, v25, v32, v33, v34, v35}];
    }

LABEL_11:
    goto LABEL_12;
  }

  v26 = 0;
LABEL_12:

LABEL_13:

  return v26;
}

- (void)_storeRecentlyDismissedRecommendationForOutputDeviceUID:(id)d disableDuration:(double)duration
{
  dCopy = d;
  v7 = dCopy;
  if (dCopy && duration > 0.0)
  {
    recentlyDismissedRecommendations = self->_recentlyDismissedRecommendations;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100048F74;
    v18[3] = &unk_1004B6AE8;
    v9 = dCopy;
    v19 = v9;
    v10 = [(NSMutableArray *)recentlyDismissedRecommendations msv_firstWhere:v18];
    if (v10)
    {
      [(NSMutableArray *)self->_recentlyDismissedRecommendations removeObject:v10];
    }

    v11 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v11 nowPlayingServer];
    v13 = [nowPlayingServer originClientForDeviceUID:v9];

    v14 = [MRDSystemEndpointControllerRecentlyDismissedRecommendation alloc];
    v15 = +[NSDate now];
    devicePlaybackSessionID = [v13 devicePlaybackSessionID];
    v17 = [(MRDSystemEndpointControllerRecentlyDismissedRecommendation *)v14 initWithOutputDevice:v9 date:v15 disableDuration:devicePlaybackSessionID devicePlaybackSessionID:duration];

    [(NSMutableArray *)self->_recentlyDismissedRecommendations addObject:v17];
  }
}

- (id)_onSerialQueue_updateSystemEndpoint:(id)endpoint event:(int64_t)event eventReason:(id)reason
{
  endpointCopy = endpoint;
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_serialQueue);
  type = [endpointCopy type];
  systemEndpointEntries = self->_systemEndpointEntries;
  v11 = [NSNumber numberWithInteger:type];
  v12 = [(NSMutableDictionary *)systemEndpointEntries objectForKeyedSubscript:v11];

  outputDeviceUID = [v12 outputDeviceUID];
  outputDeviceUID2 = [endpointCopy outputDeviceUID];
  v15 = +[MRDMediaRemoteServer server];
  groupSessionServer = [v15 groupSessionServer];
  sessionManager = [groupSessionServer sessionManager];

  v95 = sessionManager;
  session = [sessionManager session];
  identifier = [session identifier];
  v20 = [identifier isEqualToString:outputDeviceUID2];

  v21 = type;
  if (type == 2)
  {
    [endpointCopy disableDuration];
    [(MRDAVSystemEndpointController *)self _storeRecentlyDismissedRecommendationForOutputDeviceUID:outputDeviceUID disableDuration:?];
    v22 = [(MRDAVSystemEndpointController *)self _isAllowedToUpdateRecommendationForOutputDevice:outputDeviceUID2 recentlyDismissed:self->_recentlyDismissedRecommendations];
    if (v22)
    {
      goto LABEL_48;
    }
  }

  changeType = [endpointCopy changeType];
  v24 = 0;
  v99 = v21;
  if (v21 == 1 && changeType)
  {
    if (event == 5)
    {
      if (outputDeviceUID)
      {
        v24 = 0;
        goto LABEL_13;
      }

      outputDeviceUID3 = [endpointCopy outputDeviceUID];
      goto LABEL_12;
    }

    v24 = 0;
    if ((event & 0xFFFFFFFFFFFFFFFBLL) == 2 && outputDeviceUID)
    {
      outputDeviceUID3 = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:outputDeviceUID];
LABEL_12:
      v24 = outputDeviceUID3 != 0;
    }
  }

LABEL_13:
  selfCopy = self;
  v26 = outputDeviceUID2 != 0;
  v27 = objc_alloc_init(MRDSystemEndpointEntry);
  v90 = outputDeviceUID2;
  [(MRDSystemEndpointEntry *)v27 setOutputDeviceUID:outputDeviceUID2];
  [(MRDSystemEndpointEntry *)v27 setType:v99];
  [(MRDSystemEndpointEntry *)v27 setEvent:event];
  reason = [endpointCopy reason];
  [(MRDSystemEndpointEntry *)v27 setSelectionReason:reason];

  v29 = reasonCopy;
  [(MRDSystemEndpointEntry *)v27 setEventReason:reasonCopy];
  [(MRDSystemEndpointEntry *)v27 setChangeType:v24];
  v94 = v27;
  [(MRDSystemEndpointEntry *)v27 setSupportsIdleReset:v26 & (v20 ^ 1)];
  demoteWhenSyncingToCompanion = [endpointCopy demoteWhenSyncingToCompanion];
  v31 = +[NSDate date];
  v96 = endpointCopy;
  outputDeviceUID4 = [endpointCopy outputDeviceUID];
  v33 = outputDeviceUID4;
  v97 = outputDeviceUID;
  v98 = v29;
  if (outputDeviceUID4 == outputDeviceUID)
  {

    v35 = selfCopy;
  }

  else
  {
    v34 = [outputDeviceUID4 isEqual:outputDeviceUID];

    v35 = selfCopy;
    if (!v34)
    {
      eventCopy2 = event;
      v37 = v24;
LABEL_20:
      v38 = v99;
      goto LABEL_21;
    }
  }

  demoteWhenSyncingToCompanion = (demoteWhenSyncingToCompanion | [v12 demoteWhenSyncingToCompanion]);
  eventCopy2 = event;
  v37 = v24;
  if (event == 1)
  {
    goto LABEL_20;
  }

  v38 = v99;
  if (v12)
  {
    date = [v12 date];

    v31 = date;
  }

LABEL_21:
  v40 = v94;
  [(MRDSystemEndpointEntry *)v94 setDemoteWhenSyncingToCompanion:demoteWhenSyncingToCompanion];
  v89 = v31;
  [(MRDSystemEndpointEntry *)v94 setDate:v31];
  v41 = v35->_systemEndpointEntries;
  v42 = [NSNumber numberWithInteger:v38];
  [(NSMutableDictionary *)v41 setObject:v94 forKeyedSubscript:v42];

  systemEndpointInfo = [(MRDAVSystemEndpointController *)v35 systemEndpointInfo];
  recentlyDismissedRecommendationsInfo = [(MRDAVSystemEndpointController *)v35 recentlyDismissedRecommendationsInfo];
  [(MRDAVSystemEndpointController *)v35 _writeSystemEndpointInfo:systemEndpointInfo recentlyDismissedRecommendationsInfo:recentlyDismissedRecommendationsInfo];

  v112[0] = _NSConcreteStackBlock;
  v112[1] = 3221225472;
  v112[2] = sub_100049A50;
  v112[3] = &unk_1004B6B10;
  v116 = eventCopy2;
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
    outputDeviceUID5 = [v46 outputDeviceUID];
    v52 = sub_100035750(eventCopy2);
    reason2 = [v46 reason];
    v101 = v48;
    v88 = active;
    v54 = [v50 initWithFormat:@"%@SystemEndpoint changed from <%@> to <%@> with changeType = <%@>, eventType = <%@>, eventReason = <%@>, selectionReason = <%@>", active, v47, outputDeviceUID5, v48, v52, v98, reason2];

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
        v65 = sub_100035750(eventCopy2);
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
    reasonCopy = v98;
    goto LABEL_35;
  }

  v61 = MRMediaRemoteActiveEndpointTypeCopyDescription();
  outputDeviceUID6 = [v46 outputDeviceUID];
  v63 = sub_100035750(eventCopy2);
  reason3 = [v46 reason];
  *buf = 138413314;
  v119 = v61;
  v120 = 2112;
  v121 = outputDeviceUID6;
  v122 = 2112;
  v123 = v63;
  v124 = 2112;
  v125 = v98;
  v126 = 2112;
  v127 = reason3;
  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "[SystemEndpointController] %@SystemEndpoint remains <%@>, eventType = <%@>, eventReason = <%@>, selectionReason = <%@>", buf, 0x34u);

  reasonCopy = v98;
  v40 = v94;

  v38 = v99;
LABEL_35:

  outputDeviceUID7 = [v46 outputDeviceUID];
  v70 = [(MRDAVSystemEndpointController *)v35 originClientForDeviceUID:outputDeviceUID7];

  if (v38 == 1)
  {
    v77 = v93;
    if (eventCopy2 == 5)
    {
      notify_post(kMRMediaRemoteProactiveSystemEndpointDidStartPlayingNotifyName);
    }
  }

  else if (v38)
  {
    v77 = v93;
    if (v38 == 2)
    {
      origin = [v70 origin];
      v79 = [origin copy];

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

      clientBundleIdentifier = [v46 clientBundleIdentifier];
      reasonCopy = v98;
      [(MRDAVSystemEndpointController *)v35 _onSerialQueue_reevaluateActiveEndpoint:3 event:eventCopy2 changeType:v37 eventReason:v98 clientBundleIdentifier:clientBundleIdentifier];

      v77 = v93;
    }
  }

  else
  {
    origin2 = [v70 origin];
    v72 = [origin2 copy];

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

    clientBundleIdentifier2 = [v46 clientBundleIdentifier];
    reasonCopy = v98;
    [(MRDAVSystemEndpointController *)v35 _onSerialQueue_reevaluateActiveEndpoint:1 event:eventCopy2 changeType:v37 eventReason:v98 clientBundleIdentifier:clientBundleIdentifier2];

    v77 = v93;
    if ((v93[2])(v93))
    {
      [(MRDAVSystemEndpointController *)v35 _onSerialQueue_maybeSetupUserSelectedTimerForEvent:1];
      [(MRDAVSystemEndpointController *)v35 _onSerialQueue_maybeSetupPlaybackTimerForEvent:1];
    }
  }

  v22 = 0;
  outputDeviceUID2 = v90;
  v12 = v91;
  endpointCopy = v96;
  outputDeviceUID = v97;
LABEL_48:

  return v22;
}

- (void)_onSerialQueue_reconnectToOutputDevice:(id)device queue:(id)queue completion:(id)completion
{
  deviceCopy = device;
  queueCopy = queue;
  completionCopy = completion;
  v11 = [NSString alloc];
  active = MRMediaRemoteActiveEndpointTypeCopyDescription();
  active = [v11 initWithFormat:@"%@ endpoint disconnected and attempting to reconnect", active];

  [MRDAutoConnectionControllerReason reasonWithType:3 string:active];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100049FE4;
  v22[3] = &unk_1004B6BD8;
  v23 = queueCopy;
  v25 = v24 = deviceCopy;
  selfCopy = self;
  v14 = v25;
  v15 = deviceCopy;
  v16 = queueCopy;
  v20 = objc_retainBlock(v22);
  v21 = completionCopy;
  v17 = v20[2];
  v18 = completionCopy;
  v19 = v20;
  v17(0.0);
}

- (void)_onSerialQueue_maybeSetupUserSelectedTimerForEvent:(int64_t)event
{
  v5 = [(NSMutableDictionary *)self->_systemEndpointEntries objectForKeyedSubscript:&off_1004E04A0];
  v6 = v5;
  if (v5)
  {
    if ([v5 supportsIdleReset])
    {
      outputDeviceUID = [v6 outputDeviceUID];
      v8 = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:outputDeviceUID];

      if ([v8 isPlaying])
      {
        userSelectedTimer = self->_userSelectedTimer;
        v10 = [NSString alloc];
        active = MRMediaRemoteActiveEndpointTypeCopyDescription();
        active = [v10 initWithFormat:@"%@Endpoint is playing", active];
      }

      else
      {
        date = [v6 date];
        [date timeIntervalSinceNow];
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
          v34[5] = event;
          v30 = [v28 initWithInterval:@"com.apple.mediaremote.systemendpointcontroller.userselectedtimer" name:serialQueue queue:v34 block:v19 + v23];
          v31 = self->_userSelectedTimer;
          self->_userSelectedTimer = v30;

LABEL_10:
          goto LABEL_11;
        }

        userSelectedTimer = self->_userSelectedTimer;
        v32 = [NSString alloc];
        active = MRMediaRemoteActiveEndpointTypeCopyDescription();
        active = [v32 initWithFormat:@"%@Endpoint timeout imminent", active];
      }

      v33 = active;
      [(MRPersistentTimer *)userSelectedTimer invalidateWithReason:active];

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

- (void)_onSerialQueue_maybeSetupPlaybackTimerForEvent:(int64_t)event
{
  v5 = [(NSMutableDictionary *)self->_systemEndpointEntries objectForKeyedSubscript:&off_1004E04A0];
  v6 = v5;
  if (v5)
  {
    if ([v5 supportsIdleReset])
    {
      outputDeviceUID = [v6 outputDeviceUID];
      v8 = [(MRDAVSystemEndpointController *)self originClientForDeviceUID:outputDeviceUID];

      if ([v8 isPlaying])
      {
        [(MRDAVSystemEndpointController *)self _onSerialQueue_maybeSetupUserSelectedTimerForEvent:event];
        playbackTimer = self->_playbackTimer;
        v10 = [NSString alloc];
        active = MRMediaRemoteActiveEndpointTypeCopyDescription();
        active = [v10 initWithFormat:@"%@Endpoint is playing", active];
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
          selfCopy = self;
          eventCopy = event;
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
        active = [v26 initWithFormat:@"%@Endpoint timeout imminent", active];
      }

      v27 = active;
      [(MRPersistentTimer *)playbackTimer invalidateWithReason:active];

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

- (BOOL)_hasPersonalDeviceForContext:(id)context
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  outputDevices = [context outputDevices];
  v4 = [outputDevices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(outputDevices);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 deviceType] != 1 && objc_msgSend(v7, "deviceType") != 4 && objc_msgSend(v7, "deviceSubtype") != 8)
        {
          LOBYTE(v4) = 1;
          goto LABEL_13;
        }
      }

      v4 = [outputDevices countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)_writeSystemEndpointInfo:(id)info recentlyDismissedRecommendationsInfo:(id)recommendationsInfo
{
  infoCopy = info;
  recommendationsInfoCopy = recommendationsInfo;
  if (qword_1005291C8 != -1)
  {
    sub_1003A497C();
  }

  v8 = qword_1005291C0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004ACC0;
  block[3] = &unk_1004B69D0;
  v12 = infoCopy;
  selfCopy = self;
  v14 = recommendationsInfoCopy;
  v9 = recommendationsInfoCopy;
  v10 = infoCopy;
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
  outputDeviceUID = [v11 outputDeviceUID];
  if (outputDeviceUID)
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

- (void)_deviceInfoDidChange:(id)change
{
  changeCopy = change;
  v5 = [(MRDAVSystemEndpointController *)self activeOutputDeviceUID:0];
  userInfo = [changeCopy userInfo];
  v7 = MRGetDeviceInfoFromUserInfo();

  userInfo2 = [changeCopy userInfo];
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
    deviceClass = [v7 deviceClass];
    if (deviceClass > 0xD || ((1 << deviceClass) & 0x224E) == 0)
    {
      deviceUID = [v7 deviceUID];
      if (([deviceUID isEqual:v5] & 1) == 0)
      {
        clusterID = [v7 clusterID];
        v14 = [clusterID isEqual:v5];

        if (v14)
        {
          goto LABEL_5;
        }

        groupedDevices = [v7 groupedDevices];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_10004B6AC;
        v30[3] = &unk_1004B6D58;
        v16 = v5;
        v31 = v16;
        v17 = [groupedDevices mr_any:v30];

        if ((v17 & 1) == 0)
        {
          deviceUID2 = [v7 deviceUID];
          v19 = [deviceUID2 isEqual:v16];

          if ((v19 & 1) == 0)
          {
            deviceUID3 = [v7 deviceUID];
            if (deviceUID3)
            {
              goto LABEL_12;
            }
          }

          groupedDevices2 = [v7 groupedDevices];
          v25 = _NSConcreteStackBlock;
          v26 = 3221225472;
          v27 = sub_10004B6F0;
          v28 = &unk_1004B6D58;
          v29 = v16;
          v22 = [groupedDevices2 mr_first:&v25];
          deviceUID3 = [v22 deviceUID];

          if (deviceUID3)
          {
LABEL_12:
            v23 = _MRLogForCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v40 = deviceUID3;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[SystemEndpointController] Requesting to move ASE to deviceUID: %{public}@ because the old ASE changed groups", buf, 0xCu);
            }

            v24 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:deviceUID3 reason:@"ASE moved to another endpoint"];
            [(MRDAVSystemEndpointController *)self updateSystemEndpointForRequest:v24 event:9 completion:0];
          }

          else
          {
            deviceUID3 = _MRLogForCategory();
            if (os_log_type_enabled(deviceUID3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, deviceUID3, OS_LOG_TYPE_DEFAULT, "[SystemEndpointController] ASE changed groups, but no other devices found in old group", buf, 2u);
            }
          }
        }

        deviceUID = v31;
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