@interface MSIOSMediaStreamDaemon
- (BOOL)isWaitingForAuth;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)mayDownloadPersonID:(id)d;
- (MSIOSMediaStreamDaemon)init;
- (NSMutableDictionary)personIDToPowerBudgetMap;
- (NSMutableDictionary)personIDToPowerBudgetPersistedValuesMap;
- (id)MSPowerBudgetDidRequestPersistedValues:(id)values;
- (id)_powerBudgetForPersonID:(id)d;
- (void)MSPowerBudget:(id)budget didRequestStorageOfPersistedValues:(id)values;
- (void)MSPowerBudgetGotSignificantEvent:(id)event;
- (void)_readPowerBudgetParametersForPersonID:(id)d;
- (void)_serverSideConfigurationDidChange:(id)change;
- (void)_updatePushNotificationTopicsOutListenToProduction:(BOOL *)production outListenToDevelopment:(BOOL *)development;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)deleteAssetCollections:(id)collections personID:(id)d;
- (void)dequeueAssetCollectionWithGUIDs:(id)ds personID:(id)d reply:(id)reply;
- (void)didBeginForegroundFocusForPersonID:(id)d;
- (void)didEndForegroundFocusForPersonID:(id)d;
- (void)didExceedPublishQuotaForPersonID:(id)d retryDate:(id)date;
- (void)didIdle;
- (void)didReceiveAuthenticationFailureForPersonID:(id)d;
- (void)didReceiveAuthenticationSuccessForPersonID:(id)d;
- (void)didReceiveGlobalResetSyncForPersonID:(id)d;
- (void)didReceivePushNotificationForPersonID:(id)d;
- (void)didUnidle;
- (void)enqueueAssetCollections:(id)collections personID:(id)d reply:(id)reply;
- (void)forgetEverythingForPersonID:(id)d;
- (void)pauseForUUID:(id)d;
- (void)pauseManagerDidPause:(id)pause;
- (void)pauseManagerDidUnpause:(id)unpause;
- (void)resetServerStateForPersonID:(id)d;
- (void)serverSideConfigurationForPersonID:(id)d reply:(id)reply;
- (void)start;
- (void)stop;
- (void)unpauseForUUID:(id)d;
@end

@implementation MSIOSMediaStreamDaemon

- (BOOL)mayDownloadPersonID:(id)d
{
  v3 = [(MSIOSMediaStreamDaemon *)self _powerBudgetForPersonID:d];
  isFileTransferAllowed = [v3 isFileTransferAllowed];

  return isFileTransferAllowed;
}

- (void)didReceivePushNotificationForPersonID:(id)d
{
  v3 = [(MSIOSMediaStreamDaemon *)self _powerBudgetForPersonID:d];
  [v3 didReceivePushNotification];
}

- (void)didEndForegroundFocusForPersonID:(id)d
{
  v3 = [(MSIOSMediaStreamDaemon *)self _powerBudgetForPersonID:d];
  [v3 didEndForegroundFocus];
}

- (void)didBeginForegroundFocusForPersonID:(id)d
{
  v3 = [(MSIOSMediaStreamDaemon *)self _powerBudgetForPersonID:d];
  [v3 didBeginForegroundFocus];
}

- (void)didReceiveGlobalResetSyncForPersonID:(id)d
{
  v3 = [(MSIOSMediaStreamDaemon *)self _powerBudgetForPersonID:d];
  [v3 didReceiveGlobalResetSync];
}

- (void)_serverSideConfigurationDidChange:(id)change
{
  changeCopy = change;
  v5 = +[NSThread currentThread];
  v6 = +[NSThread mainThread];

  if (v5 == v6)
  {
    userInfo = [changeCopy userInfo];

    changeCopy = [userInfo objectForKey:kMSSSCCNPersonIDKey];

    if (changeCopy)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 138412546;
        *&v9[4] = objc_opt_class();
        *&v9[12] = 2112;
        *&v9[14] = changeCopy;
        v8 = *&v9[4];
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ Server-side configuration has changed for personID %@. Reading new values.", v9, 0x16u);
      }

      [(MSIOSMediaStreamDaemon *)self _readPowerBudgetParametersForPersonID:changeCopy, *v9, *&v9[16]];
    }
  }

  else
  {
    [(MSIOSMediaStreamDaemon *)self performSelectorOnMainThread:"_serverSideConfigurationDidChange:" withObject:changeCopy waitUntilDone:0];
  }
}

- (void)MSPowerBudgetGotSignificantEvent:(id)event
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003378;
  block[3] = &unk_100018B78;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)MSPowerBudget:(id)budget didRequestStorageOfPersistedValues:(id)values
{
  budgetCopy = budget;
  valuesCopy = values;
  personIDToPowerBudgetPersistedValuesMap = [(MSIOSMediaStreamDaemon *)self personIDToPowerBudgetPersistedValuesMap];
  personID = [budgetCopy personID];
  v10 = [personIDToPowerBudgetPersistedValuesMap objectForKey:personID];

  if (v10 && ([v10 isEqualToDictionary:valuesCopy] & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = valuesCopy;

    personIDToPowerBudgetPersistedValuesMap2 = [(MSIOSMediaStreamDaemon *)self personIDToPowerBudgetPersistedValuesMap];
    personID2 = [budgetCopy personID];
    if (v11)
    {
      [personIDToPowerBudgetPersistedValuesMap2 setObject:v11 forKey:personID2];

      v24 = 0;
      v14 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v24];
      v15 = v24;
      if (v14)
      {
        personID3 = [budgetCopy personID];
        v17 = sub_10000368C(personID3);
        v23 = v15;
        v18 = [v14 writeToFile:v17 options:1 error:&v23];
        v19 = v23;

        if ((v18 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v19;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to save persisted power budget for personID values: %@", buf, 0xCu);
        }

        v15 = v19;
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v15;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to archive persisted power budget for personID values: %@", buf, 0xCu);
      }
    }

    else
    {
      [personIDToPowerBudgetPersistedValuesMap2 removeObjectForKey:personID2];

      v20 = +[NSFileManager defaultManager];
      personID4 = [budgetCopy personID];
      v22 = sub_10000368C(personID4);
      [v20 removeItemAtPath:v22 error:0];

      v11 = 0;
    }
  }
}

- (id)MSPowerBudgetDidRequestPersistedValues:(id)values
{
  valuesCopy = values;
  personIDToPowerBudgetPersistedValuesMap = [(MSIOSMediaStreamDaemon *)self personIDToPowerBudgetPersistedValuesMap];
  personID = [valuesCopy personID];
  v7 = [personIDToPowerBudgetPersistedValuesMap objectForKey:personID];

  if (!v7)
  {
    personID2 = [valuesCopy personID];
    v9 = sub_10000368C(personID2);
    v14 = 0;
    v7 = [NSKeyedUnarchiver MSSafeUnarchiveObjectWithFile:v9 outError:&v14];
    v10 = v14;

    if (v7)
    {
      personIDToPowerBudgetPersistedValuesMap2 = [(MSIOSMediaStreamDaemon *)self personIDToPowerBudgetPersistedValuesMap];
      personID3 = [valuesCopy personID];
      [personIDToPowerBudgetPersistedValuesMap2 setObject:v7 forKey:personID3];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to unarchive persisted power budget values: %@", buf, 0xCu);
    }
  }

  return v7;
}

- (NSMutableDictionary)personIDToPowerBudgetPersistedValuesMap
{
  personIDToPowerBudgetPersistedValuesMap = self->_personIDToPowerBudgetPersistedValuesMap;
  if (!personIDToPowerBudgetPersistedValuesMap)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = self->_personIDToPowerBudgetPersistedValuesMap;
    self->_personIDToPowerBudgetPersistedValuesMap = v4;

    personIDToPowerBudgetPersistedValuesMap = self->_personIDToPowerBudgetPersistedValuesMap;
  }

  return personIDToPowerBudgetPersistedValuesMap;
}

- (id)_powerBudgetForPersonID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    personIDToPowerBudgetMap = [(MSIOSMediaStreamDaemon *)self personIDToPowerBudgetMap];
    v6 = [personIDToPowerBudgetMap objectForKey:dCopy];

    if (!v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v10 = 138543618;
        selfCopy = self;
        v12 = 2112;
        v13 = dCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "%{public}@: Creating power budget object for person ID %@", &v10, 0x16u);
      }

      v6 = objc_alloc_init(MSPowerBudget);
      personIDToPowerBudgetMap2 = [(MSIOSMediaStreamDaemon *)self personIDToPowerBudgetMap];
      [personIDToPowerBudgetMap2 setObject:v6 forKey:dCopy];

      [v6 setPersonID:dCopy];
      [v6 setDelegate:self];
      [(MSIOSMediaStreamDaemon *)self _readPowerBudgetParametersForPersonID:dCopy];
      v8 = +[MSBatteryPowerMonitor defaultMonitor];
      LODWORD(personIDToPowerBudgetMap2) = [v8 isExternalPowerConnected];

      if (personIDToPowerBudgetMap2)
      {
        [v6 didBeginExternalPower];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_readPowerBudgetParametersForPersonID:(id)d
{
  dCopy = d;
  v4 = [(MSIOSMediaStreamDaemon *)self _powerBudgetForPersonID:?];
  if (v4)
  {
    [MSServerSideConfigManager doubleValueForParameter:kMSSSCKMaxActiveTimeAfterPush forPersonID:dCopy defaultValue:60.0];
    [v4 setMaxActiveTimeAfterPush:?];
    [MSServerSideConfigManager doubleValueForParameter:kMSSSCKMaxActiveTimeAfterLossOfForeground forPersonID:dCopy defaultValue:600.0];
    [v4 setMaxActiveTimeAfterLossOfForeground:?];
    [MSServerSideConfigManager doubleValueForParameter:kMSSSCKMaxActiveTimeAfterGlobalResetSync forPersonID:dCopy defaultValue:1800.0];
    [v4 setMaxActiveTimeAfterGlobalResetSync:?];
  }
}

- (NSMutableDictionary)personIDToPowerBudgetMap
{
  personIDToPowerBudgetMap = self->_personIDToPowerBudgetMap;
  if (!personIDToPowerBudgetMap)
  {
    v4 = +[NSMutableDictionary dictionary];
    v5 = self->_personIDToPowerBudgetMap;
    self->_personIDToPowerBudgetMap = v4;

    personIDToPowerBudgetMap = self->_personIDToPowerBudgetMap;
  }

  return personIDToPowerBudgetMap;
}

- (void)didExceedPublishQuotaForPersonID:(id)d retryDate:(id)date
{
  dCopy = d;
  dateCopy = date;
  [dateCopy timeIntervalSinceNow];
  LODWORD(v4) = vcvtpd_s64_f64(v8 / 86400.0);
  if (v4 > 1)
  {
    v9 = MSMSLocalizedString();
    v10 = [NSNumber numberWithInteger:v4];
    v17 = [NSString stringWithValidatedFormat:v9 validFormatSpecifiers:@"%@" error:0, v10];

    v11 = MSMSLocalizedString();
    v12 = MSMSLocalizedString();
    v13 = [NSNumber numberWithBool:1];
    v14 = [NSNumber numberWithBool:1];
    v15 = [NSDictionary dictionaryWithObjectsAndKeys:v11, kCFUserNotificationAlertHeaderKey, v17, kCFUserNotificationAlertMessageKey, v12, kCFUserNotificationDefaultButtonTitleKey, v13, kCFUserNotificationAlertTopMostKey, v14, SBUserNotificationDontDismissOnUnlock, 0];

    v16 = +[MSAlertManager sharedAlertManager];
    [v16 displayAlertForPersonID:dCopy notificationDict:v15 completionBlock:0];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v19 = dCopy;
    v20 = 2114;
    v21 = dateCopy;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Received quota excess failure for person ID %@. Next retry date: %{public}@", buf, 0x16u);
  }
}

- (void)pauseManagerDidUnpause:(id)unpause
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unpaused.", v4, 2u);
  }

  [(MSIOSMediaStreamDaemon *)self retryOutstandingActivities];
}

- (void)pauseManagerDidPause:(id)pause
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Paused.", v4, 2u);
  }

  [(MSIOSMediaStreamDaemon *)self stopAllActivities];
}

- (BOOL)isWaitingForAuth
{
  v2 = +[MSAuthenticationManager sharedManager];
  isWaitingForAuth = [v2 isWaitingForAuth];

  return isWaitingForAuth;
}

- (void)didReceiveAuthenticationSuccessForPersonID:(id)d
{
  dCopy = d;
  v4 = +[MSAuthenticationManager sharedManager];
  [v4 didEncounterAuthenticationSuccessForPersonID:dCopy];
}

- (void)didReceiveAuthenticationFailureForPersonID:(id)d
{
  dCopy = d;
  v4 = +[MSAuthenticationManager sharedManager];
  [v4 didEncounterAuthenticationFailureForPersonID:dCopy];
}

- (void)forgetEverythingForPersonID:(id)d
{
  dCopy = d;
  [(MSIOSMediaStreamDaemon *)self retainBusy];
  if (dCopy)
  {
    [(MSIOSMediaStreamDaemon *)self forgetPersonID:dCopy];
    [(MSIOSMediaStreamDaemon *)self _updatePushNotificationTopicsOutListenToProduction:0 outListenToDevelopment:0];
    personIDToPowerBudgetMap = [(MSIOSMediaStreamDaemon *)self personIDToPowerBudgetMap];
    [personIDToPowerBudgetMap removeObjectForKey:dCopy];

    personIDToPowerBudgetPersistedValuesMap = [(MSIOSMediaStreamDaemon *)self personIDToPowerBudgetPersistedValuesMap];
    [personIDToPowerBudgetPersistedValuesMap removeObjectForKey:dCopy];
  }

  v6 = +[MSAuthenticationManager sharedManager];
  [v6 rearmAuthenticationAlert];

  [(MSIOSMediaStreamDaemon *)self releaseBusy];
}

- (void)unpauseForUUID:(id)d
{
  dCopy = d;
  [(MSIOSMediaStreamDaemon *)self retainBusy];
  v5 = +[MSPauseManager sharedManager];
  [v5 unpauseUUID:dCopy];

  [(MSIOSMediaStreamDaemon *)self releaseBusy];
}

- (void)pauseForUUID:(id)d
{
  dCopy = d;
  [(MSIOSMediaStreamDaemon *)self retainBusy];
  v5 = +[MSPauseManager sharedManager];
  [v5 pingPauseUUID:dCopy];

  [(MSIOSMediaStreamDaemon *)self releaseBusy];
}

- (void)resetServerStateForPersonID:(id)d
{
  dCopy = d;
  [(MSIOSMediaStreamDaemon *)self retainBusy];
  v5 = MSPlatform();
  v6 = [v5 baseURLForPersonID:dCopy];
  v7 = [MSResetServer resetServerObjectWithPersonID:dCopy baseURL:v6];

  [v7 setDaemon:self];
  [v7 resetServer];
  [(MSIOSMediaStreamDaemon *)self releaseBusy];
}

- (void)serverSideConfigurationForPersonID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  [(MSIOSMediaStreamDaemon *)self retainBusy];
  v9 = [(MSIOSMediaStreamDaemon *)self serverSideConfigurationForPersonID:dCopy];

  v8 = [NSDictionary dictionaryWithObjectsAndKeys:v9, kMSCXPCReplyRetval, 0];
  [(MSIOSMediaStreamDaemon *)self releaseBusy];
  replyCopy[2](replyCopy, v8);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  [(MSIOSMediaStreamDaemon *)self retainBusy];
  topic = [messageCopy topic];
  userInfo = [messageCopy userInfo];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = topic;
    v11 = 2112;
    v12 = userInfo;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received push notification for invitations topic: %@ userInfo: %@", &v9, 0x16u);
  }

  if ([(MSIOSMediaStreamDaemon *)topic isEqualToString:@"com.apple.mediastream.subscription.push"])
  {
    v8 = [userInfo objectForKey:@"r"];
    [(MSIOSMediaStreamDaemon *)self pollForSubscriptionUpdatesTriggeredByPushNotificationForPersonID:v8];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@: Received unknown push notification, ignoring", &v9, 0xCu);
  }

  [(MSIOSMediaStreamDaemon *)self releaseBusy];
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  [(MSIOSMediaStreamDaemon *)self retainBusy];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Received new push token.", v7, 2u);
  }

  v6 = +[MSMSPlatform thePlatform];
  [v6 setPushToken:tokenCopy];

  [(MSIOSMediaStreamDaemon *)self releaseBusy];
}

- (void)_updatePushNotificationTopicsOutListenToProduction:(BOOL *)production outListenToDevelopment:(BOOL *)development
{
  v7 = MSPlatform();
  subscriberPluginClass = [v7 subscriberPluginClass];

  personIDForPollingTriggeredByPushNotification = [subscriberPluginClass personIDForPollingTriggeredByPushNotification];
  if ([personIDForPollingTriggeredByPushNotification length])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = personIDForPollingTriggeredByPushNotification;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "personID waiting for push: %@", &v13, 0xCu);
    }

    v10 = MSPlatform();
    v11 = [v10 personIDUsesProductionPushEnvironment:personIDForPollingTriggeredByPushNotification];
    v12 = v11 ^ 1;

    if (development)
    {
LABEL_5:
      *development = v12;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "The subscription plugin class does not support push notification refreshing.", &v13, 2u);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Not listening to push notifications.", &v13, 2u);
    }

    [self->_prodAPSConnection _setEnabledTopics:0];
    [self->_devAPSConnection _setEnabledTopics:0];
    v12 = 0;
    v11 = 0;
    if (development)
    {
      goto LABEL_5;
    }
  }

  if (production)
  {
    *production = v11;
  }
}

- (void)deleteAssetCollections:(id)collections personID:(id)d
{
  dCopy = d;
  collectionsCopy = collections;
  [(MSIOSMediaStreamDaemon *)self retainBusy];
  [(MSIOSMediaStreamDaemon *)self deleteAssetCollections:collectionsCopy forPersonID:dCopy];

  [(MSIOSMediaStreamDaemon *)self releaseBusy];
}

- (void)dequeueAssetCollectionWithGUIDs:(id)ds personID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  dsCopy = ds;
  [(MSIOSMediaStreamDaemon *)self retainBusy];
  v15 = 0;
  v11 = [(MSIOSMediaStreamDaemon *)self dequeueAssetCollectionWithGUIDs:dsCopy personID:dCopy outError:&v15];

  v12 = v15;
  v13 = [NSNumber numberWithBool:v11];
  v14 = [NSMutableDictionary dictionaryWithObject:v13 forKey:kMSCXPCReplyRetval];

  if (v12)
  {
    [v14 setObject:v12 forKey:kMSCXPCReplyError];
  }

  [(MSIOSMediaStreamDaemon *)self releaseBusy];
  replyCopy[2](replyCopy, v14);
}

- (void)enqueueAssetCollections:(id)collections personID:(id)d reply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  collectionsCopy = collections;
  [(MSIOSMediaStreamDaemon *)self retainBusy];
  v15 = 0;
  v11 = [(MSIOSMediaStreamDaemon *)self enqueueAssetCollection:collectionsCopy personID:dCopy outError:&v15];

  v12 = v15;
  v13 = [NSNumber numberWithBool:v11];
  v14 = [NSMutableDictionary dictionaryWithObject:v13 forKey:kMSCXPCReplyRetval];

  if (v12)
  {
    [v14 setObject:v12 forKey:kMSCXPCReplyError];
  }

  [(MSIOSMediaStreamDaemon *)self releaseBusy];
  replyCopy[2](replyCopy, v14);
}

- (void)stop
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MSIOSMediaStreamDaemon;
  [(MSIOSMediaStreamDaemon *)&v4 stop];
}

- (void)start
{
  [(MSIOSMediaStreamDaemon *)self retainBusy];
  v3 = [APSConnection alloc];
  v4 = [v3 initWithEnvironmentName:APSEnvironmentProduction namedDelegatePort:@"com.apple.mediastream.mstreamd.push-prod" queue:&_dispatch_main_q];
  p_prodAPSConnection = &self->_prodAPSConnection;
  prodAPSConnection = self->_prodAPSConnection;
  self->_prodAPSConnection = v4;

  v7 = [APSConnection alloc];
  v8 = [v7 initWithEnvironmentName:APSEnvironmentDevelopment namedDelegatePort:@"com.apple.mediastream.mstreamd.push-dev" queue:&_dispatch_main_q];
  devAPSConnection = self->_devAPSConnection;
  self->_devAPSConnection = v8;

  v32 = 0;
  [(MSIOSMediaStreamDaemon *)self _updatePushNotificationTopicsOutListenToProduction:&v32 + 1 outListenToDevelopment:&v32];
  if (v32 & 0x100) != 0 || (p_prodAPSConnection = &self->_devAPSConnection, (v32))
  {
    v10 = *p_prodAPSConnection;
    if (v10)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        *v34 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Created APS connection %{public}@", buf, 0xCu);
      }

      [(APSConnection *)v10 setDelegate:self];
      v35 = @"com.apple.mediastream.subscription.push";
      v11 = [NSArray arrayWithObjects:&v35 count:1];
      [(APSConnection *)v10 _setEnabledTopics:v11];

      publicToken = [(APSConnection *)v10 publicToken];
      v13 = +[MSMSPlatform thePlatform];
      [v13 setPushToken:publicToken];

      if (publicToken)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          *v34 = publicToken;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Retrieved push tokens %{public}@.", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v34 = v32;
          *&v34[4] = 1024;
          *&v34[6] = HIBYTE(v32);
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Push tokens not available. Dev: %d, Prod: %d. Waiting...", buf, 0xEu);
        }

        v14 = [NSDate dateWithTimeIntervalSinceNow:5.0];
        while (1)
        {
          v15 = +[MSMSPlatform thePlatform];
          pushToken = [v15 pushToken];
          if (pushToken)
          {
            break;
          }

          v17 = +[NSDate date];
          [v17 timeIntervalSinceDate:v14];
          v19 = v18;

          if (v19 < 0.0)
          {
            v20 = +[NSRunLoop currentRunLoop];
            v21 = [v20 runMode:NSDefaultRunLoopMode beforeDate:v14];

            if (v21)
            {
              continue;
            }
          }

          goto LABEL_20;
        }

LABEL_20:
        v22 = +[MSMSPlatform thePlatform];
        pushToken2 = [v22 pushToken];

        if (pushToken2)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            if (HIBYTE(v32))
            {
              v24 = @"Prod";
            }

            else
            {
              v24 = @"Dev";
            }

            *buf = 138543362;
            *v34 = v24;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Retrieved push tokens. %{public}@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not retrieve push token even after waiting for it.", buf, 2u);
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "My Photo stream not enabled, not listening to any push notifications.", buf, 2u);
    }

    v10 = 0;
  }

  v25 = +[NSNotificationCenter defaultCenter];
  v26 = kMSAuthenticationManagerDidReceiveAuthenticationChangeNotification;
  v27 = +[MSAuthenticationManager sharedManager];
  v28 = +[NSOperationQueue mainQueue];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100005070;
  v31[3] = &unk_1000189F8;
  v31[4] = self;
  v29 = [v25 addObserverForName:v26 object:v27 queue:v28 usingBlock:v31];

  v30.receiver = self;
  v30.super_class = MSIOSMediaStreamDaemon;
  [(MSIOSMediaStreamDaemon *)&v30 start];
  [(MSIOSMediaStreamDaemon *)self releaseBusy];
}

- (void)didUnidle
{
  v3 = +[MSPowerAssertionManager sharedManager];
  [v3 retainBusy];

  v4.receiver = self;
  v4.super_class = MSIOSMediaStreamDaemon;
  [(MSIOSMediaStreamDaemon *)&v4 didUnidle];
}

- (void)didIdle
{
  v3 = +[MSPowerAssertionManager sharedManager];
  [v3 releaseBusy];
  [v3 toggleAssertion];
  v4.receiver = self;
  v4.super_class = MSIOSMediaStreamDaemon;
  [(MSIOSMediaStreamDaemon *)&v4 didIdle];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.mediastream.mstreamd-access"];
  v7 = v6;
  if (v6 && [v6 BOOLValue])
  {
    [connectionCopy setExportedObject:self];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDaemonProtocols];
    v19 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [NSSet setWithObjects:v19, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0];
    [v8 setClasses:v16 forSelector:"enqueueAssetCollections:personID:reply:" argumentIndex:0 ofReply:0];
    [v8 setClasses:v16 forSelector:"dequeueAssetCollectionWithGUIDs:personID:reply:" argumentIndex:0 ofReply:0];
    [v8 setClasses:v16 forSelector:"deleteAssetCollections:personID:" argumentIndex:0 ofReply:0];
    [connectionCopy setExportedInterface:v8];
    [connectionCopy _setQueue:&_dispatch_main_q];
    [connectionCopy resume];

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)dealloc
{
  v3 = +[MSPauseManager sharedManager];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = MSIOSMediaStreamDaemon;
  [(MSIOSMediaStreamDaemon *)&v4 dealloc];
}

- (MSIOSMediaStreamDaemon)init
{
  v16.receiver = self;
  v16.super_class = MSIOSMediaStreamDaemon;
  v2 = [(MSIOSMediaStreamDaemon *)&v16 init];
  if (v2)
  {
    v3 = [NSXPCListener alloc];
    v4 = [v3 initWithMachServiceName:kMSMachServiceName];
    center = v2->_center;
    v2->_center = v4;

    [(NSXPCListener *)v2->_center setDelegate:v2];
    [(NSXPCListener *)v2->_center resume];
    v6 = +[MSPauseManager sharedManager];
    [v6 setDelegate:v2];

    v7 = +[NSNotificationCenter defaultCenter];
    v8 = kMSBatteryPowerMonitorExternalPowerSourceChangedNotification;
    v9 = +[NSOperationQueue mainQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100005578;
    v14[3] = &unk_1000189F8;
    v10 = v2;
    v15 = v10;
    v11 = [v7 addObserverForName:v8 object:0 queue:v9 usingBlock:v14];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v10 selector:"_serverSideConfigurationDidChange:" name:kMSServerSideConfigChangedNotification object:0];
  }

  return v2;
}

@end