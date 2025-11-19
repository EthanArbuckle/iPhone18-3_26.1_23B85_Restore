@interface NADEntityStore
- (NADEntityStore)initWithDirectory:(id)a3 serializer:(id)a4 identifierBlock:(id)a5;
- (id)allEntities;
- (id)directoryForEntity:(id)a3;
- (void)_createDirectoryIfNeeded;
- (void)addEntity:(id)a3;
- (void)clearStore;
- (void)removeEntity:(id)a3;
@end

@implementation NADEntityStore

- (NADEntityStore)initWithDirectory:(id)a3 serializer:(id)a4 identifierBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = NADEntityStore;
  v12 = [(NADEntityStore *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_directory, a3);
    v14 = [v11 copy];
    identifierBlock = v13->_identifierBlock;
    v13->_identifierBlock = v14;

    objc_storeStrong(&v13->_serializer, a4);
    v16 = objc_alloc_init(NSFileManager);
    fileManager = v13->_fileManager;
    v13->_fileManager = v16;

    [(NADEntityStore *)v13 _createDirectoryIfNeeded];
  }

  return v13;
}

- (id)allEntities
{
  v3 = +[NSMutableArray array];
  fileManager = self->_fileManager;
  v5 = [(NADEntityStore *)self directory];
  v25 = NSURLIsDirectoryKey;
  v6 = [NSArray arrayWithObjects:&v25 count:1];
  v7 = [(NSFileManager *)fileManager contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v6 options:0 error:0];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v19 = 0;
        v14 = [v13 getResourceValue:&v19 forKey:NSURLIsDirectoryKey error:0];
        v15 = v19;
        v16 = v15;
        if (v14 && [v15 BOOLValue])
        {
          v17 = [(NADAppSerializer *)self->_serializer objectAtDirectory:v13];
          if (v17)
          {
            [v3 addObject:v17];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return v3;
}

- (void)addEntity:(id)a3
{
  v4 = a3;
  v5 = [(NADEntityStore *)self directoryForEntity:v4];
  fileManager = self->_fileManager;
  v7 = [v5 path];
  v14 = 0;
  [(NSFileManager *)fileManager createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v14];
  v8 = v14;

  serializer = self->_serializer;
  v13 = v8;
  LOBYTE(v7) = [(NADAppSerializer *)serializer persistObject:v4 toDirectory:v5 error:&v13];
  v10 = v13;

  if ((v7 & 1) == 0)
  {
    v11 = nar_workspace_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = (*(self->_identifierBlock + 2))();
      *buf = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v10;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error writing entity: %@ - %@", buf, 0x16u);
    }
  }
}

- (void)removeEntity:(id)a3
{
  v4 = [(NADEntityStore *)self directoryForEntity:a3];
  fileManager = self->_fileManager;
  v9 = 0;
  v6 = [(NSFileManager *)fileManager removeItemAtURL:v4 error:&v9];
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    v8 = nar_workspace_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000C20C(v4, v7, v8);
    }
  }
}

- (void)clearStore
{
  fileManager = self->_fileManager;
  v4 = [(NADEntityStore *)self directory];
  v10 = 0;
  v5 = [(NSFileManager *)fileManager removeItemAtURL:v4 error:&v10];
  v6 = v10;

  v7 = nar_workspace_log();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Resetting store directory", v9, 2u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10000C294(v6, v8);
  }

  [(NADEntityStore *)self _createDirectoryIfNeeded];
}

- (void)_createDirectoryIfNeeded
{
  fileManager = self->_fileManager;
  v4 = [(NADEntityStore *)self directory];
  v5 = [v4 path];
  v12 = 0;
  v6 = [(NSFileManager *)fileManager createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v12];
  v7 = v12;

  v8 = nar_workspace_log();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(NADEntityStore *)self directory];
      v11 = [v10 path];
      *buf = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating directory at location %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10000C30C(v7, v9);
  }
}

- (id)directoryForEntity:(id)a3
{
  v4 = (*(self->_identifierBlock + 2))();
  v5 = [(NADEntityStore *)self directory];
  v6 = [v5 URLByAppendingPathComponent:v4];

  return v6;
}

@end