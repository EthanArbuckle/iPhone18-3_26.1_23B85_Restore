@interface IXSDataPromiseManager
+ (NSURL)saveDir;
+ (id)savePathForPromise:(id)a3;
+ (id)sharedInstance;
- (IXSDataPromiseManager)init;
- (id)_promiseForUUID:(id)a3 ofType:(Class)a4 useQueue:(BOOL)a5;
- (id)promiseForUUID:(id)a3;
- (void)_onQueue_restoreSavedPromises;
- (void)cancelPromiseForUUIDIfNotAssociatedWithAnyCoordinator:(id)a3 withReason:(id)a4 client:(unint64_t)a5;
- (void)clearAllPromisesForCreator:(unint64_t)a3;
- (void)decommissionPromise:(id)a3;
- (void)enumeratePromises:(id)a3;
- (void)promise:(id)a3 didCancelForReason:(id)a4 client:(unint64_t)a5;
- (void)promise:(id)a3 didUpdateProgress:(double)a4;
- (void)promiseDidBegin:(id)a3;
- (void)promiseDidComplete:(id)a3;
- (void)promiseDidReset:(id)a3;
- (void)registerPromise:(id)a3;
@end

@implementation IXSDataPromiseManager

+ (id)savePathForPromise:(id)a3
{
  v4 = a3;
  v5 = [a1 saveDir];
  v6 = [v4 uniqueIdentifier];

  v7 = [NSString stringWithFormat:@"%@.plist", v6];
  v8 = [v5 URLByAppendingPathComponent:v7 isDirectory:0];

  return v8;
}

+ (NSURL)saveDir
{
  v2 = +[IXGlobalConfiguration sharedInstance];
  v3 = [v2 dataDirectoryAbortingOnError];

  v4 = [v3 URLByAppendingPathComponent:@"DataPromises" isDirectory:1];

  return v4;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000729C0;
  block[3] = &unk_100100D40;
  block[4] = a1;
  if (qword_100121E68 != -1)
  {
    dispatch_once(&qword_100121E68, block);
  }

  v2 = qword_100121E60;

  return v2;
}

- (IXSDataPromiseManager)init
{
  v10.receiver = self;
  v10.super_class = IXSDataPromiseManager;
  v2 = [(IXSDataPromiseManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.installcoordinationd.IXSDataPromiseManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [(IXSDataPromiseManager *)v2 queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100072AF0;
    v8[3] = &unk_1001010A0;
    v9 = v2;
    sub_100071134(v6, v8);
  }

  return v2;
}

- (void)_onQueue_restoreSavedPromises
{
  v2 = [(IXSDataPromiseManager *)self queue];
  dispatch_assert_queue_V2(v2);

  v44 = [objc_opt_class() saveDir];
  v3 = +[IXFileManager defaultManager];
  v60 = 0;
  v45 = [v3 urlsForItemsInDirectoryAtURL:v44 ignoringSymlinks:1 error:&v60];
  v4 = v60;

  if (v45)
  {
    v5 = objc_opt_new();
    uuidToPromiseMap = self->_uuidToPromiseMap;
    self->_uuidToPromiseMap = v5;

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = v45;
    v7 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (!v7)
    {
      goto LABEL_31;
    }

    v48 = *v57;
    while (1)
    {
      v49 = v7;
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v57 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v56 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 lastPathComponent];
        v12 = [v11 hasPrefix:@"."];

        if ((v12 & 1) == 0)
        {
          v55 = v4;
          v13 = [NSData dataWithContentsOfURL:v9 options:3 error:&v55];
          v14 = v55;

          if (v13)
          {
            v15 = [NSKeyedUnarchiver alloc];
            v54 = v14;
            v16 = [v15 initForReadingFromData:v13 error:&v54];
            v4 = v54;

            if (v16)
            {
              v17 = [NSSet setWithObjects:objc_opt_class(), 0];
              v18 = [v16 decodeObjectOfClasses:v17 forKey:NSKeyedArchiveRootObjectKey];
              v19 = v18;
              if (v18)
              {
                v20 = [v18 uniqueIdentifier];

                if (v20)
                {
                  v21 = self->_uuidToPromiseMap;
                  v22 = [v19 uniqueIdentifier];
                  [(NSMutableDictionary *)v21 setObject:v19 forKeyedSubscript:v22];
                }

                else
                {
                  v22 = sub_1000031B0(off_100121958);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    v30 = [v9 lastPathComponent];
                    *buf = 136315650;
                    v62 = "[IXSDataPromiseManager _onQueue_restoreSavedPromises]";
                    v63 = 2112;
                    v64 = v30;
                    v65 = 2112;
                    v66 = v19;
                    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s: Somehow got promise without unique identifier from %@: %@", buf, 0x20u);
                  }
                }

                v24 = 0;
LABEL_26:

                [v16 finishDecoding];
                if (v24)
                {
LABEL_27:
                  v25 = +[IXFileManager defaultManager];
                  [v25 removeItemAtURL:v9 error:0];
                }

                goto LABEL_29;
              }

              v22 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v28 = [v9 path];
                v29 = [v16 error];
                *buf = 136315650;
                v62 = "[IXSDataPromiseManager _onQueue_restoreSavedPromises]";
                v63 = 2112;
                v64 = v28;
                v65 = 2112;
                v66 = v29;
                _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s: Failed to decode promise from %@: %@", buf, 0x20u);
              }

              v19 = 0;
            }

            else
            {
              v22 = sub_1000031B0(off_100121958);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v27 = [v9 path];
                *buf = 136315650;
                v62 = "[IXSDataPromiseManager _onQueue_restoreSavedPromises]";
                v63 = 2112;
                v64 = v27;
                v65 = 2112;
                v66 = v4;
                _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s: Failed to create unarchiver for promise at %@ : %@", buf, 0x20u);
              }

              v19 = 0;
              v17 = 0;
            }

            v24 = 1;
            goto LABEL_26;
          }

          v23 = sub_1000031B0(off_100121958);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v26 = [v9 path];
            *buf = 136315650;
            v62 = "[IXSDataPromiseManager _onQueue_restoreSavedPromises]";
            v63 = 2112;
            v64 = v26;
            v65 = 2112;
            v66 = v14;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s: Failed to deserialize promise at %@ : %@", buf, 0x20u);
          }

          v16 = 0;
          v17 = 0;
          v19 = 0;
          v4 = v14;
          goto LABEL_27;
        }

LABEL_29:
        objc_autoreleasePoolPop(v10);
      }

      v7 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
      if (!v7)
      {
LABEL_31:

        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_1000734A8;
        v53[3] = &unk_100103218;
        v53[4] = self;
        v31 = objc_retainBlock(v53);
        v32 = [(IXSDataPromiseManager *)self uuidToPromiseMap];
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_1000734BC;
        v51[3] = &unk_100103240;
        v33 = v31;
        v52 = v33;
        [v32 enumerateKeysAndObjectsUsingBlock:v51];

        goto LABEL_43;
      }
    }
  }

  v34 = [v4 domain];
  if ([v34 isEqualToString:NSPOSIXErrorDomain])
  {
    v35 = [v4 code] == 2;

    if (v35)
    {
      v36 = +[IXFileManager defaultManager];
      v50 = v4;
      v37 = [v36 createDirectoryAtURL:v44 withIntermediateDirectories:1 mode:493 class:4 error:&v50];
      v38 = v50;

      if ((v37 & 1) == 0)
      {
        v39 = sub_1000031B0(off_100121958);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [v44 path];
          *buf = 136315650;
          v62 = "[IXSDataPromiseManager _onQueue_restoreSavedPromises]";
          v63 = 2112;
          v64 = v40;
          v65 = 2112;
          v66 = v38;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%s: Failed to create promise save directory at %@: %@", buf, 0x20u);
        }
      }

      v4 = v38;
      goto LABEL_43;
    }
  }

  else
  {
  }

  v41 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v62 = "[IXSDataPromiseManager _onQueue_restoreSavedPromises]";
    v63 = 2112;
    v64 = v44;
    v65 = 2112;
    v66 = v4;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%s: Failed to get list of saved promises from %@ : %@", buf, 0x20u);
  }

LABEL_43:
  if (!self->_uuidToPromiseMap)
  {
    v42 = objc_opt_new();
    v43 = self->_uuidToPromiseMap;
    self->_uuidToPromiseMap = v42;
  }
}

- (id)_promiseForUUID:(id)a3 ofType:(Class)a4 useQueue:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (v5)
  {
    v9 = [(IXSDataPromiseManager *)self promiseForUUID:v8];
  }

  else
  {
    v10 = [(IXSDataPromiseManager *)self uuidToPromiseMap];
    v9 = [v10 objectForKey:v8];

    if (([v9 isTracked] & 1) == 0)
    {
LABEL_9:

      v9 = 0;
      goto LABEL_10;
    }
  }

  if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = sub_1000031B0(off_100121958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromClass(a4);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v16 = 136315906;
      v17 = "[IXSDataPromiseManager _promiseForUUID:ofType:useQueue:]";
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Found promise for UUID %@ but it was not of class %@, was %@", &v16, 0x2Au);
    }

    goto LABEL_9;
  }

LABEL_10:

  return v9;
}

- (id)promiseForUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100073878;
  v16 = sub_100073888;
  v17 = 0;
  v5 = [(IXSDataPromiseManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073890;
  block[3] = &unk_1001012B0;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)registerPromise:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromiseManager *)self queue];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100073A94;
  v12 = &unk_100100ED8;
  v13 = self;
  v6 = v4;
  v14 = v6;
  dispatch_sync(v5, &v9);

  v7 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 uniqueIdentifier];
    *buf = 136315650;
    v16 = "[IXSDataPromiseManager registerPromise:]";
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: Registered promise %@ for UUID %@", buf, 0x20u);
  }
}

- (void)enumeratePromises:(id)a3
{
  v4 = a3;
  v5 = [(IXSDataPromiseManager *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073C68;
  v7[3] = &unk_100101B08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)decommissionPromise:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(IXSDataPromiseManager *)self queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100073E30;
    v6[3] = &unk_100100ED8;
    v6[4] = self;
    v7 = v4;
    sub_100071134(v5, v6);
  }
}

- (void)clearAllPromisesForCreator:(unint64_t)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100073878;
  v24 = sub_100073888;
  v25 = 0;
  v5 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = IXStringForClientID(a3);
    *buf = 136315394;
    v28 = "[IXSDataPromiseManager clearAllPromisesForCreator:]";
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Clearing all promises for creator %@", buf, 0x16u);
  }

  v7 = [(IXSDataPromiseManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007418C;
  block[3] = &unk_100101268;
  block[4] = self;
  block[5] = &v20;
  dispatch_sync(v7, block);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v21[5];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v26 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if (!a3 || [*(*(&v15 + 1) + 8 * v11) creatorIdentifier] == a3)
        {
          v13 = [v12 accessQueue];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_1000741F4;
          v14[3] = &unk_1001010A0;
          v14[4] = v12;
          dispatch_sync(v13, v14);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v26 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(&v20, 8);
}

- (void)cancelPromiseForUUIDIfNotAssociatedWithAnyCoordinator:(id)a3 withReason:(id)a4 client:(unint64_t)a5
{
  v8 = a4;
  v9 = [(IXSDataPromiseManager *)self promiseForUUID:a3];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 accessQueue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100074398;
    v12[3] = &unk_1001015A0;
    v12[4] = self;
    v13 = v10;
    v14 = v8;
    v15 = a5;
    dispatch_sync(v11, v12);
  }
}

- (void)promiseDidBegin:(id)a3
{
  v3 = a3;
  v4 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[IXSDataPromiseManager promiseDidBegin:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Unowned promise began: %@", &v5, 0x16u);
  }
}

- (void)promiseDidComplete:(id)a3
{
  v3 = a3;
  v4 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[IXSDataPromiseManager promiseDidComplete:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Unowned promise completed: %@", &v5, 0x16u);
  }
}

- (void)promiseDidReset:(id)a3
{
  v3 = a3;
  v4 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[IXSDataPromiseManager promiseDidReset:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Unowned promise reset: %@", &v5, 0x16u);
  }
}

- (void)promise:(id)a3 didUpdateProgress:(double)a4
{
  v5 = a3;
  v6 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[IXSDataPromiseManager promise:didUpdateProgress:]";
    v9 = 2048;
    v10 = a4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s: Unowned promise update progress to %f : %@", &v7, 0x20u);
  }
}

- (void)promise:(id)a3 didCancelForReason:(id)a4 client:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = sub_1000031B0(off_100121958);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[IXSDataPromiseManager promise:didCancelForReason:client:]";
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2048;
    v17 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Unowned promise %@ canceled for reason: %@ client: %lu", &v10, 0x2Au);
  }
}

@end