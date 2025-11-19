int main(int argc, const char **argv, const char **envp)
{
  setiopolicy_np(3, 0, 1);
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_1000010E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[FPItemManager defaultManager];
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000124C;
    v12[3] = &unk_100008268;
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    v13 = *(a1 + 48);
    v10 = [v8 createMoveOperation:v9 destinationItem:v5 completionHandler:v12];
    [v7 scheduleAction:v10];
  }

  else
  {
    v11 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v11 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100004690();
    }

    (*(*(a1 + 56) + 16))();
  }
}

id sub_10000124C(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 stopAccessingSecurityScopedResource];
  }

  return result;
}

void sub_100001540(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  if (*(a1 + 65) == 1)
  {
    [*(a1 + 40) stopAccessingSecurityScopedResource];
  }

  if (v6)
  {
    v7 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v7 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000046F8(a1);
    }
  }

  v8 = *(a1 + 48);
  v9 = [v5 url];
  [v8 _notifyDownloadCompleted:v9];

  (*(*(a1 + 56) + 16))();
}

void sub_100001634(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [v5 itemID];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000017CC;
    v13[3] = &unk_100008330;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v5;
    v18 = *(a1 + 64);
    v20 = *(a1 + 72);
    v19 = *(a1 + 32);
    [v7 fetchParentsForItemID:v8 recursively:0 completionHandler:v13];
  }

  else
  {
    v12 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v12 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100004768(a1);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void sub_1000017CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = docDownloadServiceLogHandle;
  if (v6)
  {
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v7 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000047DC(a1, v7, v6);
    }

    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v10 = [*(a1 + 32) url];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100001990;
    v11[3] = &unk_100008308;
    v11[4] = *(a1 + 40);
    v12 = *(a1 + 56);
    v13 = v6;
    v14 = *(a1 + 64);
    v16 = *(a1 + 80);
    v15 = *(a1 + 72);
    [v9 replaceContentsOfFile:v8 withFile:v10 completion:v11];
  }

  else
  {
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v7 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100004898();
    }

    (*(*(a1 + 80) + 16))();
  }
}

void sub_100001990(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001A94;
    v10[3] = &unk_1000082E0;
    v11 = *(a1 + 72);
    v7 = [v3 createMoveOperation:v4 parentItem:v5 newFileName:v6 completionHandler:v10];
    [*(a1 + 64) scheduleAction:v7];
  }

  else
  {
    v8 = *(a1 + 72);
    v9 = *(*(a1 + 72) + 16);

    v9();
  }
}

void sub_10000205C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000020AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000020C4(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[NSFileManager defaultManager];
  v5 = a1[4];
  v10 = 0;
  v6 = [v4 replaceItemAtURL:v3 withItemAtURL:v5 backupItemName:0 options:0 resultingItemURL:0 error:&v10];

  v7 = v10;
  v8 = v10;
  *(*(a1[5] + 8) + 24) = v6;

  if (v8)
  {
    v9 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v9 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100004A70();
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v7);
  }
}

void sub_1000023A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000023CC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained transferResults];
  v6 = [v5 objectForKey:*(a1 + 32)];

  if (v6)
  {
    v7 = +[FPItemManager defaultManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000024E8;
    v9[3] = &unk_1000083A8;
    v8 = *(a1 + 48);
    v9[4] = *(a1 + 40);
    v10 = v8;
    [v7 fetchURLForItem:v6 completionHandler:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000024E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 startAccessingSecurityScopedResource];
    v6 = *(a1 + 32);
    v9 = 0;
    v7 = [v6 sandboxingURLWrapperForURL:v4 readonly:0 error:&v9];
    v8 = v9;
    (*(*(a1 + 40) + 16))();
    if (v5)
    {
      [v4 stopAccessingSecurityScopedResource];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100002784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000027A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained transferResults];
  v6 = [v5 objectForKey:*(a1 + 32)];

  if (v6)
  {
    v7 = +[FPItemManager defaultManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000028C4;
    v9[3] = &unk_1000083A8;
    v8 = *(a1 + 48);
    v9[4] = *(a1 + 40);
    v10 = v8;
    [v7 fetchURLForItem:v6 completionHandler:v9];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000028C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 startAccessingSecurityScopedResource];
    v6 = *(a1 + 32);
    v9 = 0;
    v7 = [v6 sandboxingURLWrapperForURL:v4 readonly:0 error:&v9];
    v8 = v9;
    (*(*(a1 + 40) + 16))();
    if (v5)
    {
      [v4 stopAccessingSecurityScopedResource];
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_100002A70(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v3 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100004AD8();
    }
  }
}

void sub_100002D2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = +[FPItemManager defaultManager];
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100002E9C;
    v18 = &unk_100008438;
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v21 = v10;
    v19 = v11;
    v22 = *(a1 + 56);
    v20 = v12;
    v13 = [v8 createMoveOperation:v9 destinationItem:v5 completionHandler:&v15];
    [v7 scheduleAction:{v13, v15, v16, v17, v18, v19}];
  }

  else
  {
    v14 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v14 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100004690();
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100002E9C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(v5 + 16);
  v7 = a2;
  v6(v5, v7, a3);
  v8 = *(a1 + 32);
  v9 = [v7 url];

  [v8 _notifyDownloadCompleted:v9];
  if (*(a1 + 56) == 1)
  {
    v10 = [*(a1 + 40) url];
    [v10 stopAccessingSecurityScopedResource];
  }
}

void sub_100003144(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 fpfs_fpItem];
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000032A4;
    v11[3] = &unk_100008268;
    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    v12 = *(a1 + 40);
    v9 = [v7 createMoveOperation:v8 destinationItem:v6 completionHandler:v11];
    [*(a1 + 48) scheduleAction:v9];
  }

  else
  {
    (*(*(a1 + 72) + 16))();
    v10 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v10 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100004B40(a1);
    }
  }
}

void sub_1000032A4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) url];
    [v2 stopAccessingSecurityScopedResource];
  }
}

void sub_100003450(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v6 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100004C3C(a1);
    if (a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (a2)
    {
      goto LABEL_10;
    }
  }

  v7 = docDownloadServiceLogHandle;
  if (!docDownloadServiceLogHandle)
  {
    DOCInitLogging();
    v7 = docDownloadServiceLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100004CBC(a1);
  }

LABEL_10:
  (*(*(a1 + 48) + 16))();
}

void sub_1000038DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v7 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100004DA4(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003B2C;
    v13[3] = &unk_1000084D8;
    v14 = *(a1 + 32);
    v8 = [v5 indexOfObjectPassingTest:v13];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = docDownloadServiceLogHandle;
      if (!docDownloadServiceLogHandle)
      {
        DOCInitLogging();
        v9 = docDownloadServiceLogHandle;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100004E14((a1 + 32));
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v10 = [v5 objectAtIndexedSubscript:v8];
      v11 = docDownloadServiceLogHandle;
      if (!docDownloadServiceLogHandle)
      {
        DOCInitLogging();
        v11 = docDownloadServiceLogHandle;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        *buf = 138412546;
        v16 = v12;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Found provider matching domain for domainID: %@ provider: %@", buf, 0x16u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }
}

id sub_100003B2C(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

void sub_100003C88(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v9 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100004EF0(a1);
    }
  }

  else
  {
    if ([v5 isEnabled] && (objc_msgSend(v5, "isHidden") & 1) == 0)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100003E34;
      v11[3] = &unk_100008578;
      v10 = a1[5];
      v12 = a1[6];
      v15 = a1[7];
      v13 = a1[5];
      v14 = v5;
      [v10 doc_fetchRootNodeForProviderDomain:v14 completionHandler:v11];

      goto LABEL_14;
    }

    v8 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v8 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100004E80(a1);
    }
  }

  (*(a1[7] + 2))();
LABEL_14:
}

void sub_100003E34(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003F9C;
    v8[3] = &unk_100008550;
    v9 = a1[4];
    v10 = v5;
    v13 = a1[7];
    v11 = a1[5];
    v12 = a1[6];
    [v10 fetchURL:v8];
  }

  else
  {
    v7 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v7 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100004F58(a1);
    }

    (*(a1[7] + 2))();
  }
}

void sub_100003F9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 URLByAppendingPathComponent:*(a1 + 32)];
    v8 = *(a1 + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v7 startAccessingSecurityScopedResource];
      v10 = [FINode fiNodeFromURL:v7];
      if (v9)
      {
        [v7 stopAccessingSecurityScopedResource];
      }

      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v12 = *(a1 + 48);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100004148;
      v13[3] = &unk_100008528;
      v14 = *(a1 + 64);
      [v12 fetchItemForURL:v7 completionHandler:v13];
    }
  }

  else
  {
    v11 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v11 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100004FCC(a1);
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_100004270(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v9 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100004EF0(a1);
    }
  }

  else
  {
    if ([v5 isEnabled] && (objc_msgSend(v5, "isHidden") & 1) == 0)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100004408;
      v11[3] = &unk_1000085C8;
      v10 = *(a1 + 40);
      v12 = *(a1 + 48);
      v14 = *(a1 + 56);
      v13 = v5;
      [v10 doc_fetchRootNodeForProviderDomain:v13 completionHandler:v11];

      goto LABEL_14;
    }

    v8 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v8 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100004E80(a1);
    }
  }

  (*(*(a1 + 56) + 16))();
LABEL_14:
}

void sub_100004408(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100004534;
    v8[3] = &unk_1000083A8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    [v5 fetchURL:v8];
  }

  else
  {
    v7 = docDownloadServiceLogHandle;
    if (!docDownloadServiceLogHandle)
    {
      DOCInitLogging();
      v7 = docDownloadServiceLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100005040(a1);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100004534(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5 = [a2 URLByAppendingPathComponent:*(a1 + 32)];
    v3 = +[NSFileManager defaultManager];
    v4 = [v5 path];
    [v3 fileExistsAtPath:v4];

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100004630(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_100004658@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

uint64_t sub_100004664@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 40);
  return result;
}

void sub_100004674(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1000046F8(uint64_t a1)
{
  sub_100004658(a1, __stack_chk_guard);
  sub_1000045E8();
  sub_100004614();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100004768(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_1000045E8();
  sub_100004614();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000047DC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 url];
  sub_10000464C();
  v8 = 2112;
  v9 = a3;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Moving URL: %@ to parent: %@", v7, 0x16u);
}

void sub_100004900(uint64_t a1, NSObject *a2)
{
  v2 = 136315650;
  v3 = "[DLDocumentDownloads _notifyDownloadCompleted:]";
  v4 = 2112;
  v5 = a1;
  v6 = 2112;
  v7 = DOCSBFolderProgressCompletedDistributedNotification;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s URL: %@ request to post notification: %@", &v2, 0x20u);
}

void sub_1000049A0(uint64_t a1)
{
  sub_100004664(a1, __stack_chk_guard);
  sub_100004624();
  sub_100004630(&_mh_execute_header, v1, v2, "Can't create temp directory on destination volume: failed with error: %@", v3, v4, v5, v6, v7);
}

void sub_100004A08(uint64_t a1)
{
  sub_100004664(a1, __stack_chk_guard);
  sub_100004624();
  sub_100004630(&_mh_execute_header, v1, v2, "replaceContentsOfFile: failed with error: %@", v3, v4, v5, v6, v7);
}

void sub_100004B40(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  sub_100004600();
  sub_100004614();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100004BC0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DLDocumentDownloads.m" lineNumber:420 description:{@"Invalid parameter not satisfying: %@", @"location == _DOCFileDestinationDocuments"}];
}

void sub_100004C3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100004600();
  sub_100004614();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100004CBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100004600();
  v6 = v3;
  _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Folder named: %@ in domain %@ does not exist.", v5, 0x16u);
}

void sub_100004D38(uint64_t *a1)
{
  v1 = *a1;
  sub_100004624();
  sub_100004630(&_mh_execute_header, v2, v3, "Failed to create temp directory: %@", v4, v5, v6, v7, v8);
}

void sub_100004DA4(uint64_t a1)
{
  sub_100004658(a1, __stack_chk_guard);
  sub_1000045E8();
  sub_100004614();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100004E14(uint64_t *a1)
{
  v1 = *a1;
  sub_100004624();
  sub_100004674(&_mh_execute_header, v2, v3, "Did not find provider matching domain for domainID: %@.", v4, v5, v6, v7, v8);
}

void sub_100004E80(uint64_t a1)
{
  sub_100004658(a1, __stack_chk_guard);
  sub_1000045E8();
  sub_100004614();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100004EF0(uint64_t a1)
{
  sub_100004658(a1, __stack_chk_guard);
  sub_100004624();
  sub_100004674(&_mh_execute_header, v1, v2, "Did not find provider matching domain for domainID: %@.", v3, v4, v5, v6, v7);
}

void sub_100004F58(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_1000045E8();
  sub_100004614();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100004FCC(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_1000045E8();
  sub_100004614();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100005040(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_1000045E8();
  sub_100004614();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}