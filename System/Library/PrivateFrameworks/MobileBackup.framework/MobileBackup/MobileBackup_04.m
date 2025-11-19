uint64_t sub_1000AC6D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domainName];
  v5 = [v3 relativePath];
  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
    if (!v6)
    {
      v6 = objc_opt_new();
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v4];
    }

    v7 = [NSMutableArray arrayWithCapacity:3];
    [v7 addObject:v5];
    v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 size]);
    v9 = [v8 stringValue];
    [v7 addObject:v9];

    if ([v3 deleted])
    {
      v10 = @"-";
    }

    else if ([v3 isRegularFile])
    {
      v10 = @"f";
    }

    else if ([v3 isDirectory])
    {
      v10 = @"d";
    }

    else if ([v3 isSymbolicLink])
    {
      v10 = @"l";
    }

    else
    {
      v10 = @"?";
    }

    [v7 addObject:v10];
    v11 = [v7 componentsJoinedByString:@"|"];
    [v6 addObject:v11];
  }

  return 1;
}

void sub_1000AE2E4(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceState];
  if (v2 == 4 || [*(a1 + 32) serviceState] == 5)
  {
    v3 = [*(a1 + 32) enginesByContext];
    v4 = [v3 objectForKey:*(a1 + 40)];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = MBGetDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        if (v2 == 4)
        {
          v7 = "foreground";
        }

        else
        {
          v7 = "background";
        }

        *buf = 136315394;
        v10 = v7;
        v11 = 2112;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Canceling %s restore for %@", buf, 0x16u);
        v8 = *(a1 + 40);
        _MBLog();
      }

      [v4 cancelWithReason:*(a1 + 48)];
    }
  }
}

id sub_1000AE540(uint64_t a1)
{
  if ([*(a1 + 32) serviceState])
  {
    v2 = [*(a1 + 32) engines];
    [v2 makeObjectsPerformSelector:"cancel"];
  }

  else
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Ignoring cancel request while idle", v5, 2u);
      _MBLog();
    }
  }

  v3 = *(a1 + 40);
  return objc_opt_self();
}

void sub_1000AE76C(uint64_t a1)
{
  if ([*(a1 + 32) serviceState] == 3)
  {
    if (*(a1 + 48))
    {
      v2 = [*(a1 + 32) enginesByContext];
      v3 = [v2 objectForKey:*(a1 + 48)];

      [v3 cancelWithError:*(a1 + 56)];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = [*(a1 + 32) engines];
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v21;
        do
        {
          v15 = 0;
          do
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v20 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v16 cancelWithError:*(a1 + 56)];
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v13);
      }
    }

    v17 = *(a1 + 64);
    v18 = objc_opt_self();
  }

  else
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 40) accountIdentifier];
      v6 = [*(a1 + 40) persona];
      v7 = [v6 personaIdentifier];
      v8 = [*(a1 + 32) serviceState];
      *buf = 138543874;
      v26 = v5;
      v27 = 2114;
      v28 = v7;
      v29 = 1024;
      v30 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ignoring cancelation request for account %{public}@(%{public}@) (%d)", buf, 0x1Cu);

      v9 = [*(a1 + 40) accountIdentifier];
      v10 = [*(a1 + 40) persona];
      v19 = [v10 personaIdentifier];
      [*(a1 + 32) serviceState];
      _MBLog();
    }
  }
}

id sub_1000AED5C(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1000AED90(void *a1)
{
  if (*(*(a1[6] + 8) + 40))
  {
    [*(a1[4] + 184) allPersonaStates];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = v14 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v12;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if ([*(*(&v11 + 1) + 8 * v6) serviceState])
          {

            goto LABEL_12;
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    dispatch_block_cancel(*(*(a1[6] + 8) + 40));
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;

    v9 = *(a1[7] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    (*(a1[5] + 16))();
LABEL_12:
  }
}

void sub_1000AEF00(void *a1)
{
  if (*(*(a1[6] + 8) + 40))
  {
    [*(a1[4] + 184) allPersonaStates];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v2 = v27 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v3)
    {
      v4 = 0;
      v5 = *v25;
      v6 = 1;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v24 + 1) + 8 * v7) serviceState];
        if ((v8 & 0xFFFFFFFD) == 1)
        {
          break;
        }

        if (v8)
        {
          v4 = v8;
        }

        v6 &= v8 == 0;
        if (v3 == ++v7)
        {
          v3 = [v2 countByEnumeratingWithState:&v24 objects:v30 count:16];
          if (v3)
          {
            goto LABEL_4;
          }

          if (v6)
          {
            v3 = 0;
            goto LABEL_26;
          }

          v13 = MBGetDefaultLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v29 = v4;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Ignoring backup/scan task cancelation request while busy (%d)", buf, 8u);
            _MBLog();
          }

          v14 = @"Not in idle state";
          goto LABEL_23;
        }
      }

      [*(a1[4] + 176) makeObjectsPerformSelector:"cancel"];
      v9 = a1[9];
      if (!v9)
      {
        goto LABEL_20;
      }

      if (v9 <= 5)
      {
        v9 = 5;
      }

      v10 = v9;
      v11 = *(a1[7] + 8);
      v12 = *(v11 + 24);
      if (v12 >= v10 / 5)
      {
LABEL_20:
        v13 = MBGetDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v29 = v4;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Timed out while waiting for backup/scan engine cancelation (%d)", buf, 8u);
          _MBLog();
        }

        v14 = @"Not in idle state (timeout)";
LABEL_23:

        v3 = [MBError errorWithCode:14 format:v14];
        if (!v3)
        {
          __assert_rtn("[MBCKManager _cancelBackupAndScanEnginesWithTimeout:completion:]_block_invoke", "MBCKManager.m", 4361, "isIdle || cancelError");
        }

        goto LABEL_26;
      }

      if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v12, 2) < 0x1555555555555556uLL)
      {
        v19 = MBGetDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v29 = v4;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Waiting for backup/scan engine cancelation (%d)", buf, 8u);
          _MBLog();
        }

        v20 = *(a1[7] + 8);
        v21 = *(v20 + 24);
        *(v20 + 24) = v21 + 1;
        if (!v21)
        {
          dispatch_group_notify(*(a1[4] + 168), *(a1[4] + 160), *(*(a1[8] + 8) + 40));
        }
      }

      else
      {
        *(v11 + 24) = v12 + 1;
      }

      v22 = a1[9];
      if (v22 >= 5)
      {
        v22 = 5;
      }

      v23 = dispatch_time(0, 1000000000 * v22);
      dispatch_after(v23, *(a1[4] + 160), *(*(a1[6] + 8) + 40));
    }

    else
    {

LABEL_26:
      dispatch_block_cancel(*(*(a1[8] + 8) + 40));
      v15 = *(a1[8] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = 0;

      v17 = *(a1[6] + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = 0;

      (*(a1[5] + 16))(a1[5]);
    }
  }
}

id sub_1000AF5D4(id result)
{
  if (*(*(*(result + 6) + 8) + 40))
  {
    v1 = result;
    result = [*(result + 4) serviceState];
    if (!result)
    {
      dispatch_block_cancel(*(*(v1[6] + 8) + 40));
      v2 = *(v1[6] + 8);
      v3 = *(v2 + 40);
      *(v2 + 40) = 0;

      v4 = *(v1[7] + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = 0;

      v6 = *(v1[5] + 16);

      return v6();
    }
  }

  return result;
}

void sub_1000AF674(uint64_t a1)
{
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    return;
  }

  v2 = [*(a1 + 32) serviceState];
  v3 = v2;
  if ((v2 & 0xFFFFFFFD) != 1)
  {
    if (!v2)
    {
      v11 = 0;
LABEL_19:
      dispatch_block_cancel(*(*(*(a1 + 72) + 8) + 40));
      v12 = *(*(a1 + 72) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = 0;

      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = 0;

      (*(*(a1 + 48) + 16))(*(a1 + 48));
      return;
    }

    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v23 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Ignoring backup/scan task cancelation request while busy (%d)", buf, 8u);
      v10 = @"Not in idle state";
LABEL_14:
      _MBLog();
      goto LABEL_18;
    }

    v10 = @"Not in idle state";
LABEL_18:

    v11 = [MBError errorWithCode:14 format:v10];
    if (!v11)
    {
      __assert_rtn("[MBCKManager _cancelBackupAndScanEnginesWithAccount:timeout:completion:]_block_invoke", "MBCKManager.m", 4414, "serviceState == kMBServiceManagerStateIdle || cancelError");
    }

    goto LABEL_19;
  }

  v4 = [*(a1 + 32) engines];
  [v4 makeObjectsPerformSelector:"cancel"];

  v5 = *(a1 + 80);
  if (!v5)
  {
    goto LABEL_12;
  }

  if (v5 <= 5)
  {
    v5 = 5;
  }

  v6 = v5;
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 24);
  if (v8 >= v6 / 5)
  {
LABEL_12:
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v23 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Timed out while waiting for backup/scan engine cancelation (%d)", buf, 8u);
      v10 = @"Not in idle state (timeout)";
      goto LABEL_14;
    }

    v10 = @"Not in idle state (timeout)";
    goto LABEL_18;
  }

  if (__ROR8__(0xAAAAAAAAAAAAAAABLL * v8, 2) < 0x1555555555555556uLL)
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v23 = v3;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Waiting for backup/scan engine cancelation (%d)", buf, 8u);
      _MBLog();
    }

    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 24);
    *(v17 + 24) = v18 + 1;
    if (!v18)
    {
      v19 = [*(a1 + 32) serviceGroup];
      dispatch_group_notify(v19, *(*(a1 + 40) + 160), *(*(*(a1 + 72) + 8) + 40));
    }
  }

  else
  {
    *(v7 + 24) = v8 + 1;
  }

  v20 = *(a1 + 80);
  if (v20 >= 5)
  {
    v20 = 5;
  }

  v21 = dispatch_time(0, 1000000000 * v20);
  dispatch_after(v21, *(*(a1 + 40) + 160), *(*(*(a1 + 56) + 8) + 40));
}

void sub_1000B0714(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) objectForKeyedSubscript:*(a1 + 40)];
  if ([v2 serviceState] != 3)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 48);
      *buf = 138543362;
      v24 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing domain %{public}@", buf, 0xCu);
      v20 = *(a1 + 48);
      _MBLog();
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v22 = 0;
    v12 = [v10 openCacheWithAccount:v11 accessType:1 error:&v22];
    v13 = v22;
    v14 = v13;
    if (v12)
    {
      v15 = *(a1 + 48);
      v16 = [*(a1 + 32) databaseManager];
      v17 = *(a1 + 40);
      v18 = *(a1 + 56);
      v21 = v14;
      LOBYTE(v15) = [MBCKRemoveDomainRequest removeDomain:v15 cache:v12 databaseManager:v16 account:v17 connection:v18 error:&v21];
      v6 = v21;

      v14 = v6;
      if (v15)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = v13;
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v14);
LABEL_11:

    goto LABEL_12;
  }

  v3 = [MBError errorWithCode:14 format:@"Cannot call RemoveDomain while a backup is in progress"];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 48);
    *buf = 138412290;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot call RemoveDomain on %@ while a backup is in progress", buf, 0xCu);
    v19 = *(a1 + 48);
    _MBLog();
  }

LABEL_12:
}

void sub_1000B1CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B1D04(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000B2688(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (!a2)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 56);
      v13 = *(a1 + 32);
      *buf = 134218498;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid server response for updating mega backup status (%ld), request ID: %@ error: %@", buf, 0x20u);
      v18 = *(a1 + 32);
      v15 = *(a1 + 56);
LABEL_11:
      _MBLog();
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a2 != 1)
  {
    goto LABEL_13;
  }

  v9 = MBGetDefaultLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v10)
    {
      v14 = *(a1 + 32);
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Did not receive a new mega backup expiration date from server: %{public}@", buf, 0xCu);
      v16 = *(a1 + 32);
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v10)
  {
    v11 = *(a1 + 32);
    *buf = 138543618;
    v20 = v7;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received new mega backup expiration date from server: %{public}@, requestID: %{public}@", buf, 0x16u);
    v17 = *(a1 + 32);
    _MBLog();
  }

  [*(a1 + 40) _setMegaBackupExpirationDate:v7 account:*(a1 + 48)];
LABEL_13:
}

void sub_1000B36FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose((v49 - 192), 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_1000B375C(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000B37CC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 lastObject];

  if (v6)
  {
    v7 = [v5 lastObject];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

void sub_1000B3860(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithBool:a2];
    *buf = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished saving account: %@, %@", buf, 0x16u);

    v11 = [NSNumber numberWithBool:a2];
    _MBLog();
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000B3AA4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithBool:a2];
    *buf = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished disabling Keychain Sync: %@: %@", buf, 0x16u);

    v8 = [NSNumber numberWithBool:a2];
    _MBLog();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2);
}

void sub_1000B4214(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (([*(a1 + 32) _refreshLockdownLastBackupDateWithAccount:*(a1 + 40)] & 1) == 0)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to refresh lockdown last backup date from server", v4, 2u);
      _MBLog();
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000B494C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B4998(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (v7)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) recordID];
      *buf = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch the device record:%@ (dateOfLastBackup): %@", buf, 0x16u);

      v10 = [*(a1 + 32) recordID];
      _MBLog();
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  }

  else
  {
    [*(a1 + 32) refreshWithRecord:a3];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000B4DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1000B4DD4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  switch(a2)
  {
    case 2:
      [*(a1 + 32) updateMegaBackupExpirationDate:v11 account:*(a1 + 40)];
      *(*(*(a1 + 72) + 8) + 24) = 1;
      break;
    case 1:
      v8 = [MBError errorWithCode:1 format:@"Server did not allow the requested expiration date: %@", *(a1 + 48)];
      v9 = *(*(a1 + 64) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      break;
    case 0:
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a4);
      break;
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_1000B52DC(uint64_t a1)
{
  if ([*(a1 + 32) serviceState])
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) serviceState];
      v4 = *(a1 + 40);
      *buf = 67109378;
      v16 = v3;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Ignoring device is locking notification while busy (%d) account:%@", buf, 0x12u);
      [*(a1 + 32) serviceState];
      v10 = *(a1 + 40);
      _MBLog();
    }

    v5 = +[MBDaemon sharedDaemon];
    [v5 releaseWorkAssertion:*(a1 + 64)];
  }

  else
  {
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000B5508;
    v12[3] = &unk_1003BC060;
    v13 = v6;
    v14 = *(a1 + 56);
    v5 = v6;
    [MBCKEncryptionManager deviceIsLockingWithAccount:v7 serviceManager:v8 completion:v12];
    v9 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B5540;
    block[3] = &unk_1003BBFE8;
    block[4] = *(a1 + 64);
    dispatch_group_notify(v5, v9, block);
  }
}

id sub_1000B5508(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  v2 = *(a1 + 40);
  return objc_opt_self();
}

void sub_1000B5540(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[MBDaemon sharedDaemon];
  [v3 releaseWorkAssertion:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void sub_1000B59BC(uint64_t a1)
{
  if ([*(a1 + 32) serviceState] == 5)
  {
    v2 = [*(a1 + 32) restoreKeyBagsByID];
    v3 = [v2 count];

    if (!v3)
    {
      v4 = *(a1 + 40);
      v10 = 0;
      v5 = [MBCKEncryptionManager loadRestoreKeyBagsWithAccount:v4 error:&v10];
      v6 = v10;
      if (v5)
      {
        [*(a1 + 32) setRestoreKeyBagsByID:v5];
      }

      else
      {
        v7 = MBGetDefaultLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v12 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to load the restore keybags when device unlocked: %@", buf, 0xCu);
          _MBLog();
        }

        [*(a1 + 48) setPreferencesValue:&__kCFBooleanTrue forKey:@"NotifyDaemonNextTimeKeyBagIsUnlocked"];
      }

      v8 = *(a1 + 56);
      v9 = objc_opt_self();
    }
  }
}

void sub_1000B5B20(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [MBCKEncryptionManager deviceIsUnlockedWithAccount:*(a1 + 32) serviceManager:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1000B5B6C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(a1[5] + 16))();
  v3 = +[MBDaemon sharedDaemon];
  [v3 releaseWorkAssertion:a1[6]];

  v4 = a1[4];
  v5 = objc_opt_self();

  objc_autoreleasePoolPop(v2);
}

id sub_1000B6368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) retryAppDataDownloadsWithNetworkConnectivity:{a2, a3}];
  atomic_exchange((*(a1 + 32) + 200), 0);
  v4 = *(a1 + 40);
  return objc_opt_self();
}

void sub_1000B6490(uint64_t a1)
{
  v1 = MBGetDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = v1;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v168 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received accountChange:%@", buf, 0xCu);
    }

    v114 = *(a1 + 32);
    _MBLog();
  }

  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v4 = +[MBServiceAccount allServiceAccounts];
  v5 = [v4 countByEnumeratingWithState:&v159 objects:v175 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v160;
LABEL_7:
    v8 = 0;
    while (1)
    {
      if (*v160 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v159 + 1) + 8 * v8);
      v10 = [v9 accountIdentifier];
      v11 = [*(a1 + 32) accountIdentifier];
      v12 = [v10 isEqualToString:v11];

      if (v12)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v159 objects:v175 count:16];
        if (v6)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    v13 = v9;
    v14 = [*(a1 + 32) isPrimaryAccount];
    if (v14 != [v13 isPrimaryAccount] && MBIsInternalInstall() && !dword_100421668 && !atomic_fetch_add_explicit(&dword_100421668, 1u, memory_order_relaxed))
    {
      v15 = MBGetDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v16 = v15;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Account notifications are out of sync", buf, 2u);
        }

        _MBLog();
      }
    }

    if (v13)
    {
      v17 = [v13 isPrimaryAccount];
      v129 = 0;
      v18 = a1;
      goto LABEL_26;
    }
  }

  else
  {
LABEL_13:
  }

  v18 = a1;
  v17 = [*(a1 + 32) isPrimaryAccount];
  v13 = 0;
  v129 = 1;
LABEL_26:
  v19 = MBGetDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v13 accountIdentifier];
      v22 = [v13 dsid];
      v23 = [v13 isEnabled];
      *buf = 138544386;
      v168 = v21;
      v169 = 2112;
      v170 = v22;
      v171 = 1024;
      *v172 = v23;
      *&v172[4] = 1024;
      *&v172[6] = v17;
      v173 = 1024;
      v24 = v17;
      v25 = v129;
      v174 = v129;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Account changed: %{public}@, dsid:%@, enabled:%d, isPrimary:%d, isRemoved:%d", buf, 0x28u);
    }

    else
    {
      v24 = v17;
      v25 = v129;
    }

    v26 = [v13 accountIdentifier];
    [v13 dsid];
    LODWORD(v129) = v25;
    v124 = v24;
    v119 = v125 = v25;
    v122 = [v13 isEnabled];
    v114 = v26;
    _MBLog();

    v18 = a1;
    v17 = v24;
  }

  v126 = +[MBRemoteConfiguration sharedInstance];
  v127 = v13;
  if (v17)
  {
    [*(v18 + 40) _updateLockdownKeysForAccountState:v13];
    if (v129)
    {
      v27 = [MBPersona personalPersonaWithError:0];
      [v27 setPreferencesValue:0 forKey:@"AccountEnabledDate"];
      [v27 setPreferencesValue:0 forKey:@"DisabledDomains"];
      [v27 setPreferencesValue:0 forKey:@"NilBackupDateFetchDate"];
      [v27 setPreferencesValue:0 forKey:@"FSEventState"];
      [v27 setPreferencesValue:0 forKey:@"BackupStateInfo"];
      [v126 resetCachedConfigurationForAccount:0];

      goto LABEL_35;
    }

    if ([v13 isEnabled] && objc_msgSend(v13, "isAuthenticated"))
    {
      v31 = +[MBDaemon sharedDaemon];
      [v31 holdWorkAssertion:*(v18 + 56)];

      v32 = [*(v18 + 40) databaseManager];
      v158[0] = _NSConcreteStackBlock;
      v158[1] = 3221225472;
      v158[2] = sub_1000B7834;
      v158[3] = &unk_1003BD8A0;
      v158[4] = *(v18 + 56);
      [v32 fetchConfigurationWithAccount:v13 configuration:v126 completion:v158];
    }

LABEL_47:
    if ([v13 isEnabled])
    {
      v33 = [v13 persona];
      v34 = [v33 copyPreferencesValueForKey:@"AccountEnabledDate" class:objc_opt_class()];

      if (v34)
      {
        goto LABEL_60;
      }

      v35 = +[NSDate date];
      v36 = MBGetDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = v17;
        v38 = v36;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [v13 accountIdentifier];
          v40 = MBStringWithDate();
          *buf = 138543874;
          v168 = @"AccountEnabledDate";
          v169 = 2114;
          v170 = v39;
          v171 = 2114;
          *v172 = v40;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Updating %{public}@ for account %{public}@: %{public}@", buf, 0x20u);
        }

        v41 = [v13 accountIdentifier];
        MBStringWithDate();
        v123 = v120 = v41;
        v116 = @"AccountEnabledDate";
        _MBLog();

        v17 = v37;
      }

      v42 = [v13 persona];
      [v42 setPreferencesValue:v35 forKey:@"AccountEnabledDate"];

      v34 = 0;
    }

    else
    {
      v43 = MBGetDefaultLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v43;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v13 accountIdentifier];
          *buf = 138543618;
          v168 = @"AccountEnabledDate";
          v169 = 2114;
          v170 = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Clearing %{public}@ for account %{public}@", buf, 0x16u);
        }

        [v13 accountIdentifier];
        v120 = v116 = @"AccountEnabledDate";
        _MBLog();
      }

      v46 = [v13 persona];
      [v46 setPreferencesValue:0 forKey:@"AccountEnabledDate"];

      v34 = +[MBXPCServer sharedInstance];
      v35 = [v34 scheduler];
      [v35 clearNilBackupDateFetchDateForAccount:v13];
    }

LABEL_60:
    v139 = [v13 accountIdentifier];
    v47 = [v13 persona];
    v128 = [v47 personaIdentifier];

    if ([v13 isEnabled])
    {
      v30 = 0;
    }

    else
    {
      v48 = [*(*(a1 + 40) + 184) objectForKeyedSubscript:v13];
      v166 = v48;
      v30 = [NSArray arrayWithObjects:&v166 count:1];
    }

    goto LABEL_63;
  }

  if ((v129 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_35:
  v139 = [*(v18 + 32) accountIdentifier];
  v128 = [*(v18 + 32) personaIdentifier];
  if (!v128 && ([*(v18 + 32) isPrimaryAccount] & 1) == 0 && MBIsInternalInstall() && !dword_10042166C && !atomic_fetch_add_explicit(&dword_10042166C, 1u, memory_order_relaxed))
  {
    v28 = MBGetDefaultLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      v29 = *(v18 + 32);
      *buf = 138412290;
      v168 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "Account change %@ has nil personaIdentifier", buf, 0xCu);
      v115 = *(v18 + 32);
      _MBLog();
    }
  }

  v30 = [*(*(v18 + 40) + 184) allPersonaStates];
LABEL_63:
  if ([v30 count])
  {
    v49 = MBGetDefaultLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v49;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v168 = v139;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Canceling the backup/scan engines for account %{public}@", buf, 0xCu);
      }

      v117 = v139;
      _MBLog();
    }
  }

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  obj = v30;
  v51 = [obj countByEnumeratingWithState:&v154 objects:v165 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v155;
    v131 = *v155;
    do
    {
      v54 = 0;
      v132 = v52;
      do
      {
        if (*v155 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v154 + 1) + 8 * v54);
        if ([v55 serviceState] == 1 || objc_msgSend(v55, "serviceState") == 3)
        {
          v137 = [v55 serviceGroup];
          v150 = 0u;
          v151 = 0u;
          v152 = 0u;
          v153 = 0u;
          v56 = [v55 engines];
          v57 = [v56 countByEnumeratingWithState:&v150 objects:v164 count:16];
          if (v57)
          {
            v58 = v57;
            v135 = v54;
            v59 = 0;
            v60 = *v151;
            v61 = &off_1003E0000;
            do
            {
              for (i = 0; i != v58; i = i + 1)
              {
                if (*v151 != v60)
                {
                  objc_enumerationMutation(v56);
                }

                v63 = *(*(&v150 + 1) + 8 * i);
                if ([v63 isCloudKitEngine] && objc_msgSend(v63, "conformsToProtocol:", v61[163]))
                {
                  v64 = [v63 serviceAccount];
                  v65 = [v64 accountIdentifier];
                  v66 = v65;
                  if (((v65 == 0) & v17) != 0 || [v65 isEqualToString:v139])
                  {
                    v67 = v17;
                    v68 = MBGetDefaultLog();
                    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                    {
                      v69 = v68;
                      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543618;
                        v168 = v139;
                        v169 = 2114;
                        v170 = v63;
                        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Canceling engine for account %{public}@: %{public}@", buf, 0x16u);
                      }

                      v121 = v63;
                      _MBLog();
                    }

                    v70 = +[MBEngine stringForEngineMode:](MBEngine, "stringForEngineMode:", [v63 engineMode]);
                    v71 = [MBError errorWithCode:217 format:@"%@ cancelled", v70];

                    [v63 cancelWithError:v71];
                    v59 = 1;
                    v17 = v67;
                    v61 = &off_1003E0000;
                  }
                }
              }

              v58 = [v56 countByEnumeratingWithState:&v150 objects:v164 count:16];
            }

            while (v58);

            v53 = v131;
            v52 = v132;
            v54 = v135;
            v72 = v137;
            if (v59)
            {
              v73 = dispatch_time(0, 60000000000);
              if (dispatch_group_wait(v137, v73))
              {
                objc_exception_throw([[MBException alloc] initWithCode:1 format:@"Timed out while canceling engine"]);
              }
            }
          }

          else
          {

            v72 = v137;
          }
        }

        v54 = v54 + 1;
      }

      while (v54 != v52);
      v52 = [obj countByEnumeratingWithState:&v154 objects:v165 count:16];
    }

    while (v52);
  }

  v74 = v129;
  if (v128)
  {
    v75 = v129;
  }

  else
  {
    v75 = 0;
  }

  v76 = a1;
  if (v75 == 1)
  {
    v77 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B788C;
    block[3] = &unk_1003BC0B0;
    v149 = v128;
    dispatch_async(v77, block);

    v74 = v129;
  }

  v78 = v127;
  if (v74)
  {
    v79 = +[MBFollowUpManager sharedManager];
    v80 = [*(a1 + 32) accountIdentifier];
    [v79 clearPendingFollowUpsWithAccountIdentifier:v80 identifiers:&off_1003E2018];

    v76 = a1;
    v81 = 0;
  }

  else
  {
    if (([v127 isEnabled] & 1) == 0 && +[MBCKDatabaseManager fetchedSyncZoneWithAccount:](MBCKDatabaseManager, "fetchedSyncZoneWithAccount:", v127))
    {
      v82 = MBDeviceUUID();
      v83 = *(a1 + 40);
      v147 = 0;
      v84 = [v83 clearPendingSnapshotForBackupUUID:v82 enabledState:0 account:v127 error:&v147];
      v85 = v147;
      if ((v84 & 1) == 0)
      {
        v86 = MBGetDefaultLog();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          v87 = v17;
          v17 = v86;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v168 = v82;
            v169 = 2112;
            v170 = v85;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to removed the pending snapshots for device %{public}@: %@", buf, 0x16u);
          }

          v117 = v82;
          v121 = v85;
          _MBLog();
          LOBYTE(v17) = v87;
        }
      }

      v76 = a1;
    }

    if ([v127 isEnabled])
    {
      goto LABEL_144;
    }

    v88 = +[MBFollowUpManager sharedManager];
    v89 = [*(v76 + 32) accountIdentifier];
    [v88 clearPendingFollowUpsWithAccountIdentifier:v89 identifiers:&off_1003E2018];

    v76 = a1;
    v79 = [*(*(a1 + 40) + 184) objectForKeyedSubscript:v127];
    v81 = v79;
  }

  v90 = [v81 encryptionManager];
  v91 = v90;
  if (v90)
  {
    v133 = v90;
    v136 = v81;
    v138 = v17;
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v92 = [v127 persona];
    v93 = [v92 volumesToBackUp];

    v94 = [v93 countByEnumeratingWithState:&v143 objects:v163 count:16];
    if (v94)
    {
      v95 = v94;
      v96 = *v144;
      do
      {
        for (j = 0; j != v95; j = j + 1)
        {
          if (*v144 != v96)
          {
            objc_enumerationMutation(v93);
          }

          v98 = *(*(&v143 + 1) + 8 * j);
          v142 = 0;
          v99 = [MBCKEncryptionManager tearDownBackupForVolume:v98 error:&v142, v117, v121];
          v100 = v142;
          if ((v99 & 1) == 0)
          {
            v101 = MBGetDefaultLog();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
            {
              v102 = v101;
              if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v168 = v98;
                v169 = 2114;
                v170 = v100;
                _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "Failed to tear down backup for %@: %{public}@", buf, 0x16u);
              }

              v117 = v98;
              v121 = v100;
              _MBLog();
            }
          }
        }

        v95 = [v93 countByEnumeratingWithState:&v143 objects:v163 count:16];
      }

      while (v95);
    }

    v76 = a1;
    v78 = v127;
    v81 = v136;
    LOBYTE(v17) = v138;
    v91 = v133;
  }

  v103 = v17 ^ 1;
  if (!v81)
  {
    v103 = 1;
  }

  if ((v103 & 1) == 0)
  {
    if ([v81 serviceState] - 4 > 2)
    {
      [*(v76 + 40) resetCacheWithAccount:v78 error:0];
    }

    else
    {
      v104 = MBGetDefaultLog();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
      {
        v105 = v104;
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEBUG, "Not resetting cache as we're in the middle of a restore", buf, 2u);
        }

        _MBLog();
        v76 = a1;
      }
    }
  }

  if ((v129 & 1) == 0)
  {
LABEL_144:
    v106 = [*(*(v76 + 40) + 184) objectForKeyedSubscript:{v78, v117}];
    if ([v106 serviceState] == 5)
    {
      v107 = MBGetDefaultLog();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        v108 = v107;
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          v109 = [v78 accountIdentifier];
          *buf = 138543362;
          v168 = v109;
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "Account (%{public}@) changed during background restore - retrying pending downloads if necessary", buf, 0xCu);

          v78 = v127;
        }

        v118 = [v78 accountIdentifier];
        _MBLog();
      }

      v110 = *(a1 + 40);
      v140[0] = _NSConcreteStackBlock;
      v140[1] = 3221225472;
      v140[2] = sub_1000B78E4;
      v140[3] = &unk_1003BD2F0;
      v140[4] = v110;
      v141 = *(a1 + 48);
      v111 = v110;
      v76 = a1;
      [v111 fetchNetworkConnectivityWithBlock:v140];
    }
  }

  v112 = *(v76 + 48);
  v113 = objc_opt_self();
}

void sub_1000B7834(uint64_t a1)
{
  v2 = +[MBDaemon sharedDaemon];
  [v2 releaseWorkAssertion:*(a1 + 32)];
}

void sub_1000B788C(uint64_t a1)
{
  v2 = +[_TtC7backupd20AppRestoreDispatcher shared];
  [v2 cancelAndUninstallRestorerForPersonaIdentifier:*(a1 + 32)];
}

id sub_1000B78E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) retryAppDataDownloadsWithNetworkConnectivity:{a2, a3}];
  v4 = *(a1 + 40);
  return objc_opt_self();
}

void sub_1000B95DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_1000B9638(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = a2;
  v7 = a3;
  v8 = a4;
  v35 = v7;
  if (v8)
  {
    if ([MBError isCKNotFoundError:v8, v32, v8])
    {
      v9 = *(a1 + 32);
      objc_sync_enter(v9);
      ++*(*(*(a1 + 72) + 8) + 24);
      objc_sync_exit(v9);
    }
  }

  else
  {
    v10 = [v7 objectForKeyedSubscript:{@"owners", v32, 0}];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &__NSArray0__struct;
    }

    v13 = v12;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MBCKManager deviceLockInfosWithAccount:connection:error:]_block_invoke", "MBCKManager.m", 5785, "!ownerUUIDs || [ownerUUIDs isKindOfClass:NSArray.class]");
    }

    v14 = [v35 objectForKeyedSubscript:@"births"];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &__NSArray0__struct;
    }

    v17 = v16;

    objc_opt_class();
    v40 = v17;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MBCKManager deviceLockInfosWithAccount:connection:error:]_block_invoke", "MBCKManager.m", 5787, "!creationDates || [creationDates isKindOfClass:NSArray.class]");
    }

    v18 = [v35 objectForKeyedSubscript:@"expirations"];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &__NSArray0__struct;
    }

    v21 = v20;

    objc_opt_class();
    v22 = v21;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[MBCKManager deviceLockInfosWithAccount:connection:error:]_block_invoke", "MBCKManager.m", 5789, "!expirationDates || [expirationDates isKindOfClass:NSArray.class]");
    }

    v38 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v13, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v13;
    v39 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v39)
    {
      v23 = 0;
      v37 = *v42;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v42 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v41 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __assert_rtn("[MBCKManager deviceLockInfosWithAccount:connection:error:]_block_invoke", "MBCKManager.m", 5794, "[ownerUUID isKindOfClass:NSString.class]");
          }

          v26 = [*(a1 + 40) objectForKeyedSubscript:v25];
          v27 = [v26 deviceName];
          if (v23 >= [v40 count])
          {
            v28 = 0;
          }

          else
          {
            v28 = [v40 objectAtIndexedSubscript:v23];
            if (v28)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                __assert_rtn("[MBCKManager deviceLockInfosWithAccount:connection:error:]_block_invoke", "MBCKManager.m", 5799, "!creationDate || [creationDate isKindOfClass:NSDate.class]");
              }
            }
          }

          if (v23 >= [v22 count])
          {
            v29 = 0;
          }

          else
          {
            v29 = [v22 objectAtIndexedSubscript:v23];
            if (v29)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                __assert_rtn("[MBCKManager deviceLockInfosWithAccount:connection:error:]_block_invoke", "MBCKManager.m", 5801, "!expirationDate || [expirationDate isKindOfClass:NSDate.class]");
              }
            }
          }

          v30 = objc_opt_new();
          [v30 setDeviceName:*(a1 + 48)];
          [v30 setDeviceUUID:*(a1 + 56)];
          [v30 setOwnerDeviceUUID:v25];
          [v30 setOwnerDeviceName:v27];
          [v30 setCreationDate:v28];
          [v30 setExpirationDate:v29];
          [v38 addObject:v30];

          ++v23;
        }

        v39 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v39);
    }

    v31 = *(a1 + 32);
    objc_sync_enter(v31);
    [*(a1 + 64) addObjectsFromArray:v38];
    ++*(*(*(a1 + 72) + 8) + 24);
    objc_sync_exit(v31);
  }
}

void sub_1000B9B64(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000B9E40(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v2 = dispatch_queue_create("com.apple.backupd.retryAppDataDownloads", attr);
  v3 = qword_100421690;
  qword_100421690 = v2;
}

void sub_1000B9EC4(uint64_t a1)
{
  v2 = +[_TtC7backupd20AppRestoreDispatcher shared];
  [v2 retryAppDataDownloadsForAccount:*(a1 + 32)];
}

void sub_1000BA328(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) run];
  [*(a1 + 40) drop];
  v3 = +[MBDaemon sharedDaemon];
  [v3 releaseWorkAssertion:*(a1 + 80)];

  v4 = *(*(a1 + 48) + 160);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BA448;
  v5[3] = &unk_1003BC5B8;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 32);
  v9 = *(a1 + 72);
  dispatch_async(v4, v5);

  objc_autoreleasePoolPop(v2);
}

void sub_1000BA448(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) enginesByContext];
    [v2 removeObjectForKey:*(a1 + 32)];
  }

  [*(a1 + 48) setWatchdog:0];
  v3 = [*(a1 + 40) engines];
  v10 = *(a1 + 48);
  v4 = [NSArray arrayWithObjects:&v10 count:1];
  v5 = [v3 arrayByExcludingObjectsInArray:v4];
  [*(a1 + 40) setEngines:v5];

  v6 = +[MBXPCServer sharedInstance];
  v7 = [v6 connectionsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BA5C0;
  block[3] = &unk_1003BC0B0;
  v9 = *(a1 + 56);
  dispatch_async(v7, block);
}

void sub_1000BA890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BA8A8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v5 = *(a1 + 80);
    if (v5 == 1)
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000BAA48;
      v18[3] = &unk_1003BC160;
      v20 = *(a1 + 72);
      v19 = *(a1 + 32);
      [v6 _startSourceDeviceTransferWithSessionInfo:v7 connection:v8 personaIdentifier:v9 completion:v18];
      v10 = v19;
    }

    else
    {
      if (v5 != 2)
      {
        __assert_rtn("[MBCKManager startDeviceTransferWithTaskType:sessionInfo:connection:error:]_block_invoke", "MBCKManager.m", 5935, "taskType == MBDeviceTransferTaskTypeTarget");
      }

      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = *(a1 + 64);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000BAAA8;
      v15[3] = &unk_1003BC160;
      v17 = *(a1 + 72);
      v16 = *(a1 + 32);
      [v11 _startTargetDeviceTransferWithSessionInfo:v12 connection:v13 personaIdentifier:v14 completion:v15];
      v10 = v16;
    }
  }
}

void sub_1000BAA48(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000BAAA8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000BAE60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1000BAE80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 160);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000BAF48;
  v9[3] = &unk_1003BD8C8;
  v9[4] = v4;
  v10 = WeakRetained;
  v6 = v3;
  v7 = *(a1 + 56);
  v11 = v6;
  v12 = v7;
  v8 = WeakRetained;
  dispatch_async(v5, v9);
}

void sub_1000BAF48(uint64_t a1)
{
  [*(*(a1 + 32) + 176) removeObject:*(a1 + 40)];
  [*(a1 + 48) setServiceState:0];
  v2 = +[MBDaemon sharedDaemon];
  [v2 releaseWorkAssertion:*(a1 + 56)];

  v3 = *(*(a1 + 32) + 168);

  dispatch_group_leave(v3);
}

void sub_1000BAFD0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  dispatch_group_enter(*(*(a1 + 32) + 168));
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) start];

  objc_autoreleasePoolPop(v2);
}

void sub_1000BB394(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1000BB3B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 160);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000BB47C;
  v9[3] = &unk_1003BD8C8;
  v9[4] = v4;
  v10 = WeakRetained;
  v6 = v3;
  v7 = *(a1 + 56);
  v11 = v6;
  v12 = v7;
  v8 = WeakRetained;
  dispatch_async(v5, v9);
}

void sub_1000BB47C(uint64_t a1)
{
  [*(*(a1 + 32) + 176) removeObject:*(a1 + 40)];
  [*(a1 + 48) setServiceState:0];
  v2 = +[MBDaemon sharedDaemon];
  [v2 releaseWorkAssertion:*(a1 + 56)];

  v3 = *(*(a1 + 32) + 168);

  dispatch_group_leave(v3);
}

void sub_1000BB504(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  dispatch_group_enter(*(*(a1 + 32) + 168));
  [*(a1 + 40) start];
  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1000BB6D4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 184);
  v3 = [*(a1 + 40) personaIdentifier];
  v4 = [v2 personaStateForPersonaID:v3];

  if ([v4 serviceState] == 3)
  {
    v13 = v4;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = *(*(a1 + 32) + 176);
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v11 = [v10 connection];
            v12 = *(a1 + 48);

            if (v11 == v12)
            {
              [v10 cancel];
            }
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v4 = v13;
  }
}

void sub_1000BBC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_1000BBCB0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 184);
  v3 = [*(a1 + 40) personaIdentifier];
  v4 = [v2 personaStateForPersonaID:v3];

  v5 = [v4 serviceState];
  if (v5 == 3)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = *(*(a1 + 32) + 176);
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 connection];
            v13 = *(a1 + 48);

            if (v12 == v13)
            {
              objc_storeStrong((*(*(a1 + 64) + 8) + 40), v11);
              goto LABEL_16;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v14 = v5;
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid state: %d", buf, 8u);
      _MBLog();
    }

    v16 = [MBError errorWithCode:1 format:@"Invalid state"];
    v17 = *(*(a1 + 56) + 8);
    v6 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

LABEL_16:
}

void sub_1000BC5DC(id a1, int a2)
{
  if (!a2)
  {
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    v3 = [NSURL URLWithString:@"prefs:root=General&path=USAGE"];
    [v4 openSensitiveURL:v3 withOptions:0];
  }
}

void sub_1000BCBCC(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [*(*(a1 + 32) + 184) allPersonaStates];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 serviceState] == 5)
        {
          v9 = [v8 backgroundRestoreProgressMonitor];
          v1 = v1 & 0xFFFFFFFF00000000 | *(a1 + 44);
          [v9 handleNetworkPathUpdateWithType:*(a1 + 40) state:v1];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void sub_1000BCEAC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleNetworkPathUpdateWithPathType:a2 state:a3];
}

void sub_1000BD054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BD06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000BD13C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000BD158(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
    if (string)
    {
      v6 = [NSString stringWithUTF8String:string];
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "com.apple.notifyd.matching: %@", buf, 0xCu);
        v10 = v6;
        _MBLog();
      }

      v8 = BYSetupAssistantNeedsToRun();
      if (![v6 isEqualToString:@"AppleLanguagePreferencesChangedNotification"] || (v8 & 1) != 0)
      {
        if ([v6 isEqualToString:{@"com.apple.security.octagon.trust-status-change", v10}] || objc_msgSend(v6, "isEqualToString:", @"com.apple.security.secureobjectsync.circlechanged") || objc_msgSend(v6, "isEqualToString:", @"com.apple.security.secureobjectsync.viewschanged"))
        {
          [WeakRetained _keychainSyncStatusDidChange];
        }

        else
        {
          v9 = MBGetDefaultLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v12 = v6;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MBCKManager setUpXPCEventHandler] does not need to handle event: %@", buf, 0xCu);
            _MBLog();
          }
        }
      }

      else
      {
        [WeakRetained userLanguageDidChange];
      }
    }
  }
}

void sub_1000BD54C(void *a1)
{
  v2 = [*(a1[4] + 184) objectForKeyedSubscript:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 serviceState] == 5;
}

void sub_1000BD6C8(void *a1)
{
  v5 = [*(a1[4] + 184) objectForKeyedSubscript:a1[5]];
  v2 = [v5 serviceState];
  v4 = v2 == 6 || (v2 & 0xFFFFFFFE) == 4;
  *(*(a1[6] + 8) + 24) = v4;
}

void sub_1000BD7F4(uint64_t a1)
{
  [*(*(a1 + 32) + 184) allPersonaStates];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) serviceState] == 5)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1000BDA24(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) allPersonaStates];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(*(a1 + 40) + 8) + 40);
        v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(*(&v9 + 1) + 8 * v6) serviceState]);
        [v7 addObject:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_1000BDD38(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [*(a1 + 40) persona];
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 openOrUseExistingPlanWithPersona:v3 snapshotUUID:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_1000BDF84(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [*(a1 + 40) persona];
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 closeRestorePlanWithPersona:v3 snapshotUUID:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v6;
}

void sub_1000BE440(id a1)
{
  v4 = MBGetCacheDir();
  v1 = [v4 stringByAppendingPathComponent:@"cloudkit_cache.db"];
  v2 = v4;
  sub_100274D1C([v4 fileSystemRepresentation]);
  v3 = [[NSString alloc] initWithFormat:@"%@-wal", v1];
  sub_100274D1C([v1 fileSystemRepresentation]);
  sub_100274D1C([v3 fileSystemRepresentation]);
}

void sub_1000BE7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BE7F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000BE810(uint64_t a1)
{
  if (*(a1 + 60) != 1)
  {
    goto LABEL_10;
  }

  v2 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v3 = *(v2 + 8);
    if (([(atomic_uint *)v3 invalidated]& 1) != 0)
    {
      v4 = 8;
LABEL_7:
      v5 = *(a1 + 32);
      v6 = *(v5 + v4);
      *(v5 + v4) = 0;

      goto LABEL_10;
    }
  }

  else
  {
    v3 = *(v2 + 16);
    if (([(atomic_uint *)v3 invalidated]& 1) != 0)
    {
      v4 = 16;
      goto LABEL_7;
    }
  }

  if (!v3)
  {
LABEL_10:
    v7 = [[MBCKCache alloc] initWithTracker:*(a1 + 32)];
    if (!v7)
    {
      __assert_rtn("[MBCKCacheTracker openCacheWithAccessType:cached:error:]_block_invoke", "MBCKCache.m", 136, "cache");
    }

    v3 = v7;
    if (*(a1 + 56) == 1)
    {
      v8 = 6;
    }

    else
    {
      v8 = 1;
    }

    v29 = 0;
    v9 = [(MBCKCache *)v7 _openWithFlags:v8 error:&v29];
    v10 = v29;
    if (v9)
    {
      [*(a1 + 32) _addCache:v3];
      v11 = *(a1 + 56);
      v12 = *(a1 + 32);
      v13 = v3;
      v14 = v13;
      v15 = a1 + 40;
      if (v11 == 1)
      {
        v16 = *(v12 + 8);
        *(v12 + 8) = v13;
      }

      else
      {
        v16 = *(v12 + 16);
        *(v12 + 16) = v13;
      }

      goto LABEL_26;
    }

    v17 = [MBError isError:v10 withCode:4];
    v18 = MBGetDefaultLog();
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 56);
        v21 = [*(a1 + 32) path];
        *buf = 67109634;
        v31 = v20;
        v32 = 2114;
        v33 = v21;
        v34 = 2112;
        v35 = v10;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failed to open cache (%d) at %{public}@: %@", buf, 0x1Cu);

LABEL_24:
        v24 = *(a1 + 56);
        v28 = [*(a1 + 32) path];
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 56);
      v23 = [*(a1 + 32) path];
      *buf = 67109634;
      v31 = v22;
      v32 = 2114;
      v33 = v23;
      v34 = 2112;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to open cache (%d) at %{public}@: %@", buf, 0x1Cu);

      goto LABEL_24;
    }

    v15 = a1 + 48;
    v14 = v10;
LABEL_26:
    v25 = *(*v15 + 8);
    v26 = v14;
    v27 = *(v25 + 40);
    *(v25 + 40) = v26;

    goto LABEL_27;
  }

  atomic_fetch_add(v3 + 2, 1u);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
LABEL_27:
}

id sub_1000BECE0(uint64_t a1)
{
  [*(a1 + 32) _invalidate];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 _removeCache:v3];
}

void sub_1000BFAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1000BFAE8(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _resetDatabaseForAccount:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

void sub_1000BFD88(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Closing PQL connection %@", buf, 0xCu);
    v9 = *(a1 + 32);
    _MBLog();
  }

  v4 = *(a1 + 32);
  v11 = 0;
  v5 = [v4 close:&v11];
  v6 = v11;
  if ((v5 & 1) == 0)
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 134218242;
      v13 = v8;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to close the PQL connection %p: %@", buf, 0x16u);
      v10 = *(a1 + 32);
      _MBLog();
    }
  }
}

void sub_1000C069C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;

    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Closing PQL connection %@", buf, 0xCu);
      _MBLog();
    }

    v9 = 0;
    v6 = [v2 close:&v9];
    v7 = v9;
    if ((v6 & 1) == 0)
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v11 = v2;
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to close the PQL connection %p: %@", buf, 0x16u);
        _MBLog();
      }
    }
  }
}

void sub_1000C09F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C0A0C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = v2;
  if (v2)
  {
    [v2 setLastError:0];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000C0B50;
    v11[3] = &unk_1003BDBC8;
    v12 = *(a1 + 40);
    if (([v3 groupInTransaction:v11] & 1) == 0)
    {
      v4 = [v3 lastError];
      if (v4)
      {
        [MBError errorWithCode:1 error:v4 format:@"The transaction was aborted"];
      }

      else
      {
        [MBError errorWithCode:1 format:@"The transaction was aborted"];
      }
      v5 = ;
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v5;
    }
  }

  else
  {
    v6 = [*(a1 + 32) _invalidatedError];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

void sub_1000C0D14(uint64_t a1)
{
  v2 = [*(a1 + 32) tracker];
  if (!v2)
  {
    __assert_rtn("[MBCKCache _removeCorruptDatabaseWithError:completion:]_block_invoke", "MBCKCache.m", 508, "tracker");
  }

  v3 = v2;
  [v2 _removeCorruptDatabaseWithError:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

void sub_1000C1170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C119C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_25;
  }

  v11 = MBGetDefaultLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (!v12)
    {
      goto LABEL_8;
    }

    *buf = 138412802;
    v26 = v8;
    v27 = 2112;
    v28 = v7;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Sqlite request %@ failed on %@ with error: %@", buf, 0x20u);
    v23 = v7;
    v24 = v9;
    v22 = v8;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_8;
    }

    *buf = 138412546;
    v26 = v7;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Sqlite failed on %@ with error: %@", buf, 0x16u);
    v22 = v7;
    v23 = v9;
  }

  _MBLog();
LABEL_8:

  v13 = [v9 domain];
  v14 = [v13 isEqualToString:PQLSqliteErrorDomain];

  if (!v14)
  {
    goto LABEL_25;
  }

  v15 = [v9 code];
  v16 = [v9 extendedSqliteCode];
  if (v15 > 0x18)
  {
    goto LABEL_19;
  }

  if (((1 << v15) & 0x1384000) != 0)
  {
    goto LABEL_11;
  }

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v19 = [v9 userInfo];
  v20 = [v19 objectForKeyedSubscript:@"SqliteSQL"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_11;
  }

  v21 = [v20 isEqualToString:@"commit"];

  if ((v21 & 1) == 0)
  {
LABEL_11:
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = *(a1 + 32);
      *buf = 138412546;
      v26 = v18;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "Unexpected SQLite error for db at %@: %@", buf, 0x16u);
      v22 = *(a1 + 32);
      v23 = v9;
      _MBLog();
    }

LABEL_15:
    if (v15 == 13)
    {
      sleep(5u);
      goto LABEL_25;
    }
  }

LABEL_19:
  if (v16 == 6922)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      MBExit(1);
    }
  }

  else if (v15 == 26 || v15 == 11)
  {
    [WeakRetained _removeCorruptDatabaseWithError:v9 completion:{&stru_1003BDC10, v22, v23, v24}];
  }

LABEL_25:
}

uint64_t sub_1000C1F8C(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v20[0] = @"CREATE TABLE IF NOT EXISTS FileChanges (domain TEXT, relativePath TEXT, size INTEGER, changeType INTEGER, PRIMARY KEY (domain, relativePath));";
  v20[1] = @"CREATE INDEX IF NOT EXISTS FileChangesDomainIdx ON FileChanges(domain);";
  v20[2] = @"CREATE INDEX IF NOT EXISTS FileChangesChangeTypeIdx ON FileChanges(changeType);";
  v5 = [NSArray arrayWithObjects:v20 count:3];
  v19[0] = @"CREATE TABLE IF NOT EXISTS FoundEncryptionKeys (inode INTEGER, path TEXT NOT NULL UNIQUE, key BLOB);";
  v19[1] = @"CREATE INDEX IF NOT EXISTS FoundEncryptionKeysInodeIdx ON FoundEncryptionKeys(inode);";
  v19[2] = @"CREATE INDEX IF NOT EXISTS FoundEncryptionKeysPathIdx ON FoundEncryptionKeys(path);";
  v6 = [NSArray arrayWithObjects:v19 count:3];
  v18[0] = @"CREATE TABLE IF NOT EXISTS Snapshots (snapshotID TEXT PRIMARY KEY, committed INTEGER, created INTEGER, snapshot BLOB);";
  v18[1] = @"CREATE INDEX IF NOT EXISTS SnapshotsIDIdx ON Snapshots(snapshotID);";
  v7 = [NSArray arrayWithObjects:v18 count:2];
  v17[0] = @"CREATE TABLE IF NOT EXISTS Manifests (manifestID TEXT PRIMARY KEY, snapshotID TEXT, domain TEXT, manifest BLOB); ";
  v17[1] = @"CREATE INDEX IF NOT EXISTS ManifestsSnapshotIDIdx ON Manifests(snapshotID); ";
  v17[2] = @"CREATE INDEX IF NOT EXISTS ManifestsDomainIdx ON Manifests(domain); ";
  v17[3] = @"CREATE TRIGGER IF NOT EXISTS DeleteManifestFiles AFTER DELETE ON Manifests BEGIN DELETE FROM Files WHERE manifestID = OLD.manifestID;END;";
  v8 = [NSArray arrayWithObjects:v17 count:4];
  v16[0] = @"CREATE TABLE IF NOT EXISTS Files (fileID TEXT, manifestID TEXT, domain TEXT, modified INTEGER, relativePath TEXT, deleted INTEGER, fileType INTEGER, file BLOB, PRIMARY KEY (manifestID, relativePath, domain));";
  v16[1] = @"CREATE INDEX IF NOT EXISTS FilesManifestIDIdx ON Files(manifestID);";
  v16[2] = @"CREATE INDEX IF NOT EXISTS FilesDomainRelativePathIdx ON Files(domain, relativePath);";
  v9 = [NSArray arrayWithObjects:v16 count:3];
  v15[0] = @"CREATE TABLE IF NOT EXISTS RestoreFiles (domain TEXT NOT NULL, fileID TEXT NOT NULL, relativePath TEXT NOT NULL, absolutePath TEXT DEFAULT NULL, restoreState INTEGER NOT NULL DEFAULT 0, FOREIGN KEY (fileID) REFERENCES Files(fileID), PRIMARY KEY (domain, relativePath)); ";
  v15[1] = @"CREATE INDEX IF NOT EXISTS RestoreFilesDomainIdx ON RestoreFiles(domain); ";
  v15[2] = @"CREATE INDEX IF NOT EXISTS RestoreFilesAbsolutePathIdx ON RestoreFiles(absolutePath); ";
  v15[3] = @"CREATE INDEX IF NOT EXISTS RestoreFilesRestoreStateIdx ON RestoreFiles(restoreState);";
  v10 = [NSArray arrayWithObjects:v15 count:4];
  v14[0] = @"CREATE TABLE IF NOT EXISTS RestoreDomains (domain TEXT PRIMARY KEY, state INTEGER NOT NULL DEFAULT 0, agent TEXT DEFAULT NULL); ";
  v14[1] = @"CREATE INDEX IF NOT EXISTS RestoreDomainsStateIdx ON RestoreDomains(state); ";
  v14[2] = @"CREATE INDEX IF NOT EXISTS RestoreDomainsAgentIdx ON RestoreDomains(agent);";
  v11 = [NSArray arrayWithObjects:v14 count:3];
  if (sub_1000CDCA8(v4, v5, a3) && sub_1000CDCA8(v4, v6, a3) && sub_1000CDCA8(v4, v7, a3) && sub_1000CDCA8(v4, v8, a3) && sub_1000CDCA8(v4, v9, a3) && sub_1000CDCA8(v4, v10, a3))
  {
    v12 = sub_1000CDCA8(v4, v11, a3);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_1000C225C(void *a1, uint64_t a2, void *a3)
{
  v8[0] = @"CREATE TABLE IF NOT EXISTS Restores (deviceUUID TEXT NOT NULL, snapshotUUID TEXT NOT NULL, state INTEGER NOT NULL DEFAULT 1, PRIMARY KEY (deviceUUID, snapshotUUID));";
  v8[1] = @"CREATE INDEX IF NOT EXISTS RestoresStateIdx ON Restores(state);";
  v4 = a1;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = sub_1000CDCA8(v4, v5, a3);

  return v6;
}

uint64_t sub_1000C232C(void *a1, uint64_t a2, void *a3)
{
  v8 = @"CREATE TABLE IF NOT EXISTS Properties (key TEXT PRIMARY KEY, value TEXT);";
  v4 = a1;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  v6 = sub_1000CDCA8(v4, v5, a3);

  return v6;
}

uint64_t sub_1000C2424(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v42[2] = objc_opt_class();
  v42[3] = objc_opt_class();
  v42[4] = objc_opt_class();
  v42[5] = objc_opt_class();
  v42[6] = objc_opt_class();
  v42[7] = objc_opt_class();
  v42[8] = objc_opt_class();
  v42[9] = objc_opt_class();
  v42[10] = objc_opt_class();
  v7 = [NSArray arrayWithObjects:v42 count:11];
  v32 = [NSSet setWithArray:v7];

  v31 = v5;
  v8 = [v5 fetch:{@"SELECT rowid, file FROM Files"}];
  if (![v8 next])
  {
    v20 = 0;
    v17 = 0;
    v21 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_19;
  }

  v29 = a3;
  v30 = v6;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [v8 numberAtIndex:0];
    v14 = [v8 dataAtIndex:1];
    v15 = v14;
    if (!v14)
    {
      goto LABEL_8;
    }

    v9 += [v14 length];
    v33 = v11;
    v16 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v32 fromData:v15 error:&v33];
    v17 = v33;

    if (!v16)
    {
      break;
    }

    v18 = [v16 asArchiveData];
    v19 = v18;
    if (!v18)
    {
      v23 = [MBError errorWithCode:10 format:@"Unable to encode as protobuf"];
LABEL_16:
      v21 = v23;

      goto LABEL_17;
    }

    v10 += [v18 length];
    if (([v31 execute:{@"UPDATE Files SET file = %@ WHERE rowid=%@", v19, v13}] & 1) == 0)
    {
      v23 = [v31 lastError];
      goto LABEL_16;
    }

    v11 = v17;
LABEL_8:

    objc_autoreleasePoolPop(v12);
    if (([v8 next] & 1) == 0)
    {
      v20 = 0;
      v21 = 0;
      v17 = v11;
      goto LABEL_18;
    }
  }

  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Unable to decode blob as NSKeyedArchive: %@", buf, 0xCu);
    _MBLog();
  }

  v21 = [MBError errorWithCode:11 format:@"Unable to decode as NSKeyedArchive"];
LABEL_17:

  objc_autoreleasePoolPop(v12);
  v20 = 1;
LABEL_18:
  a3 = v29;
  v6 = v30;
LABEL_19:
  v24 = MBGetDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 134218752;
    if (v9 <= v10)
    {
      v25 = v10 - v9;
    }

    else
    {
      v25 = v9 - v10;
    }

    v35 = v9;
    v36 = 2048;
    v37 = v10;
    v38 = 2048;
    v39 = v25;
    v40 = 2048;
    v41 = v10 / v9;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Completed file blob migration. bytesIn %{bytes}llu bytesOut %{bytes}llu delta %{bytes}llu perc %{percent}f", buf, 0x2Au);
    _MBLog();
  }

  if (a3)
  {
    v26 = v20 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  if ((v26 & 1) == 0 && v21)
  {
    v27 = v21;
    *a3 = v21;
  }

  return v20 ^ 1u;
}

uint64_t sub_1000C2910(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = [NSString stringWithFormat:@"UPDATE FoundEncryptionKeys SET volumeType = %lu", 2];;
  v6 = [NSString stringWithFormat:@"UPDATE EncryptionKeys SET volumeType = %lu", 2, v5];;
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];

  v8 = sub_1000CDCA8(v4, v7, a3);
  return v8;
}

id sub_1000C2A18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(&unk_1003BDC58 + 3 * *(a1 + 56) + 1);
  v6 = *(a1 + 32);
  v17 = 0;
  v7 = v5(v3, v6, &v17);
  v8 = v17;
  v9 = v17;
  if (v7)
  {
    v10 = [v3 setUserVersion:*(a1 + 64)];
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 60);
      v13 = *(a1 + 64);
      *buf = 67109634;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      v22 = 2114;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Can't migrate from version %d to %d: %{public}@", buf, 0x18u);
      v16 = *(a1 + 64);
      v15 = *(a1 + 60);
      _MBLog();
    }

    [*(a1 + 40) close:0];
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
    v10 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v10;
}

uint64_t sub_1000C2E84(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v7 = v2;
  if (v2)
  {
    if ([v2 execute:*(a1 + 40) args:**(a1 + 56)])
    {
      goto LABEL_6;
    }

    v3 = [v7 lastError];
  }

  else
  {
    v3 = [*(a1 + 32) _invalidatedError];
  }

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

LABEL_6:

  return _objc_release_x1();
}

void sub_1000C3084(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 fetch:*(a1 + 40) args:**(a1 + 64)];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = *(a1 + 72);
    v23 = v4;
    v6 = [v4 enumerateObjectsOfClass:objc_opt_class()];
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = objc_opt_class();
        if ([v13 isSubclassOfClass:objc_opt_class()])
        {
          [v11 setCache:*(a1 + 32)];
        }

        v14 = (*(*(a1 + 48) + 16))();
        objc_autoreleasePoolPop(v12);
        if (!v14)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v15 = *(a1 + 32);
    v16 = [v3 lastError];
    v17 = [v15 _clientLastError:v16];
    v18 = *(*(a1 + 56) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  else
  {
    v20 = [*(a1 + 32) _invalidatedError];
    v21 = *(*(a1 + 56) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }
}

void sub_1000C3428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000C344C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v14 = v2;
  if (v2)
  {
    v3 = [v2 fetchObjectOfClass:*(a1 + 64) sql:*(a1 + 40) args:**(a1 + 72)];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = v14;
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      goto LABEL_6;
    }

    v7 = *(a1 + 32);
    v8 = [v14 lastError];
    v9 = [v7 _clientLastError:v8];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = [*(a1 + 32) _invalidatedError];
    v13 = *(*(a1 + 48) + 8);
    v8 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  v6 = v14;
LABEL_6:
}

void sub_1000C3DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000C3DE8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:@"SELECT (SELECT COUNT(*) FROM Files LIMIT 1) OR (SELECT COUNT(*) FROM Manifests LIMIT 1) OR (SELECT COUNT(*) FROM Snapshots LIMIT 1);"];
    if ([v3 next])
    {
      *(*(*(a1 + 48) + 8) + 24) = [v3 unsignedIntAtIndex:0] != 0;
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 40) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000C3FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000C400C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:@"SELECT (SELECT COUNT(*) from Files where manifestID NOT IN (SELECT manifestID from Manifests)) OR (SELECT COUNT(*) from Files where manifestID IN (SELECT manifestID from Manifests WHERE snapshotID NOT IN (SELECT snapshotID from Snapshots)))"];
    if ([v3 next])
    {
      *(*(*(a1 + 48) + 8) + 24) = [v3 unsignedIntAtIndex:0] != 0;
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 40) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000C48E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C4900(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (*(a1 + 32) && ([v4 deviceUUID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *(a1 + 32)), v6, !v7))
  {
    v8 = 1;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = 0;
  }

  return v8;
}

void sub_1000C4AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000C4AF4(uint64_t a1)
{
  v11 = *(*(a1 + 32) + 16);
  if (v11)
  {
    v2 = [*(a1 + 40) snapshotID];
    v3 = [v11 fetch:{@"SELECT SUM(size) FROM Files WHERE manifestID IN (SELECT manifestID FROM Manifests WHERE snapshotID = %@)", v2}];

    if ([v3 next])
    {
      *(*(*(a1 + 56) + 8) + 24) = [v3 unsignedLongLongAtIndex:0];
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 48) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000C4F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000C4F30(uint64_t a1)
{
  v11 = *(*(a1 + 32) + 16);
  if (v11)
  {
    v2 = [*(a1 + 40) snapshotID];
    v3 = [v11 fetch:{@"SELECT COUNT(*) FROM Manifests WHERE snapshotID = %@", v2}];

    if ([v3 next])
    {
      *(*(*(a1 + 56) + 8) + 24) = [v3 unsignedIntAtIndex:0];
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 48) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000C51A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000C51CC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT COUNT(*) FROM ManifestPages WHERE manifestID = %@", *(a1 + 40)}];
    if ([v3 next])
    {
      *(*(*(a1 + 56) + 8) + 24) = [v3 unsignedIntAtIndex:0];
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 48) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000C5890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C58C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = [[NSString alloc] initWithFormat:@"F:%@", v3];
  if (*(a1 + 48) == 1)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      v8 = v5;
      _MBLog();
    }
  }

  *(*(*(a1 + 40) + 8) + 24) ^= [MBDigest simpleChecksumForString:v5, v8];

  objc_sync_exit(v4);
  return 1;
}

void sub_1000C5D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C5D44(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v14 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT Files.file FROM Manifests JOIN Files ON Files.manifestID = Manifests.manifestID WHERE Manifests.snapshotID = %@ORDER BY Files.domain", *(a1 + 40)}];
    while ([v3 next])
    {
      v4 = objc_autoreleasePoolPush();
      v5 = [v3 objectOfClass:objc_opt_class() atIndex:0];
      v6 = (*(*(a1 + 48) + 16))();

      objc_autoreleasePoolPop(v4);
      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v9 = *(a1 + 32);
    v10 = [v14 lastError];
    v11 = [v9 _clientLastError:v10];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v7 = [*(a1 + 32) _invalidatedError];
    v8 = *(*(a1 + 56) + 8);
    v3 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

LABEL_8:
}

void sub_1000C6258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000C627C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT 1 FROM Files WHERE domain = %@ AND relativePath = %@ AND manifestID != %@ LIMIT 1", *(a1 + 40), *(a1 + 48), *(a1 + 56)}];
    if ([v3 next])
    {
      *(*(*(a1 + 72) + 8) + 24) = [v3 unsignedIntAtIndex:0] != 0;
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 64) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000C6520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000C6544(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT COUNT(*) FROM Files WHERE manifestID = %@", *(a1 + 40)}];
    if ([v3 next])
    {
      do
      {
        *(*(*(a1 + 56) + 8) + 24) = [v3 unsignedIntAtIndex:0];
      }

      while (([v3 next] & 1) != 0);
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 48) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000C6790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000C67B4(uint64_t a1)
{
  v11 = *(*(a1 + 32) + 16);
  if (v11)
  {
    v2 = [*(a1 + 40) manifestID];
    v3 = [v11 fetch:{@"SELECT COUNT(DISTINCT(SUBSTR(fileId, 38, 28))) FROM Files WHERE manifestID = %@", v2}];

    if ([v3 next])
    {
      do
      {
        *(*(*(a1 + 56) + 8) + 24) = [v3 unsignedIntAtIndex:0];
      }

      while (([v3 next] & 1) != 0);
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 48) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000C6AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000C6B04(uint64_t a1)
{
  v12 = *(*(a1 + 32) + 16);
  if (v12)
  {
    v2 = *(a1 + 64);
    v3 = [*(a1 + 40) base64EncodedStringWithOptions:0];
    v4 = [v12 fetch:{@"SELECT COUNT(*) FROM RestoreFiles WHERE sourceDeviceInode = %llu AND signature = %@ AND volumeType = %lu", v2, v3, *(a1 + 72)}];

    if ([v4 next])
    {
      do
      {
        *(*(*(a1 + 56) + 8) + 24) = [v4 unsignedIntAtIndex:0];
      }

      while (([v4 next] & 1) != 0);
    }

    v5 = *(a1 + 32);
    v6 = [v12 lastError];
    v7 = [v5 _clientLastError:v6];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = [*(a1 + 32) _invalidatedError];
    v11 = *(*(a1 + 48) + 8);
    v4 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_1000C6D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000C6D84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) fileID];
  v4 = [*(a1 + 40) manifest];
  v5 = [v4 manifestID];
  v6 = [v2 _executeSQL:{@"INSERT OR IGNORE INTO CloudFilesPendingDelete (fileID, manifestID, file) VALUES (%@, %@, %@)", v3, v5, *(a1 + 40)}];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return *(*(*(a1 + 48) + 8) + 40) == 0;
}

void sub_1000C6F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000C6F94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) fileID];
  v4 = [*(a1 + 40) manifest];
  v5 = [v4 manifestID];
  v6 = [v2 _executeSQL:{@"DELETE FROM CloudFilesPendingDelete where fileID=%@ AND manifestID=%@", v3, v5}];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    return 0;
  }

  if (([*(a1 + 40) deleted] & 1) != 0 || (objc_msgSend(*(a1 + 40), "isDirectory") & 1) != 0 || (v10 = objc_msgSend(*(a1 + 40), "protectionClass"), +[MBProtectionClassUtils canOpenWhenLocked:](MBProtectionClassUtils, "canOpenWhenLocked:", v10)))
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) fileID];
    v24 = [*(a1 + 40) manifest];
    v13 = [v24 manifestID];
    v14 = [*(a1 + 40) domainName];
    v15 = [*(a1 + 40) relativePath];
    v16 = [*(a1 + 40) modified];
    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) deleted]);
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) fileType]);
    [v11 _executeSQL:{@"INSERT OR REPLACE INTO Files (fileID, manifestID, domain, relativePath, modified, deleted, fileType, file, size) VALUES (%@, %@, %@, %@, %@, %@, %@, %@, %llu)", v12, v13, v14, v15, v16, v17, v18, *(a1 + 40), objc_msgSend(*(a1 + 40), "size"), v22}];
  }

  else
  {
    v23 = *(a1 + 32);
    v12 = [*(a1 + 40) fileID];
    v24 = [*(a1 + 40) manifest];
    v13 = [v24 manifestID];
    v14 = [*(a1 + 40) domainName];
    v15 = [*(a1 + 40) relativePath];
    v16 = [*(a1 + 40) modified];
    v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 40) deleted]);
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) fileType]);
    [v23 _executeSQL:{@"INSERT OR REPLACE INTO Files (fileID, manifestID, domain, relativePath, modified, deleted, fileType, file, size, protectionClass) VALUES (%@, %@, %@, %@, %@, %@, %@, %@, %llu, %d)", v12, v13, v14, v15, v16, v17, v18, *(a1 + 40), objc_msgSend(*(a1 + 40), "size"), v10}];
  }
  v19 = ;
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  return *(*(*(a1 + 48) + 8) + 40) == 0;
}

void sub_1000C73CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C73E4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v12 = [v4 fetch:{@"SELECT COUNT(*), SUM(Files.size) FROM CloudFilesPendingDelete JOIN Files ON Files.fileID = CloudFilesPendingDelete.fileID WHERE CloudFilesPendingDelete.manifestID = %@", v3}];
    if ([v12 next])
    {
      [v12 unsignedIntAtIndex:0];
      [v12 unsignedLongLongAtIndex:1];
    }

    v7 = *(a1 + 32);
    v8 = [v4 lastError];
    v9 = [v7 _clientLastError:v8];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = [*(a1 + 32) _invalidatedError];
    v12 = 0;
    v6 = *(*(a1 + 56) + 8);
    v4 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_1000C77F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C781C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 keybagUUIDString];

  if (v4)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = [v3 keybagUUIDString];
    [v5 addObject:v6];
  }

  return 1;
}

void sub_1000C7F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C7F5C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v20 = v2;
  if (v2)
  {
    if (*(a1 + 64) == 1)
    {
      v3 = [v2 fetch:{@"SELECT relativePath, size, changeType, shouldCopy FROM FileChanges WHERE domain = %@ AND (changeType = %lu OR changeType = %lu OR (changeType = %lu AND NOT EXISTS (SELECT 1 FROM Files WHERE SUBSTR(manifestID, 0, 36) == (SELECT SUBSTR(value, 3, 36) FROM Properties WHERE key == %@) AND Files.domain = FileChanges.domain AND Files.relativePath = FileChanges.relativePath AND Files.deleted = 1)))", *(a1 + 40), 1, 2, 3, @"PendingSnapshotID"}];
    }

    else
    {
      v3 = [v2 fetch:{@"SELECT relativePath, size, changeType, shouldCopy FROM FileChanges WHERE domain = %@", *(a1 + 40), v16, v17, v18, v19}];
    }

    v6 = v3;
    do
    {
      if (![v6 next])
      {
        break;
      }

      v7 = objc_autoreleasePoolPush();
      v8 = [v6 stringAtIndex:0];
      [v6 unsignedLongLongAtIndex:1];
      [v6 unsignedIntegerAtIndex:2];
      [v6 BOOLAtIndex:3];
      v9 = *(a1 + 40);
      v10 = (*(*(a1 + 48) + 16))();

      objc_autoreleasePoolPop(v7);
    }

    while ((v10 & 1) != 0);
    v11 = *(a1 + 32);
    v12 = [v20 lastError];
    v13 = [v11 _clientLastError:v12];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v4 = [*(a1 + 32) _invalidatedError];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_1000C8234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C824C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = v2;
    v12 = [v4 fetch:{@"SELECT COUNT(*), SUM(size) FROM FileChanges WHERE domain = %@", v3}];
    if ([v12 next])
    {
      [v12 unsignedIntAtIndex:0];
      [v12 unsignedLongLongAtIndex:1];
    }

    v7 = *(a1 + 32);
    v8 = [v4 lastError];
    v9 = [v7 _clientLastError:v8];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = [*(a1 + 32) _invalidatedError];
    v12 = 0;
    v6 = *(*(a1 + 56) + 8);
    v4 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_1000C8484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C849C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    v3 = v2;
    v11 = [v3 fetch:{@"SELECT COUNT(*), SUM(size) FROM FileChanges"}];
    if ([v11 next])
    {
      [v11 unsignedIntAtIndex:0];
      [v11 unsignedLongLongAtIndex:1];
    }

    v6 = *(a1 + 32);
    v7 = [v3 lastError];
    v8 = [v6 _clientLastError:v7];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = [*(a1 + 32) _invalidatedError];
    v11 = 0;
    v5 = *(*(a1 + 48) + 8);
    v3 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_1000C86CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C86E4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v12 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT COUNT(*), SUM(size) FROM FileChanges WHERE changeType != %lu AND changeType != %lu", 0, 3}];
    if ([v3 next])
    {
      [v3 unsignedIntAtIndex:0];
      [v3 unsignedLongLongAtIndex:1];
    }

    v6 = [v12 fetch:{@"SELECT COUNT(*) FROM FileChanges WHERE changeType = %lu", 3}];

    if ([v6 next])
    {
      [v6 unsignedIntAtIndex:0];
    }

    v7 = *(a1 + 32);
    v8 = [v12 lastError];
    v9 = [v7 _clientLastError:v8];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = [*(a1 + 32) _invalidatedError];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_1000C8A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C8A18(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v12 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT domain, COUNT(*), SUM(size) FROM FileChanges WHERE changeType != %lu AND changeType != %lu GROUP BY domain", 0, 3}];
    v4 = *(a1 + 32);
    v5 = [v12 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if ([v3 next])
    {
      do
      {
        v9 = [v3 stringAtIndex:0];
        [v3 unsignedIntAtIndex:1];
        [v3 unsignedLongLongAtIndex:2];
        (*(*(a1 + 40) + 16))();
      }

      while (([v3 next] & 1) != 0);
    }
  }

  else
  {
    v10 = [*(a1 + 32) _invalidatedError];
    v11 = *(*(a1 + 48) + 8);
    v3 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_1000C8CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000C8CE8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT COUNT(*) FROM FileChanges WHERE domain = %@ LIMIT 1", @"SkippedFilesDomain"}];
    if ([v3 next])
    {
      *(*(*(a1 + 48) + 8) + 24) = [v3 unsignedIntAtIndex:0] != 0;
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 40) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000C9390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1000C93B4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:@"SELECT count(*) from FoundEncryptionKeys WHERE key IS NULL AND inode = 0 AND volumeType = 0"];
    if ([v3 next])
    {
      *(*(*(a1 + 48) + 8) + 24) = [v3 unsignedLongLongAtIndex:0];
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 40) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000C98D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C9920(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 encryptionKey];
  v5 = [v3 inode];
  v6 = [v3 volumeType];
  v7 = [v4 length];
  if (!v5)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Found invalid inode for %@", buf, 0xCu);
      goto LABEL_9;
    }

LABEL_10:
    v10 = 1;
    goto LABEL_18;
  }

  v8 = v7;
  if (v6)
  {
    if (!v4 || !v7)
    {
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v19 = v8;
        v20 = 2112;
        v21 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Missing or invalid encryption key(%ld) for %@", buf, 0x16u);
LABEL_9:
        _MBLog();
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v19 = v3;
      v20 = 2048;
      v21 = 2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Correcting invalid volumeType for %@ to %lu", buf, 0x16u);
      _MBLog();
    }

    v6 = 2;
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  *(*(*(a1 + 48) + 8) + 24) += v8;
  v12 = [*(a1 + 32) _executeSQL:{@"INSERT OR REPLACE INTO EncryptionKeys (inode, volumeType, key) VALUES (%llu, %lu, %@)", v5, v6, v4}];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v10 = 1;
    goto LABEL_19;
  }

  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138412546;
    v19 = v3;
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to add %@ to the cached encryption keys table: %@", buf, 0x16u);
    v17 = *(*(*(a1 + 56) + 8) + 40);
    _MBLog();
  }

  v10 = 0;
LABEL_18:

LABEL_19:
  return v10;
}

BOOL sub_1000C9C38(uint64_t a1)
{
  v1 = [*(a1 + 32) _enumerateObjectsOfClass:objc_opt_class() callback:*(a1 + 40) format:{@"SELECT file FROM Files WHERE protectionClass = %d OR protectionClass = %d", 1, 2}];
  v2 = v1 == 0;

  return v2;
}

void sub_1000C9DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000C9E0C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT SUM(size) FROM Files WHERE domain = %@ AND manifestID IN (SELECT manifestID FROM Manifests WHERE snapshotID IN (SELECT snapshotID FROM Snapshots))", *(a1 + 40)}];
    if ([v3 next])
    {
      *(*(*(a1 + 56) + 8) + 24) = [v3 unsignedLongLongAtIndex:0];
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 48) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000CA1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000CA1F4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 fetch:{@"SELECT signature, COUNT(*), volumeType FROM RestoreFiles GROUP BY signature, volumeType"}];
    if ([v4 next])
    {
      do
      {
        v5 = objc_autoreleasePoolPush();
        v6 = [v4 stringAtIndex:0];
        v7 = [*(a1 + 32) _executeSQL:{@"INSERT OR REPLACE INTO HardlinkCloneFiles (signature, retainCount, volumeType) VALUES (%@, %llu, %lu)", v6, objc_msgSend(v4, "unsignedLongLongAtIndex:", 1), objc_msgSend(v4, "unsignedLongLongAtIndex:", 2)}];
        v8 = *(*(a1 + 40) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = v7;

        objc_autoreleasePoolPop(v5);
      }

      while (([v4 next] & 1) != 0);
    }
  }

  else
  {
    v10 = [*(a1 + 32) _invalidatedError];
    v11 = *(*(a1 + 40) + 8);
    v4 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  return v3 != 0;
}

void sub_1000CA888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 192), 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1000CA8E8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v18 = v2;
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [v2 fetch:{@"SELECT stashPath, stashedAssetIsDecrypted, decodedAssetPath FROM HardlinkCloneFiles WHERE signature = %@ AND volumeType = %lu", v3, *(a1 + 80)}];
    if ([v4 next])
    {
      v5 = [v4 stringAtIndex:0];
      v6 = *(*(a1 + 56) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      *(*(*(a1 + 64) + 8) + 24) = [v4 BOOLAtIndex:1];
      v8 = [v4 stringAtIndex:2];
      v9 = *(*(a1 + 72) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    v11 = *(a1 + 32);
    v12 = [v18 lastError];
    v13 = [v11 _clientLastError:v12];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v16 = [*(a1 + 32) _invalidatedError];
    v17 = *(*(a1 + 48) + 8);
    v4 = *(v17 + 40);
    *(v17 + 40) = v16;
  }
}

void sub_1000CAC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000CACB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) domainName];
  v4 = [*(a1 + 40) relativePath];
  v5 = [*(a1 + 40) hasAbsolutePath];
  if (v5)
  {
    v6 = [*(a1 + 40) absolutePath];
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 40) fileID];
  v8 = [*(a1 + 40) signature];
  v9 = [v8 base64EncodedStringWithOptions:0];
  v10 = [v2 _executeSQL:{@"INSERT OR REPLACE INTO RestoreFiles (domain, relativePath, absolutePath, fileID, restoreState, signature, sourceDeviceInode, volumeType) VALUES (%@, %@, %@, %@, %lu, %@, %llu, %lu)", v3, v4, v6, v7, 1, v9, objc_msgSend(*(a1 + 40), "sourceDeviceInode"), objc_msgSend(*(a1 + 40), "volumeType")}];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (v5)
  {
  }

  return *(*(*(a1 + 48) + 8) + 40) == 0;
}

void sub_1000CB090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CB0A8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:@"SELECT count(*) FROM RestoreFiles LIMIT 1"];
    if ([v3 next])
    {
      [v3 unsignedLongLongAtIndex:0];
    }

    v6 = *(a1 + 32);
    v7 = [v11 lastError];
    v8 = [v6 _clientLastError:v7];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v4 = [*(a1 + 32) _invalidatedError];
    v5 = *(*(a1 + 48) + 8);
    v3 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_1000CB350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CB368(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v20 = v2;
  if (v2)
  {
    v3 = *(a1 + 40);
    v5 = *(a1 + 72);
    v4 = *(a1 + 80);
    v6 = *(a1 + 64);
    if (*(a1 + 88) == 1)
    {
      v7 = [v2 fetch:{@"SELECT file, RestoreFiles.priority, RestoreFiles.absolutePath FROM RestoreFiles JOIN Files on Files.fileID = RestoreFiles.fileID WHERE RestoreFiles.restoreState != %lu AND RestoreFiles.restoreState < %lu AND RestoreFiles.domain = %@ ORDER BY RestoreFiles.priority DESC, Files.relativePath ASC LIMIT %lu OFFSET %lu", v6, 12, v3, *(a1 + 80), v5}];
    }

    else
    {
      v7 = [v2 fetch:{@"SELECT file, RestoreFiles.priority, RestoreFiles.absolutePath FROM RestoreFiles JOIN Files on Files.fileID = RestoreFiles.fileID WHERE RestoreFiles.restoreState = %lu AND RestoreFiles.domain = %@ ORDER BY RestoreFiles.priority DESC, Files.relativePath ASC LIMIT %lu OFFSET %lu", v6, v3, *(a1 + 80), v5, v19}];
    }

    v10 = v7;
    do
    {
      if (![v10 next])
      {
        break;
      }

      v11 = [v10 objectOfClass:objc_opt_class() atIndex:0];
      [v11 setCache:*(a1 + 32)];
      [v11 setPriority:{objc_msgSend(v10, "unsignedLongLongAtIndex:", 1)}];
      v12 = [v10 stringAtIndex:2];
      if (v12)
      {
        [v11 setAbsolutePath:v12];
      }

      v13 = (*(*(a1 + 48) + 16))();
    }

    while ((v13 & 1) != 0);
    v14 = *(a1 + 32);
    v15 = [v20 lastError];
    v16 = [v14 _clientLastError:v15];
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  else
  {
    v8 = [*(a1 + 32) _invalidatedError];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_1000CB9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CB9C0(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  [*(*(*(a1 + 40) + 8) + 40) setAbsolutePath:*(a1 + 32)];

  return 1;
}

void sub_1000CBB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000CBB7C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT restoreState FROM RestoreFiles WHERE fileID = %@ LIMIT 1", *(a1 + 40)}];
    if ([v3 next])
    {
      *(*(*(a1 + 56) + 8) + 24) = [v3 intAtIndex:0];
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 48) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000CC058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000CC07C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT safeHarbor FROM RestoreDomains WHERE domain = %@", *(a1 + 40)}];
    if ([v3 next])
    {
      *(*(*(a1 + 56) + 8) + 24) = [v3 BOOLAtIndex:0];
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 48) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000CC2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CC2C4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v12 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT state, agent FROM RestoreDomains WHERE domain = %@", *(a1 + 40)}];
    if ([v3 next])
    {
      [v3 intAtIndex:0];
      v4 = [v3 stringAtIndex:1];
    }

    else
    {
      v4 = 0;
    }

    v7 = *(a1 + 32);
    v8 = [v12 lastError];
    v9 = [v7 _clientLastError:v8];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v5 = [*(a1 + 32) _invalidatedError];
    v6 = *(*(a1 + 56) + 8);
    v3 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_1000CC54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CC564(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT COUNT(*), SUM(F.size) FROM Files AS F, RestoreFiles AS RF WHERE F.fileID = RF.fileID AND RF.domain = %@ AND RF.restoreState < %lu", *(a1 + 40), 11}];
    if ([v3 next])
    {
      [v3 unsignedLongLongAtIndex:0];
      [v3 unsignedLongLongAtIndex:1];
    }

    v6 = *(a1 + 32);
    v7 = [v11 lastError];
    v8 = [v6 _clientLastError:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v4 = [*(a1 + 32) _invalidatedError];
    v5 = *(*(a1 + 56) + 8);
    v3 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_1000CC7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CC7F4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT COUNT(*), SUM(size) FROM Files WHERE fileID IN (SELECT fileID FROM RestoreFiles WHERE domain = %@)", *(a1 + 40)}];
    if ([v3 next])
    {
      [v3 unsignedLongLongAtIndex:0];
      [v3 unsignedLongLongAtIndex:1];
    }

    v6 = *(a1 + 32);
    v7 = [v11 lastError];
    v8 = [v6 _clientLastError:v7];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v4 = [*(a1 + 32) _invalidatedError];
    v5 = *(*(a1 + 56) + 8);
    v3 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_1000CCA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1000CCAC0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT state FROM Restores WHERE deviceUUID = %@ AND snapshotUUID = %@", *(a1 + 40), *(a1 + 48)}];
    if ([v3 next])
    {
      *(*(*(a1 + 64) + 8) + 24) = [v3 intAtIndex:0];
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 56) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000CCE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000CCE34(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT size FROM ScannedDomains WHERE domain = %@", *(a1 + 40)}];
    if ([v3 next])
    {
      *(*(*(a1 + 56) + 8) + 24) = [v3 unsignedLongLongAtIndex:0];
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 48) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000CD070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CD088(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v12 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT DISTINCT(domain) FROM RestoreFiles WHERE restoreState == %lu", 12}];
    if ([v3 next])
    {
      do
      {
        v4 = [v3 stringAtIndex:0];
        if (v4)
        {
          [*(a1 + 40) addObject:v4];
        }
      }

      while (([v3 next] & 1) != 0);
    }

    v5 = *(a1 + 32);
    v6 = [v12 lastError];
    v7 = [v5 _clientLastError:v6];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = [*(a1 + 32) _invalidatedError];
    v11 = *(*(a1 + 48) + 8);
    v3 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_1000CD2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1000CD2F4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v11 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT COUNT(*), SUM(F.size) FROM Files AS F, RestoreFiles AS RF WHERE F.fileID = RF.fileID AND RF.restoreState < %lu", 11}];
    if ([v3 next])
    {
      *(*(*(a1 + 48) + 8) + 24) = [v3 unsignedLongLongAtIndex:0];
      *(*(*(a1 + 56) + 8) + 24) = [v3 unsignedLongLongAtIndex:1];
    }

    v4 = *(a1 + 32);
    v5 = [v11 lastError];
    v6 = [v4 _clientLastError:v5];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) _invalidatedError];
    v10 = *(*(a1 + 40) + 8);
    v3 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000CD6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CD6CC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v15 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT COUNT(*) as cnt, domain FROM RestoreFiles GROUP BY domain ORDER BY cnt DESC LIMIT %lu", *(a1 + 56)}];
    if ([v3 next])
    {
      v4 = 0;
      do
      {
        v5 = v4;
        v4 = [v3 stringAtIndex:1];

        v6 = [v3 unsignedLongLongAtIndex:0];
        if (v4)
        {
          v7 = [NSNumber numberWithUnsignedLongLong:v6];
          [*(a1 + 40) setObject:v7 forKeyedSubscript:v4];
        }
      }

      while (([v3 next] & 1) != 0);
    }

    v8 = *(a1 + 32);
    v9 = [v15 lastError];
    v10 = [v8 _clientLastError:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v13 = [*(a1 + 32) _invalidatedError];
    v14 = *(*(a1 + 48) + 8);
    v3 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

void sub_1000CD960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CD978(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v15 = v2;
  if (v2)
  {
    v3 = [v2 fetch:{@"SELECT SUM(size) as sum, RestoreFiles.domain FROM Files JOIN RestoreFiles ON Files.fileID = RestoreFiles.fileID GROUP BY RestoreFiles.domain ORDER BY sum DESC LIMIT %lu;", *(a1 + 56)}];
    if ([v3 next])
    {
      v4 = 0;
      do
      {
        v5 = v4;
        v4 = [v3 stringAtIndex:1];

        v6 = [v3 unsignedLongLongAtIndex:0];
        if (v4)
        {
          v7 = [NSNumber numberWithUnsignedLongLong:v6];
          [*(a1 + 40) setObject:v7 forKeyedSubscript:v4];
        }
      }

      while (([v3 next] & 1) != 0);
    }

    v8 = *(a1 + 32);
    v9 = [v15 lastError];
    v10 = [v8 _clientLastError:v9];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v13 = [*(a1 + 32) _invalidatedError];
    v14 = *(*(a1 + 48) + 8);
    v3 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

uint64_t sub_1000CDCA8(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (!a3)
  {
    __assert_rtn("_executeStatements", "MBCKCache.m", 773, "error");
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        if (([v5 executeRaw:{v12, v19}] & 1) == 0)
        {
          v16 = [v5 lastError];
          if (!v16)
          {
            __assert_rtn("_executeStatements", "MBCKCache.m", 780, "localError");
          }

          v15 = v16;
          objc_autoreleasePoolPop(v13);

          v17 = v15;
          v14 = 0;
          *a3 = v15;
          goto LABEL_13;
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
  v15 = v7;
LABEL_13:

  return v14;
}

void sub_1000D258C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1000D2030);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D2F84(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = MBGetDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v11 = v1;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Removing the file at %@", buf, 0xCu);
      _MBLog();
    }

    v3 = +[NSFileManager defaultManager];
    v9 = 0;
    v4 = [v3 removeItemAtPath:v1 error:&v9];
    v5 = v9;
    v6 = v5;
    if ((v4 & 1) == 0)
    {
      v7 = [v5 domain];
      if ([v7 isEqualToString:NSCocoaErrorDomain])
      {
        v8 = [v6 code];

        if (v8 == 4)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v3 = MBGetDefaultLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v11 = v1;
        v12 = 2112;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to remove the file at %@: %@", buf, 0x16u);
        _MBLog();
      }
    }

LABEL_12:
  }
}

void sub_1000D3158(id a1)
{
  qword_1004216B0 = [NSSet setWithArray:&off_1003E2258];

  _objc_release_x1();
}

id *sub_1000D4E74(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] refreshWithRecord:a2];
  }

  return result;
}

void sub_1000D8DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D8E10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000D8E28(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 encryptionKey];
  v7 = [*(a1 + 40) size];
  v8 = [*(a1 + 48) hardwareModel];
  v9 = *(*(a1 + 64) + 8);
  obj = *(v9 + 40);
  LOBYTE(v4) = [v5 decryptFileWithPath:v4 encryptionKey:v6 size:v7 hardwareModel:v8 error:&obj];

  objc_storeStrong((v9 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v4;
}

void sub_1000DC54C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1004216C0;
  qword_1004216C0 = v1;

  v3 = qword_1004216C0;

  [v3 setUseMMCSEncryptionV2:&__kCFBooleanTrue];
}

void sub_1000DE1D8(id a1)
{
  if (MBIsInternalInstall())
  {
    v1 = +[MBBehaviorOptions sharedOptions];
    v2 = [v1 validateFileEncodingWithDefaultValue:0xFFFFFFFFLL];

    if (v2 == -1)
    {
      v3 = arc4random_uniform(2u) == 0;
    }

    else
    {
      v3 = v2 != 0;
    }

    byte_1004216A8 = v3;
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (byte_1004216A8)
      {
        v5 = "YES";
      }

      else
      {
        v5 = "NO";
      }

      *buf = 136315138;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ValidateFileEncoding=%s", buf, 0xCu);
      _MBLog();
    }
  }
}

void sub_1000DE360(id a1)
{
  v1 = +[MBBehaviorOptions sharedOptions];
  [v1 SQLiteSpaceSavingsThresholdWithDefaultValue:0.5];
  v3 = v2;

  v4 = v3 > 1.0 || v3 <= 0.0;
  v5 = -1.0;
  if (!v4)
  {
    v5 = v3;
  }

  qword_1004216D8 = *&v5;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v8 = qword_1004216D8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "SQLiteSpaceSavingsThreshold=%.3f", buf, 0xCu);
    _MBLog();
  }
}

void sub_1000DFF30(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) _configurePlaceholderIPA:*(a1 + 40) personaIdentifier:*(a1 + 48) isDataSeparated:*(a1 + 88) installType:*(a1 + 80)])
  {
    atomic_fetch_add((*(*(a1 + 72) + 8) + 24), 1u);
  }

  dispatch_semaphore_signal(*(a1 + 56));
  dispatch_group_leave(*(a1 + 64));

  objc_autoreleasePoolPop(v2);
}

void sub_1000E363C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E38F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000E3924(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3];
  if (v4)
  {
    [*(a1 + 32) removeObject:v3];
  }

  else
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=ck-device= Cache is out of date (missing %@)", buf, 0xCu);
      _MBLog();
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return v4;
}

uint64_t sub_1000E3E04(uint64_t a1)
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  v5 = [*(a1 + 32) cache];
  v6 = [v5 removeAllFileChanges];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [*(a1 + 32) snapshots];
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        v13 = [*(a1 + 32) cache];
        v14 = [v13 addPendingSnapshot:v12];

        v15 = [*(a1 + 32) cache];
        v16 = [v15 commitSnapshot:v12];

        v17 = [*(a1 + 32) cache];
        v18 = [v12 snapshotID];
        v19 = [v17 addSnapshotIntoFileChanges:v18];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v9);
  }

  v20 = [*(a1 + 32) cache];
  v21 = [v20 removeDeletedFileChanges];

  v22 = [*(a1 + 32) cache];
  v23 = [v22 removeAllOrphanedItems];

  +[NSDate timeIntervalSinceReferenceDate];
  v25 = v24;
  v26 = MBGetDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v33 = v25 - v4;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=ck-device= FileChanges recreated in %0.3fs", buf, 0xCu);
    _MBLog();
  }

  return 1;
}

void sub_1000E4760(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(a1 + 56) == 1 && [v8 count])
  {
    v10 = MBGetDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=ck-device= Snapshot references appear out of date, refreshing device record and trying again", buf, 2u);
      _MBLog();
    }

    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) recordID];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000E4B4C;
    v45[3] = &unk_1003BE400;
    v47 = *(a1 + 48);
    *obja = *(a1 + 32);
    v13 = obja[0];
    v46 = vextq_s8(*obja, *obja, 8uLL);
    [v11 fetchRecordWithID:v12 completion:v45];
  }

  else
  {
    v36 = v9;
    v37 = v8;
    if (!v9)
    {
      *(*(a1 + 40) + 90) = 1;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v38 = v7;
    obj = v7;
    v14 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v42;
      v17 = &_s10Foundation4DataV19_bridgeToObjectiveCSo6NSDataCyF_ptr;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v41 + 1) + 8 * i);
          [v19 setDevice:{*(a1 + 40), v35}];
          v20 = objc_alloc(v17[469]);
          v21 = [v19 recordID];
          v22 = [v20 initWithRecordID:v21 action:0];

          v23 = [*(a1 + 40) snapshotRefs];
          v24 = [v23 indexOfObject:v22];

          if (v24 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v25 = [*(a1 + 40) snapshotCommitDates];
            v26 = v17;
            v27 = [v25 count];

            v28 = v27 > v24;
            v17 = v26;
            if (v28)
            {
              v29 = [*(a1 + 40) snapshotCommitDates];
              v30 = [v29 objectAtIndexedSubscript:v24];
              [v19 setCreated:v30];
            }
          }

          v31 = MBGetDefaultLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v49 = v19;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "=ck-device= Fetched snapshot: %@", buf, 0xCu);
            v35 = v19;
            _MBLog();
          }
        }

        v15 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v15);
    }

    v32 = [MBCKSnapshot sortedSnapshots:obj];
    v33 = *(a1 + 40);
    v34 = *(v33 + 112);
    *(v33 + 112) = v32;

    v9 = v36;
    (*(*(a1 + 48) + 16))();
    v8 = v37;
    v7 = v38;
  }
}

id sub_1000E4B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 48) + 16);

    return v6();
  }

  else
  {
    [*(a1 + 32) refreshWithRecord:?];
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);

    return [v8 _fetchSnapshotsWithOperationTracker:v9 retry:0 completion:v10];
  }
}

void sub_1000E4CC4(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.backupd.fetchSnapshots", v3);
  v2 = qword_1004216E8;
  qword_1004216E8 = v1;
}

void sub_1000E4D28(uint64_t a1)
{
  if (![*(a1 + 32) hasFetchedSnapshots])
  {
    v2 = [*(a1 + 32) snapshotRefs];
    v3 = [v2 count];

    if (v3)
    {
      dispatch_suspend(qword_1004216E8);
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 56);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000E4E4C;
      v8[3] = &unk_1003BE470;
      v9 = *(a1 + 48);
      [v4 _fetchSnapshotsWithOperationTracker:v5 retry:v6 completion:v8];

      return;
    }

    *(*(a1 + 32) + 90) = 1;
  }

  v7 = *(*(a1 + 48) + 16);

  v7();
}

void sub_1000E4E4C(uint64_t a1, void *a2)
{
  v3 = qword_1004216E8;
  v4 = a2;
  dispatch_resume(v3);
  (*(*(a1 + 32) + 16))();
}

void sub_1000E5008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E5020(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E5038(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000E5A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E5ACC;
  v7[3] = &unk_1003BC308;
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v6 handleSaveComplete:a2 withError:a3 completion:v7];
}

void sub_1000E5ACC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MBGetDefaultLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) recordID];
      *buf = 138543618;
      v11 = v6;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "=ck-device= Failed to save pending snapshot record %{public}@: %@", buf, 0x16u);

      v8 = [*(a1 + 32) recordID];
      _MBLog();
    }

    v5 = *(a1 + 40);
    objc_sync_enter(v5);
    [*(a1 + 40) addObject:v3];
    objc_sync_exit(v5);
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) recordID];
    *buf = 138543362;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "=ck-device= Saved snapshot record %{public}@", buf, 0xCu);

    v9 = [*(a1 + 32) recordID];
    _MBLog();
  }
}

void sub_1000E5CB0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v8 = MBGetDefaultLog();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(*(*(a1 + 40) + 8) + 40) recordID];
      *buf = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=ck-device= Failed to save device record %{public}@: %@", buf, 0x16u);

      v12 = [*(*(*(a1 + 40) + 8) + 40) recordID];
      _MBLog();
    }

    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    [*(a1 + 32) addObject:v7];
    objc_sync_exit(v9);
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 recordID];
    *buf = 138543362;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "=ck-device= Saved device record %{public}@", buf, 0xCu);

    v13 = [v6 recordID];
    _MBLog();
  }
}

void sub_1000E5ECC(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) lastObject];
  if (!v3)
  {
    v3 = v4;
  }

  [*(a1 + 40) handleSaveComplete:*(*(*(a1 + 56) + 8) + 40) withError:v3 completion:*(a1 + 48)];
}

id sub_1000E881C(uint64_t a1, void *a2)
{
  v3 = [a2 commitID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_1000E8AF8(uint64_t a1, void *a2)
{
  v3 = [a2 snapshotID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id MBCreateOrResumePendingSnapshot(void *a1, NSObject *a2, NSObject *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, _BYTE *a9, NSObject **a10)
{
  v13 = a1;
  v80 = a6;
  v81 = a7;
  v76 = a8;
  v14 = [v13 pendingSnapshotRecordID];

  if (!v14)
  {
    v23 = 0;
    goto LABEL_56;
  }

  v84 = 0;
  v77 = [v80 hasBackupContentsWithError:&v84];
  v15 = v84;
  if ((v77 & 1) == 0)
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "=ck-device= Cache does not have backup contents", buf, 2u);
      _MBLog();
    }
  }

  v17 = [v13 pendingSnapshotFormat];
  v72 = [v13 pendingSnapshotType];
  v18 = [v13 pendingSnapshotBuildVersion];
  v19 = [v13 pendingSnapshotRecordID];
  v75 = [MBCKSnapshot snapshotIDFromSnapshotRecordID:v19];

  if ((MBSnapshotFormatContainsFileLists() & 1) == 0 && !MBSnapshotFormatContainsFileLists())
  {
    v22 = 0;
    goto LABEL_40;
  }

  v73 = [v81 snapshotDatabaseDirectory];
  v20 = MBSnapshotDirectoryExists(v73, v75);
  if ((v20 & 1) == 0)
  {
    v21 = MBGetDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v87 = v75;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=ck-device= Invalidating pending snapshot - no pending snapshot dir found for %@", buf, 0xCu);
      v66 = v75;
      _MBLog();
    }
  }

  if (v17 == a3)
  {
    v22 = v20 ^ 1;
  }

  else
  {
    v24 = MBGetDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v87 = v17;
      v88 = 2048;
      v89 = a3;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "=ck-device= Invalidating pending snapshot - format %ld != %ld", buf, 0x16u);
      v66 = v17;
      v67 = a3;
      _MBLog();
    }

    v22 = 1;
  }

  v25 = MBBuildVersion();
  if (([v18 isEqualToString:v25]& 1) == 0)
  {
    v26 = MBGetDefaultLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v87 = v18;
      v88 = 2112;
      v89 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=ck-device= Invalidating pending snapshot - build %@ != %@", buf, 0x16u);
      v66 = v18;
      v67 = v25;
      _MBLog();
    }

    v22 = 1;
  }

  v27 = [v13 domainHMACsToRepair];
  if ([v27 count])
  {
    v28 = v20;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    v29 = v73;
    v69 = v75;
    v70 = v13;
    v68 = v29;
    v30 = [MBPendingSnapshotDB openOrCreateDatabaseIn:v29 commitID:v69 readonly:1 error:a10];
    if (!v30)
    {
LABEL_37:
      v32 = 0;
LABEL_38:

      if (!v32)
      {

LABEL_88:
        v54 = 0;
        goto LABEL_89;
      }

      goto LABEL_39;
    }

    v85 = 0;
    v31 = [v70 domainHMACsToRepair];
    v32 = [v30 domainHMACsToRepairMatches:v31 outResult:&v85 error:a10];

    if (v32)
    {
      if (v85)
      {
        goto LABEL_36;
      }

      v33 = MBGetDefaultLog();
      v34 = 1;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "=ck-device= =domain repair= Invalidating pending snapshot", buf, 2u);
        _MBLog();
      }
    }

    else
    {
      v33 = MBGetDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v35 = *a10;
        *buf = 138412290;
        v87 = v35;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "=ck-device= =domain repair= Failed to compare pending and new domainHMACsToRepair for equality: %@", buf, 0xCu);
        v66 = *a10;
        _MBLog();
      }

      v34 = v22;
    }

    v22 = v34;
LABEL_36:
    if ([v30 close:a10])
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_39:

  v77 |= v20;
LABEL_40:
  if (v72 != a2)
  {
    v36 = MBGetDefaultLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v87 = v72;
      v88 = 2048;
      v89 = a2;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "=ck-device= Invalidating pending snapshot - type %ld != %ld", buf, 0x16u);
      v66 = v72;
      v67 = a2;
      _MBLog();
    }

    v22 = 1;
  }

  v37 = [MBBehaviorOptions sharedOptions:v66];
  v38 = [v37 forceInvalidatePendingSnapshot];

  if (v38)
  {
    v39 = MBGetDefaultLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "=ck-device= Invalidating pending snapshot - behaviour option", buf, 2u);
      _MBLog();
    }

    goto LABEL_49;
  }

  if ((v15 != 0 || (v77 & 1) == 0) | v22 & 1)
  {
LABEL_49:
    v40 = [v81 snapshotDatabaseDirectory];
    v41 = [v13 pendingSnapshotRecordID];
    v42 = [MBCKSnapshot snapshotIDFromSnapshotRecordID:v41];
    v83 = 0;
    v43 = MBStashMissedEncryptionKeysDB(v40, v42, &v83);
    v44 = v83;

    if (!v43)
    {
      v45 = MBGetDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v87 = v44;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_FAULT, "=ck-device= Failed to stash missed encryption keys DB: %@", buf, 0xCu);
        v66 = v44;
        _MBLog();
      }
    }

    [v13 clearPendingSnapshotFieldsAndRebuildFileChanges:{0, v66}];

    v23 = 0;
    goto LABEL_55;
  }

  v23 = 1;
LABEL_55:

LABEL_56:
  v46 = [v13 pendingSnapshot];
  v47 = v46 == 0;

  if (v47)
  {
    v48 = [v80 deleteCloudFilesPendingDelete];
  }

  v15 = +[MBCKSnapshot snapshotForDevice:reason:type:snapshotFormat:accountType:](MBCKSnapshot, "snapshotForDevice:reason:type:snapshotFormat:accountType:", v13, a4, a2, a3, [v81 accountType]);
  if (!v15)
  {
    v18 = [MBError errorWithCode:1 format:@"Failed to create a new snapshot"];
    v52 = MBGetDefaultLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v87 = v18;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "=ck-device= Failed to create snapshot: %{public}@", buf, 0xCu);
      _MBLog();
    }

    if (a10)
    {
      v53 = v18;
      v15 = 0;
      v54 = 0;
      *a10 = v18;
      goto LABEL_89;
    }

    v15 = 0;
    goto LABEL_88;
  }

  if (a9)
  {
    *a9 = v23;
  }

  v49 = MBGetDefaultLog();
  v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (!v50)
    {
      goto LABEL_71;
    }

    v51 = [v15 commitID];
    *buf = 138412290;
    v87 = v51;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "=ck-device= Resuming pending snapshot:%@", buf, 0xCu);
  }

  else
  {
    if (!v50)
    {
      goto LABEL_71;
    }

    v55 = [v15 commitID];
    *buf = 138412290;
    v87 = v55;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "=ck-device= Creating new snapshot:%@", buf, 0xCu);
  }

  v66 = [v15 commitID];
  _MBLog();

LABEL_71:
  if (([v13 addPendingSnapshot:v15 error:a10] & 1) == 0)
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=ck-device= Failed to add snapshot to device", buf, 2u);
      _MBLog();
    }

    goto LABEL_88;
  }

  if ((v23 | MBSnapshotFormatContainsFileLists() ^ 1))
  {
    goto LABEL_75;
  }

  [v13 setPendingSnapshotFormat:objc_msgSend(v15, "snapshotFormat")];
  [v13 setPendingSnapshotType:{objc_msgSend(v15, "type")}];
  [v13 setPendingSnapshotBackupPolicy:a5];
  v82 = 0;
  v56 = [v13 saveWithOperationTracker:v76 error:&v82];
  v57 = v82;
  v18 = v57;
  if ((v56 & 1) == 0)
  {
    if (a10)
    {
      v63 = v57;
      *a10 = v18;
    }

    v64 = MBGetDefaultLog();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v87 = v18;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "=ck-device= Failed to save pending snapshotID to server: %@", buf, 0xCu);
      _MBLog();
    }

    goto LABEL_88;
  }

LABEL_75:
  v18 = [v13 pendingSnapshotRecordID];
  v58 = [v80 propertyForKey:@"PendingSnapshotID" error:a10];
  v59 = v58;
  if (!v58 || ([v58 isEqualToString:v18] & 1) == 0)
  {
    v60 = [v80 setProperty:v18 forKey:@"PendingSnapshotID"];
    v61 = MBBuildVersion();
    v62 = [v80 setProperty:v61 forKey:@"PendingSnapshotBuildVersion"];
  }

  v15 = v15;

  v54 = v15;
LABEL_89:

  return v54;
}

void sub_1000E9C34(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1000E9508);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000EA408(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) domainName];
  v7 = v6;
  if (v6 && ![v5 executeWithError:a3 sql:{@"INSERT OR IGNORE INTO PendingManifestIDToDomainName (manifestID, domainName) VALUES (%@, %@)", *(a1 + 40), v6}])
  {
    v18 = 0;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = *(a1 + 48);
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v20 = v7;
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v21 + 1) + 8 * i) recordID];
          v14 = [v13 recordName];

          if (!v14)
          {
            __assert_rtn("[MBCKRefreshManifestDomainCache _addReferences:forManifest:isPlaceholder:error:]_block_invoke", "MBCKRefreshManifestDomainCache.m", 136, "referenceID");
          }

          v15 = [MBCKFile fileIDFromRecordName:v14];
          if (!v15)
          {
            __assert_rtn("[MBCKRefreshManifestDomainCache _addReferences:forManifest:isPlaceholder:error:]_block_invoke", "MBCKRefreshManifestDomainCache.m", 139, "fileID");
          }

          v16 = v15;
          v17 = *(a1 + 40);
          if (*(a1 + 56) == 1)
          {
            if (([v5 executeWithError:a3 sql:{@"INSERT OR IGNORE INTO PendingPlaceholderIDToManifestID (referenceID, manifestID) VALUES (%@, %@)", v15, v17}] & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          else if (![v5 executeWithError:a3 sql:{@"INSERT OR IGNORE INTO PendingFileIDToManifestID (referenceID, manifestID) VALUES (%@, %@)", v15, v17}])
          {
LABEL_17:

            v18 = 0;
            goto LABEL_18;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v18 = 1;
LABEL_18:
      v7 = v20;
    }

    else
    {
      v18 = 1;
    }
  }

  return v18;
}

BOOL sub_1000EAAF8(id a1, PQLResultSet *a2, id *a3)
{
  v3 = a2;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [(PQLResultSet *)v3 stringAtIndex:0];
    v6 = [(PQLResultSet *)v3 stringAtIndex:1];
    *buf = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "=domaincache= FileToManifest: %@ -> %@", buf, 0x16u);

    v7 = [(PQLResultSet *)v3 stringAtIndex:0];
    v9 = [(PQLResultSet *)v3 stringAtIndex:1];
    _MBLog();
  }

  return 1;
}

BOOL sub_1000EAC34(id a1, PQLResultSet *a2, id *a3)
{
  v3 = a2;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [(PQLResultSet *)v3 stringAtIndex:0];
    v6 = [(PQLResultSet *)v3 stringAtIndex:1];
    *buf = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "=domaincache= PlaceholderToManifest: %@ -> %@", buf, 0x16u);

    v7 = [(PQLResultSet *)v3 stringAtIndex:0];
    v9 = [(PQLResultSet *)v3 stringAtIndex:1];
    _MBLog();
  }

  return 1;
}

BOOL sub_1000EAD70(id a1, PQLResultSet *a2, id *a3)
{
  v3 = a2;
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [(PQLResultSet *)v3 stringAtIndex:0];
    v6 = [(PQLResultSet *)v3 stringAtIndex:1];
    *buf = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "=domaincache= ManifestToDomainName: %@ -> %@", buf, 0x16u);

    v7 = [(PQLResultSet *)v3 stringAtIndex:0];
    v9 = [(PQLResultSet *)v3 stringAtIndex:1];
    _MBLog();
  }

  return 1;
}

void sub_1000EB4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EB528(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000EB540(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v14 = (*(*(a1 + 48) + 8) + 40);
    v15 = a3;
LABEL_8:
    objc_storeStrong(v14, v15);
    goto LABEL_9;
  }

  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=ck-account= Failed to fetch the account record: %@", buf, 0xCu);
    _MBLog();
  }

  if (![MBError isCKNotFoundError:v9])
  {
    v14 = (*(*(a1 + 40) + 8) + 40);
    v15 = a4;
    goto LABEL_8;
  }

  v11 = [MBError errorWithCode:204 format:@"Account record does not exist"];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

LABEL_9:
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000EBC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_1000EBC88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v8 = [WeakRetained operationID];

    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "=ck-account= Device delete operation %{public}@ failed with error: %@", buf, 0x16u);
      _MBLog();
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
  }

  else
  {
    [*(a1 + 32) removeDeviceForUUID:*(a1 + 40)];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000EBFF8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v18 = a3;
  v8 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        [v13 setHmacKey:*(*(a1 + 32) + 104)];
        v14 = *(*(a1 + 32) + 72);
        v15 = [v13 deviceUUID];
        [v14 setObject:v13 forKeyedSubscript:v15];
      }

      v10 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [*(a1 + 40) count];
  v17 = [v7 count];
  if (v16 == &v17[[v18 count]])
  {

LABEL_11:
    v8 = 0;
    *(*(a1 + 32) + 89) = 1;
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  (*(*(a1 + 48) + 16))();
}

void sub_1000EC300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000EC318(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_1000EE138(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringAtIndex:0];
  v5 = [v3 stringAtIndex:1];
  [v3 unsignedLongLongAtIndex:2];

  v6 = (*(*(a1 + 32) + 16))();
  return v6;
}

uint64_t sub_1000EE2B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringAtIndex:0];
  v5 = [v3 stringAtIndex:1];

  v6 = (*(*(a1 + 32) + 16))();
  return v6;
}

uint64_t sub_1000EE414(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringAtIndex:0];
  [v3 BOOLAtIndex:1];

  v5 = (*(*(a1 + 32) + 16))();
  return v5;
}

void sub_1000EE700(id a1)
{
  qword_100421700 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MBHelperServiceProtocol];

  _objc_release_x1();
}

void sub_1000EE748(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v1 = qword_1004216F8;
  qword_1004216F8 = 0;

  objc_sync_exit(obj);
}

void sub_1000EED50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000EED78(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = [v3 block];
    if (v4)
    {
      v5 = MBGetDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v8 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Progress timer: %@", buf, 0xCu);
        _MBLog();
      }

      [v3 progress];
      v4[2](v4);
      v6 = [v3 watchdog];
    }

    else
    {
      v6 = 0;
    }

    objc_sync_exit(v3);
    [v6 resume];
  }
}

void sub_1000EEF54(void *a1)
{
  v1 = a1;
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v4 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Progress update: %@", buf, 0xCu);
    _MBLog();
  }
}

BOOL sub_1000F0A08(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=restorable= Using APFSIOC_MAKE_OBJECT_DATALESS to restore the com.apple.decmpfs xattr on %@: %@", buf, 0x16u);
    _MBLog();
  }

  if (v6)
  {
    v15[0] = [v6 bytes];
    v15[1] = [v6 length];
    v8 = fsctl([v5 fileSystemRepresentation], 0x80104A39uLL, v15, 0);
    v9 = v8 == 0;
    if (v8)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *__error();
        *buf = 138412546;
        v17 = v5;
        v18 = 1024;
        LODWORD(v19) = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "=restorable= fsctl(APFSIOC_MAKE_OBJECT_DATALESS) failed at %@: %{errno}d", buf, 0x12u);
        v14 = *__error();
        _MBLog();
      }

      if (a3)
      {
        *a3 = [MBError errorWithCode:102 path:v5 format:@"set_dataless_attribute error"];
      }
    }
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "=restorable= Unexpected nil extended attribute com.apple.decmpfs for dataless file: %@", buf, 0xCu);
      _MBLog();
    }

    v9 = 1;
  }

  return v9;
}

id sub_1000F0C6C(uint64_t a1, int a2, const char *a3)
{
  v23[1] = 0;
  v23[2] = 0;
  v23[0] = 0x39E0000000005;
  v22 = 0;
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v21[0] = v6;
  v21[1] = 0;
  v21[2] = v7;
  v21[3] = 0;
  v8 = *(a1 + 72);
  v21[4] = v8;
  v21[5] = 0;
  v9 = time(0);
  v21[6] = v9;
  v21[7] = 0;
  v21[8] = *(a1 + 44);
  LOWORD(v22) = *(a1 + 112);
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 44);
    v12 = *(a1 + 48);
    v13 = *(a1 + 112);
    v14 = *(a1 + 32);
    *buf = 67110914;
    v25 = v11;
    v26 = 1024;
    v27 = v12;
    v28 = 2048;
    v29 = v6;
    v30 = 2048;
    v31 = v7;
    v32 = 2048;
    v33 = v8;
    v34 = 2048;
    v35 = v9;
    v36 = 1024;
    v37 = v13;
    v38 = 2112;
    v39 = v14;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "=restorable= Restoring attributes u/gid %d/%d, b/m/c/atime %ld/%ld/%ld/%ld, permissions 0%o to %@", buf, 0x46u);
    v19 = *(a1 + 112);
    v20 = *(a1 + 32);
    v17 = *(a1 + 44);
    v18 = *(a1 + 48);
    _MBLog();
  }

  if (setattrlistat(a2, a3, v23, v21, 0x50uLL, 3u) < 0)
  {
    v15 = [MBError posixErrorWithPath:*(a1 + 32) format:@"fsetattrlist() failed"];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_1000F2524(uint64_t a1, int a2, char *a3)
{
  memset(&v22, 0, sizeof(v22));
  if (fstatat(a2, a3, &v22, 32))
  {
    v6 = *__error();
    if (v6 != 2)
    {
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [*(a1 + 32) length];
        *buf = 136315650;
        v24 = a3;
        v25 = 2048;
        v26 = v8;
        v27 = 1024;
        v28 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "=restorable= fstatat failed at %s (%ld): %{errno}d", buf, 0x1Cu);
        v20 = [*(a1 + 32) length];
        v21 = v6;
        v19 = a3;
        _MBLog();
      }

      v9 = *(a1 + 32);
      v10 = @"fstatat error";
      v11 = v6;
      goto LABEL_19;
    }
  }

  else
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = MBNodeTypeString(v22.st_mode);
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=restorable= Removing existing %@", buf, 0xCu);

      v19 = MBNodeTypeString(v22.st_mode);
      _MBLog();
    }

    if (unlinkat(a2, a3, 0) && *__error() != 2)
    {
      v11 = *__error();
      v9 = *(a1 + 32);
      v10 = @"Error removing existing item while restoring symbolic link";
      goto LABEL_19;
    }
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 40);
    *buf = 138412290;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "=restorable= Creating symbolic link: %@", buf, 0xCu);
    v19 = *(a1 + 40);
    _MBLog();
  }

  if ([*(a1 + 40) length])
  {
    v16 = [*(a1 + 40) fileSystemRepresentation];
  }

  else
  {
    v16 = "";
  }

  if (!symlinkat(v16, a2, a3))
  {
    v17 = 0;
    goto LABEL_20;
  }

  v11 = *__error();
  v9 = *(a1 + 32);
  v10 = @"symlinkat error";
LABEL_19:
  v17 = [MBError errorWithErrno:v11 path:v9 format:v10, v19, v20, v21];
LABEL_20:

  return v17;
}

id sub_1000F2844(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128) == 1)
  {
    v4 = *(a1 + 60);
    v5 = *(a1 + 64);
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109376;
      *&buf[4] = v4;
      *&buf[8] = 1024;
      *&buf[10] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=restorable= Restoring symbolic link ownership: %d:%d", buf, 0xEu);
      v28 = v4;
      v30 = v5;
      _MBLog();
    }

    if (fchown(a2, v4, v5))
    {
      v7 = [MBError posixErrorWithCode:102 path:*(a1 + 32) format:@"fchown error"];
LABEL_6:
      v8 = v7;
      goto LABEL_35;
    }

    v9 = *(a1 + 68);
    if ((*(a1 + 124) & 0xF000) == 0xA000)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 68) & 0x80;
    }

    v11 = v10 | *(a1 + 68) & 0x8040u;
    if (v11)
    {
      v12 = MBGetDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=restorable= Restoring symlink BSD flags: 0x%x", buf, 8u);
        v28 = v11;
        _MBLog();
      }

      if (fchflags(a2, v11))
      {
        v13 = *__error();
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = *(a1 + 32);
          *buf = 67109634;
          *&buf[4] = v11;
          *&buf[8] = 2112;
          *&buf[10] = v15;
          *&buf[18] = 1024;
          *&buf[20] = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore symlink BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
          v31 = *(a1 + 32);
          _MBLog();
        }

        v7 = [MBError errorWithCode:102 path:*(a1 + 32) format:@"fchflags error"];
        goto LABEL_6;
      }
    }
  }

  v16 = [*(a1 + 40) extendedAttributes];
  if (v16)
  {
    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "=restorable= Restoring symbolic link extended attributes", buf, 2u);
      _MBLog();
    }

    v33 = 0;
    v18 = [MBExtendedAttributes setAttributes:v16 forFD:a2 error:&v33];
    v19 = v33;
    v20 = v19;
    if (!v18)
    {
      v26 = [MBError errorWithCode:102 error:*(a1 + 48) format:@"setxattr error"];
LABEL_32:
      v8 = v26;

      goto LABEL_34;
    }
  }

  if (*(a1 + 128) != 1)
  {
    goto LABEL_27;
  }

  v21 = *(a1 + 124) & 0xFFF;
  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "=restorable= Restoring symbolic link permissions: 0%3o", buf, 8u);
    _MBLog();
  }

  if (!fchmod(a2, v21))
  {
LABEL_27:
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [NSDate dateWithTimeIntervalSince1970:*(a1 + 80)];
      v25 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "=restorable= Restoring last modified time (%@) for %@", buf, 0x16u);

      v29 = [NSDate dateWithTimeIntervalSince1970:*(a1 + 80)];
      v32 = *(a1 + 40);
      _MBLog();
    }

    *buf = time(0);
    *&buf[8] = 0;
    *&buf[16] = *(a1 + 80);
    v35 = 0;
    if (!futimes(a2, buf))
    {
      v8 = 0;
      goto LABEL_34;
    }

    v20 = [*(a1 + 40) description];
    v26 = [MBError posixErrorWithCode:102 path:v20 format:@"futimes error"];
    goto LABEL_32;
  }

  v8 = [MBError posixErrorWithCode:102 path:*(a1 + 32) format:@"fchmod error"];
LABEL_34:

LABEL_35:

  return v8;
}

id sub_1000F30F0(uint64_t a1, int a2, char *a3)
{
  v6 = (*(a1 + 108) & 0xFFF);
  memset(&v26, 0, sizeof(v26));
  if (fstatat(a2, a3, &v26, 32))
  {
    if (*__error() != 2)
    {
      v15 = *__error();
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [*(a1 + 32) length];
        *buf = 136315650;
        v28 = a3;
        v29 = 2048;
        v30 = v17;
        v31 = 1024;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=restorable= fstatat failed at %s (%ld): %{errno}d", buf, 0x1Cu);
        v24 = [*(a1 + 32) length];
        v25 = v15;
        v23 = a3;
        _MBLog();
      }

      v9 = *(a1 + 32);
      v10 = @"fstatat error";
      v18 = 101;
      goto LABEL_24;
    }

    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v28 = v8;
      v29 = 1024;
      LODWORD(v30) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "=restorable= Making directory at %@ (0%3o)", buf, 0x12u);
      v23 = *(a1 + 32);
      v24 = v6;
      _MBLog();
    }

    if (mkpathat_np(a2, a3, v6))
    {
      v9 = *(a1 + 32);
      v10 = @"mkpathat_np error";
LABEL_23:
      v18 = 102;
LABEL_24:
      v21 = [MBError posixErrorWithCode:v18 path:v9 format:v10, v23, v24, v25];
      goto LABEL_26;
    }
  }

  else
  {
    v11 = v26.st_mode & 0xF000;
    v12 = MBGetDefaultLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v11 == 0x4000)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=restorable= Directory already exists", buf, 2u);
        _MBLog();
      }

      v14 = MBGetDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v28) = v6;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "=restorable= Restoring directory permissions: 0%3o", buf, 8u);
        v23 = v6;
        _MBLog();
      }

      if (fchmodat(a2, a3, v6, 32))
      {
        v9 = *(a1 + 32);
        v10 = @"fchmodat error";
        goto LABEL_23;
      }
    }

    else
    {
      if (v13)
      {
        v19 = MBNodeTypeString(v26.st_mode);
        *buf = 138412290;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "=restorable= Removing existing object %@", buf, 0xCu);

        v23 = MBNodeTypeString(v26.st_mode);
        _MBLog();
      }

      unlinkat(a2, a3, 0);
      v20 = MBGetDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v28) = v6;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "=restorable= Making directory: 0%3o", buf, 8u);
        v23 = v6;
        _MBLog();
      }

      if (mkdirat(a2, a3, v6))
      {
        v9 = *(a1 + 32);
        v10 = @"mkdirat error";
        goto LABEL_23;
      }
    }
  }

  v21 = 0;
LABEL_26:

  return v21;
}

id sub_1000F3550(uint64_t a1, int a2)
{
  if (*(a1 + 128) == 1)
  {
    v4 = *(a1 + 60);
    v5 = *(a1 + 64);
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 67109634;
      *v39 = v4;
      *&v39[4] = 1024;
      *&v39[6] = v5;
      *&v39[10] = 2112;
      *&v39[12] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "=restorable= Restoring directory ownership: %d:%d at path %@", buf, 0x18u);
      v33 = v5;
      v35 = *(a1 + 32);
      v32 = v4;
      _MBLog();
    }

    if (fchown(a2, v4, v5))
    {
      v8 = [MBError posixErrorWithCode:102 path:*(a1 + 32) format:@"fchown error"];
      goto LABEL_39;
    }
  }

  v9 = [*(a1 + 32) fileSystemRepresentation];
  v10 = [*(a1 + 40) extendedAttributes];
  if (v10)
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v10 count];
      v13 = *(a1 + 32);
      *buf = 134218242;
      *v39 = v12;
      *&v39[8] = 2112;
      *&v39[10] = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "=restorable= Restoring directory extended attributes (%ld) at path %@", buf, 0x16u);
      v32 = [v10 count];
      v33 = *(a1 + 32);
      _MBLog();
    }

    if ((*(a1 + 71) & 0x40) != 0)
    {
      v14 = [v10 objectForKeyedSubscript:@"com.apple.decmpfs"];
      if (v14)
      {
        v15 = MBGetDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "=restorable= Not re-applying the com.apple.decmpfs xattr yet.", buf, 2u);
          _MBLog();
        }

        v16 = [v10 mutableCopy];
        [v16 removeObjectForKey:@"com.apple.decmpfs"];

        v10 = v16;
      }
    }

    else
    {
      v14 = 0;
    }

    v37 = 0;
    v17 = [MBExtendedAttributes setAttributes:v10 forPathFSR:v9 error:&v37, v32, v33, v35];
    v18 = v37;
    v19 = v18;
    if (!v17)
    {
      v8 = [MBError errorWithCode:102 error:v18 format:@"setxattr error"];

      goto LABEL_38;
    }
  }

  else
  {
    v14 = 0;
  }

  if (*(a1 + 128) != 1)
  {
    goto LABEL_34;
  }

  v20 = *(a1 + 68);
  if ((*(a1 + 124) & 0xF000) == 0xA000)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(a1 + 68) & 0x80;
  }

  v22 = v21 | *(a1 + 68) & 0x8040;
  if (v22)
  {
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v39 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "=restorable= Restoring directory BSD flags: 0x%x", buf, 8u);
      _MBLog();
    }

    if (fchflags(a2, v22))
    {
      v24 = *__error();
      v25 = MBGetDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *(a1 + 32);
        *buf = 67109634;
        *v39 = v22;
        *&v39[4] = 2112;
        *&v39[6] = v26;
        *&v39[14] = 1024;
        *&v39[16] = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=restorable= Failed to restore directory BSD flags (0x%x) at %@: %{errno}d", buf, 0x18u);
        v34 = *(a1 + 32);
        _MBLog();
      }

      v27 = [MBError errorWithCode:102 path:*(a1 + 32) format:@"fchflags error"];
LABEL_36:
      v8 = v27;
      goto LABEL_38;
    }

    v20 = *(a1 + 68);
  }

  if ((v20 & 0x40000000) == 0)
  {
LABEL_34:
    if (*(a1 + 129) != 1)
    {
      v8 = 0;
      goto LABEL_38;
    }

    v27 = [*(a1 + 48) _setProtectionClass:*(a1 + 126) withPath:*(a1 + 32)];
    goto LABEL_36;
  }

  v28 = *(a1 + 32);
  v36 = 0;
  v29 = sub_1000F0A08(v28, v14, &v36);
  v30 = v36;
  v8 = v30;
  if (v29)
  {

    goto LABEL_34;
  }

LABEL_38:

LABEL_39:

  return v8;
}

void sub_1000F4BB0(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 recordName];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    [*(a1 + 40) refreshWithRecord:v7];
  }

  [*(a1 + 40) _reportProgressOfSuccessfullyFetchedManifestPageRecord:v7 referenceFetchProgress:*(a1 + 48)];
}

void sub_1000F4C3C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) domainName];
      *buf = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Error fetching manifest for domain %@: %@", buf, 0x16u);

      v6 = [*(a1 + 32) domainName];
      _MBLog();
    }
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
}

uint64_t sub_1000F5454(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKey:@"recordID"];
  v5 = [v3 domainName];

  LOBYTE(v3) = [MBDomain isLegacyPerAppPlaceholderName:v5];
  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) addObject:v4];
  }

  return 1;
}

uint64_t sub_1000F55C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKey:@"recordID"];
  v5 = [v3 domainName];

  LODWORD(v3) = [MBDomain isLegacyPerAppPlaceholderName:v5];
  if (v3)
  {
    [*(a1 + 32) addObject:v4];
  }

  return 1;
}

void sub_1000F6648(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v12 = [a1[4] debugContext];
    v13 = [v12 isFlagSet:@"SimulateNetworkUnavailableErrorOnUpload"];

    if (!v13)
    {
      goto LABEL_8;
    }

    v14 = [MBError posixErrorWithCode:308 format:@"Simulated network unreachable error"];
    v15 = [v14 userInfo];
    v7 = [NSError errorWithDomain:CKErrorDomain code:3 userInfo:v15];

    if (!v7)
    {
LABEL_8:
      v16 = a1[5];
      v87 = 0;
      v17 = [v16 validateEncryptionKeyWithError:&v87];
      v18 = v87;
      if (v17)
      {
        if (MBIsInternalInstall())
        {
          v86 = [a1[5] protectionClass];
          v19 = [a1[5] relativePath];
          v20 = [a1[5] absolutePath];
          v21 = [a1[5] domainName];
          v22 = [v5 objectForKeyedSubscript:@"contents"];
          v23 = v22;
          if (v22)
          {
            v24 = [v22 signature];
            v25 = v24;
            if (v24)
            {
              v26 = [v24 length];
              v27 = [v25 bytes];
              if (v26)
              {
                v28 = v27;
                if (v27)
                {
                  v84 = [v25 base64EncodedStringWithOptions:0];
                  v29 = MBGetDefaultLog();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                  {
                    v30 = [v23 size];
                    v31 = *v28;
                    *buf = 138413570;
                    v90 = v21;
                    if (v31 == 4)
                    {
                      v32 = "v2";
                    }

                    else
                    {
                      v32 = "v1";
                    }

                    v91 = 2112;
                    v92 = v20;
                    v93 = 2048;
                    v94 = v30;
                    v95 = 1024;
                    v96 = v86;
                    v97 = 2080;
                    v98 = v32;
                    v99 = 2112;
                    v100 = v84;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Uploaded %@:%@, sz:%llu, pc:%d, MMCS%s sig:%@", buf, 0x3Au);
                    v33 = [v23 size];
                    v34 = "v1";
                    if (*v28 == 4)
                    {
                      v34 = "v2";
                    }

                    v82 = v34;
                    v83 = v84;
                    v80 = v33;
                    v81 = v86;
                    v75 = v21;
                    v78 = v20;
                    _MBLog();
                  }
                }
              }
            }
          }

          v35 = [v5 objectForKeyedSubscript:{@"resources", v75, v78, v80, v81, v82, v83}];
          v36 = v35;
          if (v35)
          {
            v85 = v20;
            v37 = v19;
            v38 = [v35 signature];
            v39 = v38;
            if (v38)
            {
              v40 = [v38 length];
              v41 = [v39 bytes];
              if (v40)
              {
                v42 = v41;
                if (v41)
                {
                  v43 = MBGetDefaultLog();
                  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                  {
                    v44 = [v36 size];
                    v45 = *v42;
                    *buf = 138413314;
                    v90 = v21;
                    if (v45 == 4)
                    {
                      v46 = "v2";
                    }

                    else
                    {
                      v46 = "v1";
                    }

                    v91 = 2112;
                    v92 = v37;
                    v93 = 2048;
                    v94 = v44;
                    v95 = 1024;
                    v96 = v86;
                    v97 = 2080;
                    v98 = v46;
                    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Uploaded xattrs for d:%@, rp:%@, sz:%llu, pc:%d, MMCS%s", buf, 0x30u);
                    v47 = [v36 size];
                    if (*v42 == 4)
                    {
                      v48 = "v2";
                    }

                    else
                    {
                      v48 = "v1";
                    }

                    v81 = v86;
                    v82 = v48;
                    v78 = v37;
                    v80 = v47;
                    v75 = v21;
                    _MBLog();
                  }
                }
              }
            }

            v19 = v37;
            v20 = v85;
          }
        }

        if ([a1[5] isRegularFile])
        {
          v49 = [a1[4] telemetry];
          [v49 countUploadedFileWithSize:{objc_msgSend(a1[5], "aggregateSize")}];
        }

        v50 = [a1[6] cache];
        v51 = [v50 setFileStateToCompleted:a1[5]];

        v52 = MBGetDefaultLog();
        v53 = v52;
        if (v51)
        {
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            v54 = a1[5];
            *buf = 138412546;
            v90 = v54;
            v91 = 2112;
            v92 = v51;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "Failed to commit in flight file (%@) to cache: %@", buf, 0x16u);
            v76 = a1[5];
            v79 = v51;
            _MBLog();
          }

          [a1[6] setFileUploadError:v51];
        }

        else
        {
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            v74 = [a1[5] fileID];
            *buf = 138412290;
            v90 = v74;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Committed file %@", buf, 0xCu);

            v76 = [a1[5] fileID];
            _MBLog();
          }
        }

        [a1[5] cleanupAfterUpload];
      }

      else
      {
        v58 = MBGetDefaultLog();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          v59 = a1[5];
          *buf = 138412546;
          v90 = v59;
          v91 = 2112;
          v92 = v18;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "File encryption key doesn't check out after upload for %@: %@", buf, 0x16u);
          v77 = a1[5];
          _MBLog();
        }

        v51 = [MBError errorWithCode:215 error:v18 format:@"Encryption key changed for file"];
        [a1[6] setFileUploadError:v51];
      }

      v7 = 0;
      goto LABEL_69;
    }
  }

  if ([MBError isCKPartialFailureError:v7])
  {
    goto LABEL_4;
  }

  v11 = [v7 domain];
  if (![CKErrorDomain isEqualToString:v11])
  {
    goto LABEL_54;
  }

  v55 = [v7 code];

  if (v55 == 17)
  {
LABEL_4:
    v8 = [v7 userInfo];
    v9 = [v8 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
    v10 = [v5 recordID];
    v11 = [v9 objectForKeyedSubscript:v10];

    if ([v7 code] != 17)
    {
      v56 = [v11 domain];
      if (([CKErrorDomain isEqualToString:v56] & 1) == 0)
      {

        goto LABEL_54;
      }

      v57 = [v11 code];

      if (v57 != 17)
      {
        goto LABEL_54;
      }
    }

    [a1[5] confirmFileWasModifiedOnDisk];
LABEL_54:
  }

  v60 = MBGetDefaultLog();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    v61 = [a1[5] domainName];
    v62 = [a1[5] relativePath];
    *buf = 138412802;
    v90 = v61;
    v91 = 2112;
    v92 = v62;
    v93 = 2112;
    v94 = v7;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Failed to upload %@:%@ (%@)", buf, 0x20u);

    v63 = [a1[5] domainName];
    v78 = [a1[5] relativePath];
    v80 = v7;
    v75 = v63;
    _MBLog();
  }

  [a1[6] setFileUploadError:v7];
  if ([MBError isAssetNotFoundError:v7])
  {
    v64 = [a1[5] assetPath];
    v65 = [a1[7] snapshotPath];
    v66 = [a1[5] domain];
    v67 = [v66 volumeMountPoint];
    MBDiagnoseUnavailableFile(v64, v65, v67, 2, "open");
  }

  if ([MBError isAssetNotAvailableError:v7, v75, v78, v80])
  {
    v68 = [a1[5] absolutePath];
    v88 = 0;
    v69 = [MBProtectionClassUtils isContentUnavailableDueToCxExpiration:v68 error:&v88];
    v18 = v88;

    if (v69 && v18)
    {
      [a1[6] setFileUploadError:v18];
    }

    else
    {
      v70 = [a1[5] assetPath];
      v71 = [a1[7] snapshotPath];
      v72 = [a1[5] domain];
      v73 = [v72 volumeMountPoint];
      MBDiagnoseUnavailableFile(v70, v71, v73, 1, "open");
    }

LABEL_69:
  }
}

void sub_1000F74F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 cache];
  v6 = [MBCKFile fileWithRecord:v4 cache:v5 manifest:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

void sub_1000F7594(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = MBGetDefaultLog();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        *buf = 138543618;
        v15 = v10;
        v16 = 2114;
        v17 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "PrivilegedManifestDownload query (%{public}@) failed: %{public}@", buf, 0x16u);
        v12 = *(a1 + 32);
LABEL_9:
        _MBLog();
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PrivilegedManifestDownload query (%{public}@) completed", buf, 0xCu);
      v13 = *(a1 + 32);
      goto LABEL_9;
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), v7);
    goto LABEL_11;
  }

  [*(a1 + 40) _queryManifestWithOperationTracker:*(a1 + 48) progress:*(a1 + 64) recordName:*(a1 + 32) cursor:v5 completion:*(a1 + 56)];
LABEL_11:
}

void sub_1000F793C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F7960(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000F7978(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000F7B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F7B34(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_1000F7DDC(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKey:@"recordID"];
  [*(a1 + 32) addObject:v3];

  return 1;
}

void sub_1000F7F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F7F78(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_1000F8830(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSString alloc] initWithFormat:@"%@%@", @"F:", v3];

  v5 = [[CKRecordID alloc] initWithRecordName:v4];
  [*(a1 + 32) addObject:v5];

  return 1;
}

void sub_1000F88C8(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [a2 recordName];
    v5 = [v4 substringFromIndex:{objc_msgSend(@"M:", "length")}];

    v6 = [*(a1 + 32) cache];
    v7 = [v6 deleteCloudFilePendingDeleteWithFileID:v5];
  }

  v8 = *(a1 + 40);

  dispatch_group_leave(v8);
}

void sub_1000F8964(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v2 = dispatch_queue_create("com.apple.backupd.deletePendingFiles", attr);
  v3 = qword_100421718;
  qword_100421718 = v2;
}

void sub_1000F89E8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1000F8E28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MBGetDefaultLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to delete manifest page %{public}@: %@", buf, 0x16u);
LABEL_6:
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Deleted manifest page %{public}@", buf, 0xCu);
    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1000F8F78(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v2 = dispatch_queue_create("com.apple.backupd.deletePendingManifests", attr);
  v3 = qword_100421728;
  qword_100421728 = v2;
}

void sub_1000F8FFC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1000F9334(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count] || objc_msgSend(v6, "count"))
  {
    v7 = [*(a1 + 32) _manifestRecordWithFiles:v5 placeholderFiles:v6 manifestIndex:*(*(*(a1 + 48) + 8) + 24)];
    v8 = [*(a1 + 32) cache];
    v9 = [*(a1 + 32) manifestID];
    v10 = [v8 addManifestPage:v7 forManifestID:v9 pageIndex:*(*(*(a1 + 48) + 8) + 24)];

    if (v10)
    {
      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(*(*(a1 + 48) + 8) + 24);
        v13 = *(a1 + 32);
        *buf = 134218498;
        v22 = v12;
        v23 = 2112;
        v24 = v13;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unable to add manifestPage %lu for manifest: %@ : %@", buf, 0x20u);
        v19 = *(a1 + 32);
        v18 = *(*(*(a1 + 48) + 8) + 24);
        _MBLog();
      }

      v14 = +[MBCKManager sharedInstance];
      v15 = *(a1 + 40);
      v20 = 0;
      [v14 resetCacheWithAccount:v15 error:&v20];
      v16 = v20;

      v17 = +[NSAssertionHandler currentHandler];
      [v17 handleFailureInMethod:*(a1 + 56) object:*(*(*(a1 + 48) + 8) + 24) file:*(a1 + 32) lineNumber:v10 description:?];
    }

    ++*(*(*(a1 + 48) + 8) + 24);
    [v5 removeAllObjects];
    [v6 removeAllObjects];
  }
}

uint64_t sub_1000F9594(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKey:@"recordID"];
  v5 = [v3 domainName];

  LODWORD(v3) = [MBDomain isLegacyPerAppPlaceholderName:v5];
  v6 = 40;
  if (v3)
  {
    v6 = 32;
  }

  v7 = *(a1 + v6);
  v8 = [[CKReference alloc] initWithRecordID:v4 action:0];
  [v7 addObject:v8];

  v9 = [*(a1 + 40) count];
  if (&v9[[*(a1 + 32) count]] >= *(a1 + 56))
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  return 1;
}

void sub_1000F9D88(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10 && ([v10 recordID], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "recordName"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasSuffix:", @":0"), v7, v6, !v5) && v8)
  {
    [*(a1 + 32) refreshWithRecord:v10];
  }

  else if (v5)
  {
    v9 = *(a1 + 32);
    objc_sync_enter(v9);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    objc_sync_exit(v9);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000F9E7C(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v2 = dispatch_queue_create("com.apple.backupd.saveManifests", attr);
  v3 = qword_100421738;
  qword_100421738 = v2;
}

void sub_1000F9F14(uint64_t a1)
{
  v2 = *(*(*(a1 + 64) + 8) + 40);
  v3 = MBGetDefaultLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 72);
      v7 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 134218498;
      v21 = v6;
      v22 = 2112;
      v23 = v5;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to save %lu manifest pages for %@: %@", buf, 0x20u);
      v14 = *(a1 + 32);
      v16 = *(*(*(a1 + 64) + 8) + 40);
      v12 = *(a1 + 72);
      _MBLog();
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), *(*(*(a1 + 64) + 8) + 40), v8);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 72);
      v10 = *(a1 + 32);
      *buf = 134218242;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Saved %lu manifest pages for %@", buf, 0x16u);
      v13 = *(a1 + 72);
      v15 = *(a1 + 32);
      _MBLog();
    }

    v11 = *(a1 + 40);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000FA134;
    v17[3] = &unk_1003BC2B8;
    v17[4] = v11;
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    [v11 saveToCacheWithCompletion:v17];
  }
}

void sub_1000FA134(void *a1, void *a2)
{
  v3 = a1[4];
  v6 = a2;
  v4 = [v3 cache];
  v5 = [v4 deleteManifestPagesForManifestID:a1[5]];

  (*(a1[6] + 16))();
}

void sub_1000FA4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1000FA4F8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000FA558(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1000FA5B8(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1[5] + 8);
  v5 = *(v3 + 40);
  v4 = (v3 + 40);
  if (!v5)
  {
    objc_storeStrong(v4, *(*(a1[6] + 8) + 40));
    v6 = *(*(a1[5] + 8) + 40);
  }

  (*(a1[4] + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000FFDF0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v12 = 0;
  v5 = [v4 restoreAssetWithError:&v12];
  v6 = v12;
  if ((v5 & 1) != 0 || ![MBError isError:v6 withCode:107])
  {
    if (a2)
    {
      v9 = v6;
      *a2 = v6;
    }
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) file];
      *buf = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Skipping restore for file:%@ for error:%@", buf, 0x16u);

      v11 = [*(a1 + 32) file];
      _MBLog();
    }

    v5 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return v5;
}

void sub_10010071C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10010073C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100100754(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100102044(id a1)
{
  v1 = +[MBBehaviorOptions sharedOptions];
  v2 = [v1 maxBatchSaveConcurrentModifyRecordsOperationsWithDefaultValue:6];

  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7FFFFFFFLL;
  }

  qword_100421750 = dispatch_semaphore_create(v4);

  _objc_release_x1();
}

uint64_t sub_100102ABC(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    [*(a1 + 40) uploadProgress];
    v3 = 1.0 - v2;
    v4 = [*(a1 + 40) assetSize];
    v5 = (v3 * (v4 + [*(a1 + 40) recordSize]));
    v6 = [*(a1 + 48) throughputEstimator];
    [v6 sampleUploadedBytes:v5];

    v7 = *(a1 + 56);
    if (objc_opt_respondsToSelector())
    {
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      [*(a1 + 40) uploadProgress];
      [v8 record:v9 madeProgress:objc_msgSend(*(a1 + 40) previousProgress:"assetSize") assetSize:objc_msgSend(*(a1 + 40) recordSize:{"recordSize"), 1.0, v10}];
    }

    [*(a1 + 40) setUploadProgress:1.0];
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    (*(v11 + 16))(v11, *(a1 + 64), *(a1 + 32));
  }

  v12 = *(a1 + 56);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    v16 = *(a1 + 32);

    return [v14 recordWasSaved:v15 withError:v16];
  }

  return result;
}

void sub_10010414C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100104178(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = [v5 recordID];
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  if (v6)
  {
    v8 = [*(a1 + 32) saveInfosByRecordID];
    v9 = [v8 objectForKeyedSubscript:v6];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 delegate];
  objc_sync_exit(v7);

  v11 = [*(a1 + 32) callbackQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100104394;
  block[3] = &unk_1003BD018;
  v26 = a3;
  v12 = v9;
  v22 = v12;
  v13 = v10;
  v23 = v13;
  v14 = v5;
  v15 = *(a1 + 32);
  v24 = v14;
  v25 = v15;
  dispatch_async(v11, block);

  if (objc_opt_respondsToSelector())
  {
    v16 = [*(a1 + 32) callbackQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1001044C0;
    v17[3] = &unk_1003BDB10;
    v18 = v13;
    v19 = v14;
    v20 = a3;
    dispatch_async(v16, v17);
  }
}

id sub_100104394(uint64_t a1)
{
  v2 = *(a1 + 64);
  [*(a1 + 32) uploadProgress];
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  if (v2 >= v5)
  {
    [v4 uploadProgress];
    v9 = v3 - v8;
    v10 = [*(a1 + 32) assetSize];
    v7 = v9 * (v10 + [*(a1 + 32) recordSize]);
    v11 = *(a1 + 40);
    if (objc_opt_respondsToSelector())
    {
      v13 = *(a1 + 40);
      v12 = *(a1 + 48);
      v14 = *(a1 + 64);
      [*(a1 + 32) uploadProgress];
      [v13 record:v12 madeProgress:objc_msgSend(*(a1 + 32) previousProgress:"assetSize") assetSize:objc_msgSend(*(a1 + 32) recordSize:{"recordSize"), v14, v15}];
    }
  }

  else
  {
    v6 = [v4 assetSize];
    v7 = v3 * (v6 + [*(a1 + 32) recordSize]);
  }

  v16 = [*(a1 + 56) throughputEstimator];
  [v16 sampleUploadedBytes:v7];

  v17 = *(a1 + 64);
  v18 = *(a1 + 32);

  return [v18 setUploadProgress:v17];
}

void sub_1001044D0(uint64_t a1, void *a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v8 = *(a1 + 32);
        objc_sync_enter(v8);
        v9 = [*(a1 + 32) saveInfosByRecordID];
        v10 = [v9 objectForKeyedSubscript:v7];

        v11 = [v10 record];
        v12 = [v10 delegate];
        objc_sync_exit(v8);

        if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v13 = [*(a1 + 32) callbackQueue];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10010470C;
          v14[3] = &unk_1003BC060;
          v15 = v12;
          v16 = v11;
          dispatch_async(v13, v14);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }
}

void sub_100104718(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = *(a1 + 32);
  objc_sync_enter(v10);
  if (v14)
  {
    v11 = [*(a1 + 32) saveInfosByRecordID];
    v12 = [v11 objectForKeyedSubscript:v14];

    if (v12)
    {
      [*(a1 + 32) _handleCompletionForSaveInfo:v12 operation:WeakRetained record:v7 saveInfos:*(a1 + 40) error:v8];
      if ([v12 state] == 3)
      {
        v13 = [*(a1 + 32) saveInfosByRecordID];
        [v13 removeObjectForKey:v14];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  objc_sync_exit(v10);
}

void sub_10010516C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001051BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    __assert_rtn("[MBCKBatchSave _sendBatchSaveOperationForSaveInfos:savePolicy:batchSize:batchAssetsSize:]_block_invoke", "MBCKBatchSave.m", 536, "strongOp");
  }

  v11 = WeakRetained;
  v12 = [WeakRetained operationID];
  v13 = MBGetDefaultLog();
  v14 = v13;
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 138543874;
      v22 = v12;
      v23 = 2114;
      v24 = v15;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "=ck-save= Operation %{public}@/%{public}@ failed: %@", buf, 0x20u);
      v19 = *(a1 + 32);
LABEL_7:
      _MBLog();
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    *buf = 138543618;
    v22 = v12;
    v23 = 2114;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "=ck-save= Operation %{public}@/%{public}@ completed", buf, 0x16u);
    v20 = *(a1 + 32);
    goto LABEL_7;
  }

  [*(a1 + 32) _handleCompletionForSaveInfos:*(a1 + 40) operation:v11 savedRecords:v7 operationError:v9];
  atomic_fetch_add_explicit((*(a1 + 32) + 8), 0xFFFFFFFF, memory_order_relaxed);
  v17 = [*(a1 + 32) saveSemaphore];
  dispatch_semaphore_signal(v17);

  v18 = [*(a1 + 32) saveGroup];
  dispatch_group_leave(v18);
}

id sub_1001053E8(uint64_t a1)
{
  atomic_fetch_add_explicit((*(a1 + 32) + 8), 1u, memory_order_relaxed);
  [*(a1 + 40) addDatabaseOperation:*(a1 + 48) policy:*(a1 + 56)];
  result = [*(a1 + 32) canceled];
  if (result)
  {
    result = [*(a1 + 48) isCancelled];
    if ((result & 1) == 0)
    {
      v3 = MBGetDefaultLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [*(a1 + 48) operationID];
        v5 = *(a1 + 32);
        *buf = 138543618;
        v9 = v4;
        v10 = 2114;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "=ck-save= Canceling operation %{public}@ for %{public}@", buf, 0x16u);

        v6 = [*(a1 + 48) operationID];
        v7 = *(a1 + 32);
        _MBLog();
      }

      return [*(a1 + 48) cancel];
    }
  }

  return result;
}

void sub_100105A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100105A80(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    __assert_rtn("[MBCKBatchSave _scheduleBatchSaveOperationForSaveInfos:]_block_invoke", "MBCKBatchSave.m", 596, "strongTimer");
  }

  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = [*(a1 + 32) timers];
  [v5 removeObject:WeakRetained];

  objc_sync_exit(v4);
  if (a2)
  {
    v6 = [MBError errorWithCode:202 format:@"Batch save canceled"];
    [*(a1 + 32) _handleCompletionForSaveInfos:*(a1 + 40) operation:0 savedRecords:0 operationError:v6];
    v7 = [*(a1 + 32) saveSemaphore];
    dispatch_semaphore_signal(v7);
  }

  else
  {
    [*(a1 + 32) _sendBatchSaveOperationForSaveInfos:*(a1 + 40) savePolicy:*(a1 + 56) batchSize:*(a1 + 64) batchAssetsSize:*(a1 + 72)];
  }

  v8 = [*(a1 + 32) saveGroup];
  dispatch_group_leave(v8);
}

int64_t sub_100106248(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 record];
  v6 = [v5 recordID];
  v7 = [v6 zoneID];

  v8 = [v4 record];

  v9 = [v8 recordID];
  v10 = [v9 zoneID];

  v11 = [v7 compareToRecordZoneID:v10];
  return v11;
}

void sub_1001063E8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) throughputEstimator];
  [v3 finishSampling];

  [*(a1 + 32) _finishBatchedSavesWithCompletion:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_1001066AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001066C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001066DC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "=ck-save= Failed to upload modified assets: %@", buf, 0xCu);
      _MBLog();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100107888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001078BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001078D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (v6)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get localized string from byte count: %{public}@", buf, 0xCu);
      _MBLog();
    }
  }
}

void sub_1001079C8(uint64_t a1, unint64_t a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  v7 = v10;
  atomic_store(0, (*(a1 + 32) + 8));
  if (v7)
  {
    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (a2 <= 3)
    {
      v9 = qword_1002B9E90[a2];
    }

    v8 = *(*(a1 + 40) + 16);
  }

  v8();
  dispatch_group_leave(*(*(a1 + 32) + 24));
}

void sub_100107D24(uint64_t a1, unint64_t a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  v7 = v10;
  atomic_store(0, (*(a1 + 32) + 8));
  if (v7)
  {
    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (a2 <= 3)
    {
      v9 = qword_1002B9E90[a2];
    }

    v8 = *(*(a1 + 40) + 16);
  }

  v8();
  dispatch_group_leave(*(*(a1 + 32) + 24));
}

void sub_100107ED0(uint64_t a1)
{
  v2 = MBGetDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    *buf = 134217984;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Firing prompt attempt:(%llu)", buf, 0xCu);
    v13 = *(a1 + 56);
    _MBLog();
  }

  responseFlags = 0;
  error = -1;
  v4 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, &error, *(a1 + 32));
  if (error)
  {
    v5 = *(a1 + 48);
    [MBError errorWithCode:1 format:@"CFUserNotificationCreate error:%d", error];
    v7 = LABEL_7:;
    (*(v5 + 16))(v5, 0, v7);

    goto LABEL_8;
  }

  objc_storeStrong((*(a1 + 40) + 16), v4);
  atomic_store(1u, (*(a1 + 40) + 10));
  v6 = CFUserNotificationReceiveResponse(v4, 0.0, &responseFlags);
  error = v6;
  atomic_store(0, (*(a1 + 40) + 10));
  if (v6)
  {
    v5 = *(a1 + 48);
    [MBError errorWithCode:1 format:@"CFUserNotificationReceiveResponse error:%d", v6];
    goto LABEL_7;
  }

  v8 = responseFlags & 3;
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received response from prompt: (%lu)", buf, 0xCu);
    _MBLog();
  }

  v10 = atomic_load((*(a1 + 40) + 9));
  if ((v10 & 1) != 0 || v8 != 3)
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48));
  }

  else
  {
    v11 = MBGetDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 64);
      *buf = 134217984;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Retrying prompt after %lld seconds", buf, 0xCu);
      v14 = *(a1 + 64);
      _MBLog();
    }

    [*(a1 + 40) _firePromptWithDict:*(a1 + 32) retryCount:*(a1 + 56) + 1 completion:*(a1 + 48)];
  }

LABEL_8:
}

void sub_100108304(id a1)
{
  qword_100421768 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MBHelperServiceProtocol];

  _objc_release_x1();
}

void sub_10010834C(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v1 = qword_100421760;
  qword_100421760 = 0;

  objc_sync_exit(obj);
}

uint64_t sub_100109CE0(uint64_t a1)
{
  qword_100421780 = dispatch_semaphore_create(*(a1 + 32));

  return _objc_release_x1();
}

id sub_10010A030(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10010A064(void *a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = *(*(a1[5] + 8) + 40);
  if (v10)
  {
    if (v8)
    {
      (*(v10 + 16))(v10, v8);
LABEL_4:
      v11 = *(a1[5] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;

      goto LABEL_5;
    }

    if (!v7)
    {
      v13 = [MBError errorWithCode:4 format:@"No record and no error was returned for record %@", v14];
      (*(v10 + 16))(v10, v13);

      goto LABEL_4;
    }

    (*(a1[4] + 16))();
    if (!--*(*(a1[6] + 8) + 24))
    {
      (*(*(*(a1[5] + 8) + 40) + 16))(*(*(a1[5] + 8) + 40), 0);
      goto LABEL_4;
    }
  }

LABEL_5:
}

void sub_10010B928(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    __assert_rtn("[MBCKBatchFetch _sendBatchFetchOperationForFetchInfos:]_block_invoke", "MBCKBatchFetch.m", 390, "!opFinished");
  }

  if (!v8)
  {
    __assert_rtn("[MBCKBatchFetch _sendBatchFetchOperationForFetchInfos:]_block_invoke", "MBCKBatchFetch.m", 391, "recordID");
  }

  v10 = v9;
  v11 = *(a1 + 32);
  objc_sync_enter(v11);
  v12 = [*(a1 + 32) fetchInfosByRecordID];
  v13 = [v12 objectForKeyedSubscript:v8];

  if (v13)
  {
    if ([*(a1 + 32) _handleCompletionForFetchInfo:v13 record:v7 error:v10])
    {
      v14 = [*(a1 + 32) fetchInfosByRecordID];
      [v14 removeObjectForKey:v8];
    }
  }

  else if (MBIsInternalInstall())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v16 = [WeakRetained operationID];

    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = *(a1 + 40);
      *buf = 138413058;
      v21 = v16;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "=ck-fetch= Received unexpected completion for operationID:%@, recordID:%@, error:%@, fetchInfos:%@", buf, 0x2Au);
      v19 = *(a1 + 40);
      _MBLog();
    }
  }

  objc_sync_exit(v11);
}

void sub_10010BB7C(uint64_t a1, void *a2, void *a3)
{
  v48 = a2;
  v5 = a3;
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v51 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    __assert_rtn("[MBCKBatchFetch _sendBatchFetchOperationForFetchInfos:]_block_invoke", "MBCKBatchFetch.m", 407, "strongOp");
  }

  v6 = MBGetDefaultLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [WeakRetained operationID];
      v9 = *(a1 + 32);
      *buf = 138543874;
      v60 = v8;
      v61 = 2114;
      v62 = v9;
      v63 = 2112;
      v64 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "=ck-fetch= Operation %{public}@/%{public}@ failed: %@", buf, 0x20u);

      v10 = [WeakRetained operationID];
      v43 = *(a1 + 32);
      v44 = v5;
      v41 = v10;
      _MBLog();
LABEL_7:
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [WeakRetained operationID];
    v12 = *(a1 + 32);
    *buf = 138543618;
    v60 = v11;
    v61 = 2114;
    v62 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "=ck-fetch= Operation %{public}@/%{public}@ completed", buf, 0x16u);

    v10 = [WeakRetained operationID];
    v41 = v10;
    v43 = *(a1 + 32);
    _MBLog();
    goto LABEL_7;
  }

  v52 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v49 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v13 = *(a1 + 40);
  v14 = [v13 countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (!v14)
  {

    goto LABEL_50;
  }

  LOBYTE(v15) = 0;
  v16 = *v54;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v54 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v53 + 1) + 8 * i);
      if ([v18 state] == 3)
      {
        goto LABEL_14;
      }

      if ([v18 state] == 2)
      {
        if (!v5)
        {
          if (MBIsInternalInstall())
          {
            v20 = MBGetDefaultLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
            {
              v21 = v20;
              if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
              {
                v47 = [WeakRetained operationID];
                v22 = [v18 recordID];
                v23 = [v48 objectForKeyedSubscript:v22];
                v24 = *(v51 + 40);
                *buf = 138413058;
                v60 = v47;
                v61 = 2112;
                v62 = v23;
                v63 = 2112;
                v64 = v18;
                v65 = 2112;
                v66 = v24;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "=ck-fetch= Received unexpected completion for operationID:%@, record:%@, fetchInfo:%@, fetchInfos:%@", buf, 0x2Au);
              }

              v25 = [WeakRetained operationID];
              v26 = [v18 recordID];
              v27 = [v48 objectForKeyedSubscript:v26];
              v44 = v18;
              v45 = *(v51 + 40);
              v43 = v27;
              _MBLog();
            }

            v57[0] = @"operationID";
            v28 = [WeakRetained operationID];
            v57[1] = @"recordID";
            v58[0] = v28;
            v29 = [v18 recordID];
            v58[1] = v29;
            v30 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];

            if (!dword_100421778 && !atomic_fetch_add_explicit(&dword_100421778, 1u, memory_order_relaxed))
            {
              _MBCreateDiagnosticReport(@"CKFetchRecordsOperation completed successfully without invoking perRecordCompletionBlock", v30);
            }
          }

          v31 = MBGetDefaultLog();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = v31;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v33 = [WeakRetained operationID];
              *buf = 138412546;
              v60 = v33;
              v61 = 2112;
              v62 = v18;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "=ck-fetch= Received unexpected completion for operationID:%@, fetchInfo:%@", buf, 0x16u);
            }

            v42 = [WeakRetained operationID];
            v43 = v18;
            _MBLog();
          }

          v34 = [WeakRetained operationID];
          v5 = [MBError errorWithCode:304 format:@"Unexpected nil error for operation %@", v34];
        }

        if ([*(v51 + 32) _handleCompletionForFetchInfo:v18 record:0 error:v5])
        {
          v35 = [v18 recordID];
          [v49 addObject:v35];

LABEL_14:
          [v52 addObject:v18];
          v19 = 1;
          goto LABEL_36;
        }
      }

      if ([v18 state] == 1)
      {
        [v18 setState:0];
        [v18 setOperationError:v5];
      }

      v19 = 0;
LABEL_36:
      if (!v5)
      {
        v19 = 0;
      }

      if (v15)
      {
        v15 = 1;
      }

      else
      {
        v15 = v19;
      }
    }

    v14 = [v13 countByEnumeratingWithState:&v53 objects:v67 count:16];
  }

  while (v14);

  if (v5)
  {
    v36 = 0;
  }

  else
  {
    v36 = v15;
  }

  if (v36 == 1)
  {
    __assert_rtn("[MBCKBatchFetch _sendBatchFetchOperationForFetchInfos:]_block_invoke", "MBCKBatchFetch.m", 456, "!trackError || operationError");
  }

  if (v15)
  {
    [*(v51 + 32) setFetchError:v5];
  }

LABEL_50:
  v37 = [*(v51 + 32) fetchInfosByRecordID];
  [v37 removeObjectsForKeys:v49];

  v38 = [*(v51 + 32) fetchInfos];
  [v38 removeObjectsInArray:v52];

  objc_sync_exit(obj);
  atomic_fetch_add_explicit((*(v51 + 32) + 8), 0xFFFFFFFF, memory_order_relaxed);
  v39 = [*(v51 + 32) fetchSemaphore];
  dispatch_semaphore_signal(v39);

  v40 = [*(v51 + 32) fetchGroup];
  dispatch_group_leave(v40);
}