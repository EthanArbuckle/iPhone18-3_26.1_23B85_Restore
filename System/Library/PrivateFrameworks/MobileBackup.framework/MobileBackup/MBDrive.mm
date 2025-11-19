@interface MBDrive
+ (BOOL)singleFromMultiErrorWithReturnValue:(BOOL)a3 results:(id)a4 error:(id *)a5;
- (BOOL)downloadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)moveItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)removeItemAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)uploadData:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)uploadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)uploadPropertyList:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)usageOfDirectoryAtPath:(id)a3 count:(unint64_t *)a4 size:(unint64_t *)a5 options:(id)a6 error:(id *)a7;
- (id)_usageOfDirectoryAtPath:(id)a3 count:(unint64_t *)a4 size:(unint64_t *)a5 options:(id)a6;
- (id)dataAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (id)enumerateContentsOfDirectoryAtPath:(id)a3 options:(id)a4 recurse:(BOOL)a5 foundItem:(id)a6;
- (id)propertyListAtPath:(id)a3 options:(id)a4 error:(id *)a5;
- (void)finishBatchUploadsWithOptions:(id)a3 completion:(id)a4;
- (void)uploadBatch:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation MBDrive

+ (BOOL)singleFromMultiErrorWithReturnValue:(BOOL)a3 results:(id)a4 error:(id *)a5
{
  v9 = a4;
  if (a5 && !a3 && [MBError isError:*a5 withCode:2])
  {
    if ([v9 count] != 1)
    {
      v12 = +[NSAssertionHandler currentHandler];
      [v12 handleFailureInMethod:a2 object:a1 file:@"MBDrive.m" lineNumber:45 description:@"Unexpected result count"];
    }

    v10 = [v9 allValues];
    *a5 = [v10 lastObject];
  }

  return a3;
}

- (id)enumerateContentsOfDirectoryAtPath:(id)a3 options:(id)a4 recurse:(BOOL)a5 foundItem:(id)a6
{
  v33 = a5;
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v38 = 0;
  v28 = self;
  v30 = v10;
  v31 = v9;
  v13 = [(MBDrive *)self contentsOfDirectoryAtPath:v9 options:v10 error:&v38];
  v14 = v38;
  if (v13)
  {
    v27 = v12;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [v13 allKeys];
    v15 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v32 = *v35;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v35 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = [v13 objectForKeyedSubscript:v18];
          if ((v11[2](v11, v18, v20) & 1) == 0)
          {
            v25 = [MBError errorWithCode:1 format:@"Enumeration canceled"];

LABEL_18:
            v14 = v25;

            objc_autoreleasePoolPop(v19);
            goto LABEL_19;
          }

          v21 = [v20 fileType];
          v22 = [v21 isEqualToString:NSFileTypeDirectory];

          if (v22)
          {
            v23 = !v33;
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            v24 = [v31 stringByAppendingPathComponent:v18];
            v25 = [(MBDrive *)v28 enumerateContentsOfDirectoryAtPath:v24 options:v30 recurse:0 foundItem:v11];

            if (v25)
            {
              goto LABEL_18;
            }

            v14 = 0;
          }

          objc_autoreleasePoolPop(v19);
        }

        v16 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    v12 = v27;
  }

  objc_autoreleasePoolPop(v12);

  return v14;
}

- (BOOL)usageOfDirectoryAtPath:(id)a3 count:(unint64_t *)a4 size:(unint64_t *)a5 options:(id)a6 error:(id *)a7
{
  v8 = [(MBDrive *)self _usageOfDirectoryAtPath:a3 count:a4 size:a5 options:a6];
  if (a7 && v8)
  {
    v8 = v8;
    *a7 = v8;
  }

  v9 = v8 == 0;

  return v9;
}

- (id)_usageOfDirectoryAtPath:(id)a3 count:(unint64_t *)a4 size:(unint64_t *)a5 options:(id)a6
{
  v8 = a3;
  v36 = 0;
  v27 = self;
  v28 = a6;
  v29 = v8;
  v9 = [(MBDrive *)self contentsOfDirectoryAtPath:v8 options:v28 error:&v36];
  v10 = v36;
  v11 = v10;
  if (v9)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = v9;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          v19 = [v12 objectForKeyedSubscript:v17];
          v20 = [v19 fileType];
          if ([v20 isEqualToString:NSFileTypeDirectory])
          {
            v21 = [v29 stringByAppendingPathComponent:v17];
            v22 = [(MBDrive *)v27 _usageOfDirectoryAtPath:v21 count:a4 size:a5 options:v28];
            v23 = v11;
            v11 = v22;

            if (v11)
            {
              v11 = v11;

              objc_autoreleasePoolPop(v18);
              v24 = v11;
              goto LABEL_17;
            }
          }

          else if ([v20 isEqualToString:NSFileTypeRegular])
          {
            ++*a4;
            *a5 += [v19 fileSize];
          }

          objc_autoreleasePoolPop(v18);
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v24 = 0;
LABEL_17:
    v9 = v26;
  }

  else
  {
    v11 = v10;
    v24 = v11;
  }

  return v24;
}

- (BOOL)uploadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v18 = a3;
  v19 = a4;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v17 = 0;
  v14 = [(MBDrive *)self uploadFilesAtPaths:v13 options:v10 results:&v17 error:a6];

  v15 = v17;
  LOBYTE(a6) = [MBDrive singleFromMultiErrorWithReturnValue:v14 results:v15 error:a6];

  return a6;
}

- (void)uploadBatch:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  memset(v17, 0, sizeof(v17));
  v11 = [v8 paths];
  v15 = 0;
  v16 = 0;
  v12 = [(MBDrive *)self uploadFilesAtPaths:v11 options:v9 results:&v16 error:&v15];
  v13 = v16;
  v14 = v15;

  if ((v12 & 1) == 0 && !v14)
  {
    __assert_rtn("[MBDrive uploadBatch:options:completion:]", "MBDrive.m", 152, "result || error");
  }

  v10[2](v10, v17, v13, v14);
}

- (void)finishBatchUploadsWithOptions:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

- (BOOL)downloadFileAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v18 = a3;
  v19 = a4;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v17 = 0;
  v14 = [(MBDrive *)self downloadFilesAtPaths:v13 options:v10 results:&v17 error:a6];

  v15 = v17;
  LOBYTE(a6) = [MBDrive singleFromMultiErrorWithReturnValue:v14 results:v15 error:a6];

  return a6;
}

- (BOOL)uploadData:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26 = 0;
  v13 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:@"/private/var" identifiedBy:@"drive-upload-data" error:&v26];
  v14 = v26;
  if (!v13)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed creating temporary directory to upload data: %@", buf, 0xCu);
      _MBLog();
    }

    if (a6)
    {
      v20 = v14;
      v21 = v14;
LABEL_21:
      LOBYTE(self) = 0;
      *a6 = v21;
      goto LABEL_23;
    }

LABEL_22:
    LOBYTE(self) = 0;
    goto LABEL_23;
  }

  v15 = [v13 makeTemporaryFilePath];
  v25 = v14;
  v16 = [v10 writeToFile:v15 options:1 error:&v25];
  v17 = v25;

  v14 = v17;
  if (v16)
  {
    LOBYTE(self) = [(MBDrive *)self uploadFileAtPath:v15 toPath:v11 options:v12 error:a6];
    v18 = 0;
    goto LABEL_18;
  }

  self = [v17 domain];
  if (-[MBDrive isEqualToString:](self, "isEqualToString:", NSCocoaErrorDomain) && [v17 code] == 640)
  {

    goto LABEL_13;
  }

  v22 = [v17 domain];
  if (([v22 isEqualToString:NSPOSIXErrorDomain] & 1) == 0)
  {

    goto LABEL_16;
  }

  v23 = [v17 code] == 28;

  if (!v23)
  {
LABEL_16:
    v18 = 1;
    goto LABEL_18;
  }

LABEL_13:
  if (a6)
  {
    [MBError errorWithCode:106 format:@"No space writing data to temporary file"];
    v18 = 0;
    *a6 = LOBYTE(self) = 0;
  }

  else
  {
    v18 = 0;
    LOBYTE(self) = 0;
  }

LABEL_18:

  [v13 dispose];
  if (v18)
  {
    if (a6)
    {
      v21 = [MBError errorWithCode:102 format:@"Error writing data to temporary file"];
      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_23:

  return self & 1;
}

- (id)dataAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v28 = 0;
  v10 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:@"/private/var" identifiedBy:@"drive-download-data" error:&v28];
  v11 = v28;
  if (v10)
  {
    v12 = [v10 makeTemporaryFilePath];
    if (![(MBDrive *)self downloadFileAtPath:v8 toPath:v12 options:v9 error:a5])
    {
      v24 = 0;
LABEL_22:

      [v10 dispose];
      goto LABEL_23;
    }

    v13 = +[NSFileManager defaultManager];
    v14 = [v13 attributesOfItemAtPath:v12 error:0];

    v15 = [v9 objectForKeyedSubscript:@"MemoryMapped"];
    v16 = [v15 BOOLValue];

    if (v16)
    {
      v17 = MBGetDefaultLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = 8;
        goto LABEL_21;
      }

      v17 = v17;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v14 objectForKeyedSubscript:NSFileSize];
        v19 = [v18 unsignedIntegerValue];
        *buf = 138412546;
        v30 = v12;
        v31 = 2048;
        v32 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Opening file mapped at '%@' (%{bytes}lu)", buf, 0x16u);
      }

      v20 = [v14 objectForKeyedSubscript:NSFileSize];
      [v20 unsignedIntegerValue];
      _MBLog();
      v21 = 8;
    }

    else
    {
      v17 = MBGetDefaultLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = 0;
        goto LABEL_21;
      }

      v17 = v17;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v25 = [v14 objectForKeyedSubscript:NSFileSize];
        v26 = [v25 unsignedIntegerValue];
        *buf = 138412546;
        v30 = v12;
        v31 = 2048;
        v32 = v26;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Opening file unmapped at '%@' (%{bytes}lu)", buf, 0x16u);
      }

      v20 = [v14 objectForKeyedSubscript:NSFileSize];
      [v20 unsignedIntegerValue];
      _MBLog();
      v21 = 0;
    }

LABEL_21:
    v24 = [NSData dataWithContentsOfFile:v12 options:v21 error:a5];

    goto LABEL_22;
  }

  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed creating temporary directory to download file: %@", buf, 0xCu);
    _MBLog();
  }

  if (a5)
  {
    v23 = v11;
    v24 = 0;
    *a5 = v11;
  }

  else
  {
    v24 = 0;
  }

LABEL_23:

  return v24;
}

- (BOOL)uploadPropertyList:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v15 = 0;
  v12 = [NSPropertyListSerialization dataFromPropertyList:a3 format:200 errorDescription:&v15];
  if (v12)
  {
    v13 = [(MBDrive *)self uploadData:v12 toPath:v10 options:v11 error:a6];
  }

  else if (a6)
  {
    [MBError errorWithCode:10 format:@"Error serializing property list: %@", v15];
    *a6 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)propertyListAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v14 = 0;
  v9 = [(MBDrive *)self dataAtPath:v8 options:a4 error:a5];
  if (v9)
  {
    v10 = [NSPropertyListSerialization propertyListFromData:v9 mutabilityOption:0 format:0 errorDescription:&v14];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else if (a5)
    {
      *a5 = [MBError errorWithCode:11 path:v8 format:@"Error deserializing property list: %@", v14];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)moveItemAtPath:(id)a3 toPath:(id)a4 options:(id)a5 error:(id *)a6
{
  v18 = a3;
  v19 = a4;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v17 = 0;
  v14 = [(MBDrive *)self moveItemsAtPaths:v13 options:v10 results:&v17 error:a6];

  v15 = v17;
  LOBYTE(a6) = [MBDrive singleFromMultiErrorWithReturnValue:v14 results:v15 error:a6];

  return a6;
}

- (BOOL)removeItemAtPath:(id)a3 options:(id)a4 error:(id *)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a3;
  v10 = [NSArray arrayWithObjects:&v15 count:1];
  v14 = 0;
  v11 = [(MBDrive *)self removeItemsAtPaths:v10 options:v8 results:&v14 error:a5];

  v12 = v14;
  LOBYTE(a5) = [MBDrive singleFromMultiErrorWithReturnValue:v11 results:v12 error:a5];

  return a5;
}

@end