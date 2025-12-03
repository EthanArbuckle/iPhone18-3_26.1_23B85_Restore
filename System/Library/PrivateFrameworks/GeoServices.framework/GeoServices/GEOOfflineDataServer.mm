@interface GEOOfflineDataServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (GEOOfflineDataServer)initWithDaemon:(id)daemon;
- (void)checkExistenceWithRequest:(id)request;
- (void)fetchAvailableKeysWithRequest:(id)request;
- (void)fetchTileConfigurationWithRequest:(id)request;
- (void)fetchVersionMetadataWithRequest:(id)request;
- (void)fetchWithRequest:(id)request;
@end

@implementation GEOOfflineDataServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  v14 = 0;
  if (v13 <= 1830)
  {
    if (v13 == 522)
    {
      v14 = 1;
      if (sub_100001B78(peerCopy, objectCopy, @"offlinedata", messageCopy, &off_100088FB8, 1))
      {
        v24 = objc_opt_class();
        v25 = sub_100001388(@"offlinedata", messageCopy, objectCopy, v24, peerCopy);
        v17 = v25;
        if (v25)
        {
          [v25 setSignpostId:id];
          [(GEOOfflineDataServer *)self fetchWithRequest:v17];
          goto LABEL_21;
        }

        goto LABEL_24;
      }
    }

    else if (v13 == 1446)
    {
      v14 = 1;
      if (sub_100001B78(peerCopy, objectCopy, @"offlinedata", messageCopy, &off_100088FD0, 1))
      {
        v18 = objc_opt_class();
        v19 = sub_100001388(@"offlinedata", messageCopy, objectCopy, v18, peerCopy);
        v17 = v19;
        if (v19)
        {
          [v19 setSignpostId:id];
          [(GEOOfflineDataServer *)self checkExistenceWithRequest:v17];
          goto LABEL_21;
        }

LABEL_24:
        v14 = 0;
        goto LABEL_22;
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 1831:
        v14 = 1;
        if (sub_100001B78(peerCopy, objectCopy, @"offlinedata", messageCopy, &off_100088FE8, 1))
        {
          v20 = objc_opt_class();
          v21 = sub_100001388(@"offlinedata", messageCopy, objectCopy, v20, peerCopy);
          v17 = v21;
          if (v21)
          {
            [v21 setSignpostId:id];
            [(GEOOfflineDataServer *)self fetchAvailableKeysWithRequest:v17];
            goto LABEL_21;
          }

          goto LABEL_24;
        }

        break;
      case 2065:
        v14 = 1;
        if (sub_100001B78(peerCopy, objectCopy, @"offlinedata", messageCopy, &off_100089000, 1))
        {
          v22 = objc_opt_class();
          v23 = sub_100001388(@"offlinedata", messageCopy, objectCopy, v22, peerCopy);
          v17 = v23;
          if (v23)
          {
            [v23 setSignpostId:id];
            [(GEOOfflineDataServer *)self fetchVersionMetadataWithRequest:v17];
            goto LABEL_21;
          }

          goto LABEL_24;
        }

        break;
      case 2288:
        v15 = objc_opt_class();
        v16 = sub_100001388(@"offlinedata", messageCopy, objectCopy, v15, peerCopy);
        v17 = v16;
        if (v16)
        {
          [v16 setSignpostId:id];
          [(GEOOfflineDataServer *)self fetchTileConfigurationWithRequest:v17];
LABEL_21:
          v14 = 1;
LABEL_22:

          break;
        }

        goto LABEL_24;
    }
  }

  return v14;
}

- (void)fetchTileConfigurationWithRequest:(id)request
{
  requestCopy = request;
  v4 = [[GEOOfflineTileConfigurationFetchReply alloc] initWithRequest:requestCopy];
  v5 = +[GEOOfflineDataAccess sharedInstance];
  state = [requestCopy state];

  v9 = 0;
  v7 = [v5 offlineTileMetadataWithState:state error:&v9];
  v8 = v9;

  if (v7)
  {
    [v4 setConfiguration:v7];
  }

  else
  {
    [v4 setError:v8];
  }

  [v4 send];
}

- (void)fetchVersionMetadataWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOOfflineVersionMetadataFetchReply alloc] initWithRequest:requestCopy];

  if (sub_100002208(self))
  {
    v6 = +[GEOOfflineDataAccess sharedInstance];
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100022D7C;
    v8[3] = &unk_100082118;
    v9 = v5;
    [v6 getOfflineVersionMetadataWithCallbackQueue:queue callback:v8];
  }

  else
  {
    [v5 send];
  }
}

- (void)fetchAvailableKeysWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOOfflineDataFetchAvailableKeysReply alloc] initWithRequest:requestCopy];
  if (sub_100002208(self))
  {
    v6 = +[GEOOfflineDataAccess sharedInstance];
    layer = [requestCopy layer];
    queue = self->_queue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100022ED8;
    v9[3] = &unk_1000824B8;
    v10 = v5;
    [v6 getAvailableKeysForLayer:layer callbackQueue:queue callback:v9];
  }

  else
  {
    [v5 send];
  }
}

- (void)checkExistenceWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOOfflineDataCheckExistenceReply alloc] initWithRequest:requestCopy];
  if (sub_100002208(self))
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000230AC;
    v13[3] = &unk_100082508;
    v14 = v5;
    v6 = objc_retainBlock(v13);
    sync = [requestCopy sync];
    v8 = +[GEOOfflineDataAccess sharedInstance];
    v9 = [requestCopy key];
    if (sync)
    {
      v12 = 0;
      v10 = [v8 hasDataForKey:v9 error:&v12];
      v11 = v12;

      (v6[2])(v6, v10, v11);
      v8 = v11;
    }

    else
    {
      [v8 hasDataForKey:v9 callbackQueue:self->_queue callback:v6];
    }
  }

  else
  {
    [v5 send];
  }
}

- (void)fetchWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOOfflineDataFetchReply alloc] initWithRequest:requestCopy];
  if ((sub_100002208(self) & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = [requestCopy key];

  if (!v6)
  {
    v10 = [NSError GEOErrorWithCode:-10 reason:@"Missing key"];
    [v5 setError:v10];

LABEL_5:
    [v5 send];
    goto LABEL_6;
  }

  v7 = +[GEOOfflineDataAccess sharedInstance];
  v8 = [requestCopy key];
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100023274;
  v11[3] = &unk_1000820F0;
  v12 = v5;
  [v7 getDataForKey:v8 callbackQueue:queue callback:v11];

LABEL_6:
}

- (GEOOfflineDataServer)initWithDaemon:(id)daemon
{
  v10.receiver = self;
  v10.super_class = GEOOfflineDataServer;
  v3 = [(GEOOfflineDataServer *)&v10 initWithDaemon:daemon];
  if (v3)
  {
    v4 = geo_dispatch_queue_create_with_workloop_qos();
    queue = v3->_queue;
    v3->_queue = v4;

    v6 = geo_isolater_create();
    isolater = v3->_isolater;
    v3->_isolater = v6;

    v3->_isFeatureFlagEnabled = 1;
    v8 = v3;
  }

  return v3;
}

@end