@interface VCPPhotoLibraryManager
+ (id)sharedManager;
- (VCPPhotoLibraryManager)initWithPhotoLibraryPaths:(id)a3;
- (id)allPhotoLibraries;
- (id)photoLibraryWithURL:(id)a3;
- (void)dealloc;
- (void)persistPhotoLibraries;
@end

@implementation VCPPhotoLibraryManager

- (VCPPhotoLibraryManager)initWithPhotoLibraryPaths:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = VCPPhotoLibraryManager;
  v5 = [(VCPPhotoLibraryManager *)&v17 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.mediaanalysisd.VCPPhotoLibraryManager", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = +[NSMutableDictionary dictionary];
    openPhotoLibraries = v5->_openPhotoLibraries;
    v5->_openPhotoLibraries = v8;

    v10 = [NSMutableArray arrayWithArray:v4];
    knownPhotoLibraries = v5->_knownPhotoLibraries;
    v5->_knownPhotoLibraries = v10;

    v12 = objc_autoreleasePoolPush();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001499A4;
    v15[3] = &unk_100287318;
    v16 = v5;
    v13 = objc_retainBlock(v15);
    (v13[2])(v13, 1, @"System");
    (v13[2])(v13, 3, @"Syndication");

    objc_autoreleasePoolPop(v12);
  }

  return v5;
}

+ (id)sharedManager
{
  if (qword_1002B8460 != -1)
  {
    sub_10014A810();
  }

  v3 = qword_1002B8458;

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VCPPhotoLibraryManager;
  [(VCPPhotoLibraryManager *)&v2 dealloc];
}

- (id)allPhotoLibraries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100149DCC;
  v10 = sub_100149DDC;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100149DE4;
  v5[3] = &unk_1002873A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)persistPhotoLibraries
{
  if (MediaAnalysisLogLevel() >= 7)
  {
    v3 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v3))
    {
      knownPhotoLibraries = self->_knownPhotoLibraries;
      v7 = 138412290;
      v8 = knownPhotoLibraries;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Persisting Photo Library paths %@", &v7, 0xCu);
    }
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  [v5 setObject:self->_knownPhotoLibraries forKey:VCPPhotoLibrariesDefaultsKey];
  if (([v5 synchronize] & 1) == 0 && MediaAnalysisLogLevel() >= 4)
  {
    v6 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "Failed to persist known Photo Libraries", &v7, 2u);
    }
  }
}

- (id)photoLibraryWithURL:(id)a3
{
  v4 = a3;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v5 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = [v4 path];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Request for photo library at path %@", &buf, 0xCu);
    }
  }

  if (v4)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x3032000000;
    v17 = sub_100149DCC;
    v18 = sub_100149DDC;
    v19 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014A4FC;
    block[3] = &unk_1002873C8;
    v13 = self;
    p_buf = &buf;
    v12 = v4;
    dispatch_sync(queue, block);
    v8 = *(*(&buf + 1) + 40);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4)
    {
      v9 = VCPLogToOSLogType[4];
      if (os_log_type_enabled(&_os_log_default, v9))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "Photo Library requested with nil URL", &buf, 2u);
      }
    }

    v8 = 0;
  }

  return v8;
}

@end