void sub_10007E1A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [v5 cleanupPending];
    v9 = [v8 BOOLValue];

    v10 = BLServiceDatabaseManagerLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12 = *(a1 + 32);
        *buf = 138543362;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Database]: in finalizing or canceling, and there was a pending cleanup, so canceling", buf, 0xCu);
      }

      v13 = objc_retainBlock(*(a1 + 48));
      v10 = v13;
      if (v13)
      {
        (v13[2].isa)(v13);
      }

      v14 = &off_1001298C0;
    }

    else
    {
      if (v11)
      {
        v15 = *(a1 + 32);
        *buf = 138543362;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Database]: in finalizing or canceling, and there was no pending cleanup, so finalizing", buf, 0xCu);
      }

      v14 = &off_100129998;
    }

    [v5 setState:v14];
    v16 = *(*(a1 + 40) + 24);
    v21 = 0;
    [v16 save:&v21];
    v7 = v21;
  }

  if (v7)
  {
    v17 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Database]: Error encountered during finalize/cancel. %@", buf, 0x16u);
    }
  }

  v19 = objc_retainBlock(*(a1 + 56));
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19, v7);
  }
}

void sub_10007E52C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    if (v9)
    {
      (*(v6 + 2))(v6);
    }

    else
    {
      v8 = [v5 objectForKeyedSubscript:*(a1 + 32)];
      (v7)[2](v7, v8);
    }
  }
}

void sub_10007E724(id *a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  if (v5)
  {
    goto LABEL_2;
  }

  v7 = objc_alloc_init(NSMutableSet);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = v4;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (!v10)
  {
    v34 = 0;
    goto LABEL_19;
  }

  v11 = v10;
  v34 = 0;
  v12 = *v42;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v42 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v41 + 1) + 8 * i);
      v15 = [v14 downloadID];
      [v7 addObject:v15];
      v16 = [v14 state];
      v17 = [v16 integerValue];

      if ([a1[4] canResumeDownloadWithState:v17])
      {
        [v14 setState:&off_100129848];
        v34 = 1;
      }

      else
      {
        v18 = NSStringFromBLDownloadState();
        v19 = [NSString stringWithFormat:@"cannot resume download with state: %@", v18];
        v20 = sub_1000A8F44(26, 0, v19);

        if (v20)
        {
          [v6 setObject:v20 forKeyedSubscript:v15];
          goto LABEL_15;
        }
      }

      v20 = BLServiceDatabaseManagerLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v46 = v15;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Database]: Download resumed.", buf, 0xCu);
      }

LABEL_15:
    }

    v11 = [v9 countByEnumeratingWithState:&v41 objects:v50 count:16];
  }

  while (v11);
LABEL_19:

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = a1[5];
  v22 = [v21 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v38;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v38 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v37 + 1) + 8 * j);
        if (([v7 containsObject:v26]& 1) == 0)
        {
          v27 = sub_1000A8F44(38, 0, @"missing download");
          [v6 setObject:v27 forKeyedSubscript:v26];
        }

        v28 = [v6 objectForKeyedSubscript:v26];
        if (v28)
        {
          v29 = BLServiceDatabaseManagerLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v46 = v26;
            v47 = 2112;
            v48 = v28;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Database]: Error encountered resuming download:  %@", buf, 0x16u);
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v23);
  }

  if ((v34 & 1) == 0)
  {
    v5 = 0;
    v4 = v33;
LABEL_36:

    goto LABEL_37;
  }

  v30 = *(a1[4] + 3);
  v36 = 0;
  [v30 save:&v36];
  v5 = v36;

  v4 = v33;
  if (v5)
  {
LABEL_2:
    v7 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[5];
      *buf = 138412546;
      v46 = v8;
      v47 = 2112;
      v48 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[Database]: Error encountered resuming downloads: %@. Error:  %@", buf, 0x16u);
    }

    goto LABEL_36;
  }

LABEL_37:
  v31 = objc_retainBlock(a1[6]);
  v32 = v31;
  if (v31)
  {
    (*(v31 + 2))(v31, v5, v6);
  }
}

void sub_10007ED40(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  if (!(v5 | v6))
  {
    v5 = sub_1000A92E0(*(a1 + 32));
  }

  if (v5)
  {
    v7 = BLServiceDatabaseManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Database]: Error encountered fetching download : %@", &v11, 0x16u);
    }
  }

  v9 = objc_retainBlock(*(a1 + 40));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v6, v5);
  }
}

void sub_10007F038(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"BLDownloadInfo"];
  [v2 setPredicate:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 24);
  v8 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v8];
  v5 = v8;
  v6 = objc_retainBlock(*(a1 + 48));
  if (v6)
  {
    v7 = [v5 bldm_bookLibraryDatabaseErrorInFunction:"-[BLDatabaseManager _fetchDownloadsWithPredicate:sync:block:]_block_invoke"];
    v6[2](v6, v4, v7);
  }
}

void sub_10007F36C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007F4F4;
  v15[3] = &unk_10011DBA0;
  v16 = *(a1 + 32);
  v7 = [v5 indexOfObjectPassingTest:v15];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
    if (v6)
    {
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = v7;
    v9 = [v5 objectAtIndexedSubscript:v7];
    v11 = [v5 mutableCopy];
    [v11 removeObjectAtIndex:v10];
    v8 = [v11 copy];

    if (v6 | v9)
    {
      goto LABEL_6;
    }
  }

  v12 = sub_1000A92E0(*(a1 + 32));

  v9 = 0;
  v6 = v12;
LABEL_6:
  v13 = objc_retainBlock(*(a1 + 40));
  if (v13)
  {
    v14 = [v6 bldm_bookLibraryDatabaseErrorInFunction:"-[BLDatabaseManager _fetchDownloadPolicyInfoEntityWithID:relatedPolicyWithStorePlaylistIdentifier:block:]_block_invoke"];
    v13[2](v13, v9, v8, v14);
  }
}

id sub_10007F4F4(uint64_t a1, void *a2)
{
  v3 = [a2 policyID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10007F5FC(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"BLDownloadPolicyInfo"];
  [v2 setPredicate:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 24);
  v8 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v8];
  v5 = v8;
  v6 = objc_retainBlock(*(a1 + 48));
  if (v6)
  {
    v7 = [v5 bldm_bookLibraryDatabaseErrorInFunction:"-[BLDatabaseManager _fetchDownloadPoliciesWithPredicate:block:]_block_invoke"];
    v6[2](v6, v4, v7);
  }
}

uint64_t MaxPriorityForUrgency(uint64_t a1)
{
  if ((a1 - 2) >= 3)
  {
    return 50;
  }

  else
  {
    return 200 * a1 - 200;
  }
}

uint64_t PurgePriority(int a1, void *a2)
{
  [a2 timeIntervalSinceNow];
  v4 = v3 / -86400.0;
  v5 = 7.0;
  if (v4 <= 7.0)
  {
    v7 = 0x4079000000000000;
LABEL_8:
    v6 = *&v7;
    goto LABEL_9;
  }

  v5 = 14.0;
  if (v4 <= 14.0)
  {
    v7 = 0x4069000000000000;
    goto LABEL_8;
  }

  v5 = 31.0;
  v6 = 50.0;
  if (v4 > 31.0)
  {
    v5 = 50.0;
    v6 = -31.0;
  }

LABEL_9:
  v8 = v5 - v4 + v6;
  v9 = v8;
  if (a1)
  {
    v9 = v8 + 200;
  }

  return v9 & ~(v9 >> 63);
}

char *FileSizeOfBook(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 attributesOfItemAtPath:v1 error:0];
  v4 = v3;
  if (v3)
  {
    v5 = sub_10007FEDC(v3, v3);
    v6 = [v4 fileType];
    v7 = [NSFileTypeDirectory isEqualToString:v6];

    if (v7)
    {
      v8 = [v2 subpathsAtPath:v1];
      v9 = [v8 objectEnumerator];
      v10 = [v9 nextObject];
      if (v10)
      {
        v11 = v10;
        do
        {
          v12 = [v1 stringByAppendingPathComponent:v11];
          v13 = [v12 stringByResolvingSymlinksInPath];
          v14 = [v2 attributesOfItemAtPath:v13 error:0];
          v5 = &v5[sub_10007FEDC(v14, v14)];

          v15 = [v9 nextObject];

          v11 = v15;
        }

        while (v15);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = 134218242;
    v19 = v5;
    v20 = 2112;
    v21 = v1;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Calculated %ld for %@", &v18, 0x16u);
  }

  return v5;
}

id sub_10007FEDC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 && ([v2 fileType], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(NSFileTypeDirectory, "isEqualToString:", v4), v4, (v5 & 1) == 0))
  {
    v7 = [v3 objectForKey:NSFileSize];
    v8 = v7;
    if (v7)
    {
      v6 = [v7 integerValue];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id DeleteBook(void *a1, char **a2)
{
  v3 = a1;
  v4 = FileSizeOfBook(v3);
  v5 = +[NSFileManager defaultManager];
  v10 = 0;
  v6 = [v5 removeItemAtPath:v3 error:&v10];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    v8 = BLBookCacheDeleteLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to purge book at %@. Error:  %@", buf, 0x16u);
    }

    v4 = 0;
  }

  if (a2)
  {
    *a2 = v4;
  }

  return v6;
}

void sub_100081E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100081E8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100081EA4(uint64_t a1)
{
  v2 = BLBookInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1 + 32) + 48);
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[Install-Decrypt-Op]: Running decrypt %@", buf, 0xCu);
  }

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v14 = 0;
  v7 = [v5 _decryptWithSession:v6 error:&v14];
  v8 = v14;
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  *(v9 + 16) = v8;
  v11 = v8;

  *(*(a1 + 32) + 8) = v7;
  objc_autoreleasePoolPop(v4);
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

void sub_100081FE8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    v3 = *(*(v2 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100082284(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v16 = objc_begin_catch(a1);
      v17 = [v16 name];
      v18 = [v17 isEqualToString:NSFileHandleOperationException];

      if ((v18 & 1) == 0)
      {
        objc_exception_rethrow();
      }

      v19 = BLBookInstallLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [v16 reason];
        LODWORD(buf) = a11;
        *(&buf + 4) = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[Install-Decrypt-Op]: Failed with reason: %@", &buf, 0xCu);
      }

      v21 = [v16 reason];
      sub_1000A8F44(7, v21, 0);
      objc_claimAutoreleasedReturnValue();

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(a1);
    }

    JUMPOUT(0x1000821F0);
  }

  _Unwind_Resume(a1);
}

void sub_1000823C4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1000823D8);
  }

  JUMPOUT(0x1000823ECLL);
}

void sub_100083AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100083B24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100083B3C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = a3;
  objc_opt_class();
  v10 = BUDynamicCast();

  if (v10)
  {
    v11 = [v10 statusCode];
  }

  else
  {
    v11 = -1;
  }

  v12 = BLBookInstallLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    *buf = 138544130;
    v45 = v13;
    v46 = 2112;
    v47 = v7;
    v48 = 2048;
    v49 = v11;
    v50 = 2112;
    v51 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Artwork-Helper]: Download task completed. Temp location: %@, statusCode: %ld, error: %@", buf, 0x2Au);
  }

  if (v8)
  {
    v14 = *(*(a1 + 56) + 8);
    v15 = v8;
    v16 = *(v14 + 40);
    *(v14 + 40) = v15;
  }

  else if ((v11 - 300) > 0xFFFFFFFFFFFFFF9BLL)
  {
    v16 = +[NSFileManager defaultManager];
    v21 = [*(a1 + 40) path];
    v22 = [v16 fileExistsAtPath:v21];

    if (v22)
    {
      v23 = BLBookInstallLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 32);
        v25 = *(a1 + 40);
        *buf = 138543618;
        v45 = v24;
        v46 = 2112;
        v47 = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Artwork-Helper]: Removing existing file at %@", buf, 0x16u);
      }

      v26 = [*(a1 + 40) path];
      v27 = *(*(a1 + 56) + 8);
      obj = *(v27 + 40);
      v28 = [v16 removeItemAtPath:v26 error:&obj];
      objc_storeStrong((v27 + 40), obj);

      if ((v28 & 1) == 0)
      {
        v29 = BLBookInstallLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = *(a1 + 32);
          *buf = 138543618;
          v45 = v30;
          v46 = 2112;
          v47 = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Artwork-Helper]: File delete failed: %@", buf, 0x16u);
        }
      }
    }

    v31 = *(a1 + 40);
    v32 = *(*(a1 + 56) + 8);
    v40 = *(v32 + 40);
    v33 = [v16 moveItemAtURL:v7 toURL:v31 error:&v40];
    objc_storeStrong((v32 + 40), v40);
    if (v33)
    {
      v34 = [*(a1 + 40) path];
      v35 = *(*(a1 + 64) + 8);
      v36 = *(v35 + 40);
      *(v35 + 40) = v34;

      v37 = BLBookInstallLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *(a1 + 32);
        v39 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138543618;
        v45 = v38;
        v46 = 2114;
        v47 = v39;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Artwork-Helper]: Artwork downloaded to %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v42 = @"BLKeyHTTPResponseCode";
    v16 = [NSNumber numberWithInteger:v11];
    v43 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v18 = [NSError errorWithDomain:@"BLErrorDomain" code:39 userInfo:v17];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  dispatch_group_leave(*(a1 + 48));
}

id sub_100083F70(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v4 lowercaseString];
    v7 = [v3 objectForKey:v8];
  }

  return v7;
}

uint64_t sub_10008412C(uint64_t a1)
{
  qword_10013EBF0 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000842A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000842C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000842D8(void *a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = Current;
  v4 = a1[4];
  if (v4)
  {
    v5 = *(a1[6] + 8);
    v6 = v4;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
LABEL_5:

    goto LABEL_6;
  }

  if (Current - *(a1[5] + 16) < 300.0)
  {
    v8 = [NSDictionary alloc];
    v9 = [v8 initWithObjectsAndKeys:{&off_1001299E0, kCPFreeSpaceEffortLevelKey, 0}];
    v10 = *(a1[6] + 8);
    v7 = *(v10 + 40);
    *(v10 + 40) = v9;
    goto LABEL_5;
  }

LABEL_6:
  v11 = *(*(a1[6] + 8) + 40);
  if (!v11 || ([v11 objectForKeyedSubscript:kCPFreeSpaceEffortLevelKey], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "integerValue"), v12, v13))
  {
    *(a1[5] + 16) = v3;
  }
}

void sub_100084630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100084654(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008466C(void *a1)
{
  v2 = [[BAAudiobookProductionInfo alloc] initWithContext:a1[4]];
  [(BAAudiobookProductionInfo *)v2 setStoreID:a1[9]];
  [(BAAudiobookProductionInfo *)v2 setRacGUID:a1[5]];
  v3 = a1[6];
  v4 = a1[4];
  v5 = *(a1[8] + 8);
  obj = 0;
  v6 = [v3 q_saveWithMoc:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

void sub_100084874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10008489C(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchRequestForProductionInfoWithStoreID:*(a1 + 56)];
  [v2 setReturnsObjectsAsFaults:0];
  v3 = *(a1 + 32);
  v11 = 0;
  v4 = [v3 q_fetchAudiobookProductionInfosWithRequest:v2 error:&v11];
  v5 = v11;
  v6 = v11;
  if (!v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
  }

  v7 = [v4 firstObject];
  v8 = [v7 racGUID];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_100084A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100084AB8(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchRequestForProductionInfoWithStoreID:*(a1 + 64)];
  v3 = *(a1 + 32);
  v12 = 0;
  v4 = [v3 q_fetchAudiobookProductionInfosWithRequest:v2 error:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = [v4 firstObject];
    if (v6)
    {
      [*(a1 + 40) deleteObject:v6];
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v11 = 0;
      v9 = [v7 q_saveWithMoc:v8 error:&v11];
      v10 = v11;

      *(*(*(a1 + 48) + 8) + 24) = v9;
      v5 = v10;
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
  }
}

void sub_100084DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100084E08(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [[BABookletMigrationInfo alloc] initWithContext:*(a1 + 40)];
        -[BABookletMigrationInfo setStoreID:](v8, "setStoreID:", [v7 longLongValue]);
        [(BABookletMigrationInfo *)v8 setMigrationState:*(a1 + 72)];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(*(a1 + 64) + 8);
  obj = 0;
  v12 = [v9 q_saveWithMoc:v10 error:&obj];
  objc_storeStrong((v11 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v12;
}

void sub_10008511C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100085144(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v11 = v5;
  if (a2)
  {
    v6 = [a2 firstObject];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 32) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }
}

void sub_100085364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10008538C(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchRequestForBookletMigrationInfoWithStoreIDs:*(a1 + 40)];
  [v2 setReturnsObjectsAsFaults:0];
  v3 = *(a1 + 32);
  v20 = 0;
  v4 = [v3 q_fetchBookletMigrationInfoWithRequest:v2 error:&v20];
  v5 = v20;
  v6 = v20;
  if (v4)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v16 + 1) + 8 * v14) createInfo];
          [*(*(*(a1 + 56) + 8) + 40) addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  }
}

void sub_1000856D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000856F8(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchRequestForBookletMigrationInfoWithStates:*(a1 + 40)];
  [v2 setReturnsObjectsAsFaults:0];
  v3 = *(a1 + 32);
  v20 = 0;
  v4 = [v3 q_fetchBookletMigrationInfoWithRequest:v2 error:&v20];
  v5 = v20;
  v6 = v20;
  if (v4)
  {
    v7 = objc_alloc_init(NSMutableArray);
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v4;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v16 + 1) + 8 * v14) createInfo];
          [*(*(*(a1 + 56) + 8) + 40) addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  }
}

void sub_1000859C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000859EC(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchRequestForBookletMigrationInfoWithStoreID:*(a1 + 64)];
  v3 = *(a1 + 32);
  v12 = 0;
  v4 = [v3 q_fetchBookletMigrationInfoWithRequest:v2 error:&v12];
  v5 = v12;
  if (v4)
  {
    v6 = [v4 firstObject];
    if (v6)
    {
      [*(a1 + 40) deleteObject:v6];
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v11 = 0;
      v9 = [v7 q_saveWithMoc:v8 error:&v11];
      v10 = v11;

      *(*(*(a1 + 48) + 8) + 24) = v9;
      v5 = v10;
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
  }
}

void sub_100085C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_100085C90(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchRequestForBookletMigrationInfoExcludingStates:*(a1 + 40)];
  v3 = *(a1 + 32);
  v20 = 0;
  v4 = [v3 q_fetchBookletMigrationInfoWithRequest:v2 error:&v20];
  v5 = v20;
  if ([v4 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 48) deleteObject:*(*(&v16 + 1) + 8 * v10)];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    v15 = 0;
    v13 = [v11 q_saveWithMoc:v12 error:&v15];
    v14 = v15;

    *(*(*(a1 + 56) + 8) + 24) = v13;
    v5 = v14;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v5);
  }
}

double sub_100086600(uint64_t a1)
{
  *(*(a1 + 32) + 8) = *(*(a1 + 40) + 8);
  *(*(a1 + 32) + 16) = *(*(a1 + 40) + 16);
  result = *(*(a1 + 40) + 32);
  *(*(a1 + 32) + 32) = result;
  *(*(a1 + 32) + 40) = *(*(a1 + 40) + 40);
  *(*(a1 + 32) + 48) = *(*(a1 + 40) + 48);
  *(*(a1 + 32) + 56) = *(*(a1 + 40) + 56);
  *(*(a1 + 32) + 80) = *(*(a1 + 40) + 80);
  return result;
}

double sub_1000867C8(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100086948(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 48);
  if (v2 < 0)
  {
    v2 = *(v1 + 16);
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

uint64_t sub_100086A14(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 56);
  if (v2 < 0)
  {
    v2 = *(v1 + 40);
  }

  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

id sub_100086AA8(uint64_t a1)
{
  [*(*(a1 + 32) + 64) removeAllObjects];
  v2 = *(*(a1 + 32) + 72);

  return [v2 removeAllObjects];
}

double sub_100086BE4(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 32) = result;
  return result;
}

void sub_100086D68(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = v3;

    v6 = objc_alloc_init(NSMutableArray);
    v7 = *(a1 + 32);
    v8 = *(v7 + 72);
    *(v7 + 72) = v6;

    v2 = *(*(a1 + 32) + 64);
  }

  if ([v2 count] >= 0x78)
  {
    [*(*(a1 + 32) + 64) removeObjectAtIndex:0];
    [*(*(a1 + 32) + 72) removeObjectAtIndex:0];
  }

  v10 = [[NSNumber alloc] initWithDouble:CFAbsoluteTimeGetCurrent()];
  v9 = [[NSNumber alloc] initWithLongLong:*(*(a1 + 32) + 16)];
  [*(*(a1 + 32) + 64) addObject:v10];
  [*(*(a1 + 32) + 72) addObject:v9];
  [*(a1 + 32) _updateStatisticsFromSnapshots];
}

uint64_t sub_100087034(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008704C(uint64_t a1)
{
  v2 = [NSString alloc];
  v7.receiver = *(a1 + 32);
  v7.super_class = BLOperationProgress;
  v3 = objc_msgSendSuper2(&v7, "description");
  v4 = [v2 initWithFormat:@"%@: %lld / %lld @ %.3f (%.2f seconds)", v3, *(*(a1 + 32) + 16), *(*(a1 + 32) + 40), *(*(a1 + 32) + 8), *(*(a1 + 32) + 32)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100087944(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v13 = objc_begin_catch(a1);
      v14 = BLServiceLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [v13 description];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Exception decoding policy: %{public}@", &buf, 0xCu);
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(a1);
    }

    JUMPOUT(0x10008789CLL);
  }

  _Unwind_Resume(a1);
}

void sub_100088AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100088ABC(uint64_t a1)
{
  result = [*(a1 + 32) dq_addOrUpdateDownloadPolicyWithInfo:*(a1 + 40) withPolicyID:*(a1 + 48) storePlaylistIdentifier:*(a1 + 56) updateAssociated:*(a1 + 72)];
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

void sub_100088CDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BLServiceLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) policyID];
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[Download-Policy]: failed to update the download policy for the policyID: %@.  Error:  %@", &v6, 0x16u);
    }
  }
}

void sub_100088EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100088EFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100088F14(uint64_t a1)
{
  v5 = [*(a1 + 32) policies];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000890AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000890C4(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 40) objectForKey:a1[5]];

  return _objc_release_x1();
}

void sub_1000891D0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    [v2 removeObjectForKey:*(a1 + 40)];
    if (![*(*(a1 + 32) + 40) count])
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 40);
      *(v3 + 40) = 0;
    }
  }
}

void sub_1000892F8(void *a1)
{
  if (!*(a1[4] + 40))
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = a1[4];
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = [[NSNumber alloc] initWithLongLong:a1[6]];
  [*(a1[4] + 40) setObject:v5 forKey:a1[5]];
}

void sub_1000896C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BLServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) count];
    *buf = 134217984;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[Download-Policy]: Initialized with %lu download policies", buf, 0xCu);
  }

  v6 = [*(a1 + 40) dispatchQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000897FC;
  v9[3] = &unk_10011D1A8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(v6, v9);
}

void sub_1000897FC(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) dq_addOrUpdateInMemoryPolicy:*(*(&v7 + 1) + 8 * v6) updateAssociated:{0, v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

uint64_t sub_10008A88C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10008A968(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 32);
  v4 = (v2 + 32);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

uint64_t start()
{
  v0 = BLDaemonLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Daemon starting up.", buf, 2u);
  }

  xpc_set_event_stream_handler("com.apple.nsurlsessiond-events", 0, &stru_10011DDB8);
  v1 = objc_autoreleasePoolPush();
  v2 = +[BLDaemon daemon];
  [v2 start];

  objc_autoreleasePoolPop(v1);
  v3 = +[NSRunLoop mainRunLoop];
  [v3 run];

  v4 = BLDaemonLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Daemon exited.", v6, 2u);
  }

  return 0;
}

void sub_10008B548(uint64_t a1)
{
  v2 = [*(a1 + 32) reconnectTimer];

  if (v2)
  {
    v3 = [*(a1 + 32) reconnectTimer];
    dispatch_source_cancel(v3);

    [*(a1 + 32) setReconnectTimer:0];
  }

  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 32) databaseManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008B65C;
  v5[3] = &unk_10011DDE0;
  objc_copyWeak(&v6, &location);
  [v4 fetchListOfAllDownloadCandidatesWithCompletion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void sub_10008B638(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10008B65C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dispatchQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008B724;
    v7[3] = &unk_10011D1A8;
    v7[4] = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_10008B810(uint64_t a1)
{
  if ([*(a1 + 32) dq_setSessionTaskPriorityToHighForDownloadID:*(a1 + 40)])
  {
    v2 = objc_retainBlock(*(a1 + 48));
    if (v2)
    {
      v7 = v2;
      (*(v2 + 2))(v2, 0);
      v2 = v7;
    }
  }

  else
  {
    v3 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 138543362;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Reprioritized download", buf, 0xCu);
    }

    v5 = [*(a1 + 32) downloadPipelineQueue];
    [v5 markDownloadAsHighPriorityWithDownloadID:*(a1 + 40)];

    v6 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10008B9A8;
    v8[3] = &unk_10011DE08;
    v9 = *(a1 + 48);
    [v6 dq_pumpDownloadsWithCompletion:v8];
  }
}

void sub_10008B9A8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = objc_retainBlock(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

void sub_10008BAE8(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008BB8C;
  v4[3] = &unk_10011D648;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 updateAllInterruptedDownloadsToTheirProperStatesWithCompletion:v4];
}

void sub_10008BB8C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 32) transactionCoordinator];
  [v4 willStartTransactionWithIdentifier:@"com.apple.bookassetd.notify-server-for-failed-downloads"];

  v5 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008BD1C;
  v10[3] = &unk_10011DE30;
  objc_copyWeak(&v11, &location);
  [v5 notifyServerForFailedDownloadsWithCompletion:v10];
  v6 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008BD80;
  v7[3] = &unk_10011DE58;
  objc_copyWeak(&v9, &location);
  v8 = *(a1 + 40);
  [v6 pumpDownloadsWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void sub_10008BCE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_10008BD1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained transactionCoordinator];

  [v2 didFinishTransactionWithIdenfifier:@"com.apple.bookassetd.notify-server-for-failed-downloads"];
}

void sub_10008BD80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained transactionCoordinator];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 willStartTransactionWithIdentifier:{*(*(&v16 + 1) + 8 * v13), v16}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v8 didFinishTransactionWithIdenfifier:@"com.apple.bookassetd.restart-downloads-at-startup"];
  v14 = objc_retainBlock(*(a1 + 32));
  if (v14)
  {
    v15 = [v6 copy];
    v14[2](v14, v15);
  }
}

void sub_10008BFD4(id *a1)
{
  v2 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Download-Mgr]: Attempt to restart downloads: %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [a1[5] taskStates];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v9 = BUDynamicCast();
          v10 = [a1[5] taskStates];
          v11 = [v10 objectForKey:v9];

          v12 = [v11 downloadIdentifier];
          if ([a1[4] containsObject:v12])
          {
            v13 = BLServiceDownloadPipelineLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = [v9 taskIdentifier];
              *buf = 138543618;
              v22 = v12;
              v23 = 2048;
              v24 = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Cancel task: %lu to restart download", buf, 0x16u);
            }

            [v9 bl_cancelWithReason:5 error:0];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }

  v15 = objc_retainBlock(a1[6]);
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, 0);
  }
}

void sub_10008C36C(uint64_t a1)
{
  [*(a1 + 32) dq_removeDownloadFromPipelineQueue:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008C440;
  v4[3] = &unk_10011D490;
  objc_copyWeak(&v6, (a1 + 56));
  v5 = *(a1 + 48);
  [v2 dq_setDownloadState:2 forDownloadIdentifier:v3 completion:v4];

  objc_destroyWeak(&v6);
}

void sub_10008C440(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10008C4DC;
  v3[3] = &unk_10011DE08;
  v4 = *(a1 + 32);
  [WeakRetained dq_pumpDownloadsWithCompletion:v3];
}

void sub_10008C4DC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = objc_retainBlock(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

void sub_10008C62C(uint64_t a1)
{
  v2 = [*(a1 + 32) preparationOperationQueue];
  v3 = [v2 operations];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v4)
  {
    v5 = *v43;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v43 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v42 + 1) + 8 * i);
        v8 = [v7 downloadIdentifier];
        if ([*(a1 + 40) containsObject:v8])
        {
          v9 = BLServiceDownloadPipelineLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v47 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Stop preparation operation for download", buf, 0xCu);
          }

          [v7 cancel];
          [*(a1 + 32) dq_removeDownloadFromPipelineQueue:v8];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v4);
  }

  v10 = [*(a1 + 32) preparationDownloadIDs];
  [v10 minusOrderedSet:*(a1 + 40)];

  group = dispatch_group_create();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v29 = [*(a1 + 32) taskStates];
  v11 = [v29 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v11)
  {
    v12 = *v39;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v29);
        }

        v14 = *(*(&v38 + 1) + 8 * j);
        v15 = [*(a1 + 32) taskStates];
        v16 = [v15 objectForKey:v14];

        v17 = [v16 downloadIdentifier];
        if ([*(a1 + 40) containsObject:v17])
        {
          dispatch_group_enter(group);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            v18 = BUDynamicCast();
            v19 = *(a1 + 56);
            if (v19 == 1)
            {
              v20 = BLServiceDownloadPipelineLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v27 = [v18 taskIdentifier];
                *buf = 138543618;
                v47 = v17;
                v48 = 2048;
                v49 = v27;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Stop task: %lu for download with reason [cancel]", buf, 0x16u);
              }

              v22 = 3;
LABEL_33:
            }

            else
            {
              if (!v19)
              {
                v20 = BLServiceDownloadPipelineLog();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = [v18 taskIdentifier];
                  *buf = 138543618;
                  v47 = v17;
                  v48 = 2048;
                  v49 = v21;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Stop task: %lu for download with reason [pause]", buf, 0x16u);
                }

                v22 = 4;
                goto LABEL_33;
              }

              v22 = 0;
            }

            [v18 bl_cancelWithReason:v22 error:0];
            dispatch_group_leave(group);

            goto LABEL_36;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (*(a1 + 56))
            {
              objc_opt_class();
              v23 = BUDynamicCast();
              v24 = BLServiceDownloadPipelineLog();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v47 = v17;
                v48 = 2112;
                v49 = v23;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Cancel operation: %@ for download", buf, 0x16u);
              }

              objc_initWeak(buf, *(a1 + 32));
              v25 = [*(a1 + 32) databaseManager];
              v34[0] = _NSConcreteStackBlock;
              v34[1] = 3221225472;
              v34[2] = sub_10008CC7C;
              v34[3] = &unk_10011DEA8;
              objc_copyWeak(&v37, buf);
              v26 = v17;
              v35 = v26;
              v36 = group;
              [v25 saveDownloadStateWithId:v26 state:6 completion:v34];

              objc_destroyWeak(&v37);
              objc_destroyWeak(buf);
            }
          }

          else
          {
            dispatch_group_leave(group);
          }
        }

LABEL_36:
      }

      v11 = [v29 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v11);
  }

  v28 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008CCE0;
  block[3] = &unk_10011D180;
  v33 = *(a1 + 48);
  dispatch_group_notify(group, v28, block);
}

void sub_10008CC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id location)
{
  objc_destroyWeak((v45 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008CC7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained installManager];
  [v3 cancelInstallWithDownloadID:*(a1 + 32)];

  v4 = *(a1 + 40);

  dispatch_group_leave(v4);
}

void sub_10008CCE0(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_10008CEE8(uint64_t a1)
{
  v4 = [[BLPrepareDownloadResponse alloc] initWithDownload:*(a1 + 32)];
  [*(a1 + 32) transferProgressFraction];
  [(BLPrepareDownloadResponse *)v4 setTransferProgressFraction:?];
  v2 = [[BLPipelineDownloadTaskState alloc] initWithPrepareDownloadResponse:v4];
  v3 = [*(a1 + 40) activeTaskStates];
  [v3 addObject:v2];
}

void sub_10008D05C(uint64_t a1)
{
  v2 = [*(a1 + 32) dq_getTaskStateFromDownloadID:*(a1 + 40)];
  if (!v2)
  {
    v3 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [*(a1 + 48) installInfo];
      v5 = [v4 downloadID];
      v6 = *(a1 + 48);
      v7 = [v6 installInfo];
      v8 = [v7 title];
      v18 = 138543874;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Download] didStartInstallWithOperation: could not find taskState for installOperation: [%@], bookTitle: %@ so starting a new one.  This is likely EDU mode.", &v18, 0x20u);
    }

    v9 = [BLPrepareDownloadResponse alloc];
    v10 = [*(a1 + 48) installInfo];
    v11 = [(BLPrepareDownloadResponse *)v9 initWithInstallInfo:v10];

    [(BLPrepareDownloadResponse *)v11 setTransferProgressFraction:1.0];
    v2 = [[BLPipelineDownloadTaskState alloc] initWithPrepareDownloadResponse:v11];
    v12 = [*(a1 + 32) activeTaskStates];
    [v12 addObject:v2];

    v13 = [*(a1 + 32) dirtyTaskStates];
    [v13 addObject:v2];
  }

  [(BLPipelineDownloadTaskState *)v2 setDownloadPhase:7];
  v14 = [*(a1 + 32) taskStates];
  [v14 setObject:v2 forKey:*(a1 + 48)];

  v15 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = 138543618;
    v19 = v16;
    v20 = 2112;
    v21 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download] started install operation %@ for download", &v18, 0x16u);
  }
}

void sub_10008D38C(uint64_t a1)
{
  v2 = [*(a1 + 32) taskStates];
  v4 = [v2 objectForKey:*(a1 + 40)];

  if (v4)
  {
    [v4 setFinishProgress:{objc_msgSend(*(a1 + 48), "currentValue") / objc_msgSend(*(a1 + 48), "maxValue")}];
    v3 = [*(a1 + 32) dirtyTaskStates];
    [v3 addObject:v4];

    [*(a1 + 32) dq_startProgressTimer];
  }
}

void sub_10008D4F8(uint64_t a1)
{
  v2 = [*(a1 + 32) taskStates];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    if ([*(a1 + 40) success])
    {
      v4 = 8;
    }

    else
    {
      v4 = 5;
    }

    [v3 setDownloadPhase:v4];
    v5 = [*(a1 + 32) dirtyTaskStates];
    [v5 addObject:v3];

    v6 = [*(a1 + 32) taskStates];
    [v6 removeObjectForKey:*(a1 + 40)];

    v7 = [*(a1 + 32) activeTaskStates];
    [v7 removeObject:v3];

    v8 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 downloadIdentifier];
      v10 = *(a1 + 40);
      v15 = 138543874;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2048;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download] finished install operation %@ for download, taskState: %p.", &v15, 0x20u);
LABEL_9:
    }
  }

  else
  {
    v8 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 40) installInfo];
      v11 = [v9 downloadID];
      v12 = *(a1 + 40);
      v13 = [v12 installInfo];
      v14 = [v13 title];
      v15 = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Download] didFinishInstallForOperation: could not find taskState for installOperation: [%@], bookTitle: %@", &v15, 0x20u);

      goto LABEL_9;
    }
  }

  [*(a1 + 32) dq_startProgressTimer];
}

void sub_10008D864(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = [*(a1 + 40) countOfBytesReceived];
    v3 = [*(a1 + 56) overrideProgress];
    [*(a1 + 56) percentComplete];
    v5 = v4;
    v6 = [*(a1 + 56) resumptionOffset];
    v7 = [*(a1 + 40) countOfBytesExpectedToReceive];
    v8 = [*(a1 + 32) taskStates];
    v9 = [v8 objectForKey:*(a1 + 40)];

    if (v9)
    {
      if (v7 <= 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = v6 + v7;
      }

      [v9 setTransferProgressWithBytesWritten:&v2[v6] totalBytesExpected:v10];
      if (v5 > 2.22044605e-16)
      {
        v11 = v3;
      }

      else
      {
        v11 = 0;
      }

      if (v11 == 1)
      {
        [v9 setTransferProgress:v5];
      }

      v12 = [*(a1 + 32) dirtyTaskStates];
      [v12 addObject:v9];

      [*(a1 + 32) dq_startProgressTimer];
      v13 = BLServiceDownloadPipelineLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v9 downloadIdentifier];
        v15 = [*(a1 + 40) taskIdentifier];
        v21 = 138543874;
        v22 = v14;
        v23 = 2048;
        v24 = v15;
        v25 = 2048;
        v26 = v5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "(dID=%{public}@) [Download]: Consumer with task: %lu is committing transfer progress: %.2f%%", &v21, 0x20u);
      }
    }
  }

  else
  {
    v16 = [*(a1 + 32) taskStates];
    v9 = [v16 objectForKey:*(a1 + 40)];

    v17 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v9 downloadIdentifier];
      v19 = [*(a1 + 40) taskIdentifier];
      v20 = *(a1 + 48);
      v21 = 138543874;
      v22 = v18;
      v23 = 2048;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Download]: Consumer failed for task: %lu with error: %@", &v21, 0x20u);
    }

    [*(a1 + 40) bl_cancelWithReason:1 error:*(a1 + 48)];
  }
}

void sub_10008E1B8(id *a1)
{
  v2 = [a1[4] bl_dataConsumer];
  v3 = v2;
  if (a1[5])
  {
    [v2 suspend];
    v4 = 0;
    v5 = 0;
  }

  else if (v2)
  {
    v49 = 0;
    v5 = [v2 finish:&v49];
    v4 = v49;
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  v6 = [a1[6] taskStates];
  v7 = [v6 objectForKey:a1[4]];

  if (v7)
  {
    v8 = [v7 downloadIdentifier];
    v9 = [a1[4] bl_cancelReason];
    v10 = v9;
    if ((v9 - 3) <= 1)
    {
      [a1[6] dq_processDownloadFailureWithTaskState:v7 task:a1[4] cancelReason:v9];
LABEL_32:
      if (MGGetBoolAnswer() && +[AMSDefaults logHARData])
      {
        v28 = [a1[4] bl_taskMetrics];
        v29 = [AMSHTTPArchive alloc];
        v30 = [a1[4] originalRequest];
        v31 = [v30 HTTPBody];
        v32 = [v29 initWithMetrics:v28 requestData:v31 responseData:0];

        [AMSHTTPArchiveController addHTTPArchive:v32];
        [v32 logHARData];
        v33 = BLServiceDownloadPipelineLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [a1[4] taskIdentifier];
          *buf = 134217984;
          v51 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[Download]: Task %lu saved to httparchive.", buf, 0xCu);
        }
      }

      [a1[6] dq_logDownloadEvent:@"BLEventNameDownloadStop" forTaskWithState:{v7, v36, v37, v38, v39, v40}];
      v35 = [a1[6] taskStates];
      [v35 removeObjectForKey:a1[4]];

      goto LABEL_38;
    }

    if (v9 != 1)
    {
      if (v9 == 5)
      {
        v13 = BLServiceDownloadPipelineLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [a1[4] taskIdentifier];
          *buf = 138543618;
          v51 = v8;
          v52 = 2048;
          v53 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Download]: Restarting download after task cancel: %lu", buf, 0x16u);
        }

        v15 = [a1[6] activeTaskStates];
        [v15 removeObject:v7];

        [a1[6] retryDownloadWithIdentifier:v8 completion:0];
        goto LABEL_32;
      }

      if (v5)
      {
        v16 = BLServiceDownloadPipelineLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [a1[4] taskIdentifier];
          *buf = 138543618;
          v51 = v8;
          v52 = 2048;
          v53 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Download]: Download task did finish: %lu", buf, 0x16u);
        }

        [a1[6] dq_processCompletedDownloadWithTaskState:v7 postProgress:1];
        goto LABEL_32;
      }

      if (v9 == 2)
      {
        v18 = BLServiceDownloadPipelineLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [a1[4] taskIdentifier];
          *buf = 138543618;
          v51 = v8;
          v52 = 2048;
          v53 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Download]: Download task was canceled due to local cache server being unreachable. Task: %lu", buf, 0x16u);
        }

        v20 = a1[6];
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_10008E818;
        v44[3] = &unk_10011DF48;
        v44[4] = v20;
        v45 = v8;
        v46 = v7;
        v47 = a1[4];
        v48 = 2;
        [v20 dq_clearIsLocalServerCacheForDownloadID:v45 completion:v44];

        goto LABEL_32;
      }
    }

    v21 = [a1[4] bl_cancelError];
    v22 = v21;
    if (!v21)
    {
      v22 = a1[5];
    }

    v23 = v22;

    v24 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [a1[4] taskIdentifier];
      *buf = 138543874;
      v51 = v8;
      v52 = 2048;
      v53 = v25;
      v54 = 2112;
      v55 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Download]: Download task failed: %lu with error:  %@", buf, 0x20u);
    }

    v26 = sub_1000A9138(a1[5], NSURLErrorDomain, 0xFFFFFFFFFFFFFC1BLL);
    v27 = a1[6];
    if (v26)
    {
      [a1[6] dq_scheduleReconnect];
    }

    else
    {
      v36 = _NSConcreteStackBlock;
      v37 = 3221225472;
      v38 = sub_10008E8E4;
      v39 = &unk_10011DF20;
      v40 = v27;
      v41 = v7;
      v42 = a1[4];
      v43 = v10;
      [v27 dq_setDownloadState:6 forDownloadIdentifier:v8 completion:&v36];
    }

    goto LABEL_32;
  }

  v8 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = [a1[4] taskIdentifier];
    v12 = a1[5];
    *buf = 134218242;
    v51 = v11;
    v52 = 2112;
    v53 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[Download] Received task did finish with no task state: %lu, error:  %@", buf, 0x16u);
  }

LABEL_38:

  [a1[4] bl_setDataConsumer:0];
  [a1[4] bl_setTaskMetrics:0];
}

void sub_10008E818(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008E8D4;
  v6[3] = &unk_10011DF20;
  v6[4] = v2;
  v7 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v8 = v4;
  v9 = v5;
  [v2 dq_setDownloadState:10 forDownloadIdentifier:v3 completion:v6];
}

void sub_10008ECC8(id *a1)
{
  v2 = [a1[4] taskStates];
  v3 = [v2 objectForKey:a1[5]];

  if (v3)
  {
    if (sub_1000B4B48(a1[6]))
    {
      v4 = [v3 isLocalCacheServer];
      v5 = [v3 downloadIdentifier];
      if (v4)
      {
        v6 = BLServiceDownloadPipelineLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = a1[6];
          v11 = 138543618;
          v12 = v5;
          v13 = 2112;
          v14 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Download]: Cancel local-cache download for error:  %@", &v11, 0x16u);
        }

        [a1[5] bl_cancelWithReason:2 error:a1[6]];
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v5 = [v3 downloadIdentifier];
    }

    v8 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [a1[5] taskIdentifier];
      v10 = a1[6];
      v11 = 134218242;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Download]: Retry scheduled for task: %lu, error: %@", &v11, 0x16u);
    }

    [a1[4] dq_setDownloadState:2 forDownloadIdentifier:v5 completion:0];
    [a1[4] dq_logDownloadEvent:@"BLEventNameDownloadStop" forTaskWithState:v3];
    goto LABEL_11;
  }

LABEL_12:
}

void sub_10008EF90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) bl_dataConsumer];
  v4 = [v3 resumptionOffset];
  if ([v3 hasConsumedData])
  {
    [v3 reset];
    v4 = [v3 resumptionOffset];
    v5 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 40) taskIdentifier];
      *buf = 134218240;
      v23 = v6;
      v24 = 2048;
      v25 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[Download]: Reset data consumer for task: %lu, with resumption offset: %llu", buf, 0x16u);
    }
  }

  v7 = [*(a1 + 48) taskStates];
  v8 = [v7 objectForKey:*(a1 + 40)];

  if (!v8)
  {
    v14 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 40) taskIdentifier];
      *buf = 134217984;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Download]: Could not find state for task: %lu", buf, 0xCu);
    }

    v12 = 0;
    v9 = v2;
    goto LABEL_16;
  }

  v9 = [v8 downloadIdentifier];
  v10 = [*(a1 + 48) downloadPolicyManager];
  [v10 removeOverrideDownloadSizeLimitForDownloadIdentifier:v9];

  [*(a1 + 48) dq_setDownloadState:3 forDownloadIdentifier:v9 completion:0];
  [v8 setDownloadPhase:2];
  [*(a1 + 48) dq_logDownloadEvent:@"BLEventNameDownloadStart" forTaskWithState:v8];
  v11 = *(a1 + 32);
  if (v4)
  {
    v12 = [v11 mutableCopy];
    v13 = [NSString stringWithFormat:@"bytes=%llu-", v4];
    [v12 setValue:v13 forHTTPHeaderField:@"Range"];

    v14 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [*(a1 + 40) taskIdentifier];
      *buf = 134218240;
      v23 = v4;
      v24 = 2048;
      v25 = v15;
      v16 = "[Download]: Providing resumption offset: %llu for task: %lu";
      v17 = v14;
      v18 = 22;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, v16, buf, v18);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v20 = [v11 valueForHTTPHeaderField:@"Range"];

  if (v20)
  {
    v12 = [*(a1 + 32) mutableCopy];
    [v12 setValue:0 forHTTPHeaderField:@"Range"];

    v14 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v21 = [*(a1 + 40) taskIdentifier];
      *buf = 134217984;
      v23 = v21;
      v16 = "[Download]: Removed resumption offset for task: %lu";
      v17 = v14;
      v18 = 12;
      goto LABEL_15;
    }

LABEL_16:

    v2 = v12;
  }

  (*(*(a1 + 56) + 16))();
}

void sub_10008F3CC(uint64_t a1)
{
  v25 = objc_opt_new();
  v2 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = [v8 downloadID];
        v10 = [*(a1 + 40) preparationDownloadIDs];
        v11 = [v10 containsObject:v9];

        if ((v11 & 1) == 0)
        {
          [v25 addObject:v9];
          [v2 setObject:v8 forKeyedSubscript:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v5);
  }

  if ([v25 count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = [*(a1 + 40) taskStates];
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * j);
          v18 = [*(a1 + 40) taskStates];
          v19 = [v18 objectForKey:v17];

          v20 = [v19 downloadIdentifier];
          [v25 removeObject:v20];
          [v2 setObject:0 forKeyedSubscript:v20];
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v14);
    }
  }

  v21 = [v2 allValues];
  if ([v21 count])
  {
    v22 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v25 array];
      v24 = [v23 componentsJoinedByString:{@", "}];
      *buf = 138543362;
      v35 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[Download]: Adding downloadID(s): %{public}@", buf, 0xCu);
    }

    [*(a1 + 40) dq_prepareDownloadsForDownloads:v21 filtersExistingTasks:0 completion:*(a1 + 48)];
  }
}

void sub_10008F85C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10008F880(uint64_t a1)
{
  v3 = [*(a1 + 32) transactionCoordinator];
  [v3 willStartTransactionWithIdentifier:@"com.apple.bookassetd.commit-progress"];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dq_commitProgress];

  [v3 didFinishTransactionWithIdenfifier:@"com.apple.bookassetd.commit-progress"];
}

void sub_1000903B0(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.books.plist.changed", 0, 0, 0);
}

void sub_100090794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000907B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dispatchQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100090890;
    v7[3] = &unk_10011DFB8;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_100090890(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

void sub_1000909F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100090A1C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained dispatchQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100090B20;
    v9[3] = &unk_10011DFB8;
    v11 = *(a1 + 32);
    v10 = v3;
    dispatch_async(v6, v9);
  }

  else
  {
    v7 = objc_retainBlock(*(a1 + 32));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, v3);
    }
  }
}

void sub_100090B20(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

void sub_1000911DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000912A4;
  block[3] = &unk_10011DB00;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_1000912A4(id *a1)
{
  v2 = BLServiceDownloadQueueLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1[4];
    *buf = 138543362;
    v83 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Considering downloads to schedule: %{public}@", buf, 0xCu);
  }

  v4 = objc_alloc_init(NSMutableSet);
  v70 = objc_alloc_init(NSMutableArray);
  v64 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableDictionary);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v6 = a1[4];
  v7 = [v6 countByEnumeratingWithState:&v78 objects:v93 count:16];
  if (v7)
  {
    v8 = *v79;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v79 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v78 + 1) + 8 * i);
        v11 = [v10 downloadID];
        [v5 setObject:v10 forKeyedSubscript:v11];
        v12 = [a1[5] downloadPipelineQueue];
        v13 = [v12 downloadIsHighPriorityWithDownloadID:v11];

        if (v13)
        {
          v14 = v4;
        }

        else
        {
          v14 = v70;
        }

        [v14 addObject:v11];
      }

      v7 = [v6 countByEnumeratingWithState:&v78 objects:v93 count:16];
    }

    while (v7);
  }

  [v4 addObjectsFromArray:v70];
  v15 = [a1[5] downloadPipelineQueue];
  v16 = [v15 inFlightCellularDownloadIDs];
  [v4 minusSet:v16];

  v17 = [a1[5] downloadPipelineQueue];
  v18 = [v17 inFlightDiscretionaryDownloadIDs];
  [v4 minusSet:v18];

  v19 = [a1[5] downloadPipelineQueue];
  v20 = [v19 inFlightNondiscretionaryDownloadIDs];
  [v4 minusSet:v20];

  v21 = [a1[5] downloadPipelineQueue];
  v22 = [v21 availableSampleDownloads];

  v23 = [a1[5] downloadPipelineQueue];
  v68 = [v23 availableCellularDownloads];

  v24 = [a1[5] downloadPipelineQueue];
  v25 = [v24 availableDiscretionaryDownloads];

  v26 = [a1[5] downloadPipelineQueue];
  v69 = [v26 availableNondiscretionaryDownloads];

  v63 = +[NSMutableArray array];
  v60 = +[NSMutableArray array];
  v62 = +[NSMutableArray array];
  v61 = +[NSMutableArray array];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v4;
  v67 = [obj countByEnumeratingWithState:&v74 objects:v92 count:16];
  if (v67)
  {
    v66 = *v75;
    do
    {
      for (j = 0; j != v67; j = j + 1)
      {
        if (*v75 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v74 + 1) + 8 * j);
        v29 = [v5 objectForKeyedSubscript:v28];
        v30 = v29;
        if (v22)
        {
          v31 = [v29 isSample];
          v32 = [v31 BOOLValue];

          if (v32)
          {
            v33 = [a1[5] downloadPipelineQueue];
            v34 = [v33 alreadyHaveSampleDownloadWithDownloadID:v28];

            if (v34)
            {
              goto LABEL_37;
            }

            v35 = [a1[5] downloadPipelineQueue];
            [v35 addDownloadWithDownloadID:v28 discretionary:0 sample:1 cellular:0];

            [v63 addObject:v30];
            --v22;
LABEL_35:
            [v64 addObject:v28];
            goto LABEL_37;
          }
        }

        if (v25 && [BLDownloadInfo shouldBeDiscretionary:v30])
        {
          v36 = [a1[5] downloadPipelineQueue];
          v37 = [v36 alreadyHaveDiscretionaryDownloadWithDownloadID:v28];

          if ((v37 & 1) == 0)
          {
            v38 = [a1[5] downloadPipelineQueue];
            [v38 addDownloadWithDownloadID:v28 discretionary:1 sample:0 cellular:0];

            [v62 addObject:v30];
            v39 = [a1[5] downloadPipelineQueue];
            LOBYTE(v38) = [v39 downloadIsHighPriorityWithDownloadID:v28];

            --v25;
            if (v38)
            {
              goto LABEL_35;
            }
          }
        }

        else if (v68 && [a1[5] _allowsCellularDownload:v30])
        {
          v40 = [a1[5] downloadPipelineQueue];
          v41 = [v40 alreadyHaveCellularDownloadWithDownloadID:v28];

          if ((v41 & 1) == 0)
          {
            v42 = [a1[5] downloadPipelineQueue];
            [v42 addDownloadWithDownloadID:v28 discretionary:0 sample:0 cellular:1];

            [v60 addObject:v30];
            v43 = [a1[5] downloadPipelineQueue];
            LOBYTE(v42) = [v43 downloadIsHighPriorityWithDownloadID:v28];

            --v68;
            if (v42)
            {
              goto LABEL_35;
            }
          }
        }

        else if (v69)
        {
          v44 = [a1[5] downloadPipelineQueue];
          v45 = [v44 alreadyHaveNondiscretionaryDownloadWithDownloadID:v28];

          if ((v45 & 1) == 0)
          {
            v46 = [a1[5] downloadPipelineQueue];
            [v46 addDownloadWithDownloadID:v28 discretionary:0 sample:0 cellular:0];

            [v61 addObject:v30];
            v47 = [a1[5] downloadPipelineQueue];
            LODWORD(v46) = [v47 downloadIsHighPriorityWithDownloadID:v28];

            --v69;
            if (v46)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          v69 = 0;
        }

LABEL_37:

        if (!(v25 | v69 | v22 | v68))
        {
          goto LABEL_40;
        }
      }

      v67 = [obj countByEnumeratingWithState:&v74 objects:v92 count:16];
    }

    while (v67);
  }

LABEL_40:

  v48 = BLServiceDownloadQueueLog();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = [v62 count];
    v50 = [v61 count];
    v51 = [v63 count];
    v52 = [v60 count];
    v53 = [v64 count];
    *buf = 134219008;
    v83 = v49;
    v84 = 2048;
    v85 = v50;
    v86 = 2048;
    v87 = v51;
    v88 = 2048;
    v89 = v52;
    v90 = 2048;
    v91 = v53;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "New discretionary count %lu, New nondiscretionary count %lu, New sample count %lu, New cellular count %lu. Number of high priority %lu", buf, 0x34u);
  }

  v54 = BLServiceDownloadQueueLog();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138544130;
    v83 = v62;
    v84 = 2114;
    v85 = v61;
    v86 = 2114;
    v87 = v63;
    v88 = 2114;
    v89 = v60;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "New discretionary %{public}@\nNew nondiscretionary %{public}@\nNew sample %{public}@\nNew cellular %{public}@", buf, 0x2Au);
  }

  v55 = BLServiceDownloadQueueLog();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v83 = v64;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "New high priority ids added: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, a1[5]);
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_100091C48;
  v71[3] = &unk_10011DFE0;
  objc_copyWeak(&v73, buf);
  v56 = v64;
  v72 = v56;
  v57 = objc_retainBlock(v71);
  if ([v63 count])
  {
    [a1[5] _addDownloads:v63 completion:v57];
  }

  if ([v60 count])
  {
    [a1[5] _addDownloads:v60 completion:v57];
  }

  if ([v62 count])
  {
    [a1[5] _addDownloads:v62 completion:v57];
  }

  if ([v61 count])
  {
    [a1[5] _addDownloads:v61 completion:v57];
  }

  v58 = objc_retainBlock(a1[6]);
  v59 = v58;
  if (v58)
  {
    (*(v58 + 2))(v58, obj, 0);
  }

  objc_destroyWeak(&v73);
  objc_destroyWeak(buf);
}

void sub_100091C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak((v43 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100091C48(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v5 = [WeakRetained dispatchQueue];
      dispatch_assert_queue_V2(v5);

      v6 = [*(a1 + 32) copy];
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            if ([v4 dq_setSessionTaskPriorityToHighForDownloadID:{v12, v14}])
            {
              [*(a1 + 32) removeObject:v12];
              v13 = [v4 downloadPipelineQueue];
              [v13 markDownloadAsStandardPriorityWithDownloadID:v12];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }
}

void sub_100091E8C(id *a1)
{
  v2 = a1[4];
  v3 = [v2 downloadIdentifier];
  v4 = v3;
  if (!v3 || [v3 isEqualToString:&stru_100125DB0])
  {
    v5 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[Download]: Finishing prepare with 0 download ID", buf, 2u);
    }
  }

  v6 = [v2 result];
  v7 = [v2 URLSessionIdentifier];
  v8 = [a1[5] urlSessions];
  v9 = [v8 objectForKey:v7];

  if (v9)
  {
    if (v6)
    {
LABEL_8:
      v10 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v11 = [v2 sessionConfiguration];
    v9 = [NSURLSession sessionWithConfiguration:v11 delegate:a1[5] delegateQueue:0];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  v10 = [v2 sessionTaskWithSession:v9];
LABEL_11:
  v12 = [[BLPipelineDownloadTaskState alloc] initWithPrepareDownloadResponse:v2];
  v13 = [a1[5] urlSessions];
  [v13 setObject:v9 forKey:v7];

  v48 = v7;
  if (v10)
  {
    v44 = v9;
    v14 = [a1[5] taskStates];
    v15 = v12;
    v16 = v12;
    v17 = v10;
    [v14 setObject:v15 forKey:v10];

    v18 = [a1[5] activeTaskStates];
    [v18 addObject:v16];

    [a1[5] dq_setDownloadState:3 forDownloadIdentifier:v4 completion:0];
    v46 = v16;
    [(BLPipelineDownloadTaskState *)v16 setDownloadPhase:2];
    goto LABEL_13;
  }

  if (v6 == 1)
  {
    v32 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v60 = v4;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Cancel download after failed prepare.", buf, 0xCu);
    }

    v33 = a1[5];
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100092714;
    v56[3] = &unk_10011E008;
    v56[4] = v33;
    v57 = v12;
    v58 = 0;
    [v33 dq_setDownloadState:5 forDownloadIdentifier:v4 completion:v56];
  }

  else
  {
    if (v6 != 4)
    {
      v44 = v9;
      v46 = v12;
      if (v6 != 3)
      {
        v42 = BLServiceDownloadPipelineLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v60 = v4;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Download]: Fail download after failed prepare.", buf, 0xCu);
        }

        v17 = 0;

        v43 = a1[5];
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_100092728;
        v53[3] = &unk_10011E008;
        v53[4] = v43;
        v54 = v46;
        v55 = 0;
        [v43 dq_setDownloadState:6 forDownloadIdentifier:v4 completion:v53];

        v47 = 1;
LABEL_14:
        v19 = [v2 backgroundOperations];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v49 objects:v65 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v50;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v50 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v49 + 1) + 8 * i);
              [v24 setShouldRunWithBackgroundPriority:1];
              v25 = [a1[5] backgroundOperationQueue];
              [v25 addOperation:v24];
            }

            v21 = [v19 countByEnumeratingWithState:&v49 objects:v65 count:16];
          }

          while (v21);
        }

        v10 = v17;
        v9 = v45;
        v12 = v46;
        if (v4)
        {
          goto LABEL_22;
        }

        goto LABEL_41;
      }

      if ([v2 isPerDeviceVPP])
      {
        v27 = [v2 downloadRestoreState];

        if (v27)
        {
          v28 = BLServiceDownloadPipelineLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v2 downloadRestoreState];
            *buf = 138543618;
            v60 = v4;
            v61 = 2112;
            v62 = v29;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Updated per device restore state to: %@", buf, 0x16u);
          }
        }
      }

      v30 = BLServiceDownloadPipelineLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v60 = v4;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Processing download after finish only response", buf, 0xCu);
      }

      v17 = 0;

      [a1[5] dq_processCompletedDownloadWithTaskState:v46 postProgress:0];
LABEL_13:
      v47 = 0;
      goto LABEL_14;
    }

    v31 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v60 = v4;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Queue download to discover assets later.", buf, 0xCu);
    }
  }

  v47 = 1;
  if (v4)
  {
LABEL_22:
    v26 = [a1[5] preparationDownloadIDs];
    [v26 removeObject:v4];
    goto LABEL_43;
  }

LABEL_41:
  v26 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Download identifier was nil.", buf, 2u);
  }

LABEL_43:

  if (v10)
  {
    if ([v2 isRestore])
    {
      v34 = +[BLRestoreManager sharedInstance];
      v35 = [v2 isCellularAllowedForRestores];
      if (v35 != [v34 isCellularAllowed])
      {
        v36 = BLServiceDownloadPipelineLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [v10 taskIdentifier];
          *buf = 138543618;
          v60 = v4;
          v61 = 2048;
          v62 = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Restarting task: %lu after cellular policy change", buf, 0x16u);
        }

        [v10 bl_cancelWithReason:5 error:0];
        v38 = 0;
        goto LABEL_59;
      }
    }

    [v10 resume];
    v39 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v60 = v4;
      v61 = 2112;
      v62 = v10;
      v63 = 2114;
      v64 = v48;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download]: Resumed task:%@ in sessionID: %{public}@", buf, 0x20u);
    }

    v38 = 0;
  }

  else
  {
    v38 = sub_1000A8F44(26, @"Error performing download operation", @"There is no NSURLSessionTask to start for this download.");
    v39 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "There is no NSURLSessionTask to start for this download.", buf, 2u);
    }
  }

  v40 = objc_retainBlock(a1[6]);
  v41 = v40;
  if (v40)
  {
    (*(v40 + 2))(v40, v38);
  }

  if (v47)
  {
    v34 = [a1[5] transactionCoordinator];
    [v34 didFinishTransactionWithIdenfifier:v4];
LABEL_59:
  }
}

void sub_100092A84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 downloadIdentifier];
  if (([*(a1 + 32) containsObject:v4] & 1) == 0)
  {
    v5 = [*(a1 + 40) preparationDownloadIDs];
    v6 = [v5 containsObject:v4];

    if ((v6 & 1) == 0)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100092BC0;
      v11[3] = &unk_10011E030;
      v7 = *(a1 + 48);
      v11[4] = *(a1 + 40);
      v13 = v7;
      v8 = v4;
      v12 = v8;
      [v3 setOutputBlock:v11];
      v9 = [*(a1 + 40) preparationDownloadIDs];
      [v9 addObject:v8];

      v10 = [*(a1 + 40) preparationOperationQueue];
      [v10 addOperation:v3];
    }
  }
}

void sub_100092BC0(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  if ([a2 isCancelled])
  {
    v5 = [*(a1 + 32) transactionCoordinator];
    [(BLPerformDownloadOperation *)v5 didFinishTransactionWithIdenfifier:*(a1 + 40)];
  }

  else
  {
    v5 = [[BLPerformDownloadOperation alloc] initWithBLDownloadPipeline:*(a1 + 32) response:v10 completion:*(a1 + 48)];
    if ([v10 isSample])
    {
      v6 = [*(a1 + 32) sampleDownloadOperationQueue];
    }

    else if ([v10 isDiscretionary])
    {
      v6 = [*(a1 + 32) discretionaryDownloadOperationQueue];
    }

    else
    {
      v7 = [v10 allowsCellularAccess];
      v8 = *(a1 + 32);
      if (v7)
      {
        [v8 cellularDownloadOperationQueue];
      }

      else
      {
        [v8 nonDiscretionaryDownloadOperationQueue];
      }
      v6 = ;
    }

    v9 = v6;
    [v6 addOperation:v5];
  }
}

void sub_100093194(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) downloadIdentifier];
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Download]: Failed to mark download as [cancelled] for server. Error:  %@", &v8, 0x16u);
    }
  }
}

void sub_10009347C(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100093520;
  v4[3] = &unk_10011D9C0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 fetchListOfFailedDownloadsWithCompletion:v4];
}

void sub_100093520(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v19 = a3;
  v17 = v4;
  if (v19)
  {
    v5 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[Download]: Error fetching failed downloads. %@", &buf, 0xCu);
    }

    v6 = objc_retainBlock(*(a1 + 40));
    v7 = v6;
    if (v6)
    {
      (v6[2].isa)(v6, v19);
    }
  }

  else
  {
    v7 = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x3032000000;
    v35 = sub_1000938E4;
    v36 = sub_1000938F4;
    v37 = 0;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v4;
    v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v21 = *v29;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          dispatch_group_enter(v7);
          v11 = [v10 accountID];
          v12 = [v10 downloadID];
          v13 = [v10 storeIdentifier];
          v14 = [v10 transactionIdentifier];
          v15 = [v10 cancelDownloadURL];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_1000938FC;
          v25[3] = &unk_10011E0A8;
          v25[4] = v10;
          p_buf = &buf;
          v26 = v7;
          [BLServerDownloadDoneRequest notifyDownloadCancelledWithAccountID:v11 downloadID:v12 storeID:v13 transactionID:v14 cancelDownloadURL:v15 completion:v25];
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);
    }

    v16 = [*(a1 + 32) dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000939FC;
    block[3] = &unk_10011E0D0;
    v23 = *(a1 + 40);
    v24 = &buf;
    dispatch_group_notify(v7, v16, block);

    _Block_object_dispose(&buf, 8);
  }
}

uint64_t sub_1000938E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000938FC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) downloadID];
      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Download]: Failed to mark download as [cancelled] for server. Error:  %@", &v13, 0x16u);
    }
  }

  v8 = *(*(a1 + 48) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  objc_storeStrong(v9, v12);
  dispatch_group_leave(*(a1 + 40));
}

void sub_1000939FC(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 32));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(*(*(a1 + 40) + 8) + 40));
    v2 = v3;
  }
}

void sub_100093C38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100093C5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[Download]: Reconnect with nsurlsessiond", v3, 2u);
  }

  [WeakRetained reconnectWithURLSessionTasks];
}

void sub_100094454(id a1)
{
  v1 = [BLNetworkMonitor alloc];
  v4 = +[NWPathEvaluator sharedDefaultEvaluator];
  v2 = [(BLNetworkMonitor *)v1 initWithPathEvalulator:v4];
  v3 = qword_10013EBF8;
  qword_10013EBF8 = v2;
}

void sub_10009490C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 58);
  v2 = MGGetBoolAnswer();
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _emulateCellularNetwork];
    v3 = BLServiceLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 40) + 8) + 24);
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BLNetworkMonitor] Emulate cellular network is %d", v5, 8u);
    }
  }
}

void sub_100094AAC(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 59);
  v2 = MGGetBoolAnswer();
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _emulateRoamingNetwork];
    v3 = BLServiceLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 40) + 8) + 24);
      v5[0] = 67109120;
      v5[1] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BLNetworkMonitor] Emulate roaming network is %d", v5, 8u);
    }
  }
}

void sub_100095378(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"BLNetworkStateDidChangeNotification" object:*(a1 + 32)];
}

id sub_10009544C(uint64_t a1, void *a2)
{
  result = [a2 inHomeCountry];
  *(*(a1 + 32) + 59) = result ^ 1;
  return result;
}

void sub_100095638(uint64_t a1)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009580C;
  v12[3] = &unk_10011E188;
  v13 = *(a1 + 32);
  v2 = objc_retainBlock(v12);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000958B0;
  v10[3] = &unk_10011E188;
  v11 = *(a1 + 32);
  v3 = objc_retainBlock(v10);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100095954;
  v8[3] = &unk_10011D180;
  v9 = *(a1 + 32);
  v4 = objc_retainBlock(v8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000959D4;
  v6[3] = &unk_10011E188;
  v7 = *(a1 + 32);
  v5 = objc_retainBlock(v6);
  CacheDeleteRegisterInfoCallbacks();
}

id sub_10009580C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [BLCacheDeleteService alloc];
  v7 = (*(*(a1 + 32) + 16))();
  v8 = [(BLCacheDeleteService *)v6 initWithPurgeableProvider:v7];

  v9 = [(BLCacheDeleteService *)v8 _purgeable:v5 urgency:a2];

  v10 = v9;
  return v10;
}

id sub_1000958B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [BLCacheDeleteService alloc];
  v7 = (*(*(a1 + 32) + 16))();
  v8 = [(BLCacheDeleteService *)v6 initWithPurgeableProvider:v7];

  v9 = [(BLCacheDeleteService *)v8 _purge:v5 urgency:a2];

  v10 = v9;
  return v10;
}

void sub_100095954(uint64_t a1)
{
  v2 = [BLCacheDeleteService alloc];
  v3 = (*(*(a1 + 32) + 16))();
  v4 = [(BLCacheDeleteService *)v2 initWithPurgeableProvider:v3];

  [(BLCacheDeleteService *)v4 _cancelPurge];
}

id sub_1000959D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [BLCacheDeleteService alloc];
  v7 = (*(*(a1 + 32) + 16))();
  v8 = [(BLCacheDeleteService *)v6 initWithPurgeableProvider:v7];

  v9 = [(BLCacheDeleteService *)v8 _purge:v5 urgency:a2];

  v10 = v9;
  return v10;
}

uint64_t sub_100095C60(uint64_t result)
{
  if ((result - 1) < 4)
  {
    return result;
  }

  v5 = v1;
  v6 = v2;
  v3 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unknown urgency value, defaulting to low urgency.", v4, 2u);
  }

  return 1;
}

intptr_t sub_100097748(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = BLServiceLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v8)
    {
      v9 = [*(a1 + 32) downloadIdentifier];
      v14 = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Replacing URL for asset with local cache URL: %@", &v14, 0x16u);
    }

    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) download];
    [v11 setOriginalURL:v10];

    v7 = [a2 absoluteString];
    v12 = [*(a1 + 32) download];
    [v12 setUrl:v7];
    goto LABEL_7;
  }

  if (v8)
  {
    v12 = [*(a1 + 32) downloadIdentifier];
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: No local cache URL for asset, error: %@", &v14, 0x16u);
LABEL_7:
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000986C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100098708(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 48) + 8) + 24) = a2 == 0;
  if (!a2)
  {
    v7 = BLServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138543874;
      v11 = v8;
      v12 = 2048;
      v13 = a3;
      v14 = 2112;
      v15 = a4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Prepare]: Not enough disk space for download, only %llu is available.  Error:  %@", &v10, 0x20u);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10009974C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [BLPrepareDownloadOperation alloc];
  v5 = *(a1 + 32);
  v6 = [v3 downloadID];
  v7 = [v5 downloadPolicyForID:v6];
  v8 = [(BLPrepareDownloadOperation *)v4 _initWithDownload:v3 policy:v7];

  (*(*(a1 + 40) + 16))();
}

void sub_10009B074(uint64_t a1)
{
  v2 = BLBookInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op-Audiobook] Pending cleanup for audiobook so removing media library entry.", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) mediaLibraryManager];
  v5 = [*(a1 + 40) installInfo];
  v6 = [v5 storeIdentifier];
  [v4 removeMediaItemsForStoreID:{objc_msgSend(v6, "longLongValue")}];

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void sub_10009B17C(uint64_t a1)
{
  v2 = BLBookInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Op-Audiobook] Completed finalizing install.", &v4, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10009C29C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_10009C30C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) logKey];
    v9 = [v6 domain];
    v12 = 138544130;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2048;
    v17 = [v6 code];
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Purchase-UI-Helper]: Received reply from UI host proxy for auth request %{public}@, error: %{public}@ %ld (%@)", &v12, 0x2Au);
  }

  v10 = objc_retainBlock(*(a1 + 40));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v5, v6);
  }
}

void sub_10009C6E0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_10009C750(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) logKey];
    v9 = [v6 domain];
    v12 = 138544130;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2048;
    v17 = [v6 code];
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Purchase-UI-Helper]: Received reply from UI host proxy for dialog request %{public}@, error: %{public}@ %ld (%@)", &v12, 0x2Au);
  }

  v10 = objc_retainBlock(*(a1 + 40));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v5, v6);
  }
}

void sub_10009CB24(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, v5);
  }
}

void sub_10009CB94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) logKey];
    v9 = [v6 domain];
    v12 = 138544130;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2048;
    v17 = [v6 code];
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Purchase-UI-Helper]: Received reply from UI host proxy for engagement request %{public}@, error: %{public}@ %ld (%@)", &v12, 0x2Au);
  }

  v10 = objc_retainBlock(*(a1 + 40));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v5, v6);
  }
}

void sub_10009CD68(id a1)
{
  qword_10013EC10 = objc_alloc_init(NSMutableSet);

  _objc_release_x1();
}

void sub_10009CE6C(uint64_t a1)
{
  v2 = [*(a1 + 40) downloadID];
  [*(a1 + 32) setDownloadID:v2];

  v3 = [*(a1 + 40) buyParameters];
  [*(a1 + 32) setBuyParameters:v3];

  v4 = [*(a1 + 40) permlink];
  [*(a1 + 32) setPermlink:v4];

  v5 = [*(a1 + 40) storeIdentifier];
  [*(a1 + 32) setStoreIdentifier:v5];

  v6 = [*(a1 + 40) storePlaylistIdentifier];
  [*(a1 + 32) setStorePlaylistIdentifier:v6];

  v7 = [*(a1 + 40) clientIdentifier];
  [*(a1 + 32) setClientIdentifier:v7];

  v8 = [*(a1 + 40) persistentIdentifier];
  [*(a1 + 32) setPersistentIdentifier:v8];

  v9 = [*(a1 + 40) transactionIdentifier];
  [*(a1 + 32) setTransactionIdentifier:v9];

  v10 = [*(a1 + 40) cancelDownloadURL];
  [*(a1 + 32) setCancelDownloadURL:v10];

  v11 = [*(a1 + 40) url];
  [*(a1 + 32) setUrl:v11];

  v12 = [*(a1 + 40) state];
  [*(a1 + 32) setState:{objc_msgSend(v12, "unsignedIntegerValue")}];

  v13 = [*(a1 + 40) startTime];
  [*(a1 + 32) setStartTime:v13];

  v14 = [*(a1 + 40) size];
  [*(a1 + 32) setFileSize:{objc_msgSend(v14, "unsignedIntegerValue")}];

  v15 = [*(a1 + 40) lastStateChangeTime];
  [*(a1 + 32) setLastStateChangeTime:v15];

  v16 = [*(a1 + 40) hashType];
  [*(a1 + 32) setHashType:v16];

  v17 = [*(a1 + 40) md5HashStrings];
  [*(a1 + 32) setMd5HashStrings:v17];

  v18 = [*(a1 + 40) numberOfBytesToHash];
  [*(a1 + 32) setNumberOfBytesToHash:{objc_msgSend(v18, "integerValue")}];

  v19 = [*(a1 + 40) serverNumberOfBytesToHash];
  [*(a1 + 32) setServerNumberOfBytesToHash:v19];

  v20 = [*(a1 + 40) assetPath];
  [*(a1 + 32) setAssetPath:v20];

  v21 = [*(a1 + 40) publicationVersion];
  [*(a1 + 32) setPublicationVersion:v21];

  v22 = [*(a1 + 40) isAutomaticDownload];
  [*(a1 + 32) setIsAutomaticDownload:v22];

  v23 = [*(a1 + 40) isRestore];
  [*(a1 + 32) setIsRestore:v23];

  v24 = [*(a1 + 40) isSample];
  [*(a1 + 32) setIsSample:v24];

  v25 = [*(a1 + 40) isPurchase];
  [*(a1 + 32) setIsPurchase:v25];

  v26 = [*(a1 + 40) isLocalCacheServer];
  [*(a1 + 32) setIsLocalCacheServer:v26];

  v27 = [*(a1 + 40) originalURL];
  [*(a1 + 32) setOriginalURL:v27];

  v28 = [*(a1 + 40) cleanupPending];
  [*(a1 + 32) setCleanupPending:v28];

  v29 = [*(a1 + 40) purchaseDate];
  [*(a1 + 32) setPurchaseDate:v29];

  v30 = [*(a1 + 40) downloadKey];
  [*(a1 + 32) setDownloadKey:v30];

  v31 = [*(a1 + 40) accountIdentifier];
  [*(a1 + 32) setAccountID:v31];

  v32 = [*(a1 + 40) familyAccountIdentifier];
  [*(a1 + 32) setFamilyAccountID:v32];

  v33 = [*(a1 + 40) isZipStreamable];
  [*(a1 + 32) setIsZipStreamable:v33];

  v34 = [*(a1 + 40) dpInfo];
  [*(a1 + 32) setDpInfo:v34];

  v35 = [*(a1 + 40) sinfData];
  [*(a1 + 32) setSinfData:v35];

  v36 = [*(a1 + 40) artistName];
  [*(a1 + 32) setArtistName:v36];

  v37 = [*(a1 + 40) title];
  [*(a1 + 32) setTitle:v37];

  v38 = [*(a1 + 40) subtitle];
  [*(a1 + 32) setSubtitle:v38];

  v39 = [*(a1 + 40) collectionArtistName];
  [*(a1 + 32) setCollectionArtistName:v39];

  v40 = [*(a1 + 40) collectionTitle];
  [*(a1 + 32) setCollectionTitle:v40];

  v41 = [*(a1 + 40) genre];
  [*(a1 + 32) setGenre:v41];

  v42 = [*(a1 + 40) kind];
  [*(a1 + 32) setKind:v42];

  v43 = [*(a1 + 40) thumbnailImageURL];
  [*(a1 + 32) setThumbnailImageURL:v43];

  v44 = [*(a1 + 40) encryptionKey];
  [*(a1 + 32) setEncryptionKey:v44];

  v45 = [*(a1 + 40) salt];
  [*(a1 + 32) setSalt:v45];

  v48 = [*(a1 + 40) downloadID];
  v46 = [BLDownloadManager downloadDirectoryForDownloadID:v48];
  v47 = [v46 path];
  [*(a1 + 32) setTargetDownloadDirectory:v47];
}

void sub_10009D9B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

void sub_10009DA18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = BLServiceMediaLibraryManagerLog();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      v8 = "Error removing persisitend ids %{public}@:  %@";
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, &v13, v11);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = 138543362;
    v14 = v12;
    v8 = "Removed from media library persistent ids %{public}@";
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 12;
    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10009DCA0(uint64_t a1)
{
  v2 = [*(a1 + 32) progressReceivers];
  [v2 addObject:*(a1 + 40)];
}

void sub_10009DDA8(uint64_t a1)
{
  v2 = [*(a1 + 32) progressReceivers];
  [v2 removeObject:*(a1 + 40)];
}

void sub_10009DEC4(uint64_t a1)
{
  v2 = +[NSDistributedNotificationCenter defaultCenter];
  [v2 postNotificationName:BLDownloadQueueDownloadProgressNotification object:0 userInfo:*(a1 + 32) deliverImmediately:1];

  v3 = [*(a1 + 40) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009DFA8;
  block[3] = &unk_10011D1A8;
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  dispatch_async(v3, block);
}

void sub_10009DFA8(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) progressReceivers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) progressWithUserInfo:*(a1 + 40)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10009E168(uint64_t a1)
{
  v2 = +[NSDistributedNotificationCenter defaultCenter];
  [v2 postNotificationName:BLDownloadQueueDownloadFailedNotification object:0 userInfo:*(a1 + 32) deliverImmediately:1];

  v3 = [*(a1 + 40) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009E24C;
  block[3] = &unk_10011D1A8;
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  dispatch_async(v3, block);
}

void sub_10009E24C(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) progressReceivers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) didFailWithUserInfo:*(a1 + 40)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10009E40C(uint64_t a1)
{
  v2 = +[NSDistributedNotificationCenter defaultCenter];
  [v2 postNotificationName:BLDownloadQueueDownloadCompleteNotification object:0 userInfo:*(a1 + 32) deliverImmediately:1];

  v3 = [*(a1 + 40) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009E4F0;
  block[3] = &unk_10011D1A8;
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  dispatch_async(v3, block);
}

void sub_10009E4F0(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) progressReceivers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) downloadCompleteWithUserInfo:*(a1 + 40)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10009E6B0(uint64_t a1)
{
  v2 = +[NSDistributedNotificationCenter defaultCenter];
  [v2 postNotificationName:BLDownloadQueuePurchaseSucceededNotification object:0 userInfo:*(a1 + 32) deliverImmediately:1];

  v3 = [*(a1 + 40) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009E794;
  block[3] = &unk_10011D1A8;
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  dispatch_async(v3, block);
}

void sub_10009E794(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) progressReceivers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) purchaseSucceededWithUserInfo:*(a1 + 40)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10009E954(uint64_t a1)
{
  v2 = +[NSDistributedNotificationCenter defaultCenter];
  [v2 postNotificationName:BLDownloadQueuePurchaseFailedNotification object:0 userInfo:*(a1 + 32) deliverImmediately:1];

  v3 = [*(a1 + 40) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009EA38;
  block[3] = &unk_10011D1A8;
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  dispatch_async(v3, block);
}

void sub_10009EA38(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) progressReceivers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) purchaseFailedWithUserInfo:*(a1 + 40)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_10009EC3C(id a1)
{
  v1 = BLServiceNotificationLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "The connection to service was interrupted.", v2, 2u);
  }
}

void sub_10009ECA4(id a1)
{
  v1 = BLServiceNotificationLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "The connection to service was invalidated.", v2, 2u);
  }
}

void sub_10009EDE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BLServiceNotificationLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Remote proxy hit an error: %{public}@", &v7, 0xCu);
  }

  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void sub_1000A1474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A149C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A14B4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 absoluteFilePath];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

void sub_1000A172C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [[ML3Track alloc] initWithPersistentID:a2 inLibrary:*(a1 + 32)];
  v7 = objc_retainBlock(*(a1 + 40));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v9, a3, a4);
  }
}

void sub_1000A1D74(uint64_t a1)
{
  v2 = BLBookInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) pendingInterruptedInstalls];
    *buf = 134217984;
    v20 = [v3 count];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Install-Mgr]: restarting %lu interrupted installs.", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [*(a1 + 32) pendingInterruptedInstalls];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 createDownload];
        v11 = [*(a1 + 32) progressDelegate];
        [v11 installManager:*(a1 + 32) willRestartInstallForDownload:v10];

        [*(a1 + 32) mq_installDownloadInfo:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) setPendingInterruptedInstalls:0];
  v12 = objc_retainBlock(*(a1 + 40));
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, 0);
  }
}

void sub_1000A2278(uint64_t a1)
{
  v2 = [*(a1 + 32) operationsByDownloadID];
  v3 = [*(a1 + 40) downloadID];
  v5 = [v2 objectForKeyedSubscript:v3];

  v4 = [*(a1 + 32) progressDelegate];
  [v4 installManager:*(a1 + 32) updatedProgress:*(a1 + 48) forInstallOperation:v5];
}

void sub_1000A2DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A2DFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained dispatchQueue];

  if (v3)
  {
    v4 = [WeakRetained dispatchQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000A2EDC;
    v5[3] = &unk_10011E5E8;
    objc_copyWeak(&v7, (a1 + 40));
    v6 = *(a1 + 32);
    dispatch_async(v4, v5);

    objc_destroyWeak(&v7);
  }
}

void sub_1000A2EDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) downloadID];
  [WeakRetained dq_completeOperationForDownloadID:v2];
}

void sub_1000A3140(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = [*(a1 + 40) operationsByDownloadID];
  [v2 removeObjectForKey:*(a1 + 48)];

  v3 = [*(a1 + 40) progressDelegate];
  [v3 installManager:*(a1 + 40) didFinishInstallForOperation:*(a1 + 32)];
}

void sub_1000A33F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A341C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained progressDelegate];
  [v2 installManager:WeakRetained didFinishInstallForOperation:*(a1 + 32)];

  [BLDownloadManager cleanupDownloadScratchDirectoryForDownloadID:*(a1 + 40)];
}

void sub_1000A3840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000A3864(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained progressDelegate];
  [v2 installManager:WeakRetained didFinishInstallForOperation:*(a1 + 32)];

  [BLDownloadManager cleanupDownloadScratchDirectoryForDownloadID:*(a1 + 40)];
}

void sub_1000A38D8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A399C;
  v4[3] = &unk_10011E610;
  v5 = v2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  [v3 deleteDownloadWithID:v5 completion:v4];
}

void sub_1000A399C(uint64_t a1)
{
  v2 = BLBookInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Mgr]: Successfully purged downloadInfo", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A3ACC;
  v6[3] = &unk_10011D648;
  v7 = v4;
  v8 = *(a1 + 48);
  [v5 deleteDownloadPolicyWithID:v7 completion:v6];
}

uint64_t sub_1000A3ACC(uint64_t a1)
{
  v2 = BLBookInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Install-Mgr]: Successfully purged downloadPolicyInfo", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1000A3D4C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = BLBookInstallLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) downloadID];
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: Failed to mark download as [finished] for server. Error:  %@", &v10, 0x16u);
    }
  }

  v8 = objc_retainBlock(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v5);
  }
}

void sub_1000A4030(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = BLBookInstallLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) downloadID];
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Install-Mgr]: Failed to mark download as [cancelled] for server. Error:  %@", &v10, 0x16u);
    }
  }

  v8 = objc_retainBlock(*(a1 + 40));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v5);
  }
}

uint64_t sub_1000A4284(uint64_t a1)
{
  if (!a1)
  {
    return 8301;
  }

  *a1 = 0;
  v1 = *(a1 + 8);
  if (v1 == 3 && !*(a1 + 48))
  {
    return 8352;
  }

  if (!*(a1 + 24))
  {
    return 8355;
  }

  v2 = *(a1 + 32);
  if (v2 != 32 && v2 != 16)
  {
    return 8355;
  }

  if (v1 == 3 || (*(a1 + 64) & 1) == 0)
  {
    operator new();
  }

  return 8350;
}

uint64_t sub_1000A43A0(uint64_t a1, void *a2, size_t *a3)
{
  if (!a1 || *a1 != 1)
  {
    return 8303;
  }

  if (a2 && a3)
  {
    dataOutMoved = 0;
    v5 = CCCryptorFinal(**(a1 + 40), a2, *a3, &dataOutMoved);
    *a3 = dataOutMoved;
    if (v5)
    {
      v6 = 8360;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    sub_1000A4F24(v7);
    operator delete();
  }

  *(a1 + 40) = 0;
  *a1 = 0;
  return v6;
}

uint64_t sub_1000A445C(uint64_t a1, char *dataIn, size_t a3, char *dataOut, size_t *a5)
{
  if (!a1 || *a1 != 1)
  {
    return 8303;
  }

  v7 = 8304;
  if (dataIn && a3)
  {
    if (dataOut && (v11 = *a5, v11 >= a3))
    {
      if (*(a1 + 16) == 2)
      {
        v13 = a3 & 0xFFFFFFFFFFFFFFF0;
      }

      else
      {
        v13 = a3;
      }

      dataOutMoved = 0;
      if (*(a1 + 64) == 1)
      {
        CCCryptorReset(**(a1 + 40), *(a1 + 48));
        v11 = *a5;
      }

      v14 = CCCryptorUpdate(**(a1 + 40), dataIn, v13, dataOut, v11, &dataOutMoved);
      v15 = dataOutMoved;
      *a5 = dataOutMoved;
      if (v14)
      {
        v7 = 8361;
      }

      else
      {
        v7 = 0;
      }

      if (!v14 && v13 < a3)
      {
        v16 = a3 & 0xF;
        memcpy(&dataOut[v15], &dataIn[v13], v16);
        *a5 += v16;
      }
    }

    else
    {
      return 8305;
    }
  }

  return v7;
}

int32x4_t sub_1000A4720(unsigned int a1, uint64_t a2, int32x4_t *a3)
{
  result = vdupq_n_s32(a1);
  *a3 = result;
  return result;
}

void sub_1000A4B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = BLEncryptedBuffer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

_CCCryptor **sub_1000A4F24(_CCCryptor **a1)
{
  v2 = *a1;
  if (v2)
  {
    CCCryptorRelease(v2);
  }

  return a1;
}

id sub_1000A8F44(int a1, __CFString *a2, __CFString *a3)
{
  v5 = @"Unknown Error";
  if (a3)
  {
    v5 = a3;
  }

  v12[0] = @"message";
  v12[1] = @"title";
  v6 = @"BLService error";
  if (a2)
  {
    v6 = a2;
  }

  v13[0] = v5;
  v13[1] = v6;
  v7 = a3;
  v8 = a2;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [NSError errorWithDomain:@"BLErrorDomain" code:a1 userInfo:v9];

  return v10;
}

id sub_1000A905C(int a1, const __CFString *a2, const __CFString *a3, void *a4)
{
  v7 = a4;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = @"Unknown Error";
  }

  v9 = @"BLService error";
  if (a2)
  {
    v9 = a2;
  }

  v10 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v8, @"message", v9, @"title", 0];
  v11 = v10;
  if (v7)
  {
    [v10 addEntriesFromDictionary:v7];
  }

  v12 = [NSError errorWithDomain:@"BLErrorDomain" code:a1 userInfo:v11];

  return v12;
}

id sub_1000A9138(void *a1, void *a2, id a3)
{
  v5 = a1;
  v6 = a2;
  if (v5 && [v5 code] == a3)
  {
    v7 = [v5 domain];
    v8 = [v7 isEqualToString:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1000A91BC(void *a1, uint64_t a2, __CFString *a3, __CFString *a4)
{
  v7 = @"Unknown Error";
  if (a4)
  {
    v7 = a4;
  }

  v15[0] = @"message";
  v15[1] = @"title";
  v8 = @"BLService error";
  if (a3)
  {
    v8 = a3;
  }

  v16[0] = v7;
  v16[1] = v8;
  v9 = a4;
  v10 = a3;
  v11 = a1;
  v12 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13 = [NSError errorWithDomain:v11 code:a2 userInfo:v12];

  return v13;
}

id sub_1000A92E0(uint64_t a1)
{
  v1 = [NSString stringWithFormat:@"unknown download id (%@)", a1];
  v2 = sub_1000A8F44(23, 0, v1);

  return v2;
}

void sub_1000A96CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dq_updateAvailableStorage];
}

void sub_1000A980C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (!v4)
  {

    goto LABEL_21;
  }

  v6 = v4;
  v7 = 0;
  v8 = *v25;
  *&v5 = 134217984;
  v23 = v5;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v24 + 1) + 8 * i);
      if (([v10 isAudiobook] & 1) == 0)
      {
        v11 = [v10 downloadPhase];
        v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 persistentIdentifier]);
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        v14 = [WeakRetained downloadingPersistentIdentifiers];
        v15 = v14;
        if (v13 == 4)
        {
          [v14 removeObject:v12];

          v16 = BLBookCacheDeleteLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v12 longLongValue];
            *buf = v23;
            v29 = v17;
            v18 = v16;
            v19 = "Removed %lld from download list as it was cancelled or failed.";
            goto LABEL_13;
          }

          goto LABEL_14;
        }

        v20 = [v14 containsObject:v12];

        if ((v20 & 1) == 0)
        {
          v21 = [WeakRetained downloadingPersistentIdentifiers];
          [v21 addObject:v12];

          v16 = BLBookCacheDeleteLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v12 longLongValue];
            *buf = v23;
            v29 = v22;
            v18 = v16;
            v19 = "Adding %lld to list of book downloads.";
LABEL_13:
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
          }

LABEL_14:

          v7 = 1;
        }

        continue;
      }
    }

    v6 = [v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
  }

  while (v6);

  if (v7)
  {
    [WeakRetained dq_updateAvailableStorage];
  }

LABEL_21:
}

void sub_1000A9B8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v17;
    *&v5 = 134217984;
    v15 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (([v10 isAudiobook] & 1) == 0)
        {
          v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 persistentIdentifier]);
          v12 = [WeakRetained downloadingPersistentIdentifiers];
          [v12 removeObject:v11];

          v13 = BLBookCacheDeleteLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v11 longLongValue];
            *buf = v15;
            v21 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Removed %lld from download list", buf, 0xCu);
          }

          v7 = 1;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);

    if (v7)
    {
      [WeakRetained dq_updateAvailableStorage];
    }
  }

  else
  {
  }
}

void sub_1000A9FD8(uint64_t a1)
{
  v2 = BLBookCacheDeleteLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) userInfo];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Notification info: %@", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained dq_updateAvailableStorage];
}

uint64_t sub_1000AA8E8(void *a1, unint64_t a2, void *a3)
{
  v5 = a1;
  v6 = 4294925273;
  if ([v5 length])
  {
    if (a2 <= 5)
    {
      v7 = dword_1000DF6F8[a2];
      v10 = 0;
      sub_100036810([v5 bytes], objc_msgSend(v5, "length"), v7, &v10);
      v6 = v8;
      if (a3)
      {
        if (!v8)
        {
          *a3 = v10;
        }
      }
    }
  }

  return v6;
}

BOOL sub_1000AACC4(void *a1, void *a2)
{
  v3 = a1;
  v9 = 0;
  if (qword_10013EC38 != -1)
  {
    sub_1000CB3EC();
  }

  if (byte_10013EC40 == 1)
  {
    v10 = xmmword_10013EC20;
    v11 = qword_10013EC30;
    v4 = NSHomeDirectory();
    v5 = [v4 stringByAppendingPathComponent:@"Media/iTunes_Control/iTunes/"];

    if (v5)
    {
      sub_100002EC8(0, &v10, [v5 UTF8String], &v9);
    }
  }

  [v3 bytes];
  [v3 length];
  sub_1000165C0();
  v7 = v6;
  if (a2)
  {
    *a2 = 0;
  }

  return v7 == 0;
}

uint64_t sub_1000AAE24(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = malloc_type_malloc([v4 length], 0x100004077774924uLL);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v11 = [v4 length];
  [v4 getBytes:v6 length:v11];
  sub_100012DAC();
  if (v7 || (v8 = 1, v10 = [[NSData alloc] initWithBytesNoCopy:v6 length:v11 freeWhenDone:1], (*a3 = v10) == 0))
  {
    free(v6);
LABEL_4:
    v8 = 0;
  }

  return v8;
}

void sub_1000AB2D0(id a1)
{
  v5 = [IMLibraryPlist libraryPlistWithKind:1];
  v1 = [BLBookManifest alloc];
  v2 = [v5 path];
  v3 = [(BLBookManifest *)v1 initWithManifestPath:v2];
  v4 = qword_10013EC48;
  qword_10013EC48 = v3;
}

void sub_1000AB4A8(id a1)
{
  v6 = [IMLibraryPlist libraryPlistWithKind:3];
  v1 = [v6 path];
  if (v1)
  {
    v2 = [BLBookManifest alloc];
    v3 = [v6 path];
    v4 = [(BLBookManifest *)v2 initWithManifestPath:v3];
    v5 = qword_10013EC50;
    qword_10013EC50 = v4;
  }

  else
  {
    v3 = qword_10013EC50;
    qword_10013EC50 = 0;
  }
}

void sub_1000AB5A8(id a1)
{
  v5 = [IMLibraryPlist libraryPlistWithKind:0];
  v1 = [BLBookManifest alloc];
  v2 = [v5 path];
  v3 = [(BLBookManifest *)v1 initWithManifestPath:v2];
  v4 = qword_10013EC58;
  qword_10013EC58 = v3;
}

void sub_1000AB78C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _manifest];
  objc_opt_class();
  v4 = @"Books";
  v5 = [v3 objectForKey:@"Books"];
  v6 = BUDynamicCast();

  if (!v6)
  {
    objc_opt_class();
    v4 = @"Purchases";
    v7 = [v3 objectForKey:@"Purchases"];
    v6 = BUDynamicCast();

    if (!v6)
    {
      v6 = objc_alloc_init(NSMutableArray);
      v4 = @"Books";
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) mutableCopy];
        [v6 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [v3 setObject:v6 forKey:v4];
  objc_autoreleasePoolPop(v2);
}

void sub_1000ABD34(uint64_t a1)
{
  v2 = [*(a1 + 32) _entries];
  v3 = BLBookInstallLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v18 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Install-Op]: entries are: %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 objectForKey:{*(a1 + 40), v12}];
        v11 = v10;
        if (v10)
        {
          if (*(a1 + 48))
          {
            if ([v10 isEqual:?])
            {
              [*(a1 + 56) addObject:v9];
              if ([*(a1 + 56) count] >= *(a1 + 64))
              {

                goto LABEL_16;
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

void sub_1000ABFFC(uint64_t a1)
{
  v2 = [*(a1 + 32) _entries];
  v3 = BLBookInstallLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v22 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[Install-Op]: entries are: %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = v4;
  v6 = *v17;
  while (2)
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v17 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v16 + 1) + 8 * i);
      v9 = [v8 objectForKey:*(a1 + 40)];
      objc_opt_class();
      v10 = BUDynamicCast();
      objc_opt_class();
      v11 = BUDynamicCast();
      v12 = v11;
      if (v10)
      {
        v13 = [v10 numberFromHexDigits];
        v14 = [v10 numberFromDecimalDigits];

        v12 = v14;
        if (!v14)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = 0;
        if (!v11)
        {
          goto LABEL_14;
        }
      }

      if (!*(a1 + 48) || ([v12 isEqualToNumber:?] & 1) == 0)
      {
LABEL_14:
        if (!v13 || !*(a1 + 48) || ![v13 isEqualToNumber:?])
        {
          goto LABEL_18;
        }
      }

      [*(a1 + 56) addObject:v8];
      if ([*(a1 + 56) count] >= *(a1 + 64))
      {

        goto LABEL_22;
      }

LABEL_18:
    }

    v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_22:
}

void sub_1000AC344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AC35C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _manifest];
  objc_opt_class();
  v4 = [v3 objectForKey:@"Books"];
  v5 = BUDynamicCast();

  if ([v5 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v5 objectAtIndex:v6];
      objc_opt_class();
      v8 = [v7 objectForKey:@"s"];
      v9 = BUDynamicCast();

      v10 = *(a1 + 40);
      if (v10)
      {
        if (v9 && ([v10 isEqualToNumber:v9] & 1) != 0)
        {
          break;
        }
      }

      if (++v6 >= [v5 count])
      {
        goto LABEL_12;
      }
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      [v5 removeObjectAtIndex:v6];
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v11 = BLBookInstallLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[BookManifest]: Removed manifest itemID entry at index: %ld", &v12, 0xCu);
      }
    }
  }

LABEL_12:

  objc_autoreleasePoolPop(v2);
}

void sub_1000AC63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AC654(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _manifest];
  objc_opt_class();
  v4 = [v3 objectForKey:@"Books"];
  v5 = BUDynamicCast();

  if ([v5 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v5 objectAtIndex:v6];
      v8 = *(a1 + 32);
      v9 = [v7 objectForKey:@"iTunesU Permlink"];
      v10 = [v8 _stringFromObject:v9];

      LOBYTE(v9) = [*(a1 + 40) isEqualToString:v10];
      if (v9)
      {
        break;
      }

      if (++v6 >= [v5 count])
      {
        goto LABEL_10;
      }
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      [v5 removeObjectAtIndex:v6];
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v11 = BLBookInstallLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[BookManifest]: Removed manifest permalink entry at index: %ld", &v12, 0xCu);
      }
    }
  }

LABEL_10:

  objc_autoreleasePoolPop(v2);
}

void sub_1000AC918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AC930(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) _manifest];
  objc_opt_class();
  v4 = [v3 objectForKey:@"Books"];
  v5 = BUDynamicCast();

  if ([v5 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v5 objectAtIndex:v6];
      v8 = *(a1 + 32);
      v9 = +[IMLibraryPlist keyNameForUniqueId];
      v10 = [v7 objectForKey:v9];
      v11 = [v8 _stringFromObject:v10];

      LOBYTE(v9) = [*(a1 + 40) isEqualToString:v11];
      if (v9)
      {
        break;
      }

      if (++v6 >= [v5 count])
      {
        goto LABEL_10;
      }
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      [v5 removeObjectAtIndex:v6];
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v12 = BLBookInstallLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[BookManifest]: Removed manifest Package Hash entry at index: %ld", &v13, 0xCu);
      }
    }
  }

LABEL_10:

  objc_autoreleasePoolPop(v2);
}

void sub_1000ACBA4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  if (v4)
  {
    [BLLibraryUtility writeBinaryPropertyList:v4 toPath:*(v3 + 8) error:0];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000ACDD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

void sub_1000AD908(id a1, NSPersistentStoreDescription *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = BLServiceMetadataStoreLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v5;
      v8 = "Failed to load persistent store %@:  %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, &v12, v11);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    v8 = "Successfully loaded persistent store %@";
    v9 = v7;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 12;
    goto LABEL_6;
  }
}

void sub_1000AE290(id a1)
{
  v1 = +[IMLibraryPlist sharedContainerURL];
  v2 = [v1 URLByAppendingPathComponent:@"Documents/BLDownloads"];

  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 stringForKey:@"BLDownloadManagerCustomPath"];

  if (v4)
  {
    v5 = [NSURL fileURLWithPath:v4];
    v6 = BLServiceDownloadManagerLog();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[Download-Mgr]: Overriding the download path to be %{public}@", buf, 0xCu);
      }

      v7 = v2;
      v2 = v5;
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[Download-Mgr]: Failed to override the download path to %{public}@", buf, 0xCu);
    }
  }

  if (v2)
  {
    objc_storeStrong(&qword_10013EC78, v2);
    v8 = +[NSFileManager defaultManager];
    v9 = [v2 path];
    v10 = [v8 fileExistsAtPath:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [v2 path];
      v16 = 0;
      v12 = [v8 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v16];
      v13 = v16;

      v14 = BLServiceDownloadManagerLog();
      v15 = v14;
      if (v12)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[Download-Mgr]: Created documents folder in shared container.", buf, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[Download-Mgr]: Failed to created documents folder in shared container.", buf, 2u);
        }

        v15 = qword_10013EC78;
        qword_10013EC78 = 0;
      }
    }
  }
}

void sub_1000AE92C(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000AE9D0;
  v4[3] = &unk_10011D9C0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 fetchDownloadListWithCompletion:v4];
}

void sub_1000AE9D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AEAB8;
  block[3] = &unk_10011E790;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_1000AEAB8(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
    v2 = v3;
  }
}

void sub_1000AEC68(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000AED1C;
  v4[3] = &unk_10011E7B8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 fetchDownloadFromDownloadID:v3 withCompletion:v4];
}

void sub_1000AED1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AEE04;
  block[3] = &unk_10011E790;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_1000AEE04(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
    v2 = v3;
  }
}

void sub_1000AEF7C(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000AF030;
  v4[3] = &unk_10011E808;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 requestDownloadWithParameters:v3 completion:v4];
}

void sub_1000AF030(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) dispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000AF11C;
  v11[3] = &unk_10011E7E0;
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

void sub_1000AF11C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 56));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
  }

  if (*(a1 + 40))
  {
    v4 = BLServiceDownloadManagerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "(dID=%{public}@) [Download-Mgr]: Error attempting to start the download", &v7, 0xCu);
    }
  }

  else
  {
    v6 = *(a1 + 48);
    v9 = *(a1 + 32);
    v4 = [NSArray arrayWithObjects:&v9 count:1];
    [v6 dq_startNextDownloadsFromList:v4];
  }
}

void sub_1000AF394(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = objc_retainBlock(*(a1 + 40));
  v8 = v7;
  if (v7)
  {
    if (v10)
    {
      (*(v7 + 2))(v7);
    }

    else
    {
      v9 = [v6 objectForKeyedSubscript:*(a1 + 32)];
      (v8)[2](v8, v9);
    }
  }
}

void sub_1000AF59C(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000AF664;
  v4[3] = &unk_10011E880;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 pauseDownloadsWithIDs:v5 withCompletion:v4];
}

void sub_1000AF664(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF764;
  block[3] = &unk_10011DAB0;
  v13 = v5;
  v14 = v6;
  v8 = a1[5];
  v9 = a1[4];
  v15 = v8;
  v16 = v9;
  v17 = a1[6];
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void sub_1000AF764(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_retainBlock(*(a1 + 64));
    if (v2)
    {
      v10 = v2;
      (*(v2 + 2))(v2, *(a1 + 32), &__NSArray0__struct, *(a1 + 40));
      v2 = v10;
    }
  }

  else
  {
    v3 = [NSSet alloc];
    v4 = [*(a1 + 40) allKeys];
    v5 = [v3 initWithArray:v4];

    v6 = [[NSMutableOrderedSet alloc] initWithArray:*(a1 + 48)];
    [v6 minusSet:v5];
    if ([v6 count])
    {
      v7 = [*(a1 + 56) downloadPipeline];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000AF93C;
      v11[3] = &unk_10011E858;
      v14 = *(a1 + 64);
      v12 = v6;
      v13 = *(a1 + 40);
      [v7 stopDownloadsWithIdentifiers:v12 reason:0 completion:v11];
    }

    else
    {
      v8 = objc_retainBlock(*(a1 + 64));
      v9 = v8;
      if (v8)
      {
        (*(v8 + 2))(v8, *(a1 + 32), &__NSArray0__struct, *(a1 + 40));
      }
    }
  }
}

void sub_1000AF93C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 48));
  if (v3)
  {
    v4 = [*(a1 + 32) array];
    v3[2](v3, v5, v4, *(a1 + 40));
  }
}

void sub_1000AFB20(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000AFBE8;
  v4[3] = &unk_10011E610;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 cancelDownloadWithID:v5 withCompletion:v4];
}

void sub_1000AFBE8(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AFCC8;
  v8[3] = &unk_10011DAD8;
  v9 = v3;
  v5 = a1[5];
  v6 = a1[4];
  v10 = v5;
  v11 = v6;
  v12 = a1[6];
  v7 = v3;
  dispatch_async(v4, v8);
}

void sub_1000AFCC8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = objc_retainBlock(*(a1 + 56));
    if (v2)
    {
      v6 = v2;
      v2[2](v2, *(a1 + 32));
      v2 = v6;
    }
  }

  else
  {
    v3 = [NSOrderedSet orderedSetWithObjects:*(a1 + 40), 0];
    v4 = [*(a1 + 48) downloadPipeline];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000AFE0C;
    v8[3] = &unk_10011E610;
    *v7 = *(a1 + 40);
    v5 = v7[0];
    v9 = vextq_s8(*v7, *v7, 8uLL);
    v10 = *(a1 + 56);
    [v4 stopDownloadsWithIdentifiers:v3 reason:1 completion:v8];
  }
}

void sub_1000AFE0C(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionCoordinator];
  [v2 didFinishTransactionWithIdenfifier:*(a1 + 40)];

  v3 = objc_retainBlock(*(a1 + 48));
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, 0);
    v3 = v4;
  }
}

void sub_1000AFFE8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    if (v9)
    {
      (*(v6 + 2))(v6);
    }

    else
    {
      v8 = [v5 objectForKeyedSubscript:*(a1 + 32)];
      (v7)[2](v7, v8);
    }
  }
}

void sub_1000B0218(id *a1)
{
  v2 = [a1[4] databaseManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B0300;
  v7[3] = &unk_10011E8F8;
  v6 = *(a1 + 2);
  v3 = *(&v6 + 1);
  v4 = a1[7];
  *&v5 = a1[6];
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v2 resumeDownloadsWithID:v3 withCompletion:v7];
}

void sub_1000B0300(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B0430;
  block[3] = &unk_10011E8D0;
  v15 = v5;
  v16 = v6;
  *&v8 = a1[5];
  *(&v8 + 1) = a1[4];
  v13 = v8;
  v9 = a1[7];
  *&v10 = a1[6];
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void sub_1000B0430(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v6 = [NSSet alloc];
    v7 = [*(a1 + 40) allKeys];
    v5 = [v6 initWithArray:v7];

    v8 = [[NSMutableOrderedSet alloc] initWithArray:*(a1 + 48)];
    [v8 minusSet:v5];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000B06C8;
    v17[3] = &unk_10011E8A8;
    v9 = v8;
    v10 = *(a1 + 56);
    v18 = v9;
    v19 = v10;
    v21 = *(a1 + 72);
    v20 = *(a1 + 40);
    v11 = objc_retainBlock(v17);
    v12 = *(a1 + 64);
    if ([v5 containsObject:*(a1 + 64)])
    {
    }

    else if (v12)
    {
      v13 = [*(a1 + 56) downloadPipeline];
      [v13 prioritizeDownloadWithIdentifier:v12 completion:v11];

LABEL_11:
      goto LABEL_12;
    }

    v14 = [*(a1 + 56) downloadPipeline];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B0818;
    v15[3] = &unk_10011DE08;
    v16 = v11;
    [v14 pumpDownloadsWithCompletion:v15];

    v12 = v16;
    goto LABEL_11;
  }

  v2 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Download-Mgr]: Error attempting to resume downloads: %@", buf, 0xCu);
  }

  v4 = objc_retainBlock(*(a1 + 72));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, *(a1 + 32), *(a1 + 40));
  }

LABEL_12:
}

void sub_1000B06C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [*(a1 + 40) transactionCoordinator];
        [v10 willStartTransactionWithIdentifier:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = objc_retainBlock(*(a1 + 56));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v3, *(a1 + 48));
  }
}

void sub_1000B0818(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = objc_retainBlock(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

void sub_1000B09C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) databaseManager];
    v8 = [v7 canResumeDownloadWithState:{objc_msgSend(v5, "state")}];

    if (v8)
    {
      v9 = [BLEvaluatorDownload copyEvaluatorDownloadForDownload:v5];
      v10 = [*(a1 + 32) downloadPolicyManager];
      v11 = [v10 downloadPolicyForID:*(a1 + 40)];
      v12 = BLServiceDownloadManagerLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        v24 = 138543618;
        v25 = v13;
        v26 = 2048;
        v27 = [v11 cellularResult];
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download-Mgr]: Last cellularResult for download is %ld", &v24, 0x16u);
      }

      if (![v11 hasCellularResult] || objc_msgSend(v11, "cellularResult") - 1 >= 2)
      {
        v14 = [[BLReviewNetworkPolicyOperation alloc] initWithDownload:v9];
        -[BLReviewNetworkPolicyOperation setCellularResult:](v14, "setCellularResult:", [v11 cellularResult]);
        [(BLReviewNetworkPolicyOperation *)v14 setSuppressDialogs:0];
        [(BLReviewNetworkPolicyOperation *)v14 start];
        v15 = [(BLOperation *)v14 error];

        if (v15)
        {
          v16 = BLServiceDownloadManagerLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = *(a1 + 40);
            v18 = [(BLOperation *)v14 error];
            v24 = 138543618;
            v25 = v17;
            v26 = 2112;
            v27 = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Download-Mgr]: Cellular evaluation for download failed due to  %@", &v24, 0x16u);
          }
        }

        else
        {
          v19 = [(BLReviewNetworkPolicyOperation *)v14 cellularResult];
          v20 = BLServiceDownloadManagerLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(a1 + 40);
            v24 = 138543618;
            v25 = v21;
            v26 = 2048;
            v27 = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download-Mgr]: Set cellular evaluation result for download to %ld", &v24, 0x16u);
          }

          v16 = [BLDownloadPolicy policyInfoWithCellularResult:v19];
          v22 = *(a1 + 40);
          v23 = [v5 storePlaylistIdentifier];
          [v10 addOrUpdateDownloadPolicyWithInfo:v16 withPolicyID:v22 storePlaylistIdentifier:v23];
        }
      }

      [*(a1 + 32) _resumeDownloadWithID:*(a1 + 40) withCompletion:*(a1 + 48)];
    }
  }
}

void sub_1000B0F40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[Download]: Error fetching downloads. %@", buf, 0xCu);
    }

    v8 = objc_retainBlock(*(a1 + 40));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, v6);
    }
  }

  else
  {
    v9 = objc_alloc_init(NSMutableOrderedSet);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v19 + 1) + 8 * i) downloadID];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v12);
    }

    v16 = [*(a1 + 32) downloadPipeline];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000B117C;
    v17[3] = &unk_10011D5D0;
    v18 = *(a1 + 40);
    [v16 restartDownloadsWithIdentifiers:v9 completion:v17];
  }
}

void sub_1000B117C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_1000B1484(uint64_t a1)
{
  [*(a1 + 32) start];
  v2 = [*(a1 + 32) error];
  v3 = BLServiceDownloadManagerLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 48);
      v9 = 67109378;
      LODWORD(v10[0]) = v5;
      WORD2(v10[0]) = 2112;
      *(v10 + 6) = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to save automatic download to %d to server, error:  %@", &v9, 0x12u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) resultingEnabledMediaKinds];
    v9 = 138412290;
    v10[0] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully saved automatic download to server, enabledMediaKinds: %@", &v9, 0xCu);
  }

  v7 = objc_retainBlock(*(a1 + 40));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v2);
  }
}

id sub_1000B1694(uint64_t a1)
{
  v2 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Download-Mgr]: Download completed.", &v5, 0xCu);
  }

  return [*(a1 + 40) dq_startNextDownloadsFromList:0];
}

void sub_1000B1814(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Download-Mgr]: Purged leftover downloads", &v8, 2u);
  }

  if (v3)
  {
    v5 = BLServiceDownloadManagerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[Download-Mgr]: Encountered an error while purging the DownloadsDatabase:  %@", &v8, 0xCu);
    }
  }

  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v3);
  }
}

void sub_1000B19F4(uint64_t a1)
{
  v2 = BLServiceDownloadManagerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Download]: dq_startNextDownloadsFromList is going to call pumpDownloadsWithCompletion - downloadList: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) downloadPipeline];
  [v4 pumpDownloadsWithCompletion:0];
}

void sub_1000B4588(id a1)
{
  v3[0] = BLDownloadKindAudiobook;
  v3[1] = BLDownloadKindEBook;
  v4[0] = @"media";
  v4[1] = @"books";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  v2 = qword_10013EC98;
  qword_10013EC98 = v1;
}

id sub_1000B46C4(void *a1)
{
  v1 = a1;
  v2 = +[BLStoreDownloadQueueRequest _downloadKindQueueIdentifierMapping];
  v3 = [v2 objectForKeyedSubscript:v1];

  return v3;
}

double sub_1000B499C(unsigned int a1, __int128 *a2, _OWORD *a3)
{
  data = *a2;
  v7 = bswap32(a1);
  if (CC_MD5(&data, 0x14u, &v5))
  {
    result = *&v5;
    *a3 = v5;
  }

  return result;
}

BOOL sub_1000B4B48(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:@"BLErrorDomain"])
  {
    [v1 code];
LABEL_3:
    v3 = sub_1000B4C14(v1);
    goto LABEL_11;
  }

  if (![v2 isEqualToString:NSURLErrorDomain])
  {
    v3 = 0;
    goto LABEL_11;
  }

  v4 = [v1 code];
  v3 = 1;
  if ((v4 + 1011 > 0xA || ((1 << (v4 - 13)) & 0x589) == 0) && v4 != -1102 && v4 != -1100)
  {
    goto LABEL_3;
  }

LABEL_11:

  return v3;
}

BOOL sub_1000B4C14(void *a1)
{
  v1 = a1;
  v2 = [v1 userInfo];
  v3 = [v2 objectForKeyedSubscript:@"BLKeyHTTPResponseCode"];

  if (v3 || ([v1 userInfo], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", AMSErrorUserInfoKeyStatusCode), v3 = objc_claimAutoreleasedReturnValue(), v4, v3))
  {
    v5 = [v3 integerValue] > 399;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000B4FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B4FD0(uint64_t a1)
{
  v2 = [*(a1 + 32) ongoingPurchaseRequestsByStoreID];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v3 = [*(a1 + 32) ongoingPurchaseRequestsByStoreID];
    [v3 addObject:*(a1 + 40)];
  }
}

void sub_1000B5130(uint64_t a1)
{
  v2 = [*(a1 + 32) ongoingPurchaseRequestsByStoreID];
  [v2 removeObject:*(a1 + 40)];
}

void sub_1000B567C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) ongoingPurchaseRequests];
  [v9 removeStoreIDForRequest:*(a1 + 40)];

  v10 = objc_retainBlock(*(a1 + 48));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v12, v7, v8);
  }
}

void sub_1000B5A04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 80));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_1000B5A30(uint64_t a1, void *a2, void *a3, char a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    v17 = [WeakRetained dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B5C04;
    block[3] = &unk_10011EA10;
    v28 = a4;
    v23 = v12;
    v24 = v16;
    v25 = v11;
    v26 = v13;
    v27 = v14;
    dispatch_async(v17, block);

    v18 = v23;
  }

  else
  {
    v19 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21[0] = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[Purchase-Mgr]: Failed to perform purchase as the purchase manager was released.", v21, 2u);
    }

    v18 = objc_retainBlock(v14);
    if (v18)
    {
      v20 = sub_1000A8F44(32, @"Memory Management Error", @"Object prematurely released");
      v18[2](v18, v12, 0, v20);
    }
  }
}

id sub_1000B5C04(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(a1 + 72) == 1)
  {
    v3 = [*(a1 + 40) databaseManager];
    [v3 syncTouchDownloadWithId:*(a1 + 32)];

    v2 = *(a1 + 32);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);

  return [v4 dq_performPurchaseWithRequest:v5 downloadID:v2 uiHostProxy:v6 completion:v7];
}

void sub_1000B5C70(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if ([v7 length])
  {
    if (a3)
    {
      v10 = BLServicePurchaseManagerLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v39 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Purchase download already in progress.", buf, 0xCu);
      }

      v11 = [WeakRetained downloadPolicyManager];
      v12 = [v11 downloadPolicyForID:v7];
      v13 = BLServicePurchaseManagerLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v12 cellularResult];
        *buf = 138543618;
        v39 = v7;
        v40 = 2048;
        v41 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Last cellularResult for download is %ld", buf, 0x16u);
      }

      if ([v12 hasCellularResult] && objc_msgSend(v12, "cellularResult") - 1 < 2)
      {
        goto LABEL_19;
      }

      v15 = [v12 cellularResult];
      v16 = [[BLReviewNetworkPolicyOperation alloc] initWithDownload:v8];
      [(BLReviewNetworkPolicyOperation *)v16 setCellularResult:v15];
      -[BLReviewNetworkPolicyOperation setSuppressDialogs:](v16, "setSuppressDialogs:", [*(a1 + 32) shouldSuppressNetworkEvaluatorDialogs]);
      [(BLReviewNetworkPolicyOperation *)v16 start];
      [(BLReviewNetworkPolicyOperation *)v16 waitUntilFinished];
      v17 = [(BLOperation *)v16 error];

      if (v17)
      {
        v18 = BLServicePurchaseManagerLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [(BLOperation *)v16 error];
          *buf = 138543618;
          v39 = v7;
          v40 = 2112;
          v41 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Cellular evaluation for download failed due to  %@", buf, 0x16u);
        }
      }

      else
      {
        v24 = [(BLReviewNetworkPolicyOperation *)v16 cellularResult];
        v25 = BLServicePurchaseManagerLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v39 = v7;
          v40 = 2048;
          v41 = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Set cellular evaluation result for download to %ld", buf, 0x16u);
        }

        if (v15 != v24)
        {
          v28 = [BLDownloadPolicy policyInfoWithCellularResult:v24];
          [v11 addOrUpdateDownloadPolicyWithInfo:v28 withPolicyID:v7 storePlaylistIdentifier:0];

          if (((v15 & 0xFFFFFFFFFFFFFFFDLL) == 1) != ((v24 & 0xFFFFFFFFFFFFFFFDLL) == 1))
          {
            v29 = [WeakRetained dispatchQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000B61A4;
            block[3] = &unk_10011DB00;
            block[4] = *(a1 + 40);
            v36 = v7;
            v37 = *(a1 + 64);
            dispatch_async(v29, block);

LABEL_22:
            goto LABEL_23;
          }

LABEL_19:
          v26 = objc_retainBlock(*(a1 + 64));
          v27 = v26;
          if (v26)
          {
            (*(v26 + 2))(v26, v7, 0, 0);
          }

          goto LABEL_22;
        }
      }

      goto LABEL_19;
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v20 = [WeakRetained databaseManager];
    v21 = [*(a1 + 32) buyParameters];
    v22 = [*(a1 + 32) storeIdentifier];
    v23 = *(a1 + 56);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000B6214;
    v30[3] = &unk_10011EA60;
    v33 = *(a1 + 72);
    v31 = *(a1 + 32);
    v32 = *(a1 + 48);
    v34 = *(a1 + 64);
    [v20 addDownloadWithBuyParameters:v21 storeID:v22 clientIdentifier:v23 completion:v30];
  }

LABEL_23:
}

void sub_1000B61A4(uint64_t a1)
{
  [*(a1 + 32) dq_triggerRestartDownloadForDownloadID:*(a1 + 40)];
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 40), 0, 0);
    v2 = v3;
  }
}

void sub_1000B6214(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[Purchase-Mgr]: Failed to create entry for new download.", v10, 2u);
    }

    v8 = objc_retainBlock(*(a1 + 56));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, v5, 0, v6);
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000B64E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B650C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Permlink download already in progress.", buf, 0xCu);
    }

    v8 = objc_retainBlock(a1[8]);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, v5, 0);
    }
  }

  else
  {
    v10 = [a1[4] databaseManager];
    v11 = a1[5];
    v12 = a1[6];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000B6734;
    v19[3] = &unk_10011EAD8;
    objc_copyWeak(&v22, a1 + 9);
    v13 = a1[5];
    v14 = a1[7];
    v15 = a1[6];
    v16 = a1[8];
    *&v17 = v15;
    *(&v17 + 1) = v16;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v20 = v18;
    v21 = v17;
    [v10 addDownloadWithPermlink:v11 clientIdentifier:v12 completion:v19];

    objc_destroyWeak(&v22);
  }
}

void sub_1000B6734(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[Purchase-Mgr]: Failed to create entry for new download.", v15, 2u);
    }

    v8 = objc_retainBlock(a1[7]);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, v5, v6);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 8);
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v11 = [WeakRetained dispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B6970;
      block[3] = &unk_10011EAB0;
      block[4] = v9;
      v17 = a1[4];
      v18 = a1[5];
      v19 = a1[6];
      v20 = v5;
      v21 = a1[7];
      dispatch_async(v11, block);
    }

    else
    {
      v12 = BLServicePurchaseManagerLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[Purchase-Mgr]: Failed to perform purchase as the purchase manager was released.", v15, 2u);
      }

      v13 = objc_retainBlock(a1[7]);
      if (v13)
      {
        v14 = sub_1000A8F44(32, @"Memory Management Error", @"Object prematurely released");
        v13[2](v13, v5, v14);
      }
    }
  }
}

void sub_1000B6C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B6C58(uint64_t a1, void *a2, int a3, void *a4, void *a5)
{
  v9 = a2;
  v32 = a4;
  v34 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if ([v9 length] && a3)
  {
    v11 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v52 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Download already in progress.", buf, 0xCu);
    }

    v12 = [*(a1 + 32) bl_downloadPolicyCellularResult];
    if (v12)
    {
      v13 = [WeakRetained downloadPolicyManager];
      v14 = [v13 downloadPolicyForID:v9];
      v15 = [v14 cellularResult];
      v16 = BLServicePurchaseManagerLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v52 = v9;
        v53 = 2048;
        v54 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Old cellularResult for download is %ld", buf, 0x16u);
      }

      v17 = [v12 integerValue];
      v18 = BLServicePurchaseManagerLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v52 = v9;
        v53 = 2048;
        v54 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: New cellularResult for download is %ld", buf, 0x16u);
      }

      if (v15 == v17)
      {
      }

      else
      {
        v24 = [BLDownloadPolicy policyInfoWithCellularResult:v17];
        v25 = [v14 storePlaylistIdentifier];
        [v13 addOrUpdateDownloadPolicyWithInfo:v24 withPolicyID:v9 storePlaylistIdentifier:v25 updateAssociated:0];

        if (((v15 & 0xFFFFFFFFFFFFFFFDLL) == 1) != ((v17 & 0xFFFFFFFFFFFFFFFDLL) == 1))
        {
          v26 = [WeakRetained dispatchQueue];
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_1000B7220;
          v48[3] = &unk_10011DB00;
          v48[4] = *(a1 + 40);
          v49 = v9;
          v50 = *(a1 + 72);
          dispatch_async(v26, v48);

LABEL_22:
          goto LABEL_23;
        }
      }
    }

    v27 = objc_retainBlock(*(a1 + 72));
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, v9, 0);
    }

    goto LABEL_22;
  }

  if (![v9 length] || (a3 & 1) != 0)
  {
    v20 = [WeakRetained databaseManager];
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v23 = *(a1 + 64);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000B7420;
    v36[3] = &unk_10011EB28;
    objc_copyWeak(&v40, (a1 + 80));
    v37 = *(a1 + 32);
    v38 = *(a1 + 48);
    v41 = *(a1 + 88);
    v39 = *(a1 + 72);
    [v20 addDownloadWithBuyParameters:v22 storeID:v23 clientIdentifier:v21 completion:v36];

    objc_destroyWeak(&v40);
  }

  else if (WeakRetained)
  {
    v19 = [WeakRetained dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B728C;
    block[3] = &unk_10011EA10;
    block[4] = WeakRetained;
    v43 = v9;
    v44 = *(a1 + 32);
    v45 = *(a1 + 48);
    v47 = *(a1 + 88);
    v46 = *(a1 + 72);
    dispatch_async(v19, block);
  }

  else
  {
    v29 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[Purchase-Mgr]: Failed to perform purchase as the purchase manager was released.", buf, 2u);
    }

    v30 = objc_retainBlock(*(a1 + 72));
    if (v30)
    {
      v31 = sub_1000A8F44(32, @"Memory Management Error", @"Object prematurely released");
      v30[2](v30, v9, v31);
    }
  }

LABEL_23:
}

void sub_1000B7220(uint64_t a1)
{
  [*(a1 + 32) dq_triggerRestartDownloadForDownloadID:*(a1 + 40)];
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 40), 0);
    v2 = v3;
  }
}

void sub_1000B728C(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseManager];
  [v2 syncTouchDownloadWithId:*(a1 + 40)];

  v3 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B73AC;
  block[3] = &unk_10011EA10;
  v9 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v9;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  v14 = *(a1 + 72);
  v13 = *(a1 + 64);
  dispatch_async(v3, block);
}

void sub_1000B73AC(uint64_t a1)
{
  [*(a1 + 32) dq_performDownloadDownloadMetadata:*(a1 + 40) downloadID:*(a1 + 48) clientIdentifier:*(a1 + 56) isRestoreItem:*(a1 + 72)];
  v2 = objc_retainBlock(*(a1 + 64));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 48), 0);
    v2 = v3;
  }
}

void sub_1000B7420(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v11 = [WeakRetained dispatchQueue];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000B76A8;
      v14[3] = &unk_10011EA10;
      v14[4] = v8;
      v15 = v5;
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v19 = *(a1 + 64);
      v18 = *(a1 + 48);
      dispatch_async(v11, v14);

      goto LABEL_9;
    }

    v12 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[Purchase-Mgr]: Failed to perform purchase as the purchase manager was released.", buf, 2u);
    }

    v9 = objc_retainBlock(*(a1 + 48));
    if (v9)
    {
      v13 = sub_1000A8F44(32, @"Memory Management Error", @"Object prematurely released");
      (v9)[2](v9, v5, v13);
    }

    goto LABEL_6;
  }

  v7 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[Purchase-Mgr]: Failed to create entry for new download with error:  %@", buf, 0xCu);
  }

  v8 = objc_retainBlock(*(a1 + 48));
  if (v8)
  {
    v9 = sub_1000A8F44(33, @"Create Download Error", @"Error encountered adding download to database.");
    (*(v8 + 2))(v8, 0, v9);
LABEL_6:
  }

LABEL_9:
}

void sub_1000B76A8(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseManager];
  [v2 syncTouchDownloadWithId:*(a1 + 40)];

  [*(a1 + 32) dq_performDownloadDownloadMetadata:*(a1 + 48) downloadID:*(a1 + 40) clientIdentifier:*(a1 + 56) isRestoreItem:*(a1 + 72)];
  v3 = objc_retainBlock(*(a1 + 64));
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, *(a1 + 40), 0);
    v3 = v4;
  }
}

void sub_1000B7AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B7AD8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000B7AF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[Purchase-Mgr]: Failed to start one download (%@) with error:  %@", &v9, 0x16u);
    }
  }

  else
  {
    os_unfair_lock_lock((*(*(a1 + 48) + 8) + 32));
    [*(*(*(a1 + 56) + 8) + 40) addObject:v5];
    os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000B7C0C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 32));
  if (v2)
  {
    v4 = v2;
    v3 = [*(*(*(a1 + 40) + 8) + 40) copy];
    v4[2](v4, v3, 0);

    v2 = v4;
  }
}

void sub_1000B8244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, char a28)
{
  objc_destroyWeak(&a27);
  _Block_object_dispose(&a28, 8);
  objc_destroyWeak((v28 - 136));
  _Unwind_Resume(a1);
}

void sub_1000B8298(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [[BLRestoreResponseItem alloc] initWithStoreItemID:v7 downloadID:0 error:v9];
  v11 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (v11)
  {
    v12 = BLServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[ContentRestore] Already got restore response item for itemID: %@", buf, 0xCu);
    }
  }

  [*(a1 + 32) setObject:v10 forKeyedSubscript:v7];
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    dispatch_group_enter(*(a1 + 40));
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000B84FC;
    v20[3] = &unk_10011EBA0;
    v21 = v10;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v22 = v14;
    v24 = v15;
    v23 = *(a1 + 40);
    [WeakRetained _requestDownloadWithDownloadMetadata:v8 isRestore:1 completion:v20];
  }

  else
  {
    v16 = BLServiceLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = v7;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[ContentRestore] No store download item for restore response itemID: %@, error:  %@", buf, 0x16u);
    }

    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    if (!v18)
    {
      v18 = v9;
    }

    v19 = v18;
    WeakRetained = *(v17 + 40);
    *(v17 + 40) = v19;
  }
}

void sub_1000B84FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setDownloadID:v5];
    [*(a1 + 40) addObject:v5];
  }

  if (v6)
  {
    v7 = BLServiceLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[ContentRestore] Request downloads encountered error:  %@", &v13, 0xCu);
    }

    v8 = *(*(a1 + 56) + 8);
    v11 = *(v8 + 40);
    v9 = (v8 + 40);
    v10 = v11;
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }

    objc_storeStrong(v9, v12);
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_1000B8604(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v34;
    *&v5 = 138412290;
    v32 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v33 + 1) + 8 * i) storeItemID];
        v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
        if (!v10)
        {
          v11 = BLServiceLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = v32;
            v38 = v9;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[ContentRestore] Missing restore response item for itemID: %@", buf, 0xCu);
          }

          v12 = sub_1000A8F44(0, @"Missing restore response item", 0);
          v10 = [[BLRestoreResponseItem alloc] initWithStoreItemID:v9 downloadID:0 error:v12];
        }

        [v2 addObject:v10];
      }

      v6 = [v3 countByEnumeratingWithState:&v33 objects:v47 count:16];
    }

    while (v6);
  }

  v13 = *(a1 + 48);
  v14 = BLServiceLog();
  v15 = v14;
  if (v13)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v16 = [*(a1 + 56) count];
    v17 = [*(a1 + 40) allKeys];
    v18 = [v17 count];
    v19 = [*(a1 + 32) count];
    v21 = *(a1 + 48);
    v20 = *(a1 + 56);
    *buf = 134219010;
    v38 = v16;
    v39 = 2048;
    v40 = v18;
    v41 = 2048;
    v42 = v19;
    v43 = 2114;
    v44 = v20;
    v45 = 2112;
    v46 = v21;
    v22 = "[ContentRestore] Received error while doing restore download operation. Got total of %lu downloads, %lu response for %lu restore items(s). New downloadIDs: %{public}@. Error:  %@";
    v23 = v15;
    v24 = OS_LOG_TYPE_ERROR;
    v25 = 52;
  }

  else
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v26 = [*(a1 + 56) count];
    v17 = [*(a1 + 40) allKeys];
    v27 = [v17 count];
    v28 = [*(a1 + 32) count];
    v29 = *(a1 + 56);
    *buf = 134218754;
    v38 = v26;
    v39 = 2048;
    v40 = v27;
    v41 = 2048;
    v42 = v28;
    v43 = 2114;
    v44 = v29;
    v22 = "[ContentRestore] Got total of %lu downloads, %lu response for %lu restore items(s). New downloadIDs: %{public}@";
    v23 = v15;
    v24 = OS_LOG_TYPE_DEFAULT;
    v25 = 42;
  }

  _os_log_impl(&_mh_execute_header, v23, v24, v22, buf, v25);

LABEL_18:
  v30 = objc_retainBlock(*(a1 + 64));
  v31 = v30;
  if (v30)
  {
    (*(v30 + 2))(v30, v2, *(a1 + 48));
  }
}

void sub_1000B8B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

id sub_1000B8B60(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1000B8B94(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  v6 = objc_alloc_init(BLDownloadManifestResponse);
  [v6 setValidDownloadIDs:v5];

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_1000B8C3C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v8 count])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _requestDownloadsWithStoreDownloadItems:v8 isRestore:0 completion:*(*(*(a1 + 32) + 8) + 40)];
  }

  else
  {
    v7 = objc_retainBlock(*(*(*(a1 + 32) + 8) + 40));
    WeakRetained = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, &__NSArray0__struct, v5);
    }
  }
}

void sub_1000B94CC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = [v5 copy];
    v3[2](v3, v4, 0);
  }
}

void sub_1000B9D28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000B9D54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained numberOfAvailableDownloads])
  {
    v3 = [v2 _newLoadQueueOperationForQueueRequest:*(a1 + 32)];
    v4 = [v2 storeRequestOperationQueue];
    [v4 addOperation:v3];
  }
}

void sub_1000B9F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_1000B9FAC(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v34 = objc_loadWeakRetained((v1 + 48));
  v35 = WeakRetained;
  v3 = [WeakRetained downloads];
  v4 = BLServiceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v47 = [v3 count];
    v48 = 2112;
    v49 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Load Queue: Pending download queue has %lu downloads, downloads = %@", buf, 0x16u);
  }

  v5 = BLDownloadSupportedDownloadKinds();
  v37 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableArray);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    v39 = BLDownloadKindAudiobook;
    v36 = BLDownloadKindPDF;
    do
    {
      v11 = 0;
      v40 = v9;
      do
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        v13 = [v12 kind];
        v14 = [v5 containsObject:v13];

        if (v14)
        {
          v15 = [*(v1 + 32) purchaseStoreIdentifier];
          v16 = [v15 bl_itemIdentifierValue];

          v17 = [*(v1 + 32) purchaseStoreIdentifier];

          v18 = v6;
          if (v17)
          {
            v19 = [v12 kind];
            if ([v19 isEqualToString:v39])
            {

              goto LABEL_13;
            }

            [v12 kind];
            v38 = v16;
            v20 = v10;
            v21 = v1;
            v22 = v6;
            v23 = v5;
            v25 = v24 = v7;
            v26 = [v25 isEqualToString:v36];

            v7 = v24;
            v5 = v23;
            v6 = v22;
            v1 = v21;
            v10 = v20;
            v16 = v38;

            if (v26)
            {
LABEL_13:
              v27 = [v12 collectionIdentifier];
            }

            else
            {
              v27 = [v12 itemIdentifier];
            }

            v28 = v27;
            v18 = v6;
            v9 = v40;
            if (v16 == v28)
            {
              [v12 setAutomaticDownload:0];
              v18 = v37;
            }
          }

          [v18 addObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v9);
  }

  if ([v37 count])
  {
    v29 = BLServiceLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v37 count];
      v31 = [*(v1 + 32) purchaseStoreIdentifier];
      *buf = 134218242;
      v47 = v30;
      v48 = 2112;
      v49 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Load Queue: Found %lu downloads with store identifier of purchase %@", buf, 0x16u);
    }

    [v34 _updateNetworkPolicyForQueueDownloads:v37 suppressDialogs:{objc_msgSend(*(v1 + 32), "purchaseSuppressNetworkEvaluatorDialogs")}];
    [v34 _requestDownloadsWithStoreDownloadItems:v37 isRestore:0 completion:&stru_10011EC38];
  }

  if ([v6 count])
  {
    v32 = BLServiceLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v6 count];
      *buf = 134217984;
      v47 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Load Queue: Found %lu other downloads", buf, 0xCu);
    }

    [v34 _updateNetworkPolicyForQueueDownloads:v6 suppressDialogs:1];
    [v34 _requestDownloadsWithStoreDownloadItems:v6 isRestore:0 completion:&stru_10011EC58];
  }
}

void sub_1000BAB70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1000BAB94(void *a1, void *a2)
{
  v3 = a1[4];
  v8 = a2;
  [v8 setPlistPath:v3];
  [v8 setAssetPath:a1[5]];
  [v8 setFileExtension:a1[6]];
  [v8 setArtistName:a1[7]];
  [v8 setTitle:a1[8]];
  [v8 setSubtitle:a1[9]];
  [v8 setGenre:a1[10]];
  [v8 setKind:a1[11]];
  [v8 setPersistentIdentifier:0];
  [v8 setThumbnailImageURL:a1[12]];
  v4 = +[BUAccountsProvider sharedProvider];
  v5 = [v4 activeStoreAccount];
  v6 = [v5 ams_DSID];
  [v8 setAccountIdentifier:v6];

  [v8 setIsLocalCacheServer:&__kCFBooleanFalse];
  v7 = +[NSDate date];
  [v8 setLastStateChangeTime:v7];

  [v8 setState:&off_100129B18];
}

void sub_1000BACE0(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      *buf = 138543618;
      v17 = v5;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Failed to update download with purchase metadata. Error:  %@", buf, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained dispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000BAEEC;
      block[3] = &unk_10011ECA8;
      objc_copyWeak(&v15, a1 + 7);
      v13 = a1[4];
      v14 = a1[5];
      dispatch_async(v7, block);

      objc_destroyWeak(&v15);
    }

    else
    {
      v8 = BLServicePurchaseManagerLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = a1[4];
        *buf = 138543362;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Purchase manager went away.", buf, 0xCu);
      }
    }
  }

  v10 = objc_retainBlock(a1[6]);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, a1[4], v3);
  }
}

void sub_1000BAEEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained dq_triggerDownloadForDownloadID:*(a1 + 32) urlToAsset:*(a1 + 40)];
}

void sub_1000BAF3C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
    v2 = v3;
  }
}

void sub_1000BAF98(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = *(a1 + 32);
    v5 = v2;
    v4 = sub_1000A8F44(31, 0, 0);
    v5[2](v5, v3, v4);

    v2 = v5;
  }
}

void sub_1000BC568(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = BLServiceDownloadPipelineLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: When skipping download. Failed to mark download as [finished] for server. Error:  %@", &v8, 0x16u);
    }
  }
}

void sub_1000BC638(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) transactionCoordinator];
  [v7 willStartTransactionWithIdentifier:v5];

  [*(a1 + 40) setDownloadID:v5];
  v8 = BLServiceDownloadPipelineLog();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 48) logUUID];
      v11 = *(a1 + 56);
      v17 = 138544130;
      v18 = v5;
      v19 = 2114;
      v20 = v10;
      v21 = 2114;
      v22 = v11;
      v23 = 2112;
      v24 = v6;
      v12 = "(dID=%{public}@) {logUUID=%{public}@}[Purchase-Mgr]: Failed to request download of kind '%{public}@' due to  %@";
      v13 = v9;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 42;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v13, v14, v12, &v17, v15);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 48) logUUID];
    v16 = *(a1 + 56);
    v17 = 138543874;
    v18 = v5;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v16;
    v12 = "(dID=%{public}@) {logUUID=%{public}@}[Purchase-Mgr]: Successfully requested download of kind '%{public}@'";
    v13 = v9;
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 32;
    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 64));
}

void sub_1000BC7DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = BLServicePurchaseManagerLog();
  v4 = v3;
  if (v2)
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v5 = [*(a1 + 40) logUUID];
    v6 = *(a1 + 32);
    v13 = 138543618;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v7 = "{logUUID=%{public}@}[Purchase-Mgr]: Purchase completed! Error:  %@";
    v8 = v4;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v5 = [*(a1 + 40) logUUID];
    v13 = 138543362;
    v14 = v5;
    v7 = "{logUUID=%{public}@}[Purchase-Mgr]: Purchase completed!";
    v8 = v4;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
  }

  _os_log_impl(&_mh_execute_header, v8, v9, v7, &v13, v10);

LABEL_7:
  v11 = objc_retainBlock(*(a1 + 64));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, *(a1 + 48), *(a1 + 56), *(a1 + 32));
  }
}

void sub_1000BC930(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) buyParameters];
  v4 = [BLUtilities storeIDFromBuyParameters:v3];
  [v2 setObject:v4 forKeyedSubscript:BLDownloadQueuePropertyStoreItemIdentifier];

  [v2 setObject:*(a1 + 40) forKeyedSubscript:BLDownloadQueuePropertyDownloadIdentifier];
  v5 = [*(a1 + 32) buyParameters];
  [v2 setObject:v5 forKeyedSubscript:BLDownloadQueuePropertyPurchaseParameters];

  v6 = [*(a1 + 48) progressSender];
  [v6 sendPurchaseFailedWithUserInfo:v2];

  v7 = BLServiceDownloadPipelineLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: Posting BLDownloadQueuePurchaseFailedNotification.", &v11, 0xCu);
  }

  v9 = objc_retainBlock(*(a1 + 64));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, *(a1 + 40), 0, *(a1 + 56));
  }
}

void sub_1000BDF30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1000BDF54(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPlistPath:*(a1 + 32)];
  [v3 setAssetPath:*(a1 + 40)];
  [v3 setEpubRightsPath:*(a1 + 48)];
  [v3 setArtworkPath:*(a1 + 56)];
  [v3 setDpInfo:*(a1 + 64)];
  [v3 setSinfData:*(a1 + 72)];
  [v3 setFileExtension:*(a1 + 80)];
  [v3 setPublicationVersion:*(a1 + 88)];
  [v3 setIsAutomaticDownload:*(a1 + 96)];
  v4 = [*(a1 + 104) absoluteString];
  [v3 setUrl:v4];

  [v3 setIsRestore:*(a1 + 112)];
  [v3 setIsSample:*(a1 + 120)];
  [v3 setIsPurchase:*(a1 + 128)];
  if (*(a1 + 136))
  {
    v5 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  [v3 setIsLocalCacheServer:v5];
  [v3 setPurchaseDate:*(a1 + 144)];
  [v3 setDownloadKey:*(a1 + 152)];
  [v3 setSize:*(a1 + 160)];
  [v3 setAccountIdentifier:*(a1 + 168)];
  [v3 setFamilyAccountIdentifier:*(a1 + 176)];
  [v3 setStoreIdentifier:*(a1 + 184)];
  [v3 setPersistentIdentifier:*(a1 + 192)];
  [v3 setTransactionIdentifier:*(a1 + 200)];
  [v3 setCancelDownloadURL:*(a1 + 208)];
  [v3 setIsZipStreamable:*(a1 + 216)];
  v6 = [*(a1 + 224) componentsJoinedByString:{@", "}];
  [v3 setMd5HashStrings:v6];

  [v3 setNumberOfBytesToHash:*(a1 + 232)];
  [v3 setServerNumberOfBytesToHash:*(a1 + 240)];
  [v3 setArtistName:*(a1 + 248)];
  [v3 setTitle:*(a1 + 256)];
  [v3 setSubtitle:*(a1 + 264)];
  [v3 setCollectionArtistName:*(a1 + 272)];
  [v3 setCollectionTitle:*(a1 + 280)];
  [v3 setGenre:*(a1 + 288)];
  [v3 setKind:*(a1 + 296)];
  [v3 setThumbnailImageURL:*(a1 + 304)];
  v7 = +[NSDate date];
  [v3 setLastStateChangeTime:v7];

  [v3 setState:&off_100129B18];
  if ([*(a1 + 312) longLongValue])
  {
    [v3 setStorePlaylistIdentifier:*(a1 + 312)];
  }

  [v3 setRacGUID:*(a1 + 320)];
  [v3 setEncryptionKey:*(a1 + 328)];
  [v3 setSalt:*(a1 + 336)];
  v8 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Purchase-Mgr]: Finished preparing the download asset: %@", &v9, 0xCu);
  }
}

void sub_1000BE264(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[4];
      *buf = 138543618;
      v14 = v5;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: [Purchase-Mgr]: Failed to update download with purchase metadata. Error:  %@", buf, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v7 = [WeakRetained dispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000BE42C;
      block[3] = &unk_10011D0C8;
      block[4] = v4;
      v11 = a1[4];
      v12 = a1[5];
      dispatch_async(v7, block);
    }

    else
    {
      v8 = BLServicePurchaseManagerLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = a1[4];
        *buf = 138543362;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "(dID=%{public}@) [Purchase-Mgr]: Purchase manager went away for download.", buf, 0xCu);
      }
    }
  }
}

void sub_1000BE5A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BLServicePurchaseManagerLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) absoluteString];
      v15 = 138543874;
      v16 = v5;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v6;
      v9 = "(dID=%{public}@) [Purchase-Mgr]: Error attempting to download URL: %@. Error:  %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 32;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v15, v12);
    }
  }

  else
  {
    v13 = [v5 length];
    v14 = BLServicePurchaseManagerLog();
    v7 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) absoluteString];
        v15 = 138543618;
        v16 = v5;
        v17 = 2112;
        v18 = v8;
        v9 = "(dID=%{public}@) [Purchase-Mgr]: Processed the download request for URL: %@.";
        v10 = v7;
        v11 = OS_LOG_TYPE_DEFAULT;
        v12 = 22;
        goto LABEL_9;
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) absoluteString];
      v15 = 138412290;
      v16 = v8;
      v9 = "[Purchase-Mgr]: No downloadID returned for URL: %@.";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 12;
      goto LABEL_9;
    }
  }
}

void sub_1000BE840(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BLServicePurchaseManagerLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v12 = 138543618;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      v7 = "(dID=%{public}@) [Purchase-Mgr]: Error attempting restart download %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = 138543362;
    v13 = v11;
    v7 = "(dID=%{public}@) [Purchase-Mgr]: Processed restart download request";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 12;
    goto LABEL_6;
  }
}

void sub_1000BF088(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v7)
  {
    v30 = a1;
    v31 = v6;
    v8 = *v40;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        v11 = [v10 state];
        v12 = [v11 integerValue];

        if ((v12 - 5) > 1)
        {
          v7 = v10;
          goto LABEL_13;
        }

        v13 = BLServicePurchaseManagerLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v10 downloadID];
          v15 = NSStringFromBLDownloadState();
          *buf = 138543618;
          v44 = v14;
          v45 = 2114;
          v46 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: p_downloadIDForRequest - Ignoring downloadID of state: %{public}@", buf, 0x16u);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

LABEL_13:
    a1 = v30;
    v6 = v31;
  }

  v16 = [v7 copyEvaluatorDownload];
  v17 = [v7 downloadID];
  v18 = [v17 copy];

  v19 = BLServicePurchaseManagerLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v7 state];
    [v20 integerValue];
    v21 = NSStringFromBLDownloadState();
    *buf = 138543618;
    v44 = v18;
    v45 = 2114;
    v46 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "(dID=%{public}@) [Purchase-Mgr]: p_downloadIDForRequest - state: %{public}@", buf, 0x16u);
  }

  v22 = [v7 state];
  v23 = [v22 integerValue];

  if ((v23 - 7) >= 0xA && (v23 - 2) > 2)
  {
    v24 = 0;
  }

  else
  {
    [v7 setCleanupPending:&__kCFBooleanFalse];
    v24 = 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v26 = WeakRetained;
  if (WeakRetained)
  {
    v27 = [WeakRetained dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BF494;
    block[3] = &unk_10011EDE8;
    v37 = *(a1 + 32);
    v34 = v18;
    v38 = v24;
    v35 = v16;
    v36 = v6;
    dispatch_async(v27, block);

    v28 = v37;
  }

  else
  {
    v28 = objc_retainBlock(*(a1 + 32));
    if (v28)
    {
      v29 = sub_1000A8F44(0, 0, @"Purchase manager went away");
      v28[2](v28, 0, v24, v16, v29);
    }
  }
}

void sub_1000BF494(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 56));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 64), *(a1 + 40), *(a1 + 48));
    v2 = v3;
  }
}

void sub_1000BF674(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000BF698(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  if ([v6 state] == 6 || objc_msgSend(v6, "state") == 5)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v6 downloadID];
    v7 = [v8 copy];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BF834;
    block[3] = &unk_10011E790;
    v17 = *(a1 + 32);
    v15 = v7;
    v16 = v5;
    dispatch_async(v11, block);
  }

  else
  {
    v12 = objc_retainBlock(*(a1 + 32));
    if (v12)
    {
      v13 = sub_1000A8F44(0, 0, @"Purchase manager went away");
      v12[2](v12, 0, v13);
    }
  }
}

void sub_1000BF834(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), *(a1 + 40));
    v2 = v3;
  }
}

void sub_1000C0970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C0988(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C09A0(uint64_t a1)
{
  v5 = [*(a1 + 32) performAuthentication];
  v2 = [v5 resultWithError:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000C0CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C0D18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000C0D30(uint64_t a1, void *a2)
{
  v3 = [a2 bu_arrayByInvokingBlock:&stru_10011EE78];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

NSDictionary *__cdecl sub_1000C0D8C(id a1, BLDownload *a2)
{
  v9[0] = @"downloadID";
  v2 = a2;
  v3 = [(BLDownload *)v2 downloadID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"<none>";
  }

  v9[1] = @"state";
  v10[0] = v5;
  [(BLDownload *)v2 state];

  v6 = NSStringFromBLDownloadState();
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

void sub_1000C0E80(uint64_t a1, void *a2)
{
  v3 = [a2 bu_arrayByInvokingBlock:&stru_10011EEE0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

NSDictionary *__cdecl sub_1000C0EDC(id a1, BLDownloadPolicy *a2)
{
  v2 = a2;
  v10[0] = @"policyID";
  v3 = [(BLDownloadPolicy *)v2 policyID];
  v4 = v3;
  v5 = @"<none>";
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = @"<none>";
  }

  v10[1] = @"cellularResult";
  v11[0] = v6;
  v7 = [(BLDownloadPolicy *)v2 hasCellularResult];
  if (v7)
  {
    v5 = [NSNumber numberWithInteger:[(BLDownloadPolicy *)v2 cellularResult]];
  }

  v11[1] = v5;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (v7)
  {
  }

  return v8;
}

void sub_1000C2A84(id a1)
{
  qword_10013ECA8 = objc_opt_new();

  _objc_release_x1();
}

id sub_1000C2DB4(uint64_t a1)
{
  [*(a1 + 32) lrq_setupCacheDelete];
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C2E38;
  v4[3] = &unk_10011D4B8;
  v4[4] = v2;
  return [v2 lrq_setupBeforeListenersWithCompletion:v4];
}

void sub_1000C2E38(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BLDaemonLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Some error happened in pre-listener startup: %@", buf, 0xCu);
    }
  }

  v5 = [*(a1 + 32) listenersReadyQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C304C;
  block[3] = &unk_10011CFE8;
  block[4] = *(a1 + 32);
  dispatch_async(v5, block);

  signal(15, 1);
  v6 = dispatch_get_global_queue(21, 0);
  v7 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v6);
  [*(a1 + 32) setSigterm_source:v7];

  v8 = [*(a1 + 32) sigterm_source];
  dispatch_source_set_event_handler(v8, &stru_10011EF20);

  v9 = [*(a1 + 32) sigterm_source];
  dispatch_activate(v9);

  v10 = [*(a1 + 32) startupQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C30B4;
  v11[3] = &unk_10011CFE8;
  v11[4] = *(a1 + 32);
  dispatch_async(v10, v11);
}

void sub_1000C3054(id a1)
{
  v1 = BLDaemonLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "bookassetd received sigterm signal", v2, 2u);
  }

  exit(0);
}

void sub_1000C30B4(uint64_t a1)
{
  [*(a1 + 32) sq_finishedStartingUp];
  v1 = BLDaemonLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Finished starting up.", v2, 2u);
  }
}

void sub_1000C3884(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_1000C38A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained cacheDeleteManager];

  return v2;
}

void sub_1000C3A68(id a1, NSNotification *a2)
{
  v2 = a2;
  v3 = BLDaemonLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Received locale change, stopping bookassetd", v4, 2u);
  }

  exit(0);
}

void *sub_1000C3C90(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_10013ECC0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1000C3DD0;
    v5[4] = &unk_10011D1C8;
    v5[5] = v5;
    v6 = off_10011EFD0;
    v7 = 0;
    qword_10013ECC0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_10013ECC0;
    if (qword_10013ECC0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_10013ECC0;
LABEL_5:
  result = dlsym(v2, "SimulateCrash");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10013ECB8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000C3DD0()
{
  result = _sl_dlopen();
  qword_10013ECC0 = result;
  return result;
}

id sub_1000C45A0(unsigned __int8 *a1, unsigned int a2)
{
  v4 = +[NSMutableString string];
  if (a2)
  {
    v5 = a2;
    do
    {
      v6 = *a1++;
      [v4 appendFormat:@"%02x", v6];
      --v5;
    }

    while (v5);
  }

  return v4;
}

void sub_1000C5770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

void sub_1000C581C(uint64_t a1)
{
  v2 = [ML3DatabaseImport alloc];
  v3 = +[ML3MusicLibrary autoupdatingSharedLibraryPath];
  v4 = [v2 initWithLibraryPath:v3 trackData:*(a1 + 32) playlistData:0];

  v5 = +[MLMediaLibraryService sharedMediaLibraryService];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000C599C;
  v11[3] = &unk_10011EFF0;
  v14 = *(a1 + 72);
  v10 = *(a1 + 40);
  v6 = *(&v10 + 1);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  [v5 performImport:v4 fromSource:6 withProgressBlock:0 completionHandler:v11];
}

void sub_1000C599C(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
    v20 = 0;
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v10 fromData:v8 error:&v20];
    v12 = v20;

    if (v12)
    {
      v13 = BLServiceLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        *buf = 138543618;
        *v22 = v14;
        *&v22[8] = 2112;
        *&v22[10] = v12;
        v15 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to unarchived items. Error =  %@", buf, 0x16u);
      }
    }

    [*(a1 + 40) addObjectsFromArray:v11];
    v16 = [v11 count];
    *(*(*(a1 + 64) + 8) + 24) = v16 == [*(a1 + 48) count];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    if (!v7)
    {
      goto LABEL_11;
    }

    v12 = BLServiceLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *v22 = objc_opt_class();
      *&v22[8] = 2112;
      *&v22[10] = v7;
      v17 = *v22;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@: Failed to import track items. Error =  %@", buf, 0x16u);
    }
  }

LABEL_11:
  v18 = BLServiceLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = *(*(*(a1 + 64) + 8) + 24);
    *buf = 67109378;
    *v22 = v19;
    *&v22[4] = 2112;
    *&v22[6] = v7;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "store import complete. success=%d, err=%@", buf, 0x12u);
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_1000C8BFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[AMSURLSession defaultSession];
    v8 = [v7 dataTaskPromiseWithRequest:v5];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000C8D1C;
    v12[3] = &unk_10011F040;
    v9 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v13 = v9;
    [v8 addFinishBlock:v12];
  }

  else
  {
    v10 = [*(a1 + 32) completion];
    v11 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10, 0, v6);
    }
  }
}

void sub_1000C8D1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) isCancel];
  v8 = BLServiceLog();
  v9 = v8;
  if (v6)
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (!v10)
      {
        goto LABEL_15;
      }

      v11 = *(a1 + 40);
      v22 = 138543618;
      v23 = v11;
      v24 = 2112;
      v25 = v6;
      v12 = "(dID=%{public}@) Request failed for marking download as cancelled for server. Error:  %@";
    }

    else
    {
      if (!v10)
      {
        goto LABEL_15;
      }

      v15 = *(a1 + 40);
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v6;
      v12 = "(dID=%{public}@) Request failed for marking download as done for server. Error:  %@";
    }

    v16 = v9;
    v17 = OS_LOG_TYPE_ERROR;
    v18 = 22;
  }

  else
  {
    v13 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v13)
      {
        goto LABEL_15;
      }

      v14 = *(a1 + 40);
      v22 = 138543362;
      v23 = v14;
      v12 = "(dID=%{public}@) Request finished for marking download as cancelled for server.";
    }

    else
    {
      if (!v13)
      {
        goto LABEL_15;
      }

      v19 = *(a1 + 40);
      v22 = 138543362;
      v23 = v19;
      v12 = "(dID=%{public}@) Request finished for marking download as done for server.";
    }

    v16 = v9;
    v17 = OS_LOG_TYPE_DEFAULT;
    v18 = 12;
  }

  _os_log_impl(&_mh_execute_header, v16, v17, v12, &v22, v18);
LABEL_15:

  v20 = [*(a1 + 32) completion];
  v21 = v20;
  if (v20)
  {
    (*(v20 + 16))(v20, v5 != 0, v6);
  }
}

void sub_1000C9E4C(id a1)
{
  v3[0] = BLSSDownloadAssetPropertyIsDRMFree;
  v3[1] = BLSSDownloadAssetPropertyStoreFlavor;
  v4[0] = @"drm-free";
  v4[1] = @"flavor";
  v3[2] = BLSSDownloadAssetPropertyVideoDimensions;
  v4[2] = @"dimensions";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
  v2 = qword_10013ECC8;
  qword_10013ECC8 = v1;
}

void sub_1000C9F78(id a1)
{
  v3[0] = BLSSDownloadPropertyKind;
  v3[1] = BLSSDownloadPropertyStoreItemIdentifier;
  v4[0] = @"kind";
  v4[1] = @"item-id";
  v3[2] = BLSSDownloadPropertyStoreCollectionIdentifier;
  v3[3] = BLSSDownloadPropertyStoreFrontIdentifier;
  v4[2] = @"playlistId";
  v4[3] = @"store-front-id";
  v3[4] = BLSSDownloadPropertyStoreSoftwareVersionIdentifier;
  v4[4] = @"software-external-version-identifier";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
  v2 = qword_10013ECD8;
  qword_10013ECD8 = v1;
}

id sub_1000CB09C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && [v5 actionType] == 22)
  {
    objc_opt_class();
    v7 = [v5 actionURL];
    v8 = [v7 bu_dictionaryForQueryItems];
    v9 = [v8 objectForKeyedSubscript:@"reason"];
    v29 = BUDynamicCast();

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v6;
    v28 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v28)
    {
      v25 = v6;
      v27 = *v31;
      while (2)
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          v12 = [v11 notificationReason];
          v13 = [v11 notificationSubtype];
          if ([v29 isEqualToString:v12])
          {
            v22 = v11;
LABEL_20:

            goto LABEL_21;
          }

          objc_opt_class();
          v14 = v5;
          v15 = [v5 userInfo];
          v16 = [v15 objectForKeyedSubscript:@"aps"];
          v17 = [v16 objectForKeyedSubscript:@"_mt"];
          v18 = [v17 objectForKeyedSubscript:@"details"];
          v19 = BUDynamicCast();

          if (v19)
          {
            objc_opt_class();
            v20 = [v19 objectForKeyedSubscript:@"notificationSubtype"];
            v21 = BUDynamicCast();

            if (v21 && ([v21 isEqualToString:v13] & 1) != 0)
            {
              v23 = v11;

              v5 = v14;
              goto LABEL_20;
            }
          }

          v5 = v14;
        }

        v28 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }

      v11 = 0;
LABEL_21:
      v6 = v25;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1000CB478()
{
  dlerror();
  v0 = abort_report_np();
  return sub_1000CB49C(v0);
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}