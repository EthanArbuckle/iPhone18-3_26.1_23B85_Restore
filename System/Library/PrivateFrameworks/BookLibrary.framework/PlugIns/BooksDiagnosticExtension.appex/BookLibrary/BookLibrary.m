void sub_100000D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100000DAC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100000DC4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if ((*(a1 + 56) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  v8 = [NSRegularExpression regularExpressionWithPattern:*(*(*(a1 + 48) + 8) + 40) options:0 error:0];
  v9 = [NSRegularExpression regularExpressionWithPattern:@"(shm)" options:0 error:0];
  v10 = [*(a1 + 32) filesInDir:v7 matchingPattern:v8 excludingPattern:v9];
  if ([v10 count])
  {
    v39 = v9;
    v41 = v7;
    v11 = +[NSFileManager defaultManager];
    v12 = NSTemporaryDirectory();
    v13 = [*(a1 + 32) _fileDateSuffix];
    v42 = v6;
    v14 = [v6 stringByAppendingString:v13];
    v15 = [v12 stringByAppendingPathComponent:v14];

    v52 = 1;
    if ([v11 fileExistsAtPath:v15 isDirectory:&v52])
    {
      [v11 removeItemAtPath:v15 error:0];
    }

    v51 = 0;
    v16 = [v11 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v51];
    v17 = v51;
    if ((v16 & 1) == 0)
    {
      v18 = BLBooksDiagnosticExtensionLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v55 = v15;
        v56 = 2112;
        v57 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not create temporary directory at path: %@ %@", buf, 0x16u);
      }
    }

    v36 = v17;
    v40 = v8;
    v37 = v15;
    v45 = [NSURL fileURLWithPath:v15, a1];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v38 = v10;
    obj = v10;
    v19 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v19)
    {
      v20 = v19;
      v44 = *v48;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v48 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v47 + 1) + 8 * i);
          v23 = [v22 path];
          v24 = [v22 path];
          v25 = [v24 lastPathComponent];
          v26 = [v45 URLByAppendingPathComponent:v25];
          v46 = 0;
          v27 = v11;
          v28 = [v11 copyItemAtURL:v23 toURL:v26 error:&v46];
          v29 = v46;

          if ((v28 & 1) == 0)
          {
            v30 = BLBooksDiagnosticExtensionLog();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v55 = v22;
              v56 = 2112;
              v57 = v29;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Error zipping item: %@ %@", buf, 0x16u);
            }
          }

          v11 = v27;
        }

        v20 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v20);
    }

    v31 = [DEArchiver archiveDirectoryAt:v45 deleteOriginal:1];
    if (v31)
    {
      v32 = *(v35 + 40);
      v33 = [DEAttachmentItem attachmentWithPathURL:v31];
      [v32 addObject:v33];
      v6 = v42;
      v8 = v40;
    }

    else
    {
      v33 = BLBooksDiagnosticExtensionLog();
      v8 = v40;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v55 = v45;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Could not create archive directory %@", buf, 0xCu);
      }

      v6 = v42;
    }

    v10 = v38;
    v34 = v36;

    v7 = v41;
    v9 = v39;
  }

  else
  {
    v34 = BLBooksDiagnosticExtensionLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v55 = v6;
      v56 = 2112;
      v57 = v7;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Cannot find %@ in directory %@", buf, 0x16u);
    }
  }
}

id BLBooksDiagnosticExtensionLog()
{
  if (qword_10000C410 != -1)
  {
    sub_100002E74();
  }

  v1 = qword_10000C408;

  return v1;
}

void sub_1000018C0(id a1)
{
  qword_10000C408 = os_log_create("com.apple.iBooks.BookLibrary", "BLBooksDiagnosticExtensionLog");

  _objc_release_x1();
}