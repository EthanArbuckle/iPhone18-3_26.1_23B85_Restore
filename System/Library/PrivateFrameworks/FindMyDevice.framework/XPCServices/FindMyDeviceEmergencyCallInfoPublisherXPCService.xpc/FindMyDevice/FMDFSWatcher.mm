@interface FMDFSWatcher
+ (id)monitorURL:(id)l action:(id)action;
- (BOOL)start;
- (FMDFSWatcher)init;
- (FMDFSWatcher)initWithURL:(id)l action:(id)action;
- (void)cancel;
- (void)directoryChanged;
- (void)fileDiscovered;
@end

@implementation FMDFSWatcher

- (FMDFSWatcher)init
{
  [(FMDFSWatcher *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (FMDFSWatcher)initWithURL:(id)l action:(id)action
{
  lCopy = l;
  actionCopy = action;
  v19.receiver = self;
  v19.super_class = FMDFSWatcher;
  v8 = [(FMDFSWatcher *)&v19 init];
  if (v8)
  {
    v9 = v8;
    standardizedURL = [lCopy standardizedURL];
    v11 = CFURLCopyPath(standardizedURL);
    v12 = [(__CFString *)v11 hasSuffix:@"/"];
    CFRelease(v11);
    v18.receiver = v9;
    v18.super_class = FMDFSWatcher;
    v13 = [(FMDFSWatcher *)&v18 init];
    v14 = v13;
    if (v12)
    {
      [(FMDFSWatcher *)v13 setDirectoryURL:standardizedURL];
      [(FMDFSWatcher *)v14 setTargetFilename:0];
    }

    else
    {
      uRLByDeletingLastPathComponent = [(__CFURL *)standardizedURL URLByDeletingLastPathComponent];
      [(FMDFSWatcher *)v14 setDirectoryURL:uRLByDeletingLastPathComponent];

      lastPathComponent = [(__CFURL *)standardizedURL lastPathComponent];
      [(FMDFSWatcher *)v14 setTargetFilename:lastPathComponent];
    }

    [(FMDFSWatcher *)v14 setBlock:actionCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)start
{
  objc_initWeak(&location, self);
  v3 = sub_100001F6C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    directoryURL = [(FMDFSWatcher *)self directoryURL];
    targetFilename = [(FMDFSWatcher *)self targetFilename];
    *buf = 138412546;
    v37 = directoryURL;
    v38 = 2112;
    v39 = targetFilename;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting to watch for existence of %@/%@", buf, 0x16u);
  }

  directoryURL2 = [(FMDFSWatcher *)self directoryURL];
  path = [directoryURL2 path];
  v8 = path;
  -[FMDFSWatcher setFd:](self, "setFd:", open([path fileSystemRepresentation], 0x8000));

  v9 = [(FMDFSWatcher *)self fd];
  if (v9 < 1)
  {
    v24 = sub_100001F6C();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      directoryURL3 = [(FMDFSWatcher *)self directoryURL];
      sub_100004430(directoryURL3, buf, v24);
    }

    v26 = sub_100001F6C();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      directoryURL4 = [(FMDFSWatcher *)self directoryURL];
      *v34 = 138412290;
      v35 = directoryURL4;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed to open %@", v34, 0xCu);
    }
  }

  else
  {
    v10 = [(FMDFSWatcher *)self fd];
    v11 = dispatch_get_global_queue(0, 0);
    v12 = dispatch_source_create(&_dispatch_source_type_vnode, v10, 2uLL, v11);
    [(FMDFSWatcher *)self setDispatchSourceChange:v12];

    dispatchSourceChange = [(FMDFSWatcher *)self dispatchSourceChange];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001604;
    handler[3] = &unk_10000C3E8;
    handler[4] = self;
    objc_copyWeak(&v32, &location);
    dispatch_source_set_event_handler(dispatchSourceChange, handler);

    dispatchSourceChange2 = [(FMDFSWatcher *)self dispatchSourceChange];
    dispatch_resume(dispatchSourceChange2);

    v15 = sub_100001F6C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      directoryURL5 = [(FMDFSWatcher *)self directoryURL];
      path2 = [directoryURL5 path];
      *buf = 138412290;
      v37 = path2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Started monitoring changes to directory: %@", buf, 0xCu);
    }

    v18 = dispatch_source_create(&_dispatch_source_type_vnode, [(FMDFSWatcher *)self fd], 0x61uLL, v11);
    [(FMDFSWatcher *)self setDispatchSourceAbort:v18];

    dispatchSourceAbort = [(FMDFSWatcher *)self dispatchSourceAbort];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000016E8;
    v29[3] = &unk_10000C3E8;
    v29[4] = self;
    objc_copyWeak(&v30, &location);
    dispatch_source_set_event_handler(dispatchSourceAbort, v29);

    dispatchSourceAbort2 = [(FMDFSWatcher *)self dispatchSourceAbort];
    dispatch_resume(dispatchSourceAbort2);

    v21 = sub_100001F6C();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      directoryURL6 = [(FMDFSWatcher *)self directoryURL];
      path3 = [directoryURL6 path];
      *buf = 138412290;
      v37 = path3;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Started monitoring for removal of directory: %@", buf, 0xCu);
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
  }

  objc_destroyWeak(&location);
  return v9 > 0;
}

+ (id)monitorURL:(id)l action:(id)action
{
  actionCopy = action;
  lCopy = l;
  v7 = [[FMDFSWatcher alloc] initWithURL:lCopy action:actionCopy];

  targetFilename = [(FMDFSWatcher *)v7 targetFilename];

  if (targetFilename)
  {
    v9 = sub_100001F6C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling directory changed on startup", v11, 2u);
    }

    [(FMDFSWatcher *)v7 directoryChanged];
  }

  if (![(FMDFSWatcher *)v7 triggered]&& ![(FMDFSWatcher *)v7 start])
  {
    [(FMDFSWatcher *)v7 cancel];

    v7 = 0;
  }

  return v7;
}

- (void)directoryChanged
{
  targetFilename = [(FMDFSWatcher *)self targetFilename];

  if (targetFilename)
  {
    v4 = +[NSFileManager defaultManager];
    directoryURL = [(FMDFSWatcher *)self directoryURL];
    v26 = 0;
    v6 = [v4 contentsOfDirectoryAtURL:directoryURL includingPropertiesForKeys:0 options:0 error:&v26];
    v7 = v26;

    if (v7)
    {
      v8 = sub_100001F6C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100004488(self, v7, v8);
      }

      v9 = sub_100001F6C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        directoryURL2 = [(FMDFSWatcher *)self directoryURL];
        *buf = 138412546;
        v28 = directoryURL2;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error while trying to read the contents of directory %@: %@", buf, 0x16u);
      }

      [(FMDFSWatcher *)self cancel];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = v6;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v31 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            lastPathComponent = [*(*(&v22 + 1) + 8 * i) lastPathComponent];
            targetFilename2 = [(FMDFSWatcher *)self targetFilename];
            v18 = [lastPathComponent isEqualToString:targetFilename2];

            if (v18)
            {
              [(FMDFSWatcher *)self fileDiscovered];
              goto LABEL_22;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v31 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v11 = sub_100001F6C();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        targetFilename3 = [(FMDFSWatcher *)self targetFilename];
        *buf = 138412290;
        v28 = targetFilename3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "File was not found in the directory yet: %@", buf, 0xCu);
      }

LABEL_22:

      v6 = v21;
    }
  }

  else
  {
    block = [(FMDFSWatcher *)self block];
    block[2]();
  }
}

- (void)fileDiscovered
{
  v3 = sub_100001F6C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    targetFilename = [(FMDFSWatcher *)self targetFilename];
    v6 = 138412290;
    v7 = targetFilename;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Found file being watched: %@", &v6, 0xCu);
  }

  [(FMDFSWatcher *)self setTriggered:1];
  [(FMDFSWatcher *)self cancel];
  block = [(FMDFSWatcher *)self block];
  block[2]();
}

- (void)cancel
{
  v3 = sub_100001F6C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deinitializing watcher", v8, 2u);
  }

  dispatchSourceChange = [(FMDFSWatcher *)self dispatchSourceChange];

  if (dispatchSourceChange)
  {
    dispatchSourceChange2 = [(FMDFSWatcher *)self dispatchSourceChange];
    dispatch_source_cancel(dispatchSourceChange2);

    [(FMDFSWatcher *)self setDispatchSourceChange:0];
  }

  dispatchSourceAbort = [(FMDFSWatcher *)self dispatchSourceAbort];

  if (dispatchSourceAbort)
  {
    dispatchSourceAbort2 = [(FMDFSWatcher *)self dispatchSourceAbort];
    dispatch_source_cancel(dispatchSourceAbort2);

    [(FMDFSWatcher *)self setDispatchSourceAbort:0];
  }

  if ([(FMDFSWatcher *)self fd]>= 1)
  {
    close([(FMDFSWatcher *)self fd]);
    [(FMDFSWatcher *)self setFd:0];
  }
}

@end