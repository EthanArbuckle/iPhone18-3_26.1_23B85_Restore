@interface MRDGroupSessionEligibilityMonitor
+ (id)sharedMonitor;
+ (unint64_t)bestHostingStateForUserStates:(id)states reason:(id *)reason;
+ (unint64_t)hostingStateForEligibilityStatus:(id)status reason:(id *)reason;
+ (unint64_t)hostingStateForUserState:(id)state reason:(id *)reason;
+ (unint64_t)joiningStateForEligibilityStatus:(id)status reason:(id *)reason;
- (BOOL)isCarPlay;
- (MRDGroupSessionEligibilityMonitor)init;
- (MRGroupSessionEligibilityStatus)eligibilityStatus;
- (NSString)description;
- (unsigned)pickedRouteType;
- (void)_onQueue_notifyObservers:(id)observers;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)handleCloudStateChangeNotification:(id)notification;
- (void)handleDeviceInfoChangeNotification:(id)notification;
- (void)handleEndpointNotification:(id)notification;
- (void)initializeObserversAndState;
- (void)reevaluateState;
- (void)removeObserver:(id)observer;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
@end

@implementation MRDGroupSessionEligibilityMonitor

- (MRGroupSessionEligibilityStatus)eligibilityStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003529C;
  v10 = sub_100035B04;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000A79C;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)reevaluateState
{
  dispatch_assert_queue_V2(self->_workerQueue);
  v3 = objc_alloc_init(MRGroupSessionEligibilityStatus);
  [v3 setIsManateeEnabled:{-[CUSystemMonitor manateeAvailable](self->_systemMonitor, "manateeAvailable")}];
  v4 = +[IDSAccount mr_activeGroupSessionAccount];
  [v3 setIdsAccountIsValid:v4 != 0];

  [v3 setRouteType:{-[MRDGroupSessionEligibilityMonitor pickedRouteType](self, "pickedRouteType")}];
  [v3 setRouteIsValidForHosting:{objc_msgSend(v3, "routeType") != 0}];
  [v3 setMediaAccountHostingState:0];
  [v3 setMediaAccountJoiningState:0];
  if ([v3 idsAccountIsValid] && objc_msgSend(v3, "routeIsValidForHosting"))
  {
    isManateeEnabled = [v3 isManateeEnabled];
  }

  else
  {
    isManateeEnabled = 0;
  }

  v6 = +[MRDMusicUserStateCenter sharedCenter];
  cachedStateLoaded = [v6 cachedStateLoaded];

  if ((cachedStateLoaded & 1) != 0 || isManateeEnabled)
  {
    v10 = +[MRDMusicUserStateCenter sharedCenter];
    localActiveUserState = [v10 localActiveUserState];
    frameworkState = [localActiveUserState frameworkState];
    [v3 setCurrentMediaUserState:frameworkState];

    v13 = +[MRDMusicUserStateCenter sharedCenter];
    localUserStates = [v13 localUserStates];
    v15 = [localUserStates msv_map:&stru_1004C1328];
    [v3 setMediaUserStates:v15];

    v31 = 0;
    v16 = [objc_opt_class() hostingStateForEligibilityStatus:v3 reason:&v31];
    v8 = v31;
    [v3 setMediaAccountHostingState:v16];
    v30 = 0;
    v17 = [objc_opt_class() joiningStateForEligibilityStatus:v3 reason:&v30];
    v9 = v30;
    [v3 setMediaAccountJoiningState:v17];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v18 = [v3 isManateeEnabled] && objc_msgSend(v3, "idsAccountIsValid") && objc_msgSend(v3, "mediaAccountJoiningState") == 5;
  [v3 setIsEligibleForJoiningGroupSession:v18];
  v19 = [v3 routeIsValidForHosting] && objc_msgSend(v3, "idsAccountIsValid") && objc_msgSend(v3, "isManateeEnabled") && objc_msgSend(v3, "mediaAccountHostingState") > 4;
  [v3 setIsEligibleForHostingGroupSessionExcludingAcknowledgements:v19];
  if ([v3 isEligibleForHostingGroupSessionExcludingAcknowledgements])
  {
    v20 = [v3 mediaAccountHostingState] == 6;
  }

  else
  {
    v20 = 0;
  }

  [v3 setIsEligibleForHostingGroupSession:v20];
  queue = self->_queue;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100038830;
  v25[3] = &unk_1004B7310;
  v26 = v3;
  selfCopy = self;
  v28 = v8;
  v29 = v9;
  v22 = v9;
  v23 = v8;
  v24 = v3;
  dispatch_sync(queue, v25);
}

- (unsigned)pickedRouteType
{
  v3 = +[MRUserSettings currentSettings];
  startGroupSessionsForAllRoutes = [v3 startGroupSessionsForAllRoutes];

  if ((startGroupSessionsForAllRoutes & 1) != 0 || [(MRDGroupSessionEligibilityMonitor *)self isCarPlay])
  {
    return 2;
  }

  v6 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  outputDevices = [v6 outputDevices];
  v8 = MRGroupSessionRouteTypeForOutputDevices();

  return v8;
}

- (BOOL)isCarPlay
{
  carStatus = [(MRDGroupSessionEligibilityMonitor *)self carStatus];
  currentSession = [carStatus currentSession];
  v4 = currentSession != 0;

  return v4;
}

+ (id)sharedMonitor
{
  if (qword_1005296F8 != -1)
  {
    sub_1003B05E8();
  }

  v3 = qword_100529700;

  return v3;
}

- (MRDGroupSessionEligibilityMonitor)init
{
  v21.receiver = self;
  v21.super_class = MRDGroupSessionEligibilityMonitor;
  v2 = [(MRDGroupSessionEligibilityMonitor *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UNSPECIFIED, 0);
    v5 = dispatch_queue_create("com.apple.MRDGroupSessionEligibilityMonitor.queue", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UNSPECIFIED, 0);
    v9 = dispatch_queue_create("com.apple.MRDGroupSessionEligibilityMonitor.workerQueue", v8);
    workerQueue = v2->_workerQueue;
    v2->_workerQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UNSPECIFIED, 0);
    v13 = dispatch_queue_create("com.apple.MRDGroupSessionEligibilityMonitor.notification", v12);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v13;

    v15 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v15;

    queue = [(MRDGroupSessionEligibilityMonitor *)v2 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A8854;
    block[3] = &unk_1004B6D08;
    v20 = v2;
    dispatch_async(queue, block);
  }

  return v2;
}

- (void)initializeObserversAndState
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = MRAVEndpointDidAddOutputDeviceNotification;
  v5 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  [v3 addObserver:self selector:"handleEndpointNotification:" name:v4 object:v5];

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = MRAVEndpointDidChangeOutputDeviceNotification;
  v8 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  [v6 addObserver:self selector:"handleEndpointNotification:" name:v7 object:v8];

  v9 = +[NSNotificationCenter defaultCenter];
  v10 = MRAVEndpointDidRemoveOutputDeviceNotification;
  v11 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  [v9 addObserver:self selector:"handleEndpointNotification:" name:v10 object:v11];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"handleCloudStateChangeNotification:" name:@"MRDMusicUserStateCenterCloudStateDidUpdateNotification" object:0];

  v13 = [IDSAccountController alloc];
  v14 = +[IDSService mr_sharedGroupSessionServiceName];
  v15 = [v13 initWithService:v14];
  accountController = self->_accountController;
  self->_accountController = v15;

  v17 = self->_accountController;
  workerQueue = [(MRDGroupSessionEligibilityMonitor *)self workerQueue];
  [(IDSAccountController *)v17 addDelegate:self queue:workerQueue];

  v19 = objc_alloc_init(CARSessionStatus);
  carStatus = self->_carStatus;
  self->_carStatus = v19;

  [(CARSessionStatus *)self->_carStatus addSessionObserver:self];
  v21 = objc_alloc_init(CUSystemMonitor);
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = v21;

  workerQueue2 = [(MRDGroupSessionEligibilityMonitor *)self workerQueue];
  [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:workerQueue2];

  v24 = self->_systemMonitor;
  objc_initWeak(&location, self);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1001A8CB8;
  v33[3] = &unk_1004BB348;
  v25 = v24;
  v34 = v25;
  objc_copyWeak(&v35, &location);
  [(CUSystemMonitor *)self->_systemMonitor setManateeChangedHandler:v33];
  v26 = self->_systemMonitor;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1001A8D7C;
  v30[3] = &unk_1004BB348;
  v27 = v25;
  v31 = v27;
  objc_copyWeak(&v32, &location);
  [(CUSystemMonitor *)v26 activateWithCompletion:v30];
  v28 = _MRLogForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionEligibilityMonitor] Initialized", &v29, 2u);
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v35);

  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionEligibilityMonitor] Dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = MRDGroupSessionEligibilityMonitor;
  [(MRDGroupSessionEligibilityMonitor *)&v4 dealloc];
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  eligibilityStatus = [(MRDGroupSessionEligibilityMonitor *)self eligibilityStatus];
  v6 = [v3 initWithFormat:@"<%@: eligibility: %@>", v4, eligibilityStatus];

  return v6;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A8FF0;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A916C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(queue, v7);
}

- (void)_onQueue_notifyObservers:(id)observers
{
  observersCopy = observers;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A9244;
  block[3] = &unk_1004B69D0;
  v10 = allObjects;
  selfCopy = self;
  v12 = observersCopy;
  v7 = observersCopy;
  v8 = allObjects;
  dispatch_async(notificationQueue, block);
}

+ (unint64_t)joiningStateForEligibilityStatus:(id)status reason:(id *)reason
{
  statusCopy = status;
  currentMediaUserState = [statusCopy currentMediaUserState];
  v7 = currentMediaUserState;
  if (currentMediaUserState)
  {
    userIdentity = [currentMediaUserState userIdentity];
    v9 = userIdentity;
    if (userIdentity)
    {
      if ([userIdentity type] == 1)
      {
        if ([v7 identitySupportsCollaboration])
        {
          currentMediaUserState2 = [statusCopy currentMediaUserState];
          identifier = [currentMediaUserState2 identifier];
          identifier2 = [v9 identifier];
          v13 = [NSNumber numberWithBool:1];
          *reason = [NSString stringWithFormat:@"<id=%@ - %@ - collab=%@>", identifier, identifier2, v13];

          v14 = 5;
        }

        else
        {
          *reason = @"Identity does not support collaboration";
          v14 = 4;
        }

        goto LABEL_10;
      }

      v15 = @"Non-resolvable identity";
    }

    else
    {
      v15 = @"No media user identity";
    }

    *reason = v15;
    v14 = 3;
LABEL_10:

    goto LABEL_11;
  }

  *reason = @"No current media user";
  v14 = 2;
LABEL_11:

  return v14;
}

+ (unint64_t)hostingStateForEligibilityStatus:(id)status reason:(id *)reason
{
  statusCopy = status;
  IsAudioAccessory = MSVDeviceIsAudioAccessory();
  v7 = objc_opt_class();
  if (IsAudioAccessory)
  {
    mediaUserStates = [statusCopy mediaUserStates];

    v9 = [v7 bestHostingStateForUserStates:mediaUserStates reason:reason];
  }

  else
  {
    mediaUserStates = [statusCopy currentMediaUserState];

    v9 = [v7 hostingStateForUserState:mediaUserStates reason:reason];
  }

  v10 = v9;

  return v10;
}

+ (unint64_t)bestHostingStateForUserStates:(id)states reason:(id *)reason
{
  statesCopy = states;
  if (statesCopy)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1001A9718;
    v21[3] = &unk_1004C1350;
    selfCopy = self;
    v7 = [[NSMutableString alloc] initWithString:@"{"];
    v22 = v7;
    v8 = [statesCopy mr_map:v21];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v8);
          }

          integerValue = [*(*(&v17 + 1) + 8 * i) integerValue];
          if (v11 <= integerValue)
          {
            v11 = integerValue;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v15 = v7;
    *reason = v7;
  }

  else
  {
    *reason = @"No media user states";
    v11 = 1;
  }

  return v11;
}

+ (unint64_t)hostingStateForUserState:(id)state reason:(id *)reason
{
  stateCopy = state;
  v7 = stateCopy;
  if (stateCopy)
  {
    userIdentity = [stateCopy userIdentity];
    if ([v7 isFullSubscriber])
    {
      isMinor = [v7 isMinor];
      groupSessionsSupportedForAccountRegion = [v7 groupSessionsSupportedForAccountRegion];
      v11 = groupSessionsSupportedForAccountRegion;
      if ((isMinor & 1) != 0 || !groupSessionsSupportedForAccountRegion)
      {
        v24 = [NSNumber numberWithBool:isMinor];
        v25 = [NSNumber numberWithBool:v11];
        *reason = [NSString stringWithFormat:@"Restricted: ageRestricted=%@, regionRestricted=%@", v24, v25];

        v23 = 4;
      }

      else
      {
        if (userIdentity)
        {
          v12 = [NSNumber numberWithInt:1];
          v13 = [NSNumber numberWithBool:0];
          v14 = [NSNumber numberWithBool:1];
          v15 = [NSNumber numberWithBool:1];
          v16 = [NSMutableString stringWithFormat:@"hasIdentity=%@, ageRestricted=%@, sub=%@, validRegion=%@", v12, v13, v14, v15];

          if ([self needsAcknowledgement])
          {
            hasAcceptedPrivacyAcknowledgement = [v7 hasAcceptedPrivacyAcknowledgement];
            hasAcceptedDisplayNameAcknowledgement = [v7 hasAcceptedDisplayNameAcknowledgement];
            v19 = [NSNumber numberWithBool:hasAcceptedPrivacyAcknowledgement];
            v20 = [NSNumber numberWithBool:hasAcceptedDisplayNameAcknowledgement];
            v21 = [NSString stringWithFormat:@"privacyAck=%@, displayNameAck=%@", v19, v20];

            if (!hasAcceptedPrivacyAcknowledgement || (hasAcceptedDisplayNameAcknowledgement & 1) == 0)
            {
              *reason = [NSString stringWithFormat:@"Missing acknowledgements: %@", v21];

              v23 = 5;
              goto LABEL_16;
            }

            [v16 appendFormat:@", %@", v21];
          }

          v22 = v16;
          *reason = v16;
          v23 = 6;
LABEL_16:

          goto LABEL_17;
        }

        *reason = @"Missing identity";
        v23 = 3;
      }
    }

    else
    {
      *reason = @"Not a subscriber";
      v23 = 2;
    }

LABEL_17:

    goto LABEL_18;
  }

  *reason = @"No media user state";
  v23 = 1;
LABEL_18:

  return v23;
}

- (void)handleCloudStateChangeNotification:(id)notification
{
  workerQueue = [(MRDGroupSessionEligibilityMonitor *)self workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A9B0C;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

- (void)handleEndpointNotification:(id)notification
{
  workerQueue = [(MRDGroupSessionEligibilityMonitor *)self workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A9B9C;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

- (void)handleDeviceInfoChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = MRGetDeviceInfoFromUserInfo();

  v6 = +[MRDeviceInfoRequest localDeviceInfo];
  identifier = [v5 identifier];
  identifier2 = [v6 identifier];
  v9 = [identifier isEqualToString:identifier2];

  if (v9)
  {
    workerQueue = [(MRDGroupSessionEligibilityMonitor *)self workerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A9CB8;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(workerQueue, block);
  }
}

- (void)sessionDidConnect:(id)connect
{
  workerQueue = [(MRDGroupSessionEligibilityMonitor *)self workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A9D58;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  workerQueue = [(MRDGroupSessionEligibilityMonitor *)self workerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001A9DE8;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

@end