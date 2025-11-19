@interface GEOMobileAssetResourceServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (GEOMobileAssetResourceServer)initWithDaemon:(id)a3;
- (unint64_t)_processPurgableResourcesForUrgency:(int)a3 purgeSize:(unint64_t)a4 error:(id *)a5;
- (void)calculateFreeableWithRequest:(id)a3;
- (void)fetchWithRequest:(id)a3;
- (void)purgeDiskCacheWithRequest:(id)a3;
- (void)reportCorruptWithRequest:(id)a3;
- (void)runBackgroundTask:(id)a3;
- (void)updateWithMessage:(id)a3;
@end

@implementation GEOMobileAssetResourceServer

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100001334(v10);
  v14 = 0;
  if (v13 <= 1409)
  {
    if (v13 == 522)
    {
      v23 = objc_opt_class();
      v24 = sub_100001388(@"MAResources", v10, v11, v23, v12);
      v17 = v24;
      if (v24)
      {
        [v24 setSignpostId:a6];
        [(GEOMobileAssetResourceServer *)self fetchWithRequest:v17];
        goto LABEL_20;
      }

      goto LABEL_24;
    }

    if (v13 == 643)
    {
      if (!sub_100001B78(v12, v11, @"MAResources", v10, &off_100088F70, 0))
      {
        v14 = 1;
        goto LABEL_22;
      }

      v18 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
      v17 = v18;
      if (v18)
      {
        [v18 setSignpostId:a6];
        [(GEOMobileAssetResourceServer *)self updateWithMessage:v17];
        goto LABEL_20;
      }

LABEL_24:
      v14 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    switch(v13)
    {
      case 1410:
        v14 = 1;
        if (sub_100001B78(v12, v11, @"MAResources", v10, &off_100088FA0, 1))
        {
          v19 = objc_opt_class();
          v20 = sub_100001388(@"MAResources", v10, v11, v19, v12);
          v17 = v20;
          if (v20)
          {
            [v20 setSignpostId:a6];
            [(GEOMobileAssetResourceServer *)self purgeDiskCacheWithRequest:v17];
            goto LABEL_20;
          }

          goto LABEL_24;
        }

        break;
      case 1419:
        v21 = objc_opt_class();
        v22 = sub_100001388(@"MAResources", v10, v11, v21, v12);
        v17 = v22;
        if (v22)
        {
          [v22 setSignpostId:a6];
          [(GEOMobileAssetResourceServer *)self reportCorruptWithRequest:v17];
          goto LABEL_20;
        }

        goto LABEL_24;
      case 1732:
        v14 = 1;
        if (sub_100001B78(v12, v11, @"MAResources", v10, &off_100088F88, 1))
        {
          v15 = objc_opt_class();
          v16 = sub_100001388(@"MAResources", v10, v11, v15, v12);
          v17 = v16;
          if (v16)
          {
            [v16 setSignpostId:a6];
            [(GEOMobileAssetResourceServer *)self calculateFreeableWithRequest:v17];
LABEL_20:
            v14 = 1;
LABEL_21:

            break;
          }

          goto LABEL_24;
        }

        break;
    }
  }

LABEL_22:

  return v14;
}

- (void)runBackgroundTask:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  GEOBackgroundTaskReportReportTaskInitiated();

  v6 = [v4 identifier];
  v7 = [v6 isEqualToString:GEOMobileAssetResourceUpdaterTaskIdentifier];

  if (v7)
  {
    v8 = +[GEOMobileAssetResourceUpdater sharedUpdater];
    [v8 triggerUpdate:v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GEOMobileAssetResourceServer;
    [(GEOMobileAssetResourceServer *)&v9 runBackgroundTask:v4];
  }
}

- (void)purgeDiskCacheWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOMAResourcePurgeCacheToSizeReply alloc] initWithRequest:v4];
  v6 = [v4 urgency];
  v7 = [v4 targetSize];

  v10 = 0;
  v8 = [(GEOMobileAssetResourceServer *)self _processPurgableResourcesForUrgency:v6 purgeSize:v7 error:&v10];
  v9 = v10;
  [v5 setAmountDeleted:v8];
  [v5 setError:v9];

  [v5 send];
}

- (void)calculateFreeableWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[GEOMAResourceCalculateFreeableSizeReply alloc] initWithRequest:v4];
  v6 = [v4 urgency];

  v9 = 0;
  v7 = [(GEOMobileAssetResourceServer *)self _processPurgableResourcesForUrgency:v6 purgeSize:0 error:&v9];
  v8 = v9;
  [v5 setSize:v7];
  [v5 setError:v8];

  [v5 send];
}

- (unint64_t)_processPurgableResourcesForUrgency:(int)a3 purgeSize:(unint64_t)a4 error:(id *)a5
{
  v6 = sub_100020BFC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v47 = a4;
    v48 = 1024;
    LODWORD(v49) = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Looking for %llu bytes of purgable resources at urgency %d", buf, 0x12u);
  }

  sub_100038C98();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v7 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_46;
  }

  v9 = v7;
  v10 = 0;
  v11 = *v42;
  if (a4)
  {
    v12 = "purging";
  }

  else
  {
    v12 = "counting";
  }

  v31 = v12;
  *&v8 = 136315394;
  v30 = v8;
  v32 = *v42;
  do
  {
    v13 = 0;
    v33 = v9;
    do
    {
      if (*v42 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v41 + 1) + 8 * v13);
      v15 = [v14 policy];
      if (v15 == 3)
      {
        if (a3 <= 1)
        {
          v16 = sub_100020BFC();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_42;
          }

          *buf = v30;
          v47 = v31;
          v48 = 2112;
          v49 = v14;
          v17 = v16;
          v18 = "Resource has policy auto update, not %s: %@";
          goto LABEL_22;
        }
      }

      else if (v15 == 2)
      {
        if (a3 <= 2)
        {
          v16 = sub_100020BFC();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_42;
          }

          *buf = v30;
          v47 = v31;
          v48 = 2112;
          v49 = v14;
          v17 = v16;
          v18 = "Resource has policy prefetch, not %s: %@";
          goto LABEL_22;
        }
      }

      else if (v15 == 1)
      {
        v16 = sub_100020BFC();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_42;
        }

        *buf = v30;
        v47 = v31;
        v48 = 2112;
        v49 = v14;
        v17 = v16;
        v18 = "Resource has policy required, not %s: %@";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, v18, buf, 0x16u);
        goto LABEL_42;
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v16 = [v14 installedResources];
      v19 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v38;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(v16);
            }

            v23 = *(*(&v37 + 1) + 8 * i);
            v24 = [v23 size];
            v25 = v24;
            if (a4)
            {
              if (v10 < a4)
              {
                v26 = sub_100020BFC();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v47 = v23;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Purging resource: %@", buf, 0xCu);
                }

                if ([v23 remove:a5])
                {
                  v27 = v25;
                }

                else
                {
                  v27 = 0;
                }

                v10 += v27;
              }

              if (v10 >= a4)
              {
                goto LABEL_41;
              }
            }

            else
            {
              v10 += v24;
            }
          }

          v20 = [v16 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v20);
LABEL_41:
        v11 = v32;
        v9 = v33;
      }

LABEL_42:

      v13 = v13 + 1;
    }

    while (v13 != v9);
    v9 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  }

  while (v9);
LABEL_46:
  v28 = sub_100020BFC();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v47 = v10;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Found %llu purgable bytes", buf, 0xCu);
  }

  return v10;
}

- (void)reportCorruptWithRequest:(id)a3
{
  v4 = a3;
  GEOGetMonotonicTime();
  v6 = v5;
  lastCorruptMessage = self->_lastCorruptMessage;
  v8 = GeoServicesConfig_MAResourceCorruptDeletionHoldDown[1];
  GEOConfigGetDouble();
  if (lastCorruptMessage + v9 <= v6)
  {
    v12 = [v4 url];
    v13 = [v12 isFileURL];

    if ((v13 & 1) == 0)
    {
      v10 = sub_100020BFC();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_23;
      }

      v16 = [v4 url];
      *buf = 138412290;
      v39 = *&v16;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Will not remove MAResource, URL is not a file URL: %@", buf, 0xCu);
LABEL_22:

      goto LABEL_23;
    }

    v14 = [GEOFilePaths urlFor:17];
    v10 = [v14 URLByResolvingSymlinksInPath];

    v15 = [v4 url];
    v16 = [v15 URLByResolvingSymlinksInPath];

    v17 = [v16 absoluteString];
    v18 = [v10 absoluteString];
    v19 = [v17 hasPrefix:v18];

    if (v19)
    {
      v20 = +[NSFileManager defaultManager];
      v21 = [v4 url];
      v22 = [v21 path];
      v23 = [v20 fileExistsAtPath:v22];

      if (v23)
      {
        self->_lastCorruptMessage = v6;
        v24 = [v4 url];
        v37 = 0;
        v25 = [GEOMAResource removeResourceAt:v24 error:&v37];
        v26 = v37;

        v27 = sub_100020BFC();
        v28 = v27;
        if (v25)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v39 = *&v16;
            v29 = "Removed corrupt MAResource at %@";
            v30 = v28;
            v31 = OS_LOG_TYPE_DEBUG;
            v32 = 12;
LABEL_19:
            _os_log_impl(&_mh_execute_header, v30, v31, v29, buf, v32);
          }
        }

        else if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          v39 = *&v16;
          v40 = 2112;
          v41 = v26;
          v29 = "Failed to remove corrupt MAResource at %@: %@";
          v30 = v28;
          v31 = OS_LOG_TYPE_FAULT;
          v32 = 22;
          goto LABEL_19;
        }

        goto LABEL_21;
      }

      v26 = sub_100020BFC();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v39 = *&v16;
        v33 = "Can not remove MAResource, no file/dir found at %@";
        v34 = v26;
        v35 = OS_LOG_TYPE_ERROR;
        v36 = 12;
        goto LABEL_16;
      }
    }

    else
    {
      v26 = sub_100020BFC();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v39 = *&v16;
        v40 = 2112;
        v41 = v10;
        v33 = "Will not remove URL, is not an MAResource: %@ (expected prefix: %@";
        v34 = v26;
        v35 = OS_LOG_TYPE_FAULT;
        v36 = 22;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v34, v35, v33, buf, v36);
      }
    }

LABEL_21:

    goto LABEL_22;
  }

  v10 = sub_100020BFC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = v6 - self->_lastCorruptMessage;
    *buf = 134217984;
    v39 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Will not remove MAResource, last call to reportCorrupt was only %f seconds ago", buf, 0xCu);
  }

LABEL_23:
}

- (void)fetchWithRequest:(id)a3
{
  v3 = a3;
  v4 = [[GEOMAResourceFetchReply alloc] initWithRequest:v3];
  v5 = [v3 type];
  v6 = [v3 extras];
  v7 = sub_100038D68(v5, v6);

  if (v7)
  {
    qos_class_self();
    global_workloop = geo_get_global_workloop();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100039FF8;
    v11[3] = &unk_100082D40;
    v12 = v4;
    v13 = v7;
    v14 = v3;
    v15 = global_workloop;
    v9 = global_workloop;
    [v13 listResources:0 queue:v9 results:v11];
  }

  else
  {
    v10 = [NSError GEOErrorWithCode:-10 reason:@"Unrecognized type"];
    [v4 setError:v10];

    [v4 send];
  }
}

- (void)updateWithMessage:(id)a3
{
  v3 = a3;
  +[GEOMobileAssetResourceUpdater run];
  [v3 sendReply:&__NSDictionary0__struct];
}

- (GEOMobileAssetResourceServer)initWithDaemon:(id)a3
{
  v6.receiver = self;
  v6.super_class = GEOMobileAssetResourceServer;
  v3 = [(GEOMobileAssetResourceServer *)&v6 initWithDaemon:a3];
  v4 = +[GEOMobileAssetResourceUpdater sharedUpdater];
  return v3;
}

@end