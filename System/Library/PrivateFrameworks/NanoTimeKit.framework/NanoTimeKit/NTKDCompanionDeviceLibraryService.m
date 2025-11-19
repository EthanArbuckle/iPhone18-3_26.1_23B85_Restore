@interface NTKDCompanionDeviceLibraryService
+ (id)sharedService;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_init;
- (id)_jsonFromCollection:(id)a3 error:(id *)a4;
- (void)_queue_appendCompletionHandler:(id)a3;
- (void)_queue_fetchLibraryAsJSON:(id)a3;
- (void)_queue_handleFaceJSON:(id)a3 error:(id)a4;
- (void)_queue_startFetchingLibrary;
- (void)fetchLibraryAsJSON:(id)a3;
- (void)start;
@end

@implementation NTKDCompanionDeviceLibraryService

+ (id)sharedService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002296C;
  block[3] = &unk_10005CB30;
  block[4] = a1;
  if (qword_100066C98 != -1)
  {
    dispatch_once(&qword_100066C98, block);
  }

  v2 = qword_100066C90;

  return v2;
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = NTKDCompanionDeviceLibraryService;
  v2 = [(NTKDCompanionDeviceLibraryService *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoTimeKit.CompanionDeviceLibraryService", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v2->_state = 0;
    collectionObserver = v2->_collectionObserver;
    v2->_collectionObserver = 0;

    v7 = +[NSMutableArray array];
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v7;
  }

  return v2;
}

- (void)start
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device Library service is starting…", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022B38;
  block[3] = &unk_10005CA70;
  block[4] = self;
  if (qword_100066CA8 != -1)
  {
    dispatch_once(&qword_100066CA8, block);
  }
}

- (void)fetchLibraryAsJSON:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked for JSON library", buf, 2u);
  }

  if (v4)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100022CE4;
    v7[3] = &unk_10005CAC0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (id)_jsonFromCollection:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSMutableArray array];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100022E94;
  v14[3] = &unk_10005DBE8;
  v16 = v18;
  v17 = [v5 selectedFaceIndex];
  v7 = v6;
  v15 = v7;
  [v5 enumerateFacesUsingBlock:v14];
  v13 = 0;
  v8 = [NSJSONSerialization dataWithJSONObject:v7 options:3 error:&v13];
  v9 = v13;
  if (!v8)
  {
    v10 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003EA40(v9, v10);
    }

    if (a4)
    {
      v11 = v9;
      *a4 = v9;
    }
  }

  _Block_object_dispose(v18, 8);

  return v8;
}

- (void)_queue_handleFaceJSON:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling found JSON…", buf, 2u);
  }

  if (self->_state == 1)
  {
    v9 = [(NSMutableArray *)self->_completionHandlers copy];
    [(NSMutableArray *)self->_completionHandlers removeAllObjects];
    v10 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 count]);
      *buf = 138412290;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling %@ callbacks…", buf, 0xCu);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          (*(*(*(&v19 + 1) + 8 * v16) + 16))(*(*(&v19 + 1) + 8 * v16));
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    v17 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Resetting state…", buf, 2u);
    }

    self->_state = 0;
    collectionObserver = self->_collectionObserver;
    self->_collectionObserver = 0;
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Getting XPC connection request for Device Library service…", buf, 2u);
  }

  v9 = [v7 valueForEntitlement:@"com.apple.nanotimekit.devicelibrary"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NTKDeviceLibraryServer];
    [v7 setExportedInterface:v11];
    [v7 setExportedObject:self];
    objc_initWeak(buf, v7);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100023504;
    v13[3] = &unk_10005CA48;
    objc_copyWeak(&v14, buf);
    [v7 setInvalidationHandler:v13];
    [v7 resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "XPC connection not entitled for device library %@…", buf, 0xCu);
    }
  }

  return v10;
}

- (void)_queue_fetchLibraryAsJSON:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = v5;
  if (v5)
  {
    [(NTKDCompanionDeviceLibraryService *)self _queue_appendCompletionHandler:v5];
    v4 = v5;
    if (!self->_state)
    {
      [(NTKDCompanionDeviceLibraryService *)self _queue_startFetchingLibrary];
      v4 = v5;
    }
  }
}

- (void)_queue_appendCompletionHandler:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = v7;
  if (v7)
  {
    completionHandlers = self->_completionHandlers;
    v6 = objc_retainBlock(v7);
    [(NSMutableArray *)completionHandlers addObject:v6];

    v4 = v7;
  }
}

- (void)_queue_startFetchingLibrary
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_state)
  {
    self->_state = 1;
    v3 = +[CLKDevice currentDevice];
    v4 = [v3 pdrDevice];
    v5 = [v4 pairingID];
    v6 = [NTKPersistentFaceCollection alloc];
    v7 = [v6 initWithCollectionIdentifier:NTKCollectionIdentifierLibraryFaces deviceUUID:v5];
    v8 = [[NTKDLoadOnceCollectionObserver alloc] initWithCollection:v7];
    collectionObserver = self->_collectionObserver;
    self->_collectionObserver = v8;

    v10 = self->_collectionObserver;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100023754;
    v11[3] = &unk_10005DBC0;
    v11[4] = self;
    [(NTKDLoadOnceCollectionObserver *)v10 performOnLoad:v11];
  }
}

@end