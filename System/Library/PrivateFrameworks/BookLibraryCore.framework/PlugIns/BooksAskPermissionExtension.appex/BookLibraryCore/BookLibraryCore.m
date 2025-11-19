void sub_100000DCC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = BLBooksAskPermissionExtensionLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v2;
      v5 = "BooksAskPermissionExtension: reloadFromServer encountered error: %@";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, v7, v5, &v9, v8);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    v5 = "BooksAskPermissionExtension: reloadFromServer requested";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 2;
    goto LABEL_6;
  }
}

void sub_100001080(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = BLBooksAskPermissionExtensionLog();
  v11 = v10;
  if (v9)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v17 = 138543618;
    v18 = v7;
    v19 = 2112;
    v20 = v9;
    v12 = "(dID=%{public}@) BooksAskPermissionExtension: Purchase encountered error: %@";
    v13 = v11;
    v14 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v17 = 138543618;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v12 = "(dID=%{public}@) BooksAskPermissionExtension: Purchase done! %@";
    v13 = v11;
    v14 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v13, v14, v12, &v17, 0x16u);
LABEL_7:

  v15 = objc_retainBlock(*(a1 + 32));
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15);
  }
}

void sub_100001228(id a1, BOOL a2)
{
  v2 = BLBooksAskPermissionExtensionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BooksAskPermissionExtension: Extension finished", v3, 2u);
  }
}

void sub_1000015F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = BLBooksAskPermissionExtensionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BooksAskPermissionExtension: Result observer finished", v3, 2u);
  }

  [WeakRetained _finish];
}

Class sub_100001690(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000084A8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000017D4;
    v4[4] = &unk_100004248;
    v4[5] = v4;
    v5 = off_100004230;
    v6 = 0;
    qword_1000084A8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000084A8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("APResult");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100001848();
  }

  qword_1000084A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000017D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000084A8 = result;
  return result;
}