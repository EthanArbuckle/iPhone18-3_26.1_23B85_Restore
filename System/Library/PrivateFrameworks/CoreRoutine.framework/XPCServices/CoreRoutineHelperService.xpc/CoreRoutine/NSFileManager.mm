@interface NSFileManager
+ (id)crashReporterPath;
+ (id)frameworkDirectoryPath;
+ (id)pathInCacheDirectory:(id)directory;
+ (id)routineBluePOIQueryPath;
+ (id)routineCacheDirectoryPath;
+ (id)routinePreferencesPath;
+ (id)sortedContentsOfDirectoryAtURL:(id)l withExtension:(id)extension;
+ (id)userCacheDirectoryPath;
+ (id)userLibraryPath;
+ (id)userPreferencesPath;
+ (unint64_t)directorySizeAtPath:(id)path;
@end

@implementation NSFileManager

+ (id)frameworkDirectoryPath
{
  v2 = +[NSFileManager frameworkBundle];
  bundleURL = [v2 bundleURL];
  absoluteString = [bundleURL absoluteString];

  return absoluteString;
}

+ (id)userCacheDirectoryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  if ([v2 count])
  {
    firstObject = [v2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)routineCacheDirectoryPath
{
  userCacheDirectoryPath = [self userCacheDirectoryPath];
  if (userCacheDirectoryPath)
  {
    v3 = userCacheDirectoryPath;
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

+ (id)pathInCacheDirectory:(id)directory
{
  directoryCopy = directory;
  if (!directoryCopy)
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
  if (directoryCopy)
  {
    if (v5)
    {
      v7 = [v5 stringByAppendingPathComponent:directoryCopy];
      v8 = [NSURL fileURLWithPath:v7];

      standardizedURL = [v8 standardizedURL];
      absoluteString = [v8 absoluteString];
      absoluteString2 = [standardizedURL absoluteString];
      v12 = [absoluteString isEqualToString:absoluteString2];

      if (v12)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          v13 = sub_1000011A0(&qword_1000B2958);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            path = [standardizedURL path];
            v21 = 138412290;
            v22 = path;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "path in cache directory, %@", &v21, 0xCu);
          }
        }

        path2 = [standardizedURL path];
      }

      else
      {
        path2 = 0;
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

      path2 = 0;
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

    path2 = v6;
  }

  return path2;
}

+ (id)userLibraryPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([v2 count])
  {
    firstObject = [v2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)userPreferencesPath
{
  userLibraryPath = [self userLibraryPath];
  v3 = userLibraryPath;
  if (userLibraryPath)
  {
    v4 = [userLibraryPath stringByAppendingPathComponent:@"Preferences"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)routinePreferencesPath
{
  userPreferencesPath = [self userPreferencesPath];
  if (userPreferencesPath)
  {
    defaultsDomain = [self defaultsDomain];
    v5 = [userPreferencesPath stringByAppendingPathComponent:defaultsDomain];
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
  userLibraryPath = [self userLibraryPath];
  v3 = userLibraryPath;
  if (userLibraryPath)
  {
    v4 = [userLibraryPath stringByAppendingPathComponent:@"BluePOIQueries"];
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
  userLibraryPath = [self userLibraryPath];
  if (userLibraryPath)
  {
    v3 = [&off_1000AB930 componentsJoinedByString:@"/"];
    v4 = [userLibraryPath stringByAppendingPathComponent:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)sortedContentsOfDirectoryAtURL:(id)l withExtension:(id)extension
{
  lCopy = l;
  extensionCopy = extension;
  v8 = +[NSFileManager defaultManager];
  v15 = 0;
  v9 = [v8 contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:0 options:3 error:&v15];
  v10 = v15;

  if (!v10)
  {
    extensionCopy = [NSPredicate predicateWithFormat:@"%K = %@", @"pathExtension", extensionCopy];
    v13 = [v9 filteredArrayUsingPredicate:extensionCopy];

    v12 = [self sortFilesByName:v13];
    v9 = v13;
LABEL_7:

    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    extensionCopy = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(extensionCopy, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = lCopy;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, extensionCopy, OS_LOG_TYPE_INFO, "encountered error getting contents of directory, %@, error, %@", buf, 0x16u);
    }

    v12 = 0;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

+ (unint64_t)directorySizeAtPath:(id)path
{
  aSelector = a2;
  pathCopy = path;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 subpathsOfDirectoryAtPath:pathCopy error:0];
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

        v11 = [pathCopy stringByAppendingPathComponent:{*(*(&v18 + 1) + 8 * i), aSelector}];
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
      v25 = pathCopy;
      v26 = 2048;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@, path, %@, size, %lu", buf, 0x20u);
    }
  }

  return v8;
}

@end