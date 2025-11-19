@interface GEODefaultsServer
+ (id)_acceptableKeys;
+ (void)submitBackgroundTasksNeededDuringDaemonStart;
- (BOOL)_validatePeer:(id)a3 canSetKey:(id)a4 error:(id *)a5;
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (GEODefaultsServer)initWithDaemon:(id)a3;
- (void)_configKeysChanged:(id)a3;
- (void)_expiringKeysChanged:(id)a3;
- (void)_notifyListenersOfKeysChange:(id)a3 options:(unint64_t)a4 postInternalNotification:(BOOL)a5;
- (void)addChangeListenerForWithRequest:(id)a3;
- (void)clearExpiredKeyWithRequest:(id)a3;
- (void)dealloc;
- (void)getAllExpiringKeysWithRequest:(id)a3;
- (void)getAllValuesInStoreWithRequest:(id)a3;
- (void)getCompanionSyncValuesForKeysWithRequest:(id)a3;
- (void)getConfigValueForKeyWithRequest:(id)a3;
- (void)migrageEntitledKeyWithRequest:(id)a3;
- (void)peerDidConnect:(id)a3;
- (void)peerDidDisconnect:(id)a3;
- (void)removeChangeListenerForWithRequest:(id)a3;
- (void)resetAllDefaultsWithMessage:(id)a3;
- (void)runBackgroundTask:(id)a3;
- (void)setAllValuesInStoreWithRequest:(id)a3;
- (void)setConfigValueForKeyWithRequest:(id)a3;
- (void)setExpiringKeyWithRequest:(id)a3;
- (void)updateNetworkDefaultsWithMessage:(id)a3;
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

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100001334(v10);
  v14 = 0;
  if (v13 <= 1944)
  {
    if (v13 > 1850)
    {
      if (v13 == 1851)
      {
        v34 = objc_opt_class();
        v35 = sub_100001388(@"defaults", v10, v11, v34, v12);
        v16 = v35;
        if (v35)
        {
          [v35 setSignpostId:a6];
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
          v21 = sub_100001388(@"defaults", v10, v11, v20, v12);
          v16 = v21;
          if (v21)
          {
            [v21 setSignpostId:a6];
            [(GEODefaultsServer *)self getAllValuesInStoreWithRequest:v16];
            goto LABEL_54;
          }

          goto LABEL_57;
        }

        goto LABEL_56;
      }

      if ((sub_100001548(self, v12) & 1) == 0)
      {
        v38 = objc_opt_class();
        v39 = sub_100001388(@"defaults", v10, v11, v38, v12);
        v16 = v39;
        if (v39)
        {
          [v39 setSignpostId:a6];
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
          if ((sub_100001548(self, v12) & 1) == 0)
          {
            v32 = objc_opt_class();
            v33 = sub_100001388(@"defaults", v10, v11, v32, v12);
            v16 = v33;
            if (v33)
            {
              [v33 setSignpostId:a6];
              [(GEODefaultsServer *)self setExpiringKeyWithRequest:v16];
              goto LABEL_54;
            }

            goto LABEL_57;
          }

          break;
        case 1537:
          if ((sub_100001548(self, v12) & 1) == 0)
          {
            v36 = objc_opt_class();
            v37 = sub_100001388(@"defaults", v10, v11, v36, v12);
            v16 = v37;
            if (v37)
            {
              [v37 setSignpostId:a6];
              [(GEODefaultsServer *)self clearExpiredKeyWithRequest:v16];
              goto LABEL_54;
            }

            goto LABEL_57;
          }

          break;
        case 1652:
          if ((sub_100001548(self, v12) & 1) == 0)
          {
            v17 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
            v16 = v17;
            if (v17)
            {
              [v17 setSignpostId:a6];
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
        if ((sub_100001548(self, v12) & 1) == 0)
        {
          v28 = objc_opt_class();
          v29 = sub_100001388(@"defaults", v10, v11, v28, v12);
          v16 = v29;
          if (v29)
          {
            [v29 setSignpostId:a6];
            [(GEODefaultsServer *)self setAllValuesInStoreWithRequest:v16];
            goto LABEL_54;
          }

          goto LABEL_57;
        }

        break;
      case 2012:
        v30 = objc_opt_class();
        v31 = sub_100001388(@"defaults", v10, v11, v30, v12);
        v16 = v31;
        if (v31)
        {
          [v31 setSignpostId:a6];
          [(GEODefaultsServer *)self addChangeListenerForWithRequest:v16];
          goto LABEL_54;
        }

        goto LABEL_57;
      case 2019:
        if ((sub_100001548(self, v12) & 1) == 0)
        {
          v18 = objc_opt_class();
          v19 = sub_100001388(@"defaults", v10, v11, v18, v12);
          v16 = v19;
          if (v19)
          {
            [v19 setSignpostId:a6];
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
      v27 = sub_100001388(@"defaults", v10, v11, v26, v12);
      v16 = v27;
      if (v27)
      {
        [v27 setSignpostId:a6];
        [(GEODefaultsServer *)self removeChangeListenerForWithRequest:v16];
        goto LABEL_54;
      }

      goto LABEL_57;
    }

    if (v13 != 2996)
    {
      goto LABEL_56;
    }

    if ((sub_100001548(self, v12) & 1) == 0)
    {
      v22 = objc_opt_class();
      v23 = sub_100001388(@"defaults", v10, v11, v22, v12);
      v16 = v23;
      if (v23)
      {
        [v23 setSignpostId:a6];
        [(GEODefaultsServer *)self getCompanionSyncValuesForKeysWithRequest:v16];
        goto LABEL_54;
      }

      goto LABEL_57;
    }

    goto LABEL_51;
  }

  if (v13 == 2031)
  {
    if ((sub_100001548(self, v12) & 1) == 0)
    {
      v24 = objc_opt_class();
      v25 = sub_100001388(@"defaults", v10, v11, v24, v12);
      v16 = v25;
      if (v25)
      {
        [v25 setSignpostId:a6];
        [(GEODefaultsServer *)self setConfigValueForKeyWithRequest:v16];
        goto LABEL_54;
      }

      goto LABEL_57;
    }

    goto LABEL_51;
  }

  if (v13 == 2213)
  {
    if ((sub_100001548(self, v12) & 1) == 0)
    {
      v15 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
      v16 = v15;
      if (v15)
      {
        [v15 setSignpostId:a6];
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

- (void)migrageEntitledKeyWithRequest:(id)a3
{
  v3 = a3;
  v4 = _GEOConfigProxy();
  v7 = [v4 configStoreForOptions:{objc_msgSend(v3, "keyOptions")}];

  v5 = [v3 keyString];
  [v3 keyOptions];

  v6 = GEOConfig_migrateEntitledKey();
}

- (void)setConfigValueForKeyWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOConfigStorageSetValueForKeyReply alloc] initWithRequest:v4];
  v6 = [v4 keyString];
  v7 = GEOConfig_keyRequiresEntitlement();
  if (v7)
  {
    v8 = [v4 preferredAuditToken];
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
  v16 = [v4 peer];
  v26[0] = v10;
  v17 = [(GEODefaultsServer *)self _validatePeer:v16 canSetKey:v6 error:v26];
  v10 = v26[0];

  if ((v17 & 1) == 0)
  {
    v11 = GEOGetUserDefaultsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v28 = v6;
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

  v18 = [v4 keyOptions];
  v19 = _GEOConfigProxy();
  v20 = [v19 configStoreForOptions:v18];

  v21 = [v20 getConfigValueForKey:v6 countryCode:0 options:v18 source:0];
  v22 = [v4 keyValue];
  v23 = v22;
  if (v21)
  {
    v24 = 0;
  }

  else
  {
    v24 = v7;
  }

  if (v24 == 1 && v22)
  {
    GEOConfig_createEntitledKeyPathForKey();
  }

  v25 = GEOGetUserDefaultsLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v28 = v6;
    v29 = 1024;
    LODWORD(v30[0]) = v18;
    WORD2(v30[0]) = 2112;
    *(v30 + 6) = v23;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Setting value for key: %@ (%#x) = %@", buf, 0x1Cu);
  }

  [v20 setConfigValue:v23 forKey:v6 options:v18 synchronous:1];
  [v5 send];

LABEL_20:
}

- (void)getConfigValueForKeyWithRequest:(id)a3
{
  v3 = a3;
  v4 = [[GEOConfigStorageGetValueForKeyReply alloc] initWithRequest:v3];
  v5 = [v3 keyString];
  v6 = [v3 preferredAuditToken];
  v7 = GEOConfig_validateEntitlementForKey();
  v8 = 0;

  if (v7)
  {
    v9 = [v3 keyOptions];
    v10 = _GEOConfigProxy();
    v11 = [v10 configStoreForOptions:v9];

    *buf = 0;
    v12 = [v3 countryCode];
    v13 = [v11 getConfigValueForKey:v5 countryCode:v12 options:v9 source:buf];
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

- (void)removeChangeListenerForWithRequest:(id)a3
{
  v4 = a3;
  peersIsolater = self->_peersIsolater;
  v7 = v4;
  v6 = v4;
  geo_isolate_sync();
}

- (void)addChangeListenerForWithRequest:(id)a3
{
  v4 = a3;
  peersIsolater = self->_peersIsolater;
  v7 = v4;
  v6 = v4;
  geo_isolate_sync();
}

- (void)peerDidDisconnect:(id)a3
{
  v4 = a3;
  peersIsolater = self->_peersIsolater;
  v7 = v4;
  v6 = v4;
  geo_isolate_sync();
}

- (void)peerDidConnect:(id)a3
{
  v4 = a3;
  peersIsolater = self->_peersIsolater;
  v7 = v4;
  v6 = v4;
  geo_isolate_sync();
}

- (void)runBackgroundTask:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  GEOBackgroundTaskReportReportTaskInitiated();

  v5 = [v3 identifier];
  v6 = [v5 isEqual:GEOMapsAuthBackgroundTaskIdentifier];

  if (v6)
  {
    v7 = +[GEOMapsAuthServiceHelper sharedAuthHelper];
    [v7 refreshFromTask:v3];
  }

  else
  {
    v8 = [v3 identifier];
    v9 = [v8 isEqual:GEOUpdateNetworkDefaultsTaskIdentifier];

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
      v10 = v3;
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

- (void)setExpiringKeyWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 peer];
  v6 = [v4 keyString];
  v12 = 0;
  LODWORD(self) = [(GEODefaultsServer *)self _validatePeer:v5 canSetKey:v6 error:&v12];

  if (self)
  {
    v7 = _GEOConfigProxy();
    v8 = [v7 configExpiryForOptions:{objc_msgSend(v4, "keyOptions")}];

    v9 = [v4 keyString];
    v10 = [v4 expireTime];
    v11 = [v4 expireOSVersion];
    [v8 setConfigKeyExpiry:v9 date:v10 osVersion:v11];
  }
}

- (void)getAllExpiringKeysWithRequest:(id)a3
{
  v3 = a3;
  v8 = [[GEOConfigGetExpiringKeysReply alloc] initWithRequest:v3];
  v4 = _GEOConfigProxy();
  v5 = [v3 keyOptions];

  v6 = [v4 configExpiryForOptions:v5];

  v7 = [v6 getAllExpiringKeys];
  [v8 setExpiringKeys:v7];

  [v8 send];
}

- (void)getCompanionSyncValuesForKeysWithRequest:(id)a3
{
  v3 = a3;
  v7 = [[GEOConfigGetCompanionSyncValuesForKeysReply alloc] initWithRequest:v3];
  v4 = [v3 keyStrings];

  v5 = [NSSet setWithArray:v4];
  v6 = GEOGetValuesForKeysForCompanionSync();
  [v7 setKeyStringsAndValues:v6];

  [v7 send];
}

- (void)setAllValuesInStoreWithRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 peer];
  v5 = [v4 hasEntitlement:@"com.apple.geoservices.setanydefault"];

  if (v5)
  {
    [v3 keyOptions];
    v6 = [v3 keyStringsAndValues];
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

- (void)getAllValuesInStoreWithRequest:(id)a3
{
  v3 = a3;
  v7 = [[GEOConfigGetAllValueInStoreReply alloc] initWithRequest:v3];
  [v3 keyOptions];
  v4 = _GEOGetAllValuesInStore();
  v5 = [v3 preferredAuditToken];

  v6 = GEOConfig_pruneEntitledKeysForAuditToken();
  [v7 setKeyStringsAndValues:v6];

  [v7 send];
}

- (void)clearExpiredKeyWithRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 keyString];
  [v3 keyOptions];

  _GEOConfigClearExpiredKey();
}

- (void)_notifyListenersOfKeysChange:(id)a3 options:(unint64_t)a4 postInternalNotification:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if ([v8 count])
  {
    if (v5)
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
    v26 = self;
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
      v13 = *&v6 & 0xFFF000;
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
          v16 = v8;
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

- (void)_expiringKeysChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"keys"];

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

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"options"];
  v9 = [v8 unsignedIntegerValue];

  if (!v9)
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
  v28 = self;
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
    v14 = v9 & 0xFFF000;
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

- (void)_configKeysChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 object];

  if (v5 != self)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"options"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v8 = [v7 integerValue]) != 0)
    {
      v9 = v8;
      v10 = [v4 userInfo];
      v11 = [v10 objectForKeyedSubscript:@"keys"];
      [(GEODefaultsServer *)self _notifyListenersOfKeysChange:v11 options:v9 postInternalNotification:0];
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: options != GEOConfigOption_None", v12, 2u);
    }
  }
}

- (void)resetAllDefaultsWithMessage:(id)a3
{
  v3 = a3;
  _GEOResetAllDefaults();
  [v3 sendReply:&__NSDictionary0__struct];
}

- (void)updateNetworkDefaultsWithMessage:(id)a3
{
  v3 = a3;
  v4 = GEOGetUserDefaultsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Updating network defaults", buf, 2u);
  }

  v5 = [v3 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"reason"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 4;
  }

  v8 = +[GEONetworkDefaults sharedNetworkDefaults];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100031B18;
  v10[3] = &unk_100083EC0;
  v11 = v3;
  v9 = v3;
  [v8 updateNetworkDefaultsWithReason:v7 completionHandler:v10];
}

- (BOOL)_validatePeer:(id)a3 canSetKey:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (![v8 length])
  {
    v10 = 0;
    goto LABEL_9;
  }

  v9 = +[GEODefaultsServer _acceptableKeys];
  v10 = [v9 containsObject:v8];
  if (v10)
  {
    goto LABEL_8;
  }

  v11 = [v7 hasEntitlement:@"com.apple.geoservices.setanydefault"];

  if ((v11 & 1) == 0 && (![v8 isEqualToString:GEOAddressCorrectionAuthorizationStatusKey] || (objc_msgSend(v7, "hasEntitlement:", @"com.apple.CoreRoutine.preferences") & 1) == 0))
  {
    v9 = [NSString stringWithFormat:@"Cannot set value for invalid key: %@, missing entitlement?", v8];
    *a5 = [NSError GEOErrorWithCode:-10 reason:v9];
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

- (GEODefaultsServer)initWithDaemon:(id)a3
{
  v18.receiver = self;
  v18.super_class = GEODefaultsServer;
  v3 = [(GEODefaultsServer *)&v18 initWithDaemon:a3];
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
    v2 = [sub_10001FF30() sharedScheduler];
    v3 = GEOUpdateNetworkDefaultsTaskIdentifier;
    v4 = [v2 taskRequestForIdentifier:GEOUpdateNetworkDefaultsTaskIdentifier];
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
      v6 = [v2 submitTaskRequest:v5 error:&v10];
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