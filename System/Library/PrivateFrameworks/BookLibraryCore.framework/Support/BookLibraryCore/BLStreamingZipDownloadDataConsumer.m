@interface BLStreamingZipDownloadDataConsumer
- (BLStreamingZipDownloadDataConsumer)initWithPath:(id)a3 options:(id)a4;
- (BOOL)consumeData:(id)a3 error:(id *)a4;
- (BOOL)finish:(id *)a3;
- (id)_stringWithFileSystemRepresentation:(const char *)a3;
- (id)_stringWithFileSystemRepresentation:(const char *)a3 length:(unint64_t)a4;
- (unint64_t)_diskUsageForPath:(id)a3;
- (unint64_t)diskUsage;
- (void)extractionCompleteAtArchivePath:(id)a3;
- (void)reset;
- (void)suspend;
- (void)truncate;
@end

@implementation BLStreamingZipDownloadDataConsumer

- (BLStreamingZipDownloadDataConsumer)initWithPath:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = BLStreamingZipDownloadDataConsumer;
  v8 = [(BLStreamingZipDownloadDataConsumer *)&v27 init];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 mutableCopy];
    [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:SZExtractorOptionsDenyInvalidSymlinks];
    v11 = [[SZExtractor alloc] initWithPath:v6 options:v10];
    v12 = *(&v9->super._overrideProgress + 1);
    *(&v9->super._overrideProgress + 1) = v11;

    if (*(&v9->super._overrideProgress + 1))
    {
      v13 = dispatch_semaphore_create(0);
      v14 = *(&v9->super._overrideProgress + 1);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100069218;
      v23[3] = &unk_10011D280;
      v15 = v9;
      v24 = v15;
      v16 = v6;
      v25 = v16;
      v26 = v13;
      v17 = v13;
      [v14 prepareForExtraction:v23];
      dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
      [*(&v9->super._overrideProgress + 1) setExtractorDelegate:v15];
      v18 = [v7 copy];
      v19 = *(&v15->_hasConsumedData + 1);
      *(&v15->_hasConsumedData + 1) = v18;

      v20 = [v16 copy];
      v21 = *(&v15->_options + 1);
      *(&v15->_options + 1) = v20;

      v9 = v17;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)consumeData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000694C8;
  v22 = sub_1000694D8;
  v23 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = *(&self->super._overrideProgress + 1);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000694E0;
  v14[3] = &unk_10011D2A8;
  v16 = &v18;
  v17 = &v24;
  v9 = v7;
  v15 = v9;
  [v8 supplyBytes:v6 withCompletionBlock:v14];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v25;
  if (BYTE1(self->_extractor))
  {
    v11 = 1;
  }

  else
  {
    v11 = *(v25 + 24);
  }

  BYTE1(self->_extractor) = v11 & 1;
  v12 = *(v10 + 24);
  if (a4 && (v10[3] & 1) == 0)
  {
    *a4 = v19[5];
    v12 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12 & 1;
}

- (unint64_t)diskUsage
{
  result = [(BLStreamingZipDownloadDataConsumer *)self resumptionOffset];
  if (result)
  {
    v4 = *(&self->_options + 1);

    return [(BLStreamingZipDownloadDataConsumer *)self _diskUsageForPath:v4];
  }

  return result;
}

- (BOOL)finish:(id *)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000694C8;
  v18 = sub_1000694D8;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = *(&self->super._overrideProgress + 1);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100069738;
  v10[3] = &unk_10011D2D0;
  v12 = &v14;
  v13 = &v20;
  v7 = v5;
  v11 = v7;
  [v6 finishStreamWithCompletionBlock:v10];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(v21 + 24);
  if (a3 && (v21[3] & 1) == 0)
  {
    *a3 = v15[5];
    v8 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v8 & 1;
}

- (void)reset
{
  [(BLStreamingZipDownloadDataConsumer *)self suspend];
  v3 = [[SZExtractor alloc] initWithPath:*(&self->_options + 1) options:*(&self->_hasConsumedData + 1)];
  v4 = *(&self->super._overrideProgress + 1);
  *(&self->super._overrideProgress + 1) = v3;

  v5 = *(&self->super._overrideProgress + 1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000698C8;
  v6[3] = &unk_10011D2F8;
  v6[4] = self;
  [v5 prepareForExtraction:v6];
}

- (void)suspend
{
  v3 = dispatch_semaphore_create(0);
  v4 = *(&self->super._overrideProgress + 1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100069A84;
  v6[3] = &unk_10011D2F8;
  v7 = v3;
  v5 = v3;
  [v4 suspendStreamWithCompletionBlock:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)truncate
{
  [(BLStreamingZipDownloadDataConsumer *)self suspend];
  v3 = objc_alloc_init(NSFileManager);
  [v3 removeItemAtPath:*(&self->_options + 1) error:0];
  v4 = [[SZExtractor alloc] initWithPath:*(&self->_options + 1) options:*(&self->_hasConsumedData + 1)];
  v5 = *(&self->super._overrideProgress + 1);
  *(&self->super._overrideProgress + 1) = v4;

  v6 = *(&self->super._overrideProgress + 1);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100069B70;
  v7[3] = &unk_10011D2F8;
  v7[4] = self;
  [v6 prepareForExtraction:v7];
}

- (void)extractionCompleteAtArchivePath:(id)a3
{
  v3 = a3;
  v4 = BLServiceDownloadStreamingZipLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[Download-StreamingZip]: extraction finished and file is at path: %{public}@", &v5, 0xCu);
  }
}

- (unint64_t)_diskUsageForPath:(id)a3
{
  v3 = a3;
  v4 = [NSMutableSet setWithCapacity:0];
  v5 = [NSMutableArray arrayWithCapacity:1];
  v55 = 0;
  v57 = 0;
  v54 = 0xA200000900000005;
  v56 = 0x500000002;
  v6 = malloc_type_malloc(0x8000uLL, 0x40EDFB7CuLL);
  v47 = v3;
  if (v3)
  {
    [v5 addObject:v3];
  }

  else
  {
    v7 = BLServiceDownloadStreamingZipLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[Download-StreamingZip]: Can't calculate usage if no path given", buf, 2u);
    }
  }

  if ([v5 count])
  {
    v53 = 0;
    v52 = v4;
    v50 = v5;
    v48 = v6;
    while (1)
    {
      v8 = [v5 objectAtIndex:0];
      [v5 removeObjectAtIndex:0];
      v9 = open([v8 fileSystemRepresentation], 1048832);
      if (v9 < 0)
      {
        v40 = BLServiceDownloadStreamingZipLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v41 = __error();
          v42 = strerror(*v41);
          *buf = 138543618;
          v59 = v8;
          v60 = 2082;
          v61 = v42;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[Download-StreamingZip]: Failed to open directory %{public}@: %{public}s", buf, 0x16u);
        }
      }

      else
      {
        v49 = v9;
        v10 = 0;
LABEL_10:
        v6 = v48;
        while (1)
        {
          v11 = getattrlistbulk(v49, &v54, v48, 0x8000uLL, 0);
          if (v11 == -1)
          {
            break;
          }

          v12 = v11;
          if (!v11)
          {
            goto LABEL_62;
          }

          if (v11 >= 1)
          {
            while (1)
            {
              v14 = *v6;
              v13 = v6[1];
              v15 = v6[4];
              if ((v13 & 0x20000000) != 0)
              {
                if (v6[6])
                {
                  v24 = BLServiceDownloadStreamingZipLog();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    v25 = __error();
                    v26 = strerror(*v25);
                    *buf = 136446722;
                    v59 = v26;
                    v60 = 2048;
                    v61 = v10;
                    v62 = 2114;
                    v63 = v8;
                    v27 = v24;
                    v28 = "[Download-StreamingZip]: Got error %{public}s while processing entry %llu in %{public}@";
                    v29 = 32;
                    goto LABEL_52;
                  }

LABEL_53:

                  goto LABEL_54;
                }

                v16 = v6 + 7;
                if ((v13 & 1) == 0)
                {
LABEL_16:
                  v17 = 0;
                  v18 = 0xFFFFFFFFLL;
                  if ((v13 & 8) != 0)
                  {
                    goto LABEL_17;
                  }

                  goto LABEL_26;
                }
              }

              else
              {
                v16 = v6 + 6;
                if ((v13 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              v30 = v16[1];
              v17 = v16 + *v16;
              v16 += 2;
              v18 = (v30 - 1);
              if ((v13 & 8) != 0)
              {
LABEL_17:
                v19 = *v16++;
                v20 = v19 == 2;
                if ((v13 & 0x2000000) != 0)
                {
                  goto LABEL_18;
                }

                goto LABEL_27;
              }

LABEL_26:
              v20 = 0;
              if ((v13 & 0x2000000) != 0)
              {
LABEL_18:
                v22 = *v16;
                v16 += 2;
                v21 = v22;
                if (v20)
                {
                  goto LABEL_28;
                }

                goto LABEL_19;
              }

LABEL_27:
              v21 = 0;
              if (v20)
              {
LABEL_28:
                if ((v6[3] & 2) != 0 && !*v16)
                {
                  v24 = BLServiceDownloadStreamingZipLog();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543618;
                    v59 = v8;
                    v60 = 2082;
                    v61 = v17;
                    v27 = v24;
                    v28 = "[Download-StreamingZip]: Skipping empty directory at %{public}@/%{public}s";
LABEL_51:
                    v29 = 22;
LABEL_52:
                    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, v28, buf, v29);
                  }

                  goto LABEL_53;
                }

                if (!v17)
                {
                  v24 = BLServiceDownloadStreamingZipLog();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    *buf = 134218242;
                    v59 = v10;
                    v60 = 2114;
                    v61 = v8;
                    v27 = v24;
                    v28 = "[Download-StreamingZip]: Failed to get name for directory item %llu in %{public}@; not counting its children";
                    goto LABEL_51;
                  }

                  goto LABEL_53;
                }

                v31 = objc_autoreleasePoolPush();
                v32 = [(BLStreamingZipDownloadDataConsumer *)self _stringWithFileSystemRepresentation:v17 length:v18];
                v33 = [v8 stringByAppendingPathComponent:v32];

                if (v33)
                {
                  [v50 addObject:v33];
                }

                else
                {
                  v37 = BLServiceDownloadStreamingZipLog();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136446466;
                    v59 = v17;
                    v60 = 2114;
                    v61 = v8;
                    v38 = v37;
                    v39 = "[Download-StreamingZip]: Failed to create path to child directory by appending %{public}s to %{public}@";
LABEL_46:
                    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, v39, buf, 0x16u);
                  }

LABEL_47:
                }

                goto LABEL_48;
              }

LABEL_19:
              if (v15)
              {
                v34 = *v16++;
                v23 = v34 == 1;
              }

              else
              {
                v23 = 0;
              }

              v35 = v8;
              if ((v15 & 4) != 0)
              {
                v36 = *v16;
                if (!v23)
                {
LABEL_36:
                  v31 = objc_autoreleasePoolPush();
                  v33 = [NSNumber numberWithUnsignedLongLong:v21];
                  if ([v52 containsObject:v33])
                  {
                    v37 = BLServiceDownloadStreamingZipLog();
                    v8 = v35;
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138543618;
                      v59 = v35;
                      v60 = 2082;
                      v61 = v17;
                      v38 = v37;
                      v39 = "[Download-StreamingZip]: Skipping hardlinked file at %{public}@/%{public}s";
                      goto LABEL_46;
                    }

                    goto LABEL_47;
                  }

                  v53 += v36;
                  [v52 addObject:v33];
                  v8 = v35;
LABEL_48:

                  objc_autoreleasePoolPop(v31);
                  goto LABEL_54;
                }
              }

              else
              {
                v36 = 0;
                if (!v23)
                {
                  goto LABEL_36;
                }
              }

              v53 += v36;
              v8 = v35;
LABEL_54:
              v6 = (v6 + v14);
              ++v10;
              if (!--v12)
              {
                goto LABEL_10;
              }
            }
          }
        }

        v43 = BLServiceDownloadStreamingZipLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = __error();
          v45 = strerror(*v44);
          *buf = 134218498;
          v59 = v10;
          v60 = 2114;
          v61 = v8;
          v62 = 2082;
          v63 = v45;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "[Download-StreamingZip]: getattrlistbulk on entry %llu in %{public}@ returned error %{public}s", buf, 0x20u);
        }

LABEL_62:
        close(v49);
        v4 = v52;
        v5 = v50;
      }

      if (![v5 count])
      {
        goto LABEL_66;
      }
    }
  }

  v53 = 0;
LABEL_66:
  free(v6);

  return v53;
}

- (id)_stringWithFileSystemRepresentation:(const char *)a3
{
  v5 = strlen(a3);

  return [(BLStreamingZipDownloadDataConsumer *)self _stringWithFileSystemRepresentation:a3 length:v5];
}

- (id)_stringWithFileSystemRepresentation:(const char *)a3 length:(unint64_t)a4
{
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 stringWithFileSystemRepresentation:a3 length:a4];

  return v7;
}

@end