uint64_t sub_100000DD8(unint64_t a1, _BYTE *a2)
{
  result = 0;
  if (a1 <= 0xC && ((1 << a1) & 0x125A) != 0)
  {
    result = 1;
    if (a2)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t sub_100000E0C(uint64_t a1)
{
  v2 = MAIsDownloadResultFailure() ^ 1;
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 0xE)
  {
    v2 = 1;
  }

  if (a1 == 29)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100000E6C(uint64_t a1, _BYTE *a2)
{
  v2 = a1 - 1;
  result = 1;
  switch(v2)
  {
    case 0:
    case 1:
    case 7:
    case 8:
    case 12:
    case 23:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 59:
    case 60:
    case 61:
    case 63:
    case 64:
    case 66:
    case 67:
    case 68:
    case 69:
      if (a2)
      {
        *a2 = 1;
      }

      break;
    case 2:
    case 15:
    case 16:
    case 17:
    case 29:
    case 33:
    case 34:
    case 46:
    case 70:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_100000FCC(uint64_t a1)
{
  v1 = a1 - 4;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 7:
    case 8:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
    case 22:
    case 23:
    case 29:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
    case 42:
    case 45:
    case 46:
    case 54:
    case 55:
    case 59:
    case 62:
    case 68:
    case 69:
    case 71:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

id sub_100001128()
{
  if (qword_100015488 != -1)
  {
    sub_1000078B4();
  }

  v1 = qword_100015480;

  return v1;
}

void sub_10000116C(id a1)
{
  qword_100015480 = dispatch_workloop_create("com.apple.gamecontroller.mobileasset");

  _objc_release_x1();
}

void sub_1000013F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 24))
  {
    goto LABEL_2;
  }

  v9 = 0;
  v5 = sub_10000151C(v4, &v9);
  v6 = v9;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    [v3 failWithError:v6];
    goto LABEL_7;
  }

  if (!*(*(a1 + 32) + 24))
  {
    v10 = NSLocalizedFailureReasonErrorKey;
    v11 = @"Did not find an installed configuration mobile asset.";
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = sub_10000783C(NSError, 0, v7);
    [v3 failWithError:v8];

LABEL_7:
    goto LABEL_8;
  }

LABEL_2:
  [v3 succeedWithResult:?];
LABEL_8:
}

uint64_t sub_10000151C(dispatch_queue_t *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v37 = _os_activity_create(&_mh_execute_header, "[Configuration Mobile Asset Manager] Select Configuration Asset", &_os_activity_current, OS_ACTIVITY_FLAG_DETACHED);
  os_activity_scope_enter(v37, &state);
  dispatch_assert_queue_V2(a1[2]);
  v38 = sub_100001A38(a1);
  v4 = [v38 waitUntilFinished];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = v38;
      if (!a2)
      {
        v6 = 0;
        goto LABEL_37;
      }

      [v38 error];
      *a2 = v6 = 0;
    }

    else
    {
      v7 = [v38 result];
      v34 = a1;
      v36 = [v7 results];
      v8 = sub_10000772C();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

      v10 = v7;
      if (v9)
      {
        v11 = sub_10000772C();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          sub_100007C60();
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v12 = v36;
        v13 = [v12 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v13)
        {
          v14 = *v44;
          do
          {
            v15 = 0;
            do
            {
              if (*v44 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = *(*(&v43 + 1) + 8 * v15);
              v17 = sub_10000772C();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v50 = v16;
                _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "\t %{public}@", buf, 0xCu);
              }

              v15 = v15 + 1;
            }

            while (v13 != v15);
            v7 = v10;
            v13 = [v12 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v13);
        }
      }

      v18 = [NSPredicate predicateWithBlock:&stru_100010460];
      v19 = [v36 filteredArrayUsingPredicate:v18];

      v35 = [v19 sortedArrayUsingSelector:"db_compareTo:"];

      v20 = sub_10000772C();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

      if (v21)
      {
        v22 = sub_10000772C();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_100007C94();
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v23 = v35;
        v24 = [v23 countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v24)
        {
          v25 = *v40;
          do
          {
            v26 = 0;
            do
            {
              if (*v40 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = *(*(&v39 + 1) + 8 * v26);
              v28 = sub_10000772C();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                v50 = v27;
                _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "\t %{public}@", buf, 0xCu);
              }

              v26 = v26 + 1;
            }

            while (v24 != v26);
            v7 = v10;
            v24 = [v23 countByEnumeratingWithState:&v39 objects:v48 count:16];
          }

          while (v24);
        }
      }

      v29 = [v35 lastObject];
      v30 = sub_10000772C();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v50 = v29;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Loaded configuration asset: %@", buf, 0xCu);
      }

      v31 = v34;
      objc_sync_enter(v31);
      v32 = v31[3];
      v31[3] = v29;

      objc_sync_exit(v31);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = v38;
LABEL_37:

  os_activity_scope_leave(&state);
  return v6;
}

id sub_100001A38(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "[Configuration Mobile Asset Manager] Query Installed Assets", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v4.opaque[0] = 0;
    v4.opaque[1] = 0;
    os_activity_scope_enter(v2, &v4);
    v1 = sub_100007A30(v1, 1, 1);
    os_activity_scope_leave(&v4);
  }

  return v1;
}

BOOL sub_100001AE0(id a1, MAAsset *a2, NSDictionary *a3)
{
  v3 = a2;
  v10 = 0;
  v4 = sub_1000087CC(v3, &v10);
  v5 = v10;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v7 = [v5 domain];
    if (![v7 isEqual:@"GCMobileAssetError"])
    {
LABEL_8:

      goto LABEL_9;
    }

    v8 = [v6 code];

    if (v8 == 3)
    {
      if ([(MAAsset *)v3 state]== 5 || [(MAAsset *)v3 state]== 6)
      {
        v7 = sub_10000772C();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          sub_100007CC8();
        }
      }

      else
      {
        v7 = sub_10000772C();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v12 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Installed asset has invalid format: %{public}@", buf, 0xCu);
        }
      }

      goto LABEL_8;
    }
  }

LABEL_9:

  return v4;
}

id sub_100001C9C(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = _os_activity_create(&_mh_execute_header, "[Configuration Mobile Asset Manager] Query Available Assets", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    v4.opaque[0] = 0;
    v4.opaque[1] = 0;
    os_activity_scope_enter(v2, &v4);
    v1 = sub_100007A30(v1, 2, 0);
    os_activity_scope_leave(&v4);
  }

  return v1;
}

NSArray *__cdecl sub_100001D44(id a1, MAAssetQuery *a2, BOOL *a3, id *a4)
{
  v4 = [(MAAssetQuery *)a2 results:a3];
  v5 = [v4 sortedArrayUsingSelector:"db_compareTo:"];
  v6 = [v5 gc_reversedArray];

  return v6;
}

void sub_100001EA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 24))
  {
    goto LABEL_2;
  }

  v9 = 0;
  v5 = sub_10000151C(v4, &v9);
  v6 = v9;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    [v3 failWithError:v6];
    goto LABEL_7;
  }

  if (!*(*(a1 + 32) + 24))
  {
    v10 = NSLocalizedFailureReasonErrorKey;
    v11 = @"Did not find an installed configuration mobile asset.";
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v8 = sub_10000783C(NSError, 0, v7);
    [v3 failWithError:v8];

LABEL_7:
    goto LABEL_8;
  }

LABEL_2:
  [v3 succeedWithResult:?];
LABEL_8:
}

NSDate *__cdecl sub_100002020(id a1, MAAssetQuery *a2, BOOL *a3, id *a4)
{
  v5 = a2;
  v6 = [(MAAssetQuery *)v5 valueForKey:@"_lastFetchDate"];
  if (!v6)
  {
    v9 = NSLocalizedDescriptionKey;
    v10 = @"Could not determine catalog fetch date.";
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    *a4 = sub_10000783C(NSError, 0, v7);

    v6 = 0;
  }

  return v6;
}

uint64_t sub_1000024E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000024F8(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "[Configuration Mobile Asset Manager] Cancel Check For Updates", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000025B0;
  block[3] = &unk_100010508;
  v3 = *(a1 + 32);
  block[4] = *(a1 + 40);
  dispatch_async(v3, block);
  os_activity_scope_leave(&state);
}

void sub_1000025C0(uint64_t a1, void *a2, void *a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a2;
  v15 = a3;
  v16 = a5;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  if (v14)
  {
    v17 = sub_1000077B4();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v14 assetId];
      v19 = [MAAsset contentVersion]_0(v14);
      v20 = [MAAsset contentRevision]_0(v14);
      [v14 state];
      v21 = MAStringForMAAssetState();
      *buf = 138413058;
      *&buf[4] = v18;
      v44 = 2112;
      v45 = v19;
      v46 = 2048;
      v47 = v20;
      v48 = 2112;
      v49 = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Loaded updated configuration asset: <%@ v%@-%zi state: %@>", buf, 0x2Au);
    }

    v22 = *(a1 + 32);
    objc_sync_enter(v22);
    objc_storeStrong((*(a1 + 32) + 24), a2);
    objc_sync_exit(v22);

    v23 = sub_100001128();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000029B4;
    block[3] = &unk_100010558;
    block[4] = *(a1 + 32);
    dispatch_async(v23, block);

    goto LABEL_5;
  }

  if (!v16)
  {
LABEL_5:
    v24 = 0;
    goto LABEL_12;
  }

  v25 = objc_opt_new();
  [v25 setObject:@"Check for updates failed." forKeyedSubscript:NSLocalizedDescriptionKey];
  *buf = &a9;
  v26 = [[NSString alloc] initWithFormat:v16 arguments:&a9];
  [v25 setObject:v26 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];

  if (v15)
  {
    [v25 setObject:v15 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  if (a4)
  {
    [v25 setObject:@"Try again in a few minutes." forKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
  }

  v24 = sub_10000783C(NSError, 1, v25);

LABEL_12:
  v27 = *(a1 + 32);
  objc_sync_enter(v27);
  v28 = [*(*(a1 + 32) + 48) copy];
  [*(*(a1 + 32) + 48) removeAllObjects];
  v30 = *(a1 + 32);
  v29 = a1 + 32;
  v31 = *(v30 + 48);
  *(v30 + 48) = 0;

  v32 = *(*v29 + 40);
  *(*v29 + 40) = 0;

  objc_sync_exit(v27);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v33 = v28;
  v34 = [v33 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v34)
  {
    v35 = *v38;
    do
    {
      v36 = 0;
      do
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(v33);
        }

        (*(*(*(&v37 + 1) + 8 * v36) + 16))(*(*(&v37 + 1) + 8 * v36));
        v36 = v36 + 1;
      }

      while (v34 != v36);
      v34 = [v33 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v34);
  }
}

void sub_1000029B4(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:GCConfigurationBundleSourceBundlesDidChangeNotification object:*(a1 + 32)];
}

void sub_100002A18(uint64_t a1)
{
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100002DB8;
  v54[3] = &unk_1000105A8;
  v55 = *(a1 + 48);
  v2 = objc_retainBlock(v54);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100002E90;
  v49[3] = &unk_1000105F8;
  v3 = *(a1 + 32);
  v53 = *(a1 + 64);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v49[4] = v3;
  v52 = v4;
  v50 = v5;
  v6 = v2;
  v51 = v6;
  v7 = objc_retainBlock(v49);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100003188;
  v45[3] = &unk_100010668;
  v45[4] = *(a1 + 32);
  v46 = *(a1 + 48);
  v8 = v6;
  v47 = v8;
  v9 = v7;
  v48 = v9;
  v10 = objc_retainBlock(v45);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000039D8;
  v40[3] = &unk_1000106B8;
  v11 = *(a1 + 56);
  v12 = *(a1 + 40);
  v40[4] = *(a1 + 32);
  v44 = v11;
  v41 = v12;
  v42 = *(a1 + 48);
  v13 = v10;
  v43 = v13;
  v14 = objc_retainBlock(v40);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100003C7C;
  v34[3] = &unk_100010708;
  v39 = *(a1 + 64);
  v15 = *(a1 + 56);
  v16 = *(a1 + 40);
  v34[4] = *(a1 + 32);
  v38 = v15;
  v35 = v16;
  v36 = *(a1 + 48);
  v17 = v14;
  v37 = v17;
  v18 = objc_retainBlock(v34);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000040EC;
  v29[3] = &unk_100010758;
  v20 = *(a1 + 48);
  v19 = *(a1 + 56);
  v29[4] = *(a1 + 32);
  v33 = v19;
  v30 = v20;
  v31 = v13;
  v21 = v18;
  v32 = v21;
  v22 = v13;
  v23 = objc_retainBlock(v29);
  v28 = v23;
  if (*(a1 + 64))
  {
    v23 = v21;
  }

  (v23[2])(v23, v24, v25, v26, v27);
}

void sub_100002DB8(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 state];
  if (v3 > 6 || ((1 << v3) & 0x6C) == 0)
  {
    v5 = *(a1 + 32);
    v6 = MAStringForMAAssetState();
    (*(v5 + 16))(v5, 0, 0, 0, @"Downloaded asset has invalid state [%ld: %{public}@]: %@");
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_100002E90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000077B4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100007D3C();
  }

  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  v5 = sub_1000078C8(*(a1 + 32), v3, *(a1 + 64));
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
  if ([*(*(a1 + 32) + 40) isCancelled])
  {
    [*(*(*(a1 + 56) + 8) + 40) cancel];
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002FE4;
  v10[3] = &unk_1000105D0;
  v10[4] = v7;
  v11 = v3;
  v12 = v6;
  v13 = *(a1 + 48);
  v9 = v3;
  [v5 observeFinishOnQueue:v8 withBlock:v10];
}

void sub_100002FE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  [*(*(a1 + 32) + 40) setCompletedUnitCount:{objc_msgSend(*(*(a1 + 32) + 40), "completedUnitCount") + 1}];
  if (a2 == 1)
  {
    v8 = [v6 domain];
    if ([v8 isEqual:@"com.apple.MobileAssetError.Download"])
    {
      v9 = sub_100000E6C([v6 code], 0);

      if (v9)
      {
        v10 = sub_1000077B4();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100007E54();
        }

LABEL_14:

        v7 = *(*(a1 + 48) + 16);
        goto LABEL_15;
      }
    }

    else
    {
    }

    v10 = sub_1000077B4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100007DB0();
    }

    goto LABEL_14;
  }

  if (!a2)
  {
    v7 = *(*(a1 + 48) + 16);
LABEL_15:
    v7();
    goto LABEL_16;
  }

  if ([*(a1 + 40) refreshState])
  {
    v11 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    sub_100007EF8();
  }

LABEL_16:
}

void sub_100003188(uint64_t a1, void *a2)
{
  v3 = a2;
  v57 = a1;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  v4 = [v3 results];
  v5 = sub_1000077B4();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  v58 = v4;
  if (v6)
  {
    v7 = sub_1000077B4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100007FE0();
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v73 objects:v82 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v74;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v74 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v73 + 1) + 8 * i);
          v14 = sub_1000077B4();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v81 = v13;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "\t %{public}@", buf, 0xCu);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v73 objects:v82 count:16];
      }

      while (v10);
    }

    v4 = v58;
  }

  if (![v4 count])
  {
    sub_1000081E0(v57);
    goto LABEL_66;
  }

  v56 = v3;
  v15 = [NSPredicate predicateWithBlock:&stru_100010618];
  v16 = [v4 filteredArrayUsingPredicate:v15];

  v17 = [v16 sortedArrayUsingSelector:"db_compareTo:"];

  v18 = sub_1000077B4();
  LODWORD(v16) = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

  if (v16)
  {
    v19 = sub_1000077B4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100008014();
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v20 = v17;
    v21 = v17;
    v22 = [v21 countByEnumeratingWithState:&v69 objects:v79 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v70;
      do
      {
        for (j = 0; j != v23; j = j + 1)
        {
          if (*v70 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v69 + 1) + 8 * j);
          v27 = sub_1000077B4();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v81 = v26;
            _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "\t %{public}@", buf, 0xCu);
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v69 objects:v79 count:16];
      }

      while (v23);
    }

    v4 = v58;
    v17 = v20;
  }

  if (![v17 count])
  {
    sub_1000080F0(v4, v57);
    v3 = v56;
    goto LABEL_65;
  }

  [v17 lastObject];
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_1000039B0;
  v28 = v67[3] = &unk_100010640;
  v68 = v28;
  v29 = [NSPredicate predicateWithBlock:v67];
  v55 = v17;
  v30 = [v17 filteredArrayUsingPredicate:v29];

  v31 = sub_1000077B4();
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);

  if (v32)
  {
    v33 = sub_1000077B4();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      sub_100008048();
    }

    v54 = v28;

    v34 = sub_1000077B4();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      sub_1000080BC();
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v35 = v30;
    v36 = [v35 countByEnumeratingWithState:&v63 objects:v78 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v64;
      do
      {
        for (k = 0; k != v37; k = k + 1)
        {
          if (*v64 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v63 + 1) + 8 * k);
          v41 = sub_1000077B4();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v81 = v40;
            _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "\t %{public}@", buf, 0xCu);
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v63 objects:v78 count:16];
      }

      while (v37);
    }

    v28 = v54;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v42 = v30;
  v43 = [v42 countByEnumeratingWithState:&v59 objects:v77 count:16];
  if (!v43)
  {

LABEL_61:
    v53 = sub_1000077B4();
    v3 = v56;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v81 = v28;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Local assets are out of date.  Downloading: %{public}@", buf, 0xCu);
    }

    (*(*(v57 + 56) + 16))();
    goto LABEL_64;
  }

  v44 = v43;
  v45 = 0;
  v46 = *v60;
  do
  {
    for (m = 0; m != v44; m = m + 1)
    {
      if (*v60 != v46)
      {
        objc_enumerationMutation(v42);
      }

      v48 = *(*(&v59 + 1) + 8 * m);
      v49 = [v48 state];
      if (v49 <= 6 && ((1 << v49) & 0x6C) != 0)
      {
        v51 = v48;

        v45 = v51;
      }
    }

    v44 = [v42 countByEnumeratingWithState:&v59 objects:v77 count:16];
  }

  while (v44);

  if (!v45)
  {
    goto LABEL_61;
  }

  v52 = sub_1000077B4();
  v3 = v56;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v81 = v45;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Found a previously installed asset that matches the best asset: %{public}@", buf, 0xCu);
  }

  (*(*(v57 + 48) + 16))();
LABEL_64:

  v4 = v58;
  v17 = v55;
LABEL_65:

LABEL_66:
}

BOOL sub_1000038F4(id a1, MAAsset *a2, NSDictionary *a3)
{
  v9 = 0;
  v3 = sub_1000087CC(a2, &v9);
  v4 = v9;
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    v6 = [v4 domain];
    if (![v6 isEqual:@"GCMobileAssetError"])
    {
LABEL_6:

      goto LABEL_7;
    }

    v7 = [v5 code];

    if (v7 == 3)
    {
      v6 = sub_1000077B4();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_100008274();
      }

      goto LABEL_6;
    }
  }

LABEL_7:

  return v3;
}

void sub_1000039D8(uint64_t a1)
{
  v2 = sub_1000077B4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000082E8();
  }

  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  v3 = sub_100001C9C(*(a1 + 32));
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v3);
  if ([*(a1 + 40) isCancelled])
  {
    [*(*(*(a1 + 64) + 8) + 40) cancel];
  }

  v4 = *(*(a1 + 32) + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003B18;
  v5[3] = &unk_100010690;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v3 observeFinishOnQueue:v4 withBlock:v5];
}

void sub_100003B18(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
  if (a2 == 1)
  {
    v10 = [v8 domain];
    if ([v10 isEqual:@"com.apple.MobileAssetError.Query"])
    {
      v11 = sub_100000DD8([v8 code], 0);

      if (v11)
      {
        v12 = sub_1000077B4();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100008384();
        }

LABEL_12:

        v9 = *(*(a1 + 40) + 16);
        goto LABEL_13;
      }
    }

    else
    {
    }

    v12 = sub_1000077B4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000831C();
    }

    goto LABEL_12;
  }

  if (!a2)
  {
    v9 = *(*(a1 + 40) + 16);
LABEL_13:
    v9();
    goto LABEL_14;
  }

  (*(*(a1 + 48) + 16))();
LABEL_14:
}

void sub_100003C7C(uint64_t a1)
{
  v2 = sub_1000077B4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000083EC();
  }

  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  v3 = sub_100003DC0(*(a1 + 32), *(a1 + 72));
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v3);
  if ([*(a1 + 40) isCancelled])
  {
    [*(*(*(a1 + 64) + 8) + 40) cancel];
  }

  v4 = *(*(a1 + 32) + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003FA4;
  v5[3] = &unk_1000106E0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  [v3 observeFinishOnQueue:v4 withBlock:v5];
}

id sub_100003DC0(void *a1, char a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    if (!v3[4])
    {
      v4 = _os_activity_create(&_mh_execute_header, "[Configuration Mobile Asset Manager] Download Catalog", &_os_activity_current, OS_ACTIVITY_FLAG_DETACHED);
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      os_activity_scope_enter(v4, &state);
      objc_initWeak(&location, v3);
      v5 = [[GCOperation alloc] initOnQueue:0 withOptions:4];
      [v5 setLabel:@"Download Catalog"];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100004B40;
      v10[3] = &unk_1000108A8;
      v11 = a2;
      [v5 setAsyncBlock:v10];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100004DF8;
      v8[3] = &unk_1000108F8;
      objc_copyWeak(&v9, &location);
      [v5 observeFinishWithOptions:0x10000 block:v8];
      v6 = v3[4];
      v3[4] = v5;

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
      os_activity_scope_leave(&state);
    }

    objc_sync_exit(v3);

    a1 = [v3[4] startAsynchronously];
  }

  return a1;
}

void sub_100003F70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  os_activity_scope_leave((v3 - 64));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_100003FA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
  if (a2 == 1)
  {
    v8 = [v6 domain];
    if ([v8 isEqual:@"com.apple.MobileAssetError.Download"])
    {
      v9 = sub_100000E6C([v6 code], 0);

      if (v9)
      {
        v10 = sub_1000077B4();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100008488();
        }

LABEL_12:

        v7 = *(*(a1 + 40) + 16);
        goto LABEL_13;
      }
    }

    else
    {
    }

    v10 = sub_1000077B4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100008420();
    }

    goto LABEL_12;
  }

  if (!a2)
  {
    v7 = *(*(a1 + 40) + 16);
LABEL_13:
    v7();
    goto LABEL_14;
  }

  (*(*(a1 + 48) + 16))();
LABEL_14:
}

void sub_1000040EC(uint64_t a1)
{
  v2 = sub_1000077B4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000084F0();
  }

  dispatch_assert_queue_V2(*(*(a1 + 32) + 8));
  v3 = sub_100001C9C(*(a1 + 32));
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v3);
  if ([*(*(a1 + 32) + 40) isCancelled])
  {
    [*(*(*(a1 + 64) + 8) + 40) cancel];
  }

  v10[0] = _NSConcreteStackBlock;
  v9 = *(a1 + 32);
  v4 = *(v9 + 8);
  v10[1] = 3221225472;
  v10[2] = sub_100004244;
  v10[3] = &unk_100010730;
  v5 = *(&v9 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v3 observeFinishOnQueue:v4 withBlock:v10];
}

void sub_100004244(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  [*(a1[4] + 40) setCompletedUnitCount:{objc_msgSend(*(a1[4] + 40), "completedUnitCount") + 1}];
  if (a2 == 1)
  {
    v10 = [v8 domain];
    if ([v10 isEqual:@"com.apple.MobileAssetError.Query"])
    {
      v11 = sub_100000DD8([v8 code], 0);

      if (v11)
      {
        v12 = sub_1000077B4();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100008524();
        }

LABEL_14:

        v9 = *(a1[5] + 16);
        goto LABEL_15;
      }
    }

    else
    {
    }

    v12 = sub_1000077B4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000831C();
    }

    goto LABEL_14;
  }

  if (!a2)
  {
    v9 = *(a1[5] + 16);
LABEL_15:
    v9();
    goto LABEL_16;
  }

  if ([v7 isCatalogFetchedWithinThePastFewDays:1])
  {
    (*(a1[6] + 16))();
  }

  else
  {
    (*(a1[7] + 16))();
  }

LABEL_16:
}

id sub_1000043F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [*(a1 + 32) queryMetaDataSync];
  if (sub_100000DBC())
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v13[0] = @"Assets query failed.";
    v12[0] = NSLocalizedDescriptionKey;
    v12[1] = NSLocalizedFailureReasonErrorKey;
    v7 = MAStringForMAQueryResult();
    v8 = v7;
    v9 = &stru_100010D38;
    if (v7)
    {
      v9 = v7;
    }

    v13[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    *a3 = [NSError errorWithDomain:@"com.apple.MobileAssetError.Query" code:v5 userInfo:v10];

    v6 = 0;
  }

  return v6;
}

void sub_100004534(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000045E0;
  v5[3] = &unk_1000107D0;
  v6 = a2;
  v3 = *(a1 + 32);
  v7 = v3;
  v4 = v6;
  [v3 queryMetaDataWithError:v5];
}

void sub_1000045E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100000DBC();
  v7 = *(a1 + 32);
  if (v6)
  {
    [*(a1 + 32) succeedWithResult:*(a1 + 40)];
  }

  else if (v5)
  {
    [*(a1 + 32) failWithError:v5];
  }

  else
  {
    v14[0] = @"Assets query failed.";
    v13[0] = NSLocalizedDescriptionKey;
    v13[1] = NSLocalizedFailureReasonErrorKey;
    v8 = MAStringForMAQueryResult();
    v9 = v8;
    v10 = &stru_100010D38;
    if (v8)
    {
      v10 = v8;
    }

    v14[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    v12 = [NSError errorWithDomain:@"com.apple.MobileAssetError.Query" code:a2 userInfo:v11];
    [v7 failWithError:v12];
  }
}

void sub_100004734(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = v4;
  if (*(a1 + 40) == 1)
  {
    [v4 setAllowsCellularAccess:1];
    [v5 setDiscretionary:0];
    [v5 setAllowsExpensiveAccess:1];
    [v5 setRequiresPowerPluggedIn:0];
  }

  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000482C;
  v8[3] = &unk_1000107F8;
  v9 = v3;
  v7 = v3;
  [v6 startDownload:v5 completionWithError:v8];
}

void sub_10000482C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (sub_100000E0C(a2))
  {
    v6 = *(a1 + 32);
    v7 = [NSNumber numberWithInteger:a2];
    [v6 succeedWithResult:v7];
  }

  else
  {
    if (sub_100000FCC(a2))
    {
      v8 = sub_10000772C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_10000858C();
      }
    }

    v9 = *(a1 + 32);
    if (v5)
    {
      [v9 failWithError:v5];
    }

    else
    {
      v16[0] = @"Asset download failed.";
      v15[0] = NSLocalizedDescriptionKey;
      v15[1] = NSLocalizedFailureReasonErrorKey;
      v10 = MAStringForMADownloadResult();
      v11 = v10;
      v12 = &stru_100010D38;
      if (v10)
      {
        v12 = v10;
      }

      v16[1] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
      v14 = [NSError errorWithDomain:@"com.apple.MobileAssetError.Download" code:a2 userInfo:v13];
      [v9 failWithError:v14];
    }
  }
}

id *sub_1000049DC(id *result, uint64_t a2)
{
  if (!a2)
  {
    v2 = result;
    v3 = sub_10000772C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10000862C();
    }

    return [v2[4] cancelDownload:&stru_100010860];
  }

  return result;
}

void sub_100004A40(id a1, int64_t a2)
{
  v3 = sub_10000772C();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v4)
    {
      v5 = MAStringForMACancelDownloadResult();
      v6 = 134218242;
      v7 = a2;
      v8 = 2114;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Asset download cancellation failed with error [%ld: %{public}@]", &v6, 0x16u);
    }
  }

  else if (v4)
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Asset download cancelled.", &v6, 2u);
  }
}

void sub_100004B40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = v4;
  if (*(a1 + 32) == 1)
  {
    [v4 setAllowsCellularAccess:1];
    [v5 setDiscretionary:0];
    [v5 setAllowsExpensiveAccess:1];
    [v5 setRequiresPowerPluggedIn:0];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004C48;
  v7[3] = &unk_1000107F8;
  v8 = v3;
  v6 = v3;
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.GameController.DB1" options:v5 completionWithError:v7];
}

void sub_100004C48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (sub_100000E0C(a2))
  {
    v6 = *(a1 + 32);
    v7 = [NSNumber numberWithInteger:a2];
    [v6 succeedWithResult:v7];
  }

  else
  {
    if (sub_100000FCC(a2))
    {
      v8 = sub_10000772C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100008660();
      }
    }

    v9 = *(a1 + 32);
    if (v5)
    {
      [v9 failWithError:v5];
    }

    else
    {
      v16[0] = @"Asset catalog download failed.";
      v15[0] = NSLocalizedDescriptionKey;
      v15[1] = NSLocalizedFailureReasonErrorKey;
      v10 = MAStringForMADownloadResult();
      v11 = v10;
      v12 = &stru_100010D38;
      if (v10)
      {
        v12 = v10;
      }

      v16[1] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
      v14 = [NSError errorWithDomain:@"com.apple.MobileAssetError.Download" code:a2 userInfo:v13];
      [v9 failWithError:v14];
    }
  }
}

void sub_100004DF8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = WeakRetained;
    if (WeakRetained)
    {
      v11 = WeakRetained;
      objc_sync_enter(v11);
      v12 = v11[4];
      v11[4] = 0;

      objc_sync_exit(v11);
    }
  }

  else
  {
    v13 = sub_10000772C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1000086F8();
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100004F44;
    v14[3] = &unk_1000108D0;
    objc_copyWeak(&v15, (a1 + 32));
    [MAAsset cancelCatalogDownload:@"com.apple.MobileAsset.GameController.DB1" then:v14];
    objc_destroyWeak(&v15);
  }
}

void sub_100004F44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000772C();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v5)
    {
      v6 = MAStringForMACancelDownloadResult();
      v11 = 134218242;
      v12 = a2;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Catalog download cancellation failed with error [%ld: %{public}@]", &v11, 0x16u);
    }
  }

  else if (v5)
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Catalog download cancelled.", &v11, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    objc_sync_enter(v9);
    v10 = v9[4];
    v9[4] = 0;

    objc_sync_exit(v9);
  }
}

void sub_1000050F4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100005128(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100005244(id a1)
{
  qword_100015490 = objc_alloc_init(GameControllerConfigService);

  _objc_release_x1();
}

id sub_100005308(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = v1[2];
    if (!v2)
    {
      v3 = [[_GCConfigurationMobileAssetManager alloc] initWithProvider:v1];
      v4 = v1[2];
      v1[2] = v3;

      v2 = v1[2];
    }

    v5 = v2;
    objc_sync_exit(v1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1000056C0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 assetType];
  v5 = [v4 isEqualToString:@"com.apple.MobileAsset.GameController.DB1"];

  if (a2 && (v5 & 1) == 0)
  {
    v10[0] = NSLocalizedDescriptionKey;
    v10[1] = NSLocalizedFailureReasonErrorKey;
    v11[0] = @"Invalid asset.";
    v6 = [v3 assetType];
    v7 = [NSString stringWithFormat:@"Asset has incorrect type '%@'.", v6];
    v11[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    *a2 = sub_10000783C(NSError, 2, v8);
  }

  return v5;
}

id sub_100005814(void *a1, void *a2)
{
  if (a1)
  {
    v4 = objc_getAssociatedObject(a1, off_100010958);
    if (v4)
    {
      goto LABEL_19;
    }

    if (sub_1000056C0(a1, a2))
    {
      v5 = [a1 attributes];
      v26 = 0;
      v6 = [v5 gc_objectForKey:@"Platforms" ofClass:objc_opt_class() error:&v26];
      v7 = v26;

      if (!v6 && v7)
      {
        if (a2)
        {
          v30[0] = @"Invalid asset format.";
          v29[0] = NSLocalizedDescriptionKey;
          v29[1] = NSLocalizedFailureReasonErrorKey;
          v17 = [v7 localizedFailureReason];
          v30[1] = v17;
          v18 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
          *a2 = sub_10000783C(NSError, 3, v18);
        }
      }

      else
      {
        if (!v6)
        {
LABEL_9:
          objc_setAssociatedObject(a1, off_100010958, v6, 0x303);
          v4 = v6;
LABEL_18:

          goto LABEL_19;
        }

        v24[0] = 0;
        v24[1] = v24;
        v24[2] = 0x3032000000;
        v24[3] = sub_10000639C;
        v24[4] = sub_1000063AC;
        v25 = 0;
        v20 = 0;
        v21 = &v20;
        v22 = 0x2020000000;
        v23 = 0;
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000063B4;
        v19[3] = &unk_100010970;
        v19[4] = v24;
        v19[5] = &v20;
        [v6 gc_enumerateKeysAndObjectsUsingBlock:v19];
        v8 = v21[3];
        if (v8 == [v6 count])
        {
          _Block_object_dispose(&v20, 8);
          _Block_object_dispose(v24, 8);

          goto LABEL_9;
        }

        if (a2)
        {
          v28[0] = @"Invalid asset format.";
          v27[0] = NSLocalizedDescriptionKey;
          v27[1] = NSLocalizedFailureReasonErrorKey;
          v9 = [v7 localizedFailureReason];
          v10 = v9;
          v11 = &stru_100010D38;
          if (v9)
          {
            v11 = v9;
          }

          v28[1] = v11;
          v27[2] = @"FailingKeyPath";
          v12 = sub_100009694(v7);
          v13 = v12;
          if (!v12)
          {
            v12 = &__NSArray0__struct;
          }

          v14 = [v12 arrayByAddingObject:@"Platforms"];
          v28[2] = v14;
          v15 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
          *a2 = sub_10000783C(NSError, 3, v15);
        }

        _Block_object_dispose(&v20, 8);
        _Block_object_dispose(v24, 8);
      }

      v4 = 0;
      goto LABEL_18;
    }
  }

  v4 = 0;
LABEL_19:

  return v4;
}

void sub_100005BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005C00(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:@"ios"];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 BOOLValue] == 0;
      v6 = 3;
    }

    else
    {
      v8 = [v2 objectForKeyedSubscript:@"embeddedos"];
      v4 = v8;
      if (!v8)
      {
        v7 = -1;
LABEL_10:

        goto LABEL_11;
      }

      v5 = [v8 BOOLValue] == 0;
      v6 = 2;
    }

    if (v5)
    {
      v7 = -v6;
    }

    else
    {
      v7 = v6;
    }

    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

id sub_100005CB4(void *a1, void *a2)
{
  if (a1)
  {
    v4 = objc_getAssociatedObject(a1, &off_100010960);
    if (v4)
    {
      goto LABEL_17;
    }

    if (sub_1000056C0(a1, a2))
    {
      v5 = [a1 attributes];
      v28 = 0;
      v6 = [v5 gc_objectForKey:@"ConfigurationBundles" ofClass:objc_opt_class() error:&v28];
      v7 = v28;

      if (!v6 && v7)
      {
        if (a2)
        {
          v32[0] = @"Invalid asset format.";
          v31[0] = NSLocalizedDescriptionKey;
          v31[1] = NSLocalizedFailureReasonErrorKey;
          v15 = [v7 localizedFailureReason];
          v32[1] = v15;
          v16 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
          *a2 = sub_10000783C(NSError, 3, v16);
        }
      }

      else
      {
        if (!v6)
        {
LABEL_9:
          objc_setAssociatedObject(a1, &off_100010960, v6, 0x303);
          v4 = v6;
LABEL_16:

          goto LABEL_17;
        }

        v22 = 0;
        v23 = &v22;
        v24 = 0x3032000000;
        v25 = sub_10000639C;
        v26 = sub_1000063AC;
        v27 = 0;
        v18 = 0;
        v19 = &v18;
        v20 = 0x2020000000;
        v21 = 0;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000065B8;
        v17[3] = &unk_1000109C0;
        v17[4] = &v22;
        v17[5] = &v18;
        [v6 gc_enumerateKeysAndObjectsUsingBlock:v17];
        v8 = v19[3];
        if (v8 == [v6 count])
        {
          _Block_object_dispose(&v18, 8);
          _Block_object_dispose(&v22, 8);

          goto LABEL_9;
        }

        if (a2)
        {
          v30[0] = @"Invalid asset format.";
          v29[0] = NSLocalizedDescriptionKey;
          v29[1] = NSLocalizedFailureReasonErrorKey;
          v9 = [v23[5] localizedFailureReason];
          v30[1] = v9;
          v29[2] = @"FailingKeyPath";
          v10 = sub_100009694(v23[5]);
          v11 = v10;
          if (!v10)
          {
            v10 = &__NSArray0__struct;
          }

          v12 = [v10 arrayByAddingObject:@"ConfigurationBundles"];
          v30[2] = v12;
          v13 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
          *a2 = sub_10000783C(NSError, 3, v13);
        }

        _Block_object_dispose(&v18, 8);
        _Block_object_dispose(&v22, 8);
      }

      v4 = 0;
      goto LABEL_16;
    }
  }

  v4 = 0;
LABEL_17:

  return v4;
}

void sub_10000606C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000639C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000063B4(uint64_t a1, void (**a2)(void, void, void), void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 32) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    v12 = objc_opt_class();
    v13 = *(*(a1 + 32) + 8);
    v15 = *(v13 + 40);
    v14 = v7[2](v7, v12, &v15);
    objc_storeStrong((v13 + 40), v15);
    if (v14)
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 1;
  }
}

uint64_t sub_1000064D8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v6 = 0;
  v1 = sub_100005814(a1, &v6);
  v2 = v6;
  v3 = v2;
  if (!v1 && v2)
  {
    sub_1000095FC(v2);
  }

  v4 = sub_100005C00(MAAsset, v1);

  return v4;
}

void sub_1000065B8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = *(*(a1 + 32) + 8);
  v36 = *(v9 + 40);
  v10 = v6[2](v6, v8, &v36);
  objc_storeStrong((v9 + 40), v36);
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = *(*(a1 + 32) + 8);
    obj = *(v12 + 40);
    v13 = v7[2](v7, v11, &obj);
    objc_storeStrong((v12 + 40), obj);
    if (v13)
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = sub_10000639C;
      v33 = sub_1000063AC;
      v34 = 0;
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100006904;
      v24[3] = &unk_100010998;
      v24[4] = &v29;
      v24[5] = &v25;
      [v13 gc_enumerateObjectsUsingBlock:v24];
      v14 = v26[3];
      if (v14 == [v13 count])
      {
        ++*(*(*(a1 + 40) + 8) + 24);
      }

      else
      {
        v37[0] = NSLocalizedFailureReasonErrorKey;
        v15 = [v30[5] localizedFailureReason];
        v37[1] = @"FailingKeyPath";
        v38[0] = v15;
        v16 = sub_100009694(v30[5]);
        v17 = v16;
        if (!v16)
        {
          v16 = &__NSArray0__struct;
        }

        v18 = [v16 arrayByAddingObject:v10];
        v38[1] = v18;
        v19 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
        v20 = sub_10000783C(NSError, 3, v19);
        v21 = *(*(a1 + 32) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = v20;

        *a4 = 1;
      }

      _Block_object_dispose(&v25, 8);
      _Block_object_dispose(&v29, 8);
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 1;
  }
}

void sub_1000068D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100006904(uint64_t a1, void (**a2)(void, void, void), uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v9 = objc_opt_class();
  v10 = *(*(a1 + 32) + 8);
  obj = *(v10 + 40);
  v11 = (a2)[2](v8, v9, &obj);

  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v21[0] = NSLocalizedFailureReasonErrorKey;
    v12 = [*(*(*(a1 + 32) + 8) + 40) localizedFailureReason];
    v21[1] = @"FailingKeyPath";
    v22[0] = v12;
    v13 = [NSString stringWithFormat:@"%lu", a3];
    v20 = v13;
    v14 = [NSArray arrayWithObjects:&v20 count:1];
    v22[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v16 = sub_10000783C(NSError, 3, v15);
    v17 = *(*(a1 + 32) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    *a4 = 1;
  }
}

void sub_100006CC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 32);
  if (![*(a1 + 32) state])
  {
    [*v4 refreshState];
  }

  v5 = [*v4 state];
  if (v5 > 6 || ((1 << v5) & 0x6C) == 0)
  {
    v20 = v5;
    v21 = +[NSNotificationCenter defaultCenter];
    [v21 postNotificationName:@"GCDBMobileAssetErrorNotification" object:*v4];

    v53[0] = NSLocalizedDescriptionKey;
    v53[1] = NSLocalizedFailureReasonErrorKey;
    v54[0] = @"Fetch bundle URLS for configuration failed.";
    v22 = MAStringForMAAssetState();
    v23 = [NSString stringWithFormat:@"Asset is not installed.  State [%li: %@].", v20, v22];
    v54[1] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];
    v7 = sub_10000783C(NSError, 4, v24);

    [v3 failWithError:v7];
  }

  else
  {
    v7 = [*v4 getLocalFileUrl];
    if (v7)
    {
      v8 = *(a1 + 32);
      v48 = 0;
      v9 = sub_100005CB4(v8, &v48);
      v10 = v48;
      v11 = [v9 objectForKey:*(a1 + 40)];

      if (!v11 && v10)
      {
        sub_100009630((a1 + 32), v3, v10);
      }

      else if ([v11 count])
      {
        v12 = +[NSFileManager defaultManager];
        v42 = 0;
        v43 = &v42;
        v44 = 0x3032000000;
        v45 = sub_10000639C;
        v46 = sub_1000063AC;
        v47 = 0;
        v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10000727C;
        v36[3] = &unk_1000109E8;
        v37 = v7;
        v41 = &v42;
        v14 = v12;
        v15 = *v4;
        v38 = v14;
        v39 = v15;
        v16 = v13;
        v40 = v16;
        [v11 enumerateObjectsUsingBlock:v36];
        if ([v16 count] || (v25 = v43[5]) == 0)
        {
          v17 = [v16 copy];
          [v3 succeedWithResult:v17];
        }

        else
        {
          v32 = [v25 code];
          v49[0] = NSLocalizedDescriptionKey;
          v35 = [v43[5] localizedDescription];
          v26 = v35;
          if (!v35)
          {
            v26 = &stru_100010D38;
          }

          v50[0] = v26;
          v49[1] = NSLocalizedFailureReasonErrorKey;
          v34 = [v43[5] localizedFailureReason];
          v27 = v34;
          if (!v34)
          {
            v27 = &stru_100010D38;
          }

          v50[1] = v27;
          v49[2] = @"FailingKeyPath";
          v28 = sub_100009694(v43[5]);
          v29 = v28;
          if (!v28)
          {
            v28 = &__NSArray0__struct;
          }

          v33 = [v28 arrayByAddingObject:*(a1 + 40)];
          v30 = [v33 arrayByAddingObject:@"ConfigurationBundles"];
          v50[2] = v30;
          v31 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:3];
          v17 = sub_10000783C(NSError, v32, v31);

          [v3 failWithError:v17];
        }

        _Block_object_dispose(&v42, 8);
      }

      else
      {
        [v3 succeedWithResult:&__NSArray0__struct];
      }
    }

    else
    {
      v18 = +[NSNotificationCenter defaultCenter];
      [v18 postNotificationName:@"GCDBMobileAssetErrorNotification" object:*v4];

      v51[0] = NSLocalizedDescriptionKey;
      v51[1] = NSLocalizedFailureReasonErrorKey;
      v52[0] = @"Fetch bundle URLS for configuration failed.";
      v52[1] = @"Asset data is missing.";
      v19 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
      v10 = sub_10000783C(NSError, 5, v19);

      [v3 failWithError:v10];
    }
  }
}

void sub_10000727C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) URLByAppendingPathComponent:v5];
  v7 = [v6 path];
  v8 = [v7 stringByStandardizingPath];

  v9 = [*(a1 + 32) path];
  v10 = [v9 stringByStandardizingPath];

  if (!v8 || ([v8 hasPrefix:v10] & 1) == 0)
  {
    v33[0] = @"Invalid asset format.";
    v32[0] = NSLocalizedDescriptionKey;
    v32[1] = NSLocalizedFailureReasonErrorKey;
    v13 = [NSString stringWithFormat:@"Invalid path '%@' -> '%@'.", v5, v8];
    v33[1] = v13;
    v33[2] = v8;
    v32[2] = NSFilePathErrorKey;
    v32[3] = @"FailingKeyPath";
    v14 = [NSString stringWithFormat:@"[%lu]", a3];
    v31 = v14;
    v15 = [NSArray arrayWithObjects:&v31 count:1];
    v32[4] = @"AssetDataPath";
    v33[3] = v15;
    v33[4] = v10;
    v16 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:5];
    v17 = sub_10000783C(NSError, 3, v16);
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

LABEL_6:
    goto LABEL_7;
  }

  v11 = *(a1 + 40);
  v12 = [v6 path];
  LOBYTE(v11) = [v11 fileExistsAtPath:v12];

  if ((v11 & 1) == 0)
  {
    v20 = +[NSNotificationCenter defaultCenter];
    [v20 postNotificationName:@"GCDBMobileAssetErrorNotification" object:*(a1 + 48)];

    v30[0] = @"Invalid asset format.";
    v29[0] = NSLocalizedDescriptionKey;
    v29[1] = NSLocalizedFailureReasonErrorKey;
    v13 = [NSString stringWithFormat:@"No configuration bundle at path '%@' -> '%@'.", v5, v8];
    v30[1] = v13;
    v29[2] = NSFilePathErrorKey;
    v21 = [v6 path];
    v30[2] = v21;
    v29[3] = @"FailingKeyPath";
    v22 = [NSString stringWithFormat:@"[%lu]", a3];
    v28 = v22;
    v23 = [NSArray arrayWithObjects:&v28 count:1];
    v29[4] = @"AssetDataPath";
    v30[3] = v23;
    v30[4] = v10;
    v24 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:5];
    v25 = sub_10000783C(NSError, 3, v24);
    v26 = *(*(a1 + 64) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;

    goto LABEL_6;
  }

  [*(a1 + 56) addObject:v6];
LABEL_7:
}

id sub_100007640(uint64_t a1)
{
  *v1 = a1;
  v4 = *v2;

  return v4;
}

os_log_t sub_100007670(char *category)
{
  v1 = os_log_create("com.apple.gamecontroller.mobileasset", category);

  return v1;
}

id sub_1000076A4()
{
  if (qword_1000154A8 != -1)
  {
    sub_10000970C();
  }

  v1 = qword_1000154A0;

  return v1;
}

void sub_1000076E8(id a1)
{
  qword_1000154A0 = os_log_create("com.apple.gamecontroller.mobileasset", "Common");

  _objc_release_x1();
}

id sub_10000772C()
{
  if (qword_1000154B8 != -1)
  {
    sub_100009720();
  }

  v1 = qword_1000154B0;

  return v1;
}

void sub_100007770(id a1)
{
  qword_1000154B0 = os_log_create("com.apple.gamecontroller.mobileasset", "DB");

  _objc_release_x1();
}

id sub_1000077B4()
{
  if (qword_1000154C8 != -1)
  {
    sub_100009734();
  }

  v1 = qword_1000154C0;

  return v1;
}

void sub_1000077F8(id a1)
{
  qword_1000154C0 = os_log_create("com.apple.gamecontroller.mobileasset", "DB.Update");

  _objc_release_x1();
}

id sub_10000783C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v5 = [NSError errorWithDomain:@"GCMobileAssetError" code:a2 userInfo:v4];

  return v5;
}

id sub_1000078C8(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = [[GCOperation alloc] initOnQueue:0 withOptions:4];
    [v6 setLabel:@"Download Asset"];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100004734;
    v12[3] = &unk_100010820;
    v14 = a3;
    v7 = v5;
    v13 = v7;
    [v6 setAsyncBlock:v12];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000049DC;
    v10[3] = &unk_100010888;
    v11 = v7;
    [v6 observeFinishWithOptions:0x10000 block:v10];
    v8 = [v6 startAsynchronously];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_100007A30(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v5 = sub_10000772C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v12 = MAStringForMAQueryReturnTypes();
      *buf = 138543362;
      v21 = v12;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Query assets - types:%{public}@", buf, 0xCu);
    }

    v6 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.GameController.DB1"];
    [v6 returnTypes:a2];
    if (a3)
    {
      [v6 setDoNotBlockOnNetworkStatus:1];
      [v6 setDoNotBlockBeforeFirstUnlock:1];
    }

    v7 = [[GCOperation alloc] initOnQueue:0 withOptions:256];
    [v7 setLabel:@"Query Assets"];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000043F8;
    v18[3] = &unk_1000107A8;
    v8 = v6;
    v19 = v8;
    [v7 setSyncBlock:v18];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100004534;
    v16 = &unk_1000103F8;
    v17 = v8;
    v9 = v8;
    [v7 setAsyncBlock:&v13];
    v10 = [v7 activate];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_100007DB0()
{
  sub_100005178();
  v1 = [*(v0 + 40) assetId];
  sub_100005110();
  sub_100005168();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100007E54()
{
  sub_100005178();
  v1 = [*(v0 + 40) assetId];
  sub_100005110();
  sub_100005168();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

uint64_t sub_100007EF8()
{
  sub_100005178();
  v2 = v1;
  v3 = sub_1000077B4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = [*v2 assetId];
    sub_100005110();
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to refresh state of downloaded asset '%{public}@'.", v6, 0xCu);
  }

  return (*(*(v0 + 48) + 16))();
}

uint64_t sub_1000080F0(void *a1, uint64_t a2)
{
  v4 = sub_1000077B4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v8 = [a1 count];
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%zi available assets yielded no viable assets.", buf, 0xCu);
  }

  v5 = *(a2 + 40);
  [a1 count];
  return (*(v5 + 16))(v5, 0, 0, 0, @"%zi available assets yielded no viable assets.");
}

uint64_t sub_1000081E0(uint64_t a1)
{
  v2 = sub_1000077B4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "No available assets.", v4, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_10000858C()
{
  sub_100005178();
  v1 = MAStringForMADownloadResult();
  sub_100005144();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "Asset download failed with an error that needs investigation [%ld: %{public}@] %@.", v2, 0x20u);
}

void sub_100008660()
{
  sub_100005178();
  v0 = MAStringForMADownloadResult();
  sub_100005144();
  sub_100005168();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100008740(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = a1;
  v4 = 2082;
  v5 = "com.apple.private.gamecontroller.config.client";
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Rejecting connection %@.  Client is missing the '%{public}s' entitlement.", &v2, 0x16u);
}

uint64_t sub_1000087CC(void *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    if (!sub_1000056C0(a1, a2))
    {
      return 0;
    }

    v26 = 0;
    v5 = sub_100008AD0(v2, &v26);
    v6 = v26;
    v7 = v6;
    if (v5 || !v6)
    {
      if (v5)
      {
        v8 = +[GCVersion currentSourceVersion];
        v9 = [v5 isGreaterThanSourceVersion:v8];

        if (v9)
        {
          if (!a2)
          {
LABEL_12:

LABEL_13:
            v2 = 0;
LABEL_14:

            return v2;
          }

          v30[0] = @"Asset is incompatible with host.";
          v29[0] = NSLocalizedDescriptionKey;
          v29[1] = NSLocalizedFailureReasonErrorKey;
          v10 = [NSString stringWithFormat:@"Asset requires version '%@'.", v5];
          v30[1] = v10;
          v11 = v30;
          v12 = v29;
LABEL_11:
          v13 = [NSDictionary dictionaryWithObjects:v11 forKeys:v12 count:2];
          *a2 = sub_10000783C(NSError, 6, v13);

          goto LABEL_12;
        }
      }

      v25 = 0;
      v14 = sub_100008D68(v2, &v25);
      v7 = v25;
      if (!v14 || (v14, v7, v24 = 0, v15 = sub_10000905C(v2, &v24), v16 = v24, v7 = v16, !v15) && v16)
      {
LABEL_29:
        if (a2)
        {
          v21 = v7;
          v2 = 0;
          *a2 = v7;
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v23 = 0;
      v5 = sub_100005814(v2, &v23);
      v17 = v23;
      v7 = v17;
      if (v5 || !v17)
      {
        if (v5 && sub_100005C00(MAAsset, v5) < 0)
        {
          if (!a2)
          {
            goto LABEL_12;
          }

          v27[0] = NSLocalizedDescriptionKey;
          v27[1] = NSLocalizedFailureReasonErrorKey;
          v28[0] = @"Asset is incompatible with host.";
          v10 = [NSString stringWithFormat:@"Asset does not support the current platform."];
          v28[1] = v10;
          v11 = v28;
          v12 = v27;
          goto LABEL_11;
        }

        v22 = 0;
        v18 = sub_100005CB4(v2, &v22);
        v19 = v22;
        v7 = v19;
        if (v18 || !v19)
        {

          v2 = 1;
          goto LABEL_14;
        }

        goto LABEL_29;
      }
    }

    if (a2)
    {
      v20 = v7;
      *a2 = v7;
    }

    goto LABEL_12;
  }

  return v2;
}

id sub_100008AD0(void *a1, void *a2)
{
  if (a1)
  {
    v4 = objc_getAssociatedObject(a1, off_100010948);
    if (v4)
    {
      goto LABEL_8;
    }

    if (sub_1000056C0(a1, a2))
    {
      v5 = [a1 attributes];
      v19 = 0;
      v6 = [v5 gc_requiredObjectForKey:@"_CompatibilityVersion" ofClass:objc_opt_class() error:&v19];
      v7 = v19;

      if (v6)
      {
        v8 = [[GCVersion alloc] initWithString:v6];
        if (v8)
        {
          v4 = v8;
          objc_setAssociatedObject(a1, off_100010948, v8, 0x303);
LABEL_7:

          goto LABEL_8;
        }

        if (a2)
        {
          v22[0] = @"Invalid asset format.";
          v21[0] = NSLocalizedDescriptionKey;
          v21[1] = NSLocalizedFailureReasonErrorKey;
          v14 = [NSString stringWithFormat:@"'%@' is not a valid version.", v6];
          v22[1] = v14;
          v21[2] = @"FailingKeyPath";
          v20 = @"_CompatibilityVersion";
          v15 = [NSArray arrayWithObjects:&v20 count:1];
          v22[2] = v15;
          [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];
          objc_claimAutoreleasedReturnValue();
          v16 = sub_10000765C();
          *a2 = sub_10000783C(v16, v17, v18);
        }
      }

      else if (a2)
      {
        v24[0] = @"Invalid asset format.";
        v23[0] = NSLocalizedDescriptionKey;
        v23[1] = NSLocalizedFailureReasonErrorKey;
        v10 = [v7 localizedFailureReason];
        v24[1] = v10;
        [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
        objc_claimAutoreleasedReturnValue();
        v11 = sub_100007614();
        *a2 = sub_10000783C(v11, v12, v13);
      }

      v4 = 0;
      goto LABEL_7;
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

id sub_100008D68(void *a1, void *a2)
{
  if (a1)
  {
    v4 = objc_getAssociatedObject(a1, off_100010950);
    if (v4)
    {
      goto LABEL_8;
    }

    if (sub_1000056C0(a1, a2))
    {
      v5 = [a1 attributes];
      v21 = 0;
      v6 = [v5 gc_requiredObjectForKey:@"_ContentVersion" ofClass:objc_opt_class() error:&v21];
      v7 = v21;

      if (v6)
      {
        v8 = [[GCVersion alloc] initWithString:v6];
        if (v8)
        {
          v4 = v8;
          objc_setAssociatedObject(a1, off_100010950, v8, 0x303);
LABEL_7:

          goto LABEL_8;
        }

        if (a2)
        {
          v24[0] = @"Invalid asset format.";
          v23[0] = NSLocalizedDescriptionKey;
          v23[1] = NSLocalizedFailureReasonErrorKey;
          v12 = [NSString stringWithFormat:@"'%@' is not a valid version.", v6];
          v24[1] = v12;
          v23[2] = @"FailingKeyPath";
          v22 = @"_ContentVersion";
          v13 = [NSArray arrayWithObjects:&v22 count:1];
          v24[2] = v13;
          [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];
          objc_claimAutoreleasedReturnValue();
          v14 = sub_10000765C();
          *a2 = sub_10000783C(v14, v15, v16);
        }
      }

      else
      {
        v10 = [v7 domain];
        v11 = v10;
        if (v10 == GC_NSCollectionErrorDomain)
        {
          v5 = [v7 code];

          if (v5 == 3)
          {
            v4 = sub_100009270(a1, a2);
            goto LABEL_7;
          }
        }

        else
        {
        }

        if (a2)
        {
          v26[0] = @"Invalid asset format.";
          v25[0] = NSLocalizedDescriptionKey;
          v25[1] = NSLocalizedFailureReasonErrorKey;
          v17 = [v7 localizedFailureReason];
          v26[1] = v17;
          [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
          objc_claimAutoreleasedReturnValue();
          v18 = sub_100007614();
          *a2 = sub_10000783C(v18, v19, v20);
        }
      }

      v4 = 0;
      goto LABEL_7;
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

void *sub_10000905C(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  if (!sub_1000056C0(a1, a2))
  {
    return 0;
  }

  v5 = [a1 attributes];
  v14 = 0;
  v6 = [v5 gc_requiredObjectForKey:@"_ContentRevision" ofClass:objc_opt_class() error:&v14];
  v7 = v14;

  if (!v6 && v7)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v18[0] = @"Invalid asset format.";
    v17[0] = NSLocalizedDescriptionKey;
    v17[1] = NSLocalizedFailureReasonErrorKey;
    v10 = [v7 localizedFailureReason];
    v18[1] = v10;
    [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    objc_claimAutoreleasedReturnValue();
    v11 = sub_100007614();
    *v3 = sub_10000783C(v11, v12, v13);

    goto LABEL_9;
  }

  if (([v6 integerValue] & 0x8000000000000000) != 0)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v15[0] = NSLocalizedDescriptionKey;
    v15[1] = NSLocalizedFailureReasonErrorKey;
    v16[0] = @"Invalid asset format.";
    v16[1] = @"Negative values are not permitted.";
    v15[2] = @"FailingKeyPath";
    v16[2] = @"_ContentRevision";
    v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
    *v3 = sub_10000783C(NSError, 3, v8);

LABEL_9:
    v3 = 0;
    goto LABEL_10;
  }

  v3 = [v6 integerValue];
LABEL_10:

  return v3;
}

void *sub_100009270(void *a1, void *a2)
{
  if (a1)
  {
    v2 = a2;
    if (sub_1000056C0(a1, a2))
    {
      v4 = [a1 attributes];
      v12 = 0;
      v5 = [v4 gc_requiredObjectForKey:@"_ContentVersion" ofClass:objc_opt_class() error:&v12];
      v6 = v12;

      if (v5)
      {
        if (([v5 integerValue] & 0x8000000000000000) == 0)
        {
          v2 = [[GCVersion alloc] initWithMajor:objc_msgSend(v5 minor:"unsignedIntegerValue") patch:{0, 0}];
          objc_setAssociatedObject(a1, off_100010950, v2, 0x303);
LABEL_9:

          goto LABEL_10;
        }

        if (!v2)
        {
          goto LABEL_9;
        }

        v13[0] = NSLocalizedDescriptionKey;
        v13[1] = NSLocalizedFailureReasonErrorKey;
        v14[0] = @"Invalid asset format.";
        v14[1] = @"Negative values are not permitted.";
        v13[2] = @"FailingKeyPath";
        v14[2] = @"_ContentVersion";
        v7 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
        *v2 = sub_10000783C(NSError, 3, v7);
      }

      else
      {
        if (!v2)
        {
          goto LABEL_9;
        }

        v16[0] = @"Invalid asset format.";
        v15[0] = NSLocalizedDescriptionKey;
        v15[1] = NSLocalizedFailureReasonErrorKey;
        v7 = [v6 localizedFailureReason];
        v16[1] = v7;
        [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
        objc_claimAutoreleasedReturnValue();
        v9 = sub_100007614();
        *v2 = sub_10000783C(v9, v10, v11);
      }

      v2 = 0;
      goto LABEL_9;
    }
  }

  v2 = 0;
LABEL_10:

  return v2;
}

void sub_1000094C8(void *a1, uint64_t a2)
{
  v3 = sub_100007628(a1, a2);
  v5 = sub_100008AD0(v3, v4);
  v6 = sub_100007640(v5);
  if (!v2 && v6)
  {
    v7 = [NSException gc_exceptionWithName:NSInvalidArgumentException error:v6];
    objc_exception_throw(v7);
  }
}

void sub_100009530(void *a1, uint64_t a2)
{
  v3 = sub_100007628(a1, a2);
  v5 = sub_100008D68(v3, v4);
  v6 = sub_100007640(v5);
  if (!v2 && v6)
  {
    v7 = [NSException gc_exceptionWithName:NSInvalidArgumentException error:v6];
    objc_exception_throw(v7);
  }
}

void sub_100009598(void *a1, uint64_t a2)
{
  v3 = sub_100007628(a1, a2);
  v5 = sub_10000905C(v3, v4);
  v6 = sub_100007640(v5);
  if (!v2 && v6)
  {
    v7 = [NSException gc_exceptionWithName:NSInvalidArgumentException error:v6];
    objc_exception_throw(v7);
  }
}

void sub_1000095FC(uint64_t a1)
{
  v1 = [NSException gc_exceptionWithName:NSInvalidArgumentException error:a1];
  objc_exception_throw(v1);
}

id sub_100009630(void *a1, void *a2, uint64_t a3)
{
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"GCDBMobileAssetErrorNotification" object:*a1];

  return [a2 failWithError:a3];
}

id sub_100009694(void *a1)
{
  if (a1)
  {
    v1 = [a1 userInfo];
    v2 = [v1 gc_objectForKey:@"FailingKeyPath" ofClass:objc_opt_class() error:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}