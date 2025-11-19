@interface DROnDemandFileProviderPresenter
+ (id)presenterPresentingURLWrapper:(id)a3 type:(id)a4 outURLWrapper:(id *)a5;
- (DROnDemandFileProviderPresenter)initWithURLWrapper:(id)a3 type:(id)a4;
- (id)presentedItemOperationQueue;
- (void)_operationQueue_invalidate;
- (void)beginPresenting;
- (void)relinquishPresentedItemToReader:(id)a3;
@end

@implementation DROnDemandFileProviderPresenter

- (DROnDemandFileProviderPresenter)initWithURLWrapper:(id)a3 type:(id)a4
{
  v7 = a3;
  v8 = a4;
  v25.receiver = self;
  v25.super_class = DROnDemandFileProviderPresenter;
  v9 = [(DROnDemandFileProviderPresenter *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceURLWrapper, a3);
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v7 fpItem], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      v12 = [v7 fpItem];
      v13 = [v12 filename];
    }

    else
    {
      v12 = [v7 url];
      v13 = [v12 lastPathComponent];
    }

    v14 = v13;
    v15 = sub_10000A848(v13, v8);

    v16 = [NSString stringWithFormat:@".%@.XXXXXX", @"com.apple.DragUI"];
    v17 = NSTemporaryDirectory();
    v18 = [v17 stringByAppendingPathComponent:v16];

    [v18 getFileSystemRepresentation:v26 maxLength:1024];
    if (mkdtemp(v26))
    {
      v19 = [NSString stringWithUTF8String:v26];
      v20 = [NSURL fileURLWithPath:v19 isDirectory:1];
    }

    else
    {
      v20 = 0;
    }

    folderURL = v10->_folderURL;
    v10->_folderURL = v20;

    v22 = [(NSURL *)v10->_folderURL URLByAppendingPathComponent:v15];
    fileURL = v10->_fileURL;
    v10->_fileURL = v22;
  }

  return v10;
}

- (void)beginPresenting
{
  objc_initWeak(&location, self);
  v3 = [DROnDemandFileProviderPresenter presentedItemOperationQueue]_0();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000AA3C;
  v5[3] = &unk_100054DC8;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [v3 addOperationWithBlock:v5];

  v4 = [DROnDemandFileProviderPresenter presentedItemOperationQueue]_0();
  [v4 waitUntilAllOperationsAreFinished];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)presentedItemOperationQueue
{
  if (qword_1000634E8 != -1)
  {
    sub_10002FC30();
  }

  v1 = qword_1000634E0;

  return v1;
}

- (void)_operationQueue_invalidate
{
  if (self->_operationQueue_valid)
  {
    v3 = DRLogTarget();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      fileURL = self->_fileURL;
      v9 = 138412290;
      v10 = fileURL;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Invalidating file presenter at URL %@", &v9, 0xCu);
    }

    self->_operationQueue_valid = 0;
    v5 = +[NSFileManager defaultManager];
    [v5 removeItemAtURL:self->_folderURL error:0];

    sourceURLWrapper = self->_sourceURLWrapper;
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([(PBSecurityScopedURLWrapper *)self->_sourceURLWrapper fpItem], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
    {
      if (self->_shouldEvictWhenDone)
      {
        v8 = [(PBSecurityScopedURLWrapper *)self->_sourceURLWrapper url];
        FPEvictItem();
      }
    }

    [NSFileCoordinator removeFilePresenter:self];
  }
}

+ (id)presenterPresentingURLWrapper:(id)a3 type:(id)a4 outURLWrapper:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithURLWrapper:v9 type:v8];

  v11 = [PBSecurityScopedURLWrapper alloc];
  v12 = [v10 fileURL];
  v13 = [v11 initWithURL:v12 readonly:1 extensionClass:@"com.apple.app-sandbox.read"];

  [v10 beginPresenting];
  if (a5)
  {
    v14 = v13;
    *a5 = v13;
  }

  return v10;
}

- (void)relinquishPresentedItemToReader:(id)a3
{
  v4 = a3;
  v5 = DRLogTarget();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    fileURL = self->_fileURL;
    *buf = 138412290;
    v36 = fileURL;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cloning file provider data to URL %@", buf, 0xCu);
  }

  v7 = self->_fileURL;
  v8 = self->_sourceURLWrapper;
  self->_operationQueue_hasObservedEvent = 1;
  sourceURLWrapper = self->_sourceURLWrapper;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(PBSecurityScopedURLWrapper *)self->_sourceURLWrapper fpItem], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = DRLogTarget();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Exporting file provider data to URL %@", buf, 0xCu);
    }

    v12 = +[FPItemManager defaultManager];
    v13 = [(PBSecurityScopedURLWrapper *)self->_sourceURLWrapper fpItem];
    v14 = self->_fileURL;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10000B204;
    v30[3] = &unk_100054DF0;
    v32 = self;
    v33 = v4;
    v31 = v7;
    v15 = v7;
    [v12 recursivelyExportItem:v13 toURL:v14 completionHandler:v30];

    v16 = v33;
  }

  else
  {
    v16 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
    v17 = [(PBSecurityScopedURLWrapper *)self->_sourceURLWrapper url];
    v18 = [v17 startAccessingSecurityScopedResource];

    v19 = [(PBSecurityScopedURLWrapper *)self->_sourceURLWrapper url];
    v20 = [NSFileAccessIntent readingIntentWithURL:v19 options:1];

    v34 = v20;
    v21 = [NSArray arrayWithObjects:&v34 count:1];
    v22 = [DROnDemandFileProviderPresenter presentedItemOperationQueue]_0();
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000B3B4;
    v24[3] = &unk_100054E18;
    v25 = v8;
    v26 = v7;
    v27 = self;
    v28 = v4;
    v29 = v18;
    v23 = v7;
    [v16 coordinateAccessWithIntents:v21 queue:v22 byAccessor:v24];
  }
}

@end