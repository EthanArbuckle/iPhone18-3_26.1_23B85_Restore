@interface CWFWiFiNetworkSharingStore
- (CWFWiFiNetworkSharingStore)init;
- (id)clientIDs;
- (id)networkMetadataForClientID:(id)a3;
- (id)networkMetadataForClientID:(id)a3 networkID:(id)a4;
- (unint64_t)acknowledgedNetworksUpdateCounterForClientID:(id)a3;
- (unint64_t)cachedAuthorizationStatusForClientID:(id)a3;
- (unint64_t)networkListUpdateCounterForClientID:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)incrementNetworksUpdateCounterForClientID:(id)a3;
- (void)setAcknowledgedNetworksUpdateCounter:(unint64_t)a3 clientID:(id)a4;
- (void)setCachedAuthorizationStatus:(unint64_t)a3 clientID:(id)a4;
- (void)setNetworkMetadata:(id)a3 clientID:(id)a4 networkID:(id)a5;
@end

@implementation CWFWiFiNetworkSharingStore

- (CWFWiFiNetworkSharingStore)init
{
  v6.receiver = self;
  v6.super_class = CWFWiFiNetworkSharingStore;
  v2 = [(CWFWiFiNetworkSharingStore *)&v6 init];
  if (!v2 || (v3 = [[CWFKeyValueStore alloc] initWithType:4 identifier:@"com.apple.wifi.network-sharing"], store = v2->_store, v2->_store = v3, store, !v2->_store))
  {

    return 0;
  }

  return v2;
}

- (void)activateWithCompletion:(id)a3
{
  v5 = a3;
  [(CWFKeyValueStore *)self->_store activate];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
    v4 = v5;
  }
}

- (id)clientIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(CWFKeyValueStore *)self->_store dictionaryRepresentation];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D25E04;
  v7[3] = &unk_1E86E9798;
  v5 = v3;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (unint64_t)cachedAuthorizationStatusForClientID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    store = v5->_store;
    v7 = [v4 bundleID];
    v8 = [(CWFKeyValueStore *)store objectForKey:v7];
    v9 = [v4 accessoryID];
    v10 = [v8 objectForKey:v9];
    v11 = [v10 objectForKey:@"authorizationStatus"];
    v12 = [v11 unsignedIntegerValue];

    objc_sync_exit(v5);
  }

  else
  {
    v15 = CWFGetOSLog();
    if (v15)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)setCachedAuthorizationStatus:(unint64_t)a3 clientID:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    store = v7->_store;
    v9 = [v6 bundleID];
    v10 = [(CWFKeyValueStore *)store objectForKey:v9];
    v11 = [v10 mutableCopy];

    if (!v11)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
    }

    v12 = [v6 accessoryID];
    v13 = [v11 objectForKey:v12];
    v14 = [v13 mutableCopy];

    if (!v14)
    {
      v14 = [MEMORY[0x1E695DF90] dictionary];
    }

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v14 setObject:v15 forKey:@"authorizationStatus"];

    v16 = [v6 accessoryID];
    [v11 setObject:v14 forKey:v16];

    v17 = v7->_store;
    v18 = [v6 bundleID];
    [(CWFKeyValueStore *)v17 setObject:v11 forKey:v18];

    objc_sync_exit(v7);
  }

  else
  {
    v20 = CWFGetOSLog();
    if (v20)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (unint64_t)networkListUpdateCounterForClientID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    store = v5->_store;
    v7 = [v4 bundleID];
    v8 = [(CWFKeyValueStore *)store objectForKey:v7];
    v9 = [v4 accessoryID];
    v10 = [v8 objectForKey:v9];
    v11 = [v10 objectForKey:@"networkListUpdateCounter"];
    v12 = [v11 unsignedIntegerValue];

    objc_sync_exit(v5);
  }

  else
  {
    v15 = CWFGetOSLog();
    if (v15)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)incrementNetworksUpdateCounterForClientID:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    store = v5->_store;
    v7 = [v4 bundleID];
    v8 = [(CWFKeyValueStore *)store objectForKey:v7];
    v9 = [v8 mutableCopy];

    if (!v9)
    {
      v9 = [MEMORY[0x1E695DF90] dictionary];
    }

    v10 = [v4 accessoryID];
    v11 = [v9 objectForKey:v10];
    v12 = [v11 mutableCopy];

    if (!v12)
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
    }

    v13 = [v12 objectForKeyedSubscript:@"networkListUpdateCounter"];
    v14 = [v13 unsignedIntegerValue];

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14 + 1];
    [v12 setObject:v15 forKey:@"networkListUpdateCounter"];

    v16 = [v4 accessoryID];
    [v9 setObject:v12 forKey:v16];

    v17 = v5->_store;
    v18 = [v4 bundleID];
    [(CWFKeyValueStore *)v17 setObject:v9 forKey:v18];

    objc_sync_exit(v5);
  }

  else
  {
    v20 = CWFGetOSLog();
    if (v20)
    {
      v21 = CWFGetOSLog();
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (unint64_t)acknowledgedNetworksUpdateCounterForClientID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    store = v5->_store;
    v7 = [v4 bundleID];
    v8 = [(CWFKeyValueStore *)store objectForKey:v7];
    v9 = [v4 accessoryID];
    v10 = [v8 objectForKey:v9];
    v11 = [v10 objectForKey:@"acknowledgedNetworksUpdateCounter"];
    v12 = [v11 unsignedIntegerValue];

    objc_sync_exit(v5);
  }

  else
  {
    v15 = CWFGetOSLog();
    if (v15)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)setAcknowledgedNetworksUpdateCounter:(unint64_t)a3 clientID:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    store = v7->_store;
    v9 = [v6 bundleID];
    v10 = [(CWFKeyValueStore *)store objectForKey:v9];
    v11 = [v10 mutableCopy];

    if (!v11)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
    }

    v12 = [v6 accessoryID];
    v13 = [v11 objectForKey:v12];
    v14 = [v13 mutableCopy];

    if (!v14)
    {
      v14 = [MEMORY[0x1E695DF90] dictionary];
    }

    v15 = [v14 objectForKey:@"acknowledgedNetworksUpdateCounter"];
    v16 = [v15 unsignedIntegerValue];

    if (v16 < a3)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v14 setObject:v17 forKey:@"acknowledgedNetworksUpdateCounter"];

      v18 = [v6 accessoryID];
      [v11 setObject:v14 forKey:v18];

      v19 = v7->_store;
      v20 = [v6 bundleID];
      [(CWFKeyValueStore *)v19 setObject:v11 forKey:v20];
    }

    objc_sync_exit(v7);
  }

  else
  {
    v22 = CWFGetOSLog();
    if (v22)
    {
      v23 = CWFGetOSLog();
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      _os_log_send_and_compose_impl();
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)networkMetadataForClientID:(id)a3 networkID:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v30 = CWFGetOSLog();
    if (v30)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v38 = 136446722;
    v39 = "[CWFWiFiNetworkSharingStore networkMetadataForClientID:networkID:]";
    v40 = 2082;
    v41 = "CWFWiFiNetworkSharingStore.m";
    v42 = 1024;
    v43 = 239;
    goto LABEL_34;
  }

  if (!v7)
  {
    v31 = CWFGetOSLog();
    if (v31)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v38 = 136446722;
    v39 = "[CWFWiFiNetworkSharingStore networkMetadataForClientID:networkID:]";
    v40 = 2082;
    v41 = "CWFWiFiNetworkSharingStore.m";
    v42 = 1024;
    v43 = 240;
    goto LABEL_34;
  }

  v9 = [v7 descriptor];
  if (!v9)
  {
    v32 = CWFGetOSLog();
    if (v32)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v35 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v38 = 136446722;
    v39 = "[CWFWiFiNetworkSharingStore networkMetadataForClientID:networkID:]";
    v40 = 2082;
    v41 = "CWFWiFiNetworkSharingStore.m";
    v42 = 1024;
    v43 = 243;
LABEL_34:
    _os_log_send_and_compose_impl();
LABEL_35:
    v9 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  v10 = self;
  objc_sync_enter(v10);
  store = v10->_store;
  v12 = [v6 bundleID];
  v13 = [(CWFKeyValueStore *)store objectForKey:v12];
  v14 = [v6 accessoryID];
  v15 = [v13 objectForKey:v14];
  v16 = [v15 objectForKey:@"networkMetadata"];
  v17 = [v16 objectForKey:v9];

  if (v17)
  {
    v18 = objc_alloc_init(CWFWiFiNetworkSharingNetworkMetadata);
    v19 = [v17 objectForKeyedSubscript:@"firstSharedDate"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v18 setFirstSharedDate:v19];

    v20 = [v17 objectForKeyedSubscript:@"mostRecentlySharedDate"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v18 setMostRecentlySharedDate:v20];

    v21 = [v17 objectForKeyedSubscript:@"askToShareStatus"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v18 setAskToShareStatus:sub_1E0BF1EE8(v21)];

    v22 = [v17 objectForKeyedSubscript:@"askToShareStatusUpdatedTimestamp"];
    [(CWFWiFiNetworkSharingNetworkMetadata *)v18 setAskToShareStatusUpdatedTimestamp:v22];

    v23 = [v17 objectForKeyedSubscript:@"lastModifiedDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CWFWiFiNetworkSharingNetworkMetadata *)v18 setLastModifiedDate:v23];
    }

    else
    {
      v24 = CWFGetOSLog();
      if (v24)
      {
        v25 = CWFGetOSLog();
      }

      else
      {
        v25 = MEMORY[0x1E69E9C10];
        v26 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v38 = 136447234;
        v39 = "[CWFWiFiNetworkSharingStore networkMetadataForClientID:networkID:]";
        v40 = 2082;
        v41 = "CWFWiFiNetworkSharingStore.m";
        v42 = 1024;
        v43 = 259;
        v44 = 2112;
        v45 = @"lastModifiedDate";
        v46 = 2112;
        v47 = v23;
        LODWORD(v37) = 48;
        v36 = &v38;
        _os_log_send_and_compose_impl();
      }
    }

    v27 = [v17 objectForKeyedSubscript:{@"waitingForAssociation", v36, v37}];
    -[CWFWiFiNetworkSharingNetworkMetadata setWaitingForAssociation:](v18, "setWaitingForAssociation:", [v27 BOOLValue]);
  }

  else
  {
    v18 = 0;
  }

  objc_sync_exit(v10);
LABEL_16:

  v28 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)setNetworkMetadata:(id)a3 clientID:(id)a4 networkID:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    v33 = CWFGetOSLog();
    if (v33)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

LABEL_30:
    _os_log_send_and_compose_impl();
    goto LABEL_15;
  }

  if (!v10)
  {
    v34 = CWFGetOSLog();
    if (v34)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  v12 = [v10 descriptor];
  if (!v12)
  {
    v35 = CWFGetOSLog();
    if (v35)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v38 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  v13 = self;
  objc_sync_enter(v13);
  store = v13->_store;
  v15 = [v9 bundleID];
  v16 = [(CWFKeyValueStore *)store objectForKey:v15];
  v17 = [v16 mutableCopy];

  if (!v17)
  {
    v17 = [MEMORY[0x1E695DF90] dictionary];
  }

  v18 = [v9 accessoryID];
  v19 = [v17 objectForKey:v18];
  v20 = [v19 mutableCopy];

  if (!v20)
  {
    v20 = [MEMORY[0x1E695DF90] dictionary];
  }

  v21 = [v20 objectForKey:@"networkMetadata"];
  v22 = [v21 mutableCopy];

  if (!v22)
  {
    v22 = [MEMORY[0x1E695DF90] dictionary];
  }

  v39 = v11;
  if (v8)
  {
    v23 = [MEMORY[0x1E695DF90] dictionary];
    v24 = [v8 firstSharedDate];
    [v23 setObject:v24 forKeyedSubscript:@"firstSharedDate"];

    v25 = [v8 mostRecentlySharedDate];
    [v23 setObject:v25 forKeyedSubscript:@"mostRecentlySharedDate"];

    v26 = sub_1E0BF1E78([v8 askToShareStatus]);
    [v23 setObject:v26 forKeyedSubscript:@"askToShareStatus"];

    v27 = [v8 askToShareStatusUpdatedTimestamp];
    [v23 setObject:v27 forKeyedSubscript:@"askToShareStatusUpdatedTimestamp"];

    v28 = [v8 lastModifiedDate];
    [v23 setObject:v28 forKeyedSubscript:@"lastModifiedDate"];

    if ([v8 waitingForAssociation])
    {
      [v23 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"waitingForAssociation"];
    }
  }

  else
  {
    v23 = 0;
  }

  [v22 setObject:v23 forKeyedSubscript:v12];
  [v20 setObject:v22 forKeyedSubscript:@"networkMetadata"];
  v29 = [v9 accessoryID];
  [v17 setObject:v20 forKeyedSubscript:v29];

  v30 = v13->_store;
  v31 = [v9 bundleID];
  [(CWFKeyValueStore *)v30 setObject:v17 forKey:v31];

  objc_sync_exit(v13);
  v11 = v39;
LABEL_15:

  v32 = *MEMORY[0x1E69E9840];
}

- (id)networkMetadataForClientID:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    store = v5->_store;
    v7 = [v4 bundleID];
    v8 = [(CWFKeyValueStore *)store objectForKey:v7];
    v9 = [v4 accessoryID];
    v10 = [v8 objectForKey:v9];
    v11 = [v10 objectForKey:@"networkMetadata"];

    if (v11)
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1E0D27AAC;
      v18[3] = &unk_1E86E9798;
      v13 = v12;
      v19 = v13;
      [v11 enumerateKeysAndObjectsUsingBlock:v18];
    }

    else
    {
      v13 = 0;
    }

    objc_sync_exit(v5);
  }

  else
  {
    v16 = CWFGetOSLog();
    if (v16)
    {
      v5 = CWFGetOSLog();
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446722;
      v21 = "[CWFWiFiNetworkSharingStore networkMetadataForClientID:]";
      v22 = 2082;
      v23 = "CWFWiFiNetworkSharingStore.m";
      v24 = 1024;
      v25 = 331;
      _os_log_send_and_compose_impl();
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end