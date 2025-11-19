@interface NSFileManager
+ (id)crashReporterPath;
+ (id)frameworkDirectoryPath;
+ (id)pathInCacheDirectory:(id)a3;
+ (id)routineBluePOIQueryPath;
+ (id)routineCacheDirectoryPath;
+ (id)routinePreferencesPath;
+ (id)sortedContentsOfDirectoryAtURL:(id)a3 withExtension:(id)a4;
+ (id)userCacheDirectoryPath;
+ (id)userLibraryPath;
+ (id)userPreferencesPath;
+ (unint64_t)directorySizeAtPath:(id)a3;
@end

@implementation NSFileManager

+ (id)frameworkDirectoryPath
{
  v2 = +[NSFileManager frameworkBundle];
  v3 = [v2 bundleURL];
  v4 = [v3 absoluteString];

  return v4;
}

+ (id)userCacheDirectoryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([v2 count])
  {
    v3 = [v2 firstObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)routineCacheDirectoryPath
{
  v2 = [a1 userCacheDirectoryPath];
  if (v2)
  {
    v3 = v2;
    v4 = +[NSFileManager defaultsDomain];
    v5 = [v3 stringByAppendingPathComponent:v4];

    v6 = +[NSFileManager defaultManager];
    LOBYTE(v4) = [v6 fileExistsAtPath:v5];

    if ((v4 & 1) != 0 || (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v7 = objc_claimAutoreleasedReturnValue(), v13 = 0, v8 = [v7 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v13], v9 = v13, v7, v8) && !v9)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_13;
      }

      v10 = sub_1000011A0(&qword_1000B2958);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v15 = v5;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "routine cache directory path, %@", buf, 0xCu);
      }
    }

    else
    {
      v11 = sub_1000011A0(&qword_1000B2958);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = v5;
        v16 = 2112;
        v17 = v9;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "failed to create %@, error, %@", buf, 0x16u);
      }

      v10 = v5;
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_13:

  return v5;
}

+ (id)pathInCacheDirectory:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "+[NSFileManager(RTExtensions) pathInCacheDirectory:]";
      v23 = 1024;
      v24 = 162;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: path (in %s:%d)", &v21, 0x12u);
    }
  }

  v5 = +[NSFileManager routineCacheDirectoryPath];
  v6 = v5;
  if (v3)
  {
    if (v5)
    {
      v7 = [v5 stringByAppendingPathComponent:v3];
      v8 = [NSURL fileURLWithPath:v7];

      v9 = [v8 standardizedURL];
      v10 = [v8 absoluteString];
      v11 = [v9 absoluteString];
      v12 = [v10 isEqualToString:v11];

      if (v12)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v13 = sub_1000011A0(&qword_1000B2958);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v20 = [v9 path];
            v21 = 138412290;
            v22 = v20;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "path in cache directory, %@", &v21, 0xCu);
          }
        }

        v14 = [v9 path];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v17 = sub_1000011A0(&qword_1000B2958);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315394;
        v22 = "+[NSFileManager(RTExtensions) pathInCacheDirectory:]";
        v23 = 1024;
        v24 = 174;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Cache path was nil (in %s:%d)", &v21, 0x12u);
      }

      v18 = sub_1000011A0(&qword_1000B2958);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v21) = 0;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Cache path was nil", &v21, 2u);
      }

      v14 = 0;
    }
  }

  else
  {
    if (!v5)
    {
      v15 = sub_1000011A0(&qword_1000B2958);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315394;
        v22 = "+[NSFileManager(RTExtensions) pathInCacheDirectory:]";
        v23 = 1024;
        v24 = 166;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Cache path was nil (in %s:%d)", &v21, 0x12u);
      }

      v16 = sub_1000011A0(&qword_1000B2958);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v21) = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Cache path was nil", &v21, 2u);
      }
    }

    v14 = v6;
  }

  return v14;
}

+ (id)userLibraryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([v2 count])
  {
    v3 = [v2 firstObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)userPreferencesPath
{
  v2 = [a1 userLibraryPath];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringByAppendingPathComponent:@"Preferences"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)routinePreferencesPath
{
  v3 = [a1 userPreferencesPath];
  if (v3)
  {
    v4 = [a1 defaultsDomain];
    v5 = [v3 stringByAppendingPathComponent:v4];
    v6 = [v5 stringByAppendingPathExtension:@"plist"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)routineBluePOIQueryPath
{
  v2 = [a1 userLibraryPath];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringByAppendingPathComponent:@"BluePOIQueries"];
    v5 = [v4 stringByAppendingPathExtension:@"json"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)crashReporterPath
{
  v2 = [a1 userLibraryPath];
  if (v2)
  {
    v3 = [&off_1000AB930 componentsJoinedByString:@"/"];
    v4 = [v2 stringByAppendingPathComponent:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)sortedContentsOfDirectoryAtURL:(id)a3 withExtension:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSFileManager defaultManager];
  v15 = 0;
  v9 = [v8 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:3 error:&v15];
  v10 = v15;

  if (!v10)
  {
    v11 = [NSPredicate predicateWithFormat:@"%K = %@", @"pathExtension", v7];
    v13 = [v9 filteredArrayUsingPredicate:v11];

    v12 = [a1 sortFilesByName:v13];
    v9 = v13;
LABEL_7:

    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v11 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "encountered error getting contents of directory, %@, error, %@", buf, 0x16u);
    }

    v12 = 0;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

+ (unint64_t)directorySizeAtPath:(id)a3
{
  aSelector = a2;
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 subpathsOfDirectoryAtPath:v3 error:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [v3 stringByAppendingPathComponent:{*(*(&v18 + 1) + 8 * i), aSelector}];
        buf[0] = 0;
        if ([v4 fileExistsAtPath:v11 isDirectory:buf] && (buf[0] & 1) == 0)
        {
          v12 = [v4 attributesOfItemAtPath:v11 error:0];
          v13 = [v12 objectForKeyedSubscript:NSFileSize];
          v8 += [v13 unsignedIntegerValue];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v14 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = NSStringFromSelector(aSelector);
      *buf = 138412802;
      v23 = v15;
      v24 = 2112;
      v25 = v3;
      v26 = 2048;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@, path, %@, size, %lu", buf, 0x20u);
    }
  }

  return v8;
}

@end