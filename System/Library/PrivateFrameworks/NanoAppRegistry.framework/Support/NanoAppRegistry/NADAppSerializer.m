@interface NADAppSerializer
+ (id)applicationSerializer;
- (BOOL)persistObject:(id)a3 toDirectory:(id)a4 error:(id *)a5;
- (NADAppSerializer)initWithDefaultFileName:(id)a3 entityClass:(Class)a4;
- (id)URLForFileInDirectory:(id)a3;
- (id)objectAtDirectory:(id)a3;
- (unint64_t)versionForApplicationAtURL:(id)a3;
@end

@implementation NADAppSerializer

+ (id)applicationSerializer
{
  v2 = [[a1 alloc] initWithDefaultFileName:@"Application.dat" entityClass:objc_opt_class()];

  return v2;
}

- (NADAppSerializer)initWithDefaultFileName:(id)a3 entityClass:(Class)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = NADAppSerializer;
  v7 = [(NADAppSerializer *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    fileName = v7->_fileName;
    v7->_fileName = v8;

    v7->_entityClass = a4;
  }

  return v7;
}

- (id)URLForFileInDirectory:(id)a3
{
  v4 = a3;
  v5 = [(NADAppSerializer *)self fileName];
  v6 = [v4 URLByAppendingPathComponent:v5];

  return v6;
}

- (BOOL)persistObject:(id)a3 toDirectory:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:a3];
  v10 = [(NADAppSerializer *)self URLForFileInDirectory:v8];
  if (a5 && !*a5)
  {
    v12 = [v9 writeToURL:v10 options:268435457 error:a5];
    v11 = v12 & [(NADAppSerializer *)self setVersion:1 forApplicationAtURL:v8];
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)objectAtDirectory:(id)a3
{
  v4 = a3;
  v5 = [(NADAppSerializer *)self versionForApplicationAtURL:v4];
  if (v5 != 1)
  {
    if (v5)
    {
      v8 = 0;
      goto LABEL_13;
    }

    [(NADAppSerializer *)self setVersion:1 forApplicationAtURL:v4];
  }

  v6 = [(NADAppSerializer *)self URLForFileInDirectory:v4];
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

- (unint64_t)versionForApplicationAtURL:(id)a3
{
  value = 0;
  getxattr([a3 fileSystemRepresentation], "version", &value, 8uLL, 0, 0);
  return value;
}

@end