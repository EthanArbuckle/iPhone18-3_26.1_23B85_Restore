void sub_1E464A254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464A278(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E464A2EC(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) debugDescription];
        *buf = 138543362;
        v16 = v7;
        _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager countWithPredicate:%{public}@\\"", buf, 0xCu);
      }
    }

    v8 = objc_alloc(MEMORY[0x1E695D5E0]);
    v9 = [WeakRetained entityName];
    v10 = [v8 initWithEntityName:v9];

    [v10 setPredicate:*(a1 + 32)];
    v14 = 0;
    [v3 countForFetchRequest:v10 error:&v14];
    v11 = v14;
    [WeakRetained _logError:v11 at:@"count"];
    v12 = [WeakRetained mq_sanitizeError:v11];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E464A5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E464A810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464A82C(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E464A8A0(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) debugDescription];
        *buf = 138543362;
        v22 = v7;
        _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager cloudDataWithPredicate:%{public}@\\"", buf, 0xCu);
      }
    }

    v8 = objc_alloc(MEMORY[0x1E695D5E0]);
    v9 = [WeakRetained entityName];
    v10 = [v8 initWithEntityName:v9];

    [v10 setReturnsObjectsAsFaults:0];
    [v10 setFetchLimit:1];
    [v10 setPredicate:*(a1 + 32)];
    [v10 setSortDescriptors:*(a1 + 40)];
    v20 = 0;
    v11 = [v3 executeFetchRequest:v10 error:&v20];
    v12 = v20;
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
      v19 = v16;
      [v3 save:&v19];
      v17 = v19;

      [WeakRetained _logError:v17 at:@"mutableCloudData - save"];
      v16 = v17;
    }

    [v3 refreshObject:v14 mergeChanges:0];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E464AD58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464AD7C(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_1E464ADF4(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = BDSCloudKitDevelopmentLog();
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
        v48 = v7;
        v49 = 2114;
        v50 = v8;
        v51 = 2114;
        v52 = v10;
        v53 = 2114;
        v54 = v11;
        v55 = 2048;
        v56 = v12;
        _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager Entity: %{public}@ cloudDatasWithPredicate:%{public}@ sortDescriptors: %{public}@, has a filter: %{public}@, maximumResultCount: %lu\\"", buf, 0x34u);
      }
    }

    v13 = objc_alloc(MEMORY[0x1E695D5E0]);
    v14 = [WeakRetained entityName];
    v15 = [v13 initWithEntityName:v14];

    [v15 setFetchBatchSize:64];
    [v15 setPredicate:*(a1 + 32)];
    if (*(a1 + 40))
    {
      [v15 setSortDescriptors:?];
    }

    v45 = 0;
    v37 = v15;
    v38 = v3;
    v16 = [v3 executeFetchRequest:v15 error:&v45];
    v36 = v45;
    [WeakRetained _logError:? at:?];
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v16, "count")}];
    v39 = WeakRetained;
    v18 = [WeakRetained privacyDelegate];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v42;
LABEL_12:
      v23 = 0;
      while (1)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v41 + 1) + 8 * v23);
        v25 = *(a1 + 48);
        if (!v25 || (*(v25 + 16))(v25, *(*(&v41 + 1) + 8 * v23)))
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
          v21 = [v19 countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (v21)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    v3 = v38;
    if ([v38 hasChanges])
    {
      v40 = v36;
      [v38 save:&v40];
      v29 = v40;

      WeakRetained = v39;
      [v39 _logError:v29 at:@"cloudDatas(maximumResultCount) - save"];
    }

    else
    {
      WeakRetained = v39;
      v29 = v36;
    }

    v31 = [WeakRetained mq_sanitizeError:v29];

    v32 = *(a1 + 56);
    v33 = [WeakRetained mq_cloudSyncVersions];
    v34 = [v33 mutableCopy];
    (*(v32 + 16))(v32, v17, v34, v31);
  }

  else
  {
    v30 = BDSCloudKitLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1E47095B0();
    }

    (*(*(a1 + 56) + 16))();
  }

  v35 = *MEMORY[0x1E69E9840];
}

void sub_1E464B3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464B3FC(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_1E464B474(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  v4 = [MEMORY[0x1E698F550] shared];
  v5 = [v4 verboseLoggingEnabled];

  if (v5)
  {
    v6 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [WeakRetained entityName];
      v8 = [*(a1 + 32) debugDescription];
      *buf = 138543618;
      v39 = v7;
      v40 = 2114;
      v41 = v8;
      _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager Entity: %{public}@ cloudDatasWithPredicate:%{public}@\\"", buf, 0x16u);
    }
  }

  v9 = objc_alloc(MEMORY[0x1E695D5E0]);
  v10 = [WeakRetained entityName];
  v11 = [v9 initWithEntityName:v10];

  [v11 setFetchBatchSize:64];
  v29 = a1;
  [v11 setPredicate:*(a1 + 32)];
  v36 = 0;
  v30 = v3;
  v12 = [v3 executeFetchRequest:v11 error:&v36];
  v13 = v36;
  [WeakRetained _logError:v13 at:@"cloudDatas - fetch"];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
  v15 = [WeakRetained privacyDelegate];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        [v21 setPrivacyDelegate:v15];
        v22 = [v21 mutableCopy];
        [v22 setPrivacyDelegate:v15];
        if (v22)
        {
          [v14 addObject:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v18);
  }

  if ([v30 hasChanges])
  {
    v31 = v13;
    [v30 save:&v31];
    v23 = v31;

    [WeakRetained _logError:v23 at:@"cloudDatas - save"];
    v13 = v23;
  }

  v24 = [WeakRetained mq_sanitizeError:v13];

  v25 = *(v29 + 40);
  v26 = [WeakRetained mq_cloudSyncVersions];
  v27 = [v26 mutableCopy];
  (*(v25 + 16))(v25, v14, v27, v24);

  v28 = *MEMORY[0x1E69E9840];
}

void sub_1E464B9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464B9C8(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E464BA3C(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [MEMORY[0x1E698F550] shared];
    v5 = [v4 verboseLoggingEnabled];

    if (v5)
    {
      v6 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [WeakRetained entityName];
        v8 = [*(a1 + 32) debugDescription];
        *buf = 138543618;
        v32 = v7;
        v33 = 2114;
        v34 = v8;
        _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager Entity: %{public}@ cloudDatasWithPredicate:%{public}@\\"", buf, 0x16u);
      }
    }

    v9 = objc_alloc(MEMORY[0x1E695D5E0]);
    v10 = [WeakRetained entityName];
    v11 = [v9 initWithEntityName:v10];

    [v11 setFetchBatchSize:64];
    [v11 setPredicate:*(a1 + 32)];
    v29 = 0;
    v24 = v3;
    v12 = [v3 executeFetchRequest:v11 error:&v29];
    v13 = v29;
    [WeakRetained _logError:v13 at:@"transformedCloudDatas"];
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v12, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          v21 = (*(*(a1 + 40) + 16))();
          if (v21)
          {
            [v14 addObject:v21];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    v22 = [WeakRetained mq_sanitizeError:v13];

    (*(*(a1 + 48) + 16))();
    v3 = v24;
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1E464BFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464BFF0(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E464C064(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = [WeakRetained moc];

  if (v5)
  {
    v6 = [WeakRetained moc];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1E464C204;
    v14[3] = &unk_1E875B480;
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
    v11 = _Block_copy(*(a1 + 64));
    v12 = v11;
    if (v11)
    {
      (*(v11 + 2))(v11, 0, 0);
    }
  }
}

void sub_1E464C204(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E698F550] shared];
    v6 = [v5 verboseLoggingEnabled];

    if (!v4)
    {
      if (v6)
      {
        v19 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [*(a1 + 40) debugDescription];
          *buf = 138543362;
          v51 = v20;
          _os_log_impl(&dword_1E45E0000, v19, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager cloudDataWithPredicate:%{public}@\\"", buf, 0xCu);
        }
      }

      v21 = objc_alloc(MEMORY[0x1E695D5E0]);
      v22 = [WeakRetained entityName];
      v11 = [v21 initWithEntityName:v22];

      [v11 setReturnsObjectsAsFaults:0];
      [v11 setFetchLimit:1];
      [v11 setPredicate:*(a1 + 40)];
      v47 = 0;
      v23 = [v3 executeFetchRequest:v11 error:&v47];
      v24 = v47;
      [WeakRetained _logError:v24 at:@"resolvedCloudData - fetch (new)"];
      v25 = [v23 firstObject];
      v26 = [WeakRetained privacyDelegate];
      [v25 setPrivacyDelegate:v26];

      v27 = [WeakRetained mq_sanitizeError:v24];

      v28 = [v25 mutableCopy];
      v29 = _Block_copy(*(a1 + 72));
      v30 = v29;
      if (v29)
      {
        (*(v29 + 2))(v29, v28, v27);
      }

      goto LABEL_36;
    }

    if (v6)
    {
      v7 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 40) debugDescription];
        *buf = 138543362;
        v51 = v8;
        _os_log_impl(&dword_1E45E0000, v7, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager resolvedCloudDataForCloudData:%{public}@\\"", buf, 0xCu);
      }
    }

    v9 = objc_alloc(MEMORY[0x1E695D5E0]);
    v10 = [WeakRetained entityName];
    v11 = [v9 initWithEntityName:v10];

    [v11 setReturnsObjectsAsFaults:0];
    [v11 setFetchLimit:1];
    [v11 setPredicate:*(a1 + 40)];
    v49 = 0;
    v12 = [v3 executeFetchRequest:v11 error:&v49];
    v13 = v49;
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
          v48 = 0;
          [v3 save:&v48];
          v13 = v48;
          [WeakRetained _logError:v13 at:@"resolvedCloudData - save"];
          [WeakRetained mq_signalTransactions];
        }

        else
        {
          v13 = 0;
        }
      }

LABEL_33:
      v42 = [WeakRetained mq_sanitizeError:v13];

      v43 = [v16 mutableCopy];
      v44 = _Block_copy(*(a1 + 72));
      v45 = v44;
      if (v44)
      {
        (*(v44 + 2))(v44, v43, v42);
      }

LABEL_36:
      goto LABEL_37;
    }

    v31 = [MEMORY[0x1E698F550] shared];
    v32 = [v31 verboseLoggingEnabled];

    if (v32)
    {
      v33 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [*(a1 + 32) recordID];
        v35 = [v34 recordName];
        v36 = *(a1 + 32);
        *buf = 138543618;
        v51 = v35;
        v52 = 2112;
        v53 = v36;
        _os_log_impl(&dword_1E45E0000, v33, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager resolvedCloudDataForCloudData:%{public}@ did not find existing record.  Creating new from %@\\"", buf, 0x16u);
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
        v40 = MEMORY[0x1E695D5B8];
        v41 = [WeakRetained entityName];
        v16 = [v40 insertNewObjectForEntityForName:v41 inManagedObjectContext:v3];

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

  v17 = _Block_copy(*(a1 + 72));
  v18 = v17;
  if (v17)
  {
    (*(v17 + 2))(v17, 0, 0);
  }

LABEL_37:
  v46 = *MEMORY[0x1E69E9840];
}

void sub_1E464C9E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464CA04(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0);
  }
}

void sub_1E464CA7C(uint64_t a1)
{
  v104 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v1 = [WeakRetained moc];
  if (!v1)
  {
    v57 = _Block_copy(*(a1 + 64));
    v58 = v57;
    if (v57)
    {
      (*(v57 + 2))(v57, 0, 0, 0);
    }

    goto LABEL_81;
  }

  v66 = [WeakRetained privacyDelegate];
  v67 = [MEMORY[0x1E695DF70] array];
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = *(a1 + 32);
    v5 = objc_alloc_init(v3);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1E4650050;
    v99 = &unk_1E875B598;
    *v100 = v5;
    v6 = v5;
    [v4 enumerateObjectsUsingBlock:buf];
    v7 = [v6 componentsJoinedByString:{@", "}];

    *buf = 138543362;
    *&buf[4] = v7;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager #recordChange resolveConflictsForRecords: %{public}@", buf, 0xCu);
  }

  v74 = [*(a1 + 32) count];
  v70 = objc_opt_new();
  v69 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v79 = objc_opt_new();
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v93 objects:v103 count:16];
  if (v9)
  {
    v10 = *v94;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v94 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v93 + 1) + 8 * i);
        v13 = [v12 encryptedValuesByKey];
        v14 = [v13 objectForKeyedSubscript:@"localRecordIDEncrypted"];

        if (!v14)
        {
          v14 = [v12 valueForKey:@"localRecordID"];
          if (!v14)
          {
            v15 = BDSCloudKitLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v12;
              _os_log_error_impl(&dword_1E45E0000, v15, OS_LOG_TYPE_ERROR, "CKRecord unexpected with no local identifier: %{public}@", buf, 0xCu);
            }

            v14 = @"keyFromMyKitchenDrawer";
          }
        }

        [v79 addObject:v14];
      }

      v9 = [v8 countByEnumeratingWithState:&v93 objects:v103 count:16];
    }

    while (v9);
  }

  v68 = [objc_msgSend(WeakRetained "immutableClass")];
  v65 = [WeakRetained entityName];
  v90 = 0;
  v91[0] = &v90;
  v91[1] = 0x2020000000;
  v92 = 0;
  if (!v74)
  {
    v77 = 0;
    goto LABEL_73;
  }

  v64 = 0;
  v75 = 0;
  v77 = 0;
  v16 = 0;
  v72 = 0x7FFFFFFFFFFFFFFFLL;
  v73 = 0;
  do
  {
    context = objc_autoreleasePoolPush();
    v17 = [*(a1 + 32) objectAtIndexedSubscript:v16];
    if ((v16 & 0xF) != 0)
    {
      v18 = v77;
LABEL_20:
      v19 = [BCCloudData localIdentifierFromRecord:v17];
      v20 = [v18 objectForKeyedSubscript:v19];
      if (v20)
      {
        goto LABEL_21;
      }

      v34 = [v69 objectForKeyedSubscript:v19];
      v35 = v34 == 0;

      if (v35)
      {
        goto LABEL_36;
      }

      v20 = [v69 objectForKeyedSubscript:v19];
      v36 = BDSCloudKitLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v52 = [v17 recordID];
        v53 = [v52 recordName];
        *buf = 138544386;
        *&buf[4] = v53;
        *&buf[12] = 2160;
        *&buf[14] = 1752392040;
        *&buf[22] = 2112;
        v99 = v19;
        *v100 = 2112;
        *&v100[2] = v20;
        v101 = 2112;
        v102 = v17;
        _os_log_error_impl(&dword_1E45E0000, v36, OS_LOG_TYPE_ERROR, "BCCloudDataManager resolveConflictsForRecords:%{public}@ Already seen (localId: %{mask.hash}@) %@. Updating from %@", buf, 0x34u);
      }

      if (v20)
      {
LABEL_21:
        [v20 setPrivacyDelegate:v66];
        [v20 resolveConflictsFromRecord:v17 withResolvers:*(a1 + 40)];
      }

      else
      {
LABEL_36:
        v37 = [*(a1 + 48) dataMapper];
        v38 = v37 == 0;

        if (v38)
        {
          v40 = [objc_alloc(objc_msgSend(WeakRetained "mutableClass"))];
          if (!v40)
          {
LABEL_52:

            v20 = 0;
            goto LABEL_23;
          }
        }

        else
        {
          v39 = [*(a1 + 48) dataMapper];
          v40 = [v39 cloudDataFromRecord:v17];

          if (!v40)
          {
            goto LABEL_52;
          }
        }

        v41 = [*(a1 + 48) cloudKitController];
        v42 = [v41 configuration];
        v43 = [v42 shouldArchiveData:v40];

        if (!v43)
        {
          v47 = BDSCloudKitLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v54 = [v17 recordID];
            v55 = [v54 recordName];
            *buf = 138543618;
            *&buf[4] = v55;
            *&buf[12] = 2112;
            *&buf[14] = v17;
            _os_log_error_impl(&dword_1E45E0000, v47, OS_LOG_TYPE_ERROR, "BCCloudDataManager resolveConflictsForRecords:%{public}@ configuration did not allow creation of new record from %@", buf, 0x16u);
          }

          goto LABEL_52;
        }

        v44 = BDSCloudKitLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v17 recordID];
          v46 = [v45 recordName];
          *buf = 138544130;
          *&buf[4] = v46;
          *&buf[12] = 2160;
          *&buf[14] = 1752392040;
          *&buf[22] = 2112;
          v99 = v19;
          *v100 = 2112;
          *&v100[2] = v17;
          _os_log_impl(&dword_1E45E0000, v44, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager resolveConflictsForRecords:%{public}@ (localId: %{mask.hash}@) did not find existing record. Creating new from %@", buf, 0x2Au);
        }

        v20 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:v65 inManagedObjectContext:v1];
        [v69 setObject:v20 forKeyedSubscript:v19];
        [v20 setPrivacyDelegate:v66];
        [v40 setPrivacyDelegate:v66];
        [v20 configureFromCloudData:v40 withMergers:*(a1 + 56)];

        if (!v20)
        {
LABEL_23:
          if (v16 == v75 + v72 - 1)
          {
            if (!v73 && [v1 hasChanges])
            {
              v85 = 0;
              [v1 save:&v85];
              v21 = v85;
              if (v21)
              {
                v22 = v21;
                [WeakRetained _logError:v21 at:@"resolveConflicts - save batch"];
                [v67 removeObjectsInArray:v70];
                v64 = 1;
                v23 = 4;
                v73 = v22;
LABEL_63:

                v77 = v18;
                goto LABEL_64;
              }

              v64 = 1;
            }

            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v48 = v70;
            v49 = [v48 countByEnumeratingWithState:&v81 objects:v97 count:16];
            if (v49)
            {
              v50 = *v82;
              do
              {
                for (j = 0; j != v49; ++j)
                {
                  if (*v82 != v50)
                  {
                    objc_enumerationMutation(v48);
                  }

                  [v1 refreshObject:*(*(&v81 + 1) + 8 * j) mergeChanges:0];
                }

                v49 = [v48 countByEnumeratingWithState:&v81 objects:v97 count:16];
              }

              while (v49);
            }

            [v48 removeAllObjects];
            [v69 removeAllObjects];
          }

          v23 = 0;
          goto LABEL_63;
        }
      }

      [v67 addObject:v20];
      [v70 addObject:v20];
      goto LABEL_23;
    }

    v24 = objc_autoreleasePoolPush();
    v25 = v74 - v16;
    if ((v74 - v16) >= 0x10)
    {
      v25 = 16;
    }

    v75 = v25;
    v26 = objc_alloc(MEMORY[0x1E695D5E0]);
    v27 = [WeakRetained entityName];
    v28 = [v26 initWithEntityName:v27];

    v29 = [v79 subarrayWithRange:{v16, v75}];
    v30 = [v29 mutableCopy];

    [v30 removeObject:@"keyFromMyKitchenDrawer"];
    v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", v68, v30];
    [v28 setPredicate:v31];

    v89 = v73;
    v32 = [v1 executeFetchRequest:v28 error:&v89];
    v33 = v89;

    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = sub_1E464D708;
    v86[3] = &unk_1E875B4D0;
    v87 = v68;
    v88 = &v90;
    v18 = [v32 bds_dictionaryUsingPropertyAsKey:v87 uniquingKeysWith:v86];

    if (v33)
    {
      [WeakRetained _logError:v33 at:@"resolveConflicts - fetch"];
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    objc_autoreleasePoolPop(v24);
    if (!v33)
    {
      v72 = v16;
      v73 = 0;
      goto LABEL_20;
    }

    v77 = v18;
    v72 = v16;
    v73 = v33;
LABEL_64:

    objc_autoreleasePoolPop(context);
    if (v23)
    {
      break;
    }

    ++v16;
  }

  while (v16 != v74);
  v56 = v73;
  if ((v64 & (v73 == 0)) != 1)
  {
    goto LABEL_74;
  }

  [WeakRetained mq_incrementCloudVersion];
  if ([v1 hasChanges])
  {
    v80 = 0;
    [v1 save:&v80];
    v56 = v80;
    [WeakRetained _logError:v56 at:@"resolveConflicts - save remaining"];
    goto LABEL_74;
  }

LABEL_73:
  v56 = 0;
LABEL_74:
  if (*(v91[0] + 24))
  {
    v59 = BDSCloudKitLog();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
    {
      sub_1E47095E4(v65, v91);
    }
  }

  [WeakRetained mq_signalTransactions];
  v60 = [WeakRetained mq_sanitizeError:v56];

  v61 = _Block_copy(*(a1 + 64));
  v62 = v61;
  if (v61)
  {
    (*(v61 + 2))(v61, 1, v67, v60);
  }

  _Block_object_dispose(&v90, 8);
LABEL_81:

  v63 = *MEMORY[0x1E69E9840];
}

id sub_1E464D708(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 valueForKey:*(a1 + 32)];
  v8 = BDSCloudKitLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 141558786;
    v12 = 1752392040;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v5;
    _os_log_error_impl(&dword_1E45E0000, v8, OS_LOG_TYPE_ERROR, "BCCloudDataManager resolveConflictsForRecords: Encountered duplicates for %{mask.hash}@, entry=%@, existing=%@", &v11, 0x2Au);
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

void sub_1E464D9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464D9E8(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E464DA5C(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = BDSCloudKitLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1E4709664(a1, v4, v5);
    }

    v6 = objc_alloc(MEMORY[0x1E695D5E0]);
    v7 = [WeakRetained entityName];
    v8 = [v6 initWithEntityName:v7];

    v9 = [*(a1 + 32) valueForKey:@"recordName"];
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"saltedHashedID IN %@", v9];
    [v8 setPredicate:v10];

    v31 = 0;
    v11 = [v3 executeFetchRequest:v8 error:&v31];
    v12 = v31;
    [WeakRetained _logError:v12 at:@"resolveConflicts - failedRecordIDs - fetch"];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v27 + 1) + 8 * i) setSystemFields:0];
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v15);
    }

    if ([v3 hasChanges])
    {
      v26 = v12;
      [v3 save:&v26];
      v18 = v26;

      [WeakRetained _logError:v18 at:@"resolveConflicts - failedRecordIDs - save"];
      v19 = [WeakRetained syncManager];
      [v19 signalSyncToCK];

      v12 = v18;
    }

    v20 = [WeakRetained mq_sanitizeError:v12];

    v21 = _Block_copy(*(a1 + 40));
    v22 = v21;
    if (v21)
    {
      (*(v21 + 2))(v21, 1, v20);
    }
  }

  else
  {
    v23 = _Block_copy(*(a1 + 40));
    v24 = v23;
    if (v23)
    {
      (*(v23 + 2))(v23, 0, 0);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1E464E23C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1E464E268(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1E47096D8(a1);
  }

  v3 = _Block_copy(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, 0, 0, 0);
  }
}

void sub_1E464E2EC(uint64_t a1)
{
  v101 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = [WeakRetained mq_cloudSyncVersions];
    v89 = 0;
    v5 = [*(a1 + 32) cloudVersion];
    v70 = v4;
    if (v5 <= [v4 cloudVersion])
    {
      v11 = [*(a1 + 32) historyToken];
      v89 = [*(a1 + 32) historyTokenOffset];
    }

    else
    {
      v6 = BDSCloudKitLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 40) entityName];
        v8 = v3;
        v9 = *(a1 + 32);
        v10 = [v4 mutableCopy];
        *buf = 138543874;
        v91 = v7;
        v92 = 2114;
        v93 = v9;
        v3 = v8;
        v94 = 2114;
        v95 = v10;
        _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ getChangesSince -- About to reset historyToken, cloudSyncVersions:%{public}@, currentSyncVersions:%{public}@", buf, 0x20u);
      }

      v11 = 0;
    }

    v16 = (a1 + 40);
    v15 = *(a1 + 40);
    v88 = 0;
    v17 = [v15 _fetchHistoryAfterToken:v11 inMoc:v3 error:&v88];
    v18 = v88;
    if (!v18)
    {
      goto LABEL_21;
    }

    v19 = v18;
    if (![*v16 _isTokenInvalidError:v18])
    {
      goto LABEL_16;
    }

    v20 = BDSCloudKitLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v63 = [*(a1 + 40) entityName];
      v64 = WeakRetained;
      v65 = v3;
      v66 = *(a1 + 32);
      v72 = v17;
      v67 = [v70 mutableCopy];
      *buf = 138544130;
      v91 = v63;
      v92 = 2114;
      v93 = v19;
      v94 = 2114;
      v95 = v66;
      v3 = v65;
      WeakRetained = v64;
      v96 = 2114;
      v97 = v67;
      _os_log_fault_impl(&dword_1E45E0000, v20, OS_LOG_TYPE_FAULT, "BCCloudDataManager %{public}@ getChangesSince -- fetchHistoryAfterToken encountered error: %{public}@. About to reset historyToken, cloudSyncVersions:%{public}@, currentSyncVersions:%{public}@", buf, 0x2Au);

      v17 = v72;
    }

    v89 = 0;
    v21 = *v16;
    v87 = 0;
    v22 = [v21 _fetchHistoryAfterToken:0 inMoc:v3 error:&v87];
    v19 = v87;

    v11 = 0;
    v17 = v22;
    if (v19)
    {
LABEL_16:
      v71 = v17;
      v23 = BDSCloudKitLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1E470976C((a1 + 40));
      }

      [WeakRetained _logError:v19 at:@"getChangesSince - fetchHistory error"];
      v24 = [WeakRetained mq_sanitizeError:v19];

      v25 = _Block_copy(*(a1 + 48));
      v26 = v25;
      if (v25)
      {
        (*(v25 + 2))(v25, 0, 0, 0, v24, 0);
      }

      v27 = 0;
      v14 = v70;
    }

    else
    {
LABEL_21:
      v69 = v11;
      v77 = [MEMORY[0x1E695DFA8] set];
      v76 = [MEMORY[0x1E695DFA8] set];
      objc_opt_class();
      v71 = v17;
      if (objc_opt_isKindOfClass())
      {
        v28 = v17;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        obj = [v28 result];
        v29 = [obj countByEnumeratingWithState:&v83 objects:v100 count:16];
        if (v29)
        {
          v30 = v29;
          v68 = v28;
          v74 = v3;
          v31 = 0;
          v78 = 0;
          v32 = *v84;
          v33 = 0x1E695D000uLL;
          while (2)
          {
            v34 = 0;
            v73 = v30;
            do
            {
              if (*v84 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v83 + 1) + 8 * v34);
              v36 = objc_autoreleasePoolPush();
              if ([WeakRetained signalDataChangedTransaction] && v31 > 0x1F)
              {
                objc_autoreleasePoolPop(v36);
                v48 = 1;
                goto LABEL_38;
              }

              v37 = *(v33 + 1712);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v38 = v35;
                v39 = a1;
                v40 = *(a1 + 64);
                v41 = WeakRetained;
                v42 = [WeakRetained privacyDelegate];
                v81 = 0;
                v82 = 0;
                v43 = [v38 bds_atOffset:&v89 getAtMost:32 - v31 moc:v74 entityClass:v40 privacyDelegate:v42 updated:&v82 tombstones:&v81];
                v44 = v82;
                v45 = v81;

                if (v43)
                {
                  v46 = [v38 token];

                  v89 = 0;
                  v78 = v46;
                }

                [v76 addObjectsFromArray:v44];
                [v77 addObjectsFromArray:v45];
                v47 = [v76 count];
                v31 = [v77 count] + v47;

                a1 = v39;
                WeakRetained = v41;
                v30 = v73;
                v33 = 0x1E695D000;
              }

              objc_autoreleasePoolPop(v36);
              ++v34;
            }

            while (v30 != v34);
            v30 = [obj countByEnumeratingWithState:&v83 objects:v100 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }

          v48 = 0;
LABEL_38:
          v3 = v74;
          v49 = v78;
          v28 = v68;
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

      v14 = v70;
      v50 = [v70 syncVersion];
      if (v50 != [v70 cloudVersion])
      {
        [v70 setSyncVersion:{objc_msgSend(v70, "cloudVersion")}];
      }

      if (v49)
      {
        [v70 setHistoryToken:v49];
      }

      [v70 setHistoryTokenOffset:v89];
      if ([v70 hasChanges])
      {
        v51 = [WeakRetained moc];
        v80 = 0;
        [v51 save:&v80];
        v52 = v80;

        [WeakRetained _logError:v52 at:@"getChangesSince - save"];
      }

      v53 = [v70 mutableCopy];
      v54 = BDSCloudKitLog();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = [WeakRetained entityName];
        v56 = [v76 count];
        *buf = 138544386;
        v91 = v55;
        v92 = 2048;
        v93 = v56;
        v94 = 2112;
        v95 = v76;
        v96 = 2114;
        v97 = v53;
        v98 = 1024;
        v99 = v48;
        _os_log_impl(&dword_1E45E0000, v54, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ getChangesSince returning changedObjects:%lu (%@) currentSyncVersions: %{public}@, fetchAgain:%d", buf, 0x30u);
      }

      v79 = v49;

      v57 = BDSCloudKitLog();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = [WeakRetained entityName];
        v59 = [v77 count];
        *buf = 138544386;
        v91 = v58;
        v92 = 2048;
        v93 = v59;
        v94 = 2112;
        v95 = v77;
        v96 = 2114;
        v97 = v53;
        v98 = 1024;
        v99 = v48;
        _os_log_impl(&dword_1E45E0000, v57, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %{public}@ getChangesSince returning deletedObjects:%lu (%@) currentSyncVersions: %{public}@, fetchAgain:%d", buf, 0x30u);
      }

      v24 = [WeakRetained mq_sanitizeError:0];
      v60 = _Block_copy(*(a1 + 48));
      v61 = v60;
      v26 = v77;
      if (v60)
      {
        (*(v60 + 2))(v60, v76, v77, v53, v24, v48);
      }

      v11 = v69;
      v27 = v79;
    }
  }

  else
  {
    v12 = BDSCloudKitLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1E47097F8(a1);
    }

    v13 = _Block_copy(*(a1 + 48));
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0, 0, 0, 0, 0);
    }
  }

  kdebug_trace();
  v62 = *MEMORY[0x1E69E9840];
}

void sub_1E464ED24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E464ED48(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1E47092BC();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0);
  }
}

void sub_1E464EDBC(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = BDSCloudKitLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [WeakRetained entityName];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_1E45E0000, v4, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager %@ #dissociateCloudData", &buf, 0xCu);
    }

    v6 = MEMORY[0x1E695D5E0];
    v7 = [WeakRetained entityName];
    v8 = [v6 fetchRequestWithEntityName:v7];

    [v8 setFetchBatchSize:20];
    v28 = 0;
    v9 = [v3 executeFetchRequest:v8 error:&v28];
    v10 = v28;
    [WeakRetained _logError:v10 at:@"dissociateCloudData - fetch"];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x2020000000;
    v31 = v10 == 0;
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = sub_1E464F0D4;
    v24 = &unk_1E875B548;
    v26 = WeakRetained;
    p_buf = &buf;
    v25 = v3;
    [v9 bds_traverseBatchesOfSize:20 block:&v21];
    if ([WeakRetained signalDataChangedTransaction])
    {
      v11 = [WeakRetained cloudKitController];
      v12 = [v11 transactionManager];
      v13 = [WeakRetained entityName];
      v14 = [WeakRetained notificationName];
      [v12 signalDataChangeTransactionForEntityName:v13 notificationName:v14];
    }

    v15 = [WeakRetained mq_sanitizeError:v10];

    v16 = _Block_copy(*(a1 + 32));
    v17 = v16;
    if (v16)
    {
      (*(v16 + 2))(v16, *(*(&buf + 1) + 24), v15);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v18 = _Block_copy(*(a1 + 32));
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18, 0, 0);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1E464F0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1E464F0D4(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        [v8 setSyncGeneration:0];
        [v8 setValue:0 forKey:@"saltedHashedID"];
        [v8 setSystemFields:0];
        [v8 setCkSystemFields:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  if ([*(a1 + 32) hasChanges])
  {
    v9 = *(a1 + 32);
    v23 = 0;
    [v9 save:&v23];
    v10 = v23;
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 24);
    if (v10)
    {
      v12 = 0;
    }

    *(v11 + 24) = v12;
    [*(a1 + 40) _logError:v10 at:@"dissociateCloudData - save"];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(a1 + 32) refreshObject:*(*(&v19 + 1) + 8 * j) mergeChanges:{0, v19}];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1E464F4E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_1E464F514(uint64_t a1)
{
  v2 = BDSCloudKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E45E0000, v2, OS_LOG_TYPE_ERROR, "No managed object context! #hasSaltChangedWithCompletion", v5, 2u);
  }

  v3 = _Block_copy(*(a1 + 32));
  if (v3)
  {
    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1002 userInfo:0];
    v3[2](v3, 0, v4);
  }
}

void sub_1E464F5D8(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained moc];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695D5E0]);
    v5 = [WeakRetained entityName];
    v6 = [v4 initWithEntityName:v5];

    [v6 setReturnsObjectsAsFaults:0];
    [v6 setFetchLimit:1];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"syncGeneration >= 1"];
    [v6 setPredicate:v7];

    v8 = [MEMORY[0x1E698F550] shared];
    v9 = [v8 verboseLoggingEnabled];

    if (v9)
    {
      v10 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = v6;
        _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_DEFAULT, "\\BCCloudDataManager hasSaltChangedWithCompletion:%{public}@\\"", buf, 0xCu);
      }
    }

    v24 = 0;
    v11 = [v3 executeFetchRequest:v6 error:&v24];
    v12 = v24;
    if ([v11 count])
    {
      v13 = [v11 firstObject];
      v14 = [WeakRetained privacyDelegate];
      [v13 setPrivacyDelegate:v14];

      v15 = [v13 hasValidSalt] ^ 1;
      v16 = [MEMORY[0x1E698F550] shared];
      v17 = [v16 verboseLoggingEnabled];

      if (v17)
      {
        v18 = BDSCloudKitDevelopmentLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v26 = v13;
          v27 = 1024;
          v28 = v15;
          _os_log_impl(&dword_1E45E0000, v18, OS_LOG_TYPE_DEFAULT, "\\Testing with %@  %{BOOL}d\\"", buf, 0x12u);
        }
      }

      v19 = _Block_copy(*(a1 + 32));
      v20 = v19;
      if (v19)
      {
        (*(v19 + 2))(v19, v15, 0);
      }
    }

    else
    {
      v13 = _Block_copy(*(a1 + 32));
      if (!v13)
      {
LABEL_20:

        goto LABEL_21;
      }

      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1003 userInfo:0];
      (v13)[2](v13, 0, v20);
    }

    goto LABEL_20;
  }

  v21 = BDSCloudKitLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = [WeakRetained entityName];
    *buf = 138412290;
    v26 = v22;
    _os_log_impl(&dword_1E45E0000, v21, OS_LOG_TYPE_ERROR, "BCCloudDataManager %@ #hasSaltChangedWithCompletion no moc", buf, 0xCu);
  }

  v6 = _Block_copy(*(a1 + 32));
  if (v6)
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BDSErrorDomain" code:1002 userInfo:0];
    (*(v6 + 2))(v6, 0, v12);
LABEL_21:
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1E464FB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1E464FB48(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained moc];
  if (v2)
  {
    v3 = BDSCloudKitLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1E470988C(WeakRetained);
    }

    v4 = objc_alloc(MEMORY[0x1E695D5E0]);
    v5 = [WeakRetained entityName];
    v6 = [v4 initWithEntityName:v5];

    [v6 setFetchBatchSize:64];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"editGeneration > syncGeneration"];
    [v6 setPredicate:v7];

    v32 = 0;
    v8 = [v2 executeFetchRequest:v6 error:&v32];
    v9 = v32;
    [WeakRetained _logError:v9 at:@"diagnosticDirtyCloudDataInfos"];
    if ([v8 count])
    {
      v24 = v9;
      v25 = v6;
      v10 = BDSCloudKitLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [WeakRetained entityName];
        v12 = [v8 count];
        *buf = 138412546;
        v35 = v11;
        v36 = 2048;
        v37 = v12;
        _os_log_impl(&dword_1E45E0000, v10, OS_LOG_TYPE_DEFAULT, "BCCloudDataManager diagnosticDirtyCloudDataInfos %@, returning %lu results", buf, 0x16u);
      }

      v26 = WeakRetained;

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v29;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v28 + 1) + 8 * i);
            v19 = [v18 identifier];
            objc_opt_class();
            v20 = [v18 valueForKey:@"saltedHashedID"];
            v21 = BUDynamicCast();

            v22 = [[BDSCloudSyncDiagnosticCloudDataInfo alloc] initWithIdentifier:v19 saltedHashedID:v21];
            [*(*(*(a1 + 32) + 8) + 40) addObject:v22];
          }

          v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v15);
      }

      WeakRetained = v26;
      v6 = v25;
      v9 = v24;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1E4650050(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v4 recordID];
  v6 = [v5 recordName];
  v7 = [v4 recordChangeTag];

  v8 = [v3 stringWithFormat:@"%@-%@", v6, v7];

  [*(a1 + 32) addObject:v8];
}

void sub_1E4650124(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t sub_1E465014C()
{
  v1 = *v0;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  return sub_1E470B91C();
}

uint64_t sub_1E4650194()
{
  v1 = *v0;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  return sub_1E470B91C();
}

uint64_t sub_1E46501D8()
{
  if (*v0)
  {
    result = 0x656E654774696465;
  }

  else
  {
    result = 0x6174614473796164;
  }

  *v0;
  return result;
}

uint64_t sub_1E4650220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6174614473796164 && a2 == 0xE800000000000000;
  if (v6 || (sub_1E470B84C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E654774696465 && a2 == 0xEE006E6F69746172)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E470B84C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4650310(uint64_t a1)
{
  v2 = sub_1E46505C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E465034C(uint64_t a1)
{
  v2 = sub_1E46505C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _ReadingHistoryUpdateProperties.encode(to:)(void *a1)
{
  v4 = sub_1E4650534(&qword_1ECF74160, &qword_1E471AF40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  v10 = *v1;
  v13 = v1[1];
  v11 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E46505C0();

  sub_1E470B93C();
  v16 = v10;
  v15 = 0;
  sub_1E4650534(&qword_1ECF74170, &qword_1E471AF48);
  sub_1E4650614();
  sub_1E470B7FC();

  if (!v2)
  {
    v14 = 1;
    sub_1E470B7EC();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1E4650534(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_1E465057C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E46505C0()
{
  result = qword_1ECF74168;
  if (!qword_1ECF74168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74168);
  }

  return result;
}

unint64_t sub_1E4650614()
{
  result = qword_1ECF74178;
  if (!qword_1ECF74178)
  {
    sub_1E46506D0(&qword_1ECF74170, &qword_1E471AF48);
    sub_1E4650A10(&qword_1ECF74180, MEMORY[0x1E6969530]);
    sub_1E4650718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74178);
  }

  return result;
}

uint64_t sub_1E46506D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E4650718()
{
  result = qword_1ECF74188;
  if (!qword_1ECF74188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74188);
  }

  return result;
}

uint64_t _ReadingHistoryUpdateProperties.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1E4650534(&qword_1ECF74190, &qword_1E471AF50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15[-v9];
  v11 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E46505C0();
  sub_1E470B92C();
  if (v2)
  {
    return sub_1E4658A0C(a1);
  }

  sub_1E4650534(&qword_1ECF74170, &qword_1E471AF48);
  v15[15] = 0;
  sub_1E4650954();
  sub_1E470B78C();
  v12 = v16;
  v15[14] = 1;
  v13 = sub_1E470B77C();
  (*(v6 + 8))(v10, v5);
  *a2 = v12;
  a2[1] = v13;

  sub_1E4658A0C(a1);
}

unint64_t sub_1E4650954()
{
  result = qword_1ECF74198;
  if (!qword_1ECF74198)
  {
    sub_1E46506D0(&qword_1ECF74170, &qword_1E471AF48);
    sub_1E4650A10(&qword_1ECF741A0, MEMORY[0x1E6969530]);
    sub_1E4650A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74198);
  }

  return result;
}

uint64_t sub_1E4650A10(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4650A58()
{
  result = qword_1ECF741A8;
  if (!qword_1ECF741A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF741A8);
  }

  return result;
}

uint64_t ReadingHistoryUpdate.value.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate_value + 8);
  *a1 = *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate_value);
  a1[1] = v2;
}

id ReadingHistoryUpdate.__allocating_init(value:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  v5 = a1[1];
  *&v3[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
  v6 = &v3[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  *v6 = v4;
  *(v6 + 1) = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ReadingHistoryUpdate.init(value:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = a1[1];
  *&v1[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
  v6 = &v1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  *v6 = v4;
  *(v6 + 1) = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t ReadingHistoryUpdate.__allocating_init(days:crdtContext:editGeneration:)(uint64_t a1, void *a2, uint64_t a3)
{
  v135 = a3;
  v155 = a2;
  v4 = sub_1E470AB3C();
  v164 = *(v4 - 8);
  v5 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for ReadingHistoryDay(0);
  v143 = *(v158 - 8);
  v9 = *(v143 + 64);
  v11 = MEMORY[0x1EEE9AC00](v158, v10);
  v148 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v165 = &v134 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v142 = &v134 - v17;
  v18 = sub_1E4709CCC();
  v166 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v147 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v137 = &v134 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v134 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v141 = &v134 - v32;
  v33 = sub_1E4650534(&unk_1ECF741C0, &qword_1E471AF58);
  v34 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v33 - 8, v35);
  v38 = &v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v134 - v40;
  v42 = *(a1 + 16);
  v43 = sub_1E4650A10(&qword_1ECF75D50, MEMORY[0x1E6969530]);
  v138 = MEMORY[0x1E6915B80](v42, v18, MEMORY[0x1E6969080], v43);
  v45 = 0;
  v46 = 0;
  v145 = a1;
  v47 = a1;
  v48 = v30;
  v49 = *(v47 + 64);
  v139 = v47 + 64;
  v50 = 1 << *(v47 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & v49;
  v53 = (v50 + 63) >> 6;
  v162 = (v19 + 32);
  v163 = (v19 + 16);
  v153 = *MEMORY[0x1E6995288];
  v152 = (v164 + 104);
  v151 = (v164 + 8);
  v144 = v19;
  v54 = (v19 + 8);
  v55 = v8;
  v150 = v54;
  *&v44 = 136315394;
  v140 = v44;
  v154 = v4;
  v160 = v41;
  v161 = v8;
  v156 = v38;
  v157 = v48;
  v149 = v53;
  while (2)
  {
    v56 = v45;
    if (v52)
    {
      while (1)
      {
        v159 = v46;
        v58 = v56;
LABEL_16:
        v61 = __clz(__rbit64(v52));
        v52 &= v52 - 1;
        v62 = v61 | (v58 << 6);
        v63 = v145;
        v64 = v144;
        (*(v144 + 16))(v141, *(v145 + 48) + *(v144 + 72) * v62, v166);
        v65 = v142;
        sub_1E4651918(*(v63 + 56) + *(v143 + 72) * v62, v142);
        v66 = sub_1E4650534(&qword_1ECF741D0, &unk_1E471AF60);
        v67 = *(v66 + 48);
        v38 = v156;
        (*(v64 + 32))();
        sub_1E465197C(v65, &v38[v67]);
        (*(*(v66 - 8) + 56))(v38, 0, 1, v66);
        v60 = v58;
        v48 = v157;
        v46 = v159;
        v41 = v160;
        v55 = v161;
LABEL_17:
        sub_1E46574C0(v38, v41, &unk_1ECF741C0, &qword_1E471AF58);
        v68 = sub_1E4650534(&qword_1ECF741D0, &unk_1E471AF60);
        if ((*(*(v68 - 8) + 48))(v41, 1, v68) == 1)
        {

          v128 = v136;
          v129 = objc_allocWithZone(v136);
          *&v129[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
          v130 = &v129[OBJC_IVAR___BDSReadingHistoryUpdate_value];
          v131 = v135;
          *v130 = v138;
          v130[1] = v131;
          v172.receiver = v129;
          v172.super_class = v128;
          v132 = objc_msgSendSuper2(&v172, sel_init);

          return v132;
        }

        v164 = v60;
        v69 = *(v68 + 48);
        v70 = v48;
        v71 = v166;
        (*v162)(v48, v41, v166);
        sub_1E465197C(&v41[v69], v165);
        v72 = v154;
        (*v152)(v55, v153, v154);
        sub_1E4650A10(&qword_1ECF741D8, type metadata accessor for ReadingHistoryDay);
        v73 = sub_1E470ABAC();
        if (!v46)
        {
          break;
        }

        (*v151)(v55, v72);
        v75 = sub_1E470B2AC();
        if (qword_1EE2ADC90 != -1)
        {
          swift_once();
        }

        v76 = qword_1EE2ADC98;
        v77 = v147;
        (*v163)(v147, v70, v71);
        v78 = v165;
        v79 = v148;
        sub_1E4651918(v165, v148);
        if (os_log_type_enabled(v76, v75))
        {
          v80 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          v171[0] = v159;
          *v80 = v140;
          sub_1E4650A10(&qword_1ECF741E0, MEMORY[0x1E6969530]);
          v81 = sub_1E470B81C();
          v146 = v75;
          v82 = v81;
          v84 = v83;
          v85 = *v150;
          (*v150)(v77, v166);
          v86 = sub_1E4654D04(v82, v84, v171);

          *(v80 + 4) = v86;
          *(v80 + 12) = 2080;
          v168 = sub_1E470AD8C();
          v169 = sub_1E470B81C();
          v170 = v87;
          MEMORY[0x1E6915D10](47, 0xE100000000000000);
          v88 = *(v158 + 20);
          sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
          sub_1E470A62C();
          v167 = v168;
          v89 = sub_1E470B81C();
          MEMORY[0x1E6915D10](v89);

          v90 = v169;
          v91 = v170;
          sub_1E4654824(v79);
          v92 = sub_1E4654D04(v90, v91, v171);
          v38 = v156;

          *(v80 + 14) = v92;
          _os_log_impl(&dword_1E45E0000, v76, v146, "ReadingHistoryUpdate: Failed to serialize entry for %s: %s", v80, 0x16u);
          v93 = v159;
          swift_arrayDestroy();
          v48 = v157;
          MEMORY[0x1E6917530](v93, -1, -1);
          MEMORY[0x1E6917530](v80, -1, -1);
          sub_1E4654824(v78);
          v85(v48, v166);
          v46 = 0;
          v56 = v164;
          v41 = v160;
          v55 = v161;
          v53 = v149;
          if (!v52)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_1E4654824(v79);
          v57 = *v150;
          (*v150)(v77, v71);
          sub_1E4654824(v78);
          v57(v70, v71);
          v46 = 0;
          v56 = v164;
          v41 = v160;
          v55 = v161;
          v53 = v149;
          v48 = v70;
          if (!v52)
          {
            goto LABEL_8;
          }
        }
      }

      v95 = v73;
      v96 = v71;
      v97 = v74;
      (*v151)(v55, v72);
      v98 = *v163;
      v99 = v137;
      (*v163)(v137, v70, v96);
      v100 = v95;
      v101 = v97;
      sub_1E46552AC(v95, v97);
      v102 = v138;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v169 = v102;
      v104 = sub_1E4655300(v99);
      v106 = *(v102 + 16);
      v107 = (v105 & 1) == 0;
      v108 = __OFADD__(v106, v107);
      v109 = v106 + v107;
      if (v108)
      {
        goto LABEL_37;
      }

      v110 = v105;
      if (*(v102 + 24) >= v109)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v127 = v104;
          sub_1E46571E0();
          v104 = v127;
        }
      }

      else
      {
        sub_1E4655538(v109, isUniquelyReferenced_nonNull_native);
        v104 = sub_1E4655300(v137);
        if ((v110 & 1) != (v111 & 1))
        {
          goto LABEL_39;
        }
      }

      v45 = v164;
      v159 = 0;
      v112 = v169;
      v138 = v169;
      if (v110)
      {
        v113 = (*(v169 + 56) + 16 * v104);
        v114 = *v113;
        v115 = v113[1];
        *v113 = v100;
        v113[1] = v101;
        sub_1E465746C(v114, v115);
        sub_1E465746C(v100, v101);
        v116 = *v150;
        v117 = v166;
        (*v150)(v137, v166);
        sub_1E4654824(v165);
        v48 = v157;
        v116(v157, v117);
        v41 = v160;
        v55 = v161;
        v38 = v156;
        v53 = v149;
        v46 = v159;
        continue;
      }

      *(v169 + 8 * (v104 >> 6) + 64) |= 1 << v104;
      v118 = v144;
      v119 = v104;
      v120 = v137;
      v121 = v166;
      v98((*(v112 + 48) + *(v144 + 72) * v104), v137, v166);
      v122 = (*(v138 + 56) + 16 * v119);
      v123 = v138;
      *v122 = v100;
      v122[1] = v101;
      sub_1E465746C(v100, v101);
      v124 = *(v118 + 8);
      (v124)(v120, v121);
      sub_1E4654824(v165);
      v48 = v157;
      v124();
      v125 = *(v123 + 16);
      v108 = __OFADD__(v125, 1);
      v126 = v125 + 1;
      if (!v108)
      {
        *(v123 + 16) = v126;
        v41 = v160;
        v55 = v161;
        v38 = v156;
        v53 = v149;
        v45 = v164;
        v46 = v159;
        continue;
      }
    }

    else
    {
LABEL_8:
      if (v53 <= v56 + 1)
      {
        v59 = v56 + 1;
      }

      else
      {
        v59 = v53;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          break;
        }

        if (v58 >= v53)
        {
          v94 = sub_1E4650534(&qword_1ECF741D0, &unk_1E471AF60);
          (*(*(v94 - 8) + 56))(v38, 1, 1, v94);
          v52 = 0;
          goto LABEL_17;
        }

        v52 = *(v139 + 8 * v58);
        ++v56;
        if (v52)
        {
          v159 = v46;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
    }

    break;
  }

  __break(1u);
LABEL_39:
  result = sub_1E470B86C();
  __break(1u);
  return result;
}

uint64_t sub_1E4651918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryDay(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E465197C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryDay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ReadingHistoryUpdate.days.getter()
{
  v1 = OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days;
  if (*(v0 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days))
  {
    v2 = *(v0 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days);
  }

  else
  {
    v2 = sub_1E4651AD8(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E4651A48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = ReadingHistoryUpdate.days.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1E4651A74(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days);
  *(*a2 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days) = *a1;
}

uint64_t ReadingHistoryUpdate.days.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days);
  *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days) = a1;
}

uint64_t sub_1E4651AD8(uint64_t a1)
{
  v2 = type metadata accessor for ReadingHistoryDay(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v134 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v133 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v136 = &v132 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v132 - v16;
  v18 = sub_1E4709CCC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v145 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v137 = &v132 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v132 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v141 = &v132 - v32;
  v33 = sub_1E4650534(&qword_1ECF741F0, &qword_1E471AF70);
  v34 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v33 - 8, v35);
  v151 = &v132 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v38);
  v150 = &v132 - v39;
  v40 = *(a1 + OBJC_IVAR___BDSReadingHistoryUpdate_value);
  v41 = *(v40 + 16);
  v42 = sub_1E4650A10(&qword_1ECF75D50, MEMORY[0x1E6969530]);
  v157 = v2;
  v138 = MEMORY[0x1E6915B80](v41, v18, v2, v42);
  v43 = *(v40 + 64);
  v139 = v40 + 64;
  v44 = 1 << *(v40 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v43;
  v47 = (v44 + 63) >> 6;
  v155 = (v19 + 32);
  v156 = (v19 + 16);
  v142 = v19;
  v148 = (v19 + 8);
  v149 = (v3 + 56);
  v48 = v30;
  v132 = v3;
  v135 = (v3 + 48);
  v143 = v40;

  v49 = 0;
  v50 = 0;
  *&v51 = 136315138;
  v140 = v51;
  v152 = v17;
  v153 = v48;
  v158 = v18;
  for (i = v47; ; v47 = i)
  {
LABEL_4:
    v52 = v49;
    if (!v46)
    {
LABEL_8:
      if (v47 <= (v52 + 1))
      {
        v55 = (v52 + 1);
      }

      else
      {
        v55 = v47;
      }

      v49 = (v55 - 1);
      v56 = v151;
      while (1)
      {
        v54 = (v52 + 1);
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v54 >= v47)
        {
          v87 = sub_1E4650534(&qword_1ECF741F8, &qword_1E471AF78);
          (*(*(v87 - 8) + 56))(v56, 1, 1, v87);
          v46 = 0;
          goto LABEL_17;
        }

        v46 = *(v139 + 8 * v54);
        ++v52;
        if (v46)
        {
          v154 = v50;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    while (1)
    {
      v154 = v50;
      v54 = v52;
LABEL_16:
      v57 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v58 = v57 | (v54 << 6);
      v60 = v142;
      v59 = v143;
      (*(v142 + 16))(v141, *(v143 + 48) + *(v142 + 72) * v58, v18);
      v61 = (*(v59 + 56) + 16 * v58);
      v62 = *v61;
      v63 = v61[1];
      v64 = sub_1E4650534(&qword_1ECF741F8, &qword_1E471AF78);
      v65 = &v151[*(v64 + 48)];
      v56 = v151;
      (*(v60 + 32))();
      *v65 = v62;
      v65[1] = v63;
      (*(*(v64 - 8) + 56))(v56, 0, 1, v64);
      sub_1E46552AC(v62, v63);
      v49 = v54;
      v17 = v152;
      v50 = v154;
LABEL_17:
      v66 = v150;
      sub_1E46574C0(v56, v150, &qword_1ECF741F0, &qword_1E471AF70);
      v67 = sub_1E4650534(&qword_1ECF741F8, &qword_1E471AF78);
      v68 = (*(*(v67 - 8) + 48))(v66, 1, v67);
      v69 = v153;
      if (v68 == 1)
      {

        return v138;
      }

      v70 = (v66 + *(v67 + 48));
      v71 = *v70;
      v72 = v70[1];
      v18 = v158;
      (*v155)(v153, v66, v158);
      sub_1E46552AC(v71, v72);
      sub_1E4650A10(&qword_1ECF741D8, type metadata accessor for ReadingHistoryDay);
      sub_1E470ABBC();
      if (!v50)
      {
        break;
      }

      (*v149)(v17, 1, 1, v157);
      v73 = sub_1E470B2AC();
      if (qword_1EE2ADC90 != -1)
      {
        swift_once();
      }

      v74 = qword_1EE2ADC98;
      v75 = v145;
      (*v156)(v145, v69, v18);
      if (os_log_type_enabled(v74, v73))
      {
        v76 = swift_slowAlloc();
        v146 = v71;
        v77 = v76;
        v78 = swift_slowAlloc();
        v159[0] = v78;
        *v77 = v140;
        sub_1E4650A10(&qword_1ECF741E0, MEMORY[0x1E6969530]);
        v79 = sub_1E470B81C();
        v81 = v80;
        v154 = v49;
        v144 = v72;
        v82 = *v148;
        (*v148)(v75, v158);
        v83 = v79;
        v84 = v153;
        v85 = sub_1E4654D04(v83, v81, v159);
        v17 = v152;

        *(v77 + 4) = v85;
        _os_log_impl(&dword_1E45E0000, v74, v73, "ReadingHistoryUpdate: Failed to deserialize entry for %s", v77, 0xCu);
        sub_1E4658A0C(v78);
        v86 = v78;
        v18 = v158;
        MEMORY[0x1E6917530](v86, -1, -1);
        MEMORY[0x1E6917530](v77, -1, -1);
        sub_1E465746C(v146, v144);
        sub_1E4657598(v17);
        v82(v84, v18);
        v50 = 0;
        v52 = v154;
        v47 = i;
        if (!v46)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1E465746C(v71, v72);
        v53 = *v148;
        (*v148)(v75, v18);
        sub_1E4657598(v17);
        v53(v69, v18);
        v50 = 0;
        v52 = v49;
        v47 = i;
        if (!v46)
        {
          goto LABEL_8;
        }
      }
    }

    v146 = v71;
    v88 = v18;
    v89 = v157;
    v144 = *v149;
    v144(v17, 0, 1, v157);
    v90 = v17;
    v91 = *v156;
    v92 = v137;
    (*v156)(v137, v69, v88);
    v93 = v90;
    v94 = v136;
    sub_1E4657528(v93, v136);
    if ((*v135)(v94, 1, v89) != 1)
    {
      break;
    }

    sub_1E4657598(v94);
    v95 = v138;
    v96 = sub_1E4655300(v92);
    if (v97)
    {
      v98 = v96;
      v154 = 0;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v159[0] = v95;
      v17 = v152;
      v100 = v95;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E465796C();
        v100 = v159[0];
      }

      v101 = *(v142 + 8);
      v102 = v158;
      v101(*(v100 + 48) + *(v142 + 72) * v98, v158);
      sub_1E465197C(*(v100 + 56) + *(v132 + 72) * v98, v133);
      v138 = v100;
      sub_1E46FFA10(v98, v100);
      sub_1E465746C(v146, v72);
      v101(v137, v102);
      sub_1E4657598(v17);
      v101(v69, v102);
      v103 = 0;
      v50 = v154;
    }

    else
    {
      sub_1E465746C(v146, v72);
      v117 = *v148;
      v118 = v158;
      (*v148)(v92, v158);
      v17 = v152;
      sub_1E4657598(v152);
      v117(v69, v118);
      v103 = 1;
    }

    v119 = v133;
    v144(v133, v103, 1, v157);
    sub_1E4657598(v119);
    v18 = v158;
  }

  sub_1E465197C(v94, v134);
  v104 = v138;
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v106 = v92;
  v107 = v105;
  v159[0] = v104;
  v108 = sub_1E4655300(v106);
  v110 = *(v104 + 16);
  v111 = (v109 & 1) == 0;
  v112 = __OFADD__(v110, v111);
  v113 = v110 + v111;
  if (v112)
  {
    goto LABEL_44;
  }

  v114 = v109;
  if (*(v104 + 24) >= v113)
  {
    v116 = v146;
    if ((v107 & 1) == 0)
    {
      v130 = v108;
      sub_1E465796C();
      v108 = v130;
    }
  }

  else
  {
    sub_1E4655920(v113, v107);
    v108 = sub_1E4655300(v137);
    v116 = v146;
    if ((v114 & 1) != (v115 & 1))
    {
      goto LABEL_46;
    }
  }

  v18 = v158;
  v120 = v159[0];
  v138 = v159[0];
  if (v114)
  {
    sub_1E4658A58(v134, *(v159[0] + 56) + *(v132 + 72) * v108);
    sub_1E465746C(v116, v72);
    v121 = *v148;
    (*v148)(v137, v18);
    v17 = v152;
    sub_1E4657598(v152);
    v121(v69, v18);
    v47 = i;
    goto LABEL_4;
  }

  *(v159[0] + 8 * (v108 >> 6) + 64) |= 1 << v108;
  v122 = v142;
  v123 = v108;
  v124 = v137;
  v91((*(v120 + 48) + *(v142 + 72) * v108), v137, v18);
  sub_1E465197C(v134, *(v138 + 56) + *(v132 + 72) * v123);
  sub_1E465746C(v116, v72);
  v125 = *(v122 + 8);
  v126 = v124;
  v127 = v153;
  v125(v126, v18);
  v17 = v152;
  sub_1E4657598(v152);
  v125(v127, v18);
  v128 = *(v138 + 16);
  v112 = __OFADD__(v128, 1);
  v129 = v128 + 1;
  if (!v112)
  {
    *(v138 + 16) = v129;
    v47 = i;
    goto LABEL_4;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1E470B86C();
  __break(1u);
  return result;
}

uint64_t (*ReadingHistoryUpdate.days.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ReadingHistoryUpdate.days.getter();
  return sub_1E465283C;
}

uint64_t sub_1E465283C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days);
  *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days) = v2;
}

uint64_t ReadingHistoryUpdate.description.getter()
{
  sub_1E470B5CC();

  ReadingHistoryUpdate.days.getter();
  sub_1E4709CCC();
  type metadata accessor for ReadingHistoryDay(0);
  sub_1E4650A10(&qword_1ECF75D50, MEMORY[0x1E6969530]);
  v1 = sub_1E470AE4C();
  v3 = v2;

  MEMORY[0x1E6915D10](v1, v3);

  MEMORY[0x1E6915D10](0xD000000000000011, 0x80000001E47179B0);
  v6 = *(v0 + OBJC_IVAR___BDSReadingHistoryUpdate_value + 8);
  v4 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v4);

  MEMORY[0x1E6915D10](125, 0xE100000000000000);
  return 0x3A737961647BLL;
}

id ReadingHistoryUpdate.coalesce(newerUpdate:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v93 = sub_1E4709CCC();
  v3 = *(v93 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v93, v5);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v85 = &v76 - v10;
  v11 = sub_1E4650534(&qword_1ECF741F0, &qword_1E471AF70);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v88 = &v76 - v18;
  v77 = v1;
  v78 = a1;
  v19 = &v1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v20 = *&v1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v79 = &a1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v80 = v19;
  v21 = *&a1[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  v22 = *(v21 + 64);
  v83 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v82 = (v23 + 63) >> 6;
  v89 = v3 + 16;
  v90 = v3;
  v91 = (v3 + 32);
  v87 = (v3 + 8);

  v86 = v21;

  v26 = 0;
  v27 = &qword_1ECF741F8;
  v92 = v8;
  v84 = v16;
  while (1)
  {
    if (!v25)
    {
      if (v82 <= v26 + 1)
      {
        v32 = v26 + 1;
      }

      else
      {
        v32 = v82;
      }

      v33 = v32 - 1;
      v34 = v88;
      while (1)
      {
        v31 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v31 >= v82)
        {
          v67 = sub_1E4650534(&qword_1ECF741F8, &qword_1E471AF78);
          (*(*(v67 - 8) + 56))(v16, 1, 1, v67);
          v25 = 0;
          goto LABEL_16;
        }

        v25 = *(v83 + 8 * v31);
        ++v26;
        if (v25)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v31 = v26;
LABEL_15:
    v35 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v36 = v35 | (v31 << 6);
    v37 = v86;
    v38 = v90;
    (*(v90 + 16))(v85, *(v86 + 48) + *(v90 + 72) * v36, v93);
    v39 = (*(v37 + 56) + 16 * v36);
    v40 = *v39;
    v41 = v39[1];
    v42 = sub_1E4650534(&qword_1ECF741F8, &qword_1E471AF78);
    v43 = &v84[*(v42 + 48)];
    v44 = *(v38 + 32);
    v45 = v84;
    v44();
    *v43 = v40;
    v43[1] = v41;
    (*(*(v42 - 8) + 56))(v45, 0, 1, v42);
    v46 = v41;
    v16 = v45;
    sub_1E46552AC(v40, v46);
    v33 = v31;
    v34 = v88;
LABEL_16:
    sub_1E46574C0(v16, v34, &qword_1ECF741F0, &qword_1E471AF70);
    v47 = sub_1E4650534(&qword_1ECF741F8, &qword_1E471AF78);
    if ((*(*(v47 - 8) + 48))(v34, 1, v47) == 1)
    {

      v27 = *(v80 + 1);
      v33 = *(v79 + 1);
      if (v33 >= v27)
      {
LABEL_31:
        v72 = ObjectType;
        v73 = objc_allocWithZone(ObjectType);
        *&v73[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
        v74 = &v73[OBJC_IVAR___BDSReadingHistoryUpdate_value];
        *v74 = v20;
        *(v74 + 1) = v33;
        v95.receiver = v73;
        v95.super_class = v72;
        return objc_msgSendSuper2(&v95, sel_init);
      }

      LOBYTE(v34) = sub_1E470B2AC();
      if (qword_1EE2ADC90 == -1)
      {
LABEL_29:
        v68 = qword_1EE2ADC98;
        if (os_log_type_enabled(qword_1EE2ADC98, v34))
        {
          v69 = v77;
          v70 = v78;
          v71 = swift_slowAlloc();
          *v71 = 134218240;
          *(v71 + 4) = v27;

          *(v71 + 12) = 2048;
          *(v71 + 14) = v33;

          _os_log_impl(&dword_1E45E0000, v68, v34, "ReadingHistoryUpdate: coalesce - unexpected editGeneration=%ld, newerUpdate.editGeneration=%ld", v71, 0x16u);
          MEMORY[0x1E6917530](v71, -1, -1);
        }

        goto LABEL_31;
      }

LABEL_35:
      swift_once();
      goto LABEL_29;
    }

    v48 = v16;
    v49 = (v34 + *(v47 + 48));
    v51 = *v49;
    v50 = v49[1];
    v52 = v92;
    (*v91)(v92, v34, v93);
    sub_1E46552AC(v51, v50);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v20;
    v27 = sub_1E4655300(v52);
    v55 = v20[2];
    v56 = (v54 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      goto LABEL_33;
    }

    v58 = v54;
    if (v20[3] < v57)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E46571E0();
    }

LABEL_23:
    v16 = v48;
    v20 = v94;
    if (v58)
    {
      v28 = (v94[7] + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      *v28 = v51;
      v28[1] = v50;
      sub_1E465746C(v29, v30);
      sub_1E465746C(v51, v50);
      (*v87)(v92, v93);
    }

    else
    {
      v94[(v27 >> 6) + 8] |= 1 << v27;
      v61 = v90;
      v62 = v92;
      v34 = v93;
      (*(v90 + 16))(v20[6] + *(v90 + 72) * v27, v92, v93);
      v63 = (v20[7] + 16 * v27);
      *v63 = v51;
      v63[1] = v50;
      sub_1E465746C(v51, v50);
      (*(v61 + 8))(v62, v34);
      v64 = v20[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_34;
      }

      v20[2] = v66;
    }

    v26 = v33;
    v27 = &qword_1ECF741F8;
  }

  sub_1E4655538(v57, isUniquelyReferenced_nonNull_native);
  v59 = sub_1E4655300(v92);
  if ((v58 & 1) == (v60 & 1))
  {
    v27 = v59;
    goto LABEL_23;
  }

  result = sub_1E470B86C();
  __break(1u);
  return result;
}

BOOL ReadingHistoryUpdate.hasDelta(from:)(uint64_t a1)
{
  v148 = a1;
  v2 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v147 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v127 - v8;
  v146 = type metadata accessor for ReadingHistoryDay(0);
  v10 = *(v146 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v146, v12);
  v131 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v132 = &v127 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v129 = &v127 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v144 = &v127 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = &v127 - v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  v138 = &v127 - v29;
  v153 = sub_1E4709CCC();
  v30 = *(v153 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x1EEE9AC00](v153, v32);
  v130 = &v127 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v128 = &v127 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v154 = &v127 - v40;
  MEMORY[0x1EEE9AC00](v39, v41);
  v136 = &v127 - v42;
  v43 = sub_1E4650534(&unk_1ECF741C0, &qword_1E471AF58);
  v44 = *(*(v43 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v43 - 8, v45);
  v48 = &v127 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v49);
  v51 = &v127 - v50;
  v52 = ReadingHistoryUpdate.days.getter();
  v53 = 0;
  v54 = *(v52 + 64);
  v133 = v52 + 64;
  v55 = 1 << *(v52 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & v54;
  v58 = (v55 + 63) >> 6;
  v141 = (v30 + 16);
  v142 = v52;
  v151 = (v30 + 32);
  v139 = v10;
  v140 = v27;
  v145 = (v10 + 48);
  v137 = v30;
  v149 = (v30 + 8);
  v135 = v48;
  v134 = v51;
  v150 = v9;
  if ((v56 & v54) != 0)
  {
    while (1)
    {
      v59 = v53;
LABEL_11:
      v61 = __clz(__rbit64(v57));
      v57 &= v57 - 1;
      v62 = v61 | (v59 << 6);
      v63 = v142;
      v64 = v136;
      v65 = v137;
      v66 = v153;
      (*(v137 + 16))(v136, *(v142 + 48) + *(v137 + 72) * v62, v153);
      v67 = v138;
      sub_1E4651918(*(v63 + 56) + *(v139 + 72) * v62, v138);
      v68 = sub_1E4650534(&qword_1ECF741D0, &unk_1E471AF60);
      v69 = *(v68 + 48);
      v70 = *(v65 + 32);
      v48 = v135;
      v70(v135, v64, v66);
      sub_1E465197C(v67, &v48[v69]);
      (*(*(v68 - 8) + 56))(v48, 0, 1, v68);
      v152 = v59;
      v27 = v140;
      v51 = v134;
LABEL_12:
      sub_1E46574C0(v48, v51, &unk_1ECF741C0, &qword_1E471AF58);
      v71 = sub_1E4650534(&qword_1ECF741D0, &unk_1E471AF60);
      v72 = (*(*(v71 - 8) + 48))(v51, 1, v71);
      v73 = v150;
      if (v72 == 1)
      {
        break;
      }

      v143 = v72;
      v74 = *(v71 + 48);
      v75 = v27;
      v76 = v153;
      (*v151)(v154, v51, v153);
      sub_1E465197C(&v51[v74], v27);
      ReadingHistoryModel.readingHistoryDay(for:)(v73);
      v77 = v147;
      sub_1E4657528(v73, v147);
      if ((*v145)(v77, 1, v146) == 1)
      {
        sub_1E4657598(v77);
        v80 = sub_1E470B2CC();
        if (qword_1EE2ADC90 != -1)
        {
          swift_once();
        }

        v81 = qword_1EE2ADC98;
        v82 = v130;
        v84 = v153;
        v83 = v154;
        (*v141)(v130, v154, v153);
        v85 = v131;
        sub_1E4651918(v27, v131);
        if (os_log_type_enabled(v81, v80))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v155[0] = v87;
          *v86 = 136315394;
          sub_1E4650A10(&qword_1ECF741E0, MEMORY[0x1E6969530]);
          v88 = sub_1E470B81C();
          v89 = v82;
          v91 = v90;
          v92 = *v149;
          (*v149)(v89, v84);
          v93 = sub_1E4654D04(v88, v91, v155);

          *(v86 + 4) = v93;
          *(v86 + 12) = 2080;
          v94 = ReadingHistoryDay.description.getter();
          v96 = v95;
          sub_1E4654824(v85);
          v97 = sub_1E4654D04(v94, v96, v155);

          *(v86 + 14) = v97;
          _os_log_impl(&dword_1E45E0000, v81, v80, "ReadingHistoryUpdate: has forward delta for %s - day=%s modelDay=nil", v86, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E6917530](v87, -1, -1);
          MEMORY[0x1E6917530](v86, -1, -1);

          sub_1E4657598(v150);
          sub_1E4654824(v140);
          (v92)(v154, v84);
        }

        else
        {

          sub_1E4654824(v85);
          v122 = *v149;
          (*v149)(v82, v84);
          sub_1E4657598(v150);
          sub_1E4654824(v27);
          (v122)(v83, v84);
        }

        goto LABEL_30;
      }

      v78 = v144;
      sub_1E465197C(v77, v144);
      sub_1E4650A10(&qword_1ECF74208, type metadata accessor for ReadingHistoryDay);
      v1 = v75;
      if (sub_1E470A8AC())
      {
        v98 = sub_1E470B2CC();
        if (qword_1EE2ADC90 != -1)
        {
          swift_once();
        }

        v99 = qword_1EE2ADC98;
        v100 = v128;
        v101 = v154;
        (*v141)(v128, v154, v153);
        v102 = v129;
        sub_1E4651918(v75, v129);
        v103 = v132;
        sub_1E4651918(v78, v132);
        v152 = v99;
        if (os_log_type_enabled(v99, v98))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v155[0] = v105;
          *v104 = 136315650;
          sub_1E4650A10(&qword_1ECF741E0, MEMORY[0x1E6969530]);
          v106 = v153;
          v107 = sub_1E470B81C();
          v108 = v100;
          v109 = v102;
          v111 = v110;
          v151 = *v149;
          (v151)(v108, v106);
          v112 = sub_1E4654D04(v107, v111, v155);

          *(v104 + 4) = v112;
          *(v104 + 12) = 2080;
          v113 = ReadingHistoryDay.description.getter();
          v115 = v114;
          sub_1E4654824(v109);
          v116 = sub_1E4654D04(v113, v115, v155);

          *(v104 + 14) = v116;
          *(v104 + 22) = 2080;
          v117 = v132;
          v118 = ReadingHistoryDay.description.getter();
          v120 = v119;
          sub_1E4654824(v117);
          v121 = sub_1E4654D04(v118, v120, v155);

          *(v104 + 24) = v121;
          _os_log_impl(&dword_1E45E0000, v152, v98, "ReadingHistoryUpdate: has forward delta for %s - day=%s modelDay=%s", v104, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E6917530](v105, -1, -1);
          MEMORY[0x1E6917530](v104, -1, -1);

          sub_1E4654824(v144);
          sub_1E4657598(v73);
          sub_1E4654824(v140);
          (v151)(v154, v106);
        }

        else
        {

          sub_1E4654824(v103);
          sub_1E4654824(v102);
          v123 = v100;
          v124 = *v149;
          v125 = v153;
          (*v149)(v123, v153);
          sub_1E4654824(v78);
          sub_1E4657598(v73);
          sub_1E4654824(v75);
          (v124)(v101, v125);
        }

LABEL_30:
        v1 = v143;
        return v1 != 1;
      }

      sub_1E4654824(v78);
      sub_1E4657598(v73);
      sub_1E4654824(v75);
      (*v149)(v154, v76);
      v53 = v152;
      v27 = v75;
      if (!v57)
      {
        goto LABEL_5;
      }
    }

    v1 = 1;

    sub_1E470B2CC();
    if (qword_1EE2ADC90 != -1)
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_5:
    if (v58 <= &v53->isa + 1)
    {
      v60 = &v53->isa + 1;
    }

    else
    {
      v60 = v58;
    }

    while (1)
    {
      v59 = (&v53->isa + 1);
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v59 >= v58)
      {
        v152 = (v60 - 1);
        v79 = sub_1E4650534(&qword_1ECF741D0, &unk_1E471AF60);
        (*(*(v79 - 8) + 56))(v48, 1, 1, v79);
        v57 = 0;
        goto LABEL_12;
      }

      v57 = *(v133 + 8 * v59);
      v53 = (v53 + 1);
      if (v57)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  sub_1E470A0AC();
  return v1 != 1;
}

id ReadingHistoryUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReadingHistoryUpdate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E4653F0C@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR___BDSReadingHistoryUpdate_value);
  v3 = *v2;
  v4 = v2[1];
  *a1 = v3;
  a1[1] = v4;
}

id sub_1E4653F28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(v2);
  v6 = *a1;
  v7 = a1[1];
  *&v5[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
  v8 = &v5[OBJC_IVAR___BDSReadingHistoryUpdate_value];
  *v8 = v6;
  *(v8 + 1) = v7;
  v10.receiver = v5;
  v10.super_class = v2;
  result = objc_msgSendSuper2(&v10, sel_init);
  *a2 = result;
  return result;
}

BDSReadingHistoryUpdateInfo_optional __swiftcall BDSReadingHistoryUpdateInfo.init(coder:)(NSCoder coder)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  v5 = v2;
  result.value.update = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

id BDSReadingHistoryUpdateInfo.init(coder:)(void *a1)
{
  v2 = a1;
  result = sub_1E4654080(v2);
  if (result)
  {
    *&v1[OBJC_IVAR___BDSReadingHistoryUpdateInfo_update] = result;
    v5.receiver = v1;
    v5.super_class = BDSReadingHistoryUpdateInfo;
    v4 = objc_msgSendSuper2(&v5, sel_init);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E4654080(void *a1)
{
  sub_1E45E2DE8(0, &qword_1ECF742D8, 0x1E695DEF0);
  v2 = sub_1E470B3CC();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E4709BDC();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v8 = sub_1E4658620();
    sub_1E465746C(v4, v6);
    if (v8)
    {
      sub_1E46589B8();
      sub_1E470B30C();
      v10 = v17;
      if (v17)
      {
        v11 = v18;
        v12 = type metadata accessor for ReadingHistoryUpdate();
        v13 = objc_allocWithZone(v12);
        *&v13[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
        v14 = &v13[OBJC_IVAR___BDSReadingHistoryUpdate_value];
        *v14 = v10;
        *(v14 + 1) = v11;
        v16.receiver = v13;
        v16.super_class = v12;
        v15 = objc_msgSendSuper2(&v16, sel_init);
        [v8 finishDecoding];

        return v15;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

Swift::Void __swiftcall BDSReadingHistoryUpdateInfo.encode(with:)(NSCoder with)
{
  v3 = [v1 update];
  sub_1E46542E8(with.super.isa);
}

void sub_1E46542E8(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  v7 = *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate_value);
  v8 = *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate_value + 8);
  sub_1E4658964();

  sub_1E470B2FC();

  [v3 finishEncoding];
  v4 = [v3 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1E470AF0C();
    [a1 encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void _s13BookDataStore27ReadingHistoryServiceStatusC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  v7 = *(v1 + OBJC_IVAR___BDSReadingHistoryServiceStatus_value);
  sub_1E46585CC();
  sub_1E470B2FC();
  [v3 finishEncoding];
  v4 = [v3 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1E470AF0C();
    [a1 encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

id BDSReadingHistoryUpdateInfo.init(update:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUpdate_];

  return v2;
}

id BDSReadingHistoryUpdateInfo.init(update:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___BDSReadingHistoryUpdateInfo_update) = a1;
  v3.super_class = BDSReadingHistoryUpdateInfo;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t BDSReadingHistoryUpdateInfo.description.getter()
{
  v1 = [v0 update];
  v2 = ReadingHistoryUpdate.description.getter();

  return v2;
}

BDSReadingHistoryUpdateInfo __swiftcall BDSReadingHistoryUpdateInfo.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.update = v2;
  result.super.isa = v1;
  return result;
}

uint64_t sub_1E4654824(uint64_t a1)
{
  v2 = type metadata accessor for ReadingHistoryDay(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4654880(uint64_t a1)
{
  v2 = sub_1E4650A10(&qword_1ECF743D0, type metadata accessor for CKError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1E46548EC(uint64_t a1)
{
  v2 = sub_1E4650A10(&qword_1ECF743D0, type metadata accessor for CKError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1E465495C(uint64_t a1)
{
  v2 = sub_1E4650A10(&qword_1ECF743C8, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1E46549E8()
{
  sub_1E4650A10(&qword_1ECF743C8, type metadata accessor for CKError);

  return sub_1E4709AEC();
}

uint64_t sub_1E4654A54(uint64_t a1)
{
  v2 = sub_1E4650A10(&qword_1ECF743C8, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1E4654AC0(void *a1, uint64_t a2)
{
  v4 = sub_1E4650A10(&qword_1ECF743C8, type metadata accessor for CKError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1E4654B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650A10(&qword_1ECF743C8, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1E4654BF0()
{
  v2 = *v0;
  sub_1E470B8FC();
  sub_1E470AECC();
  return sub_1E470B91C();
}

void *sub_1E4654C50@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1E4654C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4650A10(&qword_1ECF743C8, type metadata accessor for CKError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1E4654D04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E4654DD0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E4658ABC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1E4658A0C(v11);
  return v7;
}

unint64_t sub_1E4654DD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E4654EDC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1E470B60C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1E4654EDC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1E4654F28(a1, a2);
  sub_1E4655058(&unk_1F5E622C8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1E4654F28(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E4655144(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E470B60C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E470B00C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E4655144(v10, 0);
        result = sub_1E470B5BC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E4655058(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1E46551B8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E4655144(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1E4650534(&qword_1ECF74398, &qword_1E471B1F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E46551B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1E4650534(&qword_1ECF74398, &qword_1E471B1F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1E46552AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1E4655300(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1E4709CCC();
  sub_1E4650A10(&qword_1ECF75D50, MEMORY[0x1E6969530]);
  v5 = sub_1E470AEBC();

  return sub_1E4656D68(a1, v5);
}

unint64_t sub_1E4655398(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1E470B54C();

  return sub_1E4656F28(a1, v5);
}

unint64_t sub_1E46553DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1E470B8FC();
  sub_1E470AFCC();
  v6 = sub_1E470B91C();

  return sub_1E4656FF0(a1, a2, v6);
}

unint64_t sub_1E4655454(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1E470B8EC();

  return sub_1E46570A8(a1, v4);
}

unint64_t sub_1E4655498(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1E470B41C();
  return sub_1E4657114(a1, v5, &qword_1ECF742B0, 0x1E696AEC0);
}

unint64_t sub_1E46554E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1E470B41C();
  return sub_1E4657114(a1, v5, &qword_1ECF742F0, 0x1E695BA70);
}

uint64_t sub_1E4655538(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1E4709CCC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v49 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v12 = *(*v2 + 24);
  }

  sub_1E4650534(&unk_1ECF74388, &qword_1E471B1F0);
  v48 = a2;
  result = sub_1E470B6EC();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v6;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v44 = v2;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v50 = (v7 + 32);
    v21 = result + 64;
    v22 = v49;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v26 = (v19 - 1) & v19;
LABEL_17:
      v29 = v25 | (v15 << 6);
      v30 = *(v11 + 48) + *(v47 + 72) * v29;
      v51 = *(v47 + 72);
      v52 = v26;
      if (v48)
      {
        (*v50)(v22, v30, v53);
        v31 = (*(v11 + 56) + 16 * v29);
        v33 = *v31;
        v32 = v31[1];
      }

      else
      {
        (*v45)(v22, v30, v53);
        v34 = (*(v11 + 56) + 16 * v29);
        v33 = *v34;
        v32 = v34[1];
        sub_1E46552AC(*v34, v32);
      }

      v35 = *(v14 + 40);
      sub_1E4650A10(&qword_1ECF75D50, MEMORY[0x1E6969530]);
      result = sub_1E470AEBC();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v22 = v49;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v23 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v22 = v49;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v50)(*(v14 + 48) + v51 * v23, v22, v53);
      v24 = (*(v14 + 56) + 16 * v23);
      *v24 = v33;
      v24[1] = v32;
      ++*(v14 + 16);
      v11 = v46;
      v19 = v52;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v25 = __clz(__rbit64(v28));
        v26 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1E4655920(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ReadingHistoryDay(0);
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4709CCC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v53 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  sub_1E4650534(&qword_1ECF74380, &qword_1E471B1E8);
  v50 = a2;
  result = sub_1E470B6EC();
  v18 = result;
  if (*(v15 + 16))
  {
    v45 = v3;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v46 = (v11 + 16);
    v47 = v11;
    v51 = (v11 + 32);
    v25 = result + 64;
    v48 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v52 = *(v11 + 72);
      v32 = v31 + v52 * v30;
      if (v50)
      {
        (*v51)(v53, v32, v10);
        v33 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_1E465197C(v33 + v34 * v30, v54);
      }

      else
      {
        (*v46)(v53, v32, v10);
        v35 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_1E4651918(v35 + v34 * v30, v54);
      }

      v36 = *(v18 + 40);
      sub_1E4650A10(&qword_1ECF75D50, MEMORY[0x1E6969530]);
      result = sub_1E470AEBC();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v51)((*(v18 + 48) + v52 * v26), v53, v10);
      result = sub_1E465197C(v54, *(v18 + 56) + v34 * v26);
      ++*(v18 + 16);
      v11 = v47;
      v15 = v48;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v44 = 1 << *(v15 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v3 = v18;
  return result;
}

uint64_t sub_1E4655DC0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1E4650534(a3, a4);
  result = sub_1E470B6EC();
  v10 = result;
  if (*(v7 + 16))
  {
    v33 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v34 = *(*(v7 + 56) + 16 * v22);
      if ((a2 & 1) == 0)
      {
      }

      v24 = *(v10 + 40);
      result = sub_1E470B8EC();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v17 + 8 * v27);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 16 * v18) = v34;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v7 + 32);
      if (v32 >= 64)
      {
        bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v32;
      }

      *(v7 + 16) = 0;
    }

    v5 = v33;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

uint64_t sub_1E465602C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1E4650534(&qword_1ECF742C0, &qword_1E471B1B0);
  v39 = a2;
  result = sub_1E470B6EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 40 * v22;
      v27 = *(v26 + 8);
      v41 = *v26;
      v42 = *(v26 + 16);
      v40 = *(v26 + 32);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_1E470B8FC();
      sub_1E470AFCC();
      result = sub_1E470B91C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 40 * v16;
      *v18 = v41;
      *(v18 + 8) = v27;
      *(v18 + 16) = v42;
      *(v18 + 32) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E465630C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1E4650534(&qword_1ECF74358, &qword_1E471B1C8);
  v38 = a2;
  result = sub_1E470B6EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1E470B8FC();
      sub_1E470AFCC();
      result = sub_1E470B91C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E46565AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1E4650534(&qword_1ECF742A8, &unk_1E471B198);
  result = sub_1E470B6EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_1E46585B4(v22, v34);
      }

      else
      {
        sub_1E4658550(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_1E470B41C();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_1E46585B4(v34, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1E4656854(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1E4650534(a3, a4);
  v40 = a2;
  result = sub_1E470B6EC();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];

        swift_unknownObjectRetain();
      }

      v29 = *(v10 + 40);
      sub_1E470B8FC();
      sub_1E470AFCC();
      result = sub_1E470B91C();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1E4656B08(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1E4650534(a3, a4);
  result = sub_1E470B6EC();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
        v26 = v24;
      }

      v27 = *(v10 + 40);
      result = sub_1E470B41C();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v7 + 32);
      if (v35 >= 64)
      {
        bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v35;
      }

      *(v7 + 16) = 0;
    }

    v5 = v36;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

unint64_t sub_1E4656D68(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1E4709CCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_1E4650A10(&unk_1EE2AEBD0, MEMORY[0x1E6969530]);
      v17 = sub_1E470AEFC();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1E4656F28(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1E46588B4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E6916270](v9, a1);
      sub_1E4658910(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E4656FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1E470B84C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1E46570A8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E4657114(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1E45E2DE8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1E470B42C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

char *sub_1E46571E0()
{
  v1 = v0;
  v2 = sub_1E4709CCC();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4650534(&unk_1ECF74388, &qword_1E471B1F0);
  v7 = *v0;
  v8 = sub_1E470B6DC();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v42 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v36 = v41 + 32;
    v37 = v41 + 16;
    v38 = v7;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = v40;
        v24 = v41;
        v25 = *(v41 + 72) * v22;
        v26 = v39;
        (*(v41 + 16))(v39, *(v7 + 48) + v25, v40);
        v27 = *(v7 + 56);
        v28 = 16 * v22;
        v29 = (v27 + 16 * v22);
        v30 = *v29;
        v31 = v29[1];
        v32 = v42;
        (*(v24 + 32))(*(v42 + 48) + v25, v26, v23);
        v33 = (*(v32 + 56) + v28);
        v7 = v38;
        *v33 = v30;
        v33[1] = v31;
        result = sub_1E46552AC(v30, v31);
        v17 = v43;
      }

      while (v43);
    }

    v20 = v13;
    v9 = v42;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v34;
        goto LABEL_18;
      }

      v21 = *(v35 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_1E465746C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1E46574C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1E4650534(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E4657528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4657598(uint64_t a1)
{
  v2 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 initializeBufferWithCopyOfBuffer for ReadingGoals.State(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E465760C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4657654(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ReadingHistoryUpdateProperties.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _ReadingHistoryUpdateProperties.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4657868()
{
  result = qword_1ECF74288;
  if (!qword_1ECF74288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74288);
  }

  return result;
}

unint64_t sub_1E46578C0()
{
  result = qword_1ECF74290;
  if (!qword_1ECF74290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74290);
  }

  return result;
}

unint64_t sub_1E4657918()
{
  result = qword_1ECF74298;
  if (!qword_1ECF74298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74298);
  }

  return result;
}

char *sub_1E465796C()
{
  v1 = v0;
  v2 = type metadata accessor for ReadingHistoryDay(0);
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E4709CCC();
  v41 = *(v38 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38, v7);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4650534(&qword_1ECF74380, &qword_1E471B1E8);
  v9 = *v0;
  v10 = sub_1E470B6DC();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v42 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v21 = v37;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
LABEL_14:
        v25 = v22 | (v15 << 6);
        v26 = v41;
        v27 = *(v41 + 72) * v25;
        v28 = v38;
        (*(v41 + 16))(v21, *(v9 + 48) + v27, v38);
        v29 = v39;
        v30 = *(v40 + 72) * v25;
        sub_1E4651918(*(v9 + 56) + v30, v39);
        v31 = v42;
        (*(v26 + 32))(*(v42 + 48) + v27, v21, v28);
        result = sub_1E465197C(v29, *(v31 + 56) + v30);
        v19 = v43;
      }

      while (v43);
    }

    v23 = v15;
    v11 = v42;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v24 = *(v34 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v43 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
}

void *sub_1E4657C98(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1E4650534(a1, a2);
  v4 = *v2;
  v5 = sub_1E470B6DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 16 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 16 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1E4657DEC()
{
  v1 = v0;
  sub_1E4650534(&qword_1ECF742C0, &qword_1E471B1B0);
  v2 = *v0;
  v3 = sub_1E470B6DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 32);
        v26 = (*(v4 + 48) + v18);
        v27 = *(v22 + 16);
        *v26 = v21;
        v26[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v27;
        *(v28 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E4657F7C()
{
  v1 = v0;
  sub_1E4650534(&qword_1ECF74358, &qword_1E471B1C8);
  v2 = *v0;
  v3 = sub_1E470B6DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1E46580E4()
{
  v1 = v0;
  sub_1E4650534(&qword_1ECF742A8, &unk_1E471B198);
  v2 = *v0;
  v3 = sub_1E470B6DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1E4658550(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1E46585B4(v19, *(v4 + 56) + 40 * v17);
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E465827C()
{
  v1 = v0;
  sub_1E4650534(&qword_1ECF742B8, &qword_1E471B1A8);
  v2 = *v0;
  v3 = sub_1E470B6DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1E4658400(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1E4650534(a1, a2);
  v4 = *v2;
  v5 = sub_1E470B6DC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1E4658550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E46585B4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1E46585CC()
{
  result = qword_1ECF742D0;
  if (!qword_1ECF742D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF742D0);
  }

  return result;
}

id sub_1E4658620()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1E4709BCC();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1E4709B0C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

id sub_1E46586E0(void *a1)
{
  sub_1E45E2DE8(0, &qword_1ECF742D8, 0x1E695DEF0);
  v2 = sub_1E470B3CC();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E4709BDC();
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v8 = sub_1E4658620();
    sub_1E465746C(v4, v6);
    if (v8)
    {
      sub_1E4658860();
      sub_1E470B30C();
      if (v14 != 2)
      {
        v10 = type metadata accessor for ReadingHistoryServiceStatus();
        v11 = objc_allocWithZone(v10);
        v11[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = v14 & 1;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, sel_init);
        [v8 finishDecoding];

        return v12;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

unint64_t sub_1E4658860()
{
  result = qword_1ECF742E0;
  if (!qword_1ECF742E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF742E0);
  }

  return result;
}

unint64_t sub_1E4658964()
{
  result = qword_1ECF74370;
  if (!qword_1ECF74370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74370);
  }

  return result;
}

unint64_t sub_1E46589B8()
{
  result = qword_1ECF74378;
  if (!qword_1ECF74378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74378);
  }

  return result;
}

uint64_t sub_1E4658A0C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1E4658A58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistoryDay(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4658ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1E4658B44(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1E4658DD4()
{
  result = qword_1ECF743F8;
  if (!qword_1ECF743F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF743F8);
  }

  return result;
}

unint64_t sub_1E4658E2C()
{
  v9 = *(v0 + 80);
  swift_getMetatypeMetadata();
  v1 = sub_1E470AF6C();
  v3 = v2;
  sub_1E470B04C();
  v4 = sub_1E470AF7C();
  v6 = v5;

  v7 = sub_1E465F4D4(15, v4, v6, v1, v3);

  return v7;
}

uint64_t CRDTModelSyncManager.SyncError.hashValue.getter()
{
  v1 = *v0;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  return sub_1E470B91C();
}

uint64_t sub_1E4658F78()
{
  sub_1E470B8FC();
  CRDTModelSyncManager.SyncError.hash(into:)();
  return sub_1E470B91C();
}

id static CRDTModelSyncManager.defaultDataSource.getter()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];
  type metadata accessor for CRDTModelCloudDataManager();
  return sub_1E46E8D54();
}

uint64_t sub_1E4658FF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v6 = type metadata accessor for ModelState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v1 + qword_1ECF745F0);

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a1, v11, v3);
  return (*(v7 + 8))(v11, v6);
}

uint64_t CRDTModelSyncManager.observable.getter()
{
  v1 = *(v0 + qword_1ECF745E0);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  type metadata accessor for ModelState();
  swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer();
  sub_1E470B37C();
  return v6;
}

uint64_t CRDTModelSyncManager.model.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *(v0 + qword_1ECF745E0);
  return sub_1E470B37C();
}

uint64_t sub_1E46592FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v7 = type metadata accessor for ModelState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - v11;
  v13 = *(a1 + qword_1ECF745F0);

  MutableObservableContainer.value.getter();

  (*(*(v4 - 8) + 16))(a2, v12, v4);
  return (*(v8 + 8))(v12, v7);
}

uint64_t CRDTModelSyncManager.enableCloudSync.getter()
{
  v1 = qword_1ECF7B600;
  swift_beginAccess();
  return *(v0 + v1);
}

void CRDTModelSyncManager.enableCloudSync.setter(char a1)
{
  v3 = qword_1ECF7B600;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1E4659530(v4);
}

void sub_1E4659530(char a1)
{
  v2 = a1 & 1;
  v3 = qword_1ECF7B600;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 != v2)
  {
    v5 = *(v1 + qword_1ECF74600);
    sub_1E46E8FBC(v4);
  }
}

void (*CRDTModelSyncManager.enableCloudSync.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = qword_1ECF7B600;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_1E465962C;
}

void sub_1E465962C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  CRDTModelSyncManager.enableCloudSync.setter(*(*a1 + 32));

  free(v1);
}

char *CRDTModelSyncManager.__allocating_init(cloudKitController:crdtContext:dataSource:transactionProvider:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 10);
  v11 = *(v5 + 11);
  v12 = *(v5 + 12);
  type metadata accessor for CRDTModelCloudDataManager();
  v13 = a1;
  v14 = a2;
  v15 = a3;
  swift_unknownObjectRetain();
  v16 = sub_1E46E8DDC(v13, v14, v15, a4);
  v17 = objc_allocWithZone(v5);
  v18 = sub_1E46597AC(v16, v14, a4);

  *&v16[qword_1ECF7B630 + 8] = &off_1F5E62608;
  swift_unknownObjectWeakAssign();

  return v18;
}

char *sub_1E46597AC(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v80 = a3;
  v81 = a2;
  v82 = a1;
  ObjectType = swift_getObjectType();
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v84 = sub_1E470A0DC();
  v77 = *(v84 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v84, v8);
  v83 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v79 = &v73 - v13;
  v14 = *((v6 & v5) + 0x50);
  v15 = *((v6 & v5) + 0x58);
  v90 = *((v6 & v5) + 0x60);
  v91 = v15;
  v16 = type metadata accessor for ModelState.Source();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v78 = &v73 - v19;
  v89 = type metadata accessor for ModelState();
  v85 = *(v89 - 8);
  v20 = *(v85 + 64);
  v22 = MEMORY[0x1EEE9AC00](v89, v21);
  v88 = &v73 - v23;
  v87 = *(v14 - 8);
  v24 = *(v87 + 64);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v75 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v86 = &v73 - v29;
  v74 = sub_1E470B35C();
  v30 = *(v74 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v74, v32);
  v34 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E470B33C();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8, v37);
  v38 = sub_1E470A61C();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8, v40);
  v93[0] = 0;
  v93[1] = 0xE000000000000000;
  sub_1E470B5CC();

  strcpy(v93, "CRDTModelSync.");
  HIBYTE(v93[1]) = -18;
  v41 = sub_1E4658E2C();
  MEMORY[0x1E6915D10](v41);

  v42 = v77;
  sub_1E470A0CC();
  v43 = qword_1ECF745E0;
  sub_1E465E1DC();
  sub_1E470A60C();
  sub_1E470B32C();
  (*(v30 + 104))(v34, *MEMORY[0x1E69E8098], v74);
  v44 = v80;
  *&v4[v43] = sub_1E470B39C();
  v4[qword_1ECF7B600] = 0;
  v45 = v86;
  sub_1E470AA9C();
  v46 = v81;
  *&v4[qword_1ECF745E8] = v81;
  v47 = v87;
  v48 = v75;
  (*(v87 + 16))(v75, v45, v14);
  LOBYTE(v93[0]) = 0;
  v49 = v78;
  (*(v47 + 56))(v78, 1, 2, v14);
  v50 = type metadata accessor for CRDTModelRevisionInfo();
  v51 = v79;
  (*(*(v50 - 8) + 56))(v79, 1, 1, v50);
  v81 = v46;
  v52 = v88;
  ModelState.init(model:loaded:source:revisionInfo:)(v48, v93, v49, v51, v14, v88);
  swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer();
  *&v4[qword_1ECF745F0] = sub_1E466A1E0(v52);
  v53 = v82;
  *&v4[qword_1ECF74600] = v82;
  *&v4[qword_1ECF74608] = v44;
  v54 = type metadata accessor for ObservableTransaction();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  swift_getObjectType();
  swift_unknownObjectRetain_n();
  v58 = v53;
  *&v4[qword_1ECF745F8] = sub_1E4669F28(0xD000000000000030, 0x80000001E4717D60, v44, v57);
  v92.receiver = v4;
  v92.super_class = ObjectType;
  v59 = objc_msgSendSuper2(&v92, sel_init);
  v60 = *&v59[qword_1ECF745F0];
  v61 = v84;
  sub_1E466A268(*&v59[qword_1ECF745F8], &protocol witness table for ObservableTransaction);
  v62 = v83;
  (*(v42 + 16))(v83, &v59[qword_1ECF7B608], v61);
  v63 = v59;
  v64 = v62;
  v65 = sub_1E470A0BC();
  v66 = sub_1E470B2CC();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_1E45E0000, v65, v66, "CRDTModelSyncManager Init: About to load cloudData", v67, 2u);
    MEMORY[0x1E6917530](v67, -1, -1);
  }

  (*(v42 + 8))(v64, v61);
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = swift_allocObject();
  v70 = v90;
  v71 = v91;
  v69[2] = v14;
  v69[3] = v71;
  v69[4] = v70;
  v69[5] = v68;

  sub_1E46E8E38(sub_1E465E228, v69);

  swift_unknownObjectRelease();

  (*(v85 + 8))(v88, v89);
  (*(v87 + 8))(v86, v14);

  return v63;
}

uint64_t sub_1E465A03C(void *a1)
{
  v2 = sub_1E470A61C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E470A5DC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *(result + qword_1ECF745E0);
    v16 = result;
    sub_1E470A5CC();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a1;
    aBlock[4] = sub_1E465E234;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46C4624;
    aBlock[3] = &unk_1F5E62858;
    v18 = _Block_copy(aBlock);
    v19 = a1;
    v20 = v16;
    sub_1E470A5FC();
    MEMORY[0x1E69160A0](0, v7, v13, v18);
    _Block_release(v18);
    (*(v3 + 8))(v7, v2);
    (*(v9 + 8))(v13, v8);
  }

  return result;
}

uint64_t sub_1E465A298(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = *MEMORY[0x1E69E7D40];
  v119 = *MEMORY[0x1E69E7D40] & *a1;
  v6 = sub_1E470AA2C();
  v114 = *(v6 - 1);
  v115 = v6;
  v7 = *(v114 + 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v113 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v5 & v4) + 0x50);
  v11 = sub_1E470B47C();
  v117 = *(v11 - 8);
  v118 = v11;
  v12 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v107 - v14;
  v16 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v21 = (&v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v107 - v24;
  v26 = v10;
  v27 = *(v10 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x1EEE9AC00](v23, v29);
  v32 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v112 = &v107 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v39 = &v107 - v38;
  v41 = MEMORY[0x1EEE9AC00](v37, v40);
  v116 = &v107 - v42;
  MEMORY[0x1EEE9AC00](v41, v43);
  v122 = &v107 - v44;
  sub_1E4658FF4(&v107 - v44);
  v45 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v45 - 8) + 56))(v25, 1, 1, v45);
  if (!a2)
  {
    v59 = sub_1E470A0BC();
    v60 = sub_1E470B2CC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1E45E0000, v59, v60, "CRDTModelSyncManager Init: empty cloudData", v61, 2u);
      MEMORY[0x1E6917530](v61, -1, -1);
    }

    v51 = v26;
    goto LABEL_12;
  }

  v120 = v27;
  v121 = a2;
  sub_1E465ADF0(v21);
  sub_1E465E050(v25, &qword_1ECF74770, &unk_1E471C900);
  sub_1E46574C0(v21, v25, &qword_1ECF74770, &unk_1E471C900);
  v46 = sub_1E470A0BC();
  v47 = sub_1E470B2CC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_1E45E0000, v46, v47, "CRDTModelSyncManager Init: About to deserialize existing data", v48, 2u);
    MEMORY[0x1E6917530](v48, -1, -1);
  }

  v49 = &v121[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
  v50 = *&v121[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8];
  v51 = v26;
  if (v50 >> 60 == 15)
  {
    v56 = sub_1E470A0BC();
    v57 = sub_1E470B2AC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1E45E0000, v56, v57, "CRDTModelSyncManager Init: couldn't deserialize existing data", v58, 2u);
      MEMORY[0x1E6917530](v58, -1, -1);
    }

    v27 = v120;
    goto LABEL_12;
  }

  v110 = v32;
  v111 = v25;
  v52 = *v49;
  v53 = *(a1 + qword_1ECF745E8);
  sub_1E465DD8C(*v49, v50);
  sub_1E465DD8C(v52, v50);
  v54 = *(*(v119 + 88) + 8);
  v55 = v53;
  sub_1E470ABEC();
  v117 = v52;
  v118 = v50;
  v64 = v120;
  (*(v120 + 56))(v15, 0, 1, v51);
  v65 = v116;
  (*(v64 + 32))(v116, v15, v51);
  sub_1E4658FF4(v39);
  v109 = v54;
  v66 = sub_1E470AB9C();
  v67 = *(v64 + 8);
  v67(v39, v51);
  v68 = *(v64 + 16);
  if ((v66 & 1) == 0)
  {
    v87 = v110;
    v68(v110, v65, v51);
    v88 = v65;
    v89 = sub_1E470A0BC();
    v90 = v51;
    v91 = sub_1E470B2CC();
    v92 = os_log_type_enabled(v89, v91);
    v25 = v111;
    if (v92)
    {
      v93 = swift_slowAlloc();
      v114 = v67;
      v94 = v93;
      v115 = swift_slowAlloc();
      v123[0] = v115;
      *v94 = 136315138;
      v95 = *(v119 + 96);
      v96 = sub_1E470B81C();
      v98 = v97;
      v99 = v87;
      v100 = v114;
      v114(v99, v90);
      v101 = sub_1E4654D04(v96, v98, v123);

      *(v94 + 4) = v101;
      _os_log_impl(&dword_1E45E0000, v89, v91, "CRDTModelSyncManager Init: loaded stored model=%s, no delta", v94, 0xCu);
      v102 = v115;
      sub_1E4658A0C(v115);
      MEMORY[0x1E6917530](v102, -1, -1);
      MEMORY[0x1E6917530](v94, -1, -1);

      sub_1E465DDA0(v117, v118);
      v100(v116, v90);
    }

    else
    {

      sub_1E465DDA0(v117, v118);
      v67(v87, v90);
      v67(v88, v90);
    }

    v51 = v90;
    v27 = v120;
LABEL_12:
    v62 = v122;
    goto LABEL_13;
  }

  v69 = v112;
  v68(v112, v65, v51);
  v70 = v51;
  v71 = sub_1E470A0BC();
  v72 = sub_1E470B2CC();
  v73 = os_log_type_enabled(v71, v72);
  v25 = v111;
  if (v73)
  {
    v74 = swift_slowAlloc();
    v108 = v71;
    v75 = v74;
    v110 = swift_slowAlloc();
    v123[0] = v110;
    *v75 = 136315394;
    v76 = *(v119 + 96);
    LODWORD(v119) = v72;
    v77 = sub_1E470B81C();
    v79 = v78;
    v67(v69, v70);
    v80 = sub_1E4654D04(v77, v79, v123);

    *(v75 + 4) = v80;
    *(v75 + 12) = 2080;
    v62 = v122;
    swift_beginAccess();
    v81 = v67;
    v82 = sub_1E470B81C();
    v84 = sub_1E4654D04(v82, v83, v123);

    *(v75 + 14) = v84;
    v65 = v116;
    v85 = v108;
    _os_log_impl(&dword_1E45E0000, v108, v119, "CRDTModelSyncManager Init: loaded stored model=%s, merging into existing=%s", v75, 0x16u);
    v86 = v110;
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v86, -1, -1);
    MEMORY[0x1E6917530](v75, -1, -1);

    v51 = v70;
  }

  else
  {

    v67(v69, v70);
    v51 = v70;
    v62 = v122;
    v81 = v67;
  }

  v103 = v117;
  v104 = v109;
  swift_beginAccess();
  v105 = *(v104 + 8);
  v106 = v113;
  sub_1E470AA1C();
  swift_endAccess();

  sub_1E465DDA0(v103, v118);
  (*(v114 + 1))(v106, v115);
  v81(v65, v51);
  v27 = v120;
LABEL_13:
  sub_1E465AD3C(a1, v62, v25);
  sub_1E465E050(v25, &qword_1ECF74770, &unk_1E471C900);
  return (*(v27 + 8))(v62, v51);
}

uint64_t sub_1E465AD3C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *(a1 + qword_1ECF745F0);
  v7[1] = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v8 = *((v4 & v3) + 0x60);
  v9 = a2;
  v10 = a3;

  MutableObservableContainer.mutate(_:)(sub_1E465E23C, v7);
}

uint64_t sub_1E465ADF0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v37 - v11;
  v13 = &v1[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
  v14 = *&v1[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8];
  if (v14 >> 60 == 15)
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v17 = *v13;
    sub_1E46552AC(*v13, *&v1[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8]);
    v18 = sub_1E4709BCC();
    v19 = [v18 bu_sha256];

    v20 = sub_1E470AF1C();
    v22 = v21;

    v37 = 0x2D363532616873;
    v38 = 0xE700000000000000;
    MEMORY[0x1E6915D10](v20, v22);

    sub_1E465DDA0(v17, v14);
    v15 = v37;
    v16 = v38;
  }

  v23 = [v2 systemFields];
  if (v23 && (v24 = v23, v25 = [v23 recordChangeTag], v24, v25))
  {
    v26 = sub_1E470AF1C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = [v2 modificationDate];
  if (v29)
  {
    v30 = v29;
    sub_1E4709C9C();

    v31 = sub_1E4709CCC();
    (*(*(v31 - 8) + 56))(v9, 0, 1, v31);
  }

  else
  {
    v32 = sub_1E4709CCC();
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
  }

  sub_1E46574C0(v9, v12, &unk_1ECF74CD0, &qword_1E471B620);
  if (v16)
  {

LABEL_16:
    v35 = type metadata accessor for CRDTModelRevisionInfo();
    sub_1E465E0B0(v12, a1 + *(v35 + 24), &unk_1ECF74CD0, &qword_1E471B620);
    *a1 = v15;
    a1[1] = v16;
    a1[2] = v26;
    a1[3] = v28;
    (*(*(v35 - 8) + 56))(a1, 0, 1, v35);
    return sub_1E465E050(v12, &unk_1ECF74CD0, &qword_1E471B620);
  }

  if (v28)
  {
    goto LABEL_16;
  }

  v33 = sub_1E4709CCC();
  if ((*(*(v33 - 8) + 48))(v12, 1, v33) != 1)
  {
    goto LABEL_16;
  }

  v34 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v34 - 8) + 56))(a1, 1, 1, v34);
  return sub_1E465E050(v12, &unk_1ECF74CD0, &qword_1E471B620);
}

id CRDTModelSyncManager.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1E470A0DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v1 + qword_1ECF7B608, v3);
  v9 = sub_1E470A0BC();
  v10 = sub_1E470B2CC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1E45E0000, v9, v10, "CRDTModelSyncManager deinit", v11, 2u);
    MEMORY[0x1E6917530](v11, -1, -1);
  }

  (*(v4 + 8))(v8, v3);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t sub_1E465B348(uint64_t a1)
{
  v2 = qword_1ECF7B608;
  v3 = sub_1E470A0DC();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_1ECF745F0);

  v5 = *(a1 + qword_1ECF745F8);

  v6 = *(a1 + qword_1ECF74608);

  return swift_unknownObjectRelease();
}

uint64_t CRDTModelSyncManager.sync(_:isRemote:)(uint64_t a1, char a2)
{
  v5 = sub_1E470A5DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v2 + qword_1ECF745E0);
  sub_1E470A5CC();
  v14 = v2;
  v15 = a1;
  v16 = a2;
  sub_1E470B36C();
  return (*(v6 + 8))(v10, v5);
}

void sub_1E465B560(uint64_t a1, int a2)
{
  v3 = v2;
  v169 = a2;
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v8 = type metadata accessor for ModelState.Source();
  v165 = *(v8 - 8);
  v166 = v8;
  v9 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v172 = &v150[-v11];
  v170 = type metadata accessor for CRDTModelRevisionInfo();
  v167 = *(v170 - 8);
  v12 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v170, v13);
  v159 = &v150[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v180 = &v150[-v18];
  v186 = v7;
  v178 = type metadata accessor for ModelState();
  v164 = *(v178 - 8);
  v19 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v178, v20);
  v179 = &v150[-v21];
  v22 = sub_1E470AB3C();
  v175 = *(v22 - 8);
  v176 = v22;
  v23 = *(v175 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v174 = &v150[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *(v5 - 8);
  v28 = v27[8];
  v30 = MEMORY[0x1EEE9AC00](v25, v29);
  v171 = &v150[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v168 = &v150[-v34];
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v181 = &v150[-v37];
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v41 = &v150[-v40];
  MEMORY[0x1EEE9AC00](v39, v42);
  v44 = &v150[-v43];
  v45 = [*&v3[qword_1ECF74608] createTransactionWithName_];
  sub_1E4658FF4(v44);
  v173 = *(v6 + 8);
  LOBYTE(v7) = sub_1E470AB9C();
  v46 = v27[1];
  v182 = v27 + 1;
  v183 = v46;
  v46(v44, v5);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for CRDTModelSyncManager.SyncError();
    swift_getWitnessTable();
    swift_allocError();
    *v70 = 0;
    swift_willThrow();

    return;
  }

  v158 = v6;
  v163 = v45;
  v47 = qword_1ECF7B608;
  v48 = v27[2];
  v162 = a1;
  v155 = v27 + 2;
  v161 = v48;
  v48(v41, a1, v5);
  v49 = v3;
  v50 = sub_1E470A0BC();
  v51 = sub_1E470B2CC();

  v52 = os_log_type_enabled(v50, v51);
  v154 = v27;
  v157 = v47;
  v156 = v3;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v160 = v49;
    v54 = v53;
    v153 = swift_slowAlloc();
    v184 = v153;
    *v54 = 136315394;
    v152 = v50;
    v55 = sub_1E470B81C();
    v151 = v51;
    v57 = v56;
    v58 = v41;
    v59 = v183;
    v183(v58, v5);
    v60 = sub_1E4654D04(v55, v57, &v184);
    v61 = v59;

    *(v54 + 4) = v60;
    *(v54 + 12) = 2080;
    sub_1E4658FF4(v44);
    v62 = sub_1E470B81C();
    v64 = v63;
    v61(v44, v5);
    v65 = sub_1E4654D04(v62, v64, &v184);

    *(v54 + 14) = v65;
    v66 = v152;
    _os_log_impl(&dword_1E45E0000, v152, v151, "CRDTModelSyncManager q_sync: incoming=%s and existing=%s", v54, 0x16u);
    v67 = v153;
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v67, -1, -1);
    v68 = v54;
    v49 = v160;
    v69 = v181;
    MEMORY[0x1E6917530](v68, -1, -1);
  }

  else
  {

    v61 = v183;
    v183(v41, v5);
    v69 = v181;
  }

  sub_1E4658FF4(v44);
  v71 = v173;
  sub_1E470ABDC();
  v61(v44, v5);
  v72 = *&v49[qword_1ECF745E8];
  v73 = v174;
  v74 = v175;
  v75 = v176;
  (*(v175 + 104))(v174, *MEMORY[0x1E6995278], v176);
  v76 = *(v71 + 8);
  v77 = v177;
  v78 = sub_1E470A9FC();
  if (!v77)
  {
    v173 = 0;
    v94 = v75;
    v95 = v78;
    v96 = v79;
    (*(v74 + 8))(v73, v94);
    v175 = qword_1ECF745F0;
    v176 = v96;
    v97 = *&v49[qword_1ECF745F0];
    v177 = v95;
    sub_1E46552AC(v95, v96);

    v98 = v179;
    MutableObservableContainer.value.getter();

    v99 = *(v178 + 52);
    v100 = v167;
    v101 = 1;
    v102 = &v98[v99];
    v103 = v170;
    v104 = (*(v167 + 48))(v102, 1, v170);
    v105 = v163;
    v106 = v183;
    if (!v104)
    {
      v107 = v159;
      sub_1E465DF90(&v179[v99], v159);
      v108 = sub_1E4709BCC();
      v109 = [v108 bu_sha256];

      v110 = sub_1E470AF1C();
      v160 = v49;
      v112 = v111;

      v184 = 0x2D363532616873;
      v185 = 0xE700000000000000;
      MEMORY[0x1E6915D10](v110, v112);

      v114 = v184;
      v113 = v185;
      v115 = *(v107 + 3);
      v174 = *(v107 + 2);
      v116 = *(v103 + 24);
      v117 = v180;
      sub_1E465E0B0(&v107[v116], v180 + v116, &unk_1ECF74CD0, &qword_1E471B620);

      sub_1E465DFF4(v107);
      v101 = 0;
      *v117 = v114;
      v117[1] = v113;
      v106 = v183;
      v49 = v160;
      v117[2] = v174;
      v117[3] = v115;
      v105 = v163;
      v103 = v170;
    }

    v118 = 1;
    (*(v100 + 56))(v180, v101, 1, v103);
    if (v169)
    {
      v161(v172, v162, v5);
      v118 = 0;
    }

    v119 = v172;
    (v154[7])(v172, v118, 2, v5);
    v120 = v181;
    v121 = v119;
    v122 = v179;
    v123 = ModelState.updating(model:source:revisionInfo:)(v181, v121, v180, v178);
    v124 = *&v49[v175];
    MEMORY[0x1EEE9AC00](v123, v125);
    v126 = v158;
    *&v150[-32] = v5;
    *&v150[-24] = v126;
    *&v150[-16] = v186;
    *&v150[-8] = v122;

    MutableObservableContainer.mutate(_:)(sub_1E465E254, &v150[-48]);

    v127 = v168;
    v161(v168, v120, v5);
    v129 = v176;
    v128 = v177;
    sub_1E46552AC(v177, v176);
    sub_1E46552AC(v128, v129);
    v130 = sub_1E470A0BC();
    LODWORD(v175) = sub_1E470B2CC();
    if (!os_log_type_enabled(v130, v175))
    {
      sub_1E465746C(v128, v129);
      sub_1E465746C(v128, v129);

      v106(v127, v5);
LABEL_28:
      v147 = *&v49[qword_1ECF74600];
      v148 = swift_allocObject();
      *(v148 + 16) = v105;
      v149 = v105;
      sub_1E46E8FE4(v128, v129, sub_1E465E1CC, v148);

      sub_1E465746C(v128, v129);
      sub_1E465746C(v128, v129);
      (*(v165 + 8))(v172, v166);
      sub_1E465E050(v180, &qword_1ECF74770, &unk_1E471C900);
      v183(v120, v5);
      (*(v164 + 8))(v179, v178);
      return;
    }

    v174 = v130;
    v160 = v49;
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v184 = v132;
    *v131 = 136315394;
    v133 = sub_1E470B81C();
    v135 = v134;
    v106(v127, v5);
    v136 = sub_1E4654D04(v133, v135, &v184);

    *(v131 + 4) = v136;
    *(v131 + 12) = 2048;
    v137 = v129 >> 62;
    if ((v129 >> 62) > 1)
    {
      v128 = v177;
      if (v137 != 2)
      {
        sub_1E465746C(v177, v129);
        v138 = 0;
        goto LABEL_26;
      }

      v142 = *(v177 + 16);
      v141 = *(v177 + 24);
      sub_1E465746C(v177, v129);
      v143 = __OFSUB__(v141, v142);
      v138 = v141 - v142;
      v144 = v163;
      if (!v143)
      {
        v129 = v176;
LABEL_27:
        *(v131 + 14) = v138;
        sub_1E465746C(v128, v129);
        v146 = v174;
        _os_log_impl(&dword_1E45E0000, v174, v175, "CRDTModelSyncManager q_sync: sending merged=%s as %ld bytes to BCCloudDataManager", v131, 0x16u);
        sub_1E4658A0C(v132);
        MEMORY[0x1E6917530](v132, -1, -1);
        MEMORY[0x1E6917530](v131, -1, -1);

        v120 = v181;
        v49 = v160;
        v105 = v144;
        goto LABEL_28;
      }

      __break(1u);
    }

    else
    {
      v128 = v177;
      if (!v137)
      {
        sub_1E465746C(v177, v129);
        v138 = BYTE6(v129);
LABEL_26:
        v144 = v163;
        goto LABEL_27;
      }

      v145 = HIDWORD(v177);
      sub_1E465746C(v177, v129);
      v143 = __OFSUB__(v145, v128);
      LODWORD(v138) = v145 - v128;
      v144 = v163;
      if (!v143)
      {
        v138 = v138;
        goto LABEL_27;
      }
    }

    __break(1u);
    return;
  }

  (*(v74 + 8))(v73, v75);
  v80 = v171;
  v161(v171, v69, v5);
  v81 = sub_1E470A0BC();
  v82 = sub_1E470B2AC();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v179 = v83;
    v180 = swift_slowAlloc();
    v184 = v180;
    *v83 = 136315138;
    v84 = sub_1E470B81C();
    v86 = v85;
    v87 = v80;
    v88 = v183;
    v183(v87, v5);
    v89 = sub_1E4654D04(v84, v86, &v184);

    v90 = v179;
    *(v179 + 4) = v89;
    v91 = v90;
    _os_log_impl(&dword_1E45E0000, v81, v82, "CRDTModelSyncManager q_sync: couldn't serialize model to sync: %s", v90, 0xCu);
    v92 = v180;
    sub_1E4658A0C(v180);
    MEMORY[0x1E6917530](v92, -1, -1);
    MEMORY[0x1E6917530](v91, -1, -1);
  }

  else
  {

    v139 = v80;
    v88 = v183;
    v183(v139, v5);
  }

  v93 = v163;
  type metadata accessor for CRDTModelSyncManager.SyncError();
  swift_getWitnessTable();
  swift_allocError();
  *v140 = 1;
  swift_willThrow();

  v88(v69, v5);
}

id CRDTModelSyncManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void CRDTModelSyncManager.init()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  sub_1E465DC34();
}

void sub_1E465C598(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  sub_1E465DC34();
}

uint64_t sub_1E465C5EC(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v59 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = *((v5 & v4) + 0x50);
  v7 = sub_1E470B47C();
  isa = v7[-1].isa;
  v57 = v7;
  v8 = *(isa + 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v49 - v11;
  v13 = *(v6 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v10, v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v58 = &v49 - v18;
  v19 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  v53 = *(v19 - 8);
  v20 = *(v53 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v54 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v49 - v24;
  sub_1E465ADF0((&v49 - v24));
  v26 = *(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8);
  if (v26 >> 60 == 15)
  {
    v31 = sub_1E470A0BC();
    v32 = sub_1E470B2AC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1E45E0000, v31, v32, "CRDTModelSyncManager resolveConflictsFor: couldn't deserialize resolved data", v33, 2u);
      MEMORY[0x1E6917530](v33, -1, -1);
    }

    sub_1E465CC24(v25);
    return sub_1E465E050(v25, &qword_1ECF74770, &unk_1E471C900);
  }

  else
  {
    v51 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = v13;
    v27 = *(a1 + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData);
    v28 = *(v2 + qword_1ECF745E8);
    sub_1E465DD8C(v27, v26);
    sub_1E465DD8C(v27, v26);
    v50 = *(v59 + 88);
    v29 = *(v50 + 8);
    v30 = v28;
    v52 = v27;
    sub_1E470ABEC();
    v34 = v55;
    (*(v55 + 56))(v12, 0, 1, v6);
    v49 = *(v34 + 32);
    isa = (v34 + 32);
    v35 = v58;
    v49(v58, v12, v6);
    v57 = *(v2 + qword_1ECF745E0);
    v36 = v51;
    (*(v34 + 16))(v51, v35, v6);
    v37 = v54;
    sub_1E465E0B0(v25, v54, &qword_1ECF74770, &unk_1E471C900);
    v38 = (*(v34 + 80) + 40) & ~*(v34 + 80);
    v39 = (v14 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = (*(v53 + 80) + v39 + 8) & ~*(v53 + 80);
    v41 = swift_allocObject();
    v43 = v49;
    v42 = v50;
    *(v41 + 2) = v6;
    *(v41 + 3) = v42;
    *(v41 + 4) = *(v59 + 96);
    v43(&v41[v38], v36, v6);
    *&v41[v39] = v2;
    sub_1E46574C0(v37, &v41[v40], &qword_1ECF74770, &unk_1E471C900);
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1E465DDB4;
    *(v44 + 24) = v41;
    aBlock[4] = sub_1E465DE98;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46679F4;
    aBlock[3] = &unk_1F5E62790;
    v45 = _Block_copy(aBlock);
    v46 = v2;

    dispatch_sync(v57, v45);
    _Block_release(v45);
    sub_1E465DDA0(v52, v26);
    (*(v55 + 8))(v58, v6);
    sub_1E465E050(v25, &qword_1ECF74770, &unk_1E471C900);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E465CC24(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v31 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v32 = v3;
  v30 = v4;
  v5 = type metadata accessor for ModelState();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v30 - v8;
  v10 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v30 - v13;
  v15 = type metadata accessor for CRDTModelRevisionInfo();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E465E0B0(a1, v14, &qword_1ECF74770, &unk_1E471C900);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1E465E050(v14, &qword_1ECF74770, &unk_1E471C900);
  }

  sub_1E465DF2C(v14, v20);
  v22 = qword_1ECF745F0;
  v23 = *(v1 + qword_1ECF745F0);

  v24 = v1;
  MutableObservableContainer.value.getter();

  v25 = *(v5 + 52);
  sub_1E465E050(&v9[v25], &qword_1ECF74770, &unk_1E471C900);
  sub_1E465DF90(v20, &v9[v25]);
  v26 = (*(v16 + 56))(&v9[v25], 0, 1, v15);
  v27 = *(v24 + v22);
  MEMORY[0x1EEE9AC00](v26, v28);
  v29 = v31;
  *(&v30 - 4) = v32;
  *(&v30 - 3) = v29;
  *(&v30 - 2) = v30;
  *(&v30 - 1) = v9;

  MutableObservableContainer.mutate(_:)(sub_1E465E254, (&v30 - 6));

  sub_1E465DFF4(v20);
  return (*(v33 + 8))(v9, v5);
}

uint64_t sub_1E465CF64(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v128 = a3;
  v5 = *a2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = sub_1E470AA2C();
  v119 = *(v7 - 8);
  v120 = v7;
  v8 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v118 = &v106[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *((v6 & v5) + 0x50);
  v12 = *((v6 & v5) + 0x58);
  v127 = *((v6 & v5) + 0x60);
  v126 = type metadata accessor for ModelState();
  v122 = *(v126 - 8);
  v13 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v126, v14);
  v125 = &v106[-v15];
  v121 = v12;
  v16 = *(v12 + 8);
  v115 = *(v16 + 16);
  swift_getAssociatedTypeWitness();
  v114 = sub_1E470B47C();
  v17 = *(*(v114 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v114, v18);
  v113 = &v106[-v20];
  v21 = *(v11 - 8);
  v22 = v21[8];
  v24 = MEMORY[0x1EEE9AC00](v19, v23);
  v26 = &v106[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v106[-v29];
  v32 = MEMORY[0x1EEE9AC00](v28, v31);
  v34 = &v106[-v33];
  MEMORY[0x1EEE9AC00](v32, v35);
  v37 = &v106[-v36];
  sub_1E4658FF4(&v106[-v36]);
  v116 = v16;
  LOBYTE(v5) = sub_1E470AB9C();
  v38 = v21[1];
  v123 = v37;
  v129 = v21 + 1;
  v130 = v38;
  v38(v37, v11);
  v39 = qword_1ECF7B608;
  v117 = v21;
  v40 = v21[2];
  if (v5)
  {
    v41 = v21[2];
    v40(v34, a1, v11);
    v112 = a1;
    v110 = v41;
    v41(v30, a1, v11);
    v42 = a2;
    v111 = v39;
    v43 = sub_1E470A0BC();
    v44 = sub_1E470B2CC();

    v45 = os_log_type_enabled(v43, v44);
    v124 = v42;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v131[0] = v109;
      *v46 = 136315650;
      v108 = v43;
      v47 = sub_1E470B81C();
      v49 = v48;
      v107 = v44;
      v130(v34, v11);
      v50 = sub_1E4654D04(v47, v49, v131);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v51 = v123;
      sub_1E4658FF4(v123);
      v52 = sub_1E470B81C();
      v54 = v53;
      v55 = v130;
      v130(v51, v11);
      v56 = sub_1E4654D04(v52, v54, v131);

      *(v46 + 14) = v56;
      *(v46 + 22) = 2080;
      sub_1E4658FF4(v51);
      sub_1E470AC1C();
      v55(v51, v11);
      v57 = sub_1E470AF8C();
      v59 = v58;
      v55(v30, v11);
      v60 = sub_1E4654D04(v57, v59, v131);

      *(v46 + 24) = v60;
      v61 = v108;
      _os_log_impl(&dword_1E45E0000, v108, v107, "CRDTModelSyncManager resolveConflictsFor: merging resolved model: incoming=%s vs existing=%s with delta=%s", v46, 0x20u);
      v62 = v109;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v62, -1, -1);
      v63 = v46;
      v42 = v124;
      MEMORY[0x1E6917530](v63, -1, -1);
    }

    else
    {

      v79 = v130;
      v130(v30, v11);
      v79(v34, v11);
    }

    v80 = qword_1ECF745F0;
    v81 = *(v42 + qword_1ECF745F0);

    v82 = v125;
    MutableObservableContainer.value.getter();

    v83 = *(v116 + 8);
    v84 = v118;
    v85 = v112;
    sub_1E470AA1C();
    (*(v119 + 8))(v84, v120);
    v86 = v126;
    v87 = v127;
    v88 = *(v126 + 48);
    v89 = v121;
    v90 = type metadata accessor for ModelState.Source();
    (*(*(v90 - 8) + 8))(&v82[v88], v90);
    v110(&v82[v88], v85, v11);
    (v117[7])(&v82[v88], 0, 2, v11);
    v91 = sub_1E465DEB8(v128, &v82[*(v86 + 52)]);
    v92 = v124;
    v93 = *(v124 + v80);
    MEMORY[0x1EEE9AC00](v91, v94);
    *&v106[-32] = v11;
    *&v106[-24] = v89;
    *&v106[-16] = v87;
    *&v106[-8] = v82;

    MutableObservableContainer.mutate(_:)(sub_1E465DF28, &v106[-48]);

    v95 = v92;
    v96 = sub_1E470A0BC();
    v97 = sub_1E470B2CC();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v131[0] = v99;
      *v98 = 136315138;
      v100 = v123;
      sub_1E4658FF4(v123);
      v101 = sub_1E470B81C();
      v103 = v102;
      v130(v100, v11);
      v104 = sub_1E4654D04(v101, v103, v131);

      *(v98 + 4) = v104;
      _os_log_impl(&dword_1E45E0000, v96, v97, "CRDTModelSyncManager resolveConflictsFor: resolved model=%s", v98, 0xCu);
      sub_1E4658A0C(v99);
      MEMORY[0x1E6917530](v99, -1, -1);
      MEMORY[0x1E6917530](v98, -1, -1);
    }

    return (*(v122 + 8))(v125, v126);
  }

  else
  {
    v40(v26, a1, v11);
    v64 = a2;
    v65 = sub_1E470A0BC();
    v66 = sub_1E470B2CC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v131[0] = v126;
      *v67 = 136315394;
      LODWORD(v125) = v66;
      v68 = sub_1E470B81C();
      v70 = v69;
      v71 = v130;
      v130(v26, v11);
      v72 = sub_1E4654D04(v68, v70, v131);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2080;
      v73 = v123;
      sub_1E4658FF4(v123);
      v74 = sub_1E470B81C();
      v76 = v75;
      v71(v73, v11);
      v77 = sub_1E4654D04(v74, v76, v131);

      *(v67 + 14) = v77;
      _os_log_impl(&dword_1E45E0000, v65, v125, "CRDTModelSyncManager resolveConflictsFor: incoming=%s has no delta from existing=%s", v67, 0x16u);
      v78 = v126;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v78, -1, -1);
      MEMORY[0x1E6917530](v67, -1, -1);
    }

    else
    {

      v130(v26, v11);
    }

    return sub_1E465CC24(v128);
  }
}

uint64_t sub_1E465D9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v26[-v11];
  v13 = type metadata accessor for ModelState.Source();
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v18 = &v26[-v17];
  v19 = *(a4 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16, v21);
  v23 = &v26[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for ModelState();
  (*(*(v24 - 8) + 8))(a1, v24);
  swift_beginAccess();
  (*(v19 + 16))(v23, a2, a4);
  v27 = 1;
  (*(v19 + 56))(v18, 2, 2, a4);
  sub_1E465E0B0(a3, v12, &qword_1ECF74770, &unk_1E471C900);
  return ModelState.init(model:loaded:source:revisionInfo:)(v23, &v27, v18, v12, a4, a1);
}

void sub_1E465DC08()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  sub_1E465B560(v1, v2);
}

uint64_t sub_1E465DC80()
{
  result = sub_1E470A0DC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E465DD8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E46552AC(a1, a2);
  }

  return a1;
}

uint64_t sub_1E465DDA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E465746C(a1, a2);
  }

  return a1;
}

uint64_t sub_1E465DDB4()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(sub_1E4650534(&qword_1ECF74770, &unk_1E471C900) - 8);
  v4 = *(v0 + v2);
  v5 = v0 + ((v2 + *(v3 + 80) + 8) & ~*(v3 + 80));

  return sub_1E465CF64(v0 + v1, v4, v5);
}

uint64_t sub_1E465DEA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E465DEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E465DF2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E465DF90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E465DFF4(uint64_t a1)
{
  v2 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E465E050(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1E4650534(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E465E0B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1E4650534(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E465E118(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = type metadata accessor for ModelState();
  v10 = *(v7 - 8);
  (*(v10 + 8))(a1, v7);
  v8 = *(v10 + 16);

  return v8(a1, v6, v7);
}

unint64_t sub_1E465E1DC()
{
  result = qword_1EE2ACCD0;
  if (!qword_1EE2ACCD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2ACCD0);
  }

  return result;
}

uint64_t sub_1E465E228(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  return sub_1E465A03C(a1);
}

uint64_t sub_1E465E23C(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1E465D9C8(a1, v1[5], v1[6], v1[2]);
}

uint64_t CRDTModelRevisionInfo.changeToken.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t CRDTModelRevisionInfo.description.getter()
{
  v1 = 0x296C696E28;
  v2 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v17 - v5;
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  if (v0[1])
  {
    v7 = *v0;
    v8 = v0[1];
  }

  else
  {
    v8 = 0xE500000000000000;
    v7 = 0x296C696E28;
  }

  MEMORY[0x1E6915D10](v7, v8);

  MEMORY[0x1E6915D10](8251, 0xE200000000000000);
  if (v0[3])
  {
    v9 = v0[2];
    v10 = v0[3];
  }

  else
  {
    v10 = 0xE500000000000000;
    v9 = 0x296C696E28;
  }

  MEMORY[0x1E6915D10](v9, v10);

  MEMORY[0x1E6915D10](8251, 0xE200000000000000);
  v11 = type metadata accessor for CRDTModelRevisionInfo();
  sub_1E465E4A4(v0 + *(v11 + 24), v6);
  v12 = sub_1E4709CCC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v6, 1, v12) == 1)
  {
    sub_1E465E050(v6, &unk_1ECF74CD0, &qword_1E471B620);
    v14 = 0xE500000000000000;
  }

  else
  {
    v1 = sub_1E4709C1C();
    v14 = v15;
    (*(v13 + 8))(v6, v12);
  }

  MEMORY[0x1E6915D10](v1, v14);

  return v17[0];
}

uint64_t type metadata accessor for CRDTModelRevisionInfo()
{
  result = qword_1EE2AD7F8;
  if (!qword_1EE2AD7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E465E4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E465E518()
{
  v1 = 0x684364726F636572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697369766572;
  }
}

uint64_t sub_1E465E58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E465F364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E465E5C0(uint64_t a1)
{
  v2 = sub_1E465EEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E465E5FC(uint64_t a1)
{
  v2 = sub_1E465EEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CRDTModelRevisionInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1E4650534(&qword_1ECF74778, &qword_1E471B628);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18[-v9];
  v11 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E465EEF4();
  sub_1E470B93C();
  v12 = *v3;
  v13 = v3[1];
  v18[15] = 0;
  sub_1E470B79C();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    v18[14] = 1;
    sub_1E470B79C();
    v17 = *(type metadata accessor for CRDTModelRevisionInfo() + 24);
    v18[13] = 2;
    sub_1E4709CCC();
    sub_1E465F490(&qword_1ECF74180);
    sub_1E470B7AC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t CRDTModelRevisionInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v25 - v7;
  v9 = sub_1E4650534(&qword_1ECF74788, &qword_1E471B630);
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v25 - v12;
  v14 = type metadata accessor for CRDTModelRevisionInfo();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E465EEF4();
  sub_1E470B92C();
  if (v2)
  {
    return sub_1E4658A0C(a1);
  }

  v26 = v14;
  v20 = v28;
  v32 = 0;
  *v18 = sub_1E470B72C();
  v18[1] = v21;
  v25[1] = v21;
  v31 = 1;
  v18[2] = sub_1E470B72C();
  v18[3] = v22;
  sub_1E4709CCC();
  v30 = 2;
  sub_1E465F490(&qword_1ECF741A0);
  v23 = v29;
  sub_1E470B73C();
  (*(v20 + 8))(v13, v23);
  sub_1E465EF48(v8, v18 + *(v26 + 24));
  sub_1E465DF90(v18, v27);
  sub_1E4658A0C(a1);
  return sub_1E465DFF4(v18);
}

BOOL _s13BookDataStore21CRDTModelRevisionInfoV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1E4709CCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v30 - v13;
  v15 = sub_1E4650534(&qword_1ECF747A8, &unk_1E471B7F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v30 - v18;
  v20 = a1[1];
  v21 = a2[1];
  if (v20)
  {
    if (!v21 || (*a1 != *a2 || v20 != v21) && (sub_1E470B84C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v22 = a1[3];
  v23 = a2[3];
  if (v22)
  {
    if (!v23 || (a1[2] != a2[2] || v22 != v23) && (sub_1E470B84C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v24 = *(type metadata accessor for CRDTModelRevisionInfo() + 24);
  v25 = *(v15 + 48);
  sub_1E465E4A4(a1 + v24, v19);
  sub_1E465E4A4(a2 + v24, &v19[v25]);
  v26 = *(v5 + 48);
  if (v26(v19, 1, v4) == 1)
  {
    if (v26(&v19[v25], 1, v4) == 1)
    {
      sub_1E465E050(v19, &unk_1ECF74CD0, &qword_1E471B620);
      return 1;
    }

    goto LABEL_20;
  }

  sub_1E465E4A4(v19, v14);
  if (v26(&v19[v25], 1, v4) == 1)
  {
    (*(v5 + 8))(v14, v4);
LABEL_20:
    sub_1E465E050(v19, &qword_1ECF747A8, &unk_1E471B7F0);
    return 0;
  }

  (*(v5 + 32))(v9, &v19[v25], v4);
  sub_1E465F490(&unk_1EE2AEBD0);
  v28 = sub_1E470AEFC();
  v29 = *(v5 + 8);
  v29(v9, v4);
  v29(v14, v4);
  sub_1E465E050(v19, &unk_1ECF74CD0, &qword_1E471B620);
  return (v28 & 1) != 0;
}

unint64_t sub_1E465EEF4()
{
  result = qword_1ECF74780;
  if (!qword_1ECF74780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74780);
  }

  return result;
}

uint64_t sub_1E465EF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E465EFE0()
{
  sub_1E465F064();
  if (v0 <= 0x3F)
  {
    sub_1E465F0B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E465F064()
{
  if (!qword_1EE2ACD40)
  {
    v0 = sub_1E470B47C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2ACD40);
    }
  }
}

void sub_1E465F0B4()
{
  if (!qword_1EE2AEBC8)
  {
    sub_1E4709CCC();
    v0 = sub_1E470B47C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2AEBC8);
    }
  }
}

uint64_t getEnumTagSinglePayload for CRDTModelRevisionInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRDTModelRevisionInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E465F260()
{
  result = qword_1ECF74790;
  if (!qword_1ECF74790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74790);
  }

  return result;
}

unint64_t sub_1E465F2B8()
{
  result = qword_1ECF74798;
  if (!qword_1ECF74798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74798);
  }

  return result;
}

unint64_t sub_1E465F310()
{
  result = qword_1ECF747A0;
  if (!qword_1ECF747A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF747A0);
  }

  return result;
}

uint64_t sub_1E465F364(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697369766572 && a2 == 0xEC000000746E6948;
  if (v4 || (sub_1E470B84C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x684364726F636572 && a2 == 0xEF67615465676E61 || (sub_1E470B84C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E4717DA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E470B84C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E465F490(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E4709CCC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E465F4D4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v9 = sub_1E470AFDC();

  sub_1E470B48C();
  v11 = v10;

  if ((v11 & 0x1000000000000000) != 0)
  {
    goto LABEL_28;
  }

  sub_1E470B48C();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_28;
  }

  v14 = (a4 >> 59) & 1;
  v15 = (a5 & 0x1000000000000000) == 0 || (a4 & 0x800000000000000) != 0;
  if ((a5 & 0x1000000000000000) != 0)
  {
    v16 = sub_1E470B02C();
  }

  else
  {
    v16 = 0;
    LOBYTE(v14) = 1;
  }

  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v17 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v18 = v17 << 16;
  if (v14)
  {
    v19 = v18 | 7;
    if ((a5 & 0x1000000000000000) == 0)
    {
      LOBYTE(v20) = 1;
      goto LABEL_16;
    }
  }

  else
  {
    v19 = v18 | 0xB;
  }

  v20 = (a4 & 0x800000000000000) >> 59;
LABEL_16:
  v21 = 4 << v15;
  result = v9;
  if ((v9 & 0xC) == 4 << v20)
  {
    v26 = v19;
    result = sub_1E46637F8(v9, a4, a5);
    v19 = v26;
  }

  if ((v19 & 0xC) == v21)
  {
    v27 = result;
    v19 = sub_1E46637F8(v19, a4, a5);
    result = v27;
    if ((a5 & 0x1000000000000000) == 0)
    {
LABEL_20:
      result = (v19 >> 16) - (result >> 16);
      if ((a3 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_34;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_20;
  }

  if (v17 < result >> 16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v17 >= v19 >> 16)
  {
    result = sub_1E470B02C();
    if ((a3 & 0x1000000000000000) == 0)
    {
LABEL_21:
      if ((a3 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(a3) & 0xF;
        v25 = __OFADD__(v16, v24);
        v23 = v16 + v24;
        if (!v25)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v23 = v16 + (a2 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v16, a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_26;
        }
      }

      goto LABEL_36;
    }

LABEL_34:
    v28 = result;
    v29 = sub_1E470B00C();
    result = v28;
    v25 = __OFADD__(v16, v29);
    v23 = v16 + v29;
    if (!v25)
    {
LABEL_26:
      v25 = __OFADD__(v23, result);
      result += v23;
      if (!v25)
      {
        MEMORY[0x1E6915CD0](result);
LABEL_28:
        sub_1E470B05C();
        sub_1E466402C();
        sub_1E470AFEC();

        sub_1E470AFEC();
        sub_1E46637AC(v9, a4, a5);
        sub_1E470AFEC();

        return 0;
      }

      goto LABEL_37;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_1E465F7B4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 type];
  v4 = sub_1E470AF1C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1E465F80C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 protoData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E4709BDC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}