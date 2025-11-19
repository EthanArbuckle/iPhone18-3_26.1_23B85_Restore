@interface GEOResourceManifestServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (GEOResourceManifestServer)initWithDaemon:(id)a3;
- (id)_configurationForPeer:(id)a3;
- (id)_manifestManagerForPeer:(id)a3;
- (void)_fireOpportunisticResourceLoads;
- (void)_forEachPeerMatchingConfiguration:(id)a3 perform:(id)a4;
- (void)activateFilterWithRequest:(id)a3;
- (void)deactivateFilterWithRequest:(id)a3;
- (void)dealloc;
- (void)forceUpdateWithMessage:(id)a3;
- (void)getMaxZoomWithRequest:(id)a3;
- (void)getMaximumZoomLevelWithMessage:(id)a3;
- (void)getMinZoomWithRequest:(id)a3;
- (void)getResourceManifestWithMessage:(id)a3;
- (void)peerDidConnect:(id)a3;
- (void)peerDidDisconnect:(id)a3;
- (void)resetActiveTileGroupWithMessage:(id)a3;
- (void)runBackgroundTask:(id)a3;
- (void)serverProxy:(id)a3 didChangeActiveTileGroup:(id)a4 finishedCallback:(id)a5;
- (void)serverProxyNeedsWiFiResourceActivity:(id)a3;
- (void)setActiveTileGroupIdentifierWithMessage:(id)a3;
- (void)setConfigurationWithMessage:(id)a3;
- (void)setRequestTokenWithMessage:(id)a3;
- (void)updateIfNecessaryWithMessage:(id)a3;
@end

@implementation GEOResourceManifestServer

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100001334(v10);
  v14 = 0;
  if (v13 <= 1699)
  {
    if (v13 <= 1462)
    {
      switch(v13)
      {
        case 1033:
          v21 = objc_opt_class();
          v22 = sub_100001388(@"resourcemanifest", v10, v11, v21, v12);
          v16 = v22;
          if (v22)
          {
            [v22 setSignpostId:a6];
            [(GEOResourceManifestServer *)self getMinZoomWithRequest:v16];
            goto LABEL_45;
          }

          goto LABEL_48;
        case 1035:
          v27 = objc_opt_class();
          v28 = sub_100001388(@"resourcemanifest", v10, v11, v27, v12);
          v16 = v28;
          if (v28)
          {
            [v28 setSignpostId:a6];
            [(GEOResourceManifestServer *)self getMaxZoomWithRequest:v16];
            goto LABEL_45;
          }

          goto LABEL_48;
        case 1138:
          v15 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
          v16 = v15;
          if (v15)
          {
            [v15 setSignpostId:a6];
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
      v25 = sub_100001388(@"resourcemanifest", v10, v11, v24, v12);
      v16 = v25;
      if (v25)
      {
        [v25 setSignpostId:a6];
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
        if (sub_100001B78(v12, v11, @"resourcemanifest", v10, &off_100088E08, 1))
        {
          v18 = objc_opt_class();
          v19 = sub_100001388(@"resourcemanifest", v10, v11, v18, v12);
          v16 = v19;
          if (v19)
          {
            [v19 setSignpostId:a6];
            [(GEOResourceManifestServer *)self deactivateFilterWithRequest:v16];
            goto LABEL_45;
          }

          goto LABEL_48;
        }
      }

      goto LABEL_47;
    }

    if (sub_100001B78(v12, v11, @"resourcemanifest", v10, &off_100088DF0, 0))
    {
      v30 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
      v16 = v30;
      if (v30)
      {
        [v30 setSignpostId:a6];
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
        if (sub_100001B78(v12, v11, @"resourcemanifest", v10, &off_100088E20, 0))
        {
          v26 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
          v16 = v26;
          if (v26)
          {
            [v26 setSignpostId:a6];
            [(GEOResourceManifestServer *)self getResourceManifestWithMessage:v16];
            goto LABEL_45;
          }

          goto LABEL_48;
        }

        break;
      case 2074:
        v31 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
        v16 = v31;
        if (v31)
        {
          [v31 setSignpostId:a6];
          [(GEOResourceManifestServer *)self resetActiveTileGroupWithMessage:v16];
          goto LABEL_45;
        }

        goto LABEL_48;
      case 2886:
        if (sub_100001B78(v12, v11, @"resourcemanifest", v10, &off_100088DD8, 0))
        {
          v20 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
          v16 = v20;
          if (v20)
          {
            [v20 setSignpostId:a6];
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
      v23 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
      v16 = v23;
      if (v23)
      {
        [v23 setSignpostId:a6];
        [(GEOResourceManifestServer *)self setConfigurationWithMessage:v16];
        goto LABEL_45;
      }

      goto LABEL_48;
    case 1759:
      v29 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
      v16 = v29;
      if (v29)
      {
        [v29 setSignpostId:a6];
        [(GEOResourceManifestServer *)self updateIfNecessaryWithMessage:v16];
        goto LABEL_45;
      }

      goto LABEL_48;
    case 1979:
      v17 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
      v16 = v17;
      if (v17)
      {
        [v17 setSignpostId:a6];
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

- (void)serverProxyNeedsWiFiResourceActivity:(id)a3
{
  if (sub_10001FD1C())
  {
    v3 = [sub_10001FF30() sharedScheduler];
    v4 = [v3 taskRequestForIdentifier:@"com.apple.geod.OpportunisticResourceLoading"];
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

      v7 = [sub_10001FF30() sharedScheduler];
      v6 = [v7 taskRequestForIdentifier:@"com.apple.geod.OpportunisticResourceLoading"];

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
        v10 = [v3 submitTaskRequest:v8 error:&v14];
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

- (void)serverProxy:(id)a3 didChangeActiveTileGroup:(id)a4 finishedCallback:(id)a5
{
  v7 = a3;
  v8 = a5;
  queue = self->_queue;
  v14 = v8;
  v13 = v7;
  v10 = v8;
  v11 = v7;
  v12 = geo_dispatch_block_clean_copy();
  dispatch_async(queue, v12);
}

- (void)_forEachPeerMatchingConfiguration:(id)a3 perform:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GEOResourceManifestServer *)self daemon];
  v9 = [v8 peers];
  v10 = [v9 copy];

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
          if ([v6 isEqual:v17])
          {
            v7[2](v7, v16);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }
}

- (void)getResourceManifestWithMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 peer];
  v6 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:v5];
  v7 = [v6 serverProxy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100048B28;
  v9[3] = &unk_100083698;
  v10 = v4;
  v8 = v4;
  [v7 getResourceManifestWithHandler:v9];
}

- (void)getMinZoomWithRequest:(id)a3
{
  v4 = a3;
  v9 = [[GEOResourceManifestZoom alloc] initWithRequest:v4];
  v5 = [v4 peer];
  v6 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:v5];
  v7 = [v6 serverProxy];
  v8 = [v4 style];

  [v9 setZoom:{objc_msgSend(v7, "minimumZoomLevelForStyle:", v8)}];
  [v9 send];
}

- (void)getMaxZoomWithRequest:(id)a3
{
  v4 = a3;
  v9 = [[GEOResourceManifestZoom alloc] initWithRequest:v4];
  v5 = [v4 peer];
  v6 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:v5];
  v7 = [v6 serverProxy];
  v8 = [v4 style];

  [v9 setZoom:{objc_msgSend(v7, "maximumZoomLevelForStyle:", v8)}];
  [v9 send];
}

- (void)getMaximumZoomLevelWithMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"style"];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"scale"];

  if (v6 && v8)
  {
    v9 = [v6 intValue];
    v10 = [v8 intValue];
    v19 = 2;
    v11 = [v4 peer];
    v12 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:v11];
    v13 = [v12 serverProxy];
    v14 = [v13 maximumZoomLevelForStyle:v9 scale:v10 outSize:&v19];

    v20[0] = @"result";
    v15 = [NSNumber numberWithUnsignedInt:v14];
    v20[1] = @"idealSize";
    v21[0] = v15;
    v16 = [NSNumber numberWithInt:v19];
    v21[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    [v4 sendReply:v17];
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
    [v4 sendReply:v16];
  }
}

- (void)deactivateFilterWithRequest:(id)a3
{
  v4 = a3;
  v10 = [v4 filter];
  v5 = [v4 peer];

  v6 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:v5];
  v7 = [v6 serverProxy];

  if (v10 && v7)
  {
    v8 = [v10 whichFilter];
    if (v8 == 3)
    {
      v9 = [v10 name];
      [v7 deactivateResourceName:v9];
    }

    else if (v8 == 2)
    {
      [v7 deactivateResourceScenario:{objc_msgSend(v10, "scenario")}];
    }

    else if (v8 == 1)
    {
      [v7 deactivateResourceScale:{objc_msgSend(v10, "scale")}];
    }
  }
}

- (void)activateFilterWithRequest:(id)a3
{
  v4 = a3;
  v10 = [v4 filter];
  v5 = [v4 peer];

  v6 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:v5];
  v7 = [v6 serverProxy];

  if (v10 && v7)
  {
    v8 = [v10 whichFilter];
    if (v8 == 3)
    {
      v9 = [v10 name];
      [v7 activateResourceName:v9];
    }

    else if (v8 == 2)
    {
      [v7 activateResourceScenario:{objc_msgSend(v10, "scenario")}];
    }

    else if (v8 == 1)
    {
      [v7 activateResourceScale:{objc_msgSend(v10, "scale")}];
    }
  }
}

- (void)setRequestTokenWithMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"requestToken"];

  v7 = [v4 peer];
  v8 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:v7];
  v9 = [v8 serverProxy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100049360;
  v11[3] = &unk_100083EC0;
  v12 = v4;
  v10 = v4;
  [v9 setManifestToken:v6 completionHandler:v11];
}

- (void)resetActiveTileGroupWithMessage:(id)a3
{
  v6 = [a3 peer];
  v4 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:v6];
  v5 = [v4 serverProxy];
  [v5 resetActiveTileGroup];
}

- (void)forceUpdateWithMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"type"];
  v7 = [v6 integerValue];

  v8 = [v4 peer];
  v9 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:v8];
  v10 = [v9 serverProxy];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100049558;
  v12[3] = &unk_100083EC0;
  v13 = v4;
  v11 = v4;
  [v10 forceUpdate:v7 completionHandler:v12];
}

- (void)updateIfNecessaryWithMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 peer];
  v6 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:v5];
  v7 = [v6 serverProxy];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100049698;
  v9[3] = &unk_100083EC0;
  v10 = v4;
  v8 = v4;
  [v7 updateIfNecessary:v9];
}

- (void)setActiveTileGroupIdentifierWithMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"reply"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"identifier"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v7)
    {
      v10 = [v4 userInfo];
      v11 = [v10 objectForKeyedSubscript:@"type"];
      v12 = [v11 integerValue];

      v13 = [v4 peer];
      v14 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:v13];
      v15 = [v14 serverProxy];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100049964;
      v21[3] = &unk_100083EC0;
      v22 = v4;
      [v15 setActiveTileGroupIdentifier:v9 updateType:v12 completionHandler:v21];
    }

    else
    {
      v18 = [v4 peer];
      v19 = [(GEOResourceManifestServer *)self _manifestManagerForPeer:v18];
      v20 = [v19 serverProxy];
      [v20 setActiveTileGroupIdentifier:v9];
    }
  }

  else if (v7)
  {
    v16 = [NSError GEOErrorWithCode:-12 reason:@"Tile Group Identifier is not a number"];
    v17 = [NSDictionary _geo_replyDictionaryForError:v16 key:@"err"];
    [v4 sendReply:v17];
  }
}

- (void)setConfigurationWithMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 peer];
  if ([v5 hasEntitlement:@"com.apple.geoservices.custom-manifest-configuration"])
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKeyedSubscript:@"cfg"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [NSSet setWithObject:objc_opt_class()];
      v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v7 error:0];

      if (v9)
      {
        [(NSMapTable *)self->_peerToConfiguration setObject:v9 forKey:v5];
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
      v12 = [v5 bundleIdentifier];
      v13 = 138543362;
      v14 = v12;
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
  v4 = [v3 serverProxy];
  [v4 performOpportunisticResourceLoading];

  if (sub_10000BF18())
  {
    v5 = [sub_10000C0DC() sharedInstance];
    [v5 getDevicesWithBlock:&stru_100083670];
  }
}

- (id)_configurationForPeer:(id)a3
{
  v3 = [(NSMapTable *)self->_peerToConfiguration objectForKey:a3];
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

- (id)_manifestManagerForPeer:(id)a3
{
  v3 = [(NSMapTable *)self->_peerToConfiguration objectForKey:a3];
  v4 = [GEOResourceManifestManager modernManagerForConfiguration:v3];

  return v4;
}

- (void)peerDidDisconnect:(id)a3
{
  peerToConfiguration = self->_peerToConfiguration;
  v5 = a3;
  [(NSMapTable *)peerToConfiguration removeObjectForKey:v5];
  v6.receiver = self;
  v6.super_class = GEOResourceManifestServer;
  [(GEOResourceManifestServer *)&v6 peerDidDisconnect:v5];
}

- (void)peerDidConnect:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004A044;
  block[3] = &unk_1000838C8;
  block[4] = self;
  v4 = qword_100096160;
  v5 = a3;
  if (v4 != -1)
  {
    dispatch_once(&qword_100096160, block);
  }

  v6.receiver = self;
  v6.super_class = GEOResourceManifestServer;
  [(GEOResourceManifestServer *)&v6 peerDidConnect:v5];
}

- (void)runBackgroundTask:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:@"com.apple.geod.OpportunisticResourceLoading"];

  if (v6)
  {
    v7 = [v4 identifier];
    GEOBackgroundTaskReportReportTaskInitiated();

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004A380;
    block[3] = &unk_100083940;
    block[4] = self;
    v11 = v4;
    dispatch_async(queue, block);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GEOResourceManifestServer;
    [(GEOResourceManifestServer *)&v9 runBackgroundTask:v4];
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

- (GEOResourceManifestServer)initWithDaemon:(id)a3
{
  v16.receiver = self;
  v16.super_class = GEOResourceManifestServer;
  v3 = [(GEOResourceManifestServer *)&v16 initWithDaemon:a3];
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