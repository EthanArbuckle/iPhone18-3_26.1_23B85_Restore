void sub_10002BF20(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) recordID];
    v4 = [*(a1 + 32) recordType];
    v12 = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - BCCloudKitDatabaseController fetchRecordZoneChangesOperation.recordChangedBlock record=%@ %@", &v12, 0x16u);
  }

  v5 = *(*(*(a1 + 48) + 8) + 40);
  v6 = [*(a1 + 32) recordType];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    v7 = objc_opt_new();
    v8 = *(*(*(a1 + 48) + 8) + 40);
    v9 = [*(a1 + 32) recordType];
    [v8 setObject:v7 forKey:v9];
  }

  [v7 addObject:*(a1 + 32)];
  if ([v7 count] >= 0x20)
  {
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) recordType];
    [v10 p_informObserversOfRecordsChanged:v7 forRecordType:v11];

    [v7 removeAllObjects];
  }
}

void sub_10002C0C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C1A0;
  block[3] = &unk_10023F720;
  v8 = *(a1 + 32);
  v12 = v5;
  v13 = v8;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_10002C1A0(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - BCCloudKitDatabaseController recordWithIDWasDeletedBlock recordID=%@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) observers];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 48)];

  if ([v5 count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10) databaseController:*(a1 + 40) recordWithIDWasDeleted:*(a1 + 32) recordType:{*(a1 + 48), v11}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

void sub_10002C324(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C414;
  block[3] = &unk_1002408D8;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v8;
  v10 = *(a1 + 48);
  v14 = v9;
  v15 = v5;
  v16 = v6;
  v17 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

void sub_10002C414(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = *(a1 + 40);
    *v9 = _NSConcreteStackBlock;
    *&v9[8] = 3221225472;
    *&v9[16] = sub_10003104C;
    v10 = &unk_100240B70;
    v11 = objc_alloc_init(NSMutableArray);
    v5 = v11;
    [v4 enumerateObjectsUsingBlock:v9];
    v6 = [v5 componentsJoinedByString:{@", ", *v9, *&v9[8], *&v9[16], v10}];

    *v9 = 138543618;
    *&v9[4] = v3;
    *&v9[12] = 2114;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges recordZoneChangeTokensUpdatedBlock recordZoneIDs=%{public}@ ", v9, 0x16u);
  }

  [*(a1 + 32) p_informObserversOfRecordsChanged:*(*(*(a1 + 64) + 8) + 40)];
  [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
  v7 = [*(a1 + 32) tokenStores];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 48)];

  [v8 storeServerChangeToken:*(a1 + 56) completion:0];
}

void sub_10002C5E8(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a6;
  v13 = sub_100002660();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) containerIdentifier];
    v15 = *(a1 + 40);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10003104C;
    v29 = &unk_100240B70;
    v30 = objc_alloc_init(NSMutableArray);
    v16 = v30;
    [v15 enumerateObjectsUsingBlock:buf];
    v17 = [v16 componentsJoinedByString:{@", "}];

    *buf = 138543874;
    *&buf[4] = v14;
    *&buf[12] = 2114;
    *&buf[14] = v17;
    *&buf[22] = 1024;
    LODWORD(v29) = a5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) p_fetchRecordZoneChanges recordZoneFetchCompletionBlock recordZoneIDs=%{public}@ moreComing= %{BOOL}d", buf, 0x1Cu);
  }

  v18 = [*(a1 + 32) accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C858;
  block[3] = &unk_100240948;
  block[4] = *(a1 + 32);
  v23 = v10;
  v27 = a5;
  v26 = *(a1 + 48);
  v24 = v12;
  v25 = v11;
  v19 = v11;
  v20 = v12;
  v21 = v10;
  dispatch_async(v18, block);
}

void sub_10002C858(uint64_t a1)
{
  v2 = [*(a1 + 32) changedRecordZoneIDs];
  [v2 removeObject:*(a1 + 40)];

  [*(a1 + 32) p_scheduleArchiveWithCompletion:&stru_100240920];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = sub_1000254B0(v3);
    v5 = *(a1 + 48);
    if (v4)
    {
      v6 = [v5 userInfo];
      v7 = [v6 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];
      v28 = [v7 allKeys];

      [*(a1 + 32) zonesUnreadableDueToMissingD2DEncryptionIdentity:v28 completion:0];

      return;
    }

    if (sub_100025690(v5))
    {
      v39 = NSLocalizedDescriptionKey;
      v40 = @"Unreadable keychain - cannot fetch record zones";
      v16 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v17 = 2006;
    }

    else
    {
      if (!sub_100025880(*(a1 + 48)))
      {
        v19 = sub_10000DC08();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v24 = [*(a1 + 32) containerIdentifier];
          v25 = *(a1 + 40);
          v26 = *(a1 + 48);
          v27 = [v25 zoneName];
          *buf = 138544130;
          v30 = v24;
          v31 = 2114;
          v32 = v25;
          v33 = 2114;
          v34 = v26;
          v35 = 2112;
          v36 = v27;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation zone %{public}@ zoneFetchCompletion failed: %{public}@ time to delete the tokenStore for  %@", buf, 0x2Au);
        }

        v20 = [*(a1 + 32) tokenStores];
        v18 = [v20 objectForKeyedSubscript:*(a1 + 40)];

        [v18 deleteCloudDataWithCompletion:0];
        v21 = [*(a1 + 48) domain];
        v22 = [v21 isEqualToString:CKErrorDomain];

        if (v22)
        {
          v23 = [*(a1 + 48) code];
          if (v23 <= 0x1C && ((1 << v23) & 0x14200000) != 0)
          {
            [*(*(*(a1 + 64) + 8) + 40) addObject:*(a1 + 40)];
          }
        }

        goto LABEL_16;
      }

      v37 = NSLocalizedDescriptionKey;
      v38 = @"Account temporarily unavailable - cannot fetch record zones";
      v16 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v17 = 2007;
    }

    v18 = [NSError errorWithDomain:@"BDSCloudKitClientError" code:v17 userInfo:v16];

    [*(a1 + 32) zonesTemporarilyUnreadableWithError:v18 completion:0];
LABEL_16:

    return;
  }

  v8 = sub_100002660();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) containerIdentifier];
    v10 = [*(a1 + 40) zoneName];
    v11 = *(a1 + 80);
    *buf = 138543874;
    v30 = v9;
    v31 = 2114;
    v32 = v10;
    v33 = 1024;
    LODWORD(v34) = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation zone %{public}@ success.  More coming: %{BOOL}d", buf, 0x1Cu);
  }

  [*(a1 + 32) p_informObserversOfRecordsChanged:*(*(*(a1 + 72) + 8) + 40)];
  if ((*(a1 + 80) & 1) == 0)
  {
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) zoneName];
    [v12 p_informObserversOfCompletedFetchOfZone:v13];
  }

  [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
  v14 = [*(a1 + 32) tokenStores];
  v15 = [v14 objectForKeyedSubscript:*(a1 + 40)];

  [v15 storeServerChangeToken:*(a1 + 56) completion:0];
}

void sub_10002CCD0(id a1)
{
  v1 = sub_100002660();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - archiveComplete (recordZoneFetchCompletionBlock)", v2, 2u);
  }
}

void sub_10002CD38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100002660();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) containerIdentifier];
    *buf = 138543362;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation fetchRecordZoneChangesCompletionBlock", buf, 0xCu);
  }

  v6 = [*(a1 + 32) accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002CEDC;
  block[3] = &unk_100240A08;
  objc_copyWeak(&v17, (a1 + 72));
  v13 = v3;
  v7 = *(a1 + 56);
  v11 = *(a1 + 32);
  v8 = *(&v11 + 1);
  v16 = *(a1 + 64);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v7;
  v14 = v11;
  v15 = v9;
  v10 = v3;
  dispatch_async(v6, block);

  objc_destroyWeak(&v17);
}

void sub_10002CEDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if ([*(*(*(a1 + 64) + 8) + 40) count])
  {
    v3 = *(a1 + 64);
    v4 = *(*(v3 + 8) + 40);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10002D474;
    v36[3] = &unk_100240998;
    v36[4] = WeakRetained;
    v36[5] = v3;
    [WeakRetained zonesDeletedOrReset:v4 completion:v36];
  }

  v5 = *(a1 + 32);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 domain];
    if ([v7 isEqualToString:CKErrorDomain])
    {
      v8 = [v6 code];

      if (v8 == 2)
      {
        [WeakRetained setBackOffInterval:0.0];
      }
    }

    else
    {
    }

    v15 = sub_100002660();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v27 = [*(a1 + 40) containerIdentifier];
      v28 = *(a1 + 48);
      v29 = objc_alloc_init(NSMutableArray);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10003104C;
      v38 = &unk_100240B70;
      v39 = v29;
      v30 = v29;
      [v28 enumerateObjectsUsingBlock:buf];
      v31 = [v30 componentsJoinedByString:{@", "}];

      *buf = 138543874;
      *&buf[4] = v27;
      *&buf[12] = 2114;
      *&buf[14] = v31;
      *&buf[22] = 2114;
      v38 = v6;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation fetchRecordZoneChangesCompletionBlock zoneChanges failed: %{public}@ %{public}@", buf, 0x20u);
    }

    v16 = [v6 domain];
    v17 = [v16 isEqualToString:CKErrorDomain];

    if (v17)
    {
      v18 = [v6 code];
      if (v18 <= 0x17 && ((1 << v18) & 0x8000C0) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v22 = [v6 domain];
      v23 = [v22 isEqualToString:NSCocoaErrorDomain];

      if (v23)
      {
LABEL_16:
        v19 = sub_100002660();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [*(a1 + 40) containerIdentifier];
          *buf = 138543618;
          *&buf[4] = v20;
          *&buf[12] = 2112;
          *&buf[14] = v6;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation retrying fetch for error: %@", buf, 0x16u);
        }

        v21 = [WeakRetained accessQueue];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_10002D54C;
        v32[3] = &unk_1002409E0;
        v32[4] = WeakRetained;
        v33 = v6;
        objc_copyWeak(&v35, (a1 + 80));
        v34 = *(a1 + 40);
        dispatch_async(v21, v32);

        objc_destroyWeak(&v35);
        goto LABEL_23;
      }
    }

    v24 = sub_100002660();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF560();
    }
  }

  else
  {
    [WeakRetained setBackOffInterval:0.0];
    v9 = sub_100002660();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) containerIdentifier];
      v11 = *(a1 + 48);
      v12 = objc_alloc_init(NSMutableArray);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10003104C;
      v38 = &unk_100240B70;
      v39 = v12;
      v13 = v12;
      [v11 enumerateObjectsUsingBlock:buf];
      v14 = [v13 componentsJoinedByString:{@", "}];

      *buf = 138543618;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - CKFetchRecordZoneChangesOperation fetchRecordZoneChangesCompletionBlock success (%{public}@).", buf, 0x16u);
    }

    [*(a1 + 40) p_informObserversOfRecordsChanged:*(*(*(a1 + 72) + 8) + 40)];
    [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
    [*(a1 + 40) setFetchRecordZoneChangesSuccess:1];
  }

LABEL_23:
  v25 = objc_retainBlock(*(a1 + 56));
  v26 = v25;
  if (v25)
  {
    (*(v25 + 2))(v25, v6);
  }
}

void sub_10002D474(uint64_t a1)
{
  v2 = sub_10000DC08();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) containerIdentifier];
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - fetchRecordZoneChangesCompletionBlock - zonesDeletedOrReset DONE: %{public}@", &v5, 0x16u);
  }
}

void sub_10002D54C(uint64_t a1)
{
  if (([*(a1 + 32) serverFetchPostponed] & 1) == 0)
  {
    [*(a1 + 32) setServerFetchPostponed:1];
    [*(a1 + 32) p_updateRetryParametersFromFetchZoneChangesOperationError:*(a1 + 40)];
    [*(a1 + 32) backOffInterval];
    v3 = dispatch_time(0, (v2 * 1000000000.0));
    v4 = [*(a1 + 32) accessQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10002D644;
    v5[3] = &unk_10023F9A8;
    objc_copyWeak(&v6, (a1 + 56));
    v5[4] = *(a1 + 48);
    dispatch_after(v3, v4, v5);

    objc_destroyWeak(&v6);
  }
}

void sub_10002D644(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setServerFetchPostponed:0];
    v4 = sub_100002660();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) containerIdentifier];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - signal coalescedZoneFetch in fetchRecordZoneChangesOperation.fetchRecordZoneChangesCompletionBlock retryFetch", &v7, 0xCu);
    }

    v6 = [v3 coalescedZoneFetch];
    [v6 signalWithCompletion:&stru_1002409B8];
  }
}

void sub_10002D7D0(uint64_t a1)
{
  v2 = +[BDSReachability isOffline];
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) containerIdentifier];
    v5 = v4;
    v6 = @"YES";
    if (v2)
    {
      v6 = @"NO";
    }

    *buf = 138543618;
    v31 = v4;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - p_internetReachabilityChanged reachable:%@", buf, 0x16u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [*(a1 + 32) observers];
  v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v12 = [*(a1 + 32) observers];
        v13 = [v12 objectForKeyedSubscript:v11];

        if ([v13 count])
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v21;
            do
            {
              v18 = 0;
              do
              {
                if (*v21 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                [*(*(&v20 + 1) + 8 * v18) databaseController:*(a1 + 32) reachabilityChanged:v2 ^ 1];
                v18 = v18 + 1;
              }

              while (v16 != v18);
              v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v16);
          }
        }

        v10 = v10 + 1;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }
}

void sub_10002DDF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002660();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = [v6 count];
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "p_informObserversOfRecordsChanged: changedRecords.count=%lu recordType=%{public}@", &v8, 0x16u);
  }

  [*(a1 + 32) p_informObserversOfRecordsChanged:v6 forRecordType:v5];
}

void sub_10002DFDC(id *a1)
{
  v2 = sub_10000DC08();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] containerIdentifier];
    v4 = a1[5];
    v5 = [a1[6] allObjects];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10003104C;
    v39 = &unk_100240B70;
    v40[0] = objc_alloc_init(NSMutableArray);
    v6 = v40[0];
    [v5 enumerateObjectsUsingBlock:buf];
    v7 = [v6 componentsJoinedByString:{@", "}];

    v8 = [a1[4] zoneObservers];
    *buf = 138544130;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    *&buf[22] = 2114;
    v39 = v7;
    LOWORD(v40[0]) = 2112;
    *(v40 + 2) = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController (%{public}@) - p_informObserversOfSaltVersionIdentifierChanged: saltVersionIdentifier=%{public}@ zoneIDs=%{public}@ observers:%@", buf, 0x2Au);
  }

  if ([a1[5] length])
  {
    v9 = dispatch_group_create();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = a1[6];
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      v26 = v30;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v16 = [v15 zoneName];
          v17 = [v16 length];

          if (v17)
          {
            v18 = [a1[4] zoneObservers];
            v19 = [v15 zoneName];
            v20 = [v18 objectForKey:v19];

            if (v20)
            {
              dispatch_group_enter(v9);
              v22 = a1[4];
              v21 = a1[5];
              v29[0] = _NSConcreteStackBlock;
              v29[1] = 3221225472;
              v30[0] = sub_10002E404;
              v30[1] = &unk_100240A80;
              v30[2] = v22;
              v30[3] = v15;
              v23 = v21;
              v31 = v23;
              v32 = v9;
              [v20 databaseController:v22 saltVersionIdentifierChanged:v23 completion:v29];
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v12);
    }

    v24 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002E510;
    block[3] = &unk_1002402E0;
    v28 = a1[7];
    dispatch_group_notify(v9, v24, block);

    v25 = v28;
    goto LABEL_18;
  }

  v9 = objc_retainBlock(a1[7]);
  if (v9)
  {
    v25 = [NSError errorWithDomain:@"BDSErrorDomain" code:1005 userInfo:0];
    (v9[2].isa)(v9, v25);
LABEL_18:
  }
}

void sub_10002E404(uint64_t a1, int a2)
{
  v4 = sub_10000DC08();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) containerIdentifier];
    v6 = [*(a1 + 40) zoneName];
    v7 = *(a1 + 48);
    v8 = 138413058;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ name:%@ salt:%@  success:%{BOOL}d  LEAVE GROUP", &v8, 0x26u);
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_10002E510(uint64_t a1)
{
  v2 = sub_10000DC08();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "p_informObserversOfSaltVersionIdentifierChanged DONE", v5, 2u);
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0);
  }
}

void sub_10002F2C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF630(a1);
    }
  }

  v11 = objc_retainBlock(*(a1 + 40));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v9);
  }
}

void sub_10002F480(id *a1)
{
  v2 = [a1[4] desiredRecordZoneIDs];
  v3 = [v2 valueForKey:@"zoneName"];

  v4 = [NSError errorWithDomain:@"BDSCloudKitClientError" code:2003 userInfo:0];
  v5 = a1[4];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F59C;
  v7[3] = &unk_100240488;
  v7[4] = v5;
  v8 = a1[5];
  v9 = v3;
  v10 = a1[6];
  v6 = v3;
  [v5 detachWithError:v4 completion:v7];
}

void sub_10002F59C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002F654;
  v4[3] = &unk_100240460;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  [v2 _deleteRecordZonesWithIDs:v3 qualityOfService:17 completion:v4];
}

void sub_10002F654(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002F6E4;
  v3[3] = &unk_1002402E0;
  v4 = *(a1 + 48);
  [v1 attachToZones:v2 completion:v3];
}

void sub_10002F6E4(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_10002F838(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002F8C8;
  v3[3] = &unk_1002402E0;
  v4 = *(a1 + 48);
  [v1 detachWithError:v2 completion:v3];
}

void sub_10002F8C8(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_10002FA7C(uint64_t a1)
{
  [*(a1 + 32) invalidateSalt];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002FB14;
  v3[3] = &unk_1002402E0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 detachWithError:0 completion:v3];
}

void sub_10002FB14(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_10002FC78(uint64_t a1)
{
  v9 = [*(a1 + 32) observers];
  v2 = [v9 objectForKeyedSubscript:*(a1 + 40)];
  if (!v2)
  {
    v2 = objc_opt_new();
    [v9 setObject:v2 forKeyedSubscript:*(a1 + 40)];
  }

  [v2 addObject:*(a1 + 48)];
  v3 = [*(a1 + 32) container];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) attachedToContainer];

    if (v5)
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      v8 = [v7 container];
      [v6 databaseController:v7 attachmentChanged:v8 != 0];
    }
  }
}

void sub_10002FE80(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = (a1 + 40);
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v4)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002FFCC;
    v10[3] = &unk_100240AD0;
    v6 = *(a1 + 48);
    v5 = (a1 + 48);
    v11 = v6;
    v7 = [v4 indexesOfObjectsPassingTest:v10];
    if ([v7 count])
    {
      [v4 removeObjectsAtIndexes:v7];
    }

    else
    {
      v9 = sub_100002660();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1001BF844(v5, v3);
      }
    }

    v8 = v11;
  }

  else
  {
    v8 = sub_100002660();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF8B8(a1, (a1 + 40));
    }
  }
}

void sub_1000300C0(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100030160;
  v3[3] = &unk_100240AF8;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_100030160(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100030218;
  v6[3] = &unk_100240AD0;
  v7 = *(a1 + 32);
  v5 = [v4 indexesOfObjectsPassingTest:v6];
  if ([v5 count])
  {
    [v4 removeObjectsAtIndexes:v5];
  }
}

void sub_1000302F8(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32) && [*(a1 + 40) length])
  {
    v3 = [*(a1 + 48) zoneObservers];
    [v3 setObject:*(a1 + 32) forKey:*(a1 + 40)];

    v4 = sub_10000DC08();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = 134218242;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BCCloudKitDatabaseController - Setting observer=%p for zone =%{public}@", &v7, 0x16u);
    }
  }

  else
  {
    v4 = sub_10000DC08();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001BF99C(v2, a1);
    }
  }
}

void sub_100030568(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = sub_100002660();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      *buf = 138543362;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController - Registering store for record zone %{public}@", buf, 0xCu);
    }

    v5 = [WeakRetained tokenStores];
    v6 = (a1 + 32);
    v7 = [v5 objectForKeyedSubscript:*(a1 + 32)];

    if (v7)
    {
      v8 = sub_100002660();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001BFA7C(v6, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    else
    {
      v15 = *(a1 + 40);
      v16 = [WeakRetained tokenStores];
      [v16 setObject:v15 forKeyedSubscript:*(a1 + 32)];

      if ([*(a1 + 48) attachedToContainer])
      {
        v17 = [WeakRetained changedRecordZoneIDs];
        v18 = [v17 containsObject:*v6];

        if (v18)
        {
          v19 = sub_100002660();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = [WeakRetained containerIdentifier];
            v21 = *v6;
            *buf = 138543618;
            v26 = v20;
            v27 = 2114;
            v28 = v21;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController (%{public}@) - signal coalescedZoneFetch in registerServerChangeTokenStore:forZoneID: recordZoneID=%{public}@", buf, 0x16u);
          }

          v22 = [WeakRetained coalescedZoneFetch];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_100030834;
          v23[3] = &unk_10023F6B0;
          v24 = *v6;
          [v22 signalWithCompletion:v23];

          v8 = v24;
        }

        else
        {
          v8 = [*v6 zoneName];
          [WeakRetained p_informObserversOfCompletedFetchOfZone:v8];
        }
      }

      else
      {
        v8 = sub_100002660();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController - skipping fetch, we are not yet attached in registerServerChangeTokenStore:forZoneID:", buf, 2u);
        }
      }
    }
  }
}

void sub_100030834(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "BCCloudKitDatabaseController - performed zone fetch for recordZoneID:%{public}@", &v4, 0xCu);
  }
}

void sub_1000309F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained tokenStores];
    v5 = [v4 copy];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:v11, v16];
          v13 = v12;
          if (*(a1 + 32) == v12)
          {
            v15 = [v3 tokenStores];
            [v15 removeObjectForKey:v11];

            v14 = v6;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = sub_100002660();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFB30(v14);
    }

LABEL_13:
  }
}

void sub_100030D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100030D50(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) attachedToContainer];
  v2 = [*(a1 + 32) container];
  v3 = [v2 description];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

void sub_10003104C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 zoneName];
  [v2 addObject:v3];
}

void sub_1000310A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 zoneID];
  v3 = [v4 zoneName];
  [v2 addObject:v3];
}

void sub_100031120(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id sub_100031154(void *a1, int a2, void *a3)
{
  v10 = NSUnderlyingErrorKey;
  v11 = a3;
  v5 = a3;
  v6 = a1;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [NSError errorWithDomain:v6 code:a2 userInfo:v7];

  return v8;
}

void sub_10003163C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100031660(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002660();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1001BFB74(v5, v6, v7);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained delegate];

  if (v9)
  {
    v10 = [WeakRetained delegate];
    [v10 handleNotification:v5];
  }

  else
  {
    v10 = sub_100002660();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001BFBFC(v10);
    }
  }
}

void sub_1000330DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100033108(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleFetchNotificationNames:v5 latestChangeToken:a3 forClient:*(a1 + 32) completion:*(a1 + 40)];
}

void sub_100033398(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000333BC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 32);
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [WeakRetained _postServiceNotificationNames:v5 latestChangeToken:a2];
}

id sub_100033754(uint64_t a1)
{
  [*(a1 + 32) cq_postServiceNotificationNames:*(a1 + 40) latestChangeToken:*(a1 + 64) forClients:*(a1 + 48)];
  v2 = *(a1 + 56);

  return [v2 endTransaction];
}

void sub_1000371E8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  if (v4)
  {
    if (v3)
    {
      v3[2](v3, v4);
    }
  }

  else if (v3)
  {
    v3[2](v3, 0);
  }
}

void sub_100038248(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_1000384A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000023E8();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Returning widget infos: %@", &v10, 0xCu);
  }

  v8 = objc_retainBlock(*(a1 + 32));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v5, v6);
  }
}

void sub_100038C78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100038C9C(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!v7)
  {
    v4 = [WeakRetained priceTracker];
    [v4 updateTrackedPricesIgnoringScheduleForNewItemsWithCompletionHandler:&stru_100240D40];
  }

  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v7);
  }
}

void sub_100038DF8(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_100038F18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_retainBlock(*(a1 + 56));
    v5 = v4;
    if (v4)
    {
      (*(v4 + 2))(v4, v3);
    }
  }

  else
  {
    v6 = [*(a1 + 32) priceTracker];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001BFDBC;
    v8[3] = &unk_1002404D8;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v6 bdsctl_addTrackedItem:v7 completion:v8];
  }
}

void sub_10003901C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = sub_1000023E8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BDSService] Item '%@' is already in WTR collection", buf, 0xCu);
    }

    v5 = objc_retainBlock(*(a1 + 40));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5, 0);
    }
  }

  else
  {
    v7 = [*(a1 + 32) adamID];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100039198;
    v8[3] = &unk_10023FEB0;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    [BDSServiceCenter addStoreID:v7 toCollectionID:@"Want_To_Read_Collection_ID" completion:v8];

    v6 = v9;
  }
}

void sub_100039198(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = sub_1000023E8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BDSService] Item '%@' added to WTR collection", &v8, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v5 = [NSError errorWithDomain:@"BDSErrorDomain" code:-1 userInfo:&off_100250EF0];
  }

  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v5);
  }
}

void sub_10003936C(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_100039B00(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_100039F1C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10003A5A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained performWorkWithCompletion:v3];
  }

  else
  {
    v5 = objc_retainBlock(v3);

    if (v5)
    {
      v5[2](v5);
    }

    v3 = v5;
  }
}

void sub_10003A634(id a1, NSString *a2)
{
  v2 = a2;
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_coalescedNotification in %@ did not call notification within 10s.", &v4, 0xCu);
  }
}

void sub_10003A834(uint64_t a1)
{
  [*(a1 + 32) setClientCount:{objc_msgSend(*(a1 + 32), "clientCount") + 1}];
  v2 = [*(a1 + 32) transactionLifetime];

  if (v2)
  {
    v3 = [*(a1 + 32) transactionLifetime];
    dispatch_source_cancel(v3);
  }
}

void sub_10003AA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003AA64(uint64_t a1)
{
  v2 = [*(a1 + 32) lifecycleAccessQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003AB14;
  v3[3] = &unk_10023F9A8;
  objc_copyWeak(&v4, (a1 + 40));
  v3[4] = *(a1 + 32);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
}

void sub_10003AB14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[BULogUtilities shared];
    v4 = [v3 verboseLoggingEnabled];

    if (v4)
    {
      v5 = sub_10000DB80();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(a1 + 32) transactionName];
        v11 = 138412290;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "\\Transaction client decrementing for %@\\"", &v11, 0xCu);
      }
    }

    [WeakRetained setClientCount:{objc_msgSend(WeakRetained, "clientCount") - 1}];
    if (![WeakRetained clientCount])
    {
      v7 = +[BULogUtilities shared];
      v8 = [v7 verboseLoggingEnabled];

      if (v8)
      {
        v9 = sub_10000DB80();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [*(a1 + 32) transactionName];
          v11 = 138412290;
          v12 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "\\Transaction clientCount 0 for %@\\"", &v11, 0xCu);
        }
      }

      [WeakRetained laq_scheduleTransactionLifetime];
    }
  }
}

id sub_10003AEDC(uint64_t a1)
{
  v2 = +[BULogUtilities shared];
  v3 = [v2 verboseLoggingEnabled];

  if (v3)
  {
    v4 = sub_10000DB80();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) transactionName];
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "\\Transaction Timer Completion fired for %@\\"", &v8, 0xCu);
    }
  }

  v6 = [*(a1 + 32) delegate];
  [v6 transactionCompleted:*(a1 + 32)];

  [*(a1 + 32) setDelegate:0];
  return [*(a1 + 32) setTransactionLifetime:0];
}

id sub_10003AFF4(uint64_t a1)
{
  v2 = +[BULogUtilities shared];
  v3 = [v2 verboseLoggingEnabled];

  if (v3)
  {
    v4 = sub_10000DB80();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) transactionName];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "\\Transaction Timer Cancel fired for %@\\"", &v7, 0xCu);
    }
  }

  return [*(a1 + 32) setTransactionLifetime:0];
}

void sub_10003C808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003C820(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10003C838(uint64_t a1, uint64_t a2)
{
  v3 = [NSData dataWithContentsOfURL:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

void sub_10003CA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10003CA50(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v3 writeToURL:a2 options:1073741825 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
}

void sub_10003CC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10003CC5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSFileManager defaultManager];
  v5 = *(*(a1 + 40) + 8);
  obj = *(v5 + 40);
  v6 = [v4 removeItemAtURL:v3 error:&obj];

  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 32) + 8) + 24) = v6;
}

void sub_100041040(uint64_t a1)
{
  v2 = [*(a1 + 32) transactions];
  v3 = [BCCloudKitDataChangedTransaction transactionNameForEntityName:*(a1 + 40)];
  v6 = [v2 objectForKey:v3];

  if (!v6)
  {
    v6 = [[BCCloudKitDataChangedTransaction alloc] initWithEntityName:*(a1 + 40) notificationName:*(a1 + 48) delegate:*(a1 + 32)];
    v4 = [*(a1 + 32) transactions];
    v5 = [(BCCloudKitTransaction *)v6 transactionName];
    [v4 setObject:v6 forKey:v5];
  }

  [(BCCloudKitTransaction *)v6 clientConnected];
  [(BCCloudKitTransaction *)v6 signal];
}

void sub_100041238(uint64_t a1)
{
  v2 = [*(a1 + 32) transactions];
  v3 = [BCCloudKitSyncToCKTransaction transactionNameForEntityName:*(a1 + 40)];
  v4 = [v2 objectForKey:v3];

  v5 = [(BCCloudKitTransaction *)v4 transactionName];
  v6 = v5;
  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v4 = [[BCCloudKitSyncToCKTransaction alloc] initWithEntityName:*(a1 + 40) syncManager:*(a1 + 48) delegate:*(a1 + 32)];
    v7 = [(BCCloudKitTransaction *)v4 transactionName];

    v8 = [*(a1 + 32) transactions];
    [v8 setObject:v4 forKey:v7];

    v9 = objc_alloc_init(NSMutableArray);
    v10 = [*(a1 + 32) transactionCompletionCallbacks];
    [v10 setObject:v9 forKeyedSubscript:v7];

    v11 = sub_100002660();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C0300(v7, v11);
    }
  }

  if (*(a1 + 56))
  {
    v12 = sub_100002660();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C0378((a1 + 56), v7, v12);
    }

    v13 = [*(a1 + 32) transactionCompletionCallbacks];
    v14 = [v13 objectForKeyedSubscript:v7];
    v15 = objc_retainBlock(*(a1 + 56));
    [v14 addObject:v15];
  }

  [(BCCloudKitTransaction *)v4 clientConnected];
  [(BCCloudKitTransaction *)v4 signal];
}

void sub_1000414F0(uint64_t a1)
{
  v2 = [*(a1 + 32) transactions];
  v3 = [BCCloudKitFetchChangesTransaction transactionNameForEntityName:@"iBooks"];
  v8 = [v2 objectForKey:v3];

  if (!v8)
  {
    v4 = [BCCloudKitFetchChangesTransaction alloc];
    v5 = [*(a1 + 32) cloudKitController];
    v8 = [(BCCloudKitFetchChangesTransaction *)v4 initWithCloudKitController:v5 delegate:*(a1 + 32)];

    v6 = [*(a1 + 32) transactions];
    v7 = [(BCCloudKitTransaction *)v8 transactionName];
    [v6 setObject:v8 forKey:v7];
  }

  [(BCCloudKitTransaction *)v8 clientConnected];
  [(BCCloudKitTransaction *)v8 signal];
}

void sub_1000416B8(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionName];
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BCCloudKitTransactionManager] Transaction completed %@", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = a1;
  v4 = [*(a1 + 40) transactionCompletionCallbacks];
  v5 = [v4 objectForKeyedSubscript:v2];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = sub_100002660();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v14 = objc_retainBlock(v10);
          *buf = 138412546;
          v23 = v14;
          v24 = 2112;
          v25 = v2;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Calling block %@ for transaction %@ ", buf, 0x16u);
        }

        v12 = objc_retainBlock(v10);
        v13 = v12;
        if (v12)
        {
          (*(v12 + 2))(v12);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v7);
  }

  v15 = [*(v17 + 40) transactions];
  [v15 removeObjectForKey:v2];

  v16 = [*(v17 + 40) transactionCompletionCallbacks];
  [v16 removeObjectForKey:v2];
}

void sub_100041CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100041CEC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100041D04(uint64_t a1)
{
  v21 = +[BDSBookWidgetInfoMO fetchRequest];
  v2 = [*(a1 + 32) assetID];
  v3 = [NSPredicate predicateWithFormat:@"assetID == %@", v2];
  [v21 setPredicate:v3];

  [v21 setFetchLimit:1];
  v4 = [*(a1 + 40) executeFetchRequest:v21 error:0];
  v5 = [v4 firstObject];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = [[BDSBookWidgetInfoMO alloc] initWithContext:*(a1 + 40)];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = [*(a1 + 32) assetID];
  [*(*(*(a1 + 48) + 8) + 40) setAssetID:v11];

  v12 = *(*(*(a1 + 48) + 8) + 40);
  v13 = [*(a1 + 32) title];
  [v12 bl_setNonNilValue:v13 forKey:@"title"];

  v14 = *(*(*(a1 + 48) + 8) + 40);
  v15 = [*(a1 + 32) coverURL];
  [v14 bl_setNonNilValue:v15 forKey:@"coverURL"];

  v16 = *(*(*(a1 + 48) + 8) + 40);
  v17 = [*(a1 + 32) totalDuration];
  [v16 bl_setNonNilValue:v17 forKey:@"totalDuration"];

  v18 = [*(a1 + 32) pageProgressionDirection];
  [*(*(*(a1 + 48) + 8) + 40) setPageProgressionDirection:v18];

  v19 = [*(a1 + 32) cloudAssetType];
  [*(*(*(a1 + 48) + 8) + 40) setCloudAssetType:v19];

  v20 = [*(a1 + 32) libraryContentAssetType];
  [*(*(*(a1 + 48) + 8) + 40) setLibraryContentAssetType:v20];

  [*(*(*(a1 + 48) + 8) + 40) setIsExplicit:{objc_msgSend(*(a1 + 32), "isExplicit")}];
}

void sub_100043794(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v3 count:1];
  [v1 _l_cancelWithManagers:v2];
}

void sub_100043BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100043BD0(uint64_t a1)
{
  v2 = [*(a1 + 32) currentProgress];

  if (v2)
  {
    v3 = sub_10000DC90();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = @"YES";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Doing nothing because alreadyRunning is %{public}@", buf, 0xCu);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v4 = [*(a1 + 32) managers];
    [v4 addObject:*(a1 + 40)];

    objc_initWeak(buf, *(a1 + 32));
    v5 = [*(a1 + 32) currentObserverIdentifier] + 1;
    [*(a1 + 32) setCurrentObserverIdentifier:v5];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100043E6C;
    v12[3] = &unk_100240ED8;
    objc_copyWeak(v13, buf);
    v13[1] = v5;
    [*(a1 + 32) setObserver:v12];
    v6 = [NSProgress progressWithTotalUnitCount:1];
    [*(a1 + 32) setCurrentProgress:v6];

    v7 = [*(a1 + 32) currentProgress];
    [v7 setCancellationHandler:&stru_100240EF8];

    v8 = sub_10000DC90();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "About to enable sync", v11, 2u);
    }

    v9 = +[BCCloudCollectionsManager sharedManager];
    v10 = [*(a1 + 32) observer];
    [v9 setEnableCloudSync:1 completion:v10];

    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }
}

void sub_100043E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100043E6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = sub_10000DC90();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BDSAutomaticPinningListUpdater[%p] _updateCloudDataWithManager - About to call requestUpdateAttachment", buf, 0xCu);
  }

  v4 = +[BCCloudKitController sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100043FC8;
  v5[3] = &unk_100240EB0;
  objc_copyWeak(v6, (a1 + 32));
  v6[1] = *(a1 + 40);
  [v4 requestUpdateAttachmentWithCompletion:v5];

  objc_destroyWeak(v6);
}

void sub_100043FC8(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = sub_10000DC90();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218496;
    v9 = WeakRetained;
    v10 = 1024;
    v11 = a2;
    v12 = 1024;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BDSAutomaticPinningListUpdater[%p] _updateCloudDataWithManager - requestUpdateAttachment completion: attached:%d, reachable:%d", &v8, 0x18u);
  }

  [WeakRetained _updateAttachmentCompletedFromObserver:*(a1 + 40) attached:a2];
}

void sub_1000440B8(id a1)
{
  v1 = +[BCCloudCollectionsManager sharedManager];
  [v1 setEnableCloudSync:0];
}

void sub_100044238(uint64_t a1)
{
  v2 = [*(a1 + 32) currentProgress];
  if ([v2 isCancelled])
  {

LABEL_9:
    v6 = sub_10000DC90();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) currentObserverIdentifier];
      *buf = 134217984;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Was cancelled before fetching records finished. currentObserver:%lu", buf, 0xCu);
    }

    return;
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) currentObserverIdentifier];

  if (v3 != v4)
  {
    goto LABEL_9;
  }

  v5 = [*(a1 + 32) observer];
  v8 = objc_retainBlock(v5);

  if (v8)
  {
    [*(a1 + 32) setObserver:0];
  }

  [*(a1 + 32) _l_finishedFetchingCollectionsWithManager:*(a1 + 48)];
}

void sub_10004456C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100044608;
    v3[3] = &unk_10023F6B0;
    v3[4] = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 2);
    sub_100044608(v3);
    os_unfair_lock_unlock(v2 + 2);
  }
}

void sub_100044B28(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

void sub_100044C20(id a1)
{
  qword_100274A68 = objc_alloc_init(BCCloudDataNullPrivacyDelegate);

  _objc_release_x1();
}

uint64_t sub_1000463BC(uint64_t a1)
{
  qword_100274A80 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100046528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100046550(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = sub_10000DE28();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BDSWidgetCenterManager - reload timeline", v19, 2u);
  }

  v6 = [WeakRetained timelineController];
  v7 = [v6 reloadTimelineWithReason:@"bookdatastored"];

  v8 = objc_loadWeakRetained((a1 + 32));
  LODWORD(v6) = [v8 shouldDonateRelevance];

  if (v6)
  {
    v9 = sub_10000DE28();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BDSWidgetCenterManager - donating relevance", v19, 2u);
    }

    v10 = objc_alloc_init(INRelevantShortcut);
    [v10 setWidgetKind:@"BooksWidget"];
    v11 = [INDateRelevanceProvider alloc];
    v12 = +[NSDate now];
    v13 = [v11 initWithStartDate:v12 endDate:0];
    v21 = v13;
    v14 = [NSArray arrayWithObjects:&v21 count:1];
    [v10 setRelevanceProviders:v14];

    v15 = +[INRelevantShortcutStore defaultStore];
    v20 = v10;
    v16 = [NSArray arrayWithObjects:&v20 count:1];
    [v15 setRelevantShortcuts:v16 completionHandler:&stru_100240FA0];
  }

  v17 = objc_retainBlock(v3);
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17);
  }
}

void sub_1000467A4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_10000DE28();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0A60(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BDSWidgetCenterManager - relevance donation succeeded", v5, 2u);
  }
}

void sub_100048584(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100002660();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0CEC();
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    v6 = sub_100002660();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) entityName];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#dissociateCloudData Successfully transitioned to a new cloud container for entity: %@", &v8, 0xCu);
    }
  }

LABEL_5:
}

void sub_100048888(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if ([v5 count])
  {
    v6 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004897C;
    v9[3] = &unk_100240FF0;
    v12 = a3;
    v10 = v6;
    v11 = *(a1 + 40);
    [v10 syncCloudData:v5 completion:v9];
  }

  else
  {
    v7 = objc_retainBlock(*(a1 + 40));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
    }
  }
}

void sub_10004897C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) signalSyncToCK];
  }

  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_100048B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100048BAC(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_100048C20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [NSFetchRequest alloc];
    v5 = [WeakRetained entityName];
    v6 = [v4 initWithEntityName:v5];

    if (*(a1 + 48) >= 0x40uLL)
    {
      v7 = 64;
    }

    else
    {
      v7 = *(a1 + 48);
    }

    [v6 setFetchLimit:v7];
    v8 = [NSPredicate predicateWithFormat:@"editGeneration > syncGeneration"];
    [v6 setPredicate:v8];

    v43 = 0;
    v9 = [v3 executeFetchRequest:v6 error:&v43];
    v10 = v43;
    [WeakRetained _logError:v10 at:@"_dirtyMutableCloudDataWithFetchLimit - fetch"];
    if ([v9 count])
    {
      v33 = v7;
      v34 = a1;
      v35 = v10;
      v37 = v6;
      v32 = [v9 count];
      v11 = sub_100002660();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [WeakRetained entityName];
        v13 = [v9 count];
        *buf = 138543618;
        v46 = v12;
        v47 = 2048;
        v48 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ startSyncToCKWithCompletion found %lu dirty records", buf, 0x16u);
      }

      v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
      v15 = [WeakRetained privacyDelegate];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v36 = v9;
      v16 = v9;
      v17 = [v16 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v40;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v40 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v39 + 1) + 8 * i);
            [v21 setPrivacyDelegate:v15];
            v22 = [v21 mutableCopy];
            [v3 refreshObject:v21 mergeChanges:1];
            if (v22)
            {
              v23 = [WeakRetained privacyDelegate];
              [v22 setPrivacyDelegate:v23];

              [v14 addObject:v22];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v18);
      }

      v24 = objc_retainBlock(*(v34 + 32));
      v25 = v24;
      if (v24)
      {
        (*(v24 + 2))(v24, v14, v32 == v33);
      }

      v10 = v35;
      if ([v3 hasChanges])
      {
        v38 = v35;
        [v3 save:&v38];
        v26 = v38;

        [WeakRetained _logError:v26 at:@"_dirtyMutableCloudDataWithFetchLimit - fetch"];
        v10 = v26;
      }

      v9 = v36;
      v6 = v37;
    }

    else
    {
      v29 = sub_100002660();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [WeakRetained entityName];
        *buf = 138412290;
        v46 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %@ startSyncToCKWithCompletion no records need updating", buf, 0xCu);
      }

      v31 = objc_retainBlock(*(a1 + 32));
      v14 = v31;
      if (v31)
      {
        (*(v31 + 2))(v31, 0, 0);
      }
    }
  }

  else
  {
    v27 = objc_retainBlock(*(a1 + 32));
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, 0, 0);
    }
  }
}

void sub_10004912C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_100049684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000496A8(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0);
  }
}

void sub_100049718(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = sub_10000DB80();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [WeakRetained entityName];
        v14 = 138412290;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager requesting currentCloudSyncVersions for %@\\"", &v14, 0xCu);
      }
    }

    v8 = [WeakRetained mq_cloudSyncVersions];
    v9 = [v8 mutableCopy];

    v10 = objc_retainBlock(*(a1 + 32));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v9);
    }
  }

  else
  {
    v12 = objc_retainBlock(*(a1 + 32));
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

void sub_100049AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100049AC8(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_100049B40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = sub_10000DB80();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [WeakRetained entityName];
        v8 = [*(a1 + 32) debugDescription];
        *buf = 138412546;
        v39 = v7;
        v40 = 2112;
        v41 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %@ setCloudData %@\\"", buf, 0x16u);
      }
    }

    v9 = [NSFetchRequest alloc];
    v10 = [WeakRetained entityName];
    v11 = [v9 initWithEntityName:v10];

    [v11 setReturnsObjectsAsFaults:0];
    [v11 setFetchLimit:1];
    [v11 setPredicate:*(a1 + 40)];
    v36 = 0;
    v12 = [v3 executeFetchRequest:v11 error:&v36];
    v13 = v36;
    [WeakRetained _logError:v13 at:@"setCloudData - fetch"];
    v34 = v12;
    v14 = [v12 firstObject];
    v15 = v14;
    if (!v14)
    {
      v16 = [WeakRetained entityName];
      v15 = [NSEntityDescription insertNewObjectForEntityForName:v16 inManagedObjectContext:v3];
    }

    v17 = [WeakRetained privacyDelegate];
    [v15 setPrivacyDelegate:v17];

    v18 = [WeakRetained privacyDelegate];
    [*(a1 + 32) setPrivacyDelegate:v18];

    if (([v15 isEqualExceptForDate:*(a1 + 32) ignoringEmptySalt:*(a1 + 80)] & 1) != 0 || (objc_msgSend(v15, "configureFromCloudData:withMergers:", *(a1 + 32), *(a1 + 48)), !objc_msgSend(v15, "hasChanges")))
    {
      v22 = 0;
    }

    else
    {
      v19 = sub_100002660();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [WeakRetained entityName];
        v21 = [v15 identifier];
        *buf = 138544386;
        v39 = v20;
        v40 = 2160;
        v41 = 1752392040;
        v42 = 2112;
        v43 = v21;
        v44 = 1024;
        v45 = v14 == 0;
        v46 = 2112;
        v47 = v15;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ setCloudData for id:%{mask.hash}@ isNew:%d data:%@", buf, 0x30u);
      }

      [v15 incrementEditGeneration];
      v22 = 1;
    }

    if ([v3 hasChanges])
    {
      [WeakRetained mq_incrementCloudVersion];
      v35 = v13;
      v23 = [v3 save:&v35];
      v24 = v35;

      if (!v14)
      {
        if (v23)
        {
          v25 = [*(a1 + 56) monitor];

          if (v25)
          {
            if (v15)
            {
              v26 = [*(a1 + 56) monitor];
              v27 = *(a1 + 56);
              v37 = v15;
              v28 = [NSArray arrayWithObjects:&v37 count:1];
              [v26 dataManager:v27 didInsertNewRecords:v28];
            }
          }
        }
      }

      [WeakRetained _logError:v24 at:@"setCloudData - save"];
      [WeakRetained mq_signalTransactions];
    }

    else
    {
      v24 = v13;
    }

    v31 = [WeakRetained mq_sanitizeError:v24];

    v32 = objc_retainBlock(*(a1 + 64));
    v33 = v32;
    if (v32)
    {
      (*(v32 + 2))(v32, v15 != 0, v22, v31);
    }
  }

  else
  {
    v29 = objc_retainBlock(*(a1 + 64));
    v30 = v29;
    if (v29)
    {
      (*(v29 + 2))(v29, 0, 0, 0);
    }
  }
}

void sub_10004A234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004A258(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_10004A2D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v36 = [WeakRetained moc];
  if (v36)
  {
    v2 = +[BULogUtilities shared];
    v3 = [v2 verboseLoggingEnabled];

    if (v3)
    {
      v4 = sub_10000DB80();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = [WeakRetained entityName];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %@ setCloudDatas\\"", &buf, 0xCu);
      }
    }

    v6 = [NSFetchRequest alloc];
    v7 = [WeakRetained entityName];
    v35 = [v6 initWithEntityName:v7];

    [v35 setReturnsObjectsAsFaults:0];
    [v35 setPredicate:*(a1 + 32)];
    v62 = 0;
    v8 = [v36 executeFetchRequest:v35 error:&v62];
    v9 = v62;
    [WeakRetained _logError:v9 at:@"setCloudData(propertyIDKey) - fetch"];
    v10 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v58 objects:v74 count:16];
    if (v12)
    {
      v13 = *v59;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v59 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v58 + 1) + 8 * i);
          v16 = [v15 valueForKey:*(a1 + 40)];
          [v10 setObject:v15 forKey:v16];
        }

        v12 = [v11 countByEnumeratingWithState:&v58 objects:v74 count:16];
      }

      while (v12);
    }

    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2020000000;
    v49[3] = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v70 = 0x3032000000;
    v71 = sub_10004A934;
    v72 = sub_10004A944;
    v73 = objc_alloc_init(NSMutableArray);
    v17 = *(a1 + 48);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10004A94C;
    v39[3] = &unk_1002410B8;
    v18 = v10;
    v40 = v18;
    v41 = WeakRetained;
    v19 = v36;
    v42 = v19;
    p_buf = &buf;
    v45 = &v50;
    v48 = *(a1 + 88);
    v43 = *(a1 + 56);
    v46 = &v54;
    v47 = v49;
    [v17 enumerateKeysAndObjectsUsingBlock:v39];
    if (([v19 hasChanges] & 1) != 0 || *(v55 + 24) == 1)
    {
      [WeakRetained mq_incrementCloudVersion];
      v38 = v9;
      v20 = [v19 save:&v38];
      v21 = v38;

      [WeakRetained _logError:v21 at:@"setCloudData(propertyIDKey) - save remaining"];
      [WeakRetained mq_signalTransactions];
      v22 = sub_100002660();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v32 = [WeakRetained entityName];
        v33 = [v19 persistentStoreCoordinator];
        v34 = [v33 persistentStores];
        *v63 = 138412802;
        v64 = v32;
        v65 = 2112;
        v66 = v34;
        v67 = 2112;
        v68 = v21;
        _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "BCCloudDataManager: %@ Save to storeID:%@ error:%@", v63, 0x20u);
      }

      if (v20)
      {
        v23 = [*(a1 + 64) monitor];
        if (v23)
        {
          v24 = [*(*(&buf + 1) + 40) count] == 0;

          if (!v24)
          {
            v25 = [*(a1 + 64) monitor];
            [v25 dataManager:*(a1 + 64) didInsertNewRecords:*(*(&buf + 1) + 40)];
          }
        }
      }
    }

    else
    {
      v21 = v9;
    }

    v29 = [WeakRetained mq_sanitizeError:v21];

    v30 = objc_retainBlock(*(a1 + 72));
    v31 = v30;
    if (v30)
    {
      (*(v30 + 2))(v30, *(v51 + 24), *(v55 + 24), v29);
    }

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(v49, 8);
    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v54, 8);

    v27 = v35;
  }

  else
  {
    v26 = sub_100002660();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1001C0E10(WeakRetained);
    }

    v27 = objc_retainBlock(*(a1 + 72));
    v28 = v27;
    if (v27)
    {
      (*(v27 + 2))(v27, 0, 0, 0);
      v27 = v28;
    }
  }
}

void sub_10004A8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004A934(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004A94C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:a2];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 40) entityName];
    v7 = [NSEntityDescription insertNewObjectForEntityForName:v9 inManagedObjectContext:*(a1 + 48)];

    [*(*(*(a1 + 64) + 8) + 40) addObject:v7];
    v8 = 1;
  }

  *(*(*(a1 + 72) + 8) + 24) |= v7 != 0;
  v10 = [*(a1 + 40) privacyDelegate];
  [v7 setPrivacyDelegate:v10];

  v11 = [*(a1 + 40) privacyDelegate];
  [v5 setPrivacyDelegate:v11];

  v12 = [v7 isEqualExceptForDate:v5 ignoringEmptySalt:*(a1 + 96)];
  v13 = sub_100002660();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1001C0E9C(v7);
  }

  if ((v12 & 1) == 0)
  {
    [v7 configureFromCloudData:v5 withMergers:*(a1 + 56)];
    v14 = [v7 hasChanges];
    v15 = sub_100002660();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C0F3C(v7);
    }

    if (v14)
    {
      v16 = sub_100002660();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [*(a1 + 40) entityName];
        v18 = [v7 identifier];
        *buf = 138544386;
        v28 = v17;
        v29 = 2160;
        v30 = 1752392040;
        v31 = 2112;
        v32 = v18;
        v33 = 1024;
        v34 = v8;
        v35 = 2112;
        v36 = v7;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ setCloudData for id:%{mask.hash}@ isNew:%d data:%@", buf, 0x30u);
      }

      [v7 incrementEditGeneration];
      *(*(*(a1 + 80) + 8) + 24) = 1;
      ++*(*(*(a1 + 88) + 8) + 24);
    }
  }

  v19 = *(*(a1 + 88) + 8);
  if (*(v19 + 24) >= 0x21uLL)
  {
    *(v19 + 24) = 0;
    if ([*(a1 + 48) hasChanges])
    {
      v20 = *(a1 + 48);
      v26 = 0;
      [v20 save:&v26];
      v21 = v26;
      [*(a1 + 40) _logError:v21 at:@"setCloudData(propertyIDKey) - save batch"];
      v22 = sub_100002660();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = [*(a1 + 40) entityName];
        v24 = [*(a1 + 48) persistentStoreCoordinator];
        v25 = [v24 persistentStores];
        *buf = 138412802;
        v28 = v23;
        v29 = 2112;
        v30 = v25;
        v31 = 2112;
        v32 = v21;
        _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "BCCloudDataManager: %@ Batch save to storeID:%@ with error:%@", buf, 0x20u);
      }
    }
  }
}

void sub_10004AE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004AEA8(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004AF1C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = sub_10000DB80();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [WeakRetained entityName];
        v8 = [a1[4] debugDescription];
        *buf = 138543618;
        v37 = v7;
        v38 = 2114;
        v39 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %{public}@ removeCloudDataForPredicate:%{public}@\\"", buf, 0x16u);
      }
    }

    v9 = [NSFetchRequest alloc];
    v10 = [WeakRetained entityName];
    v11 = [v9 initWithEntityName:v10];

    [v11 setFetchBatchSize:64];
    [v11 setPredicate:a1[4]];
    v34 = 0;
    v12 = [v3 executeFetchRequest:v11 error:&v34];
    v13 = v34;
    [WeakRetained _logError:v13 at:@"removeCloudData - fetch"];
    v14 = [v12 count];
    v15 = v14;
    if (v14)
    {
      v28 = v14;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v16 = v12;
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v31;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [v3 deleteObject:{*(*(&v30 + 1) + 8 * i), v28}];
          }

          v18 = [v16 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v18);
      }

      if ([v3 hasChanges])
      {
        [WeakRetained mq_incrementCloudVersion];
        v29 = v13;
        [v3 save:&v29];
        v21 = v29;

        [WeakRetained _logError:v21 at:@"removeCloudData - save"];
        [WeakRetained mq_signalTransactions];
        v13 = v21;
      }

      v15 = v28;
    }

    else
    {
      v24 = sub_100002660();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1001C0FDC(WeakRetained, a1 + 4);
      }
    }

    v25 = [WeakRetained mq_sanitizeError:{v13, v28}];

    v26 = objc_retainBlock(a1[5]);
    v27 = v26;
    if (v26)
    {
      (*(v26 + 2))(v26, v15 != 0, v25);
    }
  }

  else
  {
    v22 = objc_retainBlock(a1[5]);
    v23 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22, 0, 0);
    }
  }
}

void sub_10004B46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004B490(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004B504(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [NSFetchRequest alloc];
    v5 = [WeakRetained entityName];
    v6 = [v4 initWithEntityName:v5];

    [v6 setFetchBatchSize:64];
    [v6 setPredicate:*(a1 + 32)];
    v29 = 0;
    v7 = [v3 executeFetchRequest:v6 error:&v29];
    v8 = v29;
    [WeakRetained _logError:v8 at:@"updateSyncGeneration - fetch"];
    v9 = [v7 count];
    if (v9)
    {
      v10 = [v7 count];
      if (v10 != [*(a1 + 40) count])
      {
        v11 = sub_100002660();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1001C109C();
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v31 = 0;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10004B894;
      v23[3] = &unk_100241108;
      v24 = *(a1 + 48);
      v25 = *(a1 + 40);
      v26 = WeakRetained;
      v28 = buf;
      v12 = v3;
      v27 = v12;
      [v7 enumerateObjectsUsingBlock:v23];
      v22 = v8;
      [v12 save:&v22];
      v13 = v22;

      [WeakRetained _logError:v13 at:@"updateSyncGeneration - save remaining"];
      [WeakRetained mq_signalTransactions];

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v16 = sub_100002660();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [WeakRetained entityName];
        v18 = [*(a1 + 40) debugDescription];
        *buf = 138543618;
        *&buf[4] = v17;
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Did not find %{public}@ to update sync gen from cloudData:%@", buf, 0x16u);
      }

      v13 = v8;
    }

    v19 = [WeakRetained mq_sanitizeError:v13];

    v20 = objc_retainBlock(*(a1 + 56));
    v21 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20, v9 != 0, v19);
    }
  }

  else
  {
    v14 = objc_retainBlock(*(a1 + 56));
    v15 = v14;
    if (v14)
    {
      (*(v14 + 2))(v14, 0, 0);
    }
  }
}

void sub_10004B874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004B894(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKey:*(a1 + 32)];
  v5 = [*(a1 + 40) objectForKey:v4];
  v6 = [*(a1 + 48) privacyDelegate];
  [v3 setPrivacyDelegate:v6];

  [v3 setSyncGeneration:{objc_msgSend(v5, "editGeneration")}];
  v7 = [v5 systemFields];
  [v3 setSystemFields:v7];

  v8 = [v5 systemFields];
  v9 = [v8 modificationDate];
  [v3 setModificationDate:v9];

  v10 = sub_100002660();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 48) entityName];
    v12 = [v3 debugDescription];
    *buf = 138543618;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ updateSyncGeneration %@", buf, 0x16u);
  }

  v13 = *(*(a1 + 64) + 8);
  v14 = *(v13 + 24) + 1;
  *(v13 + 24) = v14;
  if (v14 >= 0x21)
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    if ([*(a1 + 56) hasChanges])
    {
      v15 = *(a1 + 56);
      v17 = 0;
      [v15 save:&v17];
      v16 = v17;
      [*(a1 + 48) _logError:v16 at:@"updateSyncGeneration - save batch"];
    }
  }
}

void sub_10004BC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004BC54(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004BCC8(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = sub_10000DB80();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [WeakRetained entityName];
        v8 = [*(v1 + 32) debugDescription];
        *buf = 138543618;
        v47 = v7;
        v48 = 2112;
        v49 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager %{public}@ deleteCloudDataForPredicate %@\\"", buf, 0x16u);
      }
    }

    v9 = [NSFetchRequest alloc];
    v10 = [WeakRetained entityName];
    v11 = [v9 initWithEntityName:v10];

    [v11 setFetchBatchSize:64];
    [v11 setPredicate:*(v1 + 32)];
    v44 = 0;
    v12 = [v3 executeFetchRequest:v11 error:&v44];
    v13 = v44;
    [WeakRetained _logError:v13 at:@"deleteCloudData - fetch"];
    v14 = [v12 count];
    v15 = v14;
    if (v14)
    {
      v33 = v13;
      v34 = v14;
      v36 = v11;
      v37 = v1;
      v38 = v3;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v35 = v12;
      v16 = v12;
      v17 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v41;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v41 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v40 + 1) + 8 * i);
            v22 = [WeakRetained privacyDelegate];
            [v21 setPrivacyDelegate:v22];

            [v21 setDifferentNumber:&__kCFBooleanTrue forKey:@"deletedFlag"];
            if ([v21 hasChanges])
            {
              v23 = sub_100002660();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = [WeakRetained entityName];
                *buf = 138543618;
                v47 = v24;
                v48 = 2112;
                v49 = v21;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange %{public}@ deleteCloudDataForPredicate data:%@", buf, 0x16u);
              }

              [v21 incrementEditGeneration];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v18);
      }

      v3 = v38;
      if ([v38 hasChanges])
      {
        [WeakRetained mq_incrementCloudVersion];
        v39 = v33;
        [v38 save:&v39];
        v13 = v39;

        [WeakRetained _logError:v13 at:@"deleteCloudData - save"];
        [WeakRetained mq_signalTransactions];
        v11 = v36;
        v1 = v37;
        v15 = v34;
        v12 = v35;
      }

      else
      {
        v11 = v36;
        v1 = v37;
        v15 = v34;
        v12 = v35;
        v13 = v33;
      }
    }

    else
    {
      if (!v13)
      {
        v13 = [NSError errorWithDomain:NSCocoaErrorDomain code:4 userInfo:0];
      }

      v27 = sub_100002660();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [WeakRetained entityName];
        v29 = [*(v1 + 32) debugDescription];
        *buf = 138543618;
        v47 = v28;
        v48 = 2114;
        v49 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Did not find %{public}@ to delete for predicate %{public}@", buf, 0x16u);
      }
    }

    v30 = [WeakRetained mq_sanitizeError:{v13, v33}];

    v31 = objc_retainBlock(*(v1 + 40));
    v32 = v31;
    if (v31)
    {
      (*(v31 + 2))(v31, v15 != 0, v30);
    }
  }

  else
  {
    v25 = objc_retainBlock(*(v1 + 40));
    v26 = v25;
    if (v25)
    {
      (*(v25 + 2))(v25, 0, 0);
    }
  }
}

void sub_10004C340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004C364(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004C3D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = sub_10000DB80();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) debugDescription];
        *buf = 138543362;
        v15 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager countWithPredicate:%{public}@\\"", buf, 0xCu);
      }
    }

    v8 = [NSFetchRequest alloc];
    v9 = [WeakRetained entityName];
    v10 = [v8 initWithEntityName:v9];

    [v10 setPredicate:*(a1 + 32)];
    v13 = 0;
    [v3 countForFetchRequest:v10 error:&v13];
    v11 = v13;
    [WeakRetained _logError:v11 at:@"count"];
    v12 = [WeakRetained mq_sanitizeError:v11];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_10004C6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004C8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004C918(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004C98C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = sub_10000DB80();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) debugDescription];
        *buf = 138543362;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager cloudDataWithPredicate:%{public}@\\"", buf, 0xCu);
      }
    }

    v8 = [NSFetchRequest alloc];
    v9 = [WeakRetained entityName];
    v10 = [v8 initWithEntityName:v9];

    [v10 setReturnsObjectsAsFaults:0];
    [v10 setFetchLimit:1];
    [v10 setPredicate:*(a1 + 32)];
    [v10 setSortDescriptors:*(a1 + 40)];
    v19 = 0;
    v11 = [v3 executeFetchRequest:v10 error:&v19];
    v12 = v19;
    [WeakRetained _logError:v12 at:@"mutableCloudData - fetch"];
    v13 = [WeakRetained privacyDelegate];
    v14 = [v11 firstObject];
    [v14 setPrivacyDelegate:v13];
    v15 = [v14 mutableCopy];
    [v15 setPrivacyDelegate:v13];
    v16 = [WeakRetained mq_sanitizeError:v12];

    (*(*(a1 + 48) + 16))();
    if ([v3 hasChanges])
    {
      v18 = v16;
      [v3 save:&v18];
      v17 = v18;

      [WeakRetained _logError:v17 at:@"mutableCloudData - save"];
      v16 = v17;
    }

    [v3 refreshObject:v14 mergeChanges:0];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10004CE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004CE68(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_10004CEE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = sub_10000DB80();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [WeakRetained entityName];
        v8 = [*(a1 + 32) debugDescription];
        v9 = v8;
        v10 = *(a1 + 40);
        v11 = @"YES";
        v12 = *(a1 + 72);
        if (!*(a1 + 48))
        {
          v11 = @"NO";
        }

        *buf = 138544386;
        v47 = v7;
        v48 = 2114;
        v49 = v8;
        v50 = 2114;
        v51 = v10;
        v52 = 2114;
        v53 = v11;
        v54 = 2048;
        v55 = v12;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager Entity: %{public}@ cloudDatasWithPredicate:%{public}@ sortDescriptors: %{public}@, has a filter: %{public}@, maximumResultCount: %lu\\"", buf, 0x34u);
      }
    }

    v13 = [NSFetchRequest alloc];
    v14 = [WeakRetained entityName];
    v15 = [v13 initWithEntityName:v14];

    [v15 setFetchBatchSize:64];
    [v15 setPredicate:*(a1 + 32)];
    if (*(a1 + 40))
    {
      [v15 setSortDescriptors:?];
    }

    v44 = 0;
    v36 = v15;
    v37 = v3;
    v16 = [v3 executeFetchRequest:v15 error:&v44];
    v35 = v44;
    [WeakRetained _logError:? at:?];
    v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v16 count]);
    v38 = WeakRetained;
    v18 = [WeakRetained privacyDelegate];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v41;
LABEL_12:
      v23 = 0;
      while (1)
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v40 + 1) + 8 * v23);
        v25 = *(a1 + 48);
        if (!v25 || (*(v25 + 16))(v25, *(*(&v40 + 1) + 8 * v23)))
        {
          [v24 setPrivacyDelegate:v18];
          v26 = [v24 mutableCopy];
          [v26 setPrivacyDelegate:v18];
          if (v26)
          {
            [v17 addObject:v26];
          }

          v27 = [v17 count];
          v28 = *(a1 + 72);

          if (v27 >= v28)
          {
            break;
          }
        }

        if (v21 == ++v23)
        {
          v21 = [v19 countByEnumeratingWithState:&v40 objects:v45 count:16];
          if (v21)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    v3 = v37;
    if ([v37 hasChanges])
    {
      v39 = v35;
      [v37 save:&v39];
      v29 = v39;

      WeakRetained = v38;
      [v38 _logError:v29 at:@"cloudDatas(maximumResultCount) - save"];
    }

    else
    {
      WeakRetained = v38;
      v29 = v35;
    }

    v31 = [WeakRetained mq_sanitizeError:v29];

    v32 = *(a1 + 56);
    v33 = [WeakRetained mq_cloudSyncVersions];
    v34 = [v33 mutableCopy];
    (*(v32 + 16))(v32, v17, v34, v31);
  }

  else
  {
    v30 = sub_100002660();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1001C10D0();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_10004D4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004D4E8(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_10004D560(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  v4 = +[BULogUtilities shared];
  v5 = [v4 verboseLoggingEnabled];

  if (v5)
  {
    v6 = sub_10000DB80();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [WeakRetained entityName];
      v8 = [*(a1 + 32) debugDescription];
      *buf = 138543618;
      v38 = v7;
      v39 = 2114;
      v40 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager Entity: %{public}@ cloudDatasWithPredicate:%{public}@\\"", buf, 0x16u);
    }
  }

  v9 = [NSFetchRequest alloc];
  v10 = [WeakRetained entityName];
  v11 = [v9 initWithEntityName:v10];

  [v11 setFetchBatchSize:64];
  v28 = a1;
  [v11 setPredicate:*(a1 + 32)];
  v35 = 0;
  v29 = v3;
  v12 = [v3 executeFetchRequest:v11 error:&v35];
  v13 = v35;
  [WeakRetained _logError:v13 at:@"cloudDatas - fetch"];
  v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
  v15 = [WeakRetained privacyDelegate];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        [v21 setPrivacyDelegate:v15];
        v22 = [v21 mutableCopy];
        [v22 setPrivacyDelegate:v15];
        if (v22)
        {
          [v14 addObject:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v18);
  }

  if ([v29 hasChanges])
  {
    v30 = v13;
    [v29 save:&v30];
    v23 = v30;

    [WeakRetained _logError:v23 at:@"cloudDatas - save"];
    v13 = v23;
  }

  v24 = [WeakRetained mq_sanitizeError:v13];

  v25 = *(v28 + 40);
  v26 = [WeakRetained mq_cloudSyncVersions];
  v27 = [v26 mutableCopy];
  (*(v25 + 16))(v25, v14, v27, v24);
}

void sub_10004DA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004DAB4(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004DB28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = +[BULogUtilities shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = sub_10000DB80();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [WeakRetained entityName];
        v8 = [*(a1 + 32) debugDescription];
        *buf = 138543618;
        v31 = v7;
        v32 = 2114;
        v33 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager Entity: %{public}@ cloudDatasWithPredicate:%{public}@\\"", buf, 0x16u);
      }
    }

    v9 = [NSFetchRequest alloc];
    v10 = [WeakRetained entityName];
    v11 = [v9 initWithEntityName:v10];

    [v11 setFetchBatchSize:64];
    [v11 setPredicate:*(a1 + 32)];
    v28 = 0;
    v23 = v3;
    v12 = [v3 executeFetchRequest:v11 error:&v28];
    v13 = v28;
    [WeakRetained _logError:v13 at:@"transformedCloudDatas"];
    v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v24 + 1) + 8 * i);
          v21 = (*(*(a1 + 40) + 16))();
          if (v21)
          {
            [v14 addObject:v21];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v17);
    }

    v22 = [WeakRetained mq_sanitizeError:v13];

    (*(*(a1 + 48) + 16))();
    v3 = v23;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void sub_10004E0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004E0DC(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004E150(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = [WeakRetained moc];

  if (v5)
  {
    v6 = [WeakRetained moc];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10004E2F0;
    v14[3] = &unk_1002411F8;
    objc_copyWeak(&v19, (a1 + 72));
    v15 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v13 = *(a1 + 48);
    v9 = *(&v13 + 1);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v16 = v10;
    v17 = v13;
    v18 = *(a1 + 64);
    [v6 performBlock:v14];

    objc_destroyWeak(&v19);
  }

  else
  {
    v11 = objc_retainBlock(*(a1 + 64));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0, 0);
    }
  }
}

void sub_10004E2F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = +[BULogUtilities shared];
    v6 = [v5 verboseLoggingEnabled];

    if (!v4)
    {
      if (v6)
      {
        v19 = sub_10000DB80();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [*(a1 + 40) debugDescription];
          *buf = 138543362;
          v49 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager cloudDataWithPredicate:%{public}@\\"", buf, 0xCu);
        }
      }

      v21 = [NSFetchRequest alloc];
      v22 = [WeakRetained entityName];
      v11 = [v21 initWithEntityName:v22];

      [v11 setReturnsObjectsAsFaults:0];
      [v11 setFetchLimit:1];
      [v11 setPredicate:*(a1 + 40)];
      v45 = 0;
      v23 = [v3 executeFetchRequest:v11 error:&v45];
      v24 = v45;
      [WeakRetained _logError:v24 at:@"resolvedCloudData - fetch (new)"];
      v25 = [v23 firstObject];
      v26 = [WeakRetained privacyDelegate];
      [v25 setPrivacyDelegate:v26];

      v27 = [WeakRetained mq_sanitizeError:v24];

      v28 = [v25 mutableCopy];
      v29 = objc_retainBlock(*(a1 + 72));
      v30 = v29;
      if (v29)
      {
        (*(v29 + 2))(v29, v28, v27);
      }

      goto LABEL_36;
    }

    if (v6)
    {
      v7 = sub_10000DB80();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 40) debugDescription];
        *buf = 138543362;
        v49 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager resolvedCloudDataForCloudData:%{public}@\\"", buf, 0xCu);
      }
    }

    v9 = [NSFetchRequest alloc];
    v10 = [WeakRetained entityName];
    v11 = [v9 initWithEntityName:v10];

    [v11 setReturnsObjectsAsFaults:0];
    [v11 setFetchLimit:1];
    [v11 setPredicate:*(a1 + 40)];
    v47 = 0;
    v12 = [v3 executeFetchRequest:v11 error:&v47];
    v13 = v47;
    [WeakRetained _logError:v13 at:@"resolvedCloudData - fetch (existing)"];
    v14 = [WeakRetained privacyDelegate];
    v15 = [v12 firstObject];
    if (v15)
    {
      v16 = v15;
      [v15 setPrivacyDelegate:v14];
      [v16 resolveConflictsFromRecord:*(a1 + 32) withResolvers:*(a1 + 48)];
      if (!v13)
      {
LABEL_30:
        if ([v16 hasChanges])
        {
          [WeakRetained mq_incrementCloudVersion];
          v46 = 0;
          [v3 save:&v46];
          v13 = v46;
          [WeakRetained _logError:v13 at:@"resolvedCloudData - save"];
          [WeakRetained mq_signalTransactions];
        }

        else
        {
          v13 = 0;
        }
      }

LABEL_33:
      v41 = [WeakRetained mq_sanitizeError:v13];

      v42 = [v16 mutableCopy];
      v43 = objc_retainBlock(*(a1 + 72));
      v44 = v43;
      if (v43)
      {
        (*(v43 + 2))(v43, v42, v41);
      }

LABEL_36:
      goto LABEL_37;
    }

    v31 = +[BULogUtilities shared];
    v32 = [v31 verboseLoggingEnabled];

    if (v32)
    {
      v33 = sub_10000DB80();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [*(a1 + 32) recordID];
        v35 = [v34 recordName];
        v36 = *(a1 + 32);
        *buf = 138543618;
        v49 = v35;
        v50 = 2112;
        v51 = v36;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager resolvedCloudDataForCloudData:%{public}@ did not find existing record.  Creating new from %@\\"", buf, 0x16u);
      }
    }

    v37 = [*(a1 + 56) dataMapper];

    if (v37)
    {
      v38 = [*(a1 + 56) dataMapper];
      v39 = [v38 cloudDataFromRecord:*(a1 + 32)];

      if (v39)
      {
LABEL_26:
        v40 = [WeakRetained entityName];
        v16 = [NSEntityDescription insertNewObjectForEntityForName:v40 inManagedObjectContext:v3];

        [v16 setPrivacyDelegate:v14];
        [v39 setPrivacyDelegate:v14];
        [v16 configureFromCloudData:v39 withMergers:*(a1 + 64)];
        goto LABEL_29;
      }
    }

    else
    {
      v39 = [objc_alloc(objc_msgSend(WeakRetained "mutableClass"))];
      if (v39)
      {
        goto LABEL_26;
      }
    }

    v16 = 0;
LABEL_29:

    if (!v13)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  v17 = objc_retainBlock(*(a1 + 72));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, 0, 0);
  }

LABEL_37:
}

void sub_10004EACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004EAF0(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_10004EB68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v1 = [WeakRetained moc];
  if (!v1)
  {
    v55 = objc_retainBlock(*(a1 + 64));
    v56 = v55;
    if (v55)
    {
      (*(v55 + 2))(v55, 0, 0, 0);
    }

    goto LABEL_81;
  }

  v63 = [WeakRetained privacyDelegate];
  v64 = +[NSMutableArray array];
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10005213C;
    v96 = &unk_100241310;
    *v97 = objc_alloc_init(NSMutableArray);
    v4 = *v97;
    [v3 enumerateObjectsUsingBlock:buf];
    v5 = [v4 componentsJoinedByString:{@", "}];

    *buf = 138543362;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange resolveConflictsForRecords: %{public}@", buf, 0xCu);
  }

  v71 = [*(a1 + 32) count];
  v67 = objc_opt_new();
  v66 = objc_alloc_init(NSMutableDictionary);
  v76 = objc_opt_new();
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v90 objects:v100 count:16];
  if (v7)
  {
    v8 = *v91;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v91 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v90 + 1) + 8 * i);
        v11 = [v10 encryptedValuesByKey];
        v12 = [v11 objectForKeyedSubscript:@"localRecordIDEncrypted"];

        if (!v12)
        {
          v12 = [v10 valueForKey:@"localRecordID"];
          if (!v12)
          {
            v13 = sub_100002660();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v10;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "CKRecord unexpected with no local identifier: %{public}@", buf, 0xCu);
            }

            v12 = @"keyFromMyKitchenDrawer";
          }
        }

        [v76 addObject:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v90 objects:v100 count:16];
    }

    while (v7);
  }

  v65 = [objc_msgSend(WeakRetained "immutableClass")];
  v62 = [WeakRetained entityName];
  v87 = 0;
  v88[0] = &v87;
  v88[1] = 0x2020000000;
  v89 = 0;
  if (!v71)
  {
    v74 = 0;
    goto LABEL_73;
  }

  v61 = 0;
  v72 = 0;
  v74 = 0;
  v14 = 0;
  v69 = 0x7FFFFFFFFFFFFFFFLL;
  v70 = 0;
  do
  {
    context = objc_autoreleasePoolPush();
    v15 = [*(a1 + 32) objectAtIndexedSubscript:v14];
    if ((v14 & 0xF) != 0)
    {
      v16 = v74;
LABEL_20:
      v17 = [BCCloudData localIdentifierFromRecord:v15];
      v18 = [v16 objectForKeyedSubscript:v17];
      if (v18)
      {
        goto LABEL_21;
      }

      v32 = [v66 objectForKeyedSubscript:v17];
      v33 = v32 == 0;

      if (v33)
      {
        goto LABEL_36;
      }

      v18 = [v66 objectForKeyedSubscript:v17];
      v34 = sub_100002660();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v50 = [v15 recordID];
        v51 = [v50 recordName];
        *buf = 138544386;
        *&buf[4] = v51;
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2112;
        v96 = v17;
        *v97 = 2112;
        *&v97[2] = v18;
        v98 = 2112;
        v99 = v15;
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "BCCloudDataManager resolveConflictsForRecords:%{public}@ Already seen (localId: %{mask.hash}@) %@. Updating from %@", buf, 0x34u);
      }

      if (v18)
      {
LABEL_21:
        [v18 setPrivacyDelegate:v63];
        [v18 resolveConflictsFromRecord:v15 withResolvers:*(a1 + 40)];
      }

      else
      {
LABEL_36:
        v35 = [*(a1 + 48) dataMapper];
        v36 = v35 == 0;

        if (v36)
        {
          v38 = [objc_alloc(objc_msgSend(WeakRetained "mutableClass"))];
          if (!v38)
          {
LABEL_52:

            v18 = 0;
            goto LABEL_23;
          }
        }

        else
        {
          v37 = [*(a1 + 48) dataMapper];
          v38 = [v37 cloudDataFromRecord:v15];

          if (!v38)
          {
            goto LABEL_52;
          }
        }

        v39 = [*(a1 + 48) cloudKitController];
        v40 = [v39 configuration];
        v41 = [v40 shouldArchiveData:v38];

        if (!v41)
        {
          v45 = sub_100002660();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v52 = [v15 recordID];
            v53 = [v52 recordName];
            *buf = 138543618;
            *&buf[4] = v53;
            *&buf[12] = 2112;
            *&buf[14] = v15;
            _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "BCCloudDataManager resolveConflictsForRecords:%{public}@ configuration did not allow creation of new record from %@", buf, 0x16u);
          }

          goto LABEL_52;
        }

        v42 = sub_100002660();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [v15 recordID];
          v44 = [v43 recordName];
          *buf = 138544130;
          *&buf[4] = v44;
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 2112;
          v96 = v17;
          *v97 = 2112;
          *&v97[2] = v15;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager resolveConflictsForRecords:%{public}@ (localId: %{mask.hash}@) did not find existing record. Creating new from %@", buf, 0x2Au);
        }

        v18 = [NSEntityDescription insertNewObjectForEntityForName:v62 inManagedObjectContext:v1];
        [v66 setObject:v18 forKeyedSubscript:v17];
        [v18 setPrivacyDelegate:v63];
        [v38 setPrivacyDelegate:v63];
        [v18 configureFromCloudData:v38 withMergers:*(a1 + 56)];

        if (!v18)
        {
LABEL_23:
          if (v14 == v72 + v69 - 1)
          {
            if (!v70 && [v1 hasChanges])
            {
              v82 = 0;
              [v1 save:&v82];
              v19 = v82;
              if (v19)
              {
                v20 = v19;
                [WeakRetained _logError:v19 at:@"resolveConflicts - save batch"];
                [v64 removeObjectsInArray:v67];
                v61 = 1;
                v21 = 4;
                v70 = v20;
LABEL_63:

                v74 = v16;
                goto LABEL_64;
              }

              v61 = 1;
            }

            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v46 = v67;
            v47 = [v46 countByEnumeratingWithState:&v78 objects:v94 count:16];
            if (v47)
            {
              v48 = *v79;
              do
              {
                for (j = 0; j != v47; j = j + 1)
                {
                  if (*v79 != v48)
                  {
                    objc_enumerationMutation(v46);
                  }

                  [v1 refreshObject:*(*(&v78 + 1) + 8 * j) mergeChanges:0];
                }

                v47 = [v46 countByEnumeratingWithState:&v78 objects:v94 count:16];
              }

              while (v47);
            }

            [v46 removeAllObjects];
            [v66 removeAllObjects];
          }

          v21 = 0;
          goto LABEL_63;
        }
      }

      [v64 addObject:v18];
      [v67 addObject:v18];
      goto LABEL_23;
    }

    v22 = objc_autoreleasePoolPush();
    v23 = &v71[-v14];
    if (&v71[-v14] >= 0x10)
    {
      v23 = 16;
    }

    v72 = v23;
    v24 = [NSFetchRequest alloc];
    v25 = [WeakRetained entityName];
    v26 = [v24 initWithEntityName:v25];

    v27 = [v76 subarrayWithRange:{v14, v72}];
    v28 = [v27 mutableCopy];

    [v28 removeObject:@"keyFromMyKitchenDrawer"];
    v29 = [NSPredicate predicateWithFormat:@"%K IN %@", v65, v28];
    [v26 setPredicate:v29];

    v86 = v70;
    v30 = [v1 executeFetchRequest:v26 error:&v86];
    v31 = v86;

    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_10004F7F4;
    v83[3] = &unk_100241248;
    v84 = v65;
    v85 = &v87;
    v16 = [v30 bds_dictionaryUsingPropertyAsKey:v84 uniquingKeysWith:v83];

    if (v31)
    {
      [WeakRetained _logError:v31 at:@"resolveConflicts - fetch"];
      v21 = 4;
    }

    else
    {
      v21 = 0;
    }

    objc_autoreleasePoolPop(v22);
    if (!v31)
    {
      v69 = v14;
      v70 = 0;
      goto LABEL_20;
    }

    v74 = v16;
    v69 = v14;
    v70 = v31;
LABEL_64:

    objc_autoreleasePoolPop(context);
    if (v21)
    {
      break;
    }

    ++v14;
  }

  while (v14 != v71);
  v54 = v70;
  if ((v61 & (v70 == 0)) != 1)
  {
    goto LABEL_74;
  }

  [WeakRetained mq_incrementCloudVersion];
  if ([v1 hasChanges])
  {
    v77 = 0;
    [v1 save:&v77];
    v54 = v77;
    [WeakRetained _logError:v54 at:@"resolveConflicts - save remaining"];
    goto LABEL_74;
  }

LABEL_73:
  v54 = 0;
LABEL_74:
  if (*(v88[0] + 24))
  {
    v57 = sub_100002660();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      sub_1001C1104(v62, v88);
    }
  }

  [WeakRetained mq_signalTransactions];
  v58 = [WeakRetained mq_sanitizeError:v54];

  v59 = objc_retainBlock(*(a1 + 64));
  v60 = v59;
  if (v59)
  {
    (*(v59 + 2))(v59, 1, v64, v58);
  }

  _Block_object_dispose(&v87, 8);
LABEL_81:
}

id sub_10004F7F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 valueForKey:*(a1 + 32)];
  v8 = sub_100002660();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = 141558786;
    v11 = 1752392040;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "BCCloudDataManager resolveConflictsForRecords: Encountered duplicates for %{mask.hash}@, entry=%@, existing=%@", &v10, 0x2Au);
  }

  ++*(*(*(a1 + 40) + 8) + 24);

  return v5;
}

void sub_10004FAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004FAD4(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_10004FB48(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = sub_100002660();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1184(a1, v4, v5);
    }

    v6 = [NSFetchRequest alloc];
    v7 = [WeakRetained entityName];
    v8 = [v6 initWithEntityName:v7];

    v9 = [a1[4] valueForKey:@"recordName"];
    v10 = [NSPredicate predicateWithFormat:@"saltedHashedID IN %@", v9];
    [v8 setPredicate:v10];

    v30 = 0;
    v11 = [v3 executeFetchRequest:v8 error:&v30];
    v12 = v30;
    [WeakRetained _logError:v12 at:@"resolveConflicts - failedRecordIDs - fetch"];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v26 + 1) + 8 * i) setSystemFields:0];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v15);
    }

    if ([v3 hasChanges])
    {
      v25 = v12;
      [v3 save:&v25];
      v18 = v25;

      [WeakRetained _logError:v18 at:@"resolveConflicts - failedRecordIDs - save"];
      v19 = [WeakRetained syncManager];
      [v19 signalSyncToCK];

      v12 = v18;
    }

    v20 = [WeakRetained mq_sanitizeError:v12];

    v21 = objc_retainBlock(a1[5]);
    v22 = v21;
    if (v21)
    {
      (*(v21 + 2))(v21, 1, v20);
    }
  }

  else
  {
    v23 = objc_retainBlock(a1[5]);
    v24 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 0, 0);
    }
  }
}

void sub_100050328(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_100050354(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1001C11F8(a1);
  }

  v3 = objc_retainBlock(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0, 0, 0);
  }
}

void sub_1000503D8(uint64_t a1)
{
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [WeakRetained mq_cloudSyncVersions];
    v88 = 0;
    v5 = [*(a1 + 32) cloudVersion];
    v69 = v4;
    if (v5 <= [v4 cloudVersion])
    {
      v11 = [*(a1 + 32) historyToken];
      v88 = [*(a1 + 32) historyTokenOffset];
    }

    else
    {
      v6 = sub_100002660();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 40) entityName];
        v8 = v3;
        v9 = *(a1 + 32);
        v10 = [v4 mutableCopy];
        *buf = 138543874;
        v90 = v7;
        v91 = 2114;
        v92 = v9;
        v3 = v8;
        v93 = 2114;
        v94 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ getChangesSince -- About to reset historyToken, cloudSyncVersions:%{public}@, currentSyncVersions:%{public}@", buf, 0x20u);
      }

      v11 = 0;
    }

    v16 = (a1 + 40);
    v15 = *(a1 + 40);
    v87 = 0;
    v17 = [v15 _fetchHistoryAfterToken:v11 inMoc:v3 error:&v87];
    v18 = v87;
    if (!v18)
    {
      goto LABEL_21;
    }

    v19 = v18;
    if (![*v16 _isTokenInvalidError:v18])
    {
      goto LABEL_16;
    }

    v20 = sub_100002660();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v62 = [*(a1 + 40) entityName];
      v63 = WeakRetained;
      v64 = v3;
      v65 = *(a1 + 32);
      v71 = v17;
      v66 = [v69 mutableCopy];
      *buf = 138544130;
      v90 = v62;
      v91 = 2114;
      v92 = v19;
      v93 = 2114;
      v94 = v65;
      v3 = v64;
      WeakRetained = v63;
      v95 = 2114;
      v96 = v66;
      _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "BCCloudDataManager %{public}@ getChangesSince -- fetchHistoryAfterToken encountered error: %{public}@. About to reset historyToken, cloudSyncVersions:%{public}@, currentSyncVersions:%{public}@", buf, 0x2Au);

      v17 = v71;
    }

    v88 = 0;
    v21 = *v16;
    v86 = 0;
    v22 = [v21 _fetchHistoryAfterToken:0 inMoc:v3 error:&v86];
    v19 = v86;

    v11 = 0;
    v17 = v22;
    if (v19)
    {
LABEL_16:
      v70 = v17;
      v23 = sub_100002660();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1001C128C((a1 + 40));
      }

      [WeakRetained _logError:v19 at:@"getChangesSince - fetchHistory error"];
      v24 = [WeakRetained mq_sanitizeError:v19];

      v25 = objc_retainBlock(*(a1 + 48));
      v26 = v25;
      if (v25)
      {
        (*(v25 + 2))(v25, 0, 0, 0, v24, 0);
      }

      v27 = 0;
      v14 = v69;
    }

    else
    {
LABEL_21:
      v68 = v11;
      v76 = +[NSMutableSet set];
      v75 = +[NSMutableSet set];
      objc_opt_class();
      v70 = v17;
      if (objc_opt_isKindOfClass())
      {
        v28 = v17;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        obj = [v28 result];
        v29 = [obj countByEnumeratingWithState:&v82 objects:v99 count:16];
        if (v29)
        {
          v30 = v29;
          v67 = v28;
          v73 = v3;
          v31 = 0;
          v77 = 0;
          v32 = *v83;
          v33 = &_s9Coherence11CRMergeableP14serializedDatax10Foundation0D0V_tKcfCTj_ptr;
          while (2)
          {
            v34 = 0;
            v72 = v30;
            do
            {
              if (*v83 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v82 + 1) + 8 * v34);
              v36 = objc_autoreleasePoolPush();
              if ([WeakRetained signalDataChangedTransaction] && v31 > 0x1F)
              {
                objc_autoreleasePoolPop(v36);
                v48 = 1;
                goto LABEL_38;
              }

              v37 = v33[459];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v38 = v35;
                v39 = a1;
                v40 = *(a1 + 64);
                v41 = WeakRetained;
                v42 = [WeakRetained privacyDelegate];
                v80 = 0;
                v81 = 0;
                v43 = [v38 bds_atOffset:&v88 getAtMost:32 - v31 moc:v73 entityClass:v40 privacyDelegate:v42 updated:&v81 tombstones:&v80];
                v44 = v81;
                v45 = v80;

                if (v43)
                {
                  v46 = [v38 token];

                  v88 = 0;
                  v77 = v46;
                }

                [v75 addObjectsFromArray:v44];
                [v76 addObjectsFromArray:v45];
                v47 = [v75 count];
                v31 = &v47[[v76 count]];

                a1 = v39;
                WeakRetained = v41;
                v30 = v72;
                v33 = &_s9Coherence11CRMergeableP14serializedDatax10Foundation0D0V_tKcfCTj_ptr;
              }

              objc_autoreleasePoolPop(v36);
              v34 = v34 + 1;
            }

            while (v30 != v34);
            v30 = [obj countByEnumeratingWithState:&v82 objects:v99 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }

          v48 = 0;
LABEL_38:
          v3 = v73;
          v49 = v77;
          v28 = v67;
        }

        else
        {
          v48 = 0;
          v49 = 0;
        }
      }

      else
      {
        v48 = 0;
        v49 = 0;
      }

      v14 = v69;
      v50 = [v69 syncVersion];
      if (v50 != [v69 cloudVersion])
      {
        [v69 setSyncVersion:{objc_msgSend(v69, "cloudVersion")}];
      }

      if (v49)
      {
        [v69 setHistoryToken:v49];
      }

      [v69 setHistoryTokenOffset:v88];
      if ([v69 hasChanges])
      {
        v51 = [WeakRetained moc];
        v79 = 0;
        [v51 save:&v79];
        v52 = v79;

        [WeakRetained _logError:v52 at:@"getChangesSince - save"];
      }

      v53 = [v69 mutableCopy];
      v54 = sub_100002660();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [WeakRetained entityName];
        v56 = [v75 count];
        *buf = 138544386;
        v90 = v55;
        v91 = 2048;
        v92 = v56;
        v93 = 2112;
        v94 = v75;
        v95 = 2114;
        v96 = v53;
        v97 = 1024;
        v98 = v48;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ getChangesSince returning changedObjects:%lu (%@) currentSyncVersions: %{public}@, fetchAgain:%d", buf, 0x30u);
      }

      v78 = v49;

      v57 = sub_100002660();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = [WeakRetained entityName];
        v59 = [v76 count];
        *buf = 138544386;
        v90 = v58;
        v91 = 2048;
        v92 = v59;
        v93 = 2112;
        v94 = v76;
        v95 = 2114;
        v96 = v53;
        v97 = 1024;
        v98 = v48;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ getChangesSince returning deletedObjects:%lu (%@) currentSyncVersions: %{public}@, fetchAgain:%d", buf, 0x30u);
      }

      v24 = [WeakRetained mq_sanitizeError:0];
      v60 = objc_retainBlock(*(a1 + 48));
      v61 = v60;
      v26 = v76;
      if (v60)
      {
        (*(v60 + 2))(v60, v75, v76, v53, v24, v48);
      }

      v11 = v68;
      v27 = v78;
    }
  }

  else
  {
    v12 = sub_100002660();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1001C1318(a1);
    }

    v13 = objc_retainBlock(*(a1 + 48));
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0, 0, 0, 0, 0);
    }
  }

  kdebug_trace();
}

void sub_100050E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100050E34(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1001C0DDC();
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_100050EA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = sub_100002660();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [WeakRetained entityName];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %@ #dissociateCloudData", &buf, 0xCu);
    }

    v6 = [WeakRetained entityName];
    v7 = [NSFetchRequest fetchRequestWithEntityName:v6];

    [v7 setFetchBatchSize:20];
    v26 = 0;
    v8 = [v3 executeFetchRequest:v7 error:&v26];
    v9 = v26;
    [WeakRetained _logError:v9 at:@"dissociateCloudData - fetch"];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x2020000000;
    v29 = v9 == 0;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000511C0;
    v22 = &unk_1002412C0;
    v24 = WeakRetained;
    p_buf = &buf;
    v23 = v3;
    [v8 bds_traverseBatchesOfSize:20 block:&v19];
    if ([WeakRetained signalDataChangedTransaction])
    {
      v10 = [WeakRetained cloudKitController];
      v11 = [v10 transactionManager];
      v12 = [WeakRetained entityName];
      v13 = [WeakRetained notificationName];
      [v11 signalDataChangeTransactionForEntityName:v12 notificationName:v13];
    }

    v14 = [WeakRetained mq_sanitizeError:v9];

    v15 = objc_retainBlock(*(a1 + 32));
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, *(*(&buf + 1) + 24), v14);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v17 = objc_retainBlock(*(a1 + 32));
    v18 = v17;
    if (v17)
    {
      (*(v17 + 2))(v17, 0, 0);
    }
  }
}

void sub_10005119C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000511C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        [v8 setSyncGeneration:0];
        [v8 setValue:0 forKey:@"saltedHashedID"];
        [v8 setSystemFields:0];
        [v8 setCkSystemFields:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  if ([*(a1 + 32) hasChanges])
  {
    v9 = *(a1 + 32);
    v22 = 0;
    [v9 save:&v22];
    v10 = v22;
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 24);
    if (v10)
    {
      v12 = 0;
    }

    *(v11 + 24) = v12;
    [*(a1 + 40) _logError:v10 at:@"dissociateCloudData - save"];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(a1 + 32) refreshObject:*(*(&v18 + 1) + 8 * j) mergeChanges:{0, v18}];
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v15);
  }
}

void sub_1000515D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_100051600(uint64_t a1)
{
  v2 = sub_100002660();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "No managed object context! #hasSaltChangedWithCompletion", v5, 2u);
  }

  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v4 = [NSError errorWithDomain:@"BDSErrorDomain" code:1002 userInfo:0];
    v3[2](v3, 0, v4);
  }
}

void sub_1000516C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [NSFetchRequest alloc];
    v5 = [WeakRetained entityName];
    v6 = [v4 initWithEntityName:v5];

    [v6 setReturnsObjectsAsFaults:0];
    [v6 setFetchLimit:1];
    v7 = [NSPredicate predicateWithFormat:@"syncGeneration >= 1"];
    [v6 setPredicate:v7];

    v8 = +[BULogUtilities shared];
    v9 = [v8 verboseLoggingEnabled];

    if (v9)
    {
      v10 = sub_10000DB80();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = v6;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager hasSaltChangedWithCompletion:%{public}@\\"", buf, 0xCu);
      }
    }

    v23 = 0;
    v11 = [v3 executeFetchRequest:v6 error:&v23];
    v12 = v23;
    if ([v11 count])
    {
      v13 = [v11 firstObject];
      v14 = [WeakRetained privacyDelegate];
      [v13 setPrivacyDelegate:v14];

      v15 = [v13 hasValidSalt] ^ 1;
      v16 = +[BULogUtilities shared];
      v17 = [v16 verboseLoggingEnabled];

      if (v17)
      {
        v18 = sub_10000DB80();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v25 = v13;
          v26 = 1024;
          v27 = v15;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "\\Testing with %@  %{BOOL}d\\"", buf, 0x12u);
        }
      }

      v19 = objc_retainBlock(*(a1 + 32));
      v20 = v19;
      if (v19)
      {
        (*(v19 + 2))(v19, v15, 0);
      }
    }

    else
    {
      v13 = objc_retainBlock(*(a1 + 32));
      if (!v13)
      {
LABEL_20:

        goto LABEL_21;
      }

      v20 = [NSError errorWithDomain:@"BDSErrorDomain" code:1003 userInfo:0];
      (v13)[2](v13, 0, v20);
    }

    goto LABEL_20;
  }

  v21 = sub_100002660();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = [WeakRetained entityName];
    *buf = 138412290;
    v25 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "BCCloudDataManager %@ #hasSaltChangedWithCompletion no moc", buf, 0xCu);
  }

  v6 = objc_retainBlock(*(a1 + 32));
  if (v6)
  {
    v12 = [NSError errorWithDomain:@"BDSErrorDomain" code:1002 userInfo:0];
    (*(v6 + 2))(v6, 0, v12);
LABEL_21:
  }
}

void sub_100051C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_100051C34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained moc];
  if (v2)
  {
    v3 = sub_100002660();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C13AC(WeakRetained);
    }

    v4 = [NSFetchRequest alloc];
    v5 = [WeakRetained entityName];
    v6 = [v4 initWithEntityName:v5];

    [v6 setFetchBatchSize:64];
    v7 = [NSPredicate predicateWithFormat:@"editGeneration > syncGeneration"];
    [v6 setPredicate:v7];

    v31 = 0;
    v8 = [v2 executeFetchRequest:v6 error:&v31];
    v9 = v31;
    [WeakRetained _logError:v9 at:@"diagnosticDirtyCloudDataInfos"];
    if ([v8 count])
    {
      v23 = v9;
      v24 = v6;
      v10 = sub_100002660();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [WeakRetained entityName];
        v12 = [v8 count];
        *buf = 138412546;
        v34 = v11;
        v35 = 2048;
        v36 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager diagnosticDirtyCloudDataInfos %@, returning %lu results", buf, 0x16u);
      }

      v25 = WeakRetained;

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            v19 = [v18 identifier];
            objc_opt_class();
            v20 = [v18 valueForKey:@"saltedHashedID"];
            v21 = BUDynamicCast();

            v22 = [[BDSCloudSyncDiagnosticCloudDataInfo alloc] initWithIdentifier:v19 saltedHashedID:v21];
            [*(*(*(a1 + 32) + 8) + 40) addObject:v22];
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v15);
      }

      WeakRetained = v25;
      v6 = v24;
      v9 = v23;
    }
  }
}

void sub_10005213C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordID];
  v5 = [v4 recordName];
  v6 = [v3 recordChangeTag];

  v7 = [NSString stringWithFormat:@"%@-%@", v5, v6];

  [*(a1 + 32) addObject:v7];
}

void sub_100052210(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_10005248C(id *a1, int a2, int a3)
{
  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [a1[4] delegate];
    v8 = [v7 entityName];
    v9 = v8;
    v10 = @"NO";
    if (a2)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *buf = 138412802;
    v20 = v8;
    v22 = v11;
    v21 = 2112;
    if (a3)
    {
      v10 = @"YES";
    }

    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "BCCloudDataSyncManager: syncCloudData: entityName: %@, attachedState: %@ reachable: %@", buf, 0x20u);
  }

  if (a2 && a3)
  {
    v12 = [a1[4] syncQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052670;
    block[3] = &unk_100240228;
    objc_copyWeak(&v18, a1 + 7);
    v16 = a1[5];
    v17 = a1[6];
    dispatch_async(v12, block);

    objc_destroyWeak(&v18);
  }

  else
  {
    v13 = objc_retainBlock(a1[6]);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }
}

void sub_100052670(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _syncQueueSyncForCloudData:*(a1 + 32) completion:*(a1 + 40)];
}

void sub_100052964(uint64_t a1, int a2)
{
  v4 = +[BULogUtilities shared];
  v5 = [v4 verboseLoggingEnabled];

  if (v5)
  {
    v6 = sub_10000DB80();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) delegate];
      v8 = [v7 entityName];
      v9 = v8;
      v10 = @"NO";
      if (a2)
      {
        v10 = @"YES";
      }

      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "\\#zonefetch BCCloudDataSyncManager: databaseController:recordsChanged: entityName: %@, success: %@\\"", &v11, 0x16u);
    }
  }
}

void sub_100052CD0(uint64_t a1)
{
  if ([*(a1 + 32) serverPushPostponed])
  {
    v2 = objc_retainBlock(*(a1 + 40));
    if (v2)
    {
      v6 = v2;
      v2[2]();
      v2 = v6;
    }
  }

  else
  {
    v3 = [*(a1 + 32) cloudKitController];
    v4 = [v3 privateCloudDatabaseController];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100052DDC;
    v7[3] = &unk_100241380;
    v5 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v5;
    [v4 getAttached:v7];
  }
}

void sub_100052DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002660();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) delegate];
    v8 = [v7 entityName];
    v9 = [NSNumber numberWithBool:a2];
    v10 = [NSNumber numberWithBool:a3];
    v14 = 138543874;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BCCloudDataSyncManager: startSyncToCKWithCompletion entityName: %{public}@, attachedState: %{public}@ reachable: %{public}@", &v14, 0x20u);
  }

  if (a2 && a3 && ([*(a1 + 32) delegate], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = [*(a1 + 32) delegate];
    [v12 syncManager:*(a1 + 32) startSyncToCKWithCompletion:*(a1 + 40)];
  }

  else
  {
    v13 = objc_retainBlock(*(a1 + 40));
    v12 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13);
    }
  }
}

void sub_1000537BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v95 = a2;
  v99 = a3;
  v100 = a4;
  v105 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v98 = [WeakRetained delegate];
  if (!WeakRetained)
  {
    v10 = 0;
    v97 = 0;
    v11 = 0;
    v12 = v105;
    v13 = *(v105 + 72);
LABEL_44:
    [WeakRetained _leaveDispatchGroup:*(v12 + 32) times:v13 - v10];
    goto LABEL_45;
  }

  if (!v100)
  {
LABEL_5:
    dispatch_group_enter(*(a1 + 32));
    v9 = [WeakRetained syncQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100054B08;
    block[3] = &unk_10023F938;
    block[4] = WeakRetained;
    v147 = *(a1 + 32);
    dispatch_async(v9, block);

    goto LABEL_8;
  }

  v7 = [v100 domain];
  if ([v7 isEqualToString:CKErrorDomain])
  {
    v8 = [v100 code];

    if (v8 != 2)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

LABEL_8:
  v104 = +[NSMutableArray array];
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v14 = v95;
  v15 = [v14 countByEnumeratingWithState:&v142 objects:v157 count:16];
  if (v15)
  {
    v16 = *v143;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v143 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v142 + 1) + 8 * i);
        v19 = sub_100002660();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v18 encryptedValuesByKey];
          v21 = [v20 objectForKeyedSubscript:@"localRecordIDEncrypted"];
          *buf = 138412546;
          *&buf[4] = v21;
          *&buf[12] = 2112;
          *&buf[14] = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Successful save of CKRecord id=%@ %@", buf, 0x16u);
        }

        v22 = *(a1 + 40);
        v23 = [v18 recordID];
        v24 = [v22 objectForKeyedSubscript:v23];

        [v24 setSystemFields:v18];
        [v104 addObject:v24];
      }

      v15 = [v14 countByEnumeratingWithState:&v142 objects:v157 count:16];
    }

    while (v15);
  }

  v25 = [v104 count];
  v26 = 0;
  if (v25)
  {
    v27 = v98;
    if (!v98)
    {
      goto LABEL_21;
    }

    v139[0] = _NSConcreteStackBlock;
    v139[1] = 3221225472;
    v139[2] = sub_100054B48;
    v139[3] = &unk_1002413A8;
    v139[4] = WeakRetained;
    v140 = *(a1 + 32);
    v141 = v25;
    [v98 syncManager:WeakRetained updateSyncGenerationFromCloudData:v104 completion:v139];

    v26 = v25;
  }

  v27 = v98;
LABEL_21:
  v94 = v26;
  v28 = [v99 count];
  if ([v99 count] != 0 && v27 != 0)
  {
    v29 = sub_100002660();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v99;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Successful removal of CKRecord ids=%@", buf, 0xCu);
    }

    v136[0] = _NSConcreteStackBlock;
    v136[1] = 3221225472;
    v136[2] = sub_100054B58;
    v136[3] = &unk_1002413A8;
    v136[4] = WeakRetained;
    v137 = *(v105 + 32);
    v138 = v28;
    [v98 syncManager:WeakRetained removeCloudDataForIDs:v99 completion:v136];

    v94 = &v94[v28];
  }

  v30 = [v100 code];
  if (!v100)
  {
    v36 = sub_100002660();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [*(v105 + 48) operationID];
      *buf = 134218498;
      *&buf[4] = v25;
      *&buf[12] = 2048;
      *&buf[14] = v28;
      *&buf[22] = 2114;
      v151 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Total success saving %lu records and deleting %lu records OperationID: %{public}@", buf, 0x20u);
    }

    goto LABEL_39;
  }

  v31 = v30;
  v32 = [v100 domain];
  v33 = [v32 isEqualToString:CKErrorDomain];

  if ((v33 & 1) == 0)
  {
    v38 = sub_100002660();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1001C143C();
    }

    goto LABEL_38;
  }

  if (v31 > 110)
  {
    switch(v31)
    {
      case 111:
        goto LABEL_58;
      case 112:
        v11 = 0;
        v97 = 1;
        goto LABEL_40;
      case 5008:
LABEL_58:
        v97 = 0;
        v11 = 1;
        goto LABEL_40;
    }

    goto LABEL_90;
  }

  if (v31 > 0x1B)
  {
    goto LABEL_90;
  }

  if (((1 << v31) & 0x88000C0) != 0)
  {
    v34 = sub_100002660();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1001C143C();
    }

    v35 = [WeakRetained syncQueue];
    v107[0] = _NSConcreteStackBlock;
    v107[1] = 3221225472;
    v107[2] = sub_100054DE0;
    v107[3] = &unk_1002413F8;
    v107[4] = WeakRetained;
    v108 = v100;
    v109 = *(v105 + 40);
    objc_copyWeak(&v111, (v105 + 64));
    v110 = *(v105 + 56);
    dispatch_async(v35, v107);

    objc_destroyWeak(&v111);
    goto LABEL_39;
  }

  if (v31 != 2)
  {
LABEL_90:
    v38 = sub_100002660();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1001C143C();
    }

LABEL_38:

LABEL_39:
    v11 = 0;
    v97 = 0;
    goto LABEL_40;
  }

  v45 = [v100 userInfo];
  v90 = [v45 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  v46 = sub_100002660();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
  {
    v47 = [v90 count];
    *buf = 134218496;
    *&buf[4] = v25;
    *&buf[12] = 2048;
    *&buf[14] = v28;
    *&buf[22] = 2048;
    v151 = v47;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "Partial failure saving %lu records and deleting %lu records.  Failed %lu.", buf, 0x20u);
  }

  if (v98)
  {
    v92 = objc_opt_new();
    v91 = objc_opt_new();
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v48 = v90;
    v49 = [v48 countByEnumeratingWithState:&v132 objects:v156 count:16];
    if (v49)
    {
      v97 = 0;
      v50 = *v133;
      do
      {
        for (j = 0; j != v49; j = j + 1)
        {
          if (*v133 != v50)
          {
            objc_enumerationMutation(v48);
          }

          v52 = *(*(&v132 + 1) + 8 * j);
          v53 = +[NSNull null];
          v54 = v52 == v53;

          if (!v54)
          {
            v55 = [v48 objectForKeyedSubscript:v52];
            v56 = [v55 domain];
            v57 = [v56 isEqual:CKErrorDomain];

            if (v57)
            {
              v58 = [v55 userInfo];
              v59 = [v58 objectForKey:CKRecordChangedErrorServerRecordKey];

              if (v59)
              {
                v60 = [v55 code] == 14;
                v61 = sub_100002660();
                v62 = v61;
                if (v60)
                {
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543618;
                    *&buf[4] = v52;
                    *&buf[12] = 2114;
                    *&buf[14] = v55;
                    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "CKErrorServerRecordChanged record %{public}@ perRecordError %{public}@", buf, 0x16u);
                  }

                  [v92 setObject:v59 forKeyedSubscript:v52];
                }

                else
                {
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543874;
                    *&buf[4] = v59;
                    *&buf[12] = 2114;
                    *&buf[14] = v100;
                    *&buf[22] = 2114;
                    v151 = v55;
                    _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Error for record %{public}@ operationError %{public}@ perRecordError %{public}@", buf, 0x20u);
                  }
                }
              }

              else
              {
                v63 = sub_100002660();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  *&buf[4] = v52;
                  *&buf[12] = 2114;
                  *&buf[14] = v100;
                  *&buf[22] = 2114;
                  v151 = v55;
                  _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Unable to retrieve serverRecord for recordID %{public}@ operationError %{public}@ perRecordError %{public}@", buf, 0x20u);
                }

                if ([v55 code] == 21 || objc_msgSend(v55, "code") == 14)
                {
                  [v91 addObject:v52];
                }

                else
                {
                  v97 |= [v55 code] == 112;
                }
              }
            }

            else
            {
              v59 = sub_100002660();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *&buf[4] = v52;
                *&buf[12] = 2114;
                *&buf[14] = v55;
                _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Error modifying record:%@ error=%{public}@", buf, 0x16u);
              }
            }
          }
        }

        v49 = [v48 countByEnumeratingWithState:&v132 objects:v156 count:16];
      }

      while (v49);
    }

    else
    {
      v97 = 0;
    }

    v89 = [v92 count];
    if (v89)
    {
      v93 = +[NSMutableSet set];
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      obj = [v92 allValues];
      v103 = [obj countByEnumeratingWithState:&v128 objects:v155 count:16];
      if (v103)
      {
        v101 = *v129;
        do
        {
          for (k = 0; k != v103; k = k + 1)
          {
            if (*v129 != v101)
            {
              objc_enumerationMutation(obj);
            }

            v67 = *(*(&v128 + 1) + 8 * k);
            v124 = 0u;
            v125 = 0u;
            v126 = 0u;
            v127 = 0u;
            v68 = [v67 allKeys];
            v69 = [v68 countByEnumeratingWithState:&v124 objects:v154 count:16];
            if (v69)
            {
              v70 = *v125;
              while (2)
              {
                for (m = 0; m != v69; m = m + 1)
                {
                  if (*v125 != v70)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v72 = *(*(&v124 + 1) + 8 * m);
                  objc_opt_class();
                  v73 = [v67 objectForKeyedSubscript:v72];
                  v74 = BUDynamicCast();

                  if (v74)
                  {
                    v75 = [v67 recordID];

                    if (v75)
                    {
                      v76 = [v67 recordID];
                      [v93 addObject:v76];
                    }

                    else
                    {
                      v76 = sub_100002660();
                      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *&buf[4] = v67;
                        _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Record ID is nil for record to fetch: %@", buf, 0xCu);
                      }
                    }

                    goto LABEL_117;
                  }
                }

                v69 = [v68 countByEnumeratingWithState:&v124 objects:v154 count:16];
                if (v69)
                {
                  continue;
                }

                break;
              }
            }

LABEL_117:
          }

          v103 = [obj countByEnumeratingWithState:&v128 objects:v155 count:16];
        }

        while (v103);
      }

      if ([v93 count])
      {
        v77 = sub_100002660();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
        {
          v78 = [v93 count];
          *buf = 134217984;
          *&buf[4] = v78;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "Fetching %lu records that had assets on conflict", buf, 0xCu);
        }

        v79 = [CKFetchRecordsOperation alloc];
        v80 = [v93 allObjects];
        v81 = [v79 initWithRecordIDs:v80];

        v82 = +[CKOperationConfiguration bds_defaultConfiguration];
        [v81 setConfiguration:v82];

        v118[0] = _NSConcreteStackBlock;
        v118[1] = 3221225472;
        v118[2] = sub_100054B68;
        v118[3] = &unk_1002413D0;
        v119 = v92;
        v120 = v98;
        v121 = WeakRetained;
        v122 = *(v105 + 32);
        v123 = v89;
        [v81 setFetchRecordsCompletionBlock:v118];
        v83 = [WeakRetained cloudKitController];
        v84 = [v83 privateCloudDatabaseController];

        v85 = [v84 database];
        [v85 addOperation:v81];
      }

      else
      {
        v86 = [v92 allValues];
        v115[0] = _NSConcreteStackBlock;
        v115[1] = 3221225472;
        v115[2] = sub_100054DC0;
        v115[3] = &unk_1002413A8;
        v115[4] = WeakRetained;
        v116 = *(v105 + 32);
        v117 = v89;
        [v98 syncManager:WeakRetained resolveConflictsForRecords:v86 completion:v115];
      }

      v94 = &v94[v89];
    }

    v87 = [v91 count];
    if (v87)
    {
      v88 = *(v105 + 56);
      v112[0] = _NSConcreteStackBlock;
      v112[1] = 3221225472;
      v112[2] = sub_100054DD0;
      v112[3] = &unk_1002413A8;
      v112[4] = WeakRetained;
      v113 = *(v105 + 32);
      v114 = v87;
      [v98 syncManager:v88 failedRecordIDs:v91 completion:v112];

      v94 = &v94[v87];
    }

    v65 = v92;
  }

  else
  {
    v64 = sub_100002660();
    v65 = v64;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      sub_1001C14AC();
      v97 = 0;
      v65 = v64;
    }

    else
    {
      v97 = 0;
    }
  }

  v11 = 0;
LABEL_40:

  v12 = v105;
  v13 = *(v105 + 72);
  v10 = v94;
  if (v13 >= v94)
  {
    goto LABEL_44;
  }

  v39 = sub_100002660();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    sub_1001C14EC();
  }

LABEL_45:
  if ((v97 & 1) != 0 || v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v151 = sub_100054FA8;
    v152 = sub_100054FB8;
    v153 = +[NSMutableArray array];
    v40 = *(v105 + 40);
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_100054FC0;
    v106[3] = &unk_100241420;
    v106[4] = buf;
    [v40 enumerateKeysAndObjectsUsingBlock:v106];
    if ([*(*&buf[8] + 40) count])
    {
      v41 = [*(v105 + 56) cloudKitController];
      v42 = [v41 privateCloudDatabaseController];

      if (v97)
      {
        [v42 zonesUnreadableDueToMissingD2DEncryptionIdentity:*(*&buf[8] + 40) completion:0];
      }

      else if (v11)
      {
        v148 = NSLocalizedDescriptionKey;
        v149 = @"Unsynced keychain - cannot modify records";
        v43 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];
        v44 = [NSError errorWithDomain:@"BDSCloudKitClientError" code:2006 userInfo:v43];

        [v42 zonesTemporarilyUnreadableWithError:v44 completion:0];
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

void sub_100054B08(uint64_t a1)
{
  [*(a1 + 32) setBackOffInterval:0.0];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void sub_100054B68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002660();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C152C();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v31 = [v5 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Successfully fetched %lu records that had assets on conflict", buf, 0xCu);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = [v5 allValues];
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = *(a1 + 32);
          v15 = [v13 recordID];
          [v14 setObject:v13 forKeyedSubscript:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v10);
    }
  }

  v17 = *(a1 + 40);
  v16 = *(a1 + 48);
  v18 = [*(a1 + 32) allValues];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100054DB0;
  v22[3] = &unk_1002413A8;
  v19 = *(a1 + 56);
  v22[4] = *(a1 + 48);
  v20 = v19;
  v21 = *(a1 + 64);
  v23 = v20;
  v24 = v21;
  [v17 syncManager:v16 resolveConflictsForRecords:v18 completion:v22];
}

void sub_100054DE0(uint64_t a1)
{
  if (([*(a1 + 32) serverPushPostponed] & 1) == 0)
  {
    [*(a1 + 32) setServerPushPostponed:1];
    [*(a1 + 32) _updateRetryParametersFromModifyRecordsOperationError:*(a1 + 40) batchSize:{objc_msgSend(*(a1 + 48), "count")}];
    [*(a1 + 32) backOffInterval];
    v3 = dispatch_time(0, (v2 * 1000000000.0));
    v4 = [*(a1 + 32) syncQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100054EEC;
    v5[3] = &unk_10023F9A8;
    objc_copyWeak(&v6, (a1 + 64));
    v5[4] = *(a1 + 56);
    dispatch_after(v3, v4, v5);

    objc_destroyWeak(&v6);
  }
}

void sub_100054EEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained setServerPushPostponed:0];
    v3 = [*(a1 + 32) cloudKitController];
    v4 = [v3 transactionManager];
    v5 = [*(a1 + 32) delegate];
    v6 = [v5 entityName];
    [v4 signalSyncToCKTransactionForEntityName:v6 syncManager:*(a1 + 32)];

    WeakRetained = v7;
  }
}

uint64_t sub_100054FA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100054FC0(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 zoneID];

  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [v6 zoneID];
    [v4 addObject:v5];
  }
}

void sub_100055460(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setProcessingCloudData:0];
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) cloudKitController];
    v3 = [v2 transactionManager];
    v4 = [*(a1 + 32) delegate];
    v5 = [v4 entityName];
    [v3 signalSyncToCKTransactionForEntityName:v5 syncManager:*(a1 + 32)];
  }

  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
  }
}

void sub_1000560B4(id a1)
{
  qword_100274A90 = objc_alloc_init(BDSNBPinningManager);

  _objc_release_x1();
}

void sub_10005652C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_10000DC90();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Parsed master playlist, using streamInf: %@", &v16, 0xCu);
  }

  if (v5)
  {
    v8 = [v5 averageBandwidthFallbackToPeak];
    [BLMediaItemUtils setBitrate:v8 forItem:*(a1 + 32)];
    v9 = sub_10000DC90();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v16 = 134218242;
      v17 = v8;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set bitrate to %lu on item %@", &v16, 0x16u);
    }

    v11 = objc_retainBlock(*(a1 + 40));
    v12 = v11;
    if (v11)
    {
      v13 = v11[2];
LABEL_12:
      v13();
    }
  }

  else
  {
    v14 = sub_10000DC90();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1618(v6, v14);
    }

    v15 = objc_retainBlock(*(a1 + 40));
    v12 = v15;
    if (v15)
    {
      v13 = v15[2];
      goto LABEL_12;
    }
  }
}

BOOL sub_1000573D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 collectionMemberID];
    v6 = [BCCollectionMember assetIDFromCollectionMemberID:v5];

    v7 = [BDSMediaLibraryUtils representativeDAAPMediaItemsWithAssetId:v6];
    if (v7)
    {
      dispatch_group_enter(*(a1 + 40));
      v8 = sub_10000DC90();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1001C16A4();
      }

      v9 = *(a1 + 48);
      v10 = [NSNumber numberWithUnsignedLongLong:BUStoreIdFromObject()];
      [v9 addObject:v10];

      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100057664;
      v18[3] = &unk_10023F6F8;
      v19 = *(a1 + 40);
      [v11 _prepareMediaItemForPinningIfNeeded:v7 parentProgress:v12 completion:v18];
      v4 = 1;
      v13 = v19;
    }

    else
    {
      v13 = [*(a1 + 56) _jaliscoAudiobookWithAssetId:v6];
      v4 = v13 != 0;
      v14 = sub_10000DC90();
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_1001C170C();
        }

        v16 = *(a1 + 48);
        v15 = [NSNumber numberWithUnsignedLongLong:BUStoreIdFromObject()];
        [v16 addObject:v15];
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "found wantToRead member with assetID %@ that has no MediaItem or Jalisco item.", buf, 0xCu);
      }
    }
  }

  return v4;
}

BOOL sub_100057674(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 assetID];
    v6 = [BDSMediaLibraryUtils representativeDAAPMediaItemsWithAssetId:v5];

    if (v6)
    {
      dispatch_group_enter(*(a1 + 40));
      v7 = sub_10000DC90();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_1001C1774(v3);
      }

      v8 = *(a1 + 48);
      v9 = [v3 assetID];
      v10 = [NSNumber numberWithUnsignedLongLong:BUStoreIdFromObject()];
      [v8 addObject:v10];

      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100057934;
      v22[3] = &unk_10023F6F8;
      v23 = *(a1 + 40);
      [v11 _prepareMediaItemForPinningIfNeeded:v6 parentProgress:v12 completion:v22];
      v4 = 1;
      v13 = v23;
    }

    else
    {
      v14 = *(a1 + 56);
      v15 = [v3 assetID];
      v13 = [v14 _jaliscoAudiobookWithAssetId:v15];

      v4 = v13 != 0;
      v16 = sub_10000DC90();
      v17 = v16;
      if (v13)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          sub_1001C17F8(v3);
        }

        v18 = *(a1 + 48);
        v17 = [v3 assetID];
        v19 = [NSNumber numberWithUnsignedLongLong:BUStoreIdFromObject()];
        [v18 addObject:v19];
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v3 assetID];
        *buf = 138412290;
        v25 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "found readingNow member with assetID %@ that has no MediaItem or Jalisco item.", buf, 0xCu);
      }
    }
  }

  return v4;
}

void sub_100057944(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DC90();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001C187C(a1, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = 138412290;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated bitrate on pinned item: %@", &v13, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_100057A20(uint64_t a1)
{
  v2 = 3 - [*(a1 + 32) count];
  if (v2 >= 1)
  {
    v3 = [NSProgress progressWithTotalUnitCount:1];
    [*(a1 + 40) addChild:v3 withPendingUnitCount:v2];
    [v3 setCompletedUnitCount:1];
  }

  v4 = 3 - [*(a1 + 48) count];
  if (v4 >= 1)
  {
    v5 = [NSProgress progressWithTotalUnitCount:1];
    [*(a1 + 56) addChild:v5 withPendingUnitCount:v4];
    [v5 setCompletedUnitCount:1];
  }

  if (*(a1 + 88) == 1)
  {
    v6 = sub_10000DC90();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) count];
      v8 = *(a1 + 32);
      *buf = 134218242;
      v31 = v7;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "pinning %lu audiobooks to wantToRead list (%@)", buf, 0x16u);
    }

    v9 = [*(a1 + 32) copy];
    [*(a1 + 64) setWantToReadAudiobooks:v9];
  }

  if (*(a1 + 89) == 1)
  {
    v10 = sub_10000DC90();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 48) count];
      v12 = *(a1 + 48);
      *buf = 134218242;
      v31 = v11;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "pinning %lu audiobooks to readingNow list (%@)", buf, 0x16u);
    }

    v13 = [*(a1 + 48) copy];
    [*(a1 + 64) setReadingNowAudiobooks:v13];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = *(a1 + 72);
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        v20 = sub_10000DC90();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v19 stringValue];
          *buf = 138412290;
          v31 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "unpinning assetID: %@", buf, 0xCu);
        }

        [*(a1 + 64) unpinAudiobook:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  v22 = [*(a1 + 64) readingNowAudiobooks];
  v23 = objc_retainBlock(*(a1 + 80));
  v24 = v23;
  if (v23)
  {
    (*(v23 + 2))(v23, 0);
  }
}

uint64_t sub_100057F18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_100057F30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 assetID];
  v5 = [BDSMediaLibraryUtils representativeDAAPMediaItemsWithAssetId:v4];

  if (v5)
  {
    v6 = [v3 assetID];
    v8 = *(a1 + 32);
    v7 = a1 + 32;
    v9 = *(v8 + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v6;

    v11 = sub_10000DC90();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1001C18EC(v7, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  else
  {
    v11 = sub_10000DC90();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v18 = [v3 assetID];
      v20 = 138412290;
      v21 = v18;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "found readingNow member with assetID %@ that has no MediaItem.", &v20, 0xCu);
    }
  }

  return v5 != 0;
}

void sub_100058084(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = sub_10000DC90();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "returning mostRecentAudiobook with assetID: %@", &v9, 0xCu);
  }

  v8 = *(*(*(a1 + 40) + 8) + 40);
  (*(*(a1 + 32) + 16))();
}

void sub_1000582E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000DC90();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1964(a1, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated bitrate for item with adadmID: %@", &v15, 0xCu);
  }

  v13 = objc_retainBlock(*(a1 + 40));
  v14 = v13;
  if (v13)
  {
    (*(v13 + 2))(v13, v3);
  }
}

void sub_100058480(uint64_t a1, uint64_t a2)
{
  v3 = objc_retainBlock(*(a1 + 32));
  if (v3)
  {
    v5 = v3;
    v4 = [NSNumber numberWithBool:a2];
    v5[2](v5, v4, 0);

    v3 = v5;
  }
}

void sub_10005856C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100058588(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100058A3C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100002660();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001C19D4(v5, v6);
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    v6 = sub_100002660();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) zoneName];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#dissociateCloudData Change Token Controller successfully transitioned to a new cloud container for zone: %@", &v8, 0xCu);
    }
  }

LABEL_5:
}

void sub_100058DC8(uint64_t a1)
{
  v2 = sub_10000DC08();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) zoneName];
    v4 = *(a1 + 40);
    *buf = 138412546;
    v22 = v3;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - zoneNeedsUpdate serverSaltVersionIdentifier:(%@)", buf, 0x16u);
  }

  v5 = +[BCSaltVersionIdentifier fetchRequest];
  [v5 setReturnsObjectsAsFaults:0];
  v6 = *(a1 + 48);
  v20 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v20];
  v8 = v20;
  if ([v7 count])
  {
    if ([v7 count] == 1)
    {
      v9 = [v7 firstObject];
      v10 = [v9 localSaltVersionIdentifier];
      v11 = [v10 isEqualToString:*(a1 + 40)] ^ 1;
      v12 = sub_10000DC08();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) zoneName];
        v14 = *(a1 + 40);
        *buf = 138413058;
        v22 = v13;
        v23 = 2112;
        v24 = v10;
        v25 = 2112;
        v26 = v14;
        v27 = 1024;
        v28 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@  Comparing local(%@) to server(%@).Need update:%{BOOL}d", buf, 0x26u);
      }

      v15 = objc_retainBlock(*(a1 + 56));
      v16 = v15;
      if (v15)
      {
        (*(v15 + 2))(v15, v11, 0);
      }

      goto LABEL_18;
    }

    v19 = sub_10000DC08();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1A4C();
    }

    v9 = objc_retainBlock(*(a1 + 56));
    if (v9)
    {
      v10 = [NSError errorWithDomain:@"BDSErrorDomain" code:1006 userInfo:0];
      (v9)[2](v9, 1, v10);
      goto LABEL_18;
    }
  }

  else
  {
    v17 = sub_10000DC08();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 32) zoneName];
      *buf = 138412290;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - no local identifier saved", buf, 0xCu);
    }

    v9 = objc_retainBlock(*(a1 + 56));
    if (v9)
    {
      v10 = [NSError errorWithDomain:@"BDSErrorDomain" code:1003 userInfo:0];
      (v9)[2](v9, 0, v10);
LABEL_18:
    }
  }
}

void sub_10005921C(uint64_t a1)
{
  v2 = sub_10000DC08();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) zoneName];
    v4 = *(a1 + 40);
    *buf = 138412546;
    v30 = v3;
    v31 = 2112;
    *v32 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier serverSaltVersionIdentifier:(%@)", buf, 0x16u);
  }

  v5 = +[BCSaltVersionIdentifier fetchRequest];
  [v5 setReturnsObjectsAsFaults:0];
  v6 = *(a1 + 48);
  v28 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v28];
  v8 = v28;
  if (v7)
  {
    if ([v7 count] == 1)
    {
      v9 = [v7 firstObject];
    }

    else
    {
      if ([v7 count] >= 2)
      {
        v10 = [v7 firstObject];
        if ([v7 count] >= 2)
        {
          v11 = 1;
          do
          {
            v12 = *(a1 + 48);
            v13 = [v7 objectAtIndexedSubscript:v11];
            [v12 deleteObject:v13];

            ++v11;
          }

          while ([v7 count] > v11);
        }

LABEL_15:
        [v10 setLocalSaltVersionIdentifier:*(a1 + 40)];
        [v10 setServerSaltVersionIdentifier:*(a1 + 40)];
        if ([*(a1 + 48) hasChanges])
        {
          v17 = *(a1 + 48);
          v27 = v8;
          v18 = [v17 save:&v27];
          v19 = v27;

          v20 = sub_10000DC08();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [*(a1 + 32) zoneName];
            *buf = 138412802;
            v30 = v21;
            v31 = 1024;
            *v32 = v18;
            *&v32[4] = 2112;
            *&v32[6] = v19;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier SAVE success %{BOOL}d error:(%@)", buf, 0x1Cu);
          }

          if (v18)
          {
            goto LABEL_25;
          }

          v22 = sub_10000DC08();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = [*(a1 + 32) zoneName];
            v24 = *(a1 + 40);
            *buf = 138412802;
            v30 = v23;
            v31 = 2112;
            *v32 = v24;
            *&v32[8] = 2114;
            *&v32[10] = v19;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier Error saving saltVersionIdentifier:(%@) Error:%{public}@", buf, 0x20u);
          }
        }

        else
        {
          v22 = sub_10000DC08();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_1001C1AF4();
          }

          v19 = v8;
        }

LABEL_25:
        v8 = v19;
        goto LABEL_26;
      }

      v14 = sub_10000DC08();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [*(a1 + 32) zoneName];
        v16 = *(a1 + 40);
        *buf = 138412546;
        v30 = v15;
        v31 = 2112;
        *v32 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[BCCloudChangeTokenController] #saltVersionIdentifierChanged - %@ - updateSaltVersionIdentifier NEW record %@", buf, 0x16u);
      }

      v9 = [[BCSaltVersionIdentifier alloc] initIntoManagedObjectContext:*(a1 + 48)];
    }

    v10 = v9;
    goto LABEL_15;
  }

LABEL_26:
  v25 = objc_retainBlock(*(a1 + 56));
  v26 = v25;
  if (v25)
  {
    (*(v25 + 2))(v25, v8 == 0, v8);
  }
}

void sub_1000596EC(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"BCServerChangeToken"];
  v3 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v2];
  [v3 setResultType:1];
  v4 = *(a1 + 32);
  v18 = 0;
  v5 = [v4 executeRequest:v3 error:&v18];
  v6 = v18;
  if (v6)
  {
    v7 = sub_100002660();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1B98();
    }
  }

  if (v5)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    v16 = *(a1 + 32);
    v19[0] = NSInsertedObjectsKey;
    v17 = v2;
    v9 = +[NSSet set];
    v20[0] = v9;
    v19[1] = NSUpdatedObjectsKey;
    v10 = +[NSSet set];
    v20[1] = v10;
    v19[2] = NSDeletedObjectIDsKey;
    v11 = [v5 result];
    v12 = [NSSet setWithArray:v11];
    v20[2] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
    [v8 postNotificationName:NSManagedObjectContextDidSaveNotification object:v16 userInfo:v13];

    v2 = v17;
  }

  v14 = objc_retainBlock(*(a1 + 48));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, v5 != 0, v6);
  }
}

void sub_100059B6C(uint64_t a1)
{
  v2 = +[BULogUtilities shared];
  v3 = [v2 verboseLoggingEnabled];

  if (v3)
  {
    v4 = sub_10000DB80();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) zoneName];
      v6 = *(a1 + 40);
      *buf = 138412546;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "\\BCCloudChangeTokenController - #recordChange zone: %@ storing server change token: %@\\"", buf, 0x16u);
    }
  }

  v7 = [[NSFetchRequest alloc] initWithEntityName:@"BCServerChangeToken"];
  [v7 setReturnsObjectsAsFaults:0];
  v8 = *(a1 + 48);
  v18 = 0;
  v9 = [v8 executeFetchRequest:v7 error:&v18];
  v10 = v18;
  if ([v9 count])
  {
    [v9 objectAtIndexedSubscript:0];
  }

  else
  {
    [NSEntityDescription insertNewObjectForEntityForName:@"BCServerChangeToken" inManagedObjectContext:*(a1 + 48)];
  }
  v11 = ;
  [v11 setValue:*(a1 + 56) forKey:@"serverChangeToken"];

  if ([*(a1 + 48) hasChanges])
  {
    v12 = *(a1 + 48);
    v17 = v10;
    [v12 save:&v17];
    v13 = v17;

    if (v13)
    {
      v14 = sub_100002660();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1001C1C28();
      }
    }
  }

  else
  {
    v13 = v10;
  }

  v15 = objc_retainBlock(*(a1 + 64));
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15);
  }
}

void sub_100059EFC(uint64_t a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:@"BCServerChangeToken"];
  [v2 setReturnsObjectsAsFaults:0];
  v3 = *(a1 + 32);
  v19 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v19];
  v5 = v19;
  if (v5)
  {
    v6 = sub_100002660();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1CB8();
    }
  }

  if ([v4 count])
  {
    v7 = [NSKeyedUnarchiver alloc];
    v8 = [v4 objectAtIndexedSubscript:0];
    v9 = [v8 valueForKey:@"serverChangeToken"];
    v18 = 0;
    v10 = [v7 initForReadingFromData:v9 error:&v18];
    v11 = v18;

    if (v11)
    {
      v12 = sub_100002660();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1001C1D48(v11, v12);
      }

      v13 = 0;
    }

    else
    {
      v13 = [[CKServerChangeToken alloc] initWithCoder:v10];
      [v10 finishDecoding];
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_100002660();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [*(a1 + 40) zoneName];
    *buf = 138412546;
    v21 = v15;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "BCCloudChangeTokenController - #recordChange zone: %@ returning server change token: %@", buf, 0x16u);
  }

  v16 = objc_retainBlock(*(a1 + 48));
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16, v13);
  }
}

void sub_10005A258(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_10005A878(id a1)
{
  qword_100274A98 = [[BCCloudAssetManager alloc] initService];

  _objc_release_x1();
}

void sub_10005B65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005B674(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10005B68C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSaltVersionIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_10005B7C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained wq_refreshSalt:*(a1 + 32)];
}

void sub_10005B908(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_100002660();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained currentSalt];
    v6 = 138412546;
    v7 = v4;
    v8 = 1024;
    v9 = [WeakRetained isSaltRefreshInProgress];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager refreshSaltIfNeeded - currentSalt: %@, isSaltRefreshInProgress: %{BOOL}d", &v6, 0x12u);
  }

  v5 = [WeakRetained currentSalt];
  if (v5)
  {
  }

  else if (([WeakRetained isSaltRefreshInProgress] & 1) == 0)
  {
    [WeakRetained wq_refreshSalt:*(a1 + 32)];
  }
}

void sub_10005BBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005BBE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v10 = [NSException alloc];
    v11 = [NSString stringWithFormat:@"Nil weak self after fetch salt record"];
    v21 = NSUnderlyingErrorKey;
    v12 = v6;
    if (!v6)
    {
      v12 = +[NSNull null];
    }

    v22 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v14 = [v10 initWithName:@"No Books Salt" reason:v11 userInfo:v13];
    v15 = v14;

    if (!v6)
    {
    }

    objc_exception_throw(v14);
  }

  v9 = [WeakRetained workQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005BEBC;
  v16[3] = &unk_1002416D8;
  v16[4] = v8;
  v17 = v6;
  v18 = v5;
  objc_copyWeak(&v20, (a1 + 40));
  v19 = *(a1 + 32);
  dispatch_async(v9, v16);

  objc_destroyWeak(&v20);
}

void sub_10005BEBC(uint64_t a1)
{
  [*(a1 + 32) setIsSaltRefreshInProgress:0];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10005B674;
  v36 = sub_10005B684;
  v37 = 0;
  v2 = (a1 + 40);
  if (*(a1 + 40) || (v11 = *(a1 + 48)) == 0)
  {
    v3 = sub_100002660();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1E3C((a1 + 40), a1, v3);
    }

    memset(bytes, 0, sizeof(bytes));
    if (SecRandomCopyBytes(kSecRandomDefault, 0x80uLL, bytes))
    {
      v19 = [NSException alloc];
      v20 = [NSString stringWithFormat:@"Unable to generate random salt"];
      v38 = NSUnderlyingErrorKey;
      v21 = *v2;
      if (*v2)
      {
        v22 = *v2;
      }

      else
      {
        v22 = +[NSNull null];
      }

      v39 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v24 = [v19 initWithName:@"No Books Record Salt" reason:v20 userInfo:v23];
      v25 = v24;

      if (!v21)
      {
      }

      objc_exception_throw(v24);
    }

    v4 = [[CKRecordID alloc] initWithRecordName:@"recordIDSalt"];
    v5 = [[CKRecord alloc] initWithRecordType:@"recordIDSalt" recordID:v4];
    v6 = [NSData dataWithBytes:bytes length:128];
    v7 = [v5 encryptedValuesByKey];
    [v7 setObject:v6 forKeyedSubscript:@"saltEncrypted"];

    v8 = sub_10000DC08();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "BDSSyncEngineSaltManager: Will save record salt", buf, 2u);
    }

    v9 = [*(a1 + 32) database];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10005C390;
    v26[3] = &unk_1002416B0;
    objc_copyWeak(&v30, (a1 + 64));
    v29 = &v32;
    v10 = v6;
    v27 = v10;
    v28 = *(a1 + 56);
    [v9 saveRecord:v5 completionHandler:v26];

    objc_destroyWeak(&v30);
  }

  else
  {
    v12 = [v11 encryptedValuesByKey];
    v13 = [v12 objectForKeyedSubscript:@"saltEncrypted"];

    if (!v13)
    {
      v13 = [*(a1 + 48) objectForKeyedSubscript:@"salt"];
    }

    [*(a1 + 32) setCurrentSalt:v13];
    v14 = [*(a1 + 48) recordChangeTag];
    v15 = v33[5];
    v33[5] = v14;

    [*(a1 + 32) setCurrentSaltVersionIdentifier:v33[5]];
    v16 = sub_10000DC08();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v33[5];
      LODWORD(bytes[0]) = 138412546;
      *(bytes + 4) = v13;
      WORD6(bytes[0]) = 2112;
      *(bytes + 14) = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: Successfully read existing record salt salt:(%@) changeTag:(%@). Calling completion", bytes, 0x16u);
    }

    v18 = [*(a1 + 32) observer];
    [v18 saltManager:*(a1 + 32) updatedSaltWithVersion:v33[5]];
  }

  _Block_object_dispose(&v32, 8);
}

void sub_10005C344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005C390(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v36 = [NSException alloc];
    v37 = [NSString stringWithFormat:@"Nil weak self after save record"];
    v42 = NSUnderlyingErrorKey;
    v38 = v6;
    if (!v6)
    {
      v38 = +[NSNull null];
    }

    v43 = v38;
    v39 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v40 = [v36 initWithName:@"No Books Record Salt" reason:v37 userInfo:v39];
    v41 = v40;

    if (!v6)
    {
    }

    objc_exception_throw(v40);
  }

  v8 = WeakRetained;
  v9 = sub_10000DC08();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "BDSSyncEngineSaltManager: Saving record salt....", buf, 2u);
  }

  v10 = [v6 domain];
  if ([v10 isEqualToString:CKErrorDomain])
  {
    v11 = [v6 code];

    if (v11 == 14)
    {
      v12 = [v6 userInfo];
      v13 = [v12 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

      v14 = [v13 encryptedValuesByKey];
      v15 = [v14 objectForKeyedSubscript:@"saltEncrypted"];

      if (v13)
      {
        v16 = sub_10000DC08();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v13 recordChangeTag];
          *buf = 138412802;
          v45 = v15;
          v46 = 2112;
          v47 = v17;
          v48 = 2112;
          v49 = v6;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: Successfully established record salt from server record salt:(%@) changeTag:(%@) error:(%@)", buf, 0x20u);
        }

        [v8 setCurrentSalt:v15];
        v18 = [v13 recordChangeTag];
        v19 = *(*(a1 + 48) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

        [v8 setCurrentSaltVersionIdentifier:*(*(*(a1 + 48) + 8) + 40)];
        v6 = 0;
      }

LABEL_15:
      goto LABEL_19;
    }
  }

  else
  {
  }

  v21 = sub_10000DC08();
  v13 = v21;
  if (v6)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1ECC();
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 32);
    v23 = [v5 recordChangeTag];
    *buf = 138412546;
    v45 = v22;
    v46 = 2112;
    v47 = v23;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: Successfully established record salt for NO ERROR salt:(%@) changeTag:(%@)", buf, 0x16u);
  }

  v24 = [v5 encryptedValuesByKey];
  v25 = [v24 objectForKeyedSubscript:@"saltEncrypted"];
  [v8 setCurrentSalt:v25];

  v26 = [v5 recordChangeTag];
  v27 = *(*(a1 + 48) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;

  [v8 setCurrentSaltVersionIdentifier:*(*(*(a1 + 48) + 8) + 40)];
  v6 = 0;
LABEL_19:
  v29 = [v8 currentSalt];

  v30 = sub_10000DC08();
  v31 = v30;
  if (v6 || !v29)
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1F34();
    }

    v35 = objc_retainBlock(*(a1 + 40));
    v34 = v35;
    if (v35)
    {
      (*(v35 + 2))(v35, v6);
    }
  }

  else
  {
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v8 currentSalt];
      v33 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412546;
      v45 = v32;
      v46 = 2112;
      v47 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "BDSSyncEngineSaltManager: *** Got record salt:(%@) changeTag:(%@)", buf, 0x16u);
    }

    v34 = [v8 observer];
    [v34 saltManager:v8 updatedSaltWithVersion:*(*(*(a1 + 48) + 8) + 40)];
  }
}

void sub_10005C968(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained wq_invalidateSalt];
}

void sub_10005CAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005CB04(uint64_t a1)
{
  v2 = [*(a1 + 32) currentSalt];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_10005CCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005CCC0(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) _wq_saltedAndHashedIDFromLocalID:?];
    if (v3)
    {
      v4 = *(a1 + 48);
      if (!v4)
      {
        v4 = @"-";
      }

      v5 = [NSString stringWithFormat:@"%@.%@", v4, v3];
    }

    else
    {
      v5 = 0;
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
    if (v3)
    {
    }
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = sub_100002660();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001C1F9C(v2, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

void sub_10005D9D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

void sub_10005DB4C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_10005E2B4(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_10005E464(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_10005E728(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  if (v7)
  {
    v8 = [v6 value];
    v7[2](v7, v8, v9);
  }
}

void sub_10005E88C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 32));
  if (v6)
  {
    v7 = [v8 value];
    v6[2](v6, v7, v5);
  }
}

void sub_10005EA0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    [(BCMutableSecureUserDatum *)v3 setValue:*(a1 + 40)];
  }

  else
  {
    v4 = [[BCMutableSecureUserDatum alloc] initWithKey:*(a1 + 32)];
    [(BCMutableSecureUserDatum *)v4 setValue:*(a1 + 40)];
    [(BCMutableCloudData *)v4 setModificationDate:0];
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005EAEC;
  v6[3] = &unk_1002417E8;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v5 setUserDatum:v4 completion:v6];
}

void sub_10005EAEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v7);
  }
}

void sub_10005F3DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = +[BULogUtilities shared];
  v8 = [v7 verboseLoggingEnabled];

  if (v8)
  {
    v9 = sub_10000DB80();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (a2)
      {
        v10 = @"YES";
      }

      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "\\#zonefetch BCCloudAssetDetailManager resolveConflictsForRecords completion success:%@\\"", &v13, 0xCu);
    }
  }

  v11 = objc_retainBlock(*(a1 + 32));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, a2, v6);
  }
}

void sub_10005F608(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_100060010(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_class();
  v7 = BUDynamicCast();

  v8 = sub_100002660();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Completed fetch of assetDetailForAssetID on assetID:%@ with error:%@", &v12, 0x16u);
  }

  v10 = objc_retainBlock(*(a1 + 40));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v7, v5);
  }
}

void sub_1000602FC(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_10006058C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v9, v6);
  }
}

id sub_1000607C0(id a1, BCCloudData *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = BUDynamicCast();

  if (v3)
  {
    v4 = [v3 assetID];
    v8[0] = v4;
    v5 = [v3 dateFinished];
    v8[1] = v5;
    v6 = [NSArray arrayWithObjects:v8 count:2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1000608B4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v19 = a3;
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        v11 = [v10 objectAtIndexedSubscript:0];
        v12 = BUDynamicCast();

        objc_opt_class();
        v13 = [v10 objectAtIndexedSubscript:1];
        v14 = BUDynamicCast();

        if (v12)
        {
          v15 = v14 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          [v5 setObject:v14 forKeyedSubscript:v12];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v16 = objc_retainBlock(*(a1 + 32));
  if (v16)
  {
    v17 = [v5 copy];
    v16[2](v16, v17, v19);
  }
}

uint64_t sub_100060C68(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = BUDynamicCast();

  v5 = *(a1 + 32);
  v6 = [v4 dateFinished];
  v7 = [v5 component:4 fromDate:v6];

  v8 = [NSNumber numberWithInteger:v7];
  v9 = [NSString stringWithFormat:@"%@", v8];

  v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 integerValue] + 1);
  [*(a1 + 40) setObject:v11 forKeyedSubscript:v9];

  return 0;
}

void sub_100060D8C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = objc_retainBlock(*(a1 + 40));
  if (v4)
  {
    v5 = [*(a1 + 32) copy];
    v4[2](v4, v5, v6);
  }
}

void sub_100062820(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_100062C20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062CD0;
  v4[3] = &unk_100241948;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 q_fetchNotificationNamesAfterToken:v3 withCompletion:v4];
}

void sub_100062CD0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = objc_retainBlock(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v7, a3);
  }

  [*(a1 + 32) endTransaction];
}

void sub_100062EC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062F74;
  v4[3] = &unk_100241998;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 q_enqueueNotificationName:v3 withCompletion:v4];
}

id sub_100062F74(uint64_t a1, uint64_t a2)
{
  v4 = objc_retainBlock(*(a1 + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, a2);
  }

  v6 = *(a1 + 32);

  return [v6 endTransaction];
}

int64_t sub_1000631E4(id a1, BDSServiceNotificationInfo *a2, BDSServiceNotificationInfo *a3)
{
  v4 = a3;
  v5 = [(BDSServiceNotificationInfo *)a2 changeToken];
  v6 = [(BDSServiceNotificationInfo *)v4 changeToken];

  return v5 <= v6;
}

void sub_100063E94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

void sub_100064008(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_100064740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100064768(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100064780(uint64_t a1)
{
  v2 = +[BDSBookWidgetInfoMO fetchRequest];
  v3 = [*(a1 + 32) allKeys];
  v4 = [NSPredicate predicateWithFormat:@"assetID IN %@ and readingNowDetail == nil", v3];
  [v2 setPredicate:v4];

  v23 = 0;
  v5 = [v2 execute:&v23];
  v6 = v23;
  v7 = v6;
  if (v5)
  {
    v18 = v6;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v26 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = *(*(*(a1 + 40) + 8) + 40);
          v15 = [v13 assetID];
          [v14 setObject:v13 forKeyedSubscript:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v26 count:16];
      }

      while (v10);
    }

    v16 = sub_100002660();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v8 count];
      *buf = 134217984;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Found %lu WidgetInfos with missing relationships while setting ReadingNowDetails", buf, 0xCu);
    }

    v7 = v18;
  }

  else
  {
    v16 = sub_100002660();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2758(v7, v16);
    }
  }
}

uint64_t sub_1000649C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  v6 = [v5 assetID];
  if (v6)
  {
    v7 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v6];
    [v7 setReadingNowDetail:v5];
    if (v7)
    {
      v8 = sub_100002660();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updated WidgetInfo relationship while creating ReadingNowDetail.", v10, 2u);
      }
    }
  }

  return 0;
}

void sub_100065050(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a3;
  if (a2)
  {
    [NSSet setWithArray:a2];
  }

  else
  {
    +[NSSet set];
  }
  v9 = ;
  (*(v6 + 16))(v6);
}

void sub_100065400(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v6 count];
  v9 = sub_100002660();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v13[0] = 67109634;
    v13[1] = v8 != 0;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "needsReadingNowAssetTypePopulation:(%{BOOL}d) predicate %@ results %@", v13, 0x1Cu);
  }

  v11 = objc_retainBlock(*(a1 + 40));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v8 != 0, v7);
  }
}

id sub_100067A48(uint64_t a1)
{
  v2 = sub_1000023E8();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Registering event handlers", v4, 2u);
  }

  return [*(a1 + 32) _registerNotificationEventHandler];
}

void sub_100067B54(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
    v6 = sub_1000023E8();
    v4 = v6;
    if (string)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [NSString stringWithUTF8String:string];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Posting notification: %@", &v9, 0xCu);
      }

      v4 = +[NSNotificationCenter defaultCenter];
      v8 = [NSString stringWithUTF8String:string];
      [v4 postNotificationName:v8 object:0];
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2B2C(v4);
    }
  }

  else
  {
    v4 = sub_1000023E8();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2B70(v4);
    }
  }
}

void sub_1000689EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, a2, v8);
  }
}

void sub_100068B60(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, a2, v7);
  }
}

void sub_1000693BC(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = BUDynamicCast();

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v6, v9);
  }
}

void sub_10006A64C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000DE28();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Need to create these details:%@", &v7, 0xCu);
  }

  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 0, 0);
  }
}

void sub_10006A7C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10000DE28();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Got existing:%@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) readingNowDetailManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006A8F8;
  v6[3] = &unk_100241860;
  v7 = *(a1 + 40);
  [v5 getRecentBooksExcludingAssetIDs:v3 completion:v6];
}

void sub_10006A8F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_10000DE28();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Need to create these details:%@", &v13, 0xCu);
  }

  v11 = objc_retainBlock(*(a1 + 32));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, v7, v8, v9);
  }
}

void sub_10006AABC(uint64_t a1)
{
  v2 = +[BDSBookWidgetInfoMO fetchRequest];
  [v2 setResultType:2];
  v14 = @"assetID";
  v3 = [NSArray arrayWithObjects:&v14 count:1];
  [v2 setPropertiesToFetch:v3];

  v4 = [*(a1 + 32) context];
  v13 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v13];
  v6 = v13;

  if (v5)
  {
    v7 = [v5 valueForKey:@"assetID"];
    v8 = [NSSet setWithArray:v7];

    v9 = objc_retainBlock(*(a1 + 40));
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, v8);
    }
  }

  else
  {
    v11 = sub_10000DE28();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2DDC();
    }

    v12 = objc_retainBlock(*(a1 + 40));
    v8 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

void sub_10006AD30(uint64_t a1)
{
  v2 = +[BDSBookWidgetInfoMO fetchRequest];
  v3 = [NSSortDescriptor sortDescriptorWithKey:@"readingNowDetail.lastEngagedDate" ascending:0];
  v31[0] = v3;
  v4 = [NSSortDescriptor sortDescriptorWithKey:@"title" ascending:1];
  v31[1] = v4;
  v5 = [NSArray arrayWithObjects:v31 count:2];
  [v2 setSortDescriptors:v5];

  [v2 setFetchLimit:*(a1 + 48)];
  v6 = [*(a1 + 32) context];
  v27 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v27];
  v8 = v27;

  v9 = objc_alloc_init(NSMutableArray);
  if (v7)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v23 + 1) + 8 * i) getBookWidgetInfoObject];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v12);
    }

    v16 = sub_10000DE28();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v10 count];
      *buf = 134217984;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "WidgetInfoManager getInfosWithLimit success with %lu items", buf, 0xCu);
    }

    v18 = objc_retainBlock(*(a1 + 40));
    v19 = v18;
    if (v18)
    {
      v20 = v18[2];
LABEL_17:
      v20();
    }
  }

  else
  {
    v21 = sub_10000DE28();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2E44();
    }

    v22 = objc_retainBlock(*(a1 + 40));
    v19 = v22;
    if (v22)
    {
      v20 = v22[2];
      goto LABEL_17;
    }
  }
}