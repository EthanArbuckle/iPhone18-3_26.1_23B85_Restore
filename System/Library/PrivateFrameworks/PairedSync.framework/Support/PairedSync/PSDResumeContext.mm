@interface PSDResumeContext
+ (PSDResumeContext)contextWithURL:(id)l;
+ (id)defaultURL;
- (BOOL)save:(id *)save;
- (PSDResumeContext)initWithCoder:(id)coder;
- (PSDResumeContext)initWithURL:(id)l;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
@end

@implementation PSDResumeContext

+ (id)defaultURL
{
  v2 = +[PSDFileManager defaultManager];
  storageURL = [v2 storageURL];

  v4 = [storageURL URLByAppendingPathComponent:@"resumeContext.dat"];

  return v4;
}

+ (PSDResumeContext)contextWithURL:(id)l
{
  lCopy = l;
  v16 = objc_opt_class();
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  v6 = [NSSet setWithArray:v5];
  path = [lCopy path];
  v8 = [NSKeyedUnarchiver secureUnarchiveObjectOfClasses:v6 withFile:path];

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
        v15 = lCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No resume context at %{public}@.  Creating a new one.", &v14, 0xCu);
      }
    }

    v8 = [[self alloc] initWithURL:lCopy];
  }

  return v8;
}

- (PSDResumeContext)initWithURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = PSDResumeContext;
  v5 = [(PSDResumeContext *)&v11 init];
  if (v5)
  {
    v6 = [lCopy copy];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = objc_alloc_init(NSFileManager);
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    [v8 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v5;
}

- (PSDResumeContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PSDResumeContext;
  v5 = [(PSDResumeContext *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"syncSession"];
    syncSession = v5->_syncSession;
    v5->_syncSession = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  URL = self->_URL;
  coderCopy = coder;
  [coderCopy encodeObject:URL forKey:@"URL"];
  [coderCopy encodeObject:self->_syncSession forKey:@"syncSession"];
}

- (void)reset
{
  v3 = objc_alloc_init(NSFileManager);
  URL = self->_URL;
  v5 = 0;
  [v3 removeItemAtURL:URL error:&v5];
  [(PSDResumeContext *)self setSyncSession:0];
}

- (BOOL)save:(id *)save
{
  selfCopy = self;
  path = [(NSURL *)self->_URL path];
  LOBYTE(selfCopy) = [NSKeyedArchiver secureArchiveRootObject:selfCopy toFile:path withOptions:268435457];

  return selfCopy;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  path = [(NSURL *)self->_URL path];
  v6 = [NSString stringWithFormat:@"<%@ %p URL=%@;\n\tsyncSession=%@>", v4, self, path, self->_syncSession];;

  return v6;
}

@end