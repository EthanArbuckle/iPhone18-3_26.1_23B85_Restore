uint64_t start()
{
  fpfs_enable_fts_thread_fchdir();
  if ((fpfs_enable_vnode_rapid_aging() & 0x80000000) != 0)
  {
    v0 = fp_current_or_default_log();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v1 = *__error();
      v6[0] = 67109120;
      v6[1] = v1;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to activate VNODE rapid aging: %{errno}d", v6, 8u);
    }
  }

  fpfs_allow_operation();
  if ((fpfs_set_vfs_ignore_permissions_iopolicy() & 0x80000000) != 0)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10000253C(v5);
    }

    exit(1);
  }

  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  v2 = objc_opt_new();
  v3 = +[NSXPCListener serviceListener];
  [v3 setDelegate:v2];
  [v3 resume];

  return 0;
}

void sub_100001430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000144C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = WeakRetained;
    objc_sync_enter(v2);
    v2[24] = 1;
    objc_sync_exit(v2);

    WeakRetained = v3;
  }
}

void sub_100001790(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = fpfs_adopt_log();
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[INFO] 🧹 FPCKService, starting FPCK", buf, 2u);
  }

  v5 = *(a1 + 32);
  if (v5[8])
  {
    v6 = v5;
    objc_sync_enter(v6);
    if (*(*(a1 + 32) + 24) == 1)
    {
      (*(*(a1 + 48) + 16))();
      objc_sync_exit(v6);
    }

    else
    {
      objc_sync_exit(v6);

      dispatch_semaphore_signal(*(*(a1 + 32) + 16));
      v46 = [[FPXPCAutomaticErrorProxy alloc] initWithConnection:*(a1 + 40) protocol:&OBJC_PROTOCOL___FPCKUpdateReceiving orError:0 name:@"UpdateReceiverProxy" requestPid:getpid()];
      v47 = [v46 synchronousRemoteObjectProxy];
      v48 = &stru_1000082C0;
      v49 = &stru_100008300;
      if (*(a1 + 40) && v47)
      {
        *buf = 0;
        v77 = buf;
        v78 = 0x3032000000;
        v79 = sub_100001FDC;
        v80 = sub_100001FEC;
        v81 = [FPCKTask buildPauseResult:0 semaphore:0];
        v72[0] = 0;
        v72[1] = v72;
        v72[2] = 0x3032000000;
        v72[3] = sub_100001FDC;
        v72[4] = sub_100001FEC;
        v73 = +[NSDate now];
        v67[0] = _NSConcreteStackBlock;
        v67[1] = 3221225472;
        v67[2] = sub_100001FF4;
        v67[3] = &unk_100008350;
        v70 = v72;
        v71 = buf;
        v9 = v47;
        v10 = *(a1 + 32);
        v68 = v9;
        v69 = v10;
        v48 = objc_retainBlock(v67);
        v65[0] = _NSConcreteStackBlock;
        v65[1] = 3221225472;
        v65[2] = sub_1000021D0;
        v65[3] = &unk_100008378;
        v66 = v9;
        v49 = objc_retainBlock(v65);

        _Block_object_dispose(v72, 8);
        _Block_object_dispose(buf, 8);
      }

      v11 = objc_alloc_init(NSMutableArray);
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v12 = *(*(a1 + 32) + 88);
      v13 = [v12 countByEnumeratingWithState:&v61 objects:v75 count:16];
      if (v13)
      {
        v14 = *v62;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v62 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v61 + 1) + 8 * i);
            v17 = [v16 url];
            v18 = [v17 startAccessingSecurityScopedResource];

            if (v18)
            {
              v19 = [v16 url];
              [v11 addObject:v19];
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v61 objects:v75 count:16];
        }

        while (v13);
      }

      v20 = [*(*(a1 + 32) + 72) url];
      [v20 startAccessingSecurityScopedResource];

      v21 = [*(*(a1 + 32) + 80) url];
      [v21 startAccessingSecurityScopedResource];

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v22 = *(*(a1 + 32) + 96);
      v23 = [v22 countByEnumeratingWithState:&v57 objects:v74 count:16];
      if (v23)
      {
        v24 = *v58;
        do
        {
          for (j = 0; j != v23; j = j + 1)
          {
            if (*v58 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v57 + 1) + 8 * j);
            v27 = [v26 url];
            v28 = [v27 startAccessingSecurityScopedResource];

            if ((v28 & 1) == 0)
            {
              v29 = fp_current_or_default_log();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                sub_100002610(buf, v26, &buf[4], v29);
              }
            }
          }

          v23 = [v22 countByEnumeratingWithState:&v57 objects:v74 count:16];
        }

        while (v23);
      }

      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1000021DC;
      v56[3] = &unk_1000083A0;
      v56[4] = *(a1 + 32);
      v30 = objc_retainBlock(v56);
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_1000021E4;
      v54[3] = &unk_1000083C8;
      v55 = *(a1 + 40);
      v44 = objc_retainBlock(v54);
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_1000021F0;
      v52[3] = &unk_1000083C8;
      v53 = *(a1 + 40);
      v45 = objc_retainBlock(v52);
      v43 = *(*(a1 + 32) + 56);
      v42 = *(*(a1 + 32) + 64);
      v31 = [*(*(a1 + 32) + 72) url];
      v32 = [*(*(a1 + 32) + 80) url];
      v33 = *(a1 + 32);
      v34 = *(v33 + 52);
      v35 = *(v33 + 104);
      v36 = *(v33 + 112);
      v37 = *(v33 + 48);
      v38 = a1;
      v39 = v30;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_1000021FC;
      v50[3] = &unk_1000083F0;
      v50[4] = v33;
      v40 = *(v38 + 56);
      v51 = *(v38 + 48);
      LOWORD(v41) = v37;
      [FPCKTask runFPCKForDomain:v43 domainUserInfo:v42 domainRootURL:v31 databaseBackupPath:v32 urls:v11 volumeRole:v34 options:v35 reason:v36 fpfs:v41 iCDPackageDetection:v48 shouldPause:v44 sendDiagnostics:v49 saveCheckpoint:v45 reingestItems:v39 isInvalidated:v40 contentBarrier:v50 completionHandler:?];

      v6 = v46;
    }
  }

  else
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000025CC(v7);
    }

    v8 = *(a1 + 48);
    v6 = [NSError fp_invalidArgumentError:@"Prepare!"];
    (*(v8 + 16))(v8, 0, 0, 0, v6);
  }
}

uint64_t sub_100001FDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100001FF4(void *a1)
{
  [*(*(a1[6] + 8) + 40) timeIntervalSinceNow];
  if (v2 < -5.0)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000020D4;
    v10[3] = &unk_100008328;
    v3 = a1[7];
    v4 = a1[4];
    v10[4] = a1[5];
    v10[5] = v3;
    [v4 shouldPauseWithCompletion:v10];
    v5 = +[NSDate now];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = *(*(a1[7] + 8) + 40);

  return v8;
}

void sub_1000020D4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000026A0(v5, v6);
    }
  }

  if (a2)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[INFO] 🧹 FPCKService will pause because pause checker indicated", v13, 2u);
    }

    v8 = *(*(a1 + 32) + 16);
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = [FPCKTask buildPauseResult:v9 semaphore:v8];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_1000021FC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [*(*(a1 + 32) + 72) url];
  [v13 stopAccessingSecurityScopedResource];

  v14 = [*(*(a1 + 32) + 80) url];
  [v14 stopAccessingSecurityScopedResource];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = *(*(a1 + 32) + 88);
  v16 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      v19 = 0;
      do
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v31 + 1) + 8 * v19) url];
        [v20 stopAccessingSecurityScopedResource];

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v17);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = *(*(a1 + 32) + 96);
  v22 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v28;
    do
    {
      v25 = 0;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v27 + 1) + 8 * v25) url];
        [v26 stopAccessingSecurityScopedResource];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v23);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10000253C(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "[ERROR] failed to set ignore permissions iopolicy %d\n", v3, 8u);
}

void sub_100002610(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 url];
  v8 = [v7 fp_shortDescription];
  *a1 = 138412290;
  *a3 = v8;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "[ERROR] Failed accessing url: %@", a1, 0xCu);
}

void sub_1000026A0(void *a1, NSObject *a2)
{
  v3 = [a1 fp_prettyDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[ERROR] Pause checker error: %@", &v4, 0xCu);
}