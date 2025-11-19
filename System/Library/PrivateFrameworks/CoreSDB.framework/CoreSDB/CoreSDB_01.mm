uint64_t CSDBPerformUnlockedSectionForQueryForWriting(uint64_t result, const __CFString *a2, uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = result;
        result = *(result + 8);
        if (result)
        {
          result = CSDBRecordStoreGetDatabase(result);
          if (result)
          {
            v6 = result;
            result = CSDBSqliteDatabaseStatementForWriting(result, a2);
            if (result)
            {
              v7 = result;
              if (*(result + 8))
              {
                (*(a3 + 16))(a3, *(v5 + 8), v6, result);

                return CSDBSqliteStatementReset(v7);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void CSDBRecordStoreInvalidateCaches(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    CSDBRecordStoreInvalidateCachesWithStore(v1);
  }
}

void CSDBRecordStoreSaveAndInvalidateCaches(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      CSDBRecordSaveStore(*(a1 + 8));

      CSDBRecordStoreInvalidateCachesWithStore(v1);
    }
  }
}

void CSDBRecordStoreRecordCommitChangesAndReleaseUnlocked(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      CSDBRecordSaveStore(v3);
    }
  }

  CFRelease(cf);
}

void CSDBRecordStoreRecordCommitChangesAndRelease(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      CSDBRecordSaveStore(v3);
    }
  }

  CFRelease(cf);
}

uint64_t CSDBRecordStoreSave(uint64_t result)
{
  if (result)
  {
    result = *(result + 8);
    if (result)
    {
      return CSDBRecordSaveStore(result);
    }
  }

  return result;
}

uint64_t CSDBThreadedRecordStoreGetSequenceNumber(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  if (a1 && (v1 = *(a1 + 8)) != 0)
  {
    *(v5 + 6) = CSDBRecordStoreGetSequenceNumber(v1);
    v2 = *(v5 + 6);
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v4, 8);
  return v2;
}

void sub_2478AC7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2478AC7F4(uint64_t a1, uint64_t a2)
{
  result = CSDBRecordStoreGetSequenceNumber(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_2478AC9E4(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 8))
  {
    goto LABEL_2;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_2;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_2;
    }

    v13 = *(a1 + 32);
    __b[0] = 138412290;
    *&__b[1] = v13;
    v14 = "No DB path block passed into CSDBThreadedRecordStore %@";
LABEL_17:
    _os_log_impl(&dword_24789E000, v12, OS_LOG_TYPE_INFO, v14, __b, 0xCu);
    goto LABEL_2;
  }

  v4 = (*(v3 + 16))();
  if (!v4)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_2;
    }

    v12 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_2;
    }

    v15 = *(a1 + 32);
    __b[0] = 138412290;
    *&__b[1] = v15;
    v14 = "No DB path passed into CSDBThreadedRecordStore %@";
    goto LABEL_17;
  }

  v5 = v4;
  *(*(a1 + 32) + 8) = CSDBRecordStoreCreateWithPath(v4);
  v6 = *(*(a1 + 32) + 8);
  if (v6)
  {
    CSDBRecordStoreSetSetupHandler(v6, *(a1 + 56));
    Database = CSDBRecordStoreGetDatabase(*(*(a1 + 32) + 8));
    if (Database)
    {
      v8 = Database;
      CSDBSqliteDatabaseSetVersion(Database, *(a1 + 88));
      CSDBSqliteDatabaseSetDataProtectionClass(v8, *(a1 + 92));
      CSDBSqliteDatabaseSetLookAsideConfig(v8, *(*(a1 + 32) + 40), *(*(a1 + 32) + 48));
      CSDBSqliteDatabaseSetConnectionInitializer(v8, *(a1 + 64));
      CSDBSqliteDatabaseSetMigrationHandlers(v8, *(a1 + 72), *(a1 + 80), *(*(a1 + 32) + 8));
      CSDBSqliteDatabaseSetShouldMigrateInExternalProcess(v8, (*(a1 + 96) & 1) == 0);
      *(*(a1 + 32) + 52) = 1;
      v9 = *(a1 + 48);
      if (v9)
      {
        (*(v9 + 16))(v9, *(a1 + 32));
      }

      *(*(a1 + 32) + 52) = 0;
      memset(__b, 170, 0x400uLL);
      if (CFStringGetCString(v5, __b, 1024, 0x8000100u))
      {
        v10 = CSDBGetMobileUserUID();
        v11 = CSDBGetMobileUserGID();
        chown(__b, v10, v11);
      }

      else if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *v19 = 0;
          _os_log_impl(&dword_24789E000, v18, OS_LOG_TYPE_INFO, "Unable to change permissions on messages database.", v19, 2u);
        }
      }

      CSDBSqliteDatabaseSetVersion(v8, *(a1 + 88));
      CSDBSqliteDatabaseConnectionForWritingWithOwnership(v8, *(a1 + 97));
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(__b[0]) = 0;
        _os_log_impl(&dword_24789E000, v17, OS_LOG_TYPE_INFO, "Unable to get a db reference.", __b, 2u);
      }
    }

    CFRelease(v5);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        __b[0] = 138412290;
        *&__b[1] = v5;
        _os_log_impl(&dword_24789E000, v16, OS_LOG_TYPE_INFO, "Unable to create a CSDBRecordStore for path %@", __b, 0xCu);
      }
    }

    CFRelease(v5);
  }

LABEL_2:
  v1 = *MEMORY[0x277D85DE8];
}

void sub_2478ACEE0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {

    CSDBRecordStoreInvalidateCachesWithStore(v2);
  }
}

void sub_2478ACFF0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {

    CSDBRecordStoreInvalidateCachesWithStore(v2);
  }
}

uint64_t CSDBRecordStoreRefFromThreadedRecordStoreRef(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_2478AD054(uint64_t result, int a2, int a3, unsigned int a4, CFErrorRef *a5)
{
  if (result)
  {
    v9 = result;
    Database = CSDBRecordStoreGetDatabase(result);
    result = CSDBSqliteDatabaseConnectionForWriting(Database);
    if (result)
    {
      v11 = result;
      CSDBSqliteConnectionBeginTransactionType(result, a4);
      v12 = CSDBSqliteConnectionIntegerForProperty(v11, @"__CSDBRecordSequenceNumber");
      if (!a3 || ((v13 = *(v9 + 96), v13 != -1) ? (v14 = v12 == v13) : (v14 = 1), v14))
      {
        v16[1] = v11;
        v16[2] = 0;
        v16[0] = v9;
        if (a2)
        {
          sub_2478A1CC8(v16);
        }

        else
        {
          sub_2478A1D6C(v16);
        }

        return 1;
      }

      else if (a5)
      {
        v15 = CFErrorCreate(0, @"CSDBRecord", 2, 0);
        result = 0;
        *a5 = v15;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CSDBRecordStoreGetRowidForRecordID(uint64_t a1, int a2)
{
  if (!a1)
  {
    return -1;
  }

  if (a2 >= -1)
  {
    return a2;
  }

  if ((a2 & 0x7FFFFFFF) < *(a1 + 104))
  {
    return *(*(a1 + 112) + 8 * (a2 & 0x7FFFFFFF));
  }

  else
  {
    return -1;
  }
}

uint64_t CSDBSqliteDatabaseCheckIntegrity(uint64_t a1)
{
  v1 = sub_24789EE28(a1, @"PRAGMA integrity_check", 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = v1[1];
  if (!v3)
  {
    return 0;
  }

  v4 = *MEMORY[0x277CBECE8];
  while (1)
  {
    if (CSDBSqliteStepWithConnection(*v2, v3) != 100)
    {
LABEL_10:
      v13 = 0;
      goto LABEL_16;
    }

    if (sqlite3_column_text(v2[1], 0))
    {
      v7 = sqlite3_column_text(v2[1], 0);
      v8 = CFStringCreateWithCString(v4, v7, 0x8000100u);
      v11 = objc_msgSend_lowercaseString(v8, v9, v10);
    }

    else
    {
      v8 = 0;
      v11 = objc_msgSend_lowercaseString(0, v5, v6);
    }

    if (objc_msgSend_isEqualToString_(v11, v12, @"ok"))
    {
      break;
    }

    v3 = v2[1];
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16[0] = 0;
      _os_log_impl(&dword_24789E000, v14, OS_LOG_TYPE_INFO, "This DB passed its integrity check.", v16, 2u);
    }
  }

  v13 = 1;
LABEL_16:
  CSDBSqliteStatementReset(v2);
  return v13;
}

void sub_2478AD9A8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24789E000, a2, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void sub_2478ADAA0(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_24789E000, a1, OS_LOG_TYPE_INFO, "**************************************************************************", v2, 2u);
  }
}