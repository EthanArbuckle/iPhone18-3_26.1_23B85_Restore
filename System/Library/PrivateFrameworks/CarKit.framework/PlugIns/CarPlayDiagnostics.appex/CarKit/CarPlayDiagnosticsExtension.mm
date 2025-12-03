@interface CarPlayDiagnosticsExtension
- (id)attachmentList;
- (id)attachmentsForParameters:(id)parameters;
- (id)carPlayAttachmentsForFolder:(id)folder;
- (id)carPlayLogFolderAttachmentForFolderName:(id)name;
- (id)contentOfCarPlayLogsDirectory;
@end

@implementation CarPlayDiagnosticsExtension

- (id)attachmentList
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "diagnostic extension: entering attachmentList", buf, 2u);
  }

  v3 = +[NSArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  contentOfCarPlayLogsDirectory = [(CarPlayDiagnosticsExtension *)self contentOfCarPlayLogsDirectory];
  v5 = [contentOfCarPlayLogsDirectory countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(contentOfCarPlayLogsDirectory);
        }

        v9 = [(CarPlayDiagnosticsExtension *)self carPlayLogFolderAttachmentForFolderName:*(*(&v12 + 1) + 8 * i)];
        if (v9)
        {
          v10 = [v3 arrayByAddingObject:v9];

          v3 = v10;
        }
      }

      v6 = [contentOfCarPlayLogsDirectory countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "diagnostic extension: attachmentList returning %@", buf, 0xCu);
  }

  return v3;
}

- (id)contentOfCarPlayLogsDirectory
{
  v9 = 0;
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/var/mobile/Library/Logs/com.apple.CarPlay" isDirectory:&v9];

  if (v3 && v9 == 1)
  {
    v4 = +[NSFileManager defaultManager];
    v8 = 0;
    v5 = [v4 contentsOfDirectoryAtPath:@"/var/mobile/Library/Logs/com.apple.CarPlay" error:&v8];
    v6 = v8;

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (id)carPlayLogFolderAttachmentForFolderName:(id)name
{
  nameCopy = name;
  v10 = 0;
  v4 = [@"/var/mobile/Library/Logs/com.apple.CarPlay" stringByAppendingPathComponent:nameCopy];
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4 isDirectory:&v10];

  if (v6 && v10 == 1)
  {
    v7 = [NSURL fileURLWithPath:v4];
    v8 = [DEAttachmentItem attachmentWithPathURL:v7];

    [v8 setDisplayName:nameCopy];
    [v8 setShouldCompress:&__kCFBooleanTrue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)carPlayAttachmentsForFolder:(id)folder
{
  v21 = 0;
  v3 = [@"/var/mobile/Library/Logs/com.apple.CarPlay" stringByAppendingPathComponent:folder];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3 isDirectory:&v21];

  if (v5 && v21 == 1)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 contentsOfDirectoryAtPath:v3 error:0];

    v8 = +[NSMutableArray array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [v3 stringByAppendingPathComponent:{*(*(&v17 + 1) + 8 * i), v17}];
          v15 = [DEAttachmentItem attachmentWithPath:v14];
          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "diagnostic extension: entering attachmentsForParameters", buf, 2u);
  }

  v5 = objc_alloc_init(NSMutableArray);
  v6 = +[NSDate distantPast];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  contentOfCarPlayLogsDirectory = [(CarPlayDiagnosticsExtension *)self contentOfCarPlayLogsDirectory];
  v8 = [contentOfCarPlayLogsDirectory countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (!v8)
  {
    v23 = 0;
    goto LABEL_18;
  }

  v9 = v8;
  selfCopy = self;
  v27 = v5;
  v28 = parametersCopy;
  v29 = 0;
  v10 = *v31;
  v11 = v6;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v31 != v10)
      {
        objc_enumerationMutation(contentOfCarPlayLogsDirectory);
      }

      v13 = *(*(&v30 + 1) + 8 * i);
      v14 = [@"/var/mobile/Library/Logs/com.apple.CarPlay" stringByAppendingPathComponent:v13];
      buf[0] = 0;
      v15 = +[NSFileManager defaultManager];
      v16 = [v15 fileExistsAtPath:v14 isDirectory:buf];

      if (v16 && buf[0] == 1)
      {
        v17 = +[NSFileManager defaultManager];
        v18 = [v17 attributesOfItemAtPath:v14 error:0];

        v19 = [v18 objectForKeyedSubscript:NSFileCreationDate];
        if ([v19 compare:v11] == 1)
        {
          v20 = v19;
          v21 = v11;
          v11 = v20;

          v22 = v13;
          v29 = v22;
        }
      }
    }

    v9 = [contentOfCarPlayLogsDirectory countByEnumeratingWithState:&v30 objects:v36 count:16];
  }

  while (v9);
  v6 = v11;

  v23 = v29;
  if (v29)
  {
    contentOfCarPlayLogsDirectory = [(CarPlayDiagnosticsExtension *)selfCopy carPlayAttachmentsForFolder:v29];
    v5 = v27;
    [v27 addObjectsFromArray:contentOfCarPlayLogsDirectory];
    parametersCopy = v28;
LABEL_18:

    goto LABEL_20;
  }

  v5 = v27;
  parametersCopy = v28;
LABEL_20:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v35 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "diagnostic extension: attachmentsForParameters returning %@", buf, 0xCu);
  }

  v24 = [v5 copy];

  return v24;
}

@end