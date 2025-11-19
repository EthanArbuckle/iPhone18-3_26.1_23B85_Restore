void sub_100122970(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = +[CPLErrors readOnlyError];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void sub_1001229EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100122C24;
  v27[3] = &unk_100279C58;
  v30 = *(a1 + 64);
  v4 = v3;
  v28 = v4;
  v29 = *(a1 + 32);
  v5 = objc_retainBlock(v27);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_100004550;
  v25[4] = sub_10000538C;
  v26 = 0;
  v6 = [*(a1 + 40) scopes];
  v7 = *(a1 + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B0D5C;
  v15[3] = &unk_100279E60;
  v8 = v6;
  v16 = v8;
  v9 = *(a1 + 48);
  v23 = v25;
  v10 = *(a1 + 56);
  v17 = v9;
  v18 = v10;
  v19 = *(a1 + 40);
  v11 = v4;
  v20 = v11;
  v12 = v5;
  v13 = *(a1 + 72);
  v22 = v12;
  v24 = v13;
  v21 = *(a1 + 32);
  v14 = [v7 performReadTransactionWithBlock:v15];

  _Block_object_dispose(v25, 8);
}

void sub_100122C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100122C24(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) unblock];
  v3 = [*(a1 + 40) totalUnitCount];
  v4 = *(a1 + 40);

  return [v4 setCompletedUnitCount:v3];
}

void sub_100122C80(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 transport];

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_100004550;
  v27[4] = sub_10000538C;
  v28 = 0;
  v4 = *(*(*(a1 + 96) + 8) + 40);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100122EBC;
  v20[3] = &unk_100279E10;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v21 = v11;
  v22 = v10;
  v12 = *(a1 + 32);
  v25 = v27;
  v23 = v12;
  v13 = *(a1 + 88);
  v14 = *(a1 + 104);
  v24 = v13;
  v26 = v14;
  v15 = [v3 updateShareTaskForScope:v5 transportScope:v4 completionHandler:v20];
  v16 = *(a1 + 80);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100123628;
  v18[3] = &unk_1002720E0;
  v18[4] = *(a1 + 32);
  v17 = v15;
  v19 = v17;
  [v16 performAsCurrentWithPendingUnitCount:1 usingBlock:v18];

  _Block_object_dispose(v27, 8);
}

void sub_100122EBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || !*(a1 + 32))
  {
    v7 = *(*(a1 + 64) + 104);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100123610;
    v23[3] = &unk_100272E20;
    v8 = &v26;
    v26 = *(a1 + 72);
    v9 = &v24;
    v24 = v5;
    v10 = &v25;
    v25 = v6;
    v11 = v23;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002BB8;
    block[3] = &unk_100271E98;
    v37 = v11;
    v12 = v7;
    v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v12, v13);
  }

  else
  {
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100123144;
    v32[3] = &unk_100279CA8;
    v8 = &v33;
    v33 = *(a1 + 56);
    v9 = &v34;
    v16 = v5;
    v34 = v16;
    v10 = v35;
    v17 = *(a1 + 32);
    v18 = *(a1 + 80);
    v35[0] = v17;
    v35[1] = v18;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100123280;
    v27[3] = &unk_100279DE8;
    v19 = v16;
    v20 = *(a1 + 64);
    v21 = *(a1 + 72);
    v28 = v19;
    v29 = v20;
    v30 = v21;
    v31 = *(a1 + 80);
    v22 = [v14 performWriteTransactionByPassBlocker:v15 withBlock:v32 completionHandler:v27];
  }
}

void sub_100123144(id *a1, void *a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100123220;
  v9[3] = &unk_100279C80;
  v4 = a1 + 7;
  v5 = a1[4];
  v6 = a1[5];
  *&v7 = a1[6];
  *(&v7 + 1) = *v4;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [a2 do:v9];
}

id sub_100123220(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) storeScopeChange:*(a1 + 40) forScope:*(a1 + 48) error:a2];
  if (v3)
  {
    v4 = [*(a1 + 32) scopeChangeForScope:*(a1 + 48)];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return v3;
}

void sub_100123280(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v12 = sub_10011B768();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v14 = [v3 error];
        *buf = 138412546;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to update share for %@ in storage: %@", buf, 0x16u);
      }
    }

    v15 = *(*(a1 + 40) + 104);
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_100123584;
    v37 = &unk_100279CD0;
    v16 = v39;
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v39[0] = v17;
    v39[1] = v18;
    v38 = v3;
    v19 = &v34;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002BB8;
    v41 = &unk_100271E98;
    v42 = v19;
    v20 = v15;
    v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
    dispatch_async(v20, v21);
  }

  else
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      sub_1001B3148(a1, v5, v6, v7, v8, v9, v10, v11, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    }

    v22 = *(*(a1 + 40) + 104);
    v29 = _NSConcreteStackBlock;
    *&v30 = 3221225472;
    *(&v30 + 1) = sub_1001235F0;
    v31 = &unk_100279CF8;
    v16 = &v32;
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    v32 = v23;
    v33 = v24;
    v25 = &v29;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002BB8;
    v41 = &unk_100271E98;
    v42 = v25;
    v26 = v22;
    v27 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
    dispatch_async(v26, v27);
  }
}

void sub_100123584(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2, v3);
}

id sub_100123628(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 syncManager];
  [v3 configureDirectTransportTask:*(a1 + 40)];

  v4 = *(a1 + 40);

  return [v4 runWithNoSyncSession];
}

void sub_1001238EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = +[CPLErrors readOnlyError];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_100123964(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 transport];

  v4 = [*(a1 + 32) engineLibrary];
  v5 = [v4 store];

  v6 = [v5 scopes];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100123AC8;
  v13[3] = &unk_100279EB0;
  v20 = *(a1 + 56);
  v14 = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v15 = v7;
  v16 = v8;
  v17 = v3;
  v18 = v5;
  v21 = *(a1 + 64);
  v19 = *(a1 + 48);
  v9 = v5;
  v10 = v3;
  v11 = v6;
  v12 = [v9 performReadTransactionWithBlock:v13];
}

void sub_100123AC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(a1 + 80);
    v6 = [v3 error];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7 = [*(a1 + 32) scopeWithIdentifier:*(a1 + 40)];
    if (v7)
    {
      v8 = [*(a1 + 32) transportScopeForScope:v7];
      if (v8)
      {
        v9 = [*(a1 + 48) engineLibrary];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100123D04;
        v16[3] = &unk_100279E88;
        v24 = *(a1 + 80);
        v17 = *(a1 + 56);
        v18 = v8;
        v19 = v7;
        v20 = *(a1 + 64);
        v21 = *(a1 + 32);
        v25 = *(a1 + 88);
        v10 = *(a1 + 72);
        v11 = *(a1 + 48);
        v22 = v10;
        v23 = v11;
        [v9 blockEngineWithReason:@"Deleting scope" onlyIfBlocked:0 block:v16];
      }

      else
      {
        v14 = *(a1 + 80);
        v15 = [CPLErrors invalidScopeErrorWithScopeIdentifier:*(a1 + 40)];
        (*(v14 + 16))(v14, v15);
      }
    }

    else
    {
      v12 = *(a1 + 80);
      v13 = [CPLErrors cplErrorWithCode:2001 description:@"Unknown scope %@", *(a1 + 40)];
      (*(v12 + 16))(v12, v13);
    }
  }
}

void sub_100123D04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100123F40;
    v22[3] = &unk_1002724D0;
    v24 = *(a1 + 88);
    v4 = v3;
    v23 = v4;
    v5 = objc_retainBlock(v22);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100123F84;
    v16[3] = &unk_100276098;
    v21 = v5;
    v8 = *(a1 + 48);
    v17 = v8;
    v18 = *(a1 + 56);
    v19 = v4;
    v20 = *(a1 + 64);
    v9 = v5;
    v10 = [v6 deleteTransportScope:v7 scope:v8 completionHandler:v16];
    [v10 setForced:*(a1 + 96)];
    v11 = [*(a1 + 32) createGroupForTransportScopeDelete];
    [v10 setTransportGroup:v11];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100124100;
    v14[3] = &unk_1002720E0;
    v12 = *(a1 + 72);
    v14[4] = *(a1 + 80);
    v15 = v10;
    v13 = v10;
    [v12 performAsCurrentWithPendingUnitCount:1 usingBlock:v14];
  }

  else
  {
    (*(*(a1 + 88) + 16))();
  }
}

id sub_100123F40(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 unblock];
}

void sub_100123F84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    sub_1001B3228(a1, v5, v4);
  }
}

void sub_100123FE4(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100124088;
  v4[3] = &unk_100279838;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 do:v4];
}

void sub_1001240A0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3);
}

id sub_100124100(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 syncManager];
  [v3 configureDirectTransportTask:*(a1 + 40)];

  v4 = *(a1 + 40);

  return [v4 runWithNoSyncSession];
}

id sub_100124314(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 syncManager];
  [v3 configureDirectTransportTask:*(a1 + 40)];

  v4 = *(a1 + 40);

  return [v4 runWithNoSyncSession];
}

void sub_100124608(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = +[CPLErrors readOnlyError];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void sub_100124684(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100124904;
    v30[3] = &unk_100279C58;
    v33 = *(a1 + 64);
    v7 = v5;
    v31 = v7;
    v32 = *(a1 + 32);
    v8 = objc_retainBlock(v30);
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = sub_100004550;
    v28[4] = sub_10000538C;
    v29 = 0;
    v9 = [*(a1 + 40) scopes];
    v10 = *(a1 + 40);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100124960;
    v18[3] = &unk_100279E60;
    v11 = v9;
    v19 = v11;
    v12 = *(a1 + 48);
    v26 = v28;
    v13 = *(a1 + 56);
    v20 = v12;
    v21 = v13;
    v22 = *(a1 + 40);
    v14 = v7;
    v15 = *(a1 + 72);
    v23 = v14;
    v27 = v15;
    v16 = v8;
    v25 = v16;
    v24 = *(a1 + 32);
    v17 = [v10 performReadTransactionWithBlock:v18];

    _Block_object_dispose(v28, 8);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  }
}

void sub_1001248EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100124904(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) unblock];
  v3 = [*(a1 + 40) totalUnitCount];
  v4 = *(a1 + 40);

  return [v4 setCompletedUnitCount:v3];
}

void sub_100124960(uint64_t a1, void *a2)
{
  v3 = a2;
  v54 = 0;
  v55[0] = &v54;
  v55[1] = 0x3032000000;
  v55[2] = sub_100004550;
  v55[3] = sub_10000538C;
  v56 = [*(a1 + 32) scopeWithIdentifier:*(a1 + 40)];
  v4 = *(v55[0] + 40);
  if (v4)
  {
    v5 = [*(a1 + 32) scopeChangeForScope:*(v55[0] + 40)];
  }

  else
  {
    sub_1001B33BC((a1 + 40));
    v28 = [[CPLEngineScope alloc] initWithScopeIdentifier:*(a1 + 40) scopeType:0];
    v29 = *(v55[0] + 40);
    *(v55[0] + 40) = v28;

    v5 = 0;
  }

  v6 = [*(a1 + 32) transportScopeForScope:*(v55[0] + 40)];
  v7 = *(*(a1 + 88) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(*(a1 + 88) + 8) + 40);
  v10 = [*(a1 + 48) engineLibrary];
  v11 = [v10 transport];

  v12 = [v11 createGroupForTransportScopeRefresh];
  v13 = v4 == 0;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100124D38;
  v40[3] = &unk_10027A008;
  v14 = v11;
  v15 = *(a1 + 88);
  v41 = v14;
  v50 = v15;
  v51 = &v54;
  v16 = v5;
  v42 = v16;
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v53 = v13;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  *&v21 = v19;
  *(&v21 + 1) = v20;
  *&v22 = v17;
  *(&v22 + 1) = v18;
  v43 = v22;
  v44 = v21;
  v23 = v9;
  v52 = *(a1 + 96);
  v24 = *(a1 + 48);
  v45 = v23;
  v46 = v24;
  v49 = *(a1 + 80);
  v25 = v12;
  v47 = v25;
  v48 = *(a1 + 72);
  v26 = objc_retainBlock(v40);
  v27 = v26;
  if (*(*(*(a1 + 88) + 8) + 40))
  {
    (v26[2])(v26);
  }

  else
  {
    sub_1001B3464(v55);
    v30 = *(a1 + 48);
    v31 = *(v55[0] + 40);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1001259FC;
    v35[3] = &unk_10027A030;
    v32 = *(a1 + 72);
    v37 = *(a1 + 80);
    v33 = *(a1 + 40);
    v34 = *(a1 + 88);
    v36 = v33;
    v39 = v34;
    v38 = v27;
    [v30 _fetchTransportScopeForScope:v31 transportGroup:v25 progress:v32 completionHandler:v35];
  }

  _Block_object_dispose(&v54, 8);
}

void sub_100124D38(uint64_t a1)
{
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_100004550;
  v31[4] = sub_10000538C;
  v32 = 0;
  v2 = *(*(*(a1 + 120) + 8) + 40);
  v3 = *(*(*(a1 + 128) + 8) + 40);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100124F9C;
  v20[3] = &unk_100279FE0;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v30 = *(a1 + 144);
  v27 = *(a1 + 128);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v21 = v11;
  v22 = v10;
  v23 = *(a1 + 80);
  v12 = *(a1 + 32);
  v13 = *(a1 + 136);
  v14 = *(a1 + 88);
  v24 = v12;
  v25 = v14;
  v28 = v31;
  v29 = v13;
  v26 = *(a1 + 112);
  v15 = [v5 getScopeInfoWithTransportScope:v2 scope:v3 previousScopeChange:v4 completionHandler:v20];
  [v15 setTransportGroup:*(a1 + 96)];
  v16 = *(a1 + 104);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100125994;
  v18[3] = &unk_1002720E0;
  v18[4] = *(a1 + 88);
  v17 = v15;
  v19 = v17;
  [v16 performAsCurrentWithPendingUnitCount:1 usingBlock:v18];

  _Block_object_dispose(v31, 8);
}

void sub_100124F9C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v14)
  {
    v15 = *(*(a1 + 80) + 104);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10012597C;
    v29[3] = &unk_100272E20;
    v16 = &v32;
    v32 = *(a1 + 88);
    v17 = &v30;
    v30 = v11;
    v18 = &v31;
    v31 = v14;
    v19 = v29;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002BB8;
    block[3] = &unk_100271E98;
    v54 = v19;
    v20 = v15;
    v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v20, v21);
  }

  else
  {
    v28 = *(a1 + 32);
    v22 = [*(a1 + 40) writeTransactionBlocker];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1001252C0;
    v38[3] = &unk_100279F90;
    v52 = *(a1 + 120);
    v48 = *(a1 + 96);
    v16 = &v39;
    v39 = *(a1 + 48);
    v17 = &v40;
    v40 = *(a1 + 56);
    v18 = &v41;
    v41 = v13;
    v50 = a2;
    v42 = v11;
    v43 = v12;
    v44 = *(a1 + 64);
    v45 = *(a1 + 32);
    v23 = *(a1 + 72);
    v24 = *(a1 + 80);
    v46 = v23;
    v47 = v24;
    v25 = *(a1 + 104);
    v51 = *(a1 + 112);
    v49 = v25;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001255B8;
    v33[3] = &unk_100279FB8;
    v35 = v25;
    v33[4] = v24;
    v26 = *(a1 + 88);
    v36 = *(a1 + 96);
    v37 = v51;
    v34 = v26;
    v27 = [v28 performWriteTransactionByPassBlocker:v22 withBlock:v38 completionHandler:v33];
  }
}

void sub_1001252C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 136) == 1)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100125494;
    v17[3] = &unk_100279810;
    v21 = *(a1 + 104);
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    [v3 do:v17];
  }

  v4 = [v3 error];

  if (!v4)
  {
    [CPLScopeUpdateScopeTask updateScopeWithNewScopeType:*(a1 + 120) scope:*(*(*(a1 + 104) + 8) + 40) updatedScopeChange:*(a1 + 56) updatedFlags:*(a1 + 64) oldTransportScope:*(a1 + 72) updatedTransportScope:*(a1 + 48) shouldUpdateTransportScope:&stru_100279F40 store:*(a1 + 80) transport:*(a1 + 88) session:0 inTransaction:v3];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100125500;
  v9[3] = &unk_100279F68;
  v14 = *(a1 + 104);
  v10 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = *(a1 + 128);
  v6 = *(a1 + 96);
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 112);
  v13 = v7;
  v15 = v8;
  [v3 do:v9];
}

BOOL sub_100125494(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) createScopeWithIdentifier:*(a1 + 40) scopeType:0 flags:16 transportScope:*(a1 + 48) error:a2];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 56) + 8) + 40) != 0;
}

void sub_1001255B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4 && [v4 needsToSetScopeIdentifier])
  {
    sub_1001B35F0(a1, a1 + 48, v5, v6, v7, v8, v9, v10, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  }

  v11 = [v3 error];

  if (v11)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_10011B768();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = *(*(*(a1 + 56) + 8) + 40);
        v21 = [v3 error];
        *buf = 138412546;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to refresh %@: %@", buf, 0x16u);
      }
    }

    v22 = *(*(a1 + 32) + 104);
    v41 = _NSConcreteStackBlock;
    v42 = 3221225472;
    v43 = sub_1001258F0;
    v44 = &unk_100279CD0;
    v23 = v46;
    v24 = *(a1 + 40);
    v25 = *(a1 + 48);
    v46[0] = v24;
    v46[1] = v25;
    v45 = v3;
    v26 = &v41;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002BB8;
    v48 = &unk_100271E98;
    v49 = v26;
    v27 = v22;
    v28 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
    dispatch_async(v27, v28);
  }

  else
  {
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      sub_1001B36E0(a1, v12, v13, v14, v15, v16, v17, v18, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    }

    v29 = *(*(a1 + 32) + 104);
    v36 = _NSConcreteStackBlock;
    *&v37 = 3221225472;
    *(&v37 + 1) = sub_10012595C;
    v38 = &unk_100279CF8;
    v23 = &v39;
    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v39 = v30;
    v40 = v31;
    v32 = &v36;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002BB8;
    v48 = &unk_100271E98;
    v49 = v32;
    v33 = v29;
    v34 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
    dispatch_async(v33, v34);
  }
}

void sub_1001258F0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2, v3);
}

id sub_100125994(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 syncManager];
  [v3 configureDirectTransportTask:*(a1 + 40)];

  v4 = *(a1 + 40);

  return [v4 runWithNoSyncSession];
}

void sub_1001259FC(void *a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  if (v6)
  {
    (*(a1[5] + 16))();
  }

  else if (v9)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    (*(a1[6] + 16))();
  }

  else
  {
    v7 = a1[5];
    v8 = [CPLErrors cplErrorWithCode:2001 description:@"Unknown transport scope for %@", a1[4]];
    (*(v7 + 16))(v7, 0, v8);
  }
}

void sub_100125EC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = +[CPLErrors readOnlyError];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void sub_100125F3C(id *a1)
{
  v2 = [a1[4] engineLibrary];
  v3 = [v2 transport];
  v4 = [v2 store];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100126058;
  v7[3] = &unk_10027A0F8;
  v7[4] = a1[4];
  v12 = a1[7];
  v8 = a1[5];
  v9 = v3;
  v10 = a1[6];
  v11 = v4;
  v5 = v4;
  v6 = v3;
  [v5 blockWriteTransactionsWithCompletionHandler:v7];
}

void sub_100126058(uint64_t a1, void *a2)
{
  v3 = a2;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100126234;
  v18[3] = &unk_10027A0A8;
  v18[4] = *(a1 + 32);
  v21 = *(a1 + 72);
  v19 = v3;
  v20 = *(a1 + 40);
  v4 = v3;
  v5 = objc_retainBlock(v18);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10012647C;
  v14[3] = &unk_100279C58;
  v17 = v5;
  v15 = *(a1 + 64);
  v16 = *(a1 + 56);
  v8 = v5;
  v9 = [v6 fetchTaskForScopeWithShareURL:v7 completionHandler:v14];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10012691C;
  v12[3] = &unk_1002720E0;
  v10 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v9;
  v11 = v9;
  [v10 performAsCurrentWithPendingUnitCount:1 usingBlock:v12];
}

void sub_100126234(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 104);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001263C0;
  v16[3] = &unk_10027A080;
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v17 = v5;
  v18 = v9;
  v22 = v8;
  v19 = v6;
  v20 = v10;
  v21 = *(a1 + 48);
  v11 = v16;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v24 = v11;
  v12 = v7;
  v13 = v6;
  v14 = v5;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v12, v15);
}

id sub_1001263C0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 40);
      v11 = 0;
      v5 = [v4 _isValidScopeForClient:v3 error:&v11];
      v6 = v11;
      v2 = *(a1 + 72);
      if (!v5)
      {
        v9 = *(v2 + 16);
        goto LABEL_8;
      }

      v7 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
    }

    v8 = *(a1 + 48);
    v9 = *(v2 + 16);
LABEL_8:
    v9();
  }

  [*(a1 + 56) unblock];
  return [*(a1 + 64) setCompletedUnitCount:{objc_msgSend(*(a1 + 64), "totalUnitCount")}];
}

void sub_10012647C(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(a1[6] + 2))();
  }

  else
  {
    v6 = a1[4];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100126584;
    v8[3] = &unk_10027A0D0;
    v12 = a1[6];
    v9 = v5;
    v10 = a1[4];
    v11 = a1[5];
    v7 = [v6 performReadTransactionWithBlock:v8];
  }
}

void sub_100126584(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (!v4)
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) scopes];
    v9 = [*(a1 + 32) scopeIdentifier];
    v10 = [v8 scopeWithIdentifier:v9];

    if (!v10)
    {
      [v7 setActivated:0];
      v15 = 0;
LABEL_20:
      (*(*(a1 + 56) + 16))();

      goto LABEL_21;
    }

    v11 = [v8 flagsForScope:v10];
    if ([v11 valueForFlag:32])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v12 = sub_10011B768();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [*(a1 + 48) cpl_redactedShareURL];
          *buf = 138543618;
          v20 = v13;
          v21 = 2112;
          v22 = v10;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Trying to fetch a share at %{public}@ resulting to %@ which has already been scheduled to be deleted by client", buf, 0x16u);
        }
      }

      v14 = [v10 scopeIdentifier];
      [CPLErrors cplErrorWithCode:23 description:@"%@ has been deleted by client already", v14];
    }

    else
    {
      if (![v11 valueForFlag:4])
      {
        [v7 setActivated:{objc_msgSend(v11, "valueForFlag:", 16) ^ 1}];
        if (![v7 isActivated] || (_CPLSilentLogging & 1) != 0)
        {
          v15 = 0;
          goto LABEL_19;
        }

        v14 = sub_10011B768();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [*(a1 + 48) cpl_redactedShareURL];
          *buf = 138543618;
          v20 = v18;
          v21 = 2112;
          v22 = v10;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Client fetched share at %{public}@ which is already active as %@", buf, 0x16u);
        }

        v15 = 0;
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v16 = sub_10011B768();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [*(a1 + 48) cpl_redactedShareURL];
          *buf = 138543618;
          v20 = v17;
          v21 = 2112;
          v22 = v10;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Trying to fetch a share at %{public}@ resulting to %@ which has already been found to be deleted", buf, 0x16u);
        }
      }

      v14 = [v10 scopeIdentifier];
      [CPLErrors cplErrorWithCode:23 description:@"%@ has been deleted on server already", v14];
    }
    v15 = ;
    v7 = 0;
    goto LABEL_18;
  }

  v5 = *(a1 + 56);
  v6 = [v3 error];
  (*(v5 + 16))(v5, 0, v6);

LABEL_21:
}

id sub_10012691C(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 syncManager];
  [v3 configureDirectTransportTask:*(a1 + 40)];

  v4 = *(a1 + 40);

  return [v4 runWithNoSyncSession];
}

void sub_100126C70(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = +[CPLErrors readOnlyError];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_100126CE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100126F30;
  v21[3] = &unk_100273C88;
  v21[4] = *(a1 + 32);
  v24 = *(a1 + 64);
  v4 = v3;
  v22 = v4;
  v23 = *(a1 + 40);
  v5 = objc_retainBlock(v21);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001270F0;
  v15[3] = &unk_10027A1E8;
  v15[4] = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v6 = v4;
  v18 = v6;
  v7 = v5;
  v20 = v7;
  v19 = *(a1 + 40);
  v8 = objc_retainBlock(v15);
  if ([*(a1 + 48) scopeType] == 5)
  {
    v9 = *(a1 + 56);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001276CC;
    v11[3] = &unk_100279D98;
    v12 = v9;
    v13 = v8;
    v14 = v7;
    v10 = [v12 performReadTransactionWithBlock:v11];
  }

  else
  {
    (v8[2])(v8);
  }
}

void sub_100126F30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 104);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100127090;
  v9[3] = &unk_10027A120;
  v13 = *(a1 + 56);
  v10 = v3;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v5 = v9;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v15 = v5;
  v6 = v4;
  v7 = v3;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v6, v8);
}

id sub_100127090(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32));
  }

  [*(a1 + 40) unblock];
  v3 = [*(a1 + 48) totalUnitCount];
  v4 = *(a1 + 48);

  return [v4 setCompletedUnitCount:v3];
}

void sub_1001270F0(uint64_t a1)
{
  v10 = *(a1 + 32);
  v2 = *(v10 + 104);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100127270;
  v11[3] = &unk_10027A1E8;
  v3 = *(&v10 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v12 = v10;
  v13 = v6;
  v15 = *(a1 + 72);
  v14 = *(a1 + 64);
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v17 = v7;
  v8 = v2;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v9);
}

void sub_100127270(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 transport];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001273E0;
  v10[3] = &unk_10027A1C0;
  v4 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 40);
  v14 = *(a1 + 72);
  v5 = [v3 acceptTaskForSharedScope:v4 completionHandler:v10];
  v6 = *(a1 + 64);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100127664;
  v8[3] = &unk_1002720E0;
  v8[4] = *(a1 + 32);
  v9 = v5;
  v7 = v5;
  [v6 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
}

void sub_1001273E0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a5)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100127578;
    v18[3] = &unk_10027A170;
    v19 = v9;
    v20 = *(a1 + 32);
    v21 = v11;
    v22 = v10;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001B10DC;
    v15[3] = &unk_10027A198;
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v14 = [v12 performWriteTransactionByPassBlocker:v13 withBlock:v18 completionHandler:v15];
  }
}

void sub_100127578(id *a1, void *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001B0F9C;
  v10[3] = &unk_10027A148;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  [a2 do:v10];
}

id sub_100127664(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 syncManager];
  [v3 configureDirectTransportTask:*(a1 + 40)];

  v4 = *(a1 + 40);

  return [v4 runWithNoSyncSession];
}

void sub_1001276CC(uint64_t a1)
{
  v8 = [*(a1 + 32) scopes];
  v2 = [v8 primaryScope];
  v3 = @"iCPL scope has not been seen by CPL yet";
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = @"iCPL scope has not been seen by CPL yet";
  }

  v5 = v4;
  if (v2)
  {
    if ([v8 valueForFlag:16 forScope:v2])
    {
      v3 = @"iCPL has not been activated by client";
    }

    else
    {
      v6 = [v8 transportScopeForScope:v2];

      if (v6)
      {
        (*(*(a1 + 40) + 16))();
        goto LABEL_13;
      }

      v3 = @"iCPL zone has not been fetched or created yet";
    }
  }

  if ([*(a1 + 32) hasPendingResetSync])
  {
    v3 = [(__CFString *)v3 stringByAppendingString:@" - maybe because of a reset sync"];
  }

  v7 = [CPLErrors cplErrorWithCode:100 description:@"Can't join a Shared Library: %@", v3];
  (*(*(a1 + 48) + 16))();

LABEL_13:
}

void sub_1001279B0(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100127B54;
    v18[3] = &unk_10027A170;
    v19 = v9;
    v20 = *(a1 + 32);
    v21 = v11;
    v22 = v10;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100127C40;
    v15[3] = &unk_10027A198;
    v16 = v19;
    v17 = *(a1 + 48);
    v14 = [v12 performWriteTransactionByPassBlocker:v13 withBlock:v18 completionHandler:v15];
  }
}

void sub_100127B54(id *a1, void *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001B11F0;
  v10[3] = &unk_10027A148;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  [a2 do:v10];
}

void sub_100127C40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    sub_1001B37D0();
  }

  else
  {
    v5 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }
}

id sub_100127CAC(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 syncManager];
  [v3 configureDirectTransportTask:*(a1 + 40)];

  v4 = *(a1 + 40);

  return [v4 runWithNoSyncSession];
}

void sub_100127F54(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = +[CPLErrors readOnlyError];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void sub_100127FD0(uint64_t a1, void *a2)
{
  v3 = a2;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100128270;
  v32[3] = &unk_10027A0A8;
  v32[4] = *(a1 + 32);
  v35 = *(a1 + 56);
  v4 = v3;
  v33 = v4;
  v34 = *(a1 + 40);
  v5 = objc_retainBlock(v32);
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"CPLAlwaysFetchExistingSharedScopeFromTransport"];

  if (v7)
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = *(v9 + 104);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100128458;
    v28[3] = &unk_100272518;
    v28[4] = v9;
    v29 = v8;
    v30 = v4;
    v31 = v5;
    v11 = v28;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002BB8;
    block[3] = &unk_100271E98;
    v37 = v11;
    v12 = v5;
    v13 = v10;
    v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v13, v14);

    v15 = v29;
  }

  else
  {
    v16 = *(a1 + 48);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100128468;
    v22[3] = &unk_10027A288;
    v17 = v16;
    v27 = v5;
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    v23 = v17;
    v24 = v18;
    v25 = v19;
    v26 = v4;
    v20 = v5;
    v21 = [v17 performReadTransactionWithBlock:v22];

    v15 = v23;
  }
}

void sub_100128270(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 104);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001283F8;
  v13[3] = &unk_10027A260;
  v18 = *(a1 + 56);
  v14 = v5;
  v15 = v6;
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v8 = v13;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v20 = v8;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v12);
}

id sub_1001283F8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  [*(a1 + 48) unblock];
  v3 = [*(a1 + 56) totalUnitCount];
  v4 = *(a1 + 56);

  return [v4 setCompletedUnitCount:v3];
}

void sub_100128468(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) scopes];
  v5 = [v4 primaryScope];
  if (v5 && ([v4 sharingScopeForScope:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v4, "scopeChangeForScope:", v6), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
LABEL_20:
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = [v4 allScopeIdentifiersIncludeInactive:1];
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v25 = v3;
      v8 = 0;
      v12 = *v31;
      do
      {
        v13 = 0;
        do
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [v4 scopeWithIdentifier:{*(*(&v30 + 1) + 8 * v13), v25}];
          if (v14 && ([v4 valueForFlag:4 forScope:v14] & 1) == 0)
          {
            if (([v14 scopeType] & 0xFFFFFFFFFFFFFFFELL) == 4)
            {
              v15 = [v4 scopeChangeForScope:v14];

              v8 = v15;
            }
          }

          else if (v8)
          {

            v3 = v25;
            goto LABEL_20;
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v16 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
        v11 = v16;
      }

      while (v16);

      v3 = v25;
      if (v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v26 = *(a1 + 40);
    v17 = *(v26 + 104);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001287A8;
    v27[3] = &unk_100272518;
    v18 = *(&v26 + 1);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    *&v21 = v19;
    *(&v21 + 1) = v20;
    v28 = v26;
    v29 = v21;
    v22 = v27;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002BB8;
    block[3] = &unk_100271E98;
    v35 = v22;
    v23 = v17;
    v24 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v23, v24);

    v8 = 0;
  }
}

void sub_100128A20(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = +[CPLErrors readOnlyError];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void sub_100128A9C(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 transport];

  v4 = [*(a1 + 32) engineLibrary];
  v5 = [v4 store];

  v6 = [v5 scopes];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100128C00;
  v13[3] = &unk_10027A3A0;
  v20 = *(a1 + 56);
  v14 = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v15 = v7;
  v16 = v8;
  v21 = *(a1 + 64);
  v17 = v3;
  v18 = v5;
  v19 = *(a1 + 48);
  v9 = v5;
  v10 = v3;
  v11 = v6;
  v12 = [v9 performReadTransactionWithBlock:v13];
}

void sub_100128C00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(a1 + 80);
    v6 = [v3 error];
    (*(v5 + 16))(v5, 0, v6);
  }

  else
  {
    v7 = [*(a1 + 32) scopeWithIdentifier:*(a1 + 40)];
    if (v7)
    {
      if ([*(a1 + 32) valueForFlag:16 forScope:v7])
      {
        sub_1001B3988();
      }

      else if (([v7 scopeType] & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v8 = [*(a1 + 32) scopeChangeForScope:v7];
        v9 = [v8 share];

        if (v9)
        {
          v10 = [*(a1 + 32) transportScopeForScope:v7];
          if (v10)
          {
            v11 = [*(a1 + 48) engineLibrary];
            v20[0] = _NSConcreteStackBlock;
            v20[1] = 3221225472;
            v20[2] = sub_100128FA0;
            v20[3] = &unk_10027A378;
            v29 = *(a1 + 80);
            v21 = *(a1 + 56);
            v22 = v7;
            v10 = v10;
            v23 = v10;
            v24 = v9;
            v30 = *(a1 + 88);
            v25 = *(a1 + 64);
            v26 = *(a1 + 32);
            v12 = *(a1 + 72);
            v13 = *(a1 + 48);
            v27 = v12;
            v28 = v13;
            [v11 blockEngineWithReason:@"Exiting shared library" onlyIfBlocked:0 block:v20];
          }

          else
          {
            v18 = *(a1 + 80);
            v19 = [CPLErrors invalidScopeErrorWithScopeIdentifier:*(a1 + 40)];
            (*(v18 + 16))(v18, 0, v19);
          }
        }

        else
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v16 = sub_10011B768();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v32 = v7;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Trying to exit %@ but we have no share", buf, 0xCu);
            }
          }

          v17 = *(a1 + 80);
          v10 = [CPLErrors invalidScopeErrorWithScopeIdentifier:*(a1 + 40)];
          (*(v17 + 16))(v17, 0, v10);
        }
      }

      else
      {
        sub_1001B38B8();
      }
    }

    else
    {
      v14 = *(a1 + 80);
      v15 = [CPLErrors cplErrorWithCode:2001 description:@"Unknown scope %@", *(a1 + 40)];
      (*(v14 + 16))(v14, 0, v15);
    }
  }
}

void sub_100128FA0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001291F8;
    v26[3] = &unk_10027A2D8;
    v28 = *(a1 + 96);
    v4 = v3;
    v27 = v4;
    v5 = objc_retainBlock(v26);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 104);
    v11 = *(a1 + 112);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10012923C;
    v19[3] = &unk_10027A350;
    v24 = v5;
    v20 = v7;
    v21 = *(a1 + 64);
    v22 = v4;
    v23 = *(a1 + 72);
    v25 = *(a1 + 104);
    v12 = v5;
    v13 = [v6 startExitTaskFromSharedScope:v7 transportScope:v8 share:v9 retentionPolicy:v10 exitSource:v11 completionHandler:v19];
    v14 = [*(a1 + 32) createGroupForExitSharedLibrary];
    [v13 setTransportGroup:v14];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001297B8;
    v17[3] = &unk_1002720E0;
    v15 = *(a1 + 80);
    v17[4] = *(a1 + 88);
    v18 = v13;
    v16 = v13;
    [v15 performAsCurrentWithPendingUnitCount:1 usingBlock:v17];
  }

  else
  {
    (*(*(a1 + 96) + 16))();
  }
}

id sub_1001291F8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 unblock];
}

void sub_10012923C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    sub_1001B3A58(a1);
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = sub_100004550;
    v25[4] = sub_10000538C;
    v26 = 0;
    v13 = *(a1 + 40);
    v14 = [*(a1 + 48) writeTransactionBlocker];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100129460;
    v19[3] = &unk_10027A300;
    v23 = v25;
    v20 = *(a1 + 56);
    v21 = *(a1 + 32);
    v22 = v11;
    v24 = *(a1 + 72);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100129708;
    v16[3] = &unk_10027A328;
    v17 = *(a1 + 64);
    v18 = v25;
    v15 = [v13 performWriteTransactionByPassBlocker:v14 withBlock:v19 completionHandler:v16];

    _Block_object_dispose(v25, 8);
  }
}

void sub_100129448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100129460(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 scopeChangeForScope:v4];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(*(a1 + 56) + 8) + 40);
  if (v9)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10011B768();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        *buf = 138412546;
        v23 = v11;
        v24 = 2114;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "After requesting exit from %@, exiting user identifiers are: %{public}@", buf, 0x16u);
      }

      v9 = *(*(*(a1 + 56) + 8) + 40);
    }

    [v9 addExitingUserIdentifiers:*(a1 + 48)];
    [*(*(*(a1 + 56) + 8) + 40) setExitRetentionPolicy:*(a1 + 64)];
    [*(*(*(a1 + 56) + 8) + 40) setExitSource:*(a1 + 72)];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001296A8;
    v18[3] = &unk_1002735D8;
    v13 = *(a1 + 32);
    v14 = *(a1 + 56);
    v19 = v13;
    v21 = v14;
    v20 = *(a1 + 40);
    [v5 do:v18];

    v15 = v19;
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = sub_10011B768();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 40);
        *buf = 138412290;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ has disappeared while starting exit", buf, 0xCu);
      }
    }

    v15 = +[CPLErrors unknownError];
    [v5 setError:v15];
  }
}

id sub_1001296A8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) storeScopeChange:*(*(*(a1 + 48) + 8) + 40) forScope:*(a1 + 40) error:a2];
  if (v4)
  {
    [*(a1 + 32) setScopeNeedsUpdateFromTransport:*(a1 + 40) error:a2];
  }

  return v4;
}

void sub_100129708(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v6 error];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    (*(v4 + 16))(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40), 0);
  }
}

id sub_1001297B8(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 syncManager];
  [v3 configureDirectTransportTask:*(a1 + 40)];

  v4 = *(a1 + 40);

  return [v4 runWithNoSyncSession];
}

void sub_100129AA8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = +[CPLErrors readOnlyError];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void sub_100129B24(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 transport];

  v4 = [*(a1 + 32) engineLibrary];
  v5 = [v4 store];

  v6 = [v5 scopes];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100129C9C;
  v13[3] = &unk_10027A468;
  v21 = *(a1 + 64);
  v14 = v6;
  v15 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v16 = v7;
  v17 = v8;
  v22 = *(a1 + 72);
  v18 = v3;
  v19 = v5;
  v20 = *(a1 + 56);
  v9 = v5;
  v10 = v3;
  v11 = v6;
  v12 = [v9 performReadTransactionWithBlock:v13];
}

void sub_100129C9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(a1 + 88);
    v6 = [v3 error];
    (*(v5 + 16))(v5, 0, v6);
    goto LABEL_105;
  }

  v6 = [*(a1 + 32) scopeWithIdentifier:*(a1 + 40)];
  if (!v6)
  {
    v49 = *(a1 + 88);
    v50 = [CPLErrors cplErrorWithCode:2001 description:@"Unknown scope %@", *(a1 + 40)];
    (*(v49 + 16))(v49, 0, v50);

    goto LABEL_105;
  }

  if ([*(a1 + 32) valueForFlag:16 forScope:v6])
  {
    sub_1001B3F00();
    goto LABEL_105;
  }

  if (([v6 scopeType] & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    sub_1001B3B00();
    goto LABEL_105;
  }

  v7 = [*(a1 + 32) scopeChangeForScope:v6];
  v8 = [v7 share];
  v9 = v8;
  if (!v8)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v51 = sub_10011B768();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Trying to remove participants from %@ but we have no share", buf, 0xCu);
      }
    }

    v52 = *(a1 + 88);
    v11 = [CPLErrors invalidScopeErrorWithScopeIdentifier:*(a1 + 40)];
    (*(v52 + 16))(v52, 0, v11);
    goto LABEL_104;
  }

  if (([v8 ownerIsCurrentUser] & 1) == 0)
  {
    sub_1001B3BD0();
    v11 = *buf;
    goto LABEL_104;
  }

  v10 = [*(a1 + 32) transportScopeForScope:v6];
  v11 = v10;
  if (!v10)
  {
    v53 = *(a1 + 88);
    v54 = [CPLErrors invalidScopeErrorWithScopeIdentifier:*(a1 + 40)];
    (*(v53 + 16))(v53, 0, v54);

    goto LABEL_104;
  }

  v68 = v10;
  v69 = v3;
  v72 = v9;
  v12 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
  v78 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
  v73 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
  v74 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
  v70 = v7;
  v75 = [v7 exitingUserIdentifiers];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v71 = a1;
  v13 = *(a1 + 48);
  v14 = [v13 countByEnumeratingWithState:&v99 objects:v107 count:16];
  v79 = v12;
  if (v14)
  {
    v15 = v14;
    v16 = *v100;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v100 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v99 + 1) + 8 * i);
        if (([v18 acceptanceStatus] & 0xFFFFFFFFFFFFFFFDLL) == 0)
        {
          v21 = [v18 userIdentifier];
          if (v21)
          {
            v19 = v21;
            v20 = v78;
            goto LABEL_19;
          }
        }

        v19 = [v18 participantID];
        if (v19)
        {
          v20 = v12;
LABEL_19:
          [v20 addObject:v19];
          goto LABEL_24;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v22 = sub_10011B768();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = v18;
            v105 = 2112;
            v106 = v6;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Trying to remove %@ from %@ but there is no user identifier or participant ID attached to this participant", buf, 0x16u);
          }

          v12 = v79;
        }

LABEL_24:
      }

      v15 = [v13 countByEnumeratingWithState:&v99 objects:v107 count:16];
    }

    while (v15);
  }

  v23 = objc_alloc_init(NSMutableArray);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v24 = [v9 participants];
  v25 = [v24 countByEnumeratingWithState:&v95 objects:v103 count:16];
  v76 = v23;
  if (!v25)
  {
    goto LABEL_68;
  }

  v26 = v25;
  v77 = *v96;
  do
  {
    v27 = 0;
    do
    {
      if (*v96 != v77)
      {
        objc_enumerationMutation(v24);
      }

      v28 = *(*(&v95 + 1) + 8 * v27);
      v29 = [v28 userIdentifier];
      v30 = [v28 participantID];
      if (!v29 || ![v78 containsObject:v29])
      {
        if (!v30 || ![v12 containsObject:v30])
        {
          goto LABEL_63;
        }

        [v12 removeObject:v30];
        v33 = v29;
        v29 = 0;
LABEL_43:

        goto LABEL_44;
      }

      [v78 removeObject:v29];
      if (v30)
      {
        [v12 removeObject:v30];
      }

      if ([v75 containsObject:v29])
      {
        v31 = +[NSUserDefaults standardUserDefaults];
        v32 = [v31 BOOLForKey:@"CPLSharedLibraryAllowMultipleRemoveParticipantCalls"];

        if ((v32 & 1) == 0)
        {
          if (_CPLSilentLogging)
          {
            v12 = v79;
          }

          else
          {
            v36 = sub_10011B768();
            v12 = v79;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *&buf[4] = v29;
              v105 = 2112;
              v106 = v6;
              v37 = v36;
              v38 = OS_LOG_TYPE_DEFAULT;
              v39 = "Ignoring %{public}@ who is already exiting %@";
LABEL_60:
              _os_log_impl(&_mh_execute_header, v37, v38, v39, buf, 0x16u);
            }

LABEL_61:
          }

          v23 = v76;
          goto LABEL_63;
        }

        if ((_CPLSilentLogging & 1) == 0)
        {
          v33 = sub_10011B768();
          v12 = v79;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v29;
            v105 = 2112;
            v106 = v6;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ is already exiting %@ but will retry the exit request", buf, 0x16u);
          }

          goto LABEL_43;
        }

        v12 = v79;
LABEL_44:
        v23 = v76;
      }

      if ([v28 isCurrentUser])
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v55 = sub_10011B768();
          v11 = v68;
          v3 = v69;
          v9 = v72;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v6;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Can't remove current user from %@", buf, 0xCu);
          }

          v56 = @"Permission denied: can't remove current user";
          goto LABEL_88;
        }

        v56 = @"Permission denied: can't remove current user";
LABEL_110:
        v11 = v68;
        v3 = v69;
        v9 = v72;
        goto LABEL_89;
      }

      if ([v28 role] == 1)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v55 = sub_10011B768();
          v11 = v68;
          v3 = v69;
          v9 = v72;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v6;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "Can't remove owner from %@", buf, 0xCu);
          }

          v56 = @"Permission denied: can't remove owner";
LABEL_88:

LABEL_89:
          v57 = *(v71 + 88);
          v58 = [CPLErrors cplErrorWithCode:52 description:v56];
          (*(v57 + 16))(v57, 0, v58);

          v59 = v73;
          v60 = v74;
          v61 = v76;
          v7 = v70;
          goto LABEL_103;
        }

        v56 = @"Permission denied: can't remove owner";
        goto LABEL_110;
      }

      if (v29 && [v28 acceptanceStatus] == 2)
      {
        v34 = v74;
        v35 = v29;
LABEL_53:
        [v34 addObject:v35];
        goto LABEL_63;
      }

      if (v30)
      {
        [v73 addObject:v30];
        if ([v28 acceptanceStatus] == 2)
        {
          goto LABEL_63;
        }

        v34 = v23;
        v35 = v30;
        goto LABEL_53;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v36 = sub_10011B768();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v28;
          v105 = 2112;
          v106 = v6;
          v37 = v36;
          v38 = OS_LOG_TYPE_ERROR;
          v39 = "Trying to remove pending %@ from %@ but it has no participant ID set yet";
          goto LABEL_60;
        }

        goto LABEL_61;
      }

LABEL_63:

      v27 = v27 + 1;
    }

    while (v26 != v27);
    v40 = [v24 countByEnumeratingWithState:&v95 objects:v103 count:16];
    v26 = v40;
  }

  while (v40);
LABEL_68:

  v41 = [v78 count];
  v42 = [v12 count];
  if (v41)
  {
    v3 = v69;
    v7 = v70;
    v11 = v68;
    v43 = v71;
    if (v42)
    {
      v9 = v72;
      if ((_CPLSilentLogging & 1) == 0)
      {
        v44 = sub_10011B768();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v78 allObjects];
          v46 = [v45 componentsJoinedByString:{@", "}];
          v47 = [v12 allObjects];
          v48 = [v47 componentsJoinedByString:{@", "}];
          *buf = 138543618;
          *&buf[4] = v46;
          v105 = 2114;
          v106 = v48;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Some participants have already been removed or have never been part of the share: %{public}@ / %{public}@", buf, 0x16u);

          v12 = v79;
          v43 = v71;
        }

        goto LABEL_99;
      }
    }

    else
    {
      v62 = +[NSUserDefaults standardUserDefaults];
      v63 = [v62 BOOLForKey:@"CPLSharedLibraryAllowMultipleRemoveParticipantCalls"];

      if (v63)
      {
        sub_1001B3CAC();
        v9 = v72;
      }

      else
      {
        v9 = v72;
        if ((_CPLSilentLogging & 1) == 0)
        {
          v44 = sub_10011B768();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v64 = [v78 allObjects];
            v65 = [v64 componentsJoinedByString:{@", "}];
            *buf = 138543362;
            *&buf[4] = v65;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Some participants have already been removed or have never been part of the share: %{public}@", buf, 0xCu);
          }

LABEL_99:
        }
      }
    }
  }

  else
  {
    v3 = v69;
    v7 = v70;
    v9 = v72;
    v11 = v68;
    v43 = v71;
    if (v42)
    {
      sub_1001B3DA0(v12);
    }
  }

  v60 = v74;
  if ([v74 count] || objc_msgSend(v73, "count"))
  {
    v80 = [*(v43 + 56) engineLibrary];
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_10012A9AC;
    v81[3] = &unk_10027A440;
    v93 = *(v43 + 88);
    v82 = *(v43 + 64);
    v83 = v6;
    v84 = v11;
    v85 = v9;
    v94 = *(v43 + 96);
    v86 = v74;
    v59 = v73;
    v87 = v73;
    v88 = *(v43 + 72);
    v89 = *(v43 + 32);
    v61 = v76;
    v90 = v76;
    v66 = *(v43 + 80);
    v67 = *(v43 + 56);
    v91 = v66;
    v92 = v67;
    [v80 blockEngineWithReason:@"Removing shared library participant" onlyIfBlocked:0 block:v81];
  }

  else
  {
    sub_1001B3E74(v43, v7);
    v59 = v73;
    v61 = v76;
  }

LABEL_103:

LABEL_104:
LABEL_105:
}

void sub_10012A9AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10012AC44;
    v30[3] = &unk_10027A2D8;
    v32 = *(a1 + 120);
    v4 = v3;
    v31 = v4;
    v5 = objc_retainBlock(v30);
    v17 = *(a1 + 40);
    v18 = *(a1 + 32);
    v6 = *(a1 + 56);
    v16 = *(a1 + 48);
    v7 = *(a1 + 128);
    v8 = *(a1 + 136);
    v10 = *(a1 + 64);
    v9 = *(a1 + 72);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10012AC88;
    v21[3] = &unk_10027A418;
    v29 = v5;
    v22 = v10;
    v23 = *(a1 + 72);
    v24 = *(a1 + 40);
    v25 = *(a1 + 80);
    v26 = v4;
    v27 = *(a1 + 88);
    v28 = *(a1 + 96);
    v11 = v5;
    v12 = [v18 removeParticipantInSharedLibraryTaskFromSharedScope:v17 transportScope:v16 share:v6 retentionPolicy:v7 exitSource:v8 userIdentifiersToRemove:v10 participantIDsToRemove:v9 completionHandler:v21];
    v13 = [*(a1 + 32) createGroupForExitSharedLibrary];
    [v12 setTransportGroup:v13];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10012B1A0;
    v19[3] = &unk_1002720E0;
    v14 = *(a1 + 104);
    v19[4] = *(a1 + 112);
    v20 = v12;
    v15 = v12;
    [v14 performAsCurrentWithPendingUnitCount:1 usingBlock:v19];
  }

  else
  {
    (*(*(a1 + 120) + 16))();
  }
}

id sub_10012AC44(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 unblock];
}

void sub_10012AC88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 88) + 16))();
  }

  else
  {
    sub_1001B3FD0(a1, v5);
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = sub_100004550;
    v19[4] = sub_10000538C;
    v20 = 0;
    v7 = *(a1 + 56);
    v8 = [*(a1 + 64) writeTransactionBlocker];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10012AE94;
    v13[3] = &unk_10027A3F0;
    v18 = v19;
    v14 = *(a1 + 72);
    v15 = *(a1 + 48);
    v16 = v5;
    v17 = *(a1 + 80);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10012B0F0;
    v10[3] = &unk_10027A328;
    v11 = *(a1 + 88);
    v12 = v19;
    v9 = [v7 performWriteTransactionByPassBlocker:v8 withBlock:v13 completionHandler:v10];

    _Block_object_dispose(v19, 8);
  }
}

void sub_10012AE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10012AE94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) scopeChangeForScope:*(a1 + 40)];
  v5 = *(*(a1 + 64) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 64) + 8) + 40);
  if (v7)
  {
    [v7 addExitingUserIdentifiers:*(a1 + 48)];
    [*(*(*(a1 + 64) + 8) + 40) removePendingParticipantIDs:*(a1 + 56)];
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10011B768();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v10 = [*(*(*(a1 + 64) + 8) + 40) exitingUserIdentifiers];
        v11 = [v10 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        *&buf[4] = v9;
        v20 = 2114;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "After removing participants from %@, exiting user identifiers are: %{public}@", buf, 0x16u);
      }
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10012B090;
    v15[3] = &unk_1002735D8;
    v12 = *(a1 + 32);
    v13 = *(a1 + 64);
    v16 = v12;
    v18 = v13;
    v17 = *(a1 + 40);
    [v3 do:v15];

    v14 = v16;
  }

  else
  {
    sub_1001B40F0((a1 + 40), v3, buf);
    v14 = *buf;
  }
}

id sub_10012B090(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) storeScopeChange:*(*(*(a1 + 48) + 8) + 40) forScope:*(a1 + 40) error:a2];
  if (v4)
  {
    [*(a1 + 32) setScopeNeedsUpdateFromTransport:*(a1 + 40) error:a2];
  }

  return v4;
}

void sub_10012B0F0(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 error];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v6 error];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    (*(v4 + 16))(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40), 0);
  }
}

id sub_10012B1A0(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 syncManager];
  [v3 configureDirectTransportTask:*(a1 + 40)];

  v4 = *(a1 + 40);

  return [v4 runWithNoSyncSession];
}

void sub_10012B3F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CPLErrors incorrectParametersErrorForParameter:@"maximumCount"];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10012B460(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(a1 + 56);
    v6 = [v3 error];
    (*(v5 + 16))(v5, 0, v6);
  }

  else
  {
    v7 = [*(a1 + 32) scopes];
    v8 = [v7 scopeWithIdentifier:*(a1 + 40)];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 scopeForSharingScope:v8];
      v11 = v10;
      if (v10)
      {
        v56 = v9;
        v57 = v7;
        v58 = v3;
        v60 = v10;
        v12 = [v10 scopeIdentifier];
        v13 = [*(a1 + 32) pushRepository];
        v55 = a1;
        v59 = [[NSMutableSet alloc] initWithCapacity:*(a1 + 64)];
        [v13 storedExtractedBatch];
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v54 = v71 = 0u;
        v14 = [v54 batch];
        v15 = [v14 countByEnumeratingWithState:&v68 objects:v84 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v69;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v69 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v68 + 1) + 8 * i);
              v20 = [v19 scopedIdentifier];
              v21 = [v20 scopeIdentifier];
              v22 = [v21 isEqualToString:v12];

              if (v22)
              {
                v23 = [v19 _pushContext];
                v24 = [v23 flags];

                if (v24)
                {
                  v25 = [v60 localIndex];
                  v26 = [v19 scopedIdentifier];
                  [v26 setScopeIndex:v25];

                  v27 = [v19 scopedIdentifier];
                  v28 = [v13 changeWithScopedIdentifier:v27];

                  if (v28)
                  {
                    v29 = [v28 _pushContext];
                    v30 = [v29 flags];

                    if ((v30 & 2) == 0)
                    {
                      v31 = [v19 scopedIdentifier];
                      [v59 addObject:v31];
                    }
                  }
                }
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v68 objects:v84 count:16];
          }

          while (v16);
        }

        v7 = v57;
        v3 = v58;
        if ([v59 count] < *(v55 + 64))
        {
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v32 = [v13 scopedIdentifiersForChangesWithFlag:1 forScopeWithIdentifier:v12];
          v33 = [v32 countByEnumeratingWithState:&v64 objects:v83 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v65;
LABEL_21:
            v36 = 0;
            while (1)
            {
              if (*v65 != v35)
              {
                objc_enumerationMutation(v32);
              }

              [v59 addObject:*(*(&v64 + 1) + 8 * v36)];
              if ([v59 count] >= *(v55 + 64))
              {
                break;
              }

              if (v34 == ++v36)
              {
                v34 = [v32 countByEnumeratingWithState:&v64 objects:v83 count:16];
                if (v34)
                {
                  goto LABEL_21;
                }

                break;
              }
            }
          }
        }

        v37 = [*(v55 + 32) statusCenter];
        v38 = [v59 allObjects];
        v39 = [v37 statusesForRecordsWithScopedIdentifiers:v38];

        v40 = *(*(v55 + 48) + 104);
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_10012BC28;
        v61[3] = &unk_100272350;
        v41 = *(v55 + 56);
        v62 = v39;
        v63 = v41;
        v42 = v61;
        block = _NSConcreteStackBlock;
        v79 = 3221225472;
        v80 = sub_100002BB8;
        v81 = &unk_100271E98;
        v82 = v42;
        v43 = v40;
        v44 = v39;
        v45 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
        dispatch_async(v43, v45);

        v9 = v56;
        v11 = v60;
      }

      else
      {
        v50 = *(*(a1 + 48) + 104);
        v72[0] = _NSConcreteStackBlock;
        v72[1] = 3221225472;
        v72[2] = sub_10012BBBC;
        v72[3] = &unk_100272350;
        v74 = *(a1 + 56);
        v73 = *(a1 + 40);
        v51 = v72;
        block = _NSConcreteStackBlock;
        v79 = 3221225472;
        v80 = sub_100002BB8;
        v81 = &unk_100271E98;
        v82 = v51;
        v52 = v50;
        v53 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
        dispatch_async(v52, v53);

        v12 = v74;
      }
    }

    else
    {
      v46 = *(*(a1 + 48) + 104);
      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_10012BB50;
      v75[3] = &unk_100272350;
      v77 = *(a1 + 56);
      v76 = *(a1 + 40);
      v47 = v75;
      block = _NSConcreteStackBlock;
      v79 = 3221225472;
      v80 = sub_100002BB8;
      v81 = &unk_100271E98;
      v82 = v47;
      v48 = v46;
      v49 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
      dispatch_async(v48, v49);
    }
  }
}

void sub_10012BB50(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [CPLErrors invalidScopeErrorWithScopeIdentifier:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10012BBBC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [CPLErrors invalidScopeErrorWithScopeIdentifier:*(a1 + 32)];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10012BC28(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) allValues];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_10012BE38(id *a1)
{
  v2 = [a1[4] engineLibrary];
  v3 = [v2 transport];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10012BF80;
  v9[3] = &unk_10027A508;
  v9[4] = a1[4];
  v11 = a1[6];
  v10 = a1[5];
  v4 = [v3 sharedLibraryServerRampTaskWithCompletionHandler:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012C138;
  v7[3] = &unk_1002720E0;
  v5 = a1[5];
  v7[4] = a1[4];
  v8 = v4;
  v6 = v4;
  [v5 performAsCurrentWithPendingUnitCount:1 usingBlock:v7];
}

void sub_10012BF80(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 104);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10012C0DC;
  v12[3] = &unk_10027A4E0;
  v7 = *(a1 + 48);
  v16 = a2;
  v15 = v7;
  v13 = v5;
  v14 = *(a1 + 40);
  v8 = v12;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v18 = v8;
  v9 = v6;
  v10 = v5;
  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v11);
}

id sub_10012C0DC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 56), *(a1 + 32));
  }

  v3 = [*(a1 + 40) totalUnitCount];
  v4 = *(a1 + 40);

  return [v4 setCompletedUnitCount:v3];
}

id sub_10012C138(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 syncManager];
  [v3 configureDirectTransportTask:*(a1 + 40)];

  v4 = *(a1 + 40);

  return [v4 runWithNoSyncSession];
}

void sub_10012C370(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 transport];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10012C4C0;
  v10[3] = &unk_10027A530;
  v4 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v12 = *(a1 + 56);
  v11 = *(a1 + 48);
  v5 = [v3 queryUserDetailsTaskForParticipants:v4 completionHandler:v10];
  v6 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012C68C;
  v8[3] = &unk_1002720E0;
  v8[4] = *(a1 + 32);
  v9 = v5;
  v7 = v5;
  [v6 performAsCurrentWithPendingUnitCount:1 usingBlock:v8];
}

void sub_10012C4C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 104);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10012C634;
  v13[3] = &unk_10027A120;
  v17 = *(a1 + 48);
  v14 = v5;
  v15 = v6;
  v16 = *(a1 + 40);
  v8 = v13;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v19 = v8;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v9, v12);
}

id sub_10012C634(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  v3 = [*(a1 + 48) totalUnitCount];
  v4 = *(a1 + 48);

  return [v4 setCompletedUnitCount:v3];
}

id sub_10012C68C(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 syncManager];
  [v3 configureDirectTransportTask:*(a1 + 40)];

  v4 = *(a1 + 40);

  return [v4 runWithNoSyncSession];
}

void sub_10012C860(uint64_t a1)
{
  v6 = [[CPLForceSyncTask alloc] initWithScopeIdentifiers:*(a1 + 32)];
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];
  [v6 setTaskIdentifier:v3];

  (*(*(a1 + 56) + 16))();
  v4 = [*(a1 + 40) abstractObject];
  v5 = [v4 forceSyncDelegate];
  [v5 libraryManager:v4 didFinishForceSyncTask:v6 withErrors:*(a1 + 48)];
}

void sub_10012CA44(uint64_t a1, unint64_t a2)
{
  v3 = a2 < 5;
  v4 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10012CB3C;
  v11[3] = &unk_10027A580;
  v10 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = *(a1 + 32);
  *(&v7 + 1) = v6;
  *&v8 = v10;
  *(&v8 + 1) = v5;
  v12 = v8;
  v13 = v7;
  v14 = v3;
  v9 = [v4 performReadTransactionWithBlock:v11];
}

void sub_10012CB3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [v3 error];
    v8 = [CPLErrors errorsForIdentifiers:v6 error:v7];
    [v5 _dispatchForceSyncForScopeIdentifiers:v6 errors:v8 completionHandler:*(a1 + 56)];

    goto LABEL_47;
  }

  v45 = v3;
  v9 = [*(a1 + 48) scopes];
  v48 = [*(a1 + 32) _isManagementLibraryManager];
  v10 = objc_alloc_init(NSMutableDictionary);
  v46 = a1;
  v47 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = *(a1 + 40);
  v11 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  v49 = v10;
  if (!v11)
  {
    goto LABEL_37;
  }

  v12 = v11;
  v13 = *v58;
  do
  {
    v14 = 0;
    do
    {
      if (*v58 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v57 + 1) + 8 * v14);
      v16 = [v9 scopeWithIdentifier:v15];
      if (!v16)
      {
        v21 = [CPLErrors cplErrorWithCode:2001 description:@"Scope %@ is unknown", v15];
        goto LABEL_31;
      }

      v17 = [v9 flagsForScope:v16];
      v18 = [v17 flags];

      if ((v18 & 8) != 0)
      {
        v19 = [CPLErrors cplErrorWithCode:33 description:@"Scope %@ is disabled", v15];
        if (v19)
        {
LABEL_26:
          v21 = v19;
LABEL_27:
          if ((_CPLSilentLogging & 1) == 0)
          {
            v25 = sub_10011B768();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = [v21 localizedDescription];
              *buf = 138543618;
              *&buf[4] = v15;
              *&buf[12] = 2112;
              *&buf[14] = v26;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Won't do a forced sync for %{public}@ because %@", buf, 0x16u);

              v10 = v49;
            }
          }

LABEL_31:
          [v10 setObject:v21 forKeyedSubscript:v15];

          goto LABEL_32;
        }
      }

      if ((v18 & 0x10) != 0)
      {
        v20 = [CPLErrors cplErrorWithCode:2001 description:@"Scope %@ is inactive", v15];
        if (v20)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v20 = 0;
      }

      if ((v18 & 0x24) != 0)
      {
        v22 = [CPLErrors cplErrorWithCode:23 description:@"Scope %@ has been deleted", v15];
        [v10 setObject:v22 forKeyedSubscript:v15];
      }

LABEL_17:
      if ((v20 | v18) | v48 & 1)
      {
        v21 = v20;
        if (v20)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = +[NSUserDefaults standardUserDefaults];
        v24 = [v23 BOOLForKey:@"CPLAllowForceSyncOnAllScopes"];

        v21 = 0;
        if (v24)
        {
          v10 = v49;
        }

        else
        {
          v10 = v49;
          if ((v18 & 0x20000) == 0)
          {
            v21 = [CPLErrors cplErrorWithCode:10 description:@"Scope %@ is not read-only", v15];
          }

          if (v21)
          {
            goto LABEL_27;
          }
        }
      }

      if ((v18 & 0x40000) != 0)
      {
        v19 = [CPLErrors cplErrorWithCode:1002 description:@"Feature for scope %@ is disabled", v15];
        if (v19)
        {
          goto LABEL_26;
        }
      }

      sub_1001B41C4(v61, v15, &v62, v47);
LABEL_32:

      v14 = v14 + 1;
    }

    while (v12 != v14);
    v27 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    v12 = v27;
  }

  while (v27);
LABEL_37:

  v28 = v47;
  v29 = [v47 count];
  v30 = *(v46 + 32);
  if (v29)
  {
    v31 = [v30[12] syncManager];
    v32 = [v9 filterForIncludedScopeIdentifiers:v47];
    if ((v48 & 1) != 0 || (*(v46 + 64) & 1) != 0 || [v9 doScopesNeedMetadataSync:v32])
    {
      v33 = [[CPLEngineForceSyncTask alloc] initWithScopeIdentifiers:*(v46 + 40) engineLibrary:*(*(v46 + 32) + 96) filter:v32 delegate:v31];
      v34 = v33;
      if (v48)
      {
        [v33 setBypassForceSyncLimitations:1];
      }

      v35 = +[NSUUID UUID];
      v36 = [v35 UUIDString];
      [v34 setTaskIdentifier:v36];

      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_10012D2BC;
      v54[3] = &unk_10027A558;
      v54[4] = *(v46 + 32);
      v55 = v47;
      v56 = v49;
      [v34 setTaskDidFinishWithErrorBlock:v54];
      v37 = *(*(v46 + 32) + 104);
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_10012D540;
      v51[3] = &unk_100272350;
      v38 = *(v46 + 56);
      v52 = v34;
      v53 = v38;
      v39 = v51;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100002BB8;
      v65 = &unk_100271E98;
      v66 = v39;
      v40 = v37;
      v41 = v34;
      v42 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
      dispatch_async(v40, v42);

      v10 = v49;
      v28 = v47;
      [v41 launchTask];
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v43 = sub_10011B768();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [v47 componentsJoinedByString:{@", "}];
          *buf = 138412290;
          *&buf[4] = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Nothing is planned for %@ so we won't dispatch a forced sync", buf, 0xCu);

          v10 = v49;
        }
      }

      [*(v46 + 32) _dispatchForceSyncForScopeIdentifiers:*(v46 + 40) errors:v10 completionHandler:*(v46 + 56)];
    }
  }

  else
  {
    [v30 _dispatchForceSyncForScopeIdentifiers:*(v46 + 40) errors:v10 completionHandler:*(v46 + 56)];
  }

  v3 = v45;

LABEL_47:
}

void sub_10012D2BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 104);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012D42C;
  v15[3] = &unk_100272218;
  v15[4] = v8;
  v16 = v6;
  v17 = v7;
  v18 = *(a1 + 48);
  v19 = v5;
  v10 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v21 = v10;
  v11 = v9;
  v12 = v5;
  v13 = v6;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void sub_10012D42C(uint64_t a1)
{
  v8 = [*(a1 + 32) abstractObject];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = v2;
    if ([v3 isCPLOperationCancelledError])
    {
      v4 = [CPLErrors cplErrorWithCode:10 description:@"Scope will be synchronized in background"];

      v3 = v4;
    }

    v5 = [CPLErrors errorsForIdentifiers:*(a1 + 48) error:v3];
    if ([*(a1 + 56) count])
    {
      [*(a1 + 56) addEntriesFromDictionary:v5];
      v6 = *(a1 + 56);

      v5 = v6;
    }
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v7 = [v8 forceSyncDelegate];
  [v7 libraryManager:v8 didFinishForceSyncTask:*(a1 + 64) withErrors:v5];
}

void sub_10012D834(uint64_t a1)
{
  v2 = [*(a1 + 32) store];
  v5 = [v2 downloadQueue];

  v3 = [v5 hasActiveOrQueuedBackgroundDownloadOperations];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3, 0);
  }
}

void sub_10012D9B8(uint64_t a1)
{
  v2 = [*(a1 + 32) statusCenter];
  v3 = [v2 statusesForRecordsWithScopedIdentifiers:*(a1 + 40)];

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = *(*(a1 + 48) + 104);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012DB0C;
    v9[3] = &unk_100272350;
    v11 = v4;
    v10 = v3;
    v6 = v9;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002BB8;
    block[3] = &unk_100271E98;
    v13 = v6;
    v7 = v5;
    v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v7, v8);
  }
}

void sub_10012DC00(uint64_t a1)
{
  v2 = [*(a1 + 32) statusCenter];
  v3 = [v2 statusChanges];

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(*(a1 + 40) + 104);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012DD50;
    v9[3] = &unk_100272350;
    v11 = v4;
    v10 = v3;
    v6 = v9;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002BB8;
    block[3] = &unk_100271E98;
    v13 = v6;
    v7 = v5;
    v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v7, v8);
  }
}

void sub_10012DE9C(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10012DF40;
  v4[3] = &unk_100279838;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 do:v4];
}

id sub_10012DF40(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) statusCenter];
  v5 = [v4 acknowledgeChangedStatuses:*(a1 + 40) error:a2];

  return v5;
}

void sub_10012E0D0(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10012E17C;
  v4[3] = &unk_10027A5F8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [a2 do:v4];
}

uint64_t sub_10012E17C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) statusCenter];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v4 recordViewForStatusWithScopedIdentifier:{*(*(&v14 + 1) + 8 * v9), v14}];
        v11 = [v4 notifyStatusForRecordViewHasChanged:v10 persist:*(a1 + 48) error:a2];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_11;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

void sub_10012E3D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 104);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10012E7A4;
    v29[3] = &unk_100272350;
    v31 = *(a1 + 56);
    v30 = v3;
    v6 = v29;
    block = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_100002BB8;
    v35 = &unk_100271E98;
    v36 = v6;
    v7 = v5;
    v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v7, v8);
  }

  else
  {
    v9 = [*(a1 + 40) scopes];
    v10 = [v9 scopeWithIdentifier:*(a1 + 48)];
    if (v10)
    {
      if ([v9 valueForFlag:16 forScope:v10])
      {
        v11 = [v9 scopeForSharingScope:v10];
        v12 = v11;
        v14 = *(a1 + 48);
        v13 = *(a1 + 56);
        if (v11)
        {
          v15 = [v11 scopeIdentifier];
          v16 = [CPLErrors cplErrorWithCode:2001 description:@"%@ is a shared scope and counts should be asked through %@", v14, v15];
          (*(v13 + 16))(v13, 0, v16);
        }

        else
        {
          v15 = [CPLErrors cplErrorWithCode:2001 description:@"%@ is not active", *(a1 + 48)];
          (*(v13 + 16))(v13, 0, v15);
        }
      }

      else
      {
        v12 = [*(a1 + 40) pushRepository];
        v18 = [v12 countPerFlagsForScopeWithIdentifier:*(a1 + 48)];
        v19 = [[CPLScopeStatusCounts alloc] initWithFlagsCounts:v18];
        v20 = *(*(a1 + 32) + 104);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10012E804;
        v26[3] = &unk_100272350;
        v21 = *(a1 + 56);
        v27 = v19;
        v28 = v21;
        v22 = v26;
        block = _NSConcreteStackBlock;
        v33 = 3221225472;
        v34 = sub_100002BB8;
        v35 = &unk_100271E98;
        v36 = v22;
        v23 = v20;
        v24 = v19;
        v25 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
        dispatch_async(v23, v25);
      }
    }

    else
    {
      v17 = *(a1 + 56);
      v12 = [CPLErrors cplErrorWithCode:2001 description:@"%@ is unknown", *(a1 + 48)];
      (*(v17 + 16))(v17, 0, v12);
    }
  }
}

void sub_10012E7A4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_10012ED24(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
  }
}

void sub_10012EF00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v10 = a3;
  v7 = *(a1 + 48);
  if (a4)
  {
    (*(v7 + 16))(*(a1 + 48), 0, 0, a4);
  }

  else
  {
    v8 = [*(a1 + 32) _localResourceFromCloudResources:a2 usingMapping:*(a1 + 40)];
    v9 = [*(a1 + 32) _localResourceFromCloudResourcesAndErrors:v10 usingMapping:*(a1 + 40)];
    (*(v7 + 16))(v7, v8, v9, 0);
  }
}

void sub_10012FEE4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = a4;
  v10 = a2;
  [v7 notePruningRequestForResource:v10 realPrune:v8 successful:0];
  v11 = [CPLErrors cplErrorWithCode:a3 description:@"Resource unsafe to prune: %@", v9];

  [*(a1 + 40) setObject:v11 forKeyedSubscript:v10];
}

void sub_10013071C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose((v51 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10013078C(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  v5 = +[CPLErrors unknownError];
  v4 = [CPLErrors unsafeResources:v3 withError:v5 realPrune:0 resourceStorage:a1[5]];
  (*(v2 + 16))(v2, &__NSArray0__struct, v4);
}

void sub_100130830(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = a4;
  v10 = a2;
  [v7 notePruningRequestForResource:v10 realPrune:v8 successful:0];
  v11 = [CPLErrors cplErrorWithCode:a3 description:@"Resource unsafe to prune: %@", v9];

  [*(*(*(a1 + 40) + 8) + 40) setObject:v11 forKeyedSubscript:v10];
}

void sub_1001308F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identity];
  v5 = [v4 fileURL];

  if (v5)
  {
    if (*(a1 + 72) == 1)
    {
      [*(a1 + 32) notePruningRequestForResource:v3 realPrune:*(a1 + 73) successful:1];
      [*(*(*(a1 + 56) + 8) + 40) addObject:v3];
    }

    else
    {
      v6 = *(a1 + 40);
      v9 = 0;
      v7 = [v6 removeItemAtURL:v5 error:&v9];
      v8 = v9;
      if (v7)
      {
        sub_1001B43B8(v3, v5);
      }

      else if ([*(a1 + 40) cplIsFileDoesNotExistError:v8])
      {
        sub_1001B42E0(v3, v5);
      }

      else
      {
        [*(a1 + 32) notePruningRequestForResource:v3 realPrune:*(a1 + 73) successful:0];
        [*(*(*(a1 + 64) + 8) + 40) setObject:v8 forKeyedSubscript:v3];
      }
    }
  }

  else
  {
    sub_1001B448C(a1, v3);
  }
}

void sub_100130A34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 120))
  {
    v4 = 1;
  }

  else
  {
    if (qword_1002D2800 != -1)
    {
      sub_1001B45A4();
    }

    v4 = byte_1002D2808;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 88);
  v7 = *(*(a1 + 80) + 8);
  v8 = *(a1 + 121);
  obj = *(v7 + 40);
  v9 = [v5 safeResourcesToDeleteFromProposedResources:*(a1 + 40) realPrune:v8 checkServerIfNecessary:v4 & 1 allowUnconfirmed:0 resourcesToCheckOnServer:&obj targetScopeMapping:*(a1 + 48) unsafeResources:*(*(v6 + 8) + 40)];
  objc_storeStrong((v7 + 40), obj);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        (*(*(a1 + 72) + 16))();
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v12);
  }

  if ([*(*(*(a1 + 80) + 8) + 40) count])
  {
    if ((v4 & 1) == 0)
    {
      sub_1001B45B8(a1, (a1 + 32));
    }

    v16 = [*(a1 + 56) clientCacheIdentifier];
    v17 = *(*(a1 + 96) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = [*(a1 + 32) _cloudResourcesToLocalResourcesWithLocalResources:*(*(*(a1 + 80) + 8) + 40) targetMapping:*(a1 + 64)];
    v20 = *(*(a1 + 104) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }
}

void sub_100130C40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v5 = sub_10011B768();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        if (*(a1 + 136))
        {
          v6 = "check (prune)";
        }

        else
        {
          v6 = "prune";
        }

        v7 = [v3 error];
        *buf = 136315394;
        *&buf[4] = v6;
        *&buf[12] = 2112;
        *&buf[14] = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Got a transaction error trying to %s some resources: %@", buf, 0x16u);
      }
    }

    if (![*(*(*(a1 + 96) + 8) + 40) count])
    {
      v35 = *(*(a1 + 32) + 104);
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10013122C;
      v53[3] = &unk_10027A760;
      v17 = &v57;
      v57 = *(a1 + 80);
      v54 = *(a1 + 40);
      v55 = v3;
      v58 = *(a1 + 137);
      v56 = *(a1 + 48);
      v36 = v53;
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100002BB8;
      v60 = &unk_100271E98;
      v61[0] = v36;
      v37 = v35;
      v38 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
      dispatch_async(v37, v38);

      v24 = v54;
LABEL_28:

      goto LABEL_29;
    }
  }

  if ([*(*(*(a1 + 104) + 8) + 40) count])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10011B768();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 136))
        {
          v9 = "Checked-prune";
        }

        else
        {
          v9 = "Pruned";
        }

        v10 = [*(*(*(a1 + 96) + 8) + 40) count];
        v11 = [*(*(*(a1 + 112) + 8) + 40) count];
        v12 = [*(*(*(a1 + 104) + 8) + 40) count];
        *buf = 136315906;
        *&buf[4] = v9;
        *&buf[12] = 2048;
        *&buf[14] = v10;
        *&buf[22] = 2048;
        v60 = v11;
        LOWORD(v61[0]) = 2048;
        *(v61 + 2) = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s %lu resources, and found %lu resources unsafe to prune but %lu resources need to be checked on server", buf, 0x2Au);
      }
    }

    v13 = *(a1 + 32);
    v14 = *(*(*(a1 + 104) + 8) + 40);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1001312CC;
    v41[3] = &unk_10027A800;
    v48 = *(a1 + 112);
    v51 = *(a1 + 137);
    v17 = v42;
    v18 = *(a1 + 48);
    v19 = *(a1 + 32);
    v42[0] = v18;
    v42[1] = v19;
    v20 = *(a1 + 80);
    v21 = *(a1 + 96);
    v46 = v20;
    v49 = v21;
    v22 = *(a1 + 72);
    v23 = *(a1 + 128);
    v43 = v22;
    v50 = v23;
    v44 = *(a1 + 64);
    v47 = *(a1 + 88);
    v52 = *(a1 + 136);
    v45 = *(a1 + 40);
    [v13 checkServerForResources:v14 targetMapping:v15 transportScopeMapping:v16 completionHandler:v41];

    v24 = v46;
    goto LABEL_28;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v25 = sub_10011B768();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 136))
      {
        v26 = "Checked (prune)";
      }

      else
      {
        v26 = "Pruned";
      }

      v27 = [*(*(*(a1 + 96) + 8) + 40) count];
      v28 = [*(*(*(a1 + 112) + 8) + 40) count];
      *buf = 136315650;
      *&buf[4] = v26;
      *&buf[12] = 2048;
      *&buf[14] = v27;
      *&buf[22] = 2048;
      v60 = v28;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s %lu resources, and found %lu resources unsafe to prune", buf, 0x20u);
    }
  }

  v29 = *(*(a1 + 32) + 104);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100131D9C;
  v39[3] = &unk_10027A788;
  v17 = v40;
  v30 = *(a1 + 80);
  v31 = *(a1 + 96);
  v40[0] = v30;
  v40[1] = v31;
  v40[2] = *(a1 + 112);
  v32 = v39;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_100002BB8;
  v60 = &unk_100271E98;
  v61[0] = v32;
  v33 = v29;
  v34 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
  dispatch_async(v33, v34);

LABEL_29:
}

void sub_10013122C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v5 = [*(a1 + 40) error];
  v4 = [CPLErrors unsafeResources:v3 withError:v5 realPrune:*(a1 + 64) resourceStorage:*(a1 + 48)];
  (*(v2 + 16))(v2, &__NSArray0__struct, v4);
}

void sub_1001312CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_10011B768();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to check resources to prune on server: %@", &buf, 0xCu);
      }
    }

    v11 = *(*(*(a1 + 88) + 8) + 40);
    v12 = *(*(*(a1 + 96) + 8) + 40);
    v13 = [CPLErrors cplErrorWithCode:80 description:@"Failed to check server"];
    v14 = [CPLErrors unsafeResources:v12 withError:v13 realPrune:*(a1 + 120) resourceStorage:*(a1 + 32)];
    [v11 addEntriesFromDictionary:v14];

    v15 = *(*(a1 + 40) + 104);
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_10013172C;
    v51[3] = &unk_10027A788;
    v16 = v52;
    v17 = *(a1 + 72);
    v18 = *(a1 + 104);
    v52[0] = v17;
    v52[1] = v18;
    v52[2] = *(a1 + 88);
    v19 = v51;
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v54 = sub_100002BB8;
    v55 = &unk_100271E98;
    v56 = v19;
    v20 = v15;
    v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &buf);
    dispatch_async(v20, v21);
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = sub_10011B768();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = [v7 count];
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "After checking server, found %lu additional resources are safe to prune", &buf, 0xCu);
      }
    }

    if ([v8 count])
    {
      [*(*(*(a1 + 88) + 8) + 40) addEntriesFromDictionary:v8];
    }

    v23 = *(a1 + 48);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100131754;
    v41[3] = &unk_10027A7B0;
    v16 = &v42;
    v24 = v23;
    v25 = *(a1 + 112);
    v42 = v24;
    v26 = *(a1 + 88);
    v48 = v25;
    v49 = v26;
    v43 = v7;
    v50 = *(a1 + 120);
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    v44 = v27;
    v45 = v28;
    v46 = *(a1 + 56);
    v47 = *(a1 + 80);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1001318D4;
    v33[3] = &unk_10027A7D8;
    v39 = *(a1 + 121);
    v29 = *(a1 + 40);
    v37 = *(a1 + 104);
    v33[4] = v29;
    v36 = *(a1 + 72);
    v34 = *(a1 + 64);
    v40 = *(a1 + 120);
    v30 = *(a1 + 32);
    v31 = *(a1 + 88);
    v35 = v30;
    v38 = v31;
    v32 = [v24 performWriteTransactionWithBlock:v41 completionHandler:v33];
  }
}

void sub_100131754(uint64_t a1)
{
  v2 = [*(a1 + 32) clientCacheIdentifier];
  v3 = *(*(*(a1 + 80) + 8) + 40);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!(v3 | v2))
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_1001B468C();
    v5 = v15;
    goto LABEL_16;
  }

  if (([v3 isEqual:v2] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v5 = [*(a1 + 56) safeResourcesToDeleteFromProposedResources:*(a1 + 40) realPrune:*(a1 + 96) checkServerIfNecessary:0 allowUnconfirmed:1 resourcesToCheckOnServer:0 targetScopeMapping:*(a1 + 64) unsafeResources:*(*(*(a1 + 88) + 8) + 40)];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        (*(*(a1 + 72) + 16))();
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

LABEL_16:
}

void sub_1001318D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (!v4)
  {
    goto LABEL_10;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = sub_10011B768();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 80))
      {
        v6 = "check (prune)";
      }

      else
      {
        v6 = "prune";
      }

      v7 = [v3 error];
      *buf = 136315394;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Got a transaction error trying to %s some resources: %@", buf, 0x16u);
    }
  }

  if (![*(*(*(a1 + 64) + 8) + 40) count])
  {
    v17 = *(*(a1 + 32) + 104);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100131CD4;
    v24[3] = &unk_10027A760;
    v13 = &v28;
    v28 = *(a1 + 56);
    v25 = *(a1 + 40);
    v26 = v3;
    v29 = *(a1 + 81);
    v27 = *(a1 + 48);
    v18 = v24;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002BB8;
    v31 = &unk_100271E98;
    v32 = v18;
    v19 = v17;
    v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
    dispatch_async(v19, v20);
  }

  else
  {
LABEL_10:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10011B768();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 80))
        {
          v9 = "Checked (prune)";
        }

        else
        {
          v9 = "Pruned";
        }

        v10 = [*(*(*(a1 + 64) + 8) + 40) count];
        v11 = [*(*(*(a1 + 72) + 8) + 40) count];
        *buf = 136315650;
        *&buf[4] = v9;
        *&buf[12] = 2048;
        *&buf[14] = v10;
        *&buf[22] = 2048;
        v31 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s %lu resources, and found %lu resources unsafe to prune", buf, 0x20u);
      }
    }

    v12 = *(*(a1 + 32) + 104);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100131D74;
    v21[3] = &unk_10027A788;
    v13 = &v22;
    v22 = *(a1 + 56);
    v23 = *(a1 + 64);
    v14 = v21;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002BB8;
    v31 = &unk_100271E98;
    v32 = v14;
    v15 = v12;
    v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
    dispatch_async(v15, v16);
  }
}

void sub_100131CD4(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v5 = [*(a1 + 40) error];
  v4 = [CPLErrors unsafeResources:v3 withError:v5 realPrune:*(a1 + 64) resourceStorage:*(a1 + 48)];
  (*(v2 + 16))(v2, &__NSArray0__struct, v4);
}

void sub_100131F5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_100004550;
  v33[4] = sub_10000538C;
  v34 = 0;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1001322B8;
  v27[3] = &unk_10027A850;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v28 = v9;
  v29 = v8;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v30 = v10;
  v31 = v11;
  v32 = v12;
  [v3 do:v27];
  v13 = [v3 error];

  v14 = *(*(a1 + 72) + 104);
  if (v13)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100132764;
    v24[3] = &unk_100272350;
    v15 = &v26;
    v26 = *(a1 + 80);
    v25 = v3;
    v16 = v24;
    block = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = sub_100002BB8;
    v38 = &unk_100271E98;
    v39 = v16;
    v17 = v14;
    v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v17, v18);
  }

  else
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001327C4;
    v22[3] = &unk_100279CF8;
    v15 = v23;
    v23[0] = *(a1 + 80);
    v23[1] = v33;
    v19 = v22;
    block = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = sub_100002BB8;
    v38 = &unk_100271E98;
    v39 = v19;
    v20 = v14;
    v21 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v20, v21);
  }

  _Block_object_dispose(v33, 8);
}

uint64_t sub_1001322B8(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v4 = [*(a1 + 40) transactionClientCacheView];
    v5 = [v4 recordViewWithScopedIdentifier:*(a1 + 32)];
    v6 = [v5 changeForType:8];

    if (v6)
    {
      if ([v6 supportsResources])
      {
        v45 = 0;
        v7 = [*(a1 + 48) cloudScopedIdentifierForLocalScopedIdentifier:*(a1 + 32) isFinal:&v45];
        if (v7)
        {
          v32 = v7;
          v8 = [*(a1 + 56) recordWithScopedIdentifier:v7 isFinal:0];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v33 = v6;
          v9 = [v6 resources];
          v10 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v10)
          {
            v11 = v10;
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
                v15 = [v8 resourceForType:{objc_msgSend(v14, "resourceType")}];
                v16 = [v15 identity];
                v17 = [v16 isAvailable];

                if (v17)
                {
                  v18 = [*(a1 + 64) shouldUploadResource:v14] ^ 1;
                }

                else
                {
                  v18 = 0;
                }

                v19 = [v14 identity];
                [v19 setAvailable:v18];
              }

              v11 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v11);
          }

          v7 = v32;
          v6 = v33;
        }

        else
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v8 = [v6 resources];
          v22 = [v8 countByEnumeratingWithState:&v37 objects:v48 count:16];
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
                  objc_enumerationMutation(v8);
                }

                v26 = [*(*(&v37 + 1) + 8 * j) identity];
                [v26 setAvailable:0];
              }

              v23 = [v8 countByEnumeratingWithState:&v37 objects:v48 count:16];
            }

            while (v23);
          }
        }

        v27 = *(*(a1 + 72) + 104);
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100132704;
        v34[3] = &unk_100272350;
        v36 = *(a1 + 80);
        v35 = v6;
        v28 = v34;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100002BB8;
        block[3] = &unk_100271E98;
        v47 = v28;
        v29 = v27;
        v30 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
        dispatch_async(v29, v30);

        v20 = 1;
        goto LABEL_33;
      }

      if (a2)
      {
        v21 = [CPLErrors incorrectParametersErrorForParameter:@"itemScopedIdentifier"];
        goto LABEL_22;
      }
    }

    else if (a2)
    {
      v21 = [CPLErrors cplErrorWithCode:25 description:@"%@ is not in client cache", *(a1 + 32)];
LABEL_22:
      v20 = 0;
      *a2 = v21;
LABEL_33:

      return v20;
    }

    v20 = 0;
    goto LABEL_33;
  }

  if (!a2)
  {
    return 0;
  }

  [CPLErrors incorrectParametersErrorForParameter:@"itemScopedIdentifier"];
  *a2 = v20 = 0;
  return v20;
}

void sub_100132704(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) resources];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100132764(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_1001328F0(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10013297C;
  v3[3] = &unk_100279748;
  v4 = *(a1 + 32);
  [a2 do:v3];
}

id sub_10013297C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) resourceStorage];
  v4 = [v3 compactWithError:a2];

  return v4;
}

void sub_1001329C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  (*(v2 + 16))(v2, v3);
}

void sub_100132BE4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) ownerNameForEngineLibrary:*(*(a1 + 32) + 96)];
  v3 = @"client";
  if (v2)
  {
    v3 = v2;
  }

  v5 = v2;
  v4 = [CPLErrors cplErrorWithCode:150 description:@"%@ is not allowed to perform this action", v3];
  (*(v1 + 16))(v1, 0, v4);
}

void sub_100132C88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 104);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100132DE8;
  v14[3] = &unk_100272E20;
  v8 = *(a1 + 40);
  v16 = v6;
  v17 = v8;
  v15 = v5;
  v9 = v14;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v19 = v9;
  v10 = v7;
  v11 = v6;
  v12 = v5;
  v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v10, v13);
}

void sub_100132EF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = [v3 error];
    (*(v5 + 16))(v5, 0, v6);
  }

  else
  {
    v6 = [*(a1 + 32) cloudCache];
    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          v14 = [v6 targetForRecordWithCloudScopedIdentifier:{v13, v15}];
          if (v14)
          {
            [v7 setObject:v14 forKeyedSubscript:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1001330C8(uint64_t a1)
{
  v4 = [*(a1 + 32) abstractObject];
  v2 = [v4 delegate];
  v3 = [*(a1 + 32) abstractObject];
  [v2 libraryManagerHasChangesToPull:v3];
}

void sub_100133144(uint64_t a1)
{
  v2 = [*(a1 + 32) abstractObject];
  v4 = [v2 delegate];

  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [*(a1 + 32) abstractObject];
    [v4 libraryManagerHasStatusChanges:v3];
  }
}

void sub_1001331DC(uint64_t a1)
{
  v4 = [*(a1 + 32) abstractObject];
  v2 = [v4 resourceProgressDelegate];
  v3 = [*(a1 + 32) abstractObject];
  [v2 libraryManager:v3 backgroundDownloadDidFinishForResource:*(a1 + 40)];
}

void sub_100133264(uint64_t a1)
{
  v2 = [*(a1 + 32) abstractObject];
  v4 = [v2 resourceProgressDelegate];

  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) abstractObject];
    [v4 libraryManager:v3 backgroundDownloadDidFailForResource:*(a1 + 40)];
  }
}

void sub_100133418(uint64_t a1)
{
  v4 = [*(a1 + 32) abstractObject];
  v2 = [v4 resourceProgressDelegate];
  v3 = [*(a1 + 32) abstractObject];
  [v2 libraryManager:v3 uploadDidStartForResourceTransferTask:*(a1 + 40)];
}

void sub_1001335EC(uint64_t a1)
{
  v3 = [*(a1 + 32) resourceProgressDelegate];
  if (objc_opt_respondsToSelector())
  {
    LODWORD(v2) = *(a1 + 48);
    [v3 libraryManager:*(a1 + 32) uploadDidProgress:*(a1 + 40) forResourceTransferTask:v2];
  }
}

void sub_10013379C(uint64_t a1)
{
  v4 = [*(a1 + 32) abstractObject];
  v2 = [v4 resourceProgressDelegate];
  v3 = [*(a1 + 32) abstractObject];
  [v2 libraryManager:v3 uploadDidFinishForResourceTransferTask:*(a1 + 40) withError:*(a1 + 48)];
}

void sub_100133924(uint64_t a1)
{
  v2 = [*(a1 + 32) abstractObject];
  [v2 _setSizeOfResourcesToUpload:*(a1 + 40) sizeOfOriginalResourcesToUpload:*(a1 + 48) numberOfImages:*(a1 + 56) numberOfVideos:*(a1 + 64) numberOfOtherItems:*(a1 + 72)];
}

void sub_100133AD0(uint64_t a1)
{
  v2 = [*(a1 + 32) abstractObject];
  v3 = [v2 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 libraryManager:v2 provideLocalResource:*(a1 + 40) recordClass:*(a1 + 56) completionHandler:*(a1 + 48)];
  }

  else
  {
    sub_1001B476C(v3, a1);
  }
}

void sub_100133C70(uint64_t a1)
{
  v2 = [*(a1 + 32) abstractObject];
  v3 = [v2 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 libraryManager:v2 pushAllChangesWithCompletionHandler:*(a1 + 40)];
  }

  else
  {
    sub_1001B4864(v3, a1);
  }
}

void sub_100133E88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100133F7C;
  v9[3] = &unk_100272568;
  v8 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v8;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  v12 = *(a1 + 64);
  [v2 performAsCurrentWithPendingUnitCount:1 usingBlock:v9];
}

void sub_100133F7C(uint64_t a1)
{
  v2 = [*(a1 + 32) abstractObject];
  v3 = [v2 recordComputeStateDelegate];
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100134078;
    v7[3] = &unk_10027A940;
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    [v3 libraryManager:v2 providePayloadForComputeStates:v4 inFolderWithURL:v5 completionHandler:v7];

    v6 = v8;
  }

  else
  {
    sub_1001B4978(a1, &v10);
    v6 = v10;
  }
}

void sub_100134078(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) isCancelled];
  v7 = *(a1 + 40);
  if (v6)
  {
    v8 = +[CPLErrors operationCancelledError];
    (*(v7 + 16))(v7, 0, v8);
  }

  else
  {
    (*(v7 + 16))(v7, v9, v5);
  }
}

void sub_10013443C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:CPLLibraryMustBeWipedNotificationName object:*(*(a1 + 32) + 96)];
}

void sub_1001344AC(uint64_t a1, void *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B2418;
  v6[3] = &unk_10027A968;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = *(a1 + 56);
  v6[4] = v4;
  v7 = v5;
  v8 = *(a1 + 48);
  [a2 do:v6];
}

void sub_10013455C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 104);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100134690;
  v10[3] = &unk_100272350;
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v6 = v10;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v14 = v6;
  v7 = v4;
  v8 = v3;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v7, v9);
}

void sub_100134690(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_100134844(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (!v4)
  {
    if (*(a1 + 64) == 1)
    {
      v7 = [*(a1 + 32) storages];
      v8 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v49;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v49 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v48 + 1) + 8 * i);
            if ([v14 shouldIncludeInStatus] && objc_msgSend(v14, "scopeType"))
            {
              v15 = [v14 statusPerScopeIndex];
              if (v15)
              {
                v16 = [v14 name];
                [v8 setObject:v15 forKeyedSubscript:v16];
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v48 objects:v54 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v17 = objc_alloc_init(NSMutableDictionary);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100134C7C;
    v42[3] = &unk_10027A9B8;
    v47 = *(a1 + 64);
    v43 = *(a1 + 40);
    v18 = v8;
    v44 = v18;
    v19 = v9;
    v45 = v19;
    v20 = v17;
    v46 = v20;
    v21 = objc_retainBlock(v42);
    if ([*(a1 + 48) count])
    {
      v40 = 0uLL;
      v41 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      v22 = *(a1 + 48);
      v23 = [v22 countByEnumeratingWithState:&v38 objects:v53 count:16];
      if (v23)
      {
        v24 = v23;
        v32 = v18;
        v33 = v19;
        v25 = *v39;
        do
        {
          for (j = 0; j != v24; j = j + 1)
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [*(a1 + 40) scopeWithIdentifier:{*(*(&v38 + 1) + 8 * j), v32}];
            if (v27)
            {
              (v21[2])(v21, v27);
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v38 objects:v53 count:16];
        }

        while (v24);
        v18 = v32;
LABEL_36:
        v19 = v33;
      }
    }

    else
    {
      v36 = 0uLL;
      v37 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v22 = [*(a1 + 40) enumeratorForScopesIncludeInactive:1];
      v28 = [v22 countByEnumeratingWithState:&v34 objects:v52 count:16];
      if (v28)
      {
        v29 = v28;
        v33 = v19;
        v30 = *v35;
        do
        {
          for (k = 0; k != v29; k = k + 1)
          {
            if (*v35 != v30)
            {
              objc_enumerationMutation(v22);
            }

            (v21[2])(v21, *(*(&v34 + 1) + 8 * k));
          }

          v29 = [v22 countByEnumeratingWithState:&v34 objects:v52 count:16];
        }

        while (v29);
        goto LABEL_36;
      }
    }

    (*(*(a1 + 56) + 16))();
    goto LABEL_38;
  }

  v5 = *(a1 + 56);
  v6 = [v3 error];
  (*(v5 + 16))(v5, 0, v6);

LABEL_38:
}

void sub_100134C7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 scopeIdentifier];
  v5 = *(a1 + 64);
  v26 = v3;
  v6 = [*(a1 + 32) statusDictionaryForScope:v3];
  v7 = v6;
  if (v5 != 1)
  {
    [*(a1 + 56) setObject:v6 forKeyedSubscript:v4];

    goto LABEL_23;
  }

  v24 = v4;
  v23 = [v6 mutableCopy];

  v25 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = *(a1 + 48);
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = v9;
  v11 = *v28;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      v14 = [v13 scopeType];
      v15 = 0;
      if (v14 > 1)
      {
        if (v14 == 3)
        {
          v16 = [v26 stableIndex];
          goto LABEL_15;
        }

        if (v14 == 2)
        {
          v16 = [v26 cloudIndex];
          goto LABEL_15;
        }
      }

      else
      {
        if (!v14)
        {
          continue;
        }

        if (v14 == 1)
        {
          v16 = [v26 localIndex];
LABEL_15:
          v15 = v16;
        }
      }

      v17 = *(a1 + 40);
      v18 = [v13 name];
      v19 = [v17 objectForKeyedSubscript:v18];
      v20 = [NSNumber numberWithUnsignedInteger:v15];
      v21 = [v19 objectForKeyedSubscript:v20];

      if (v21)
      {
        v22 = [v13 name];
        [v25 setObject:v21 forKeyedSubscript:v22];
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v10);
LABEL_21:

  [v23 setObject:v25 forKeyedSubscript:CPLEngineScopeStatusKeyStorages];
  v4 = v24;
  [*(a1 + 56) setObject:v23 forKeyedSubscript:v24];

LABEL_23:
}

void sub_100135074(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 104);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100135444;
    v35[3] = &unk_100272350;
    v37 = *(a1 + 64);
    v36 = v3;
    v6 = v35;
    block = _NSConcreteStackBlock;
    v39 = 3221225472;
    v40 = sub_100002BB8;
    v41 = &unk_100271E98;
    v42 = v6;
    v7 = v5;
    v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v7, v8);

    v9 = v37;
  }

  else
  {
    v26 = v3;
    v27 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v9 = [*(a1 + 48) transactionClientCacheView];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = *(a1 + 40);
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        v14 = 0;
        do
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v31 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          v17 = [v9 recordViewWithScopedIdentifier:v15];
          v18 = [v17 synthesizedRecord];

          if (v18)
          {
            if (*(a1 + 56))
            {
              v19 = [objc_opt_class() newRecordWithScopedIdentifier:v15];
              [v19 cplCopyProperties:*(a1 + 56) fromObject:v18 withCopyBlock:0];

              v18 = v19;
            }

            [v27 setObject:v18 forKeyedSubscript:{v15, v26}];
          }

          objc_autoreleasePoolPop(v16);
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v12);
    }

    v20 = *(*(a1 + 32) + 104);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001354A4;
    v28[3] = &unk_100272350;
    v21 = *(a1 + 64);
    v29 = v27;
    v30 = v21;
    v22 = v28;
    block = _NSConcreteStackBlock;
    v39 = 3221225472;
    v40 = sub_100002BB8;
    v41 = &unk_100271E98;
    v42 = v22;
    v23 = v20;
    v24 = v27;
    v25 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
    dispatch_async(v23, v25);

    v3 = v26;
  }
}

void sub_100135444(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1001354A4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_1001355FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (!v4)
  {
    if (!*(a1 + 40))
    {
      v31 = *(*(a1 + 32) + 104);
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100135E44;
      v50[3] = &unk_100271E98;
      v51 = *(a1 + 56);
      v32 = v50;
      block = _NSConcreteStackBlock;
      v73 = 3221225472;
      v74 = sub_100002BB8;
      v75 = &unk_100271E98;
      v76 = v32;
      v33 = v31;
      v34 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
      dispatch_async(v33, v34);

      v9 = v51;
      goto LABEL_3;
    }

    v68 = 0;
    v10 = [*(a1 + 48) idMapping];
    v11 = [v10 cloudScopedIdentifierForLocalScopedIdentifier:*(a1 + 40) isFinal:&v68];

    if (!v11)
    {
      v35 = *(*(a1 + 32) + 104);
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_100135DC4;
      v52[3] = &unk_100272350;
      v54 = *(a1 + 56);
      v53 = *(a1 + 40);
      v36 = v52;
      block = _NSConcreteStackBlock;
      v73 = 3221225472;
      v74 = sub_100002BB8;
      v75 = &unk_100271E98;
      v76 = v36;
      v37 = v35;
      v38 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
      dispatch_async(v37, v38);

      v17 = v54;
LABEL_25:

      goto LABEL_26;
    }

    v12 = *(a1 + 64);
    v13 = [*(a1 + 48) cloudCache];
    v14 = v13;
    if (v12 == 1)
    {
      v49 = v11;
      v15 = [v13 recordsWithRelatedScopedIdentifier:v11 isFinal:0];

      v16 = objc_alloc_init(NSMutableArray);
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v64 objects:v77 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v65;
        do
        {
          v21 = 0;
          do
          {
            if (*v65 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v64 + 1) + 8 * v21);
            v23 = objc_autoreleasePoolPush();
            v24 = [CPLArchiver displayablePropertyListWithRootObject:v22];
            if (v24)
            {
              [v16 addObject:v24];
            }

            objc_autoreleasePoolPop(v23);
            v21 = v21 + 1;
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v64 objects:v77 count:16];
        }

        while (v19);
      }

      v25 = *(*(a1 + 32) + 104);
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_100135D8C;
      v61[3] = &unk_100272350;
      v26 = *(a1 + 56);
      v62 = v16;
      v63 = v26;
      v27 = v61;
      block = _NSConcreteStackBlock;
      v73 = 3221225472;
      v74 = sub_100002BB8;
      v75 = &unk_100271E98;
      v76 = v27;
      v28 = v25;
      v29 = v16;
      v30 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
      dispatch_async(v28, v30);

      v11 = v49;
      goto LABEL_25;
    }

    v59 = 0;
    v60 = 0;
    [v13 getCommittedRecord:&v60 stagedRecord:&v59 forScopedIdentifier:v11];
    v17 = v60;
    v39 = v59;

    if (v17)
    {
      v40 = [CPLArchiver displayablePropertyListWithRootObject:v17];
      if (v39)
      {
LABEL_21:
        v41 = [CPLArchiver displayablePropertyListWithRootObject:v17];
LABEL_24:
        v42 = *(*(a1 + 32) + 104);
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_100135DA8;
        v55[3] = &unk_100272E20;
        v43 = *(a1 + 56);
        v57 = v41;
        v58 = v43;
        v56 = v40;
        v44 = v55;
        block = _NSConcreteStackBlock;
        v73 = 3221225472;
        v74 = sub_100002BB8;
        v75 = &unk_100271E98;
        v76 = v44;
        v45 = v42;
        v46 = v41;
        v47 = v40;
        v48 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
        dispatch_async(v45, v48);

        goto LABEL_25;
      }
    }

    else
    {
      v40 = 0;
      if (v39)
      {
        goto LABEL_21;
      }
    }

    v41 = 0;
    goto LABEL_24;
  }

  v5 = *(*(a1 + 32) + 104);
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_100135D28;
  v69[3] = &unk_100272350;
  v71 = *(a1 + 56);
  v70 = v3;
  v6 = v69;
  block = _NSConcreteStackBlock;
  v73 = 3221225472;
  v74 = sub_100002BB8;
  v75 = &unk_100271E98;
  v76 = v6;
  v7 = v5;
  v8 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
  dispatch_async(v7, v8);

  v9 = v71;
LABEL_3:

LABEL_26:
}

void sub_100135D28(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void sub_100135DC4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [CPLErrors cplErrorWithCode:25 description:@"record with identifier %@ is not known", *(a1 + 32)];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void sub_100135E44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CPLErrors incorrectParametersErrorForParameter:@"scopedIdentifier"];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void sub_100136408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100136438(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 recordComputeStatePushQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013651C;
  v7[3] = &unk_10027AA30;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v11 = *(a1 + 48);
  v6 = v5;
  [v4 do:v7];
}

uint64_t sub_10013651C(uint64_t a1, void *a2)
{
  if ([*(a1 + 32) isClientInSyncWithClientCache])
  {
    v4 = [*(a1 + 32) scopes];
    v36 = objc_alloc_init(NSMutableSet);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = *(a1 + 40);
    v5 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v43;
      while (2)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v43 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v42 + 1) + 8 * v9);
          v12 = *(a1 + 48);
          v41 = v10;
          v13 = [v12 addComputeState:v11 error:&v41];
          v7 = v41;

          if (!v13)
          {

            if (a2)
            {
              v31 = v7;
              v20 = 0;
              *a2 = v7;
            }

            else
            {
              v20 = 0;
            }

            goto LABEL_40;
          }

          v14 = [v11 itemScopedIdentifier];
          v15 = [v14 scopeIdentifier];
          v16 = [v4 scopeWithIdentifier:v15];

          if ([v4 valueForFlag:16 forScope:v16])
          {
            v32 = [v16 scopeIdentifier];
            v18 = [CPLErrors cplErrorWithCode:2001 description:@"Scope %@ is inactive", v32];

            if (a2)
            {
              v33 = v18;
              *a2 = v18;
            }

            v20 = 0;
            goto LABEL_41;
          }

          if (v16)
          {
            [v36 addObject:v16];
            ++*(*(*(a1 + 56) + 8) + 24);
          }

          v9 = v9 + 1;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 0;
    }

    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v21 = v36;
      v22 = [v21 countByEnumeratingWithState:&v37 objects:v48 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v38;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [v4 setScopeNeedsToUploadComputeState:*(*(&v37 + 1) + 8 * i) error:a2];
          }

          v23 = [v21 countByEnumeratingWithState:&v37 objects:v48 count:16];
        }

        while (v23);
      }

      v26 = [*(a1 + 32) engineLibrary];
      v27 = [v26 configuration];

      v28 = [v27 maximumComputeStatesToUploadPerBatch];
      if ([*(a1 + 48) countOfComputeStates] >= v28)
      {
        *(*(*(a1 + 64) + 8) + 24) = 1;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v29 = sub_10011B768();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *(*(*(a1 + 56) + 8) + 24);
          *buf = 134217984;
          v47 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Added %lu record compute states to the record compute state push queue", buf, 0xCu);
        }
      }
    }

    v20 = 1;
LABEL_40:
    v18 = v7;
LABEL_41:
  }

  else
  {
    v17 = [CPLErrors cplErrorWithCode:20 description:@"Engine is not in sync with client. Should try again later to attach compute states for %@", *(a1 + 40)];
    v18 = v17;
    if (a2)
    {
      v19 = v17;
      v20 = 0;
      *a2 = v18;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

uint64_t sub_100136950(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 48) + 8);
  v5 = v3;
  if (!v3)
  {
    v5 = *(v4 + 40);
  }

  objc_storeStrong((v4 + 40), v5);

  if (!*(*(*(a1 + 48) + 8) + 40) && *(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v6 = [*(a1 + 32) engineLibrary];
    v7 = [v6 scheduler];
    [v7 noteScopeNeedsToUploadComputeState];

    v8 = *(*(*(a1 + 48) + 8) + 40);
  }

  v9 = *(*(a1 + 40) + 16);

  return v9();
}

void sub_100136AE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 104);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100136C28;
  block[3] = &unk_100272028;
  block[4] = v4;
  block[5] = &v9;
  dispatch_sync(v5, block);
  if (*(v10 + 24) == 1)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100136C4C;
    v6[3] = &unk_100279748;
    v7 = *(a1 + 40);
    [v3 do:v6];
  }

  _Block_object_dispose(&v9, 8);
}

id sub_100136C4C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) recordComputeStatePushQueue];
  v4 = [v3 deleteIncomingDownloadFolderWithError:a2];

  return v4;
}

void sub_100136E48(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == v2[11])
  {
    [v2 _cleanupComputeStateDownloadQueue];
    v4 = *(a1 + 40);
    v5 = *(v4 + 88);
    *(v4 + 88) = 0;
  }
}

void sub_100137520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose((v72 - 248), 8);
  _Block_object_dispose((v72 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_100137588(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 104);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100137710;
  v15[3] = &unk_10027AAC8;
  v20 = *(a1 + 56);
  v15[4] = v7;
  v21 = *(a1 + 72);
  v16 = *(a1 + 40);
  v9 = *(a1 + 48);
  v18 = v6;
  v19 = v9;
  v17 = v5;
  v10 = v15;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BB8;
  block[3] = &unk_100271E98;
  v23 = v10;
  v11 = v8;
  v12 = v6;
  v13 = v5;
  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v11, v14);
}

void *sub_100137710(void *result)
{
  v1 = *(result[9] + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    if (*(*(result[10] + 8) + 40))
    {
      [*(result[4] + 72) removeObject:?];
      v3 = *(v2[10] + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = 0;
    }

    if (*(*(v2[11] + 8) + 40))
    {
      v5 = dispatch_time(0, 600000000000);
      v6 = *(v2[4] + 104);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001B28C0;
      block[3] = &unk_100272000;
      block[4] = v2[11];
      dispatch_after(v5, v6, block);
    }

    [v2[5] setCompletedUnitCount:{objc_msgSend(v2[5], "totalUnitCount")}];
    v7 = v2[7];
    v8 = v2[6];
    (*(v2[8] + 16))();
    return [v2[4] _endComputeStateDownload];
  }

  return result;
}

void sub_10013784C(uint64_t a1, void *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100137950;
  v10[3] = &unk_10027AB18;
  v4 = *(a1 + 32);
  v13 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  v14 = *(a1 + 72);
  v15 = *(a1 + 88);
  [a2 do:v10];
}

BOOL sub_100137950(uint64_t a1, void *a2)
{
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = *v52;
  while (2)
  {
    v8 = 0;
    do
    {
      if (*v52 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v51 + 1) + 8 * v8);
      if (*(*(*(a1 + 64) + 8) + 40))
      {
        v10 = [*(*(&v51 + 1) + 8 * v8) scopeIdentifier];
        v11 = [*(*(*(a1 + 64) + 8) + 40) scopeIdentifier];
        v12 = [v10 isEqualToString:v11];

        if ((v12 & 1) == 0)
        {
          v22 = [*(*(*(a1 + 64) + 8) + 40) scopeIdentifier];
          v23 = [CPLErrors cplErrorWithCode:50 description:@"Can't download compute state for this scope:%@", v22];
LABEL_17:
          v21 = v23;

          goto LABEL_18;
        }
      }

      else
      {
        v13 = *(a1 + 40);
        v14 = [*(*(&v51 + 1) + 8 * v8) scopeIdentifier];
        v15 = [v13 scopeWithIdentifier:v14];
        v16 = *(*(a1 + 64) + 8);
        v17 = *(v16 + 40);
        *(v16 + 40) = v15;

        if (!*(*(*(a1 + 64) + 8) + 40))
        {
          v22 = [0 scopeIdentifier];
          v23 = [CPLErrors invalidScopeErrorWithScopeIdentifier:v22];
          goto LABEL_17;
        }
      }

      v50 = 0;
      v18 = [*(a1 + 48) idMapping];
      v19 = [v18 cloudScopedIdentifierForLocalScopedIdentifier:v9 isFinal:&v50];

      if (!v19)
      {
        v19 = [v9 copy];
      }

      [*(a1 + 56) addObject:v19];

      v8 = v8 + 1;
    }

    while (v6 != v8);
    v6 = [v4 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_14:

  if ([*(a1 + 40) valueForFlag:16 forScope:*(*(*(a1 + 64) + 8) + 40)])
  {
    v20 = [*(*(*(a1 + 64) + 8) + 40) scopeIdentifier];
    v21 = [CPLErrors cplErrorWithCode:2001 description:@"Scope %@ is inactive", v20];

    goto LABEL_18;
  }

  v27 = [*(a1 + 48) transactionTransportScopeMapping];
  v28 = *(*(a1 + 72) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v27;

  v30 = *(*(*(a1 + 72) + 8) + 40);
  v31 = [*(*(*(a1 + 64) + 8) + 40) scopeIdentifier];
  v32 = [*(a1 + 48) scopes];
  v49 = 0;
  LODWORD(v30) = [v30 addTransportScopeForScopeIdentifier:v31 scopes:v32 useStagingScopeIfNecessary:1 error:&v49];
  v21 = v49;

  if (v30)
  {
    if (*(*(*(a1 + 64) + 8) + 40) && ([*(a1 + 40) sharingScopeForScope:?], v33 = objc_claimAutoreleasedReturnValue(), v34 = *(*(a1 + 80) + 8), v35 = *(v34 + 40), *(v34 + 40) = v33, v35, (v36 = *(*(*(a1 + 80) + 8) + 40)) != 0))
    {
      v37 = *(*(*(a1 + 72) + 8) + 40);
      v38 = [v36 scopeIdentifier];
      v39 = [*(a1 + 48) scopes];
      v48 = v21;
      v40 = [v37 addTransportScopeForScopeIdentifier:v38 scopes:v39 useStagingScopeIfNecessary:1 error:&v48];
      v41 = v48;

      if (v40)
      {
        v21 = v41;
        goto LABEL_28;
      }

      v24 = 0;
      v21 = v41;
    }

    else
    {
LABEL_28:
      v42 = [*(a1 + 48) recordComputeStatePushQueue];
      v47 = v21;
      v43 = [v42 createNewTempDownloadFolderWithError:&v47];
      v44 = v47;

      v45 = *(*(a1 + 88) + 8);
      v46 = *(v45 + 40);
      *(v45 + 40) = v43;

      v24 = *(*(*(a1 + 88) + 8) + 40) != 0;
      v21 = v44;
    }
  }

  else
  {
LABEL_18:
    v24 = 0;
  }

  if (a2 && !v24)
  {
    v25 = v21;
    *a2 = v21;
  }

  return v24;
}

void sub_100137DDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = *(a1 + 88);
    v6 = [v3 error];
    (*(v5 + 16))(v5, 0, v6);
  }

  else if ([*(a1 + 32) count])
  {
    v7 = *(*(a1 + 40) + 104);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100138040;
    v22[3] = &unk_10027AC08;
    v8 = *(a1 + 48);
    v9 = *(a1 + 96);
    v23 = v8;
    v28 = v9;
    v21 = *(a1 + 32);
    v10 = v21.i64[0];
    v24 = vextq_s8(v21, v21, 8uLL);
    v11 = *(a1 + 120);
    v29 = *(a1 + 104);
    v30 = v11;
    v27 = *(a1 + 88);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v31 = *(a1 + 136);
    v14 = *(a1 + 72);
    v32 = *(a1 + 137);
    v15 = *(a1 + 80);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v25 = v17;
    v26 = v16;
    v18 = v22;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002BB8;
    block[3] = &unk_100271E98;
    v34 = v18;
    v19 = v7;
    v20 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(v19, v20);
  }

  else
  {
    (*(*(a1 + 88) + 16))();
  }
}

void sub_100138040(uint64_t a1)
{
  v2 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v3 = [*(*(a1 + 40) + 96) transport];
  v4 = *(*(*(a1 + 104) + 8) + 40);
  v5 = *(*(*(a1 + 112) + 8) + 40);
  v6 = *(*(*(a1 + 120) + 8) + 40);
  v7 = *(*(*(a1 + 128) + 8) + 40);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1001382B8;
  v24[3] = &unk_10027ABB8;
  v8 = *(a1 + 48);
  *&v9 = v8;
  *(&v9 + 1) = *(a1 + 40);
  v19 = v9;
  v28 = *(a1 + 88);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v25 = v19;
  v26 = v12;
  v29 = *(a1 + 104);
  v27 = v2;
  v13 = v2;
  v14 = [v3 downloadComputeStatesWithScopedIdentifiers:v8 scope:v4 sharedScope:v5 targetStorageURL:v6 transportScopeMapping:v7 completionHandler:v24];
  v15 = *(*(a1 + 96) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  [*(*(*(a1 + 96) + 8) + 40) setShouldDecrypt:*(a1 + 136)];
  [*(*(a1 + 40) + 72) addObject:*(*(*(a1 + 96) + 8) + 40)];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10013870C;
  v20[3] = &unk_10027ABE0;
  v17 = *(a1 + 96);
  v20[4] = *(a1 + 40);
  v22 = v17;
  v23 = *(a1 + 137);
  v18 = *(a1 + 72);
  v21 = *(a1 + 80);
  [v18 performAsCurrentWithPendingUnitCount:1 usingBlock:v20];
}

void sub_1001382B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) count];
  v8 = [v5 count];
  v9 = [*(a1 + 40) engineLibrary];
  v10 = v9;
  if (v6 || v7 == v8)
  {
    v11 = 0;
    v12 = v6;
  }

  else
  {
    v11 = 1;
    v12 = 0;
  }

  [v9 updateComputeSyncMetrics:1 silentDecryptionFailed:v11 error:v12];

  if ([v5 count])
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100138468;
    v17[3] = &unk_10027AB90;
    v13 = *(a1 + 48);
    v18 = *(a1 + 56);
    v16 = *(a1 + 72);
    v14 = v16;
    v23 = v16;
    v19 = v5;
    v20 = *(a1 + 48);
    v21 = *(a1 + 64);
    v22 = v6;
    v15 = [v13 performReadTransactionWithBlock:v17];
  }

  else
  {
    (*(*(a1 + 72) + 16))();
  }
}

void sub_100138468(uint64_t a1)
{
  v2 = [*(a1 + 32) validLocalScopeIndexes];
  if ([v2 containsIndex:{objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "localIndex")}])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001385B0;
    v7[3] = &unk_10027AB68;
    v3 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    [v3 enumerateKeysAndObjectsUsingBlock:v7];
    (*(*(a1 + 72) + 16))(*(a1 + 72), *(a1 + 56), *(a1 + 64), v4);
  }

  else
  {
    v5 = [*(*(*(a1 + 80) + 8) + 40) scopeIdentifier];
    v6 = [CPLErrors invalidScopeErrorWithScopeIdentifier:v5];

    (*(*(a1 + 72) + 16))();
  }
}

void sub_1001385B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v17 = 0;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 idMapping];
  v9 = [v8 localScopedIdentifierForCloudScopedIdentifier:v5 isFinal:&v17];

  if (!v9)
  {
    sub_1001B4B0C(v5, &v18);
    v9 = v18;
  }

  v10 = [CPLRecordComputeState alloc];
  v11 = [v7 fileStorageIdentifier];
  v12 = [v7 version];
  v13 = [v7 fileURL];
  v14 = [v7 adjustmentFingerprint];
  v15 = [v7 lastUpdatedDate];

  v16 = [v10 initWithItemScopedIdentifier:v9 fileStorageIdentifier:v11 version:v12 fileURL:v13 adjustmentFingerprint:v14 lastUpdatedDate:v15];
  [*(a1 + 40) setObject:v16 forKeyedSubscript:v9];
}

id sub_10013870C(uint64_t a1)
{
  v2 = [*(a1 + 32) engineLibrary];
  v3 = [v2 syncManager];
  [v3 configureDirectTransportTask:*(*(*(a1 + 48) + 8) + 40)];

  v4 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    [v4 createGroupForComputeStateDownloadOnDemand];
  }

  else
  {
    [v4 createGroupForComputeStateDownloadPrefetch];
  }
  v5 = ;
  [*(*(*(a1 + 48) + 8) + 40) setTransportGroup:v5];

  v6 = *(*(*(a1 + 48) + 8) + 40);

  return [v6 runWithNoSyncSession];
}

void sub_100138964(uint64_t a1, void *a2)
{
  v29 = a2;
  if (qword_1002D27E8 != -1)
  {
    sub_1001B4BC8();
  }

  v3 = [*(a1 + 32) mutableCopy];
  [v3 removeObjectForKey:CPLMiscInformationAppendCPLReport];
  v4 = +[NSDate date];
  v5 = sub_100138CF4(v4, v4);
  [v3 setObject:v5 forKeyedSubscript:@"deviceTimestamp"];

  v6 = [*(a1 + 40) scopes];
  v7 = [v6 primaryScope];
  if (v7)
  {
    v8 = [v6 valueForFlag:16 forScope:v7];
    v9 = v8;
    if (v8)
    {
      v10 = @"off";
    }

    else
    {
      v10 = @"on";
    }

    [v3 setObject:v10 forKeyedSubscript:@"iCPL"];
    if ((v9 & 1) == 0)
    {
      v11 = [v6 lastDateOfClearedPushRepositoryForScope:v7];
      v12 = v11;
      if (v11)
      {
        v13 = sub_100138CF4(v11, v11);
        [v3 setObject:v13 forKeyedSubscript:@"iCPLLastClearedPush"];
      }

      v14 = [v6 lastDateOfCompletedPullFromTransportForScope:v7];

      if (v14)
      {
        v16 = sub_100138CF4(v15, v14);
        [v3 setObject:v16 forKeyedSubscript:@"iCPLLastDownSync"];
      }

      v17 = [v7 scopeIdentifier];
      v18 = [*(a1 + 40) pushRepository];
      v19 = [v18 countOfChangesInScopeWithIdentifier:v17];

      v20 = qword_1002D27E0;
      v21 = [NSNumber numberWithUnsignedInteger:v19];
      v22 = [v20 stringFromNumber:v21];
      [v3 setObject:v22 forKeyedSubscript:@"iCPLPushCount"];

      v23 = [*(a1 + 40) quarantinedRecords];
      v24 = [v23 countOfQuarantinedRecordsInScopeWithIdentifier:v17];

      v25 = qword_1002D27E0;
      v26 = [NSNumber numberWithUnsignedInteger:v24];
      v27 = [v25 stringFromNumber:v26];
      [v3 setObject:v27 forKeyedSubscript:@"iCPLQuarantineCount"];
    }
  }

  else
  {
    [v3 setObject:@"off" forKeyedSubscript:@"iCPL"];
  }

  v28 = [*(*(a1 + 48) + 96) feedback];
  [v28 reportMiscInformation:v3];
}

void sub_100138C60(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_1002D27E0;
  qword_1002D27E0 = v1;

  v3 = [NSLocale localeWithLocaleIdentifier:@"en_US"];
  [qword_1002D27E0 setLocale:v3];
  [qword_1002D27E0 setNumberStyle:1];
  [qword_1002D27E0 setUsesGroupingSeparator:0];
}

id sub_100138CF4(uint64_t a1, void *a2)
{
  v2 = qword_1002D27E0;
  [a2 timeIntervalSinceReferenceDate];
  v4 = [NSNumber numberWithLongLong:v3];
  v5 = [v2 stringFromNumber:v4];

  return v5;
}

void sub_100139248(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "client.librarymanager.directlibrarymanager");
  v3 = qword_1002D27F8;
  qword_1002D27F8 = v2;
}

void sub_100139288(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  byte_1002D2808 = [v1 BOOLForKey:@"CPLAlwaysCheckServerForDeleteResources"];
}

void sub_1001393A4(dispatch_block_t block)
{

  dispatch_async(v1, block);
}

dispatch_block_t sub_1001393C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char block)
{

  return dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &block);
}

id sub_1001393DC()
{
  v2 = *(v0 + 32);

  return [v2 scopeType];
}

void sub_100139408(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = a1;
}

uint64_t sub_100139450()
{
  result = *(v0 + 32);
  v2 = *(v0 + 73);
  return result;
}

uint64_t sub_100139460()
{
  result = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = *(v1 - 88);
  return result;
}

id sub_1001394E0()
{
  v3 = *(*(*(v1 + 56) + 8) + 40);

  return [v3 addObject:v0];
}

id sub_100139500(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return [v2 countByEnumeratingWithState:va objects:va1 count:16];
}

id sub_100139904()
{
  if (qword_1002D2830 != -1)
  {
    sub_1001B5434();
  }

  v1 = qword_1002D2838;

  return v1;
}

void sub_100139948(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[CPLErrors libraryClosedError];
  (*(v1 + 16))(v1, v2);
}

void sub_1001399AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 113));
  [WeakRetained dropUnacknowledgedBatch];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100139AB8;
  v11[3] = &unk_100279BE0;
  v6 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v6;
  v13 = *(a1 + 48);
  [v4 do:v11];

  v7 = objc_loadWeakRetained((*(a1 + 32) + 113));
  v8 = [v7 libraryVersion];
  v9 = *(a1 + 32);
  v10 = *(v9 + 97);
  *(v9 + 97) = v8;
}

uint64_t sub_100139AB8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 113));
  v5 = [*(a1 + 32) abstractObject];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) resetTracker];
  LODWORD(v6) = [WeakRetained beginChangeSession:v5 withLibraryVersion:v6 resetTracker:v7 error:a2];

  if (!v6)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = objc_loadWeakRetained((v8 + 113));
  v11 = [v8 processSessionContext:v9 inStore:v10 error:a2];

  if (!v11)
  {
    return 0;
  }

  result = 1;
  if (!*(a1 + 40))
  {
    *(*(a1 + 32) + 49) = 1;
  }

  return result;
}

void sub_100139BB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (!v4)
  {
    [*(a1 + 32) beginClientWork];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100139C7C;
  v8[3] = &unk_100272350;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v5 dispatchCallback:v8];
}

void sub_100139C7C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_100139F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100139FB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[CPLErrors libraryClosedError];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_10013A018(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 113));
  [WeakRetained dropUnacknowledgedBatch];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10013A1A0;
  v16[3] = &unk_100279748;
  v16[4] = *(a1 + 32);
  [v3 do:v16];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10013A208;
  v11 = &unk_10027ACD8;
  v5 = *(a1 + 40);
  v12 = *(a1 + 32);
  v14 = v5;
  v6 = v3;
  v13 = v6;
  v15 = *(a1 + 48);
  [v6 do:&v8];
  v7 = [v6 error];
  if (v7 || *(*(a1 + 32) + 81))
  {
    goto LABEL_5;
  }

  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v7 = objc_loadWeakRetained((*(a1 + 32) + 113));
    [v7 keepUnacknowledgedBatch:*(*(*(a1 + 40) + 8) + 40)];
LABEL_5:
  }
}

id sub_10013A1A0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 113));
  v5 = [WeakRetained applyPreviousChangeSessionUpdateWithExpectedLibraryVersion:*(*(a1 + 32) + 97) error:a2];

  return v5;
}

uint64_t sub_10013A208(void *a1, void *a2)
{
  v4 = a1 + 4;
  WeakRetained = objc_loadWeakRetained((a1[4] + 113));
  [WeakRetained assertNoUnacknowledgedChanges];

  v6 = objc_loadWeakRetained((*v4 + 113));
  v7 = [v6 transactionClientCacheView];

  v8 = objc_loadWeakRetained((*v4 + 121));
  v9 = [v8 scopeChangesNeedingToBePulledByClientWithMaximumCount:5];
  v10 = *(*v4 + 81);
  *(*v4 + 81) = v9;

  v11 = *v4;
  if (*(*v4 + 81))
  {
    v12 = *(v11 + 89);
    *(v11 + 89) = 0;
  }

  else
  {
    v12 = objc_loadWeakRetained((v11 + 113));
    v13 = [v12 revertRecords];
    v14 = [v13 nextBatchOfRecordsToRevert];
    v15 = *(*v4 + 89);
    *(*v4 + 89) = v14;
  }

  v16 = *v4;
  v17 = *(*v4 + 81);
  if (v17 || (v17 = *(v16 + 89)) != 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v17);
    objc_storeStrong((a1[4] + 57), *(*(a1[6] + 8) + 40));
    v18 = 0;
LABEL_7:
    v19 = 1;
    goto LABEL_8;
  }

  v21 = objc_loadWeakRetained((v16 + 113));
  v22 = [v21 pushPullGatekeepers];
  v18 = [v22 count];

  if (!v18)
  {
    goto LABEL_59;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    sub_1001B5448();
  }

  v23 = objc_loadWeakRetained((*v4 + 113));
  v65 = 0;
  v24 = [v23 clearAllPushPullGatekeepersWithError:&v65];
  v18 = v65;

  if (v24)
  {
LABEL_59:
    if (*(*v4 + 57))
    {
      sub_1001B54A0(v4, 57, a1);
      goto LABEL_7;
    }

    v60 = a2;
    v25 = objc_loadWeakRetained((*v4 + 129));
    v26 = 99;
    v61 = v25;
    while (1)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = [v25 nextBatch];
      v29 = a1[4];
      v30 = *(v29 + 65);
      *(v29 + 65) = v28;

      v31 = a1[4];
      v32 = *(v31 + 73);
      *(v31 + 73) = 0;

      v33 = *(a1[6] + 8);
      v34 = *(v33 + 40);
      *(v33 + 40) = 0;

      v35 = a1[4];
      v36 = *(v35 + 65);
      if (!v36)
      {
        break;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v37 = sub_100139904();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v38 = *(*v4 + 65);
          *buf = 138412290;
          v67 = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "Next cloud batch is %@", buf, 0xCu);
        }

        v35 = *v4;
        v36 = *(*v4 + 65);
      }

      v39 = objc_loadWeakRetained((v35 + 137));
      v64 = 0;
      v40 = [v7 localChangeBatchFromCloudBatch:v36 usingMapping:v39 withError:&v64];
      v41 = v64;
      v42 = *(*v4 + 73);
      *(*v4 + 73) = v40;

      if (!*(*v4 + 73))
      {
        v25 = v61;
LABEL_35:

        objc_autoreleasePoolPop(v27);
LABEL_36:
        v19 = 0;
        v18 = v41;
        a2 = v60;
        goto LABEL_50;
      }

      v43 = [v7 compactedBatchFromExpandedBatch:?];
      v44 = *(a1[6] + 8);
      v45 = *(v44 + 40);
      *(v44 + 40) = v43;

      if ((_CPLSilentLogging & 1) == 0)
      {
        v46 = sub_100139904();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          v47 = *(*(a1[6] + 8) + 40);
          *buf = 138412290;
          v67 = v47;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEBUG, "Compacted client batch is %@", buf, 0xCu);
        }
      }

      if (!*(*(a1[6] + 8) + 40))
      {
        sub_1001B559C(a1, v4, 73);
      }

      v25 = v61;
      if ([*(*(a1[6] + 8) + 40) count])
      {
        goto LABEL_39;
      }

      v63 = 0;
      v48 = [v61 popNextBatchWithError:&v63];
      v49 = v63;
      v41 = v49;
      if (!v48)
      {
        goto LABEL_35;
      }

      if (!v26)
      {
        *(*(a1[7] + 8) + 24) = 1;
        v51 = *(a1[6] + 8);
        v50 = *(v51 + 40);
        *(v51 + 40) = 0;
        goto LABEL_38;
      }

      objc_autoreleasePoolPop(v27);
      --v26;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v50 = sub_100139904();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "Pull queue has no batches left to serve", buf, 2u);
      }

LABEL_38:
    }

LABEL_39:
    objc_autoreleasePoolPop(v27);
    v52 = a1[6];
    if ((*(*(a1[7] + 8) + 24) & 1) == 0)
    {
      a2 = v60;
      if (*(*(v52 + 8) + 40) || *(*v4 + 49) != 1)
      {
LABEL_49:
        objc_storeStrong((*v4 + 57), *(*(v52 + 8) + 40));
        v19 = 1;
LABEL_50:

        goto LABEL_51;
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v53 = sub_100139904();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Sending an empty batch so the client can know the current library version", buf, 2u);
        }
      }

      v54 = objc_alloc_init(CPLChangeBatch);
      v55 = *(a1[6] + 8);
      v56 = *(v55 + 40);
      *(v55 + 40) = v54;

      v57 = objc_loadWeakRetained((a1[4] + 113));
      v62 = 0;
      v58 = [v57 storeClientIsInSyncWithClientCacheWithError:&v62];
      v41 = v62;

      if (!v58)
      {

        goto LABEL_36;
      }

      v52 = a1[6];
    }

    a2 = v60;
    goto LABEL_49;
  }

  v19 = 0;
LABEL_51:
  if (a2 && (v19 & 1) == 0)
  {
    v59 = v18;
    v19 = 0;
    *a2 = v18;
  }

LABEL_8:

  return v19;
}

void sub_10013A89C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    [*(a1 + 32) endClientWork];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10013AA20;
    v13[3] = &unk_100272350;
    v5 = *(a1 + 32);
    v15 = *(a1 + 40);
    v14 = v3;
    [v5 dispatchCallback:v13];

    v6 = v15;
LABEL_5:

    goto LABEL_6;
  }

  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    v7 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10013AA80;
    v10[3] = &unk_10027AD28;
    v10[4] = v7;
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v11 = v8;
    v12 = v9;
    [v7 dispatchCallback:v10];
    v6 = v11;
    goto LABEL_5;
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    sub_1001B56A0(_CPLSilentLogging, a1);
  }

  sub_1001B5758(_CPLSilentLogging, a1);
LABEL_6:
}

void sub_10013AA20(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2, 0);
}

uint64_t sub_10013AA80(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 145));
  [WeakRetained willRunEngineElement:CPLEngineElementClientPullsBatch];

  v3 = *(*(a1[6] + 8) + 40);
  v4 = *(a1[5] + 16);

  return v4();
}

void sub_10013ADBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[CPLErrors libraryClosedError];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_10013AE24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 113));
  [WeakRetained dropUnacknowledgedBatch];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10013AF68;
  v11[3] = &unk_100279748;
  v11[4] = *(a1 + 32);
  [v4 do:v11];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013AFD0;
  v8[3] = &unk_10027ADC0;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v10 = *(a1 + 48);
  [v4 do:v8];
  v7 = [v4 error];

  if (!v7)
  {
    [*(a1 + 32) registerTentativeResetReason];
  }
}

id sub_10013AF68(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 113));
  v5 = [WeakRetained checkExpectedLibraryVersion:*(*(a1 + 32) + 97) error:a2];

  return v5;
}

uint64_t sub_10013AFD0(uint64_t a1, void *a2)
{
  if (qword_1002D2818 != -1)
  {
    sub_1001B580C();
  }

  v4 = *(*(a1 + 32) + 57);
  v5 = &OBJC_IVAR___CPLEngineLibrarySupervisor__pauseCount;
  if (!v4)
  {
    if (a2)
    {
      v14 = @"Trying to acknowledge a pulled batch before actually getting one";
      goto LABEL_18;
    }

LABEL_19:
    v19 = 0;
    goto LABEL_27;
  }

  if (([v4 isEqual:*(a1 + 40)] & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v6 = sub_100139904();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(*(a1 + 56));
        v8 = [*(*(a1 + 32) + 57) summaryDescription];
        v9 = [*(a1 + 40) summaryDescription];
        *buf = 138412802;
        v48 = v7;
        v49 = 2112;
        v50 = v8;
        v51 = 2112;
        v52 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Wrong batch passed in %@ - expected: %@ - ack: %@", buf, 0x20u);
      }
    }

    v10 = objc_autoreleasePoolPush();
    v11 = [*(*(a1 + 32) + 57) records];
    v12 = [*(a1 + 40) records];
    v13 = [v11 count];
    if (v13 == [v12 count])
    {
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_1001B4C5C;
      v45[3] = &unk_10027AD98;
      v46 = v12;
      [v11 enumerateObjectsUsingBlock:v45];
    }

    objc_autoreleasePoolPop(v10);
    v5 = &OBJC_IVAR___CPLEngineLibrarySupervisor__pauseCount;
    if (byte_1002D2810 == 1)
    {
      if (a2)
      {
        v14 = @"Client acknowledged an incorrect batch";
LABEL_18:
        [CPLErrors incorrectMachineStateErrorWithReason:v14];
        *a2 = v19 = 0;
        goto LABEL_27;
      }

      goto LABEL_19;
    }
  }

  v15 = *(a1 + 32);
  if (*(v15 + 81))
  {
    v16 = [CPLPullSessionScopesAcknowledgement alloc];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 113));
    v18 = [v16 initWithStore:WeakRetained scopesChangeBatch:*(*(a1 + 32) + 81)];
  }

  else if (*(v15 + 89))
  {
    v20 = [CPLPullSessionRevertRecords alloc];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 113));
    v18 = [v20 initWithStore:WeakRetained revertedChangesBatch:*(*(a1 + 32) + 89)];
  }

  else
  {
    if (!*(v15 + 65))
    {
      v41 = objc_loadWeakRetained((v15 + 113));
      v42 = [v41 libraryVersion];
      v43 = *(*(a1 + 48) + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v42;

      v19 = 1;
      goto LABEL_27;
    }

    v21 = [CPLPullSessionUpdate alloc];
    v22 = objc_loadWeakRetained((*(a1 + 32) + 113));
    v23 = v5;
    WeakRetained = v22;
    v18 = [v21 initWithStore:v22 expandedClientBatch:*(*(a1 + 32) + v23[627]) expandedCloudBatch:*(*(a1 + 32) + 65)];
  }

  v24 = v18;

  v25 = objc_loadWeakRetained((*(a1 + 32) + 113));
  v19 = [v25 storeChangeSessionUpdate:v24 error:a2];

  if (v19)
  {
    v26 = [v24 libraryVersion];
    v27 = *(*(a1 + 48) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;

    objc_storeStrong((*(a1 + 32) + 97), *(*(*(a1 + 48) + 8) + 40));
  }

  v5 = &OBJC_IVAR___CPLEngineLibrarySupervisor__pauseCount;
LABEL_27:
  v29 = *(a1 + 32);
  v30 = *(v29 + 57);
  *(v29 + 57) = 0;

  v31 = *(a1 + 32);
  v32 = *(v31 + 65);
  *(v31 + 65) = 0;

  v33 = *(a1 + 32);
  v34 = v5[627];
  v35 = *(v33 + v34);
  *(v33 + v34) = 0;

  v36 = *(a1 + 32);
  v37 = *(v36 + 81);
  *(v36 + 81) = 0;

  v38 = *(a1 + 32);
  v39 = *(v38 + 89);
  *(v38 + 89) = 0;

  return v19;
}

void sub_10013B464(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [v3 error];

    if (!v5)
    {
      sub_1001B5820(v4);
    }
  }

  v6 = [v4 error];

  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 endClientWork];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10013B618;
    v18[3] = &unk_100272350;
    v8 = *(a1 + 32);
    v20 = *(a1 + 40);
    v19 = v4;
    [v8 dispatchCallback:v18];

    v9 = v20;
  }

  else
  {
    v10 = [v7 abstractObject];
    v11 = [v10 libraryManager];
    [v11 _setLibraryVersion:*(*(*(a1 + 48) + 8) + 40)];

    *(*(a1 + 32) + 49) = 0;
    v12 = *(a1 + 32);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10013B678;
    v15[3] = &unk_10027AD28;
    v15[4] = v12;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v16 = v13;
    v17 = v14;
    [v12 dispatchCallback:v15];
    v9 = v16;
  }
}

void sub_10013B618(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2, 0);
}

uint64_t sub_10013B678(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 145));
  [WeakRetained willRunEngineElement:CPLEngineElementPullSweetSpot];

  v3 = *(*(a1[6] + 8) + 40);
  v4 = *(a1[5] + 16);

  return v4();
}

void sub_10013B904(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[CPLErrors libraryClosedError];
  (*(v1 + 16))(v1, v2);
}

void sub_10013B968(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 113));
  [WeakRetained dropUnacknowledgedBatch];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013BA6C;
  v7[3] = &unk_100279748;
  v7[4] = *(a1 + 32);
  [v4 do:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B4EE0;
  v6[3] = &unk_100279748;
  v6[4] = *(a1 + 32);
  [v4 do:v6];
}

id sub_10013BA6C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 113));
  v5 = [WeakRetained applyPreviousChangeSessionUpdateWithExpectedLibraryVersion:*(*(a1 + 32) + 97) error:a2];

  return v5;
}

void sub_10013BAD4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) endClientWork];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013BB8C;
  v7[3] = &unk_100272350;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 dispatchCallback:v7];
}

void sub_10013BB8C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_10013BC2C(id a1)
{
  v1 = [NSString alloc];
  v5 = +[NSProcessInfo processInfo];
  v2 = [v5 processName];
  v3 = [v1 initWithFormat:@"%@ unexpectedly quit during pull session", v2];
  v4 = qword_1002D2828;
  qword_1002D2828 = v3;
}

void sub_10013BDC0(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "client.session.pull.direct");
  v3 = qword_1002D2838;
  qword_1002D2838 = v2;
}

__n128 sub_10013BE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  result = a9;
  *(v10 - 128) = a9.n128_u32[0];
  *(v10 - 124) = v9;
  return result;
}

id sub_10013BE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = (*(v15 + 32) + a15);

  return objc_loadWeakRetained(v17);
}

void sub_10013BE4C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10013C07C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 33) & 1) == 0 && (*(v1 + 32) & 1) == 0)
  {
    [CPLTransaction beginTransactionWithIdentifier:@"cpl.clientwork" description:@"client work" keepPower:1];
    v3 = [*(*(a1 + 32) + 40) engineLibrary];
    v4 = [v3 syncManager];
    v5 = [*(a1 + 32) clientWorkDescription];
    [v4 beginClientWork:v5];

    *(*(a1 + 32) + 32) = 1;
  }
}

void sub_10013C358(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10013C418;
    v8[3] = &unk_1002727E8;
    v8[4] = v5;
    v7 = *(a1 + 48);
    v9 = *(a1 + 56);
    [v5 beginDirectSessionWithKnownLibraryVersion:v6 context:v7 completionHandler:v8];
  }
}

void sub_10013C418(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  if (v3)
  {
    v5 = [*(v4 + 40) engineLibrary];
    [v5 endChangeSessionWithSessionToken:*(a1 + 32)];
  }

  else
  {
    *(v4 + 48) = 1;
  }

  (*(*(a1 + 40) + 16))();
}

void *sub_10013C674(void *result)
{
  v1 = result[4];
  if (*(v1 + 32) == 1)
  {
    v2 = result;
    v3 = [*(v1 + 40) engineLibrary];
    v4 = [v3 syncManager];
    v5 = [v2[4] clientWorkDescription];
    [v4 endClientWork:v5];

    result = [CPLTransaction endTransactionWithIdentifier:@"cpl.clientwork"];
    *(v2[4] + 32) = 0;
  }

  return result;
}

void *sub_10013C8D0(void *result)
{
  v1 = result;
  v2 = result[4];
  if (*(v2 + 32) == 1)
  {
    v3 = [*(v2 + 40) engineLibrary];
    v4 = [v3 syncManager];
    v5 = [v1[4] clientWorkDescription];
    [v4 endClientWork:v5];

    result = [CPLTransaction endTransactionWithIdentifier:@"cpl.clientwork"];
    *(v1[4] + 32) = 0;
    v2 = v1[4];
  }

  if ((*(v2 + 33) & 1) == 0)
  {
    *(v2 + 33) = 1;
    *(*(v1[5] + 8) + 24) = 1;
  }

  return result;
}

uint64_t sub_10013C9A8(uint64_t a1)
{
  [*(a1 + 32) dropUnacknowledgedBatch];
  v2 = *(a1 + 40);
  if (*(v2 + 48) == 1)
  {
    v3 = [*(v2 + 40) engineLibrary];
    [v3 endChangeSessionWithSessionToken:*(a1 + 40)];
  }

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void sub_10013CC04(id a1)
{
  v1 = [NSString alloc];
  v5 = +[NSProcessInfo processInfo];
  v2 = [v5 processName];
  v3 = [v1 initWithFormat:@"%@ unexpectedly quit during generic session", v2];
  v4 = qword_1002D2848;
  qword_1002D2848 = v3;
}

id sub_10013D210()
{
  if (qword_1002D2860 != -1)
  {
    sub_1001B5D10();
  }

  v1 = qword_1002D2868;

  return v1;
}

void sub_10013D254(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[CPLErrors libraryClosedError];
  (*(v1 + 16))(v1, v2);
}

void sub_10013D2B8(uint64_t a1, void *a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10013D39C;
  v9[3] = &unk_100279BE0;
  v4 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v4;
  v11 = *(a1 + 48);
  [a2 do:v9];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 73));
  v6 = [WeakRetained libraryVersion];
  v7 = *(a1 + 32);
  v8 = *(v7 + 57);
  *(v7 + 57) = v6;
}

id sub_10013D39C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 73));
  v5 = [*(a1 + 32) abstractObject];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) resetTracker];
  LODWORD(v6) = [WeakRetained beginChangeSession:v5 withLibraryVersion:v6 resetTracker:v7 error:a2];

  if (!v6)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = objc_loadWeakRetained((v8 + 73));
  v11 = [v8 processSessionContext:v9 inStore:v10 error:a2];

  return v11;
}

void sub_10013D478(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  if (!v3)
  {
    [*(a1 + 32) beginClientWork];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013D53C;
  v7[3] = &unk_100272350;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 dispatchCallback:v7];
}

void sub_10013D784(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[CPLErrors libraryClosedError];
  (*(v1 + 16))(v1, v2);
}

void sub_10013D7E8(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013D8C8;
  v5[3] = &unk_100279748;
  v5[4] = *(a1 + 32);
  v3 = a2;
  [v3 do:v5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001B59E8;
  v4[3] = &unk_100279748;
  v4[4] = *(a1 + 32);
  [v3 do:v4];
}

id sub_10013D8C8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 73));
  v5 = [WeakRetained applyPreviousChangeSessionUpdateWithExpectedLibraryVersion:*(*(a1 + 32) + 57) error:a2];

  return v5;
}

void sub_10013D930(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) endClientWork];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013D9E8;
  v7[3] = &unk_100272350;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 dispatchCallback:v7];
}

void sub_10013D9E8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

void sub_10013DD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10013DDC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[CPLErrors libraryClosedError];
  (*(v1 + 16))(v1, v2, 0, 0, 0);
}

void sub_10013DE30(uint64_t a1, void *a2)
{
  v3 = a2;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10013E2FC;
  v34[3] = &unk_100279748;
  v4 = (a1 + 32);
  v34[4] = *(a1 + 32);
  [v3 do:v34];
  v5 = [v3 error];

  if (v5)
  {
    goto LABEL_26;
  }

  v6 = *(a1 + 40);
  if (CPLIsInTestReadonlyMode() && [v6 count])
  {
    sub_1001B5D24(v6, buf);
    v6 = *buf;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 73));
  [WeakRetained assertNoUnacknowledgedChanges];

  v8 = [CPLPushSessionTracker alloc];
  v9 = objc_loadWeakRetained((*(a1 + 32) + 73));
  v33 = 0;
  v10 = [v8 initWithIncomingBatch:v6 store:v9 error:&v33];
  v11 = v33;
  v12 = a1 + 48;
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v15 = +[NSDate date];
    [*(*(*v12 + 8) + 40) setNow:v15];
    v16 = *(*(*v12 + 8) + 40);
    v32 = 0;
    v17 = [v16 computeExpandedBatchWithError:&v32];
    v18 = v32;
    if (v17)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v19 = sub_10013D210();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = [*(*(*v12 + 8) + 40) expandedBatch];
          *buf = 138412546;
          *&buf[4] = v6;
          v36 = 2112;
          v37 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Expanded batch from: \n%@\nis:\n%@", buf, 0x16u);
        }
      }

      if (([*(*(*v12 + 8) + 40) computeDiff] & 1) == 0)
      {
        sub_1001B5DF8(a1, (a1 + 32), a1 + 48);
      }

      if ((*(*v4 + 50) & 1) == 0)
      {
        *(*v4 + 50) = [*(*(*v12 + 8) + 40) diffedBatchCanLowerQuota];
      }

      v21 = [*(*(*v12 + 8) + 40) diffedBatch];
    }

    else
    {
      [v3 setError:v18];
      v21 = 0;
    }
  }

  else
  {
    sub_1001B5F24(v11, v3);
    v21 = 0;
  }

  v22 = [v3 error];
  if (v22)
  {
  }

  else if ([v21 count] || (objc_msgSend(*(*(*v12 + 8) + 40), "revertedChanges"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "count"), v25, v26))
  {
    v30[2] = _NSConcreteStackBlock;
    v30[3] = 3221225472;
    v30[4] = sub_10013E364;
    v30[5] = &unk_10027AEC0;
    v27 = *(a1 + 48);
    v30[6] = *(a1 + 32);
    v30[7] = v27;
    v23 = &v31;
    v24 = (a1 + 56);
    goto LABEL_23;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 57));
  v29[5] = _NSConcreteStackBlock;
  v29[6] = 3221225472;
  v29[7] = sub_10013E44C;
  v29[8] = &unk_10027AEE8;
  v30[1] = *(a1 + 48);
  v23 = v30;
  v24 = (a1 + 32);
LABEL_23:
  *v23 = *v24;
  [v3 do:?];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10013E4B4;
  v29[3] = &unk_10027AF10;
  v29[4] = *v12;
  [v3 do:v29];
  v28 = [v3 error];

  if (!v28)
  {
    [*v4 registerTentativeResetReason];
  }

LABEL_26:
}

id sub_10013E2FC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 73));
  v5 = [WeakRetained applyPreviousChangeSessionUpdateWithExpectedLibraryVersion:*(*(a1 + 32) + 57) error:a2];

  return v5;
}

uint64_t sub_10013E364(void *a1, uint64_t a2)
{
  v4 = [[CPLPushSessionUpdate alloc] initWithPushSessionTracker:*(*(a1[5] + 8) + 40) error:a2];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 73));
    v6 = [WeakRetained storeChangeSessionUpdate:v4 error:a2];

    if (v6)
    {
      v7 = [v4 libraryVersion];
      v8 = *(a1[6] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = 1;
      *(a1[4] + 49) = 1;
      objc_storeStrong((a1[4] + 57), *(*(a1[6] + 8) + 40));
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10013E44C(uint64_t a1, uint64_t a2)
{
  result = [*(*(*(a1 + 40) + 8) + 40) notifyClientOfStatusChangesIfNecessaryWithError:a2];
  if (result)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 73));
    v6 = [WeakRetained storeClientIsInSyncWithClientCacheWithError:a2];

    return v6;
  }

  return result;
}

void sub_10013E4C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [v3 error];

    if (!v5)
    {
      sub_1001B5FF0(v4);
    }
  }

  v6 = [v4 error];

  if (v6)
  {
    [*(a1 + 32) endClientWork];
    v7 = *(a1 + 32);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10013E734;
    v17[3] = &unk_100272A38;
    v8 = v4;
    v21 = *(a1 + 64);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v18 = v8;
    v19 = v9;
    v20 = v10;
    [v7 dispatchCallback:v17];

    v11 = v18;
  }

  else
  {
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      sub_1001B6090(a1);
    }

    v12 = [*(a1 + 32) abstractObject];
    v13 = [v12 libraryManager];
    [v13 _setLibraryVersion:*(*(*(a1 + 48) + 8) + 40)];

    v14 = *(a1 + 32);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10013E6A4;
    v22[3] = &unk_10027AF60;
    v22[4] = v14;
    v15 = *(a1 + 40);
    v16 = *(a1 + 64);
    v23 = v15;
    v24 = v16;
    v25 = *(a1 + 48);
    [v14 dispatchCallback:v22];
    v11 = v23;
  }
}

uint64_t sub_10013E6A4(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 89));
  [WeakRetained willRunEngineElement:CPLEngineElementPushSweetSpot];

  v3 = a1[5];
  v4 = [*(*(a1[6] + 8) + 40) ignoredRecordCount];
  v5 = *(v3 + 16);
  v6 = *(*(a1[7] + 8) + 40);

  return v5(v3, 0, v4, 0, v6);
}

void sub_10013E734(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  v3 = [v2 isCPLErrorWithCode:18];

  if (v3)
  {
    v4 = [*(*(*(a1 + 56) + 8) + 40) pushChangeTasks];
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = sub_100004570;
    v13[4] = sub_10000539C;
    v14 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10013E8C8;
    v9[3] = &unk_10027AF88;
    v5 = objc_alloc_init(NSMutableIndexSet);
    v6 = *(a1 + 40);
    v10 = v5;
    v11 = v6;
    v12 = v13;
    [v4 enumerateScopedTasksWithBlock:v9];

    _Block_object_dispose(v13, 8);
  }

  else
  {
    v4 = 0;
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) error];
  (*(v7 + 16))(v7, v8, 0, v4, 0);
}

void sub_10013E8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013E8C8(uint64_t a1, uint64_t a2)
{
  if (([*(a1 + 32) containsIndex:a2] & 1) == 0)
  {
    [*(a1 + 32) addIndex:a2];
    v4 = *(*(*(a1 + 48) + 8) + 40);
    if (!v4)
    {
      v5 = [*(a1 + 40) abstractObject];
      v6 = [v5 libraryManager];
      v7 = [v6 platformObject];
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 65));
      v9 = [v7 displayableNameForEngineLibrary:WeakRetained];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v4 = *(*(*(a1 + 48) + 8) + 40);
    }

    v12 = [CPLPushChangeTasks descriptionForTaskType:a2];
    [CPLResetTracker registerLikelyResetReason:@"Rejected record pushed by %@ (%@)", v4, v12];
  }
}

void sub_10013EA54(id a1)
{
  v1 = [NSString alloc];
  v5 = +[NSProcessInfo processInfo];
  v2 = [v5 processName];
  v3 = [v1 initWithFormat:@"%@ unexpectedly quit during push session", v2];
  v4 = qword_1002D2858;
  qword_1002D2858 = v3;
}

void sub_10013EB78(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "client.session.push.direct");
  v3 = qword_1002D2868;
  qword_1002D2868 = v2;
}

id sub_10013EE4C()
{
  if (qword_1002D29C8 != -1)
  {
    sub_1001B70B8();
  }

  v1 = qword_1002D29D0;

  return v1;
}

void sub_10013EF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013EF70()
{
  if (qword_1002D29E0 != -1)
  {
    sub_1001B70CC();
  }

  v1 = qword_1002D29D8;

  return v1;
}

void sub_10013EFB4(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  if ([a3 containsIndex:a1[5]] && (a1[6] & objc_msgSend(v7, "integerValue")) != 0)
  {
    *(*(a1[4] + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10013F10C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ((*(a1 + 40) & [a2 integerValue]) != 0)
  {
    [*(a1 + 32) addIndexes:v5];
  }
}

id sub_1001417D0(id a1, id a2)
{
  if (a2)
  {
    return a2;
  }

  else
  {
    return &stru_10027C2F0;
  }
}

id sub_1001417F4(id a1, id a2)
{
  if (a2)
  {
    return a2;
  }

  else
  {
    return &off_10028EF20;
  }
}

id sub_100141808(id a1, id a2)
{
  if (a2)
  {
    return a2;
  }

  else
  {
    return &off_10028EF20;
  }
}

id sub_10014181C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v4 = [v2 engineLibrary];
    v5 = [v4 transport];
    v6 = [v5 transportScopeForUpgradeFromScopeName:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1001418A4(id a1, id a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &off_10028EF50;
  }

  return v4;
}

void sub_100141CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_100141D0C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) mainTable];
  v8 = *(a1 + 40);
  v9 = *(v8 + 68);
  v10 = [*(v8 + 60) scopeTypeVar];
  *(*(*(a1 + 48) + 8) + 24) = [v6 cplExecute:{@"UPDATE %@ SET %@ = (%@ | %ld) WHERE %@ = %ld", v7, v9, v9, 0x10000, v10, a2}];

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    *(*(*(a1 + 56) + 8) + 24) += [*(a1 + 32) changes];
  }

  else
  {
    *a3 = 1;
  }
}

id sub_100141DF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CPLEngineScope alloc];
  v5 = [*(*(a1 + 32) + 60) valuesInSet:v3];

  v6 = [v4 initWithPrequeliteDictionary:v5 base:*(*(a1 + 32) + 60)];

  return v6;
}

void sub_100141F40(id a1, sqlite3_context *a2, int a3, sqlite3_value **a4)
{
  if (sqlite3_value_type(*a4) == 1)
  {
    v6 = sqlite3_value_int(*a4);
    if ((v6 & 0x80000000) != 0)
    {
      LODWORD(v7) = 9;
    }

    else
    {
      LODWORD(v7) = v6;
      if (v6 <= 9)
      {
        v8 = a4[1];
        v7 = *(pql_sqlite3_value_pointer() + 8 * v7);
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  sqlite3_result_int(a2, v7);
}

id sub_10014261C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CPLEngineScope alloc];
  v5 = [*(*(a1 + 32) + 60) valuesInSet:v3];

  v6 = [v4 initWithPrequeliteDictionary:v5 base:*(*(a1 + 32) + 60)];

  return v6;
}

id sub_1001426BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CPLEngineScope alloc];
  v5 = [*(*(a1 + 32) + 60) valuesInSet:v3];

  v6 = [v4 initWithPrequeliteDictionary:v5 base:*(*(a1 + 32) + 60)];

  return v6;
}

id sub_100142944(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CPLEngineScope alloc];
  v5 = [*(*(a1 + 32) + 60) valuesInSet:v3];

  v6 = [v4 initWithPrequeliteDictionary:v5 base:*(*(a1 + 32) + 60)];

  return v6;
}

id sub_100142B0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CPLEngineScope alloc];
  v5 = [*(*(a1 + 32) + 60) valuesInSet:v3];

  v6 = [v4 initWithPrequeliteDictionary:v5 base:*(*(a1 + 32) + 60)];

  return v6;
}

id sub_100142DEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CPLEngineScope alloc];
  v5 = [*(*(a1 + 32) + 60) valuesInSet:v3];

  v6 = [v4 initWithPrequeliteDictionary:v5 base:*(*(a1 + 32) + 60)];

  return v6;
}

id sub_10014319C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CPLEngineScope alloc];
  v5 = [*(*(a1 + 32) + 60) valuesInSet:v3];

  v6 = [v4 initWithPrequeliteDictionary:v5 base:*(*(a1 + 32) + 60)];

  return v6;
}

id sub_100143718(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CPLEngineScope alloc];
  v5 = [*(*(a1 + 32) + 60) valuesInSet:v3];

  v6 = [v4 initWithPrequeliteDictionary:v5 base:*(*(a1 + 32) + 60)];

  return v6;
}

id sub_100143D40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CPLEngineScope alloc];
  v5 = [*(*(a1 + 32) + 60) valuesInSet:v3];

  v6 = [v4 initWithPrequeliteDictionary:v5 base:*(*(a1 + 32) + 60)];

  return v6;
}

id sub_1001440D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CPLEngineScope alloc];
  v5 = [*(*(a1 + 32) + 60) valuesInSet:v3];

  v6 = [v4 initWithPrequeliteDictionary:v5 base:*(*(a1 + 32) + 60)];

  return v6;
}

id sub_1001443C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CPLEngineScope alloc];
  v5 = [*(*(a1 + 32) + 60) valuesInSet:v3];

  v6 = [v4 initWithPrequeliteDictionary:v5 base:*(*(a1 + 32) + 60)];

  return v6;
}

id sub_10014478C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CPLEngineScope alloc];
  v5 = [*(*(a1 + 32) + 60) valuesInSet:v3];

  v6 = [v4 initWithPrequeliteDictionary:v5 base:*(*(a1 + 32) + 60)];

  return v6;
}

id sub_1001453E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CPLEngineScope alloc];
  v5 = [*(*(a1 + 32) + 60) valuesInSet:v3];

  v6 = [v4 initWithPrequeliteDictionary:v5 base:*(*(a1 + 32) + 60)];

  return v6;
}

void sub_100145C60(id a1)
{
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = [v1 initWithObjects:{v2, objc_opt_class(), 0}];
  v4 = qword_1002D29B0;
  qword_1002D29B0 = v3;
}

id sub_100146990(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 260) valuesInSet:a2];
  v4 = objc_alloc_init(CPLLibraryState);
  v5 = [v3 objectForKeyedSubscript:*(*(a1 + 32) + 68)];
  [v4 setDisabled:{(objc_msgSend(v5, "integerValue") >> 3) & 1}];

  v6 = [v3 objectForKeyedSubscript:*(*(a1 + 32) + 76)];
  [v4 setDisabledDate:v6];

  v7 = [v3 objectForKeyedSubscript:*(*(a1 + 32) + 84)];
  [v4 setDeleteDate:v7];

  return v4;
}

id sub_100148180(uint64_t a1)
{
  v2 = [*(a1 + 32) pqStore];
  v3 = [*(a1 + 32) mainTable];
  v4 = [*(*(a1 + 32) + 124) stagedSyncAnchorVar];
  v5 = [PQLFormatInjection formatInjection:@"(%@ IS NOT NULL)", v4];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 table:v3 hasRecordsMatchingQuery:v5]);

  return v6;
}

id sub_100149304()
{
  if (qword_1002D29F0 != -1)
  {
    sub_1001B7D08();
  }

  v1 = qword_1002D29E8;

  return v1;
}

void sub_10014AB9C(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.scopestorage.pql");
  v3 = qword_1002D29D0;
  qword_1002D29D0 = v2;
}

void sub_10014ABDC(id a1)
{
  v28[0] = &off_10028F040;
  v1 = [NSIndexSet indexSetWithIndex:1];
  v29[0] = v1;
  v28[1] = &off_10028F058;
  v9 = sub_10014AD10(2, v2, v3, v4, v5, v6, v7, v8, 3);
  v29[1] = v9;
  v28[2] = &off_10028F070;
  v17 = sub_10014AD10(4, v10, v11, v12, v13, v14, v15, v16, 5);
  v29[2] = v17;
  v28[3] = &off_10028F088;
  v25 = sub_10014AD10(7, v18, v19, v20, v21, v22, v23, v24, 8);
  v29[3] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:4];
  v27 = qword_1002D29D8;
  qword_1002D29D8 = v26;
}

id sub_10014AD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = &a9;
  v10 = objc_alloc_init(NSMutableIndexSet);
  v11 = v10;
  v12 = a1;
  while (1)
  {
    [v10 addIndex:v12];
    v13 = v15++;
    v12 = *v13;
    if (!*v13)
    {
      break;
    }

    v10 = v11;
  }

  return v11;
}

void sub_10014AD88(id a1)
{
  v1 = [PQLNameInjection nameWithString:@"scopeIndex"];
  v2 = qword_1002D29E8;
  qword_1002D29E8 = v1;
}

id sub_10014ADD0(uint64_t a1)
{

  return [v1 _storeValue:0 forColumnVariable:a1 scope:v2 error:v3];
}

void sub_10014ADF8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_DEFAULT, a4, &buf, 0xCu);
}

id sub_10014BE6C()
{
  if (qword_1002D29F8 != -1)
  {
    sub_1001B8114();
  }

  v1 = qword_1002D2A00;

  return v1;
}

void sub_10014C510(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.store.pql.migration.101386451");
  v3 = qword_1002D2A00;
  qword_1002D2A00 = v2;
}

id sub_10014C718()
{
  if (qword_1002D2A08 != -1)
  {
    sub_1001B8910();
  }

  v1 = qword_1002D2A10;

  return v1;
}

void sub_10014DC10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v12 = [v5 additionalStatusForScopeWithIndex:objc_msgSend(v6 baseRecordCount:{"integerValue"), a3}];
  v7 = [NSMutableString alloc];
  v8 = [*(a1 + 32) recordsDesignation];
  if (v12)
  {
    v9 = [v7 initWithFormat:@"%lu %@ (%@)", a3, v8, v12];
  }

  else
  {
    v9 = [v7 initWithFormat:@"%lu %@", a3, v8, v11];
  }

  v10 = v9;
  [*(a1 + 40) setObject:v9 forKeyedSubscript:v6];
}

id sub_10014DE08(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 addIndex:v3];
}

void sub_10014EC50(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.storage.pql");
  v3 = qword_1002D2A10;
  qword_1002D2A10 = v2;
}

id sub_10014EDBC()
{
  if (qword_1002D2B00 != -1)
  {
    sub_1001B9B1C();
  }

  v1 = qword_1002D2B08;

  return v1;
}

void *sub_10014EEE8(void *result)
{
  v1 = result[4];
  if (*(v1 + 16) == result[5] && *(v1 + 24) > 0.0)
  {
    return sub_1001B9BE4((v1 + 24), result + 4);
  }

  return result;
}

id sub_10014F05C(uint64_t a1)
{
  if (![*(*(a1 + 32) + 8) count])
  {
    [*(a1 + 32) _actuallyStartShowingIndicatorLocked];
  }

  [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _emitActivityStateLog];
}

id sub_10014F1E4(uint64_t a1)
{
  v2 = (a1 + 32);
  if (![*(*(a1 + 32) + 8) countForObject:*(a1 + 40)])
  {
    sub_1001B9C9C(a1, v2);
  }

  result = [*(*(a1 + 32) + 8) countForObject:*(a1 + 40)];
  if (result)
  {
    [*(*(a1 + 32) + 8) removeObject:*(a1 + 40)];
    [*(a1 + 32) _emitActivityStateLog];
    result = [*(*(a1 + 32) + 8) count];
    if (!result)
    {
      v4 = *v2;

      return [v4 _actuallyStopShowingIndicatorLocked];
    }
  }

  return result;
}

void sub_10014FCB4(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.syncmanager.activity");
  v3 = qword_1002D2B08;
  qword_1002D2B08 = v2;
}

void sub_10014FCF4(id a1)
{
  v1 = _CPLOSLogSubsystem();
  v2 = os_log_create(v1, "engine.syncmanager.syncstate");
  v3 = qword_1002D2B18;
  qword_1002D2B18 = v2;
}

void sub_10014FD34(id a1)
{
  v1 = 0;
  v2 = 0;
  do
  {
    v3 = qword_10024B948[v1];
    qword_1002D2A20[v1] = v3;
    qword_1002D2A90[v1] = v2;
    v2 += v3;
    ++v1;
  }

  while (v1 != 13);
  qword_1002D2A18 = v2;
}

BOOL sub_10014FD8C(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

id sub_100150214()
{
  if (qword_1002D2B30 != -1)
  {
    sub_1001BBF64();
  }

  v1 = qword_1002D2B38;

  return v1;
}

void sub_1001505E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10015060C()
{
  if (qword_1002D2B40 != -1)
  {
    sub_1001BC144();
  }

  v1 = qword_1002D2B48;

  return v1;
}

void sub_1001508E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1001508B4);
  }

  _Unwind_Resume(a1);
}

void sub_100150900(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x10015090CLL);
}

id *sub_100150EE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = (a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    return sub_1001BC3A0(result, 32, v3);
  }

  return result;
}

void sub_1001532C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_100153338(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_copyWeak(&to, (a1 + 32));
  v10 = objc_loadWeakRetained(&to);
  v11 = v10 == 0;

  if (v11)
  {
    sub_1001BCF00();
    v37 = +[NSAssertionHandler currentHandler];
    v38 = *(a1 + 48);
    v39 = objc_loadWeakRetained(&to);
    v40 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStore.m"];
    [v37 handleFailureInMethod:v38 object:v39 file:v40 lineNumber:1196 description:@"Prequelite store is not referenced anymore"];

    abort();
  }

  v12 = [v9 domain];
  v13 = [v12 isEqual:PQLSqliteErrorDomain];

  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = [v9 code];
  if (v14 <= 0x1Au && ((1 << v14) & 0x5000800) != 0)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = +[NSDate date];
    [v15 setObject:v16 forKeyedSubscript:@"date"];

    v17 = [NSNumber numberWithInteger:v14];
    [v15 setObject:v17 forKeyedSubscript:@"SQLErrorCode"];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v19 = [WeakRetained dbHandle];

    if (v19)
    {
      v20 = sqlite3_errmsg(v19);
      if (v20)
      {
        v21 = [[NSString alloc] initWithFormat:@"corrupted database: %s", v20];
        [v15 setObject:v21 forKeyedSubscript:@"comment"];
      }

      v22 = [NSNumber numberWithInt:sqlite3_extended_errcode(v19)];
      [v15 setObject:v22 forKeyedSubscript:@"extendedSQLErrorCode"];
    }

    v23 = [NSNumber numberWithInt:*__error()];
    [v15 setObject:v23 forKeyedSubscript:@"POSIXErrorCode"];

    v24 = objc_loadWeakRetained(&to);
    v25 = [v24 abstractObject];
    v26 = [v25 engineLibrary];
    v27 = [v26 systemMonitor];
    v28 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v27 freeDiskSpaceSize]);
    [v15 setObject:v28 forKeyedSubscript:@"FreeDiskSpace"];

    if ((_CPLSilentLogging & 1) == 0)
    {
      v29 = sub_100150214();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v15;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Database is corrupted. Extra information:\n%@", buf, 0xCu);
      }
    }

    v30 = objc_loadWeakRetained(&to);
    [v30 _markLibraryAsCorruptedWithInfo:v15];

    v31 = objc_loadWeakRetained((a1 + 40));
    v32 = [CPLErrors cplErrorWithCode:3 underlyingError:v9 userInfo:0 description:@"Library is corrupted"];
    [v31 setLastError:v32];

    v33 = +[NSNotificationCenter defaultCenter];
    v34 = objc_loadWeakRetained(&to);
    v35 = [v34 abstractObject];
    v36 = [v35 engineLibrary];
    [v33 postNotificationName:CPLLibraryMustBeWipedNotificationName object:v36];

LABEL_18:
    goto LABEL_19;
  }

  if ([v9 code] != 19)
  {
LABEL_15:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = sub_100150214();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v43 = v8;
        v44 = 2112;
        v45 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "SQL error executing %@: %@", buf, 0x16u);
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  objc_destroyWeak(&to);
}

void sub_100153BFC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v3 = *(a1 + 32);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v19 = sub_100153E74;
  v20 = &unk_100272028;
  v21 = v3;
  v22 = &v23;
  v4 = v18;
  os_unfair_lock_lock(v3 + 6);
  v19(v4);
  os_unfair_lock_unlock(v3 + 6);

  v5 = *(a1 + 32);
  if (!v5[4] || *(v24 + 24) == 1)
  {
    sub_1001BD0BC(a1);
    v7 = *(a1 + 40);
    v8 = +[CPLErrors libraryClosedError];
    [v7 setError:v8];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100004580;
    v16 = sub_1000053A4;
    v17 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100153E90;
    v9[3] = &unk_10027B558;
    v10 = *(a1 + 48);
    v11 = &v12;
    [v5 _performWithFlags:2 action:v9];
    v6 = v13[5];
    if (v6)
    {
      objc_exception_throw(v6);
    }

    _Block_object_dispose(&v12, 8);
  }

  _Block_object_dispose(&v23, 8);
  objc_autoreleasePoolPop(v2);
}

void sub_100153E40(_Unwind_Exception *a1)
{
  objc_end_catch();
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100153E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  JUMPOUT(0x100153E60);
}

BOOL sub_100153E90(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  v4 = *(*(*(a1 + 40) + 8) + 40) == 0;

  return v4;
}

void sub_100154090(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3[4])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100004580;
    v17 = sub_1000053A4;
    v18 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100154268;
    v9[3] = &unk_10027B580;
    v11 = *(a1 + 56);
    v12 = &v13;
    v10 = *(a1 + 40);
    v4 = [v3 _performWithFlags:10 action:v9];
    v5 = v14[5];
    if (v5)
    {
      objc_exception_throw(v5);
    }

    v6 = *(a1 + 48);
    if (v4)
    {
      (*(v6 + 16))(*(a1 + 48), 0);
    }

    else
    {
      v7 = [*(a1 + 40) error];
      v8 = v7;
      if (!v7)
      {
        v8 = [*(*(a1 + 32) + 32) lastCPLError];
      }

      (*(v6 + 16))(v6, v8);
      if (!v7)
      {
      }
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    sub_1001BD1C0(a1);
  }

  objc_autoreleasePoolPop(v2);
}