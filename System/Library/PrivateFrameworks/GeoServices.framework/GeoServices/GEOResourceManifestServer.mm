@interface GEOResourceManifestServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (GEOResourceManifestServer)initWithDaemon:(id)daemon;
- (id)_configurationForPeer:(id)peer;
- (id)_manifestManagerForPeer:(id)peer;
- (void)_fireOpportunisticResourceLoads;
- (void)_forEachPeerMatchingConfiguration:(id)configuration perform:(id)perform;
- (void)activateFilterWithRequest:(id)request;
- (void)deactivateFilterWithRequest:(id)request;
- (void)dealloc;
- (void)forceUpdateWithMessage:(id)message;
- (void)getMaxZoomWithRequest:(id)request;
- (void)getMaximumZoomLevelWithMessage:(id)message;
- (void)getMinZoomWithRequest:(id)request;
- (void)getResourceManifestWithMessage:(id)message;
- (void)peerDidConnect:(id)connect;
- (void)peerDidDisconnect:(id)disconnect;
- (void)resetActiveTileGroupWithMessage:(id)message;
- (void)runBackgroundTask:(id)task;
- (void)serverProxy:(id)proxy didChangeActiveTileGroup:(id)group finishedCallback:(id)callback;
- (void)serverProxyNeedsWiFiResourceActivity:(id)activity;
- (void)setActiveTileGroupIdentifierWithMessage:(id)message;
- (void)setConfigurationWithMessage:(id)message;
- (void)setRequestTokenWithMessage:(id)message;
- (void)updateIfNecessaryWithMessage:(id)message;
@end

@implementation GEOResourceManifestServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  v14 = 0;
  if (v13 <= 1699)
  {
    if (v13 <= 1462)
    {
      switch(v13)
      {
        case 1033:
          v21 = objc_opt_class();
          v22 = sub_100001388(@"resourcemanifest", messageCopy, objectCopy, v21, peerCopy);
          v16 = v22;
          if (v22)
          {
            [v22 setSignpostId:id];
            [(GEOResourceManifestServer *)self getMinZoomWithRequest:v16];
            goto LABEL_45;
          }

          goto LABEL_48;
        case 1035:
          v27 = objc_opt_class();
          v28 = sub_100001388(@"resourcemanifest", messageCopy, objectCopy, v27, peerCopy);
          v16 = v28;
          if (v28)
          {
            [v28 setSignpostId:id];
            [(GEOResourceManifestServer *)self getMaxZoomWithRequest:v16];
            goto LABEL_45;
          }

          goto LABEL_48;
        case 1138:
          v15 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
          v16 = v15;
          if (v15)
          {
            [v15 setSignpostId:id];
            [(GEOResourceManifestServer *)self forceUpdateWithMessage:v16];
LABEL_45:
            v14 = 1;
LABEL_46:

            goto LABEL_47;
          }

          goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (v13 == 1463)
    {
      v24 = objc_opt_class();
      v25 = sub_100001388(@"resourcemanifest", messageCopy, objectCopy, v24, peerCopy);
      v16 = v25;
      if (v25)
      {
        [v25 setSignpostId:id];
        [(GEOResourceManifestServer *)self activateFilterWithRequest:v16];
        goto LABEL_45;
      }

      goto LABEL_48;
    }

    if (v13 != 1590)
    {
      if (v13 == 1664)
      {
        v14 = 1;
        if (sub_100001B78(peerCopy, objectCopy, @"resourcemanifest", messageCopy, &off_100088E08, 1))
        {
          v18 = objc_opt_class();
          v19 = sub_100001388(@"resourcemanifest", messageCopy, objectCopy, v18, peerCopy);
          v16 = v19;
          if (v19)
          {
            [v19 setSignpostId:id];
            [(GEOResourceManifestServer *)self deactivateFilterWithRequest:v16];
            goto LABEL_45;
          }

          goto LABEL_48;
        }
      }

      goto LABEL_47;
    }

    if (sub_100001B78(peerCopy, objectCopy, @"resourcemanifest", messageCopy, &off_100088DF0, 0))
    {
      v30 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
      v16 = v30;
      if (v30)
      {
        [v30 setSignpostId:id];
        [(GEOResourceManifestServer *)self setRequestTokenWithMessage:v16];
        goto LABEL_45;
      }

      goto LABEL_48;
    }

LABEL_42:
    v14 = 1;
    goto LABEL_47;
  }

  if (v13 > 1982)
  {
    switch(v13)
    {
      case 1983:
        if (sub_100001B78(peerCopy, objectCopy, @"resourcemanifest", messageCopy, &off_100088E20, 0))
        {
          v26 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
          v16 = v26;
          if (v26)
          {
            [v26 setSignpostId:id];
            [(GEOResourceManifestServer *)self getResourceManifestWithMessage:v16];
            goto LABEL_45;
          }

          goto LABEL_48;
        }

        break;
      case 2074:
        v31 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
        v16 = v31;
        if (v31)
        {
          [v31 setSignpostId:id];
          [(GEOResourceManifestServer *)self resetActiveTileGroupWithMessage:v16];
          goto LABEL_45;
        }

        goto LABEL_48;
      case 2886:
        if (sub_100001B78(peerCopy, objectCopy, @"resourcemanifest", messageCopy, &off_100088DD8, 0))
        {
          v20 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
          v16 = v20;
          if (v20)
          {
            [v20 setSignpostId:id];
            [(GEOResourceManifestServer *)self setActiveTileGroupIdentifierWithMessage:v16];
            goto LABEL_45;
          }

          goto LABEL_48;
        }

        break;
      default:
        goto LABEL_47;
    }

    goto LABEL_42;
  }

  switch(v13)
  {
    case 1700:
      v23 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
      v16 = v23;
      if (v23)
      {
        [v23 setSignpostId:id];
        [(GEOResourceManifestServer *)self setConfigurationWithMessage:v16];
        goto LABEL_45;
      }

      goto LABEL_48;
    case 1759:
      v29 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
      v16 = v29;
      if (v29)
      {
        [v29 setSignpostId:id];
        [(GEOResourceManifestServer *)self updateIfNecessaryWithMessage:v16];
        goto LABEL_45;
      }

      goto LABEL_48;
    case 1979:
      v17 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
      v16 = v17;
      if (v17)
      {
        [v17 setSignpostId:id];
        [(GEOResourceManifestServer *)self getMaximumZoomLevelWithMessage:v16];
        goto LABEL_45;
      }

LABEL_48:
      v14 = 0;
      goto LABEL_46;
  }

LABEL_47:

  return v14;
}

- (void)serverProxyNeedsWiFiResourceActivity:(id)activity
{
  if (sub_10001FD1C())
  {
    sharedScheduler = [sub_10001FF30() sharedScheduler];
    v4 = [sharedScheduler taskRequestForIdentifier:@"com.apple.geod.OpportunisticResourceLoading"];
    v5 = GEOFindOrCreateLog();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v16 = @"com.apple.geod.OpportunisticResourceLoading";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "OpportunisticResourceLoading background task is already scheduled (%{public}@)", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Ensuring existence of opportunistic resource loading background task.", buf, 2u);
      }

      sharedScheduler2 = [sub_10001FF30() sharedScheduler];
      v6 = [sharedScheduler2 taskRequestForIdentifier:@"com.apple.geod.OpportunisticResourceLoading"];

      if (!v6)
      {
        v8 = [objc_alloc(sub_100020080()) initWithIdentifier:@"com.apple.geod.OpportunisticResourceLoading"];
        [v8 setPriority:1];
        [v8 setRequiresExternalPower:0];
        [v8 setRequiresNetworkConnectivity:1];
        [v8 setRequiresInexpensiveNetworkConnectivity:1];
        [v8 setNetworkDownloadSize:0x100000];
        v9 = GeoServicesConfig_OpportunisticResourceLoadingActivityDelay[1];
        [v8 setScheduleAfter:GEOConfigGetInteger()];
        v14 = 0;
        v10 = [sharedScheduler submitTaskRequest:v8 error:&v14];
        v11 = v14;
        if ((v10 & 1) == 0)
        {
          v12 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = @"Unknown";
            if (v11)
            {
              v13 = v11;
            }

            *buf = 138412290;
            v16 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to submit nonrepeating task with error: %@", buf, 0xCu);
          }
        }

        v6 = 0;
      }
    }
  }
}

- (void)serverProxy:(id)proxy didChangeActiveTileGroup:(id)group finishedCallback:(id)callback
{
  proxyCopy = proxy;
  callbackCopy = callback;
  queue = self->_queue;
  v14 = callbackCopy;
  v13 = proxyCopy;
  v10 = callbackCopy;
  v11 = proxyCopy;
  v12 = geo_dispatch_block_clean_copy();
  dispatch_async(queue, v12);
}

- (void)_forEachPeerMatchingConfiguration:(id)configuration perform:(id)perform
{
  configurationCopy = configuration;
  performCopy = perform;
  daemon = [(GEOResourceManifestServer *)self daemon];
  peers = [daemon peers];
  v10 = [peers copy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if ([v16 isForServerType:{11, v18}])
        {
          v17 = [(GEOResourceManifestServer *)self _configurationForPeer:v16];
          if ([configurationCopy isEqual:v17])
          {
            performCopy[2](performCopy, v16);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (void)getResourceManifestWithMessage:(id)message
{
  messageCopy = message;
  peer = [messageCopy peer];
  v6 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:peer];
  serverProxy = [v6 serverProxy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100048B28;
  v9[3] = &unk_100083698;
  v10 = messageCopy;
  v8 = messageCopy;
  [serverProxy getResourceManifestWithHandler:v9];
}

- (void)getMinZoomWithRequest:(id)request
{
  requestCopy = request;
  v9 = [[GEOResourceManifestZoom alloc] initWithRequest:requestCopy];
  peer = [requestCopy peer];
  v6 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:peer];
  serverProxy = [v6 serverProxy];
  style = [requestCopy style];

  [v9 setZoom:{objc_msgSend(serverProxy, "minimumZoomLevelForStyle:", style)}];
  [v9 send];
}

- (void)getMaxZoomWithRequest:(id)request
{
  requestCopy = request;
  v9 = [[GEOResourceManifestZoom alloc] initWithRequest:requestCopy];
  peer = [requestCopy peer];
  v6 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:peer];
  serverProxy = [v6 serverProxy];
  style = [requestCopy style];

  [v9 setZoom:{objc_msgSend(serverProxy, "maximumZoomLevelForStyle:", style)}];
  [v9 send];
}

- (void)getMaximumZoomLevelWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"style"];

  userInfo2 = [messageCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"scale"];

  if (v6 && v8)
  {
    intValue = [v6 intValue];
    intValue2 = [v8 intValue];
    v19 = 2;
    peer = [messageCopy peer];
    v12 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:peer];
    serverProxy = [v12 serverProxy];
    v14 = [serverProxy maximumZoomLevelForStyle:intValue scale:intValue2 outSize:&v19];

    v20[0] = @"result";
    v15 = [NSNumber numberWithUnsignedInt:v14];
    v20[1] = @"idealSize";
    v21[0] = v15;
    v16 = [NSNumber numberWithInt:v19];
    v21[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    [messageCopy sendReply:v17];
  }

  else
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing input parameters for message 'getMaximumZoomLevel'", &v19, 2u);
    }

    v15 = [NSError GEOErrorWithCode:-10 reason:@"Missing input parameters"];
    v16 = [NSDictionary _geo_replyDictionaryForError:v15 key:@"err"];
    [messageCopy sendReply:v16];
  }
}

- (void)deactivateFilterWithRequest:(id)request
{
  requestCopy = request;
  filter = [requestCopy filter];
  peer = [requestCopy peer];

  v6 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:peer];
  serverProxy = [v6 serverProxy];

  if (filter && serverProxy)
  {
    whichFilter = [filter whichFilter];
    if (whichFilter == 3)
    {
      name = [filter name];
      [serverProxy deactivateResourceName:name];
    }

    else if (whichFilter == 2)
    {
      [serverProxy deactivateResourceScenario:{objc_msgSend(filter, "scenario")}];
    }

    else if (whichFilter == 1)
    {
      [serverProxy deactivateResourceScale:{objc_msgSend(filter, "scale")}];
    }
  }
}

- (void)activateFilterWithRequest:(id)request
{
  requestCopy = request;
  filter = [requestCopy filter];
  peer = [requestCopy peer];

  v6 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:peer];
  serverProxy = [v6 serverProxy];

  if (filter && serverProxy)
  {
    whichFilter = [filter whichFilter];
    if (whichFilter == 3)
    {
      name = [filter name];
      [serverProxy activateResourceName:name];
    }

    else if (whichFilter == 2)
    {
      [serverProxy activateResourceScenario:{objc_msgSend(filter, "scenario")}];
    }

    else if (whichFilter == 1)
    {
      [serverProxy activateResourceScale:{objc_msgSend(filter, "scale")}];
    }
  }
}

- (void)setRequestTokenWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"requestToken"];

  peer = [messageCopy peer];
  v8 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:peer];
  serverProxy = [v8 serverProxy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100049360;
  v11[3] = &unk_100083EC0;
  v12 = messageCopy;
  v10 = messageCopy;
  [serverProxy setManifestToken:v6 completionHandler:v11];
}

- (void)resetActiveTileGroupWithMessage:(id)message
{
  peer = [message peer];
  v4 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:peer];
  serverProxy = [v4 serverProxy];
  [serverProxy resetActiveTileGroup];
}

- (void)forceUpdateWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"type"];
  integerValue = [v6 integerValue];

  peer = [messageCopy peer];
  v9 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:peer];
  serverProxy = [v9 serverProxy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100049558;
  v12[3] = &unk_100083EC0;
  v13 = messageCopy;
  v11 = messageCopy;
  [serverProxy forceUpdate:integerValue completionHandler:v12];
}

- (void)updateIfNecessaryWithMessage:(id)message
{
  messageCopy = message;
  peer = [messageCopy peer];
  v6 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:peer];
  serverProxy = [v6 serverProxy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100049698;
  v9[3] = &unk_100083EC0;
  v10 = messageCopy;
  v8 = messageCopy;
  [serverProxy updateIfNecessary:v9];
}

- (void)setActiveTileGroupIdentifierWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"reply"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  userInfo2 = [messageCopy userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:@"identifier"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (bOOLValue)
    {
      userInfo3 = [messageCopy userInfo];
      v11 = [userInfo3 objectForKeyedSubscript:@"type"];
      integerValue = [v11 integerValue];

      peer = [messageCopy peer];
      v14 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:peer];
      serverProxy = [v14 serverProxy];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100049964;
      v21[3] = &unk_100083EC0;
      v22 = messageCopy;
      [serverProxy setActiveTileGroupIdentifier:v9 updateType:integerValue completionHandler:v21];
    }

    else
    {
      peer2 = [messageCopy peer];
      v19 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:peer2];
      serverProxy2 = [v19 serverProxy];
      [serverProxy2 setActiveTileGroupIdentifier:v9];
    }
  }

  else if (bOOLValue)
  {
    v16 = [NSError GEOErrorWithCode:-12 reason:@"Tile Group Identifier is not a number"];
    v17 = [NSDictionary _geo_replyDictionaryForError:v16 key:@"err"];
    [messageCopy sendReply:v17];
  }
}

- (void)setConfigurationWithMessage:(id)message
{
  messageCopy = message;
  peer = [messageCopy peer];
  if ([peer hasEntitlement:@"com.apple.geoservices.custom-manifest-configuration"])
  {
    userInfo = [messageCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:@"cfg"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [NSSet setWithObject:objc_opt_class()];
      v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v7 error:0];

      if (v9)
      {
        [(NSMapTable *)self->_peerToConfiguration setObject:v9 forKey:peer];
        if (([(NSMutableSet *)self->_alreadyRegisteredConfigurations containsObject:v9]& 1) == 0)
        {
          [(NSMutableSet *)self->_alreadyRegisteredConfigurations addObject:v9];
          v10 = [GEOResourceManifestManager modernManagerForConfiguration:v9];
          [v10 addServerProxyObserver:self];
          [v10 openServerConnection];
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      bundleIdentifier = [peer bundleIdentifier];
      v13 = 138543362;
      v14 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Un-entitled process %{public}@ is trying to set a custom manifest configuration", &v13, 0xCu);
    }
  }
}

- (void)_fireOpportunisticResourceLoads
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Opportunistic resource loading XPC activity fired. Will attempt to load stale resources.", v6, 2u);
  }

  v3 = +[GEOResourceManifestManager modernManager];
  serverProxy = [v3 serverProxy];
  [serverProxy performOpportunisticResourceLoading];

  if (sub_10000BF18())
  {
    sharedInstance = [sub_10000C0DC() sharedInstance];
    [sharedInstance getDevicesWithBlock:&stru_100083670];
  }
}

- (id)_configurationForPeer:(id)peer
{
  v3 = [(NSMapTable *)self->_peerToConfiguration objectForKey:peer];
  if (!v3)
  {
    if (qword_100096168 != -1)
    {
      dispatch_once(&qword_100096168, &stru_100083630);
    }

    v3 = qword_100096170;
  }

  return v3;
}

- (id)_manifestManagerForPeer:(id)peer
{
  v3 = [(NSMapTable *)self->_peerToConfiguration objectForKey:peer];
  v4 = [GEOResourceManifestManager modernManagerForConfiguration:v3];

  return v4;
}

- (void)peerDidDisconnect:(id)disconnect
{
  peerToConfiguration = self->_peerToConfiguration;
  disconnectCopy = disconnect;
  [(NSMapTable *)peerToConfiguration removeObjectForKey:disconnectCopy];
  v6.receiver = self;
  v6.super_class = GEOResourceManifestServer;
  [(GEOResourceManifestServer *)&v6 peerDidDisconnect:disconnectCopy];
}

- (void)peerDidConnect:(id)connect
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004A044;
  block[3] = &unk_1000838C8;
  block[4] = self;
  v4 = qword_100096160;
  connectCopy = connect;
  if (v4 != -1)
  {
    dispatch_once(&qword_100096160, block);
  }

  v6.receiver = self;
  v6.super_class = GEOResourceManifestServer;
  [(GEOResourceManifestServer *)&v6 peerDidConnect:connectCopy];
}

- (void)runBackgroundTask:(id)task
{
  taskCopy = task;
  identifier = [taskCopy identifier];
  v6 = [identifier isEqualToString:@"com.apple.geod.OpportunisticResourceLoading"];

  if (v6)
  {
    identifier2 = [taskCopy identifier];
    GEOBackgroundTaskReportReportTaskInitiated();

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A380;
    block[3] = &unk_100083940;
    block[4] = self;
    v11 = taskCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GEOResourceManifestServer;
    [(GEOResourceManifestServer *)&v9 runBackgroundTask:taskCopy];
  }
}

- (void)dealloc
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_alreadyRegisteredConfigurations;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [GEOResourceManifestManager modernManagerForConfiguration:*(*(&v10 + 1) + 8 * v7)];
        [v8 removeServerProxyObserver:self];
        [v8 closeServerConnection];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = GEOResourceManifestServer;
  [(GEOResourceManifestServer *)&v9 dealloc];
}

- (GEOResourceManifestServer)initWithDaemon:(id)daemon
{
  v16.receiver = self;
  v16.super_class = GEOResourceManifestServer;
  v3 = [(GEOResourceManifestServer *)&v16 initWithDaemon:daemon];
  if (v3)
  {
    v4 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:5];
    peerToConfiguration = v3->_peerToConfiguration;
    v3->_peerToConfiguration = v4;

    v6 = objc_alloc_init(NSMutableSet);
    alreadyRegisteredConfigurations = v3->_alreadyRegisteredConfigurations;
    v3->_alreadyRegisteredConfigurations = v6;

    global_queue = geo_get_global_queue();
    v9 = geo_dispatch_queue_create_with_target();
    queue = v3->_queue;
    v3->_queue = v9;

    v11 = geo_isolater_create();
    constrainedNetworkUpdateAssertionIsolation = v3->_constrainedNetworkUpdateAssertionIsolation;
    v3->_constrainedNetworkUpdateAssertionIsolation = v11;

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v3 selector:"_configureConstrainedNetworkUpdateAssertion" name:GEONetworkObserverConstrainedNetworkDidChangeNotificationName object:0];

    [(GEOResourceManifestServer *)v3 _configureConstrainedNetworkUpdateAssertion];
    v15 = v3;
    geo_dispatch_async_qos();
  }

  return v3;
}

@end