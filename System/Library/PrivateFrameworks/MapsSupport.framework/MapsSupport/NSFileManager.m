@interface NSFileManager
+ (BOOL)emptyContentsOfDirectoryAtURL:(id)a3 error:(id *)a4;
+ (id)_maps_globalCachesURL;
@end

@implementation NSFileManager

+ (BOOL)emptyContentsOfDirectoryAtURL:(id)a3 error:(id *)a4
{
  v18 = a4;
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:0 errorHandler:0];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v19 = 0;
        [v5 removeItemAtURL:v12 error:{&v19, v18}];
        v13 = v19;
        if (v13)
        {
          if (!v9)
          {
            v9 = objc_opt_new();
          }

          [v9 setObject:v13 forKeyedSubscript:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if (v18 && [v9 count])
  {
    v24[0] = @"mapsPartialErrorsByFileURL";
    v14 = [v9 copy];
    v24[1] = NSLocalizedDescriptionKey;
    v25[0] = v14;
    v25[1] = @"Could not successfully delete all the files in the directory";
    v15 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    *v18 = [NSError errorWithDomain:NSCocoaErrorDomain code:512 userInfo:v15];
  }

  v16 = [v9 count] == 0;

  return v16;
}

+ (id)_maps_globalCachesURL
{
  v2 = +[NSFileManager defaultManager];
  v3 = [NSURL fileURLWithPath:@"/private/var/mobile/Library/Caches/com.apple.Maps/"];
  if (([v2 fileExistsAtPath:@"/private/var/mobile/Library/Caches/com.apple.Maps/"] & 1) == 0)
  {
    v12 = 0;
    v4 = [v2 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v12];
    v5 = v12;
    if (v4)
    {
      byte_10004AC48 = 0;
      v6 = sub_10000D398();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v14 = @"/private/var/mobile/Library/Caches/com.apple.Maps/";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Created global caches directory at path %{public}@", buf, 0xCu);
      }

      v11 = v5;
      v7 = [v3 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsPurgeableKey error:&v11];
      v8 = v11;

      if (v7)
      {
        goto LABEL_13;
      }

      v9 = sub_10000D398();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Failed to set Purgeable resource value on caches directory: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (byte_10004AC48)
      {
LABEL_14:

        goto LABEL_15;
      }

      byte_10004AC48 = 1;
      v9 = sub_10000D398();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        v14 = @"/private/var/mobile/Library/Caches/com.apple.Maps/";
        v15 = 2114;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Failed to create global caches directory at path '%{public}@': %{public}@", buf, 0x16u);
      }

      v8 = v5;
    }

LABEL_13:
    v5 = v8;
    goto LABEL_14;
  }

LABEL_15:

  return v3;
}

@end