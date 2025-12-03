@interface NTKDCompanionTrackedPhotosService
+ (id)sharedService;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_init;
- (id)_priorityListFromCollection:(id)collection;
- (void)_addTrackedPhotosContentToList:(id)list forFace:(id)face;
- (void)_queue_appendCompletionHandler:(id)handler;
- (void)_queue_fetchTrackedPhotosPriorityList:(id)list;
- (void)_queue_handlePriorityList:(id)list;
- (void)_queue_startFetchingLibrary;
- (void)fetchTrackedPhotosPriorityList:(id)list;
- (void)start;
@end

@implementation NTKDCompanionTrackedPhotosService

+ (id)sharedService
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021A94;
  block[3] = &unk_10005CB30;
  block[4] = self;
  if (qword_100066C78 != -1)
  {
    dispatch_once(&qword_100066C78, block);
  }

  v2 = qword_100066C70;

  return v2;
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = NTKDCompanionTrackedPhotosService;
  v2 = [(NTKDCompanionTrackedPhotosService *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoTimeKit.TrackedPhotosService", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v2->_state = 0;
    v6 = +[NSMutableArray array];
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v6;
  }

  return v2;
}

- (void)start
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Tracked Photos service is starting…", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021C54;
  block[3] = &unk_10005CA70;
  block[4] = self;
  if (qword_100066C88 != -1)
  {
    dispatch_once(&qword_100066C88, block);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Got XPC connection: %@ request for Tracked Photos service", buf, 0xCu);
  }

  v9 = [connectionCopy valueForEntitlement:@"com.apple.nanotimekit.trackedphotos"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = NTKTrackedPhotosServerInterface();
    [connectionCopy setExportedInterface:v11];

    [connectionCopy setExportedObject:self];
    objc_initWeak(buf, connectionCopy);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100021F44;
    v14[3] = &unk_10005CA48;
    objc_copyWeak(&v15, buf);
    [connectionCopy setInvalidationHandler:v14];
    [connectionCopy resume];
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "XPC connection: %@ is not entitled for Tracked Photos service, declining connection", buf, 0xCu);
    }
  }

  return bOOLValue;
}

- (void)fetchTrackedPhotosPriorityList:(id)list
{
  listCopy = list;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked for Tracked Photos Priority List", buf, 2u);
  }

  if (listCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100022080;
    v7[3] = &unk_10005CAC0;
    v7[4] = self;
    v8 = listCopy;
    dispatch_async(queue, v7);
  }
}

- (void)_queue_fetchTrackedPhotosPriorityList:(id)list
{
  queue = self->_queue;
  listCopy = list;
  dispatch_assert_queue_V2(queue);
  [(NTKDCompanionTrackedPhotosService *)self _queue_appendCompletionHandler:listCopy];

  if (!self->_state)
  {

    [(NTKDCompanionTrackedPhotosService *)self _queue_startFetchingLibrary];
  }
}

- (void)_queue_appendCompletionHandler:(id)handler
{
  queue = self->_queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queue);
  completionHandlers = self->_completionHandlers;
  v7 = objc_retainBlock(handlerCopy);

  [(NSMutableArray *)completionHandlers addObject:v7];
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
    v11[2] = sub_1000222A0;
    v11[3] = &unk_10005DBC0;
    v11[4] = self;
    [(NTKDLoadOnceCollectionObserver *)v10 performOnLoad:v11];
  }
}

- (void)_queue_handlePriorityList:(id)list
{
  listCopy = list;
  dispatch_assert_queue_V2(self->_queue);
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling Priority List…", buf, 2u);
  }

  if (self->_state == 1)
  {
    v6 = [(NSMutableArray *)self->_completionHandlers copy];
    [(NSMutableArray *)self->_completionHandlers removeAllObjects];
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 count]);
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Calling %@ callbacks…", buf, 0xCu);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          (*(*(*(&v16 + 1) + 8 * v13) + 16))(*(*(&v16 + 1) + 8 * v13));
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    v14 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Resetting state…", buf, 2u);
    }

    self->_state = 0;
    collectionObserver = self->_collectionObserver;
    self->_collectionObserver = 0;
  }
}

- (id)_priorityListFromCollection:(id)collection
{
  collectionCopy = collection;
  v5 = +[NSMutableArray array];
  selectedFace = [collectionCopy selectedFace];
  [(NTKDCompanionTrackedPhotosService *)self _addTrackedPhotosContentToList:v5 forFace:selectedFace];

  selectedFaceIndex = [collectionCopy selectedFaceIndex];
  selectedFaceIndex2 = [collectionCopy selectedFaceIndex];
  orderedUUIDs = [collectionCopy orderedUUIDs];
  v10 = [orderedUUIDs count];
  v11 = v10 - 1;

  v12 = selectedFaceIndex2 + 1;
  v13 = selectedFaceIndex - 1;
  if (v13 >= 0)
  {
    do
    {
      if (v12 > v11)
      {
        break;
      }

      v14 = [collectionCopy faceAtIndex:v13];
      [(NTKDCompanionTrackedPhotosService *)self _addTrackedPhotosContentToList:v5 forFace:v14];
      v15 = [collectionCopy faceAtIndex:v12];
      [(NTKDCompanionTrackedPhotosService *)self _addTrackedPhotosContentToList:v5 forFace:v15];

      ++v12;
    }

    while (v13-- != 0);
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    do
    {
      v17 = [collectionCopy faceAtIndex:v13];
      [(NTKDCompanionTrackedPhotosService *)self _addTrackedPhotosContentToList:v5 forFace:v17];
      --v13;
    }

    while (v13 != -1);
  }

  if (v12 <= v11)
  {
    do
    {
      v18 = [collectionCopy faceAtIndex:v12];
      [(NTKDCompanionTrackedPhotosService *)self _addTrackedPhotosContentToList:v5 forFace:v18];
      ++v12;
    }

    while (v10 != v12);
  }

  return v5;
}

- (void)_addTrackedPhotosContentToList:(id)list forFace:(id)face
{
  listCopy = list;
  if (face)
  {
    v7 = listCopy;
    trackedPhotosContent = [face trackedPhotosContent];
    if (trackedPhotosContent)
    {
      [v7 addObject:trackedPhotosContent];
    }

    listCopy = v7;
  }
}

@end