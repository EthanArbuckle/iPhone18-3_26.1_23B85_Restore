@interface CHIDSServiceDelegate
- (CHIDSServiceDelegate)initWithDatabase:(id)a3;
- (void)checkForBootstrapDeviceChanges;
- (void)dealloc;
- (void)devicesChanged:(id)a3 shouldRemoveUnregisteredDevices:(BOOL)a4;
- (void)handleTransactionData:(id)a3 withConfigurationData:(id)a4;
- (void)rememberBootstrappedDevices:(id)a3;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 nearbyDevicesChanged:(id)a4;
- (void)setupBootstrappedDevices;
- (void)startInitialSync;
- (void)startReunionSync;
- (void)update:(id)a3;
@end

@implementation CHIDSServiceDelegate

- (CHIDSServiceDelegate)initWithDatabase:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = CHIDSServiceDelegate;
  v6 = [(CHIDSServiceDelegate *)&v22 initWithName:"IDSService"];
  v7 = v6;
  if (v6)
  {
    v8 = [(CHIDSServiceDelegate *)v6 logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = @"com.apple.private.alloy.callhistorysync";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating service with identifier %{public}@", buf, 0xCu);
    }

    v9 = [NSString stringWithFormat:@"%@.devices", @"com.apple.private.alloy.callhistorysync"];
    [(CHIDSServiceDelegate *)v7 setPersistedDeviceListKey:v9];

    v10 = objc_opt_new();
    peerDevices = v7->_peerDevices;
    v7->_peerDevices = v10;

    v7->_configuration = sub_100017700();
    objc_storeStrong(&v7->_database, a3);
    v12 = [[CHPairedSyncCoordinator alloc] initWithDelegate:v7];
    coordinator = v7->_coordinator;
    v7->_coordinator = v12;

    v14 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.callhistorysync"];
    service = v7->_service;
    v7->_service = v14;

    v16 = v7->_service;
    v17 = [(CHIDSServiceDelegate *)v7 queue];
    [(IDSService *)v16 addDelegate:v7 queue:v17];

    xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_100051658);
    [(CHIDSServiceDelegate *)v7 setupBootstrappedDevices];
    v18 = [(CHIDSServiceDelegate *)v7 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001958C;
    block[3] = &unk_100050FA0;
    v21 = v7;
    dispatch_async(v18, block);
  }

  return v7;
}

- (void)dealloc
{
  [(IDSService *)self->_service removeDelegate:self];
  v3.receiver = self;
  v3.super_class = CHIDSServiceDelegate;
  [(CHIDSServiceDelegate *)&v3 dealloc];
}

- (void)update:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019BD8;
  v4[3] = &unk_100050E90;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(CHIDSServiceDelegate *)v5 execute:v4];
}

- (void)setupBootstrappedDevices
{
  if (self->_configuration == 1)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [(CHIDSServiceDelegate *)self persistedDeviceListKey];
    v13 = v4;
    v14 = &__NSArray0__struct;
    v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v3 registerDefaults:v5];

    v6 = [(CHIDSServiceDelegate *)self persistedDeviceListKey];
    v7 = [v3 arrayForKey:v6];
    [(CHIDSServiceDelegate *)self setBootstrappedDeviceUuids:v7];

    v8 = [(CHIDSServiceDelegate *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(CHIDSServiceDelegate *)self bootstrappedDeviceUuids];
      v11 = 134217984;
      v12 = [v9 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Initial set of bootstrapped uuids %lu", &v11, 0xCu);
    }

    v10 = [(CHIDSServiceDelegate *)self bootstrappedDeviceUuids];
    sub_100019F14(v10);
  }
}

- (void)rememberBootstrappedDevices:(id)a3
{
  v4 = a3;
  v5 = [(CHIDSServiceDelegate *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = [v4 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remembering %lu bootstrapped devices", &v8, 0xCu);
  }

  sub_100019F14(v4);
  [(CHIDSServiceDelegate *)self setBootstrappedDeviceUuids:v4];
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [(CHIDSServiceDelegate *)self persistedDeviceListKey];
  [v6 setObject:v4 forKey:v7];

  [v6 synchronize];
}

- (void)checkForBootstrapDeviceChanges
{
  v3 = [(CHIDSServiceDelegate *)self queue];
  dispatch_assert_queue_V2(v3);

  if (self->_configuration == 1)
  {
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = objc_opt_new();
    obj = self->_peerDevices;
    v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (!v4)
    {
      goto LABEL_19;
    }

    v6 = v4;
    v7 = *v23;
    *&v5 = 138543362;
    v19 = v5;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:*(*(&v22 + 1) + 8 * i), v19];
        v10 = [v9 device];
        v11 = [v10 uniqueIDOverride];
        v12 = [(CHIDSServiceDelegate *)self bootstrappedDeviceUuids];
        v13 = [v12 containsObject:v11];

        if (v13)
        {
          [v21 addObject:v11];
          v14 = [(CHIDSServiceDelegate *)self logHandle];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v10 name];
            v16 = [v10 modelIdentifier];
            *buf = 138412802;
            v27 = v11;
            v28 = 2112;
            v29 = v15;
            v30 = 2112;
            v31 = v16;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Already sent bootstrap data store device(%@) to name(%@) model(%@)", buf, 0x20u);
          }

LABEL_16:

          goto LABEL_17;
        }

        v17 = [(CHPairedSyncCoordinator *)self->_coordinator isSessionActive];
        v14 = [(CHIDSServiceDelegate *)self logHandle];
        v18 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (!v17)
        {
          if (v18)
          {
            *buf = v19;
            v27 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Delaying bootstrapping of device %{public}@ until Paired Sync Coordinator starts", buf, 0xCu);
          }

          goto LABEL_16;
        }

        if (v18)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Paired Sync Coordinator already requested a full sync, starting sync now", buf, 2u);
        }

        [v21 addObject:v11];
        [v9 sendBootstrapDataStoreWithService:self->_service];
LABEL_17:
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (!v6)
      {
LABEL_19:

        [(CHIDSServiceDelegate *)self rememberBootstrappedDevices:v21];
        return;
      }
    }
  }
}

- (void)handleTransactionData:(id)a3 withConfigurationData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CHIDSServiceDelegate *)self logHandle];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handling transaction data", buf, 2u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v7 intValue] == 1 && self->_configuration == 1)
      {
        v9 = [(CHIDSServiceDelegate *)self logHandle];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Dropping transaction from peer IDS device configured as server", v29, 2u);
        }
      }

      else
      {
        v9 = [[PBDataReader alloc] initWithData:v6];
        v24 = objc_opt_new();
        sub_100009474(v24, v9);
        v25 = sub_10001CB84(v24);
        v26 = objc_opt_new();
        [v26 setObject:v25 forKeyedSubscript:@"kCHRemoteTransactionsKey"];
        v27 = [[NSNumber alloc] initWithInt:2];
        [v26 setObject:v27 forKeyedSubscript:@"kCHSyncSourceKey"];

        v28 = +[NSNotificationCenter defaultCenter];
        [v28 postNotificationName:@"kCallHistoryMergeRemoteTransactionsNotification" object:0 userInfo:v26];
      }
    }

    else
    {
      v9 = [(CHIDSServiceDelegate *)self logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100033CA0(v9, v17, v18, v19, v20, v21, v22, v23);
      }
    }
  }

  else
  {
    v9 = [(CHIDSServiceDelegate *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100033C28(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(CHIDSServiceDelegate *)self queue];
  dispatch_assert_queue_V2(v17);

  v18 = [(CHIDSServiceDelegate *)self logHandle];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v38 = 138544386;
    v39 = v12;
    v40 = 2114;
    v41 = v13;
    v42 = 2114;
    v43 = v14;
    v44 = 2114;
    v45 = v15;
    v46 = 2114;
    v47 = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received service %{public}@ account %{public}@ incoming message: %{public}@ fromID: %{public}@ context: %{public}@", &v38, 0x34u);
  }

  if (self->_configuration)
  {
    v19 = [v14 objectForKeyedSubscript:@"ProtobufTransactions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v22 = [(CHIDSServiceDelegate *)self logHandle];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100033D18(v14, v22, v23, v24, v25, v26, v27, v28);
      }

      v20 = 0;
    }

    v29 = [v14 objectForKeyedSubscript:@"Configuration"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
      v21 = v30;
      if (v20 && v30)
      {
        [(CHIDSServiceDelegate *)self handleTransactionData:v20 withConfigurationData:v30];
      }
    }

    else
    {
      v31 = [(CHIDSServiceDelegate *)self logHandle];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_100033D84(v14, v31, v32, v33, v34, v35, v36, v37);
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = [(CHIDSServiceDelegate *)self logHandle];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v38) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "IDS service disabled, dropping message!", &v38, 2u);
    }
  }
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v5 = a4;
  v6 = [(CHIDSServiceDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CHIDSServiceDelegate *)self logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    peerDevices = self->_peerDevices;
    if (peerDevices)
    {
      v9 = [(NSMutableDictionary *)peerDevices count];
      if (v5)
      {
LABEL_4:
        v10 = [v5 count];
LABEL_7:
        v11 = 134218240;
        v12 = v9;
        v13 = 2048;
        v14 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device registration change: had %lu devices, now have %lu devices", &v11, 0x16u);
        goto LABEL_8;
      }
    }

    else
    {
      v9 = 0;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v10 = 0;
    goto LABEL_7;
  }

LABEL_8:

  [(CHIDSServiceDelegate *)self devicesChanged:v5 shouldRemoveUnregisteredDevices:1];
  [(CHIDSServiceDelegate *)self checkForBootstrapDeviceChanges];
}

- (void)service:(id)a3 nearbyDevicesChanged:(id)a4
{
  v5 = a4;
  v6 = [(CHIDSServiceDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CHIDSServiceDelegate *)self logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Nearby devices changed", v8, 2u);
  }

  [(CHIDSServiceDelegate *)self devicesChanged:v5 shouldRemoveUnregisteredDevices:0];
  [(CHIDSServiceDelegate *)self checkForBootstrapDeviceChanges];
}

- (void)devicesChanged:(id)a3 shouldRemoveUnregisteredDevices:(BOOL)a4
{
  v67 = a3;
  v5 = [(CHIDSServiceDelegate *)self queue];
  dispatch_assert_queue_V2(v5);

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v6 = self->_peerDevices;
  v69 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v78 objects:v88 count:16];
  if (!v69)
  {

    v63 = 0;
    goto LABEL_29;
  }

  v63 = 0;
  v65 = *v79;
  *&v7 = 138543618;
  v61 = v7;
  v66 = self;
  obj = v6;
  do
  {
    for (i = 0; i != v69; i = i + 1)
    {
      if (*v79 != v65)
      {
        objc_enumerationMutation(obj);
      }

      v9 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:*(*(&v78 + 1) + 8 * i), v61];
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v10 = v67;
      v11 = [v10 countByEnumeratingWithState:&v74 objects:v87 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v75;
        while (2)
        {
          for (j = 0; j != v12; j = j + 1)
          {
            if (*v75 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v74 + 1) + 8 * j);
            v16 = [v9 device];
            v17 = [v16 uniqueIDOverride];
            v18 = [v15 uniqueIDOverride];
            v19 = [v17 isEqualToString:v18];

            if (v19)
            {
              self = v66;
              goto LABEL_23;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v74 objects:v87 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      if (!a4)
      {
        [v9 setStatus:0];
        self = v66;
        v10 = [(CHIDSServiceDelegate *)v66 logHandle];
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_23;
        }

        v23 = [v9 device];
        v24 = [v23 uniqueIDOverride];
        v28 = sub_10001D0E0([v9 status]);
        *buf = v61;
        v84 = v24;
        v85 = 2082;
        v86 = v28;
        v25 = v10;
        v26 = "Device %{public}@ disappeared, set status to %{public}s";
        v27 = 22;
        goto LABEL_22;
      }

      self = v66;
      v20 = v63;
      if (!v63)
      {
        v20 = objc_opt_new();
      }

      v21 = [v9 device];
      v22 = [v21 uniqueIDOverride];
      v63 = v20;
      [v20 addObject:v22];

      v10 = [(CHIDSServiceDelegate *)v66 logHandle];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v9 device];
        v24 = [v23 uniqueIDOverride];
        *buf = 138543362;
        v84 = v24;
        v25 = v10;
        v26 = "Device %{public}@ unregistered, removing from bootstrap list";
        v27 = 12;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);
      }

LABEL_23:
    }

    v69 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v78 objects:v88 count:16];
  }

  while (v69);

  if (v63)
  {
    [(NSMutableDictionary *)self->_peerDevices removeObjectsForKeys:?];
  }

  else
  {
    v63 = 0;
  }

LABEL_29:
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v29 = v67;
  v30 = [v29 countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = &_mh_execute_header;
    v33 = *v71;
    do
    {
      v34 = 0;
      v68 = v31;
      do
      {
        if (*v71 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v70 + 1) + 8 * v34);
        if ([v35 isDefaultPairedDevice])
        {
          peerDevices = self->_peerDevices;
          v37 = [v35 uniqueIDOverride];
          v38 = [(NSMutableDictionary *)peerDevices objectForKeyedSubscript:v37];

          if (v38)
          {
            if ([v38 status])
            {
              v39 = [(CHIDSServiceDelegate *)self logHandle];
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v40 = [v35 uniqueIDOverride];
                v41 = sub_10001D0E0([v38 status]);
                *buf = 138543618;
                v84 = v40;
                v85 = 2082;
                v86 = v41;
                v42 = v32;
                v43 = v39;
                v44 = "Device %{public}@ status remaining at %{public}s";
                goto LABEL_50;
              }

              goto LABEL_51;
            }

            if (![v35 isNearby])
            {
              v39 = [(CHIDSServiceDelegate *)self logHandle];
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v40 = [v35 uniqueIDOverride];
                v60 = sub_10001D0E0([v38 status]);
                *buf = 138543618;
                v84 = v40;
                v85 = 2082;
                v86 = v60;
                v42 = v32;
                v43 = v39;
                v44 = "Device %{public}@ is NOT nearby, leaving status as %{public}s";
LABEL_50:
                _os_log_impl(v42, v43, OS_LOG_TYPE_DEFAULT, v44, buf, 0x16u);
              }

LABEL_51:

              goto LABEL_52;
            }

            [v38 setStatus:2];
            v57 = [(CHIDSServiceDelegate *)self logHandle];
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v58 = [v35 uniqueIDOverride];
              v59 = sub_10001D0E0([v38 status]);
              *buf = 138543618;
              v84 = v58;
              v85 = 2082;
              v86 = v59;
              _os_log_impl(v32, v57, OS_LOG_TYPE_DEFAULT, "Device %{public}@ is nearby, changing status to %{public}s", buf, 0x16u);
            }

            [v38 flushTransactionsWithService:self->_service];
          }

          else
          {
            v47 = v33;
            v48 = v29;
            v49 = [(CHIDSServiceDelegate *)self logHandle];
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v50 = [v35 uniqueIDOverride];
              *buf = 138543362;
              v84 = v50;
              _os_log_impl(v32, v49, OS_LOG_TYPE_DEFAULT, "Adding new peer device %{public}@", buf, 0xCu);
            }

            v51 = [[CHIDSPeerDevice alloc] initWithDevice:v35 withPairedSyncCoordinator:self->_coordinator withConfiguration:self->_configuration];
            service = self->_service;
            [(CHIDSServiceDelegate *)self queue];
            v54 = v53 = v32;
            [(IDSService *)service addDelegate:v51 queue:v54];

            v32 = v53;
            v55 = self->_peerDevices;
            v56 = [v35 uniqueIDOverride];
            [(NSMutableDictionary *)v55 setObject:v51 forKey:v56];

            v29 = v48;
            v33 = v47;
            v31 = v68;
          }
        }

        else
        {
          v38 = [(CHIDSServiceDelegate *)self logHandle];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [v35 name];
            v46 = [v35 uniqueIDOverride];
            *buf = 138543618;
            v84 = v45;
            v85 = 2114;
            v86 = v46;
            _os_log_impl(v32, v38, OS_LOG_TYPE_DEFAULT, "Skipping device (not default-paired) name(%{public}@) id(%{public}@)", buf, 0x16u);
          }
        }

LABEL_52:

        v34 = v34 + 1;
      }

      while (v31 != v34);
      v31 = [v29 countByEnumeratingWithState:&v70 objects:v82 count:16];
    }

    while (v31);
  }

  sub_100019894(self->_peerDevices);
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v5 = a4;
  v6 = [(CHIDSServiceDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CHIDSServiceDelegate *)self logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v33 = [v5 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "activeAccountsChanged: %lu", buf, 0xCu);
  }

  v8 = v5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:buf count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v23;
    *&v10 = 138412802;
    v21 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        v15 = +[CHLogServer sharedInstance];
        v16 = [v15 logHandleForDomain:"IDSService"];

        v17 = v16;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v14 loginID];
          v19 = [v14 serviceName];
          v20 = [v14 isActive];
          *v26 = v21;
          v27 = v18;
          v28 = 2112;
          v29 = v19;
          v30 = 1024;
          v31 = v20;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "loginID(%@) serviceName(%@) isActive(%d)", v26, 0x1Cu);
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v22 objects:buf count:16];
    }

    while (v11);
  }
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a5;
  v10 = a6;
  v11 = [(CHIDSServiceDelegate *)self queue];
  dispatch_assert_queue_V2(v11);

  configuration = self->_configuration;
  v13 = [(CHIDSServiceDelegate *)self logHandle];
  v14 = v13;
  if (configuration == 2)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "incomingResourceAtURL(%{public}@) from %{public}@", &v16, 0x16u);
    }

    v14 = os_transaction_create();
    if ([(CallHistoryDBClientHandle *)self->_database moveCallRecordsFromDatabaseAtURL:v9])
    {
      v15 = [(CHIDSServiceDelegate *)self logHandle];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Successfully migrated bootstrap data store", &v16, 2u);
      }
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100033DF0(v9, &self->_configuration, v14);
  }
}

- (void)startInitialSync
{
  v3 = [(CHIDSServiceDelegate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B8C0;
  block[3] = &unk_100050FA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)startReunionSync
{
  v3 = [(CHIDSServiceDelegate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BD6C;
  block[3] = &unk_100050FA0;
  block[4] = self;
  dispatch_async(v3, block);
}

@end