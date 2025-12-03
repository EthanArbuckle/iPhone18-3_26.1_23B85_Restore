@interface PedestrianFenceDiagnosticExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation PedestrianFenceDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  v3 = os_log_create("com.apple.locationd", "DiagnosticExtension");
  v4 = [NSURL URLWithString:@"/var/mobile/Library/Logs/locationd/MslLogger/"];
  v5 = +[NSFileManager defaultManager];
  v43 = NSURLContentModificationDateKey;
  v6 = [NSArray arrayWithObjects:&v43 count:1];
  v39 = 0;
  v7 = [v5 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v6 options:0 error:&v39];
  v8 = v39;

  if (v8)
  {
    v9 = v3;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100000EFC(v8, v9);
    }

    v31 = &__NSArray0__struct;
  }

  else
  {
    v28 = v7;
    v29 = v5;
    v30 = v4;
    v10 = [v7 sortedArrayUsingComparator:&stru_100004110];
    v31 = +[NSMutableArray array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = v10;
    v11 = [v9 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v36;
      v15 = NSURLFileSizeKey;
LABEL_7:
      v16 = 0;
      while (1)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v9);
        }

        if (v13 > 0xC800000)
        {
          break;
        }

        v17 = *(*(&v35 + 1) + 8 * v16);
        v33 = 0;
        v34 = 0;
        [v17 getResourceValue:&v34 forKey:v15 error:&v33];
        v18 = v34;
        v19 = v33;
        if (v19 || !v18)
        {
          path = v3;
          if (os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
          {
            sub_100000F94(v40, v19, &v41, path);
          }
        }

        else
        {
          v32 = [v18 unsignedLongLongValue] + v13;
          v20 = v12;
          v21 = v14;
          v22 = v15;
          v23 = v9;
          v24 = v3;
          path = [v17 path];
          v26 = [DEAttachmentItem attachmentWithPath:path];
          [v31 addObject:v26];

          v3 = v24;
          v9 = v23;
          v15 = v22;
          v14 = v21;
          v12 = v20;
          v13 = v32;
        }

        if (v12 == ++v16)
        {
          v12 = [v9 countByEnumeratingWithState:&v35 objects:v42 count:16];
          if (v12)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    v5 = v29;
    v4 = v30;
    v8 = 0;
    v7 = v28;
  }

  return v31;
}

@end