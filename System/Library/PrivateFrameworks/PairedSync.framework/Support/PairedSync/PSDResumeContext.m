@interface PSDResumeContext
+ (PSDResumeContext)contextWithURL:(id)a3;
+ (id)defaultURL;
- (BOOL)save:(id *)a3;
- (PSDResumeContext)initWithCoder:(id)a3;
- (PSDResumeContext)initWithURL:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
@end

@implementation PSDResumeContext

+ (id)defaultURL
{
  v2 = +[PSDFileManager defaultManager];
  v3 = [v2 storageURL];

  v4 = [v3 URLByAppendingPathComponent:@"resumeContext.dat"];

  return v4;
}

+ (PSDResumeContext)contextWithURL:(id)a3
{
  v4 = a3;
  v16 = objc_opt_class();
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  v6 = [NSSet setWithArray:v5];
  v7 = [v4 path];
  v8 = [NSKeyedUnarchiver secureUnarchiveObjectOfClasses:v6 withFile:v7];

  v9 = psd_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    if (v10)
    {
      v11 = psd_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Successfully unarchived resume context", &v14, 2u);
      }
    }
  }

  else
  {
    if (v10)
    {
      v12 = psd_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = v4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No resume context at %{public}@.  Creating a new one.", &v14, 0xCu);
      }
    }

    v8 = [[a1 alloc] initWithURL:v4];
  }

  return v8;
}

- (PSDResumeContext)initWithURL:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PSDResumeContext;
  v5 = [(PSDResumeContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = objc_alloc_init(NSFileManager);
    v9 = [v4 URLByDeletingLastPathComponent];
    [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v5;
}

- (PSDResumeContext)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PSDResumeContext;
  v5 = [(PSDResumeContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"syncSession"];
    syncSession = v5->_syncSession;
    v5->_syncSession = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  URL = self->_URL;
  v5 = a3;
  [v5 encodeObject:URL forKey:@"URL"];
  [v5 encodeObject:self->_syncSession forKey:@"syncSession"];
}

- (void)reset
{
  v3 = objc_alloc_init(NSFileManager);
  URL = self->_URL;
  v5 = 0;
  [v3 removeItemAtURL:URL error:&v5];
  [(PSDResumeContext *)self setSyncSession:0];
}

- (BOOL)save:(id *)a3
{
  v3 = self;
  v4 = [(NSURL *)self->_URL path];
  LOBYTE(v3) = [NSKeyedArchiver secureArchiveRootObject:v3 toFile:v4 withOptions:268435457];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(NSURL *)self->_URL path];
  v6 = [NSString stringWithFormat:@"<%@ %p URL=%@;\n\tsyncSession=%@>", v4, self, v5, self->_syncSession];;

  return v6;
}

@end