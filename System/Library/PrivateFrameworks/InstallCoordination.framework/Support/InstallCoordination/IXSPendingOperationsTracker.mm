@interface IXSPendingOperationsTracker
+ (id)sharedInstance;
- (BOOL)_deserializeKeyedArchiveFromData:(id)a3 atURL:(id)a4;
- (BOOL)_deserializePlistFormatFromData:(id)a3 atURL:(id)a4;
- (IXSPendingOperationsTracker)initWithSentinelPathOverride:(id)a3;
- (NSSet)pendingWorkIdentities;
- (NSURL)sentinelPath;
- (void)_deserializePendingOperationIdentities;
- (void)_onQueue_writePendingWork;
- (void)beginPendingOperationForIdentity:(id)a3;
- (void)clearAllPendingOperations;
- (void)endPendingOperationForIdentity:(id)a3;
@end

@implementation IXSPendingOperationsTracker

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003C94C;
  block[3] = &unk_100100D40;
  block[4] = a1;
  if (qword_100121DA8 != -1)
  {
    dispatch_once(&qword_100121DA8, block);
  }

  v2 = qword_100121DA0;

  return v2;
}

- (NSURL)sentinelPath
{
  sentinelPath = self->_sentinelPath;
  if (sentinelPath)
  {
    v3 = sentinelPath;
  }

  else
  {
    v4 = +[IXGlobalConfiguration sharedInstance];
    v5 = [v4 dataDirectoryAbortingOnError];

    v3 = [v5 URLByAppendingPathComponent:@"PendingWork.plist" isDirectory:0];
  }

  return v3;
}

- (BOOL)_deserializePlistFormatFromData:(id)a3 atURL:(id)a4
{
  v6 = a4;
  v16 = 0;
  v7 = [NSPropertyListSerialization propertyListWithData:a3 options:0 format:0 error:&v16];
  v8 = v16;
  if (!v7)
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009E8C8();
    }

    goto LABEL_8;
  }

  objc_opt_class();
  v9 = v7;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v14 = 0;
    goto LABEL_11;
  }

  v10 = [v9 objectForKeyedSubscript:@"BundleIDs"];
  if (v10 && (objc_opt_class(), sub_10008EBE8(v10)))
  {
    v11 = [IXApplicationIdentity identitiesForBundleIdentifiers:v10];
    v12 = [[NSMutableSet alloc] initWithArray:v11];
    pendingOperationIdentities = self->_pendingOperationIdentities;
    self->_pendingOperationIdentities = v12;

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

LABEL_11:
  return v14;
}

- (BOOL)_deserializeKeyedArchiveFromData:(id)a3 atURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v13 = 0;
  v8 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v7 error:&v13];

  v9 = v13;
  if (v8)
  {
    v10 = [[NSMutableSet alloc] initWithArray:v8];
    p_super = &self->_pendingOperationIdentities->super.super;
    self->_pendingOperationIdentities = v10;
  }

  else
  {
    p_super = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      sub_10009E964();
    }
  }

  return v8 != 0;
}

- (void)_deserializePendingOperationIdentities
{
  v3 = [(IXSPendingOperationsTracker *)self sentinelPath];
  v13 = 0;
  v4 = [NSData dataWithContentsOfURL:v3 options:3 error:&v13];
  v5 = v13;
  v6 = v5;
  if (!v4)
  {
    v7 = [v5 domain];
    if ([v7 isEqualToString:NSCocoaErrorDomain])
    {
      v8 = [v6 code];

      if (v8 == 260)
      {
        v9 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v15 = "[IXSPendingOperationsTracker _deserializePendingOperationIdentities]";
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: No pending work found", buf, 0xCu);
        }

LABEL_12:

LABEL_13:
        v10 = objc_opt_new();
        pendingOperationIdentities = self->_pendingOperationIdentities;
        self->_pendingOperationIdentities = v10;

        v12 = +[IXFileManager defaultManager];
        [v12 removeItemAtURL:v3 error:0];

        goto LABEL_14;
      }
    }

    else
    {
    }

    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009E9EC();
    }

    goto LABEL_12;
  }

  if (![(IXSPendingOperationsTracker *)self _deserializePlistFormatFromData:v4 atURL:v3]&& ![(IXSPendingOperationsTracker *)self _deserializeKeyedArchiveFromData:v4 atURL:v3])
  {
    goto LABEL_13;
  }

LABEL_14:
}

- (IXSPendingOperationsTracker)initWithSentinelPathOverride:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = IXSPendingOperationsTracker;
  v6 = [(IXSPendingOperationsTracker *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.installcoordinationd.pending_operations", v7);
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v8;

    objc_storeStrong(&v6->_sentinelPath, a3);
    [(IXSPendingOperationsTracker *)v6 _deserializePendingOperationIdentities];
  }

  return v6;
}

- (void)_onQueue_writePendingWork
{
  v3 = [(IXSPendingOperationsTracker *)self internalQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IXSPendingOperationsTracker *)self sentinelPath];
  v5 = [(IXSPendingOperationsTracker *)self pendingOperationIdentities];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(IXSPendingOperationsTracker *)self pendingOperationIdentities];
    v8 = [v7 allObjects];
    v23 = 0;
    v9 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v23];
    v10 = v23;

    if (v9)
    {
      v22 = v10;
      v11 = [v9 writeToURL:v4 options:268435457 error:&v22];
      v12 = v22;

      if (v11)
      {
LABEL_13:

        goto LABEL_14;
      }

      v13 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10009EA88();
      }

      v10 = v12;
    }

    else
    {
      v13 = sub_1000031B0(off_100121958);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10009EB24(v10, v13, v16, v17, v18, v19, v20, v21);
      }
    }

    v12 = v10;
    goto LABEL_13;
  }

  v14 = +[IXFileManager defaultManager];
  v24 = 0;
  v15 = [v14 removeItemAtURL:v4 error:&v24];
  v12 = v24;

  if ((v15 & 1) == 0)
  {
    v9 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10009EBA4();
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)beginPendingOperationForIdentity:(id)a3
{
  v4 = a3;
  v5 = [(IXSPendingOperationsTracker *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003D208;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)endPendingOperationForIdentity:(id)a3
{
  v4 = a3;
  v5 = [(IXSPendingOperationsTracker *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003D3FC;
  v7[3] = &unk_100100ED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (NSSet)pendingWorkIdentities
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003D658;
  v11 = sub_10003D668;
  v12 = 0;
  v3 = [(IXSPendingOperationsTracker *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003D670;
  v6[3] = &unk_100101268;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)clearAllPendingOperations
{
  v3 = [(IXSPendingOperationsTracker *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D75C;
  block[3] = &unk_1001010A0;
  block[4] = self;
  dispatch_sync(v3, block);
}

@end