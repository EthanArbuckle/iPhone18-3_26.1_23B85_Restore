@interface GEOImageServiceServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (GEOImageServiceServer)initWithDaemon:(id)a3;
- (void)calculateFreeableWithRequest:(id)a3;
- (void)cancelImageServiceRequestWithRequest:(id)a3;
- (void)purgeDiskCacheWithRequest:(id)a3;
- (void)startImageServiceRequestWithRequest:(id)a3;
@end

@implementation GEOImageServiceServer

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100001334(v10);
  v14 = 0;
  if (v13 > 2506)
  {
    if (v13 == 2563)
    {
      v22 = objc_opt_class();
      v23 = sub_100001388(@"ImageService", v10, v11, v22, v12);
      v17 = v23;
      if (v23)
      {
        [v23 setSignpostId:a6];
        [(GEOImageServiceServer *)self cancelImageServiceRequestWithRequest:v17];
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    if (v13 == 2507)
    {
      v18 = objc_opt_class();
      v19 = sub_100001388(@"ImageService", v10, v11, v18, v12);
      v17 = v19;
      if (v19)
      {
        [v19 setSignpostId:a6];
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
    if (sub_100001B78(v12, v11, @"ImageService", v10, &off_100088B80, 1))
    {
      v20 = objc_opt_class();
      v21 = sub_100001388(@"ImageService", v10, v11, v20, v12);
      v17 = v21;
      if (v21)
      {
        [v21 setSignpostId:a6];
        [(GEOImageServiceServer *)self purgeDiskCacheWithRequest:v17];
        goto LABEL_16;
      }

      goto LABEL_19;
    }
  }

  else if (v13 == 1732)
  {
    v14 = 1;
    if (sub_100001B78(v12, v11, @"ImageService", v10, &off_100088B68, 1))
    {
      v15 = objc_opt_class();
      v16 = sub_100001388(@"ImageService", v10, v11, v15, v12);
      v17 = v16;
      if (v16)
      {
        [v16 setSignpostId:a6];
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

- (void)purgeDiskCacheWithRequest:(id)a3
{
  v4 = a3;
  v7 = [[GEOImageServicePurgeCacheToSizeReply alloc] initWithRequest:v4];
  persistence = self->_persistence;
  v6 = [v4 targetSize];

  [v7 setAmountDeleted:{-[GEOImageServicePersistence shrinkToSize:](persistence, "shrinkToSize:", v6)}];
  [v7 send];
}

- (void)calculateFreeableWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOImageServiceCalculateFreeableSizeReply alloc] initWithRequest:v4];

  [v5 setSize:{-[GEOImageServicePersistence calculateFreeableSize](self->_persistence, "calculateFreeableSize")}];
  [v5 send];
}

- (void)cancelImageServiceRequestWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOImageServiceReplySimple alloc] initWithRequest:v4];
  v6 = [v4 request];

  if (v6)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_10002DF04;
    v15 = sub_10002DF14;
    v16 = 0;
    isolater = self->_isolater;
    v10 = v4;
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

- (void)startImageServiceRequestWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOImageServiceReplySimple alloc] initWithRequest:v4];
  v6 = [v4 request];

  if (v6)
  {
    v28 = v5;
    v7 = [v4 request];
    v8 = [v7 imageIds];
    v33 = [v8 mutableCopy];

    v9 = [v4 request];
    v31 = [v9 width];

    v10 = [v4 request];
    v11 = [v10 height];

    v32 = +[NSMutableArray array];
    isolater = self->_isolater;
    v47 = _NSConcreteStackBlock;
    v48 = 3221225472;
    v49 = sub_10002E3E0;
    v50 = &unk_100083940;
    v51 = self;
    v29 = v4;
    v52 = v4;
    geo_isolate_sync_data();
    v13 = dispatch_group_create();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v27 = v52;
    v14 = [v52 request];
    v15 = [v14 imageIds];

    obj = v15;
    v16 = [v15 countByEnumeratingWithState:&v43 objects:v53 count:16];
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
          [(GEOImageServicePersistence *)persistence getDataForIdentifier:v20 width:v31 height:v11 callbackQueue:global_queue callback:v39];

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

    v4 = v29;
  }

  else
  {
    v26 = [NSError GEOErrorWithCode:-10];
    [v5 setError:v26];

    [v5 send];
  }
}

- (GEOImageServiceServer)initWithDaemon:(id)a3
{
  v18.receiver = self;
  v18.super_class = GEOImageServiceServer;
  v3 = [(GEOImageServiceServer *)&v18 initWithDaemon:a3];
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