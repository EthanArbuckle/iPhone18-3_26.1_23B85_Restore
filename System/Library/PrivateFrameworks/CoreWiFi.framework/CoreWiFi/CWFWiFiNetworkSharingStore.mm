@interface CWFWiFiNetworkSharingStore
- (CWFWiFiNetworkSharingStore)init;
- (id)clientIDs;
- (id)networkMetadataForClientID:(id)d;
- (id)networkMetadataForClientID:(id)d networkID:(id)iD;
- (unint64_t)acknowledgedNetworksUpdateCounterForClientID:(id)d;
- (unint64_t)cachedAuthorizationStatusForClientID:(id)d;
- (unint64_t)networkListUpdateCounterForClientID:(id)d;
- (void)activateWithCompletion:(id)completion;
- (void)incrementNetworksUpdateCounterForClientID:(id)d;
- (void)setAcknowledgedNetworksUpdateCounter:(unint64_t)counter clientID:(id)d;
- (void)setCachedAuthorizationStatus:(unint64_t)status clientID:(id)d;
- (void)setNetworkMetadata:(id)metadata clientID:(id)d networkID:(id)iD;
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

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  [(CWFKeyValueStore *)self->_store activate];
  v4 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v4 = completionCopy;
  }
}

- (id)clientIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  dictionaryRepresentation = [(CWFKeyValueStore *)self->_store dictionaryRepresentation];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D25E04;
  v7[3] = &unk_1E86E9798;
  v5 = v3;
  v8 = v5;
  [dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (unint64_t)cachedAuthorizationStatusForClientID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    store = selfCopy->_store;
    bundleID = [dCopy bundleID];
    v8 = [(CWFKeyValueStore *)store objectForKey:bundleID];
    accessoryID = [dCopy accessoryID];
    v10 = [v8 objectForKey:accessoryID];
    v11 = [v10 objectForKey:@"authorizationStatus"];
    unsignedIntegerValue = [v11 unsignedIntegerValue];

    objc_sync_exit(selfCopy);
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

    unsignedIntegerValue = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return unsignedIntegerValue;
}

- (void)setCachedAuthorizationStatus:(unint64_t)status clientID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    store = selfCopy->_store;
    bundleID = [dCopy bundleID];
    v10 = [(CWFKeyValueStore *)store objectForKey:bundleID];
    dictionary = [v10 mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    accessoryID = [dCopy accessoryID];
    v13 = [dictionary objectForKey:accessoryID];
    dictionary2 = [v13 mutableCopy];

    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    }

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:status];
    [dictionary2 setObject:v15 forKey:@"authorizationStatus"];

    accessoryID2 = [dCopy accessoryID];
    [dictionary setObject:dictionary2 forKey:accessoryID2];

    v17 = selfCopy->_store;
    bundleID2 = [dCopy bundleID];
    [(CWFKeyValueStore *)v17 setObject:dictionary forKey:bundleID2];

    objc_sync_exit(selfCopy);
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

- (unint64_t)networkListUpdateCounterForClientID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    store = selfCopy->_store;
    bundleID = [dCopy bundleID];
    v8 = [(CWFKeyValueStore *)store objectForKey:bundleID];
    accessoryID = [dCopy accessoryID];
    v10 = [v8 objectForKey:accessoryID];
    v11 = [v10 objectForKey:@"networkListUpdateCounter"];
    unsignedIntegerValue = [v11 unsignedIntegerValue];

    objc_sync_exit(selfCopy);
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

    unsignedIntegerValue = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return unsignedIntegerValue;
}

- (void)incrementNetworksUpdateCounterForClientID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    store = selfCopy->_store;
    bundleID = [dCopy bundleID];
    v8 = [(CWFKeyValueStore *)store objectForKey:bundleID];
    dictionary = [v8 mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    accessoryID = [dCopy accessoryID];
    v11 = [dictionary objectForKey:accessoryID];
    dictionary2 = [v11 mutableCopy];

    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    }

    v13 = [dictionary2 objectForKeyedSubscript:@"networkListUpdateCounter"];
    unsignedIntegerValue = [v13 unsignedIntegerValue];

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
    [dictionary2 setObject:v15 forKey:@"networkListUpdateCounter"];

    accessoryID2 = [dCopy accessoryID];
    [dictionary setObject:dictionary2 forKey:accessoryID2];

    v17 = selfCopy->_store;
    bundleID2 = [dCopy bundleID];
    [(CWFKeyValueStore *)v17 setObject:dictionary forKey:bundleID2];

    objc_sync_exit(selfCopy);
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

- (unint64_t)acknowledgedNetworksUpdateCounterForClientID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    store = selfCopy->_store;
    bundleID = [dCopy bundleID];
    v8 = [(CWFKeyValueStore *)store objectForKey:bundleID];
    accessoryID = [dCopy accessoryID];
    v10 = [v8 objectForKey:accessoryID];
    v11 = [v10 objectForKey:@"acknowledgedNetworksUpdateCounter"];
    unsignedIntegerValue = [v11 unsignedIntegerValue];

    objc_sync_exit(selfCopy);
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

    unsignedIntegerValue = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return unsignedIntegerValue;
}

- (void)setAcknowledgedNetworksUpdateCounter:(unint64_t)counter clientID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    store = selfCopy->_store;
    bundleID = [dCopy bundleID];
    v10 = [(CWFKeyValueStore *)store objectForKey:bundleID];
    dictionary = [v10 mutableCopy];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    accessoryID = [dCopy accessoryID];
    v13 = [dictionary objectForKey:accessoryID];
    dictionary2 = [v13 mutableCopy];

    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    }

    v15 = [dictionary2 objectForKey:@"acknowledgedNetworksUpdateCounter"];
    unsignedIntegerValue = [v15 unsignedIntegerValue];

    if (unsignedIntegerValue < counter)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:counter];
      [dictionary2 setObject:v17 forKey:@"acknowledgedNetworksUpdateCounter"];

      accessoryID2 = [dCopy accessoryID];
      [dictionary setObject:dictionary2 forKey:accessoryID2];

      v19 = selfCopy->_store;
      bundleID2 = [dCopy bundleID];
      [(CWFKeyValueStore *)v19 setObject:dictionary forKey:bundleID2];
    }

    objc_sync_exit(selfCopy);
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

- (id)networkMetadataForClientID:(id)d networkID:(id)iD
{
  v48 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  v8 = iDCopy;
  if (!dCopy)
  {
    v30 = CWFGetOSLog();
    if (v30)
    {
      selfCopy = CWFGetOSLog();
    }

    else
    {
      selfCopy = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
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

  if (!iDCopy)
  {
    v31 = CWFGetOSLog();
    if (v31)
    {
      selfCopy = CWFGetOSLog();
    }

    else
    {
      selfCopy = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
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

  descriptor = [iDCopy descriptor];
  if (!descriptor)
  {
    v32 = CWFGetOSLog();
    if (v32)
    {
      selfCopy = CWFGetOSLog();
    }

    else
    {
      selfCopy = MEMORY[0x1E69E9C10];
      v35 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
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
    descriptor = 0;
    v18 = 0;
    goto LABEL_16;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  store = selfCopy->_store;
  bundleID = [dCopy bundleID];
  v13 = [(CWFKeyValueStore *)store objectForKey:bundleID];
  accessoryID = [dCopy accessoryID];
  v15 = [v13 objectForKey:accessoryID];
  v16 = [v15 objectForKey:@"networkMetadata"];
  v17 = [v16 objectForKey:descriptor];

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

  objc_sync_exit(selfCopy);
LABEL_16:

  v28 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)setNetworkMetadata:(id)metadata clientID:(id)d networkID:(id)iD
{
  v40 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  dCopy = d;
  iDCopy = iD;
  v11 = iDCopy;
  if (!dCopy)
  {
    v33 = CWFGetOSLog();
    if (v33)
    {
      descriptor = CWFGetOSLog();
    }

    else
    {
      descriptor = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(descriptor, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

LABEL_30:
    _os_log_send_and_compose_impl();
    goto LABEL_15;
  }

  if (!iDCopy)
  {
    v34 = CWFGetOSLog();
    if (v34)
    {
      descriptor = CWFGetOSLog();
    }

    else
    {
      descriptor = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(descriptor, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  descriptor = [iDCopy descriptor];
  if (!descriptor)
  {
    v35 = CWFGetOSLog();
    if (v35)
    {
      descriptor = CWFGetOSLog();
    }

    else
    {
      descriptor = MEMORY[0x1E69E9C10];
      v38 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(descriptor, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  store = selfCopy->_store;
  bundleID = [dCopy bundleID];
  v16 = [(CWFKeyValueStore *)store objectForKey:bundleID];
  dictionary = [v16 mutableCopy];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  accessoryID = [dCopy accessoryID];
  v19 = [dictionary objectForKey:accessoryID];
  dictionary2 = [v19 mutableCopy];

  if (!dictionary2)
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  }

  v21 = [dictionary2 objectForKey:@"networkMetadata"];
  dictionary3 = [v21 mutableCopy];

  if (!dictionary3)
  {
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  }

  v39 = v11;
  if (metadataCopy)
  {
    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    firstSharedDate = [metadataCopy firstSharedDate];
    [dictionary4 setObject:firstSharedDate forKeyedSubscript:@"firstSharedDate"];

    mostRecentlySharedDate = [metadataCopy mostRecentlySharedDate];
    [dictionary4 setObject:mostRecentlySharedDate forKeyedSubscript:@"mostRecentlySharedDate"];

    v26 = sub_1E0BF1E78([metadataCopy askToShareStatus]);
    [dictionary4 setObject:v26 forKeyedSubscript:@"askToShareStatus"];

    askToShareStatusUpdatedTimestamp = [metadataCopy askToShareStatusUpdatedTimestamp];
    [dictionary4 setObject:askToShareStatusUpdatedTimestamp forKeyedSubscript:@"askToShareStatusUpdatedTimestamp"];

    lastModifiedDate = [metadataCopy lastModifiedDate];
    [dictionary4 setObject:lastModifiedDate forKeyedSubscript:@"lastModifiedDate"];

    if ([metadataCopy waitingForAssociation])
    {
      [dictionary4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"waitingForAssociation"];
    }
  }

  else
  {
    dictionary4 = 0;
  }

  [dictionary3 setObject:dictionary4 forKeyedSubscript:descriptor];
  [dictionary2 setObject:dictionary3 forKeyedSubscript:@"networkMetadata"];
  accessoryID2 = [dCopy accessoryID];
  [dictionary setObject:dictionary2 forKeyedSubscript:accessoryID2];

  v30 = selfCopy->_store;
  bundleID2 = [dCopy bundleID];
  [(CWFKeyValueStore *)v30 setObject:dictionary forKey:bundleID2];

  objc_sync_exit(selfCopy);
  v11 = v39;
LABEL_15:

  v32 = *MEMORY[0x1E69E9840];
}

- (id)networkMetadataForClientID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    store = selfCopy->_store;
    bundleID = [dCopy bundleID];
    v8 = [(CWFKeyValueStore *)store objectForKey:bundleID];
    accessoryID = [dCopy accessoryID];
    v10 = [v8 objectForKey:accessoryID];
    v11 = [v10 objectForKey:@"networkMetadata"];

    if (v11)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1E0D27AAC;
      v18[3] = &unk_1E86E9798;
      v13 = dictionary;
      v19 = v13;
      [v11 enumerateKeysAndObjectsUsingBlock:v18];
    }

    else
    {
      v13 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v16 = CWFGetOSLog();
    if (v16)
    {
      selfCopy = CWFGetOSLog();
    }

    else
    {
      selfCopy = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
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