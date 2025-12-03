@interface MKFileProvider
- (id)fetchRootPath;
@end

@implementation MKFileProvider

- (id)fetchRootPath
{
  rootPath = self->_rootPath;
  if (rootPath)
  {
    path = rootPath;
  }

  else
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.FileProvider.LocalStorage"];

    if (v6)
    {
      v7 = [v6 URLByAppendingPathComponent:@"File Provider Storage"];
    }

    else
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(MKFileProvider *)v8 fetchRootPath];
      }

      v7 = 0;
    }

    path = [v7 path];
    if (path)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [defaultManager2 fileExistsAtPath:path];

      if ((v10 & 1) == 0)
      {
        defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
        v16 = 0;
        [defaultManager3 createDirectoryAtPath:path withIntermediateDirectories:0 attributes:0 error:&v16];
        v12 = v16;

        if (v12)
        {
          v13 = +[MKLog log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(MKFileProvider *)self fetchRootPath];
          }
        }
      }

      [(MKFileProvider *)self setRootPath:path];
    }

    else
    {
      v14 = +[MKLog log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(MKFileProvider *)v14 fetchRootPath];
      }
    }
  }

  return path;
}

@end