@interface GEOImageServiceServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (GEOImageServiceServer)initWithDaemon:(id)daemon;
- (void)calculateFreeableWithRequest:(id)request;
- (void)cancelImageServiceRequestWithRequest:(id)request;
- (void)purgeDiskCacheWithRequest:(id)request;
- (void)startImageServiceRequestWithRequest:(id)request;
@end

@implementation GEOImageServiceServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  v13 = sub_100001334(messageCopy);
  v14 = 0;
  if (v13 > 2506)
  {
    if (v13 == 2563)
    {
      v22 = objc_opt_class();
      v23 = sub_100001388(@"ImageService", messageCopy, objectCopy, v22, peerCopy);
      v17 = v23;
      if (v23)
      {
        [v23 setSignpostId:id];
        [(GEOImageServiceServer *)self cancelImageServiceRequestWithRequest:v17];
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    if (v13 == 2507)
    {
      v18 = objc_opt_class();
      v19 = sub_100001388(@"ImageService", messageCopy, objectCopy, v18, peerCopy);
      v17 = v19;
      if (v19)
      {
        [v19 setSignpostId:id];
        [(GEOImageServiceServer *)self startImageServiceRequestWithRequest:v17];
        goto LABEL_16;
      }

LABEL_19:
      v14 = 0;
      goto LABEL_17;
    }
  }

  else if (v13 == 1410)
  {
    v14 = 1;
    if (sub_100001B78(peerCopy, objectCopy, @"ImageService", messageCopy, &off_100088B80, 1))
    {
      v20 = objc_opt_class();
      v21 = sub_100001388(@"ImageService", messageCopy, objectCopy, v20, peerCopy);
      v17 = v21;
      if (v21)
      {
        [v21 setSignpostId:id];
        [(GEOImageServiceServer *)self purgeDiskCacheWithRequest:v17];
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  else if (v13 == 1732)
  {
    v14 = 1;
    if (sub_100001B78(peerCopy, objectCopy, @"ImageService", messageCopy, &off_100088B68, 1))
    {
      v15 = objc_opt_class();
      v16 = sub_100001388(@"ImageService", messageCopy, objectCopy, v15, peerCopy);
      v17 = v16;
      if (v16)
      {
        [v16 setSignpostId:id];
        [(GEOImageServiceServer *)self calculateFreeableWithRequest:v17];
LABEL_16:
        v14 = 1;
LABEL_17:

        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

LABEL_18:

  return v14;
}

- (void)purgeDiskCacheWithRequest:(id)request
{
  requestCopy = request;
  v7 = [[GEOImageServicePurgeCacheToSizeReply alloc] initWithRequest:requestCopy];
  persistence = self->_persistence;
  targetSize = [requestCopy targetSize];

  [v7 setAmountDeleted:{-[GEOImageServicePersistence shrinkToSize:](persistence, "shrinkToSize:", targetSize)}];
  [v7 send];
}

- (void)calculateFreeableWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOImageServiceCalculateFreeableSizeReply alloc] initWithRequest:requestCopy];

  [v5 setSize:{-[GEOImageServicePersistence calculateFreeableSize](self->_persistence, "calculateFreeableSize")}];
  [v5 send];
}

- (void)cancelImageServiceRequestWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOImageServiceReplySimple alloc] initWithRequest:requestCopy];
  request = [requestCopy request];

  if (request)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_10002DF04;
    v15 = sub_10002DF14;
    v16 = 0;
    isolater = self->_isolater;
    v10 = requestCopy;
    geo_isolate_sync_data();
    if (v12[5])
    {
      v8 = +[GEOImageServiceServerRequester sharedRequester];
      [v8 cancelSimpleImageServiceRequest:v12[5]];
    }

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v9 = [NSError GEOErrorWithCode:-10];
    [v5 setError:v9];

    [v5 send];
  }
}

- (void)startImageServiceRequestWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[GEOImageServiceReplySimple alloc] initWithRequest:requestCopy];
  request = [requestCopy request];

  if (request)
  {
    v28 = v5;
    request2 = [requestCopy request];
    imageIds = [request2 imageIds];
    v33 = [imageIds mutableCopy];

    request3 = [requestCopy request];
    width = [request3 width];

    request4 = [requestCopy request];
    height = [request4 height];

    v32 = +[NSMutableArray array];
    isolater = self->_isolater;
    v47 = _NSConcreteStackBlock;
    v48 = 3221225472;
    v49 = sub_10002E3E0;
    v50 = &unk_100083940;
    selfCopy = self;
    v29 = requestCopy;
    v52 = requestCopy;
    geo_isolate_sync_data();
    v13 = dispatch_group_create();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v27 = v52;
    request5 = [v52 request];
    imageIds2 = [request5 imageIds];

    obj = imageIds2;
    v16 = [imageIds2 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      do
      {
        v19 = 0;
        do
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v43 + 1) + 8 * v19);
          dispatch_group_enter(v13);
          persistence = self->_persistence;
          global_queue = geo_get_global_queue();
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_10002E440;
          v39[3] = &unk_100082748;
          v39[4] = v20;
          v39[5] = self;
          v40 = v33;
          v41 = v32;
          v42 = v13;
          [(GEOImageServicePersistence *)persistence getDataForIdentifier:v20 width:width height:height callbackQueue:global_queue callback:v39];

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v17);
    }

    v23 = geo_get_global_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002E550;
    block[3] = &unk_100083288;
    block[4] = self;
    v35 = v27;
    v36 = v33;
    v37 = v32;
    v5 = v28;
    v38 = v28;
    v24 = v32;
    v25 = v33;
    dispatch_group_notify(v13, v23, block);

    requestCopy = v29;
  }

  else
  {
    v26 = [NSError GEOErrorWithCode:-10];
    [v5 setError:v26];

    [v5 send];
  }
}

- (GEOImageServiceServer)initWithDaemon:(id)daemon
{
  v18.receiver = self;
  v18.super_class = GEOImageServiceServer;
  v3 = [(GEOImageServiceServer *)&v18 initWithDaemon:daemon];
  if (v3)
  {
    v4 = geo_isolater_create();
    isolater = v3->_isolater;
    v3->_isolater = v4;

    v6 = +[NSMutableArray array];
    requestsConsultingPersistence = v3->_requestsConsultingPersistence;
    v3->_requestsConsultingPersistence = v6;

    v8 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:512];
    originalRequestToPendingRequest = v3->_originalRequestToPendingRequest;
    v3->_originalRequestToPendingRequest = v8;

    v10 = [GEOImageServicePersistence alloc];
    v11 = [GEOFilePaths urlFor:28];
    v12 = [(GEOImageServicePersistence *)v10 initWithDBFileURL:v11];
    persistence = v3->_persistence;
    v3->_persistence = v12;

    v14 = +[GEODiskSpaceManager sharedManager];
    v15 = [v14 diskSpaceProviderForIdentifier:@"com.apple.geod.ImageService"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 setPersistence:v3->_persistence];
    }

    v16 = v3;
  }

  return v3;
}

@end