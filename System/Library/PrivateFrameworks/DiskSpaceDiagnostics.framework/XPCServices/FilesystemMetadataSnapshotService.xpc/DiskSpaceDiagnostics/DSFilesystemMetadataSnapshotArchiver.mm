@interface DSFilesystemMetadataSnapshotArchiver
+ (BOOL)compressSnapshotWithName:(id)name atPath:(id)path withLogFile:(__sFILE *)file archiveName:(id *)archiveName;
@end

@implementation DSFilesystemMetadataSnapshotArchiver

+ (BOOL)compressSnapshotWithName:(id)name atPath:(id)path withLogFile:(__sFILE *)file archiveName:(id *)archiveName
{
  nameCopy = name;
  pathCopy = path;
  if (fprintf(file, "Compressing %s at %s\n", [nameCopy UTF8String], objc_msgSend(pathCopy, "UTF8String")) == -1)
  {
    v11 = __error();
    if ((byte_10006E538 & 1) == 0)
    {
      v12 = *v11;
      byte_10006E538 = 1;
      v13 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC44();
      }
    }
  }

  v14 = shared_filesystem_metadata_snapshot_service_log_handle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = nameCopy;
    uTF8String = [nameCopy UTF8String];
    v17 = pathCopy;
    *buf = 136315394;
    *&buf[4] = uTF8String;
    *&buf[12] = 2080;
    *&buf[14] = [pathCopy UTF8String];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Compressing %s at %s", buf, 0x16u);
  }

  v18 = pathCopy;
  chdir([pathCopy UTF8String]);
  fflush(file);
  *&v61 = 0;
  nameCopy = [NSString stringWithFormat:@"%@.tgz", nameCopy];
  v20 = nameCopy;
  if (archiveName)
  {
    v21 = nameCopy;
    *archiveName = v20;
  }

  v61 = 0u;
  v62 = 0u;
  memset(buf, 0, sizeof(buf));
  v22 = v20;
  *&buf[8] = [v20 UTF8String];
  v23 = nameCopy;
  uTF8String2 = [nameCopy UTF8String];
  fileCopy = __stderrp;
  if (file)
  {
    fileCopy = file;
  }

  *&buf[16] = uTF8String2;
  *&buf[24] = fileCopy;
  v26 = shared_filesystem_metadata_snapshot_service_log_handle();
  v27 = v61;
  *&v61 = v26;

  archive_snapshot_directory(buf);
  if (*buf)
  {
    if (fprintf(file, "Failed to compress %s\n", *&buf[16]) == -1)
    {
      v28 = __error();
      if ((byte_10006E539 & 1) == 0)
      {
        v29 = *v28;
        byte_10006E539 = 1;
        v30 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          sub_10002FC44();
        }
      }
    }

    v31 = shared_filesystem_metadata_snapshot_service_log_handle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_100030080(&buf[16], v31);
    }

    v32 = +[NSFileManager defaultManager];
    v33 = [NSString stringWithFormat:@"%@/%@", pathCopy, v20];
    if ([v32 fileExistsAtPath:v33])
    {
      if (fprintf(file, "Deleting failed compressed archive %s\n", *&buf[8]) == -1)
      {
        v34 = __error();
        if ((byte_10006E53A & 1) == 0)
        {
          v35 = *v34;
          byte_10006E53A = 1;
          v36 = shared_filesystem_metadata_snapshot_service_log_handle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
          {
            sub_10002FC44();
          }
        }
      }

      v37 = shared_filesystem_metadata_snapshot_service_log_handle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *v56 = 136315138;
        v57 = *&buf[8];
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Deleting failed compressed archive %s", v56, 0xCu);
      }

      v55 = 0;
      v38 = [v32 removeItemAtPath:v33 error:&v55];
      v39 = v55;
      v40 = v39;
      if ((v38 & 1) == 0)
      {
        v41 = *&buf[8];
        localizedDescription = [v39 localizedDescription];
        v43 = localizedDescription;
        v44 = fprintf(file, "Failed to delete compressed archive %s: %s\n", v41, [localizedDescription UTF8String]) == -1;

        if (v44)
        {
          v45 = __error();
          if ((byte_10006E53B & 1) == 0)
          {
            v46 = *v45;
            byte_10006E53B = 1;
            v47 = shared_filesystem_metadata_snapshot_service_log_handle();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
            {
              sub_10002FC44();
            }
          }
        }

        v48 = shared_filesystem_metadata_snapshot_service_log_handle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v51 = *&buf[8];
          localizedDescription2 = [v40 localizedDescription];
          v53 = localizedDescription2;
          uTF8String3 = [localizedDescription2 UTF8String];
          *v56 = 136315394;
          v57 = v51;
          v58 = 2080;
          v59 = uTF8String3;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to delete compressed archive %s: %s", v56, 0x16u);
        }
      }
    }

    v49 = *buf == 0;
  }

  else
  {
    v49 = 1;
  }

  return v49;
}

@end