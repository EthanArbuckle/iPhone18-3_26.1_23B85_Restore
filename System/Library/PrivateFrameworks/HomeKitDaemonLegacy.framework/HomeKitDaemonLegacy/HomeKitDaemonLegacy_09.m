id execSQLite3(sqlite3_stmt *a1)
{
  if (sqlite3_step(a1) == 101)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
  }

  if (sqlite3_reset(a1) && !v2)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
  }

  return v2;
}

uint64_t bindDataSQLite3(sqlite3_stmt *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = v7;
  if (!*a4)
  {
    v11 = v7;
    if (v7)
    {
      if ([v7 length])
      {
        v9 = v11;
        v7 = sqlite3_bind_blob64(a1, a2, [v11 bytes], objc_msgSend(v11, "length"), 0);
      }

      else
      {
        v7 = sqlite3_bind_zeroblob(a1, a2, 0);
      }
    }

    else
    {
      v7 = sqlite3_bind_null(a1, a2);
    }

    v8 = v11;
    if (v7)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
      v8 = v11;
      *a4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

sqlite3_int64 steplastrowresetSQLite3(sqlite3_stmt *a1, void *a2)
{
  if (sqlite3_step(a1) != 101)
  {
    if (a2)
    {
      *a2 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
      if (sqlite3_reset(a1))
      {
        v6 = MEMORY[0x277CCA9B8];
        goto LABEL_8;
      }
    }

    else
    {
      sqlite3_reset(a1);
    }

    return 0;
  }

  v4 = sqlite3_db_handle(a1);
  insert_rowid = sqlite3_last_insert_rowid(v4);
  if (sqlite3_reset(a1))
  {
    if (a2)
    {
      v6 = MEMORY[0x277CCA9B8];
LABEL_8:
      [v6 errorWithSQLite3Statement:a1];
      *a2 = insert_rowid = 0;
      return insert_rowid;
    }

    return 0;
  }

  return insert_rowid;
}

sqlite3_stmt *bindIntSQLite3(sqlite3_stmt *result, int a2, sqlite3_int64 a3, void *a4)
{
  if (!*a4)
  {
    v5 = result;
    result = sqlite3_bind_int64(result, a2, a3);
    if (result)
    {
      result = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:v5];
      *a4 = result;
    }
  }

  return result;
}

id _handleFetchWithRawCallback(sqlite3_stmt *a1, void *a2)
{
  v3 = a2;
  sqlite3_reset(a1);
  while (1)
  {
    v4 = sqlite3_step(a1);
    if (v4 != 100)
    {
      break;
    }

    v5 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:a1 column:0];
    v6 = sqlite3_column_int64(a1, 2);
    v7 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:a1 column:1];
    v8 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:a1 column:3];
    LOBYTE(v6) = v3[2](v3, v5, v6, v7, v8, 0);

    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v4 == 101)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_8;
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:a1];
  (v3)[2](v3, 0, 0, 0, 0, v9);
LABEL_8:
  sqlite3_reset(a1);

  return v9;
}

id selectSQLite3(sqlite3 *a1, const char *a2, void *a3, void *a4)
{
  v67[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277CBEB18] array];
  ppStmt = 0;
  if (*a4)
  {
    goto LABEL_2;
  }

  if (sqlite3_prepare_v2(a1, a2, -1, &ppStmt, 0))
  {
    [MEMORY[0x277CCA9B8] errorWithSQLite3Context:a1 statement:a2];
    v9 = 0;
    *a4 = v10 = 0;
    goto LABEL_6;
  }

  v59 = a2;
  v13 = sqlite3_bind_parameter_count(ppStmt);
  if (v13 >= 2)
  {
    v14 = v13;
    v15 = 1;
    v16 = 0x277CCA000uLL;
    v17 = 0x277CBE000uLL;
    v58 = *MEMORY[0x277D0F1A0];
    while (1)
    {
      if (*a4)
      {
        goto LABEL_2;
      }

      v18 = sqlite3_bind_parameter_name(ppStmt, v15);
      if (!v18)
      {
        v48 = MEMORY[0x277CCA9B8];
        v67[0] = &unk_286628DC8;
        v66[0] = @"extcode";
        v66[1] = @"text";
        v49 = [*(v16 + 3240) stringWithFormat:@"statement cannot contain nameless parameters (%d is nameless)", v15];
        v67[1] = v49;
        v66[2] = @"statement";
        v50 = [*(v16 + 3240) stringWithUTF8String:v59];
        v67[2] = v50;
        v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:3];
        *a4 = [v48 errorWithDomain:v58 code:3 userInfo:v51];

        goto LABEL_2;
      }

      v19 = v18;
      v20 = [*(v16 + 3240) stringWithUTF8String:v18];
      v21 = [v7 objectForKey:v20];

      if (v21)
      {
        v22 = *(v17 + 2920);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }
      }

      sqlite3_bind_null(ppStmt, v15);
LABEL_34:

      v15 = (v15 + 1);
      if (v14 == v15)
      {
        goto LABEL_37;
      }
    }

    v23 = v21;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v60 = v25;

    if (isKindOfClass)
    {
      bindDataSQLite3(ppStmt, v15, v23, a4);
LABEL_21:
      v26 = 0;
      v27 = 0;
LABEL_33:

      v17 = 0x277CBE000;
      goto LABEL_34;
    }

    v28 = *(v16 + 3240);
    v27 = v23;
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();
    if (v29)
    {
      v30 = v27;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    if (v29)
    {
      bindStringSQLite3(ppStmt, v15, v27, a4);
      v26 = 0;
    }

    else
    {
      v26 = v27;
      objc_opt_class();
      v32 = objc_opt_isKindOfClass();
      if (v32)
      {
        v33 = v26;
      }

      else
      {
        v33 = 0;
      }

      v34 = v33;

      if ((v32 & 1) == 0)
      {
        v57 = MEMORY[0x277CCA9B8];
        v65[0] = &unk_286628DC8;
        v64[0] = @"extcode";
        v64[1] = @"text";
        v35 = MEMORY[0x277CCACA8];
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = [v35 stringWithFormat:@"bind parameter %s is not of a recognized type %@ is not a (NSNull, NSData, NSString, or NSNumber)", v19, v37];
        v65[1] = v38;
        v64[2] = @"statement";
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:v59];
        v65[2] = v39;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:3];
        *a4 = [v57 errorWithDomain:v58 code:3 userInfo:v40];

        v16 = 0x277CCA000;
        goto LABEL_21;
      }

      bindIntSQLite3(ppStmt, v15, [v26 longLongValue], a4);
      v27 = 0;
    }

    v16 = 0x277CCA000;
    goto LABEL_33;
  }

LABEL_37:
  if (*a4)
  {
LABEL_2:
    v9 = 0;
    goto LABEL_3;
  }

  v41 = 0;
  v42 = sqlite3_column_count(ppStmt);
  while (1)
  {
    v43 = sqlite3_step(ppStmt);
    if (v43 != 100)
    {
      if (v43 != 101)
      {
        *a4 = [MEMORY[0x277CCA9B8] errorWithSQLite3Statement:ppStmt];
      }

      sqlite3_finalize(ppStmt);
      if (*a4)
      {
        v10 = 0;
      }

      else
      {
        v10 = v8;
      }

      v9 = v41;
      goto LABEL_6;
    }

    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v42];

    if (v42 >= 1)
    {
      break;
    }

LABEL_54:
    [v8 addObject:v9];
    v41 = v9;
  }

  v44 = 0;
  while (1)
  {
    v45 = sqlite3_column_type(ppStmt, v44);
    if (v45 <= 2)
    {
      break;
    }

    switch(v45)
    {
      case 3:
        v46 = [MEMORY[0x277CCACA8] stringWithSQLite3Column:ppStmt column:v44];
        break;
      case 5:
        v46 = [MEMORY[0x277CBEB68] null];
        break;
      case 4:
        v46 = [MEMORY[0x277CBEA90] dataWithSQLite3Column:ppStmt column:v44];
        break;
      default:
        goto LABEL_56;
    }

LABEL_53:
    v47 = v46;
    [v9 addObject:v46];

    v44 = (v44 + 1);
    if (v42 == v44)
    {
      goto LABEL_54;
    }
  }

  if (v45 == 1)
  {
    v46 = [MEMORY[0x277CCABB0] numberWithLongLong:{sqlite3_column_int64(ppStmt, v44)}];
    goto LABEL_53;
  }

  if (v45 == 2)
  {
    v46 = [MEMORY[0x277CCABB0] numberWithDouble:{sqlite3_column_double(ppStmt, v44)}];
    goto LABEL_53;
  }

LABEL_56:
  v52 = MEMORY[0x277CCA9B8];
  v53 = *MEMORY[0x277D0F1A0];
  v63[0] = &unk_286628DC8;
  v62[0] = @"extcode";
  v62[1] = @"text";
  v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"column %d is of SQLite3 type %d (not recognized)", v44, v45];
  v63[1] = v54;
  v62[2] = @"statement";
  v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:v59];
  v63[2] = v55;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:3];
  *a4 = [v52 errorWithDomain:v53 code:3 userInfo:v56];

LABEL_3:
  v10 = 0;
LABEL_6:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id runSQLite3(sqlite3 *a1, const char *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (sqlite3_exec(a1, a2, 0, 0, 0))
  {
    v4 = objc_autoreleasePoolPush();
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = HMFGetLogIdentifier();
      v7 = [MEMORY[0x277CCA9B8] errorWithSQLite3Context:a1];
      v11 = 138543874;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2080;
      v16 = a2;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Got Error %@ on %s", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [MEMORY[0x277CCA9B8] errorWithSQLite3Context:a1 statement:a2];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

sqlite3_stmt *prepareSQLite3(sqlite3 *a1, const char *a2, void *a3)
{
  ppStmt = 0;
  if (!sqlite3_prepare_v2(a1, a2, -1, &ppStmt, 0))
  {
    return ppStmt;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = [MEMORY[0x277CCA9B8] errorWithSQLite3Context:a1 statement:a2];
  v7 = v6;
  result = 0;
  *a3 = v6;
  return result;
}

void sub_2538E4458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__119149(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2538E6FD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 112));
  _Unwind_Resume(a1);
}

void sub_2538E86F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_2538EA594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2538EC1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2538EC5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__119970(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2538F20C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_2538F6AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____handleFinishedUnarchive_block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2 == 3)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      *buf = 138543618;
      v71 = v7;
      v72 = 2112;
      v73 = v8;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Finished unarchive with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = *(a1 + 32);
    if (*(a1 + 40))
    {
      [v9 setState:2];
LABEL_40:
      [*(a1 + 32) setExtractor:0];
      goto LABEL_41;
    }

    v11 = v9;
    v12 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"HMDSoftwareUpdateDocumentationAsset.validation"];
    v13 = objc_autoreleasePoolPush();
    v14 = [v11 fileManager];
    v15 = [v11 bundleURL];
    v16 = [v14 bundleWithURL:v15];

    if (v16)
    {
      v69 = v13;
      v17 = MEMORY[0x277CD1E58];
      v18 = [v11 fileManager];
      v19 = [v17 localizationsForBundle:v16 fileManager:v18];

      v20 = [v19 count];
      v21 = objc_autoreleasePoolPush();
      v22 = v11;
      v23 = HMFGetOSLogHandle();
      v24 = v23;
      if (v20)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v25;
          v72 = 2112;
          v73 = v19;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Available localizations: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v26 = objc_alloc(MEMORY[0x277CD1E58]);
        v27 = [v22 fileManager];
        v28 = [v26 initWithBundle:v16 fileManager:v27];

        v29 = v28 != 0;
        v30 = objc_autoreleasePoolPush();
        v31 = v22;
        v32 = HMFGetOSLogHandle();
        v33 = v32;
        if (v28)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v34 = v68 = v12;
            *buf = 138543618;
            v71 = v34;
            v72 = 2112;
            v73 = v28;
            _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Cached documentation: %@", buf, 0x16u);

            v12 = v68;
          }

          objc_autoreleasePoolPop(v30);
          v35 = 0;
        }

        else
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v43 = v68 = v12;
            *buf = 138543618;
            v71 = v43;
            v72 = 2112;
            v73 = v16;
            _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse documentation for asset bundle: %@", buf, 0x16u);

            v12 = v68;
          }

          objc_autoreleasePoolPop(v30);
          v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        }
      }

      else
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v42;
          v72 = 2112;
          v73 = v16;
          _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@No available localization for asset bundle: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        v29 = 0;
      }

      v13 = v69;
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = v11;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v40 = v39 = v13;
        v41 = [v37 bundleURL];
        *buf = 138543618;
        v71 = v40;
        v72 = 2112;
        v73 = v41;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to create bundle from: %@", buf, 0x16u);

        v13 = v39;
      }

      objc_autoreleasePoolPop(v36);
      v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      v29 = 0;
    }

    objc_autoreleasePoolPop(v13);
    v44 = v35;

    v45 = v35;
    v46 = v45;
    if (v29)
    {
      v47 = v45;
    }

    else
    {
      v48 = *(a1 + 32);
      v49 = [objc_alloc(MEMORY[0x277CD1E58]) initWithAsset:v48];
      v50 = objc_autoreleasePoolPush();
      v51 = v48;
      v52 = HMFGetOSLogHandle();
      v53 = v52;
      if (v49)
      {
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v54;
          v72 = 2112;
          v73 = v49;
          _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@Cached documentation: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v50);
        v55 = v46;
      }

      else
      {
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v56 = HMFGetLogIdentifier();
          v57 = [v51 URL];
          *buf = 138543618;
          v71 = v56;
          v72 = 2112;
          v73 = v57;
          _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to parse documentation from asset url: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v50);
        v55 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
        v58 = v55;
      }

      v47 = v55;
      if (!v49)
      {
        v62 = objc_autoreleasePoolPush();
        v63 = *(a1 + 32);
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v65;
          v72 = 2112;
          v73 = v47;
          _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to validate asset with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v62);
        [*(a1 + 32) setState:0];
        [*(a1 + 32) increaseDownloadRetryCount];
        v66 = [*(a1 + 32) fileManager];
        v67 = [*(a1 + 32) bundleURL];
        [v66 removeItemAtURL:v67 error:0];

        goto LABEL_39;
      }
    }

    [*(a1 + 32) setState:{4, v68}];
    [*(a1 + 32) resetDownloadRetryCount];
LABEL_39:
    v59 = [*(a1 + 32) fileManager];
    v60 = [*(a1 + 32) archiveURL];
    [v59 removeItemAtURL:v60 error:0];

    goto LABEL_40;
  }

  if (v6)
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v71 = v10;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to finish unarchive, not currently unarchiving", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
LABEL_41:
  v61 = *MEMORY[0x277D85DE8];
}

void sub_2538F7C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____handleStartedUnarchive_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 32);
      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to start unarchive with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 40) cancelUnarchive];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Started unarchive", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v10 = [*(a1 + 40) extractor];
    [v10 setExtractorDelegate:*(a1 + 40)];

    v11 = [*(a1 + 40) archivedFileStream];
    [v11 open];

    __processNextArchivedData(*(a1 + 40));
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __processNextArchivedData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ____processNextArchivedData_block_invoke;
    block[3] = &unk_279735D00;
    v5 = v1;
    dispatch_async(v3, block);
  }
}

void ____processNextArchivedData_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) archivedFileStream];
  v4 = [v3 hasBytesAvailable];

  v5 = objc_autoreleasePoolPush();
  v6 = *v2;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Reading next chunk from the archive", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v11 = *(a1 + 32);
    v10 = (a1 + 32);
    v12 = [v11 archivedFileStream];
    v13 = [v12 read:buf maxLength:4096];

    v14 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:v13];
    objc_initWeak(&location, *v10);
    v15 = [*v10 extractor];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ____processNextArchivedData_block_invoke_414;
    v18[3] = &unk_27972BFD8;
    objc_copyWeak(&v19, &location);
    [v15 supplyBytes:v14 withCompletionBlock:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v16;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Reached end of input stream", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) finishUnarchive];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2538F8200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____processNextArchivedData_block_invoke_414(uint64_t a1, void *a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = v7;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to append data with error: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 cancelUnarchive];
  }

  else if (a3)
  {
    [WeakRetained finishUnarchive];
  }

  else
  {
    __processNextArchivedData();
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __resourceBundleForBundle(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 URLForResource:@"AssetData" withExtension:0];
  if (v5)
  {
    v6 = [v4 bundleWithURL:v5];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to find resource bundle", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

id __htmlDocumentForResource(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v5 URLForResource:v7 withExtension:@"html" subdirectory:0 localization:*(*(&v24 + 1) + 8 * i)];
        if (v13)
        {
          v15 = v13;
          v23 = 0;
          v14 = [objc_alloc(MEMORY[0x277CD1A58]) initWithURL:v13 error:&v23];
          v16 = v23;
          if (!v14)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = HMFGetLogIdentifier();
              v20 = [v15 path];
              *buf = 138543874;
              v29 = v19;
              v30 = 2112;
              v31 = v20;
              v32 = 2112;
              v33 = v16;
              _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Unable to load document, %@, with error: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v17);
          }

          goto LABEL_15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_253903B28(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253903BB4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__123908(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25391206C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v33 + 80));
  objc_destroyWeak((v32 + 72));
  objc_destroyWeak((v32 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak((v34 - 176));
  objc_destroyWeak((v34 - 160));
  _Unwind_Resume(a1);
}

void sub_253912DB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

uint64_t hasAssistantHashingKeyChanged()
{
  v0 = objc_alloc(MEMORY[0x277D0F918]);
  v1 = [v0 initWithKey:@"HMDAssistantLastHashingKey" options:0 domain:*MEMORY[0x277CD0030] defaultValue:0];
  v2 = [v1 stringValue];
  v3 = +[HMDHelper sharedHelper];
  v4 = [v3 hashedRouteIDForIdentifier:@"A77C551E-C3FA-414E-ACD8-A7DF3D64E9D6"];

  LODWORD(v3) = HMFEqualObjects();
  return v3 ^ 1;
}

void sub_253913958(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void __HMDLostModeManagerExitLostModeWithAuthCompleteNotification(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277D08F78] sharedInstance];
  v4 = [v3 needsLostModeExitAuth];

  v5 = objc_autoreleasePoolPush();
  v6 = v2;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received lost mode exit auth notification, but findmy indicates device hasn't exited lost mode with auth", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Sending lost mode exit with auth complete notification", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 postNotificationName:@"HMDLostModeManagerDidExitLostModeWithAuthCompleteNotification" object:v6];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __HMDLostModeManagerLostModeChangeNotification(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = a2;
  if (v4)
  {
    os_unfair_lock_lock_with_options();
    v5 = [MEMORY[0x277D08F78] sharedInstance];
    v6 = [v5 lostModeIsActive];

    if (LOBYTE(v4[3]._os_unfair_lock_opaque) == v6)
    {
      os_unfair_lock_unlock(v4 + 2);
    }

    else
    {
      LOBYTE(v4[3]._os_unfair_lock_opaque) = v6;
      os_unfair_lock_unlock(v4 + 2);
      v7 = objc_autoreleasePoolPush();
      v8 = v4;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = HMFGetLogIdentifier();
        v11 = HMFBooleanToString();
        v14 = 138543618;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification lost mode is active: %@", &v14, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v12 = [MEMORY[0x277CCAB98] defaultCenter];
      [v12 postNotificationName:@"HMDLostModeManagerUpdatedNotification" object:v8];
    }
  }

  objc_autoreleasePoolPop(v3);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_2539190E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 - 112));
  _Unwind_Resume(a1);
}

void __deleteAccountModel(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3[1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ____deleteAccountModel_block_invoke;
  v8[3] = &unk_2797359B0;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, v8);
}

void __notifyDelegateAccountRemoved_124710(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v3;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Account removed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = @"HMDAccountNotificationKey";
    v14 = v5;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v10 postNotificationName:@"HMDRemoteAccountManagerRemovedAccountNotification" object:v7 userInfo:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void ____deleteAccountModel_block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldSyncAccount:*(a1 + 40)])
  {
    v3 = [*(a1 + 32) backingStore];
    v2 = [*(a1 + 40) modelBackedObjects];
    [v3 deleteModelObjects:v2 destination:2];
  }
}

void ____addAccountModel_block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldSyncAccount:*(a1 + 40)])
  {
    v3 = [*(a1 + 32) backingStore];
    v2 = [*(a1 + 40) modelBackedObjects];
    [v3 updateModelObjects:v2 destination:2];
  }
}

void sub_25391CC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id location)
{
  objc_destroyWeak((v12 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ____handleUnregisteredDestination_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) shortDescription];
        v13 = [*(a1 + 32) shortDescription];
        v22 = 138543874;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        v26 = 2112;
        v27 = v13;
        v14 = "%{public}@Account handle, %@, failed to resolve, removing from account: %@";
LABEL_12:
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, v14, &v22, 0x20u);

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if (([*(a1 + 32) isEqual:v5] & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v20 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 40) shortDescription];
        v13 = [*(a1 + 32) shortDescription];
        v22 = 138543874;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        v26 = 2112;
        v27 = v13;
        v14 = "%{public}@Account handle, %@, now registered to account: %@";
        goto LABEL_12;
      }

LABEL_13:

      objc_autoreleasePoolPop(v8);
      [*(a1 + 32) removeHandle:*(a1 + 40)];
      goto LABEL_14;
    }

    if (*(a1 + 48))
    {
      v15 = objc_autoreleasePoolPush();
      v16 = WeakRetained;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v19 = *(a1 + 48);
        v22 = 138543618;
        v23 = v18;
        v24 = 2112;
        v25 = v19;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Removing unregistered device: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      [*(a1 + 32) removeDevice:*(a1 + 48)];
    }
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __Block_byref_object_copy__125051(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25391E434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(v18 + 7);
  objc_destroyWeak(v18 + 6);
  objc_destroyWeak(v18 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak((v19 - 64));
  objc_destroyWeak((v19 - 56));
  _Unwind_Resume(a1);
}

void sub_25391F2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25391F4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539204BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253921D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id location, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  objc_destroyWeak((v69 + 88));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a69, 8);
  _Unwind_Resume(a1);
}

void sub_2539257A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253929688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __documentationMaxSize_block_invoke()
{
  v0 = MEMORY[0x277D0F8D0];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0x200000];
  [v0 setDefaultValue:v1 forPreferenceKey:@"firmwareUpdateDocumentationMaxSize"];
}

uint64_t minimumApplyDurationAllowance()
{
  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"firmwareUpdateMinimumApplyDurationAllowance"];
  v2 = [v1 numberValue];
  v3 = [v2 unsignedIntValue];

  return v3;
}

void sub_25392E844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25392E958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __maxSocketIdleDuration_block_invoke()
{
  v0 = MEMORY[0x277D0F8D0];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:60];
  [v0 setDefaultValue:v1 forPreferenceKey:@"firmwareUpdateMaxSocketIdleDuration"];
}

void sub_253936BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253936E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25393A230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25393B1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25393C2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__126709(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25393C8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMDMinimumHomeKitVersionSupportingHH2()
{
  isInternalBuild();
  v0 = +[HMDHomeKitVersion version10];

  return v0;
}

void sub_253946A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539476F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539477F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253947EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253948BB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_25394A270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25394ABC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25394B02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25394B7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25394BBD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25394DA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 40));
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&a9);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25394DD8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_25394F268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__127909(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253950FB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253954AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253955340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25395584C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

__CFString *HMDNetworkRouterSupportAsString(unint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v3 = v2;
  v4 = a1;
  if (a1)
  {
    [v2 addObject:@"Home Protection Mode Update"];
    v4 = a1 & 0xFFFFFFFFFFFFFFFELL;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"Accessory Protection Mode Update"];
  v4 &= ~2uLL;
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  [v3 addObject:@"Add Network Router"];
  v4 &= ~4uLL;
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:@"WiFi Unique PreShared Key"];
    v4 &= ~8uLL;
  }

LABEL_6:
  if ([v3 count])
  {
    v5 = [v3 componentsJoinedByString:{@", "}];
  }

  else
  {
    v6 = @"Unknown";
    if (!v4)
    {
      v6 = @"Disabled";
    }

    v5 = v6;
  }

  v7 = v5;

  return v7;
}

void sub_25395A69C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_25395BF28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

HMDNetworkRouterAccessViolationControl *accessViolationControlWithType(uint64_t a1)
{
  v1 = [[HMDNetworkRouterAccessViolationControlOperation alloc] initWithOperation:a1];
  v2 = [[HMDNetworkRouterAccessViolationControl alloc] initWithOperation:v1 clientIdentifierList:0];

  return v2;
}

HMDNetworkRouterClientControl *clientControlWithOperationType(uint64_t a1)
{
  v1 = [[HMDNetworkRouterControlOperation alloc] initWithOperation:a1];
  v2 = objc_alloc_init(HMDNetworkRouterClientConfiguration);
  v3 = [[HMDNetworkRouterClientControlOperation alloc] initWithOperation:v1 configuration:v2];

  v4 = [MEMORY[0x277CBEB18] arrayWithObject:v3];
  v5 = [[HMDNetworkRouterClientControl alloc] initWithOperations:v4];

  return v5;
}

uint64_t __Block_byref_object_copy__130259(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HMDRemoteEventRouterProtoFetchEventsMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_36:
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(HMDRemoteEventRouterProtoTopic);
        [a1 addTopics:v13];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoTopicReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_253979184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__131128(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t isRecordingAllowedForSettings(void *a1)
{
  v1 = a1;
  [v1 accessModeAtHome];
  if (HMIsRecordingAllowedForCameraAccessMode())
  {
    v2 = 1;
  }

  else
  {
    [v1 accessModeNotAtHome];
    v2 = HMIsRecordingAllowedForCameraAccessMode();
  }

  return v2;
}

void sub_253981AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_253982724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __destinationForAccountHandle(uint64_t a1, void *a2)
{
  v4 = 0;
  if (a1 && a2)
  {
    v4 = [a2 remoteDestinationString];
    v2 = vars8;
  }

  return v4;
}

__CFString *HMDUserConfirmationResponseAsString(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDUserConfirmationResponse %tu", a1];
  }

  else
  {
    v2 = off_27972D098[a1 - 1];
  }

  return v2;
}

void sub_25398871C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25398915C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id actionSetFromObject(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"objectReference"];
  v3 = [v1 hmf_stringForKey:@"objectType"];

  if ([v3 isEqualToString:@"SCENE"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id valueWithAssistantUnits(void *a1, void *a2, void *a3, void *a4, unsigned int a5, int a6)
{
  v49 = a4;
  v10 = a3;
  v11 = a2;
  v12 = a1;
  v51 = +[HMDHAPMetadata getSharedInstance];
  v13 = v12;
  v14 = v10;
  v15 = v11;
  v16 = +[HMDHAPMetadata getSharedInstance];
  v17 = [v16 characteristicValueUnit:v15];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v13;
  }

  v19 = v18;
  v20 = [v16 supportsLocalization:v14];

  if (v20)
  {
    v21 = a6;
    v22 = v17;
    v23 = *MEMORY[0x277CCF6F8];
    v24 = [v22 isEqualToString:*MEMORY[0x277CCF6F8]];
    v25 = *MEMORY[0x277CCF700];
    if ((v24 & 1) != 0 || (v26 = [v22 isEqualToString:*MEMORY[0x277CCF700]], v27 = v22, v26))
    {
      if (v21)
      {
        v27 = v23;
      }

      else
      {
        v27 = v25;
      }
    }

    v28 = v27;

    if (!v13 || (v29 = [v13 isEqualToString:v28], v30 = v13, v29))
    {
      v30 = v28;
    }

    v31 = v30;

    v19 = v31;
  }

  else
  {
    v23 = *MEMORY[0x277CCF6F8];
    v25 = *MEMORY[0x277CCF700];
  }

  v32 = [v51 characteristicValueUnit:v15];

  v33 = v49;
  v34 = v32;
  v35 = v19;
  v36 = v33;
  if ([v34 isEqualToString:v23])
  {
    v37 = v36;
    if (![v35 isEqualToString:v25])
    {
      goto LABEL_22;
    }

    [v36 floatValue];
    v38 = MEMORY[0x277CCABB0];
    *&v39 = (*&v39 * 1.8) + 32.0;
    goto LABEL_21;
  }

  v37 = v36;
  if ([v34 isEqualToString:v25])
  {
    v37 = v36;
    if ([v35 isEqualToString:v23])
    {
      [v36 floatValue];
      v38 = MEMORY[0x277CCABB0];
      *&v39 = ((*&v39 + -32.0) * 5.0) / 9.0;
LABEL_21:
      v37 = [v38 numberWithFloat:v39];
    }
  }

LABEL_22:

  v40 = [v51 mapToAssistantCharacteristicValue:v37 name:v14 getActionType:a5];

  v41 = [v51 mapToAssistantUnitName:v35];
  v42 = [v51 mapCharacteristicValueType:v14];

  v43 = v40;
  v44 = v42;
  v45 = v41;
  if ([v44 isEqualToString:*MEMORY[0x277CCF6B0]])
  {
    v46 = objc_alloc_init(MEMORY[0x277D47340]);
    [v46 setValue:{objc_msgSend(v43, "BOOLValue")}];
  }

  else if (([v44 isEqualToString:*MEMORY[0x277CCF6C0]] & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", *MEMORY[0x277CCF6E8]) & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", *MEMORY[0x277CCF6D0]) & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", *MEMORY[0x277CCF6D8]) & 1) != 0 || objc_msgSend(v44, "isEqualToString:", *MEMORY[0x277CCF6E0]))
  {
    v46 = objc_alloc_init(MEMORY[0x277D47370]);
    [v46 setValue:{objc_msgSend(v43, "integerValue")}];
  }

  else if ([v44 isEqualToString:*MEMORY[0x277CCF6B8]])
  {
    v46 = objc_alloc_init(MEMORY[0x277D47360]);
    [v43 floatValue];
    [v46 setValue:?];
  }

  else if ([v44 isEqualToString:*MEMORY[0x277CCF6C8]])
  {
    v46 = objc_alloc_init(MEMORY[0x277D47388]);
    v48 = [v43 copy];
    [v46 setValue:v48];
  }

  else
  {
    v46 = 0;
  }

  [v46 setUnits:v45];

  return v46;
}

HMDAssistantCharacteristicTuple *getTupleForCharacteristic(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = a1;
  v7 = +[HMDHAPMetadata getSharedInstance];
  v8 = [v6 characteristicType];

  v9 = [v7 mapToAssistantCharacteristicName:v8];
  v10 = [v7 mapCharacteristicValueType:v9];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v13 = valueWithAssistantUnits(0, v8, v9, v5, 1u, a3);
    v14 = [[HMDAssistantCharacteristicTuple alloc] initWithAttribute:v9 value:v13];
  }

  return v14;
}

void __isMetricLocale_block_invoke()
{
  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  v0 = [v1 objectForKey:*MEMORY[0x277CBE718]];
  isMetricLocale_isMetricLocale = [v0 BOOLValue];
}

uint64_t applyGuardTime()
{
  if (applyGuardTime_onceToken != -1)
  {
    dispatch_once(&applyGuardTime_onceToken, &__block_literal_global_77_133136);
  }

  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"firmwareUpdateApplyGuardTime"];
  v2 = [v1 numberValue];

  v3 = [v2 unsignedIntValue];
  return v3;
}

void sub_25398E558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25398EBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__133678(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25398F1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25398FBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253990ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18, id a19)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void logAndPostNotification(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCAB98];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 defaultCenter];
  logAndPostNotificationWithNotificationCenter(v9, v8, v7, v6);
}

void logAndPostNotificationWithNotificationCenter(void *a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v13;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Sending notification %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v14 = objc_autoreleasePoolPush();
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    v18 = 138544130;
    v19 = v16;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Sending notification %@ with object %@ and userInfo %@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  [v7 postNotificationName:v8 object:v9 userInfo:v10];

  v17 = *MEMORY[0x277D85DE8];
}

void sub_25399845C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__134914(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253998814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_253998AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

id __descriptionsForRecordIDArray(void *a1)
{
  v1 = [a1 na_map:&__block_literal_global_436];
  v2 = [v1 copy];

  return v2;
}

void sub_253998F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2539992F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

id __descriptionsForRecordIDSet(void *a1)
{
  v1 = [a1 na_map:&__block_literal_global_434];
  v2 = [v1 copy];

  return v2;
}

void sub_25399976C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_253999C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_25399A118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_25399C1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25399C52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25399CD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539A42D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539A4FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539A55A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539A67DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2539A7F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__135889(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2539A826C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539A8570(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2539A8758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539A8F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539AA18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539AA850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539AB4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2539B22F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMDRemoteEventRouterProtoConnectMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v25 & 0x7F) << v5;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        if (v13 == 2)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v25) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v25 & 0x7F) << v16;
            if ((v25 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_48:
          *(a1 + 16) = v22;
          goto LABEL_49;
        }

        if (v13 == 3)
        {
          v14 = objc_alloc_init(MEMORY[0x277D174E0]);
          v15 = 8;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(MEMORY[0x277D174E0]);
            v15 = 40;
LABEL_28:
            objc_storeStrong((a1 + v15), v14);
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !HMEProtoEventInfoReadFrom())
            {
LABEL_51:

              return 0;
            }

LABEL_30:
            PBReaderRecallMark();
LABEL_31:

            goto LABEL_49;
          case 5:
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addTopicFilterAdditions:v14];
            }

            goto LABEL_31;
          case 6:
            v14 = objc_alloc_init(HMDRemoteEventRouterProtoTopic);
            [a1 addTopicAdditions:v14];
            v25 = 0;
            v26 = 0;
            if (!PBReaderPlaceMark() || !HMDRemoteEventRouterProtoTopicReadFrom(v14, a2))
            {
              goto LABEL_51;
            }

            goto LABEL_30;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_49:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *HMDCameraRecordingVideoCodecTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HMDCameraRecordingVideoCodecTypeH265";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingVideoCodecType %ld", a1];
    }
  }

  else
  {
    v2 = @"HMDCameraRecordingVideoCodecTypeH264";
  }

  return v2;
}

__CFString *HMDCameraRecordingH264ProfileTypeAsString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingH264ProfileType %ld", a1];
  }

  else
  {
    v2 = off_27972D870[a1];
  }

  return v2;
}

__CFString *HMDCameraRecordingH264LevelTypeAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingH264LevelType %ld", a1];
  }

  else
  {
    v2 = off_27972D888[a1];
  }

  return v2;
}

void translateResolutionWidthHeight(void *a1, void *a2, uint64_t *a3)
{
  v7 = a1;
  v5 = a2;
  if ([v7 isEqualToNumber:&unk_2866292F0] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629308) & 1) != 0)
  {
    v6 = 1;
  }

  else if ([v7 isEqualToNumber:&unk_286629320] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629338) & 1) != 0)
  {
    v6 = 2;
  }

  else if ([v7 isEqualToNumber:&unk_286629350] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629368) & 1) != 0)
  {
    v6 = 3;
  }

  else if ([v7 isEqualToNumber:&unk_286629380] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629398) & 1) != 0)
  {
    v6 = 4;
  }

  else if ([v7 isEqualToNumber:&unk_2866292F0] && (objc_msgSend(v5, "isEqualToNumber:", &unk_2866293B0) & 1) != 0)
  {
    v6 = 5;
  }

  else if ([v7 isEqualToNumber:&unk_286629350] && (objc_msgSend(v5, "isEqualToNumber:", &unk_2866293C8) & 1) != 0)
  {
    v6 = 6;
  }

  else if ([v7 isEqualToNumber:&unk_2866293E0] && (objc_msgSend(v5, "isEqualToNumber:", &unk_2866293F8) & 1) != 0)
  {
    v6 = 7;
  }

  else if ([v7 isEqualToNumber:&unk_286629410] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629428) & 1) != 0)
  {
    v6 = 8;
  }

  else if ([v7 isEqualToNumber:&unk_2866293C8] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629350) & 1) != 0)
  {
    v6 = 9;
  }

  else if ([v7 isEqualToNumber:&unk_2866293F8] && (objc_msgSend(v5, "isEqualToNumber:", &unk_2866293E0) & 1) != 0)
  {
    v6 = 10;
  }

  else if ([v7 isEqualToNumber:&unk_286629440] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629458) & 1) != 0)
  {
    v6 = 11;
  }

  else if ([v7 isEqualToNumber:&unk_286629470] && (objc_msgSend(v5, "isEqualToNumber:", &unk_2866293F8) & 1) != 0)
  {
    v6 = 12;
  }

  else if ([v7 isEqualToNumber:&unk_286629458] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629440) & 1) != 0)
  {
    v6 = 13;
  }

  else if ([v7 isEqualToNumber:&unk_2866293F8] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629470) & 1) != 0)
  {
    v6 = 14;
  }

  else if ([v7 isEqualToNumber:&unk_286629368] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629350) & 1) != 0)
  {
    v6 = 15;
  }

  else if ([v7 isEqualToNumber:&unk_286629338] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629320) & 1) != 0)
  {
    v6 = 16;
  }

  else if ([v7 isEqualToNumber:&unk_286629428] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629410) & 1) != 0)
  {
    v6 = 17;
  }

  else if ([v7 isEqualToNumber:&unk_286629488] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629488) & 1) != 0)
  {
    v6 = 18;
  }

  else if ([v7 isEqualToNumber:&unk_2866293C8] && (objc_msgSend(v5, "isEqualToNumber:", &unk_2866293C8) & 1) != 0)
  {
    v6 = 19;
  }

  else if ([v7 isEqualToNumber:&unk_2866293F8] && (objc_msgSend(v5, "isEqualToNumber:", &unk_2866293F8) & 1) != 0)
  {
    v6 = 20;
  }

  else if ([v7 isEqualToNumber:&unk_286629398] && (objc_msgSend(v5, "isEqualToNumber:", &unk_286629398) & 1) != 0)
  {
    v6 = 21;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
}

void sub_2539BA5B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id logDescriptionForAccessory(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    if (isKindOfClass)
    {
      [v1 needsAirplayAccess];
    }

    v6 = MEMORY[0x277CCACA8];
    v7 = [v1 name];
    v8 = [v1 uuid];
    v9 = [v1 identifier];
    v10 = HMFBooleanToString();
    v11 = HMFBooleanToString();
    v5 = [v6 stringWithFormat:@"'%@' (%@ / %@, HAP=%@, Airplay=%@)", v7, v8, v9, v10, v11];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_2539BD6B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v10 - 152));
  _Unwind_Resume(a1);
}

void ContinueRouterOperationOnWorkQueue(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7)
  {
    v11 = [v7 workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __ContinueRouterOperationOnWorkQueue_block_invoke;
    v13[3] = &unk_27972DE98;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    dispatch_async(v11, v13);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    (*(v9 + 2))(v9, v12);
  }
}

void __ContinueRouterOperationOnWorkQueue_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) networkRouterAccessory];
  v3 = [v2 uuid];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    v5 = *(*(a1 + 56) + 16);

    v5();
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    (*(v6 + 16))(v6, v7);
  }
}

void sub_2539BEA74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

uint64_t credentialTypeForCredential(void *a1)
{
  v1 = a1;
  v2 = [v1 psk];

  if (v2)
  {
    v3 = 3;
  }

  else
  {
    v4 = [v1 macAddress];
    v5 = v4 != 0;

    v3 = 2 * v5;
  }

  return v3;
}

uint64_t getProtectionModeForAccessory(void *a1)
{
  v1 = a1;
  v2 = [v1 home];
  v3 = [v2 protectionMode];

  if (v3 && [v1 supportsNetworkProtection])
  {
    v4 = [v1 targetNetworkProtectionMode];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

BOOL shouldManageAccessory(void *a1)
{
  v1 = a1;
  if ([v1 supportsNetworkProtection])
  {
    v2 = 1;
  }

  else
  {
    v3 = [v1 wiFiUniquePreSharedKey];
    if (v3)
    {
      v2 = 1;
    }

    else
    {
      v4 = [v1 networkClientIdentifier];
      v2 = v4 != 0;
    }
  }

  return v2;
}

void sub_2539BF7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539BFF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539C032C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

HMDNetworkRouterCredential *networkRouterCredentialForAccessory(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(HMDNetworkRouterCredential);
  v6 = [v3 wiFiUniquePreSharedKey];

  if (v6)
  {
    v7 = [v3 wiFiUniquePreSharedKey];
    [(HMDNetworkRouterCredential *)v5 setPsk:v7];
  }

  else
  {
    [(HMDNetworkRouterCredential *)v5 setMacAddress:v4];
  }

  return v5;
}

void sub_2539C0F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539C30B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539C3FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HMDCreateUniquePSKClientConfiguration_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 64);
    v4 = *(*(a1 + 64) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __HMDCreateUniquePSKClientConfiguration_block_invoke_2;
    v7[3] = &unk_27972DAD8;
    v10 = *(a1 + 64);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    [v5 addClientConfiguration:v6 completion:v7];
  }
}

void __HMDCreateUniquePSKClientConfiguration_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = [HMDAccessoryNetworkCredential alloc];
    v6 = [*(a1 + 32) uuid];
    v7 = [(HMDAccessoryNetworkCredential *)v5 initWithNetworkRouterUUID:v6 clientIdentifier:v8 wiFiPSK:*(a1 + 40)];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_2539C73F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__138204(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id keyFromSelector(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  if ([v1 hasPrefix:@"set"] && objc_msgSend(v1, "length") != 3)
  {
    v2 = [v1 substringWithRange:{3, 1}];
    v3 = [v2 lowercaseString];
    v4 = [v2 isEqualToString:v3];

    if (v4)
    {
      v5 = v1;

      goto LABEL_7;
    }

    v6 = [v2 lowercaseString];
    v7 = [v1 substringWithRange:{4, objc_msgSend(v1, "length") - 5}];
    v8 = [v6 stringByAppendingString:v7];

    v1 = v8;
  }

  v5 = v1;
LABEL_7:

  return v5;
}

void setPropertyIMP(void *a1, const char *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = keyFromSelector(a2);
  if (![v5 propertyIsReadOnly:v8])
  {
    v14 = [objc_opt_class() properties];
    v15 = [v14 objectForKey:v8];
    v16 = [v15 classObj];

    if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = MEMORY[0x277CBEAD8];
      v23 = *MEMORY[0x277CBE658];
      v24 = MEMORY[0x277CCACA8];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromClass(v16);
      v28 = [v24 stringWithFormat:@"Property for parameter %@ was supplied as %@, but was expected to be %@.", v8, v26, v27];
      v29 = [v22 exceptionWithName:v23 reason:v28 userInfo:0];
      v30 = v29;

      objc_exception_throw(v29);
    }

    if (v5[1])
    {
      if (v6)
      {
LABEL_9:
        v17 = v5[1];
        v18 = [v8 hmf_stringWithSmallestEncoding];
        [v17 setValue:v6 forKey:v18];

        goto LABEL_10;
      }
    }

    else
    {
      v20 = [MEMORY[0x277CBEB38] dictionary];
      v21 = v5[1];
      v5[1] = v20;

      if (v6)
      {
        goto LABEL_9;
      }
    }

    v6 = [MEMORY[0x277CBEB68] null];
    goto LABEL_9;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = v5;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = +[HMDBackingStoreSingleton dataVersion];
    *buf = 138544130;
    v32 = v12;
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Attempting to write property %@ from %@, unwritable in homed data version %@.", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
LABEL_10:

  objc_autoreleasePoolPop(v7);
  v19 = *MEMORY[0x277D85DE8];
}

id propertyIMP(void *a1, const char *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = NSStringFromSelector(a2);
  if ([v3 propertyIsAvailable:v5])
  {
    v6 = [objc_opt_class() properties];
    v7 = [v6 objectForKey:v5];

    if (v7)
    {
      v8 = [v3[1] objectForKey:v5];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v8)
        {

          objc_autoreleasePoolPop(v4);
          goto LABEL_14;
        }

        v18 = [v7 defaultValue];
        goto LABEL_13;
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v3;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v21 = 138543874;
        v22 = v17;
        v23 = 2112;
        v24 = v5;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Attempting to read property %@ from %@, does not appear defined.", &v21, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v8 = 0;
    }

    v18 = 0;
LABEL_13:

    objc_autoreleasePoolPop(v4);
    v8 = v18;
    goto LABEL_14;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = v3;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = +[HMDBackingStoreSingleton dataVersion];
    v21 = 138544130;
    v22 = v12;
    v23 = 2112;
    v24 = v5;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Attempting to read property %@ from %@, unavailable in homed data version %@ (returning nil).", &v21, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  objc_autoreleasePoolPop(v4);
  v8 = 0;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_2539D3328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2539D3B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__140018(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2539D90D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void networkChangeCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_autoreleasePoolPush();
      v8 = v6;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543618;
        v17 = v10;
        v18 = 2112;
        v19 = a2;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Network change detected: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      objc_initWeak(buf, v8);
      v11 = dispatch_time(0, 1000000000);
      v12 = [v8 pathMonitorQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __networkChangeCallback_block_invoke;
      block[3] = &unk_279732FD8;
      objc_copyWeak(&v15, buf);
      dispatch_after(v11, v12, block);

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }

  objc_autoreleasePoolPop(v5);
  v13 = *MEMORY[0x277D85DE8];
}

void __networkChangeCallback_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _fetchPrimaryNetworkInfo];
    WeakRetained = v2;
  }
}

void sub_2539EA6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__142630(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2539EC4A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 48));
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v6 - 144));
  _Unwind_Resume(a1);
}

void sub_2539ED370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __rootSettingUUIDInSettingModels(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 hmbParentModelID];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = [v9 hmbModelID];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

__CFString *HMDUserDataControllerStateAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
    v1 = [v2 stringWithFormat:@"Unknown state %@", v3];
  }

  else
  {
    v1 = off_27972E7A8[a1];
  }

  return v1;
}

void sub_253A18904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t isIrrecoverableError(void *a1)
{
  v1 = a1;
  if ([v1 isHMError] && (objc_msgSend(v1, "code") == 90 || objc_msgSend(v1, "code") == 79 || objc_msgSend(v1, "code") == 52 || objc_msgSend(v1, "code") == 96 || objc_msgSend(v1, "code") == 13 || objc_msgSend(v1, "code") == 11 || objc_msgSend(v1, "code") == 55))
  {
    goto LABEL_30;
  }

  if (![v1 isHAPError])
  {
    goto LABEL_40;
  }

  if ([v1 code] != 20 && objc_msgSend(v1, "code") != 21 && objc_msgSend(v1, "code") != 22 && objc_msgSend(v1, "code") != 23 && objc_msgSend(v1, "code") != 26 && objc_msgSend(v1, "code") != 25 && objc_msgSend(v1, "code") != 34 && objc_msgSend(v1, "code") != 9 && objc_msgSend(v1, "code") != 12 && objc_msgSend(v1, "code") != 10 && objc_msgSend(v1, "code") != 11 && objc_msgSend(v1, "code") != 18 && objc_msgSend(v1, "code") != 7 && objc_msgSend(v1, "code") != 3 && objc_msgSend(v1, "code") != 15 && objc_msgSend(v1, "code") != 17 && objc_msgSend(v1, "code") != 16 && objc_msgSend(v1, "code") != 35 && objc_msgSend(v1, "code") != 36 && objc_msgSend(v1, "code") != 30)
  {
    if ([v1 code] == 13 || objc_msgSend(v1, "code") == 14 || objc_msgSend(v1, "code") == 2 || objc_msgSend(v1, "code") == 1)
    {
      v3 = [v1 userInfo];
      v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      objc_opt_class();
      v5 = (objc_opt_isKindOfClass() & 1) != 0 ? v4 : 0;
      v6 = v5;

      if (v6)
      {
        v7 = MEMORY[0x277CCA9B8];
        v8 = [v6 domain];
        v9 = [v7 errorWithDomain:v8 code:objc_msgSend(v6 userInfo:{"code"), 0}];
        v2 = isIrrecoverableError();

LABEL_41:
        goto LABEL_42;
      }
    }

LABEL_40:
    v6 = [v1 domain];
    v2 = [v6 isEqualToString:*MEMORY[0x277CD5120]];
    goto LABEL_41;
  }

LABEL_30:
  v2 = 1;
LABEL_42:

  return v2;
}

id _normalizeSetupCode(void *a1)
{
  v1 = a1;
  if ([MEMORY[0x277CFEC30] isValidSetupCode:v1] || objc_msgSend(v1, "length") != 8)
  {
    v3 = v1;
  }

  else
  {
    v2 = [v1 mutableCopy];
    [v2 insertString:@"-" atIndex:3];
    [v2 insertString:@"-" atIndex:6];
    v3 = [v2 copy];
  }

  return v3;
}

void sub_253A270E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak((v43 + 88));
  objc_destroyWeak(&a41);
  objc_destroyWeak(&location);
  _Block_object_dispose((v44 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_253A2AF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253A2C854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253A2D80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253A321C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&STACK[0x2E0], 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__147157(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253A34B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253A39E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253A3ABD8(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253A3AC68(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253A42C8C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253A42D1C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id observerMatchingConnection(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 observedObject];
        v10 = HMFEqualObjects();

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

void sub_253A43788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24)
{
  objc_destroyWeak(&a22);
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

void sub_253A43D6C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253A47140(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253A4B2C0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253A4B374(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253A4B630(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253A4B8F0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253A4B9A4(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253A58B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__148459(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253A5E57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253A5ED48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_253A5F5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253A64E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id createHMFNetAddressFromIPAddressString(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 UTF8String];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = "";
  }

  *v11 = xmmword_253D4B590;
  if (inet_pton(2, v3, &v11[4]) == 1 || (*v11 = xmmword_253D4C070, *&v11[12] = *(&xmmword_253D4C070 + 12), inet_pton(30, v3, &v11[8]) == 1))
  {
    v4 = [objc_alloc(MEMORY[0x277D0F858]) initWithSocketAddress:v11];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = objc_opt_class();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *v11 = 138543618;
      *&v11[4] = v8;
      *&v11[12] = 2112;
      *&v11[14] = v1;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@'%@' is not a valid IPv4 or IPv6 address string", v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v4 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __validateHostNameForWANFirewallRule_block_invoke()
{
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"^(?=[^*]*(?:\\*(?:[^*]+|$)){0 options:2}$)[a-zA-Z0-9*](?:[a-zA-Z0-9*-]*[a-zA-Z0-9*])?$" error:{0, 0}];
  v1 = validateHostNameForWANFirewallRule_componentRegex;
  validateHostNameForWANFirewallRule_componentRegex = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t decodeStringFromJSONDictionary(void *a1, void *a2, int a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v24 = 0;
  v9 = decodeValueFromJSONDictionary(v7, v8, a3, &v24);
  v10 = v24;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v12 = v10;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if ((isKindOfClass & 1) != 0 && [v12 length])
      {
        v16 = v12;
        *a4 = v12;
        v17 = 1;
      }

      else
      {
        v18 = objc_autoreleasePoolPush();
        v19 = objc_opt_class();
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543874;
          v26 = v21;
          v27 = 2112;
          v28 = v8;
          v29 = 2112;
          v30 = v7;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@JSON contains an invalid '%@' value: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        v17 = 0;
      }
    }

    else
    {
      *a4 = 0;
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t decodeValueFromJSONDictionary(void *a1, void *a2, int a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    *a4 = v10;
LABEL_8:
    v16 = 1;
    goto LABEL_9;
  }

  if (!a3)
  {
    *a4 = 0;
    goto LABEL_8;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = objc_opt_class();
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v19 = 138543874;
    v20 = v15;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@JSON contains no '%@' value: %@", &v19, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = 0;
LABEL_9:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t decodeUnsignedIntegerFromJSONDictionary(void *a1, void *a2, int a3, unint64_t a4, void *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v27 = 0;
  v11 = decodeValueFromJSONDictionary(v9, v10, a3, &v27);
  v12 = v27;
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      v14 = v12;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if ((isKindOfClass & 1) != 0 && [v14 unsignedLongLongValue] <= a4 && (v18 = CFGetTypeID(v14), v18 != CFBooleanGetTypeID()))
      {
        v26 = v14;
        *a5 = v14;
        v23 = 1;
      }

      else
      {
        v19 = objc_autoreleasePoolPush();
        v20 = objc_opt_class();
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543874;
          v29 = v22;
          v30 = 2112;
          v31 = v10;
          v32 = 2112;
          v33 = v9;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@JSON contains an invalid '%@' value: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v19);
        v23 = 0;
      }
    }

    else
    {
      *a5 = 0;
      v23 = 1;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t decodeAddressFromJSONDictionary(void *a1, void *a2, int a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v20 = 0;
  v9 = decodeStringFromJSONDictionary(v7, v8, a3, &v20);
  v10 = v20;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v12 = createHMFNetAddressFromIPAddressString(v10);
      *a4 = v12;
      if (!v12)
      {
        v13 = objc_autoreleasePoolPush();
        v14 = objc_opt_class();
        v15 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = HMFGetLogIdentifier();
          *buf = 138543874;
          v22 = v16;
          v23 = 2112;
          v24 = v8;
          v25 = 2112;
          v26 = v7;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@JSON contains an invalid '%@' address: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
        goto LABEL_7;
      }
    }

    else
    {
      *a4 = 0;
    }

    v17 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v17 = 0;
LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t decodeTimeFromJSONDictionary(void *a1, void *a2, void *a3)
{
  v8 = 0;
  v4 = decodeUnsignedIntegerFromJSONDictionary(a1, a2, 1, 0xFFFFFFFFuLL, &v8);
  v5 = v8;
  v6 = v5;
  if (v4)
  {
    *a3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{objc_msgSend(v5, "unsignedLongValue")}];
  }

  return v4;
}

uint64_t decodePortFromJSONDictionary(void *a1, void *a2, int a3, _WORD *a4, BOOL *a5)
{
  v12 = 0;
  v7 = decodeUnsignedIntegerFromJSONDictionary(a1, a2, a3, 0xFFFFuLL, &v12);
  v8 = v12;
  v9 = v8;
  if (v7)
  {
    if (a5)
    {
      *a5 = v8 != 0;
    }

    if (v8)
    {
      v10 = [v8 unsignedShortValue];
    }

    else
    {
      v10 = 0;
    }

    *a4 = v10;
  }

  return v7;
}

void sub_253A67CF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

id serviceTypeUUIDsForAccessory(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = [a1 services];
  if ([v1 count])
  {
    v2 = +[HMDHAPMetadata getSharedInstance];
    v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v1, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 type];
          if (([v2 shouldFilterServiceOfType:v10] & 1) == 0)
          {
            v11 = [v9 type];
            [v3 addObject:v11];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    v12 = [v3 copy];
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void sub_253A74C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253A797E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak(&STACK[0x3A0]);
  _Unwind_Resume(a1);
}

__CFString *HMDFMFStatusAsString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDFMFStatus %tu", a1];
  }

  else
  {
    v2 = off_27972F840[a1];
  }

  return v2;
}

__CFString *changeTypeAsNSString(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<UNKNOWN %lu>", a1];
  }

  else
  {
    v2 = off_27972F860[a1];
  }

  return v2;
}

void __sort(void *a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count] >= 2)
  {
    v2 = [v1 mutableCopy];
    v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v1, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v37 = v1;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v54;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v54 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v53 + 1) + 8 * i) change];
          v10 = [v9 uuid];
          [v3 addObject:v10];
        }

        v6 = [v4 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v6);
    }

    v41 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v11 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
    v12 = [v2 count];
    v13 = 0;
    v38 = v12 & ~(v12 >> 63);
    v39 = v4;
    v42 = v2;
    while ([v2 count])
    {
      v40 = v13;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = [v2 copy];
      v14 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
      if (v14)
      {
        v15 = v14;
        v44 = *v50;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v50 != v44)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v49 + 1) + 8 * j);
            v18 = [MEMORY[0x277CBEB58] set];
            v19 = [v17 change];
            v20 = [v19 parentUUID];

            if (v20)
            {
              v21 = [v17 change];
              v22 = [v21 parentUUID];
              [v18 addObject:v22];
            }

            v23 = [v17 dependentUUIDs];
            v24 = [v23 allObjects];
            [v18 addObjectsFromArray:v24];

            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v25 = v18;
            v26 = [v25 countByEnumeratingWithState:&v45 objects:v61 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v46;
              while (2)
              {
                for (k = 0; k != v27; ++k)
                {
                  if (*v46 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v45 + 1) + 8 * k);
                  if ([v3 containsObject:v30] && !objc_msgSend(v11, "containsObject:", v30))
                  {

                    goto LABEL_29;
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v45 objects:v61 count:16];
                if (v27)
                {
                  continue;
                }

                break;
              }
            }

            [v41 addObject:v17];
            v31 = [v17 change];
            v32 = [v31 uuid];
            [v11 addObject:v32];

            [v42 removeObject:v17];
LABEL_29:
          }

          v15 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
        }

        while (v15);
      }

      v4 = v39;
      v13 = v40 + 1;
      v2 = v42;
      if (v40 == v38)
      {
        v33 = objc_autoreleasePoolPush();
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v58 = v35;
          v59 = 2112;
          v60 = v42;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Possible circular dependency in %@, trying to continue", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        [v41 addObjectsFromArray:v42];
        [v42 removeAllObjects];
        break;
      }
    }

    [v4 setArray:v41];

    v1 = v37;
  }

  v36 = *MEMORY[0x277D85DE8];
}

id __identifierForParentUUID(void *a1)
{
  v1 = __identifierForParentUUID_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&__identifierForParentUUID_onceToken, &__block_literal_global_1190);
  }

  v3 = objc_alloc(MEMORY[0x277CCAD78]);
  v4 = __identifierForParentUUID_namespace;
  v5 = [v2 UUIDString];

  v6 = [v5 dataUsingEncoding:4];
  v7 = [v3 initWithNamespace:v4 data:v6];

  return v7;
}

uint64_t ____identifierForParentUUID_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"497A934F-F7DC-4596-BA43-9B1BBA077D55"];
  v1 = __identifierForParentUUID_namespace;
  __identifierForParentUUID_namespace = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id __HMDDeviceCapabilitiesModelCodingKeyMapping()
{
  v63[59] = *MEMORY[0x277D85DE8];
  v62[0] = @"HM.keychainSync";
  v61 = NSStringFromSelector(sel_supportsKeychainSync);
  v63[0] = v61;
  v62[1] = @"HM.deviceSetup";
  v60 = NSStringFromSelector(sel_supportsDeviceSetup);
  v63[1] = v60;
  v62[2] = @"HM.keyTransferClient";
  v59 = NSStringFromSelector(sel_supportsKeyTransferClient);
  v63[2] = v59;
  v62[3] = @"HM.keyTransferServer";
  v58 = NSStringFromSelector(sel_supportsKeyTransferServer);
  v63[3] = v58;
  v62[4] = @"HM.standalone";
  v57 = NSStringFromSelector(sel_supportsStandaloneMode);
  v63[4] = v57;
  v62[5] = @"HM.cloudDataSync";
  v56 = NSStringFromSelector(sel_supportsCloudDataSync);
  v63[5] = v56;
  v62[6] = @"HM.WHA";
  v55 = NSStringFromSelector(sel_supportsWholeHouseAudio);
  v63[6] = v55;
  v62[7] = @"HM.assistantAC";
  v54 = NSStringFromSelector(sel_supportsAssistantAccessControl);
  v63[7] = v54;
  v62[8] = @"HM.resident";
  v53 = NSStringFromSelector(sel_residentCapable);
  v63[8] = v53;
  v62[9] = @"HM.remoteGateway";
  v52 = NSStringFromSelector(sel_remoteGatewayCapable);
  v63[9] = v52;
  v62[10] = @"HM.homeInvitation";
  v51 = NSStringFromSelector(sel_supportsHomeInvitation);
  v63[10] = v51;
  v62[11] = @"HM.targetControl";
  v50 = NSStringFromSelector(sel_supportsTargetControl);
  v63[11] = v50;
  v62[12] = @"HM.multiUser";
  v49 = NSStringFromSelector(sel_supportsMultiUser);
  v63[12] = v49;
  v62[13] = @"HM.homeLevelLocationServiceSetting";
  v48 = NSStringFromSelector(sel_supportsHomeLevelLocationServiceSetting);
  v63[13] = v48;
  v62[14] = @"HM.restart";
  v47 = NSStringFromSelector(sel_supportsCompanionInitiatedRestart);
  v63[14] = v47;
  v62[15] = @"HM.obliterate";
  v46 = NSStringFromSelector(sel_supportsCompanionInitiatedObliterate);
  v63[15] = v46;
  v62[16] = @"HM.camRec";
  v45 = NSStringFromSelector(sel_supportsCameraRecording);
  v63[16] = v45;
  v62[17] = @"HM.routerManagement";
  v44 = NSStringFromSelector(sel_supportsRouterManagement);
  v63[17] = v44;
  v62[18] = @"HM.shortcutAction";
  v43 = NSStringFromSelector(sel_supportsShortcutActions);
  v63[18] = v43;
  v62[19] = @"HM.mediaActions";
  v42 = NSStringFromSelector(sel_supportsMediaActions);
  v63[19] = v42;
  v62[20] = @"HM.firmwareUpdate";
  v41 = NSStringFromSelector(sel_supportsFirmwareUpdate);
  v63[20] = v41;
  v62[21] = @"HM.residentFirmwareUpdate";
  v40 = NSStringFromSelector(sel_supportsResidentFirmwareUpdate);
  v63[21] = v40;
  v62[22] = @"HM.cameraActivityZones";
  v39 = NSStringFromSelector(sel_supportsCameraActivityZones);
  v63[22] = v39;
  v62[23] = @"HM.createMusicAlarm";
  v38 = NSStringFromSelector(sel_supportsMusicAlarm);
  v63[23] = v38;
  v62[24] = @"HM.faceClassification";
  v37 = NSStringFromSelector(sel_supportsFaceClassification);
  v63[24] = v37;
  v62[25] = @"HM.naturalLighting";
  v36 = NSStringFromSelector(sel_supportsNaturalLighting);
  v63[25] = v36;
  v62[26] = @"HM.IDSActivityMonitorPresence";
  v35 = NSStringFromSelector(sel_supportsIDSActivityMonitorPresence);
  v63[26] = v35;
  v62[27] = @"HM.cameraRecordingReachabilityNotifications";
  v34 = NSStringFromSelector(sel_supportsCameraRecordingReachabilityNotifications);
  v63[27] = v34;
  v62[28] = @"HM.announce";
  v33 = NSStringFromSelector(sel_supportsAnnounce);
  v63[28] = v33;
  v62[29] = @"HM.ThirdPartyMusic";
  v32 = NSStringFromSelector(sel_supportsThirdPartyMusic);
  v63[29] = v32;
  v62[30] = @"HM.preferredMediaUser";
  v31 = NSStringFromSelector(sel_supportsPreferredMediaUser);
  v63[30] = v31;
  v62[31] = @"HM.ThreadBorderRouter";
  v30 = NSStringFromSelector(sel_supportsThreadBorderRouter);
  v63[31] = v30;
  v62[32] = @"HM.siriEndpointSetup";
  v29 = NSStringFromSelector(sel_supportsSiriEndpointSetup);
  v63[32] = v29;
  v62[33] = @"HM.homeHub";
  v28 = NSStringFromSelector(sel_supportsHomeHub);
  v63[33] = v28;
  v62[34] = @"HM.lockNotificationContext";
  v27 = NSStringFromSelector(sel_supportsLockNotificationContext);
  v63[34] = v27;
  v62[35] = @"HM.wakeOnLAN";
  v26 = NSStringFromSelector(sel_supportsWakeOnLAN);
  v63[35] = v26;
  v62[36] = @"HM.audioReturnChannel";
  v25 = NSStringFromSelector(sel_supportsAudioReturnChannel);
  v63[36] = v25;
  v62[37] = @"HM.walletKey";
  v24 = NSStringFromSelector(sel_supportsWalletKey);
  v63[37] = v24;
  v62[38] = @"HM.cameraPackageDetection";
  v23 = NSStringFromSelector(sel_supportsCameraPackageDetection);
  v63[38] = v23;
  v62[39] = @"HM.coordinationDoorbellChime";
  v22 = NSStringFromSelector(sel_supportsCoordinationDoorbellChime);
  v63[39] = v22;
  v62[40] = @"HM.coordinationFreeDoorbellChime";
  v21 = NSStringFromSelector(sel_supportsCoordinationFreeDoorbellChime);
  v63[40] = v21;
  v62[41] = @"HM.TVOSUpdateManualUpdateAvailableNotification";
  v20 = NSStringFromSelector(sel_supportsTVOSUpdateManualUpdateAvailableNotification);
  v63[41] = v20;
  v62[42] = @"HM.accessCodes";
  v19 = NSStringFromSelector(sel_supportsAccessCodes);
  v63[42] = v19;
  v62[43] = @"HM.CHIP";
  v18 = NSStringFromSelector(sel_supportsCHIP);
  v63[43] = v18;
  v62[44] = @"HM.doorbellChime";
  v17 = NSStringFromSelector(sel_supportsDoorbellChime);
  v63[44] = v17;
  v62[45] = @"HM.userMediaSettings";
  v16 = NSStringFromSelector(sel_supportsUserMediaSettings);
  v63[45] = v16;
  v62[46] = @"HM.unifiedMediaNotifications";
  v15 = NSStringFromSelector(sel_supportsUnifiedMediaNotifications);
  v63[46] = v15;
  v62[47] = @"HM.managedConfigProfile";
  v14 = NSStringFromSelector(sel_supportsManagedConfigurationProfile);
  v63[47] = v14;
  v62[48] = @"HM.captiveNetworks";
  v13 = NSStringFromSelector(sel_supportsCaptiveNetworks);
  v63[48] = v13;
  v62[49] = @"HM.modernTransport";
  v0 = NSStringFromSelector(sel_supportsModernTransport);
  v63[49] = v0;
  v62[50] = @"HM.residentFirstAccessoryCommunication";
  v1 = NSStringFromSelector(sel_supportsResidentFirstAccessoryCommunication);
  v63[50] = v1;
  v62[51] = @"HM.messagedHomePodSettings";
  v2 = NSStringFromSelector(sel_supportsMessagedHomePodSettings);
  v63[51] = v2;
  v62[52] = @"HM.customDestinationMediaAction";
  v3 = NSStringFromSelector(sel_supportsCustomMediaApplicationDestination);
  v63[52] = v3;
  v62[53] = @"HM.threadNetworkCredentialSharing";
  v4 = NSStringFromSelector(sel_supportsThreadNetworkCredentialSharing);
  v63[53] = v4;
  v62[54] = @"HM.matterSharedAdminPairing";
  v5 = NSStringFromSelector(sel_supportsMatterSharedAdminPairing);
  v63[54] = v5;
  v62[55] = @"HM.appleTVRMV";
  v6 = NSStringFromSelector(sel_supportsRMVonAppleTV);
  v63[55] = v6;
  v62[56] = @"HM.justSiri";
  v7 = NSStringFromSelector(sel_supportsJustSiri);
  v63[56] = v7;
  v62[57] = @"HM.threadService";
  v8 = NSStringFromSelector(sel_supportsThreadService);
  v63[57] = v8;
  v62[58] = @"HM.matterOwnerCertFetch";
  v9 = NSStringFromSelector(sel_supportsMatterOwnerCertFetch);
  v63[58] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:59];

  v10 = *MEMORY[0x277D85DE8];

  return v12;
}

BOOL productSupportsKeychainSync(void *a1)
{
  v1 = a1;
  v2 = [v1 productPlatform];
  v3 = 1;
  if (v2 > 2)
  {
    if (v2 == 5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!v2)
  {
    goto LABEL_8;
  }

  if (v2 != 1)
  {
    if (v2 == 2 && [v1 productClass] != 6)
    {
      v3 = [v1 productClass] != 4;
      goto LABEL_9;
    }

LABEL_8:
    v3 = 0;
  }

LABEL_9:

  return v3;
}

BOOL productSupportsDeviceSetup(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  if (v4 != 4)
  {
    return v4 == 6;
  }

  v6 = *MEMORY[0x277D0F700];
  v7 = *(MEMORY[0x277D0F700] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsKeyTransferClient(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v5 productPlatform] == 1)
  {
    goto LABEL_7;
  }

  v8 = [v5 softwareVersion];
  v9 = v8;
  if (v8)
  {
    [v8 operatingSystemVersion];
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v13 = *MEMORY[0x277D0F708];
  v14 = *(MEMORY[0x277D0F708] + 16);
  v10 = HMFOperatingSystemVersionCompare();

  if (v10 == -1)
  {
LABEL_7:
    v11 = [v5 productPlatform] == 5;
  }

  else
  {
    v11 = productSupportsKeychainSync(v5);
  }

  return v11;
}

BOOL productSupportsKeyTransferServer(void *a1)
{
  v1 = a1;
  if ([v1 productClass] == 4 && objc_msgSend(v1, "productPlatform") == 4)
  {
    v2 = [v1 softwareVersion];
    v3 = v2;
    if (v2)
    {
      [v2 operatingSystemVersion];
    }

    v8 = *MEMORY[0x277D0F708];
    v10 = *(MEMORY[0x277D0F708] + 16);
    if (HMFOperatingSystemVersionCompare() == -1)
    {
      v4 = 0;
    }

    else
    {
      v5 = [v1 softwareVersion];
      v6 = v5;
      if (v5)
      {
        [v5 operatingSystemVersion];
      }

      v9 = *MEMORY[0x277D0F728];
      v11 = *(MEMORY[0x277D0F728] + 16);
      v4 = HMFOperatingSystemVersionCompare() == -1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL productSupportsStandaloneMode(void *a1)
{
  v1 = a1;
  v2 = [v1 productPlatform];
  if (v2 > 5)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  if (((1 << v2) & 0x2A) == 0)
  {
    if (((1 << v2) & 0x11) == 0 && [v1 productClass] != 6)
    {
      v3 = [v1 productClass] != 4;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 1;
LABEL_6:

  return v3;
}

uint64_t productSupportsCloudDataSync(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = 1;
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        goto LABEL_15;
      }

      if (v4 == 2)
      {
        v6 = [v1 productClass] == 4;
        goto LABEL_12;
      }
    }

LABEL_10:
    v5 = 0;
    goto LABEL_15;
  }

  if (v4 == 5)
  {
    goto LABEL_15;
  }

  if (v4 != 4)
  {
    goto LABEL_10;
  }

  v8 = *MEMORY[0x277D0F708];
  v9 = *(MEMORY[0x277D0F708] + 16);
  v6 = HMFOperatingSystemVersionCompare() == 1;
LABEL_12:
  v5 = !v6;
LABEL_15:

  return v5;
}

BOOL productSupportsWholeHouseAudio(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  if (v4 == 6)
  {
    v5 = MEMORY[0x277D0F378];
    goto LABEL_7;
  }

  if (v4 == 4)
  {
    v5 = MEMORY[0x277D0F360];
LABEL_7:
    v7 = *v5;
    v8 = *(v5 + 2);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return 0;
}

BOOL productSupportsAssistantAccessControl(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  if (v4 != 6)
  {
    return 0;
  }

  v6 = *MEMORY[0x277D0F2B0];
  v7 = *(MEMORY[0x277D0F2B0] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productIsResidentCapable(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  switch(v4)
  {
    case 6:
      return 1;
    case 4:
      v5 = MEMORY[0x277D0F708];
      goto LABEL_8;
    case 3:
      v5 = MEMORY[0x277D0F710];
LABEL_8:
      v7 = *v5;
      v8 = *(v5 + 2);
      return HMFOperatingSystemVersionCompare() != 1;
  }

  return 0;
}

BOOL productSupportsHomeInvitation(void *a1)
{
  v1 = a1;
  v2 = [v1 productPlatform];
  if (v2 == 1 || v2 == 5)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 2 && [v1 productClass] != 6 && objc_msgSend(v1, "productClass") != 4;
  }

  return v4;
}

BOOL productSupportsTargetControl(void *a1)
{
  v1 = a1;
  if ([v1 productClass] == 4)
  {
    v2 = [v1 softwareVersion];
    v3 = v2;
    if (v2)
    {
      [v2 operatingSystemVersion];
    }

    v6 = *MEMORY[0x277D0F420];
    v7 = *(MEMORY[0x277D0F420] + 16);
    v4 = HMFOperatingSystemVersionCompare() != 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL productSupportsMultiUser(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  if (v4 == 6)
  {
    v5 = MEMORY[0x277D0F748];
    goto LABEL_7;
  }

  if (v4 == 4)
  {
    v5 = MEMORY[0x277D0F728];
LABEL_7:
    v7 = *v5;
    v8 = *(v5 + 2);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return 0;
}

BOOL productSupportsHomeLevelLocationServiceSetting(void *a1)
{
  v1 = a1;
  v2 = [v1 productPlatform];
  v3 = [v1 productClass];
  v4 = [v1 softwareVersion];

  if (v4)
  {
    [v4 operatingSystemVersion];
  }

  result = 0;
  if (v2 == 4 && v3 == 6)
  {
    v6 = *MEMORY[0x277D0F608];
    v7 = *(MEMORY[0x277D0F608] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsCompanionInitiatedRestart(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  if (v4 != 6)
  {
    return 0;
  }

  v6 = *MEMORY[0x277D0F730];
  v7 = *(MEMORY[0x277D0F730] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsCompanionInitiatedObliterate(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  if (v4 != 6)
  {
    return 0;
  }

  v6 = *MEMORY[0x277D0F690];
  v7 = *(MEMORY[0x277D0F690] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsCameraRecording(void *a1)
{
  v1 = a1;
  v2 = [v1 productPlatform];
  v3 = [v1 productClass];
  v4 = [v1 softwareVersion];

  if (v4)
  {
    [v4 operatingSystemVersion];
  }

  result = 0;
  if (v3 <= 6 && ((1 << v3) & 0x58) != 0)
  {
    if (v2 == 2)
    {
      v6 = MEMORY[0x277D0F748];
      goto LABEL_9;
    }

    if (v2 == 4)
    {
      v6 = MEMORY[0x277D0F728];
LABEL_9:
      v7 = *v6;
      v8 = *(v6 + 2);
      return HMFOperatingSystemVersionCompare() != 1;
    }

    return 0;
  }

  return result;
}

BOOL productSupportsRouterManagement(void *a1)
{
  v1 = a1;
  if (!productIsResidentCapable(v1))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_12;
  }

  v2 = [v1 productPlatform];
  v3 = [v1 productClass];
  v4 = [v1 softwareVersion];
  v5 = v4;
  if (v4)
  {
    [v4 operatingSystemVersion];
  }

  v6 = 0;
  if (v3 <= 6 && ((1 << v3) & 0x58) != 0)
  {
    if (v2 == 4)
    {
      v7 = MEMORY[0x277D0F718];
      goto LABEL_11;
    }

    if (v2 == 2)
    {
      v7 = MEMORY[0x277D0F730];
LABEL_11:
      v9 = *v7;
      v10 = *(v7 + 2);
      v6 = HMFOperatingSystemVersionCompare() != 1;
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_12:

  return v6;
}

BOOL productSupportsShortcutActions(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        v5 = MEMORY[0x277D0F728];
        goto LABEL_15;
      }

      if (v4 == 5)
      {
        return 1;
      }
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (v4 == 1)
  {
    v5 = MEMORY[0x277D0F470];
    goto LABEL_15;
  }

  if (v4 != 2)
  {
    return 0;
  }

  v5 = MEMORY[0x277D0F748];
LABEL_15:
  v7 = *v5;
  v8 = *(v5 + 2);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsMediaActions(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = MEMORY[0x277D0F418];
        goto LABEL_16;
      case 4:
        v5 = MEMORY[0x277D0F728];
        goto LABEL_16;
      case 5:
        return 1;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (v4 == 1)
  {
    v5 = MEMORY[0x277D0F470];
    goto LABEL_16;
  }

  if (v4 != 2)
  {
    return 0;
  }

  v5 = MEMORY[0x277D0F748];
LABEL_16:
  v7 = *v5;
  v8 = *(v5 + 2);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsFirmwareUpdate(void *a1)
{
  v1 = a1;
  v2 = [v1 productPlatform];
  v3 = [v1 productClass];
  v4 = [v1 softwareVersion];
  v5 = v4;
  if (v4)
  {
    [v4 operatingSystemVersion];
  }

  if ([v1 productPlatform] == 1)
  {
    v6 = MEMORY[0x277D0F400];
LABEL_5:
    v9 = *v6;
    v10 = *(v6 + 2);
    v7 = HMFOperatingSystemVersionCompare() != 1;
    goto LABEL_6;
  }

  v7 = 0;
  if (v3 <= 3)
  {
    if (v3 == 1 || v3 == 3)
    {
      if (v2 == 2)
      {
        v6 = MEMORY[0x277D0F250];
        goto LABEL_5;
      }

      goto LABEL_17;
    }
  }

  else
  {
    switch(v3)
    {
      case 4:
        goto LABEL_11;
      case 11:
        v7 = 1;
        break;
      case 6:
LABEL_11:
        if (v2 == 4)
        {
          v6 = MEMORY[0x277D0F620];
          goto LABEL_5;
        }

LABEL_17:
        v7 = 0;
        break;
    }
  }

LABEL_6:

  return v7;
}

BOOL productSupportsResidentFirmwareUpdate(void *a1)
{
  v1 = a1;
  v2 = [v1 productPlatform];
  v3 = [v1 productClass];
  v4 = [v1 softwareVersion];

  if (v4)
  {
    [v4 operatingSystemVersion];
  }

  if ((v3 | 2) != 6 || v2 != 4)
  {
    return 0;
  }

  v6 = *MEMORY[0x277D0F620];
  v7 = *(MEMORY[0x277D0F620] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsCameraActivityZones(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  if (v5 == 6 || v5 == 4)
  {
    if (v4 == 4)
    {
      v6 = MEMORY[0x277D0F228];
      goto LABEL_10;
    }
  }

  else if (v5 == 3 && v4 == 2)
  {
    v6 = MEMORY[0x277D0F250];
LABEL_10:
    v8 = *v6;
    v9 = *(v6 + 2);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return 0;
}

BOOL productSupportsMusicAlarm(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productClass];
  if (v4 != 6)
  {
    return 0;
  }

  v6 = *MEMORY[0x277D0F228];
  v7 = *(MEMORY[0x277D0F228] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsAnnounce(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 > 4)
  {
    if (v5 == 5)
    {
      if (v4 == 3)
      {
        v7 = MEMORY[0x277D0F458];
        goto LABEL_14;
      }
    }

    else
    {
      if (v5 != 6)
      {
        return v5 == 11;
      }

      if (v4 == 4)
      {
        v7 = MEMORY[0x277D0F228];
        goto LABEL_14;
      }
    }
  }

  else
  {
    if ((v5 - 1) >= 3)
    {
      return result;
    }

    if (v4 == 2)
    {
      v7 = MEMORY[0x277D0F250];
LABEL_14:
      v8 = *v7;
      v9 = *(v7 + 2);
      return HMFOperatingSystemVersionCompare() != 1;
    }
  }

  return 0;
}

BOOL productSupportsThirdPartyMusic(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 6 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F228];
    v8 = *(MEMORY[0x277D0F228] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsPreferredMediaUser(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 6 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F208];
    v8 = *(MEMORY[0x277D0F208] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsUserMediaSettings(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 6 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F608];
    v8 = *(MEMORY[0x277D0F608] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsCoordinationDoorbellChime(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 6 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F648];
    v8 = *(MEMORY[0x277D0F648] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsCoordinationFreeDoorbellChime(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 6 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F690];
    v8 = *(MEMORY[0x277D0F690] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsSiriEndpointSetup(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  if ((v5 | 2) != 6 || v4 != 4)
  {
    return 0;
  }

  v7 = *MEMORY[0x277D0F218];
  v8 = *(MEMORY[0x277D0F218] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsHomeHub(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 softwareVersion];
  v6 = v5;
  if (v5)
  {
    [v5 operatingSystemVersion];
  }

  v7 = [v4 productPlatform];
  v8 = [v4 productClass];

  if (v8 == 6)
  {
    v9 = [v3 supportsSiriHub];
    v10 = 0;
    if (v7 == 4 && v9)
    {
      v12 = *MEMORY[0x277D0F218];
      v13 = *(MEMORY[0x277D0F218] + 16);
      v10 = HMFOperatingSystemVersionCompare() != 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL productSupportsWakeOnLAN(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 > 3)
  {
    if (v5 == 4 || v5 == 6)
    {
      if (v4 == 4)
      {
        v7 = MEMORY[0x277D0F620];
        goto LABEL_12;
      }

      return 0;
    }
  }

  else if (v5 == 1 || v5 == 3)
  {
    if (v4 == 2)
    {
      v7 = MEMORY[0x277D0F648];
LABEL_12:
      v8 = *v7;
      v9 = *(v7 + 2);
      return HMFOperatingSystemVersionCompare() != 1;
    }

    return 0;
  }

  return result;
}

BOOL productSupportsLockNotificationContext(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  if (v5 == 6 || v5 == 4)
  {
    if (v4 == 4)
    {
      v6 = MEMORY[0x277D0F620];
      goto LABEL_10;
    }
  }

  else if (v5 == 3 && v4 == 2)
  {
    v6 = MEMORY[0x277D0F648];
LABEL_10:
    v8 = *v6;
    v9 = *(v6 + 2);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return 0;
}

uint64_t productSupportsAudioReturnChannel(void *a1, void *a2)
{
  v3 = a2;
  if ([a1 productClass] == 6)
  {
    v4 = [v3 supportsReceivingARCStreamOverAirPlay];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL productSupportsUnifiedMediaNotifications(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  if ((v5 | 2) != 6 || v4 != 4)
  {
    return 0;
  }

  v7 = *MEMORY[0x277D0F608];
  v8 = *(MEMORY[0x277D0F608] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsCaptiveNetworks(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 6 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F610];
    v8 = *(MEMORY[0x277D0F610] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsResidentFirstAccessoryCommunication(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 <= 6 && ((1 << v5) & 0x58) != 0)
  {
    if (v4 == 2)
    {
      v7 = MEMORY[0x277D0F638];
      goto LABEL_9;
    }

    if (v4 == 4)
    {
      v7 = MEMORY[0x277D0F610];
LABEL_9:
      v8 = *v7;
      v9 = *(v7 + 2);
      return HMFOperatingSystemVersionCompare() != 1;
    }

    return 0;
  }

  return result;
}

BOOL productSupportsMessagedHomePodSettings(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (_os_feature_enabled_impl())
  {
    v5 = [v3 softwareVersion];
    v6 = v5;
    if (v5)
    {
      [v5 operatingSystemVersion];
    }

    v8 = [v3 productPlatform];
    v7 = 0;
    if ([v3 productClass] == 6 && v8 == 4)
    {
      v9 = +[HMDHomeKitVersion version8];
      if ([v9 compare:v4] == 1)
      {
        v7 = 0;
      }

      else
      {
        v11 = *MEMORY[0x277D0F608];
        v12 = *(MEMORY[0x277D0F608] + 16);
        v7 = HMFOperatingSystemVersionCompare() != 1;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL productSupportsCustomMediaApplicationDestination(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  if ((v5 | 2) != 6 || v4 != 4)
  {
    return 0;
  }

  v7 = *MEMORY[0x277D0F588];
  v8 = *(MEMORY[0x277D0F588] + 16);
  return HMFOperatingSystemVersionCompare() != 1;
}

BOOL productSupportsThreadNetworkCredentialSharing(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [v7 softwareVersion];
  v9 = v8;
  if (v8)
  {
    [v8 operatingSystemVersion];
  }

  v10 = [v7 productPlatform];
  v11 = [v7 productClass];
  IsResidentCapable = productIsResidentCapable(v7);

  if (IsResidentCapable)
  {
    if (v11 == 6 || v11 == 4)
    {
      if (v10 == 4)
      {
        v13 = MEMORY[0x277D0F588];
        goto LABEL_11;
      }
    }

    else if (v11 == 3 && v10 == 2)
    {
      v13 = MEMORY[0x277D0F6E8];
LABEL_11:
      v15 = *v13;
      v16 = *(v13 + 2);
      return HMFOperatingSystemVersionCompare() != 1;
    }
  }

  return 0;
}

BOOL productSupportsMatterSharedAdminPairing(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [v7 softwareVersion];
  v9 = v8;
  if (v8)
  {
    [v8 operatingSystemVersion];
  }

  v10 = [v7 productPlatform];
  v11 = [v7 productClass];
  IsResidentCapable = productIsResidentCapable(v7);

  if (IsResidentCapable)
  {
    if (v11 == 6 || v11 == 4)
    {
      if (v10 == 4)
      {
        v13 = MEMORY[0x277D0F578];
        goto LABEL_11;
      }
    }

    else if (v11 == 3 && v10 == 2)
    {
      v13 = MEMORY[0x277D0F6D8];
LABEL_11:
      v15 = *v13;
      v16 = *(v13 + 2);
      return HMFOperatingSystemVersionCompare() != 1;
    }
  }

  return 0;
}

uint64_t productSupportsRMVonAppleTV(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 4 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F550];
    v8 = *(MEMORY[0x277D0F550] + 16);
    if (HMFOperatingSystemVersionCompare() == 1)
    {
      return 0;
    }

    else
    {
      return _os_feature_enabled_impl();
    }
  }

  return result;
}

BOOL productSupportsJustSiri(void *a1)
{
  v1 = a1;
  v2 = [v1 softwareVersion];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [v1 productPlatform];
  v5 = [v1 productClass];

  result = 0;
  if (v5 == 6 && v4 == 4)
  {
    v7 = *MEMORY[0x277D0F698];
    v8 = *(MEMORY[0x277D0F698] + 16);
    return HMFOperatingSystemVersionCompare() != 1;
  }

  return result;
}

BOOL productSupportsMatterOwnerCertFetch(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = [v7 softwareVersion];
  v9 = v8;
  if (v8)
  {
    [v8 operatingSystemVersion];
  }

  v10 = [v7 productPlatform];
  v11 = [v7 productClass];
  IsResidentCapable = productIsResidentCapable(v7);

  if (IsResidentCapable)
  {
    if (v11 == 6 || v11 == 4)
    {
      if (v10 == 4)
      {
        v13 = MEMORY[0x277D0F688];
        goto LABEL_11;
      }
    }

    else if (v11 == 3 && v10 == 2)
    {
      v13 = MEMORY[0x277D0F320];
LABEL_11:
      v15 = *v13;
      v16 = *(v13 + 2);
      return HMFOperatingSystemVersionCompare() != 1;
    }
  }

  return 0;
}

void sub_253A8AD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HMDWatchManagerUpdateWithConnectedDevices(void *a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v39 = a1;
  v40 = a2;
  if (v39)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = v39;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543618;
      v64 = v6;
      v65 = 2112;
      v66 = v40;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Processing connected devices: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v41 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v40, "count")}];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v7 = v40;
    v8 = [v7 countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v8)
    {
      v9 = *v53;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v53 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v52 + 1) + 8 * i);
          if ([HMDWatchManager isCompatibleWatchDevice:v11])
          {
            v12 = [[HMDDevice alloc] initWithService:*&v4[10]._os_unfair_lock_opaque device:v11];
            if (v12)
            {
              [v41 addObject:v12];
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v52 objects:v62 count:16];
      }

      while (v8);
    }

    os_unfair_lock_lock_with_options();
    v38 = [MEMORY[0x277CBEB98] setWithArray:*&v4[8]._os_unfair_lock_opaque];
    v13 = [v41 allObjects];
    v14 = *&v4[8]._os_unfair_lock_opaque;
    *&v4[8]._os_unfair_lock_opaque = v13;

    LOBYTE(v4[6]._os_unfair_lock_opaque) = [v41 count] != 0;
    os_unfair_lock_unlock(v4 + 2);
    [v38 hmf_removedObjectsFromSet:v41];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    obj = v49 = 0u;
    v15 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v15)
    {
      v16 = *v49;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v49 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v48 + 1) + 8 * j);
          v19 = objc_autoreleasePoolPush();
          v20 = v4;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = HMFGetLogIdentifier();
            *buf = 138543618;
            v64 = v22;
            v65 = 2112;
            v66 = v18;
            _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Removed connected device: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v19);
          v23 = +[HMDWatchConnectivityLogEventManager sharedInstance];
          [v23 incrementWatchRemovedNotificationCount];

          v24 = [MEMORY[0x277CCAB98] defaultCenter];
          v59 = @"HMDDeviceNotificationKey";
          v60 = v18;
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          [v24 postNotificationName:@"HMDWatcherManagerWatchDisconnectedNotification" object:v20 userInfo:v25];
        }

        v15 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v15);
    }

    [v38 hmf_addedObjectsFromSet:v41];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    obja = v45 = 0u;
    v26 = [obja countByEnumeratingWithState:&v44 objects:v58 count:16];
    if (v26)
    {
      v27 = *v45;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v45 != v27)
          {
            objc_enumerationMutation(obja);
          }

          v29 = *(*(&v44 + 1) + 8 * k);
          v30 = objc_autoreleasePoolPush();
          v31 = v4;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = HMFGetLogIdentifier();
            *buf = 138543618;
            v64 = v33;
            v65 = 2112;
            v66 = v29;
            _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Added connected device: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v30);
          v34 = +[HMDWatchConnectivityLogEventManager sharedInstance];
          [v34 incrementWatchAddedNotificationCount];

          v35 = [MEMORY[0x277CCAB98] defaultCenter];
          v56 = @"HMDDeviceNotificationKey";
          v57 = v29;
          v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          [v35 postNotificationName:@"HMDWatcherManagerWatchConnectedNotification" object:v31 userInfo:v36];
        }

        v26 = [obja countByEnumeratingWithState:&v44 objects:v58 count:16];
      }

      while (v26);
    }
  }

  v37 = *MEMORY[0x277D85DE8];
}

void sub_253A9BF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__154306(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253A9C8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253AA0F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose((v33 - 128), 8);
  _Unwind_Resume(a1);
}

void __updateClipManagerWriteAccess(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 workQueue];
  dispatch_assert_queue_V2(v5);

  [v3 accessModeAtHome];
  LOBYTE(v5) = HMIsRecordingAllowedForCameraAccessMode();
  [v3 accessModeNotAtHome];

  LOBYTE(v3) = v5 | HMIsRecordingAllowedForCameraAccessMode();
  v6 = [v4 clipManager];

  [v6 setHasWriteAccess:v3 & 1];
}

void sub_253AB7AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL __HMDDeviceSetupManagerIsProxSetupRunning(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 darwinNotificationProvider];
  v3 = [v2 notifyIsValidToken:v1[3]];

  if (v3)
  {
    v13 = 0;
    v4 = [v1 darwinNotificationProvider];
    v5 = [v4 notifyGetState:v1[3] state:&v13];

    if (!v5)
    {
      v10 = v13 == 1;
      goto LABEL_7;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = v1;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v9;
      v16 = 1024;
      v17 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to get ProxSetup state with status: %u", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = 0;
LABEL_7:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_253AB88B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v4 - 112));
  _Unwind_Resume(a1);
}

void sub_253AB9264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253AB9CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61)
{
  objc_destroyWeak((v61 + 40));
  objc_destroyWeak(&a36);
  objc_destroyWeak(&a41);
  objc_destroyWeak(&a46);
  objc_destroyWeak(&a51);
  objc_destroyWeak(&a56);
  objc_destroyWeak(&a61);
  objc_destroyWeak((v62 - 248));
  _Unwind_Resume(a1);
}

void sub_253ABDD78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__157495(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253AC4040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253AC6ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253AC8664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 88));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253ACB1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 64));
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak((v30 - 176));
  _Unwind_Resume(a1);
}

void sub_253ACC95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 64));
  objc_destroyWeak((v28 + 56));
  objc_destroyWeak(&location);
  objc_destroyWeak((v29 - 160));
  _Unwind_Resume(a1);
}

void sub_253ACDB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak((v28 + 72));
  objc_destroyWeak((v28 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak((v29 - 160));
  _Unwind_Resume(a1);
}

void sub_253ACEBA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ipAccessoryStageSystemCriteria()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D86280], "com.apple.homed.firmwareUpdate.ipAccessory.stage.group");
  v1 = *MEMORY[0x277D86278];
  v2 = uint32ForPreference(@"firmwareUpdateIPAccessoryStageConcurrentLimit");
  xpc_dictionary_set_uint64(v0, v1, v2);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86390], 1);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D862F8], *MEMORY[0x277D86308]);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86230], 1);

  return v0;
}

id bleAccessoryStageSystemCriteria()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D86280], "com.apple.homed.firmwareUpdate.bleAccessory.stage.group");
  v1 = *MEMORY[0x277D86278];
  v2 = uint32ForPreference(@"firmwareUpdateBLEAccessoryStageConcurrentLimit");
  xpc_dictionary_set_uint64(v0, v1, v2);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_int64(v0, *MEMORY[0x277D86250], 5);
  xpc_dictionary_set_int64(v0, *MEMORY[0x277D86270], *MEMORY[0x277D862A8]);

  return v0;
}

id threadAccessoryStageSystemCriteria()
{
  v0 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D86280], "com.apple.homed.firmwareUpdate.threadAccessory.stage.group");
  v1 = *MEMORY[0x277D86278];
  v2 = uint32ForPreference(@"firmwareUpdateThreadAccessoryStageConcurrentLimit");
  xpc_dictionary_set_uint64(v0, v1, v2);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86390], 1);
  xpc_dictionary_set_string(v0, *MEMORY[0x277D862F8], *MEMORY[0x277D86308]);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v0, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_int64(v0, *MEMORY[0x277D86250], 5);
  xpc_dictionary_set_int64(v0, *MEMORY[0x277D86270], *MEMORY[0x277D862A8]);

  return v0;
}

uint64_t uint32ForPreference(void *a1)
{
  v1 = uint32ForPreference_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&uint32ForPreference_onceToken, &__block_literal_global_163_160114);
  }

  v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [v3 preferenceForKey:v2];

  v5 = [v4 numberValue];
  v6 = [v5 unsignedIntValue];

  return v6;
}

uint64_t __uint32ForPreference_block_invoke()
{
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_28662A058 forPreferenceKey:@"firmwareUpdateStageMinDelay"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_28662A070 forPreferenceKey:@"firmwareUpdateStageMaxDelay"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_28662A088 forPreferenceKey:@"firmwareUpdateApplyMinDelay"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_28662A0A0 forPreferenceKey:@"firmwareUpdateApplyMaxDelay"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_28662A0B8 forPreferenceKey:@"firmwareUpdateIPAccessoryStageConcurrentLimit"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_28662A088 forPreferenceKey:@"firmwareUpdateIPAccessoryApplyConcurrentLimit"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_28662A0D0 forPreferenceKey:@"firmwareUpdateBLEAccessoryStageConcurrentLimit"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_28662A0E8 forPreferenceKey:@"firmwareUpdateBLEAccessoryApplyConcurrentLimit"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_28662A0D0 forPreferenceKey:@"firmwareUpdateThreadAccessoryStageConcurrentLimit"];
  v0 = MEMORY[0x277D0F8D0];

  return [v0 setDefaultValue:&unk_28662A0D0 forPreferenceKey:@"firmwareUpdateThreadAccessoryApplyConcurrentLimit"];
}

void sub_253AEA034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17, id a18)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __HMDRemoteDeviceMonitorReachable(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_14;
  }

  if (([v1[13] isReachable] & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v2;
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v9 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v9;
    v10 = "%{public}@Considering ourselves unreachable because net monitor is unreachable";
LABEL_12:
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, v10, &v15, 0xCu);

    goto LABEL_13;
  }

  WeakRetained = objc_loadWeakRetained(v2 + 11);
  v4 = [WeakRetained device];

  if (!v4)
  {
    v6 = objc_autoreleasePoolPush();
    v11 = v2;
    v8 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v9 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v9;
    v10 = "%{public}@Considering ourselves unreachable because there is no current device";
    goto LABEL_12;
  }

  if (([v2[7] hmd_isActive] & 1) == 0)
  {
    v6 = objc_autoreleasePoolPush();
    v12 = v2;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v9;
      v10 = "%{public}@Considering ourselves unreachable because the IDSService is not active";
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v6);
LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  v5 = 1;
LABEL_15:

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_253AF3C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253AF4880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253AF5490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253AF580C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_253AF8E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253AFCA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B02EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *location)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v15 - 112));
  _Unwind_Resume(a1);
}

id __accessoriesFromAccessoryUUIDs(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v4 accessoryWithUUID:{*(*(&v15 + 1) + 8 * i), v15}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

id __displayNameForUser(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__162939;
  v13 = __Block_byref_object_dispose__162940;
  v14 = 0;
  v2 = MEMORY[0x277D0F770];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ____displayNameForUser_block_invoke;
  v6[3] = &unk_279734898;
  v3 = v1;
  v7 = v3;
  v8 = &v9;
  [v2 activityWithName:@"User.Name" block:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

void sub_253B08898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__162939(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ____displayNameForUser_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accountHandle];
  v11 = [v2 contact];

  if (v11 || ([*(a1 + 32) account], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "contact"), v11 = objc_claimAutoreleasedReturnValue(), v3, v11))
  {
    v4 = [MEMORY[0x277CBDA78] stringFromContact:v11 style:0];
    if (v4)
    {
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
  }

  v6 = +[HMDAccountHandleFormatter defaultFormatter];
  v7 = [*(a1 + 32) accountHandle];
  v8 = [v6 stringForObjectValue:v7];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

LABEL_7:
}

void __registerForAccountNotifications(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 dataSource];
    v4 = [v3 notificationCenter];
    [v4 removeObserver:v2 name:@"HMDAccountRegistryAddedAccountNotification" object:0];

    v5 = [v2 dataSource];
    v6 = [v5 notificationCenter];
    [v6 removeObserver:v2 name:@"HMDAccountRegistryRemovedAccountNotification" object:0];

    v7 = [v2 accountHandle];
    if (v7)
    {
      v25 = 0;
      v8 = +[HMDAccountRegistry sharedRegistry];
      v9 = [v8 accountForHandle:v7 exists:&v25];

      v10 = v25;
      v11 = objc_autoreleasePoolPush();
      v12 = v2;
      v13 = HMFGetOSLogHandle();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      if (v10 == 1)
      {
        if (v14)
        {
          v15 = HMFGetLogIdentifier();
          v16 = [v9 shortDescription];
          *buf = 138543618;
          v27 = v15;
          v28 = 2112;
          v29 = v16;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Registering for notifications for account: %@", buf, 0x16u);
        }

        v17 = @"HMDAccountRegistryRemovedAccountNotification";
        v18 = &selRef___handleRemovedAccount_;
      }

      else
      {
        if (v14)
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543362;
          v27 = v19;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Registering for account notifications", buf, 0xCu);
        }

        v17 = @"HMDAccountRegistryAddedAccountNotification";
        v18 = &selRef___handleAddedAccount_;
      }

      objc_autoreleasePoolPop(v11);
      v20 = [v12 dataSource];
      v21 = [v20 notificationCenter];
      v22 = *v18;
      v23 = +[HMDAccountRegistry sharedRegistry];
      [v21 addObserver:v12 selector:v22 name:v17 object:v23];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __handleUpdatedAccount(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 deregisterIdentity];
    [v1 registerIdentity];
  }
}

void __updateWithAccount(void *a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = v3;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v6 userID];
      *buf = 138543874;
      v36 = v8;
      v37 = 2112;
      v38 = v9;
      v39 = 2112;
      v40 = v4;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating with account: %@ / %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    if (v4)
    {
      v10 = [v6 accountHandle];
      if (v10)
      {
        v11 = [v4 handles];
        v12 = [v11 containsObject:v10];

        if (v12)
        {
          if ([v4 isAuthenticated])
          {
            v13 = [v4 identifier];
            v14 = [v6 accountIdentifier];
            v15 = HMFEqualObjects();

            if ((v15 & 1) == 0)
            {
              v16 = objc_autoreleasePoolPush();
              v17 = v6;
              v18 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = HMFGetLogIdentifier();
                v20 = [v17 userID];
                *buf = 138543874;
                v36 = v19;
                v37 = 2112;
                v38 = v20;
                v39 = 2112;
                v40 = v13;
                _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Updating account identifier to: %@ / %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v16);
              v21 = [v17 newModelWithChangeType:2];
              [v21 setAccountIdentifier:v13];
              v22 = [v17 home];
              v23 = [v22 backingStore];
              v24 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
              v25 = [v23 transaction:@"userUpdateAccountIdentifier" options:v24];

              [v25 add:v21];
              v32[0] = MEMORY[0x277D85DD0];
              v32[1] = 3221225472;
              v32[2] = ____updateWithAccount_block_invoke;
              v32[3] = &unk_2797358C8;
              v33 = v17;
              v34 = v13;
              [v25 run:v32];
            }
          }
        }

        else
        {
          v26 = objc_autoreleasePoolPush();
          v27 = v6;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = HMFGetLogIdentifier();
            v30 = [v27 userID];
            *buf = 138543874;
            v36 = v29;
            v37 = 2112;
            v38 = v30;
            v39 = 2112;
            v40 = v4;
            _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to update with account: %@ / %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v26);
        }
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void ____updateWithAccount_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) userID];
    v11 = 138544130;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Finished updating the accountIdentifier [%@] for user [%@] finished with error: %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_253B10268(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_253B10994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B128F0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

id _userPairingIdentity(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = MEMORY[0x277CFEC20];
    v4 = a1;
    v5 = [v3 alloc];
    v6 = [v4 identifier];
    v7 = [v4 publicKey];

    v8 = [v5 initWithIdentifier:v6 publicKey:v7 privateKey:0 permissions:(a2 & 0xFFFFFFFFFFFFFFFDLL) == 1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void ____auditAccount_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accountHandle];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) home];
      v9 = [v8 name];
      *buf = 138543874;
      v22 = v7;
      v23 = 2112;
      v24 = v2;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Auditing user account with handle : %@ for home: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v20 = 0;
    v10 = +[HMDAccountRegistry sharedRegistry];
    v11 = [v10 accountForHandle:v2 exists:&v20];

    if (v20)
    {
      __updateWithAccount(*(a1 + 32), v11);
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [*(a1 + 32) userID];
        *buf = 138543618;
        v22 = v17;
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Account does not currently exist for user: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    if (v6)
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 32) userID];
      *buf = 138543618;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Not auditing the account for the user: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t HMDUserPrivilegeCompare(uint64_t a1, uint64_t a2)
{
  v2 = 3;
  if (a1 == 1)
  {
    v3 = 3;
  }

  else
  {
    v3 = a1;
  }

  if (a2 != 1)
  {
    v2 = a2;
  }

  if (v3 == v2)
  {
    return 0;
  }

  if (v3 == 3 || v2 == 3)
  {
    v6 = v3 == 3;
    goto LABEL_20;
  }

  if (v3 == 4 || v2 == 4)
  {
    v6 = v3 == 4;
LABEL_20:
    if (v6)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v3)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void sub_253B178C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B18778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

void sub_253B1CE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__164333(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __updateRegistration(void *a1, char *a2, void *a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  v28 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:a4 mustReplay:0 mustPush:1];
  v9 = [v7 transaction:@"Object registration" options:v28];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v11)
  {
    v12 = *v35;
    do
    {
      v13 = 0;
      do
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v34 + 1) + 8 * v13) modelObjectWithChangeType:a2 version:4];
        [v9 add:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v11);
  }

  v15 = [[HMDBackingStoreLogAddTransactionOperation alloc] initWithTransaction:v9];
  v16 = [v9 objects];
  [HMDBackingStoreTransactionBlock sort:v16];

  v17 = objc_autoreleasePoolPush();
  v18 = v7;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    if ((a2 - 1) > 2)
    {
      v21 = @"unknown";
    }

    else
    {
      v21 = off_27972DF00[(a2 - 1)];
    }

    v22 = v21;
    v23 = [v9 options];
    *buf = 138544130;
    v39 = v20;
    v40 = 2112;
    v41 = v22;
    v42 = 2112;
    v43 = v23;
    v44 = 2112;
    v45 = v15;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Registration operation -- changeType: %@, options: %@ (%@)", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v17);
  objc_initWeak(buf, v18);
  objc_initWeak(&location, v15);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ____updateRegistration_block_invoke;
  v29[3] = &unk_279730F68;
  objc_copyWeak(&v31, buf);
  objc_copyWeak(v32, &location);
  v24 = v9;
  v30 = v24;
  v32[1] = a2;
  [(HMDBackingStoreOperation *)v15 setResultBlock:v29];
  [(HMDBackingStoreOperation *)v15 setStore:v18];
  v25 = [(HMDBackingStore *)v18 dataSource];
  v26 = [v25 backingStoreOperationQueue];
  [v26 addOperation:v15];

  objc_destroyWeak(v32);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v27 = *MEMORY[0x277D85DE8];
}

void sub_253B1D830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a27);
  _Unwind_Resume(a1);
}

void ____updateRegistration_block_invoke(uint64_t a1, void *a2)
{
  v82 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    v6 = objc_autoreleasePoolPush();
    v7 = WeakRetained;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 32) options];
      *buf = 138543874;
      v77 = v9;
      v78 = 2112;
      v79 = v10;
      v80 = 2112;
      v81 = v5;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Starting operation -- options: %@ (%@)", buf, 0x20u);
    }

    v64 = WeakRetained;

    objc_autoreleasePoolPop(v6);
    v66 = [v7 homeManager];
    v11 = [v66 isDataSyncInProgress];
    v12 = objc_autoreleasePoolPush();
    v13 = v7;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v16 = v15 = a1;
      *buf = 138543362;
      v77 = v16;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Model objects:", buf, 0xCu);

      a1 = v15;
    }

    objc_autoreleasePoolPop(v12);
    [*(a1 + 32) dumpWithVerbosity:v11 ^ 1u prefix:&stru_286509E58 logType:1];
    v17 = objc_autoreleasePoolPush();
    v18 = v13;
    v19 = HMFGetOSLogHandle();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v20)
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543874;
        v77 = v21;
        v78 = 2112;
        v79 = v5;
        v80 = 2112;
        v81 = v3;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@error occurred during save of %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      v22 = [v18 local];
      [v22 _rollback];
    }

    else
    {
      if (v20)
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543618;
        v77 = v26;
        v78 = 2112;
        v79 = v5;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@save complete for operation: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v22 = [v18 local];
      v27 = [v22 _commit];
    }

    v65 = v3;

    v28 = objc_autoreleasePoolPush();
    v29 = v18;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v77 = v31;
      v78 = 2112;
      v79 = v5;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@running operation: %@", buf, 0x16u);
    }

    v63 = v5;

    objc_autoreleasePoolPop(v28);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = [*(a1 + 32) objects];
    v32 = v66;
    v70 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
    if (v70)
    {
      v69 = *v72;
      v68 = v29;
      do
      {
        for (i = 0; i != v70; ++i)
        {
          if (*v72 != v69)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v71 + 1) + 8 * i);
          v35 = objc_autoreleasePoolPush();
          v36 = v29;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = HMFGetLogIdentifier();
            v39 = a1;
            v40 = *(a1 + 56) - 1;
            v41 = @"unknown";
            if (v40 <= 2)
            {
              v41 = off_27972DF00[v40];
            }

            v42 = v41;
            v43 = [v34 change];
            v44 = [v43 uuid];
            *buf = 138543874;
            v77 = v38;
            v78 = 2112;
            v79 = v42;
            v80 = 2112;
            v81 = v44;
            _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Updating registration for object -- changeType: %@, object: %@", buf, 0x20u);

            a1 = v39;
            v32 = v66;
            v29 = v68;
          }

          objc_autoreleasePoolPop(v35);
          v45 = [v36 home];
          v46 = v45;
          if (v45)
          {
            v47 = [v45 zoneID];
            v48 = [v47 UUIDString];

            v49 = [v32 syncManager];
            [v49 resetCloudPushTimer:v48];

            v50 = [*(a1 + 32) options];
            v51 = [v50 label];
            v52 = [v34 change];
            [v46 saveWithReason:v51 postSyncNotification:0 objectChange:v52 != 0];
          }

          else
          {
            v53 = [v32 syncManager];
            [v53 resetCloudPushTimer:0];

            v54 = [HMDHomeSaveRequest alloc];
            v55 = [*(a1 + 32) options];
            v56 = [v55 label];
            v48 = [(HMDHomeSaveRequest *)v54 initWithReason:v56 information:0 postSyncNotification:0];

            v57 = objc_autoreleasePoolPush();
            v58 = v36;
            v59 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
            {
              v60 = HMFGetLogIdentifier();
              *buf = 138543618;
              v77 = v60;
              v78 = 2112;
              v79 = v48;
              _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_INFO, "%{public}@submitting save request: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v57);
            [v32 saveWithRequest:v48];
            v29 = v68;
          }
        }

        v70 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
      }

      while (v70);
    }

    v61 = [(HMDHomeSaveRequest *)v63 operationFinishBlock];
    v61[2](v61, 0);

    WeakRetained = v64;
    v3 = v65;
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v77 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@[HMDBackingStore] Lost store when running transaction", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
  }

  v62 = *MEMORY[0x277D85DE8];
}

void sub_253B1E4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_253B21E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__164725(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253B23398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253B254D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B29364(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253B2C9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDCameraLocalStreamSessionStateAsString(uint64_t a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 8 && ((0x8Bu >> v2))
  {
    v3 = off_2797310D0[v2];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraLocalStreamSessionState %tu", a1];
  }

  return v3;
}

void sub_253B2EFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B2FB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__166546(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __HMDProcessInfoBoolForEntitlement(void *a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v2 = [a1 valueForEntitlement:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 BOOLValue];
  return v5;
}

id encodedSnapshotFile(void *a1)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = *MEMORY[0x277CD1060];
  v1 = a1;
  v2 = [v1 slotIdentifier];
  v13[0] = v2;
  v12[1] = *MEMORY[0x277CD26B8];
  v3 = [v1 filePath];
  v13[1] = v3;
  v12[2] = *MEMORY[0x277CD26B0];
  v4 = [v1 dateCaptured];
  v13[2] = v4;
  v12[3] = *MEMORY[0x277CD1198];
  v5 = MEMORY[0x277CCABB0];
  [v1 aspectRatio];
  v7 = v6;

  v8 = [v5 numberWithDouble:v7];
  v13[3] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t HMDRemoteEventRouterProtoEventsMessageReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 3)
      {
        v13 = objc_alloc_init(MEMORY[0x277D174E0]);
        [a1 addCachedEvents:v13];
      }

      else
      {
        if ((v12 >> 3) != 2)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(MEMORY[0x277D174E0]);
        [a1 addEvents:v13];
      }

      v16[0] = 0;
      v16[1] = 0;
      if (!PBReaderPlaceMark() || !HMEProtoEventInfoReadFrom())
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_253B3BF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B3CCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __percentageForCharacteristicValue(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1;
    [a2 floatValue];
    v5 = v4;
    v6 = [v3 metadata];

    v7 = [v6 minimumValue];
    if (v7)
    {
      v8 = [v6 minimumValue];
      [v8 floatValue];
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    v12 = [v6 maximumValue];
    if (v12)
    {
      v13 = [v6 maximumValue];
      [v13 floatValue];
      v15 = v14;
    }

    else
    {
      v15 = 100.0;
    }

    *&v16 = (v5 - v10) / (v15 - v10);
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_253B3F7FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_253B401C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B41D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B4396C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253B43A6C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253B43B6C(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253B443A0(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253B44418(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253B44C98(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

double __homeRegionNearbyRadius()
{
  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"homeNearbyRegionRadius"];
  v2 = [v1 numberValue];

  [v2 doubleValue];
  v4 = v3;

  return v4;
}

__CFString *HMDHomeLocationSourceToString(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a1];
  }

  else
  {
    v2 = off_279731438[a1];
  }

  return v2;
}

void sub_253B4D4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v7 + 40));
  _Unwind_Resume(a1);
}

void sub_253B4DA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double getLocationUpdateTimeInterval()
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v0 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v1 = [v0 preferenceForKey:@"kLocationUpdateIntervalMinutes"];
  v2 = [v1 numberValue];

  v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [v3 preferenceForKey:@"kLocationUpdateIntervalVarianceMinutes"];
  v5 = [v4 numberValue];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __getLocationUpdateTimeInterval_block_invoke;
  v11[3] = &unk_279731418;
  v14 = v18;
  v15 = v16;
  v12 = v2;
  v13 = v5;
  v6 = getLocationUpdateTimeInterval_onceToken;
  v7 = v5;
  v8 = v2;
  if (v6 != -1)
  {
    dispatch_once(&getLocationUpdateTimeInterval_onceToken, v11);
  }

  v9 = *&getLocationUpdateTimeInterval_locationUpdateIntervalWithVariance;

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
  return v9;
}

void sub_253B4E270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

double __getLocationUpdateTimeInterval_block_invoke(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    [*(a1 + 32) doubleValue];
    v3 = v2 * 60.0;
  }

  else
  {
    v3 = 86400.0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v3;
  *(*(*(a1 + 56) + 8) + 24) = arc4random_uniform([*(a1 + 40) unsignedIntValue]);
  result = *(*(*(a1 + 48) + 8) + 24) + (60 * *(*(*(a1 + 56) + 8) + 24));
  *&getLocationUpdateTimeInterval_locationUpdateIntervalWithVariance = result;
  return result;
}

id __HMDHomeAdministratorHandlerGetOrCreateReceiver(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    os_unfair_lock_lock_with_options();
    v6 = [*(v3 + 12) objectForKey:v5];
    if (!v6)
    {
      v7 = [v3 home];
      v8 = [v7 isOwnerUser];
      v9 = off_27971A298;
      if (!v8)
      {
        v9 = &off_27971A2A0;
      }

      v10 = *v9;
      v11 = objc_opt_class();

      v6 = [[v11 alloc] initWithReceiver:v5 handler:v3];
      [*(v3 + 12) setObject:v6 forKey:v5];
    }

    os_unfair_lock_unlock(v3 + 20);
  }

  return v6;
}

void sub_253B513B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __AdminHandlerMessagePoliciesFrom_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __AdminHandlerMessagePoliciesFrom_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_253B5307C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__171164(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253B67624(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_253B69024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B710AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 64));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_253B77EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253B78A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B79D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B7BDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak((v23 - 160));
  _Unwind_Resume(a1);
}

void sub_253B8248C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B87A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B8897C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B896D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253B8A6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v71 - 176), 8);
  _Block_object_dispose(&a71, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__172847(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253B8AA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_253B8BE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak((v35 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B8E7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B8F69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id location)
{
  objc_destroyWeak((v62 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose((v63 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_253B90BE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 176));
  _Unwind_Resume(a1);
}

void sub_253B9123C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B94BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B94DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253B97C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a41);
  objc_destroyWeak((v41 - 152));
  _Unwind_Resume(a1);
}

id __isUserInMessagePartOfHome(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 matchingRemoteIdentityUserForHome:v6];
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v5;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v16 = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Found matching user: %@, for message: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = v8;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

void sub_253B9D3F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak(&STACK[0x230]);
  _Unwind_Resume(a1);
}

void sub_253B9DB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak((v34 - 112));
  _Unwind_Resume(a1);
}

void sub_253B9DF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_253B9F8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, id a34)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a34);
  _Unwind_Resume(a1);
}

void sub_253BA54D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BA7200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BA7790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BA9044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 88));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __pairingIdentityForAccessory(void *a1)
{
  v1 = a1;
  if ([v1 conformsToProtocol:&unk_286699670])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = [v3 pairingIdentity];

  return v4;
}

void sub_253BAF9E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BB2264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BB2390(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_253BB624C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BB63BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253BB6A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 80));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_253BB7688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BB7DEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 152));
  _Unwind_Resume(a1);
}

void sub_253BBDADC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253BBDB68(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253BBDBFC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253BBDD34(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253BBE2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BBE9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BC1118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak((v39 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BC1DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BC27E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_253BC3680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BC3FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL HMDIsCKErrorZoneNotFound(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqual:*MEMORY[0x277CBBF50]])
  {
    v3 = [v1 code] == 26;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_253BC50D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BC551C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_253BC5E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BC64B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BC7404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BC7E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BC8A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id location)
{
  objc_destroyWeak(&a54);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BC96B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_253BCA0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BCA660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BCAC88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose((v34 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_253BCBADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BCC79C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 80));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_253BCCB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BCE6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BCF924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BD0140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BD0540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BD3C04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_253BD4E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BD6234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak((v36 - 144));
  _Unwind_Resume(a1);
}

void sub_253BD72CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_253BDA930(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_253BDCE54(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x298]);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_253BDE608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location, char a41)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_253BDF2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BDFB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BE03F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_253BE0EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose((v37 - 160), 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_253BE1A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HMDRemoteEventRouterProtoMultiHopFetchEventsResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(MEMORY[0x277D174E0]);
        [a1 addChangedEvents:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HMEProtoEventInfoReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_253BEF3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253BEFBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__175161(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253BF4510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __mapProfilesToProfileUUIDs(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v1, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) uniqueIdentifier];
        v9 = [v8 UUIDString];
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id mapProfilesToAccessoryUUIDs(void *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
  v32 = v31 = v3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [v3 accessories];
  v5 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          v12 = [v11 mediaProfile];
          v13 = v12;
          if (v12)
          {
            v14 = [v12 uniqueIdentifier];
            v15 = [v14 UUIDString];
            v16 = [v4 containsObject:v15];

            if (v16)
            {
              v17 = [v11 uuid];
              v18 = [v17 UUIDString];
              [v32 addObject:v18];
            }
          }
        }

        v19 = v9;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        if (v21)
        {
          v22 = [v21 findServiceWithServiceType:@"00000228-0000-1000-8000-0026BB765291"];
          if (v22)
          {
            v23 = [(HMDMediaProfile *)HMDHAPMediaProfile uniqueIdentifierFromAccessory:v21];
            v24 = [v23 UUIDString];
            v25 = [v4 containsObject:v24];

            if (v25)
            {
              v26 = [v21 uuid];
              v27 = [v26 UUIDString];
              [v32 addObject:v27];
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v6);
  }

  v28 = [v32 copy];
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

id mapProfilesToServiceUUIDs(void *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v23 = a2;
  [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v23, "count")}];
  v22 = v21 = v3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 accessories];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          v12 = [v11 findServiceWithServiceType:@"00000228-0000-1000-8000-0026BB765291"];
          if (v12)
          {
            v13 = [(HMDMediaProfile *)HMDHAPMediaProfile uniqueIdentifierFromAccessory:v11];
            v14 = [v13 UUIDString];
            v15 = [v23 containsObject:v14];

            if (v15)
            {
              v16 = [v12 uuid];
              v17 = [v16 UUIDString];
              [v22 addObject:v17];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v18 = [v22 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

id __mapUUIDsToProfiles(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x277CCAD78]);
        v13 = [v12 initWithUUIDString:{v11, v18}];
        v14 = [v3 mediaProfileWithUUID:v13];
        if (v14)
        {
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void sub_253C050E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

HMDAccessoryFirmwareUpdateAggregatePolicy *HMDFirmwareUpdatePolicyForAccessory(void *a1, uint64_t a2, void *a3)
{
  v154 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v6 addObject:v4];
  v108 = v4;
  v112 = v5;
  v7 = getBridgedAccessoriesForBridge(v4, v5);
  [v6 addObjectsFromArray:v7];

  v113 = [MEMORY[0x277CBEB58] set];
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  obj = v6;
  v111 = [obj countByEnumeratingWithState:&v132 objects:v144 count:16];
  if (v111)
  {
    v110 = *v133;
    do
    {
      v8 = 0;
      do
      {
        if (*v133 != v110)
        {
          v9 = v8;
          objc_enumerationMutation(obj);
          v8 = v9;
        }

        v114 = v8;
        v10 = *(*(&v132 + 1) + 8 * v8);
        v11 = v112;
        v12 = [MEMORY[0x277CBEB58] set];
        v13 = +[HMDHAPMetadata getSharedInstance];
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        v139 = 0u;
        v115 = [v10 services];
        v120 = [v115 countByEnumeratingWithState:&v136 objects:v145 count:16];
        if (v120)
        {
          v118 = *v137;
          v119 = v12;
          v125 = v13;
          v116 = v10;
          v121 = v11;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v137 != v118)
            {
              v15 = v14;
              objc_enumerationMutation(v115);
              v14 = v15;
            }

            v122 = v14;
            v16 = *(*(&v136 + 1) + 8 * v14);
            v17 = [v16 serviceType];
            v18 = [v10 category];
            v19 = [v18 categoryType];
            if (a2)
            {
              v20 = [v13 autoApplyPolicyConfigurationForService:v17 category:v19];

              if (v20)
              {
                goto LABEL_17;
              }

              v21 = [v16 serviceType];
              v22 = [v13 autoApplyPolicyConfigurationForService:v21 category:0];
            }

            else
            {
              v20 = [v13 stagingPolicyConfigurationForService:v17 category:v19];

              if (v20)
              {
                goto LABEL_17;
              }

              v21 = [v16 serviceType];
              v22 = [v13 stagingPolicyConfigurationForService:v21 category:0];
            }

            v20 = v22;

            if (v20)
            {
LABEL_17:
              v23 = v20;
              v24 = v10;
              v127 = v121;
              v123 = [MEMORY[0x277CBEB18] array];
              v128 = v23;
              v25 = [v23 criteria];
              v26 = [v25 anyUserAtHome];

              if ((v26 & 1) != 0 || ([v128 criteria], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "noUserAtHome"), v27, v28))
              {
                v29 = v127;
                v30 = v24;
                v31 = [[HMDAccessoryFirmwareUpdatePresencePolicy alloc] initWithAccessory:v30 presenceNeeded:v26 workQueue:v29];

                if (v31)
                {
                  [v123 addObject:v31];
                }
              }

              v32 = [v128 criteria];
              v33 = [v32 checkForScheduledAutomation];

              if (v33)
              {
                v34 = v127;
                v35 = v24;
                v36 = [(HMDAccessoryFirmwareUpdatePolicy *)[HMDAccessoryFirmwareUpdateTimedAutomationPolicy alloc] initWithAccessory:v35 workQueue:v34];

                if (v36)
                {
                  [v123 addObject:v36];
                }
              }

              v142 = 0u;
              v143 = 0u;
              v140 = 0u;
              v141 = 0u;
              v37 = [v128 criteria];
              v38 = [v37 characteristicConfigurations];

              v124 = v38;
              v130 = [v38 countByEnumeratingWithState:&v140 objects:buf count:16];
              if (v130)
              {
                v129 = *v141;
                v126 = v24;
                do
                {
                  v39 = 0;
                  do
                  {
                    if (*v141 != v129)
                    {
                      objc_enumerationMutation(v124);
                    }

                    v40 = *(*(&v140 + 1) + 8 * v39);
                    v41 = [v40 format];
                    v42 = [v40 values];
                    v43 = v41;
                    v44 = v42;
                    if (([v43 isEqualToString:@"BOOL"] & 1) != 0 || (objc_msgSend(v43, "isEqualToString:", @"int") & 1) != 0 || objc_msgSend(v43, "isEqualToString:", @"uint8"))
                    {
                      *&aBlock = MEMORY[0x277D85DD0];
                      *(&aBlock + 1) = 3221225472;
                      v151 = __characteristicPolicyHandlerForFormat_block_invoke;
                      v152 = &unk_279733D48;
                      v153 = v44;
                      v45 = _Block_copy(&aBlock);
                    }

                    else
                    {
                      v45 = 0;
                    }

                    if (v45)
                    {
                      v46 = [v128 type];
                      v47 = [v40 type];
                      v48 = [v40 settlingTime];
                      v131 = v24;
                      v49 = v46;
                      v50 = v47;
                      v51 = v48;
                      v52 = v45;
                      v53 = v127;
                      if (v51)
                      {
                        v54 = [v51 unsignedIntegerValue];
                      }

                      else
                      {
                        if (valueDebounceDuration_onceToken != -1)
                        {
                          dispatch_once(&valueDebounceDuration_onceToken, &__block_literal_global_30_178113);
                        }

                        v58 = [MEMORY[0x277D0F8D0] sharedPreferences];
                        v59 = [v58 preferenceForKey:@"firmwareUpdateCharacteristicValueDebounceDuration"];
                        v60 = [v59 numberValue];

                        v54 = [v60 unsignedIntValue];
                      }

                      v61 = [[HMDAccessoryFirmwareUpdateCharacteristicBasedPolicy alloc] initWithAccessory:v131 serviceType:v49 characteristicType:v50 debounceDuration:v54 policyHandler:v52 workQueue:v53];

                      if (v61)
                      {
                        [v123 addObject:v61];
                      }

                      v13 = v125;
                      v24 = v126;
                    }

                    else
                    {
                      v55 = objc_autoreleasePoolPush();
                      v56 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                      {
                        v57 = HMFGetLogIdentifier();
                        LODWORD(aBlock) = 138543362;
                        *(&aBlock + 4) = v57;
                        _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@Invalid characteristic policy handler", &aBlock, 0xCu);
                      }

                      objc_autoreleasePoolPop(v55);
                    }

                    ++v39;
                  }

                  while (v130 != v39);
                  v62 = [v124 countByEnumeratingWithState:&v140 objects:buf count:16];
                  v130 = v62;
                }

                while (v62);
              }

              v63 = [v128 criteria];
              v64 = [v63 updateTimeWindow];

              if (v64)
              {
                v65 = [v128 criteria];
                v66 = [v65 updateTimeWindow];
                v67 = v127;
                v68 = v66;
                v69 = v24;
                v70 = [[HMDAccessoryFirmwareUpdateTimeWindowPolicy alloc] initWithAccessory:v69 timeWindow:v68 workQueue:v67];

                if (v70)
                {
                  [v123 addObject:v70];
                }
              }

              v71 = [v24 cameraProfiles];
              v72 = [v71 count];

              v10 = v116;
              if (v72)
              {
                v73 = v127;
                v74 = v24;
                v75 = [(HMDAccessoryFirmwareUpdatePolicy *)[HMDAccessoryFirmwareUpdateCameraPolicy alloc] initWithAccessory:v74 workQueue:v73];

                if (v75)
                {
                  [v123 addObject:v75];
                }
              }

              v12 = v119;
              [v119 addObjectsFromArray:v123];

              goto LABEL_59;
            }

            if (![v16 isCustom])
            {
              break;
            }

            v76 = objc_autoreleasePoolPush();
            v77 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
            {
              v78 = HMFGetLogIdentifier();
              v79 = [v16 serviceType];
              *buf = 138543618;
              v147 = v78;
              v148 = 2112;
              v149 = v79;
              v80 = v77;
              v81 = "%{public}@Skipping policy creation for the custom service: %@";
LABEL_70:
              _os_log_impl(&dword_2531F8000, v80, OS_LOG_TYPE_INFO, v81, buf, 0x16u);
            }

LABEL_71:

            objc_autoreleasePoolPop(v76);
            v12 = v119;
LABEL_59:
            v11 = v121;
            v14 = v122 + 1;
            if (v122 + 1 == v120)
            {
              v87 = [v115 countByEnumeratingWithState:&v136 objects:v145 count:16];
              v120 = v87;
              if (v87)
              {
                goto LABEL_8;
              }

              goto LABEL_73;
            }
          }

          v82 = v16;
          if (isIgnoredServiceForAutoApply_token != -1)
          {
            dispatch_once(&isIgnoredServiceForAutoApply_token, &__block_literal_global_178109);
          }

          v83 = [v82 accessory];
          v84 = [v83 cameraProfiles];
          if (![v84 count])
          {

LABEL_75:
            v90 = objc_autoreleasePoolPush();
            v91 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              v92 = HMFGetLogIdentifier();
              v93 = [v82 serviceType];
              *buf = 138543618;
              v147 = v92;
              v148 = 2112;
              v149 = v93;
              _os_log_impl(&dword_2531F8000, v91, OS_LOG_TYPE_DEBUG, "%{public}@Policy configuration not available for service type: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v90);
            v94 = MEMORY[0x277CBEA60];
            v95 = v121;
            v96 = v10;
            v97 = [(HMDAccessoryFirmwareUpdatePolicy *)[HMDAccessoryFirmwareUpdateAllowPolicy alloc] initWithAccessory:v96 workQueue:v95];

            v89 = [v94 arrayWithObject:v97];

            v11 = v121;
            v88 = v119;
            goto LABEL_78;
          }

          v85 = isIgnoredServiceForAutoApply_ignoredServices;
          v86 = [v82 serviceType];
          LODWORD(v85) = [v85 containsObject:v86];

          if (!v85)
          {
            goto LABEL_75;
          }

          v76 = objc_autoreleasePoolPush();
          v77 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
          {
            goto LABEL_71;
          }

          v78 = HMFGetLogIdentifier();
          v79 = [v82 serviceType];
          *buf = 138543618;
          v147 = v78;
          v148 = 2112;
          v149 = v79;
          v80 = v77;
          v81 = "%{public}@Skipping policy creation for the accessory firmware update ignored service: %@";
          goto LABEL_70;
        }

LABEL_73:

        [v12 allObjects];
        v89 = v88 = v12;
LABEL_78:

        if ([v89 count] == 1)
        {
          v98 = [v89 firstObject];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            [v113 removeAllObjects];
            v100 = [v89 firstObject];
            [v113 addObject:v100];

            goto LABEL_84;
          }
        }

        [v113 addObjectsFromArray:v89];

        v8 = v114 + 1;
      }

      while (v114 + 1 != v111);
      v111 = [obj countByEnumeratingWithState:&v132 objects:v144 count:16];
    }

    while (v111);
  }

LABEL_84:

  v101 = [v113 allObjects];
  v102 = v108;
  v103 = v112;
  if ([v101 count])
  {
    if ([v101 count] == 1)
    {
      v104 = [v101 firstObject];
    }

    else
    {
      v104 = [[HMDAccessoryFirmwareUpdateAggregatePolicy alloc] initWithPolicies:v101 accessory:v102 workQueue:v103];
    }

    v105 = v104;
  }

  else
  {
    v105 = 0;
  }

  [(HMDAccessoryFirmwareUpdateAggregatePolicy *)v105 configure];
  v106 = *MEMORY[0x277D85DE8];

  return v105;
}

id getBridgedAccessoriesForBridge(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v23 = a2;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v3 isPrimary])
  {
    v4 = [v3 identifiersForBridgedAccessories];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [v3 identifiersForBridgedAccessories];
      v7 = [v6 copy];

      v8 = [v3 home];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [v8 accessoryWithUUID:*(*(&v25 + 1) + 8 * i)];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }

            v16 = v15;
            v17 = v16;
            if (v16)
            {
              v18 = [v16 bridge];
              v19 = [v18 isEqual:v3];

              if (v19)
              {
                [v24 addObject:v17];
                v20 = getBridgedAccessoriesForBridge(v17, v23);
                [v24 addObjectsFromArray:v20];
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v11);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t __characteristicPolicyHandlerForFormat_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [*(a1 + 32) containsObject:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void __isIgnoredServiceForAutoApply_block_invoke()
{
  v3 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v0 = [v3 preferenceForKey:@"accessoryFirmwareUpdateAutoApplyIgnoredServices"];
  v1 = [v0 value];
  v2 = isIgnoredServiceForAutoApply_ignoredServices;
  isIgnoredServiceForAutoApply_ignoredServices = v1;
}

void sub_253C0FAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253C10110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_253C133C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253C150A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__179122(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253C16FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__179386(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__179762(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253C19B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, id a21)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a21);
  _Unwind_Resume(a1);
}

void sub_253C19F60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_253C1A4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_253C1FA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_253C21C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __modelIDsFromModelIDStrings(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v1 copy];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(*(&v12 + 1) + 8 * i)];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id __accessoriesWithModelIDs(void *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v29 = a1;
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v29 user];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 home];
      if (v6)
      {
        v26 = v5;
        v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v27 = v3;
        obj = [v3 copy];
        v8 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v32;
          v28 = v7;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v32 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v31 + 1) + 8 * i);
              v13 = [v6 accessoryWithUUID:v12];
              if (v13)
              {
                [v7 addObject:v13];
              }

              else
              {
                v14 = objc_autoreleasePoolPush();
                v15 = v29;
                v16 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v17 = HMFGetLogIdentifier();
                  v18 = [v12 UUIDString];
                  *buf = 138543874;
                  v36 = v17;
                  v37 = 2112;
                  v38 = v18;
                  v39 = 2112;
                  v40 = v6;
                  _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to find accessory with model ID, %@, in home: %@", buf, 0x20u);

                  v7 = v28;
                }

                objc_autoreleasePoolPop(v14);
              }
            }

            v9 = [obj countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v9);
        }

        v19 = [v7 copy];
        v5 = v26;
        v3 = v27;
      }

      else
      {
        v19 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v29;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing user", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v19 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

id __modelIDStringsFromAccessories(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v1 copy];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) uuid];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 UUIDString];
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [v2 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void sub_253C2605C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253C265C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253C27388(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

uint64_t __getType(os_unfair_lock_s *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  os_unfair_lock_lock_with_options();
  v3 = *&v2[14]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(a1 + 2);

  return v3;
}

void sub_253C2B5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__180885(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __missingElementsFromLeftNotInRight(void *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v4 hmf_isEmpty])
  {
    v5 = [v3 mutableCopy];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v28 = v4;
    v6 = v4;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v14 = __itemFromConstraint(v13);
          v15 = v14;
          if (v14)
          {
            v16 = [v14 identifier];
            [v7 setObject:v13 forKey:v16];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v10);
    }

    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v3;
    v17 = v3;
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v30 + 1) + 8 * j);
          v23 = __itemFromConstraint(v22);
          v24 = [v23 identifier];
          v25 = [v7 objectForKey:v24];

          if (!v25)
          {
            [v5 addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v19);
    }

    v4 = v28;
    v3 = v29;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v5;
}

id __deepCopiedConstraints(void *a1)
{
  v1 = MEMORY[0x277CBEA60];
  v2 = a1;
  v3 = [[v1 alloc] initWithArray:v2 copyItems:1];

  return v3;
}

void *__itemFromConstraint(void *a1)
{
  v1 = [a1 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

void sub_253C2D534(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void sub_253C2D8FC(_Unwind_Exception *a1)
{
  v3 = v2;
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

BOOL __isConstraintValid(void *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [v6 type];
  if ((v7 - 1) < 2)
  {
    v15 = [v6 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = v17 != 0;
    if (v17)
    {
      goto LABEL_43;
    }

    v19 = objc_autoreleasePoolPush();
    v20 = v5;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      [v6 value];
      v23 = v46 = a3;
      *buf = 138543618;
      v48 = v22;
      v49 = 2112;
      v50 = objc_opt_class();
      v24 = v50;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Invalid constraint value class: %@", buf, 0x16u);

      a3 = v46;
    }

    objc_autoreleasePoolPop(v19);
    if (!a3)
    {
      goto LABEL_43;
    }

    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
    goto LABEL_41;
  }

  if (v7 == 3)
  {
    v26 = [v6 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v17 = v27;

    if (v17)
    {
      if ([v17 compare:&unk_28662A400] == 1)
      {
        v18 = 1;
LABEL_43:

        goto LABEL_44;
      }

      v37 = objc_autoreleasePoolPush();
      v38 = v5;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v40;
        v49 = 2112;
        v50 = v17;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Invalid step constraint value: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      if (a3)
      {
        v34 = 43;
        goto LABEL_40;
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v5;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [v6 value];
        *buf = 138543618;
        v48 = v31;
        v49 = 2112;
        v50 = objc_opt_class();
        v33 = v50;
        _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Invalid constraint value class: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      if (a3)
      {
        v34 = 22;
LABEL_40:
        v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:v34];
        v18 = 0;
LABEL_41:
        *a3 = v25;
        goto LABEL_43;
      }
    }

    v18 = 0;
    goto LABEL_43;
  }

  if (v7 != 4)
  {
    goto LABEL_35;
  }

  v8 = [v5 type];
  if (v8 == 5)
  {
    v35 = [v6 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v11 = v36;

    if (!v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v5;
      v14 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    goto LABEL_34;
  }

  if (v8 != 4)
  {
LABEL_35:
    v18 = 1;
    goto LABEL_44;
  }

  v9 = [v6 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
LABEL_34:

    goto LABEL_35;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = v5;
  v14 = HMFGetOSLogHandle();
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    goto LABEL_47;
  }

LABEL_46:
  v43 = HMFGetLogIdentifier();
  v44 = [v6 value];
  *buf = 138543618;
  v48 = v43;
  v49 = 2112;
  v50 = objc_opt_class();
  v45 = v50;
  _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Invalid constraint value class: %@", buf, 0x16u);

LABEL_47:
  objc_autoreleasePoolPop(v12);
  if (a3)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:22];
    *a3 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_44:

  v41 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_253C3274C(_Unwind_Exception *a1)
{
  __HMFActivityScopeLeave();
  __HMFActivityScopeLeave();
  _Unwind_Resume(a1);
}

void sub_253C353F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, id a34)
{
  objc_destroyWeak((v34 + 48));
  objc_destroyWeak((v34 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a34);
  _Unwind_Resume(a1);
}

void sub_253C36EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253C3E0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__182682(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253C3EF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253C3F5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253C4375C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDEventTriggerExecutionStateAsString(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDEventTriggerExecutionState %tu", a1];
  }

  else
  {
    v2 = off_279733B08[a1];
  }

  return v2;
}

void sub_253C45760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253C46A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253C4B24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253C4B840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253C4D164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253C51CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_253C6214C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL HMDIsEmptyHome(void *a1)
{
  v1 = a1;
  v2 = [v1 rooms];
  if ([v2 count])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v1 accessories];
    if ([v4 count])
    {
      v3 = 0;
    }

    else
    {
      v5 = [v1 sharedUsers];
      if ([v5 count])
      {
        v3 = 0;
      }

      else
      {
        v6 = [v1 outgoingInvitations];
        v3 = [v6 count] == 0;
      }
    }
  }

  return v3;
}

uint64_t identifierForTargetWithUUID(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  do
  {
    v5 = v4;
    v6 = MEMORY[0x277CCAD78];
    v7 = [a2 UUIDString];
    v12[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v4 = [v6 hm_deriveUUIDFromBaseUUID:v5 withSalts:v8];

    v9 = [v4 hash];
  }

  while (!v9);

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mapTargetCategory(void *a1)
{
  v1 = a1;
  v2 = +[HMDHAPMetadata getSharedInstance];
  v3 = [v1 categoryType];

  v4 = [v2 categoryForType:v3];

  v5 = [v4 identifier];
  v6 = [v5 unsignedShortValue];

  return v6;
}

id buttonConfigurationAsString(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAB68] string];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) shortDescription];
        [v2 appendFormat:@"%@, ", v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void logRemoteMessageEvent(void *a1, void *a2, void *a3)
{
  v22 = a1;
  v5 = a3;
  v6 = a2;
  v7 = [v6 hmf_stringForKey:@"kRemoteMessageAttributedMessageNameKey"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v22 hmf_stringForKey:@"kIDSMessageNameKey"];
  }

  v10 = v9;

  v11 = [v22 hmf_UUIDForKey:@"kIDSMessageIdentifierKey"];
  v12 = [v6 hmf_stringForKey:@"kRemoteMessagePeerInformationKey"];
  v13 = v12;
  v14 = @"Unknown";
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [v6 hmf_numberForKey:@"kRemoteMessageTransportAttributionKey"];
  v17 = [v16 unsignedIntegerValue];
  v18 = [v6 hmf_numberForKey:@"kRemoteMessageQoSKey"];

  v19 = +[HMDMetricsManager sharedLogEventSubmitter];
  LODWORD(v21) = v17;
  v20 = +[HMDRemoteMessageLogEvent receivedRemoteMessageName:identifier:transactionIdentifier:messageType:peerInformation:secure:transportType:messageQoS:](HMDRemoteMessageLogEvent, "receivedRemoteMessageName:identifier:transactionIdentifier:messageType:peerInformation:secure:transportType:messageQoS:", v10, v11, v5, 0, v15, 1, v21, [v18 integerValue]);

  [v19 submitLogEvent:v20];
}

id augmentResponseOptions(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = a2;
    v6 = [v4 mutableCopy];
    [v6 setObject:v5 forKey:@"kRemoteMessageAttributedMessageNameKey"];

    v7 = [v6 copy];
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

uint64_t _pairingCopyIdentity(uint64_t a1, char **a2, _OWORD *a3, _OWORD *a4, void *a5)
{
  v8 = a5;
  v9 = v8;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__185937;
  v30 = __Block_byref_object_dispose__185938;
  v31 = 0;
  if (!v8[23])
  {
    v22 = 4294960534;
    goto LABEL_17;
  }

  v10 = v8[30];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = ___pairingCopyIdentity_block_invoke;
  v25[3] = &unk_279734898;
  v25[4] = v9;
  v25[5] = &v26;
  dispatch_sync(v10, v25);
  v11 = v27[5];
  if (!v11)
  {
    v22 = 4294960569;
    goto LABEL_17;
  }

  if (a2)
  {
    v12 = [v11 identifier];
    v13 = [v12 lengthOfBytesUsingEncoding:4];

    if (!v13)
    {
      v22 = 4294960553;
      goto LABEL_17;
    }

    v14 = malloc_type_calloc(v13 + 1, 1uLL, 0x100004077774924uLL);
    if (!v14)
    {
      v22 = 4294960568;
      goto LABEL_17;
    }

    v15 = [v27[5] identifier];
    strlcpy(v14, [v15 UTF8String], v13 + 1);

    *a2 = v14;
  }

  if (a3)
  {
    v16 = [v27[5] publicKey];
    v17 = [v16 data];

    if (!v17)
    {
LABEL_18:
      v22 = 4294960569;
      goto LABEL_15;
    }

    if ([v17 length] != 32)
    {
LABEL_19:
      v22 = 4294960553;
      goto LABEL_15;
    }

    v18 = [v17 bytes];
    v19 = v18[1];
    *a3 = *v18;
    a3[1] = v19;
  }

  if (!a4)
  {
    v22 = 0;
    goto LABEL_17;
  }

  v20 = [v27[5] privateKey];
  v17 = [v20 data];

  if (!v17)
  {
    goto LABEL_18;
  }

  if ([v17 length] != 32)
  {
    goto LABEL_19;
  }

  v21 = [v17 bytes];
  v22 = 0;
  v23 = v21[1];
  *a4 = *v21;
  a4[1] = v23;
LABEL_15:

LABEL_17:
  _Block_object_dispose(&v26, 8);

  return v22;
}

void sub_253C6BFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__185937(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___pairingCopyIdentity_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 184);
  v12 = 0;
  v3 = (*(v2 + 16))();
  v4 = v12;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to get local pairing identity with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t _pairingFindPeer(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__185937;
  v23 = __Block_byref_object_dispose__185938;
  v24 = 0;
  if (v7[24])
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a1 length:a2 encoding:4];
    if (v8)
    {
      v9 = v7[30];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___pairingFindPeer_block_invoke;
      block[3] = &unk_279735BC0;
      v18 = &v19;
      block[4] = v7;
      v10 = v8;
      v17 = v10;
      dispatch_sync(v9, block);

      v11 = v20[5];
      if (v11)
      {
        if ([v11 length] == 32)
        {
          v12 = [v20[5] bytes];
          v13 = 0;
          v14 = v12[1];
          *a3 = *v12;
          a3[1] = v14;
        }

        else
        {
          v13 = 4294960553;
        }
      }

      else
      {
        v13 = 4294960569;
      }
    }

    else
    {
      v10 = 0;
      v13 = 4294960579;
    }
  }

  else
  {
    v10 = 0;
    v13 = 4294960534;
  }

  _Block_object_dispose(&v19, 8);

  return v13;
}

void sub_253C6C2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___pairingFindPeer_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 192);
  v14 = 0;
  v4 = (*(v3 + 16))();
  v5 = v14;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      *buf = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Find peer %@ failed: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_253C73334(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  __HMFActivityScopeLeave();
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_253C73D3C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_253C77420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__186484(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253C78FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253C7C38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__186702(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__186896(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253C81428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HMDCameraRecordingAudioCodecTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HMDCameraRecordingAudioCodecTypeAACELD";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingAudioCodecType %ld", a1];
    }
  }

  else
  {
    v2 = @"HMDCameraRecordingAudioCodecTypeAACLC";
  }

  return v2;
}

__CFString *HMDCameraRecordingAudioBitRateModeTypeAsString(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"HMDCameraRecordingAudioBitRateModeTypeConstant";
    }

    else
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingAudioBitRateModeType %ld", a1];
    }
  }

  else
  {
    v2 = @"HMDCameraRecordingAudioBitRateModeTypeVariable";
  }

  return v2;
}

__CFString *HMDCameraRecordingAudioSampleRateTypeAsString(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDCameraRecordingAudioSampleRateType %ld", a1];
  }

  else
  {
    v2 = off_279734FB8[a1];
  }

  return v2;
}

void sub_253C94348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id accessoryRequestMapFromRequests(void *a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v49 = a2;
  v47 = a3;
  v6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v52;
    *&v8 = 138543618;
    v46 = v8;
    do
    {
      v11 = 0;
      v48 = v9;
      do
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v51 + 1) + 8 * v11);
        v13 = [v12 accessory];
        if (v13)
        {
          v14 = v13;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_12;
          }

          v15 = v10;
          v16 = v6;
          v17 = [v12 characteristic];
          v18 = [v17 type];
          v19 = [v12 service];
          v20 = [v19 type];
          v21 = [HMDHAPMetadata isOwnerPrivilegeRequiredForWritingCharacteristicType:v18 serviceType:v20];

          if (v21 && ([v47 isOwner] & 1) == 0)
          {
            v33 = objc_autoreleasePoolPush();
            v34 = HMFGetOSLogHandle();
            v6 = v16;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v35 = HMFGetLogIdentifier();
              *buf = v46;
              v56 = v35;
              v57 = 2112;
              v58 = v12;
              _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Aborting characteristic write request that requires owner privilege: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v33);
            v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
            v37 = [HMDCharacteristicResponse responseWithRequest:v12 error:v36];

            [v49 addObject:v37];
            v10 = v15;
            v9 = v48;
          }

          else
          {
            v22 = [v12 characteristic];
            v23 = [v22 type];
            v24 = [v12 service];
            v25 = [v24 type];
            v26 = [HMDHAPMetadata isAdminPrivilegeRequiredForWritingCharacteristicType:v23 serviceType:v25];

            v6 = v16;
            v10 = v15;
            v9 = v48;
            if (!v26 || ([v47 isAdministrator] & 1) != 0)
            {
LABEL_12:
              if (([v14 isPrimary] & 1) == 0)
              {
                v27 = [v14 bridge];

                v14 = v27;
              }

              v28 = [v6 objectForKey:v14];
              if (!v28)
              {
                v28 = [MEMORY[0x277CBEB18] array];
                [v6 setObject:v28 forKey:v14];
              }

              [v28 addObject:v12];

              goto LABEL_20;
            }

            v38 = objc_autoreleasePoolPush();
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = HMFGetLogIdentifier();
              *buf = v46;
              v56 = v40;
              v57 = 2112;
              v58 = v12;
              _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Aborting characteristic write request that requires admin privilege: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v38);
            v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
            v42 = [HMDCharacteristicResponse responseWithRequest:v12 error:v41];

            [v49 addObject:v42];
          }
        }

        else
        {
          v29 = objc_autoreleasePoolPush();
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = HMFGetLogIdentifier();
            *buf = v46;
            v56 = v31;
            v57 = 2112;
            v58 = v12;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Aborting characteristic request: %@, accessory is nil", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
          v32 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          v14 = [HMDCharacteristicResponse responseWithRequest:v12 error:v32];

          [v49 addObject:v14];
        }

LABEL_20:

        ++v11;
      }

      while (v9 != v11);
      v43 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
      v9 = v43;
    }

    while (v43);
  }

  v44 = *MEMORY[0x277D85DE8];

  return v6;
}

void sub_253C98434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253C9A6DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__writeRequestsFromRequests_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

void sub_253C9BAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void migrateRequestsPassingTest(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5 == v6)
  {
    v11 = _HMFPreconditionFailure();
    __87__HMDHAPAccessoryPrimaryResidentOperationTask__processLocalRequests_responseWaitGroup___block_invoke_432(v11);
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __migrateRequestsPassingTest_block_invoke;
    v12[3] = &unk_279735490;
    v13 = v7;
    v8 = v7;
    v9 = [v5 indexesOfObjectsPassingTest:v12];
    v10 = [v5 objectsAtIndexes:v9];
    [v6 addObjectsFromArray:v10];

    [v5 removeObjectsAtIndexes:v9];
  }
}

void sub_253C9C598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HMDHTTPClientMessageTransportReset(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isRunning])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = v1;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Resetting", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = [v3 client];
    [v6 cancelPendingRequests];

    [v3 _receiveMessage];
    v7 = [v3 netService];
    [v7 confirmWithTimeout:&__block_literal_global_213_190038 completionHandler:0.0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_253C9F3B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253CA1AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253CA1F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id HMDRemoteMessagePayloadKeysForTransportMetadata()
{
  if (HMDRemoteMessagePayloadKeysForTransportMetadata_onceToken != -1)
  {
    dispatch_once(&HMDRemoteMessagePayloadKeysForTransportMetadata_onceToken, &__block_literal_global_190921);
  }

  v1 = HMDRemoteMessagePayloadKeysForTransportMetadata_keys;

  return v1;
}

void __HMDRemoteMessagePayloadKeysForTransportMetadata_block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"kIDSMessageSourceIDKey";
  v3[1] = @"kRemoteMessageIsFinalResponseKey";
  v3[2] = @"kRemoteMessageTransportAttributionKey";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v1 = HMDRemoteMessagePayloadKeysForTransportMetadata_keys;
  HMDRemoteMessagePayloadKeysForTransportMetadata_keys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void sub_253CB2970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_253CBCA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__193662(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __updateLoggedInAccount(void *a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = v5;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v34 = v11;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Posting transaction to update logged in account to %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v9 accessory];
  v13 = [v12 transactionWithObjectChangeType:2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v16 = encodeRootObject();
    [v15 setLoggedInAccount:v16];

    v32 = [v12 home];
    v17 = [v32 backingStore];
    v18 = [v7 name];
    +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v19 = v13;
    v20 = v15;
    v21 = v9;
    v22 = v12;
    v23 = v7;
    v25 = v24 = v6;
    v26 = [v17 transaction:v18 options:v25];

    v6 = v24;
    v7 = v23;
    v12 = v22;
    v9 = v21;
    v15 = v20;
    v13 = v19;

    [v26 add:v15 withMessage:v7];
    [v26 run];
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v9;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Did not obtain apple media accessory model type to update logged in account.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
  }

  v31 = *MEMORY[0x277D85DE8];
}

__CFString *HMDMediaDestinationManagerFailureCodeAsString(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
    v1 = [v2 stringWithFormat:@"failureCode(%@)", v3];
  }

  else
  {
    v1 = off_279735A20[a1 - 1];
  }

  return v1;
}

void sub_253CC2E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__194406(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253CC6908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__194645(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_253CC82E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  objc_destroyWeak(&a40);
  objc_destroyWeak((v40 - 256));
  _Unwind_Resume(a1);
}

void sub_253CC8AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, id a15)
{
  objc_destroyWeak((v15 + 72));
  objc_destroyWeak((v15 + 64));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a15);
  _Unwind_Resume(a1);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}