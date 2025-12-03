@interface NADAppSerializer
+ (id)applicationSerializer;
- (BOOL)persistObject:(id)object toDirectory:(id)directory error:(id *)error;
- (NADAppSerializer)initWithDefaultFileName:(id)name entityClass:(Class)class;
- (id)URLForFileInDirectory:(id)directory;
- (id)objectAtDirectory:(id)directory;
- (unint64_t)versionForApplicationAtURL:(id)l;
@end

@implementation NADAppSerializer

+ (id)applicationSerializer
{
  v2 = [[self alloc] initWithDefaultFileName:@"Application.dat" entityClass:objc_opt_class()];

  return v2;
}

- (NADAppSerializer)initWithDefaultFileName:(id)name entityClass:(Class)class
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = NADAppSerializer;
  v7 = [(NADAppSerializer *)&v11 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    fileName = v7->_fileName;
    v7->_fileName = v8;

    v7->_entityClass = class;
  }

  return v7;
}

- (id)URLForFileInDirectory:(id)directory
{
  directoryCopy = directory;
  fileName = [(NADAppSerializer *)self fileName];
  v6 = [directoryCopy URLByAppendingPathComponent:fileName];

  return v6;
}

- (BOOL)persistObject:(id)object toDirectory:(id)directory error:(id *)error
{
  directoryCopy = directory;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:object];
  v10 = [(NADAppSerializer *)self URLForFileInDirectory:directoryCopy];
  if (error && !*error)
  {
    v12 = [v9 writeToURL:v10 options:268435457 error:error];
    v11 = v12 & [(NADAppSerializer *)self setVersion:1 forApplicationAtURL:directoryCopy];
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)objectAtDirectory:(id)directory
{
  directoryCopy = directory;
  v5 = [(NADAppSerializer *)self versionForApplicationAtURL:directoryCopy];
  if (v5 != 1)
  {
    if (v5)
    {
      v8 = 0;
      goto LABEL_13;
    }

    [(NADAppSerializer *)self setVersion:1 forApplicationAtURL:directoryCopy];
  }

  v6 = [(NADAppSerializer *)self URLForFileInDirectory:directoryCopy];
  v7 = [NSData dataWithContentsOfURL:v6];
  if (v7)
  {
    v12 = 0;
    v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:[(NADAppSerializer *)self entityClass] fromData:v7 error:&v12];
    v9 = v12;
    if (v9)
    {
      v10 = nar_workspace_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to unarchive object %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)versionForApplicationAtURL:(id)l
{
  value = 0;
  getxattr([l fileSystemRepresentation], "version", &value, 8uLL, 0, 0);
  return value;
}

@end