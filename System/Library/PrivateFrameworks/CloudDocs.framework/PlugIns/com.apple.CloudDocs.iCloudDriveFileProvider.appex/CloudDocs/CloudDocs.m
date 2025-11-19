void sub_100001C50(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (qword_1000523B0 != -1)
  {
    sub_100028134();
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001D48;
  v10[3] = &unk_100044F60;
  v10[4] = &v12;
  v11 = a1;
  dispatch_sync(qword_1000523A8, v10);
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *a5 = v13[3];
  *(a5 + 16) = a3;
  *(a5 + 20) = a4;
  _Block_object_dispose(&v12, 8);
}

uint64_t sub_100001D48(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = qword_1000523A0 + 1;
  v1 = *(*(result + 32) + 8);
  v2 = *(v1 + 24);
  if ((*(v1 + 24) & 1) == *(result + 40))
  {
    *(v1 + 24) = v2 + 1;
    v2 = *(*(*(result + 32) + 8) + 24);
  }

  qword_1000523A0 = v2;
  return result;
}

void sub_100001DE4(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      v4 = *(a1 + 16);
      v5 = brc_bread_crumbs();
      v6 = *(a1 + 20);
      v7 = brc_default_log();
      v8 = v7;
      if (v2)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_100001EF0(v5, v2, v8);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 134218242;
        v10 = v2;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] ┗%llx %@", &v9, 0x16u);
      }
    }
  }
}

void sub_100001EF0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┗%llx %@", &v3, 0x16u);
}

void sub_100002408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10000279C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_1000027D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315906;
    v7 = "[ICDFileProviderClientSideCollaborationServiceProxy calculateCollaborationVersionForContents:reply:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v6, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000028F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [[ICDCollaborationVersion alloc] initWithCollaborationSignature:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 136315906;
    v11 = "[ICDFileProviderClientSideCollaborationServiceProxy calculateCollaborationVersionForContents:reply:]_block_invoke";
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v10, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100002C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_100002CAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136316162;
    v7 = "[ICDFileProviderClientSideCollaborationServiceProxy fetchLatestRevisionWithReply:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v6, 0x34u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100002DD4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [[ICDCollaborationVersion alloc] initWithCollaborationSignature:v7];
  }

  else
  {
    v10 = 0;
  }

  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = 136316162;
    v14 = "[ICDFileProviderClientSideCollaborationServiceProxy fetchLatestRevisionWithReply:]_block_invoke";
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v13, 0x34u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100003458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a28, 8);
  sub_100001DE4(&a32);
  _Unwind_Resume(a1);
}

void sub_1000034B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if ((*(*(*(a1 + 40) + 8) + 24) & 0x8000000000000000) == 0)
  {
    [BRPosixOperationsWrapper releaseSandboxExtensionHandle:?];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100003554(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136316162;
    v7 = "[ICDFileProviderClientSideCollaborationServiceProxy fetchLatestRevisionIntoURL:reply:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v6, 0x34u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000367C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v22 = "[ICDFileProviderClientSideCollaborationServiceProxy fetchLatestRevisionIntoURL:reply:]_block_invoke";
      v23 = 2112;
      v24 = 0;
      v25 = 2112;
      v26 = 0;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", buf, 0x34u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = [*(a1 + 32) url];
    v13 = [v7 lastPathComponent];
    v14 = [v12 URLByAppendingPathComponent:v13];

    v15 = +[NSFileManager defaultManager];
    v20 = 0;
    v16 = [v15 moveItemAtURL:v7 toURL:v14 error:&v20];
    v17 = v20;

    if (v16)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136316162;
        v22 = "[ICDFileProviderClientSideCollaborationServiceProxy fetchLatestRevisionIntoURL:reply:]_block_invoke";
        v23 = 2112;
        v24 = v14;
        v25 = 2112;
        v26 = v8;
        v27 = 2112;
        v28 = 0;
        v29 = 2112;
        v30 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", buf, 0x34u);
      }
    }

    else
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136316162;
        v22 = "[ICDFileProviderClientSideCollaborationServiceProxy fetchLatestRevisionIntoURL:reply:]_block_invoke";
        v23 = 2112;
        v24 = 0;
        v25 = 2112;
        v26 = 0;
        v27 = 2112;
        v28 = v17;
        v29 = 2112;
        v30 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", buf, 0x34u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100003DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_100003DEC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = +[BRDaemonConnection defaultConnection];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100003FC8;
  v23[3] = &unk_100044598;
  v24 = *(a1 + 72);
  v10 = [v9 remoteObjectProxyWithErrorHandler:v23];

  if (a4 || ![v7 isEqualToString:*(a1 + 32)])
  {
    v11 = 0;
  }

  else
  {
    v11 = [v8 isEqualToString:*(a1 + 40)];
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1000040E4;
  v21 = &unk_100044660;
  v15 = *(a1 + 80);
  v22 = *(a1 + 72);
  v16 = [v10 uploadItemIdentifier:v12 withContents:v13 baseVersion:v14 basedOnOriginalVersion:v11 options:v15 reply:&v18];
  v17 = v16;
  if (v16)
  {
    [*(a1 + 64) setTotalUnitCount:{objc_msgSend(v16, "totalUnitCount", v18, v19, v20, v21)}];
    [*(a1 + 64) addChild:v17 withPendingUnitCount:{objc_msgSend(v17, "totalUnitCount")}];
  }
}

void sub_100003FC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315906;
    v7 = "[ICDFileProviderClientSideCollaborationServiceProxy uploadContents:baseVersion:options:reply:]_block_invoke_2";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v6, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000040E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315906;
    v10 = "[ICDFileProviderClientSideCollaborationServiceProxy uploadContents:baseVersion:options:reply:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v9, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100004600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100004638(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100026964(v2, v3);
  }

  return [*(a1 + 32) invalidate];
}

void sub_1000046B8(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000269DC(v2, v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void sub_100004948(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
    v5 = [v4 domain];
    if ([v5 isEqualToString:BRCloudDocsErrorDomain])
    {
      v6 = [v10 code];

      if (v6 != 2)
      {
LABEL_6:
        v7 = *(a1 + 32);
        v8 = [v10 br_fileProviderError];
        [v7 finishEnumeratingWithError:v8];

        return;
      }

      [NSError errorWithDomain:NSFileProviderErrorDomain code:-1000 userInfo:0];
      v10 = v5 = v10;
    }

    goto LABEL_6;
  }

  [*(a1 + 32) finishEnumeratingUpToPage:0];
  v9 = *(*(a1 + 40) + 24);

  [v9 br_signalWorkingSetEnumeratorWithCompletionHandler:&stru_100044740];
}

void sub_100004C14(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v19 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = v10;
    v12 = [v10 domain];
    if ([v12 isEqualToString:BRCloudDocsErrorDomain])
    {
      v13 = [v11 code];

      if (v13 != 2)
      {
LABEL_6:
        v14 = *(a1 + 32);
        v15 = [v11 br_fileProviderError];
        [v14 finishEnumeratingWithError:v15];

        goto LABEL_8;
      }

      [NSError errorWithDomain:NSFileProviderErrorDomain code:-1000 userInfo:0];
      v11 = v12 = v11;
    }

    goto LABEL_6;
  }

  [*(a1 + 32) didUpdateItems:a2];
  v16 = *(a1 + 32);
  v17 = NSStringFromSelector("asString");
  v18 = [v19 valueForKey:v17];
  [v16 didDeleteItemsWithIdentifiers:v18];

  [*(a1 + 32) finishEnumeratingChangesUpToSyncAnchor:v9 moreComing:{objc_msgSend(*(a1 + 40), "isEqualToData:", v9) ^ 1}];
LABEL_8:
}

void sub_100005140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10000516C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = [v5 participants];
    v13 = 138413314;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    v17 = 2048;
    v18 = [v5 publicPermission];
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@, %ld, %@)%@", &v13, 0x34u);
  }

  v9 = *(a1 + 40);
  v10 = [v5 participants];
  (*(v9 + 16))(v9, v10, [v5 publicPermission], v6);
}

void sub_100005420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10000599C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCompletedUnitCount:1];

  objc_storeStrong((*(a1 + 32) + 32), a2);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = 138413058;
    v13 = v11;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@, %@)%@", &v12, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100005AF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

void sub_100005DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_100005DE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 32);
      *location = 138412802;
      *&location[4] = v20;
      v30 = 2112;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@)%@", location, 0x20u);
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_16;
  }

  if ([v5 isKnownToServer])
  {
    v9 = [v5 objectForKeyedSubscript:CKShareTypeKey];
    if ([v9 isEqual:_BRFolderShareType])
    {
      v10 = [*(*(a1 + 32) + 8) characterAtIndex:0];

      if (v10 != 105)
      {
        v11 = brc_bread_crumbs();
        v12 = brc_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          sub_100026B50((a1 + 32), v11, v12);
        }

        v13 = *(a1 + 48);
        v14 = [NSError br_errorWithPOSIXCode:45];
        (*(v13 + 16))(v13, v14);

        goto LABEL_16;
      }
    }

    else
    {
    }

    v17 = *(a1 + 32);
    v18 = *(v17 + 32);
    *(v17 + 32) = 0;

    [*(a1 + 40) setCompletedUnitCount:1];
    v19 = [[BRShareDestroyOperation alloc] initWithShare:v5 fileURL:*(*(a1 + 32) + 24)];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000061D8;
    v26[3] = &unk_100044808;
    v26[4] = *(a1 + 32);
    v28 = *(a1 + 48);
    v27 = *(a1 + 40);
    [v19 setShareDestroyCompletionBlock:v26];
    objc_initWeak(location, v19);
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000062F0;
    v24 = &unk_1000446D8;
    objc_copyWeak(&v25, location);
    [*(a1 + 40) setCancellationHandler:&v21];
    [*(*(a1 + 32) + 16) addOperation:{v19, v21, v22, v23, v24}];
    objc_destroyWeak(&v25);
    objc_destroyWeak(location);

    goto LABEL_16;
  }

  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_100026ABC(a1, v15, v16);
  }

  (*(*(a1 + 48) + 16))();
LABEL_16:
}

void sub_1000061B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000061D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) setCompletedUnitCount:2];
}

void sub_1000062F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

void sub_1000066C4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_10000685C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v6 = [a3 br_fileProviderError];
    [v3 finishEnumeratingWithError:v6];
  }

  else
  {
    [*(a1 + 32) didEnumerateItems:a2];
    v5 = *(a1 + 32);

    [v5 finishEnumeratingUpToPage:0];
  }
}

void sub_100006DE0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, 0x90u, "[ERROR] %@ - failed to signal enumerator for root container: %@%@", &v7, 0x20u);
    }
  }
}

void sub_100007140(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100026D6C(a1);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  [*(a1 + 32) invalidateChangeToken];
  v6 = [*(a1 + 40) domain];
  v7 = [v6 isEqualToString:BRCloudDocsErrorDomain];

  if (v7)
  {
    [*(a1 + 32) _signalChange];
  }
}

void sub_100007530(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 32);
    *buf = 138413058;
    v21 = v14;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Received notification sender %@ error %@%@", buf, 0x2Au);
  }

  v10 = *(*(a1 + 32) + 88);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000076E0;
  v15[3] = &unk_100044938;
  v16 = v7;
  v11 = *(a1 + 40);
  v18 = v6;
  v19 = v11;
  v17 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  dispatch_async(v10, v15);
}

void sub_1000076E0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 56);
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 40);
    if (*(v4 + 73) == 1)
    {
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100026F24((a1 + 40));
      }

      [*(a1 + 48) invalidate];
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v7 = *(v4 + 72);
      v8 = *(a1 + 48);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10000793C;
      v23[3] = &unk_100044700;
      v23[4] = v4;
      v9 = [v8 remoteObjectProxyWithErrorHandler:v23];
      v10 = *(a1 + 40);
      v11 = *(v10 + 24);
      *(v10 + 24) = v9;

      [*(*(a1 + 40) + 24) boostPriority:&stru_1000448E8];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10000794C;
      v22[3] = &unk_100044700;
      v22[4] = *(a1 + 40);
      v12 = objc_retainBlock(v22);
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_100007958;
      v19 = &unk_100044910;
      v20 = *(a1 + 40);
      v21 = v12;
      v13 = v12;
      v14 = objc_retainBlock(&v16);
      if (v7)
      {
        v15 = 7;
      }

      else
      {
        v15 = 3;
      }

      [*(a1 + 40) watchItemWithUpdateSender:*(a1 + 48) options:v15 errorHandler:v13 gatherReply:{v14, v16, v17, v18, v19, v20}];
      (*(*(a1 + 56) + 16))();
    }
  }
}

void sub_100007958(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v6 = *(a1 + 32);
    v5 = a1 + 32;
    v4 = v6;
    objc_sync_enter(v4);
    *(*v5 + 112) = 1;
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10002706C(v5);
    }

    if (*(*v5 + 96))
    {
      if ([*(*v5 + 32) count])
      {
        v9 = *(*v5 + 96);
        v10 = [*(*v5 + 32) allValues];
        [v9 didEnumerateItems:v10];
      }

      [*(*v5 + 96) finishEnumeratingUpToPage:0];
      v11 = *(*v5 + 96);
      *(*v5 + 96) = 0;
    }

    objc_sync_exit(v4);
    goto LABEL_11;
  }

  (*(*(a1 + 40) + 16))();
  if (*(*(a1 + 32) + 96))
  {
    sub_100026F9C(&v12);
    v4 = v12;
LABEL_11:
  }
}

void sub_100008438(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v13 = [a2 br_fileProviderError];
    [v3 finishEnumeratingWithError:v13];
  }

  else if ([*(a1 + 40) br_pageTokenCompletedInitialEnumeration])
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(a1 + 32);

    [v4 enumerateNextGatherBatchWithObserver:v6 fromPage:v5];
  }

  else
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100008664;
    v16[3] = &unk_1000449B0;
    v19 = *(a1 + 64);
    v20 = *(a1 + 80);
    v7 = *(a1 + 56);
    v16[4] = *(a1 + 48);
    v17 = v7;
    v18 = *(a1 + 32);
    v21 = *(a1 + 88);
    v8 = objc_retainBlock(v16);
    v9 = [*(a1 + 32) suggestedPageSize];
    if (v9 >= 0xC8)
    {
      v10 = 200;
    }

    else
    {
      v10 = v9;
    }

    v11 = +[BRDaemonConnection defaultConnection];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100008940;
    v14[3] = &unk_100044700;
    v15 = *(a1 + 32);
    v12 = [v11 remoteObjectProxyWithErrorHandler:v14];
    [v12 enumerateItemsInFolder:*(*(a1 + 48) + 16) sortOrder:*(a1 + 88) offset:objc_msgSend(*(a1 + 40) limit:"br_pageTokenOffset") completion:{v10, v8}];
  }
}

void sub_100008664(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  v21 = *(a1 + 56);
  v22 = *(a1 + 72);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17 = "";
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    if (a4)
    {
      v17 = " (waiting for gather complete)";
    }

    *buf = 134219522;
    v24 = v21;
    v25 = 2112;
    v26 = v18;
    v27 = 2048;
    v28 = a3;
    v29 = 2080;
    v30 = v17;
    v31 = 2112;
    v32 = v19;
    v33 = 2112;
    v34 = v9;
    v35 = 2112;
    v36 = v11;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx %@ - received next page %llu%s for %@ items=%@%@", buf, 0x48u);
  }

  if (v10)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, 0x90u))
    {
      v20 = *(a1 + 32);
      *buf = 138412802;
      v24 = v20;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v13;
      _os_log_error_impl(&_mh_execute_header, v14, 0x90u, "[ERROR] %@ - there was an error when listing items: %@%@", buf, 0x20u);
    }

    v15 = *(a1 + 48);
    v16 = [v10 br_fileProviderError];
    [v15 finishEnumeratingWithError:v16];
  }

  else
  {
    [*(a1 + 48) didEnumerateItems:v9];
    v16 = [NSData br_pageTokenFromSortOrder:*(a1 + 80) offset:a3];
    if (v16)
    {
      [*(a1 + 48) finishEnumeratingUpToPage:v16];
    }

    else
    {
      if (a4)
      {
        v16 = [NSData br_pageTokenFromSortOrder:*(a1 + 80) gatherBatch:0];
      }

      else
      {
        v16 = 0;
      }

      [*(a1 + 48) finishEnumeratingUpToPage:{v16, v21, v22}];
    }
  }

  sub_100001DE4(&v21);
}

void sub_100008940(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 br_fileProviderError];
  [v2 finishEnumeratingWithError:v3];
}

void sub_100008E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  objc_sync_exit(v10);
  sub_100001DE4(&a10);
  _Unwind_Resume(a1);
}

void sub_100009798(id a1)
{
  v3 = [UMUserPersonaAttributes personaAttributesForPersonaType:0];
  v1 = [v3 userPersonaUniqueString];
  v2 = qword_100052380;
  qword_100052380 = v1;
}

void sub_100009C58(id a1)
{
  v3 = [UMUserPersonaAttributes personaAttributesForPersonaType:0];
  v1 = [v3 userPersonaUniqueString];
  v2 = qword_100052390;
  qword_100052390 = v1;
}

void *sub_100009CB8(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[3])
  {
    [result invalidateChangeToken];
    v3 = *(a1 + 32);

    return [v3 _signalChange];
  }

  return result;
}

id sub_100009F28(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10002751C(a1);
  }

  return [*(a1 + 32) _invalidate];
}

void sub_10000A144(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, 0x90u, a4, va, 0x16u);
}

void sub_10000A164(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10000A2CC(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100027594(a1);
  }

  v4 = +[BRDaemonConnection defaultConnection];
  v5 = [v4 newFPFSSyncProxy];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A3DC;
  v7[3] = &unk_100044700;
  v6 = *(a1 + 40);
  v8 = *(a1 + 32);
  [v5 boostFilePresenterForItemIdentifier:v6 reply:v7];
}

void sub_10000A3DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 8);
      v8 = 138413058;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Received an error while boosting item %@ in ICDFileEnumerator - %@%@", &v8, 0x2Au);
    }
  }

  else
  {
    v4 = *(a1 + 32);
    objc_sync_enter(v4);
    *(*(a1 + 32) + 128) = 1;
    objc_sync_exit(v4);
  }
}

void sub_10000A804(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100027700(a1);
  }

  v4 = +[BRDaemonConnection defaultConnection];
  v5 = [v4 newFPFSSyncProxy];

  v6 = [NSArray arrayWithObject:*(*(a1 + 32) + 8)];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A934;
  v7[3] = &unk_100044700;
  v7[4] = *(a1 + 32);
  [v5 unboostFilePresenterForItemIdentifiers:v6 reply:v7];
}

void sub_10000A934(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 8);
      v8 = 138413058;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Received an error while unboosting item %@ in ICDFileEnumerator - %@%@", &v8, 0x2Au);
    }
  }
}

void sub_10000AA7C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

id sub_10000ABCC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [[BRThumbnailRequest alloc] initWithIdentifier:*(*(&v23 + 1) + 8 * i) version:0];
        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000C048;
  v21[3] = &unk_100044A40;
  v22 = v9;
  v18 = v9;
  v19 = sub_10000ADDC(v11, v8, v21, v10);

  return v19;
}

id sub_10000ADDC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v87 = a2;
  v96 = a3;
  v88 = a4;
  v89 = [NSProgress progressWithTotalUnitCount:0];
  v91 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  memset(v164, 0, sizeof(v164));
  sub_100001C50(0, "BRBaseFetchThumbnailsWithThumbnailRequests", 78, 0, v164);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *v174 = 134218498;
    *&v174[4] = v164[0];
    *&v174[12] = 2112;
    *&v174[14] = v7;
    *&v174[22] = 2112;
    v175 = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx starting fetch thumbnail for %@%@", v174, 0x20u);
  }

  v95 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v160 objects:v178 count:16];
  if (v10)
  {
    v11 = *v161;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v161 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v160 + 1) + 8 * i);
        v14 = [v13 identifier];
        v15 = [BRFileObjectID fileObjectIDWithString:v14];
        v16 = v15;
        if (!v15)
        {
          if (!v96)
          {
            goto LABEL_17;
          }

          v17 = [v13 version];
          v18 = [NSError brc_errorItemNotFound:v14];
          v19 = [v18 br_fileProviderErrorForDownloadFlow];
          (*(v96 + 2))(v96, v14, v17, 0, 0, v19);

          goto LABEL_13;
        }

        if ([v15 type] == 2)
        {
          [v91 addObject:v16];
          v17 = [v13 version];
          v18 = [v13 identifier];
          [v95 setObject:v17 forKeyedSubscript:v18];
LABEL_13:

          goto LABEL_16;
        }

        if (!v96)
        {
          goto LABEL_17;
        }

        v17 = [v13 version];
        (*(v96 + 2))(v96, v14, v17, 0, 0, 0);
LABEL_16:

LABEL_17:
      }

      v10 = [obj countByEnumeratingWithState:&v160 objects:v178 count:16];
    }

    while (v10);
  }

  if ([v91 count])
  {
    v20 = +[BRDaemonConnection defaultConnection];
    v21 = [v20 newSyncProxy];

    *v174 = 0;
    *&v174[8] = v174;
    *&v174[16] = 0x3032000000;
    v175 = sub_10000C0E8;
    v176 = sub_10000C0F8;
    v177 = 0;
    v154 = 0;
    v155 = &v154;
    v156 = 0x3032000000;
    v157 = sub_10000C0E8;
    v158 = sub_10000C0F8;
    v159 = 0;
    v148 = 0;
    v149 = &v148;
    v150 = 0x3032000000;
    v151 = sub_10000C0E8;
    v152 = sub_10000C0F8;
    v153 = 0;
    v142 = 0;
    v143 = &v142;
    v144 = 0x3032000000;
    v145 = sub_10000C0E8;
    v146 = sub_10000C0F8;
    v147 = 0;
    v136 = 0;
    v137 = &v136;
    v138 = 0x3032000000;
    v139 = sub_10000C0E8;
    v140 = sub_10000C0F8;
    v141 = 0;
    v129[0] = _NSConcreteStackBlock;
    v129[1] = 3221225472;
    v129[2] = sub_10000C100;
    v129[3] = &unk_100044A68;
    v130 = v21;
    v131 = &v136;
    v132 = v174;
    v133 = &v154;
    v134 = &v148;
    v135 = &v142;
    v86 = v130;
    [v130 resolveFileObjectIDsToContentRecordIDsForThumbnails:v91 reply:v129];
    if (v137[5])
    {
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v92 = v149[5];
      v22 = [v92 countByEnumeratingWithState:&v125 objects:v167 count:16];
      if (v22)
      {
        v23 = *v126;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v126 != v23)
            {
              objc_enumerationMutation(v92);
            }

            v25 = *(*(&v125 + 1) + 8 * j);
            v26 = brc_bread_crumbs();
            v27 = brc_default_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v169 = v25;
              v170 = 2112;
              v171 = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't resolve file objectID %@%@", buf, 0x16u);
            }

            v28 = [v25 asString];
            v29 = [v25 asString];
            v30 = [v95 objectForKeyedSubscript:v29];
            v31 = [v25 asString];
            v32 = [NSError brc_errorItemNotFound:v31];
            v33 = [v32 br_fileProviderErrorForDownloadFlow];
            (*(v96 + 2))(v96, v28, v30, 0, 0, v33);
          }

          v22 = [v92 countByEnumeratingWithState:&v125 objects:v167 count:16];
        }

        while (v22);
      }

      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v34 = v155[5];
      v35 = [v34 countByEnumeratingWithState:&v121 objects:v166 count:16];
      if (v35)
      {
        v36 = *v122;
        do
        {
          for (k = 0; k != v35; k = k + 1)
          {
            if (*v122 != v36)
            {
              objc_enumerationMutation(v34);
            }

            v38 = *(*(&v121 + 1) + 8 * k);
            v39 = [v38 asString];
            v40 = [v38 asString];
            v41 = [v95 objectForKeyedSubscript:v40];
            (*(v96 + 2))(v96, v39, v41, 0, 0, 0);
          }

          v35 = [v34 countByEnumeratingWithState:&v121 objects:v166 count:16];
        }

        while (v35);
      }

      if ([v137[5] count] || objc_msgSend(*(*&v174[8] + 40), "count"))
      {
        v117 = 0uLL;
        v118 = 0;
        sub_100001C50(0, "BRBaseFetchThumbnailsWithThumbnailRequests", 147, 0, &v117);
        v42 = brc_bread_crumbs();
        v43 = brc_default_log();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v84 = v137[5];
          *buf = 134218498;
          v169 = v117;
          v170 = 2112;
          v171 = v84;
          v172 = 2112;
          v173 = v42;
          _os_log_debug_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx fetching the thumbnails for: %@%@", buf, 0x20u);
        }

        v119 = v117;
        v120 = v118;
        v44 = [NSMutableArray alloc];
        v90 = [v44 initWithCapacity:{objc_msgSend(*(*&v174[8] + 40), "count")}];
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v45 = *(*&v174[8] + 40);
        v46 = [v45 countByEnumeratingWithState:&v113 objects:v165 count:16];
        if (v46)
        {
          v93 = *v114;
          do
          {
            for (m = 0; m != v46; m = m + 1)
            {
              if (*v114 != v93)
              {
                objc_enumerationMutation(v45);
              }

              v48 = *(*(&v113 + 1) + 8 * m);
              v49 = [v48 asString];
              v50 = [v95 objectForKey:v49];

              if (v50)
              {
                v51 = [v143[5] objectForKey:v48];
                v52 = [v50 br_contentEtag];
                if (v51 && [v51 isEqualToString:v52])
                {
                  [v90 addObject:v48];
                }

                else
                {
                  v53 = brc_bread_crumbs();
                  v54 = brc_default_log();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v169 = v48;
                    v170 = 2112;
                    v171 = v53;
                    _os_log_debug_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEBUG, "[DEBUG] Asked for remote version thumbnail for fileID %@%@", buf, 0x16u);
                  }

                  v55 = [v48 asString];
                  v56 = [v48 asString];
                  v57 = [v95 objectForKeyedSubscript:v56];
                  (*(v96 + 2))(v96, v55, v57, 0, 0, 0);
                }
              }

              else
              {
                [v90 addObject:v48];
              }
            }

            v46 = [v45 countByEnumeratingWithState:&v113 objects:v165 count:16];
          }

          while (v46);
        }

        v110[0] = _NSConcreteStackBlock;
        v110[1] = 3221225472;
        v110[2] = sub_10000C22C;
        v110[3] = &unk_100044A90;
        v58 = v96;
        v112 = v58;
        v59 = v95;
        v111 = v59;
        v87[2](v87, v90, v110);
        if ([v137[5] count])
        {
          v60 = objc_opt_new();
          v61 = v137[5];
          v108[0] = _NSConcreteStackBlock;
          v108[1] = 3221225472;
          v108[2] = sub_10000C320;
          v108[3] = &unk_100044AB8;
          v62 = v60;
          v109 = v62;
          [v61 enumerateKeysAndObjectsUsingBlock:v108];
          v63 = +[CKOperationGroup br_downloadThumbnailsUserInitiated];
          v64 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v62, "count")}];
          v65 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v62, "count")}];
          v66 = [CKContainer containerWithIdentifier:BRUbiquitousCloudKitContainerIdentifier];
          [v66 setSourceApplicationBundleIdentifier:BRDaemonBundleID];
          v99[0] = _NSConcreteStackBlock;
          v99[1] = 3221225472;
          v99[2] = sub_10000C41C;
          v99[3] = &unk_100044B30;
          v67 = v64;
          v100 = v67;
          v68 = v65;
          v101 = v68;
          v102 = v59;
          v69 = v62;
          v103 = v69;
          v106 = v119;
          v107 = v120;
          v105 = v58;
          v70 = v63;
          v104 = v70;
          [v69 enumerateKeysAndObjectsUsingBlock:v99];
          sub_10000CDF4(v67, v68, v66, 0, v88);
          [v89 setCancellable:1];
          v97[0] = _NSConcreteStackBlock;
          v97[1] = 3221225472;
          v97[2] = sub_10000D204;
          v97[3] = &unk_1000446B0;
          v71 = v67;
          v98 = v71;
          [v89 setCancellationHandler:v97];
          v72 = v89;
        }

        else
        {
          (*(v88 + 2))(v88, 0);
          v80 = v89;
        }

        v75 = v89;
      }

      else
      {
        v82 = brc_bread_crumbs();
        v83 = brc_default_log();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v169 = v82;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "[WARNING] No thumbnails left to fetch after attempting to resolve content record ids%@", buf, 0xCu);
        }

        (*(v88 + 2))(v88, 0);
        v75 = 0;
      }
    }

    else
    {
      v76 = brc_bread_crumbs();
      v77 = brc_default_log();
      if (os_log_type_enabled(v77, 0x90u))
      {
        v85 = [v86 error];
        *buf = 138412802;
        v169 = v91;
        v170 = 2112;
        v171 = v85;
        v172 = 2112;
        v173 = v76;
        _os_log_error_impl(&_mh_execute_header, v77, 0x90u, "[ERROR] can't get the record ids for %@: %@%@", buf, 0x20u);
      }

      v78 = [v86 error];
      v79 = [v78 br_fileProviderErrorForDownloadFlow];
      (*(v88 + 2))(v88, v79);

      v75 = v89;
    }

    _Block_object_dispose(&v136, 8);
    _Block_object_dispose(&v142, 8);

    _Block_object_dispose(&v148, 8);
    _Block_object_dispose(&v154, 8);

    _Block_object_dispose(v174, 8);
  }

  else
  {
    v73 = brc_bread_crumbs();
    v74 = brc_default_log();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      sub_10002777C();
    }

    (*(v88 + 2))(v88, 0);
    v75 = v89;
  }

  sub_100001DE4(v164);

  return v75;
}

void sub_10000BF40(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x340], 8);
  _Block_object_dispose(&STACK[0x570], 8);
  sub_100001DE4(&STACK[0x3B8]);
  _Unwind_Resume(a1);
}

void sub_10000C048(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v9 = a6;
  if (a4)
  {
    a4 = [NSData dataWithContentsOfURL:a4];
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10000C0E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000C100(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  [*(a1 + 32) setError:a7];
  v18 = *(*(a1 + 40) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v13;
  v31 = v13;

  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v14;
  v22 = v14;

  v23 = *(*(a1 + 56) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v15;
  v25 = v15;

  v26 = *(*(a1 + 64) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v16;
  v28 = v16;

  v29 = *(*(a1 + 72) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v17;
}

void sub_10000C22C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 40);
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v17 = [v13 asString];
  v14 = *(a1 + 32);
  v15 = [v13 asString];

  v16 = [v14 objectForKeyedSubscript:v15];
  (*(v9 + 16))(v9, v17, v16, v12, v11, v10);
}

void sub_10000C320(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v6 zoneID];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_opt_new();
    v10 = *(a1 + 32);
    v11 = [v6 zoneID];
    [v10 setObject:v9 forKeyedSubscript:v11];
  }

  v12 = [v9 objectForKeyedSubscript:v6];

  if (v12)
  {
    sub_1000277E4();
  }

  v13 = [v5 asString];
  [v9 setObject:v13 forKeyedSubscript:v6];
}

void sub_10000C41C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 allKeys];
  v8 = [v7 mutableCopy];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10000C708;
  v23 = &unk_100044B08;
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v19 = v5;
  v26 = v19;
  v27 = *(a1 + 48);
  v28 = *(a1 + 56);
  v9 = v6;
  v29 = v9;
  v32 = *(a1 + 80);
  v33 = *(a1 + 96);
  v31 = *(a1 + 72);
  v30 = *(a1 + 64);
  v10 = v8;
  v11 = &v20;
  v12 = [BRCUserDefaults defaultsForMangledID:0];
  v13 = [v12 maxRecordCountInFetchRecordsOperation];

  if ([v10 count])
  {
    *&v14 = 67109378;
    v18 = v14;
    while ([v10 count] >= v13)
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = v18;
        v35 = v13;
        v36 = 2112;
        v37 = v15;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] fetching thumbnails for more than %u item identifiers, batching request%@", buf, 0x12u);
      }

      v17 = [v10 subarrayWithRange:{0, v13}];
      v22(v11, v17);

      [v10 removeObjectsInRange:{0, v13}];
      if (![v10 count])
      {
        goto LABEL_9;
      }
    }

    v22(v11, v10);
  }

LABEL_9:
}

void sub_10000C708(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(BRFetchRecordsOperation);
  [*(a1 + 32) addObject:v4];
  [*(a1 + 40) addObject:*(a1 + 48)];
  [v4 setRecordIDs:v3];
  v5 = [CKRecord desiredKeysWithMask:16];
  [v4 setDesiredKeys:v5];

  [v4 setQualityOfService:17];
  v6 = [v4 configuration];
  [v6 setDiscretionaryNetworkBehavior:0];

  v7 = [v4 configuration];
  [v7 setAutomaticallyRetryNetworkFailures:0];

  v8 = BRDaemonBundleID;
  v31 = v4;
  v9 = [v4 configuration];
  [v9 setSourceApplicationBundleIdentifier:v8];

  v10 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        v17 = *(a1 + 56);
        v18 = [*(a1 + 64) objectForKeyedSubscript:*(a1 + 48)];
        v19 = [v18 objectForKeyedSubscript:v16];
        v20 = [v17 objectForKeyedSubscript:v19];

        if (v20)
        {
          v21 = [v20 br_contentEtag];
          if (v21)
          {
            [v10 setObject:v21 forKeyedSubscript:v16];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v13);
  }

  if ([v10 count])
  {
    [v31 setRecordIDsToVersionETags:v10];
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10000CADC;
  v32[3] = &unk_100044AE0;
  v33 = *(a1 + 72);
  v36 = *(a1 + 96);
  v37 = *(a1 + 112);
  v35 = *(a1 + 88);
  v34 = *(a1 + 56);
  [v31 setPerRecordCompletionBlock:v32];
  [v31 setGroup:*(a1 + 80)];
  v22 = [v31 configuration];
  v23 = [v22 additionalRequestHTTPHeaders];
  v24 = [v23 mutableCopy];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = objc_opt_new();
  }

  v27 = v26;

  v28 = objc_alloc_init(BRCDeviceConfiguration);
  v29 = [v28 getDeviceConfigurationString];
  [v27 setObject:v29 forKeyedSubscript:@"X-APPLE-BR-DEVICE-CONFIGURATION"];

  v30 = [v31 configuration];
  [v30 setAdditionalRequestHTTPHeaders:v27];
}

void sub_10000CADC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 objectForKeyedSubscript:kBRRecordKeyThumbnail1024x1024];
  v11 = [v10 fileURL];
  v12 = [v7 objectForKeyedSubscript:kBRRecordKeyThumbnailQuickLookMetadata];
  v13 = [*(a1 + 32) objectForKeyedSubscript:v8];
  v21 = *(a1 + 56);
  v22 = *(a1 + 72);
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v24 = v21;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v14;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx received a thumbnail callback for %@%@", buf, 0x20u);
  }

  if (v11)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_1000278AC();
    }
  }

  else
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      *buf = 138412802;
      v24 = v13;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v16;
      _os_log_error_impl(&_mh_execute_header, v17, 0x90u, "[ERROR] error when fetching thumbnail for %@: %@%@", buf, 0x20u);
    }
  }

  v18 = *(a1 + 48);
  v19 = [*(a1 + 40) objectForKeyedSubscript:v13];
  v20 = [v9 br_fileProviderErrorForDownloadFlow];
  (*(v18 + 16))(v18, v13, v19, v11, v12, v20);

  sub_100001DE4(&v21);
}

void sub_10000CDF4(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v27 = a3;
  v11 = a4;
  v12 = a5;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_10000C0E8;
  v35[4] = sub_10000C0F8;
  v13 = v11;
  v36 = v13;
  v14 = [v9 firstObject];
  if (v14)
  {
    v15 = [v10 firstObject];
    if (v15)
    {
      [v9 removeObjectAtIndex:0];
      [v10 removeObjectAtIndex:0];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10000D2F0;
      v28[3] = &unk_100044B58;
      v16 = v15;
      v29 = v16;
      v34 = v35;
      v30 = v9;
      v31 = v10;
      v17 = v27;
      v32 = v17;
      v33 = v12;
      [v14 setFetchRecordsCompletionBlock:v28];
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v38 = v14;
        v39 = 2112;
        v40 = v16;
        v41 = 2112;
        v42 = v18;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] scheduling operation %@ for zone: %@%@", buf, 0x20u);
      }

      v20 = [v16 ownerName];
      v21 = [v20 isEqualToString:CKCurrentUserDefaultName];

      if (v21)
      {
        [v17 privateCloudDatabase];
      }

      else
      {
        [v17 sharedCloudDatabase];
      }
      v22 = ;
      [v22 addOperation:v14];
    }

    else
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, 0x90u))
      {
        sub_100027920();
      }

      (*(v12 + 2))(v12, 0);
    }
  }

  else
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, 0x90u))
    {
      sub_100027994();
    }

    (*(v12 + 2))(v12, 0);
  }

  _Block_object_dispose(v35, 8);
}

void sub_10000D1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D204(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) cancel];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_10000D2F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100027A08(a1, v6, v7);
  }

  if (v5)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      v16 = *(a1 + 32);
      v17 = 138412802;
      v18 = v16;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, 0x90u, "[ERROR] error while fetching thumbnail batch for %@: %@%@", &v17, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  }

  if ([*(a1 + 40) count] && objc_msgSend(*(a1 + 48), "count"))
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100027A84();
    }

    sub_10000CDF4(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(*(*(a1 + 72) + 8) + 40), *(a1 + 64));
  }

  else
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100027AEC();
    }

    v14 = *(a1 + 64);
    v15 = [*(*(*(a1 + 72) + 8) + 40) br_fileProviderErrorForDownloadFlow];
    (*(v14 + 16))(v14, v15);
  }
}

void sub_10000D564(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_10000D8EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ICDFileProviderItemServiceProxy boostFilePresenter:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000DB18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ICDFileProviderItemServiceProxy unboostFilePresenter:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000DE54(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315906;
    v9 = "[ICDFileProviderItemServiceProxy capabilityWhenTryingToReparentToNewParent:domain:reply:]_block_invoke";
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%d, %@)%@", &v8, 0x26u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000E08C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 136316162;
    v13 = "[ICDFileProviderItemServiceProxy getBookmarkData:allowAccessByBundleID:documentID:isDirectory:reply:]_block_invoke";
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v12, 0x34u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000E2C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 136316162;
    v13 = "[ICDFileProviderItemServiceProxy getPublishedURLForStreaming:requestedTTL:reply:]_block_invoke";
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v12, 0x34u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000E4F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315906;
    v10 = "[ICDFileProviderItemServiceProxy getAttributeValues:reply:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v9, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000E6E8(uint64_t a1, int a2, int a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = 136316418;
    v14 = "[ICDFileProviderItemServiceProxy getiWorkPublishingInfo:]_block_invoke";
    v15 = 1024;
    v16 = a2;
    v17 = 1024;
    v18 = a3;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%d, %d, %@, %@)%@", &v13, 0x36u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000E924(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ICDFileProviderItemServiceProxy setiWorkPublishingInfo:readonly:reply:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000EB00(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315906;
    v9 = "[ICDFileProviderItemServiceProxy getiWorkPublishingBadgingStatus:]_block_invoke";
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%d, %@)%@", &v8, 0x26u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000ECF0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315906;
    v9 = "[ICDFileProviderItemServiceProxy getiWorkNeedsShareMigrate:]_block_invoke";
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%d, %@)%@", &v8, 0x26u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000F08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10000F0BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ICDFileProviderItemServiceProxy refreshSharingState:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000F1CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ICDFileProviderItemServiceProxy refreshSharingState:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000F554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10000F584(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315906;
    v7 = "[ICDFileProviderItemServiceProxy launchItemCountMismatchChecks:]_block_invoke";
    v8 = 1024;
    v9 = 0;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%d, %@)%@", &v6, 0x26u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000F6A4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 136315906;
    v9 = "[ICDFileProviderItemServiceProxy launchItemCountMismatchChecks:]_block_invoke";
    v10 = 1024;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%d, %@)%@", &v8, 0x26u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000F894(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315906;
    v10 = "[ICDFileProviderItemServiceProxy copyShareIDWithReply:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v9, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000FA8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315906;
    v10 = "[ICDFileProviderItemServiceProxy getCreatorNameComponents:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v9, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10000FDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10000FE08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136316674;
    v7 = "[ICDFileProviderItemServiceProxy getClientSaltingVerificationKeys:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = 0;
    v14 = 1024;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@, %d, %@)%@", &v6, 0x44u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001016C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10001019C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136316674;
    v7 = "[ICDFileProviderItemServiceProxy getServerSaltingKeys:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = 0;
    v14 = 1024;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@, %d, %@)%@", &v6, 0x44u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100010500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_100010530(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315906;
    v7 = "[ICDFileProviderItemServiceProxy getServerContentSignature:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v6, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100010ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100010B14(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100026964(v2, v3);
  }

  return [*(a1 + 32) invalidate];
}

void sub_100010B94(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000269DC(v2, v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void sub_100011AAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v8 = *(a1 + 32);
      v9 = 138412802;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_error_impl(&_mh_execute_header, v5, 0x90u, "[ERROR] Received reply that we can't register connection with %@ - %@%@", &v9, 0x20u);
    }

    [*(a1 + 32) refreshDatabaseID];
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100027E30(a1);
    }
  }

  [*(a1 + 48) setBoolResult:v3 == 0 error:v3];
}

_BRFileProviderShareOperationWrapper *sub_100011E44(void *a1)
{
  v1 = a1;
  v2 = [[_BRFileProviderShareOperationWrapper alloc] initWithOperation:v1];

  return v2;
}

void sub_100012298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_1000122CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136316162;
    v7 = "[BaseFileProviderShareOperationProxy startOperation:toCopyShareURLForShare:reply:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v6, 0x34u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000123F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 136316162;
    v13 = "[BaseFileProviderShareOperationProxy startOperation:toCopyShareURLForShare:reply:]_block_invoke";
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v12, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000127FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_100012830(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315906;
    v7 = "[BaseFileProviderShareOperationProxy startOperation:toSaveSharingInfo:reply:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v6, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001294C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315906;
    v10 = "[BaseFileProviderShareOperationProxy startOperation:toSaveSharingInfo:reply:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v9, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100012D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_100012D6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[BaseFileProviderShareOperationProxy startOperation:toUnshareShare:forceDelete:reply:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100012E7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[BaseFileProviderShareOperationProxy startOperation:toUnshareShare:forceDelete:reply:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", &v6, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000131EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10001321C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136316674;
    v7 = "[BaseFileProviderShareOperationProxy copyCurrentUserNameAndDisplayHandleWithReply:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = 0;
    v14 = 2112;
    v15 = 0;
    v16 = 2112;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@, %@, %@)%@", &v6, 0x48u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001335C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = 136316674;
    v19 = "[BaseFileProviderShareOperationProxy copyCurrentUserNameAndDisplayHandleWithReply:]_block_invoke";
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@, %@, %@)%@", &v18, 0x48u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000137A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_1000137D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315906;
    v7 = "[BaseFileProviderShareOperationProxy startOperation:toLookupShareParticipants:reply:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v6, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000138F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315906;
    v10 = "[BaseFileProviderShareOperationProxy startOperation:toLookupShareParticipants:reply:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v9, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100013CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_100013D14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315906;
    v7 = "[BaseFileProviderShareOperationProxy startOperation:toCopyDocumentURLForRecordID:syncIfNeeded:reply:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v6, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100013E30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315906;
    v10 = "[BaseFileProviderShareOperationProxy startOperation:toCopyDocumentURLForRecordID:syncIfNeeded:reply:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v9, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001464C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    v16 = v15;
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v13)
    {
      v18 = 0;
      v17 = [NSData dataWithContentsOfURL:v13 options:1 error:&v18];
      v16 = v18;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_100014C50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100014C68(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      v7 = *(a1 + 32);
      v8 = 138412802;
      v9 = v7;
      v10 = 2112;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, 0x90u, "[ERROR] failed to get thumbnail for batch %@ with error %@%@", &v8, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100015048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100015060(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100014C50;
  v29 = sub_100014C60;
  v30 = 0;
  v7 = *(a1 + 32);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000153CC;
  v24[3] = &unk_100044E50;
  v24[4] = &v25;
  v15 = [v7 _getAsyncProxyWithErrorHandler:v24];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v35 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        dispatch_group_enter(*(a1 + 40));
        if (v26[5])
        {
          (*(v6 + 2))(v6, v11, 0, 0);
          dispatch_group_leave(*(a1 + 40));
        }

        else
        {
          v12 = brc_bread_crumbs();
          v13 = brc_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v14 = [v11 asString];
            *buf = 138412546;
            v32 = v14;
            v33 = 2112;
            v34 = v12;
            _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] generating thumbnail for small file %@ using download%@", buf, 0x16u);
          }

          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_100015468;
          v17[3] = &unk_100044E78;
          v19 = v6;
          v17[4] = v11;
          v18 = *(a1 + 40);
          [v15 generateSmallItemThumbnailForFileObject:v11 reply:v17];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v20 objects:v35 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v25, 8);
}

void sub_1000153CC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100027F34(v3, v4, v5);
    }
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_100015468(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  dispatch_group_leave(v3);
}

void sub_1000154BC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_100015954(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] error refreshing state for item identifier %@: %@%@", &v7, 0x20u);
    }
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100027FBC(a1, v4, v5);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100016074(uint64_t a1, id a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = a2;
    a2 = [[ICDCollaborationVersion alloc] initWithCollaborationSignature:v5];
  }

  v6 = *(a1 + 32);
  v7 = [a2 collaborationSignature];
  (*(v6 + 16))(v6, v7, v8);
}

void sub_1000166B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_1000166E4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134218498;
    v17 = a3;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] trashed items enumerator received next page %llu items=%@%@", &v16, 0x20u);
  }

  if (v8)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, 0x90u))
    {
      sub_1000280AC(v8, v11, v12);
    }

    v13 = *(a1 + 32);
    v14 = [v8 br_fileProviderError];
    [v13 finishEnumeratingWithError:v14];
  }

  else
  {
    [*(a1 + 32) didEnumerateItems:v7];
    v15 = *(a1 + 32);
    v14 = +[NSData br_pageTokenFromSortOrder:offset:](NSData, "br_pageTokenFromSortOrder:offset:", [*(a1 + 40) br_pageTokenSortOrder], a3);
    [v15 finishEnumeratingUpToPage:v14];
  }
}

void sub_1000168B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 br_fileProviderError];
  [v2 finishEnumeratingWithError:v3];
}

void sub_10001690C(id a1)
{
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("create-log-section", v1);

  v3 = qword_1000523A8;
  qword_1000523A8 = v2;
}

void sub_100017028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_100017058(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 32);
    v12 = [v5 participants];
    v13 = 138413314;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    v17 = 2048;
    v18 = [v5 publicPermission];
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@, %ld, %@)%@", &v13, 0x34u);
  }

  v9 = *(a1 + 40);
  v10 = [v5 participants];
  (*(v9 + 16))(v9, v10, [v5 publicPermission], v6);
}

void sub_100017324(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10001773C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, id a25)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&a25);
  sub_100001DE4(&a22);
  _Unwind_Resume(a1);
}

void sub_1000177D4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [*(a1 + 32) itemIdentifier];
    v7 = BRSharingCreateShareForItemWithIdentifier();
    v14 = v9;

    v9 = v14;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [*(a1 + 32) setCachedShare:v7];
LABEL_3:
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setTotalUnitCount:1];

  if (v9)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 32);
      *buf = 138413058;
      v18 = v15;
      v19 = 2112;
      v20 = 0;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v11;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@, %@)%@", buf, 0x2Au);
    }
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 32);
      *buf = 138413058;
      v18 = v16;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = 0;
      v23 = 2112;
      v24 = v11;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@, %@)%@", buf, 0x2Au);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100017A30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

void sub_100017DE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCompletedUnitCount:1];

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = 138413058;
    v12 = v10;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@, %@)%@", &v11, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100017F28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

void sub_100018418(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCompletedUnitCount:1];

  [*(a1 + 32) setCachedShare:v5];
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = 138413058;
    v12 = v10;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v8;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@, %@)%@", &v11, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001856C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

void sub_100018840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_100018874(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v22 = a1[4];
      *location = 138412802;
      *&location[4] = v22;
      v32 = 2112;
      v33 = v6;
      v34 = 2112;
      v35 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@)%@", location, 0x20u);
    }

    (*(a1[6] + 2))();
    goto LABEL_16;
  }

  if ([v5 isKnownToServer])
  {
    v9 = [v5 objectForKeyedSubscript:CKShareTypeKey];
    if ([v9 isEqual:_BRFolderShareType])
    {
      v10 = [a1[4] itemIdentifier];
      v11 = [v10 characterAtIndex:0];

      if (v11 != 105)
      {
        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_1000282A8(a1 + 4, v12, v13);
        }

        v14 = a1[6];
        v15 = [NSError br_errorWithPOSIXCode:45];
        v14[2](v14, v15);

        goto LABEL_16;
      }
    }

    else
    {
    }

    [a1[4] setCachedShare:0];
    [a1[5] setCompletedUnitCount:1];
    v18 = [BRShareDestroyOperation alloc];
    v19 = [a1[4] fileURL];
    v20 = [v18 initWithShare:v5 fileURL:v19];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100018CA0;
    v28[3] = &unk_100044808;
    v28[4] = a1[4];
    v30 = a1[6];
    v29 = a1[5];
    [v20 setShareDestroyCompletionBlock:v28];
    objc_initWeak(location, v20);
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_100018DB8;
    v26 = &unk_1000446D8;
    objc_copyWeak(&v27, location);
    [a1[5] setCancellationHandler:&v23];
    v21 = [a1[4] operationQueue];
    [v21 addOperation:v20];

    objc_destroyWeak(&v27);
    objc_destroyWeak(location);

    goto LABEL_16;
  }

  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100028218(a1);
  }

  (*(a1[6] + 2))();
LABEL_16:
}

void sub_100018C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018CA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@)%@", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) setCompletedUnitCount:2];
}

void sub_100018DB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

void sub_10001906C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001908C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000190A4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      sub_1000283D8(a1, v6, v7);
    }
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000193AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1000193E4(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v2 = *(a1 + 32)) == 0)
  {
    if (qword_1000523B8 != -1)
    {
      sub_100028484();
    }

    v3 = qword_1000523C0;
    v4 = 1;
  }

  else
  {
    v3 = v2;
    v4 = 0;
  }

  v5 = +[UMUserManager sharedManager];
  v6 = [v5 currentPersona];

  v23 = 0;
  v7 = [v6 userPersonaUniqueString];
  v8 = v7;
  if (v7 == v3 || ([v7 isEqualToString:v3] & 1) != 0)
  {
    v9 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v22 = 0;
    v12 = [v6 copyCurrentPersonaContextWithError:&v22];
    v13 = v22;
    v14 = v23;
    v23 = v12;

    if (v13)
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, 0x90u))
      {
        sub_100028498();
      }
    }

    v9 = [v6 br_generateAndRestorePersonaContextWithPersonaUniqueString:v3];

    if (v9)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        v19 = *(a1 + 32);
        *buf = 138412802;
        v25 = v19;
        v26 = 2112;
        v27 = v9;
        v28 = 2112;
        v29 = v17;
        _os_log_error_impl(&_mh_execute_header, v18, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_29:
    }
  }

  else
  {
    if (v4 && ([v6 isDataSeparatedPersona] & 1) == 0)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100027360();
      }

      v9 = 0;
      goto LABEL_29;
    }

    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_1000273C8();
    }

    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  }

LABEL_10:
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100028508();
  }

  [*(a1 + 40) invalidate];
  _BRRestorePersona();
}

void sub_1000197C4(id a1)
{
  v3 = [UMUserPersonaAttributes personaAttributesForPersonaType:0];
  v1 = [v3 userPersonaUniqueString];
  v2 = qword_1000523C0;
  qword_1000523C0 = v1;
}

void sub_100019824(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v2 = *(a1 + 32)) == 0)
  {
    if (qword_1000523C8 != -1)
    {
      sub_100028570();
    }

    v3 = qword_1000523D0;
    v4 = 1;
  }

  else
  {
    v3 = v2;
    v4 = 0;
  }

  v5 = +[UMUserManager sharedManager];
  v6 = [v5 currentPersona];

  v24 = 0;
  v7 = [v6 userPersonaUniqueString];
  v8 = v7;
  if (v7 == v3 || ([v7 isEqualToString:v3] & 1) != 0)
  {
    v9 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v23 = 0;
    v13 = [v6 copyCurrentPersonaContextWithError:&v23];
    v14 = v23;
    v15 = v24;
    v24 = v13;

    if (v14)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, 0x90u))
      {
        sub_100028498();
      }
    }

    v9 = [v6 br_generateAndRestorePersonaContextWithPersonaUniqueString:v3];

    if (v9)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, 0x90u))
      {
        v20 = *(a1 + 32);
        *buf = 138412802;
        v26 = v20;
        v27 = 2112;
        v28 = v9;
        v29 = 2112;
        v30 = v18;
        _os_log_error_impl(&_mh_execute_header, v19, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_29:
    }
  }

  else
  {
    if (v4 && ([v6 isDataSeparatedPersona] & 1) == 0)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100027360();
      }

      v9 = 0;
      goto LABEL_29;
    }

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1000273C8();
    }

    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  }

LABEL_10:
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100028584();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];

  _BRRestorePersona();
}

void sub_100019C10(id a1)
{
  v3 = [UMUserPersonaAttributes personaAttributesForPersonaType:0];
  v1 = [v3 userPersonaUniqueString];
  v2 = qword_1000523D0;
  qword_1000523D0 = v1;
}

void sub_100019EDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100019F00(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = *(v9 + 16);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v11 = *(a1 + 32);
    v10 = *(v9 + 16);
  }

  v10();
LABEL_7:
}

void sub_100019FC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];
}

void sub_10001A4EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10001A524(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v2 = *(a1 + 32)) == 0)
  {
    if (qword_1000523D8 != -1)
    {
      sub_100028698();
    }

    v3 = qword_1000523E0;
    v4 = 1;
  }

  else
  {
    v3 = v2;
    v4 = 0;
  }

  v5 = +[UMUserManager sharedManager];
  v6 = [v5 currentPersona];

  v23 = 0;
  v7 = [v6 userPersonaUniqueString];
  v8 = v7;
  if (v7 == v3 || ([v7 isEqualToString:v3] & 1) != 0)
  {
    v9 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v22 = 0;
    v12 = [v6 copyCurrentPersonaContextWithError:&v22];
    v13 = v22;
    v14 = v23;
    v23 = v12;

    if (v13)
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, 0x90u))
      {
        sub_1000286AC();
      }
    }

    v9 = [v6 br_generateAndRestorePersonaContextWithPersonaUniqueString:v3];

    if (v9)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        v19 = *(a1 + 32);
        *buf = 138412802;
        v25 = v19;
        v26 = 2112;
        v27 = v9;
        v28 = 2112;
        v29 = v17;
        _os_log_error_impl(&_mh_execute_header, v18, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_29:
    }
  }

  else
  {
    if (v4 && ([v6 isDataSeparatedPersona] & 1) == 0)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100027360();
      }

      v9 = 0;
      goto LABEL_29;
    }

    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      sub_1000273C8();
    }

    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  }

LABEL_10:
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100028720();
  }

  [*(a1 + 40) invalidate];
  _BRRestorePersona();
}

void sub_10001A904(id a1)
{
  v3 = [UMUserPersonaAttributes personaAttributesForPersonaType:0];
  v1 = [v3 userPersonaUniqueString];
  v2 = qword_1000523E0;
  qword_1000523E0 = v1;
}

void sub_10001A964(uint64_t a1)
{
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v2 = *(a1 + 32)) == 0)
  {
    if (qword_1000523E8 != -1)
    {
      sub_100028788();
    }

    v3 = qword_1000523F0;
    v4 = 1;
  }

  else
  {
    v3 = v2;
    v4 = 0;
  }

  v5 = +[UMUserManager sharedManager];
  v6 = [v5 currentPersona];

  v24 = 0;
  v7 = [v6 userPersonaUniqueString];
  v8 = v7;
  if (v7 == v3 || ([v7 isEqualToString:v3] & 1) != 0)
  {
    v9 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v23 = 0;
    v13 = [v6 copyCurrentPersonaContextWithError:&v23];
    v14 = v23;
    v15 = v24;
    v24 = v13;

    if (v14)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, 0x90u))
      {
        sub_1000286AC();
      }
    }

    v9 = [v6 br_generateAndRestorePersonaContextWithPersonaUniqueString:v3];

    if (v9)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, 0x90u))
      {
        v20 = *(a1 + 32);
        *buf = 138412802;
        v26 = v20;
        v27 = 2112;
        v28 = v9;
        v29 = 2112;
        v30 = v18;
        _os_log_error_impl(&_mh_execute_header, v19, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_29:
    }
  }

  else
  {
    if (v4 && ([v6 isDataSeparatedPersona] & 1) == 0)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100027360();
      }

      v9 = 0;
      goto LABEL_29;
    }

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1000273C8();
    }

    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  }

LABEL_10:
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10002879C();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];

  _BRRestorePersona();
}

void sub_10001AD50(id a1)
{
  v3 = [UMUserPersonaAttributes personaAttributesForPersonaType:0];
  v1 = [v3 userPersonaUniqueString];
  v2 = qword_1000523F0;
  qword_1000523F0 = v1;
}

void sub_10001AF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001AF74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001AF8C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = +[CKAllowedSharingOptions standardOptions];
  [v8 setSupportAllowingAddedParticipantsToInviteOthers:1];
  if (+[BRFeatureFlags requestForAccessEnabled](BRFeatureFlags, "requestForAccessEnabled") && [v6 publicPermission] <= 1)
  {
    [v8 setSupportAllowingAccessRequests:1];
  }

  if (v6)
  {
    v9 = [CKAllowedSharingOptions resolvedOptionsFromOptions:v8 forExistingShare:v6];
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100028804(v7, v12, v13);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v8);
  }

  v14 = [*(*(a1[6] + 8) + 40) shareOptions];
  v15 = [[_SWCollaborationMetadata alloc] initWithLocalIdentifier:a1[4] collaborationIdentifier:&stru_1000457B8 title:0 defaultShareOptions:v14 initiatorHandle:0 initiatorNameComponents:0];
  (*(a1[5] + 16))();
}

void sub_10001B1E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      sub_10002888C(v6, v7);
    }

    [*(a1 + 32) fail];
  }

  else
  {
    v8 = +[CKAllowedSharingOptions standardOptions];
    [v8 setSupportAllowingAddedParticipantsToInviteOthers:1];
    v9 = [v8 shareOptions];
    v10 = [[_SWCollaborationMetadata alloc] initWithCollaborationIdentifier:v5 title:0 defaultShareOptions:v9 initiatorHandle:0 initiatorNameComponents:0];
    v11 = *(a1 + 32);
    v12 = objc_opt_new();
    [v11 fulfillUsingURL:v12 updatedMetadata:v10];
  }
}

void sub_10001B6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10001B720(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136316162;
    v7 = "[ICDFileProviderShareOperationProxy startOperation:toCopySharingInfoWithReply:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v6, 0x34u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001B848(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 136316162;
    v13 = "[ICDFileProviderShareOperationProxy startOperation:toCopySharingInfoWithReply:]_block_invoke";
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v12, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001BC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10001BC88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136316162;
    v7 = "[ICDFileProviderShareOperationProxy startOperation:toCopySharingAccessTokenWithReply:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v6, 0x34u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001BDB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 136316162;
    v13 = "[ICDFileProviderShareOperationProxy startOperation:toCopySharingAccessTokenWithReply:]_block_invoke";
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v12, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001C1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10001C1F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315906;
    v7 = "[ICDFileProviderShareOperationProxy startOperation:toCopyShortTokenWithReply:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v6, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001C30C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315906;
    v10 = "[ICDFileProviderShareOperationProxy startOperation:toCopyShortTokenWithReply:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v9, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001C6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10001C6E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315906;
    v7 = "[ICDFileProviderShareOperationProxy createSharingInfoWithReply:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v6, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001C7FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 136315906;
    v10 = "[ICDFileProviderShareOperationProxy createSharingInfoWithReply:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v9, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001CBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10001CC20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136316162;
    v7 = "[ICDFileProviderShareOperationProxy startOperation:toModifyRecordWithAllowAccess:reply:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v6, 0x34u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001CD48(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 136316162;
    v13 = "[ICDFileProviderShareOperationProxy startOperation:toModifyRecordWithAllowAccess:reply:]_block_invoke";
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v12, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001D154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10001D188(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136316162;
    v7 = "[ICDFileProviderShareOperationProxy startOperation:toCopyParticipantTokenWithReply:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v6, 0x34u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001D2B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 136316162;
    v13 = "[ICDFileProviderShareOperationProxy startOperation:toCopyParticipantTokenWithReply:]_block_invoke";
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v12, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001D6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10001D6F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ICDFileProviderShareOperationProxy startOperation:toPrepFolderForSharingWithReply:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001D800(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ICDFileProviderShareOperationProxy startOperation:toPrepFolderForSharingWithReply:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", &v6, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001DBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10001DC18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ICDFileProviderShareOperationProxy startOperation:toProcessSubitemsWithMaxSubsharesFailures:processType:reply:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001DD28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ICDFileProviderShareOperationProxy startOperation:toProcessSubitemsWithMaxSubsharesFailures:processType:reply:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", &v6, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10001E124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10001E15C(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100028904(v2, v3);
  }

  return [*(a1 + 32) invalidate];
}

void sub_10001E1DC(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10002897C(v2, v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void sub_10001E620(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[48] & 1) == 0)
  {
    v4 = [v2 _refreshDatabaseIDForcingRefresh:0];
    v3 = [*(*(a1 + 32) + 16) identifier];
    if (v3)
    {
      [BRDaemonConnection registerPersonaDomainIdentifer:v3 databaseID:v4 delegate:*(a1 + 32)];
      *(*(a1 + 32) + 48) = 1;
    }
  }
}

void sub_10001EABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_10001F464(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136316418;
    v7 = "[ICDFileProviderExtension createItemBasedOnTemplate:fields:contents:options:request:completionHandler:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 1024;
    v11 = 0;
    v12 = 1024;
    v13 = 0;
    v14 = 2112;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %d, %d, %@)%@", &v6, 0x36u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001F59C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F694;
  block[3] = &unk_1000452F0;
  v10 = *(a1 + 64);
  v17 = *(a1 + 48);
  v18 = v10;
  v19 = a3;
  v14 = v7;
  v15 = v8;
  v16 = *(a1 + 40);
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, block);
}

void sub_10001F694(uint64_t a1)
{
  v2 = [*(a1 + 32) asFileProviderItem];
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 80);
    v6 = [*(a1 + 40) br_fileProviderError];
    *buf = 134219522;
    v13 = v10;
    v14 = 2080;
    v15 = "[ICDFileProviderExtension createItemBasedOnTemplate:fields:contents:options:request:completionHandler:]_block_invoke_2";
    v16 = 2112;
    v17 = v2;
    v18 = 2048;
    v19 = v5;
    v20 = 1024;
    v21 = 0;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[INFO] ┳%llx %s: reply(%@, %lu, %d, %@)%@", buf, 0x44u);
  }

  v7 = *(a1 + 80);
  v8 = *(a1 + 48);
  v9 = [*(a1 + 40) br_fileProviderError];
  (*(v8 + 16))(v8, v2, v7, 0, v9);

  sub_100001DE4(&v10);
}

void sub_10001FCC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ICDFileProviderExtension deleteItemWithIdentifier:baseVersion:options:request:completionHandler:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001FDD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FE9C;
  block[3] = &unk_100045340;
  v10 = *(a1 + 64);
  v9 = *(a1 + 48);
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_10001FE9C(uint64_t a1)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) br_fileProviderError];
    *buf = 134218754;
    v10 = v7;
    v11 = 2080;
    v12 = "[ICDFileProviderExtension deleteItemWithIdentifier:baseVersion:options:request:completionHandler:]_block_invoke_2";
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[INFO] ┳%llx %s: reply(%@)%@", buf, 0x2Au);
  }

  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) br_fileProviderError];
  (*(v5 + 16))(v5, v6);

  sub_100001DE4(&v7);
}

void sub_100020870(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136316162;
    v7 = "[ICDFileProviderExtension _fetchContentsForItemWithIdentifier:existingContents:version:request:completionHandler:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = 0;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v6, 0x34u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100020998(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020A98;
  block[3] = &unk_100045390;
  v12 = v5;
  v8 = *(a1 + 40);
  v16 = *(a1 + 56);
  v17 = *(a1 + 72);
  v13 = v8;
  v14 = v6;
  v15 = *(a1 + 48);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_100020A98(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"item"];
  v4 = [v3 asFileProviderItem];

  v5 = [*v2 objectForKeyedSubscript:@"url"];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 40);
    *buf = 138413058;
    v17 = v4;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] Returning back to FPFS with item = %@, url = %@, etag = %@%@", buf, 0x2Au);
  }

  v14 = *(a1 + 64);
  v15 = *(a1 + 80);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 48) br_fileProviderErrorForDownloadFlow];
    *buf = 134219266;
    v17 = v14;
    v18 = 2080;
    v19 = "[ICDFileProviderExtension _fetchContentsForItemWithIdentifier:existingContents:version:request:completionHandler:]_block_invoke";
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v4;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] ┳%llx %s: reply(%@, %@, %@)%@", buf, 0x3Eu);
  }

  v11 = *(a1 + 56);
  v12 = [*(a1 + 48) br_fileProviderErrorForDownloadFlow];
  (*(v11 + 16))(v11, v5, v4, v12);

  sub_100001DE4(&v14);
}

void sub_100021928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  sub_100001DE4(v40 - 200);
  _Unwind_Resume(a1);
}

uint64_t sub_1000219B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000219CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100021A68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v10 = [v5 asFileProviderItem];
    v11 = [v6 br_fileProviderErrorForDownloadFlow];
    v17 = 136316162;
    v18 = "[ICDFileProviderExtension fetchContentsForItemWithIdentifier:version:usingExistingContentsAtURL:existingVersion:request:completionHandler:]_block_invoke";
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v17, 0x34u);
  }

  v14 = a1 + 32;
  v12 = *(a1 + 32);
  v13 = *(v14 + 8);
  v15 = [v5 asFileProviderItem];
  v16 = [v6 br_fileProviderErrorForDownloadFlow];
  (*(v13 + 16))(v13, v12, v15, v16);
}

void sub_100021C08(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_1000219B4;
  v15[4] = sub_1000219C4;
  v16 = v6;
  v7 = *(*(a1 + 32) + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100021D40;
  v10[3] = &unk_100045458;
  v14 = v15;
  v11 = *(a1 + 40);
  v12 = v5;
  v13 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);

  _Block_object_dispose(v15, 8);
}

void sub_100021D40(uint64_t a1)
{
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = v3;
    v5 = *(v2 + 40);
    *(v2 + 40) = v4;
  }

  else
  {
    v6 = +[NSError brc_errorRequestedVersionHasLocalEdits];
    v7 = *(*(a1 + 56) + 8);
    v5 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) asFileProviderItem];
    v12 = [*(*(*(a1 + 56) + 8) + 40) br_fileProviderErrorForDownloadFlow];
    v17 = 136316162;
    v18 = "[ICDFileProviderExtension fetchContentsForItemWithIdentifier:version:usingExistingContentsAtURL:existingVersion:request:completionHandler:]_block_invoke_2";
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", &v17, 0x34u);
  }

  v13 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = [*(a1 + 40) asFileProviderItem];
  v16 = [*(*(*(a1 + 56) + 8) + 40) br_fileProviderErrorForDownloadFlow];
  (*(v13 + 16))(v13, v14, v15, v16);
}

void sub_10002252C(id a1)
{
  v3 = [UMUserPersonaAttributes personaAttributesForPersonaType:0];
  v1 = [v3 userPersonaUniqueString];
  v2 = qword_100052400;
  qword_100052400 = v1;
}

void sub_10002258C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, 0x90u))
    {
      sub_100028F08();
    }
  }
}

uint64_t sub_100022738(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WeakRetained[48] == 1)
    {
      [BRDaemonConnection unregisterPersonaDomainIdentifierAndDatabaseIDForDelegate:WeakRetained];
    }

    else
    {
      WeakRetained[48] = 1;
    }
  }

  return _objc_release_x1();
}

void sub_100022E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_100022E3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ICDFileProviderExtension waitForStabilizationWithCompletionHandler:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100022F4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[ICDFileProviderExtension waitForStabilizationWithCompletionHandler:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", &v6, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000236A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_100023704(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_1000219B4;
  v17[4] = sub_1000219C4;
  v18 = v6;
  v7 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023850;
  block[3] = &unk_1000454E8;
  v11 = v5;
  v14 = v17;
  v12 = *(a1 + 40);
  v15 = *(a1 + 56);
  v16 = *(a1 + 72);
  v13 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);

  _Block_object_dispose(v17, 8);
}

void sub_100023850(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) asFileProviderItem];
  v4 = v3;
  if (*v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    sub_10002904C(a1);
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000290C4();
  }

  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(*(*(a1 + 56) + 8) + 40) br_fileProviderError];
    *buf = 134219010;
    v16 = v13;
    v17 = 2080;
    v18 = "[ICDFileProviderExtension itemForIdentifier:request:completionHandler:]_block_invoke";
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] ┳%llx %s: reply(%@, %@)%@", buf, 0x34u);
  }

  v11 = *(a1 + 48);
  v12 = [*(*(*(a1 + 56) + 8) + 40) br_fileProviderError];
  (*(v11 + 16))(v11, v4, v12);

  sub_100001DE4(&v13);
}

void sub_1000245EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136316418;
    v7 = "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 1024;
    v11 = 0;
    v12 = 1024;
    v13 = 0;
    v14 = 2112;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %d, %d, %@)%@", &v6, 0x36u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100024724(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v22 = *(a1 + 56);
    v23 = *(a1 + 72);
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 br_fileProviderError];
      *buf = 134219522;
      v25 = v22;
      v26 = 2080;
      v27 = "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]_block_invoke";
      v28 = 2112;
      v29 = 0;
      v30 = 1024;
      v31 = 0;
      v32 = 1024;
      v33 = 0;
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] ┳%llx %s: reply(%@, %d, %d, %@)%@", buf, 0x40u);
    }

    v10 = *(a1 + 48);
    v11 = [v6 br_fileProviderError];
    (*(v10 + 16))(v10, 0, 0, 0, v11);

    sub_100001DE4(&v22);
  }

  else
  {
    v12 = *(a1 + 80);
    v13 = [*(a1 + 32) itemIdentifier];
    v14 = [BRFileObjectID fileObjectIDWithString:v13];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000249D4;
    v16[3] = &unk_100045578;
    v19 = *(a1 + 56);
    v20 = *(a1 + 72);
    v15 = *(a1 + 40);
    v18 = *(a1 + 48);
    v17 = v5;
    v21 = v12 & 0xFFFFFFFFFFFFFFFELL;
    [v15 _getQueryItemForFileObjectID:v14 completionHandler:v16];
  }
}

void sub_1000249A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100001DE4(va);
  _Unwind_Resume(a1);
}

void sub_1000249D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v17 = *(a1 + 48);
    v18 = *(a1 + 64);
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 br_fileProviderError];
      *buf = 134219522;
      v20 = v17;
      v21 = 2080;
      v22 = "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]_block_invoke";
      v23 = 2112;
      v24 = 0;
      v25 = 1024;
      *v26 = 0;
      *&v26[4] = 1024;
      *&v26[6] = 0;
      *v27 = 2112;
      *&v27[2] = v9;
      *&v27[10] = 2112;
      *&v27[12] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[INFO] ┳%llx %s: reply(%@, %d, %d, %@)%@", buf, 0x40u);
    }

    v10 = *(a1 + 40);
    v11 = [v6 br_fileProviderError];
    (*(v10 + 16))(v10, 0, 0, 0, v11);

    sub_100001DE4(&v17);
  }

  else
  {
    v12 = [*(a1 + 32) contentVersion];
    [v5 updateContentVersion:v12];

    v17 = *(a1 + 48);
    v18 = *(a1 + 64);
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 72);
      *buf = 134219522;
      v20 = v17;
      v21 = 2080;
      v22 = "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]_block_invoke";
      v23 = 2112;
      v24 = v5;
      v25 = 2048;
      *v26 = v15;
      *&v26[8] = 1024;
      *v27 = 0;
      *&v27[4] = 2112;
      *&v27[6] = 0;
      *&v27[14] = 2112;
      *&v27[16] = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[INFO] ┳%llx %s: reply(%@, %lu, %d, %@)%@", buf, 0x44u);
    }

    v16 = *(a1 + 72);
    (*(*(a1 + 40) + 16))();
    sub_100001DE4(&v17);
  }
}

void sub_100024CE0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024DD8;
  block[3] = &unk_1000452F0;
  v10 = *(a1 + 64);
  v17 = *(a1 + 48);
  v18 = v10;
  v19 = a3;
  v14 = v7;
  v15 = v8;
  v16 = *(a1 + 40);
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, block);
}

void sub_100024DD8(uint64_t a1)
{
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) asFileProviderItem];
    v5 = *(a1 + 80);
    v6 = [*(a1 + 40) br_fileProviderError];
    *buf = 134219522;
    v14 = v11;
    v15 = 2080;
    v16 = "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]_block_invoke_2";
    v17 = 2112;
    v18 = v4;
    v19 = 2048;
    v20 = v5;
    v21 = 1024;
    v22 = 0;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[INFO] ┳%llx %s: reply(%@, %lu, %d, %@)%@", buf, 0x44u);
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) asFileProviderItem];
  v9 = *(a1 + 80);
  v10 = [*(a1 + 40) br_fileProviderError];
  (*(v7 + 16))(v7, v8, v9, 0, v10);

  sub_100001DE4(&v11);
}

void sub_10002518C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000251C0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  if (!v5 || (*(*(*(a1 + 48) + 8) + 24) & 1) != 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100029210(a1);
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      sub_1000291A4();
    }
  }

  v8 = *(*(*(a1 + 48) + 8) + 24);
  (*(*(a1 + 40) + 16))();
}

void sub_100025538(void *a1, int a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1[7];
    v5 = *(a1[7] + 16);

    v5();
  }

  else
  {
    v7 = objc_opt_new();
    v8 = objc_opt_new();
    if (a2)
    {
      v9 = [[ICDFileProviderShareOperationServiceSource alloc] initWithFileProviderExtension:a1[4] itemIdentifier:a1[5] operationQueue:v7];
      [v8 addObject:v9];

      v10 = [[ICDSharingClient alloc] initWithFileProviderExtension:a1[4] itemIdentifier:a1[5] operationQueue:v7];
      [v8 addObject:v10];

      v11 = [BRFileObjectID fileObjectIDWithString:a1[5]];
      if ([v11 type] == 2)
      {
        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          sub_100029284(a1 + 5);
        }

        v14 = [[ICDFileProvideriWorkCollaborationServiceSource alloc] initWithFileProviderExtension:a1[4] itemIdentifier:a1[5] operationQueue:v7];
        [v8 addObject:v14];

        if (_os_feature_enabled_impl())
        {
          v15 = [[ICDFileProviderClientSideCollaborationServiceSource alloc] initWithItemIdentifier:a1[5] domainIdentifier:a1[6] operationQueue:v7];
          [v8 addObject:v15];
        }
      }
    }

    v16 = [[ICDFileProviderItemServiceSource alloc] initWithItemIdentifier:a1[5] domainIdentifier:a1[6] operationQueue:v7];
    [v8 addObject:v16];

    (*(a1[7] + 16))();
  }
}

void sub_1000259A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100025A60;
  v6[3] = &unk_100044988;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t sub_100025A60(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to notify bird of fpfs migration completion%@", &v5, 0xCu);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1000262E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000263C0;
  block[3] = &unk_100045618;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_1000263C0(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100029438(a1);
  }

  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) br_fileProviderError];
    v11 = 136315906;
    v12 = "[ICDFileProviderExtension _defaultApplicationContainerForBundleIdentifier:completionHandler:]_block_invoke";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v11, 0x2Au);
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) br_fileProviderError];
  (*(v8 + 16))(v8, v9, v10);
}

void sub_100026550(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315906;
    v7 = "[ICDFileProviderExtension _defaultApplicationContainerForBundleIdentifier:completionHandler:]_block_invoke";
    v8 = 2112;
    v9 = 0;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v6, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10002666C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026748;
  block[3] = &unk_100045618;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_100026748(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) asFileProviderItem];
    v5 = [*(a1 + 40) br_fileProviderError];
    v9 = 136315906;
    v10 = "[ICDFileProviderExtension _defaultApplicationContainerForBundleIdentifier:completionHandler:]_block_invoke_2";
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", &v9, 0x2Au);
  }

  v6 = *(a1 + 48);
  v7 = [*(a1 + 32) asFileProviderItem];
  v8 = [*(a1 + 40) br_fileProviderError];
  (*(v6 + 16))(v6, v7, v8);
}

uint64_t *sub_100026940@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_10002694C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, 0x90u, a4, a5, 0x16u);
}

void sub_100026964(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] BR Protocol service source connection invalidated%@", &v2, 0xCu);
}

void sub_1000269DC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] BR Protocol service source connection interrupted%@", &v2, 0xCu);
}

void sub_100026ABC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412802;
  v5 = v3;
  v6 = 2112;
  v7 = 0;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@)%@", &v4, 0x20u);
}

void sub_100026B50(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v5 = *a1;
  v6 = [NSError br_errorWithPOSIXCode:45];
  v7 = 138412802;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  v11 = 2112;
  v12 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@)%@", &v7, 0x20u);
}

void sub_100026C1C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: should not be called by FP%@", &v2, 0xCu);
}

void sub_100026C94()
{
  sub_10000A108();
  sub_10000A120();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100026D6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_10000A130();
  sub_10000A120();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100026DEC()
{
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !_isSettingUpNotificationReceiving%@", &v2, 0xCu);
  }
}

void sub_100026EB4()
{
  sub_10000A108();
  sub_10000A120();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100026F24(uint64_t *a1)
{
  v1 = *a1;
  sub_10000A130();
  sub_10000A120();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100026F9C(uint64_t *a1)
{
  v2 = brc_bread_crumbs();
  *a1 = v2;
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: self->_gatherEnumerationObserver == nil%@", &v4, 0xCu);
  }
}

void sub_10002706C(uint64_t a1)
{
  v1 = *(*a1 + 32);
  v2 = *(*a1 + 96);
  sub_10000A130();
  sub_10000A120();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x2Au);
}

void sub_100027170()
{
  sub_10000A108();
  sub_10000A120();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000271E0()
{
  sub_10000A108();
  sub_10000A120();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100027250(uint64_t a1)
{
  v1 = *(a1 + 64);
  sub_1000066E0();
  sub_10000A120();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1000272DC()
{
  sub_10000A108();
  sub_10000A120();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000274AC()
{
  sub_10000A108();
  sub_10000A120();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002751C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10000A130();
  sub_10000A120();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100027594(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  sub_10000AA5C();
  sub_10000AA7C(&_mh_execute_header, v2, v3, "[DEBUG] %@ - Sending boost file presenter for %@%@");
}

void sub_100027610(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't watch an item without a sender%@", &v2, 0xCu);
}

void sub_100027688(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] invalidating change token in extended enumerator%@", &v2, 0xCu);
}

void sub_100027700(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  sub_10000AA5C();
  sub_10000AA7C(&_mh_execute_header, v2, v3, "[DEBUG] %@ - Sending unboost file presenter for %@%@");
}

void sub_1000277E4()
{
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: fileObjectIDByRecordIDs[recordID] == nil%@", &v2, 0xCu);
  }
}

void sub_100027A08(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_10000D564(&_mh_execute_header, a2, a3, "[DEBUG] completed fetching thumbnail batch for %@%@", *v3, *&v3[8], *&v3[16]);
}

void sub_100027B54(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "[CRIT] %@%@", buf, 0x16u);
}

void sub_100027C30()
{
  sub_1000066E0();
  sub_10000A120();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100027CAC()
{
  sub_1000066E0();
  sub_10000A120();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100027D9C()
{
  sub_1000066E0();
  v4 = 2112;
  v5 = v0;
  v6 = 2112;
  v7 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, 0x90u, "[ERROR] Can't validate connection without extension info for persona %@ existing infos %@%@", v3, 0x20u);
}

void sub_100027E30(uint64_t a1)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  sub_10000A120();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100027EBC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: should be implemented by subclass%@", &v2, 0xCu);
}

void sub_100027F34(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Failed creating proxy with %@%@", &v3, 0x16u);
}

void sub_100027FBC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  sub_10000D564(&_mh_execute_header, a2, a3, "[DEBUG] finished refreshing state for item identifier: %@%@", *v3, *&v3[8], *&v3[16]);
}

void sub_1000280AC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, 0x90u, "[ERROR] there was an error when listing trash items: %@%@", &v3, 0x16u);
}

void sub_100028218(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = 138412802;
  v6 = v1;
  sub_100019C84();
  v7 = 0;
  v8 = v2;
  v9 = v3;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@)%@", &v5, 0x20u);
}

void sub_1000282A8(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v5 = *a1;
  v6 = [NSError br_errorWithPOSIXCode:45];
  v9 = 138412802;
  v10 = v5;
  sub_100019C84();
  v11 = v7;
  v12 = v8;
  v13 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: reply(%@)%@", &v9, 0x20u);
}

void sub_1000283D8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = [*(a1 + 32) itemIdentifier];
  sub_1000066E0();
  sub_100019C84();
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, 0x90u, "[ERROR] there was an error retrieving the URL for %@%@", v6, 0x16u);
}

void sub_100028498()
{
  sub_1000066E0();
  sub_100019C84();
  sub_10000A144(&_mh_execute_header, v0, v1, "[ERROR] won't restore persona: %@%@");
}

void sub_1000285EC(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 itemIdentifier];
  sub_1000066E0();
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] fetchLatestRevisionWithCompletionHandler for item with identifier %@%@", v6, 0x16u);
}

void sub_100028804(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Share lookup failed for collaboration metadata. Using default value - %@%@", &v3, 0x16u);
}

void sub_10002888C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, 0x90u, "[ERROR] there was an error retrieving the share URL%@", &v2, 0xCu);
}

void sub_100028904(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] share service source connection invalidated%@", &v2, 0xCu);
}

void sub_10002897C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] share service source connection interrupted%@", &v2, 0xCu);
}

void sub_1000289F4()
{
  sub_10000A108();
  sub_100026934();
  sub_10002694C(v0, v1, v2, v3, v4);
}

void sub_100028AD4()
{
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _finishedDomainSetup%@", &v2, 0xCu);
  }
}

void sub_100028B9C(uint64_t *a1)
{
  sub_100026940(a1, __stack_chk_guard);
  sub_10002691C();
  sub_10000A120();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100028E34()
{
  sub_10000A108();
  sub_100026934();
  sub_10002694C(v0, v1, v2, v3, v4);
}

void sub_100028F08()
{
  sub_10000A108();
  sub_100026934();
  sub_10002694C(v0, v1, v2, v3, v4);
}

void sub_100028FDC()
{
  sub_10000A108();
  sub_10000A120();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10002904C(uint64_t a1)
{
  v5 = [*(a1 + 40) asString];
  v2 = [NSError brc_errorItemNotFound:v5];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000290C4()
{
  sub_10000A108();
  sub_10000A120();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100029134(uint64_t *a1)
{
  sub_100026940(a1, __stack_chk_guard);
  sub_10002691C();
  sub_10000A120();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000291A4()
{
  sub_10000A108();
  sub_100026934();
  sub_10002694C(v0, v1, v2, v3, v4);
}

void sub_100029210(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10002691C();
  sub_10000A120();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100029284(uint64_t *a1)
{
  sub_100026940(a1, __stack_chk_guard);
  sub_10002691C();
  sub_10000A120();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002935C()
{
  sub_10000A108();
  sub_10000A120();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000293CC()
{
  sub_10000A108();
  sub_100026934();
  sub_10002694C(v0, v1, v2, v3, v4);
}

void sub_100029438(uint64_t a1)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_10000A120();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}