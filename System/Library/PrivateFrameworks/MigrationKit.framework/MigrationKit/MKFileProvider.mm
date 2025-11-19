@interface MKFileProvider
- (id)fetchRootPath;
@end

@implementation MKFileProvider

- (id)fetchRootPath
{
  rootPath = self->_rootPath;
  if (rootPath)
  {
    v3 = rootPath;
  }

  else
  {
    v5 = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [v5 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.FileProvider.LocalStorage"];

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

    v3 = [v7 path];
    if (v3)
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [v9 fileExistsAtPath:v3];

      if ((v10 & 1) == 0)
      {
        v11 = [MEMORY[0x277CCAA00] defaultManager];
        v16 = 0;
        [v11 createDirectoryAtPath:v3 withIntermediateDirectories:0 attributes:0 error:&v16];
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

      [(MKFileProvider *)self setRootPath:v3];
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

  return v3;
}

@end