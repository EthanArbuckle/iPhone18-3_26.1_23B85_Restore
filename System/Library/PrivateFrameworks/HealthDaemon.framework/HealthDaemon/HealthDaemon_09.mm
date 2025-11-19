void sub_228B7DA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id location)
{
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228B7FE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228B822C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDSampleEntityOrderingTermsForRecentness()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:0];
  v1 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"end_date" entityClass:objc_opt_class() ascending:{0, v0}];
  v6[1] = v1;
  v2 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"creation_date" entityClass:objc_opt_class() ascending:0];
  v6[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

void sub_228B82654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDSampleEntityOrderingTermsForOldness()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"creation_date" entityClass:objc_opt_class() ascending:1];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

void sub_228B82C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 184), 8);
  _Block_object_dispose((v38 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_228B82E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B83B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B85370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDSampleEntityPredicateForDateInterval(void *a1, void *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1;
  v5 = [v4 endDate];
  v6 = HDSampleEntityPredicateForStartDate(3);

  v7 = [v4 startDate];
  v8 = HDSampleEntityPredicateForEndDate(6);

  v17[0] = v6;
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v10 = [v4 startDate];

  v11 = [v3 _earliestAllowedStartDateForSampleOverlappingDate:v10];

  if (v11)
  {
    v12 = HDSampleEntityPredicateForStartDate(6);
    v13 = [v9 arrayByAddingObject:v12];

    v9 = v13;
  }

  v14 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v9];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_228B86F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B87130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B88A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B8914C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v6 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_228B89688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 136), 8);
  _Unwind_Resume(a1);
}

void _HDSQLiteNewSourceUUIDWithBundleIdentifierAndProductType(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 == 2)
  {
    if (sqlite3_value_type(*a3) != 5 && sqlite3_value_type(a3[1]) != 5)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_value_text(*a3)];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:sqlite3_value_text(a3[1])];
      if (qword_280D67BA0 != -1)
      {
        dispatch_once(&qword_280D67BA0, &__block_literal_global_697);
      }

      if ([_MergedGlobals_199 containsObject:v6] && objc_msgSend(v5, "hasPrefix:", @"com.apple.health."))
      {
        v7 = [v5 stringByReplacingOccurrencesOfString:@"com.apple.health." withString:&stru_283BF39C8];
        if ([v7 length])
        {
          v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
        }

        else
        {
          _HKInitializeLogging();
          v10 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v5;
            _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "Failed to generate UUID from bundle identifier %{public}@", buf, 0xCu);
          }

          v8 = 0;
        }

        if (v8)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    v8 = [MEMORY[0x277CCAD78] UUID];
LABEL_12:
    *buf = 0uLL;
    [v8 getUUIDBytes:buf];
    sqlite3_result_blob(a1, buf, 16, 0xFFFFFFFFFFFFFFFFLL);

    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  v11 = [MEMORY[0x277CCA890] currentHandler];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _HDSQLiteNewSourceUUIDWithBundleIdentifierAndProductType(sqlite3_context *, int, sqlite3_value **)"}];
  [v11 handleFailureInFunction:v12 file:@"HDDatabaseMigrator+Monarch.m" lineNumber:895 description:{@"Invalid parameter not satisfying: %@", @"argc == 2"}];

  v13 = *MEMORY[0x277D85DE8];

  sqlite3_result_error(a1, "Improper number of arguments.", 1);
}

uint64_t __Block_byref_object_copy__58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228B8BFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getIMServiceImplClass_block_invoke(uint64_t a1)
{
  IMCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IMServiceImpl");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIMServiceImplClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getIMServiceImplClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"HDContributorManager.m" lineNumber:33 description:{@"Unable to find class %s", "IMServiceImpl"}];

    __break(1u);
  }
}

void *IMCoreLibrary()
{
  v0 = IMCoreLibraryCore();
  if (v0)
  {
    return v0;
  }

  v1 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *IMCoreLibrary(void)"];
  [v1 handleFailureInFunction:v3 file:@"HDContributorManager.m" lineNumber:32 description:{@"%s", 0}];

  __break(1u);
  free(v4);
  return v1;
}

uint64_t IMCoreLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!IMCoreLibraryCore_frameworkLibrary)
  {
    IMCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = IMCoreLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __IMCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getIMPreferredAccountForServiceSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIMPreferredAccountForServiceSymbolLoc_ptr;
  v6 = getIMPreferredAccountForServiceSymbolLoc_ptr;
  if (!getIMPreferredAccountForServiceSymbolLoc_ptr)
  {
    v1 = IMCoreLibrary();
    v4[3] = dlsym(v1, "IMPreferredAccountForService");
    getIMPreferredAccountForServiceSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_228B8C36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIMPreferredAccountForServiceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMCoreLibrary();
  result = dlsym(v2, "IMPreferredAccountForService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMPreferredAccountForServiceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_228B8C698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B8D024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228B8EC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableAuthorizationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v52[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52[0] & 0x7F) << v5;
        if ((v52[0] & 0x80) == 0)
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
        break;
      }

      if (v13 <= 5)
      {
        if (v13 == 4)
        {
          *(a1 + 64) |= 8u;
          v52[0] = 0;
          v34 = [a2 position] + 8;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:v52 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 32) = v52[0];
          goto LABEL_100;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            LOBYTE(v52[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v52[0] & 0x7F) << v14;
            if ((v52[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_90;
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

LABEL_90:
          v48 = 40;
LABEL_99:
          *(a1 + v48) = v20;
          goto LABEL_100;
        }

        goto LABEL_56;
      }

      if (v13 == 6)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 64) |= 1u;
        while (1)
        {
          LOBYTE(v52[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v52[0] & 0x7F) << v36;
          if ((v52[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_86;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v38;
        }

LABEL_86:
        v48 = 8;
        goto LABEL_99;
      }

      if (v13 != 7)
      {
        goto LABEL_56;
      }

      v27 = objc_alloc_init(HDCodableSyncIdentity);
      objc_storeStrong((a1 + 56), v27);
      v52[0] = 0;
      v52[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v27, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_100:
      v49 = [a2 position];
      if (v49 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 64) |= 0x20u;
        while (1)
        {
          LOBYTE(v52[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v52[0] & 0x7F) << v28;
          if ((v52[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_82;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v30;
        }

LABEL_82:
        v48 = 48;
        goto LABEL_99;
      case 2:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 64) |= 4u;
        while (1)
        {
          LOBYTE(v52[0]) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v52[0] & 0x7F) << v42;
          if ((v52[0] & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_98;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v44;
        }

LABEL_98:
        v48 = 24;
        goto LABEL_99;
      case 3:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 64) |= 2u;
        while (1)
        {
          LOBYTE(v52[0]) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:v52 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v52[0] & 0x7F) << v21;
          if ((v52[0] & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_94;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_94:
        v48 = 16;
        goto LABEL_99;
    }

LABEL_56:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_100;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableFHIRResourceReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v53) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v53 & 0x7F) << v5;
      if ((v53 & 0x80) == 0)
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

    switch((v12 >> 3))
    {
      case 2u:
        v13 = PBReaderReadString();
        v14 = 80;
        goto LABEL_77;
      case 3u:
        v13 = PBReaderReadString();
        v14 = 120;
        goto LABEL_77;
      case 4u:
        v13 = PBReaderReadData();
        v14 = 104;
        goto LABEL_77;
      case 5u:
        *(a1 + 160) |= 0x20u;
        v53 = 0;
        v34 = [a2 position] + 8;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
        {
          v47 = [a2 data];
          [v47 getBytes:&v53 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v48 = v53;
        v49 = 48;
        goto LABEL_101;
      case 6u:
        v13 = PBReaderReadString();
        v14 = 128;
        goto LABEL_77;
      case 7u:
        v13 = PBReaderReadString();
        v14 = 64;
        goto LABEL_77;
      case 9u:
        v13 = PBReaderReadString();
        v14 = 112;
        goto LABEL_77;
      case 0xAu:
        v13 = PBReaderReadString();
        v14 = 136;
        goto LABEL_77;
      case 0xBu:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 160) |= 1u;
        while (1)
        {
          LOBYTE(v53) = 0;
          v42 = [a2 position] + 1;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v41 |= (v53 & 0x7F) << v39;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v11 = v40++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_95;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v41;
        }

LABEL_95:
        v46 = 8;
        goto LABEL_96;
      case 0xCu:
        v13 = PBReaderReadString();
        v14 = 56;
        goto LABEL_77;
      case 0xDu:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 160) |= 4u;
        while (1)
        {
          LOBYTE(v53) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v53 & 0x7F) << v15;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_83;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_83:
        v46 = 24;
        goto LABEL_96;
      case 0xEu:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 160) |= 8u;
        while (1)
        {
          LOBYTE(v53) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v53 & 0x7F) << v28;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_91;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v30;
        }

LABEL_91:
        v46 = 32;
        goto LABEL_96;
      case 0xFu:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 160) |= 0x10u;
        while (1)
        {
          LOBYTE(v53) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v53 & 0x7F) << v22;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_87;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v24;
        }

LABEL_87:
        v46 = 40;
LABEL_96:
        *(a1 + v46) = v21;
        goto LABEL_102;
      case 0x10u:
        v13 = PBReaderReadString();
        v14 = 96;
        goto LABEL_77;
      case 0x11u:
        v36 = objc_alloc_init(HDCodableMessageVersion);
        objc_storeStrong((a1 + 88), v36);
        v53 = 0;
        v54 = 0;
        if (!PBReaderPlaceMark() || !HDCodableMessageVersionReadFrom(v36, a2))
        {
          goto LABEL_104;
        }

        goto LABEL_75;
      case 0x12u:
        *(a1 + 160) |= 2u;
        v53 = 0;
        v37 = [a2 position] + 8;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
        {
          v50 = [a2 data];
          [v50 getBytes:&v53 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v48 = v53;
        v49 = 16;
LABEL_101:
        *(a1 + v49) = v48;
        goto LABEL_102;
      case 0x13u:
        v13 = PBReaderReadString();
        v14 = 72;
        goto LABEL_77;
      case 0x14u:
        v36 = objc_alloc_init(HDCodableSyncIdentity);
        objc_storeStrong((a1 + 144), v36);
        v53 = 0;
        v54 = 0;
        if (PBReaderPlaceMark() && HDCodableSyncIdentityReadFrom(v36, a2))
        {
LABEL_75:
          PBReaderRecallMark();

LABEL_102:
          v51 = [a2 position];
          if (v51 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_104:

        return 0;
      case 0x15u:
        v13 = PBReaderReadData();
        v14 = 152;
LABEL_77:
        v45 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_102;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_102;
    }
  }
}

void sub_228B9BE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228B9C020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B9DC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BA5574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__61(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _HDRatingOfExertionSamplesForWorkoutPID(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CCD830];
  v10 = *MEMORY[0x277CCCB68];
  v11 = a4;
  v12 = a2;
  v13 = [v9 quantityTypeForIdentifier:v10];
  v26[0] = v13;
  v14 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCD8]];
  v26[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

  v16 = HDReferenceForAssociatableObject(v12);

  v25 = 0;
  LOBYTE(v24) = a3 == 1;
  v17 = [HDAssociationEntity objectsAssociatedWithObjectPID:a1 subObjectReference:v16 dataTypes:v15 associationType:1 behavior:0 limit:a3 sortDescending:v24 profile:v11 error:&v25];

  v18 = v25;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v20 = v18;
    if (v20)
    {
      if (a5)
      {
        v21 = v20;
        *a5 = v20;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

void sub_228BA6614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228BA73FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_228BA767C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BA7A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t HDCodableMenstrualCyclesExperienceModelReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228BAB4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__63(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDConceptIndexEntityPredicateForConceptIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 count])
  {
    v5 = MEMORY[0x277D10B18];
    v6 = [v3 numberRepresentation];
    v7 = [v5 predicateWithProperty:@"concept_identifier" equalToValue:v6];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __HDConceptIndexEntityPredicateForConceptIdentifier_block_invoke;
    v12[3] = &unk_2786136C8;
    v13 = v7;
    v8 = v7;
    v9 = [v4 hk_map:v12];
    v10 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v9];
  }

  else
  {
    v10 = [MEMORY[0x277D10B70] falsePredicate];
  }

  return v10;
}

id __HDConceptIndexEntityPredicateForConceptIdentifier_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D10B20];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277D10B18] predicateWithProperty:@"key_path" equalToValue:a2];
  v5 = [v2 compoundPredicateWithPredicate:v3 otherPredicate:v4];

  return v5;
}

id HDConceptIndexEntityPredicateForConceptIdentifiers(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * i) numberRepresentation];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"concept_identifier" values:v5];
  v13 = [MEMORY[0x277D10B18] predicateWithProperty:@"key_path" equalToValue:v4];
  v14 = [MEMORY[0x277D10B20] compoundPredicateWithPredicate:v13 otherPredicate:v12];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_228BAD63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228BAE030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v18 - 72));
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228BAE4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BAFB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = HDDatabase;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_228BB029C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *HDStringFromHDDatabaseType(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"Protected Database";
  }

  else if (a1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown Database Type (%ld)", a1];
  }

  else
  {
    v2 = @"Unprotected Database";
  }

  return v2;
}

void sub_228BB1EAC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23)
{
  if (a2)
  {

    objc_begin_catch(a1);
    if ((a23 & 1) == 0)
    {
      JUMPOUT(0x228BB1A64);
    }

    JUMPOUT(0x228BB1910);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HDStringFromDatabaseComponentIdentifier(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown database component (%ld)", a1];
  }

  else
  {
    v2 = off_27861CB38[a1];
  }

  return v2;
}

void sub_228BB4788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    JUMPOUT(0x228BB455CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_228BB50A4(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

id HDDatabaseIdentifierDefaultKeyForProfileIdentifier(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [a1 identifier];
  v3 = [v2 UUIDString];
  v4 = [v1 stringWithFormat:@"DatabaseIdentifier-%@", v3];

  return v4;
}

void sub_228BB5248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_228BB646C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  if (!v21)
  {

    v21 = 0;
  }

  _Unwind_Resume(a1);
}

void sub_228BB6CB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_228BB9A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_228BBAD40(_Unwind_Exception *a1)
{
  if (!v3)
  {

    v3 = 0;
  }

  _Unwind_Resume(a1);
}

void sub_228BBB84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_228BBB908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_228BBC5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

id HDDatabaseUserDefaultsKeyForProfileIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x277CCACA8];
  v5 = [a2 identifier];
  v6 = [v5 UUIDString];
  v7 = [v4 stringWithFormat:@"%@-%@", v3, v6];

  return v7;
}

uint64_t HDCodableCompanionUserNotificationResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(HDCodableError);
        objc_storeStrong((a1 + 8), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableErrorReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v26[0] & 0x7F) << v16;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_36;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228BC67DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_228BC7754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228BC79B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_228BC7F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  *(v35 - 248) = v33;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100]((v35 - 248));

  _Block_object_dispose(&a33, 8);
  *(v35 - 248) = a10;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100]((v35 - 248));

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__307(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void *std::vector<_HDWrappedSource>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<_HDWrappedSource>>(a2);
    }

    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

id std::vector<_HDWrappedSource>::push_back[abi:ne200100](void *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v11;
    }

    v15[4] = a1;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<_HDWrappedSource>>(v12);
    }

    v13 = 24 * v9;
    v15[0] = 0;
    v15[1] = v13;
    v15[3] = 0;
    *v13 = *a2;
    v14 = *(a2 + 8);
    *(v13 + 16) = *(a2 + 16);
    *(v13 + 8) = v14;
    v15[2] = v13 + 24;
    std::vector<_HDWrappedSource>::__swap_out_circular_buffer(a1, v15);
    v8 = a1[1];
    result = std::__split_buffer<_HDWrappedSource>::~__split_buffer(v15);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = *(a2 + 16);
    *(v5 + 8) = *(a2 + 8);
    *(v5 + 16) = v7;
    v8 = v5 + 24;
  }

  a1[1] = v8;
  return result;
}

void sub_228BC8E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id a57, id a58, id a59)
{
  _Block_object_dispose(&a44, 8);
  *(v59 - 248) = a10;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100]((v59 - 248));

  _Unwind_Resume(a1);
}

void sub_228BC9830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23 = &a33;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23 = (v35 - 200);
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23 = (v35 - 136);
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&a23);

  std::pair<_HDCachedSourceOrder * {__strong},HDConcreteSyncIdentity * {__strong}>::~pair(v34);
  _Unwind_Resume(a1);
}

void sub_228BCA074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  v17 = v15;

  a13 = &a10;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

void sub_228BCA87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void **a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void **a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v73 - 256) = v72;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100]((v73 - 256));
  _Block_object_dispose(&a72, 8);
  *(v73 - 256) = a10;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100]((v73 - 256));

  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  std::__hash_table<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,std::__unordered_map_hasher<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectHash,HDNSObjectEqual,true>,std::__unordered_map_equal<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectEqual,HDNSObjectHash,true>,std::allocator<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>>>::~__hash_table(&a38);
  _Block_object_dispose(&a43, 8);
  a32 = a13;
  std::vector<HKSource * {__strong}>::__destroy_vector::operator()[abi:ne200100](&a32);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__325(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t __Block_byref_object_copy__328(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t _HDDefaultSourceOrderCompare(HKSource *a1, HKSource *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = ___ZL28_HDDefaultSourceOrderCompareP8HKSourceS0__block_invoke(v3);
  v6 = ___ZL28_HDDefaultSourceOrderCompareP8HKSourceS0__block_invoke(v4);
  v7 = [v5 compare:v6];

  if (!v7)
  {
    if ([(HKSource *)v3 _isAppleDevice]&& [(HKSource *)v4 _isAppleDevice])
    {
      v8 = [(HKSource *)v3 bundleIdentifier];
      v9 = [(HKSource *)v4 bundleIdentifier];
      v7 = [v8 compare:v9];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

void sub_228BCBE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void **a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  std::__split_buffer<_HDWrappedSource>::~__split_buffer(&a50);

  a42 = &a45;
  std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](&a42);

  _Unwind_Resume(a1);
}

void std::vector<_HDWrappedSource>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<_HDWrappedSource>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      v10 = v7[1];
      *(v8 + 16) = *(v7 + 16);
      *(v8 + 8) = v10;
      v7 += 3;
      v8 += 24;
    }

    while (v7 != v5);
    do
    {
      v11 = *v4;
      v4 += 3;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_HDWrappedSource>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<_HDWrappedSource>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<_HDWrappedSource>::__init_with_size[abi:ne200100]<_HDWrappedSource*,_HDWrappedSource*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<_HDWrappedSource>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<_HDWrappedSource>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<_HDWrappedSource>>(a2);
  }

  std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
}

void std::vector<HKSource * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<_HDWrappedSource>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 3);
        v3 -= 24;
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

id *std::__copy_impl::operator()[abi:ne200100]<_HDWrappedSource *,_HDWrappedSource *,_HDWrappedSource *>(uint64_t a1, uint64_t a2, id *location)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      objc_storeStrong(location, *v5);
      v6 = *(v5 + 8);
      *(location + 16) = *(v5 + 16);
      location[1] = v6;
      v5 += 24;
      location += 3;
    }

    while (v5 != a2);
  }

  return location;
}

void *___ZL28_HDDefaultSourceOrderCompareP8HKSourceS0__block_invoke(void *a1)
{
  v1 = a1;
  if ([v1 _isPreferredSource])
  {
    v2 = [v1 bundleIdentifier];
    v3 = [v2 isEqualToString:*MEMORY[0x277CCE3A8]];

    if (v3)
    {
      v4 = &unk_283CB0AC8;
    }

    else if ([v1 _isConnectedGymSource])
    {
      v4 = &unk_283CB0AE0;
    }

    else if ([v1 _isAppleWatch])
    {
      v4 = &unk_283CB0AF8;
    }

    else if ([v1 _isAppleDevice])
    {
      v4 = &unk_283CB0B10;
    }

    else if ([v1 _isApplication])
    {
      v4 = &unk_283CB0B28;
    }

    else
    {
      v4 = &unk_283CB0B40;
    }
  }

  else
  {
    v4 = &unk_283CB0B58;
  }

  return v4;
}

uint64_t std::__hash_table<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,std::__unordered_map_hasher<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectHash,HDNSObjectEqual,true>,std::__unordered_map_equal<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectEqual,HDNSObjectHash,true>,std::allocator<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,std::__unordered_map_hasher<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectHash,HDNSObjectEqual,true>,std::__unordered_map_equal<HKSource * {__strong},std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,HDNSObjectEqual,HDNSObjectHash,true>,std::allocator<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>>>::__emplace_unique_key_args<HKSource * {__strong},std::piecewise_construct_t const&,std::tuple<HKSource * const {__strong}&>,std::tuple<>>(void *a1, id *a2)
{
  v4 = [*a2 hash];
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_22;
    }

LABEL_21:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  v13 = *a2;
  v14 = v11[2];
  v15 = v13;
  v16 = v15;
  if (v14 != v15)
  {
    if (v15)
    {
      v17 = [v14 isEqual:v15];

      if (v17)
      {
        return v11;
      }
    }

    else
    {
    }

    goto LABEL_21;
  }

  return v11;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<HKSource * {__strong},_HDWrappedSource>,void *>>>::operator()[abi:ne200100](char a1, id *a2)
{
  if (a1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_228BCD3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228BD0A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BD0E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BD1E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228BD2708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BD2C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BD2F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BD3A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BD5088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableTimestampedKeyValuePairReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v21 = PBReaderReadString();
        v22 = 40;
LABEL_44:
        v28 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_54;
      }

      if (v13 == 2)
      {
        *(a1 + 56) |= 4u;
        v34 = 0;
        v26 = [a2 position] + 8;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 8, v27 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v34;
        v31 = 24;
LABEL_53:
        *(a1 + v31) = v30;
        goto LABEL_54;
      }

      if (v13 != 3)
      {
        goto LABEL_38;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 56) |= 2u;
      while (1)
      {
        LOBYTE(v34) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v34 & 0x7F) << v14;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_48;
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

LABEL_48:
      *(a1 + 16) = v20;
LABEL_54:
      v33 = [a2 position];
      if (v33 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        *(a1 + 56) |= 1u;
        v34 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v30 = v34;
        v31 = 8;
        goto LABEL_53;
      case 5:
        v21 = PBReaderReadString();
        v22 = 48;
        break;
      case 6:
        v21 = PBReaderReadData();
        v22 = 32;
        break;
      default:
LABEL_38:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_54;
    }

    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

void sub_228BD8904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__67(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228BD8AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BD952C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

id getSOSUtilitiesClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOSUtilitiesClass_softClass;
  v7 = getSOSUtilitiesClass_softClass;
  if (!getSOSUtilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSOSUtilitiesClass_block_invoke_0;
    v3[3] = &unk_278616E90;
    v3[4] = &v4;
    __getSOSUtilitiesClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_228BDAB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BDAC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSOSUtilitiesClass_block_invoke_0(uint64_t a1)
{
  SOSLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOSUtilities");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOSUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSOSUtilitiesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"HDMedicalIDDataManager+EmergencyContactConsolidation.m" lineNumber:26 description:{@"Unable to find class %s", "SOSUtilities"}];

    __break(1u);
  }
}

void SOSLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SOSLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SOSLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27861D450;
    v6 = 0;
    SOSLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SOSLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SOSLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"HDMedicalIDDataManager+EmergencyContactConsolidation.m" lineNumber:25 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __SOSLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SOSLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getSOSContactsManagerClass_block_invoke(uint64_t a1)
{
  SOSLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SOSContactsManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOSContactsManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSOSContactsManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"HDMedicalIDDataManager+EmergencyContactConsolidation.m" lineNumber:28 description:{@"Unable to find class %s", "SOSContactsManager"}];

    __break(1u);
  }
}

void sub_228BDDBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BDDDE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_228BDED44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, id a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 72));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a27);
  _Unwind_Resume(a1);
}

void sub_228BDF474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableMedicationDoseEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v45[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45[0] & 0x7F) << v5;
        if ((v45[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            *(a1 + 88) |= 1u;
            v45[0] = 0;
            v28 = [a2 position] + 8;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:v45 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v39 = v45[0];
            v40 = 8;
            goto LABEL_82;
          }

          if (v13 == 7)
          {
            *(a1 + 88) |= 4u;
            v45[0] = 0;
            v25 = [a2 position] + 8;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
            {
              v38 = [a2 data];
              [v38 getBytes:v45 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v39 = v45[0];
            v40 = 24;
            goto LABEL_82;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v30 = 0;
              v31 = 0;
              v32 = 0;
              *(a1 + 88) |= 0x10u;
              while (1)
              {
                LOBYTE(v45[0]) = 0;
                v33 = [a2 position] + 1;
                if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
                {
                  v35 = [a2 data];
                  [v35 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v32 |= (v45[0] & 0x7F) << v30;
                if ((v45[0] & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                v11 = v31++ >= 9;
                if (v11)
                {
                  v24 = 0;
                  goto LABEL_74;
                }
              }

              if ([a2 hasError])
              {
                v24 = 0;
              }

              else
              {
                v24 = v32;
              }

LABEL_74:
              v37 = 40;
              goto LABEL_75;
            case 9:
              v16 = PBReaderReadData();
              v17 = 64;
              goto LABEL_64;
            case 0xA:
              v16 = PBReaderReadString();
              v17 = 48;
LABEL_64:
              v36 = *(a1 + v17);
              *(a1 + v17) = v16;

              goto LABEL_83;
          }
        }

        goto LABEL_65;
      }

      if (v13 > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 88) |= 2u;
          while (1)
          {
            LOBYTE(v45[0]) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v45[0] & 0x7F) << v18;
            if ((v45[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_70;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_70:
          v37 = 16;
LABEL_75:
          *(a1 + v37) = v24;
          goto LABEL_83;
        }

LABEL_65:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_83;
      }

      v27 = objc_alloc_init(HDCodableSample);
      objc_storeStrong((a1 + 72), v27);
      v45[0] = 0;
      v45[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v27, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_83:
      v43 = [a2 position];
      if (v43 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v16 = PBReaderReadString();
        v17 = 80;
        goto LABEL_64;
      case 4:
        v16 = PBReaderReadString();
        v17 = 56;
        goto LABEL_64;
      case 5:
        *(a1 + 88) |= 8u;
        v45[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:v45 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v39 = v45[0];
        v40 = 32;
LABEL_82:
        *(a1 + v40) = v39;
        goto LABEL_83;
    }

    goto LABEL_65;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableMedicalCodingListReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(HDCodableMedicalCoding);
        [a1 addItems:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableMedicalCodingReadFrom(v13, a2))
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

uint64_t HDCloudSyncCodableSharedSummaryRecordReadFrom(char *a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addAuthorizationCategories:v16];
            }

            goto LABEL_37;
          }

          if (v13 == 8)
          {
            v14 = PBReaderReadData();
            v15 = 48;
            goto LABEL_36;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadString();
            v15 = 16;
            goto LABEL_36;
          }

          if (v13 == 6)
          {
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addObjectTypeIdentifiers:v16];
            }

            goto LABEL_37;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_36:
          v16 = *&a1[v15];
          *&a1[v15] = v14;
LABEL_37:

          goto LABEL_38;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          v15 = 64;
          goto LABEL_36;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 56;
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableListUserDomainConceptReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableCompanionUserNotificationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(HDCodableCompanionUserNotificationConfiguration);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !HDCodableCompanionUserNotificationConfigurationReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

double combineNoiseLevelDatums(double a1, double a2, double a3, double a4)
{
  v8 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  v9 = __exp10(a1 / 10.0);
  v10 = __exp10(a3 / 10.0);
  v11 = 0.0;
  if (a2 + a4 > 0.0)
  {
    v12 = a2 * v9 + a4 * v10;
    if (v12 > 0.0)
    {
      v11 = log10(v12 / (a2 + a4)) * 10.0;
    }
  }

  return v11;
}

void HDStatisticsNoiseLevel::addSampleValue(HDStatisticsNoiseLevel *this, double a2, double a3, int a4)
{
  v7.f64[0] = __exp10(a2 / 10.0) * a3;
  v8 = *(this + 4);
  if (!v8)
  {
    *this = v7.f64[0];
    *(this + 1) = a3;
    v11 = 1;
    *(this + 2) = a2;
    *(this + 3) = a2;
    goto LABEL_9;
  }

  v10 = *(this + 2);
  v9 = *(this + 3);
  if (v9 >= a2)
  {
    v9 = a2;
  }

  if (v10 <= a2)
  {
    v10 = a2;
  }

  *(this + 2) = v10;
  *(this + 3) = v9;
  v7.f64[1] = a3;
  *this = vaddq_f64(v7, *this);
  if (a4)
  {
    v11 = v8 + 1;
LABEL_9:
    *(this + 4) = v11;
  }
}

long double HDStatisticsNoiseLevel::mean(HDStatisticsNoiseLevel *this)
{
  v1 = *(this + 1);
  result = 0.0;
  if (v1 > 0.0 && *this > 0.0)
  {
    return log10(*this / v1) * 10.0;
  }

  return result;
}

uint64_t *HDStatisticsNoiseLevel::splitSampleAtTime@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 1);
  v4 = *(result + 2);
  v5 = result[3];
  v6 = *(result + 32);
  v7 = 0.0;
  v8 = *(result + 33);
  if (v6)
  {
    if (v3 > a3)
    {
      v6 = 0;
      v9 = v4 > v3;
      a3 = *(result + 2);
      v10 = *(result + 33);
      v7 = *result;
      v11 = *(result + 1);
LABEL_9:
      v12 = result[3];
      goto LABEL_10;
    }

    if (v4 >= a3)
    {
      v6 = v3 < a3;
      v9 = v4 > a3;
      v10 = *(result + 33);
      v7 = *result;
      v11 = a3;
      goto LABEL_9;
    }

    v10 = 0;
    v12 = 0;
    v9 = 0;
    v6 = v4 > v3;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v9 = 0;
  }

  a3 = *(result + 2);
  v11 = 0.0;
  v4 = 0.0;
LABEL_10:
  *a2 = *result;
  *(a2 + 8) = v3;
  *(a2 + 16) = a3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 33) = v8;
  *(a2 + 34) = *(result + 34);
  *(a2 + 38) = *(result + 19);
  *(a2 + 40) = v7;
  *(a2 + 48) = v11;
  *(a2 + 56) = v4;
  *(a2 + 64) = v12;
  *(a2 + 72) = v9;
  *(a2 + 73) = v10;
  return result;
}

double *HDStatisticsNoiseLevel::splitSampleAtTime(double *result, uint64_t a2, double a3)
{
  if ((result[4] & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = result[1];
  if (v3 > a3)
  {
    v4 = *(result + 16);
    v5 = *(result + 1);
    *a2 = *result;
    *(a2 + 16) = v5;
    *(a2 + 32) = v4;
    *(a2 + 32) = *(a2 + 16) > *(a2 + 8);
    *(result + 32) = 0;
    return result;
  }

  v6 = result[2];
  if (v6 < a3)
  {
    *(result + 32) = v6 > v3;
LABEL_6:
    *(a2 + 32) = 0;
    return result;
  }

  v7 = *result;
  v8 = *(result + 1);
  *(a2 + 32) = *(result + 16);
  *a2 = v7;
  *(a2 + 16) = v8;
  result[2] = a3;
  *(a2 + 8) = a3;
  *(result + 32) = result[1] < a3;
  *(a2 + 32) = *(a2 + 16) > a3;
  return result;
}

uint64_t HDStatisticsNoiseLevel::applyMaskToSample(uint64_t result, void *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3 != *a2)
  {
    v4 = *(result + 16);
    v5 = *(result + 8);
    if (v4 - v5 <= 0.0)
    {
      goto LABEL_20;
    }

    v6 = (*a2 + 8);
    v7 = 0.0;
    v8 = *(result + 8);
    do
    {
      v9 = v6 - 1;
      if (*v6 > v8)
      {
        v10 = *v9;
        if (*v9 >= v4)
        {
          break;
        }

        if (v10 > v8)
        {
          if (v4 < v10)
          {
            v9 = (result + 16);
          }

          v7 = v7 + *v9 - v8;
        }

        if (*v6 >= v4)
        {
          v11 = (result + 16);
        }

        else
        {
          v11 = v6;
        }

        v8 = *v11;
      }

      v12 = v6 + 1;
      v6 += 2;
    }

    while (v12 != v3);
    v13 = v8 >= v4 ? v7 : v7 + v4 - v8;
    if (v13 <= 0.0)
    {
LABEL_20:
      *(result + 32) = 0;
    }

    else
    {
      *(result + 16) = v5 + v13;
    }
  }

  return result;
}

void HDStatisticsNoiseLevel::configure(HDStatisticsNoiseLevel *this, HDStatisticsNoiseLevelConfiguration *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(this + 89);
    v5 = v3;
    if (![(HDStatisticsNoiseLevelConfiguration *)v3 enableOverlapProcessing]&& (v4 & 1) != 0)
    {
      HDStatisticsNoiseLevel::finalizeSamples(this);
      *(this + 88) = 1;
      [*(this + 10) resetAnchorTime:0.0];
    }

    *(this + 89) = [(HDStatisticsNoiseLevelConfiguration *)v5 enableOverlapProcessing];
    v3 = v5;
  }
}

void HDStatisticsNoiseLevel::finalizeSamples(HDStatisticsNoiseLevel *this)
{
  v1 = MEMORY[0x28223BE20](this);
  if (*(v1 + 89) == 1)
  {
    v2 = v1;
    memset(v8, 0, 512);
    v3 = *(v1 + 80);
    if (v3)
    {
      [v3 exportCurrentState];
    }

    else
    {
      bzero(v8, 0x1420uLL);
    }

    v4 = [HDQuantitySampleOverlapProcessor alloc];
    memcpy(__dst, v8, sizeof(__dst));
    v5 = [(HDQuantitySampleOverlapProcessor *)v4 initWithState:__dst];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN22HDStatisticsNoiseLevel15finalizeSamplesEv_block_invoke;
    v6[3] = &__block_descriptor_40_e24_B32__0q8____dddBq_16__24l;
    v6[4] = v2;
    [(HDQuantitySampleOverlapProcessor *)v5 fetchFinalOverlapSamplesWithErrorOut:0 handler:v6];
  }
}

void HDStatisticsNoiseLevel::addSample(HDStatisticsNoiseLevel *this, const HDRawQuantitySample *a2, char a3)
{
  if (*(this + 89))
  {
    memset(v14, 0, sizeof(v14));
    var0 = a2->var0;
    var3 = a2->var3;
    v6 = *(this + 10);
    v11 = *&a2->var1;
    v12 = var0;
    v13 = a3;
    v15 = var3;
    v7 = *(this + 88);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___ZN22HDStatisticsNoiseLevel9addSampleERK19HDRawQuantitySampleb_block_invoke;
    v10[3] = &__block_descriptor_40_e24_B32__0q8____dddBq_16__24l;
    v10[4] = this;
    [v6 fetchOverlapProcessSamplesFrom:&v11 setAnchorTime:v7 errorOut:0 handler:v10];
    if (*(this + 88) == 1)
    {
      *(this + 88) = 0;
    }
  }

  else
  {
    v8 = a2->var0;
    v9 = a2->var2 - a2->var1;

    HDStatisticsNoiseLevel::addSampleValue(this, v8, v9, a3);
  }
}

void HDStatisticsNoiseLevel::addProcessedOverlapSampleValues(HDStatisticsNoiseLevel *this, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v3 = a2;
    v5 = a3 + 16;
    do
    {
      v6 = *(v5 - 16);
      v7 = *(v5 - 8);
      v8 = *v5;
      v9 = *(v5 + 16);
      HDStatisticsNoiseLevel::addSampleValue(this, *v5, v7 - v6, *(v5 + 8) & 1);
      if (v3 == 1 && (!*(this + 72) || *(this + 6) <= v6))
      {
        *(this + 5) = v8;
        *(this + 6) = v6;
        *(this + 7) = v7;
        *(this + 8) = v9;
        *(this + 36) = 1;
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }
}

__n128 HDStatisticsNoiseLevel::updateMostRecentSample(HDStatisticsNoiseLevel *this, const HDRawQuantitySample *a2)
{
  if (!*(this + 72) || (result.n128_u64[0] = *(this + 6), result.n128_f64[0] <= a2->var1))
  {
    result = *&a2->var0;
    v3 = *&a2->var2;
    *(this + 36) = *&a2->var4;
    *(this + 56) = v3;
    *(this + 40) = result;
  }

  return result;
}

void HDStatisticsNoiseLevel::unarchive(HDStatisticsNoiseLevel *this, const statistics::Statistics *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  *(v3 + 72) = 0;
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  v5 = [[HDQuantitySampleOverlapProcessor alloc] initWithOverlapFunction:1];
  *(v4 + 80) = v5;
  *(v4 + 32) = *(v2 + 24);
  v6 = *(v2 + 88);
  *v4 = vextq_s8(*(v2 + 184), *(v2 + 184), 8uLL);
  v7 = *(v2 + 104);
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 88) = *(v2 + 201);
  v8 = *(v2 + 112);
  if (v8)
  {
    v9 = *(v8 + 8);
    v10 = *(v8 + 16);
    *(v4 + 40) = vextq_s8(*(v8 + 24), *(v8 + 24), 8uLL);
    *(v4 + 56) = v9;
    *(v4 + 64) = v10;
    *(v4 + 72) = 1;
  }

  *(v4 + 89) = *(v2 + 200);
  v11 = *(v2 + 120);
  if (v11)
  {
    memset(v14, 0, 512);
    HDStatisticsNoiseLevel::unarchiveOverlapProcessor(v11, v14);
    v12 = [HDQuantitySampleOverlapProcessor alloc];
    memcpy(v13, v14, sizeof(v13));
    *(v4 + 80) = [(HDQuantitySampleOverlapProcessor *)v12 initWithState:v13];
  }
}

void HDStatisticsNoiseLevel::unarchiveOverlapProcessor(HDStatisticsNoiseLevel *this@<X0>, void *a2@<X8>)
{
  bzero(a2 + 3, 0x1408uLL);
  *a2 = *(this + 1);
  v5 = *(this + 3);
  a2[1] = *(this + 2);
  a2[2] = v5;
  *(a2 + 24) = *(this + 56) & ((*(this + 60) & 8) >> 3);
  if (v5 >= 128)
  {
    v6 = 128;
  }

  else
  {
    v6 = v5;
  }

  if (v5 >= 1)
  {
    v7 = 0;
    v8 = a2 + 8;
    do
    {
      statistics::QuantitySampleAttenuationEngineSample::QuantitySampleAttenuationEngineSample(v11, *(*(this + 4) + 8 * v7));
      v9 = v14;
      v10 = v12;
      *(v8 - 4) = v13;
      *(v8 - 3) = *&v11[8];
      *(v8 - 8) = v9;
      *v8 = v10;
      v8 += 5;
      PB::Base::~Base(v11);
      ++v7;
    }

    while (v6 != v7);
  }
}

void HDStatisticsNoiseLevel::archive(HDStatisticsNoiseLevel *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 3);
  *(a2 + 88) = *(this + 2);
  *(a2 + 184) = vextq_s8(*this, *this, 8uLL);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *(a2 + 160) = 0;
  *a2 = &unk_283BE6208;
  *(a2 + 8) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 112) = 0;
  v5 = *(this + 4);
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 104) = v4;
  LOBYTE(v5) = *(this + 88);
  *(a2 + 204) = 90273;
  *(a2 + 201) = v5;
  statistics::Statistics::makeMostRecentDatum(a2);
  v7[0] = &unk_283BEB0A8;
  v11 = 127;
  v8 = vextq_s8(*(this + 40), *(this + 40), 8uLL);
  v7[1] = *(this + 7);
  v7[2] = *(this + 8);
  v9 = 0;
  v10 = 0;
  statistics::RawQuantitySample::operator=(*(a2 + 112), v7);
  PB::Base::~Base(v7);
  v6 = *(this + 89);
  *(a2 + 204) |= 0x8000u;
  *(a2 + 200) = v6;
  statistics::Statistics::makeOverlapProcessorState(a2);
  HDStatisticsNoiseLevel::archiveOverlapProcessor(this);
  statistics::QuantityOverlapProcessorState::operator=(*(a2 + 120), v7);
  v7[0] = &unk_283BEC550;
  v12 = &v8.i64[1];
  std::vector<std::unique_ptr<statistics::Interval>>::__destroy_vector::operator()[abi:ne200100](&v12);
  PB::Base::~Base(v7);
}

void HDStatisticsNoiseLevel::archiveOverlapProcessor(HDStatisticsNoiseLevel *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(v1 + 80);
  if (v4)
  {
    [v4 exportCurrentState];
    v6 = *(&v9 + 1);
    v7 = v9;
    v5 = v10;
    v8 = BYTE8(v10);
  }

  else
  {
    bzero(&v9, 0x1420uLL);
    v8 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  *v3 = &unk_283BEC550;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 60) = 15;
  *(v3 + 8) = v7;
  *(v3 + 16) = v6;
  *(v3 + 24) = v5;
  *(v3 + 56) = v8;
  if (v5 >= 1)
  {
    operator new();
  }
}

void sub_228BEF284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v10 + 8))(v10);
  PB::Base::~Base(&a9);
  statistics::QuantityOverlapProcessorState::~QuantityOverlapProcessorState(v9);
  _Unwind_Resume(a1);
}

void sub_228BF1050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BF1CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__69(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228BF449C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_228BF58F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_228BF62D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BF64EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BF6878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228BF6D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDDataEntityPredicateForSyncProvenance(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  if (a2)
  {
    [v3 predicateWithProperty:@"data_provenances.sync_provenance" equalToValue:v4];
  }

  else
  {
    [v3 predicateWithProperty:@"data_provenances.sync_provenance" notEqualToValue:v4];
  }
  v5 = ;

  return v5;
}

id HDDataEntityPredicateForDataUUIDs(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
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

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = _HDSQLiteValueForUUID();
        [v2 addObject:{v9, v13}];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"uuid" values:v2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id HDDataEntityPredicateForObjectsFromAppleWatchSources(int a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"((%@ & %lld) != %d)", @"data_provenances.derived_flags", 1, a1 ^ 1u, 0];
  v2 = MEMORY[0x277D10B90];
  v7[0] = @"data_provenances.derived_flags";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 predicateWithSQL:v1 overProperties:v3 values:MEMORY[0x277CBEBF8]];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id HDDataEntityPredicateForSourceRevisionsSet(uint64_t a1, void *a2, int a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = v6;
  if ((a1 - 1) >= 2)
  {
    if (a1 != 7)
    {
      v23 = 0;
      goto LABEL_45;
    }

    a1 = 1;
  }

  v48 = v5;
  if (!a3)
  {
    v50 = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __HDDataEntityPredicateForSourceRevisionsSet_block_invoke;
    aBlock[3] = &__block_descriptor_40_e40_v32__0__NSMutableArray_8__NSString_16_24l;
    aBlock[4] = a1;
    v24 = _Block_copy(aBlock);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v49 = v5;
    v58 = [v49 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (!v58)
    {
      goto LABEL_42;
    }

    obja = *v60;
    v54 = *MEMORY[0x277CCCE00];
    v53 = *MEMORY[0x277CCCDF8];
    v52 = *MEMORY[0x277CCCDF0];
    v51 = *(MEMORY[0x277CCCDF0] + 16);
    while (1)
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v60 != obja)
        {
          objc_enumerationMutation(v49);
        }

        v26 = *(*(&v59 + 1) + 8 * i);
        v27 = [v26 version];
        v28 = v27;
        v29 = &stru_283BF39C8;
        if (v27)
        {
          v29 = v27;
        }

        v30 = v29;

        v31 = [v26 productType];
        v32 = v31;
        v33 = @"UnknownDevice";
        if (v31)
        {
          v33 = v31;
        }

        v34 = v33;

        if (v26)
        {
          [v26 operatingSystemVersion];
        }

        v35 = [MEMORY[0x277CBEB18] array];
        v36 = MEMORY[0x277CCABB0];
        v37 = [v26 sourceEntity];
        v38 = [v36 numberWithLongLong:{objc_msgSend(v37, "persistentID")}];
        v24[2](v24, v35, @"data_provenances.source_id", v38);

        if (([(__CFString *)v30 isEqualToString:v54]& 1) == 0)
        {
          v24[2](v24, v35, @"data_provenances.source_version", v30);
        }

        v39 = [v26 productType];
        v40 = [v39 isEqualToString:v53];

        if ((v40 & 1) == 0)
        {
          v24[2](v24, v35, @"data_provenances.origin_product_type", v34);
        }

        if ((HKNSOperatingSystemVersionsEqual() & 1) == 0)
        {
          v41 = [MEMORY[0x277CCABB0] numberWithInteger:0];
          v24[2](v24, v35, @"data_provenances.origin_major_version", v41);

          v42 = [MEMORY[0x277CCABB0] numberWithInteger:0];
          v24[2](v24, v35, @"data_provenances.origin_minor_version", v42);

          v43 = [MEMORY[0x277CCABB0] numberWithInteger:0];
          v24[2](v24, v35, @"data_provenances.origin_patch_version", v43);
        }

        if (a1 != 7)
        {
          if (a1 == 2)
          {
            v44 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v35];
            goto LABEL_39;
          }

          if (a1 != 1)
          {
            goto LABEL_40;
          }
        }

        v44 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v35];
LABEL_39:
        v45 = v44;
        [v50 addObject:v44];

LABEL_40:
      }

      v58 = [v49 countByEnumeratingWithState:&v59 objects:v68 count:16];
      if (!v58)
      {
LABEL_42:

        v7 = v50;
        v23 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v50];

        goto LABEL_43;
      }
    }
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v8)
  {
    v9 = v8;
    v57 = *v65;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v65 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v64 + 1) + 8 * j);
        v12 = MEMORY[0x277D10B18];
        v13 = MEMORY[0x277CCABB0];
        v14 = [v11 sourceEntity];
        v15 = [v13 numberWithLongLong:{objc_msgSend(v14, "persistentID")}];
        v16 = [v12 predicateWithProperty:@"data_provenances.source_id" value:v15 comparisonType:a1];
        v69[0] = v16;
        v17 = MEMORY[0x277D10B18];
        v18 = [v11 version];
        v19 = [v17 predicateWithProperty:@"data_provenances.source_version" value:v18 comparisonType:a1];
        v69[1] = v19;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];

        if (a1 == 7 || a1 == 1)
        {
          v21 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v20];
        }

        else
        {
          v21 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v20];
        }

        v22 = v21;
        [v7 addObject:v21];
      }

      v9 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v9);
  }

  v23 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v7];
LABEL_43:
  v5 = v48;
LABEL_45:

  v46 = *MEMORY[0x277D85DE8];

  return v23;
}

void __HDDataEntityPredicateForSourceRevisionsSet_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x277D10B18];
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v6 predicateWithProperty:a3 value:a4 comparisonType:v7];
  [v8 addObject:v9];
}

id HDDataEntityPredicateForOriginBuildInRange(void *a1, void *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    v5 = objc_opt_new();
    v6 = [MEMORY[0x277D10B18] predicateWithProperty:@"data_provenances.origin_build" notEqualToValue:@"UnknownBuild"];
    [v5 addObject:v6];

    v7 = MEMORY[0x277D10A50];
    if (v3)
    {
      v8 = MEMORY[0x277D10B90];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@, ?) >= 0", *MEMORY[0x277D10A50], @"data_provenances.origin_build"];
      v26[0] = @"data_provenances.origin_build";
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      v25 = v3;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      v12 = [v8 predicateWithSQL:v9 overProperties:v10 values:v11];
      [v5 addObject:v12];

      v7 = MEMORY[0x277D10A50];
    }

    if (v4)
    {
      v13 = MEMORY[0x277D10B90];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@, ?) < 0", *v7, @"data_provenances.origin_build"];
      v24 = @"data_provenances.origin_build";
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      v23 = v4;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      v17 = [v13 predicateWithSQL:v14 overProperties:v15 values:v16];
      [v5 addObject:v17];
    }

    v18 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v5];
  }

  else
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"HDSQLitePredicate * _Nonnull HDDataEntityPredicateForOriginBuildInRange(NSString * _Nullable __strong, NSString * _Nullable __strong)"}];
    [v21 handleFailureInFunction:v22 file:@"HDDataEntity.m" lineNumber:2312 description:@"Must specify at least one of minBuild and maxBuild."];

    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

__CFString *HDDataEntityPredicateForOriginBuild(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = 0;
  if (a1 > 4)
  {
    if ((a1 - 7) < 2)
    {
      goto LABEL_17;
    }

    if (a1 == 5)
    {
      v4 = @"> 0";
    }

    else if (a1 == 6)
    {
      v4 = @">= 0";
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      goto LABEL_17;
    }

    if (a1 == 1)
    {
      v4 = @"== 0";
    }
  }

  else if (a1 == 2)
  {
    v4 = @"!= 0";
  }

  else if (a1 == 3)
  {
    v4 = @"< 0";
  }

  else
  {
    v4 = @"<= 0";
  }

  v5 = MEMORY[0x277D10B90];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@, ?) %@", *MEMORY[0x277D10A50], @"data_provenances.origin_build", v4];
  v12[0] = @"data_provenances.origin_build";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11 = v3;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v4 = [v5 predicateWithSQL:v6 overProperties:v7 values:v8];

LABEL_17:
  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

id HDDataEntityPredicateForDeviceIdentifierSet(uint64_t a1, void *a2)
{
  v3 = a2;
  switch(a1)
  {
    case 7:
      goto LABEL_4;
    case 2:
      v4 = [MEMORY[0x277D10B28] doesNotContainPredicateWithProperty:@"data_provenances.device_id" values:v3];
      goto LABEL_6;
    case 1:
LABEL_4:
      v4 = [MEMORY[0x277D10B28] containsPredicateWithProperty:@"data_provenances.device_id" values:v3];
LABEL_6:
      v5 = v4;
      goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

id HDDataEntityPredicateForCreationDate(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = _HDSQLiteValueForDate();
  v4 = [v2 predicateWithProperty:@"creation_date" value:v3 comparisonType:a1];

  return v4;
}

id HDDataEntityPredicateForSyncIdentity(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithLong:a2];
  v4 = [MEMORY[0x277D10B18] predicateWithProperty:@"data_provenances.sync_identity" value:v3 comparisonType:a1];

  return v4;
}

uint64_t HDCodableTinkerOptInRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___HDCodableTinkerOptInRequest__guardianDisplayName;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___HDCodableTinkerOptInRequest__requestIdentifier;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_228BFD3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228BFED40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 216), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableStateSyncCollectionReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(HDCodableObjectCollection);
        [a1 addDeletedSampleCollections:v13];
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(HDCodableObjectCollection);
        [a1 addSampleCollections:v13];
      }

      v16[0] = 0;
      v16[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableObjectCollectionReadFrom(v13, a2))
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

void sub_228C01788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__71(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableCompanionUserNotificationConfigurationReadFrom(uint64_t a1, void *a2)
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
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableSummarySharingEntryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v62) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v62 & 0x7F) << v5;
      if ((v62 & 0x80) == 0)
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

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = 144;
        goto LABEL_71;
      case 2u:
        v13 = PBReaderReadString();
        v14 = 104;
        goto LABEL_71;
      case 3u:
        v22 = PBReaderReadString();
        if (v22)
        {
          [a1 addAllContactIdentifiers:v22];
        }

        goto LABEL_81;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 64;
        goto LABEL_71;
      case 5u:
        v13 = PBReaderReadString();
        v14 = 80;
        goto LABEL_71;
      case 6u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 152) |= 0x40u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v62 & 0x7F) << v25;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_100;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v27;
        }

LABEL_100:
        v54 = 132;
        goto LABEL_113;
      case 7u:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 152) |= 8u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v62 & 0x7F) << v33;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v11 = v34++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_104;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v35;
        }

LABEL_104:
        v54 = 56;
        goto LABEL_113;
      case 8u:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 152) |= 0x20u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v42 = [a2 position] + 1;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
          {
            v44 = [a2 data];
            [v44 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v41 |= (v62 & 0x7F) << v39;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v11 = v40++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_108;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v41;
        }

LABEL_108:
        v54 = 128;
        goto LABEL_113;
      case 9u:
        v22 = objc_alloc_init(HDCodableSharingSetupMetadata);
        objc_storeStrong((a1 + 120), v22);
        v62 = 0;
        v63 = 0;
        if (!PBReaderPlaceMark() || !HDCodableSharingSetupMetadataReadFrom(v22, a2))
        {
          goto LABEL_123;
        }

        goto LABEL_80;
      case 0xAu:
        *(a1 + 152) |= 4u;
        v62 = 0;
        v46 = [a2 position] + 8;
        if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 8, v47 <= objc_msgSend(a2, "length")))
        {
          v59 = [a2 data];
          [v59 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v56 = v62;
        v57 = 24;
        goto LABEL_120;
      case 0xBu:
        v22 = PBReaderReadString();
        if (v22)
        {
          [a1 addAuthorizationCategories:v22];
        }

        goto LABEL_81;
      case 0xCu:
        *(a1 + 152) |= 1u;
        v62 = 0;
        v31 = [a2 position] + 8;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 8, v32 <= objc_msgSend(a2, "length")))
        {
          v58 = [a2 data];
          [v58 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v56 = v62;
        v57 = 8;
        goto LABEL_120;
      case 0xDu:
        *(a1 + 152) |= 2u;
        v62 = 0;
        v23 = [a2 position] + 8;
        if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
        {
          v55 = [a2 data];
          [v55 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v56 = v62;
        v57 = 16;
LABEL_120:
        *(a1 + v57) = v56;
        goto LABEL_121;
      case 0xEu:
        v13 = PBReaderReadString();
        v14 = 72;
        goto LABEL_71;
      case 0xFu:
        v13 = PBReaderReadString();
        v14 = 48;
        goto LABEL_71;
      case 0x10u:
        v13 = PBReaderReadData();
        v14 = 96;
LABEL_71:
        v45 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_121;
      case 0x11u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 152) |= 0x10u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v62 & 0x7F) << v48;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_112;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v50;
        }

LABEL_112:
        v54 = 88;
        goto LABEL_113;
      case 0x28u:
        v22 = objc_alloc_init(HDCodableSharingAuthorization);
        [a1 addSharingAuthorizations:v22];
        v62 = 0;
        v63 = 0;
        if (PBReaderPlaceMark() && HDCodableSharingAuthorizationReadFrom(v22, a2))
        {
LABEL_80:
          PBReaderRecallMark();
LABEL_81:

LABEL_121:
          v60 = [a2 position];
          if (v60 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_123:

        return 0;
      case 0x29u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 152) |= 0x80u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v62 & 0x7F) << v15;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_96;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_96:
        v54 = 136;
LABEL_113:
        *(a1 + v54) = v21;
        goto LABEL_121;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_121;
    }
  }
}

uint64_t HDCodableWorkoutEventReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v39[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39[0] & 0x7F) << v5;
        if ((v39[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 48) |= 4u;
        while (1)
        {
          LOBYTE(v39[0]) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v39[0] & 0x7F) << v18;
          if ((v39[0] & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_55;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_55:
        v32 = 24;
LABEL_60:
        *(a1 + v32) = v24;
        goto LABEL_66;
      }

      if (v13 != 4)
      {
        if (v13 == 5)
        {
          *(a1 + 48) |= 2u;
          v39[0] = 0;
          v14 = [a2 position] + 8;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v39 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v34 = v39[0];
          v35 = 16;
LABEL_65:
          *(a1 + v35) = v34;
          goto LABEL_66;
        }

LABEL_50:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_66;
      }

      v25 = objc_alloc_init(HDCodableMetadataDictionary);
      objc_storeStrong((a1 + 40), v25);
      v39[0] = 0;
      v39[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableMetadataDictionaryReadFrom(v25, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_66:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v26 = 0;
      v27 = 0;
      v28 = 0;
      *(a1 + 48) |= 8u;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v29 = [a2 position] + 1;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
        {
          v31 = [a2 data];
          [v31 getBytes:v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v28 |= (v39[0] & 0x7F) << v26;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v26 += 7;
        v11 = v27++ >= 9;
        if (v11)
        {
          v24 = 0;
          goto LABEL_59;
        }
      }

      if ([a2 hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v28;
      }

LABEL_59:
      v32 = 32;
      goto LABEL_60;
    }

    if (v13 == 2)
    {
      *(a1 + 48) |= 1u;
      v39[0] = 0;
      v16 = [a2 position] + 8;
      if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
      {
        v36 = [a2 data];
        [v36 getBytes:v39 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v34 = v39[0];
      v35 = 8;
      goto LABEL_65;
    }

    goto LABEL_50;
  }

  return [a2 hasError] ^ 1;
}

id HDSummarySharingEntryPredicateForTypeStatusAndDirection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D10B18];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v7 = [v5 predicateWithProperty:@"type" equalToValue:v6];

  v8 = MEMORY[0x277D10B18];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v10 = [v8 predicateWithProperty:@"status" equalToValue:v9];

  v11 = MEMORY[0x277D10B18];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v13 = [v11 predicateWithProperty:@"direction" equalToValue:v12];

  v18[0] = v7;
  v18[1] = v10;
  v18[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v15 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id HDSummarySharingEntryPredicateForTypeAndStatus(uint64_t a1, uint64_t a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v5 = [v3 predicateWithProperty:@"type" equalToValue:v4];

  v6 = MEMORY[0x277D10B18];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v8 = [v6 predicateWithProperty:@"status" equalToValue:v7];

  v13[0] = v5;
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id HDSummarySharingEntryPredicateForIdentifierTypeAndDirection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D10B18] predicateWithProperty:@"primary_contact_identifier" equalToValue:a1];
  v6 = MEMORY[0x277D10B18];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v8 = [v6 predicateWithProperty:@"type" equalToValue:v7];

  v9 = MEMORY[0x277D10B18];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v11 = [v9 predicateWithProperty:@"direction" equalToValue:v10];

  v16[0] = v5;
  v16[1] = v8;
  v16[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v13 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id HDSummarySharingEntryPredicateForCloudKitIdentifierTypeStatusAndDirection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277D10B18] predicateWithProperty:@"cloudkit_identifier" equalToValue:a1];
  v8 = MEMORY[0x277D10B18];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v10 = [v8 predicateWithProperty:@"type" equalToValue:v9];

  v11 = MEMORY[0x277D10B18];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v13 = [v11 predicateWithProperty:@"status" equalToValue:v12];

  v14 = MEMORY[0x277D10B18];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v16 = [v14 predicateWithProperty:@"direction" equalToValue:v15];

  v21[0] = v7;
  v21[1] = v10;
  v21[2] = v13;
  v21[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  v18 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

id HDUserDomainConceptEducationContentEntityPredicateForEducationContent(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = [(HDSQLiteSchemaEntity *)HDUserDomainConceptEducationContentEntity disambiguatedSQLForProperty:@"deleted"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  v5 = [v2 predicateWithProperty:v3 equalToValue:v4];

  return v5;
}

void sub_228C13860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__72(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C13BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_228C1437C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C153B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_228C15D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 224), 8);
  _Block_object_dispose((v37 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_228C168B8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_228C1715C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__73(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C17B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C1ABE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 120));
  _Unwind_Resume(a1);
}

void sub_228C1AF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C1B288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t __Block_byref_object_copy__74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C1C34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__75(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C1D7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228C1DC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228C2040C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__76(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C20E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C212EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C22AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__77(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C22D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C23E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C2A1B8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  if (a2 == 1)
  {
    v41 = objc_begin_catch(a1);
    _HKInitializeLogging();
    v42 = *MEMORY[0x277CCC2B8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B8], OS_LOG_TYPE_ERROR))
    {
      *(v38 - 256) = 138412290;
      *(v38 - 252) = v41;
      _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "Exception creating demo workout: %@", (v38 - 256), 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x228C29EFCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDNotificationInstructionPredicateForIsValid(int a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:a1 ^ 1u];
  v3 = [v1 predicateWithProperty:@"is_invalid" equalToValue:v2];

  return v3;
}

void sub_228C32F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C35680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__79(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C35B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C36AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228C37DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C38208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C39E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_228C3A250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

id HDOnboardingCompletionEntityAllProperties()
{
  v6[7] = *MEMORY[0x277D85DE8];
  v6[0] = @"uuid";
  v6[1] = @"feature_identifier";
  v6[2] = @"version";
  v6[3] = @"completion_date";
  v6[4] = @"country_code";
  v6[5] = @"country_code_provenance";
  v6[6] = @"mod_date";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:7];
  v5[0] = @"deleted";
  v5[1] = @"sync_provenance";
  v5[2] = @"sync_identity";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v2 = [v0 arrayByAddingObjectsFromArray:v1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id _OnboardingCompletionFromRow(uint64_t a1, uint64_t a2)
{
  if (HDSQLiteColumnWithNameAsBoolean())
  {
    v3 = 0;
  }

  else
  {
    v4 = HDSQLiteColumnWithNameAsUUID();
    v5 = HDSQLiteColumnWithNameAsString();
    v6 = HDSQLiteColumnWithNameAsInt64();
    v7 = HDSQLiteColumnWithNameAsDate();
    v8 = HDSQLiteColumnWithNameAsString();
    v9 = HDSQLiteColumnWithNameAsInt64();
    if (v4 && v5 && v7)
    {
      v3 = [objc_alloc(MEMORY[0x277CCD740]) initWithFeatureIdentifier:v5 version:v6 completionDate:v7 countryCode:v8 countryCodeProvenance:v9 UUID:v4];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a2 code:100 format:{@"Unexpectedly found missing values: UUID(%@) featureIdentifier(%@) completionDate(%@)", v4, v5, v7}];
      v3 = 0;
    }
  }

  return v3;
}

void sub_228C3C5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C3CA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C3F12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__81(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDWorkoutEntityOrderingTermsForCondenserDate()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"condenser_date" entityClass:objc_opt_class() ascending:1];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

void sub_228C3FCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C40A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C418B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

id HDWorkoutEntityPredicateForDuration(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v4 = [v2 predicateWithProperty:@"activities.duration" value:v3 comparisonType:a1];

  return v4;
}

id HDWorkoutEntityPredicateForTotalDistance(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = a2;
  v5 = [(HDDataEntity *)HDWorkoutEntity disambiguatedSQLForProperty:@"total_distance"];
  v6 = MEMORY[0x277CCABB0];
  v7 = _HKWorkoutCanonicalDistanceUnit();
  [v4 doubleValueForUnit:v7];
  v9 = v8;

  v10 = [v6 numberWithDouble:v9];
  v11 = [v3 predicateWithProperty:v5 value:v10 comparisonType:a1];

  return v11;
}

id HDWorkoutEntityPredicateForTotalEnergyBurned(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCD830];
  v4 = *MEMORY[0x277CCC918];
  v5 = a2;
  v6 = [v3 quantityTypeForIdentifier:v4];
  v7 = [v6 canonicalUnit];

  v8 = MEMORY[0x277D10B18];
  v9 = MEMORY[0x277CCABB0];
  [v5 doubleValueForUnit:v7];
  v11 = v10;

  v12 = [v9 numberWithDouble:v11];
  v13 = [v8 predicateWithProperty:@"active_energy.quantity" value:v12 comparisonType:a1];

  return v13;
}

id HDWorkoutEntityPredicateForTotalSwimmingStrokeCount(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCD830];
  v4 = *MEMORY[0x277CCCC78];
  v5 = a2;
  v6 = [v3 quantityTypeForIdentifier:v4];
  v7 = [v6 canonicalUnit];

  v8 = MEMORY[0x277D10B18];
  v9 = MEMORY[0x277CCABB0];
  [v5 doubleValueForUnit:v7];
  v11 = v10;

  v12 = [v9 numberWithDouble:v11];
  v13 = [v8 predicateWithProperty:@"swimming_strokes.quantity" value:v12 comparisonType:a1];

  return v13;
}

id HDWorkoutEntityPredicateForTotalFlightsClimbed(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCD830];
  v4 = *MEMORY[0x277CCCB70];
  v5 = a2;
  v6 = [v3 quantityTypeForIdentifier:v4];
  v7 = [v6 canonicalUnit];

  v8 = MEMORY[0x277D10B18];
  v9 = MEMORY[0x277CCABB0];
  [v5 doubleValueForUnit:v7];
  v11 = v10;

  v12 = [v9 numberWithDouble:v11];
  v13 = [v8 predicateWithProperty:@"flights_climbed.quantity" value:v12 comparisonType:a1];

  return v13;
}

id HDWorkoutEntityPredicateForWorkoutGoalType(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D10B18];
  v5 = [(HDDataEntity *)HDWorkoutEntity disambiguatedSQLForProperty:@"goal_type"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v7 = [v4 predicateWithProperty:v5 value:v6 comparisonType:a1];

  return v7;
}

id HDWorkoutEntityPredicateForWorkoutGoal(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = _HKWorkoutCanonicalUnitForGoalType();
    [v5 doubleValueForUnit:v7];
    v8 = [v6 numberWithDouble:?];

    v9 = MEMORY[0x277D10B18];
    v10 = [(HDDataEntity *)HDWorkoutEntity disambiguatedSQLForProperty:@"goal"];
    v11 = [v9 predicateWithProperty:v10 value:v8 comparisonType:a1];

    v12 = HDWorkoutEntityPredicateForWorkoutGoalType(1, a2);
  }

  else
  {
    v13 = MEMORY[0x277D10B60];
    v14 = [(HDDataEntity *)HDWorkoutEntity disambiguatedSQLForProperty:@"goal"];
    if (a1 == 1)
    {
      [v13 isNullPredicateWithProperty:v14];
    }

    else
    {
      [v13 isNotNullPredicateWithProperty:v14];
    }
    v11 = ;

    v12 = 0;
    v8 = 0;
  }

  v15 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v11 otherPredicate:v12];

  return v15;
}

id HDWorkoutEntityPredicateForWorkoutCondenserVersionLessThan(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D10B20];
  v3 = [MEMORY[0x277D10B60] isNullPredicateWithProperty:@"condenser_version"];
  v11[0] = v3;
  v4 = MEMORY[0x277D10B18];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v6 = [v4 predicateWithProperty:@"condenser_version" lessThanValue:v5];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v8 = [v2 predicateMatchingAnyPredicates:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

id HDWorkoutEntityPredicateForWorkoutCondenserVersionEqualTo(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v3 = [v1 predicateWithProperty:@"condenser_version" equalToValue:v2];

  return v3;
}

uint64_t HDCodableWorkoutSessionSyncTransactionReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(HDCodableWorkoutSessionGlobalState);
          objc_storeStrong((a1 + 24), v14);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !HDCodableWorkoutSessionGlobalStateReadFrom(v14, a2))
          {
LABEL_36:

            return 0;
          }

LABEL_32:
          PBReaderRecallMark();
LABEL_33:

          goto LABEL_34;
        }

        if (v13 == 4)
        {
          v15 = PBReaderReadData();
          v16 = 8;
          goto LABEL_29;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadData();
          v16 = 32;
LABEL_29:
          v14 = *(a1 + v16);
          *(a1 + v16) = v15;
          goto LABEL_33;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(HDCodableWorkoutSessionConfiguration);
          objc_storeStrong((a1 + 16), v14);
          v19 = 0;
          v20 = 0;
          if (!PBReaderPlaceMark() || !HDCodableWorkoutSessionConfigurationReadFrom(v14, a2))
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228C441F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228C4766C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HDCodableTypedObjectAssociationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v44[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44[0] & 0x7F) << v5;
        if ((v44[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadData();
          v15 = 32;
          goto LABEL_64;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 40;
LABEL_64:
          v39 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_80;
        }

        goto LABEL_65;
      }

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 68) |= 4u;
          while (1)
          {
            LOBYTE(v44[0]) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v44[0] & 0x7F) << v18;
            if ((v44[0] & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_72;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_72:
          v40 = 24;
LABEL_77:
          *(a1 + v40) = v24;
          goto LABEL_80;
        }

LABEL_65:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_80;
      }

      v38 = objc_alloc_init(HDCodableSyncIdentity);
      objc_storeStrong((a1 + 56), v38);
      v44[0] = 0;
      v44[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v38, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_80:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v14 = PBReaderReadData();
        v15 = 48;
        goto LABEL_64;
      }

      if (v13 == 8)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 68) |= 1u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v44[0] & 0x7F) << v25;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_76;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v27;
        }

LABEL_76:
        v40 = 8;
        goto LABEL_77;
      }
    }

    else
    {
      if (v13 == 5)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 68) |= 8u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v44[0] & 0x7F) << v31;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            LOBYTE(v37) = 0;
            goto LABEL_68;
          }
        }

        v37 = (v33 != 0) & ~[a2 hasError];
LABEL_68:
        *(a1 + 64) = v37;
        goto LABEL_80;
      }

      if (v13 == 6)
      {
        *(a1 + 68) |= 2u;
        v44[0] = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v41 = [a2 data];
          [v41 getBytes:v44 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v44[0];
        goto LABEL_80;
      }
    }

    goto LABEL_65;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableBinarySampleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableSample);
        objc_storeStrong((a1 + 16), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v13 = *(a1 + 8);
    *(a1 + 8) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

void sub_228C51AE4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__82(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDPredicateForMetadataValue(void *a1, uint64_t a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (!v3 && a2 == 2)
  {
    v4 = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:@"numerical_value"];
    v5 = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:@"date_value"];
    v6 = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:@"string_value"];
    v7 = [MEMORY[0x277D10B60] isNotNullPredicateWithProperty:@"data_value"];
    v8 = MEMORY[0x277D10B20];
    v16[0] = v4;
    v16[1] = v5;
    v16[2] = v6;
    v16[3] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];
    v10 = [v8 predicateMatchingAnyPredicates:v9];

    if (v10)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x277D10B18];
    v12 = _HDSQLiteValueForString();
    v13 = @"string_value";
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x277D10B18];
    v12 = _HDSQLiteValueForNumber();
    v13 = @"numerical_value";
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x277D10B18];
    v12 = _HDSQLiteValueForDate();
    v13 = @"date_value";
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = MEMORY[0x277D10B18];
      v12 = _HDSQLiteValueForData();
      v13 = @"data_value";
LABEL_11:
      v10 = [v11 predicateWithProperty:v13 value:v12 comparisonType:a2];

      if (v10)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    v10 = [MEMORY[0x277D10B70] falsePredicate];
    goto LABEL_13;
  }

  v10 = _HDMetadataQuantityComparisonPredicate(a2, v3);
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

id _HDMetadataQuantityComparisonPredicate(uint64_t a1, void *a2)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v28 = 0;
        v4 = 0;
        v5 = 1;
        v6 = 1;
        v7 = @"=  0";
        goto LABEL_17;
      case 2:
        v5 = 0;
        v6 = 0;
        v4 = @"=  1";
        v28 = @"=  2";
        goto LABEL_14;
      case 3:
        v28 = 0;
        v4 = 0;
        v5 = 1;
        v6 = 1;
LABEL_14:
        v7 = @"= -1";
        goto LABEL_17;
    }

LABEL_12:
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"HDSQLitePredicate * _Nonnull _HDMetadataQuantityComparisonPredicate(HDSQLiteComparisonType, HKQuantity * _Nonnull __strong)"}];
    [v8 handleFailureInFunction:v9 file:@"HDMetadataValueEntity.m" lineNumber:668 description:@"Unsupported comparison type for HKQuantity metadata values!"];

    v7 = 0;
    v28 = 0;
    v4 = 0;
    v5 = 1;
    v6 = 1;
    goto LABEL_17;
  }

  switch(a1)
  {
    case 4:
      v28 = 0;
      v6 = 0;
      v4 = @"=  0";
      v5 = 1;
      goto LABEL_14;
    case 5:
      v28 = 0;
      v4 = 0;
      v5 = 1;
      v6 = 1;
      break;
    case 6:
      v28 = 0;
      v6 = 0;
      v4 = @"=  0";
      v5 = 1;
      break;
    default:
      goto LABEL_12;
  }

  v7 = @"=  1";
LABEL_17:
  v10 = MEMORY[0x277CCABB0];
  v11 = [v3 _unit];
  [v3 doubleValueForUnit:v11];
  v12 = [v10 numberWithDouble:?];
  v13 = _HDSQLiteValueForNumber();

  v14 = [v3 _unit];
  v15 = [v14 unitString];
  v16 = _HDSQLiteValueForString();

  v17 = MEMORY[0x277D10B90];
  v18 = *MEMORY[0x277D10A58];
  if (v5)
  {
    if (v6)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@, %@, ?, ?) %@", v18, @"numerical_value", @"string_value", v7];
      v30[0] = @"numerical_value";
      v30[1] = @"string_value";
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
      v29[0] = v13;
      v29[1] = v16;
      v21 = MEMORY[0x277CBEA60];
      v22 = v29;
      v23 = 2;
    }

    else
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@, %@, ?, ?) %@ OR %@(%@, %@, ?, ?) %@", v18, @"numerical_value", @"string_value", v7, v18, @"numerical_value", @"string_value", v4];
      v32[0] = @"numerical_value";
      v32[1] = @"string_value";
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
      v31[0] = v13;
      v31[1] = v16;
      v31[2] = v13;
      v31[3] = v16;
      v21 = MEMORY[0x277CBEA60];
      v22 = v31;
      v23 = 4;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%@, %@, ?, ?) %@ OR %@(%@, %@, ?, ?) %@ OR %@(%@, %@, ?, ?) %@", v18, @"numerical_value", @"string_value", v7, v18, @"numerical_value", @"string_value", v4, v18, @"numerical_value", @"string_value", v28];
    v34[0] = @"numerical_value";
    v34[1] = @"string_value";
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v33[0] = v13;
    v33[1] = v16;
    v33[2] = v13;
    v33[3] = v16;
    v33[4] = v13;
    v33[5] = v16;
    v21 = MEMORY[0x277CBEA60];
    v22 = v33;
    v23 = 6;
  }

  v24 = [v21 arrayWithObjects:v22 count:v23];
  v25 = [v17 predicateWithSQL:v19 overProperties:v20 values:v24];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __Block_byref_object_copy__83(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C576E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228C593C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C5997C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C5A024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C5AC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C5AD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C5B750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__85(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C5BF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, id);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_228C5CA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HDSeriesSamplePredicateForSamplesToAutoFreezeExcludingSamples(void *a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277D10B18] predicateWithProperty:@"frozen" equalToValue:&unk_283CB20A0];
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:+[HDSeriesSampleEntity _insertionEra]()];
  v5 = [v3 predicateWithProperty:@"insertion_era" notEqualToValue:v4];

  v6 = objc_alloc(MEMORY[0x277CBEB18]);
  v14[0] = v2;
  v14[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v8 = [v6 initWithArray:v7];

  if ([v1 count])
  {
    v9 = [v1 hk_map:&__block_literal_global_496];
    v10 = [MEMORY[0x277D10B28] doesNotContainPredicateWithProperty:@"uuid" values:v9];
    [v8 addObject:v10];
  }

  v11 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v8];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void sub_228C5CC70(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

id __HDSeriesSamplePredicateForSamplesToAutoFreezeExcludingSamples_block_invoke()
{
  v0 = _HDSQLiteValueForUUID();

  return v0;
}

id HDSeriesSamplePredicateForSeriesIdentifier(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v3 = [v1 predicateWithProperty:@"hfd_key" equalToValue:v2];

  return v3;
}

void __cxx_global_array_dtor_0()
{
  v0 = &off_27D867240;
  v1 = -144;
  do
  {

    v0 -= 3;
    v1 += 24;
  }

  while (v1);
}

void _assertMetadataIsSame(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 firstObject];
  v3 = [v2 metadata];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v1;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * v8);
        v11 = [v10 metadata];
        v12 = v11;
        if (v11 == v9)
        {
          goto LABEL_12;
        }

        if (!v9)
        {

LABEL_11:
          v12 = [MEMORY[0x277CCA890] currentHandler];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _assertMetadataIsSame(NSArray<HDQuantityDatum *> * _Nonnull __strong)"];
          [v12 handleFailureInFunction:v15 file:@"HDQuantityDatum.m" lineNumber:262 description:@"Cannot merge an array of datums with different metadata"];

LABEL_12:
          goto LABEL_13;
        }

        v13 = [v10 metadata];
        v14 = [v13 isEqual:v9];

        if ((v14 & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_13:
        v3 = [v10 metadata];

        ++v8;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

id _HDCombineQuantitySensorData(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v5 count])
  {
    _assertMetadataIsSame(v5);
    v8 = [v5 firstObject];
    v9 = [v8 dateInterval];
    v10 = [v9 startDate];

    if (v10)
    {
      v11 = [v5 lastObject];
      v12 = [v11 dateInterval];
      v13 = [v12 endDate];

      if (v13)
      {
        v14 = _HDCombinedQuantityForData(v5, v6);
        v15 = [v5 firstObject];
        v16 = [v15 metadata];

        if (v16)
        {
          if (v7)
          {
            v17 = [v16 hk_dictionaryByAddingEntriesFromDictionary:v7];

            v16 = v17;
          }
        }

        else
        {
          v16 = v7;
        }

        v18 = [MEMORY[0x277CCD800] _quantitySamplesEnforcingDurationWithType:v6 quantity:v14 startDate:v10 endDate:v13 device:0 metadata:v16];
      }

      else
      {
        _HKInitializeLogging();
        v20 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
        {
          v25 = v20;
          v26 = [v5 lastObject];
          v27 = 138412290;
          v28 = v26;
          _os_log_fault_impl(&dword_228986000, v25, OS_LOG_TYPE_FAULT, "Sensor datum missing end date: %@", &v27, 0xCu);
        }

        v18 = 0;
      }
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
      {
        v23 = v19;
        v24 = [v5 firstObject];
        v27 = 138412290;
        v28 = v24;
        _os_log_fault_impl(&dword_228986000, v23, OS_LOG_TYPE_FAULT, "Sensor datum missing start date: %@", &v27, 0xCu);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v18;
}

id _HDCombinedQuantityForData(void *a1, void *a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 canonicalUnit];
  v6 = [v4 aggregationStyle];
  if ((v6 - 2) < 2)
  {
    v49 = v4;
    v52 = [HDStatisticsCollectionCalculator calculatorForQuantityType:v4 intervalCollection:0 options:2 mergeStrategy:1];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v48 = v3;
    obj = v3;
    v15 = [obj countByEnumeratingWithState:&v54 objects:v70 count:16];
    if (v15)
    {
      v16 = v15;
      v51 = *v55;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v55 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v54 + 1) + 8 * i);
          v19 = [v18 quantity];
          v20 = v5;
          [v19 doubleValueForUnit:v5];
          v22 = v21;
          v23 = [v18 dateInterval];
          v24 = [v23 startDate];
          [v24 timeIntervalSinceReferenceDate];
          v26 = v25;
          v27 = [v18 dateInterval];
          v28 = [v27 endDate];
          [v28 timeIntervalSinceReferenceDate];
          v53 = 0;
          v30 = [v52 addSampleValue:0 startTime:&v53 endTime:v22 sourceID:v26 error:v29];
          v31 = v53;

          if ((v30 & 1) == 0)
          {
            _HKInitializeLogging();
            v32 = *MEMORY[0x277CCC298];
            if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v67 = v49;
              v68 = 2114;
              v69 = v31;
              _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "Failed to add datum to calculator during merge calculation for type %{public}@: %{public}@", buf, 0x16u);
            }
          }

          v5 = v20;
        }

        v16 = [obj countByEnumeratingWithState:&v54 objects:v70 count:16];
      }

      while (v16);
    }

    v33 = [v52 currentStatistics];
    a2 = [v33 averageQuantity];

    v3 = v48;
    v4 = v49;
  }

  else
  {
    if (v6 == 1)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v34 = v3;
      v35 = [v34 countByEnumeratingWithState:&v58 objects:v71 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v59;
        v38 = 0.0;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v59 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v40 = [*(*(&v58 + 1) + 8 * j) quantity];
            [v40 doubleValueForUnit:v5];
            v38 = v38 + v41;
          }

          v36 = [v34 countByEnumeratingWithState:&v58 objects:v71 count:16];
        }

        while (v36);
      }

      else
      {
        v38 = 0.0;
      }

      v45 = MEMORY[0x277CCD7E8];
      v44 = v38 / [v34 count];
      v42 = v45;
      v43 = v5;
    }

    else
    {
      if (v6)
      {
        goto LABEL_36;
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v7 = v3;
      v8 = [v7 countByEnumeratingWithState:&v62 objects:v72 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v63;
        v11 = 0.0;
        do
        {
          for (k = 0; k != v9; ++k)
          {
            if (*v63 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v13 = [*(*(&v62 + 1) + 8 * k) quantity];
            [v13 doubleValueForUnit:v5];
            v11 = v11 + v14;
          }

          v9 = [v7 countByEnumeratingWithState:&v62 objects:v72 count:16];
        }

        while (v9);
      }

      else
      {
        v11 = 0.0;
      }

      v42 = MEMORY[0x277CCD7E8];
      v43 = v5;
      v44 = v11;
    }

    a2 = [v42 quantityWithUnit:v43 doubleValue:v44];
  }

LABEL_36:

  v46 = *MEMORY[0x277D85DE8];

  return a2;
}

HDQuantityDatum *HDMergedQuantitySensorData(void *a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v3 count])
  {
    _assertMetadataIsSame(v3);
    v5 = [v3 firstObject];
    v6 = [v5 dateInterval];
    v7 = [v6 startDate];

    if (v7)
    {
      v8 = [v3 lastObject];
      v9 = [v8 dateInterval];
      v10 = [v9 endDate];

      if (v10)
      {
        v41 = v10;
        v42 = v7;
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v11 = v3;
        v12 = [v11 countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v46;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v46 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = *(*(&v45 + 1) + 8 * i);
              v18 = [v17 saveCompletion];

              if (v18)
              {
                if (!v14)
                {
                  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
                }

                v19 = [v17 saveCompletion];
                v20 = _Block_copy(v19);
                [v14 addObject:v20];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v45 objects:v49 count:16];
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        v40 = v4;
        v24 = _HDCombinedQuantityForData(v11, v4);
        v39 = [HDQuantityDatum alloc];
        v38 = [v11 lastObject];
        v25 = [v38 datumIdentifier];
        v26 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v41];
        v27 = [v11 lastObject];
        v28 = [v27 metadata];
        v29 = [v11 lastObject];
        v30 = [v29 resumeContextProvider];
        v21 = [(HDQuantityDatum *)v39 initWithIdentifier:v25 dateInterval:v26 quantity:v24 metadata:v28 resumeContextProvider:v30];

        if (v14)
        {
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __HDMergedQuantitySensorData_block_invoke;
          aBlock[3] = &unk_2786130B0;
          v44 = v14;
          v31 = _Block_copy(aBlock);
          [(HDQuantityDatum *)v21 setSaveCompletion:v31];
        }

        v4 = v40;
        v10 = v41;
        v7 = v42;
      }

      else
      {
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
        {
          v36 = v23;
          v37 = [v3 lastObject];
          *buf = 138412290;
          v51 = v37;
          _os_log_fault_impl(&dword_228986000, v36, OS_LOG_TYPE_FAULT, "Sensor datum missing end date: %@", buf, 0xCu);
        }

        v21 = 0;
      }
    }

    else
    {
      _HKInitializeLogging();
      v22 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
      {
        v34 = v22;
        v35 = [v3 firstObject];
        *buf = 138412290;
        v51 = v35;
        _os_log_fault_impl(&dword_228986000, v34, OS_LOG_TYPE_FAULT, "Sensor datum missing start date: %@", buf, 0xCu);
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v21;
}

void __HDMergedQuantitySensorData_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9) + 16))(*(*(&v11 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

id HDAggregateQuantitySensorData(void *a1, void *a2, void *a3, void *a4, double a5)
{
  v9 = MEMORY[0x277CBEAA8];
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v14 = [v9 distantPast];
  v15 = HDAggregateQuantitySensorDataThroughDate(v13, v12, v11, v14, 0, v10, a5);

  return v15;
}

HDQuantityAggregationResult *HDAggregateQuantitySensorDataThroughDate(void *a1, void *a2, void *a3, void *a4, int a5, void *a6, double a7)
{
  v100 = *MEMORY[0x277D85DE8];
  v12 = a1;
  v90 = a2;
  v13 = a3;
  v14 = a4;
  v86 = a6;
  v15 = [v12 count];
  if (!v15)
  {
    v22 = 0;
    goto LABEL_66;
  }

  v16 = v15;
  v81 = v13;
  v17 = [v12 firstObject];
  v92 = [v17 metadata];

  v18 = [v12 firstObject];
  v19 = [v18 dateInterval];
  v20 = [v19 startDate];

  v85 = v20;
  v93 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v20 sinceDate:a7];
  v82 = v16;
  v21 = v16 - 1;
  v84 = v14;
  if (v16 == 1)
  {
    v91 = 0;
    v88 = 0;
    v89 = 0;
  }

  else
  {
    v88 = 0;
    v89 = 0;
    v91 = 0;
    v23 = 2;
    do
    {
      v24 = [v12 objectAtIndexedSubscript:v23 - 1];
      v25 = [v24 dateInterval];
      v26 = [v25 endDate];

      v27 = [v24 metadata];
      if (v92 == v27)
      {
        v30 = 0;
      }

      else
      {
        v28 = [v24 metadata];
        if (v28)
        {
          v29 = [v24 metadata];
          v30 = [v92 isEqual:v29] ^ 1;
        }

        else
        {
          v30 = 1;
        }
      }

      if (![v26 hk_isBeforeDate:v93] || v30)
      {
        v31 = [v24 dateInterval];
        v32 = [v31 startDate];
        [v93 timeIntervalSinceDate:v32];
        v34 = v33;

        v35 = [v24 dateInterval];
        [v35 duration];
        v37 = v36;

        v38 = v34 + v34;
        v39 = [v12 subarrayWithRange:?];
        v40 = _HDCombineQuantitySensorData(v39, v90, v86);
        if (v40)
        {
          _HKInitializeLogging();
          v41 = *MEMORY[0x277CCC298];
          if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
          {
            v42 = v41;
            v43 = [v39 count];
            *buf = 138543874;
            v95 = v90;
            v96 = 2048;
            v97 = v43;
            v98 = 2112;
            v99 = v40;
            _os_log_impl(&dword_228986000, v42, OS_LOG_TYPE_INFO, "%{public}@: Aggregating %ld sensor datums produced %@", buf, 0x20u);
          }

          v44 = v89;
          if (!v89)
          {
            v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          v89 = v44;
          [v44 addObjectsFromArray:v40];
          v45 = v88;
          if (!v88)
          {
            v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          v88 = v45;
          [v45 addObjectsFromArray:v39];
          if (v38 >= v37)
          {
            v46 = 1;
          }

          else
          {
            v46 = 2;
          }

          v47 = v23 - ((((v30 + 1) & v46) + 1) & 1);
          v91 = v47;
          if (v47 < [v12 count])
          {
            v48 = [v12 objectAtIndexedSubscript:v47];
            v83 = [v48 metadata];

            [v48 dateInterval];
            v50 = v49 = v12;
            v51 = [v50 startDate];

            v52 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v51 sinceDate:a7];

            v93 = v52;
            v12 = v49;
            v85 = v51;
            v92 = v83;
          }

          v14 = v84;
        }
      }

      ++v23;
      --v21;
    }

    while (v21);
  }

  v53 = v82;
  if (v82 <= v91)
  {
    v13 = v81;
  }

  else
  {
    v13 = v81;
    [v81 timeIntervalSinceDate:v85];
    if (v54 >= a7)
    {
      v55 = [v12 subarrayWithRange:{v91, v82 - v91}];
      v56 = _HDCombineQuantitySensorData(v55, v90, v86);
      if (v56)
      {
        _HKInitializeLogging();
        v57 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
        {
          v58 = v57;
          v59 = [v55 count];
          *buf = 138543874;
          v95 = v90;
          v96 = 2048;
          v97 = v59;
          v98 = 2112;
          v99 = v56;
          _os_log_impl(&dword_228986000, v58, OS_LOG_TYPE_INFO, "%{public}@: Aggregating %ld sensor datums produced %@", buf, 0x20u);
        }

        v60 = v89;
        v53 = v82;
        if (!v89)
        {
          v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v89 = v60;
        [v60 addObjectsFromArray:v56];
        v61 = v88;
        if (!v88)
        {
          v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v88 = v61;
        [v61 addObjectsFromArray:v55];
        v91 = v82;
      }
    }
  }

  while (1)
  {
    v62 = v53 - 1;
    v63 = [v12 objectAtIndexedSubscript:v53 - 1];
    v64 = [v63 dateInterval];
    v65 = [v64 startDate];

    v66 = [v63 dateInterval];
    v67 = [v66 endDate];

    if (([v65 hk_isAfterDate:v14] & 1) == 0 && (!objc_msgSend(v67, "hk_isAfterOrEqualToDate:", v14) || a5))
    {
      break;
    }

    --v53;
    if (!v62)
    {
      goto LABEL_57;
    }
  }

  if (v62 >= v91)
  {
    v68 = [v12 subarrayWithRange:{v91, v53 - v91}];
    v69 = _HDCombineQuantitySensorData(v68, v90, v86);
    if (v69)
    {
      _HKInitializeLogging();
      v70 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
      {
        v71 = v70;
        v72 = [v68 count];
        *buf = 138543874;
        v95 = v90;
        v96 = 2048;
        v97 = v72;
        v98 = 2112;
        v99 = v69;
        _os_log_impl(&dword_228986000, v71, OS_LOG_TYPE_INFO, "%{public}@: Aggregating %ld sensor datums produced %@", buf, 0x20u);
      }

      v73 = v89;
      if (!v89)
      {
        v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v89 = v73;
      [v73 addObjectsFromArray:v69];
      v14 = v84;
      v74 = v88;
      if (!v88)
      {
        v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v88 = v74;
      [v74 addObjectsFromArray:v68];
      v91 = v53;
    }
  }

LABEL_57:
  if (v89)
  {
    if (v82 <= v91)
    {
      v75 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    else
    {
      v75 = [v12 hk_mutableSubarrayWithRange:{v91, v82 - v91}];
    }

    v76 = v75;
    v22 = [[HDQuantityAggregationResult alloc] initWithAggregatedSamples:v89 consumedData:v88 remainingData:v75];
  }

  else
  {
    if ([v12 count] < 2)
    {
      v22 = 0;
      goto LABEL_65;
    }

    v76 = HDMergedQuantitySensorData(v12, v90);
    v77 = [HDQuantityAggregationResult alloc];
    v78 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v76, 0}];
    v22 = [(HDQuantityAggregationResult *)v77 initWithAggregatedSamples:0 consumedData:0 remainingData:v78];
  }

LABEL_65:
LABEL_66:

  v79 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t HDCodableRoutePointDatumReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
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
        LOBYTE(v40) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v40 & 0x7F) << v5;
        if ((v40 & 0x80) == 0)
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
        switch(v13)
        {
          case 1:
            *(a1 + 52) |= 0x10u;
            v40 = 0;
            v23 = [a2 position] + 8;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v40;
            v34 = 40;
            break;
          case 2:
            *(a1 + 52) |= 2u;
            v40 = 0;
            v28 = [a2 position] + 8;
            if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
            {
              v37 = [a2 data];
              [v37 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v40;
            v34 = 16;
            break;
          case 3:
            *(a1 + 52) |= 4u;
            v40 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v33 = v40;
            v34 = 24;
            break;
          default:
            goto LABEL_42;
        }

        goto LABEL_64;
      }

      if (v13 == 4)
      {
        break;
      }

      if (v13 == 5)
      {
        *(a1 + 52) |= 8u;
        v40 = 0;
        v30 = [a2 position] + 8;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
        {
          v38 = [a2 data];
          [v38 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v33 = v40;
        v34 = 32;
LABEL_64:
        *(a1 + v34) = v33;
        goto LABEL_65;
      }

      if (v13 != 6)
      {
LABEL_42:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_65;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 52) |= 0x20u;
      while (1)
      {
        LOBYTE(v40) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v40 & 0x7F) << v16;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_53;
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

LABEL_53:
      *(a1 + 48) = v22;
LABEL_65:
      v39 = [a2 position];
      if (v39 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 52) |= 1u;
    v40 = 0;
    v25 = [a2 position] + 8;
    if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
    {
      v35 = [a2 data];
      [v35 getBytes:&v40 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v33 = v40;
    v34 = 8;
    goto LABEL_64;
  }

  return [a2 hasError] ^ 1;
}

void sub_228C63960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C63AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__86(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228C63DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C643F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C64A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C64E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C661D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228C66820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *health::DataStoreInspector::DataStoreInspector(void *this, DataStore *a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

void health::DataStoreInspector::enumerateStoreForPrinting(uint64_t *a1, uint64_t a2, int a3)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v10 = a3;
  if (a3 == 1)
  {
    v4 = *a1;
    v12[0] = &unk_283BE8F20;
    v12[1] = a1;
    v12[2] = a2;
    v12[3] = v12;
    health::DataStore::checkIntegrityForInspecting(v4, v12);
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v5 = *a1;
  v11 = 0;
  operator new();
}

void sub_228C69C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&a21);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void health::DataStoreInspector::_crossReferenceWithSQLiteEntries(uint64_t a1, __int128 **a2, __int128 **a3, uint64_t a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v50[0] = 0;
  v50[1] = 0;
  v48[1] = 0;
  v49 = v50;
  v47 = v48;
  v48[0] = 0;
  v46[0] = 0;
  v46[1] = 0;
  v44[1] = 0;
  v45 = v46;
  v43 = v44;
  v44[0] = 0;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      v41 = *v7;
      v9 = v41 == 3 || v41 == 0;
      v39 = &v41 + 8;
      if (v9)
      {
        v10 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v49, *(&v41 + 1));
        v11 = &v47;
      }

      else
      {
        v10 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v45, *(&v41 + 1));
        v11 = &v43;
      }

      v12 = *v7;
      v13 = v7[1];
      v14 = v7[2];
      v10[11] = *(v7 + 6);
      *(v10 + 9) = v14;
      *(v10 + 7) = v13;
      *(v10 + 5) = v12;
      std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v11, *(&v41 + 1));
      v7 = (v7 + 56);
    }

    while (v7 != v8);
    v7 = *a2;
  }

  a2[1] = v7;
  *(&v41 + 1) = 0;
  v42 = 0;
  v40[1] = 0;
  *&v41 = &v41 + 8;
  v39 = v40;
  v40[0] = 0;
  v38[0] = 0;
  v38[1] = 0;
  v36[1] = 0;
  v37 = v38;
  v35 = v36;
  v36[0] = 0;
  v15 = *a3;
  v16 = a3[1];
  if (*a3 != v16)
  {
    do
    {
      v34 = *v15;
      v17 = v34 == 3 || v34 == 0;
      v50[2] = &v34 + 1;
      if (v17)
      {
        v18 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v41, *(&v34 + 1));
        v19 = &v39;
      }

      else
      {
        v18 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v37, *(&v34 + 1));
        v19 = &v35;
      }

      v20 = *v15;
      v21 = v15[1];
      v22 = v15[2];
      v18[11] = *(v15 + 6);
      *(v18 + 9) = v22;
      *(v18 + 7) = v21;
      *(v18 + 5) = v20;
      std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v19, *(&v34 + 1));
      v15 = (v15 + 56);
    }

    while (v15 != v16);
    v15 = *a3;
  }

  a3[1] = v15;
  std::map<unsigned long long,health::DataStoreInspector::DataSeriesEntry>::map[abi:ne200100](v33, &v49);
  std::set<unsigned long long>::set[abi:ne200100](v32, &v47);
  std::map<unsigned long long,health::DataStoreInspector::DataSeriesEntry>::map[abi:ne200100](v31, &v41);
  std::set<unsigned long long>::set[abi:ne200100](v30, &v39);
  v23 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v52, a4);
  health::DataStoreInspector::_crossReferenceWithSQLiteKeys(v23, v33, v32, v31, v30, v52);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v52);
  std::__tree<long>::destroy(v30[1]);
  std::__tree<long>::destroy(v31[1]);
  std::__tree<long>::destroy(v32[1]);
  std::__tree<long>::destroy(v33[1]);
  std::map<unsigned long long,health::DataStoreInspector::DataSeriesEntry>::map[abi:ne200100](v29, &v45);
  std::set<unsigned long long>::set[abi:ne200100](v28, &v43);
  std::map<unsigned long long,health::DataStoreInspector::DataSeriesEntry>::map[abi:ne200100](v27, &v37);
  std::set<unsigned long long>::set[abi:ne200100](v26, &v35);
  v24 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v51, a4);
  health::DataStoreInspector::_crossReferenceWithSQLiteKeys(v24, v29, v28, v27, v26, v51);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v51);
  std::__tree<long>::destroy(v26[1]);
  std::__tree<long>::destroy(v27[1]);
  std::__tree<long>::destroy(v28[1]);
  std::__tree<long>::destroy(v29[1]);
  std::__tree<long>::destroy(v36[0]);
  std::__tree<long>::destroy(v38[0]);
  std::__tree<long>::destroy(v40[0]);
  std::__tree<long>::destroy(*(&v41 + 1));
  std::__tree<long>::destroy(v44[0]);
  std::__tree<long>::destroy(v46[0]);
  std::__tree<long>::destroy(v48[0]);
  std::__tree<long>::destroy(v50[0]);
  v25 = *MEMORY[0x277D85DE8];
}

void sub_228C69FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v46 - 136);
  std::__tree<long>::destroy(a10);
  std::__tree<long>::destroy(a13);
  std::__tree<long>::destroy(a16);
  std::__tree<long>::destroy(a19);
  std::__tree<long>::destroy(a37);
  std::__tree<long>::destroy(a40);
  std::__tree<long>::destroy(a43);
  std::__tree<long>::destroy(a46);
  std::__tree<long>::destroy(*(v46 - 232));
  std::__tree<long>::destroy(*(v46 - 208));
  std::__tree<long>::destroy(*(v46 - 184));
  std::__tree<long>::destroy(*(v46 - 160));
  _Unwind_Resume(a1);
}

void health::DataStoreInspector::enumerateSampleHistoryForPrinting(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v12, a4);
      health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV1>(v11, a1, 2, a3, v12, a5, a6);
    }

    if (a2 == 3)
    {
      std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v14, a4);
      health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV2>(v11, a1, 3, a3, v14, a5, a6);
    }
  }

  else
  {
    if (!a2)
    {
      std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v15, a4);
      health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(v11, a1, 0, a3, v15, a5, a6);
    }

    if (a2 == 1)
    {
      std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v13, a4);
      health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV0>(v11, a1, 1, a3, v13, a5, a6);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Unexpected object type");
  __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
}

void sub_228C6A28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(exception_object);
    v28 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](&a16, v26);
    health::DataStoreInspector::_unknownBehaviorHandler(v28, v25, v24, v27, &a16);
    std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](&a16);
    __cxa_end_catch();
    JUMPOUT(0x228C6A218);
  }

  _Unwind_Resume(exception_object);
}

void health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV1>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7)
{
  v17 = *MEMORY[0x277D85DE8];
  *&v16 = a3;
  *(&v16 + 1) = a4;
  v15 = a6;
  v14 = a7;
  *a1 = v16;
  *(a1 + 16) = xmmword_229166A20;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 32) = _Q0;
  *(a1 + 48) = 0xBFF0000000000000;
  v13 = 0;
  v12 = *a2;
  operator new();
}

void sub_228C6A54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void health::DataStoreInspector::_enumerateSampleHistory<LocationHistoryBehaviorV2>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7)
{
  v17 = *MEMORY[0x277D85DE8];
  *&v16 = a3;
  *(&v16 + 1) = a4;
  v15 = a6;
  v14 = a7;
  *a1 = v16;
  *(a1 + 16) = xmmword_229166A20;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 32) = _Q0;
  *(a1 + 48) = 0xBFF0000000000000;
  v13 = 0;
  v12 = *a2;
  operator new();
}

void sub_228C6A754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV0>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7)
{
  v17 = *MEMORY[0x277D85DE8];
  *&v16 = a3;
  *(&v16 + 1) = a4;
  v15 = a6;
  v14 = a7;
  *a1 = v16;
  *(a1 + 16) = xmmword_229166A20;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 32) = _Q0;
  *(a1 + 48) = 0xBFF0000000000000;
  v13 = 0;
  v12 = *a2;
  operator new();
}

void sub_228C6A95C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void health::DataStoreInspector::_enumerateSampleHistory<QuantitySampleValueBehaviorV1>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7)
{
  v17 = *MEMORY[0x277D85DE8];
  *&v16 = a3;
  *(&v16 + 1) = a4;
  v15 = a6;
  v14 = a7;
  *a1 = v16;
  *(a1 + 16) = xmmword_229166A20;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 32) = _Q0;
  *(a1 + 48) = 0xBFF0000000000000;
  v13 = 0;
  v12 = *a2;
  operator new();
}

void sub_228C6AB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void health::DataStoreInspector::_unknownBehaviorHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v10[0] = a2;
  v10[1] = a3;
  v8 = (*(*a4 + 16))(a4);
  memset(&__p, 0, sizeof(__p));
  v11[0] = &v8;
  v11[1] = v10;
  health::FormatImplementation<health::DataStore::ObjectIdentifier &,char const*>("HFD sample history [ID: {0}] has unknown behavior - {1}", &__p, 0, v11);
  v6 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v12, a5);
  health::DataStoreInspector::_errorHandler(v6, 2, 0, 0, &__p, v12);
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_228C6AC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v16 - 56);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void health::DataStoreInspector::_crossReferenceWithSQLiteKeys(uint64_t a1, uint64_t a2, std::string::size_type *a3, uint64_t a4, void **a5, uint64_t a6)
{
  v71 = *MEMORY[0x277D85DE8];
  v65[0] = 0;
  v65[1] = 0;
  v64 = v65;
  v12 = a5 + 1;
  v11 = *a5;
  v14 = a3 + 1;
  v13 = *a3;
  *&v52 = *a5;
  v62 = v13;
  *&v56 = &v64;
  *(&v56 + 1) = v65;
  LOBYTE(v60) = 0;
  if (v13 != a3 + 1)
  {
    do
    {
      v15 = v52;
      *&v52 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,unsigned long long,std::__identity const,std::__less<void,void>>(v52, v12, v13[4]);
      std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::insert_iterator<std::set<unsigned long long>>>((v52 == v15), &v52, &v62, &v56, &v60);
      if (v52 == v12)
      {
        break;
      }

      v16 = v62;
      v62 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,unsigned long long,std::__identity const,std::__less<void,void>>(v62, v14, *(v52 + 32));
      std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>,std::insert_iterator<std::set<unsigned long long>>>((v62 == v16), &v52, &v62, &v56, &v60);
      v13 = v62;
    }

    while (v62 != v14);
    v13 = *a3;
    v11 = *a5;
  }

  v63[0] = 0;
  v63[1] = 0;
  v62 = v63;
  v60 = v13;
  __p.__r_.__value_.__r.__words[0] = v14;
  v49[0] = v11;
  v48.__r_.__value_.__r.__words[0] = v12;
  *&v52 = &v62;
  *(&v52 + 1) = v63;
  std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::insert_iterator<std::set<unsigned long long>> &>(&v56, &v60, &__p, v49, &v48, &v52);
  v61[0] = 0;
  v61[1] = 0;
  v60 = v61;
  v17 = *a3;
  __p.__r_.__value_.__r.__words[0] = *a5;
  v49[0] = v12;
  v48.__r_.__value_.__r.__words[0] = v17;
  v47.__r_.__value_.__r.__words[0] = v14;
  *&v52 = &v60;
  *(&v52 + 1) = v61;
  std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long> &,std::insert_iterator<std::set<unsigned long long>> &>(&v56, &__p, v49, &v48, &v47, &v52);
  v18 = v64;
  if (v64 != v65)
  {
    do
    {
      v19 = v18[4];
      *&v52 = v18 + 4;
      v20 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a2, v19);
      v21 = *(v20 + 7);
      v56 = *(v20 + 5);
      v57 = v21;
      v58 = *(v20 + 9);
      v59 = *(v20 + 11);
      __p.__r_.__value_.__r.__words[0] = (v18 + 4);
      v22 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a4, v18[4]);
      v23 = *(v22 + 7);
      v52 = *(v22 + 5);
      v53 = v23;
      v54 = *(v22 + 9);
      v55 = *(v22 + 11);
      if (v23)
      {
        if (*(&v53 + 1) != *(&v57 + 1))
        {
          health::FormatString<health::DataStore::ObjectIdentifier &,long long &,long long &>(&__p, "HFD sample history [ID: {0}] has an actual sample count ({1}) that does not match its SQLite row ({2})", &v56, &v57 + 1, &v53 + 1);
          v24 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v70, a6);
          health::DataStoreInspector::_errorHandler(v24, 4, 0, 0, &__p, v70);
          std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v70);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      if (vabdd_f64(*(&v54 + 1), *(&v58 + 1)) > 1800.0)
      {
        health::timestampToDate(*(&v58 + 1), &__p);
        health::timestampToDate(*(&v54 + 1), v49);
        health::FormatString<health::DataStore::ObjectIdentifier &,std::string &,std::string &>(&v48, "HFD sample history [ID: {0}] has an actual start date ({1}) that does not match its SQLite row ({2})", &v56, &__p, v49);
        v25 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v69, a6);
        health::DataStoreInspector::_errorHandler(v25, 4, 0, 0, &v48, v69);
        std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v69);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        if (v50 < 0)
        {
          operator delete(v49[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (vabdd_f64(v55, v59) > 1800.0)
      {
        health::timestampToDate(v59, &__p);
        health::timestampToDate(v55, v49);
        health::FormatString<health::DataStore::ObjectIdentifier &,std::string &,std::string &>(&v48, "HFD sample history [ID: {0}] has an actual end date ({1}) that does not match its SQLite row ({2})", &v56, &__p, v49);
        v26 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v68, a6);
        health::DataStoreInspector::_errorHandler(v26, 4, 0, 0, &v48, v68);
        std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v68);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        if (v50 < 0)
        {
          operator delete(v49[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v27 = v18[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v18[2];
          v29 = *v28 == v18;
          v18 = v28;
        }

        while (!v29);
      }

      v18 = v28;
    }

    while (v28 != v65);
  }

  v30 = v62;
  if (v62 != v63)
  {
    do
    {
      v31 = v30[4];
      *&v52 = v30 + 4;
      v32 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a2, v31);
      v33 = *(v32 + 9);
      v34 = *(v32 + 7);
      v56 = *(v32 + 5);
      v57 = v34;
      v58 = v33;
      v59 = *(v32 + 11);
      health::timestampToDate(*(&v33 + 1), &__p);
      health::timestampToDate(v59, v49);
      *&v52 = v49;
      *(&v52 + 1) = &__p;
      *&v53 = &v57 + 8;
      *(&v53 + 1) = &v56;
      memset(&v48, 0, sizeof(v48));
      health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &>("[ID: {0} | Count: {1} | {2} to {3}]", &v48, 0, &v52);
      v35 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v67, a6);
      health::DataStoreInspector::_errorHandler(v35, 5, 0, 0, &v48, v67);
      std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v67);
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (v50 < 0)
      {
        operator delete(v49[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v36 = v30[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v30[2];
          v29 = *v37 == v30;
          v30 = v37;
        }

        while (!v29);
      }

      v30 = v37;
    }

    while (v37 != v63);
  }

  v38 = v60;
  if (v60 != v61)
  {
    do
    {
      v39 = v38[4];
      *&v52 = v38 + 4;
      v40 = std::__tree<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::DataStoreInspector::DataSeriesEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a4, v39);
      v41 = *(v40 + 9);
      v42 = *(v40 + 7);
      v56 = *(v40 + 5);
      v57 = v42;
      v58 = v41;
      v59 = *(v40 + 11);
      health::timestampToDate(*(&v41 + 1), &__p);
      health::timestampToDate(v59, v49);
      health::timestampToDate(*&v58, &v48);
      *&v52 = &v57;
      *(&v52 + 1) = &v48;
      *&v53 = v49;
      *(&v53 + 1) = &__p;
      *&v54 = &v57 + 8;
      *(&v54 + 1) = &v56;
      memset(&v47, 0, sizeof(v47));
      health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,std::string &,std::string &,std::string &,long long &>("[ID: {0} | Count: {1} | {2} to {3} | Insertion Era: {4} | Frozen: {5}]", &v47, 0, &v52);
      v43 = std::__function::__value_func<void ()(std::string const&)>::__value_func[abi:ne200100](v66, a6);
      health::DataStoreInspector::_errorHandler(v43, 6, 0, 0, &v47, v66);
      std::__function::__value_func<void ()(std::string const&)>::~__value_func[abi:ne200100](v66);
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (v50 < 0)
      {
        operator delete(v49[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v44 = v38[1];
      if (v44)
      {
        do
        {
          v45 = v44;
          v44 = *v44;
        }

        while (v44);
      }

      else
      {
        do
        {
          v45 = v38[2];
          v29 = *v45 == v38;
          v38 = v45;
        }

        while (!v29);
      }

      v38 = v45;
    }

    while (v45 != v61);
  }

  std::__tree<long>::destroy(v61[0]);
  std::__tree<long>::destroy(v63[0]);
  std::__tree<long>::destroy(v65[0]);
  v46 = *MEMORY[0x277D85DE8];
}

void sub_228C6B3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, char a59)
{
  std::__tree<long>::destroy(a51);
  std::__tree<long>::destroy(a54);
  std::__tree<long>::destroy(a57);
  _Unwind_Resume(a1);
}

void health::FormatString<health::DataStore::ObjectIdentifier &,long long &,long long &>(std::string *a1, std::string *a2, void *a3, void *a4, void *a5)
{
  v5[0] = a5;
  v5[1] = a4;
  v5[2] = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<health::DataStore::ObjectIdentifier &,long long &,long long &>(a2, a1, 0, v5);
}