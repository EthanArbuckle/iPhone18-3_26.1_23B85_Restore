@interface NSFileManager
- (BOOL)removeItemsUnderPath:(id)a3 error:(id *)a4;
@end

@implementation NSFileManager

- (BOOL)removeItemsUnderPath:(id)a3 error:(id *)a4
{
  v21 = 0;
  v7 = [(NSFileManager *)self enumeratorAtPath:?];
  if (v7)
  {
    v8 = v7;
    v9 = [(NSDirectoryEnumerator *)v7 nextObject];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = objc_autoreleasePoolPush();
        [(NSDirectoryEnumerator *)v8 skipDescendants];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [a3 stringByAppendingPathComponent:v10];
          v15 = [(NSFileManager *)self removeItemAtPath:v14 error:&v21];
          v16 = msuSharedLogger();
          v17 = v16;
          if (v15)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v23 = v14;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Successfully removed old CacheDelete subpath %@", buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v23 = v14;
              v24 = 2112;
              v25 = v21;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to remove old CacheDelete subpath %@: %@", buf, 0x16u);
            }

            v12 = v21;
            v11 = 1;
          }
        }

        objc_autoreleasePoolPop(v13);
        v10 = [(NSDirectoryEnumerator *)v8 nextObject];
      }

      while (v10);
      v18 = v11 ^ 1;
    }

    else
    {
      v12 = 0;
      v18 = 1;
    }

    v19 = v12;
    if (a4)
    {
      *a4 = v12;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18 & 1;
}

@end