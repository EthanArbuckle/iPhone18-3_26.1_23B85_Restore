@interface IDSActivityMonitorStateManager
+ (id)sharedInstance;
- (BOOL)startListeningOnActivity:(id)activity;
- (BOOL)stopListeningOnActivity:(id)activity;
- (IDSActivityMonitorStateManager)initWithStateProvider:(id)provider messageDelivery:(id)delivery peerIDManager:(id)manager accountController:(id)controller serviceController:(id)serviceController pushListener:(id)listener;
- (IDSActivityMonitorStateManager)initWithStateProvider:(id)provider messageDelivery:(id)delivery peerIDManager:(id)manager accountController:(id)controller serviceController:(id)serviceController queue:(id)queue;
- (NSMutableSet)listeningOnActivities;
- (id)currentSubscriptionsForActivity:(id)activity;
- (id)storedUpdatesForActivity:(id)activity;
- (void)_subscribeForInfo:(id)info withDescription:(id)description resolvedTokens:(id)tokens withCompletion:(id)completion;
- (void)_updateListener;
- (void)ackUpdatesForActivity:(id)activity;
- (void)addListener:(id)listener forActivity:(id)activity;
- (void)pushListener:(id)listener receivedUpdatePush:(id)push;
- (void)removeListener:(id)listener forActivity:(id)activity;
- (void)removeSubscriptionForActivity:(id)activity subActivity:(id)subActivity;
- (void)setup;
- (void)storeSubscription:(id)subscription forActivity:(id)activity;
- (void)subscribeForInfo:(id)info onActivity:(id)activity withCompletion:(id)completion;
- (void)unsubscribeForActivity:(id)activity subActivity:(id)subActivity withCompletion:(id)completion;
@end

@implementation IDSActivityMonitorStateManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10032A9FC;
  block[3] = &unk_100BD75B8;
  block[4] = self;
  if (qword_100CBCE08 != -1)
  {
    dispatch_once(&qword_100CBCE08, block);
  }

  v2 = qword_100CBCE00;

  return v2;
}

- (IDSActivityMonitorStateManager)initWithStateProvider:(id)provider messageDelivery:(id)delivery peerIDManager:(id)manager accountController:(id)controller serviceController:(id)serviceController pushListener:(id)listener
{
  listenerCopy = listener;
  serviceControllerCopy = serviceController;
  controllerCopy = controller;
  managerCopy = manager;
  deliveryCopy = delivery;
  providerCopy = provider;
  v20 = im_primary_queue();
  v21 = [(IDSActivityMonitorStateManager *)self initWithStateProvider:providerCopy messageDelivery:deliveryCopy peerIDManager:managerCopy accountController:controllerCopy serviceController:serviceControllerCopy queue:v20];

  pushListener = v21->_pushListener;
  v21->_pushListener = listenerCopy;
  v23 = listenerCopy;

  [(IDSActivityPushListener *)v21->_pushListener setDelegate:v21];
  return v21;
}

- (IDSActivityMonitorStateManager)initWithStateProvider:(id)provider messageDelivery:(id)delivery peerIDManager:(id)manager accountController:(id)controller serviceController:(id)serviceController queue:(id)queue
{
  providerCopy = provider;
  deliveryCopy = delivery;
  managerCopy = manager;
  controllerCopy = controller;
  serviceControllerCopy = serviceController;
  queueCopy = queue;
  v28.receiver = self;
  v28.super_class = IDSActivityMonitorStateManager;
  v18 = [(IDSActivityMonitorStateManager *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_stateProvider, provider);
    v20 = [[IDSActivityPushListener alloc] initWithQueue:queueCopy shouldDowngradeOnLock:0];
    pushListener = v19->_pushListener;
    v19->_pushListener = v20;

    objc_storeStrong(&v19->_messageDelivery, delivery);
    objc_storeStrong(&v19->_peerIDManager, manager);
    objc_storeStrong(&v19->_accountController, controller);
    objc_storeStrong(&v19->_serviceController, serviceController);
    v22 = +[NSMutableDictionary dictionary];
    topicStringToSubscribedInfo = v19->_topicStringToSubscribedInfo;
    v19->_topicStringToSubscribedInfo = v22;
  }

  [(IDSActivityPushListener *)v19->_pushListener setDelegate:v19];

  return v19;
}

- (void)setup
{
  storedActivityTopics = [(IDSActivityStateProvider *)self->_stateProvider storedActivityTopics];
  if ([storedActivityTopics count])
  {
    v3 = [storedActivityTopics mutableCopy];
    listeningOnActivities = self->_listeningOnActivities;
    self->_listeningOnActivities = v3;
  }

  [(IDSActivityMonitorStateManager *)self _updateListener];
}

- (void)addListener:(id)listener forActivity:(id)activity
{
  listenerCopy = listener;
  activityCopy = activity;
  v7 = +[IDSDXPCActivityMonitor isActivityMonitorSupported];
  if (activityCopy && v7)
  {
    listenersByActivity = self->_listenersByActivity;
    if (!listenersByActivity)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = self->_listenersByActivity;
      self->_listenersByActivity = v9;

      listenersByActivity = self->_listenersByActivity;
    }

    v11 = [(NSMutableDictionary *)listenersByActivity objectForKeyedSubscript:activityCopy];
    if (!v11)
    {
      v11 = +[NSHashTable weakObjectsHashTable];
      [(NSMutableDictionary *)self->_listenersByActivity setObject:v11 forKeyedSubscript:activityCopy];
    }

    [v11 addObject:listenerCopy];
  }
}

- (void)removeListener:(id)listener forActivity:(id)activity
{
  listenerCopy = listener;
  activityCopy = activity;
  if (activityCopy)
  {
    listenersByActivity = self->_listenersByActivity;
    if (listenersByActivity)
    {
      v8 = [(NSMutableDictionary *)listenersByActivity objectForKeyedSubscript:activityCopy];
      v9 = v8;
      if (v8)
      {
        [v8 removeObject:listenerCopy];
        if (![v9 count])
        {
          [(NSMutableDictionary *)self->_listenersByActivity setObject:0 forKeyedSubscript:activityCopy];
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

- (BOOL)startListeningOnActivity:(id)activity
{
  activityCopy = activity;
  v5 = [(NSMutableSet *)self->_listeningOnActivities containsObject:activityCopy];
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

    [(NSMutableSet *)listeningOnActivities addObject:activityCopy];
    stateProvider = [(IDSActivityMonitorStateManager *)self stateProvider];
    storedActivityTopics = [stateProvider storedActivityTopics];
    v11 = [NSMutableSet setWithSet:storedActivityTopics];

    [v11 addObject:activityCopy];
    stateProvider2 = [(IDSActivityMonitorStateManager *)self stateProvider];
    [stateProvider2 setStoredActivityTopics:v11];

    [(IDSActivityMonitorStateManager *)self _updateListener];
  }

  return v5 ^ 1;
}

- (BOOL)stopListeningOnActivity:(id)activity
{
  activityCopy = activity;
  listeningOnActivities = self->_listeningOnActivities;
  if (listeningOnActivities && [(NSMutableSet *)listeningOnActivities containsObject:activityCopy])
  {
    [(NSMutableSet *)self->_listeningOnActivities removeObject:activityCopy];
    stateProvider = [(IDSActivityMonitorStateManager *)self stateProvider];
    storedActivityTopics = [stateProvider storedActivityTopics];
    v8 = [NSMutableSet setWithSet:storedActivityTopics];

    [v8 removeObject:activityCopy];
    stateProvider2 = [(IDSActivityMonitorStateManager *)self stateProvider];
    [stateProvider2 setStoredActivityTopics:v8];

    [(IDSActivityMonitorStateManager *)self _updateListener];
    [(IDSActivityMonitorStateManager *)self ackUpdatesForActivity:activityCopy];

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)storedUpdatesForActivity:(id)activity
{
  activityCopy = activity;
  stateProvider = [(IDSActivityMonitorStateManager *)self stateProvider];
  v6 = [stateProvider storedUpdatesForActivity:activityCopy];

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

- (void)storeSubscription:(id)subscription forActivity:(id)activity
{
  activityCopy = activity;
  subscriptionCopy = subscription;
  stateProvider = [(IDSActivityMonitorStateManager *)self stateProvider];
  [stateProvider storeSubscription:subscriptionCopy forActivity:activityCopy];
}

- (void)removeSubscriptionForActivity:(id)activity subActivity:(id)subActivity
{
  subActivityCopy = subActivity;
  activityCopy = activity;
  stateProvider = [(IDSActivityMonitorStateManager *)self stateProvider];
  [stateProvider removeSubscriptionForActivity:activityCopy subActivity:subActivityCopy];
}

- (id)currentSubscriptionsForActivity:(id)activity
{
  activityCopy = activity;
  stateProvider = [(IDSActivityMonitorStateManager *)self stateProvider];
  v6 = [stateProvider storedSubscriptionsForActivity:activityCopy];

  return v6;
}

- (void)ackUpdatesForActivity:(id)activity
{
  activityCopy = activity;
  stateProvider = [(IDSActivityMonitorStateManager *)self stateProvider];
  [stateProvider storeUpdates:0 forActivity:activityCopy];
}

- (void)subscribeForInfo:(id)info onActivity:(id)activity withCompletion:(id)completion
{
  infoCopy = info;
  activityCopy = activity;
  completionCopy = completion;
  topicStringToSubscribedInfo = [(IDSActivityMonitorStateManager *)self topicStringToSubscribedInfo];
  v12 = [topicStringToSubscribedInfo objectForKeyedSubscript:activityCopy];

  v13 = +[NSDate date];
  expirationDate = [v12 expirationDate];
  v15 = [v13 compare:expirationDate];

  if (![v12 isIdentical:infoCopy] || v15 == 1)
  {
    v17 = objc_alloc_init(IDSActivityDescription);
    [(IDSActivityDescription *)v17 setActivity:activityCopy];
    +[NSDate timeIntervalSinceReferenceDate];
    [(IDSActivityDescription *)v17 setTimeSubscribed:?];
    tokens = [infoCopy tokens];
    v19 = [tokens count];

    if (v19)
    {
      tokens2 = [infoCopy tokens];
      [(IDSActivityMonitorStateManager *)self _subscribeForInfo:infoCopy withDescription:v17 resolvedTokens:tokens2 withCompletion:completionCopy];
    }

    else
    {
      uRIs = [infoCopy URIs];
      v22 = [uRIs count];

      if (v22)
      {
        serviceController = [(IDSActivityMonitorStateManager *)self serviceController];
        v24 = [serviceController serviceWithIdentifier:activityCopy];

        accountController = [(IDSActivityMonitorStateManager *)self accountController];
        v46 = v24;
        v26 = [accountController accountsOnService:v24 withType:1];
        firstObject = [v26 firstObject];

        if ([firstObject isRegistered])
        {
          unprefixedURIStringsFromRegistration = [firstObject unprefixedURIStringsFromRegistration];
          v44 = _IDSCopyCallerIDWithSelfMessagingHint();

          _bestGuessURI = [v44 _bestGuessURI];
          [firstObject service];
          v30 = v45 = firstObject;
          identifier = [v30 identifier];
          v43 = [IDSURI URIWithPrefixedURI:_bestGuessURI withServiceLoggingHint:identifier];

          primaryRegistration = [v45 primaryRegistration];
          registrationCert = [primaryRegistration registrationCert];

          peerIDManager = [(IDSActivityMonitorStateManager *)self peerIDManager];
          uRIs2 = [infoCopy URIs];
          identifier2 = [v46 identifier];
          v47[0] = _NSConcreteStackBlock;
          v47[1] = 3221225472;
          v47[2] = sub_10032B938;
          v47[3] = &unk_100BD7658;
          v47[4] = self;
          v48 = infoCopy;
          v49 = v17;
          v50 = completionCopy;
          LOBYTE(v40) = 0;
          [peerIDManager startQueryForURIs:uRIs2 fromIdentity:registrationCert fromURI:v43 fromService:identifier2 forSending:0 forceToServer:0 clientRequestedForceQuery:v40 reason:@"ActivityMonitorSubscription" completionBlock:v47];

          firstObject = v45;
        }

        else
        {
          v38 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:-200 userInfo:0];
          (*(completionCopy + 2))(completionCopy, v38);
        }
      }

      else
      {
        deviceUniqueIDs = [infoCopy deviceUniqueIDs];
        v36 = [deviceUniqueIDs count];

        if (v36)
        {
          v37 = -600;
        }

        else
        {
          v37 = -104;
        }

        v39 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:v37 userInfo:0];
        (*(completionCopy + 2))(completionCopy, v39);
      }
    }
  }

  else
  {
    v16 = +[IMRGLog registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v52 = activityCopy;
      v53 = 2112;
      v54 = infoCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found existing identical subscription for topic %@ with info %@.", buf, 0x16u);
    }

    v17 = [NSError errorWithDomain:IDSActivityMonitorErrorDomain code:666 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v17);
  }
}

- (void)unsubscribeForActivity:(id)activity subActivity:(id)subActivity withCompletion:(id)completion
{
  activityCopy = activity;
  subActivityCopy = subActivity;
  completionCopy = completion;
  v11 = objc_alloc_init(IDSActivityScribeMessage);
  activityCopy = [NSString stringWithFormat:@"%@%@", @"com.apple.icloud.presence.", activityCopy];
  [(IDSActivityScribeMessage *)v11 setActivityTopic:activityCopy];

  [(IDSActivityScribeMessage *)v11 setVersion:1];
  v13 = +[NSString stringGUID];
  [(IDSActivityScribeMessage *)v11 setMessageID:v13];

  v14 = +[NSData data];
  [(IDSActivityScribeMessage *)v11 setMetadataBlob:v14];

  [(IDSActivityScribeMessage *)v11 setSubActivity:subActivityCopy];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10032BD24;
  v19[3] = &unk_100BD7680;
  v19[4] = self;
  v20 = activityCopy;
  v21 = subActivityCopy;
  v22 = completionCopy;
  v15 = completionCopy;
  v16 = subActivityCopy;
  v17 = activityCopy;
  [(IDSActivityScribeMessage *)v11 setCompletionBlock:v19];
  messageDelivery = [(IDSActivityMonitorStateManager *)self messageDelivery];
  [messageDelivery sendMessage:v11];
}

- (void)_subscribeForInfo:(id)info withDescription:(id)description resolvedTokens:(id)tokens withCompletion:(id)completion
{
  infoCopy = info;
  descriptionCopy = description;
  completionCopy = completion;
  tokensCopy = tokens;
  topicStringToSubscribedInfo = [(IDSActivityMonitorStateManager *)self topicStringToSubscribedInfo];
  activity = [descriptionCopy activity];
  [topicStringToSubscribedInfo setObject:infoCopy forKeyedSubscript:activity];

  v16 = objc_alloc_init(IDSActivityScribeMessage);
  [(IDSActivityScribeMessage *)v16 setTokens:tokensCopy];

  activity2 = [descriptionCopy activity];
  v18 = [NSString stringWithFormat:@"%@%@", @"com.apple.icloud.presence.", activity2];
  [(IDSActivityScribeMessage *)v16 setActivityTopic:v18];

  subActivity = [infoCopy subActivity];
  [(IDSActivityScribeMessage *)v16 setSubActivity:subActivity];

  appContext = [infoCopy appContext];
  [(IDSActivityScribeMessage *)v16 setMetadataBlob:appContext];

  [(IDSActivityScribeMessage *)v16 setPushPriority:10];
  [(IDSActivityScribeMessage *)v16 setActivityPolicy:0];
  [(IDSActivityScribeMessage *)v16 setVersion:1];
  v21 = +[NSString stringGUID];
  [(IDSActivityScribeMessage *)v16 setMessageID:v21];

  expirationDate = [infoCopy expirationDate];
  [expirationDate timeIntervalSinceNow];
  [(IDSActivityScribeMessage *)v16 setTtl:vcvtpd_s64_f64(v23)];

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10032C1F8;
  v28[3] = &unk_100BD7680;
  v28[4] = self;
  v29 = descriptionCopy;
  v30 = infoCopy;
  v31 = completionCopy;
  v24 = completionCopy;
  v25 = infoCopy;
  v26 = descriptionCopy;
  [(IDSActivityScribeMessage *)v16 setCompletionBlock:v28];
  messageDelivery = [(IDSActivityMonitorStateManager *)self messageDelivery];
  [messageDelivery sendMessage:v16];
}

- (void)_updateListener
{
  listeningOnActivities = [(IDSActivityMonitorStateManager *)self listeningOnActivities];
  v4 = [listeningOnActivities __imSetByApplyingBlock:&stru_100BD76C0];
  pushListener = [(IDSActivityMonitorStateManager *)self pushListener];
  [pushListener setTopicsToListenOn:v4];

  listeningOnActivities2 = [(IDSActivityMonitorStateManager *)self listeningOnActivities];
  v6 = [listeningOnActivities2 count] != 0;
  pushListener2 = [(IDSActivityMonitorStateManager *)self pushListener];
  [pushListener2 setShouldListen:v6];
}

- (void)pushListener:(id)listener receivedUpdatePush:(id)push
{
  listenerCopy = listener;
  pushCopy = push;
  activityTopic = [pushCopy activityTopic];
  if ([activityTopic rangeOfString:@"com.apple.icloud.presence."])
  {
    v9 = 0;
  }

  else
  {
    v9 = [activityTopic substringFromIndex:v8];
  }

  if (!v9)
  {
    goto LABEL_38;
  }

  listeningOnActivities = [(IDSActivityMonitorStateManager *)self listeningOnActivities];
  v11 = [listeningOnActivities containsObject:v9];

  if (!v11)
  {
    goto LABEL_38;
  }

  v52 = listenerCopy;
  serviceController = [(IDSActivityMonitorStateManager *)self serviceController];
  v13 = [serviceController serviceWithIdentifier:v9];

  accountController = [(IDSActivityMonitorStateManager *)self accountController];
  v15 = [accountController accountsOnService:v13 withType:1];
  firstObject = [v15 firstObject];

  v17 = 0;
  v53 = v13;
  v54 = pushCopy;
  v56 = v9;
  v51 = firstObject;
  if (v13 && firstObject)
  {
    if ([firstObject isRegistered])
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      registeredDevices = [firstObject registeredDevices];
      v19 = [registeredDevices countByEnumeratingWithState:&v62 objects:v72 count:16];
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
              objc_enumerationMutation(registeredDevices);
            }

            v23 = *(*(&v62 + 1) + 8 * i);
            pushToken = [v23 pushToken];
            token = [pushCopy token];
            v26 = [pushToken isEqualToData:token];

            if (v26)
            {
              v27 = v23;

              v17 = v27;
            }
          }

          v20 = [registeredDevices countByEnumeratingWithState:&v62 objects:v72 count:16];
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

      peerIDManager = [(IDSActivityMonitorStateManager *)self peerIDManager];
      token2 = [pushCopy token];
      v30 = [IDSPushToken pushTokenWithData:token2];
      identifier = [v53 identifier];
      v32 = [peerIDManager urisMatchingPushToken:v30 service:identifier];

      [0 addObjectsFromArray:v32];
      pushCopy = v54;
    }

    v17 = 0;
  }

LABEL_23:
  v55 = v17;
  v33 = [IDSActivityUpdate alloc];
  v34 = IDSActivityMonitorPresenceSubActivity;
  token3 = [pushCopy token];
  activityTimestamp = [pushCopy activityTimestamp];
  metadataBlob = [pushCopy metadataBlob];
  v38 = [v33 initWithSubActivity:v34 pushToken:token3 serverTimestamp:activityTimestamp clientContext:metadataBlob isDeviceOnline:{objc_msgSend(pushCopy, "activityStatus")}];

  allObjects = [0 allObjects];
  if (allObjects)
  {
    [v38 setURIs:allObjects];
  }

  else
  {
    uRIs = [v17 URIs];
    [v38 setURIs:uRIs];
  }

  v41 = +[IMRGLog registration];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = v38;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Looking up for listeners for update: %@", buf, 0xCu);
  }

  stateProvider = [(IDSActivityMonitorStateManager *)self stateProvider];
  v71 = v38;
  v43 = [NSArray arrayWithObjects:&v71 count:1];
  [stateProvider storeUpdates:v43 forActivity:v56];

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

  listenerCopy = v52;
  pushCopy = v54;
  v9 = v56;
LABEL_38:
}

@end