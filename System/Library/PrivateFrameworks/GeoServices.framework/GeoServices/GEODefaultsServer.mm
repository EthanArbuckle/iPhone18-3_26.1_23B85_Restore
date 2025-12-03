@interface GEODefaultsServer
+ (id)_acceptableKeys;
+ (void)submitBackgroundTasksNeededDuringDaemonStart;
- (BOOL)_validatePeer:(id)peer canSetKey:(id)key error:(id *)error;
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (GEODefaultsServer)initWithDaemon:(id)daemon;
- (void)_configKeysChanged:(id)changed;
- (void)_expiringKeysChanged:(id)changed;
- (void)_notifyListenersOfKeysChange:(id)change options:(unint64_t)options postInternalNotification:(BOOL)notification;
- (void)addChangeListenerForWithRequest:(id)request;
- (void)clearExpiredKeyWithRequest:(id)request;
- (void)dealloc;
- (void)getAllExpiringKeysWithRequest:(id)request;
- (void)getAllValuesInStoreWithRequest:(id)request;
- (void)getCompanionSyncValuesForKeysWithRequest:(id)request;
- (void)getConfigValueForKeyWithRequest:(id)request;
- (void)migrageEntitledKeyWithRequest:(id)request;
- (void)peerDidConnect:(id)connect;
- (void)peerDidDisconnect:(id)disconnect;
- (void)removeChangeListenerForWithRequest:(id)request;
- (void)resetAllDefaultsWithMessage:(id)message;
- (void)runBackgroundTask:(id)task;
- (void)setAllValuesInStoreWithRequest:(id)request;
- (void)setConfigValueForKeyWithRequest:(id)request;
- (void)setExpiringKeyWithRequest:(id)request;
- (void)updateNetworkDefaultsWithMessage:(id)message;
@end

@implementation GEODefaultsServer

+ (id)_acceptableKeys
{
  if (qword_100096088 != -1)
  {
    dispatch_once(&qword_100096088, &stru_100082800);
  }

  v3 = qword_100096080;

  return v3;
}

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  v14 = 0;
  if (v13 <= 1944)
  {
    if (v13 > 1850)
    {
      if (v13 == 1851)
      {
        v34 = objc_opt_class();
        v35 = sub_100001388(@"defaults", messageCopy, objectCopy, v34, peerCopy);
        v16 = v35;
        if (v35)
        {
          [v35 setSignpostId:id];
          [(GEODefaultsServer *)self getAllExpiringKeysWithRequest:v16];
          goto LABEL_54;
        }

        goto LABEL_57;
      }

      if (v13 != 1854)
      {
        if (v13 == 1933)
        {
          v20 = objc_opt_class();
          v21 = sub_100001388(@"defaults", messageCopy, objectCopy, v20, peerCopy);
          v16 = v21;
          if (v21)
          {
            [v21 setSignpostId:id];
            [(GEODefaultsServer *)self getAllValuesInStoreWithRequest:v16];
            goto LABEL_54;
          }

          goto LABEL_57;
        }

        goto LABEL_56;
      }

      if ((sub_100001548(self, peerCopy) & 1) == 0)
      {
        v38 = objc_opt_class();
        v39 = sub_100001388(@"defaults", messageCopy, objectCopy, v38, peerCopy);
        v16 = v39;
        if (v39)
        {
          [v39 setSignpostId:id];
          [(GEODefaultsServer *)self migrageEntitledKeyWithRequest:v16];
          goto LABEL_54;
        }

        goto LABEL_57;
      }
    }

    else
    {
      switch(v13)
      {
        case 1467:
          if ((sub_100001548(self, peerCopy) & 1) == 0)
          {
            v32 = objc_opt_class();
            v33 = sub_100001388(@"defaults", messageCopy, objectCopy, v32, peerCopy);
            v16 = v33;
            if (v33)
            {
              [v33 setSignpostId:id];
              [(GEODefaultsServer *)self setExpiringKeyWithRequest:v16];
              goto LABEL_54;
            }

            goto LABEL_57;
          }

          break;
        case 1537:
          if ((sub_100001548(self, peerCopy) & 1) == 0)
          {
            v36 = objc_opt_class();
            v37 = sub_100001388(@"defaults", messageCopy, objectCopy, v36, peerCopy);
            v16 = v37;
            if (v37)
            {
              [v37 setSignpostId:id];
              [(GEODefaultsServer *)self clearExpiredKeyWithRequest:v16];
              goto LABEL_54;
            }

            goto LABEL_57;
          }

          break;
        case 1652:
          if ((sub_100001548(self, peerCopy) & 1) == 0)
          {
            v17 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
            v16 = v17;
            if (v17)
            {
              [v17 setSignpostId:id];
              [(GEODefaultsServer *)self resetAllDefaultsWithMessage:v16];
              goto LABEL_54;
            }

LABEL_57:
            v14 = 0;
            goto LABEL_55;
          }

          break;
        default:
          goto LABEL_56;
      }
    }

LABEL_51:
    v14 = 1;
    goto LABEL_56;
  }

  if (v13 <= 2030)
  {
    switch(v13)
    {
      case 1945:
        if ((sub_100001548(self, peerCopy) & 1) == 0)
        {
          v28 = objc_opt_class();
          v29 = sub_100001388(@"defaults", messageCopy, objectCopy, v28, peerCopy);
          v16 = v29;
          if (v29)
          {
            [v29 setSignpostId:id];
            [(GEODefaultsServer *)self setAllValuesInStoreWithRequest:v16];
            goto LABEL_54;
          }

          goto LABEL_57;
        }

        break;
      case 2012:
        v30 = objc_opt_class();
        v31 = sub_100001388(@"defaults", messageCopy, objectCopy, v30, peerCopy);
        v16 = v31;
        if (v31)
        {
          [v31 setSignpostId:id];
          [(GEODefaultsServer *)self addChangeListenerForWithRequest:v16];
          goto LABEL_54;
        }

        goto LABEL_57;
      case 2019:
        if ((sub_100001548(self, peerCopy) & 1) == 0)
        {
          v18 = objc_opt_class();
          v19 = sub_100001388(@"defaults", messageCopy, objectCopy, v18, peerCopy);
          v16 = v19;
          if (v19)
          {
            [v19 setSignpostId:id];
            [(GEODefaultsServer *)self getConfigValueForKeyWithRequest:v16];
            goto LABEL_54;
          }

          goto LABEL_57;
        }

        break;
      default:
        goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (v13 > 2368)
  {
    if (v13 == 2369)
    {
      v26 = objc_opt_class();
      v27 = sub_100001388(@"defaults", messageCopy, objectCopy, v26, peerCopy);
      v16 = v27;
      if (v27)
      {
        [v27 setSignpostId:id];
        [(GEODefaultsServer *)self removeChangeListenerForWithRequest:v16];
        goto LABEL_54;
      }

      goto LABEL_57;
    }

    if (v13 != 2996)
    {
      goto LABEL_56;
    }

    if ((sub_100001548(self, peerCopy) & 1) == 0)
    {
      v22 = objc_opt_class();
      v23 = sub_100001388(@"defaults", messageCopy, objectCopy, v22, peerCopy);
      v16 = v23;
      if (v23)
      {
        [v23 setSignpostId:id];
        [(GEODefaultsServer *)self getCompanionSyncValuesForKeysWithRequest:v16];
        goto LABEL_54;
      }

      goto LABEL_57;
    }

    goto LABEL_51;
  }

  if (v13 == 2031)
  {
    if ((sub_100001548(self, peerCopy) & 1) == 0)
    {
      v24 = objc_opt_class();
      v25 = sub_100001388(@"defaults", messageCopy, objectCopy, v24, peerCopy);
      v16 = v25;
      if (v25)
      {
        [v25 setSignpostId:id];
        [(GEODefaultsServer *)self setConfigValueForKeyWithRequest:v16];
        goto LABEL_54;
      }

      goto LABEL_57;
    }

    goto LABEL_51;
  }

  if (v13 == 2213)
  {
    if ((sub_100001548(self, peerCopy) & 1) == 0)
    {
      v15 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
      v16 = v15;
      if (v15)
      {
        [v15 setSignpostId:id];
        [(GEODefaultsServer *)self updateNetworkDefaultsWithMessage:v16];
LABEL_54:
        v14 = 1;
LABEL_55:

        goto LABEL_56;
      }

      goto LABEL_57;
    }

    goto LABEL_51;
  }

LABEL_56:

  return v14;
}

- (void)migrageEntitledKeyWithRequest:(id)request
{
  requestCopy = request;
  v4 = _GEOConfigProxy();
  v7 = [v4 configStoreForOptions:{objc_msgSend(requestCopy, "keyOptions")}];

  keyString = [requestCopy keyString];
  [requestCopy keyOptions];

  v6 = GEOConfig_migrateEntitledKey();
}

- (void)setConfigValueForKeyWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOConfigStorageSetValueForKeyReply alloc] initWithRequest:requestCopy];
  keyString = [requestCopy keyString];
  v7 = GEOConfig_keyRequiresEntitlement();
  if (v7)
  {
    preferredAuditToken = [requestCopy preferredAuditToken];
    v26[1] = 0;
    v9 = GEOConfig_validateEntitlementForKey();
    v10 = 0;

    if ((v9 & 1) == 0)
    {
      v11 = GEOGetUserDefaultsLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v10;
        v12 = "Not allowing access (write): %@";
        v13 = v11;
        v14 = 12;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v10 = 0;
  }

  v15 = v10;
  peer = [requestCopy peer];
  v26[0] = v10;
  v17 = [(GEODefaultsServer *)self _validatePeer:peer canSetKey:keyString error:v26];
  v10 = v26[0];

  if ((v17 & 1) == 0)
  {
    v11 = GEOGetUserDefaultsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v28 = keyString;
      v29 = 2114;
      v30[0] = v10;
      v12 = "Could not validate peer's ability to set key: %{public}@ - %{public}@";
      v13 = v11;
      v14 = 22;
      goto LABEL_18;
    }

LABEL_19:

    [v5 setError:v10];
    [v5 send];
    goto LABEL_20;
  }

  keyOptions = [requestCopy keyOptions];
  v19 = _GEOConfigProxy();
  v20 = [v19 configStoreForOptions:keyOptions];

  v21 = [v20 getConfigValueForKey:keyString countryCode:0 options:keyOptions source:0];
  keyValue = [requestCopy keyValue];
  v23 = keyValue;
  if (v21)
  {
    v24 = 0;
  }

  else
  {
    v24 = v7;
  }

  if (v24 == 1 && keyValue)
  {
    GEOConfig_createEntitledKeyPathForKey();
  }

  v25 = GEOGetUserDefaultsLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v28 = keyString;
    v29 = 1024;
    LODWORD(v30[0]) = keyOptions;
    WORD2(v30[0]) = 2112;
    *(v30 + 6) = v23;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Setting value for key: %@ (%#x) = %@", buf, 0x1Cu);
  }

  [v20 setConfigValue:v23 forKey:keyString options:keyOptions synchronous:1];
  [v5 send];

LABEL_20:
}

- (void)getConfigValueForKeyWithRequest:(id)request
{
  requestCopy = request;
  v4 = [[GEOConfigStorageGetValueForKeyReply alloc] initWithRequest:requestCopy];
  keyString = [requestCopy keyString];
  preferredAuditToken = [requestCopy preferredAuditToken];
  v7 = GEOConfig_validateEntitlementForKey();
  v8 = 0;

  if (v7)
  {
    keyOptions = [requestCopy keyOptions];
    v10 = _GEOConfigProxy();
    v11 = [v10 configStoreForOptions:keyOptions];

    *buf = 0;
    countryCode = [requestCopy countryCode];
    v13 = [v11 getConfigValueForKey:keyString countryCode:countryCode options:keyOptions source:buf];
    [v4 setKeyValue:v13];

    [v4 setKeySource:*buf];
    [v4 send];
  }

  else
  {
    v14 = GEOGetUserDefaultsLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Not allowing access (read): %@", buf, 0xCu);
    }

    [v4 setError:v8];
    [v4 send];
  }
}

- (void)removeChangeListenerForWithRequest:(id)request
{
  requestCopy = request;
  peersIsolater = self->_peersIsolater;
  v7 = requestCopy;
  v6 = requestCopy;
  geo_isolate_sync();
}

- (void)addChangeListenerForWithRequest:(id)request
{
  requestCopy = request;
  peersIsolater = self->_peersIsolater;
  v7 = requestCopy;
  v6 = requestCopy;
  geo_isolate_sync();
}

- (void)peerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  peersIsolater = self->_peersIsolater;
  v7 = disconnectCopy;
  v6 = disconnectCopy;
  geo_isolate_sync();
}

- (void)peerDidConnect:(id)connect
{
  connectCopy = connect;
  peersIsolater = self->_peersIsolater;
  v7 = connectCopy;
  v6 = connectCopy;
  geo_isolate_sync();
}

- (void)runBackgroundTask:(id)task
{
  taskCopy = task;
  identifier = [taskCopy identifier];
  GEOBackgroundTaskReportReportTaskInitiated();

  identifier2 = [taskCopy identifier];
  v6 = [identifier2 isEqual:GEOMapsAuthBackgroundTaskIdentifier];

  if (v6)
  {
    v7 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
    [v7 refreshFromTask:taskCopy];
  }

  else
  {
    identifier3 = [taskCopy identifier];
    v9 = [identifier3 isEqual:GEOUpdateNetworkDefaultsTaskIdentifier];

    if (v9)
    {
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x2810000000;
      v21[3] = &unk_10007851D;
      v21[4] = 0;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100030A78;
      v18[3] = &unk_100082ED0;
      v20 = v21;
      v10 = taskCopy;
      v19 = v10;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100030B08;
      v16[3] = &unk_1000833E0;
      v11 = objc_retainBlock(v18);
      v17 = v11;
      [v10 setExpirationHandler:v16];
      v12 = +[GEONetworkDefaults sharedNetworkDefaults];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100030B58;
      v14[3] = &unk_100083C38;
      v13 = v11;
      v15 = v13;
      [v12 updateIfNecessary:v14];

      _Block_object_dispose(v21, 8);
    }
  }
}

- (void)setExpiringKeyWithRequest:(id)request
{
  requestCopy = request;
  peer = [requestCopy peer];
  keyString = [requestCopy keyString];
  v12 = 0;
  LODWORD(self) = [(GEODefaultsServer *)self _validatePeer:peer canSetKey:keyString error:&v12];

  if (self)
  {
    v7 = _GEOConfigProxy();
    v8 = [v7 configExpiryForOptions:{objc_msgSend(requestCopy, "keyOptions")}];

    keyString2 = [requestCopy keyString];
    expireTime = [requestCopy expireTime];
    expireOSVersion = [requestCopy expireOSVersion];
    [v8 setConfigKeyExpiry:keyString2 date:expireTime osVersion:expireOSVersion];
  }
}

- (void)getAllExpiringKeysWithRequest:(id)request
{
  requestCopy = request;
  v8 = [[GEOConfigGetExpiringKeysReply alloc] initWithRequest:requestCopy];
  v4 = _GEOConfigProxy();
  keyOptions = [requestCopy keyOptions];

  v6 = [v4 configExpiryForOptions:keyOptions];

  getAllExpiringKeys = [v6 getAllExpiringKeys];
  [v8 setExpiringKeys:getAllExpiringKeys];

  [v8 send];
}

- (void)getCompanionSyncValuesForKeysWithRequest:(id)request
{
  requestCopy = request;
  v7 = [[GEOConfigGetCompanionSyncValuesForKeysReply alloc] initWithRequest:requestCopy];
  keyStrings = [requestCopy keyStrings];

  v5 = [NSSet setWithArray:keyStrings];
  v6 = GEOGetValuesForKeysForCompanionSync();
  [v7 setKeyStringsAndValues:v6];

  [v7 send];
}

- (void)setAllValuesInStoreWithRequest:(id)request
{
  requestCopy = request;
  peer = [requestCopy peer];
  v5 = [peer hasEntitlement:@"com.apple.geoservices.setanydefault"];

  if (v5)
  {
    [requestCopy keyOptions];
    keyStringsAndValues = [requestCopy keyStringsAndValues];
    _GEOSetAllValuesInStore();

    v7 = +[GEOResourceManifestManager modernManager];
    [v7 updateManifestIfNecessary:0];
  }

  else
  {
    v7 = GEOGetUserDefaultsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = @"com.apple.geoservices.setanydefault";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Missing entitlement: %@", &v8, 0xCu);
    }
  }
}

- (void)getAllValuesInStoreWithRequest:(id)request
{
  requestCopy = request;
  v7 = [[GEOConfigGetAllValueInStoreReply alloc] initWithRequest:requestCopy];
  [requestCopy keyOptions];
  v4 = _GEOGetAllValuesInStore();
  preferredAuditToken = [requestCopy preferredAuditToken];

  v6 = GEOConfig_pruneEntitledKeysForAuditToken();
  [v7 setKeyStringsAndValues:v6];

  [v7 send];
}

- (void)clearExpiredKeyWithRequest:(id)request
{
  requestCopy = request;
  keyString = [requestCopy keyString];
  [requestCopy keyOptions];

  _GEOConfigClearExpiredKey();
}

- (void)_notifyListenersOfKeysChange:(id)change options:(unint64_t)options postInternalNotification:(BOOL)notification
{
  notificationCopy = notification;
  optionsCopy = options;
  changeCopy = change;
  if ([changeCopy count])
  {
    if (notificationCopy)
    {
      _GEOConfigPostKeysChangedNotification();
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_1000304A0;
    v32 = sub_1000304B0;
    v33 = 0;
    peersIsolater = self->_peersIsolater;
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1000312C4;
    v25 = &unk_100082ED0;
    selfCopy = self;
    v27 = &v28;
    geo_isolate_sync();
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v29[5];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v35 count:16];
    if (v11)
    {
      v12 = *v19;
      v13 = *&optionsCopy & 0xFFF000;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * v14);
          v16 = changeCopy;
          if (v15)
          {
            if (v13)
            {
              [v15 _notifyPeerOfChangedKeys:v16 options:{v13, v18}];
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: options != GEOConfigOption_None", buf, 2u);
            }
          }

          v14 = v14 + 1;
        }

        while (v11 != v14);
        v17 = [v10 countByEnumeratingWithState:&v18 objects:v35 count:16];
        v11 = v17;
      }

      while (v17);
    }

    _Block_object_dispose(&v28, 8);
  }
}

- (void)_expiringKeysChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"keys"];

  if (![v6 count])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    *v30 = 0;
    v19 = "Assertion failed: keys.count > 0";
LABEL_22:
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, v19, v30, 2u);
    goto LABEL_17;
  }

  userInfo2 = [changedCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"options"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_17;
    }

    *v30 = 0;
    v19 = "Assertion failed: options != GEOConfigOption_None";
    goto LABEL_22;
  }

  *v30 = 0;
  v31 = v30;
  v32 = 0x3032000000;
  v33 = sub_1000304A0;
  v34 = sub_1000304B0;
  v35 = 0;
  peersIsolater = self->_peersIsolater;
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000317A0;
  v27 = &unk_100082ED0;
  selfCopy = self;
  v29 = v30;
  geo_isolate_sync();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = *(v31 + 5);
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v37 count:16];
  if (v12)
  {
    v13 = *v21;
    v14 = unsignedIntegerValue & 0xFFF000;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v17 = v6;
        if (v16)
        {
          if (v14)
          {
            [v16 _notifyPeerOfChangedKeys:v17 options:{v14 | 0x10000000, v20}];
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: options != GEOConfigOption_None", buf, 2u);
          }
        }

        v15 = v15 + 1;
      }

      while (v12 != v15);
      v18 = [v11 countByEnumeratingWithState:&v20 objects:v37 count:16];
      v12 = v18;
    }

    while (v18);
  }

  _Block_object_dispose(v30, 8);
LABEL_17:
}

- (void)_configKeysChanged:(id)changed
{
  changedCopy = changed;
  object = [changedCopy object];

  if (object != self)
  {
    userInfo = [changedCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"options"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v8 = [v7 integerValue]) != 0)
    {
      v9 = v8;
      userInfo2 = [changedCopy userInfo];
      v11 = [userInfo2 objectForKeyedSubscript:@"keys"];
      [(GEODefaultsServer *)self _notifyListenersOfKeysChange:v11 options:v9 postInternalNotification:0];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: options != GEOConfigOption_None", v12, 2u);
    }
  }
}

- (void)resetAllDefaultsWithMessage:(id)message
{
  messageCopy = message;
  _GEOResetAllDefaults();
  [messageCopy sendReply:&__NSDictionary0__struct];
}

- (void)updateNetworkDefaultsWithMessage:(id)message
{
  messageCopy = message;
  v4 = GEOGetUserDefaultsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Updating network defaults", buf, 2u);
  }

  userInfo = [messageCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"reason"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 4;
  }

  v8 = +[GEONetworkDefaults sharedNetworkDefaults];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100031B18;
  v10[3] = &unk_100083EC0;
  v11 = messageCopy;
  v9 = messageCopy;
  [v8 updateNetworkDefaultsWithReason:unsignedIntegerValue completionHandler:v10];
}

- (BOOL)_validatePeer:(id)peer canSetKey:(id)key error:(id *)error
{
  peerCopy = peer;
  keyCopy = key;
  if (![keyCopy length])
  {
    v10 = 0;
    goto LABEL_9;
  }

  keyCopy = +[GEODefaultsServer _acceptableKeys];
  v10 = [keyCopy containsObject:keyCopy];
  if (v10)
  {
    goto LABEL_8;
  }

  v11 = [peerCopy hasEntitlement:@"com.apple.geoservices.setanydefault"];

  if ((v11 & 1) == 0 && (![keyCopy isEqualToString:GEOAddressCorrectionAuthorizationStatusKey] || (objc_msgSend(peerCopy, "hasEntitlement:", @"com.apple.CoreRoutine.preferences") & 1) == 0))
  {
    keyCopy = [NSString stringWithFormat:@"Cannot set value for invalid key: %@, missing entitlement?", keyCopy];
    *error = [NSError GEOErrorWithCode:-10 reason:keyCopy];
LABEL_8:

    goto LABEL_9;
  }

  v10 = 1;
LABEL_9:

  return v10;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GEODefaultsServer;
  [(GEODefaultsServer *)&v4 dealloc];
}

- (GEODefaultsServer)initWithDaemon:(id)daemon
{
  v18.receiver = self;
  v18.super_class = GEODefaultsServer;
  v3 = [(GEODefaultsServer *)&v18 initWithDaemon:daemon];
  if (v3)
  {
    v4 = geo_isolater_create();
    peersIsolater = v3->_peersIsolater;
    v3->_peersIsolater = v4;

    v6 = [[NSMapTable alloc] initWithKeyOptions:517 valueOptions:0 capacity:10];
    peerHelpers = v3->_peerHelpers;
    v3->_peerHelpers = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v3 selector:"_networkDefaultsChanged:" name:GEONetworkDefaultsDidChangeInternalNotificationName object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v3 selector:"_experimentChanged:" name:@"GEOExperimentInfoChangedInternalNotification" object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v3 selector:"_configKeysChanged:" name:_GEOConfigKeysChangedNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v3 selector:"_expiringKeysChanged:" name:_GEOConfigExpireChangedNotification object:0];

    out_token = 0;
    global_queue = geo_get_global_queue();
    notify_register_dispatch("com.apple.GeoServices.PreferencesSync.SettingsChanged", &out_token, global_queue, &stru_100082840);

    v13 = geo_get_global_queue();
    v14 = GEORegisterPListStateCaptureAtFrequency();
    stateCaptureHandle = v3->_stateCaptureHandle;
    v3->_stateCaptureHandle = v14;
  }

  return v3;
}

+ (void)submitBackgroundTasksNeededDuringDaemonStart
{
  if (sub_10001FD1C())
  {
    sharedScheduler = [sub_10001FF30() sharedScheduler];
    v3 = GEOUpdateNetworkDefaultsTaskIdentifier;
    v4 = [sharedScheduler taskRequestForIdentifier:GEOUpdateNetworkDefaultsTaskIdentifier];
    if (v4)
    {
      v5 = GEOGetUserDefaultsLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v12 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "NetworkDefaults background task is already scheduled (%{public}@)", buf, 0xCu);
      }
    }

    else
    {
      v5 = [objc_alloc(sub_1000201D0()) initWithIdentifier:v3];
      [v5 setPriority:2];
      [v5 setRequiresExternalPower:0];
      [v5 setRequiresNetworkConnectivity:1];
      [v5 setNetworkDownloadSize:10240];
      [v5 setPreventsDeviceSleep:1];
      [v5 setPowerBudgeted:1];
      [v5 setInterval:21600.0];
      v10 = 0;
      v6 = [sharedScheduler submitTaskRequest:v5 error:&v10];
      v7 = v10;
      if ((v6 & 1) == 0)
      {
        v8 = GEOGetUserDefaultsLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = @"Unknown";
          if (v7)
          {
            v9 = v7;
          }

          *buf = 138412290;
          v12 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to submit repeating task with error: %@", buf, 0xCu);
        }
      }
    }
  }
}

@end