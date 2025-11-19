uint64_t sub_1002201C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) prefixDirectories];
  v9 = [v8 containsObject:v5];

  if ((v9 & 1) == 0)
  {
    v10 = MBBackupMetadataFilenames();
    v11 = [v10 containsObject:v5];

    if ((v11 & 1) == 0)
    {
      v12 = [MBFileID fileIDWithString:v5];
      if (v12 && (*(*(a1 + 32) + 184) & 1) == 0)
      {
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v17 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Already uploaded to snapshot: %@", buf, 0xCu);
          _MBLog();
        }

        v14 = [*(*(a1 + 32) + 144) setFlags:200 mask:-17 forFileID:v12];
      }
    }
  }

  objc_autoreleasePoolPop(v7);

  return 1;
}

uint64_t sub_100220360(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) prefixDirectories];
  v9 = [v8 containsObject:v5];

  if ((v9 & 1) == 0)
  {
    v10 = MBBackupMetadataFilenames();
    v11 = [v10 containsObject:v5];

    if ((v11 & 1) == 0)
    {
      v12 = [MBFileID fileIDWithString:v5];
      if (v12)
      {
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v17 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Already uploaded to backup: %@", buf, 0xCu);
          _MBLog();
        }

        v14 = [*(*(a1 + 32) + 144) setFlags:72 mask:-17 forFileID:v12];
      }
    }
  }

  objc_autoreleasePoolPop(v7);

  return 1;
}

void sub_100220704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10022071C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if ([v5 isEqualToString:@"Manifest.db"])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v8 = [*(a1 + 32) prefixDirectories];
  v9 = [v8 containsObject:v5];

  if ((v9 & 1) == 0)
  {
    v10 = MBBackupMetadataFilenames();
    v11 = [v10 containsObject:v5];

    if ((v11 & 1) == 0)
    {
      v12 = [MBFileID fileIDWithString:v5];
      if (v12)
      {
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v17 = v5;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Not already moved from snapshot: %@", buf, 0xCu);
          _MBLog();
        }

        v14 = [MBBackupOperation backupOperationWithType:0 domain:0 fileID:v12 path:0 size:0];
        [*(*(a1 + 32) + 160) addOperation:v14];
      }
    }
  }

  objc_autoreleasePoolPop(v7);

  return 1;
}

void sub_100224060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100224078(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_100224090(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(*(a1 + 32) + 144);
  v6 = [v3 fileID];
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [v5 fetchFileWithID:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = 0;
    goto LABEL_13;
  }

  if (v8)
  {
    if (([v8 isRegularFile] & 1) != 0 || !objc_msgSend(v3, "isRegularFile"))
    {
LABEL_12:
      v9 = 1;
      goto LABEL_13;
    }

LABEL_9:
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v3 fileID];
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Removed from backup: %@", buf, 0xCu);

      v21 = [v3 fileID];
      _MBLog();
    }

    v17 = [v3 domain];
    v18 = [v3 fileID];
    v19 = [MBBackupOperation backupOperationWithType:4 domain:v17 fileID:v18 path:0 size:0];

    [*(*(a1 + 32) + 160) addOperation:v19];
    goto LABEL_12;
  }

  v10 = *(*(a1 + 32) + 144);
  v11 = [v3 fileID];
  v12 = *(*(a1 + 40) + 8);
  v22 = *(v12 + 40);
  v13 = [v10 containsPlaceholderForFileID:v11 error:&v22];
  objc_storeStrong((v12 + 40), v22);

  v14 = *(*(*(a1 + 40) + 8) + 40);
  v9 = v14 == 0;
  if (!v14 && (v13 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_13:

  objc_autoreleasePoolPop(v4);
  return v9;
}

void sub_100227590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Unwind_Resume(a1);
}

void sub_10022763C(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v39 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  dispatch_semaphore_signal(*(a1 + 32));
  v6 = *(a1 + 120);
  v38 = *(a1 + 112);
  if (![*(a1 + 40) index])
  {
    if ([*(*(a1 + 48) + 16) isFlagSet:@"SimulateErrorAfterUploadingFirstBatch"])
    {
      v7 = [MBError errorWithCode:1 format:@"Simulated error after uploading first batch"];

      v5 = v7;
    }

    else if ([*(*(a1 + 48) + 16) isFlagSet:@"SimulateCrashAfterUploadingFirstBatch"])
    {
      abort();
    }
  }

  if (v5)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 40) index];
      *buf = 67109378;
      v41 = v9;
      v42 = 2112;
      v43 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to upload batch i:%u: %@", buf, 0x12u);
      v35 = [*(a1 + 40) index];
      v36 = v5;
      _MBLog();
    }
  }

  v10 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v14 = *(a1 + 48);
  objc_sync_enter(v14);
  if (v5)
  {
    v15 = *(*(a1 + 72) + 8);
    v17 = *(v15 + 40);
    v16 = (v15 + 40);
    if (!v17)
    {
      objc_storeStrong(v16, v5);
    }
  }

  v18 = *(*(a1 + 48) + 176);
  v19 = [*(a1 + 56) allKeys];
  [v18 removeObjectsForKeys:v19];

  *(*(*(a1 + 80) + 8) + 24) += v10;
  v20 = *(*(*(a1 + 80) + 8) + 24);
  *(*(*(a1 + 88) + 8) + 24) += v11;
  v21 = *(*(a1 + 96) + 8);
  v22 = *(v21 + 24);
  if (v22 >= v13)
  {
    v22 = v13;
  }

  *(v21 + 24) = v22;
  v23 = *(*(a1 + 104) + 8);
  v24 = *(v23 + 24);
  if (v24 <= v12)
  {
    v24 = v12;
  }

  *(v23 + 24) = v24;
  objc_sync_exit(v14);

  v25 = (v39 - v6) / 1000000000.0;
  v26 = -1.0;
  if (v25 > 0.0)
  {
    v26 = v20 / v25 / 1000000.0;
  }

  add_explicit = atomic_fetch_add_explicit(dword_100421B00, 0xFFFFFFFF, memory_order_relaxed);
  v28 = MBGetDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [*(a1 + 40) index];
    v30 = [*(a1 + 40) paths];
    v31 = [v30 count];
    v32 = *(a1 + 80);
    *buf = 67110400;
    v33 = *(*(v32 + 8) + 24);
    v41 = v29;
    v42 = 2048;
    v43 = v31;
    v44 = 2048;
    v45 = (v39 - v38) / 1000000000.0;
    v46 = 2048;
    v47 = v26;
    v48 = 1024;
    v49 = add_explicit - 1;
    v50 = 2048;
    v51 = v33;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Finished batch i:%u, c:%lu, t:%.3f, r:%.3f, o:%u s:%llu", buf, 0x36u);

    [*(a1 + 40) index];
    v34 = [*(a1 + 40) paths];
    [v34 count];
    v37 = *(*(*(a1 + 80) + 8) + 24);
    _MBLog();
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_100227A2C(uint64_t a1, void *a2)
{
  if (a2)
  {
    __assert_rtn("[MBDriveBackupEngine _uploadInBatches]_block_invoke", "MBDriveBackupEngine.m", 1999, "finishError == nil");
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void sub_100227C20(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v38 = a3;
  v5 = a4;
  v35 = v5;
  context = objc_autoreleasePoolPush();
  if (v5 && ([MBError isError:v5 withCode:2]& 1) == 0)
  {
    v39 = [MBBackupHelper driveWriteError:v5 description:@"Error uploading files to snapshot"];
    (*(*(a1 + 48) + 16))(*(a1 + 48), a2, v39, v32);
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v38;
    v41 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v41)
    {
      v39 = 0;
      v40 = *v45;
      do
      {
        for (i = 0; i != v41; i = i + 1)
        {
          if (*v45 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v44 + 1) + 8 * i);
          v8 = objc_autoreleasePoolPush();
          v9 = [obj objectForKeyedSubscript:v7];
          v10 = [*(a1 + 32) objectForKeyedSubscript:v7];
          v11 = [v10 lastPathComponent];
          v12 = [MBFileID fileIDWithString:v11];

          if (!v12)
          {
            v30 = +[NSAssertionHandler currentHandler];
            [v30 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"MBDriveBackupEngine.m" lineNumber:2037 description:{@"Unable to extract file ID from path: %@", v10}];
          }

          v13 = *(a1 + 40);
          objc_sync_enter(v13);
          v14 = *(*(a1 + 40) + 176);
          v15 = v7;
          v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v7 fileSystemRepresentation]);
          v17 = [v14 objectForKeyedSubscript:v16];

          objc_sync_exit(v13);
          if (!v17)
          {
            v31 = +[NSAssertionHandler currentHandler];
            [v31 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"MBDriveBackupEngine.m" lineNumber:2043 description:{@"No operation found for path: %@", v7}];
          }

          if (v9)
          {
            if (([MBError isError:v9 withCode:202]& 1) == 0)
            {
              v18 = MBGetDefaultLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v19 = *(a1 + 64);
                *buf = 138413058;
                v49 = v7;
                v50 = 2112;
                v51 = v10;
                v52 = 1024;
                LODWORD(v53[0]) = v19;
                WORD2(v53[0]) = 2112;
                *(v53 + 6) = v9;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to upload %@ to %@ in batch %u: %@", buf, 0x26u);
                v34 = *(a1 + 64);
                _MBLog();
              }
            }

            v20 = *(a1 + 40);
            objc_sync_enter(v20);
            if ([MBError isError:v9 withCodes:4, 6, 7, 0])
            {
              v21 = MBGetDefaultLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = v21;
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = [v9 code];
                  *buf = 138412802;
                  v49 = v7;
                  v50 = 2048;
                  v51 = v23;
                  v52 = 2112;
                  v53[0] = v12;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "File removed before being uploaded: %@ (%ld, %@)", buf, 0x20u);
                }

                [v9 code];
                _MBLog();
              }

              [*(*(a1 + 40) + 16) setFlag:@"FileDeletedWhileScanning"];
              v24 = *(*(a1 + 40) + 168);
              v25 = [v17 domain];
              [v24 addObject:v25];

              v26 = [*(*(a1 + 40) + 144) setFlags:16 mask:-9 forFileID:v12];
            }

            else if (!+[MBError isError:withCodes:](MBError, "isError:withCodes:", v9, 9, 100, 0) || ([*(*(a1 + 40) + 144) flagsForFileID:v12 error:0] & 0x10) == 0)
            {
              v27 = [MBError isError:v9 withCode:105];
              if (!v39)
              {
                if (v27)
                {
                  v28 = @"No space left on host";
                }

                else
                {
                  v28 = @"Multiple errors uploading files";
                }

                if (v27)
                {
                  v29 = 105;
                }

                else
                {
                  v29 = 104;
                }

                v39 = [MBError errorWithCode:v29 format:v28];
              }
            }

            objc_sync_exit(v20);
          }

          objc_autoreleasePoolPop(v8);
        }

        v41 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v41);
    }

    else
    {
      v39 = 0;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), a2, v39, v33);
  }

  objc_autoreleasePoolPop(context);
}

uint64_t sub_10022A0E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) prefixDirectories];
  v9 = [v8 containsObject:v5];

  if ((v9 & 1) == 0)
  {
    v10 = MBBackupMetadataFilenames();
    v11 = [v10 containsObject:v5];

    if ((v11 & 1) == 0)
    {
      v12 = *(*(a1 + 32) + 136);
      v13 = [MBFileID fileIDWithString:v5];
      v14 = [v12 setFlags:32 forFileID:v13];
    }
  }

  objc_autoreleasePoolPop(v7);

  return 1;
}

void sub_10022BC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10022BCB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = MBBackupMetadataFilenames();
  v9 = [v8 containsObject:v5];

  if (v9 & 1) != 0 || ([*(a1 + 32) prefixDirectories], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", v5), v10, (v11))
  {
    v12 = 0;
LABEL_4:
    v13 = 1;
    goto LABEL_5;
  }

  v12 = [MBFileID fileIDWithString:v5];
  v15 = *(a1 + 40);
  v16 = *(*(a1 + 48) + 8);
  obj = *(v16 + 40);
  v17 = [v15 containsRegularFileForFileID:v12 error:&obj];
  objc_storeStrong((v16 + 40), obj);
  v18 = *(*(*(a1 + 48) + 8) + 40);
  v13 = v18 == 0;
  if (!v18 && (v17 & 1) == 0)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Removed from backup: %@", buf, 0xCu);
      v24 = v5;
      _MBLog();
    }

    if (v12)
    {
      v20 = 0;
    }

    else
    {
      v21 = [*(a1 + 32) settingsContext];
      v22 = [v21 driveBackupDir];
      v20 = [v22 stringByAppendingPathComponent:v5];
    }

    v23 = [MBBackupOperation backupOperationWithType:*(a1 + 56) domain:0 fileID:v12 path:v20 size:0, v24];
    [*(*(a1 + 32) + 160) addOperation:v23];

    goto LABEL_4;
  }

LABEL_5:

  objc_autoreleasePoolPop(v7);
  return v13;
}

id MBSnapshotDirectoryExists(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[NSFileManager defaultManager];
  v6 = [v4 stringByAppendingPathComponent:v3];

  v7 = [v5 fileExistsAtPath:v6];
  return v7;
}

id MBFileListDBPath(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_10022C41C(a1, a2, v5);
  v7 = [v5 stringByAppendingPathExtension:@"db"];

  v8 = [v6 stringByAppendingPathComponent:v7];

  return v8;
}

id sub_10022C41C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1 stringByAppendingPathComponent:a2];
  v7 = [v6 stringByAppendingPathComponent:v5];

  return v7;
}

id MBDeleteFileListDB(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = sub_10022C41C(a1, a2, a3);
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 removeItemAtPath:v5 error:a4];

  return v7;
}

uint64_t MBCloneFileListDB(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  if ([v10 isEqualToString:v11])
  {
    v13 = 1;
  }

  else
  {
    v14 = +[NSFileManager defaultManager];
    v15 = sub_10022C41C(v9, v10, v12);
    if ([v14 fileExistsAtPath:v15])
    {
      v16 = sub_10022C41C(v9, v11, v12);
      if ([v14 fileExistsAtPath:v16])
      {
        v17 = MBGetDefaultLog();
        v13 = 1;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v51 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Reusing file list dir %{public}@", buf, 0xCu);
          _MBLog();
        }
      }

      else
      {
        v18 = sub_10022CA04(v16, a5);
        if (v18)
        {
          v38 = a5;
          v41 = v11;
          v42 = v16;
          v17 = v18;
          v43 = v12;
          v44 = v9;
          v19 = [v12 stringByAppendingPathExtension:@"db"];
          [v19 stringByAppendingString:@"-wal"];
          v40 = v39 = v19;
          v57[0] = v19;
          v57[1] = v40;
          [NSArray arrayWithObjects:v57 count:2];
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          obj = v49 = 0u;
          v20 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v47;
            while (2)
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v47 != v22)
                {
                  objc_enumerationMutation(obj);
                }

                v24 = *(*(&v46 + 1) + 8 * i);
                v25 = [v15 stringByAppendingPathComponent:{v24, v36, v37}];
                if ([v14 fileExistsAtPath:v25])
                {
                  v26 = [v17 stringByAppendingPathComponent:v24];
                  if (clonefile([v25 fileSystemRepresentation], [v26 fileSystemRepresentation], 0))
                  {
                    if (v38)
                    {
                      *v38 = [MBError errorWithErrno:*__error() path:v25 format:@"Failed to clone file"];
                    }

                    v34 = obj;
                    v12 = v43;
                    v9 = v44;
                    v11 = v41;
                    v16 = v42;
                    v33 = v39;
                    goto LABEL_31;
                  }

                  v27 = MBGetDefaultLog();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543618;
                    v51 = v25;
                    v52 = 2114;
                    v53 = v26;
                    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Cloned file list db from %{public}@ -> %{public}@", buf, 0x16u);
                    v36 = v25;
                    v37 = v26;
                    _MBLog();
                  }
                }
              }

              v21 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

          v28 = [v17 fileSystemRepresentation];
          v16 = v42;
          v29 = [v42 fileSystemRepresentation];
          rename(v28, v29, v30);
          if (v31)
          {
            v32 = *__error();
            v33 = v39;
            if (v38)
            {
              *v38 = [MBError errorWithErrno:v32 format:@"rename failed"];
            }

            v34 = MBGetDefaultLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543874;
              v51 = v17;
              v52 = 2114;
              v53 = v42;
              v54 = 1024;
              v55 = v32;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "Failed to rename %{public}@ -> %{public}@: %{errno}d", buf, 0x1Cu);
              _MBLog();
            }

            v12 = v43;
            v9 = v44;
            v11 = v41;
LABEL_31:

            v13 = 0;
          }

          else
          {
            v13 = 1;
            v12 = v43;
            v9 = v44;
            v11 = v41;
            v33 = v39;
          }
        }

        else
        {
          v17 = 0;
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  return v13;
}

id sub_10022CA04(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = +[NSFileManager defaultManager];
  v5 = [v3 stringByAppendingString:@"-incomplete"];

  [v4 removeItemAtPath:v5 error:0];
  v12[0] = NSFileOwnerAccountName;
  v12[1] = NSFileGroupOwnerAccountName;
  v13[0] = @"mobile";
  v13[1] = @"mobile";
  v6 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  LOBYTE(a2) = [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:v6 error:a2];

  if (a2)
  {
    v7 = v5;
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Failed to create incomplete dir path at %{public}@", buf, 0xCu);
      _MBLog();
    }

    v7 = 0;
  }

  return v7;
}

uint64_t MBDeleteSnapshotDirectoriesNotBelongingToSnapshots(void *a1, void *a2)
{
  v3 = a1;
  v32 = a2;
  v4 = +[NSFileManager defaultManager];
  if ([v4 fileExistsAtPath:v3])
  {
    v5 = [NSURL fileURLWithPath:v3];
    v6 = NSURLIsDirectoryKey;
    v47 = NSURLIsDirectoryKey;
    v7 = [NSArray arrayWithObjects:&v47 count:1];
    v30 = v5;
    v8 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:v7 options:1 errorHandler:&stru_1003C20F0];

    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v44 = v3;
      v45 = 2112;
      v46 = v32;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Deleting FileListDBs under %@ not belonging to snapshots %@", buf, 0x16u);
      v28 = v3;
      v29 = v32;
      _MBLog();
    }

    v31 = v3;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v39;
      do
      {
        v13 = 0;
        v33 = v11;
        do
        {
          if (*v39 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v38 + 1) + 8 * v13);
          v36 = 0;
          v37 = 0;
          v15 = [v14 getResourceValue:&v37 forKey:v6 error:{&v36, v28, v29}];
          v16 = v37;
          v17 = v36;
          if ((v15 & 1) == 0)
          {
            v18 = MBGetDefaultLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v44 = v14;
              v45 = 2112;
              v46 = v17;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to get NSURLIsDirectoryKey for %@: %@", buf, 0x16u);
              v28 = v14;
              v29 = v17;
              _MBLog();
            }

LABEL_17:
            v23 = v17;
            goto LABEL_21;
          }

          v18 = [v14 lastPathComponent];
          if ([v16 BOOLValue] && (objc_msgSend(v32, "containsObject:", v18) & 1) != 0)
          {
            goto LABEL_17;
          }

          v19 = v12;
          v20 = v6;
          v35 = v17;
          v21 = v4;
          v22 = [v4 removeItemAtURL:v14 error:&v35];
          v23 = v35;

          v24 = MBGetDefaultLog();
          v25 = v24;
          if (v22)
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v26 = [v14 path];
              *buf = 138412290;
              v44 = v26;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Removed FileListDB %@", buf, 0xCu);

              v28 = [v14 path];
              _MBLog();
            }
          }

          else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v44 = v23;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to remove item at URL: %@", buf, 0xCu);
            v28 = v23;
            _MBLog();
          }

          v4 = v21;
          v6 = v20;
          v12 = v19;
          v11 = v33;
LABEL_21:

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v11);
    }

    v3 = v31;
  }

  return 1;
}

BOOL sub_10022D020(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Failed to enumerate file lists to delete at %@: %@", buf, 0x16u);
    _MBLog();
  }

  return 0;
}

uint64_t MBCreateSymlinksForPendingAndLatestSnapshots(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v21 = 0;
  v10 = sub_10022D330(v7, @"pending", v8, &v21);
  v11 = v21;
  v12 = v11;
  if (v10)
  {
    v20 = v11;
    v13 = sub_10022D330(v7, @"latest", v9, &v20);
    v14 = v20;

    if (v13)
    {
      v15 = 1;
LABEL_14:
      v12 = v14;
      goto LABEL_15;
    }

    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v23 = v9;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to create symlink for latest snapshot %@: %@", buf, 0x16u);
      _MBLog();
    }

    if (!a4)
    {
      v15 = 0;
      goto LABEL_14;
    }

    v12 = v14;
    goto LABEL_12;
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to create symlink for pending snapshot %@: %@", buf, 0x16u);
    _MBLog();
  }

  if (a4)
  {
LABEL_12:
    v18 = v12;
    v15 = 0;
    *a4 = v12;
    goto LABEL_15;
  }

  v15 = 0;
LABEL_15:

  return v15;
}

uint64_t sub_10022D330(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = [a1 stringByAppendingPathComponent:a2];
  v9 = [v8 fileSystemRepresentation];
  if (unlink(v9))
  {
    v10 = *__error();
    if (v10 != 2)
    {
      if (a4)
      {
        v11 = @"unlink() failed";
        goto LABEL_9;
      }

LABEL_10:
      v12 = 0;
      goto LABEL_15;
    }
  }

  if (!v7)
  {
LABEL_14:
    v12 = 1;
    goto LABEL_15;
  }

  if (!symlink([v7 fileSystemRepresentation], v9))
  {
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Created symlink from %@ -> %@", buf, 0x16u);
      _MBLog();
    }

    goto LABEL_14;
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  v10 = *__error();
  v11 = @"symlink() failed";
LABEL_9:
  [MBError errorWithErrno:v10 path:v8 format:v11];
  *a4 = v12 = 0;
LABEL_15:

  return v12;
}

id MBCompressFileListDB(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a1;
  v16 = MBFileListDBPath(v15, a2, v13);
  v17 = [MBTemporaryDirectory temporaryDirectoryOnSameVolumeAsPath:v15 identifiedBy:@"file_list_compaction" error:a7];

  if (!v17)
  {
    v24 = 0;
    goto LABEL_23;
  }

  v37 = a6;
  v38 = a5;
  v18 = [NSString stringWithFormat:@"%@.db-compacted", v13];
  v19 = [v17 path];
  v39 = v18;
  v20 = [v19 stringByAppendingPathComponent:v18];

  v21 = [v16 stringByAppendingString:@"-wal"];
  v22 = +[NSFileManager defaultManager];
  v23 = [v22 fileExistsAtPath:v21];

  if (v23)
  {
    if (![MBSQLiteFileHandle compactSQLiteDatabaseAtPath:v16 toPath:v20 error:a7])
    {
      [v17 dispose];
LABEL_15:
      v24 = 0;
      goto LABEL_22;
    }

LABEL_11:
    v35 = [NSString stringWithFormat:@"%@.db-compressed", v13];
    v26 = [v14 stringByAppendingPathComponent:?];
    v27 = dispatch_group_create();
    v28 = [MBFileEncodingTask encodingTaskWithEncodingMethod:1];
    [v28 setValidate:0];
    [v28 setSourcePath:v20];
    [v28 setSourceIsLive:1];
    v36 = v26;
    [v28 setDestinationPath:v26];
    [v28 setProtectionClass:3];
    [v28 setSpaceSavingsThreshold:0];
    [v28 setCompressionMethod:v38];
    [v28 setGroup:v27];
    [v28 start];
    dispatch_group_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
    v29 = [v28 error];

    if (v29)
    {
      if (a7)
      {
        *a7 = [v28 error];
      }

      [v17 dispose];
      v30 = [v28 destinationPath];
      unlink([v30 fileSystemRepresentation]);

      v24 = 0;
      v31 = v36;
    }

    else
    {
      [v17 dispose];
      v32 = MBGetDefaultLog();
      v31 = v36;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v28 destinationSize];
        *buf = 138413058;
        v41 = v16;
        v42 = 2112;
        v43 = v36;
        v44 = 2048;
        v45 = v33;
        v46 = 1024;
        v47 = v38;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Compressed FileList %@ -> %@ size:%lld (%d)", buf, 0x26u);
        v31 = v36;
        [v28 destinationSize];
        _MBLog();
      }

      if (v37)
      {
        *v37 = [v28 destinationSize];
      }

      v24 = v31;
    }

    goto LABEL_22;
  }

  v25 = MBGetDefaultLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = v16;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "No -wal found for db %@. Performing copy instead", buf, 0xCu);
    _MBLog();
  }

  if (!clonefile([v16 fileSystemRepresentation], objc_msgSend(v20, "fileSystemRepresentation"), 0))
  {
    goto LABEL_11;
  }

  [v17 dispose];
  if (!a7)
  {
    goto LABEL_15;
  }

  [MBError errorWithErrno:*__error() path:v16 format:@"Failed to clone file"];
  *a7 = v24 = 0;
LABEL_22:

LABEL_23:

  return v24;
}

id MBDecompressFileListDB(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a1;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = +[NSFileManager defaultManager];
  v16 = sub_10022C41C(v14, v13, v12);

  if ([v15 fileExistsAtPath:v16])
  {
    if (a6)
    {
      [MBError errorWithCode:3 format:@"Domain already exists at %@", v16];
      *a6 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v18 = [v12 stringByAppendingPathExtension:@"db"];
    v19 = [v16 stringByAppendingPathComponent:v18];
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v44 = v11;
      v45 = 2112;
      v46 = v19;
      v47 = 1024;
      v48 = a2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Attempting to decompress FileList %@ -> %@ (%b)", buf, 0x1Cu);
      v38 = v19;
      v39 = a2;
      v37 = v11;
      _MBLog();
    }

    v21 = sub_10022CA04(v16, a6);
    if (v21)
    {
      v42 = v19;
      v22 = v18;
      v23 = dispatch_group_create();
      v24 = [MBFileEncodingTask decodingTaskWithEncodingMethod:1];
      [v24 setValidate:0];
      [v24 setSourcePath:v11];
      [v24 setSourceIsLive:1];
      v40 = v22;
      v25 = [v21 stringByAppendingPathComponent:v22];
      [v24 setDestinationPath:v25];

      [v24 setProtectionClass:3];
      [v24 setSpaceSavingsThreshold:0];
      [v24 setCompressionMethod:a2];
      [v24 setGroup:v23];
      [v24 start];
      v41 = v23;
      dispatch_group_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
      v26 = [v24 error];

      if (v26)
      {
        if (a6)
        {
          *a6 = [v24 error];
        }

        v27 = [v24 destinationPath];
        unlink([v27 fileSystemRepresentation]);

        v17 = 0;
        v19 = v42;
        v18 = v40;
      }

      else
      {
        v28 = [v21 fileSystemRepresentation];
        v29 = [v16 fileSystemRepresentation];
        rename(v28, v29, v30);
        if (v31)
        {
          v32 = *__error();
          v19 = v42;
          v18 = v40;
          if (a6)
          {
            *a6 = [MBError errorWithErrno:v32 format:@"rename failed"];
          }

          v33 = MBGetDefaultLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543874;
            v44 = v21;
            v45 = 2114;
            v46 = v16;
            v47 = 1024;
            v48 = v32;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "Failed to rename %{public}@ -> %{public}@: %{errno}d", buf, 0x1Cu);
            _MBLog();
          }

          v17 = 0;
        }

        else
        {
          v34 = MBGetDefaultLog();
          v19 = v42;
          v18 = v40;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [v24 destinationSize];
            *buf = 138413058;
            v44 = v11;
            v45 = 2112;
            v46 = v42;
            v47 = 1024;
            v48 = a2;
            v49 = 2048;
            v50 = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Decompressed FileList %@ -> %@ (%b) size:%lld", buf, 0x26u);
            [v24 destinationSize];
            _MBLog();
          }

          v17 = v42;
        }
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

BOOL MBEnumerateDomainNamesForSnapshot(void *a1, void *a2, void *a3, void *a4)
{
  v6 = a1;
  v7 = a2;
  v32 = a4;
  v28 = v6;
  v29 = v7;
  v30 = [v6 stringByAppendingPathComponent:v7];
  v31 = +[NSFileManager defaultManager];
  if ([v31 fileExistsAtPath:v30])
  {
    v26 = [NSURL fileURLWithPath:v30];
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_10022E290;
    v44 = sub_10022E2A0;
    v45 = 0;
    v51 = NSURLIsDirectoryKey;
    v8 = [NSArray arrayWithObjects:&v51 count:1];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10022E2A8;
    v39[3] = &unk_1003C2118;
    v39[4] = &v40;
    v9 = [v31 enumeratorAtURL:v26 includingPropertiesForKeys:v8 options:1 errorHandler:v39];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v50 count:16];
    if (v11)
    {
      v12 = *v36;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v35 + 1) + 8 * i);
          obj = 0;
          v34 = 0;
          v15 = v41;
          v16 = [v14 getResourceValue:&v34 forKey:NSURLIsDirectoryKey error:&obj];
          v17 = v34;
          objc_storeStrong(v15 + 5, obj);
          if ((v16 & 1) == 0)
          {
            v21 = MBGetDefaultLog();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = v41[5];
              *buf = 138412546;
              v47 = v14;
              v48 = 2112;
              v49 = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to get NSURLIsDirectoryKey for %@: %@", buf, 0x16u);
              v25 = v41[5];
              _MBLog();
            }

LABEL_17:
            goto LABEL_18;
          }

          if ([v17 BOOLValue])
          {
            v18 = [v14 lastPathComponent];
            v19 = v32[2](v32, v18);

            if ((v19 & 1) == 0)
            {
              goto LABEL_17;
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v35 objects:v50 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v23 = v41[5];
    v20 = v23 == 0;
    if (a3 && v23)
    {
      *a3 = v23;
    }

    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

uint64_t sub_10022E290(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10022E2A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Failed to enumerate file lists at %@: %@", buf, 0x16u);
    _MBLog();
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  return 0;
}

uint64_t MBCalculateDiskUsageForSnapshotDirectory(void *a1, uint64_t *a2, void *a3)
{
  v34 = a1;
  v33 = +[NSFileManager defaultManager];
  if (![v33 fileExistsAtPath:v34])
  {
    v38 = 0;
    goto LABEL_37;
  }

  v36 = +[NSMutableIndexSet indexSet];
  v30 = [NSURL fileURLWithPath:v34];
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_10022E290;
  v54 = sub_10022E2A0;
  v55 = 0;
  v61[0] = NSURLFileSizeKey;
  v61[1] = NSURLIsDirectoryKey;
  v61[2] = NSURLFileContentIdentifierKey;
  v3 = [NSArray arrayWithObjects:v61 count:3];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10022E9A8;
  v49[3] = &unk_1003C2118;
  v49[4] = &v50;
  v4 = [v33 enumeratorAtURL:v30 includingPropertiesForKeys:v3 options:0 errorHandler:v49];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v4;
  v5 = 0;
  v6 = [obj countByEnumeratingWithState:&v45 objects:v60 count:16];
  if (!v6)
  {
    v38 = 0;
    goto LABEL_30;
  }

  v38 = 0;
  v37 = *v46;
  while (2)
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v46 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v45 + 1) + 8 * i);
      v43 = 0;
      v44 = 0;
      v9 = v51;
      v10 = [v8 getResourceValue:&v44 forKey:NSURLIsDirectoryKey error:&v43];
      v11 = v44;
      objc_storeStrong(v9 + 5, v43);
      if ((v10 & 1) == 0)
      {
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v21 = v51[5];
          *buf = 138412546;
          v57 = v8;
          v58 = 2112;
          v59 = v21;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to get NSURLIsDirectoryKey for %@: %@", buf, 0x16u);
          v27 = v51[5];
          _MBLog();
        }

        goto LABEL_29;
      }

      if ([v11 BOOLValue])
      {
        goto LABEL_16;
      }

      v41 = 0;
      v42 = 0;
      v12 = v51;
      v13 = [v8 getResourceValue:&v42 forKey:NSURLFileContentIdentifierKey error:&v41];
      v14 = v42;
      objc_storeStrong(v12 + 5, v41);
      if ((v13 & 1) == 0)
      {
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v22 = v51[5];
          *buf = 138412546;
          v57 = v8;
          v58 = 2112;
          v59 = v22;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to get NSURLFileContentIdentifierKey for %@: %@", buf, 0x16u);
          v28 = v51[5];
          _MBLog();
        }

LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      v15 = [v14 unsignedLongLongValue];
      v16 = [v36 containsIndex:v15];
      if ((v16 & 1) == 0)
      {
        [v36 addIndex:v15];
      }

      v39 = 0;
      v40 = 0;
      v17 = v51;
      v18 = [v8 getResourceValue:&v40 forKey:NSURLFileSizeKey error:&v39];
      v19 = v40;
      objc_storeStrong(v17 + 5, v39);
      if ((v18 & 1) == 0)
      {
        v23 = MBGetDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = v51[5];
          *buf = 138412546;
          v57 = v8;
          v58 = 2112;
          v59 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to get NSURLFileSizeKey for %@: %@", buf, 0x16u);
          v29 = v51[5];
          _MBLog();
        }

        goto LABEL_28;
      }

      v20 = [v19 unsignedLongLongValue];
      if (v16)
      {
        v5 += [v19 unsignedLongLongValue];
      }

      v38 += v20;
LABEL_16:
    }

    v6 = [obj countByEnumeratingWithState:&v45 objects:v60 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_30:

  v25 = v51[5];
  if (v25)
  {
    if (a3)
    {
      *a3 = v25;
    }

    v5 = -1;
    v38 = -1;
  }

  if (a2)
  {
    *a2 = v5;
  }

  _Block_object_dispose(&v50, 8);
LABEL_37:

  return v38;
}

uint64_t sub_10022E9A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to calculate disk usage at %@: %@", buf, 0x16u);
    _MBLog();
  }

  return 0;
}

uint64_t MBAcquireSnapshotDirectoryLock(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = open([v5 fileSystemRepresentation], 1048608);
  if (v7 < 0)
  {
    if (a2)
    {
      [MBError posixErrorWithPath:v5 format:@"Failed to open snapshot directory root"];
      *a2 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v8 = v7;
    v9 = v6[2](v6, a2);
    close(v8);
  }

  return v9 & 1;
}

void sub_10022EF8C(id a1, MBServiceCache *a2)
{
  v31 = 0;
  obj = [(MBServiceCache *)a2 pathsForFilesMissingEncryptionKeyWithOffset:0 limit:100];
  if ([obj count])
  {
    v2 = 0;
    p_cache = &OBJC_METACLASS___MBProgressModel.cache;
    do
    {
      if (!v2)
      {
        v4 = MBGetDefaultLog();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.st_dev) = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finding missing encryption keys", &buf, 2u);
          _MBLog();
        }
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v5 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v28;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v28 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v27 + 1) + 8 * i);
            v10 = [p_cache + 363 keybagFileWithPath:v9 error:{&v31, v23}];
            if (v10)
            {
              v11 = v10;
              v12 = [v10 encryptionKeyWithError:&v31];
              if (v12)
              {
                v13 = v12;
                v14 = p_cache;
                memset(&buf, 0, sizeof(buf));
                v15 = stat([v9 fileSystemRepresentation], &buf);
                v16 = MBGetDefaultLog();
                v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
                if (v15)
                {
                  if (v17)
                  {
                    v18 = *__error();
                    *v32 = 138412546;
                    v33 = v9;
                    v34 = 1024;
                    v35 = v18;
                    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Error getting inode number for %@: %{errno}d", v32, 0x12u);
                    v23 = v9;
                    v24 = *__error();
                    _MBLog();
                  }

                  ++v2;
                }

                else
                {
                  if (v17)
                  {
                    *v32 = 138412290;
                    v33 = v9;
                    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found encryption key for %@", v32, 0xCu);
                    v23 = v9;
                    _MBLog();
                  }

                  [(MBServiceCache *)a2 removeFileMissingEncryptionKeyWithPath:v9, v23];
                  [(MBServiceCache *)a2 setFileEncryptionKey:v13 forInodeNumber:buf.st_ino];
                }

                p_cache = v14;
              }

              else
              {
                v21 = MBGetDefaultLog();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  v22 = [MBError descriptionForError:v31];
                  buf.st_dev = 138412546;
                  *&buf.st_mode = v9;
                  WORD2(buf.st_ino) = 2112;
                  *(&buf.st_ino + 6) = v22;
                  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Error getting encryption key for %@: %@", &buf, 0x16u);
                  v23 = v9;
                  v24 = [MBError descriptionForError:v31];
                  _MBLog();
                }

                ++v2;
              }

              [v11 closeWithError:{0, v23, v24}];
            }

            else
            {
              v19 = MBGetDefaultLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                v20 = [MBError descriptionForError:v31];
                buf.st_dev = 138412546;
                *&buf.st_mode = v9;
                WORD2(buf.st_ino) = 2112;
                *(&buf.st_ino + 6) = v20;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Error opening file to get encryption key %@: %@", &buf, 0x16u);
                v23 = v9;
                v24 = [MBError descriptionForError:v31];
                _MBLog();
              }

              ++v2;
            }
          }

          v6 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
        }

        while (v6);
      }

      obj = [(MBServiceCache *)a2 pathsForFilesMissingEncryptionKeyWithOffset:v2 limit:100, v23];
    }

    while ([obj count]);
  }
}

uint64_t sub_10022F4F0(uint64_t a1, void *a2)
{
  v42 = 0;
  v4 = [MBPersona personalPersonaWithError:&v42];
  if (!v4)
  {
    v27 = MBGetDefaultLog();
    result = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 138412290;
    *v44 = v42;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Error obtaining personal persona: %@", buf, 0xCu);
    return _MBLog();
  }

  v5 = v4;
  v6 = -[MBAppManager initWithMobileInstallation:]([MBAppManager alloc], "initWithMobileInstallation:", [*(*(a1 + 32) + 8) mobileInstallation]);
  if (![(MBAppManager *)v6 loadAppsWithPersona:v5 safeHarbors:0 error:&v42])
  {
    v28 = MBGetDefaultLog();
    result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 138412290;
    *v44 = v42;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Error initializing app manager: %@", buf, 0xCu);
    return _MBLog();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = [(MBAppManager *)v6 allContainers];
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        if (([objc_msgSend(a2 "domainManager")] & 1) == 0)
        {
          [objc_msgSend(a2 "domainManager")];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v9);
  }

  v13 = [a2 protectionClassesToRestoreByPathWithOffset:0 limit:100];
  if ([v13 count])
  {
    v14 = 0;
    v32 = a2;
    while (1)
    {
      v33 = v14;
      if (!v14)
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting protection classes for protected files restored while device was locked", buf, 2u);
          _MBLog();
        }
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v16 = [v13 countByEnumeratingWithState:&v34 objects:v47 count:16];
      if (v16)
      {
        break;
      }

LABEL_30:
      a2 = v32;
      v14 = &v33[[v13 count]];
      v13 = [v32 protectionClassesToRestoreByPathWithOffset:v14 limit:100];
      if (![v13 count])
      {
        return [a2 removeAllProtectionClassesToRestore];
      }
    }

    v17 = v16;
    v18 = *v35;
LABEL_19:
    v19 = 0;
    while (1)
    {
      if (*v35 != v18)
      {
        objc_enumerationMutation(v13);
      }

      v20 = *(*(&v34 + 1) + 8 * v19);
      v21 = [objc_msgSend(v13 objectForKeyedSubscript:{v20, v29, v30, v31), "intValue"}];
      v22 = [MBProtectionClassUtils setWithPath:v20 value:v21 error:&v42];
      v23 = MBGetDefaultLog();
      v24 = v23;
      if (v22)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v44 = v21;
          *&v44[4] = 2112;
          *&v44[6] = v20;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Set protection class %d on restored file at %@", buf, 0x12u);
          v29 = v21;
          v30 = v20;
LABEL_27:
          _MBLog();
        }
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = [MBError descriptionForError:v42];
        *buf = 67109634;
        *v44 = v21;
        *&v44[4] = 2112;
        *&v44[6] = v20;
        v45 = 2112;
        v46 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error setting protection class %d for protected file restore while device was locked at %@: %@", buf, 0x1Cu);
        v30 = v20;
        v31 = [MBError descriptionForError:v42];
        v29 = v21;
        goto LABEL_27;
      }

      if (v17 == ++v19)
      {
        v17 = [v13 countByEnumeratingWithState:&v34 objects:v47 count:16];
        if (!v17)
        {
          goto LABEL_30;
        }

        goto LABEL_19;
      }
    }
  }

  return [a2 removeAllProtectionClassesToRestore];
}

void sub_100230494(uint64_t a1)
{
  v1 = [*(a1 + 32) pql_database];
}

void sub_100230768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002307A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1002307BC(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];

  v3 = [*(a1 + 32) pql_database];

  v4 = [*(a1 + 32) pql_database];
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  v6 = [v4 close:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v6;
}

void sub_100230AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100230B10(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v6 = [v2 fetch:@"PRAGMA quick_check"];

  v3 = [v6 error];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 40) + 8) + 40) == 0;
}

void sub_100230C18(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];

  if (v2)
  {
    v3 = [*(a1 + 32) pql_database];
    [v3 flush];
  }
}

void sub_1002311B0(id a1, PQLConnection *a2, PQLStatement *a3, NSError *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = MBGetDefaultLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v10)
    {
      *buf = 138412802;
      v12 = v7;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Sqlite request %@ failed on %@ with error [%@]", buf, 0x20u);
LABEL_6:
      _MBLog();
    }
  }

  else if (v10)
  {
    *buf = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Sqlite failed on %@ with error [%@]", buf, 0x16u);
    goto LABEL_6;
  }
}

void sub_100231A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100231AB0(void *a1, uint64_t a2, void **a3)
{
  v4 = a1;
  v10[0] = @"CREATE TABLE IF NOT EXISTS Files (fileID TEXT PRIMARY KEY, domain TEXT, relativePath TEXT, flags INTEGER, file BLOB);";
  v10[1] = @"CREATE INDEX IF NOT EXISTS FilesDomainIdx ON Files(domain);";
  v10[2] = @"CREATE INDEX IF NOT EXISTS FilesRelativePathIdx ON Files(relativePath);";
  v10[3] = @"CREATE INDEX IF NOT EXISTS FilesFlagsIdx ON Files(flags);";
  v5 = [NSArray arrayWithObjects:v10 count:4];
  v9 = @"CREATE TABLE IF NOT EXISTS Properties (key TEXT PRIMARY KEY, value BLOB);";
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  if (sub_100235A64(v4, v5, a3))
  {
    v7 = sub_100235A64(v4, v6, a3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_100231BBC(uint64_t a1, void *a2)
{
  v3 = a2;
  obj = 0;
  v4 = objc_autoreleasePoolPush();
  v5 = (*(&unk_1003C21C0 + 3 * *(a1 + 48) + 1))(v3, *(a1 + 32), &obj);
  objc_autoreleasePoolPop(v4);
  if (v5)
  {
    v6 = [v3 setUserVersion:*(a1 + 56)];
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 52);
      v9 = *(a1 + 56);
      *buf = 67109634;
      v16 = v8;
      v17 = 1024;
      v18 = v9;
      v19 = 2112;
      v20 = obj;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Can't migrate from version %d to %d: %@", buf, 0x18u);
      v13 = *(a1 + 56);
      v12 = *(a1 + 52);
      _MBLog();
    }

    v10 = [*(a1 + 32) pql_database];
    [v10 close:0];

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
    v6 = 0;
  }

  return v6;
}

void sub_100231E64(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100232054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10023206C(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [v2 execute:*(a1 + 40) args:**(a1 + 56)];

  if ((v3 & 1) == 0)
  {
    v7 = [*(a1 + 32) pql_database];
    v4 = [v7 lastError];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_100232270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100232288(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [v2 fetch:*(a1 + 40) args:**(a1 + 64)];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = *(a1 + 72);
  v5 = [v3 enumerateObjectsOfClass:objc_opt_class()];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = *v26;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v25 + 1) + 8 * v8);
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 1;
      v10 = *(a1 + 32);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1002324F8;
      v18[3] = &unk_1003C2220;
      v20 = &v21;
      v11 = *(a1 + 48);
      v18[4] = v9;
      v19 = v11;
      [v10 performCallbackOnQueue:v18];
      LOBYTE(v10) = *(v22 + 24);

      _Block_object_dispose(&v21, 8);
      if ((v10 & 1) == 0)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v12 = [*(a1 + 32) pql_database];
  v13 = [v12 lastError];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if ([*(a1 + 32) _isNotFoundError:*(*(*(a1 + 56) + 8) + 40)])
  {
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;
  }
}

void sub_1002324D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1002324F8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  *(*(a1[6] + 8) + 24) = (*(a1[5] + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1002326F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100232714(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [v2 fetchObjectOfClass:*(a1 + 64) sql:*(a1 + 40) args:**(a1 + 72)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) pql_database];
  v7 = [v6 lastError];

  if ([*(a1 + 32) _isNotFoundError:v7])
  {

    v7 = 0;
  }

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100233798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1002337BC(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [*(a1 + 40) string];
  v10 = [v2 fetch:{@"SELECT flags FROM Files WHERE fileID = %@", v3}];

  if ([v10 next])
  {
    *(*(*(a1 + 48) + 8) + 24) = [v10 unsignedIntAtIndex:0];
  }

  v4 = [*(a1 + 32) pql_database];
  v5 = [v4 lastError];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if ([*(a1 + 32) _isNotFoundError:*(*(*(a1 + 56) + 8) + 40)])
  {
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_100233A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100233A2C(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [*(a1 + 40) string];
  v10 = [v2 fetch:{@"SELECT COUNT(*) FROM Files WHERE fileID = %@ AND file IS NOT NULL", v3}];

  if ([v10 next])
  {
    *(*(*(a1 + 48) + 8) + 24) = [v10 unsignedIntAtIndex:0] != 0;
  }

  v4 = [*(a1 + 32) pql_database];
  v5 = [v4 lastError];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if ([*(a1 + 32) _isNotFoundError:*(*(*(a1 + 56) + 8) + 40)])
  {
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_100233C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100233CA0(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [*(a1 + 40) string];
  v10 = [v2 fetch:{@"SELECT COUNT(*) FROM Files WHERE fileID = %@ AND file IS NULL", v3}];

  if ([v10 next])
  {
    *(*(*(a1 + 48) + 8) + 24) = [v10 unsignedIntAtIndex:0] != 0;
  }

  v4 = [*(a1 + 32) pql_database];
  v5 = [v4 lastError];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if ([*(a1 + 32) _isNotFoundError:*(*(*(a1 + 56) + 8) + 40)])
  {
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_100233EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100233F14(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [*(a1 + 40) string];
  v10 = [v2 fetch:{@"SELECT COUNT(*) FROM Files WHERE fileID = %@ AND (flags & %lu) != 0 AND file IS NOT NULL", v3, 1}];

  if ([v10 next])
  {
    *(*(*(a1 + 48) + 8) + 24) = [v10 unsignedIntAtIndex:0] != 0;
  }

  v4 = [*(a1 + 32) pql_database];
  v5 = [v4 lastError];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if ([*(a1 + 32) _isNotFoundError:*(*(*(a1 + 56) + 8) + 40)])
  {
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_100234184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1002341A8(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v3 = [*(a1 + 40) string];
  v4 = [v2 fetch:{@"SELECT file, domain, relativePath FROM Files WHERE fileID = %@ AND file IS NOT NULL", v3}];

  if ([v4 next])
  {
    if ([*(a1 + 32) encrypted])
    {
      v5 = [v4 archivedObjectOfClass:objc_opt_class() atIndex:0];
      v6 = [*(a1 + 32) passwordData];
      v7 = [*(a1 + 32) salt];
      v8 = *(*(a1 + 48) + 8);
      obj = *(v8 + 40);
      v9 = [MBEncryptionUtilities decryptString:v5 withKey:v6 salt:v7 error:&obj];
      objc_storeStrong((v8 + 40), obj);

      if (!v9)
      {
LABEL_14:

        goto LABEL_15;
      }

      v10 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v9 error:0];
      v11 = [v10 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
      if (!v11)
      {
        v25 = [MBError errorWithCode:1 format:@"Failed to unarchive encrypted file (%@): %@", *(a1 + 40), v5];
        v26 = *(*(a1 + 48) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;

        goto LABEL_14;
      }

      v12 = v11;
    }

    else
    {
      v12 = [v4 archivedObjectOfClass:objc_opt_class() atIndex:0];
    }

    v13 = [v4 stringAtIndex:1];
    v14 = [*(a1 + 32) domainManager];
    v15 = [v14 domainForName:v13];

    if (v15)
    {
      [v12 setNonRedirectedDomain:v15];
      v16 = [*(a1 + 32) domainManager];
      v17 = [v12 relativePath];
      v18 = [v16 redirectDomain:v15 forRelativePath:v17];

      [v12 setDomain:v18];
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v12);
    }

    else
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 40);
        *buf = 138412290;
        v31 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "File %@ exists in manifest without a domain entry in manifest properties", buf, 0xCu);
        v28 = *(a1 + 40);
        _MBLog();
      }
    }
  }

  v20 = [*(a1 + 32) pql_database];
  v21 = [v20 lastError];
  v22 = *(*(a1 + 48) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  if ([*(a1 + 32) _isNotFoundError:*(*(*(a1 + 48) + 8) + 40)])
  {
    v24 = *(*(a1 + 48) + 8);
    v5 = *(v24 + 40);
    *(v24 + 40) = 0;
    goto LABEL_14;
  }

LABEL_15:
}

void sub_1002346C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1002346E8(uint64_t a1)
{
  v2 = [*(a1 + 32) pql_database];
  v10 = [v2 fetch:{@"SELECT COUNT(*) From Files WHERE (flags & %lu) = 0 AND file IS NOT NULL", 54}];

  if ([v10 next])
  {
    *(*(*(a1 + 40) + 8) + 24) = [v10 unsignedIntAtIndex:0] != 0;
  }

  v3 = [*(a1 + 32) pql_database];
  v4 = [v3 lastError];
  v5 = [v4 copy];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if ([*(a1 + 32) _isNotFoundError:*(*(*(a1 + 48) + 8) + 40)])
  {
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void sub_1002347EC(uint64_t a1)
{
  v1 = [*(a1 + 32) pql_database];
  v2 = [v1 fetch:{@"SELECT fileID, domain, relativePath, flags From Files WHERE (flags & %lu) = 0 AND file IS NOT NULL", 54}];

  if ([v2 next])
  {
    do
    {
      v3 = MBGetDefaultLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = [v2 stringAtIndex:0];
        v5 = [v2 stringAtIndex:1];
        v6 = [v2 stringAtIndex:2];
        v7 = [v2 stringAtIndex:3];
        *buf = 138413058;
        v13 = v4;
        v14 = 2112;
        v15 = v5;
        v16 = 2112;
        v17 = v6;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Referenced File Not In Backup: %@|%@|%@|%@", buf, 0x2Au);

        v8 = [v2 stringAtIndex:0];
        v9 = [v2 stringAtIndex:1];
        v10 = [v2 stringAtIndex:2];
        v11 = [v2 stringAtIndex:3];
        _MBLog();
      }
    }

    while (([v2 next] & 1) != 0);
  }
}

void sub_100234F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100234F48(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = [*(a1 + 32) fetch:{@"SELECT file, domain, relativePath FROM Files WHERE file IS NOT NULL ORDER BY domain, relativePath ASC"}];
  if (![v2 next])
  {
LABEL_21:
    v26 = [*(a1 + 32) lastError];
    v27 = *(*(a1 + 56) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    if ([*(a1 + 40) _isNotFoundError:*(*(*(a1 + 56) + 8) + 40)])
    {
      v29 = *(*(a1 + 56) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = 0;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v3 = objc_autoreleasePoolPush();
    if ([*(a1 + 40) encrypted])
    {
      break;
    }

    v10 = [v2 archivedObjectOfClass:objc_opt_class() atIndex:0];
LABEL_7:
    v11 = [v2 stringAtIndex:{1, v31}];
    v12 = [*(a1 + 40) domainManager];
    v13 = [v12 domainForName:v11];

    if ([v13 isUninstalledAppDomain])
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "File %@ exists in manifest for uninstalled app", &buf, 0xCu);
LABEL_15:
        v31 = v10;
        _MBLog();
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    [v10 setNonRedirectedDomain:v13];
    if (!v13)
    {
      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "File %@ exists in manifest without a domain entry in manifest properties", &buf, 0xCu);
        goto LABEL_15;
      }

LABEL_16:

      goto LABEL_17;
    }

    v15 = [*(a1 + 40) domainManager];
    v16 = [v10 relativePath];
    v17 = [v15 redirectDomain:v13 forRelativePath:v16];

    [v10 setDomain:v17];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v39 = 0x2020000000;
    v40 = 1;
    v18 = *(a1 + 40);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100235474;
    v33[3] = &unk_1003C2220;
    p_buf = &buf;
    v35 = *(a1 + 48);
    v19 = v10;
    v34 = v19;
    [v18 performCallbackOnQueue:v33];
    v20 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
    if ((v20 & 1) == 0)
    {

      objc_autoreleasePoolPop(v3);
      goto LABEL_21;
    }

LABEL_17:

    objc_autoreleasePoolPop(v3);
    if (([v2 next] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v4 = [v2 archivedObjectOfClass:objc_opt_class() atIndex:0];
  v5 = [*(a1 + 40) passwordData];
  v6 = [*(a1 + 40) salt];
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  v8 = [MBEncryptionUtilities decryptString:v4 withKey:v5 salt:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v8 error:0];
  v10 = [v9 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
  if (v10)
  {

    goto LABEL_7;
  }

  v21 = [v2 stringAtIndex:1];
  v22 = [v2 stringAtIndex:2];
  v23 = [MBError errorWithCode:1 format:@"Failed to unarchive encrypted file (%@:%@): %@", v21, v22, v4];
  v24 = *(*(a1 + 56) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

LABEL_20:
  objc_autoreleasePoolPop(v3);
LABEL_23:

  objc_autoreleasePoolPop(context);
}

void sub_100235454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100235474(void *a1)
{
  v2 = a1[4];
  result = (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_1002354B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  obj = *(v3 + 40);
  v4 = [v2 close:&obj];
  objc_storeStrong((v3 + 40), obj);
  if ((v4 & 1) == 0)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to close read-only connection to MBManifestDB: %@", buf, 0xCu);
      v7 = *(*(*(a1 + 40) + 8) + 40);
      _MBLog();
    }
  }
}

void sub_1002357AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1002357D0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) pql_database];
  v4 = [v3 fetch:{@"SELECT value FROM Properties WHERE key = %@", *(a1 + 40)}];

  if ([v4 next])
  {
    v5 = *(a1 + 64);
    if (v5 == objc_opt_class())
    {
      v7 = [v4 dataAtIndex:0];
    }

    else
    {
      v6 = *(a1 + 64);
      if (v6 == objc_opt_class())
      {
        [v4 stringAtIndex:0];
      }

      else
      {
        [v4 unarchivedObjectOfClass:*(a1 + 64) atIndex:0];
      }
      v7 = ;
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = [*(a1 + 32) pql_database];
  v11 = [v10 lastError];

  if ([*(a1 + 32) _isNotFoundError:v11])
  {

    v11 = 0;
  }

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_100235A64(void *a1, void *a2, void **a3)
{
  v5 = a1;
  v6 = a2;
  if (!a3)
  {
    __assert_rtn("_executeStatements", "MBManifestDB.m", 457, "error");
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v7);
      }

      if (![v5 executeRaw:{*(*(&v17 + 1) + 8 * v11), v17}])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    v14 = [v5 lastError];

    if (v14)
    {
      v15 = *a3;
      *a3 = v14;
      v13 = v14;

      v12 = 0;
      goto LABEL_13;
    }

    v12 = 1;
  }

  else
  {
LABEL_10:
    v12 = 1;
    v13 = v7;
LABEL_13:
  }

  return v12;
}

void sub_100235C38(id a1)
{
  qword_100421B08 = objc_alloc_init(MBThermalPressureMonitor);

  _objc_release_x1();
}

void sub_100235F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100235FE8(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[4] = a2;
    v4 = WeakRetained;
    [WeakRetained _measureCurrentThermalPressureLevel];
    WeakRetained = v4;
  }
}

void sub_1002360C4(uint64_t a1)
{
  state = notify_get_state(*(*(a1 + 32) + 16), (*(a1 + 32) + 8));
  v3 = MBGetDefaultLog();
  v4 = v3;
  if (state)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v9 = state;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to fetch the thermal pressure level: %lu", buf, 0xCu);
      _MBLog();
    }

    *(*(a1 + 32) + 8) = kOSThermalPressureLevelUndefined;
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 8);
      *buf = 136446466;
      v9 = kOSThermalNotificationPressureLevelName;
      v10 = 2048;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received %{public}s for thermal pressure level: %llu", buf, 0x16u);
      v7 = *(*(a1 + 32) + 8);
      _MBLog();
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"MBThermalPressureMonitorNotification" object:*(a1 + 32) userInfo:0];
  }
}

void sub_100236348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100236570(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Timer fired: %{public}@", buf, 0xCu);
    v6 = *(a1 + 32);
    _MBLog();
  }

  v5 = [*(a1 + 32) handler];
  if (v5)
  {
    [*(a1 + 32) setHandler:0];
    v5[2](v5, 0);
  }

  dispatch_source_cancel(*(a1 + 40));

  objc_autoreleasePoolPop(v2);
}

void sub_10023668C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Timer canceled: %{public}@", buf, 0xCu);
    v6 = *(a1 + 32);
    _MBLog();
  }

  v5 = [*(a1 + 32) handler];
  if (v5)
  {
    [*(a1 + 32) setHandler:0];
    v5[2](v5, 1);
  }

  [*(a1 + 32) setTransaction:{0, v6}];
  [*(a1 + 32) setTimer:0];

  objc_autoreleasePoolPop(v2);
}

void sub_10023C208(id a1)
{
  qword_100421B18 = [[MBKeyBag alloc] initWithHandle:MKBOTABackupKeyBag() OTA:1];

  _objc_release_x1();
}

id sub_10024200C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  [v2 timeout];
  [v3 setLock:+[MBSLock lockWithState:type:timeout:](MBSLock forBackupUDID:{"lockWithState:type:timeout:", 1, v4, v5), *(*(a1 + 32) + 8)}];
  v6 = *(a1 + 32);
  [v6 renewInterval];

  return [v6 _scheduleTimerWithInterval:?];
}

id sub_100242160(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 renewInterval];

  return [v1 _scheduleTimerWithInterval:?];
}

void sub_1002425D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

id sub_100242610(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _reacquireLockWithError:*(*(a1 + 48) + 8) + 40];
  v2 = *(*(*(a1 + 48) + 8) + 40);

  return v2;
}

id sub_100242A40(uint64_t a1)
{
  result = [*(*(a1 + 32) + 40) lockForBackupUDID:*(*(a1 + 32) + 8)];
  if (result)
  {
    v3 = [result state];
    v4 = *(a1 + 32);
    result = v3 == 1 ? [v4 _holdLock] : objc_msgSend(v4, "_releaseLock");
    if (v5 != 0.0)
    {
      v6 = *(a1 + 32);

      return [v6 _scheduleTimerWithInterval:?];
    }
  }

  return result;
}

uint64_t MBAppendAttemptSummaryToPlist(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = [a2 stringByAppendingPathComponent:a3];
  v9 = [v8 stringByAppendingPathComponent:@"backup_summary.plist"];

  v32 = 0;
  v10 = v9;
  v11 = +[NSFileManager defaultManager];
  v12 = [v11 fileExistsAtPath:v10];

  if (v12)
  {
    v13 = [NSData dataWithContentsOfFile:v10 options:0 error:&v32];
    v14 = [NSPropertyListSerialization propertyListWithData:v13 options:2 format:0 error:&v32];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = v32;
  if (!v15)
  {
    v19 = [v14 objectForKeyedSubscript:@"Attempts"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = objc_opt_new();
      [v14 setObject:v20 forKeyedSubscript:@"Attempts"];

      v19 = v20;
    }

    v21 = [v19 count];
    v22 = v21;
    if (v21 >= 0xA)
    {
      v23 = v21 - 9;
      do
      {
        --v23;
        [v19 removeObjectAtIndex:0];
      }

      while (v23);
    }

    v24 = [v7 dictionaryRepresentation];
    [v19 addObject:v24];

    v31 = 0;
    v25 = [NSPropertyListSerialization dataWithPropertyList:v14 format:200 options:0 error:&v31];
    v26 = v31;
    v16 = v26;
    if (v25)
    {
      v27 = v26 == 0;
    }

    else
    {
      v27 = 0;
    }

    if (v27)
    {
      if ([v25 writeToFile:v10 options:0x10000000 error:a4])
      {
        v29 = MBGetDefaultLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v34 = v10;
          v35 = 2048;
          v36 = v22;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Appended attempt summary to %@ (%llu)", buf, 0x16u);
          _MBLog();
        }

        v18 = 1;
        goto LABEL_24;
      }
    }

    else if (a4)
    {
      v28 = v26;
      v18 = 0;
      *a4 = v16;
LABEL_24:

      goto LABEL_25;
    }

    v18 = 0;
    goto LABEL_24;
  }

  v16 = v15;
  if (a4)
  {
    v17 = v15;
    v18 = 0;
    *a4 = v16;
  }

  else
  {
    v18 = 0;
  }

LABEL_25:

  return v18;
}

void sub_100245168(void *a1)
{
  v1 = a1;
  v2 = +[NSCharacterSet whitespaceCharacterSet];
  v11 = [v1 stringByTrimmingCharactersInSet:v2];

  if ([v11 containsString:@"/"])
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void _assertIfInvalidSystemContainerID(NSString *__strong)"];
    [v3 handleFailureInFunction:v4 file:@"MBPersona+RestoreLocations.m" lineNumber:27 description:{@"containerID %@ contains '/'", v11}];
  }

  if ([v11 isEqualToString:@".."])
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"void _assertIfInvalidSystemContainerID(NSString *__strong)"];
    [v5 handleFailureInFunction:v6 file:@"MBPersona+RestoreLocations.m" lineNumber:28 description:{@"containerID %@ contains '..'", v11}];
  }

  if ([v11 isEqualToString:&stru_1003C3430])
  {
    v7 = +[NSAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"void _assertIfInvalidSystemContainerID(NSString *__strong)"];
    [v7 handleFailureInFunction:v8 file:@"MBPersona+RestoreLocations.m" lineNumber:29 description:{@"containerID %@ is empty", v11}];
  }

  if ([v11 isEqualToString:@"."])
  {
    v9 = +[NSAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"void _assertIfInvalidSystemContainerID(NSString *__strong)"];
  }
}

void sub_100245BB8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100421B30;
  qword_100421B30 = v1;

  dword_100421B28 = 0;
}

uint64_t sub_10024617C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = +[NSFileManager defaultManager];
  if (![v6 fileExistsAtPath:v5])
  {
    goto LABEL_21;
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing old restore directory", v25, 2u);
    _MBLog();
  }

  if ([v6 mb_moveToTmpDirThenRemoveItemAtPath:v5 error:a3])
  {
LABEL_21:
    v8 = [v5 stringByAppendingPathComponent:@"var"];
    v9 = [v6 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:a3];

    if (v9)
    {
      v28[0] = NSFileOwnerAccountName;
      v28[1] = NSFileGroupOwnerAccountName;
      v29[0] = @"mobile";
      v29[1] = @"mobile";
      v10 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
      v26[0] = NSFileOwnerAccountName;
      v26[1] = NSFileGroupOwnerAccountName;
      v27[0] = @"_securityd";
      v27[1] = @"wheel";
      v11 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
      if (a2 == 2)
      {
        v12 = [v5 stringByAppendingPathComponent:@"var/mobile"];
        v13 = [v6 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:v10 error:a3];

        if (v13)
        {
LABEL_8:
          v14 = 1;
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
        v15 = [v5 stringByAppendingPathComponent:@"var/Keychains"];
        v16 = [v6 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:v11 error:a3];

        if (v16)
        {
          v17 = [v5 stringByAppendingPathComponent:@"var/Managed Preferences"];
          v18 = [v6 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:a3];

          if (v18)
          {
            v19 = [v5 stringByAppendingPathComponent:@"var/Managed Preferences/mobile"];
            v20 = [v6 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:v10 error:a3];

            if (v20)
            {
              v21 = [v5 stringByAppendingPathComponent:@"var/MobileDevice"];
              v22 = [v6 createDirectoryAtPath:v21 withIntermediateDirectories:1 attributes:0 error:a3];

              if (v22)
              {
                v23 = [v5 stringByAppendingPathComponent:@"var/MobileDevice/ProvisioningProfiles"];
                v14 = [v6 createDirectoryAtPath:v23 withIntermediateDirectories:1 attributes:v10 error:a3];

                if (!v14)
                {
                  goto LABEL_17;
                }

                goto LABEL_8;
              }
            }
          }
        }
      }

      v14 = 0;
      goto LABEL_17;
    }
  }

  v14 = 0;
LABEL_18:

  return v14;
}

uint64_t sub_100248458(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100248470(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "=restore-placeholder= Failed to enumerate placeholder ipas at %@: %@", buf, 0x16u);
    _MBLog();
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  return 0;
}

id sub_1002498EC(uint64_t a1, uint64_t a2)
{
  v2 = [NSString stringWithFormat:@"%@-%@", a1, a2];
  v3 = [NSNumber numberWithShort:MBSimpleChecksumForString()];

  return v3;
}

uint64_t BackupStatusKeyAndValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___BackupStatusKeyAndValue__value;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___BackupStatusKeyAndValue__key;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_10024D9E0(unint64_t a1)
{
  if (a1 >= 0xB)
  {
    __assert_rtn("_stringForRestoreDomainState", "MBRestoreDomainEngine.m", 43, "0");
  }

  return *(&off_1003C24B8 + a1);
}

uint64_t sub_10024EFF8(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestoreDomainEngine _downloadAssets:withFetcher:]_block_invoke", "MBRestoreDomainEngine.m", 371, "asset");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestoreDomainEngine _downloadAssets:withFetcher:]_block_invoke", "MBRestoreDomainEngine.m", 372, "enumerationError");
  }

  v6 = v5;
  if (![*(a1 + 32) handleCancelation:a3])
  {
    v33 = 0;
    if ([*(*(a1 + 32) + 136) containsAsset:v6 alreadyPresentOut:&v33 error:a3])
    {
      if (v33 == 1)
      {
        if (([*(*(a1 + 32) + 152) setAssetState:2 asset:v6 withFailure:0 error:a3] & 1) == 0)
        {
          v10 = MBGetDefaultLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = [*(a1 + 32) domainName];
            *buf = 138543618;
            v35 = v11;
            v36 = 2112;
            v37 = v6;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Failed to mark asset %@ as complete, since it was already in the depot", buf, 0x16u);

            v28 = [*(a1 + 32) domainName];
            _MBLog();
          }
        }

        v12 = MBGetDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [*(a1 + 32) domainName];
          v14 = *(*(a1 + 32) + 136);
          *buf = 138543874;
          v35 = v13;
          v36 = 2112;
          v37 = v6;
          v38 = 2112;
          v39 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=domain-engine= %{public}@: Asset %@ already present in depot %@", buf, 0x20u);

          v15 = [*(a1 + 32) domainName];
          v30 = *(*(a1 + 32) + 136);
          _MBLog();
        }

        v16 = [*(a1 + 32) progressModel];
        v17 = [v6 metadata];
        -[NSObject updatingProgress:previousProgress:size:](v16, "updatingProgress:previousProgress:size:", [v17 assetSize], 1.0, 0.0);
        v9 = 1;
        goto LABEL_19;
      }

      v22 = MBGetDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [*(a1 + 32) domainName];
        *buf = 138543618;
        v35 = v23;
        v36 = 2112;
        v37 = v6;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "=domain-engine= %{public}@: Requesting asset %@", buf, 0x16u);

        v29 = [*(a1 + 32) domainName];
        _MBLog();
      }

      if ([*(a1 + 40) requestAsset:v6 error:a3])
      {
        v9 = 1;
        goto LABEL_28;
      }

      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v24 = [*(a1 + 32) domainName];
        v25 = *a3;
        *buf = 138543874;
        v35 = v24;
        v36 = 2112;
        v37 = v6;
        v38 = 2112;
        v39 = v25;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Failed requesting asset %@: %@", buf, 0x20u);

        v17 = [*(a1 + 32) domainName];
        v31 = *a3;
        goto LABEL_18;
      }
    }

    else
    {
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = [*(a1 + 32) domainName];
        v19 = *(*(a1 + 32) + 136);
        v20 = *a3;
        *buf = 138544130;
        v35 = v18;
        v36 = 2112;
        v37 = v6;
        v38 = 2112;
        v39 = v19;
        v40 = 2112;
        v41 = v20;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=domain-engine= %{public}@: Failed checking for asset %@ in depot %@: %@", buf, 0x2Au);

        v17 = [*(a1 + 32) domainName];
        v21 = *(*(a1 + 32) + 136);
        v32 = *a3;
LABEL_18:
        _MBLog();
        v9 = 0;
LABEL_19:

LABEL_27:
        goto LABEL_28;
      }
    }

    v9 = 0;
    goto LABEL_27;
  }

  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [*(a1 + 32) domainName];
    *buf = 138543362;
    v35 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=domain-engine= %{public}@: Cancelled downloading ", buf, 0xCu);

    v27 = [*(a1 + 32) domainName];
    _MBLog();
  }

  v9 = 0;
LABEL_28:

  return v9;
}

id sub_10024FDA8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeDirectories:]_block_invoke", "MBRestoreDomainEngine.m", 468, "restorable");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeDirectories:]_block_invoke", "MBRestoreDomainEngine.m", 469, "enumerationError");
  }

  v6 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10024FEA4;
  v10[3] = &unk_1003BEE90;
  v10[4] = v6;
  v11 = v5;
  v7 = v5;
  v8 = [v6 _restoreRestorable:v7 error:a3 actionBlock:v10];

  return v8;
}

id sub_10024FEA4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeDirectories:]_block_invoke_2", "MBRestoreDomainEngine.m", 472, "restoreError");
  }

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 160);

  return [v4 placeWithDirectory:v3 error:a2];
}

id sub_100250008(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a4;
  if (!v9)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeAssets:]_block_invoke", "MBRestoreDomainEngine.m", 489, "restorable");
  }

  if (!v10)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeAssets:]_block_invoke", "MBRestoreDomainEngine.m", 490, "metadata");
  }

  if (!a5)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeAssets:]_block_invoke", "MBRestoreDomainEngine.m", 491, "enumerationError");
  }

  v11 = *(a1 + 32);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10025015C;
  v16[3] = &unk_1003C23F8;
  v16[4] = v11;
  v17 = v9;
  v19 = a3;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = [v11 _restoreRestorable:v13 error:a5 actionBlock:v16];

  return v14;
}

id sub_10025015C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeAssets:]_block_invoke_2", "MBRestoreDomainEngine.m", 494, "restoreError");
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6 = *(*(a1 + 32) + 160);

  return [v6 placeAsset:v3 isHardlink:v4 metadata:v5 error:a2];
}

id sub_1002502CC(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v7 = a2;
  if (!v7)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeZeroByteFiles:]_block_invoke", "MBRestoreDomainEngine.m", 511, "restorable");
  }

  if (!a4)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeZeroByteFiles:]_block_invoke", "MBRestoreDomainEngine.m", 512, "enumerationError");
  }

  v8 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002503D0;
  v12[3] = &unk_1003C2448;
  v12[4] = v8;
  v13 = v7;
  v14 = a3;
  v9 = v7;
  v10 = [v8 _restoreRestorable:v9 error:a4 actionBlock:v12];

  return v10;
}

id sub_1002503D0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeZeroByteFiles:]_block_invoke_2", "MBRestoreDomainEngine.m", 515, "restoreError");
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 32) + 160);

  return [v5 placeWithZeroByteFile:v3 isHardlink:v4 error:a2];
}

id sub_10025053C(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a4;
  if (!v9)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeSymlinks:]_block_invoke", "MBRestoreDomainEngine.m", 532, "restorable");
  }

  if (!v10)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeSymlinks:]_block_invoke", "MBRestoreDomainEngine.m", 533, "symlinkTarget");
  }

  if (!a5)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeSymlinks:]_block_invoke", "MBRestoreDomainEngine.m", 534, "enumerationError");
  }

  v11 = *(a1 + 32);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100250690;
  v16[3] = &unk_1003C23F8;
  v16[4] = v11;
  v17 = v9;
  v18 = v10;
  v19 = a3;
  v12 = v10;
  v13 = v9;
  v14 = [v11 _restoreRestorable:v13 error:a5 actionBlock:v16];

  return v14;
}

id sub_100250690(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("[MBRestoreDomainEngine _placeSymlinks:]_block_invoke_2", "MBRestoreDomainEngine.m", 537, "restoreError");
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 32) + 160);

  return [v6 placeWithSymlink:v3 symlinkTarget:v4 isHardlink:v5 error:a2];
}

id sub_100250800(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestoreDomainEngine _fixUpDirectoryAttributes:]_block_invoke", "MBRestoreDomainEngine.m", 554, "restorable");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestoreDomainEngine _fixUpDirectoryAttributes:]_block_invoke", "MBRestoreDomainEngine.m", 555, "enumerationError");
  }

  v6 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002508FC;
  v10[3] = &unk_1003BEE90;
  v10[4] = v6;
  v11 = v5;
  v7 = v5;
  v8 = [v6 _restoreRestorable:v7 error:a3 actionBlock:v10];

  return v8;
}

id sub_1002508FC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __assert_rtn("[MBRestoreDomainEngine _fixUpDirectoryAttributes:]_block_invoke_2", "MBRestoreDomainEngine.m", 558, "restoreError");
  }

  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 160);

  return [v4 fixUpAttributesWithDirectory:v3 error:a2];
}

const __CFString *MBStringForKeyBagValidationResult(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Invalid";
  }

  else
  {
    return *(&off_1003C2510 + a1);
  }
}

char *sub_1002526A4(const char *a1, void *a2, char *a3)
{
  v5 = a2;
  if (!a1)
  {
    __assert_rtn("_mkdtemp", "MBTemporaryDirectory.m", 25, "root");
  }

  v6 = v5;
  if (!v5)
  {
    __assert_rtn("_mkdtemp", "MBTemporaryDirectory.m", 26, "identifier");
  }

  snprintf(__str, 0x401uLL, "%s/%s_XXXXXXXXXXXXXXX", a1, [v5 fileSystemRepresentation]);
  v7 = mkdtemp(__str);
  if (v7)
  {
    a3 = strdup(v7);
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      *buf = 136315394;
      v14 = __str;
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "=tmpdir= Failed to create %s directory (mkdtemp error: %d)", buf, 0x12u);
      v12 = *__error();
      _MBLog();
    }

    if (a3)
    {
      v10 = [NSString mb_stringWithFileSystemRepresentation:__str];
      *a3 = [MBError posixErrorWithPath:v10 format:@"TempDir: Failed to create directory (mkdtemp error: %d)", *__error()];

      a3 = 0;
    }
  }

  return a3;
}

void sub_100252B50(const char *a1)
{
  if (!a1)
  {
    __assert_rtn("_mkpath_if_necessary", "MBTemporaryDirectory.m", 64, "path");
  }

  v2 = mkpath_np(a1, 0x1FFu);
  if (v2 != 17)
  {
    v3 = v2;
    if (v2)
    {
      v5 = +[NSAssertionHandler currentHandler];
      v6 = [NSString stringWithUTF8String:"void _mkpath_if_necessary(const char *)"];
      [v5 handleFailureInFunction:v6 file:@"MBTemporaryDirectory.m" lineNumber:73 description:{@"TempDir: Unable to create %s directory (mkpath_np error: %d)", a1, v3}];
    }

    v4 = MBMobileUID();
    if (chown(a1, v4, v4))
    {
      v8 = +[NSAssertionHandler currentHandler];
      v7 = [NSString stringWithUTF8String:"void _mkpath_if_necessary(const char *)"];
      [v8 handleFailureInFunction:v7 file:@"MBTemporaryDirectory.m" lineNumber:76 description:{@"TempDir: Unable to set ownership on %s directory (chown error: %d)", a1, *__error()}];
    }
  }
}

id sub_100252FE0(const char *a1)
{
  if (!a1)
  {
    __assert_rtn("_mktemp", "MBTemporaryDirectory.m", 46, "root");
  }

  snprintf(__str, 0x401uLL, "%s/XXXXXXXXXXXXXXX", a1);
  if (!mktemp(__str))
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"NSString *_mktemp(const char *)"];
    [v4 handleFailureInFunction:v5 file:@"MBTemporaryDirectory.m" lineNumber:58 description:{@"TempDir: Unable to create temp file path in %s (%d)", a1, *__error()}];
  }

  v2 = [NSString mb_stringWithFileSystemRepresentation:__str];

  return v2;
}

uint64_t sub_100253578(_removefile_state *a1, uint64_t a2, void *a3)
{
  dst = 0;
  v5 = a3;
  removefile_state_get(a1, 5u, &dst);
  v6 = dst;
  v7 = [NSString stringWithUTF8String:a2];
  v8 = [MBError errorWithErrno:v6 path:v7 format:@"removefileat() error"];
  [v5 addObject:v8];

  return 0;
}

id MBCreateTemporaryFilePathIn(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    __assert_rtn("MBCreateTemporaryFilePathIn", "MBTemporaryDirectory.m", 303, "parentDirectoryPath");
  }

  v2 = v1;
  v3 = sub_100252FE0([v1 fileSystemRepresentation]);

  return v3;
}

void sub_10025395C(id a1)
{
  v1 = strdup("/var/tmp/com.apple.backup.testing");
  qword_100421B40 = v1;

  sub_100252B50(v1);
}

void sub_100253994(id a1)
{
  v1 = strdup("/var/mobile/tmp/com.apple.backup.testing");
  qword_100421B50 = v1;

  sub_100252B50(v1);
}

void sub_1002539CC(id a1)
{
  v1 = strdup("/var/tmp/com.apple.backup");
  qword_100421B60 = v1;

  sub_100252B50(v1);
}

id MBSanitizeError(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MBError underlyingErrorFromCKCancelationError:v1];

    v3 = [v2 domain];
    v4 = [v3 isEqualToString:@"com.apple.appleaccount"];

    if (v4)
    {
      v5 = [v2 localizedDescription];
      v1 = [MBError errorWithCode:305 error:v2 format:@"%@", v5];
LABEL_64:

      goto LABEL_65;
    }

    v1 = CKXPCSuitableError();
    if ([MBError isError:v1 withCode:2])
    {
      v6 = [v1 userInfo];
      v7 = [v6 objectForKeyedSubscript:@"kMBUnderlyingErrorsKey"];

      if (v7)
      {
        if ([v7 count])
        {
          v8 = [v7 firstObject];
          (MBSanitizeError)();
        }

        else
        {
          v8 = [v1 localizedDescription];
          [MBError errorWithCode:1 error:v1 format:@"%@", v8];
        }
        v9 = ;

        v1 = v9;
      }
    }

    if (+[MBError isCancelledError:](MBError, "isCancelledError:", v2) && [v2 code] != 202)
    {
      v52[0] = v2;
      v51[0] = NSUnderlyingErrorKey;
      v51[1] = NSLocalizedDescriptionKey;
      v11 = [v2 localizedDescription];
      v52[1] = v11;
      v19 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
      v18 = [NSError errorWithDomain:@"MBErrorDomain" code:202 userInfo:v19];

LABEL_60:
LABEL_61:
      v1 = v18;
      goto LABEL_62;
    }

    if (![MBError isCKError:v1])
    {
      v12 = [v1 domain];
      v13 = [v12 isEqualToString:NSCocoaErrorDomain];

      if (v13)
      {
        if ([v1 code] >= 4096 && objc_msgSend(v1, "code") <= 4224)
        {
          v14 = [v1 code];
          v15 = 18;
          if (v14 == 4099)
          {
            v15 = 20;
          }

          if (v14 == 4097)
          {
            v16 = 19;
          }

          else
          {
            v16 = v15;
          }

          v17 = [v1 localizedDescription];
          v18 = [MBError errorWithCode:v16 error:v1 format:@"%@", v17];

          goto LABEL_61;
        }

        if ([v1 code] != 640)
        {
          goto LABEL_62;
        }

        v11 = [v1 localizedDescription];
        [MBError errorWithCode:106 error:v1 format:@"%@", v11];
        goto LABEL_59;
      }

      v20 = [v1 domain];
      v21 = [v20 isEqualToString:PQLSqliteErrorDomain];

      if (v21 && [v1 code] == 13)
      {
        v11 = [v1 localizedDescription];
        [MBError errorWithCode:105 error:v1 format:@"%@", v11];
        goto LABEL_59;
      }

LABEL_62:
      v5 = MBGetDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v47 = v2;
        v48 = 2112;
        v49 = v1;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Sanitized %@ to %@", buf, 0x16u);
        _MBLog();
      }

      goto LABEL_64;
    }

    v10 = [v1 code];
    if (v10 > 6)
    {
      if (v10 <= 22)
      {
        if (v10 != 7)
        {
          if (v10 == 9)
          {
            v11 = [v1 localizedDescription];
            [MBError errorWithCode:305 error:v1 format:@"%@", v11];
            goto LABEL_59;
          }

          if (v10 == 20)
          {
            v11 = [v1 localizedDescription];
            [MBError errorWithCode:202 error:v1 format:@"%@", v11];
            v18 = LABEL_59:;

            goto LABEL_60;
          }

LABEL_58:
          v11 = [v1 localizedDescription];
          [MBError errorWithCode:1 error:v1 format:@"%@", v11];
          goto LABEL_59;
        }

        goto LABEL_49;
      }

      if (v10 == 23)
      {
LABEL_49:
        v27 = [v2 userInfo];
        v28 = [v27 objectForKeyedSubscript:CKErrorRetryAfterKey];
        [v28 doubleValue];
        v30 = v29;

        if (v30 < 0.0)
        {
          v30 = 0.0;
        }

        v25 = [v1 localizedDescription];
        v26 = sub_1002565A4(v25, v30);
        goto LABEL_73;
      }

      if (v10 == 25)
      {
        v11 = [v1 localizedDescription];
        [MBError errorWithCode:303 error:v1 format:@"%@", v11];
        goto LABEL_59;
      }

      if (v10 != 36)
      {
        goto LABEL_58;
      }

LABEL_43:
      v11 = [v1 localizedDescription];
      [MBError errorWithCode:304 error:v1 format:@"%@", v11];
      goto LABEL_59;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        v11 = [v1 localizedDescription];
        [MBError errorWithCode:308 error:v1 format:@"%@", v11];
        goto LABEL_59;
      }

      if (v10 == 4)
      {
        v11 = [v1 localizedDescription];
        [MBError errorWithCode:300 error:v1 format:@"%@", v11];
        goto LABEL_59;
      }

      if (v10 != 6)
      {
        goto LABEL_58;
      }

      goto LABEL_43;
    }

    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_58;
      }

      memset(v45, 0, sizeof(v45));
      v22 = [v2 userInfo];
      v23 = [v22 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v24 = [v23 allValues];

      if ([v24 countByEnumeratingWithState:v45 objects:v50 count:16])
      {
        v25 = **(&v45[0] + 1);

        if (v25)
        {
          v26 = MBSanitizeError(v25);
LABEL_73:
          v40 = v26;

          v1 = v40;
          goto LABEL_62;
        }
      }

      else
      {
      }

      v25 = [v1 localizedDescription];
      v26 = [MBError errorWithCode:1 error:v1 format:@"%@", v25];
      goto LABEL_73;
    }

    v31 = [v2 userInfo];
    v32 = [v31 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if (sub_1002564EC(v32))
    {
      v33 = [v1 localizedDescription];
      [MBError errorWithCode:105 format:@"%@", v33];
    }

    else if ([MBError isCKInternalError:v32 withCode:2009])
    {
      v35 = [v2 userInfo];
      v36 = [v35 objectForKeyedSubscript:CKErrorRetryAfterKey];
      [v36 doubleValue];
      v38 = v37;

      if (v38 > 0.0)
      {
        v33 = [v1 localizedDescription];
        v39 = sub_1002565A4(v33, v38);
LABEL_80:
        v44 = v39;
        goto LABEL_81;
      }

      v33 = [v1 localizedDescription];
      [MBError errorWithCode:310 format:@"%@", v33];
    }

    else
    {
      if ([MBError isCKInternalError:v32 withCode:1000])
      {
        v41 = [v32 userInfo];
        v42 = [v41 objectForKeyedSubscript:NSUnderlyingErrorKey];

        if (v42)
        {
          v33 = [v32 userInfo];
          v43 = [v33 objectForKeyedSubscript:NSUnderlyingErrorKey];
          v44 = (MBSanitizeError)();

          v1 = v43;
LABEL_81:

          v1 = v44;
          goto LABEL_62;
        }
      }

      v33 = [v1 localizedDescription];
      [MBError errorWithCode:1 format:@"%@", v33];
    }
    v39 = ;
    goto LABEL_80;
  }

LABEL_65:

  return v1;
}

id MBSanitizeErrorWithDateAndBuild(void *a1)
{
  v1 = MBSanitizeError(a1);
  if (v1)
  {
    v2 = v1;
    v3 = [v1 userInfo];
    v4 = v3;
    if (!v3)
    {
      v3 = &__NSDictionary0__struct;
    }

    v5 = [v3 mutableCopy];

    v6 = +[NSDate date];
    [v5 setObject:v6 forKeyedSubscript:@"kMBErrorDateKey"];

    v7 = MBBuildVersion();
    [v5 setObject:v7 forKeyedSubscript:@"BuildVersion"];

    v8 = [v2 domain];
    v9 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v8, [v2 code], v5);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL sub_1002564EC(void *a1)
{
  v1 = a1;
  if ([MBError isCKInternalError:v1 withCode:3008])
  {
    v2 = 1;
  }

  else if ([MBError isCKInternalError:v1 withCode:1027])
  {
    v3 = [v1 userInfo];
    v4 = [v3 objectForKeyedSubscript:@"SQLCode"];

    if (v4)
    {
      v2 = [v4 unsignedIntValue] == 13;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_1002565A4(void *a1, double a2)
{
  v2 = a2;
  v3 = a1;
  v4 = [NSNumber numberWithInt:v2];
  v9[0] = NSLocalizedDescriptionKey;
  v9[1] = @"RetryAfter";
  v10[0] = v3;
  v5 = [v4 stringValue];
  v10[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [NSError errorWithDomain:@"MBErrorDomain" code:17 userInfo:v6];

  return v7;
}

id MBExtractFirstMBErrorOrCKError(void *a1)
{
  v1 = a1;
  if ([MBError isError:v1 withCode:2])
  {
    v2 = [v1 userInfo];
    v3 = [v2 objectForKeyedSubscript:@"kMBUnderlyingErrorsKey"];
  }

  else
  {
    v4 = v1;
    if (![MBError isCKPartialFailureError:v1])
    {
      goto LABEL_8;
    }

    v2 = [v1 userInfo];
    v5 = [v2 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
    v3 = [v5 allValues];
  }

  v6 = [v3 firstObject];

  v4 = v1;
  if (v6)
  {
    v4 = [v3 firstObject];
  }

LABEL_8:

  return v4;
}

id MBSerializeErrors(void *a1, id *a2)
{
  v3 = a1;
  if (!v3 || !a2)
  {
    __assert_rtn("MBSerializeErrors", "MBError+Helpers.m", 440, "originalError && firstError");
  }

  v4 = v3;
  *a2 = MBExtractFirstMBErrorOrCKError(v3);
  v5 = objc_opt_new();
  v6 = [*a2 userInfo];
  v7 = [v6 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if ([v5 count] <= 4 && v7 != 0)
  {
    do
    {
      v9 = v7;
      v10 = [v7 domain];
      v11 = [v7 code];
      v12 = [v7 localizedDescription];
      v13 = [NSString stringWithFormat:@"%@|%ld|%@", v10, v11, v12];

      [v5 addObject:v13];
      v14 = [v7 userInfo];
      v7 = [v14 objectForKeyedSubscript:NSUnderlyingErrorKey];
    }

    while ([v5 count] <= 4 && v7);
  }

  return v5;
}

void sub_1002569F8(id a1)
{
  qword_100421B70 = objc_alloc_init(MBUserNotificationManager);

  _objc_release_x1();
}

void sub_100256BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100256BB8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100256E44(uint64_t a1)
{
  if (BYSetupAssistantNeedsToRun())
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Deferring block until end of setup.", v7, 2u);
      _MBLog();
    }

    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 16);
    v5 = objc_retainBlock(v3);
    [v4 addObject:v5];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

void sub_100257724(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 _mbNotificationForIdentifier:v3];

  if (v4)
  {
    v5 = [*(a1 + 40) title];
    v6 = [v4 title];
    if ([v5 isEqual:v6])
    {
      v7 = [*(a1 + 40) body];
      v8 = [v4 body];
      if ([v7 isEqual:v8])
      {
        v9 = [*(a1 + 40) button];
        v10 = [v4 button];
        v11 = [v9 isEqual:v10];

        if (v11)
        {
          v12 = MBGetDefaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [*(a1 + 40) identifier];
            v14 = [*(a1 + 40) title];
            v15 = [*(a1 + 40) body];
            v16 = [*(a1 + 40) button];
            v17 = [*(a1 + 40) alternateButton];
            *buf = 138413314;
            v66 = v13;
            v67 = 2112;
            v68 = v14;
            v69 = 2112;
            v70 = v15;
            v71 = 2112;
            v72 = v16;
            v73 = 2112;
            v74 = v17;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unchanged alert %@: %@, %@, %@, %@", buf, 0x34u);

            v18 = [*(a1 + 40) identifier];
            v19 = [*(a1 + 40) title];
            v20 = [*(a1 + 40) body];
            v21 = [*(a1 + 40) button];
            v63 = [*(a1 + 40) alternateButton];
            _MBLog();
          }

LABEL_22:

          goto LABEL_23;
        }

LABEL_17:
        v45 = MBGetDefaultLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [*(a1 + 40) identifier];
          v47 = [*(a1 + 40) title];
          v48 = [*(a1 + 40) body];
          v49 = [*(a1 + 40) button];
          v50 = [*(a1 + 40) alternateButton];
          *buf = 138413314;
          v66 = v46;
          v67 = 2112;
          v68 = v47;
          v69 = 2112;
          v70 = v48;
          v71 = 2112;
          v72 = v49;
          v73 = 2112;
          v74 = v50;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Updating alert %@: %@, %@, %@, %@", buf, 0x34u);

          v51 = [*(a1 + 40) identifier];
          v52 = [*(a1 + 40) title];
          v53 = [*(a1 + 40) body];
          v54 = [*(a1 + 40) button];
          v64 = [*(a1 + 40) alternateButton];
          _MBLog();
        }

        v55 = [v4 cfUserNotification];
        v56 = [*(a1 + 32) _propertiesForMBUserNotification:*(a1 + 40)];
        CFUserNotificationUpdate(v55, 0.0, 2uLL, v56);

        [*(*(a1 + 32) + 40) removeObject:v4];
        [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
LABEL_23:
        v57 = *(a1 + 56);
        if (v57)
        {
          v44 = *(v57 + 16);
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    goto LABEL_17;
  }

  if (![*(a1 + 32) _shouldInformUserWithNotification:*(a1 + 40) account:*(a1 + 48)])
  {
    goto LABEL_23;
  }

  [*(a1 + 32) _updateDidInformUserWithNotification:*(a1 + 40) account:*(a1 + 48)];
  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [*(a1 + 40) identifier];
    v24 = [*(a1 + 40) title];
    v25 = [*(a1 + 40) body];
    v26 = [*(a1 + 40) button];
    v27 = [*(a1 + 40) alternateButton];
    *buf = 138413314;
    v66 = v23;
    v67 = 2112;
    v68 = v24;
    v69 = 2112;
    v70 = v25;
    v71 = 2112;
    v72 = v26;
    v73 = 2112;
    v74 = v27;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Creating alert %@: %@, %@, %@, %@", buf, 0x34u);

    v28 = [*(a1 + 40) identifier];
    v29 = [*(a1 + 40) title];
    v30 = [*(a1 + 40) body];
    v31 = [*(a1 + 40) button];
    [*(a1 + 40) alternateButton];
    v62 = v61 = v31;
    v59 = v29;
    v60 = v30;
    v58 = v28;
    _MBLog();
  }

  v32 = [*(a1 + 32) _createCFUserNotificationFromMBUserNotification:*(a1 + 40)];
  if (!v32)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unable to create notification", buf, 2u);
      _MBLog();
    }

    goto LABEL_22;
  }

  v33 = v32;
  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v32, sub_100257E68, 0);
  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopDefaultMode);
  NSMapInsert(*(*(a1 + 32) + 32), v33, RunLoopSource);
  CFRelease(RunLoopSource);
  [*(a1 + 40) setCFUserNotification:v33];
  [*(*(a1 + 32) + 40) addObject:*(a1 + 40)];
  v36 = [*(a1 + 40) displayedBlock];

  if (v36)
  {
    v37 = [*(a1 + 40) displayedBlock];
    v37[2](v37, v38, v39, v40, v41);
  }

  v42 = [MBDaemon sharedDaemon:v58];
  [v42 holdWorkAssertion:*(a1 + 64)];

  v43 = *(a1 + 56);
  if (v43)
  {
    v44 = *(v43 + 16);
LABEL_25:
    v44();
  }

LABEL_26:
}

void sub_100257E68(uint64_t a1, uint64_t a2)
{
  v4 = +[MBUserNotificationManager sharedManager];
  [v4 _userDidRespondToNotification:a1 withFlags:a2];
}

void sub_100257F8C(uint64_t a1)
{
  v2 = [*(a1 + 32) _mbNotificationForIdentifier:*(a1 + 40)];
  if (v2)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceling alert %@", buf, 0xCu);
      v5 = *(a1 + 40);
      _MBLog();
    }

    CFUserNotificationCancel([v2 cfUserNotification]);
    [*(a1 + 32) clearDidInformUserWithNotificationIdentifier:*(a1 + 40) account:*(a1 + 48)];
  }
}

void sub_10025899C(id a1)
{
  qword_100421B80 = objc_alloc_init(MBNotificationCenter);

  _objc_release_x1();
}

void sub_100258CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_100258D18(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v2 intValue];
  }

  else
  {
    v4 = 1;
    while (1)
    {
      v5 = v4;
      *(*(*(a1 + 56) + 8) + 24) = notify_register_check([*(a1 + 40) UTF8String], (*(*(a1 + 48) + 8) + 24));
      if (!*(*(*(a1 + 56) + 8) + 24))
      {
        break;
      }

      v6 = MBGetDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 40);
        v8 = *(*(*(a1 + 56) + 8) + 24);
        *buf = 138412546;
        v13 = v7;
        v14 = 2048;
        v15 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "notify_register_check(%@) failed: %lu", buf, 0x16u);
        v10 = *(a1 + 40);
        v11 = *(*(*(a1 + 56) + 8) + 24);
        _MBLog();
      }

      v4 = 0;
      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v9 = [NSNumber numberWithInt:*(*(*(a1 + 48) + 8) + 24)];
    [*(*(a1 + 32) + 8) setObject:v9 forKeyedSubscript:*(a1 + 40)];
  }

LABEL_10:
}

void sub_10025A848(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reachability changed, flags:0x%lx", buf, 0xCu);
    _MBLog();
  }

  v7 = a3;
  [a3 _reachabilityCallback:a2];

  objc_autoreleasePoolPop(v5);
}

uint64_t sub_10025A938(uint64_t a1)
{
  flags = 0;
  v2 = SCNetworkReachabilityGetFlags(*(*(a1 + 32) + 16), &flags);
  v3 = MBGetDefaultLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = flags;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Initial reachability flags: 0x%lx", buf, 0xCu);
      v6 = flags;
      _MBLog();
    }

    return [*(a1 + 32) _reachabilityCallback:{flags, v6}];
  }

  else
  {
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to fetch the reachability flags", buf, 2u);
      return _MBLog();
    }
  }

  return result;
}

uint64_t MBCommitSnapshot(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t *a8)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v123 = a6;
  v19 = a7;
  if (!v14)
  {
    __assert_rtn("MBCommitSnapshot", "MBCommitSnapshot.m", 148, "pendingSnapshot");
  }

  if (!v15)
  {
    __assert_rtn("MBCommitSnapshot", "MBCommitSnapshot.m", 149, "device");
  }

  if (!v16)
  {
    __assert_rtn("MBCommitSnapshot", "MBCommitSnapshot.m", 150, "tracker");
  }

  if (!v17)
  {
    __assert_rtn("MBCommitSnapshot", "MBCommitSnapshot.m", 151, "pendingSnapshotDB");
  }

  if (!v18)
  {
    __assert_rtn("MBCommitSnapshot", "MBCommitSnapshot.m", 152, "appManager");
  }

  if (!v123)
  {
    __assert_rtn("MBCommitSnapshot", "MBCommitSnapshot.m", 153, "properties");
  }

  if (!a8)
  {
    __assert_rtn("MBCommitSnapshot", "MBCommitSnapshot.m", 154, "error");
  }

  v20 = v19;
  v21 = [v16 account];
  v22 = [v21 persona];

  v117 = v22;
  if (!v22)
  {
    __assert_rtn("MBCommitSnapshot", "MBCommitSnapshot.m", 156, "persona");
  }

  v120 = [v15 cache];
  if (!v120)
  {
    __assert_rtn("MBCommitSnapshot", "MBCommitSnapshot.m", 159, "cache");
  }

  v121 = [v14 commitID];
  v23 = MBGetDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v150 = v121;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Committing snapshot %{public}@", buf, 0xCu);
    v105 = v121;
    _MBLog();
  }

  v115 = v20;
  v116 = v17;

  v24 = v14;
  v127 = v18;
  [v24 snapshotFormat];
  v118 = v15;
  v119 = v16;
  if (MBSnapshotFormatContainsManifests())
  {
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    obj = [v24 manifestsByDomainName];
    v128 = [obj countByEnumeratingWithState:&v138 objects:buf count:16];
    if (v128)
    {
      v125 = *v139;
      v126 = v24;
      do
      {
        v25 = 0;
        do
        {
          if (*v139 != v125)
          {
            objc_enumerationMutation(obj);
          }

          v132 = v25;
          v26 = *(*(&v138 + 1) + 8 * v25);
          context = objc_autoreleasePoolPush();
          v27 = [v24 manifestsByDomainName];
          v130 = [v27 objectForKeyedSubscript:v26];

          v28 = [MBDomain containerIDWithName:v26];
          v29 = [v127 appWithIdentifier:v28];

          v30 = objc_alloc_init(NSMutableSet);
          v134 = 0u;
          v135 = 0u;
          v136 = 0u;
          v137 = 0u;
          v129 = v29;
          v31 = [v29 containers];
          v32 = [v31 countByEnumeratingWithState:&v134 objects:v148 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v135;
            do
            {
              for (i = 0; i != v33; i = i + 1)
              {
                if (*v135 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v36 = *(*(&v134 + 1) + 8 * i);
                v37 = [v36 domain];
                v38 = [v37 name];
                v39 = [v38 isEqualToString:v26];

                if ((v39 & 1) == 0)
                {
                  v40 = [v36 domain];
                  v41 = [v40 name];
                  [v30 addObject:v41];
                }
              }

              v33 = [v31 countByEnumeratingWithState:&v134 objects:v148 count:16];
            }

            while (v33);
          }

          [v130 setDependentDomainNames:v30];
          if ([v129 containerType] == 1 || objc_msgSend(v129, "containerType") == 2)
          {
            v42 = [v129 bundleID];
            v43 = [v129 entitlements];
            v44 = [v129 entitlementsRelativePath];
            v45 = MBGetDefaultLog();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *v142 = 138412802;
              v143 = v42;
              v144 = 2112;
              v145 = v44;
              v146 = 2112;
              v147 = v43;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Adding entitlements for %@ (%@): %@", v142, 0x20u);
              v113 = v44;
              v114 = v43;
              v106 = v42;
              _MBLog();
            }

            if ([v129 containerType] == 2)
            {
              v46 = [v129 ownerBundleID];
              [v130 setOwningBundleID:v46];
            }

            [v130 setEntitlements:{v43, v106, v113, v114, v115, v116}];
            [v130 setEntitlementsPath:v44];
          }

          objc_autoreleasePoolPop(context);
          v25 = v132 + 1;
          v24 = v126;
        }

        while ((v132 + 1) != v128);
        v128 = [obj countByEnumeratingWithState:&v138 objects:buf count:16];
      }

      while (v128);
    }

    v15 = v118;
    v16 = v119;
  }

  v47 = v24;
  v48 = v116;
  v49 = v115;
  [v47 snapshotFormat];
  if (MBSnapshotFormatContainsFileLists())
  {
    v148[0] = 0;
    v50 = [v47 addDomainRecordIDsFromPendingSnapshotDB:v48 attemptSummary:v49 error:v148];
    v51 = v148[0];
    v52 = v51;
    if ((v50 & 1) == 0)
    {
      v83 = v51;
      *a8 = v52;
      v84 = MBGetDefaultLog();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v150 = v52;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "Failed to add domain recordIDs to pending snapshot database: %@", buf, 0xCu);
        _MBLog();
      }

      goto LABEL_100;
    }
  }

  v53 = v123;
  v54 = v47;
  v55 = [v54 commitID];
  v56 = MBGetDefaultLog();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v150 = v55;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Saving properties for snapshot %{public}@", buf, 0xCu);
    v105 = v55;
    _MBLog();
  }

  v57 = [v54 device];
  v58 = [v57 hmacKey];

  if (v58)
  {
    [v53 setObject:v58 forKey:@"SnapshotHMACKey"];
  }

  v59 = MBRequiredProductVersion(3);
  [v53 setRequiredProductVersion:v59];
  v60 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v54 accountType]);
  [v53 setAccountType:v60];

  v148[0] = 0;
  v61 = [v53 dataWithError:v148];
  v62 = v148[0];
  if (v61)
  {
    [v54 setBackupProperties:v61];
  }

  else
  {
    v133 = v47;
    v63 = v49;
    v64 = v48;
    v65 = MBGetDefaultLog();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v150 = v62;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Failed to serialize backup properties: %{public}@", buf, 0xCu);
      v105 = v62;
      _MBLog();
    }

    v66 = v62;
    *a8 = v62;
    v48 = v64;
    v49 = v63;
    v47 = v133;
  }

  if (!v61)
  {
    v82 = 0;
    v15 = v118;
    goto LABEL_67;
  }

  v15 = v118;
  [v118 unpinGMSnapshotAndSaveNewSnapshotIfNeeded:v54];
  v16 = v119;
  v67 = v119;
  v68 = v120;
  if (!MBIsInternalInstall() || (+[MBBehaviorOptions sharedOptions](MBBehaviorOptions, "sharedOptions"), v69 = objc_claimAutoreleasedReturnValue(), v70 = [v69 shouldTriggerDeviceRecordOpLockFailureInBackupCommit], v69, !v70))
  {
LABEL_59:

    v78 = MBGetDefaultLog();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Saving device record", buf, 2u);
      _MBLog();
    }

    [v15 setPendingSnapshot:v54];
    if ([v15 saveWithOperationTracker:v67 error:a8])
    {
      [v54 snapshotFormat];
      if (MBSnapshotFormatContainsManifests())
      {
        v79 = [v68 removeDeletedFileChanges];
        if (v79)
        {
          v80 = v79;
          v81 = MBGetDefaultLog();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v150 = v80;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "Could not remove deleted file changes from the cache: %@", buf, 0xCu);
LABEL_77:
            _MBLog();
            goto LABEL_78;
          }

          goto LABEL_78;
        }
      }

      else
      {
        v87 = [v68 removeAllFileChanges];
        if (v87)
        {
          v80 = v87;
          v81 = MBGetDefaultLog();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v150 = v80;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "Could not remove all file changes from the cache: %@", buf, 0xCu);
            goto LABEL_77;
          }

LABEL_78:

          v88 = v80;
          v82 = 0;
          *a8 = v80;
LABEL_93:

          goto LABEL_101;
        }
      }

      v89 = [v15 keybagManager];
      v90 = [v89 keybagRefs];
      v91 = +[MBKeyBagValidationState updateKeyBagCountAfterSnapshotCommit:persona:error:](MBKeyBagValidationState, "updateKeyBagCountAfterSnapshotCommit:persona:error:", [v90 count], v117, a8);

      if (!v91)
      {
        v82 = 0;
        goto LABEL_101;
      }

      v92 = [v68 removeAllFileEncryptionKeys];
      if (v92)
      {
        v93 = MBGetDefaultLog();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v150 = v92;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_ERROR, "Could not remove all file encryption keys from cache: %@", buf, 0xCu);
          v108 = v92;
          _MBLog();
        }
      }

      v94 = [v68 removeAllFilesMissingEncryptionKeys];

      if (v94)
      {
        v95 = MBGetDefaultLog();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v150 = v94;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "Could not remove all missing encryption keys from the cache: %@", buf, 0xCu);
          v109 = v94;
          _MBLog();
        }
      }

      v80 = [v68 rebuildEncryptionKeysTable];

      if (v80)
      {
        v96 = MBGetDefaultLog();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v150 = v80;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_ERROR, "Failed to rebuild the encryption keys table: %@", buf, 0xCu);
          v110 = v80;
          _MBLog();
        }
      }

      v97 = [v48 snapshotDirectoryRoot];
      v82 = MBCreateSymlinksForPendingAndLatestSnapshots(v97, 0, v121, a8);

      goto LABEL_93;
    }

    v85 = MBGetDefaultLog();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      v86 = *a8;
      *buf = 138412290;
      v150 = v86;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "Failed to save device: %@", buf, 0xCu);
      v107 = *a8;
      _MBLog();
    }

LABEL_100:
    v82 = 0;
    goto LABEL_101;
  }

  v71 = [MBCKAccount fetchAccountWithOperationTracker:v67 cache:v68 error:a8];
  v72 = v71;
  if (!v71)
  {
    v98 = MBGetDefaultLog();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      v99 = v49;
      v100 = a8;
      v101 = *a8;
      *buf = 138412290;
      v150 = v101;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "Failed to fetch account record: %@", buf, 0xCu);
LABEL_98:
      v111 = *v100;
      _MBLog();
      v49 = v99;
    }

LABEL_99:

    goto LABEL_100;
  }

  if (([v71 fetchDevicesWithOperationTracker:v67 error:a8] & 1) == 0)
  {
    v98 = MBGetDefaultLog();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      v99 = v49;
      v100 = a8;
      v102 = *a8;
      *buf = 138412290;
      v150 = v102;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "Failed to fetch devices: %@", buf, 0xCu);
      goto LABEL_98;
    }

    goto LABEL_99;
  }

  v73 = MBDeviceUUID();
  v74 = [v72 deviceForUUID:v73];

  if (v74)
  {
    [v74 setPendingSnapshotQuotaReserved:{objc_msgSend(v74, "pendingSnapshotQuotaReserved") + 1}];
    v75 = [v74 saveWithOperationTracker:v67 error:a8];
    v76 = MBGetDefaultLog();
    v77 = v76;
    if (v75)
    {
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "Saved mutated device record", buf, 2u);
        _MBLog();
      }

      v15 = v118;
      v16 = v119;
      goto LABEL_59;
    }

    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      v104 = *a8;
      *buf = 138412290;
      v150 = v104;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "Failed to save mutated device record: %@", buf, 0xCu);
      v112 = *a8;
      _MBLog();
    }

    v15 = v118;
  }

  else
  {
    v77 = MBGetDefaultLog();
    v15 = v118;
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "Could not find device record in account", buf, 2u);
      _MBLog();
    }
  }

  v82 = 0;
LABEL_67:
  v16 = v119;
LABEL_101:

  return v82;
}

void MBResetPendingSnapshot(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    __assert_rtn("MBResetPendingSnapshot", "MBCommitSnapshot.m", 228, "device");
  }

  v8 = v7;
  v9 = [v5 cache];
  if (!v9)
  {
    __assert_rtn("MBResetPendingSnapshot", "MBCommitSnapshot.m", 230, "cache");
  }

  if (!v8)
  {
    __assert_rtn("MBResetPendingSnapshot", "MBCommitSnapshot.m", 231, "persona");
  }

  v10 = v9;
  v11 = [v5 pendingSnapshotRecordID];
  v12 = [MBCKSnapshot snapshotIDFromSnapshotRecordID:v11];

  v25 = 0;
  v13 = [v10 hasPendingBackupContents:&v25];
  v14 = v25;
  [v5 pendingSnapshotFormat];
  v15 = MBSnapshotFormatContainsFileLists();
  if (v15 && v12)
  {
    v16 = [v8 snapshotDatabaseDirectory];
    v17 = MBSnapshotDirectoryExists(v16, v12);

    if (((v17 | v13) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v13 & 1) == 0)
  {
LABEL_7:
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not deleting the pending snapshot because no local contents exist", buf, 2u);
LABEL_9:
      _MBLog();
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  [v5 clearPendingSnapshotFieldsAndRebuildFileChanges:1];
  v24 = v14;
  v19 = [v5 saveWithOperationTracker:v6 error:&v24];
  v20 = v24;

  if ((v19 & 1) == 0)
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to clear the pending snapshot record ID from the device record: %@", buf, 0xCu);
      _MBLog();
    }

    v14 = v20;
    goto LABEL_20;
  }

  if (v15)
  {
    if (!v12)
    {
      __assert_rtn("MBResetPendingSnapshot", "MBCommitSnapshot.m", 260, "pendingSnapshotCommitID");
    }

    v21 = [v8 snapshotDatabaseDirectory];
    v23 = v20;
    v22 = MBStashMissedEncryptionKeysDB(v21, v12, &v23);
    v14 = v23;

    if (v22)
    {
      goto LABEL_21;
    }

    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Failed to stash missed encryption keys DB: %@", buf, 0xCu);
      goto LABEL_9;
    }

LABEL_20:

LABEL_21:
    v20 = v14;
  }
}

id sub_10025C990(void *a1, void *a2)
{
  result = [a2 restoreFailuresForDataClass:a1[4] assetType:a1[5] range:{a1[7], a1[8]}];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

id sub_10025CA8C(void *a1, void *a2)
{
  result = [a2 countOfRestoreFailuresForDataclass:a1[4] assetType:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void MBExit(int a1)
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 processName];

  if ([v3 isEqualToString:@"backupd"])
  {
    MBRemoveTemporaryDirectory();
    +[MBPersona removeTemporaryDirectoriesForAllPersonae];
    +[MBPersona removeBackupSnapshotsForAllPersonae];
  }

  if (a1)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v6 = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MBExit(%d)", buf, 8u);
      _MBLog();
    }
  }

  _MBLogFlushDeprecated();
  exit(a1);
}

id MBTearDownBackupd()
{
  MBRemoveTemporaryDirectory();
  +[MBPersona removeTemporaryDirectoriesForAllPersonae];

  return +[MBPersona removeBackupSnapshotsForAllPersonae];
}

void sub_10025DAB4(uint64_t a1)
{
  v2 = [*(a1 + 32) encodingMethod];
  if ((v2 - 2) < 2)
  {
    v5 = *(a1 + 32);
    if (*(a1 + 48) == 1)
    {
      [v5 _archive];
    }

    else
    {
      [v5 _unarchive];
    }

    goto LABEL_7;
  }

  if (v2 == 1)
  {
LABEL_5:
    v3 = *(a1 + 32);
    if (*(a1 + 48) == 1)
    {
      [v3 _compress];
    }

    else
    {
      [v3 _decompress];
    }

    v4 = LABEL_7:;
    goto LABEL_13;
  }

  if (v2 == 255)
  {
    [*(a1 + 32) setEncodingMethod:1];
    goto LABEL_5;
  }

  v4 = +[MBError errorWithCode:format:](MBError, "errorWithCode:format:", 1, @"Unknown encoding method %ld", [*(a1 + 32) encodingMethod]);
LABEL_13:
  v6 = v4;
  [*(a1 + 32) _finishWithError:v4];
  dispatch_semaphore_signal(*(a1 + 40));
}

BOOL sub_10025E24C(int a1, int *a2, void *a3)
{
  if (!a2)
  {
    __assert_rtn("makeCompressionAlgorithmFromFileCompressionMethod", "MBFileEncodingTask.m", 157, "algorithm");
  }

  *a2 = 0;
  if (a1 <= 1)
  {
    if (a1 != -1)
    {
      if (a1 == 1)
      {
        v4 = 0;
        v5 = 517;
LABEL_10:
        *a2 = v5;
        v6 = 1;
        goto LABEL_11;
      }

      goto LABEL_12;
    }

LABEL_9:
    v4 = 0;
    v5 = 2049;
    goto LABEL_10;
  }

  if (a1 == 2)
  {
    goto LABEL_9;
  }

  if (a1 == 3)
  {
    v4 = 0;
    v5 = 774;
    goto LABEL_10;
  }

LABEL_12:
  v4 = [MBError errorWithCode:1 format:@"Invalid file compression method %ld", a1];
  v6 = v4 == 0;
  if (a3 && v4)
  {
    v4 = v4;
    v6 = 0;
    *a3 = v4;
  }

LABEL_11:

  return v6;
}

uint64_t sub_10025E33C(unsigned int a1, char *a2, void *a3)
{
  if (!a2)
  {
    __assert_rtn("makeFileCompressionMethodFromCompressionAlgorithm", "MBFileEncodingTask.m", 189, "compressionMethod");
  }

  *a2 = 0;
  switch(a1)
  {
    case 0x205u:
      v4 = 0;
      v6 = 1;
      *a2 = 1;
      goto LABEL_17;
    case 0x306u:
      v4 = 0;
      v5 = 3;
      goto LABEL_7;
    case 0x801u:
      v4 = 0;
      v5 = 2;
LABEL_7:
      *a2 = v5;
LABEL_8:
      v6 = 1;
      goto LABEL_17;
  }

  v4 = [MBError errorWithCode:1 format:@"Invalid compression algorithm %ld", a1];
  if (!v4)
  {
    if (*a2 == 255 || !*a2)
    {
      __assert_rtn("makeFileCompressionMethodFromCompressionAlgorithm", "MBFileEncodingTask.m", 213, "*compressionMethod != MBFileCompressionMethodUnspecified && *compressionMethod != MBFileCompressionMethodDefault");
    }

    v4 = 0;
    goto LABEL_8;
  }

  if (a3)
  {
    v4 = v4;
    v6 = 0;
    *a3 = v4;
  }

  else
  {
    v6 = 0;
  }

LABEL_17:

  return v6;
}

void sub_100260114(id a1)
{
  v3 = NSTemporaryDirectory();
  v1 = [v3 stringByAppendingPathComponent:@"tmpbackupXXXXXXXX"];
  v2 = qword_100421BA0;
  qword_100421BA0 = v1;
}

void sub_100260BB4(id a1)
{
  qword_100421BB0 = dispatch_semaphore_create(2);

  _objc_release_x1();
}

void sub_100260BEC(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v2 = dispatch_queue_create("com.apple.backupd.encoding", attr);
  v3 = qword_100421BC0;
  qword_100421BC0 = v2;
}

void sub_100260C74(id a1)
{
  qword_100421BD0 = dispatch_semaphore_create(1);

  _objc_release_x1();
}

void sub_100260CAC(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v2 = dispatch_queue_create("com.apple.backupd.decoding", attr);
  v3 = qword_100421BE0;
  qword_100421BE0 = v2;
}

void MBCKRegisterLongLivedOperator(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_100421BF8 != -1)
  {
    dispatch_once(&qword_100421BF8, &stru_1003C2750);
  }

  v5 = qword_100421BF0;
  v6 = [v5 objectForKeyedSubscript:v3];

  if (v6)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MBCKLongLivedOperator: already registered operator with identifier %@", buf, 0xCu);
      v8 = v3;
      _MBLog();
    }
  }

  [v5 setObject:v4 forKeyedSubscript:{v3, v8}];
}

void sub_100260E74(id a1)
{
  qword_100421BF0 = +[NSMutableDictionary dictionary];

  _objc_release_x1();
}

__CFString *MBStringForContainerType(int a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1003C28B0[a1 - 1];
  }
}

uint64_t sub_100260ED8(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Data/Application"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Data/PluginKitPlugin"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Shared/AppGroup"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"System/Data"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"System/Shared"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id sub_100261B78(void *a1)
{
  v1 = [a1 stringByStandardizingPath];
  v2 = [v1 stringByDeletingLastPathComponent];
  v3 = [v1 substringFromIndex:{objc_msgSend(v2, "length") + 1}];
  v4 = [v3 stringByAppendingPathComponent:@"PlaceholderEntitlements.plist"];

  return v4;
}

id sub_10026242C()
{
  if (qword_100421C48 != -1)
  {
    dispatch_once(&qword_100421C48, &stru_1003C27F0);
  }

  v1 = qword_100421C40;

  return v1;
}

id sub_100262480()
{
  if (qword_100421C58 != -1)
  {
    dispatch_once(&qword_100421C58, &stru_1003C2810);
  }

  v1 = qword_100421C50;

  return v1;
}

id sub_1002624D4()
{
  if (qword_100421C68 != -1)
  {
    dispatch_once(&qword_100421C68, &stru_1003C2830);
  }

  v1 = qword_100421C60;

  return v1;
}

void sub_100262B68(id a1)
{
  qword_100421C00 = [NSSet setWithObjects:kCFBundleIdentifierKey, @"ContainerContentClass", kCFBundleVersionKey, @"Path", @"SafeHarborDockingDate", 0];

  _objc_release_x1();
}

void sub_100262BEC(id a1)
{
  qword_100421C10 = [NSSet setWithObjects:&stru_1003C3430, 0];

  _objc_release_x1();
}

void sub_100262C40(id a1)
{
  v4 = sub_100262480();
  v1 = [NSSet setWithObjects:@".com.apple.mobile_container_manager.metadata.plist", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_100421C20;
  qword_100421C20 = v2;
}

void sub_100262CDC(id a1)
{
  v4 = sub_1002624D4();
  v1 = [NSSet setWithObjects:@"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", @"Library/Caches/NeverRestore", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_100421C30;
  qword_100421C30 = v2;
}

void sub_100262D78(id a1)
{
  qword_100421C40 = [NSSet setWithObjects:@"Documents", @"Library", @"GeoJSON", 0];

  _objc_release_x1();
}

void sub_100262DE0(id a1)
{
  qword_100421C50 = [NSSet setWithObjects:@"Library/Caches", @"Library/SyncedPreferences", @"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", @"SystemData/com.apple.chrono", 0];

  _objc_release_x1();
}

void sub_100262E64(id a1)
{
  qword_100421C60 = [NSSet setWithObjects:@"NewsstandArtwork", @"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", @"SystemData/com.apple.chrono", 0];

  _objc_release_x1();
}

void sub_100262EE0(id a1)
{
  qword_100421C70 = [NSSet setWithObjects:&stru_1003C3430, 0];

  _objc_release_x1();
}

void sub_100262F34(id a1)
{
  v4 = sub_100262480();
  v1 = [NSSet setWithObjects:@".com.apple.mobile_container_manager.metadata.plist", @"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_100421C80;
  qword_100421C80 = v2;
}

void sub_100262FD8(id a1)
{
  v4 = sub_1002624D4();
  v1 = [NSSet setWithObjects:@"Library/Saved Application State", @"SystemData/com.apple.AuthenticationServices", @"Library/SplashBoard", 0];
  v2 = [v4 setByAddingObjectsFromSet:v1];
  v3 = qword_100421C90;
  qword_100421C90 = v2;
}

void sub_1002632D4(void *a1)
{
  objc_end_catch();
  objc_begin_catch(a1);
  JUMPOUT(0x100263288);
}

__CFString *MBCKStringForRestoreState(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return off_1003C2908[a1 - 1];
  }
}

id sub_10026634C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v6 = [v4 removeItemAtPath:v5 error:a3];

  return v6;
}

id sub_10026647C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  v8 = [*(a1 + 48) objectAtIndexedSubscript:a2];
  v9 = [v6 moveItemAtPath:v7 toPath:v8 error:a3];

  return v9;
}

void sub_1002669E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 _startStreamWithError:&v12];
  v4 = v12;
  if (v3)
  {
    [*(a1 + 32) setStreamRef:v3];
    v5 = dispatch_group_create();
    [*(a1 + 32) setGroup:v5];

    v6 = [*(a1 + 32) group];
    dispatch_group_enter(v6);

    v7 = [*(a1 + 32) group];
    v8 = [*(a1 + 32) eventQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100266B28;
    block[3] = &unk_1003BD478;
    v9 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v11 = v9;
    dispatch_group_notify(v7, v8, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100266B28(uint64_t a1)
{
  if ([*(a1 + 32) cancelled])
  {
    v2 = [MBError errorWithCode:202 format:@"Event stream cancelled"];
  }

  else
  {
    v2 = 0;
  }

  v5 = v2;
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
  v4 = objc_opt_self();
}

id sub_100266C44(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancelling stream %@", buf, 0xCu);
    v5 = *(a1 + 32);
    _MBLog();
  }

  [*(a1 + 32) setCancelled:1];
  return [*(a1 + 32) _cancel];
}

void sub_10026726C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a2;
  if ([v13 streamRef])
  {
    v10 = +[NSDate now];
    [v13 setDateWhenCallbackWasFired:v10];

    v11 = [v13 eventHandler];
    v12 = v11[2](v11, a3, a4, a5, a6);

    if ((v12 & 1) == 0)
    {
      [v13 _cancel];
    }
  }
}

void sub_1002678C0(uint64_t a1)
{
  if (!*(*(a1 + 32) + 8))
  {
    v2 = [[NSString alloc] initWithFormat:@"backupd-%@", *(*(a1 + 32) + 16)];
    AssertionID = 0;
    v6 = [*(a1 + 32) description];
    v7 = IOPMAssertionCreateWithDescription(@"NoIdleSleepAssertion", v2, v6, 0, 0, *(*(a1 + 32) + 24), @"TimeoutActionTurnOff", &AssertionID);

    if (v7)
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(*(a1 + 32) + 16);
        *buf = 138412802;
        v20 = @"NoIdleSleepAssertion";
        v21 = 2112;
        v22 = v9;
        v23 = 1024;
        v24 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to take %@, n:%@ - IOPMAssertionCreateWithName() returned %#x", buf, 0x1Cu);
        v14 = *(*(a1 + 32) + 16);
LABEL_9:
        _MBLog();
      }
    }

    else
    {
      *(*(a1 + 32) + 8) = AssertionID;
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v11 = *(v10 + 16);
        LODWORD(v10) = *(v10 + 8);
        *buf = 138412802;
        v20 = @"NoIdleSleepAssertion";
        v21 = 2112;
        v22 = v11;
        v23 = 1024;
        v24 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Preventing sleep with %@, n:%@, id:%i", buf, 0x1Cu);
        v12 = *(a1 + 32);
        v15 = *(v12 + 16);
        v17 = *(v12 + 8);
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    LODWORD(v3) = *(v3 + 8);
    *buf = 138412802;
    v20 = @"NoIdleSleepAssertion";
    v21 = 2112;
    v22 = v4;
    v23 = 1024;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Already holding %@, n:%@, id:%i", buf, 0x1Cu);
    v5 = *(a1 + 32);
    v13 = *(v5 + 16);
    v16 = *(v5 + 8);
    _MBLog();
  }

LABEL_11:
}

uint64_t MBGetChargingType()
{
  v0 = IOPSCopyExternalPowerAdapterDetails();
  v1 = v0;
  if (v0)
  {
    v2 = [(__CFDictionary *)v0 objectForKeyedSubscript:@"IsWireless"];
    if ([v2 BOOLValue])
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t MBSetChargeLimit()
{
  v0 = IOPSLimitBatteryLevelRegister();
  if (v0)
  {
    v1 = v0;
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v7 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to register for charge limit: %u", buf, 8u);
LABEL_7:
      _MBLog();
    }
  }

  else
  {
    v3 = IOPSLimitBatteryLevel();
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to set charge limit: %u", buf, 8u);
      goto LABEL_7;
    }
  }

  return 0;
}

void MBCancelChargeLimit()
{
  v0 = IOPSLimitBatteryLevelCancel();
  v1 = MBGetDefaultLog();
  v2 = v1;
  if (v0)
  {
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v4 = v0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Failed to cancel charge limit: %u", buf, 8u);
LABEL_6:
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cancelled charge limit", buf, 2u);
    goto LABEL_6;
  }
}

const __CFString *MBStringForChargingType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unspecified";
  }

  else
  {
    return *(&off_1003C29A8 + a1 - 1);
  }
}

id sub_100269780(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = [[CKCodeOperation alloc] initWithServiceName:v8 functionName:v7 responseClass:a4];

  [v10 setRequest:v9];

  return v10;
}

void sub_100269820(void *a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100269D64;
  v4[3] = &unk_1003C2A08;
  v5 = a2;
  v3 = v5;
  [a1 setCodeOperationCompletionBlock:v4];
}

void sub_100269D64(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!(v7 | v5))
  {
    v5 = [NSError errorWithDomain:@"CKCodeDeser" code:1 userInfo:&__NSDictionary0__struct];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

void sub_10026AADC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

id sub_10026B3F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB atcRestorableForAbsolutePath:error:domainProvider:restorableAccessor:]_block_invoke", "MBRestorePlanDB.m", 808, "readOnlyDB");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB atcRestorableForAbsolutePath:error:domainProvider:restorableAccessor:]_block_invoke", "MBRestorePlanDB.m", 809, "accessorError");
  }

  v6 = v5;
  v7 = [v5 fetchSQL:{@"\n SELECT Domains.domain, \nRestorables.domainID, \nRestorables.inode, Restorables.size, Restorables.birth, Restorables.modified, Restorables.statusChanged, Restorables.userID, Restorables.groupID, Restorables.mode, Restorables.flags, Restorables.protectionClass, \nxattrs, \nrelativePath, \nrestorableID\n FROM   Restorables\n  JOIN  Domains ON\n       (Restorables.domainID = Domains.domainID)\n WHERE  Restorables.absolutePath = %@", *(a1 + 32)}];;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10026B55C;
  v15[3] = &unk_1003C2A58;
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = *(a1 + 40);
  *&v12 = v8;
  *(&v12 + 1) = v10;
  v16 = v11;
  v17 = v12;
  v13 = [v7 enumerateWithError:a3 block:v15];

  return v13;
}

id sub_10026B55C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB atcRestorableForAbsolutePath:error:domainProvider:restorableAccessor:]_block_invoke_2", "MBRestorePlanDB.m", 823, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB atcRestorableForAbsolutePath:error:domainProvider:restorableAccessor:]_block_invoke_2", "MBRestorePlanDB.m", 824, "enumeratorError");
  }

  v6 = v5;
  v7 = [v5 objectOfClass:objc_opt_class() atIndex:0];
  v24 = 2;
  v8 = [v6 unsignedLongLongAtIndex:1];
  if (v7)
  {
    v9 = v8;
    v10 = (*(*(a1 + 48) + 16))();
    if (v10)
    {
      v11 = [v6 fileWithDomain:v10 fromIndex:&v24];
      ++v24;
      v12 = [v6 unsignedLongLongAtIndex:?];
      v13 = (*(*(a1 + 56) + 16))();
      if ((v13 - 1) > 2)
      {
        v21 = [*(a1 + 40) _recordRestorableState:v13 restorableID:v12 domainID:v9 inode:objc_msgSend(v11 restoreType:"inodeNumber") error:{2, a3}];
      }

      else
      {
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          v23 = MBRestorableStateToString(v13);
          *buf = 138412546;
          v26 = v23;
          v27 = 2112;
          v28 = v11;
          _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Invalid restorable state (%@) for %@ when returning atc restorable by absolute path", buf, 0x16u);
        }

        v15 = MBRestorableStateToString(v13);
        sub_10012F400(0, a3, @"Invalid restorable state (%@) for %@ when returning atc restorable by absolute path", v16, v17, v18, v19, v20, v15);

        v21 = 0;
      }
    }

    else
    {
      [MBError errorWithCode:244 path:*(a1 + 32) format:@"No domain found for absolute path"];
      *a3 = v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t sub_10026BC38(uint64_t a1, void *a2, uint64_t *a3)
{
  v23 = a2;
  if (!v23)
  {
    __assert_rtn("[MBRestorePlanDB _atcPathsByDomainNameForPaths:error:]_block_invoke", "MBRestorePlanDB.m", 899, "readOnlyDB");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB _atcPathsByDomainNameForPaths:error:]_block_invoke", "MBRestorePlanDB.m", 900, "accessorError");
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v4)
  {
    v5 = *v40;
LABEL_5:
    v6 = 0;
    while (1)
    {
      if (*v40 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v39 + 1) + 8 * v6);
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = sub_10026C128;
      v37 = sub_10026C138;
      v38 = 0;
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      v8 = [v23 fetchSQL:{@"\n SELECT domain, \ntype, \nsize\n FROM   Domains\n  JOIN  Restorables ON \n       (Restorables.domainID = Domains.domainID)\n WHERE  Restorables.absolutePath = %@", v7, v19, v20}];;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10026C140;
      v24[3] = &unk_1003C2AA8;
      v24[4] = &v33;
      v24[5] = &v29;
      v24[6] = &v25;
      v9 = [v8 enumerateWithError:a3 block:v24];

      if ((v9 & 1) == 0)
      {
        v13 = 1;
        goto LABEL_27;
      }

      if (!v34[5])
      {
        *a3 = [MBError errorWithCode:4 path:v7 format:@"Failed to find domain %@ for ATC absolute path", 0];
        v10 = MBGetDefaultLog();
        if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
        {
          v14 = v34[5];
          v15 = *a3;
          *buf = 138412802;
          v44 = v14;
          v45 = 2112;
          v46 = v7;
          v47 = 2112;
          v48 = v15;
          _os_log_impl(&_mh_execute_header, &v10->super, OS_LOG_TYPE_ERROR, "=plan= Failed to find %@ domain for ATC absolute path %@: %@", buf, 0x20u);
          v19 = v7;
          v20 = *a3;
          v18 = v34[5];
          _MBLog();
        }

        v13 = 1;
        goto LABEL_26;
      }

      v10 = [*(a1 + 40) objectForKeyedSubscript:?];
      if (!v10)
      {
        v10 = objc_alloc_init(_ATCPaths);
        [*(a1 + 40) setObject:v10 forKeyedSubscript:v34[5]];
      }

      v11 = v30[3] & 0xF000;
      if (v11 == 0x4000)
      {
        break;
      }

      if (v11 == 40960)
      {
        v12 = [(_ATCPaths *)v10 symlinks];
        [v12 addObject:v7];
LABEL_24:
        v13 = 3;
        goto LABEL_25;
      }

      if (v11 != 0x8000)
      {
        __assert_rtn("[MBRestorePlanDB _atcPathsByDomainNameForPaths:error:]_block_invoke", "MBRestorePlanDB.m", 949, "S_ISREG(type)");
      }

      if (!v26[3])
      {
        v12 = [(_ATCPaths *)v10 zeroByteFiles];
        [v12 addObject:v7];
        goto LABEL_24;
      }

      v12 = [(_ATCPaths *)v10 assetFiles];
      [v12 addObject:v7];
      v13 = 0;
LABEL_25:

LABEL_26:
LABEL_27:
      _Block_object_dispose(&v25, 8);
      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v33, 8);

      if (v13 != 3 && v13)
      {
        v16 = 0;
        goto LABEL_33;
      }

      if (v4 == ++v6)
      {
        v4 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (v4)
        {
          goto LABEL_5;
        }

        goto LABEL_31;
      }
    }

    v12 = [(_ATCPaths *)v10 directories];
    [v12 addObject:v7];
    goto LABEL_24;
  }

LABEL_31:
  v16 = 1;
LABEL_33:

  return v16;
}

void sub_10026C0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10026C128(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10026C140(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB _atcPathsByDomainNameForPaths:error:]_block_invoke", "MBRestorePlanDB.m", 916, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB _atcPathsByDomainNameForPaths:error:]_block_invoke", "MBRestorePlanDB.m", 917, "enumeratorError");
  }

  v6 = v5;
  v7 = [v5 stringAtIndex:0];
  v8 = *(a1[4] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *(*(a1[5] + 8) + 24) = [v6 unsignedShortAtIndex:1];
  *(*(a1[6] + 8) + 24) = [v6 unsignedLongLongAtIndex:2];

  return 1;
}

id sub_10026C414(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB enumerateDomainNamesPendingRestoreWithError:enumerator:]_block_invoke", "MBRestorePlanDB.m", 991, "readOnlyDB");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB enumerateDomainNamesPendingRestoreWithError:enumerator:]_block_invoke", "MBRestorePlanDB.m", 992, "accessorError");
  }

  v6 = v5;
  v7 = [v5 fetchSQL:{@"\n SELECT domain\n FROM   Domains\n WHERE  engineState != %u", 10}];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10026C52C;
  v10[3] = &unk_1003BE658;
  v11 = *(a1 + 32);
  v8 = [v7 enumerateWithError:a3 block:v10];

  return v8;
}

uint64_t sub_10026C52C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB enumerateDomainNamesPendingRestoreWithError:enumerator:]_block_invoke_2", "MBRestorePlanDB.m", 999, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB enumerateDomainNamesPendingRestoreWithError:enumerator:]_block_invoke_2", "MBRestorePlanDB.m", 1000, "enumerationError");
  }

  v6 = v5;
  v7 = [v5 stringAtIndex:0];
  v8 = (*(*(a1 + 32) + 16))();

  return v8;
}

id sub_10026C68C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB enumerateBundleIDsWithPlaceholderIPAsWithError:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1010, "readOnlyDB");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB enumerateBundleIDsWithPlaceholderIPAsWithError:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1011, "accessorError");
  }

  v6 = v5;
  v7 = [v5 fetchSQL:{@"\n SELECT relativePath\n FROM   Restorables\n  JOIN  Domains ON \n       (Domains.domainID = Restorables.domainID)\n WHERE  Domains.domain = %@", @"PlaceholderDomain"}];;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10026C7A8;
  v10[3] = &unk_1003BE658;
  v11 = *(a1 + 32);
  v8 = [v7 enumerateWithError:a3 block:v10];

  return v8;
}

uint64_t sub_10026C7A8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB enumerateBundleIDsWithPlaceholderIPAsWithError:enumerator:]_block_invoke_2", "MBRestorePlanDB.m", 1020, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB enumerateBundleIDsWithPlaceholderIPAsWithError:enumerator:]_block_invoke_2", "MBRestorePlanDB.m", 1021, "enumerationError");
  }

  v6 = v5;
  v7 = [v5 stringAtIndex:0];
  if ([v7 hasSuffix:@".ipa"])
  {
    v8 = [v7 lastPathComponent];
    v9 = [v8 stringByDeletingPathExtension];

    v10 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t sub_10026C9E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB addRemainingProgress:forDomainNames:error:]_block_invoke", "MBRestorePlanDB.m", 1040, "readOnlyDB");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB addRemainingProgress:forDomainNames:error:]_block_invoke", "MBRestorePlanDB.m", 1041, "accessorError");
  }

  v6 = v5;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v6 fetchCountWithError:a3 sql:{@"\n SELECT domainID\n   FROM Domains\n  WHERE domain = %@;", v12}];
        if (v13 == 0x7FFFFFFFFFFFFFFFLL || ![*(a1 + 40) _addRemainingProgress:*(a1 + 48) forDomainID:v13 domainName:v12 readOnlyDB:v6 error:a3])
        {
          v14 = 0;
          goto LABEL_15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v14 = 1;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_15:

  return v14;
}

void sub_10026D008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 240), 8);
  _Block_object_dispose((v39 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10026D078(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB _addRemainingProgress:forDomainID:domainName:readOnlyDB:error:]_block_invoke", "MBRestorePlanDB.m", 1086, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB _addRemainingProgress:forDomainID:domainName:readOnlyDB:error:]_block_invoke", "MBRestorePlanDB.m", 1087, "enumerationError");
  }

  v6 = v5;
  *(*(*(a1 + 32) + 8) + 24) += [v5 unsignedLongLongAtIndex:0];
  ++*(*(*(a1 + 40) + 8) + 24);

  return 1;
}

uint64_t sub_10026D12C(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB _addRemainingProgress:forDomainID:domainName:readOnlyDB:error:]_block_invoke_2", "MBRestorePlanDB.m", 1118, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB _addRemainingProgress:forDomainID:domainName:readOnlyDB:error:]_block_invoke_2", "MBRestorePlanDB.m", 1119, "enumerationError");
  }

  v6 = v5;
  *(*(a1[4] + 8) + 24) = [v5 unsignedLongLongAtIndex:0];
  *(*(a1[5] + 8) + 24) = [v6 unsignedLongLongAtIndex:1];
  *(*(a1[6] + 8) + 24) = [v6 unsignedLongLongAtIndex:2];
  *(*(a1[7] + 8) + 24) = [v6 unsignedLongLongAtIndex:3];

  return 1;
}

id sub_10026D674(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB fetchPendingRestoreSize:remainingFileCount:totalFileCount:error:]_block_invoke", "MBRestorePlanDB.m", 1205, "readOnlyDB");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB fetchPendingRestoreSize:remainingFileCount:totalFileCount:error:]_block_invoke", "MBRestorePlanDB.m", 1206, "accessorError");
  }

  v6 = v5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v7 = [v5 fetchSQL:{@"\nSELECT assetSize\n FROM  RestorableAssets\n JOIN  Restorables ON\n      (RestorableAssets.inode = Restorables.inode\n   AND RestorableAssets.domainID = Restorables.domainID\n     )\n WHERE RestorableAssets.assetState = %u\n   AND Restorables.restoreState != %u\n   AND Restorables.restoreState != %u\n GROUP BY RestorableAssets.inode", 1, 2, 5}];;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10026D92C;
  v28[3] = &unk_1003C17B8;
  v28[4] = &v29;
  v8 = [v7 enumerateWithError:a3 block:v28];

  if (v8)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v9 = [v6 fetchSQL:{@"\n SELECT \n    SUM(IIF(restoreState == %u, 1, 0)), \n    SUM(IIF(restoreState == %u, 1, 0)), \n    COUNT(*)\n FROM Restorables", 1, 2}];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10026D9CC;
    v15[3] = &unk_1003C2AA8;
    v15[4] = &v24;
    v15[5] = &v20;
    v15[6] = &v16;
    v10 = [v9 enumerateWithError:a3 block:v15];

    if (v10)
    {
      v11 = a1[4];
      if (v11)
      {
        *v11 = v30[3];
      }

      v12 = a1[5];
      if (v12)
      {
        *v12 = v25[3];
      }

      v13 = a1[6];
      if (v13)
      {
        *v13 = v17[3] - v21[3];
      }
    }

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v29, 8);

  return v10;
}

void sub_10026D8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10026D92C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB fetchPendingRestoreSize:remainingFileCount:totalFileCount:error:]_block_invoke_2", "MBRestorePlanDB.m", 1221, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB fetchPendingRestoreSize:remainingFileCount:totalFileCount:error:]_block_invoke_2", "MBRestorePlanDB.m", 1222, "enumerationError");
  }

  v6 = v5;
  *(*(*(a1 + 32) + 8) + 24) += [v5 unsignedLongLongAtIndex:0];

  return 1;
}

uint64_t sub_10026D9CC(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB fetchPendingRestoreSize:remainingFileCount:totalFileCount:error:]_block_invoke_3", "MBRestorePlanDB.m", 1240, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB fetchPendingRestoreSize:remainingFileCount:totalFileCount:error:]_block_invoke_3", "MBRestorePlanDB.m", 1241, "enumerationError");
  }

  v6 = v5;
  *(*(a1[4] + 8) + 24) = [v5 unsignedLongLongAtIndex:0];
  *(*(a1[5] + 8) + 24) = [v6 unsignedLongLongAtIndex:1];
  *(*(a1[6] + 8) + 24) = [v6 unsignedLongLongAtIndex:2];

  return 1;
}

id sub_10026DBF0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB enumerateRestoreFailuresOfType:isFatal:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1266, "readOnlyDB");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB enumerateRestoreFailuresOfType:isFatal:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1267, "accessorError");
  }

  v6 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (*(a1 + 48) == 1)
  {
    v9 = [v5 _enumerateFatalFailuresOfType:v7 error:a3 enumerator:v8];
  }

  else
  {
    v9 = [v5 _enumerateNonFatalFailuresOfType:v7 error:a3 enumerator:v8];
  }

  v10 = v9;

  return v10;
}

void sub_10026DEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10026DF04(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB restoreVerificationSummary:]_block_invoke", "MBRestorePlanDB.m", 1304, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB restoreVerificationSummary:]_block_invoke", "MBRestorePlanDB.m", 1305, "enumerationError");
  }

  v6 = v5;
  v7 = [v5 unsignedIntegerAtIndex:0];
  v8 = [v6 unsignedLongLongAtIndex:1];
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v9 = a1[6];
      goto LABEL_15;
    }

    if (v7 == 4)
    {
      v9 = a1[7];
      goto LABEL_15;
    }
  }

  else
  {
    if (v7 == 1)
    {
      *(*(a1[4] + 8) + 24) = v8;
      goto LABEL_16;
    }

    if (v7 == 2)
    {
      v9 = a1[5];
LABEL_15:
      *(*(v9 + 8) + 24) = v8;
      v7 = 1;
      goto LABEL_16;
    }
  }

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    *buf = 134217984;
    v20 = v7;
    _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Invalid restore verification state: %lu", buf, 0xCu);
  }

  sub_10012F338(@"Invalid restore verification state: %lu", v11, v12, v13, v14, v15, v16, v17, v7);
  *a3 = v7 = 0;
LABEL_16:

  return v7;
}

uint64_t sub_10026E1BC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v6 fetchCountWithError:a3 sql:{@"\n SELECT domainID\n   FROM Domains\n  WHERE domain = %@;", v11}];
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = MBGetDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v21 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "=plan= No domainID to skip found for %@", buf, 0xCu);
            _MBLog();
          }

          v13 = 0;
          if (a3)
          {
            *a3 = 0;
          }

          LODWORD(i) = 1;
          goto LABEL_18;
        }

        if (![*(a1 + 40) _skipDomainID:v12 into:v6 error:a3])
        {
          LODWORD(i) = 0;
          v13 = 0;
          goto LABEL_18;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
      v13 = 1;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_18:

  return (i | v13) & 1;
}

id sub_10026E664(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB enumerateDomainsAndAttributes:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1427, "readOnlyDB");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB enumerateDomainsAndAttributes:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1428, "accessorError");
  }

  v6 = v5;
  v7 = [v5 fetchSQL:{@"\n  SELECT domain, \n         totalZeroByteFiles, \n         totalAssetFiles, \n         totalAssetBytes, \n         totalATCFiles, \n         totalATCBytes\n    FROM Domains\nORDER BY totalAssetBytes"}];;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10026E774;
  v10[3] = &unk_1003BE658;
  v11 = *(a1 + 32);
  v8 = [v7 enumerateWithError:a3 block:v10];

  return v8;
}

uint64_t sub_10026E774(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB enumerateDomainsAndAttributes:enumerator:]_block_invoke_2", "MBRestorePlanDB.m", 1442, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB enumerateDomainsAndAttributes:enumerator:]_block_invoke_2", "MBRestorePlanDB.m", 1443, "enumerationError");
  }

  v6 = v5;
  v7 = [v5 stringAtIndex:0];
  [v6 unsignedIntegerAtIndex:1];
  [v6 unsignedIntegerAtIndex:2];
  [v6 unsignedLongLongAtIndex:3];
  [v6 unsignedLongLongAtIndex:4];
  [v6 unsignedLongLongAtIndex:5];
  v8 = (*(*(a1 + 32) + 16))();

  return v8;
}

id sub_10026E9E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB _domainSummary:fromReadOnly:]_block_invoke", "MBRestorePlanDB.m", 1474, "readOnlyDB");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB _domainSummary:fromReadOnly:]_block_invoke", "MBRestorePlanDB.m", 1475, "accessorError");
  }

  v6 = v5;
  v7 = (*(*(a1 + 40) + 16))();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10026EAFC;
  v10[3] = &unk_1003C0A30;
  v11 = *(a1 + 32);
  v8 = [v7 enumerateWithError:a3 block:v10];

  return v8;
}

uint64_t sub_10026EAFC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB _domainSummary:fromReadOnly:]_block_invoke_2", "MBRestorePlanDB.m", 1479, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB _domainSummary:fromReadOnly:]_block_invoke_2", "MBRestorePlanDB.m", 1480, "enumerationError");
  }

  v6 = v5;
  v7 = [v5 stringAtIndex:0];
  v8 = [v6 numberAtIndex:1];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];

  return 1;
}

id sub_10026EC68(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB topDomainsByItemCount:error:]_block_invoke", "MBRestorePlanDB.m", 1498, "readOnlyDB");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB topDomainsByItemCount:error:]_block_invoke", "MBRestorePlanDB.m", 1499, "creatorError");
  }

  v6 = v5;
  v7 = [v5 fetchSQL:{@"\n SELECT   domain, \n          totalItems\n     FROM Domains\n ORDER BY totalItems\n DESC LIMIT %lu", *(a1 + 32)}];

  return v7;
}

id sub_10026EDCC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[MBRestorePlanDB topDomainsByAssetBytes:error:]_block_invoke", "MBRestorePlanDB.m", 1515, "readOnlyDB");
  }

  if (!a3)
  {
    __assert_rtn("[MBRestorePlanDB topDomainsByAssetBytes:error:]_block_invoke", "MBRestorePlanDB.m", 1516, "creatorError");
  }

  v6 = v5;
  v7 = [v5 fetchSQL:{@"\n SELECT   domain, \n          totalAssetBytes\n     FROM Domains\n ORDER BY totalAssetBytes\n DESC LIMIT %lu", *(a1 + 32)}];

  return v7;
}

void sub_10026F204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10026F21C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_RestoreDomainPlanBase _countsOfRestorablesByState:]_block_invoke", "MBRestorePlanDB.m", 1573, "readOnlyDB");
  }

  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanBase _countsOfRestorablesByState:]_block_invoke", "MBRestorePlanDB.m", 1574, "accessorError");
  }

  v6 = v5;
  v7 = [v5 fetchSQL:{@"\n SELECT restoreState, \n  COUNT(restoreState) AS CountOfStates\n FROM   Restorables\n WHERE  domainID = %llu\n GROUP BY restoreState", *(*(a1 + 32) + 24)}];;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10026F328;
  v10[3] = &unk_1003C17B8;
  v10[4] = *(a1 + 40);
  v8 = [v7 enumerateWithError:a3 block:v10];

  return v8;
}

uint64_t sub_10026F328(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_RestoreDomainPlanBase _countsOfRestorablesByState:]_block_invoke_2", "MBRestorePlanDB.m", 1583, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanBase _countsOfRestorablesByState:]_block_invoke_2", "MBRestorePlanDB.m", 1584, "enumerationError");
  }

  v6 = v5;
  v7 = [v5 numberAtIndex:0];
  v8 = [v6 numberAtIndex:1];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v8 forKeyedSubscript:v7];

  return 1;
}

id sub_10026F734(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkRestorablesMatchingType:state:readOnlyDB:absolutePath:descending:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1677, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkRestorablesMatchingType:state:readOnlyDB:absolutePath:descending:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1678, "enumeratorError");
  }

  v6 = v5;
  v10 = 0;
  v7 = [v5 fileWithDomain:*(*(a1 + 32) + 16) fromIndex:&v10];
  ++v10;
  [v7 setPriority:{objc_msgSend(v6, "unsignedLongAtIndex:")}];
  ++v10;
  v8 = [*(*(a1 + 32) + 8) _recordRestorableState:(*(*(a1 + 40) + 16))() restorableID:objc_msgSend(v6 domainID:"unsignedLongLongAtIndex:") inode:*(*(a1 + 32) + 24) restoreType:objc_msgSend(v7 error:{"inodeNumber"), *(*(a1 + 32) + 32), a3}];

  return v8;
}

unint64_t sub_10026F9BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkNotStartedDirectoriesTopDown:absolutePath:matchingState:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1696, "restorable");
  }

  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkNotStartedDirectoriesTopDown:absolutePath:matchingState:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1697, "enumeratorError");
  }

  v6 = v5;
  v7 = (*(*(a1 + 32) + 16))();
  if (v7 == 5)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= 5 && ((1 << v8) & 0x29) != 0)
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v18 = MBRestorableStateToString(v8);
      *buf = 138412546;
      v20 = v18;
      v21 = 2112;
      v22 = v6;
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Invalid restorable state (%@) for %@ when enumerating not started directories", buf, 0x16u);
    }

    v11 = MBRestorableStateToString(v8);
    sub_10012F400(0, a3, @"Invalid restorable state (%@) for %@ when enumerating not started directories", v12, v13, v14, v15, v16, v11);

    v8 = 0;
  }

  return v8;
}

unint64_t sub_10026FC90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkPlacedDirectoriesBottomUp:absolutePath:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1724, "restorable");
  }

  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkPlacedDirectoriesBottomUp:absolutePath:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1725, "enumeratorError");
  }

  v6 = v5;
  v7 = (*(*(a1 + 32) + 16))();
  if (v7 <= 4 && ((1 << v7) & 0x19) != 0)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v17 = MBRestorableStateToString(v7);
      *buf = 138412546;
      v19 = v17;
      v20 = 2112;
      v21 = v6;
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Invalid restorable state (%@) for %@ when enumerating placed directories", buf, 0x16u);
    }

    v10 = MBRestorableStateToString(v7);
    sub_10012F400(0, a3, @"Invalid restorable state (%@) for %@ when enumerating placed directories", v11, v12, v13, v14, v15, v10);

    v7 = 0;
  }

  return v7;
}

id sub_10026FFA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkUnfinishedSymlinks:absolutePath:matchingState:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1778, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkUnfinishedSymlinks:absolutePath:matchingState:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1779, "enumeratorError");
  }

  v6 = v5;
  v22 = 0;
  v7 = [v5 fileWithDomain:*(*(a1 + 32) + 16) fromIndex:&v22];
  ++v22;
  v8 = [v6 stringAtIndex:?];
  ++v22;
  [v6 unsignedIntAtIndex:?];
  ++v22;
  v9 = [v6 unsignedLongLongAtIndex:?];
  v10 = (*(*(a1 + 40) + 16))();
  if (v10 > 4 || ((1 << v10) & 0x19) == 0)
  {
    v19 = [*(*(a1 + 32) + 8) _recordRestorableState:v10 restorableID:v9 domainID:*(*(a1 + 32) + 24) inode:objc_msgSend(v7 restoreType:"inodeNumber") error:{*(*(a1 + 32) + 32), a3}];
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v21 = MBRestorableStateToString(v10);
      *buf = 138412546;
      v24 = v21;
      v25 = 2112;
      v26 = v7;
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Invalid restorable state (%@) for %@ when enumerating unfinished symlinks", buf, 0x16u);
    }

    v13 = MBRestorableStateToString(v10);
    sub_10012F400(0, a3, @"Invalid restorable state (%@) for %@ when enumerating unfinished symlinks", v14, v15, v16, v17, v18, v13);

    v19 = 0;
  }

  return v19;
}

id sub_100270384(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkUnfinishedZeroByteFiles:absolutePath:matchingState:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1842, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkUnfinishedZeroByteFiles:absolutePath:matchingState:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1843, "enumeratorError");
  }

  v6 = v5;
  v21 = 1;
  v7 = [v5 unsignedLongLongAtIndex:0];
  v8 = [v6 fileWithDomain:*(*(a1 + 32) + 16) fromIndex:&v21];
  ++v21;
  [v6 unsignedIntAtIndex:?];
  v9 = (*(*(a1 + 40) + 16))();
  if (v9 > 4 || ((1 << v9) & 0x19) == 0)
  {
    v18 = [*(*(a1 + 32) + 8) _recordRestorableState:v9 restorableID:v7 domainID:*(*(a1 + 32) + 24) inode:objc_msgSend(v8 restoreType:"inodeNumber") error:{*(*(a1 + 32) + 32), a3}];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v20 = MBRestorableStateToString(v9);
      *buf = 138412546;
      v23 = v20;
      v24 = 2112;
      v25 = v8;
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Invalid restorable state (%@) for %@ when enumerating unfinished zero-byte files", buf, 0x16u);
    }

    v12 = MBRestorableStateToString(v9);
    sub_10012F400(0, a3, @"Invalid restorable state (%@) for %@ when enumerating unfinished zero-byte files", v13, v14, v15, v16, v17, v12);

    v18 = 0;
  }

  return v18;
}

id sub_100270734(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkUnfinishedAssets:absolutePath:matchingState:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1893, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAndMarkUnfinishedAssets:absolutePath:matchingState:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1894, "enumeratorError");
  }

  v6 = v5;
  v7 = [*(a1 + 32) _enumerateAssetsFromResultSet:v5 columnIndex:0 error:a3 enumerator:*(a1 + 40)];

  return v7;
}

uint64_t sub_100270CB0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAssetsToDownload:absolutePath:matchingState:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1979, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanBase _enumerateAssetsToDownload:absolutePath:matchingState:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 1980, "enumeratorError");
  }

  v6 = v5;
  v7 = [v5 unsignedLongLongAtIndex:0];
  v16 = 2;
  v8 = [v6 unsignedIntAtIndex:1];
  v9 = [v6 assetMetadataFromIndex:&v16];
  ++v16;
  v10 = [v6 unsignedLongLongAtIndex:?];
  ++v16;
  v11 = [v6 unsignedCharAtIndex:?];
  ++v16;
  v12 = [v6 stringAtIndex:?];
  v13 = [[_TtC7backupd14MBFetchedAsset alloc] initWithMetadata:v9 protectionClass:v11 originalFileSize:v10 originalInode:v7 linkCount:v8 rpath:v12];
  v14 = (*(*(a1 + 32) + 16))();

  return v14;
}

void sub_1002713F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_100271428(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAndMarkATCRestorables:enumerator:]_block_invoke", "MBRestorePlanDB.m", 2064, "readOnlyDB");
  }

  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanStandard enumerateAndMarkATCRestorables:enumerator:]_block_invoke", "MBRestorePlanDB.m", 2065, "accessorError");
  }

  v6 = v5;
  v7 = [*(a1 + 32) _enumerateAndMarkATCRestorables:v5 totalATCItems:*(*(a1 + 48) + 8) + 24 totalATCFiles:*(*(a1 + 56) + 8) + 24 totalATCBytes:*(*(a1 + 64) + 8) + 24 error:a3 enumerator:*(a1 + 40)];

  return v7;
}

id sub_1002716C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_RestoreDomainPlanStandard _enumerateAndMarkATCRestorables:totalATCItems:totalATCFiles:totalATCBytes:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 2100, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanStandard _enumerateAndMarkATCRestorables:totalATCItems:totalATCFiles:totalATCBytes:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 2101, "enumeratorError");
  }

  v6 = v5;
  v21 = 0;
  v7 = [v5 fileWithDomain:*(*(a1 + 32) + 16) fromIndex:&v21];
  ++v21;
  [v7 setPriority:{objc_msgSend(v6, "unsignedLongAtIndex:")}];
  ++v21;
  v8 = [v6 unsignedLongLongAtIndex:?];
  v9 = (*(*(a1 + 40) + 16))();
  v10 = v9;
  if ((v9 - 4) >= 2)
  {
    if (v9 == 3)
    {
      if ([*(a1 + 32) _setWillRestoreInATCBackgroundPhase:v7 restorableID:v8 error:a3])
      {
        ++**(a1 + 48);
        if ([v7 isRegularFile])
        {
          ++**(a1 + 56);
          **(a1 + 64) += [v7 size];
        }

        v10 = 3;
      }

      else
      {
        v10 = 6;
      }
    }

    v18 = [*(*(a1 + 32) + 8) _recordRestorableState:v10 restorableID:v8 domainID:*(*(a1 + 32) + 24) inode:objc_msgSend(v7 restoreType:"inodeNumber") error:{*(*(a1 + 32) + 32), a3}];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v20 = MBRestorableStateToString(v10);
      *buf = 138412546;
      v23 = v20;
      v24 = 2112;
      v25 = v7;
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Invalid restorable state (%@) for %@ when enumerating and marking ATC restorables", buf, 0x16u);
    }

    v12 = MBRestorableStateToString(v10);
    sub_10012F400(0, a3, @"Invalid restorable state (%@) for %@ when enumerating and marking ATC restorables", v13, v14, v15, v16, v17, v12);

    v18 = 0;
  }

  return v18;
}

void sub_10027246C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1002724A4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_RestoreDomainPlanStandard atcFileInfosMatchingRelativePath:pendingOnly:range:error:]_block_invoke", "MBRestorePlanDB.m", 2227, "readOnlyDB");
  }

  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanStandard atcFileInfosMatchingRelativePath:pendingOnly:range:error:]_block_invoke", "MBRestorePlanDB.m", 2228, "accessorError");
  }

  v6 = v5;
  v7 = *(*(a1 + 32) + 24);
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  if (*(a1 + 80) == 1)
  {
    [v5 fetchSQL:{@"\n SELECT relativePath, \nmode, \npriority, \nabsolutePath\n FROM   Restorables\n WHERE  domainID = %llu\n  AND   (restoreState = %u OR restoreState = %u OR restoreState = %u)\n ORDER BY Restorables.type, Restorables.restorableID ASC\n LIMIT %lu OFFSET %lu;", v7, 3, 4, 6, *(a1 + 72), v9, v14}];
  }

  else
  {
    [v5 fetchSQL:{@"\n SELECT relativePath, \nmode, \npriority, \nabsolutePath\n FROM   Restorables\n WHERE  domainID = %llu\n  AND   (restoreState = %u OR restoreState = %u OR restoreState = %u OR restoreState = %u)\n ORDER BY Restorables.type, Restorables.restorableID ASC\n LIMIT %lu OFFSET %lu;", v7, 3, 4, 5, 6, *(a1 + 72), v9}];
  }
  v10 = ;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100272634;
  v16[3] = &unk_1003C2CC8;
  v17 = *(a1 + 40);
  v15 = *(a1 + 48);
  v11 = v15;
  v18 = v15;
  v12 = [v10 enumerateWithError:a3 block:v16];

  return v12;
}

uint64_t sub_100272634(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_RestoreDomainPlanStandard atcFileInfosMatchingRelativePath:pendingOnly:range:error:]_block_invoke_2", "MBRestorePlanDB.m", 2264, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanStandard atcFileInfosMatchingRelativePath:pendingOnly:range:error:]_block_invoke_2", "MBRestorePlanDB.m", 2265, "enumeratorError");
  }

  v6 = v5;
  if (a1[4])
  {
    v7 = [v5 stringAtIndex:0];
    if (([v7 hasPrefix:a1[4]] & 1) == 0)
    {
      ++*(*(a1[6] + 8) + 24);
      v12 = a1[5];
      v10 = +[NSNull null];
      v11 = v12;
      goto LABEL_8;
    }
  }

  v8 = [v6 unsignedShortAtIndex:1];
  v9 = [v6 unsignedIntAtIndex:2];
  v7 = [v6 stringAtIndex:3];
  v10 = [MBFileInfo fileInfoWithAbsolutePath:v7 mode:v8 priority:v9];
  v11 = a1[5];
LABEL_8:
  [v11 addObject:v10];

  return 1;
}

uint64_t sub_100273120(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_RestoreDomainPlanATC _enumerate:error:block:]_block_invoke", "MBRestorePlanDB.m", 2397, "readOnlyDB");
  }

  if (!a3)
  {
    __assert_rtn("[_RestoreDomainPlanATC _enumerate:error:block:]_block_invoke", "MBRestorePlanDB.m", 2398, "accessorError");
  }

  v6 = v5;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  v19 = v8 == 0;
  if (!v8)
  {
    v9 = v7;
    goto LABEL_14;
  }

  v18 = a3;
  v9 = 0;
  v10 = *v21;
LABEL_5:
  v11 = 0;
  v12 = v9;
  while (1)
  {
    if (*v21 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v13 = *(*(&v20 + 1) + 8 * v11);
    v14 = objc_autoreleasePoolPush();
    v15 = (*(*(a1 + 40) + 16))();
    v9 = v12;

    objc_autoreleasePoolPop(v14);
    if (!v15)
    {
      break;
    }

    v11 = v11 + 1;
    v12 = v9;
    if (v8 == v11)
    {
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        goto LABEL_5;
      }

      break;
    }
  }

  if (v9)
  {
    v16 = v9;
    *v18 = v9;
LABEL_14:

    v15 = v19;
  }

  return v15;
}

void sub_100273304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  objc_begin_catch(exception_object);
  if (v10)
  {
    v11 = v10;
    *a10 = v10;
    objc_end_catch();
    JUMPOUT(0x100273278);
  }

  objc_exception_rethrow();
}

BOOL sub_100273C10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_ROPlanDB _childFailuresOfErrorID:error:]_block_invoke", "MBRestorePlanDB.m", 2583, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[_ROPlanDB _childFailuresOfErrorID:error:]_block_invoke", "MBRestorePlanDB.m", 2584, "enumerationError");
  }

  v6 = v5;
  v13 = 1;
  v7 = [v5 unsignedLongLongAtIndex:0];
  v8 = [*(a1 + 32) _childFailuresOfErrorID:v7 error:a3];
  if (v8)
  {
    v9 = [v6 _failureAtIndex:&v13 childFailures:v8];
    [*(a1 + 40) addObject:v9];
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 134218242;
      v15 = v7;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=plan= Failed fetching child errors of error ID: %llu from %@", buf, 0x16u);
      v12 = *(a1 + 32);
      _MBLog();
    }
  }

  return v8 != 0;
}

uint64_t sub_100273EDC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_ROPlanDB _enumerateFatalFailuresOfType:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 2620, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[_ROPlanDB _enumerateFatalFailuresOfType:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 2621, "enumerationError");
  }

  v6 = v5;
  v13 = 1;
  v7 = [*(a1 + 32) _childFailuresOfErrorID:objc_msgSend(v5 error:{"unsignedLongLongAtIndex:", 0), a3}];
  if (v7)
  {
    v8 = [v6 _failureAtIndex:&v13 childFailures:v7];
    ++v13;
    [v6 unsignedIntegerAtIndex:?];
    ++v13;
    v9 = [v6 stringAtIndex:?];
    ++v13;
    v10 = [v6 stringAtIndex:?];
    ++v13;
    [v6 unsignedLongLongAtIndex:?];
    v11 = (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_100274184(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!v5)
  {
    __assert_rtn("[_ROPlanDB _enumerateNonFatalFailuresOfType:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 2656, "rs");
  }

  if (!a3)
  {
    __assert_rtn("[_ROPlanDB _enumerateNonFatalFailuresOfType:error:enumerator:]_block_invoke", "MBRestorePlanDB.m", 2657, "enumerationError");
  }

  v6 = v5;
  v12 = 0;
  v7 = [v5 _failureAtIndex:&v12 childFailures:&__NSArray0__struct];
  ++v12;
  [v6 unsignedIntegerAtIndex:?];
  ++v12;
  v8 = [v6 stringAtIndex:?];
  ++v12;
  v9 = [v6 stringAtIndex:?];
  ++v12;
  [v6 unsignedLongLongAtIndex:?];
  v10 = (*(*(a1 + 32) + 16))();

  return v10;
}

BOOL sub_100274478(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  if ([v5 fetchCountWithError:a3 sql:{@"\nUPDATE Errors\n   SET count = count + 1\n WHERE errorDomain = %@ \n   AND errorCode = %lld \n   AND domainID = %lld \n   AND restoreType = %u \n   AND inode IS %@ \n   AND restorableID IS %@ \n RETURNING errorID;", *(a1 + 32), *(a1 + 64), *(a1 + 72), *(a1 + 80), v6, *(a1 + 48)}] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v5 _insertFailure:*(a1 + 56) domainID:*(a1 + 72) restoreType:*(a1 + 80) inode:*(a1 + 40) restorableID:*(a1 + 48) error:a3];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

id MBDescriptionForStateSummaryDictionary(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  for (i = 0; i != 6; ++i)
  {
    v4 = [NSNumber numberWithUnsignedInteger:i];
    v5 = [v1 objectForKeyedSubscript:v4];
    v6 = [v5 integerValue];

    if (v6)
    {
      v7 = MBRestorableStateToString(i);
      v8 = [NSString stringWithFormat:@"%@: %lu", v7, v6];
      [v2 addObject:v8];
    }
  }

  v9 = [v2 componentsJoinedByString:{@", "}];

  return v9;
}

uint64_t sub_100274C60(FTS *a1, uint64_t a2, uint64_t a3)
{
  v6 = fts_read(a1);
  if (v6)
  {
    v7 = v6;
    do
    {
      fts_info = v7->fts_info;
      if (fts_info == 1)
      {
        if (a2 && ((*(a2 + 16))(a2, v7) & 1) == 0)
        {
          fts_set(a1, v7, 4);
        }
      }

      else if (fts_info != 6 && a3 != 0 && fts_info == 8)
      {
        (*(a3 + 16))(a3, v7);
      }

      v7 = fts_read(a1);
    }

    while (v7);
  }

  return fts_close(a1);
}

uint64_t sub_100274D1C(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  sub_1000421D4();
  bzero(v15, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(v4, v15))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v3 | 0x18;
  if ((v3 & 0x1C) != 0)
  {
    v5 = v3;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_100042160;
  v11[3] = &unk_1003BBE68;
  v12 = v5;
  v13 = v2;
  v14 = v1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1000421A4;
  v7[3] = &unk_1003BBE88;
  v8 = v2;
  v9 = v5;
  v10 = v1;
  sub_100041FA0(v15, v11, v7);
  return 0;
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

NSRange NSRangeFromString(NSString *aString)
{
  v3 = _NSRangeFromString(aString);
  length = v3.length;
  location = v3.location;
  result.length = length;
  result.location = location;
  return result;
}