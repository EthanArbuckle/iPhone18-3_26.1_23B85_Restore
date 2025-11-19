@interface IDSActivityMonitorStateManager
+ (id)sharedInstance;
- (BOOL)startListeningOnActivity:(id)a3;
- (BOOL)stopListeningOnActivity:(id)a3;
- (IDSActivityMonitorStateManager)initWithStateProvider:(id)a3 messageDelivery:(id)a4 peerIDManager:(id)a5 accountController:(id)a6 serviceController:(id)a7 pushListener:(id)a8;
- (IDSActivityMonitorStateManager)initWithStateProvider:(id)a3 messageDelivery:(id)a4 peerIDManager:(id)a5 accountController:(id)a6 serviceController:(id)a7 queue:(id)a8;
- (NSMutableSet)listeningOnActivities;
- (id)currentSubscriptionsForActivity:(id)a3;
- (id)storedUpdatesForActivity:(id)a3;
- (void)_subscribeForInfo:(id)a3 withDescription:(id)a4 resolvedTokens:(id)a5 withCompletion:(id)a6;
- (void)_updateListener;
- (void)ackUpdatesForActivity:(id)a3;
- (void)addListener:(id)a3 forActivity:(id)a4;
- (void)pushListener:(id)a3 receivedUpdatePush:(id)a4;
- (void)removeListener:(id)a3 forActivity:(id)a4;
- (void)removeSubscriptionForActivity:(id)a3 subActivity:(id)a4;
- (void)setup;
- (void)storeSubscription:(id)a3 forActivity:(id)a4;
- (void)subscribeForInfo:(id)a3 onActivity:(id)a4 withCompletion:(id)a5;
- (void)unsubscribeForActivity:(id)a3 subActivity:(id)a4 withCompletion:(id)a5;
@end

@implementation IDSActivityMonitorStateManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032A9FC;
  block[3] = &unk_100BD75B8;
  block[4] = a1;
  if (qword_100CBCE08 != -1)
  {
    dispatch_once(&qword_100CBCE08, block);
  }

  v2 = qword_100CBCE00;

  return v2;
}

- (IDSActivityMonitorStateManager)initWithStateProvider:(id)a3 messageDelivery:(id)a4 peerIDManager:(id)a5 accountController:(id)a6 serviceController:(id)a7 pushListener:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = im_primary_queue();
  v21 = [(IDSActivityMonitorStateManager *)self initWithStateProvider:v19 messageDelivery:v18 peerIDManager:v17 accountController:v16 serviceController:v15 queue:v20];

  pushListener = v21->_pushListener;
  v21->_pushListener = v14;
  v23 = v14;

  [(IDSActivityPushListener *)v21->_pushListener setDelegate:v21];
  return v21;
}

- (IDSActivityMonitorStateManager)initWithStateProvider:(id)a3 messageDelivery:(id)a4 peerIDManager:(id)a5 accountController:(id)a6 serviceController:(id)a7 queue:(id)a8
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v28.receiver = self;
  v28.super_class = IDSActivityMonitorStateManager;
  v18 = [(IDSActivityMonitorStateManager *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_stateProvider, a3);
    v20 = [[IDSActivityPushListener alloc] initWithQueue:v17 shouldDowngradeOnLock:0];
    pushListener = v19->_pushListener;
    v19->_pushListener = v20;

    objc_storeStrong(&v19->_messageDelivery, a4);
    objc_storeStrong(&v19->_peerIDManager, a5);
    objc_storeStrong(&v19->_accountController, a6);
    objc_storeStrong(&v19->_serviceController, a7);
    v22 = +[NSMutableDictionary dictionary];
    topicStringToSubscribedInfo = v19->_topicStringToSubscribedInfo;
    v19->_topicStringToSubscribedInfo = v22;
  }

  [(IDSActivityPushListener *)v19->_pushListener setDelegate:v19];

  return v19;
}

- (void)setup
{
  v5 = [(IDSActivityStateProvider *)self->_stateProvider storedActivityTopics];
  if ([v5 count])
  {
    v3 = [v5 mutableCopy];
    listeningOnActivities = self->_listeningOnActivities;
    self->_listeningOnActivities = v3;
  }

  [(IDSActivityMonitorStateManager *)self _updateListener];
}

- (void)addListener:(id)a3 forActivity:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = +[IDSDXPCActivityMonitor isActivityMonitorSupported];
  if (v6 && v7)
  {
    listenersByActivity = self->_listenersByActivity;
    if (!listenersByActivity)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = self->_listenersByActivity;
      self->_listenersByActivity = v9;

      listenersByActivity = self->_listenersByActivity;
    }

    v11 = [(NSMutableDictionary *)listenersByActivity objectForKeyedSubscript:v6];
    if (!v11)
    {
      v11 = +[NSHashTable weakObjectsHashTable];
      [(NSMutableDictionary *)self->_listenersByActivity setObject:v11 forKeyedSubscript:v6];
    }

    [v11 addObject:v12];
  }
}

- (void)removeListener:(id)a3 forActivity:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v6)
  {
    listenersByActivity = self->_listenersByActivity;
    if (listenersByActivity)
    {
      v8 = [(NSMutableDictionary *)listenersByActivity objectForKeyedSubscript:v6];
      v9 = v8;
      if (v8)
      {
        [v8 removeObject:v11];
        if (![v9 count])
        {
          [(NSMutableDictionary *)self->_listenersByActivity setObject:0 forKeyedSubscript:v6];
        }

        if (![(NSMutableDictionary *)self->_listenersByActivity count])
        {
          v10 = self->_listenersByActivity;
          self->_listenersByActivity = 0;
        }
      }
    }
  }
}

- (NSMutableSet)listeningOnActivities
{
  listeningOnActivities = self->_listeningOnActivities;
  if (listeningOnActivities)
  {
    v3 = [(NSMutableSet *)listeningOnActivities copy];
  }

  else
  {
    v3 = +[NSSet set];
  }

  return v3;
}

- (BOOL)startListeningOnActivity:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableSet *)self->_listeningOnActivities containsObject:v4];
  if ((v5 & 1) == 0)
  {
    listeningOnActivities = self->_listeningOnActivities;
    if (!listeningOnActivities)
    {
      v7 = objc_alloc_init(NSMutableSet);
      v8 = self->_listeningOnActivities;
      self->_listeningOnActivities = v7;

      listeningOnActivities = self->_listeningOnActivities;
    }

    [(NSMutableSet *)listeningOnActivities addObject:v4];
    v9 = [(IDSActivityMonitorStateManager *)self stateProvider];
    v10 = [v9 storedActivityTopics];
    v11 = [NSMutableSet setWithSet:v10];

    [v11 addObject:v4];
    v12 = [(IDSActivityMonitorStateManager *)self stateProvider];
    [v12 setStoredActivityTopics:v11];

    [(IDSActivityMonitorStateManager *)self _updateListener];
  }

  return v5 ^ 1;
}

- (BOOL)stopListeningOnActivity:(id)a3
{
  v4 = a3;
  listeningOnActivities = self->_listeningOnActivities;
  if (listeningOnActivities && [(NSMutableSet *)listeningOnActivities containsObject:v4])
  {
    [(NSMutableSet *)self->_listeningOnActivities removeObject:v4];
    v6 = [(IDSActivityMonitorStateManager *)self stateProvider];
    v7 = [v6 storedActivityTopics];
    v8 = [NSMutableSet setWithSet:v7];

    [v8 removeObject:v4];
    v9 = [(IDSActivityMonitorStateManager *)self stateProvider];
    [v9 setStoredActivityTopics:v8];

    [(IDSActivityMonitorStateManager *)self _updateListener];
    [(IDSActivityMonitorStateManager *)self ackUpdatesForActivity:v4];

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)storedUpdatesForActivity:(id)a3
{
  v4 = a3;
  v5 = [(IDSActivityMonitorStateManager *)self stateProvider];
  v6 = [v5 storedUpdatesForActivity:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v8 = v7;

  return v7;
}

- (void)storeSubscription:(id)a3 forActivity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IDSActivityMonitorStateManager *)self stateProvider];
  [v8 storeSubscription:v7 forActivity:v6];
}

- (void)removeSubscriptionForActivity:(id)a3 subActivity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IDSActivityMonitorStateManager *)self stateProvider];
  [v8 removeSubscriptionForActivity:v7 subActivity:v6];
}

- (id)currentSubscriptionsForActivity:(id)a3
{
  v4 = a3;
  v5 = [(IDSActivityMonitorStateManager *)self stateProvider];
  v6 = [v5 storedSubscriptionsForActivity:v4];

  return v6;
}

- (void)ackUpdatesForActivity:(id)a3
{
  v4 = a3;
  v5 = [(IDSActivityMonitorStateManager *)self stateProvider];
  [v5 storeUpdates:0 forActivity:v4];
}

- (void)subscribeForInfo:(id)a3 onActivity:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IDSActivityMonitorStateManager *)self topicStringToSubscribedInfo];
  v12 = [v11 objectForKeyedSubscript:v9];

  v13 = +[NSDate date];
  v14 = [v12 expirationDate];
  v15 = [v13 compare:v14];

  if (![v12 isIdentical:v8] || v15 == 1)
  {
    v17 = objc_alloc_init(IDSActivityDescription);
    [(IDSActivityDescription *)v17 setActivity:v9];
    +[NSDate timeIntervalSinceReferenceDate];
    [(IDSActivityDescription *)v17 setTimeSubscribed:?];
    v18 = [v8 tokens];
    v19 = [v18 count];

    if (v19)
    {
      v20 = [v8 tokens];
      [(IDSActivityMonitorStateManager *)self _subscribeForInfo:v8 withDescription:v17 resolvedTokens:v20 withCompletion:v10];
    }

    else
    {
      v21 = [v8 URIs];
      v22 = [v21 count];

      if (v22)
      {
        v23 = [(IDSActivityMonitorStateManager *)self serviceController];
        v24 = [v23 serviceWithIdentifier:v9];

        v25 = [(IDSActivityMonitorStateManager *)self accountController];
        v46 = v24;
        v26 = [v25 accountsOnService:v24 withType:1];
        v27 = [v26 firstObject];

        if ([v27 isRegistered])
        {
          v28 = [v27 unprefixedURIStringsFromRegistration];
          v44 = _IDSCopyCallerIDWithSelfMessagingHint();

          v29 = [v44 _bestGuessURI];
          [v27 service];
          v30 = v45 = v27;
          v31 = [v30 identifier];
          v43 = [IDSURI URIWithPrefixedURI:v29 withServiceLoggingHint:v31];

          v32 = [v45 primaryRegistration];
          v42 = [v32 registrationCert];

          v33 = [(IDSActivityMonitorStateManager *)self peerIDManager];
          v34 = [v8 URIs];
          v41 = [v46 identifier];
          v47[0] = _NSConcreteStackBlock;
          v47[1] = 3221225472;
          v47[2] = sub_10032B938;
          v47[3] = &unk_100BD7658;
          v47[4] = self;
          v48 = v8;
          v49 = v17;
          v50 = v10;
          LOBYTE(v40) = 0;
          [v33 startQueryForURIs:v34 fromIdentity:v42 fromURI:v43 fromService:v41 forSending:0 forceToServer:0 clientRequestedForceQuery:v40 reason:@"ActivityMonitorSubscription" completionBlock:v47];

          v27 = v45;
        }

        else
        {
          v38 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:-200 userInfo:0];
          (*(v10 + 2))(v10, v38);
        }
      }

      else
      {
        v35 = [v8 deviceUniqueIDs];
        v36 = [v35 count];

        if (v36)
        {
          v37 = -600;
        }

        else
        {
          v37 = -104;
        }

        v39 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:v37 userInfo:0];
        (*(v10 + 2))(v10, v39);
      }
    }
  }

  else
  {
    v16 = +[IMRGLog registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v52 = v9;
      v53 = 2112;
      v54 = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found existing identical subscription for topic %@ with info %@.", buf, 0x16u);
    }

    v17 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:666 userInfo:0];
    (*(v10 + 2))(v10, v17);
  }
}

- (void)unsubscribeForActivity:(id)a3 subActivity:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(IDSActivityScribeMessage);
  v12 = [NSString stringWithFormat:@"%@%@", @"com.apple.icloud.presence.", v8];
  [(IDSActivityScribeMessage *)v11 setActivityTopic:v12];

  [(IDSActivityScribeMessage *)v11 setVersion:1];
  v13 = +[NSString stringGUID];
  [(IDSActivityScribeMessage *)v11 setMessageID:v13];

  v14 = +[NSData data];
  [(IDSActivityScribeMessage *)v11 setMetadataBlob:v14];

  [(IDSActivityScribeMessage *)v11 setSubActivity:v9];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10032BD24;
  v19[3] = &unk_100BD7680;
  v19[4] = self;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  [(IDSActivityScribeMessage *)v11 setCompletionBlock:v19];
  v18 = [(IDSActivityMonitorStateManager *)self messageDelivery];
  [v18 sendMessage:v11];
}

- (void)_subscribeForInfo:(id)a3 withDescription:(id)a4 resolvedTokens:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [(IDSActivityMonitorStateManager *)self topicStringToSubscribedInfo];
  v15 = [v11 activity];
  [v14 setObject:v10 forKeyedSubscript:v15];

  v16 = objc_alloc_init(IDSActivityScribeMessage);
  [(IDSActivityScribeMessage *)v16 setTokens:v13];

  v17 = [v11 activity];
  v18 = [NSString stringWithFormat:@"%@%@", @"com.apple.icloud.presence.", v17];
  [(IDSActivityScribeMessage *)v16 setActivityTopic:v18];

  v19 = [v10 subActivity];
  [(IDSActivityScribeMessage *)v16 setSubActivity:v19];

  v20 = [v10 appContext];
  [(IDSActivityScribeMessage *)v16 setMetadataBlob:v20];

  [(IDSActivityScribeMessage *)v16 setPushPriority:10];
  [(IDSActivityScribeMessage *)v16 setActivityPolicy:0];
  [(IDSActivityScribeMessage *)v16 setVersion:1];
  v21 = +[NSString stringGUID];
  [(IDSActivityScribeMessage *)v16 setMessageID:v21];

  v22 = [v10 expirationDate];
  [v22 timeIntervalSinceNow];
  [(IDSActivityScribeMessage *)v16 setTtl:vcvtpd_s64_f64(v23)];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10032C1F8;
  v28[3] = &unk_100BD7680;
  v28[4] = self;
  v29 = v11;
  v30 = v10;
  v31 = v12;
  v24 = v12;
  v25 = v10;
  v26 = v11;
  [(IDSActivityScribeMessage *)v16 setCompletionBlock:v28];
  v27 = [(IDSActivityMonitorStateManager *)self messageDelivery];
  [v27 sendMessage:v16];
}

- (void)_updateListener
{
  v3 = [(IDSActivityMonitorStateManager *)self listeningOnActivities];
  v4 = [v3 __imSetByApplyingBlock:&stru_100BD76C0];
  v5 = [(IDSActivityMonitorStateManager *)self pushListener];
  [v5 setTopicsToListenOn:v4];

  v8 = [(IDSActivityMonitorStateManager *)self listeningOnActivities];
  v6 = [v8 count] != 0;
  v7 = [(IDSActivityMonitorStateManager *)self pushListener];
  [v7 setShouldListen:v6];
}

- (void)pushListener:(id)a3 receivedUpdatePush:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 activityTopic];
  if ([v7 rangeOfString:@"com.apple.icloud.presence."])
  {
    v9 = 0;
  }

  else
  {
    v9 = [v7 substringFromIndex:v8];
  }

  if (!v9)
  {
    goto LABEL_38;
  }

  v10 = [(IDSActivityMonitorStateManager *)self listeningOnActivities];
  v11 = [v10 containsObject:v9];

  if (!v11)
  {
    goto LABEL_38;
  }

  v52 = v5;
  v12 = [(IDSActivityMonitorStateManager *)self serviceController];
  v13 = [v12 serviceWithIdentifier:v9];

  v14 = [(IDSActivityMonitorStateManager *)self accountController];
  v15 = [v14 accountsOnService:v13 withType:1];
  v16 = [v15 firstObject];

  v17 = 0;
  v53 = v13;
  v54 = v6;
  v56 = v9;
  v51 = v16;
  if (v13 && v16)
  {
    if ([v16 isRegistered])
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v18 = [v16 registeredDevices];
      v19 = [v18 countByEnumeratingWithState:&v62 objects:v72 count:16];
      if (v19)
      {
        v20 = v19;
        v17 = 0;
        v21 = *v63;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v63 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v62 + 1) + 8 * i);
            v24 = [v23 pushToken];
            v25 = [v6 token];
            v26 = [v24 isEqualToData:v25];

            if (v26)
            {
              v27 = v23;

              v17 = v27;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v62 objects:v72 count:16];
        }

        while (v20);

        if (v17)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      v28 = [(IDSActivityMonitorStateManager *)self peerIDManager];
      v29 = [v6 token];
      v30 = [IDSPushToken pushTokenWithData:v29];
      v31 = [v53 identifier];
      v32 = [v28 urisMatchingPushToken:v30 service:v31];

      [0 addObjectsFromArray:v32];
      v6 = v54;
    }

    v17 = 0;
  }

LABEL_23:
  v55 = v17;
  v33 = [IDSActivityUpdate alloc];
  v34 = IDSActivityMonitorPresenceSubActivity;
  v35 = [v6 token];
  v36 = [v6 activityTimestamp];
  v37 = [v6 metadataBlob];
  v38 = [v33 initWithSubActivity:v34 pushToken:v35 serverTimestamp:v36 clientContext:v37 isDeviceOnline:{objc_msgSend(v6, "activityStatus")}];

  v39 = [0 allObjects];
  if (v39)
  {
    [v38 setURIs:v39];
  }

  else
  {
    v40 = [v17 URIs];
    [v38 setURIs:v40];
  }

  v41 = +[IMRGLog registration];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = v38;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Looking up for listeners for update: %@", buf, 0xCu);
  }

  v42 = [(IDSActivityMonitorStateManager *)self stateProvider];
  v71 = v38;
  v43 = [NSArray arrayWithObjects:&v71 count:1];
  [v42 storeUpdates:v43 forActivity:v56];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v44 = [(NSMutableDictionary *)self->_listenersByActivity objectForKeyedSubscript:v56];
  v45 = [v44 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v59;
    do
    {
      for (j = 0; j != v46; j = j + 1)
      {
        if (*v59 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v58 + 1) + 8 * j);
        v50 = +[IMRGLog registration];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v67 = v49;
          v68 = 2112;
          v69 = v38;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Alerting listener %@ about update %@", buf, 0x16u);
        }

        [v49 activityMonitorManager:self receivedUpdate:v38 forActivity:v56];
      }

      v46 = [v44 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v46);
  }

  v5 = v52;
  v6 = v54;
  v9 = v56;
LABEL_38:
}

@end