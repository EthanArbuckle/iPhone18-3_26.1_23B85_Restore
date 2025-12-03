@interface DSFilesystemMetadataSnapshotService
+ (id)_validateOptions:(id)options error:(id *)error;
- (id)generateFilesystemMetadataSnapshotWithOptions:(id)options reply:(id)reply;
@end

@implementation DSFilesystemMetadataSnapshotService

+ (id)_validateOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v88 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Validating options: %{public}@", buf, 0xCu);
  }

  if (error)
  {
    *error = 0;
  }

  v7 = +[NSMutableDictionary dictionary];
  if (optionsCopy)
  {
    v8 = @"FilesystemMetadatSnapshotOptionShouldHashVolumeListings";
    if (![optionsCopy count])
    {
      goto LABEL_36;
    }

    errorCopy = error;
    v66 = v7;
    v86[0] = @"FilesystemMetadatSnapshotOptionMountPointsAllowListArray";
    v86[1] = @"FilesystemMetadatSnapshotOptionShouldHashVolumeListings";
    v9 = [NSArray arrayWithObjects:v86 count:2];
    allKeys = [optionsCopy allKeys];
    v11 = [NSSet setWithArray:allKeys];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v12 = v11;
    v13 = [(__CFString *)v12 countByEnumeratingWithState:&v72 objects:v85 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v73;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v73 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v72 + 1) + 8 * i);
          if (([v9 containsObject:v17]& 1) == 0)
          {
            v20 = [NSString stringWithFormat:@"Unsupported snapshot option key '%@'", v17];
            v37 = [NSError alloc];
            v83 = NSLocalizedDescriptionKey;
            v84 = v20;
            v38 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
            v39 = [v37 initWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65541 userInfo:v38];

            v40 = shared_filesystem_metadata_snapshot_service_log_handle();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              sub_1000300FC();
            }

            if (errorCopy)
            {
              v41 = v39;
              *errorCopy = v39;
            }

            v18 = v12;
            goto LABEL_66;
          }
        }

        v14 = [(__CFString *)v12 countByEnumeratingWithState:&v72 objects:v85 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v18 = @"FilesystemMetadatSnapshotOptionMountPointsAllowListArray";
    v19 = objc_opt_class();
    v20 = [optionsCopy objectForKeyedSubscript:v18];
    if (v20)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v42 = [NSString stringWithFormat:@"Unexpected type for snapshot option key %@ unexpected type %@, expected %@", v18, objc_opt_class(), v19];;
        v43 = [NSError alloc];
        v78 = NSLocalizedDescriptionKey;
        v79 = v42;
        v44 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        v45 = [v43 initWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65541 userInfo:v44];

        v46 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          sub_1000300FC();
        }

        if (errorCopy)
        {
          v47 = v45;
          *errorCopy = v45;
          v39 = v42;
        }

        else
        {
          v39 = v42;
          v47 = v45;
        }

LABEL_65:

LABEL_66:
        goto LABEL_67;
      }

      v61 = v18;
      v21 = +[NSMutableArray array];
      v67 = objc_opt_class();
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v62 = v20;
      v22 = v20;
      v23 = [v22 countByEnumeratingWithState:&v68 objects:v82 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v69;
        v64 = v22;
        while (2)
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v69 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v68 + 1) + 8 * j);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v63 = v21;
              v18 = v61;
              v48 = [NSString stringWithFormat:@"Unexpected type for array element for snapshot option key %@ unexpected type %@, expected %@", v61, objc_opt_class(), v67];;
              v49 = [NSError alloc];
              v80 = NSLocalizedDescriptionKey;
              v81 = v48;
              v50 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
              v51 = [v49 initWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65541 userInfo:v50];

              v52 = shared_filesystem_metadata_snapshot_service_log_handle();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                sub_1000300FC();
              }

              v20 = v62;
              v39 = v63;
              if (errorCopy)
              {
                v53 = v51;
                *errorCopy = v51;
              }

              v47 = v64;
              goto LABEL_65;
            }

            v28 = v27;
            if ([v28 length] >= 2 && objc_msgSend(v28, "hasSuffix:", @"/"))
            {
              [v28 substringToIndex:{objc_msgSend(v28, "length") - 1}];
              v29 = v8;
              v30 = optionsCopy;
              v32 = v31 = v21;

              v28 = v32;
              v21 = v31;
              optionsCopy = v30;
              v8 = v29;
              v22 = v64;
            }

            [v21 addObject:v28];
          }

          v24 = [v22 countByEnumeratingWithState:&v68 objects:v82 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      v18 = v61;
      if ([v21 count])
      {
        [v66 setObject:v21 forKeyedSubscript:v61];
      }

      v20 = v62;
    }

    v8 = v8;
    v33 = objc_opt_class();
    v34 = [optionsCopy objectForKeyedSubscript:v8];
    if (!v34)
    {
LABEL_34:

      v7 = v66;
      goto LABEL_36;
    }

    if (objc_opt_isKindOfClass())
    {
      [v66 setObject:v34 forKeyedSubscript:v8];
      goto LABEL_34;
    }

    v54 = [NSString stringWithFormat:@"Unexpected type for snapshot option key %@ unexpected type %@, expected %@", v8, objc_opt_class(), v33];;
    v55 = [NSError alloc];
    v76 = NSLocalizedDescriptionKey;
    v77 = v54;
    v56 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v57 = [v55 initWithDomain:@"com.apple.FilesystemMetadataSnapshot" code:65541 userInfo:v56];

    v58 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      sub_1000300FC();
    }

    if (errorCopy)
    {
      v59 = v57;
      *errorCopy = v57;
    }

LABEL_67:
    v36 = 0;
    v7 = v66;
    goto LABEL_68;
  }

  v8 = @"FilesystemMetadatSnapshotOptionShouldHashVolumeListings";
LABEL_36:
  v35 = [v7 objectForKeyedSubscript:v8];

  if (v35)
  {
    if (!v7)
    {
      goto LABEL_42;
    }
  }

  else
  {
    [v7 setObject:&__kCFBooleanFalse forKeyedSubscript:v8];
    if (!v7)
    {
      goto LABEL_42;
    }
  }

  if ([v7 count])
  {
    v36 = [v7 copy];
    goto LABEL_43;
  }

LABEL_42:
  v36 = 0;
LABEL_43:
  v9 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v88 = v36;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Validated options: %{public}@", buf, 0xCu);
  }

LABEL_68:

  return v36;
}

- (id)generateFilesystemMetadataSnapshotWithOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  v7 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Validating options", buf, 2u);
  }

  v21 = 0;
  v8 = [objc_opt_class() _validateOptions:optionsCopy error:&v21];

  v9 = v21;
  if (v9)
  {
    v10 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10003016C();
    }

    replyCopy[2](replyCopy, 0, v9);
  }

  v11 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Creating snapshot request", buf, 2u);
  }

  v12 = [[DSSnapshotRequest alloc] initWithOptions:v8];
  v13 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1000301AC(v13);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000682C;
  block[3] = &unk_1000687B8;
  v19 = v12;
  v20 = replyCopy;
  v14 = replyCopy;
  v15 = v12;
  dispatch_async(&_dispatch_main_q, block);
  progress = [(DSSnapshotRequest *)v15 progress];

  return progress;
}

@end