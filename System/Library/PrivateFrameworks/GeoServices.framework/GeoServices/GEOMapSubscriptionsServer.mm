@interface GEOMapSubscriptionsServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (BOOL)handleIncomingPairedDeviceMessage:(id)message;
- (BOOL)handleIncomingPairedDeviceMessage:(id)message completionHandler:(id)handler;
- (GEOMapSubscriptionsServer)initWithDaemon:(id)daemon;
- (id)_startObservingStateForIdentifier:(id)identifier fromPairedDevice:(BOOL)device onBehalfOfPeer:(id)peer;
- (void)_stopObservingStateForIdentifier:(id)identifier fromPairedDevice:(BOOL)device onBehalfOfPeer:(id)peer;
- (void)_stopObservingStatesOnBehalfOfPeer:(id)peer;
- (void)addSubscriptionWithRequest:(id)request;
- (void)broadcastState:(id)state forIdentifier:(id)identifier fromPairedDevice:(BOOL)device toObservers:(id)observers;
- (void)calculateTotalOfflineDataSizeWithRequest:(id)request;
- (void)cancelDownloadForSubscriptionsWithRequest:(id)request;
- (void)cancelEstimatedSizeRequestWithRequest:(id)request;
- (void)checkContainmentForRegionWithRequest:(id)request;
- (void)configureSubscriptionShouldSyncWithPairedDeviceMessage:(id)message completionHandler:(id)handler;
- (void)determineEstimatedSizeWithRequest:(id)request;
- (void)fetchIdentifiersForSyncToPairedDeviceWithRequest:(id)request;
- (void)fetchLastUpdatedDateForOfflineSubscriptionsWithRequest:(id)request;
- (void)fetchPairedDeviceAvailableOfflineStorageWithRequest:(id)request;
- (void)fetchPairedDeviceIdentifiersToObserveWithRequest:(id)request;
- (void)fetchPairedDeviceSubscriptionsSummaryWithRequest:(id)request;
- (void)fetchStateForSubscriptionWithRequest:(id)request;
- (void)fetchSubscriptionsForSyncToWatchWithRequest:(id)request;
- (void)fetchSubscriptionsWithRequest:(id)request;
- (void)forceUpdateUserInitiatedSubscriptionsWithRequest:(id)request;
- (void)handlePairedDeviceStateUpdateWithRequest:(id)request;
- (void)peerDidDisconnect:(id)disconnect;
- (void)removeSubscriptionWithRequest:(id)request;
- (void)runBackgroundTask:(id)task;
- (void)setNeedsPairedDeviceSynchronization;
- (void)setPairedDeviceSubscriptionsSummaryWithRequest:(id)request;
- (void)setPairedDeviceSyncBehaviorWithRequest:(id)request;
- (void)setSubscriptionStateSummaryWithPairedDeviceMessage:(id)message;
- (void)startDownloadForSubscriptionsWithRequest:(id)request;
- (void)startObservingStateForSubscriptionsWithRequest:(id)request;
- (void)stopObservingStateForSubscriptionsWithRequest:(id)request;
- (void)subscriptionManager:(id)manager didUpdatePairedDeviceState:(id)state forIdentifier:(id)identifier;
- (void)subscriptionManager:(id)manager didUpdateState:(id)state forIdentifier:(id)identifier;
- (void)updateSubscriptionStateWithPairedDeviceMessage:(id)message;
@end

@implementation GEOMapSubscriptionsServer

- (BOOL)handleIncomingPairedDeviceMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  if ([messageCopy type] == 100)
  {
    configureSubscriptionShouldSync = [messageCopy configureSubscriptionShouldSync];
    v9 = configureSubscriptionShouldSync != 0;
    if (configureSubscriptionShouldSync)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100017A78;
      v11[3] = &unk_100081C88;
      v12 = handlerCopy;
      [(GEOMapSubscriptionsServer *)self configureSubscriptionShouldSyncWithPairedDeviceMessage:configureSubscriptionShouldSync completionHandler:v11];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)handleIncomingPairedDeviceMessage:(id)message
{
  messageCopy = message;
  type = [messageCopy type];
  if (type == 105)
  {
    updateSubscriptionState = [messageCopy updateSubscriptionState];
    if (updateSubscriptionState)
    {
      [(GEOMapSubscriptionsServer *)self updateSubscriptionStateWithPairedDeviceMessage:updateSubscriptionState];
      goto LABEL_7;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_8;
  }

  if (type != 103)
  {
    v7 = 0;
    goto LABEL_10;
  }

  updateSubscriptionState = [messageCopy setSubscriptionStateSummary];
  if (!updateSubscriptionState)
  {
    goto LABEL_11;
  }

  [(GEOMapSubscriptionsServer *)self setSubscriptionStateSummaryWithPairedDeviceMessage:updateSubscriptionState];
LABEL_7:
  v7 = 1;
LABEL_8:

LABEL_10:
  return v7;
}

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  v14 = 0;
  if (v13 > 3132)
  {
    if (v13 <= 3755)
    {
      if (v13 <= 3604)
      {
        if (v13 == 3133)
        {
          v89 = @"com.apple.geoservices.map-subscriptions.manage-downloads";
          v52 = [NSArray arrayWithObjects:&v89 count:1];
          v53 = sub_100001B78(peerCopy, objectCopy, @"subscriptions", messageCopy, v52, 1);

          v14 = 1;
          if (v53)
          {
            v54 = objc_opt_class();
            v55 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v54, peerCopy);
            v17 = v55;
            v14 = v55 != 0;
            if (v55)
            {
              [v55 setSignpostId:id];
              [(GEOMapSubscriptionsServer *)self cancelDownloadForSubscriptionsWithRequest:v17];
            }

            goto LABEL_84;
          }
        }

        else if (v13 == 3328)
        {
          v86 = @"com.apple.geoservices.map-subscriptions.watch-sync";
          v36 = [NSArray arrayWithObjects:&v86 count:1];
          v37 = sub_100001B78(peerCopy, objectCopy, @"subscriptions", messageCopy, v36, 1);

          v14 = 1;
          if (v37)
          {
            v38 = objc_opt_class();
            v39 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v38, peerCopy);
            v17 = v39;
            v14 = v39 != 0;
            if (v39)
            {
              [v39 setSignpostId:id];
              [(GEOMapSubscriptionsServer *)self fetchSubscriptionsForSyncToWatchWithRequest:v17];
            }

            goto LABEL_84;
          }
        }
      }

      else
      {
        switch(v13)
        {
          case 3605:
            v48 = objc_opt_class();
            v49 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v48, peerCopy);
            v17 = v49;
            v14 = v49 != 0;
            if (v49)
            {
              [v49 setSignpostId:id];
              [(GEOMapSubscriptionsServer *)self stopObservingStateForSubscriptionsWithRequest:v17];
            }

            goto LABEL_84;
          case 3671:
            v82 = @"com.apple.geoservices.map-subscriptions.watch-sync";
            v42 = [NSArray arrayWithObjects:&v82 count:1];
            v43 = sub_100001B78(peerCopy, objectCopy, @"subscriptions", messageCopy, v42, 1);

            v14 = 1;
            if (v43)
            {
              v44 = objc_opt_class();
              v45 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v44, peerCopy);
              v17 = v45;
              v14 = v45 != 0;
              if (v45)
              {
                [v45 setSignpostId:id];
                [(GEOMapSubscriptionsServer *)self setPairedDeviceSubscriptionsSummaryWithRequest:v17];
              }

              goto LABEL_84;
            }

            break;
          case 3709:
            v24 = objc_opt_class();
            v25 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v24, peerCopy);
            v17 = v25;
            v14 = v25 != 0;
            if (v25)
            {
              [v25 setSignpostId:id];
              [(GEOMapSubscriptionsServer *)self startObservingStateForSubscriptionsWithRequest:v17];
            }

            goto LABEL_84;
        }
      }
    }

    else if (v13 > 3875)
    {
      switch(v13)
      {
        case 3876:
          v88 = @"com.apple.geoservices.map-subscriptions.manage-downloads";
          v76 = [NSArray arrayWithObjects:&v88 count:1];
          v77 = sub_100001B78(peerCopy, objectCopy, @"subscriptions", messageCopy, v76, 1);

          v14 = 1;
          if (v77)
          {
            v78 = objc_opt_class();
            v79 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v78, peerCopy);
            v17 = v79;
            v14 = v79 != 0;
            if (v79)
            {
              [v79 setSignpostId:id];
              [(GEOMapSubscriptionsServer *)self forceUpdateUserInitiatedSubscriptionsWithRequest:v17];
            }

            goto LABEL_84;
          }

          break;
        case 4040:
          v81 = @"com.apple.geoservices.map-subscriptions.watch-sync";
          v64 = [NSArray arrayWithObjects:&v81 count:1];
          v65 = sub_100001B78(peerCopy, objectCopy, @"subscriptions", messageCopy, v64, 1);

          v14 = 1;
          if (v65)
          {
            v66 = objc_opt_class();
            v67 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v66, peerCopy);
            v17 = v67;
            v14 = v67 != 0;
            if (v67)
            {
              [v67 setSignpostId:id];
              [(GEOMapSubscriptionsServer *)self fetchPairedDeviceAvailableOfflineStorageWithRequest:v17];
            }

            goto LABEL_84;
          }

          break;
        case 4421:
          v87 = @"com.apple.geoservices.map-subscriptions.manage-downloads";
          v30 = [NSArray arrayWithObjects:&v87 count:1];
          v31 = sub_100001B78(peerCopy, objectCopy, @"subscriptions", messageCopy, v30, 1);

          v14 = 1;
          if (v31)
          {
            v32 = objc_opt_class();
            v33 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v32, peerCopy);
            v17 = v33;
            v14 = v33 != 0;
            if (v33)
            {
              [v33 setSignpostId:id];
              [(GEOMapSubscriptionsServer *)self fetchLastUpdatedDateForOfflineSubscriptionsWithRequest:v17];
            }

            goto LABEL_84;
          }

          break;
      }
    }

    else
    {
      switch(v13)
      {
        case 3756:
          v70 = objc_opt_class();
          v71 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v70, peerCopy);
          v17 = v71;
          v14 = v71 != 0;
          if (v71)
          {
            [v71 setSignpostId:id];
            [(GEOMapSubscriptionsServer *)self fetchIdentifiersForSyncToPairedDeviceWithRequest:v17];
          }

          goto LABEL_84;
        case 3774:
          v85 = @"com.apple.geoservices.map-subscriptions.watch-sync";
          v58 = [NSArray arrayWithObjects:&v85 count:1];
          v59 = sub_100001B78(peerCopy, objectCopy, @"subscriptions", messageCopy, v58, 1);

          v14 = 1;
          if (v59)
          {
            v60 = objc_opt_class();
            v61 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v60, peerCopy);
            v17 = v61;
            v14 = v61 != 0;
            if (v61)
            {
              [v61 setSignpostId:id];
              [(GEOMapSubscriptionsServer *)self fetchPairedDeviceIdentifiersToObserveWithRequest:v17];
            }

            goto LABEL_84;
          }

          break;
        case 3861:
          v83 = @"com.apple.geoservices.map-subscriptions.watch-sync";
          v18 = [NSArray arrayWithObjects:&v83 count:1];
          v19 = sub_100001B78(peerCopy, objectCopy, @"subscriptions", messageCopy, v18, 1);

          v14 = 1;
          if (v19)
          {
            v20 = objc_opt_class();
            v21 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v20, peerCopy);
            v17 = v21;
            v14 = v21 != 0;
            if (v21)
            {
              [v21 setSignpostId:id];
              [(GEOMapSubscriptionsServer *)self fetchPairedDeviceSubscriptionsSummaryWithRequest:v17];
            }

            goto LABEL_84;
          }

          break;
      }
    }
  }

  else if (v13 <= 2614)
  {
    if (v13 <= 1938)
    {
      if (v13 == 1582)
      {
        v50 = objc_opt_class();
        v51 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v50, peerCopy);
        v17 = v51;
        v14 = v51 != 0;
        if (v51)
        {
          [v51 setSignpostId:id];
          [(GEOMapSubscriptionsServer *)self addSubscriptionWithRequest:v17];
        }

        goto LABEL_84;
      }

      if (v13 == 1922)
      {
        v34 = objc_opt_class();
        v35 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v34, peerCopy);
        v17 = v35;
        v14 = v35 != 0;
        if (v35)
        {
          [v35 setSignpostId:id];
          [(GEOMapSubscriptionsServer *)self fetchSubscriptionsWithRequest:v17];
        }

        goto LABEL_84;
      }
    }

    else
    {
      switch(v13)
      {
        case 1939:
          v46 = objc_opt_class();
          v47 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v46, peerCopy);
          v17 = v47;
          v14 = v47 != 0;
          if (v47)
          {
            [v47 setSignpostId:id];
            [(GEOMapSubscriptionsServer *)self removeSubscriptionWithRequest:v17];
          }

          goto LABEL_84;
        case 2296:
          v40 = objc_opt_class();
          v41 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v40, peerCopy);
          v17 = v41;
          v14 = v41 != 0;
          if (v41)
          {
            [v41 setSignpostId:id];
            [(GEOMapSubscriptionsServer *)self determineEstimatedSizeWithRequest:v17];
          }

          goto LABEL_84;
        case 2569:
          v22 = objc_opt_class();
          v23 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v22, peerCopy);
          v17 = v23;
          v14 = v23 != 0;
          if (v23)
          {
            [v23 setSignpostId:id];
            [(GEOMapSubscriptionsServer *)self checkContainmentForRegionWithRequest:v17];
          }

          goto LABEL_84;
      }
    }
  }

  else if (v13 > 2932)
  {
    switch(v13)
    {
      case 2933:
        v84 = @"com.apple.geoservices.map-subscriptions.watch-sync";
        v72 = [NSArray arrayWithObjects:&v84 count:1];
        v73 = sub_100001B78(peerCopy, objectCopy, @"subscriptions", messageCopy, v72, 1);

        v14 = 1;
        if (v73)
        {
          v74 = objc_opt_class();
          v75 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v74, peerCopy);
          v17 = v75;
          v14 = v75 != 0;
          if (v75)
          {
            [v75 setSignpostId:id];
            [(GEOMapSubscriptionsServer *)self handlePairedDeviceStateUpdateWithRequest:v17];
          }

          goto LABEL_84;
        }

        break;
      case 2954:
        v62 = objc_opt_class();
        v63 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v62, peerCopy);
        v17 = v63;
        v14 = v63 != 0;
        if (v63)
        {
          [v63 setSignpostId:id];
          [(GEOMapSubscriptionsServer *)self calculateTotalOfflineDataSizeWithRequest:v17];
        }

        goto LABEL_84;
      case 3077:
        v90 = @"com.apple.geoservices.map-subscriptions.manage-downloads";
        v14 = 1;
        v26 = [NSArray arrayWithObjects:&v90 count:1];
        v27 = sub_100001B78(peerCopy, objectCopy, @"subscriptions", messageCopy, v26, 1);

        if (v27)
        {
          v28 = objc_opt_class();
          v29 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v28, peerCopy);
          v17 = v29;
          v14 = v29 != 0;
          if (v29)
          {
            [v29 setSignpostId:id];
            [(GEOMapSubscriptionsServer *)self startDownloadForSubscriptionsWithRequest:v17];
          }

          goto LABEL_84;
        }

        break;
    }
  }

  else
  {
    switch(v13)
    {
      case 2615:
        v68 = objc_opt_class();
        v69 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v68, peerCopy);
        v17 = v69;
        v14 = v69 != 0;
        if (v69)
        {
          [v69 setSignpostId:id];
          [(GEOMapSubscriptionsServer *)self fetchStateForSubscriptionWithRequest:v17];
        }

        goto LABEL_84;
      case 2698:
        v56 = objc_opt_class();
        v57 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v56, peerCopy);
        v17 = v57;
        v14 = v57 != 0;
        if (v57)
        {
          [v57 setSignpostId:id];
          [(GEOMapSubscriptionsServer *)self cancelEstimatedSizeRequestWithRequest:v17];
        }

        goto LABEL_84;
      case 2750:
        v15 = objc_opt_class();
        v16 = sub_100001388(@"subscriptions", messageCopy, objectCopy, v15, peerCopy);
        v17 = v16;
        v14 = v16 != 0;
        if (v16)
        {
          [v16 setSignpostId:id];
          [(GEOMapSubscriptionsServer *)self setPairedDeviceSyncBehaviorWithRequest:v17];
        }

LABEL_84:

        break;
    }
  }

  return v14;
}

- (void)updateSubscriptionStateWithPairedDeviceMessage:(id)message
{
  messageCopy = message;
  v5 = +[GEOMapDataSubscriptionManager sharedManager];
  [v5 _handlePairedDeviceStateUpdate:messageCopy callbackQueue:self->_queue completionHandler:&stru_1000826D0];
}

- (void)setSubscriptionStateSummaryWithPairedDeviceMessage:(id)message
{
  messageCopy = message;
  v5 = +[GEOMapDataSubscriptionManager sharedManager];
  [v5 _setPairedDeviceSubscriptionsSummary:messageCopy callbackQueue:self->_queue completionHandler:&stru_1000826B0];
}

- (void)configureSubscriptionShouldSyncWithPairedDeviceMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  if ([messageCopy hasIdentifier])
  {
    v8 = +[GEOMapDataSubscriptionManager sharedManager];
    identifier = [messageCopy identifier];
    shouldSyncToPairedDevice = [messageCopy shouldSyncToPairedDevice];
    queue = self->_queue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100028D9C;
    v14[3] = &unk_100083C38;
    v12 = &v15;
    v15 = handlerCopy;
    [v8 setSubscriptionWithIdentifier:identifier shouldSyncToPairedDevice:shouldSyncToPairedDevice callbackQueue:queue completionHandler:v14];

LABEL_3:
    goto LABEL_4;
  }

  if (handlerCopy)
  {
    v13 = self->_queue;
    if (v13)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100028D30;
      block[3] = &unk_1000833E0;
      v12 = &v17;
      v17 = handlerCopy;
      dispatch_async(v13, block);
      goto LABEL_3;
    }
  }

LABEL_4:
}

- (void)broadcastState:(id)state forIdentifier:(id)identifier fromPairedDevice:(BOOL)device toObservers:(id)observers
{
  deviceCopy = device;
  stateCopy = state;
  identifierCopy = identifier;
  observersCopy = observers;
  if ([observersCopy count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = observersCopy;
    v9 = [obj countByEnumeratingWithState:&v25 objects:v41 count:16];
    if (v9)
    {
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          if (deviceCopy)
          {
            v13 = stateCopy;
            v14 = identifierCopy;
            if (v12)
            {
              WeakRetained = objc_loadWeakRetained((v12 + 8));
              if (WeakRetained)
              {
                v37 = 0;
                v38 = &v37;
                v39 = 0x2020000000;
                v40 = 0;
                v16 = *(v12 + 16);
                v29 = _NSConcreteStackBlock;
                v30 = 3221225472;
                v31 = sub_10002924C;
                v32 = &unk_1000826F8;
                v36 = &v37;
                v33 = v12;
                v34 = v14;
                v35 = v13;
                geo_isolate_sync_data();
                if (*(v38 + 24) == 1)
                {
                  connection = [WeakRetained connection];
                  [connection initiateBarrierIfNecessary:0 delegate:v12];
                }

                _Block_object_dispose(&v37, 8);
              }
            }
          }

          else
          {
            v13 = stateCopy;
            v14 = identifierCopy;
            if (v12)
            {
              v18 = objc_loadWeakRetained((v12 + 8));
              if (v18)
              {
                v37 = 0;
                v38 = &v37;
                v39 = 0x2020000000;
                v40 = 0;
                v19 = *(v12 + 16);
                v29 = _NSConcreteStackBlock;
                v30 = 3221225472;
                v31 = sub_1000291AC;
                v32 = &unk_1000826F8;
                v36 = &v37;
                v33 = v12;
                v34 = v14;
                v35 = v13;
                geo_isolate_sync_data();
                if (*(v38 + 24) == 1)
                {
                  connection2 = [v18 connection];
                  [connection2 initiateBarrierIfNecessary:0 delegate:v12];
                }

                _Block_object_dispose(&v37, 8);
              }
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v25 objects:v41 count:16];
      }

      while (v9);
    }
  }
}

- (void)subscriptionManager:(id)manager didUpdatePairedDeviceState:(id)state forIdentifier:(id)identifier
{
  managerCopy = manager;
  stateCopy = state;
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100029428;
  v16 = sub_100029438;
  v17 = 0;
  stateObserversLock = self->_stateObserversLock;
  geo_isolate_sync_data();
  [(GEOMapSubscriptionsServer *)self broadcastState:stateCopy forIdentifier:identifierCopy fromPairedDevice:1 toObservers:v13[5], _NSConcreteStackBlock, 3221225472, sub_100029440, &unk_100082ED0, self, &v12];
  _Block_object_dispose(&v12, 8);
}

- (void)subscriptionManager:(id)manager didUpdateState:(id)state forIdentifier:(id)identifier
{
  managerCopy = manager;
  stateCopy = state;
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100029428;
  v16 = sub_100029438;
  v17 = 0;
  stateObserversLock = self->_stateObserversLock;
  geo_isolate_sync_data();
  [(GEOMapSubscriptionsServer *)self broadcastState:stateCopy forIdentifier:identifierCopy fromPairedDevice:0 toObservers:v13[5], _NSConcreteStackBlock, 3221225472, sub_1000295FC, &unk_100082ED0, self, &v12];
  _Block_object_dispose(&v12, 8);
}

- (void)_stopObservingStatesOnBehalfOfPeer:(id)peer
{
  peerCopy = peer;
  v29 = self->_stateObserversLock;
  _geo_isolate_lock();
  v16 = peerCopy;
  v17 = [(NSMapTable *)self->_stateObserverForPeer objectForKey:peerCopy];
  if (v17)
  {
    [(NSMapTable *)self->_stateObserverForPeer removeObjectForKey:peerCopy];
    if (![(NSMapTable *)self->_stateObserverForPeer count])
    {
      v5 = +[GEOMapDataSubscriptionManager sharedManager];
      [v5 _removeStateObserver:self];
    }

    v30 = v17[2];
    _geo_isolate_lock_data();
    v6 = [v17[5] copy];
    _geo_isolate_unlock();

    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v7)
    {
      v19 = *v26;
      do
      {
        v20 = v7;
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = self->_stateObserverForPeer;
          v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v21 objects:v31 count:16];
          if (v11)
          {
            v12 = *v22;
LABEL_11:
            v13 = 0;
            while (1)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = [(NSMapTable *)self->_stateObserverForPeer objectForKey:*(*(&v21 + 1) + 8 * v13)];
              v15 = sub_100029990(v14, v9);

              if (v15)
              {
                break;
              }

              if (v11 == ++v13)
              {
                v11 = [(NSMapTable *)v10 countByEnumeratingWithState:&v21 objects:v31 count:16];
                if (v11)
                {
                  goto LABEL_11;
                }

                goto LABEL_17;
              }
            }
          }

          else
          {
LABEL_17:

            v10 = +[GEOMapDataSubscriptionManager sharedManager];
            [(NSMapTable *)v10 _removeStateObserver:self forPairedDeviceSubscriptionWithIdentifier:v9];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
      }

      while (v7);
    }
  }

  _geo_isolate_unlock();
}

- (void)_stopObservingStateForIdentifier:(id)identifier fromPairedDevice:(BOOL)device onBehalfOfPeer:(id)peer
{
  deviceCopy = device;
  identifierCopy = identifier;
  peerCopy = peer;
  v30 = self->_stateObserversLock;
  _geo_isolate_lock();
  v24 = peerCopy;
  v9 = [(NSMapTable *)self->_stateObserverForPeer objectForKey:peerCopy];
  if (v9)
  {
    v10 = identifierCopy;
    if (deviceCopy)
    {
      v31 = v9[2];
      _geo_isolate_lock_data();
      if ([v9[5] containsObject:v10])
      {
        v11 = GEOGetSubscriptionsLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          WeakRetained = objc_loadWeakRetained(v9 + 1);
          *buf = 138543875;
          *&buf[4] = WeakRetained;
          v34 = 2160;
          v35 = 1752392040;
          v36 = 2113;
          v37 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[PairedDevice] Removing peer %{public}@ as an observer of paired device subscription %{private, mask.hash}@", buf, 0x20u);
        }

        [v9[5] removeObject:v10];
      }
    }

    else
    {
      v31 = v9[2];
      _geo_isolate_lock_data();
      if ([v9[3] containsObject:v10])
      {
        v13 = GEOGetSubscriptionsLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = objc_loadWeakRetained(v9 + 1);
          *buf = 138543875;
          *&buf[4] = v14;
          v34 = 2160;
          v35 = 1752392040;
          v36 = 2113;
          v37 = v10;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Removing peer %{public}@ as an observer of subscription %{private, mask.hash}@", buf, 0x20u);
        }

        [v9[3] removeObject:v10];
      }
    }

    _geo_isolate_unlock();

    *buf = v9[2];
    _geo_isolate_lock_data();
    if ([v9[3] count])
    {
      v15 = 1;
    }

    else
    {
      v15 = [v9[5] count] != 0;
    }

    _geo_isolate_unlock();

    if (!v15)
    {
      v16 = GEOGetSubscriptionsLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Removed final observer for peer %{public}@", buf, 0xCu);
      }

      [(NSMapTable *)self->_stateObserverForPeer removeObjectForKey:v24];
    }

    if (![(NSMapTable *)self->_stateObserverForPeer count])
    {
      v17 = +[GEOMapDataSubscriptionManager sharedManager];
      [v17 _removeStateObserver:self];
    }

    if (deviceCopy)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v18 = self->_stateObserverForPeer;
      v19 = [(NSMapTable *)v18 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v19)
      {
        v20 = *v27;
LABEL_24:
        v21 = 0;
        while (1)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = [(NSMapTable *)self->_stateObserverForPeer objectForKey:*(*(&v26 + 1) + 8 * v21)];
          v23 = sub_100029990(v22, v10);

          if (v23)
          {
            break;
          }

          if (v19 == ++v21)
          {
            v19 = [(NSMapTable *)v18 countByEnumeratingWithState:&v26 objects:v32 count:16];
            if (v19)
            {
              goto LABEL_24;
            }

            goto LABEL_30;
          }
        }
      }

      else
      {
LABEL_30:

        v18 = +[GEOMapDataSubscriptionManager sharedManager];
        [(NSMapTable *)v18 _removeStateObserver:self forPairedDeviceSubscriptionWithIdentifier:v10];
      }
    }
  }

  _geo_isolate_unlock();
}

- (id)_startObservingStateForIdentifier:(id)identifier fromPairedDevice:(BOOL)device onBehalfOfPeer:(id)peer
{
  deviceCopy = device;
  identifierCopy = identifier;
  peerCopy = peer;
  v44 = self->_stateObserversLock;
  _geo_isolate_lock();
  daemon = [(GEOMapSubscriptionsServer *)self daemon];
  peers = [daemon peers];
  v11 = [peers containsObject:peerCopy];

  if ((v11 & 1) == 0)
  {
    v22 = 0;
    goto LABEL_39;
  }

  stateObserverForPeer = self->_stateObserverForPeer;
  if (!stateObserverForPeer)
  {
    v13 = +[NSMapTable strongToStrongObjectsMapTable];
    v14 = self->_stateObserverForPeer;
    self->_stateObserverForPeer = v13;

    stateObserverForPeer = self->_stateObserverForPeer;
  }

  v38 = [(NSMapTable *)stateObserverForPeer count];
  if (deviceCopy)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = self->_stateObserverForPeer;
    v16 = [(NSMapTable *)v15 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v16)
    {
      v17 = *v41;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [(NSMapTable *)self->_stateObserverForPeer objectForKey:*(*(&v40 + 1) + 8 * i)];
          v20 = sub_100029990(v19, identifierCopy);

          if (v20)
          {
            v21 = 0;
            goto LABEL_16;
          }
        }

        v16 = [(NSMapTable *)v15 countByEnumeratingWithState:&v40 objects:v46 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v21 = 1;
LABEL_16:
  }

  else
  {
    v21 = 0;
  }

  v22 = [(NSMapTable *)self->_stateObserverForPeer objectForKey:peerCopy];
  if (!v22)
  {
    v22 = [_GEOMapSubscriptionStateObserverHelper alloc];
    v23 = peerCopy;
    if (v22)
    {
      v45.receiver = v22;
      v45.super_class = _GEOMapSubscriptionStateObserverHelper;
      v24 = [(GEOMapSubscriptionsServer *)&v45 init];
      v22 = v24;
      if (v24)
      {
        objc_storeWeak(&v24->_queue, v23);
        v37 = v23;
        v25 = geo_isolater_create_with_format();
        isolater = v22->_isolater;
        v22->_isolater = v25;
      }
    }

    [(NSMapTable *)self->_stateObserverForPeer setObject:v22 forKey:v23];
  }

  v27 = identifierCopy;
  if (deviceCopy)
  {
    if (v22)
    {
      v45.receiver = v22->_isolater;
      _geo_isolate_lock_data();
      if (([(NSMutableArray *)v22->_observingPairedDeviceIdentifiers containsObject:v27]& 1) == 0)
      {
        observingPairedDeviceIdentifiers = v22->_observingPairedDeviceIdentifiers;
        if (!observingPairedDeviceIdentifiers)
        {
          v29 = +[NSMutableArray array];
          v30 = v22->_observingPairedDeviceIdentifiers;
          v22->_observingPairedDeviceIdentifiers = v29;

          observingPairedDeviceIdentifiers = v22->_observingPairedDeviceIdentifiers;
        }

        [(NSMutableArray *)observingPairedDeviceIdentifiers addObject:v27, v37];
      }

LABEL_34:
      _geo_isolate_unlock();
    }
  }

  else if (v22)
  {
    v45.receiver = v22->_isolater;
    _geo_isolate_lock_data();
    if (([(NSMutableArray *)v22->_observingIdentifiers containsObject:v27]& 1) == 0)
    {
      observingIdentifiers = v22->_observingIdentifiers;
      if (!observingIdentifiers)
      {
        v32 = +[NSMutableArray array];
        v33 = v22->_observingIdentifiers;
        v22->_observingIdentifiers = v32;

        observingIdentifiers = v22->_observingIdentifiers;
      }

      [(NSMutableArray *)observingIdentifiers addObject:v27, v37];
    }

    goto LABEL_34;
  }

  if (!v38)
  {
    v34 = +[GEOMapDataSubscriptionManager sharedManager];
    [v34 _addStateObserver:self];
  }

  if (v21)
  {
    v35 = +[GEOMapDataSubscriptionManager sharedManager];
    [v35 _addStateObserver:self forPairedDeviceSubscriptionWithIdentifier:v27];
  }

LABEL_39:
  _geo_isolate_unlock();

  return v22;
}

- (void)stopObservingStateForSubscriptionsWithRequest:(id)request
{
  requestCopy = request;
  peer = [requestCopy peer];
  v6 = sub_1000020A0(peer);

  identifiers = [requestCopy identifiers];
  v8 = sub_100002284(v6, identifiers);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        peer2 = [requestCopy peer];
        [(GEOMapSubscriptionsServer *)self _stopObservingStateForIdentifier:v14 fromPairedDevice:0 onBehalfOfPeer:peer2];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  pairedDeviceIdentifiers = [requestCopy pairedDeviceIdentifiers];
  v17 = sub_100002284(v6, pairedDeviceIdentifiers);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v25 + 1) + 8 * v22);
        peer3 = [requestCopy peer];
        [(GEOMapSubscriptionsServer *)self _stopObservingStateForIdentifier:v23 fromPairedDevice:1 onBehalfOfPeer:peer3];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }
}

- (void)startObservingStateForSubscriptionsWithRequest:(id)request
{
  requestCopy = request;
  peer = [requestCopy peer];
  v6 = sub_1000020A0(peer);

  identifiers = [requestCopy identifiers];
  v29 = v6;
  v8 = sub_100002284(v6, identifiers);

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      v12 = 0;
      do
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v40 + 1) + 8 * v12);
        peer2 = [requestCopy peer];
        v15 = [(GEOMapSubscriptionsServer *)self _startObservingStateForIdentifier:v13 fromPairedDevice:0 onBehalfOfPeer:peer2];

        if (v15 && [requestCopy sendInitialUpdate])
        {
          v16 = +[GEOMapDataSubscriptionManager sharedManager];
          queue = self->_queue;
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_10002ACB8;
          v38[3] = &unk_100082670;
          v38[4] = self;
          v38[5] = v13;
          v39 = v15;
          [v16 fetchStateForSubscriptionWithIdentifier:v13 callbackQueue:queue completionHandler:v38];
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v10);
  }

  pairedDeviceIdentifiers = [requestCopy pairedDeviceIdentifiers];
  v19 = sub_100002284(v29, pairedDeviceIdentifiers);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v30 = v19;
  v20 = [v30 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      v23 = 0;
      do
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v30);
        }

        v24 = *(*(&v34 + 1) + 8 * v23);
        peer3 = [requestCopy peer];
        v26 = [(GEOMapSubscriptionsServer *)self _startObservingStateForIdentifier:v24 fromPairedDevice:1 onBehalfOfPeer:peer3];

        if (v26 && [requestCopy sendInitialUpdate])
        {
          v27 = +[GEOMapDataSubscriptionManager sharedManager];
          v28 = self->_queue;
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_10002AD68;
          v32[3] = &unk_100082670;
          v32[4] = self;
          v32[5] = v24;
          v33 = v26;
          [v27 fetchStateForPairedDeviceSubscriptionWithIdentifier:v24 callbackQueue:v28 completionHandler:v32];
        }

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v30 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v21);
  }
}

- (void)fetchPairedDeviceAvailableOfflineStorageWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapSubscriptionFetchPairedDeviceAvailableOfflineStorageReply alloc] initWithRequest:requestCopy];

  v6 = +[GEOMapDataSubscriptionManager sharedManager];
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002AF00;
  v9[3] = &unk_100082648;
  v10 = v5;
  v8 = v5;
  [v6 fetchAvailableDiskSpaceForPairedDeviceOfflineSubscriptionsWithQueue:queue completionHandler:v9];
}

- (void)fetchPairedDeviceSubscriptionsSummaryWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapSubscriptionFetchPairedDeviceSubscriptionsSummaryReply alloc] initWithRequest:requestCopy];

  v6 = +[GEOMapDataSubscriptionManager sharedManager];
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002B034;
  v9[3] = &unk_100082620;
  v10 = v5;
  v8 = v5;
  [v6 _fetchSerializedPairedDeviceSubscriptionsSummaryWithCallbackQueue:queue completionHandler:v9];
}

- (void)setPairedDeviceSubscriptionsSummaryWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapSubscriptionSetPairedDeviceSubscriptionsSummaryReply alloc] initWithRequest:requestCopy];
  v6 = +[GEOMapDataSubscriptionManager sharedManager];
  serializedSummary = [requestCopy serializedSummary];

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002B188;
  v10[3] = &unk_100083EC0;
  v11 = v5;
  v9 = v5;
  [v6 _setSerializedPairedDeviceSubscriptionsSummary:serializedSummary callbackQueue:queue completionHandler:v10];
}

- (void)handlePairedDeviceStateUpdateWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapSubscriptionHandlePairedDeviceSubscriptionStateUpdateReply alloc] initWithRequest:requestCopy];
  v6 = +[GEOMapDataSubscriptionManager sharedManager];
  serializedState = [requestCopy serializedState];

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002B2D4;
  v10[3] = &unk_100083EC0;
  v11 = v5;
  v9 = v5;
  [v6 _handleSerializedPairedDeviceStateUpdate:serializedState callbackQueue:queue completionHandler:v10];
}

- (void)fetchPairedDeviceIdentifiersToObserveWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapSubscriptionGetPairedDeviceSubscriptionsToObserveReply alloc] initWithRequest:requestCopy];

  v6 = +[GEOMapDataSubscriptionManager sharedManager];
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002B400;
  v9[3] = &unk_100082620;
  v10 = v5;
  v8 = v5;
  [v6 _fetchSerializedPairedDeviceSubscriptionIdentifiersToObserveWithCallbackQueue:queue completionHandler:v9];
}

- (void)fetchIdentifiersForSyncToPairedDeviceWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapSubscriptionGetIdentifiersForPairedDeviceSyncReply alloc] initWithRequest:requestCopy];
  peer = [requestCopy peer];

  v7 = sub_1000020A0(peer);

  v8 = +[GEOMapDataSubscriptionManager sharedManager];
  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002B56C;
  v12[3] = &unk_100082558;
  v13 = v5;
  v14 = v7;
  v10 = v7;
  v11 = v5;
  [v8 fetchSubscriptionIdentifiersToSyncToPairedDeviceWithQueue:queue completionHandler:v12];
}

- (void)setPairedDeviceSyncBehaviorWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapSubscriptionSetPairedDeviceSyncReply alloc] initWithRequest:requestCopy];
  identifier = [requestCopy identifier];
  peer = [requestCopy peer];
  v18 = 0;
  v8 = sub_10002B7B4(identifier, peer, &v18);
  v9 = v18;
  if (v8)
  {
  }

  else
  {
    peer2 = [requestCopy peer];
    v11 = [peer2 hasEntitlement:@"com.apple.geoservices.map-subscriptions.watch-sync"];

    if ((v11 & 1) == 0)
    {
      [v5 setError:v9];
      [v5 send];
      goto LABEL_6;
    }
  }

  v12 = +[GEOMapDataSubscriptionManager sharedManager];
  identifier2 = [requestCopy identifier];
  shouldSync = [requestCopy shouldSync];
  queue = self->_queue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002BB20;
  v16[3] = &unk_100083EC0;
  v17 = v5;
  [v12 setSubscriptionWithIdentifier:identifier2 shouldSyncToPairedDevice:shouldSync callbackQueue:queue completionHandler:v16];

LABEL_6:
}

- (void)fetchSubscriptionsForSyncToWatchWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapSubscriptionFetchSubscriptionsForWatchSyncReply alloc] initWithRequest:requestCopy];
  v6 = +[GEOMapDataSubscriptionManager sharedManager];
  deviceIdentifier = [requestCopy deviceIdentifier];

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002BC6C;
  v10[3] = &unk_1000825F8;
  v11 = v5;
  v9 = v5;
  [v6 _fetchSubscriptionsForSyncToWatchWithIdentifier:deviceIdentifier callbackQueue:queue completionHandler:v10];
}

- (void)calculateTotalOfflineDataSizeWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapSubscriptionTotalOfflineDataSizeReply alloc] initWithRequest:requestCopy];
  peer = [requestCopy peer];

  v7 = [peer valueForEntitlement:@"com.apple.geoservices.map-subscriptions"];

  if (v7)
  {
    v8 = +[GEOMapDataSubscriptionManager sharedManager];
    queue = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002BE04;
    v11[3] = &unk_1000825D0;
    v12 = v5;
    [v8 _calculateTotalSizeOfOfflineSubscriptionsWithCallbackQueue:queue completionHandler:v11];
  }

  else
  {
    v10 = [NSError GEOErrorWithCode:-5];
    [v5 setError:v10];

    [v5 send];
  }
}

- (void)cancelEstimatedSizeRequestWithRequest:(id)request
{
  requestCopy = request;
  requestUUID = [requestCopy requestUUID];

  if (requestUUID)
  {
    peer = [requestCopy peer];
    if ([peer hasEntitlement:@"com.apple.geoservices.map-subscriptions.manage-downloads"])
    {

LABEL_7:
      *buf = 0;
      v16 = buf;
      v17 = 0x3032000000;
      v18 = sub_100029428;
      v19 = sub_100029438;
      v20 = 0;
      sizeEstimationRequestsIsolation = self->_sizeEstimationRequestsIsolation;
      v14 = requestCopy;
      geo_isolate_sync_data();
      [*(v16 + 5) cancel];

      _Block_object_dispose(buf, 8);
      goto LABEL_8;
    }

    peer2 = [requestCopy peer];
    v8 = [peer2 hasEntitlement:@"com.apple.geoservices.map-subscriptions.size-estimate"];

    if (v8)
    {
      goto LABEL_7;
    }

    peer3 = [requestCopy peer];
    v10 = [peer3 valueForEntitlement:@"application-identifier"];

    if (v10)
    {
      v11 = [v10 isEqualToString:@"com.apple.Spotlight"];

      if (v11)
      {
        goto LABEL_7;
      }
    }

    v13 = GEOGetSubscriptionsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Attempt from unentitled peer to cancel estimated region size request", buf, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: request.requestUUID != ((void *)0)", buf, 2u);
  }

LABEL_8:
}

- (void)determineEstimatedSizeWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapSubscriptionSizeEstimationReply alloc] initWithRequest:requestCopy];
  peer = [requestCopy peer];
  if ([peer hasEntitlement:@"com.apple.geoservices.map-subscriptions.manage-downloads"])
  {

LABEL_6:
    requestUUID = [requestCopy requestUUID];
    v13 = +[GEOMapDataSubscriptionManager sharedManager];
    region = [requestCopy region];
    dataTypes = [requestCopy dataTypes];
    queue = self->_queue;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10002C448;
    v24[3] = &unk_1000825A8;
    v17 = requestUUID;
    v25 = v17;
    selfCopy = self;
    v27 = v5;
    v18 = [v13 determineEstimatedSizeForSubscriptionWithRegion:region dataTypes:dataTypes queue:queue completionHandler:v24];

    if (v18 && v17)
    {
      sizeEstimationRequestsIsolation = self->_sizeEstimationRequestsIsolation;
      v22 = v18;
      v23 = requestCopy;
      geo_isolate_sync_data();
    }

    goto LABEL_10;
  }

  peer2 = [requestCopy peer];
  v8 = [peer2 hasEntitlement:@"com.apple.geoservices.map-subscriptions.size-estimate"];

  if (v8)
  {
    goto LABEL_6;
  }

  peer3 = [requestCopy peer];
  v10 = [peer3 valueForEntitlement:@"application-identifier"];

  if (v10)
  {
    v11 = [v10 isEqualToString:@"com.apple.Spotlight"];

    if (v11)
    {
      goto LABEL_6;
    }
  }

  v20 = GEOGetSubscriptionsLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Attempt from unentitled peer to calculate estimated region size", buf, 2u);
  }

  v21 = [NSError GEOErrorWithCode:-5];
  [v5 setError:v21];

  [v5 send];
LABEL_10:
}

- (void)fetchLastUpdatedDateForOfflineSubscriptionsWithRequest:(id)request
{
  requestCopy = request;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002C6E4;
  v11[3] = &unk_100082580;
  v5 = [[GEOMapSubscriptionFetchLastUpdatedDateReply alloc] initWithRequest:requestCopy];
  v12 = v5;
  v6 = objc_retainBlock(v11);
  onPairedDevice = [requestCopy onPairedDevice];

  v8 = +[GEOMapDataSubscriptionManager sharedManager];
  v9 = v8;
  queue = self->_queue;
  if (onPairedDevice)
  {
    [v8 fetchLastUpdatedDateForPairedDeviceOfflineSubscriptionsWithQueue:queue completionHandler:v6];
  }

  else
  {
    [v8 fetchLastUpdatedDateForOfflineSubscriptionsWithQueue:queue completionHandler:v6];
  }
}

- (void)forceUpdateUserInitiatedSubscriptionsWithRequest:(id)request
{
  requestCopy = request;
  dataTypes = [requestCopy dataTypes];
  downloadMode = [requestCopy downloadMode];
  v7 = +[GEOMapDataSubscriptionManager sharedManager];
  preferredAuditToken = [requestCopy preferredAuditToken];

  [v7 _forceUpdateForUserInitiatedSubscriptionsForDataType:dataTypes mode:downloadMode auditToken:preferredAuditToken];
}

- (void)cancelDownloadForSubscriptionsWithRequest:(id)request
{
  requestCopy = request;
  peer = [requestCopy peer];
  v4 = sub_1000020A0(peer);

  identifiers = [requestCopy identifiers];
  v6 = sub_100002284(v4, identifiers);

  if ([v6 count])
  {
    onPairedDevice = [requestCopy onPairedDevice];
    v8 = +[GEOMapDataSubscriptionManager sharedManager];
    v9 = v8;
    if (onPairedDevice)
    {
      [v8 cancelDownloadForPairedDeviceSubscriptionIdentifiers:v6];
    }

    else
    {
      [v8 cancelDownloadForSubscriptionIdentifiers:v6];
    }
  }
}

- (void)startDownloadForSubscriptionsWithRequest:(id)request
{
  requestCopy = request;
  peer = [requestCopy peer];
  v4 = sub_1000020A0(peer);

  identifiers = [requestCopy identifiers];
  v6 = sub_100002284(v4, identifiers);

  if ([v6 count])
  {
    downloadMode = [requestCopy downloadMode];
    onPairedDevice = [requestCopy onPairedDevice];
    v9 = +[GEOMapDataSubscriptionManager sharedManager];
    v10 = v9;
    if (onPairedDevice)
    {
      [v9 startDownloadForPairedDeviceSubscriptionIdentifiers:v6 mode:downloadMode];
    }

    else
    {
      preferredAuditToken = [requestCopy preferredAuditToken];
      [v10 _startDownloadForSubscriptionIdentifiers:v6 mode:downloadMode auditToken:preferredAuditToken];
    }
  }
}

- (void)checkContainmentForRegionWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapSubscriptionContainmentReply alloc] initWithRequest:requestCopy];
  peer = [requestCopy peer];
  v7 = [peer hasEntitlement:@"com.apple.geoservices.map-subscriptions.check-existence"];

  if (v7 & 1) != 0 || ([requestCopy peer], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "valueForEntitlement:", @"application-identifier"), v9 = objc_claimAutoreleasedReturnValue(), v8, v9) && (v10 = objc_msgSend(v9, "isEqualToString:", @"com.apple.Spotlight"), v9, (v10))
  {
    v11 = +[GEOMapDataSubscriptionManager sharedManager];
    queue = self->_queue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002CC1C;
    v17[3] = &unk_100082558;
    v18 = v5;
    v19 = requestCopy;
    [v11 fetchAllSubscriptionsWithCallbackQueue:queue completionHandler:v17];
  }

  else
  {
    v13 = GEOGetSubscriptionsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      peer2 = [requestCopy peer];
      bundleIdentifier = [peer2 bundleIdentifier];
      *buf = 138543362;
      v21 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Attempt from unentitled peer '%{public}@' to check subscription existence/containment", buf, 0xCu);
    }

    v16 = [NSError GEOErrorWithCode:-5];
    [v5 setError:v16];

    [v5 send];
  }
}

- (void)fetchStateForSubscriptionWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapSubscriptionStateReply alloc] initWithRequest:requestCopy];
  identifier = [requestCopy identifier];
  peer = [requestCopy peer];
  v19 = 0;
  v8 = sub_10002B7B4(identifier, peer, &v19);
  v9 = v19;

  if (v8)
  {
    fromPairedDevice = [requestCopy fromPairedDevice];
    v11 = +[GEOMapDataSubscriptionManager sharedManager];
    identifier2 = [requestCopy identifier];
    queue = self->_queue;
    if (fromPairedDevice)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10002CFA0;
      v17[3] = &unk_100082530;
      v18 = v5;
      [v11 fetchStateForPairedDeviceSubscriptionWithIdentifier:identifier2 callbackQueue:queue completionHandler:v17];

      v14 = v18;
    }

    else
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10002CFEC;
      v15[3] = &unk_100082530;
      v16 = v5;
      [v11 fetchStateForSubscriptionWithIdentifier:identifier2 callbackQueue:queue completionHandler:v15];

      v14 = v16;
    }
  }

  else
  {
    [v5 setError:v9];
    [v5 send];
  }
}

- (void)removeSubscriptionWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapSubscriptionRemoveReply alloc] initWithRequest:requestCopy];
  identifier = [requestCopy identifier];
  peer = [requestCopy peer];
  v19 = 0;
  v8 = sub_10002B7B4(identifier, peer, &v19);
  v9 = v19;

  if (v8)
  {
    v10 = GEOGetSubscriptionsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      peer2 = [requestCopy peer];
      bundleIdentifier = [peer2 bundleIdentifier];
      identifier2 = [requestCopy identifier];
      *buf = 138543619;
      v21 = bundleIdentifier;
      v22 = 2113;
      v23 = identifier2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Peer '%{public}@' is removing a subscription: '%{private}@'", buf, 0x16u);
    }

    v14 = +[GEOMapDataSubscriptionManager sharedManager];
    identifier3 = [requestCopy identifier];
    queue = self->_queue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002D26C;
    v17[3] = &unk_100082508;
    v18 = v5;
    [v14 removeSubscriptionWithIdentifier:identifier3 callbackQueue:queue completionHandler:v17];
  }

  else
  {
    [v5 setError:v9];
    [v5 send];
  }
}

- (void)addSubscriptionWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOMapSubscriptionAddReply alloc] initWithRequest:requestCopy];
  identifier = [requestCopy identifier];
  peer = [requestCopy peer];
  v27 = 0;
  v8 = sub_10002B7B4(identifier, peer, &v27);
  v9 = v27;

  if (v8)
  {
    v24 = v9;
    [requestCopy dataTypes];
    v10 = GEOGetSubscriptionsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      peer2 = [requestCopy peer];
      bundleIdentifier = [peer2 bundleIdentifier];
      identifier2 = [requestCopy identifier];
      *buf = 138543619;
      v29 = bundleIdentifier;
      v30 = 2113;
      v31 = identifier2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Peer '%{public}@' is adding a subscription: '%{private}@'", buf, 0x16u);
    }

    v23 = +[GEOMapDataSubscriptionManager sharedManager];
    identifier3 = [requestCopy identifier];
    preferredAuditToken = [requestCopy preferredAuditToken];
    dataTypes = [requestCopy dataTypes];
    policy = [requestCopy policy];
    region = [requestCopy region];
    displayName = [requestCopy displayName];
    expirationDate = [requestCopy expirationDate];
    updateInterval = [requestCopy updateInterval];
    queue = self->_queue;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10002D58C;
    v25[3] = &unk_1000824E0;
    v26 = v5;
    [v23 _addSubscriptionWithIdentifier:identifier3 auditToken:preferredAuditToken dataTypes:dataTypes policy:policy region:region displayName:displayName expirationDate:updateInterval updateInterval:expirationDate callbackQueue:queue completionHandler:v25];

    v9 = v24;
  }

  else
  {
    [v5 setError:v9];
    [v5 send];
  }
}

- (void)fetchSubscriptionsWithRequest:(id)request
{
  requestCopy = request;
  peer = [requestCopy peer];
  v6 = sub_1000020A0(peer);

  if ([v6 count])
  {
    identifiersFilter = [requestCopy identifiersFilter];
    if ([identifiersFilter count])
    {
      identifiersFilter2 = [requestCopy identifiersFilter];
      v9 = sub_100002284(v6, identifiersFilter2);
    }

    else
    {
      v9 = v6;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10002D7D8;
    v19[3] = &unk_1000824B8;
    v13 = requestCopy;
    v20 = v13;
    v14 = objc_retainBlock(v19);
    fetchExpired = [v13 fetchExpired];
    v16 = +[GEOMapDataSubscriptionManager sharedManager];
    v17 = v16;
    queue = self->_queue;
    if (fetchExpired)
    {
      [v16 fetchExpiredSubscriptionsWithIdentifiers:v9 callbackQueue:queue completionHandler:v14];
    }

    else
    {
      [v16 fetchSubscriptionsWithIdentifiers:v9 callbackQueue:queue completionHandler:v14];
    }
  }

  else
  {
    v10 = [[GEOMapSubscriptionsFetchReply alloc] initWithRequest:requestCopy];
    v11 = [NSString stringWithFormat:@"Missing or incorrect entitlement '%@'", @"com.apple.geoservices.map-subscriptions"];
    v12 = [NSError GEOErrorWithCode:-5 reason:v11];
    [v10 setError:v12];

    [v10 send];
  }
}

- (void)setNeedsPairedDeviceSynchronization
{
  v2 = +[GEOMapDataSubscriptionManager sharedManager];
  [v2 _setNeedsPairedDeviceStateSynchronization];
}

- (void)peerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  [(GEOMapSubscriptionsServer *)self _stopObservingStatesOnBehalfOfPeer:disconnectCopy];
  v5.receiver = self;
  v5.super_class = GEOMapSubscriptionsServer;
  [(GEOMapSubscriptionsServer *)&v5 peerDidDisconnect:disconnectCopy];
}

- (void)runBackgroundTask:(id)task
{
  taskCopy = task;
  identifier = [taskCopy identifier];
  GEOBackgroundTaskReportReportTaskInitiated();

  identifier2 = [taskCopy identifier];
  v7 = [identifier2 isEqualToString:GEOMapDataSubscriptionAutomaticOfflineDataUpdateBackgroundTaskIdentifier];

  if (v7)
  {
    v8 = +[GEOMapDataSubscriptionManager sharedManager];
    [v8 _runAutomaticOfflineDataUpdateBackgroundTask:taskCopy];
    goto LABEL_7;
  }

  identifier3 = [taskCopy identifier];
  if ([identifier3 isEqualToString:GEOMapDataSubscriptionOfflineDownloadInexpensiveBackgroundTaskIdentifier])
  {

LABEL_6:
    v8 = +[GEOMapDataSubscriptionManager sharedManager];
    [v8 _runRetryOfflineDownloadBackgroundTask:taskCopy];
    goto LABEL_7;
  }

  identifier4 = [taskCopy identifier];
  v11 = [identifier4 isEqualToString:GEOMapDataSubscriptionOfflineDownloadRetryBackgroundTaskIdentifier];

  if (v11)
  {
    goto LABEL_6;
  }

  identifier5 = [taskCopy identifier];
  if ([identifier5 isEqualToString:GEOMapDataSubscriptionExpirationTaskIdentifier])
  {
  }

  else
  {
    identifier6 = [taskCopy identifier];
    v14 = [identifier6 isEqualToString:GEOMapDataSubscriptionUpcomingExpirationTaskIdentifier];

    if (!v14)
    {
      v15.receiver = self;
      v15.super_class = GEOMapSubscriptionsServer;
      [(GEOMapSubscriptionsServer *)&v15 runBackgroundTask:taskCopy];
      goto LABEL_8;
    }
  }

  v8 = +[GEOMapDataSubscriptionExpirationHelper sharedHelper];
  [v8 runBackgroundTask:taskCopy orIdentifier:0];
LABEL_7:

LABEL_8:
}

- (GEOMapSubscriptionsServer)initWithDaemon:(id)daemon
{
  v13.receiver = self;
  v13.super_class = GEOMapSubscriptionsServer;
  v3 = [(GEOMapSubscriptionsServer *)&v13 initWithDaemon:daemon];
  if (v3)
  {
    global_queue = geo_get_global_queue();
    v5 = geo_dispatch_queue_create_with_target();
    queue = v3->_queue;
    v3->_queue = v5;

    v7 = geo_isolater_create();
    stateObserversLock = v3->_stateObserversLock;
    v3->_stateObserversLock = v7;

    v9 = geo_isolater_create();
    sizeEstimationRequestsIsolation = v3->_sizeEstimationRequestsIsolation;
    v3->_sizeEstimationRequestsIsolation = v9;

    v11 = v3;
  }

  return v3;
}

@end