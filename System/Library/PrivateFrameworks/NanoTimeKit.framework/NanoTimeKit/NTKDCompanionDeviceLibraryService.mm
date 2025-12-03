@interface NTKDCompanionDeviceLibraryService
+ (id)sharedService;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_init;
- (id)_jsonFromCollection:(id)collection error:(id *)error;
- (void)_queue_appendCompletionHandler:(id)handler;
- (void)_queue_fetchLibraryAsJSON:(id)n;
- (void)_queue_handleFaceJSON:(id)n error:(id)error;
- (void)_queue_startFetchingLibrary;
- (void)fetchLibraryAsJSON:(id)n;
- (void)start;
@end

@implementation NTKDCompanionDeviceLibraryService

+ (id)sharedService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002296C;
  block[3] = &unk_10005CB30;
  block[4] = self;
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

- (void)fetchLibraryAsJSON:(id)n
{
  nCopy = n;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked for JSON library", buf, 2u);
  }

  if (nCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100022CE4;
    v7[3] = &unk_10005CAC0;
    v7[4] = self;
    v8 = nCopy;
    dispatch_async(queue, v7);
  }
}

- (id)_jsonFromCollection:(id)collection error:(id *)error
{
  collectionCopy = collection;
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
  selectedFaceIndex = [collectionCopy selectedFaceIndex];
  v7 = v6;
  v15 = v7;
  [collectionCopy enumerateFacesUsingBlock:v14];
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

    if (error)
    {
      v11 = v9;
      *error = v9;
    }
  }

  _Block_object_dispose(v18, 8);

  return v8;
}

- (void)_queue_handleFaceJSON:(id)n error:(id)error
{
  nCopy = n;
  errorCopy = error;
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Getting XPC connection request for Device Library service…", buf, 2u);
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.nanotimekit.devicelibrary"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___NTKDeviceLibraryServer];
    [connectionCopy setExportedInterface:v11];
    [connectionCopy setExportedObject:self];
    objc_initWeak(buf, connectionCopy);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100023504;
    v13[3] = &unk_10005CA48;
    objc_copyWeak(&v14, buf);
    [connectionCopy setInvalidationHandler:v13];
    [connectionCopy resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else
  {
    v11 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "XPC connection not entitled for device library %@…", buf, 0xCu);
    }
  }

  return bOOLValue;
}

- (void)_queue_fetchLibraryAsJSON:(id)n
{
  nCopy = n;
  dispatch_assert_queue_V2(self->_queue);
  v4 = nCopy;
  if (nCopy)
  {
    [(NTKDCompanionDeviceLibraryService *)self _queue_appendCompletionHandler:nCopy];
    v4 = nCopy;
    if (!self->_state)
    {
      [(NTKDCompanionDeviceLibraryService *)self _queue_startFetchingLibrary];
      v4 = nCopy;
    }
  }
}

- (void)_queue_appendCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v4 = handlerCopy;
  if (handlerCopy)
  {
    completionHandlers = self->_completionHandlers;
    v6 = objc_retainBlock(handlerCopy);
    [(NSMutableArray *)completionHandlers addObject:v6];

    v4 = handlerCopy;
  }
}

- (void)_queue_startFetchingLibrary
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_state)
  {
    self->_state = 1;
    v3 = +[CLKDevice currentDevice];
    pdrDevice = [v3 pdrDevice];
    pairingID = [pdrDevice pairingID];
    v6 = [NTKPersistentFaceCollection alloc];
    v7 = [v6 initWithCollectionIdentifier:NTKCollectionIdentifierLibraryFaces deviceUUID:pairingID];
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