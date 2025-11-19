void IMDMessageRecordAnonymizedUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((IMDIsRunningInDatabaseServerProcess() & 1) == 0)
  {
    v42 = xmmword_1E7CB8208;
    v43 = *off_1E7CB8218;
    v44 = 2702;
    v17 = MEMORY[0x1E696AEC0];
    v18 = IMFileLocationTrimFileName();
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, &stru_1F2FA9728);
    v22 = objc_msgSend_stringWithFormat_(v17, v21, @"Unexpected false '%@' in %s at %s:%d. %@", @"IMDIsRunningInDatabaseServerProcess()", "void IMDMessageRecordAnonymizedUpdate(IMDMessageRecordRef, CFStringRef, CFDataRef, CFStringRef, CFStringRef, CFStringRef, CFDataRef, CFDataRef, CFStringRef)", v18, 2702, v20);
    v23 = IMGetAssertionFailureHandler();
    if (v23)
    {
      v23(v22);
    }

    else
    {
      v26 = objc_msgSend_warning(MEMORY[0x1E69A6138], v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEFAB0(v22, v26, v27, v28, v29, v30, v31, v32);
      }
    }
  }

  if (a1)
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1B7B381D4;
    v41[3] = &unk_1E7CB8230;
    v41[4] = a1;
    v41[5] = a2;
    v41[6] = a3;
    v41[7] = a5;
    v41[8] = a7;
    v41[9] = a4;
    v41[10] = a6;
    v41[11] = a8;
    v41[12] = a9;
    _IMDPerformBlock(v41);
  }

  else
  {
    v33 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFB1C(v33, v34, v35, v36, v37, v38, v39, v40);
    }
  }
}

void sub_1B7B381D4(void *a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(a1[4] + 16));
  if (v2)
  {
    v3 = v2;
    v4 = a1[5];
    if (v4 && CFStringGetLength(v4) >= 1)
    {
      v5 = a1[5];
      CSDBRecordSetProperty();
    }

    v6 = a1[6];
    if (v6 && CFDataGetLength(v6) >= 1)
    {
      v7 = a1[6];
      CSDBRecordSetProperty();
    }

    v8 = a1[7];
    if (v8 && CFStringGetLength(v8) >= 1)
    {
      v9 = a1[7];
      CSDBRecordSetProperty();
    }

    v10 = a1[8];
    if (v10 && CFDataGetLength(v10) >= 1)
    {
      v11 = a1[8];
      CSDBRecordSetProperty();
    }

    v12 = a1[9];
    if (v12 && CFStringGetLength(v12) >= 1)
    {
      v13 = a1[9];
      CSDBRecordSetProperty();
    }

    v14 = a1[10];
    if (v14 && CFStringGetLength(v14) >= 1)
    {
      v15 = a1[10];
      CSDBRecordSetProperty();
    }

    v16 = a1[11];
    if (v16 && CFDataGetLength(v16) >= 1)
    {
      v17 = a1[11];
      CSDBRecordSetProperty();
    }

    v18 = a1[12];
    if (v18 && CFStringGetLength(v18) >= 1)
    {
      v19 = a1[12];
      CSDBRecordSetProperty();
    }

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

uint64_t IMDMessageRecordInvalidateRecord(uint64_t a1)
{
  result = IMDIsRunningInDatabaseServerProcess();
  if (a1)
  {
    if (result)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = sub_1B7B383D0;
      v3[3] = &unk_1E7CB6A70;
      v3[4] = a1;
      return _IMDPerformBlock(v3);
    }
  }

  return result;
}

void sub_1B7B383D0(uint64_t a1)
{
  v1 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 32) + 16));
  if (v1)
  {
    v2 = v1;
    CSDBRecordInvalidateRecord();

    CFRelease(v2);
  }
}

const void *_IMDCopyIMDMessageRecordFromXPCObjectServer(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  int64 = xpc_dictionary_get_int64(a1, "recordIdentifier");
  if (int64 < 1)
  {
    return 0;
  }

  return IMDMessageRecordCreateFromRecordIDWithLock(0, int64, 0);
}

uint64_t sub_1B7B38474(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  for (i = 8; i != 3728; i += 40)
  {
    if (!*(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + i))
    {
      v7 = sub_1B7AE64DC(v5);
      if (v7)
      {
        v8 = v7;
        v9 = *(a1 + 24);
        if (v9)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v5);
        }

        else
        {
          ValueAtIndex = CSDBRecordGetProperty();
        }

        if (ValueAtIndex)
        {
          v11 = v8;
        }

        else
        {
          v11 = 0;
        }

        v4 |= v11;
      }
    }

    ++v5;
  }

  return v4;
}

xpc_object_t _IMDCopyXPCObjectFromIMDMessageRecordClient(uint64_t a1)
{
  if (!a1 || !*(a1 + 24))
  {
    return 0;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = 0;
  v6 = 0;
  for (i = 0; i != 93; ++i)
  {
    v8 = (*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, v2, v3, v19, v20) + 80) + v5);
    v9 = *v8;
    v10 = v8[1];
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
    if (!ValueAtIndex)
    {
      goto LABEL_17;
    }

    v12 = ValueAtIndex;
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v19 = ValueAtIndex;
        v20 = 0;
        IMInsertDatasToXPCDictionary();
        goto LABEL_17;
      }

      if (v10 != 3)
      {
        goto LABEL_17;
      }

      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      v13 = valuePtr;
      v14 = v4;
      v15 = v9;
      goto LABEL_16;
    }

    if (!v10)
    {
      v16 = sub_1B7AE64DC(i);
      if (v16)
      {
        v6 |= v16;
        goto LABEL_17;
      }

      v14 = v4;
      v15 = v9;
      v13 = v12;
LABEL_16:
      xpc_dictionary_set_int64(v14, v15, v13);
      goto LABEL_17;
    }

    if (v10 == 1)
    {
      v19 = ValueAtIndex;
      v20 = 0;
      IMInsertNSStringsToXPCDictionary();
    }

LABEL_17:
    v5 += 40;
  }

  if (v6)
  {
    xpc_dictionary_set_int64(v4, "flags", v6);
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    xpc_dictionary_set_int64(v4, "recordIdentifier", v17);
  }

  return v4;
}

void IMDMessageRecordMarkAllUnsuccessFullSyncMessagesAsNeedingSync()
{
  v17 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "Request to markAllUnsuccessFullySyncedMessagesAsNeedingSync ", buf, 2u);
    }
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    *buf = 0u;
    v5 = 0u;
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    IMDSqlOperationExecuteQuery(buf, @"update message set ck_sync_state=0 where ck_sync_state=2;", &unk_1F2FA09F0);
    v3 = 0;
    IMDSqlOperationRelease(buf, &v3);
    if (v3)
    {
      if (IMOSLoggingEnabled())
      {
        v1 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
        {
          *v15 = 138412290;
          v16 = v3;
          _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Error executing markAllUnsuccessFullySyncedMessagesAsNeedingSync %@ ", v15, 0xCu);
        }
      }
    }
  }

  else
  {
    __syncXPCIMDMessageRecordMarkAllUnsuccessFullSyncMessagesAsNeedingSync_IPCAction(0);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7B38830()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "Executed query to mark all unsuccessfuly synced messages as needing sync", v1, 2u);
    }
  }
}

CFStringRef sub_1B7B388EC(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<IMDMessageRecord %p [%p]>{}", a1, v3);
}

uint64_t sub_1B7B3893C(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDHandleRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7B38970(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDHandleRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1B7B389A4(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

void sub_1B7B38A04(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

uint64_t sub_1B7B38A64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(*(*(a1 + 32) + 48), v6);
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

uint64_t sub_1B7B38ACC(uint64_t a1, uint64_t a2, xpc_object_t xint)
{
  value = xpc_int64_get_value(xint);
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = objc_msgSend_initWithUTF8String_(v6, v7, a2);
  v10 = *(*(*(a1 + 32) + 8) + 40);
  if (!v10)
  {
    *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = *(*(*(a1 + 32) + 8) + 40);
  }

  v11 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v8, value);
  objc_msgSend_setObject_forKey_(v10, v12, v11, v9);

  return 1;
}

void sub_1B7B38B78(uint64_t a1, void *a2, void *a3)
{
  if (objc_msgSend_UTF8String(a2, a2, a3))
  {
    v8 = *(a1 + 32);
    v9 = objc_msgSend_UTF8String(a2, v6, v7);
    v12 = objc_msgSend_unsignedIntegerValue(a3, v10, v11);

    xpc_dictionary_set_int64(v8, v9, v12);
  }
}

void IMDNotificationsPostNotificationsWithContext(void *a1)
{
  v5 = a1;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v3 = objc_msgSend_sharedInstance(IMDNotificationsController, v1, v2);
    objc_msgSend_postNotificationsWithContext_(v3, v4, v5);
  }

  else
  {
    __asyncXPCIMDNotificationsPostNotifications_IPCAction(&unk_1F2FA0190, v5);
  }
}

void IMDNotificationsRetractNotificationsFromFirstUnlockWithContext(void *a1)
{
  v5 = a1;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v3 = objc_msgSend_sharedInstance(IMDNotificationsController, v1, v2);
    objc_msgSend_repostNotificationsFromFirstUnlockWithContext_(v3, v4, v5);
  }

  else
  {
    __asyncXPCIMDNotificationsRetractNotificationsFromFirstUnlock_IPCAction(&unk_1F2F9FC50, v5);
  }
}

void IMDNotificationsPostUrgentNotificationsForMessages(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v6 = objc_msgSend_sharedInstance(IMDNotificationsController, v4, v5);
    objc_msgSend_postUrgentNotificationForMessages_withContext_(v6, v7, v8, v3);
  }

  else
  {
    __syncXPCIMDNotificationsPostUrgentNotificationsForMessages_IPCAction(&unk_1F2F9FBF0, v8, v3);
  }
}

void IMDNotificationsUpdatePostedNotificationsForMessages(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v6 = objc_msgSend_sharedInstance(IMDNotificationsController, v4, v5);
    objc_msgSend_updatePostedNotificationsForMessages_withContext_(v6, v7, v8, v3);
  }

  else
  {
    __syncXPCIMDNotificationsUpdatePostedNotificationsForMessages_IPCAction(&unk_1F2F9FBB0, v8, v3);
  }
}

void IMDNotificationsPostFirstUnlockMessage(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v6 = objc_msgSend_sharedInstance(IMDNotificationsController, v4, v5);
    objc_msgSend_postFirstUnlockMessage_forIdentifier_(v6, v7, v8, v3);
  }

  else
  {
    __syncXPCIMDNotificationsPostFirstUnlockMessage_IPCAction(&unk_1F2FA0A10, v8, v3);
  }
}

void sub_1B7B38EF8()
{
  qword_1EDBE7970 = _CFRuntimeRegisterClass();
  v0 = objc_opt_class();
  class_getName(v0);
  _CFRuntimeBridgeClasses();
  v1 = objc_opt_class();

  IMDBridgedRecordPopulatePropertyImplementations(v1, &off_1E7CB8330, 5);
}

void *IMDHandleRecordCreate(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    *&buf[24] = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1B7B394B0;
    v27[3] = &unk_1E7CB6838;
    v27[4] = buf;
    __syncXPCIMDHandleRecordCreate_IPCAction(v27, a2, a3, a4, a5, a6);
    v12 = *(*&buf[8] + 24);
    v23 = buf;
LABEL_23:
    _Block_object_dispose(v23, 8);
    goto LABEL_24;
  }

  pthread_once(&stru_1EDBE5A70, sub_1B7B38EF8);
  Instance = _CFRuntimeCreateInstance();
  v12 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "_IMDHandleRecordCreate()", buf, 2u);
    }

    IMDEnsureSharedRecordStoreInitialized();
    v15 = CSDBRecordCreate();
    if (v15)
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      if ((objc_msgSend_isEqualToString_(a4, v14, *MEMORY[0x1E69A7AF0]) & 1) == 0)
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = sub_1B7B39380;
        v28[3] = &unk_1E7CB7948;
        v28[4] = &v29;
        v28[5] = a2;
        IMDRunSqlOperation(v28);
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = v30[3];
            *buf = 138412546;
            *&buf[4] = a4;
            *&buf[12] = 2112;
            *&buf[14] = v17;
            _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "We are setting the person_centric_id for a non-iMessage(%@) handle to be %@", buf, 0x16u);
          }
        }
      }

      *buf = xmmword_1B7D09AC0;
      *&buf[16] = xmmword_1B7D09AD0;
      v39 = 4;
      v37[0] = a2;
      v37[1] = a3;
      v37[2] = a4;
      v37[3] = a5;
      if (!a6)
      {
        a6 = v30[3];
      }

      v18 = 0;
      v37[4] = a6;
      do
      {
        v19 = *&buf[v18 * 8];
        v20 = v37[v18];
        CSDBRecordSetProperty();
        ++v18;
      }

      while (v18 != 5);
      if (IMDHandleRecordAddHandleRecord(v15))
      {
        v12[2] = CSDBRecordGetID();
        v21 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = v12[2];
          *v33 = 138412546;
          v34 = v12;
          v35 = 2048;
          v36 = v22;
          _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "new IMDHandleRecordRef [%@] has id [%lld].", v33, 0x16u);
        }
      }

      else
      {
        CFRelease(v12);
        v12 = 0;
      }

      CFRelease(v15);
      v24 = v30[3];
      if (v24)
      {
        CFRelease(v24);
      }

      v23 = &v29;
      goto LABEL_23;
    }

    CFRelease(v12);
    v12 = 0;
  }

LABEL_24:
  v25 = *MEMORY[0x1E69E9840];
  return v12;
}

BOOL sub_1B7B39380(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7B3944C;
  v5[3] = &unk_1E7CB75B0;
  v2 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7B39458;
  v4[3] = &unk_1E7CB7920;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT person_centric_id FROM handle where ID = ? and service = 'iMessage'", v5, v4);
}

const unsigned __int8 *sub_1B7B39458(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    IMDSqlOperationColumnByIndex(*(a1 + 40), 0, v3);
    result = IMDStringFromSqlColumn(v3);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t sub_1B7B394B0(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDHandleRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDHandleRecordGetIdentifier(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = *(a1 + 16);
  }

  else
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Attempted to get record identifier for NULL handle record: %@", &v4, 0xCu);
    }

    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B3958C(uint64_t a1)
{
  v2 = IMDHandleRecordCopyHandleRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

void sub_1B7B395F4(uint64_t a1)
{
  v2 = IMDHandleRecordCopyHandleRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t IMDHandleRecordCopyUncanonicalizedID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFD74(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    return 0;
  }

  v2 = *(a2 + 24);
  if (!v2)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7B39794;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 3);
  if (!ValueAtIndex)
  {
    return ValueAtIndex;
  }

  v4 = *MEMORY[0x1E69990F8];
  if (!*MEMORY[0x1E69990F8])
  {
    return ValueAtIndex;
  }

  return v4();
}

void sub_1B7B3977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B39794(uint64_t a1)
{
  v2 = IMDHandleRecordCopyHandleRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t IMDHandleRecordCopyPersonCentricID(uint64_t a1, uint64_t a2)
{
  if (!a2 || (IMSharedHelperPersistMergeID() & 1) == 0)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFDEC(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    return 0;
  }

  v3 = *(a2 + 24);
  if (!v3)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7B39940;
    v15[3] = &unk_1E7CB7920;
    v15[4] = &v16;
    v15[5] = a2;
    _IMDPerformBlock(v15);
    ValueAtIndex = v17[3];
    _Block_object_dispose(&v16, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v3, 4);
  if (!ValueAtIndex)
  {
    return ValueAtIndex;
  }

  v5 = *MEMORY[0x1E69990F8];
  if (!*MEMORY[0x1E69990F8])
  {
    return ValueAtIndex;
  }

  return v5();
}

void sub_1B7B39928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B39940(uint64_t a1)
{
  v2 = IMDHandleRecordCopyHandleRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

void sub_1B7B399A8(uint64_t a1)
{
  v2 = IMDHandleRecordCopyHandleRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 40))
    {
      **(a1 + 40) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 48))
    {
      **(a1 + 48) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 72) && IMSharedHelperPersistMergeID())
    {
      **(a1 + 72) = CSDBRecordCopyProperty();
    }

    CFRelease(v3);
  }
}

const void *_IMDCopyIMDHandleRecordFromXPCObjectServer(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  int64 = xpc_dictionary_get_int64(a1, "recordIdentifier");
  if (int64 < 1)
  {
    return 0;
  }

  return IMDHandleRecordCreateFromRecordIDUnlocked_0(0, int64);
}

xpc_object_t _IMDCopyXPCObjectFromIMDHandleRecordClient(uint64_t a1)
{
  if (!a1 || !*(a1 + 24))
  {
    return 0;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = 0;
  v4 = &off_1E7CB8330;
  do
  {
    v5 = *v4;
    if (CFArrayGetValueAtIndex(*(a1 + 24), v3))
    {
      IMInsertNSStringsToXPCDictionary();
    }

    ++v3;
    v4 += 5;
  }

  while (v3 != 5);
  v6 = *(a1 + 16);
  if (v6)
  {
    xpc_dictionary_set_int64(v2, "recordIdentifier", v6);
  }

  return v2;
}

id _IMDHandleRecordCopyHandlesFromRecords(void *a1)
{
  if (a1)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF70]);
    v6 = objc_msgSend_count(a1, v4, v5);
    v8 = objc_msgSend_initWithCapacity_(v3, v7, v6);
    if (objc_msgSend_count(a1, v9, v10))
    {
      v12 = 0;
      v13 = *MEMORY[0x1E695E480];
      do
      {
        objc_msgSend_objectAtIndex_(a1, v11, v12);
        ID = CSDBRecordGetID();
        v15 = IMDHandleRecordCreateFromRecordIDUnlocked_0(v13, ID);
        if (v15)
        {
          v18 = v15;
          objc_msgSend_addObject_(v8, v16, v15);
          CFRelease(v18);
        }

        ++v12;
      }

      while (v12 < objc_msgSend_count(a1, v16, v17));
    }

    return v8;
  }

  else
  {
    v20 = MEMORY[0x1E695DEC8];

    return objc_alloc_init(v20);
  }
}

id _IMDHandleRecordCopyHandlesFromXPCArray(void *a1)
{
  if (a1)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF70]);
    count = xpc_array_get_count(a1);
    v6 = objc_msgSend_initWithCapacity_(v3, v5, count);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B39D3C;
    applier[3] = &unk_1E7CB8400;
    applier[4] = v6;
    xpc_array_apply(a1, applier);
    return v6;
  }

  else
  {
    v8 = MEMORY[0x1E695DEC8];

    return objc_alloc_init(v8);
  }
}

uint64_t sub_1B7B39D3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDHandleRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v8 = v6;
    objc_msgSend_addObject_(*(a1 + 32), v7, v6);
    CFRelease(v8);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

BOOL IMDDeleteOrphanedHandles(uint64_t a1)
{
  if (a1)
  {
    _IMDSqlOperationBeginQuery(a1, @"DELETE FROM handle WHERE ROWID IN (SELECT ROWID FROM handle h1 WHERE ((SELECT 1 from chat_handle_join WHERE handle_id = h1.ROWID LIMIT 1) IS NULL AND (SELECT 1 from message WHERE handle_id = h1.ROWID LIMIT 1) IS NULL AND (SELECT 1 from message WHERE other_handle = h1.ROWID LIMIT 1) IS NULL));");

    return IMDSqlOperationFinishQuery(a1);
  }

  else
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = IMFileLocationTrimFileName();
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, &stru_1F2FA9728);
    v8 = objc_msgSend_stringWithFormat_(v3, v7, @"Unexpected nil '%@' in %s at %s:%d. %@", @"op", "BOOL IMDDeleteOrphanedHandles(IMDSqlOperation *)", v4, 761, v6);
    v9 = IMGetAssertionFailureHandler();
    if (v9)
    {
      v9(v8);
    }

    else
    {
      v12 = objc_msgSend_warning(MEMORY[0x1E69A6138], v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEFAB0(v8, v12, v13, v14, v15, v16, v17, v18);
      }
    }

    return 0;
  }
}

sqlite3_stmt **IMDFindOrphanedHandleRowIDs(uint64_t a1)
{
  result = _IMDSqlOperationGetRows(a1, @"SELECT ROWID FROM handle h1 WHERE ((SELECT 1 from chat_handle_join WHERE handle_id = h1.ROWID LIMIT 1) IS NULL AND (SELECT 1 from message WHERE handle_id = h1.ROWID LIMIT 1) IS NULL AND (SELECT 1 from message WHERE other_handle = h1.ROWID LIMIT 1) IS NULL);");
  if (*(a1 + 168))
  {

    return 0;
  }

  return result;
}

CFStringRef sub_1B7B39F1C(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<IMDHandleRecord %p [%p]>{}", a1, v3);
}

void sub_1B7B3A348(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_keyPathsToColumns(IMDMessageRecord, a2, a3);
  v4 = MEMORY[0x1E695DF90];
  v7 = objc_msgSend_count(v3, v5, v6);
  v9 = objc_msgSend_dictionaryWithCapacity_(v4, v8, v7);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1B7B3A420;
  v16[3] = &unk_1E7CB8518;
  v17 = v9;
  v10 = v9;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v3, v11, v16);
  v14 = objc_msgSend_copy(v10, v12, v13);
  v15 = qword_1EBA53F18;
  qword_1EBA53F18 = v14;
}

void sub_1B7B3A420(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = objc_msgSend_stringByAppendingString_(@"message.", v6, a3);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v7, v8, v5);
}

void sub_1B7B3A49C(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_mutableCopy(qword_1EBA53F18, a2, a3);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v3, @"chat_message_join.message_date", *MEMORY[0x1E69A7148]);
  v6 = objc_msgSend_copy(v8, v4, v5);
  v7 = qword_1EBA53F28;
  qword_1EBA53F28 = v6;
}

void sub_1B7B3B054(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v6, a2, a4);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v7, a2, a4);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v8, a2, a4);
  }

  v9 = *(a1 + 72);
  v10 = CSDBSqliteBindInt64();
  sub_1B7AEAEE4(v10, v11, v12);
  v17 = CSDBRecordStoreProcessStatement();
  v14 = objc_msgSend__copyMessageRecordsFromCoreSDBResults_(*(a1 + 56), v13, v17);
  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

void sub_1B7B3B378(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  v5 = a1[7];
  if (v5)
  {
    v8 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], a2, @"%K = %@", *MEMORY[0x1E69A6B70], v5);
    objc_msgSend__fetchMessageRecordsFilteredUsingPredicate_sortedUsingDescriptors_inChatsFilteredUsingPredicate_fromHandlesUsingPredicate_parentedOnly_limit_completionHandler_(v3, v7, v4, v6, v8, 0, 0, a1[9], a1[8]);
  }

  else
  {
    objc_msgSend__fetchMessageRecordsFilteredUsingPredicate_sortedUsingDescriptors_inChatsFilteredUsingPredicate_fromHandlesUsingPredicate_parentedOnly_limit_completionHandler_(v3, a2, v4, v6, 0, 0, 0, a1[9], a1[8]);
  }
}

void sub_1B7B3B888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B3B8AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_bindParametersToSqliteWithStatement_(*(a1 + 32), a2, a4);
  sub_1B7AEAEE4(v5, v6, v7);
  v12 = CSDBRecordStoreProcessStatement();
  v9 = objc_msgSend__copyMessageRecordsFromCoreSDBResults_(*(a1 + 40), v8, v12);
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_1B7B3BC9C(uint64_t a1, const char *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend__messageKeyPathsToColumnsQueryingChatJoinTable_sortDescriptors_(*(a1 + 32), a2, *(a1 + 40) != 0, 0);
  if (*(a1 + 48))
  {
    v4 = [IMDPredicateToSQLConverter alloc];
    v6 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v4, v5, *(a1 + 48), v3);
    if (!v6)
    {
      v7 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 48);
        *buf = 136315394;
        *&buf[4] = "[IMDDatabase(LegacyMessages) fetchMessageRecordCountFilteredUsingPredicate:inChatsFilteredUsingPredicate:limit:completionHandler:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Bad message predicate provided to %s (%@)", buf, 0x16u);
      }

      v9 = *(a1 + 56);
      if (v9)
      {
        (*(v9 + 16))(v9, 0);
      }

      v6 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 40))
  {
    v10 = [IMDPredicateToSQLConverter alloc];
    v11 = *(a1 + 40);
    v14 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v12, v13);
    v16 = objc_msgSend_initWithPredicate_keyPathsToColumns_columnPrefix_(v10, v15, v11, v14, @"chat.");

    if (!v16)
    {
      v17 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = *(a1 + 48);
        *buf = 136315394;
        *&buf[4] = "[IMDDatabase(LegacyMessages) fetchMessageRecordCountFilteredUsingPredicate:inChatsFilteredUsingPredicate:limit:completionHandler:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v18;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Bad chat predicate provided to %s (%@)", buf, 0x16u);
      }

      v19 = *(a1 + 56);
      if (v19)
      {
        (*(v19 + 16))(v19, 0);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = @"YES";
    v22 = *(a1 + 40);
    if (!*(a1 + 48))
    {
      v21 = @"NO";
    }

    *buf = 138412546;
    *&buf[4] = v22;
    *&buf[12] = 2112;
    *&buf[14] = v21;
    _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_DEFAULT, "Counting messages for chat: %@ filtered by predicate: %@", buf, 0x16u);
  }

  v23 = *(a1 + 32);
  v26 = objc_msgSend_expression(v6, v24, v25);
  v29 = objc_msgSend_expression(v16, v27, v28);
  v31 = objc_msgSend__queryForMessageRecordCountWithMessageWhereClause_chatWhereClause_limit_(v23, v30, v26, v29, *(a1 + 64));

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v42 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_1B7B3C06C;
  v36[3] = &unk_1E7CB8608;
  v32 = v16;
  v37 = v32;
  v6 = v6;
  v33 = *(a1 + 64);
  v39 = buf;
  v40 = v33;
  v38 = v6;
  _IMDPerformLockedStatementBlockWithQuery(v31, v36);
  v34 = *(a1 + 56);
  if (v34)
  {
    (*(v34 + 16))(v34, *(*&buf[8] + 24));
  }

  _Block_object_dispose(buf, 8);
LABEL_23:

  v35 = *MEMORY[0x1E69E9840];
}

void sub_1B7B3C04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B3C06C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[4];
  if (v6)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v6, a2, a4);
  }

  v7 = a1[5];
  if (v7)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v7, a2, a4);
  }

  if (a1[7])
  {
    CSDBSqliteBindInt64();
  }

  result = CSDBSqliteStatementIntegerResult();
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_1B7B3C404(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CSDBSqliteBindTextFromCFString();
  sub_1B7AEAEE4(v3, v4, v5);
  v13 = CSDBRecordStoreProcessStatement();
  v7 = objc_msgSend__copyMessageRecordsFromCoreSDBResults_(*(a1 + 40), v6, v13);
  v10 = objc_msgSend_firstObject(v7, v8, v9);
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_1B7B3C604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B3C61C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4 && objc_msgSend_length(v4, a2, a3))
  {
    v5 = *(a1 + 32);
    CSDBSqliteBindTextFromCFString();
  }

  v6 = *(a1 + 56);
  v7 = CSDBSqliteBindInt64();
  sub_1B7AEAEE4(v7, v8, v9);
  v14 = CSDBRecordStoreProcessStatement();
  v11 = objc_msgSend__copyMessageRecordsFromCoreSDBResults_(*(a1 + 40), v10, v14);
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

uint64_t sub_1B7B3C788(uint64_t a1)
{
  v2 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  v3 = *(a1 + 40);
  v4 = CSDBSqliteBindTextFromCFString();
  sub_1B7AEAEE4(v4, v5, v6);

  return CSDBRecordStoreProcessStatement();
}

uint64_t sub_1B7B3C928(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CSDBSqliteBindTextFromCFArrayOfCFStrings();
  sub_1B7AEAEE4(v2, v3, v4);

  return CSDBRecordStoreProcessStatement();
}

uint64_t sub_1B7B3CA48(uint64_t a1, const char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_now(MEMORY[0x1E695DF00], a2, a3);
  objc_msgSend___im_nanosecondTimeInterval(v4, v5, v6);
  CSDBSqliteBindInt64();

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = *(a1 + 32);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        CSDBSqliteBindTextFromCFString();
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, &v17, v21, 16);
    }

    while (v10);
  }

  result = CSDBSqliteStatementPerform();
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B3D3C0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7B3D364);
  }

  _Unwind_Resume(a1);
}

void sub_1B7B3D3F4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF02D0(a1, v3, v4);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_guid(*(a1 + 32), v6, v7);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Updated syndication ranges for message: %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7B3FCB8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_msgSend_allObjects(*(a1 + 32), v5, v6);
    v11 = 134218242;
    v12 = objc_msgSend_count(v7, v8, v9);
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Deleted %lu unique messages from indexing with error %@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

BOOL sub_1B7B40688(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7B40734;
      v5[3] = &unk_1E7CB78F8;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B40734(uint64_t a1, __int128 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4))
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a2 + 4);
        LODWORD(v6) = 67109120;
        DWORD1(v6) = v4;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unexpected column in count chat messages query with index %d", &v6, 8u);
      }
    }
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 2);
    *(*(*(a1 + 32) + 8) + 24) = IMDInt64FromSqlColumn(&v6);
  }

  v5 = *MEMORY[0x1E69E9840];
}

BOOL sub_1B7B40D68(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7B40E14;
      v5[3] = &unk_1E7CB78F8;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B40E14(uint64_t a1, __int128 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4))
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a2 + 4);
        LODWORD(v6) = 67109120;
        DWORD1(v6) = v4;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unexpected column in count chat messages query with index %d", &v6, 8u);
      }
    }
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 2);
    *(*(*(a1 + 32) + 8) + 24) = IMDInt64FromSqlColumn(&v6);
  }

  v5 = *MEMORY[0x1E69E9840];
}

BOOL sub_1B7B410BC(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7B41168;
      v5[3] = &unk_1E7CB78F8;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B41168(uint64_t a1, __int128 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4))
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a2 + 4);
        LODWORD(v6) = 67109120;
        DWORD1(v6) = v4;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unexpected column in count chat messages query with index %d", &v6, 8u);
      }
    }
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 2);
    *(*(*(a1 + 32) + 8) + 24) = IMDInt64FromSqlColumn(&v6);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7B414A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7B414C8(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B41590;
  v7[3] = &unk_1E7CB75B0;
  v4 = a1[6];
  v7[4] = a2;
  v7[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B4159C;
  v6[3] = &unk_1E7CB7920;
  v6[4] = a1[5];
  v6[5] = a2;
  return _IMDSqlOperationRunQuery(a2, v3, v7, v6);
}

BOOL sub_1B7B4159C(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v34 = MEMORY[0x1E69E9820];
    *&v3 = 138413314;
    v33 = v3;
    do
    {
      v60 = 0;
      v61 = &v60;
      v62 = 0x3032000000;
      v63 = sub_1B7AE1954;
      v64 = sub_1B7AE24B0;
      v65 = 0;
      v56 = 0;
      v57 = &v56;
      v58 = 0x2020000000;
      v59 = -1;
      v50 = 0;
      v51 = &v50;
      v52 = 0x3032000000;
      v53 = sub_1B7AE1954;
      v54 = sub_1B7AE24B0;
      v55 = 0;
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v49 = 0;
      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = 0x7FFFFFFFFFFFFFFFLL;
      v36 = 0;
      v37 = &v36;
      v38 = 0x3032000000;
      v39 = sub_1B7AE1954;
      v40 = sub_1B7AE24B0;
      v41 = 0;
      v4 = *(a1 + 40);
      v35[0] = v34;
      v35[1] = 3221225472;
      v35[2] = sub_1B7B41AE8;
      v35[3] = &unk_1E7CB86A8;
      v35[4] = &v60;
      v35[5] = &v56;
      v35[6] = &v50;
      v35[7] = &v46;
      v35[8] = &v42;
      v35[9] = &v36;
      IMDSqlOperationIterateRow(v4, v35);
      if (objc_msgSend_length(v61[5], v5, v6) && v57[3] != -1 && objc_msgSend_length(v51[5], v7, v8) && v47[3] && v43[3] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v67[0] = v61[5];
        v66[0] = @"chatGUID";
        v66[1] = @"messageRowID";
        v19 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v9, v57[3]);
        v20 = v51[5];
        v67[1] = v19;
        v67[2] = v20;
        v66[2] = @"messageGUID";
        v66[3] = @"deleteDateInterval";
        v22 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v21, v47[3]);
        v67[3] = v22;
        v66[4] = @"partIndex";
        v24 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v23, v43[3]);
        v67[4] = v24;
        v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v25, v67, v66, 5);
        v10 = objc_msgSend_mutableCopy(v26, v27, v28);

        if (v37[5])
        {
          v30 = JWDecodeCodableObjectWithStandardAllowlist();
          objc_msgSend_setObject_forKeyedSubscript_(v10, v31, v30, @"partBody");
        }

        objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v29, v10, v33);
      }

      else
      {
        v10 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v61[5];
          v13 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v11, v57[3]);
          v14 = v51[5];
          v16 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v15, v47[3]);
          v18 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v17, v43[3]);
          *buf = v33;
          v69 = v12;
          v70 = 2112;
          v71 = v13;
          v72 = 2112;
          v73 = v14;
          v74 = 2112;
          v75 = v16;
          v76 = 2112;
          v77 = v18;
          _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Error in column values returned: %@|%@|%@|%@|%@", buf, 0x34u);
        }
      }

      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(&v42, 8);
      _Block_object_dispose(&v46, 8);
      _Block_object_dispose(&v50, 8);

      _Block_object_dispose(&v56, 8);
      _Block_object_dispose(&v60, 8);

      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  v32 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B41A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B41AE8(void *a1, __int128 *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v19 = *a2;
        v20 = *(a2 + 2);
        v14 = IMDInt64FromSqlColumn(&v19);
        v15 = a1[7];
        break;
      case 4:
        v19 = *a2;
        v20 = *(a2 + 2);
        v14 = IMDInt64FromSqlColumn(&v19);
        v15 = a1[8];
        break;
      case 5:
        v19 = *a2;
        v20 = *(a2 + 2);
        v8 = IMDBlobFromSqlColumn(&v19);
        v9 = *(a1[9] + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        goto LABEL_19;
      default:
        goto LABEL_12;
    }

LABEL_18:
    *(*(v15 + 8) + 24) = v14;
    goto LABEL_19;
  }

  switch(v4)
  {
    case 0:
      v19 = *a2;
      v20 = *(a2 + 2);
      v11 = IMDStringFromSqlColumn(&v19);
      v12 = *(a1[4] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      goto LABEL_19;
    case 1:
      v19 = *a2;
      v20 = *(a2 + 2);
      v14 = IMDInt64FromSqlColumn(&v19);
      v15 = a1[5];
      goto LABEL_18;
    case 2:
      v19 = *a2;
      v20 = *(a2 + 2);
      v5 = IMDStringFromSqlColumn(&v19);
      v6 = *(a1[6] + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      goto LABEL_19;
  }

LABEL_12:
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a2 + 4);
      LODWORD(v19) = 67109120;
      DWORD1(v19) = v17;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Recently Deleted | Unexpected column in messages pending update query with index %d", &v19, 8u);
    }
  }

LABEL_19:
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1B7B41EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7B41F20(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7B41FEC;
  v5[3] = &unk_1E7CB75B0;
  v2 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7B41FF8;
  v4[3] = &unk_1E7CB7920;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT urrm.chat_guid, urrm.message_guid, urrm.part_index FROM unsynced_removed_recoverable_messages AS urrm LIMIT ?;", v5, v4);
}

BOOL sub_1B7B41FF8(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = sub_1B7AE1954;
    v4 = sub_1B7AE24B0;
    v5 = MEMORY[0x1E69E9820];
    do
    {
      v37 = 0;
      v38 = &v37;
      v39 = 0x3032000000;
      v40 = v3;
      v41 = v4;
      v42 = 0;
      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = sub_1B7AE1954;
      v35 = sub_1B7AE24B0;
      v36 = 0;
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0x7FFFFFFFFFFFFFFFLL;
      v6 = *(a1 + 40);
      v26[0] = v5;
      v26[1] = 3221225472;
      v26[2] = sub_1B7B42380;
      v26[3] = &unk_1E7CB86F8;
      v26[4] = &v37;
      v26[5] = &v31;
      v26[6] = &v27;
      IMDSqlOperationIterateRow(v6, v26);
      if (objc_msgSend_length(v38[5], v7, v8) && objc_msgSend_length(v32[5], v9, v10) && (v12 = v28[3], v12 != 0x7FFFFFFFFFFFFFFFLL))
      {
        v20 = v38[5];
        v43[0] = @"chatGUID";
        v43[1] = @"messageGUID";
        v21 = v32[5];
        v44[0] = v20;
        v44[1] = v21;
        v43[2] = @"partIndex";
        v22 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v11, v12);
        v44[2] = v22;
        v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v44, v43, 3);

        objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v24, v13);
      }

      else
      {
        v13 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v4;
          v16 = v3;
          v17 = v38[5];
          v18 = v32[5];
          v19 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v14, v28[3]);
          *buf = 138412802;
          v46 = v17;
          v47 = 2112;
          v48 = v18;
          v49 = 2112;
          v50 = v19;
          _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "Error in column values returned: %@|%@|%@", buf, 0x20u);

          v3 = v16;
          v4 = v15;
        }
      }

      _Block_object_dispose(&v27, 8);
      _Block_object_dispose(&v31, 8);

      _Block_object_dispose(&v37, 8);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B4233C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B42380(void *a1, __int128 *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  if (v4 == 2)
  {
    v14 = *a2;
    v15 = *(a2 + 2);
    *(*(a1[6] + 8) + 24) = IMDInt64FromSqlColumn(&v14);
  }

  else if (v4 == 1)
  {
    v14 = *a2;
    v15 = *(a2 + 2);
    v8 = IMDStringFromSqlColumn(&v14);
    v9 = *(a1[5] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a2 + 4);
        LODWORD(v14) = 67109120;
        DWORD1(v14) = v12;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Recently Deleted | Unexpected column in messages pending delete query with index %d", &v14, 8u);
      }
    }
  }

  else
  {
    v14 = *a2;
    v15 = *(a2 + 2);
    v5 = IMDStringFromSqlColumn(&v14);
    v6 = *(a1[4] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1B7B43200(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Deleted %@ from index with error %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7B438BC(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B43988;
  v3[3] = &unk_1E7CB8720;
  v3[4] = &v4;
  IMDRunSqlOperation(v3);
  v2 = v5[3];
  (*(*(a1 + 32) + 16))();
  _Block_object_dispose(&v4, 8);
}

void sub_1B7B43970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7B43988(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B43A10;
  v3[3] = &unk_1E7CB7920;
  v3[4] = *(a1 + 32);
  v3[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT COUNT(1) FROM message m INDEXED BY message_idx_isRead_isFromMe_itemType  INNER JOIN chat_message_join cm ON cm.message_id = m.rowid  INNER JOIN chat c ON c.ROWID = cm.chat_id  WHERE m.is_read == 0  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0  AND c.is_filtered != 2  ORDER BY m.ROWID DESC;", 0, v3);
}

BOOL sub_1B7B43A10(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7B43ABC;
      v5[3] = &unk_1E7CB78F8;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B43ABC(uint64_t a1, __int128 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4))
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a2 + 4);
        LODWORD(v6) = 67109120;
        DWORD1(v6) = v4;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unexpected column in count chat messages query with index %d", &v6, 8u);
      }
    }
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 2);
    *(*(*(a1 + 32) + 8) + 24) = IMDInt64FromSqlColumn(&v6);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7B43CDC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_1B7B43FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id IMDAttachmentRecordGetAttachmentDiagnosticInfo()
{
  v17 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v2 = objc_msgSend_array(MEMORY[0x1E695DF70], v0, v1);
    memset(v14, 0, sizeof(v14));
    IMDSqlOperationInitWithSharedCSDBDatabase(v14);
    _IMDSqlOperationBeginQuery(v14, @"SELECT guid, original_guid, uti, filename, total_bytes, ck_sync_state, transfer_state, hide_attachment, is_sticker, mime_type, attribution_info FROM attachment;");
    while (IMDSqlOperationHasRows(v14))
    {
      v3 = objc_alloc_init(IMDAttachmentDiagnosticInfo);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B44854;
      v12[3] = &unk_1E7CB87C0;
      v13 = v3;
      v4 = v3;
      IMDSqlOperationIterateRow(v14, v12);
      objc_msgSend_addObject_(v2, v5, v4);
    }

    IMDSqlOperationFinishQuery(v14);
    IMDSqlOperationRelease(v14, 0);
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_count(v2, v7, v8);
      *buf = 134217984;
      v16 = v9;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Loaded %ld IMDAttachment info objects from database", buf, 0xCu);
    }
  }

  else
  {
    v2 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_1B7B44854(uint64_t a1, __int128 *a2)
{
  v3 = *(a2 + 4);
  if (v3 <= 4)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        if (v3 != 1)
        {
          return;
        }

        v27 = *a2;
        v28 = *(a2 + 2);
        v8 = IMDStringFromSqlColumn(&v27);
        objc_msgSend_setOriginalGUID_(*(a1 + 32), v14, v8);
      }

      else
      {
        v27 = *a2;
        v28 = *(a2 + 2);
        v8 = IMDStringFromSqlColumn(&v27);
        objc_msgSend_setGuid_(*(a1 + 32), v15, v8);
      }

      goto LABEL_25;
    }

    if (v3 == 2)
    {
      v27 = *a2;
      v28 = *(a2 + 2);
      v8 = IMDStringFromSqlColumn(&v27);
      objc_msgSend_setUti_(*(a1 + 32), v22, v8);
      goto LABEL_25;
    }

    if (v3 != 3)
    {
      v27 = *a2;
      v28 = *(a2 + 2);
      v6 = IMDInt64FromSqlColumn(&v27);
      objc_msgSend_setTotal_bytes_(*(a1 + 32), v7, v6);
      return;
    }

    v27 = *a2;
    v28 = *(a2 + 2);
    v8 = IMDStringFromSqlColumn(&v27);
    v11 = objc_msgSend_stringByExpandingTildeInPath(v8, v16, v17);
    objc_msgSend_setFilePath_(*(a1 + 32), v18, v11);
    goto LABEL_21;
  }

  if (v3 > 7)
  {
    if (v3 == 8)
    {
      v27 = *a2;
      v28 = *(a2 + 2);
      v25 = IMDInt64FromSqlColumn(&v27);
      objc_msgSend_setIs_sticker_(*(a1 + 32), v26, v25);
      return;
    }

    if (v3 == 9)
    {
      v27 = *a2;
      v28 = *(a2 + 2);
      v8 = IMDStringFromSqlColumn(&v27);
      objc_msgSend_setMime_type_(*(a1 + 32), v21, v8);
      goto LABEL_25;
    }

    if (v3 != 10)
    {
      return;
    }

    v27 = *a2;
    v28 = *(a2 + 2);
    v8 = IMDBlobFromSqlColumn(&v27);
    if (!v8)
    {
      goto LABEL_25;
    }

    v9 = JWDecodeDictionary();
    v11 = v9;
    if (v9)
    {
      v12 = objc_msgSend_objectForKeyedSubscript_(v9, v10, *MEMORY[0x1E69A6FB0]);
      objc_msgSend_setPlugin_identifier_(*(a1 + 32), v13, v12);
    }

LABEL_21:

LABEL_25:
    return;
  }

  if (v3 == 5)
  {
    v27 = *a2;
    v28 = *(a2 + 2);
    v23 = IMDInt64FromSqlColumn(&v27);
    objc_msgSend_setCk_sync_state_(*(a1 + 32), v24, v23);
  }

  else
  {
    v27 = *a2;
    v28 = *(a2 + 2);
    if (v3 == 6)
    {
      v19 = IMDInt64FromSqlColumn(&v27);
      objc_msgSend_setTransfer_state_(*(a1 + 32), v20, v19);
    }

    else
    {
      v4 = IMDInt64FromSqlColumn(&v27);
      objc_msgSend_setHide_attachment_(*(a1 + 32), v5, v4);
    }
  }
}

uint64_t IMDDatabaseTriggers()
{
  if (qword_1EDBE6318[0] != -1)
  {
    sub_1B7CF1734();
  }

  return qword_1EDBE6310;
}

BOOL IMDDropAllTriggersWithOperation(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v31 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1B7B44DC0;
  v25[3] = &unk_1E7CB6FD0;
  v25[4] = v5;
  v25[5] = a1;
  _IMDSqlOperationRunQuery(a1, @"SELECT name FROM sqlite_master WHERE type = 'trigger'", 0, v25);
  if (!*(a1 + 168))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v21, v30, 16);
    if (v9)
    {
      v11 = v9;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v5);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"DROP TRIGGER IF EXISTS %@", v14);
          if (!_IMDSqlOperationRunQuery(a1, v15, 0, 0))
          {
            v17 = IMLogHandleForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v20 = IMDSqlOperationErrorDescription(a1, v18, v19);
              *buf = 138412546;
              v27 = v14;
              v28 = 2112;
              v29 = v20;
              _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Dropped trigger failed: %@: %@", buf, 0x16u);
            }

            goto LABEL_2;
          }

          if (v3)
          {
            v16 = IMLogHandleForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v27 = v14;
              _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Dropped trigger: %@", buf, 0xCu);
            }
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v10, &v21, v30, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_2:
  result = *(a1 + 168) == 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1B7B44DC0(uint64_t a1)
{
  for (result = IMDSqlOperationHasRows(*(a1 + 40)); result; result = IMDSqlOperationHasRows(*(a1 + 40)))
  {
    IMDSqlOperationColumnByIndex(*(a1 + 40), 0, v5);
    v3 = IMDStringFromSqlColumn(v5);
    objc_msgSend_addObject_(*(a1 + 32), v4, v3);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  return result;
}

BOOL IMDDropAllTriggers(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B44EA4;
  v3[3] = &unk_1E7CB8940;
  v4 = a2;
  v3[4] = a1;
  return IMDRunSqlOperation(v3);
}

uint64_t sub_1B7B44EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  IMDDropAllTriggersWithOperation(a2, *(a1 + 40), a3);
  v5 = *(a1 + 32);

  return IMDSqlOperationGetError(a2, v5);
}

uint64_t IMDSelectAllTriggers(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_1B7AE1974;
  v11 = sub_1B7AE24C0;
  v12 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B44FE0;
  v6[3] = &unk_1E7CB7948;
  v6[4] = &v7;
  v6[5] = a1;
  IMDRunSqlOperation(v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1B7B44FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B44FE0(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7B450A4;
  v5[3] = &unk_1E7CB7920;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  _IMDSqlOperationRunQuery(a2, @"select * from sqlite_master where type = 'trigger'", 0, v5);
  CFRelease(@"select * from sqlite_master where type = 'trigger'");
  result = IMDSqlOperationGetError(a2, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }

  return result;
}

BOOL sub_1B7B450A4(uint64_t a1)
{
  for (result = IMDSqlOperationHasRows(*(a1 + 40)); result; result = IMDSqlOperationHasRows(*(a1 + 40)))
  {
    v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v3, v4);
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7B45174;
    v8[3] = &unk_1E7CB6FA8;
    v8[4] = v5;
    IMDSqlOperationIterateRow(v6, v8);
    objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v7, v5);
  }

  return result;
}

void sub_1B7B45174(uint64_t a1, __int128 *a2)
{
  v14 = *a2;
  v15 = *(a2 + 2);
  v5 = IMDStringFromSqlColumn(&v14);
  v6 = *(a1 + 32);
  v7 = MEMORY[0x1E696AEC0];
  v8 = *(a2 + 1);
  if (v8)
  {
    goto LABEL_5;
  }

  v9 = **a2;
  if (!v9)
  {
    v8 = 0;
LABEL_5:
    v12 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v4, v8, 4);
    goto LABEL_6;
  }

  v10 = sqlite3_column_name(v9, *(a2 + 4));
  *(a2 + 1) = v10;
  v12 = objc_msgSend_stringWithCString_encoding_(v7, v11, v10, 4);
LABEL_6:
  objc_msgSend_setObject_forKey_(v6, v13, v5, v12);
  CFRelease(v5);
}

BOOL IMDDropTriggersWithTriggerNames(void *a1, int a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v43 = xmmword_1E7CB8988;
    v44 = *off_1E7CB8998;
    v3 = MEMORY[0x1E696AEC0];
    v4 = IMFileLocationTrimFileName();
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, &stru_1F2FA9728);
    v8 = objc_msgSend_stringWithFormat_(v3, v7, @"Unexpected nil '%@' in %s at %s:%d. %@", @"names", "BOOL IMDDropTriggersWithTriggerNames(NSArray *, BOOL)", v4, 204, v6);
    v9 = IMGetAssertionFailureHandler();
    if (v9)
    {
      v9(v8);
    }

    else
    {
      v12 = objc_msgSend_warning(MEMORY[0x1E69A6138], v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEFAB0(v8, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  IMDSqlOperationInitWithSharedCSDBDatabase(&v43);
  IMDSqlOperationBeginTransaction(&v43);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v19, &v39, v58, 16);
  if (v20)
  {
    v21 = v20;
    v22 = *v40;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(a1);
        }

        v24 = *(*(&v39 + 1) + 8 * i);
        v25 = objc_alloc(MEMORY[0x1E696AEC0]);
        v27 = objc_msgSend_initWithFormat_(v25, v26, @"DROP TRIGGER IF EXISTS %@", v24);
        _IMDSqlOperationBeginQuery(&v43, v27);

        IMDSqlOperationFinishQuery(&v43);
        if (*(&v53 + 1))
        {
          v29 = IMLogHandleForCategory();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            continue;
          }

          v31 = IMDSqlOperationErrorDescription(&v43, v28, v30);
          *buf = 138412546;
          v55 = v24;
          v56 = 2112;
          v57 = v31;
          v32 = v29;
          v33 = "dropping trigger failed: %@: %@";
          v34 = 22;
          goto LABEL_17;
        }

        if (a2)
        {
          v35 = IMLogHandleForCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v55 = v24;
            v32 = v35;
            v33 = "dropped trigger ok: %@";
            v34 = 12;
LABEL_17:
            _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, v33, buf, v34);
            continue;
          }
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v28, &v39, v58, 16);
    }

    while (v21);
  }

  IMDSqlOperationCommitOrRevertTransaction(&v43);
  result = IMDSqlOperationRelease(&v43, 0);
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL IMDCreateTriggersWithTriggerNames(void *a1, int a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v44 = xmmword_1E7CB89B0;
    v45 = *off_1E7CB89C0;
    v3 = MEMORY[0x1E696AEC0];
    v4 = IMFileLocationTrimFileName();
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, &stru_1F2FA9728);
    v8 = objc_msgSend_stringWithFormat_(v3, v7, @"Unexpected nil '%@' in %s at %s:%d. %@", @"names", "BOOL IMDCreateTriggersWithTriggerNames(NSArray *, BOOL)", v4, 231, v6);
    v9 = IMGetAssertionFailureHandler();
    if (v9)
    {
      v9(v8);
    }

    else
    {
      v12 = objc_msgSend_warning(MEMORY[0x1E69A6138], v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEFAB0(v8, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  IMDSqlOperationInitWithSharedCSDBDatabase(&v44);
  IMDSqlOperationBeginTransaction(&v44);
  if (qword_1EDBE6318[0] != -1)
  {
    sub_1B7AE94E0();
  }

  v20 = qword_1EDBE6310;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v19, &v40, v63, 16);
  if (v21)
  {
    v23 = v21;
    v24 = *v41;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(a1);
        }

        v26 = *(*(&v40 + 1) + 8 * i);
        v27 = objc_msgSend_objectForKey_(v20, v22, v26);
        if (v27)
        {
          v28 = v27;
          _IMDSqlOperationBeginQuery(&v44, v27);
          IMDSqlOperationFinishQuery(&v44);
          if (*(&v54 + 1))
          {
            v29 = IMLogHandleForCategory();
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              continue;
            }

            v31 = IMDSqlOperationErrorDescription(&v44, v22, v30);
            *buf = 138412546;
            v56 = v26;
            v57 = 2112;
            v58 = v31;
            v32 = v29;
            v33 = "Create trigger failed: %@: %@";
            goto LABEL_22;
          }

          if (a2)
          {
            v36 = IMLogHandleForCategory();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v56 = v26;
              v57 = 2112;
              v58 = v28;
              v32 = v36;
              v33 = "Created trigger ok: %@ trigger %@";
LABEL_22:
              _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, v33, buf, 0x16u);
              continue;
            }
          }
        }

        else
        {
          v34 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, &stru_1F2FA9728);
            *buf = 136315906;
            v56 = "sql";
            v57 = 2080;
            v58 = "BOOL IMDCreateTriggersWithTriggerNames(NSArray *, BOOL)";
            v59 = 1024;
            v60 = 240;
            v61 = 2112;
            v62 = v35;
            _os_log_error_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", buf, 0x26u);
          }
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v22, &v40, v63, 16);
    }

    while (v23);
  }

  IMDSqlOperationCommitOrRevertTransaction(&v44);
  result = IMDSqlOperationRelease(&v44, 0);
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

id IMDGetTimeStampedFilePath(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, &stru_1F2FA9728);
    v10 = objc_msgSend_stringWithFormat_(v5, v9, @"Unexpected nil '%@' in %s at %s:%d. %@", @"path", "NSString *IMDGetTimeStampedFilePath(NSString *__strong, NSString *__strong)", v6, 31, v8);

    v11 = IMGetAssertionFailureHandler();
    if (v11)
    {
      v11(v10);
    }

    else
    {
      v14 = objc_msgSend_warning(MEMORY[0x1E69A6138], v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  v15 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setDateFormat_(v15, v16, @"yyMMdd-HHmmss");
  v19 = objc_msgSend_pathExtension(v3, v17, v18);
  v22 = objc_msgSend_stringByDeletingPathExtension(v3, v20, v21);
  v25 = objc_msgSend_date(MEMORY[0x1E695DF00], v23, v24);
  v27 = objc_msgSend_stringFromDate_(v15, v26, v25);

  if (v4)
  {
    objc_msgSend_stringByAppendingFormat_(v22, v28, @"-%@-%@.%@", v4, v27, v19);
  }

  else
  {
    objc_msgSend_stringByAppendingFormat_(v22, v28, @"-%@.%@", v27, v19, v31);
  }
  v29 = ;

  return v29;
}

id IMDGetDestinationFilePath(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v9 = a3;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = IMFileLocationTrimFileName();
  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, &stru_1F2FA9728);
  v15 = objc_msgSend_stringWithFormat_(v10, v14, @"Unexpected nil '%@' in %s at %s:%d. %@", @"originalPath", "NSString *IMDGetDestinationFilePath(NSString *__strong, NSString *__strong, NSString *__strong)", v11, 47, v13);

  v16 = IMGetAssertionFailureHandler();
  if (v16)
  {
    v16(v15);
  }

  else
  {
    v19 = objc_msgSend_warning(MEMORY[0x1E69A6138], v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE318();
    }
  }

  if (!v6)
  {
LABEL_10:
    v20 = MEMORY[0x1E696AEC0];
    v21 = IMFileLocationTrimFileName();
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, &stru_1F2FA9728);
    v25 = objc_msgSend_stringWithFormat_(v20, v24, @"Unexpected nil '%@' in %s at %s:%d. %@", @"destFolder", "NSString *IMDGetDestinationFilePath(NSString *__strong, NSString *__strong, NSString *__strong)", v21, 48, v23);

    v26 = IMGetAssertionFailureHandler();
    if (v26)
    {
      v26(v25);
    }

    else
    {
      v29 = objc_msgSend_warning(MEMORY[0x1E69A6138], v27, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

LABEL_16:
  v30 = objc_msgSend_lastPathComponent(v5, v7, v8);
  if (!v30)
  {
    v31 = MEMORY[0x1E696AEC0];
    v32 = IMFileLocationTrimFileName();
    v34 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v33, &stru_1F2FA9728);
    v36 = objc_msgSend_stringWithFormat_(v31, v35, @"Unexpected nil '%@' in %s at %s:%d. %@", @"fileName", "NSString *IMDGetDestinationFilePath(NSString *__strong, NSString *__strong, NSString *__strong)", v32, 51, v34);

    v37 = IMGetAssertionFailureHandler();
    if (v37)
    {
      v37(v36);
    }

    else
    {
      v40 = objc_msgSend_warning(MEMORY[0x1E69A6138], v38, v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  v42 = IMDGetTimeStampedFilePath(v30, v9);
  if (v42)
  {
    v43 = objc_msgSend_stringByAppendingPathComponent_(v6, v41, v42);
  }

  else
  {
    v44 = MEMORY[0x1E696AEC0];
    v45 = IMFileLocationTrimFileName();
    v47 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v46, &stru_1F2FA9728);
    v49 = objc_msgSend_stringWithFormat_(v44, v48, @"Unexpected nil '%@' in %s at %s:%d. %@", @"newFileName", "NSString *IMDGetDestinationFilePath(NSString *__strong, NSString *__strong, NSString *__strong)", v45, 54, v47);

    v50 = IMGetAssertionFailureHandler();
    if (v50)
    {
      v50(v49);
    }

    else
    {
      v53 = objc_msgSend_warning(MEMORY[0x1E69A6138], v51, v52);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }

    v43 = 0;
  }

  return v43;
}

void IMDRegisterReconnectBlockWithIdentifier(void *a1)
{
  v5 = a1;
  v1 = IMDIsRunningInDatabaseServerProcess();
  if (v1)
  {
    IMDSMSRecordStoreUseProtectedDatabase(v1, v2, v3);
    v4 = IMDSMSRecordStoreCopySMSDBPathWithCreate(0);
    CSDBRegisterReconnectBlockWithIdentifier();
  }
}

uint64_t IMDDeregisterReconnectBlockWithIdentifier(uint64_t a1)
{
  result = IMDIsRunningInDatabaseServerProcess();
  if (result)
  {

    return MEMORY[0x1EEE00240](a1);
  }

  return result;
}

id IMDGetDatabasePath(uint64_t a1, const char *a2, uint64_t a3)
{
  IMDSMSRecordStoreUseProtectedDatabase(a1, a2, a3);
  v3 = IMDSMSRecordStoreCopySMSDBPathWithCreate(1);
  if (!v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = IMFileLocationTrimFileName();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, &stru_1F2FA9728);
    v9 = objc_msgSend_stringWithFormat_(v4, v8, @"Unexpected nil '%@' in %s at %s:%d. %@", @"originalPath", "NSString *IMDGetDatabasePath(void)", v5, 74, v7);

    v10 = IMGetAssertionFailureHandler();
    if (v10)
    {
      v10(v9);
    }

    else
    {
      v13 = objc_msgSend_warning(MEMORY[0x1E69A6138], v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  return v3;
}

id IMDGetDefaultTrimmedDatabaseFolderPath(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = IMDGetDatabasePath(a1, a2, a3);
  v6 = objc_msgSend_stringByDeletingLastPathComponent(v3, v4, v5);

  return v6;
}

id IMDGetDefaultTrimmedDatabaseFilePath(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = IMDGetDatabasePath(a1, a2, a3);
  v6 = IMDGetDefaultTrimmedDatabaseFolderPath(v3, v4, v5);
  v7 = IMDGetDestinationFilePath(v3, v6, @"trimmed");

  return v7;
}

uint64_t IMDTrimDatabaseToDays(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a1;
  v9 = [IMTrimDatabaseToDays alloc];
  v11 = objc_msgSend_initWithSourceDatabasePath_destinationDatabasePath_newerThanDays_(v9, v10, v8, v7, a3);

  v12 = sub_1B7B46214(v11, a4);
  return v12;
}

uint64_t sub_1B7B46214(void *a1, void *a2)
{
  v4 = a1;
  if (!v4)
  {
    v18 = xmmword_1E7CB8AC8;
    v19 = *off_1E7CB8AD8;
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, &stru_1F2FA9728);
    v10 = objc_msgSend_stringWithFormat_(v5, v9, @"Unexpected nil '%@' in %s at %s:%d. %@", @"copier", "BOOL _IMDArchiveDatabase(IMAbstractDatabaseArchiver *__strong, NSError *__autoreleasing *)", v6, 79, v8);

    v11 = IMGetAssertionFailureHandler();
    if (v11)
    {
      v11(v10);
    }

    else
    {
      v14 = objc_msgSend_warning(MEMORY[0x1E69A6138], v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  *&v18 = 0;
  *(&v18 + 1) = &v18;
  *&v19 = 0x3032000000;
  *(&v19 + 1) = sub_1B7AE1984;
  v20 = sub_1B7AE24CC;
  v21 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1B7B46E28;
  v17[3] = &unk_1E7CB66D8;
  v17[4] = &v18;
  v15 = objc_msgSend_copyDatabase_(v4, v3, v17);
  if (a2)
  {
    *a2 = *(*(&v18 + 1) + 40);
  }

  _Block_object_dispose(&v18, 8);

  return v15;
}

void sub_1B7B463EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t IMDTrimDatabaseToMessageCount(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a1;
  v9 = [IMTrimDatabaseToMessageCount alloc];
  v11 = objc_msgSend_initWithSourceDatabasePath_destinationDatabasePath_messageCount_(v9, v10, v8, v7, a3);

  v12 = sub_1B7B46214(v11, a4);
  return v12;
}

uint64_t IMDTrimSharedDatabaseToDays(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = IMDIsRunningInDatabaseServerProcess();
  if (v6)
  {
    v9 = IMDGetDatabasePath(v6, v7, v8);
    v10 = IMDTrimDatabaseToDays(v9, v5, a2, a3);
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B465A0;
    v12[3] = &unk_1E7CB6838;
    v12[4] = &v13;
    __syncXPCIMDSplitDatabaseByDays_IPCAction(v12, a2);
    v10 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  return v10 & 1;
}

void sub_1B7B46588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7B465A0(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_BOOL(xdict, "BOOL_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDTrimSharedDatabaseToMessageCount(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = IMDIsRunningInDatabaseServerProcess();
  if (v6)
  {
    v9 = IMDGetDatabasePath(v6, v7, v8);
    v10 = IMDTrimDatabaseToMessageCount(v9, v5, a2, a3);
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B466F0;
    v12[3] = &unk_1E7CB6838;
    v12[4] = &v13;
    __syncXPCIMDSplitDatabaseByRecentCount_IPCAction(v12, a2);
    v10 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  return v10 & 1;
}

void sub_1B7B466D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7B466F0(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_BOOL(xdict, "BOOL_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void IMDSwitchToDatabase(void *a1)
{
  v1 = a1;
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Tried to change DB on non gizmo device. This is not supported!!", v3, 2u);
    }
  }
}

uint64_t IMDDowngradeDatabaseToVersion(void *a1, void *a2, uint64_t a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "QuickSwitch about to downgrade database at path %@ to %@", buf, 0x16u);
  }

  SchemaVersion = IMDSMSRecordStoreGetSchemaVersion();
  v11 = a3 > 9005 && SchemaVersion > a3;
  v12 = v11;
  if (v11)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v13 = [IMDWhitetailToCoralDowngrader alloc];
      v15 = objc_msgSend_initWithSourceDatabasePath_destinationDatabasePath_(v13, v14, v7, v8);
      v16 = sub_1B7B46214(v15, a4);
      *(v26 + 24) = v16;
    }

    else
    {
      v19 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Quickswitch Downgrade Sending XPC now...", buf, 2u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v30 = sub_1B7AE1984;
      v31 = sub_1B7AE24CC;
      v32 = 0;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1B7B46BA8;
      v24[3] = &unk_1E7CB74D0;
      v24[4] = &v25;
      v24[5] = buf;
      __IMDDowngradeDatabaseToVersion_IPCAction(v24, v7, v8);
      if (a4)
      {
        v20 = *(*&buf[8] + 40);
        if (v20)
        {
          *a4 = v20;
        }
      }

      _Block_object_dispose(buf, 8);
    }

    if ((v26[3] & 1) == 0 && IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Database QuickSwitch Downgrade got unsuccessful result", buf, 2u);
      }
    }

    _Block_object_dispose(&v25, 8);
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Database QuickSwitch tried to downgraded incompatible database versioin %ld", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1B7B46BA8(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(v3, "BOOL_result");
  v4 = _IMDGetErrorFromXPCDictionary(v3);

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id _IMDGetErrorFromXPCDictionary(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = xpc_dictionary_get_string(v1, "error_domain")) != 0)
  {
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, v3);
    int64 = xpc_dictionary_get_int64(v2, "error_code");
    string = xpc_dictionary_get_string(v2, "error_localized_description");
    if (string)
    {
      v9 = MEMORY[0x1E695DF20];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v8, string);
      v12 = objc_msgSend_dictionaryWithObject_forKey_(v9, v11, v10, *MEMORY[0x1E696A578]);
    }

    else
    {
      v12 = 0;
    }

    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v13 = objc_msgSend_initWithDomain_code_userInfo_(v14, v15, v5, int64, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void _IMDInsertErrorToXPCDictionary(void *a1, uint64_t a2, void *a3)
{
  if (a1 && a3)
  {
    v4 = a3;
    v5 = a1;
    v8 = objc_msgSend_domain(v4, v6, v7);
    v9 = v8;
    v12 = objc_msgSend_UTF8String(v9, v10, v11);
    xpc_dictionary_set_string(v5, "error_domain", v12);

    v15 = objc_msgSend_code(v4, v13, v14);
    xpc_dictionary_set_int64(v5, "error_code", v15);
    v22 = objc_msgSend_localizedDescription(v4, v16, v17);

    v18 = v22;
    v21 = objc_msgSend_UTF8String(v22, v19, v20);
    xpc_dictionary_set_string(v5, "error_localized_description", v21);
  }
}

id sub_1B7B46E48(void *a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend___imdp_persistenceServiceListener(a1, a2, a3);
  if (!v5)
  {
    sub_1B7CF1748(0, v3, v4);
  }

  return v5;
}

void sub_1B7B46EA0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend____imdp_persistenceServiceListener(a1, v8, v9);
  objc_msgSend_connection_registerCleanupHandlerWithID_usingBlock_(v11, v10, a1, v7, v6);
}

void sub_1B7B46F20(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = objc_msgSend____imdp_persistenceServiceListener(a1, v5, v6);
  objc_msgSend_connection_unregisterCleanupHandlerWithID_(v8, v7, a1, v4);
}

void sub_1B7B47218()
{
  v0 = [IMDDatabase alloc];
  inited = objc_msgSend__initAsSynchronous_(v0, v1, 0);
  v3 = qword_1EBA53B20;
  qword_1EBA53B20 = inited;
}

void sub_1B7B4725C()
{
  v0 = objc_alloc_init(IMDDatabase);
  v1 = qword_1EDBE5BC8;
  qword_1EDBE5BC8 = v0;
}

void sub_1B7B47298()
{
  v0 = objc_alloc_init(IMDDatabaseClient);
  v1 = qword_1EBA53B30;
  qword_1EBA53B30 = v0;
}

void sub_1B7B47374(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69A80D8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B47414;
  v6[3] = &unk_1E7CB8AF0;
  v6[4] = *(a1 + 32);
  v4 = objc_msgSend_initWithProtocol_forwardingHandler_(v2, v3, &unk_1F2FE88F8, v6);
  v5 = qword_1EBA53B60;
  qword_1EBA53B60 = v4;
}

id sub_1B7B47414(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__legacyDatabaseClient(*(a1 + 32), a2, a3);
  if (objc_opt_respondsToSelector())
  {
    v6 = v3;
  }

  else
  {
    v6 = objc_msgSend_databaseQueryProvider(IMDPersistenceService, v4, v5);
  }

  v7 = v6;

  return v7;
}

void sub_1B7B47484(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69A80D8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7AE07C8;
  v6[3] = &unk_1E7CB8AF0;
  v6[4] = *(a1 + 32);
  v4 = objc_msgSend_initWithProtocol_forwardingHandler_(v2, v3, &unk_1F2FE88F8, v6);
  v5 = qword_1EBA53B50;
  qword_1EBA53B50 = v4;
}

uint64_t _IMDSMSDatabaseMigrateData_38_6100()
{
  v0 = CSDBSqliteConnectionStatementForSQL();
  if (v0)
  {
    v1 = v0;
    v2 = *(v0 + 8);
    if (v2)
    {
      if (sqlite3_step(v2) == 100)
      {
        do
        {
          v3 = objc_autoreleasePoolPush();
          sqlite3_column_int(*(v1 + 8), 0);
          sqlite3_column_int(*(v1 + 8), 1);
          sqlite3_column_int(*(v1 + 8), 2);
          v4 = CSDBSqliteConnectionStatementForSQL();
          if (v4 && *(v4 + 8))
          {
            CSDBSqliteBindInt();
            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }

          v5 = CSDBSqliteConnectionStatementForSQL();
          if (v5 && *(v5 + 8))
          {
            CSDBSqliteBindInt();
            CSDBSqliteBindInt();
            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }

          v6 = CSDBSqliteConnectionStatementForSQL();
          if (v6 && *(v6 + 8))
          {
            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }

          objc_autoreleasePoolPop(v3);
        }

        while (sqlite3_step(*(v1 + 8)) == 100);
      }

      CSDBSqliteStatementReset();
    }
  }

  v7 = CSDBSqliteConnectionStatementForSQL();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + 8);
    if (v9)
    {
      if (sqlite3_step(v9) == 100)
      {
        v10 = *MEMORY[0x1E695E480];
        do
        {
          v11 = objc_autoreleasePoolPush();
          sqlite3_column_int(*(v8 + 8), 0);
          if (sqlite3_column_text(*(v8 + 8), 1))
          {
            v12 = sqlite3_column_text(*(v8 + 8), 1);
            v13 = CFStringCreateWithCString(v10, v12, 0x8000100u);
          }

          else
          {
            v13 = 0;
          }

          if (sqlite3_column_text(*(v8 + 8), 2))
          {
            v14 = sqlite3_column_text(*(v8 + 8), 2);
            v15 = CFStringCreateWithCString(v10, v14, 0x8000100u);
          }

          else
          {
            v15 = 0;
          }

          IMComponentsFromChatGUID();
          objc_msgSend_lowercaseString(v15, v16, v17, 0);
          v18 = IMCopyGUIDForChat();
          v19 = CSDBSqliteConnectionStatementForSQL();
          if (v19 && *(v19 + 8))
          {
            CSDBSqliteBindTextFromCFString();
            CSDBSqliteBindTextFromCFString();
            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }

          objc_autoreleasePoolPop(v11);
        }

        while (sqlite3_step(*(v8 + 8)) == 100);
      }

      CSDBSqliteStatementReset();
    }
  }

  v20 = CSDBSqliteConnectionStatementForSQL();
  if (v20)
  {
    v21 = v20;
    v22 = *(v20 + 8);
    if (v22)
    {
      if (sqlite3_step(v22) == 100)
      {
        do
        {
          v23 = objc_autoreleasePoolPush();
          sqlite3_column_int(*(v21 + 8), 0);
          sqlite3_column_int(*(v21 + 8), 1);
          v24 = CSDBSqliteConnectionStatementForSQL();
          if (v24 && *(v24 + 8))
          {
            CSDBSqliteBindInt();
            CSDBSqliteBindInt();
            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }

          v25 = CSDBSqliteConnectionStatementForSQL();
          if (v25 && *(v25 + 8))
          {
            CSDBSqliteBindInt();
            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }

          v26 = CSDBSqliteConnectionStatementForSQL();
          if (v26 && *(v26 + 8))
          {
            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }

          objc_autoreleasePoolPop(v23);
        }

        while (sqlite3_step(*(v21 + 8)) == 100);
      }

      CSDBSqliteStatementReset();
    }
  }

  v27 = CSDBSqliteConnectionStatementForSQL();
  if (v27 && *(v27 + 8))
  {
    CSDBSqliteStatementPerform();
    CSDBSqliteStatementReset();
  }

  return 1;
}

uint64_t IMDHandleRecordCopyHandleRecord(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B47C0C;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7B47BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B47C0C(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDHandleRecordAddHandleRecord(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B47D10;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7B47CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B47D10(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    CSDBRecordStoreAddRecord();
    result = CSDBRecordSaveStore();
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  return result;
}

void sub_1B7B48368(uint64_t a1, id a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v9 = a3;
  objc_msgSend_UTF8String(a2, v7, v8);
  IMInsertKeyedCodableObjectsToXPCDictionary();
}

uint64_t sub_1B7B48568(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  objc_msgSend_addObject_(*(a1 + 32), v5, v4);

  return 1;
}

uint64_t sub_1B7B486A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  objc_msgSend_addObject_(*(a1 + 32), v4, v3);

  return 1;
}

uint64_t sub_1B7B48808(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v7, v6, v3);

  return 1;
}

uint64_t sub_1B7B48974(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(a3);
  objc_msgSend_addObject_(*(a1 + 32), v5, v4);

  return 1;
}

void sub_1B7B48C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B48C18(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  if (v3)
  {
    v7 = v3;
    v4 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v7;
  }
}

void sub_1B7B48DF0(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v7 = v3;
  if (v3)
  {
    v4 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    (*(v5 + 16))(v5, v6);
  }
}

void sub_1B7B48FF8(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v7 = v3;
  if (v3)
  {
    v4 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    (*(v5 + 16))(v5, v6);
  }
}

void sub_1B7B491F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B49208(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  if (v3)
  {
    v7 = v3;
    v4 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v7;
  }
}

void sub_1B7B49378(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v7 = v3;
  if (v3)
  {
    v4 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    (*(v5 + 16))(v5, v6);
  }
}

void sub_1B7B49638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B49650(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  if (v3)
  {
    v7 = v3;
    v4 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v7;
  }
}

void sub_1B7B49810(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v7 = v3;
  if (v3)
  {
    v4 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    (*(v5 + 16))(v5, v6);
  }
}

void sub_1B7B499F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B49A10(void *a1, xpc_object_t xdict)
{
  v10 = xpc_dictionary_get_value(xdict, "dictionary_result");
  if (v10)
  {
    v3 = a1[4];
    v4 = objc_opt_class();
    v6 = objc_msgSend__codableDictionaryCopiedFromXPCDictionary_objectClass_(v3, v5, v10, v4);
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = a1[5];
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(a1[6] + 8) + 40));
  }
}

void sub_1B7B49BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B49BF8(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  if (v3)
  {
    v7 = v3;
    v4 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v7;
  }
}

uint64_t sub_1B7B49D88(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_get_BOOL(xdict, "success");
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1B7B49EBC(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v9 = v3;
  if (v3)
  {
    v4 = objc_msgSend__messageRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
    v7 = objc_msgSend_firstObject(v4, v5, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v7);
  }
}

void sub_1B7B4A06C(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v6 = v3;
  if (v3)
  {
    v4 = objc_msgSend__messageRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

void sub_1B7B4A2D4(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v9 = v3;
  if (v3)
  {
    v6 = objc_msgSend__messageRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = objc_msgSend_firstObject(v6, v4, v5);
    (*(v7 + 16))(v7, v8);
  }
}

void sub_1B7B4A5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B4A608(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_int64(xdict, "total_messages");
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void sub_1B7B4A758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B4A770(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_int64(xdict, "missing_messages");
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void sub_1B7B4AA00(uint64_t a1, void *a2)
{
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Received response back from database for notifyFirstUnlockComplete", v4, 2u);
    }
  }
}

void sub_1B7B4AB04(uint64_t a1, void *a2)
{
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Received response back from database for deleteDatabase", v4, 2u);
    }
  }
}

void sub_1B7B4ACF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B4AD0C(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  if (v3)
  {
    v7 = v3;
    v4 = objc_msgSend__handleRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v7;
  }
}

void sub_1B7B4AEE4(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v7 = v3;
  if (v3)
  {
    v4 = objc_msgSend__handleRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    (*(v5 + 16))(v5, v6);
  }
}

void sub_1B7B4B130(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v7 = v3;
  if (v3)
  {
    v4 = objc_msgSend__attachmentRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    (*(v5 + 16))(v5, v6);
  }
}

void sub_1B7B4B328(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v7 = v3;
  if (v3)
  {
    v4 = objc_msgSend__attachmentRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    (*(v5 + 16))(v5, v6);
  }
}

void sub_1B7B4B4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B4B4D8(uint64_t a1)
{
  v2 = IMGetXPCDataFromDictionary();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = *(a1 + 32);
  if (result)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

uint64_t sub_1B7B4B638(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_get_int64(xdict, "result");
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1B7B4BD44(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "deletedChats");
  if (v3)
  {
    v4 = *(a1 + 32);
    v9 = v3;
    v5 = objc_opt_class();
    v7 = objc_msgSend__codableObjectsCopiedFromXPCArray_objectClass_(v4, v6, v9, v5);
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v7);
    }

    v3 = v9;
  }
}

void sub_1B7B4BF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B4BF48(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "recoverableMessagesMetadataPendingCloudKitSave");
  if (v3)
  {
    v4 = *(a1 + 32);
    v10 = v3;
    v5 = objc_opt_class();
    v7 = objc_msgSend__codableObjectsCopiedFromXPCArray_objectClass_(v4, v6, v10, v5);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v3 = v10;
  }
}

void sub_1B7B4C110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B4C128(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "recoverableMessagesMetadataPendingCloudKitDelete");
  if (v3)
  {
    v4 = *(a1 + 32);
    v10 = v3;
    v5 = objc_opt_class();
    v7 = objc_msgSend__codableObjectsCopiedFromXPCArray_objectClass_(v4, v6, v10, v5);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v3 = v10;
  }
}

void sub_1B7B4C404(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Finished bulk updating recoverable message guids to status %ld", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7B4C794(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_get_int64(xdict, "total");
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_1B7B4C918(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  if (v4)
  {
    v5 = v4;
    v6 = 0;
  }

  else
  {
    v8 = IMGetXPCDataFromDictionary();
    if (v8)
    {
      v9 = 0;
      v6 = objc_msgSend_createFromData_error_(_TtC14IMDPersistence22StorageInspectorReport, v7, v8, &v9);
      v5 = v9;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1B7B4CB08(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v6 = v3;
  if (v3)
  {
    v4 = objc_msgSend__messageRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

void sub_1B7B4CCD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B4CCEC(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "scheduledMessagesMetadataPendingCloudKitDelete");
  if (v3)
  {
    v4 = *(a1 + 32);
    v10 = v3;
    v5 = objc_opt_class();
    v7 = objc_msgSend__codableObjectsCopiedFromXPCArray_objectClass_(v4, v6, v10, v5);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v3 = v10;
  }
}

void sub_1B7B4CE94(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Finished Adding scheduled message to delete from Cloud Kit. GUID: %@, RecordID %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7B4D01C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Finished Deleting tombstoned scheduled message with recordIDs %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1B7B4D18C(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Finished marking messages read with guids %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1B7B4D37C(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "identifiersToContacts");
  if (v3)
  {
    v4 = *(a1 + 32);
    v9 = v3;
    v5 = objc_opt_class();
    v7 = objc_msgSend__codableDictionaryCopiedFromXPCDictionary_objectClass_(v4, v6, v9, v5);
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v7);
    }

    v3 = v9;
  }
}

IMDPersistentAttachmentController *sub_1B7B4D7F8()
{
  result = objc_alloc_init(IMDPersistentAttachmentController);
  qword_1EDBE7930 = result;
  return result;
}

uint64_t sub_1B7B4DA88(__CFString *a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_length(a1, a2, a3) && objc_msgSend_rangeOfString_(a1, v4, @"/var/mobile/Library/SMS/Attachments") != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = 1;
  }

  else
  {
    v5 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = a1;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Input path: %@", &v10, 0xCu);
    }

    v6 = IMAttachmentsLogHandle();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v7)
    {
      v10 = 138412290;
      v11 = @"/var/mobile/Library/SMS/Attachments";
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "Attachment store Path: %@", &v10, 0xCu);
      result = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7B4E7E8(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "        ...removing old file: %@", buf, 0xCu);
  }

  v18 = sub_1B7B4DA88(*(a1 + 32), v3, v4);
  result = objc_msgSend_removeItemAtPath_error_(*(a1 + 40), v6, *(a1 + 32), 0);
  v9 = *(a1 + 48);
  if (v9)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v8, &v19, v23, 16);
    if (result)
    {
      v10 = result;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * v12);
          v14 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v13;
            _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "        ...removing old sibling file: %@", buf, 0xCu);
          }

          objc_msgSend_removeItemAtPath_error_(*(a1 + 40), v15, v13, 0);
          ++v12;
        }

        while (v10 != v12);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v16, &v19, v23, 16);
        v10 = result;
      }

      while (result);
    }
  }

  if (v18)
  {
    result = objc_msgSend__removeLegacyAttachmentPathsInAttachmentStoreWithOriginalPath_withFileManager_(*(a1 + 56), v8, *(a1 + 32), *(a1 + 40));
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B4EB8C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7B4EB58);
  }

  _Unwind_Resume(a1);
}

id IMDCopyAttachmentPersistentPath(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v6 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "Storing group photo at an accessible location.", buf, 2u);
    }

    v7 = IMSharedHelperExternalLocationForFile();
  }

  else
  {
    PathComponent = objc_msgSend_im_lastPathComponent(a2, a2, a3);
    v14 = objc_msgSend_pathExtension(PathComponent, v12, v13);
    v17 = objc_msgSend_hash(a1, v15, v16);
    if (!objc_msgSend_length(v14, v18, v19))
    {
      v22 = objc_msgSend_defaultHFSFileManager(MEMORY[0x1E69A60D8], v20, v21);
      v24 = objc_msgSend_pathExtensionForUTIType_(v22, v23, a4);
      if (!objc_msgSend_length(v24, v25, v26))
      {
        v29 = objc_msgSend_defaultHFSFileManager(MEMORY[0x1E69A60D8], v27, v28);
        v24 = objc_msgSend_pathExtensionForMIMEType_(v29, v30, a3);
      }

      if (objc_msgSend_length(v24, v27, v28))
      {
        PathComponent = objc_msgSend_stringByAppendingPathExtension_(PathComponent, v20, v24);
      }
    }

    v31 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, @"%02x", v17);
    v33 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v32, @"%02d", v17 & 0xF);
    if (objc_msgSend_length(PathComponent, v34, v35) && objc_msgSend_length(a1, v36, v37))
    {
      v39 = objc_msgSend_stringByAppendingPathComponent_(@"/var/mobile/Library/SMS/Attachments", v38, v31);
      v41 = objc_msgSend_stringByAppendingPathComponent_(v39, v40, v33);
      v44 = objc_msgSend_im_lastPathComponent(a1, v42, v43);
      v46 = objc_msgSend_stringByAppendingPathComponent_(v41, v45, v44);
      v7 = objc_msgSend_stringByAppendingPathComponent_(v46, v47, PathComponent);
    }

    else
    {
      v7 = 0;
    }

    v48 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v52 = v7;
      v53 = 2112;
      v54 = a1;
      _os_log_impl(&dword_1B7AD5000, v48, OS_LOG_TYPE_DEFAULT, "Resulting path %@   for transfer: %@", buf, 0x16u);
    }
  }

  result = v7;
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _IMDSMSDatabaseMigrateData_21_22(uint64_t a1, uint64_t a2)
{
  v473 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Starting migration from V21 to V22.", buf, 2u);
  }

  v4 = CSDBSqliteConnectionStatementForSQL();
  if (v4 && *(v4 + 8) && CSDBSqliteStatementPerform() == 1)
  {
    v5 = *(a2 + 8);
    v6 = IMLogHandleForCategory();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        v8 = sqlite3_errmsg(*(a2 + 8));
        *buf = 67109378;
        *&buf[4] = 1;
        *&buf[8] = 2080;
        *&buf[10] = v8;
        v9 = "Failed to delete trigger delete_attachment_files [SQLite result %d reason %s]";
        v10 = v6;
        v11 = 18;
LABEL_11:
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
      }
    }

    else if (v7)
    {
      *buf = 67109120;
      *&buf[4] = 1;
      v9 = "Failed to delete trigger delete_attachment_files [SQLite result %d]";
      v10 = v6;
      v11 = 8;
      goto LABEL_11;
    }
  }

  v12 = CSDBSqliteConnectionStatementForSQL();
  if (!v12 || !*(v12 + 8) || CSDBSqliteStatementPerform() == 1)
  {
    v13 = IMLogHandleForCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
LABEL_18:
      v15 = 0;
      goto LABEL_19;
    }

    *buf = 0;
    v14 = "Whoa, pardner, where is the V21_MIGRATION_GROUP_CHAT_MAP ?!";
LABEL_17:
    _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, v14, buf, 2u);
    goto LABEL_18;
  }

  v18 = CSDBSqliteConnectionStatementForSQL();
  if (!v18 || !*(v18 + 8) || CSDBSqliteStatementPerform() == 1)
  {
    v13 = IMLogHandleForCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v14 = "Whoa, pardner, where is the V21_MIGRATION_NONCANONICAL_GROUP_HANDLE_MAP ?!";
    goto LABEL_17;
  }

  v19 = CSDBSqliteConnectionStatementForSQL();
  if (!v19 || (v20 = v19, (v21 = *(v19 + 8)) == 0))
  {
    v15 = 0;
    goto LABEL_582;
  }

  v22 = sqlite3_step(v21);
  if (!v22 || v22 == 101)
  {
    v398 = IMLogHandleForCategory();
    v15 = 1;
    if (os_log_type_enabled(v398, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v398, OS_LOG_TYPE_INFO, "No message rows available to migrate, great success!!", buf, 2u);
    }

    goto LABEL_581;
  }

  if (v22 != 100)
  {
    goto LABEL_580;
  }

  alloc = *MEMORY[0x1E695E480];
  v417 = *MEMORY[0x1E69A5F68];
  v412 = *MEMORY[0x1E69A5F00];
  v429 = v20;
  while (1)
  {
    v23 = sqlite3_column_int(*(v20 + 8), 30);
    v438 = sqlite3_column_int(*(v20 + 8), 0);
    context = objc_autoreleasePoolPush();
    v430 = sqlite3_column_int(*(v20 + 8), 0);
    v24 = *(v20 + 8);
    if (v23)
    {
      v25 = sqlite3_column_int(v24, 26);
      if (sqlite3_column_text(*(v20 + 8), 18))
      {
        v26 = sqlite3_column_text(*(v20 + 8), 18);
        v27 = CFStringCreateWithCString(alloc, v26, 0x8000100u);
      }

      else
      {
        v27 = 0;
      }

      if (sqlite3_column_text(*(v20 + 8), 22))
      {
        v32 = sqlite3_column_text(*(v20 + 8), 22);
        v33 = CFStringCreateWithCString(alloc, v32, 0x8000100u);
      }

      else
      {
        v33 = 0;
      }

      v34 = sqlite3_column_blob(*(v20 + 8), 17);
      v35 = sqlite3_column_bytes(*(v20 + 8), 17);
      v36 = 0;
      if (v34 && v35)
      {
        v36 = CFDataCreate(alloc, v34, v35);
      }

      v37 = JWDecodeCodableObjectWithStandardAllowlist();
      if (v36)
      {
        CFRelease(v36);
      }

      if (v27 | v33)
      {
        v38 = CSDBSqliteConnectionStatementForSQL();
        if (v38)
        {
          v39 = v38;
          if (*(v38 + 8))
          {
            if (v33)
            {
              CSDBSqliteBindTextFromCFString();
            }

            CSDBSqliteBindTextFromCFString();
            if (sqlite3_step(*(v39 + 8)) == 100)
            {
              v40 = sqlite3_column_int(*(v39 + 8), 0);
              CSDBSqliteStatementReset();
              if (v40 != -1)
              {
                v41 = v40;
                goto LABEL_216;
              }
            }

            else
            {
              CSDBSqliteStatementReset();
            }
          }
        }

        v42 = CSDBSqliteConnectionStatementForSQL();
        if (v42)
        {
          v43 = v42;
          if (*(v42 + 8))
          {
            if (v33)
            {
              CSDBSqliteBindTextFromCFString();
            }

            CSDBSqliteBindTextFromCFString();
            v44 = sqlite3_step(*(v43 + 8));
            if (v44 != 100)
            {
              v54 = v44;
              v55 = IMLogHandleForCategory();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
              {
                *v454 = 138412802;
                *&v454[4] = v27;
                v455 = 2112;
                v456 = v33;
                v457 = 1024;
                LODWORD(v458) = v54;
                _os_log_impl(&dword_1B7AD5000, v55, OS_LOG_TYPE_INFO, "ORPHAN: Unable to find a legacy madrid chat record for handle[%@] and roomname[%@] with sqlite status (%d). This usually means that a chat was deleted but the messages it contained weren't. Failing chat creation.", v454, 0x1Cu);
              }

              v41 = -1;
              goto LABEL_339;
            }

            v45 = sqlite3_column_int(*(v43 + 8), 0);
            v46 = sqlite3_column_blob(*(v43 + 8), 10);
            v47 = sqlite3_column_bytes(*(v43 + 8), 10);
            v48 = 0;
            if (v46 && v47)
            {
              v48 = CFDataCreate(alloc, v46, v47);
            }

            v49 = JWDecodeArray();
            if (objc_msgSend_count(v49, v50, v51))
            {
              sqlite3_column_int(*(v43 + 8), 1);
              theArray = v49;
              if (sqlite3_column_text(*(v43 + 8), 5))
              {
                v52 = sqlite3_column_text(*(v43 + 8), 5);
                v53 = CFStringCreateWithCString(alloc, v52, 0x8000100u);
              }

              else
              {
                v53 = 0;
              }

              v194 = CSDBSqliteConnectionStatementForSQL();
              if (v194 && *(v194 + 8))
              {
                cfa = v53;
                CSDBSqliteBindInt();
                v195 = CSDBSqliteStatementPerform();
                CSDBSqliteStatementReset();
                if (v195 == 1)
                {
                  v196 = IMLogHandleForCategory();
                  v53 = cfa;
                  if (os_log_type_enabled(v196, OS_LOG_TYPE_INFO))
                  {
                    *v454 = 134218240;
                    *&v454[4] = v45;
                    v455 = 1024;
                    LODWORD(v456) = 1;
                    _os_log_impl(&dword_1B7AD5000, v196, OS_LOG_TYPE_INFO, "Unable to migrate chat row %lld with error: %d", v454, 0x12u);
                  }
                }

                else
                {
                  Insert = CSDBSqliteConnectionRowidOfLastInsert();
                  v53 = cfa;
                  if (Insert != -1)
                  {
                    v41 = Insert;
                    if (objc_msgSend_hasPrefix_(cfa, v206, @"chat"))
                    {
                      v207 = CSDBSqliteConnectionStatementForSQL();
                      if (v207)
                      {
                        if (*(v207 + 8))
                        {
                          CSDBSqliteBindTextFromCFString();
                          CSDBSqliteBindInt();
                          if (CSDBSqliteStatementPerform() != 101)
                          {
                            v208 = IMLogHandleForCategory();
                            if (os_log_type_enabled(v208, OS_LOG_TYPE_INFO))
                            {
                              *v454 = 134217984;
                              *&v454[4] = v41;
                              _os_log_impl(&dword_1B7AD5000, v208, OS_LOG_TYPE_INFO, "Unable to update chatID[%lld]'s room_name.", v454, 0xCu);
                            }
                          }

                          CSDBSqliteStatementReset();
                          v53 = cfa;
                        }
                      }
                    }

                    v209 = CSDBSqliteConnectionStatementForSQL();
                    if (!v209 || !*(v209 + 8))
                    {
                      goto LABEL_323;
                    }

                    v421 = v48;
                    v211 = IMCopyGUIDForChat();
                    CSDBSqliteBindTextFromCFString();
                    CSDBSqliteBindInt();
                    v212 = CSDBSqliteStatementPerform();
                    if (v212 != 101)
                    {
                      loga = IMLogHandleForCategory();
                      if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
                      {
                        *v454 = 134218242;
                        *&v454[4] = v41;
                        v455 = 2112;
                        v456 = v211;
                        _os_log_impl(&dword_1B7AD5000, loga, OS_LOG_TYPE_INFO, "Unable to update chatID[%lld] with guid[%@]", v454, 0x16u);
                      }
                    }

                    if (v211)
                    {
                      CFRelease(v211);
                    }

                    CSDBSqliteStatementReset();
                    v213 = v212 == 101;
                    v48 = v421;
                    v53 = cfa;
                    if (v213)
                    {
LABEL_323:
                      v443 = 0u;
                      v444 = 0u;
                      valuePtr = 0u;
                      v442 = 0u;
                      v214 = objc_msgSend_countByEnumeratingWithState_objects_count_(theArray, v210, &valuePtr, buf, 16);
                      if (v214)
                      {
                        v215 = v214;
                        v422 = v48;
                        v216 = *v442;
                        while (2)
                        {
                          for (i = 0; i != v215; ++i)
                          {
                            if (*v442 != v216)
                            {
                              objc_enumerationMutation(theArray);
                            }

                            v218 = sub_1B7B5388C(a2, 0, *(*(&valuePtr + 1) + 8 * i), @"iMessage", 0);
                            if (!sub_1B7B53CFC(a2, v218, v41))
                            {
                              v41 = -1;
                              goto LABEL_546;
                            }
                          }

                          v215 = objc_msgSend_countByEnumeratingWithState_objects_count_(theArray, v219, &valuePtr, buf, 16);
                          if (v215)
                          {
                            continue;
                          }

                          break;
                        }

LABEL_546:
                        v48 = v422;
                        v53 = cfa;
                      }

                      goto LABEL_335;
                    }

LABEL_334:
                    v41 = -1;
LABEL_335:

                    if (v48)
                    {
                      CFRelease(v48);
                    }

                    if (v53)
                    {
                      CFRelease(v53);
                    }

LABEL_339:
                    CSDBSqliteStatementReset();
LABEL_216:
                    if (v41 == -1)
                    {
                      v185 = IMLogHandleForCategory();
                      v20 = v429;
                      v186 = context;
                      if (os_log_type_enabled(v185, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412802;
                        *&buf[4] = v27;
                        *&buf[12] = 2112;
                        *&buf[14] = v33;
                        v452 = 1024;
                        LODWORD(v453) = v430;
                        _os_log_impl(&dword_1B7AD5000, v185, OS_LOG_TYPE_INFO, "ORPHAN: Unable to find/create a chat for handle[%@] and roomname[%@] for legacy messageID[%d]. Skipping this message.", buf, 0x1Cu);
                      }

                      v193 = 0;
                      goto LABEL_278;
                    }

                    v145 = CSDBSqliteConnectionStatementForSQL();
                    if (v145 && *(v145 + 8))
                    {
                      CSDBSqliteBindInt();
                      v146 = CSDBSqliteStatementPerform();
                      CSDBSqliteStatementReset();
                      if (v146 != 101)
                      {
                        v187 = IMLogHandleForCategory();
                        v20 = v429;
                        if (os_log_type_enabled(v187, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 67109376;
                          *&buf[4] = v430;
                          *&buf[8] = 1024;
                          *&buf[10] = v146;
                          _os_log_error_impl(&dword_1B7AD5000, v187, OS_LOG_TYPE_ERROR, "[Database] ERROR: Unable to migrate message row %d with error: %d", buf, 0xEu);
                        }

                        v193 = 1;
LABEL_277:
                        v186 = context;
                        goto LABEL_278;
                      }

                      v147 = CSDBSqliteConnectionRowidOfLastInsert();
                      if (v147 != -1)
                      {
                        v148 = v147;
                        v149 = CSDBSqliteConnectionStatementForSQL();
                        if (v149)
                        {
                          if (*(v149 + 8))
                          {
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            v150 = CSDBSqliteStatementPerform();
                            CSDBSqliteStatementReset();
                            if (v150 != 101)
                            {
                              v151 = IMLogHandleForCategory();
                              if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
                              {
                                *buf = 67109376;
                                *&buf[4] = v430;
                                *&buf[8] = 1024;
                                *&buf[10] = v150;
                                _os_log_impl(&dword_1B7AD5000, v151, OS_LOG_TYPE_INFO, "Unable to update flags row %d with error: %d", buf, 0xEu);
                              }
                            }
                          }
                        }

                        if (sub_1B7B537D8())
                        {
                          v20 = v429;
                          if (!v27 || v33 && (v25 & 4) != 0)
                          {
                            goto LABEL_230;
                          }

                          if (sub_1B7B5388C(a2, 0, v27, @"iMessage", 0) == -1)
                          {
                            v393 = v148;
                            v394 = IMLogHandleForCategory();
                            v193 = 1;
                            v186 = context;
                            if (!os_log_type_enabled(v394, OS_LOG_TYPE_INFO))
                            {
                              goto LABEL_278;
                            }

                            *buf = 134218240;
                            *&buf[4] = -1;
                            *&buf[12] = 2048;
                            *&buf[14] = v393;
                            v201 = v394;
                            v202 = "Invalid handleID[%lld] or messageID[%lld] passed for binding";
                            v203 = 22;
                            goto LABEL_544;
                          }

                          v197 = CSDBSqliteConnectionStatementForSQL();
                          if (!v197 || !*(v197 + 8) || (CSDBSqliteBindInt(), CSDBSqliteBindInt(), v198 = CSDBSqliteStatementPerform(), CSDBSqliteStatementReset(), v198 != 1))
                          {
LABEL_230:
                            v154 = objc_msgSend_string(v37, v152, v153);
                            v157 = objc_msgSend_length(v37, v155, v156);
                            if (v157)
                            {
                              v159 = v157;
                              theArrayb = v148;
                              v160 = 0;
                              v161 = 1;
                              while (1)
                              {
                                valuePtr = 0uLL;
                                v162 = objc_msgSend_attributesAtIndex_longestEffectiveRange_inRange_(v37, v158, v160, &valuePtr, v160, v159 - v160);
                                if (objc_msgSend_characterAtIndex_(v154, v163, valuePtr) != 65532)
                                {
                                  goto LABEL_265;
                                }

                                v164 = objc_msgSend_objectForKey_(v162, v158, v417);
                                if (!v164)
                                {
                                  v178 = IMLogHandleForCategory();
                                  if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
                                  {
                                    *buf = 136315138;
                                    *&buf[4] = "Boolean __findOrCreateiMessageAttachmentsForLegacyGUID(CSDBSqliteConnection *, CFStringRef, int64_t)";
                                    _os_log_impl(&dword_1B7AD5000, v178, OS_LOG_TYPE_INFO, "Invalid legacy guid provided in %s - this is bad but non-fatal.", buf, 0xCu);
                                  }

                                  v179 = IMDatabaseLogHandle();
                                  if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
                                  {
                                    sub_1B7CF1810(&v459, &v460);
                                  }

                                  goto LABEL_265;
                                }

                                v165 = v164;
                                v166 = CSDBSqliteConnectionStatementForSQL();
                                v167 = v166;
                                if (v166 && *(v166 + 8) && (CSDBSqliteBindTextFromCFString(), sqlite3_step(*(v167 + 8)) == 100))
                                {
                                  v168 = sqlite3_column_int(*(v167 + 8), 0);
                                  CSDBSqliteStatementReset();
                                  if (v168 != -1)
                                  {
                                    v169 = v168;
LABEL_239:
                                    if (v169 != -1)
                                    {
                                      v170 = CSDBSqliteConnectionStatementForSQL();
                                      if (v170)
                                      {
                                        if (*(v170 + 8))
                                        {
                                          CSDBSqliteBindInt();
                                          CSDBSqliteBindInt();
                                          v431 = CSDBSqliteStatementPerform();
                                          CSDBSqliteStatementReset();
                                          if (v431 == 1)
                                          {
                                            v171 = IMLogHandleForCategory();
                                            if (os_log_type_enabled(v171, OS_LOG_TYPE_INFO))
                                            {
                                              *buf = 134218496;
                                              *&buf[4] = v169;
                                              *&buf[12] = 2048;
                                              *&buf[14] = theArrayb;
                                              v452 = 1024;
                                              LODWORD(v453) = 1;
                                              _os_log_impl(&dword_1B7AD5000, v171, OS_LOG_TYPE_INFO, "Unable to bind attachmentID[%lld] to messageID[%lld]: %d", buf, 0x1Cu);
                                            }

                                            v172 = IMLogHandleForCategory();
                                            if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
                                            {
                                              *buf = 134218498;
                                              *&buf[4] = v169;
                                              *&buf[12] = 2112;
                                              *&buf[14] = v165;
                                              v452 = 2048;
                                              v453 = theArrayb;
                                              _os_log_impl(&dword_1B7AD5000, v172, OS_LOG_TYPE_INFO, "Fatal error binding attachmentID[%lld - %@] to messageID[%lld]", buf, 0x20u);
                                            }

                                            v161 = 0;
                                          }
                                        }
                                      }
                                    }

                                    goto LABEL_265;
                                  }
                                }

                                else
                                {
                                  CSDBSqliteStatementReset();
                                }

                                v173 = CSDBSqliteConnectionStatementForSQL();
                                if (v173)
                                {
                                  v174 = v173;
                                  if (*(v173 + 8))
                                  {
                                    CSDBSqliteBindTextFromCFString();
                                    if (sqlite3_step(*(v174 + 8)) == 100)
                                    {
                                      v175 = sqlite3_column_int(*(v174 + 8), 0);
                                      CSDBSqliteStatementReset();
                                      if (v175 != -1)
                                      {
                                        v176 = CSDBSqliteConnectionStatementForSQL();
                                        if (v176 && *(v176 + 8))
                                        {
                                          v432 = v175;
                                          CSDBSqliteBindInt();
                                          v177 = CSDBSqliteStatementPerform();
                                          CSDBSqliteStatementReset();
                                          if (v177 == 101)
                                          {
                                            v169 = CSDBSqliteConnectionRowidOfLastInsert();
                                            goto LABEL_239;
                                          }

                                          v184 = IMLogHandleForCategory();
                                          if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
                                          {
                                            *buf = 134218240;
                                            *&buf[4] = v432;
                                            *&buf[12] = 1024;
                                            *&buf[14] = v177;
                                            v181 = v184;
                                            v182 = "Unable to migrate attachment row %lld with error: %d";
                                            v183 = 18;
                                            goto LABEL_264;
                                          }
                                        }

                                        goto LABEL_265;
                                      }
                                    }

                                    else
                                    {
                                      CSDBSqliteStatementReset();
                                    }
                                  }
                                }

                                v180 = IMLogHandleForCategory();
                                if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
                                {
                                  *buf = 138412290;
                                  *&buf[4] = v165;
                                  v181 = v180;
                                  v182 = "Unable to find legacy attachment for guid[%@]. Not fatal, but bailing.";
                                  v183 = 12;
LABEL_264:
                                  _os_log_impl(&dword_1B7AD5000, v181, OS_LOG_TYPE_INFO, v182, buf, v183);
                                }

LABEL_265:
                                v160 = *(&valuePtr + 1) + valuePtr;
                                if (*(&valuePtr + 1) + valuePtr >= v159)
                                {
                                  v193 = v161 == 0;
                                  goto LABEL_270;
                                }
                              }
                            }

                            v193 = 0;
                            goto LABEL_277;
                          }

                          v199 = v148;
                          v200 = IMLogHandleForCategory();
                          v193 = 1;
                          v186 = context;
                          if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
                          {
                            *buf = 134218240;
                            *&buf[4] = v199;
                            *&buf[12] = 1024;
                            *&buf[14] = 1;
                            v201 = v200;
                            v202 = "Unable to update handle id on message row %lld with error: %d";
                            v203 = 18;
LABEL_544:
                            _os_log_impl(&dword_1B7AD5000, v201, OS_LOG_TYPE_INFO, v202, buf, v203);
                          }

LABEL_278:
                          if (v33)
                          {
                            CFRelease(v33);
                          }

                          if (v27)
                          {
                            CFRelease(v27);
                          }

                          objc_autoreleasePoolPop(v186);
                          if (v193)
                          {
                            goto LABEL_578;
                          }

                          goto LABEL_563;
                        }
                      }
                    }

                    v193 = 1;
LABEL_270:
                    v20 = v429;
                    goto LABEL_277;
                  }
                }
              }

              v220 = IMLogHandleForCategory();
              if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
              {
                *v454 = 138412546;
                *&v454[4] = v27;
                v455 = 2112;
                v456 = v33;
                _os_log_error_impl(&dword_1B7AD5000, v220, OS_LOG_TYPE_ERROR, "[Database] ERROR: Could not create chat from handle[%@] and roomname[%@].", v454, 0x16u);
              }

              goto LABEL_334;
            }

            v144 = IMLogHandleForCategory();
            if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
            {
              *v454 = 134218498;
              *&v454[4] = v45;
              v455 = 2112;
              v456 = v27;
              v457 = 2112;
              v458 = v33;
              _os_log_error_impl(&dword_1B7AD5000, v144, OS_LOG_TYPE_ERROR, "[DATABASE] There don't appear to be any participants in this chat, so it will NOT be migrated. RowID: %lld Handle %@ Roomname %@", v454, 0x20u);
            }

            CSDBSqliteStatementReset();
            if (v48)
            {
              CFRelease(v48);
            }
          }
        }
      }

      v41 = -1;
      goto LABEL_216;
    }

    log = sqlite3_column_int(v24, 4);
    sqlite3_column_int(*(v20 + 8), 10);
    sqlite3_column_int(*(v20 + 8), 0);
    sqlite3_column_int(*(v20 + 8), 7);
    if (sqlite3_column_int(*(v20 + 8), 8) < 1)
    {
      break;
    }

    v28 = CSDBSqliteConnectionStatementForSQL();
    if (!v28)
    {
      break;
    }

    v29 = v28;
    if (!*(v28 + 8))
    {
      break;
    }

    CSDBSqliteBindInt();
    CSDBSqliteBindInt();
    CSDBSqliteBindInt();
    v30 = sqlite3_step(*(v29 + 8));
    if (v30 != 100)
    {
      v56 = v30;
      v57 = IMLogHandleForCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v56;
        _os_log_error_impl(&dword_1B7AD5000, v57, OS_LOG_TYPE_ERROR, "[Database] ****** Result from select query: %d", buf, 8u);
      }

      CSDBSqliteStatementReset();
      break;
    }

    v31 = sqlite3_column_int(*(v29 + 8), 0);
    CSDBSqliteStatementReset();
    if (v31 <= 0)
    {
      break;
    }

LABEL_562:
    objc_autoreleasePoolPop(context);
LABEL_563:
    v397 = IMLogHandleForCategory();
    if (os_log_type_enabled(v397, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v438;
      _os_log_impl(&dword_1B7AD5000, v397, OS_LOG_TYPE_INFO, "Successful migration for legacy message [%d]", buf, 8u);
    }

    if (sqlite3_step(*(v20 + 8)) != 100)
    {
      v15 = 1;
      goto LABEL_581;
    }
  }

  v58 = sqlite3_column_int(*(v20 + 8), 7);
  v59 = sqlite3_column_int(*(v20 + 8), 8);
  v60 = sqlite3_column_int(*(v20 + 8), 0);
  v61 = sqlite3_column_text(*(v20 + 8), 1);
  if (v61)
  {
    v62 = sqlite3_column_text(*(v20 + 8), 1);
    v61 = CFStringCreateWithCString(alloc, v62, 0x8000100u);
  }

  cf = v61;
  if (v58 < 1)
  {
    v64 = IMLogHandleForCategory();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF185C(&v449, v450);
    }

    if (v58 == -1)
    {
      Mutable = 0;
      goto LABEL_171;
    }

    v418 = v59;
    v413 = v60;
    v63 = v58;
  }

  else
  {
    v418 = v59;
    v413 = v60;
    v63 = v58;
  }

  v420 = v63;
  Mutable = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
  v66 = CSDBSqliteConnectionStatementForSQL();
  if (v66)
  {
    v67 = v66;
    if (*(v66 + 8))
    {
      CSDBSqliteBindInt();
      if (sqlite3_step(*(v67 + 8)) == 100)
      {
        v68 = sqlite3_column_int(*(v67 + 8), 0);
        CSDBSqliteStatementReset();
        if (v68 != -1)
        {
          *&valuePtr = v68;
          v69 = CFNumberCreate(alloc, kCFNumberLongLongType, &valuePtr);
          if (!v69)
          {
            goto LABEL_157;
          }

          v70 = v69;
          CFArrayAppendValue(Mutable, v69);
          CFRelease(v70);
          if (!Mutable)
          {
            goto LABEL_171;
          }

          goto LABEL_158;
        }
      }

      else
      {
        CSDBSqliteStatementReset();
      }
    }
  }

  v71 = IMLogHandleForCategory();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = v420;
    _os_log_impl(&dword_1B7AD5000, v71, OS_LOG_TYPE_INFO, "Got an invalid rowid looking for a handle mapped to group id: %lld", buf, 0xCu);
  }

  *&valuePtr = -1;
  v72 = CSDBSqliteConnectionStatementForSQL();
  if (v72 && *(v72 + 8))
  {
    CSDBSqliteBindInt();
    *buf = 0;
    v73 = CSDBSqliteStatementIntegerResult();
    CSDBSqliteStatementReset();
    v74 = v73 == 1;
  }

  else
  {
    v74 = 0;
  }

  v75 = CSDBSqliteConnectionStatementForSQL();
  if (!v75)
  {
    goto LABEL_156;
  }

  v76 = v75;
  if (!*(v75 + 8))
  {
    goto LABEL_156;
  }

  CSDBSqliteBindInt();
  if (sqlite3_step(*(v76 + 8)) != 100)
  {
LABEL_155:
    CSDBSqliteStatementReset();
LABEL_156:
    v20 = v429;
LABEL_157:
    if (!Mutable)
    {
      goto LABEL_171;
    }

LABEL_158:
    if (!CFArrayGetCount(Mutable))
    {
      v122 = 0;
      goto LABEL_172;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    Count = CFArrayGetCount(Mutable);
    v117 = Count > 1 && v418 > 0;
    v118 = CSDBSqliteConnectionStatementForSQL();
    if (v118)
    {
      v119 = v118;
      if (*(v118 + 8))
      {
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        if (sqlite3_step(*(v119 + 8)) == 100)
        {
          v120 = sqlite3_column_int(*(v119 + 8), 0);
          CSDBSqliteStatementReset();
          if (v120 != -1)
          {
            v121 = v120;
LABEL_359:
            v124 = Mutable;
LABEL_360:
            CFRelease(v124);
            goto LABEL_361;
          }
        }

        else
        {
          CSDBSqliteStatementReset();
        }
      }
    }

    v125 = IMLogHandleForCategory();
    if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v420;
      _os_log_impl(&dword_1B7AD5000, v125, OS_LOG_TYPE_INFO, "Got an invalid rowid looking for a chat mapped to group id: %lld", buf, 0xCu);
    }

    v126 = CSDBSqliteConnectionStatementForSQL();
    if (v126)
    {
      v127 = v126;
      if (*(v126 + 8))
      {
        CSDBSqliteBindInt();
        CSDBSqliteBindTextFromCFString();
        while (1)
        {
          while (1)
          {
            if (sqlite3_step(*(v127 + 8)) != 100)
            {
              CSDBSqliteStatementReset();
              goto LABEL_205;
            }

            v128 = sqlite3_column_int(*(v127 + 8), 0);
            v129 = CSDBSqliteConnectionStatementForSQL();
            if (v129)
            {
              v130 = v129;
              if (*(v129 + 8))
              {
                break;
              }
            }
          }

          CSDBSqliteBindInt();
          v131 = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
          while (sqlite3_step(*(v130 + 8)) == 100)
          {
            *buf = sqlite3_column_int(*(v130 + 8), 0);
            v133 = CFNumberCreate(alloc, kCFNumberIntType, buf);
            CFArrayAppendValue(v131, v133);
            if (v133)
            {
              CFRelease(v133);
            }
          }

          v134 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v132, Mutable);
          v136 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v135, v131);
          if (objc_msgSend_isEqualToSet_(v134, v137, v136))
          {
            break;
          }

          if (v131)
          {
            CFRelease(v131);
          }

          CSDBSqliteStatementReset();
          v20 = v429;
        }

        if (v131)
        {
          CFRelease(v131);
        }

        CSDBSqliteStatementReset();
        v20 = v429;
        if (v128 != -1)
        {
          v121 = v128;
          sub_1B7B541C8(a2, v420, v128, v117);
          goto LABEL_359;
        }
      }
    }

LABEL_205:
    v138 = CSDBSqliteConnectionStatementForSQL();
    if (!v138 || !*(v138 + 8))
    {
      goto LABEL_358;
    }

    if (Count > 1)
    {
      v141 = objc_msgSend___im_uniqueChatIdentifierForGroupChat(MEMORY[0x1E696AEC0], v139, v140);
      v142 = v141;
      if (v141)
      {
        CFRetain(v141);
        v143 = v142;
        goto LABEL_347;
      }

LABEL_305:
      v143 = 0;
LABEL_347:
      v222 = IMCopyGUIDForChat();
      CSDBSqliteBindTextFromCFString();
      if (v222)
      {
        CFRelease(v222);
      }

      CSDBSqliteBindInt();
      CSDBSqliteBindInt();
      if (v143)
      {
        CSDBSqliteBindTextFromCFString();
        CFRelease(v143);
      }

      else
      {
        CSDBSqliteBindNull();
      }

      CSDBSqliteBindTextFromCFString();
      if (v142)
      {
        CSDBSqliteBindTextFromCFString();
      }

      else
      {
        CSDBSqliteBindNull();
      }

      v223 = CSDBSqliteStatementPerform();
      CSDBSqliteStatementReset();
      if (v223 != 1)
      {
        v121 = CSDBSqliteConnectionRowidOfLastInsert();
        sub_1B7B541C8(a2, v420, v121, v117);
        v232 = CFArrayGetCount(Mutable);
        if (v232 >= 1)
        {
          for (j = 0; j != v232; ++j)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Mutable, j);
            if (ValueAtIndex)
            {
              *buf = -1;
              CFNumberGetValue(ValueAtIndex, kCFNumberLongLongType, buf);
              sub_1B7B53CFC(a2, *buf, v121);
            }
          }
        }

        goto LABEL_359;
      }

      v224 = IMLogHandleForCategory();
      if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF1890(&v471, &v472);
      }

LABEL_358:
      v121 = -1;
      goto LABEL_359;
    }

    v188 = CFArrayGetValueAtIndex(Mutable, 0);
    if (!v188)
    {
      v204 = IMLogHandleForCategory();
      if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v413;
        _os_log_error_impl(&dword_1B7AD5000, v204, OS_LOG_TYPE_ERROR, "[Database] ERROR: Got a NULL handleID for messageID[%d] to create chat. Something is wrong.", buf, 8u);
      }

      v142 = 0;
      goto LABEL_305;
    }

    *&valuePtr = -1;
    CFNumberGetValue(v188, kCFNumberLongLongType, &valuePtr);
    if (valuePtr == -1)
    {
      v221 = IMLogHandleForCategory();
      if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v413;
        v190 = v221;
        v191 = "[Database] ERROR: Was slinging around an invalid handleID for messageID[%d] to create chat. Something is wrong.";
        v192 = 8;
LABEL_568:
        _os_log_error_impl(&dword_1B7AD5000, v190, OS_LOG_TYPE_ERROR, v191, buf, v192);
      }

LABEL_345:
      v143 = 0;
    }

    else
    {
      v143 = sub_1B7B54348();
      if (!v143)
      {
        v189 = IMLogHandleForCategory();
        if (os_log_type_enabled(v189, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = valuePtr;
          v190 = v189;
          v191 = "[Database] ERROR: Got a NULL identifier for handleID[%lld]. Something is seriously wrong.";
          v192 = 12;
          goto LABEL_568;
        }

        goto LABEL_345;
      }
    }

    v142 = 0;
    goto LABEL_347;
  }

  theArraya = Mutable;
  v415 = v58;
  while (1)
  {
    if (sqlite3_column_text(*(v76 + 8), 3))
    {
      v77 = sqlite3_column_text(*(v76 + 8), 3);
      v78 = CFStringCreateWithCString(alloc, v77, 0x8000100u);
    }

    else
    {
      v78 = 0;
    }

    if (sqlite3_column_text(*(v76 + 8), 2))
    {
      v79 = sqlite3_column_text(*(v76 + 8), 2);
      v80 = CFStringCreateWithCString(alloc, v79, 0x8000100u);
    }

    else
    {
      v80 = 0;
    }

    v81 = sub_1B7B53F68(v80);
    v84 = objc_msgSend__appearsToBePhoneNumber(v81, v82, v83);
    v87 = objc_msgSend_length(v81, v85, v86);
    HasPrefix = CFStringHasPrefix(v81, @"+");
    if (v74 && v84 && !HasPrefix && v87 >= 7)
    {
      v89 = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
      v90 = CSDBSqliteConnectionStatementForSQL();
      if (v90)
      {
        v91 = v90;
        if (*(v90 + 8))
        {
          CSDBSqliteBindInt();
          while (sqlite3_step(*(v91 + 8)) == 100)
          {
            v92 = sqlite3_column_text(*(v91 + 8), 0);
            if (v92)
            {
              v93 = CFStringCreateWithCString(alloc, v92, 0x8000100u);
              if (v93)
              {
                v94 = v93;
                CFArrayAppendValue(v89, v93);
                CFRelease(v94);
              }
            }
          }

          CSDBSqliteStatementReset();
        }
      }

      if (v89)
      {
        if (CFArrayGetCount(v89) >= 1)
        {
          for (k = 0; k < CFArrayGetCount(v89); ++k)
          {
            v96 = CFArrayGetValueAtIndex(v89, k);
            if (v96)
            {
              v97 = v96;
              if (v81)
              {
                CFRelease(v81);
              }

              v81 = sub_1B7B53F68(v97);
              v100 = objc_msgSend__appearsToBePhoneNumber(v81, v98, v99);
              v101 = CFStringHasPrefix(v81, @"+");
              if (!v100 || v101)
              {
                break;
              }

              v102 = IMLogHandleForCategory();
              if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v97;
                v103 = v102;
                v104 = "Ugh, the address '%@' wouldn't canonicalize.";
LABEL_131:
                _os_log_impl(&dword_1B7AD5000, v103, OS_LOG_TYPE_INFO, v104, buf, 0xCu);
              }
            }

            else
            {
              v105 = IMLogHandleForCategory();
              if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = 0;
                v103 = v105;
                v104 = "MsgAddress '%@' was null, we won't even try to canonicalize it.";
                goto LABEL_131;
              }
            }
          }
        }

        CFRelease(v89);
        v58 = v415;
      }
    }

    *v454 = sub_1B7B5388C(a2, v80, v81, @"SMS", v78);
    if (*v454 == -1)
    {
      break;
    }

    v106 = CFNumberCreate(alloc, kCFNumberLongLongType, v454);
    if (v106)
    {
      v107 = v106;
      CFArrayAppendValue(theArraya, v106);
      CFRelease(v107);
      if (v74)
      {
        v108 = *v454;
        if (*v454 == -1)
        {
          v115 = IMLogHandleForCategory();
          if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = -1;
            *&buf[12] = 2048;
            *&buf[14] = v420;
            v112 = v115;
            v113 = "[Database] ERROR: You tried to join handle [%lld] to group [%lld] with an invalid row id.";
            v114 = 22;
LABEL_153:
            _os_log_error_impl(&dword_1B7AD5000, v112, OS_LOG_TYPE_ERROR, v113, buf, v114);
            if (!v78)
            {
              goto LABEL_146;
            }

LABEL_145:
            CFRelease(v78);
            goto LABEL_146;
          }
        }

        else
        {
          v109 = CSDBSqliteConnectionStatementForSQL();
          if (v109)
          {
            if (*(v109 + 8))
            {
              CSDBSqliteBindInt();
              CSDBSqliteBindInt();
              v110 = CSDBSqliteStatementPerform();
              CSDBSqliteStatementReset();
              if (v110 == 1)
              {
                v111 = IMLogHandleForCategory();
                if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218496;
                  *&buf[4] = v108;
                  *&buf[12] = 2048;
                  *&buf[14] = v420;
                  v452 = 1024;
                  LODWORD(v453) = 1;
                  v112 = v111;
                  v113 = "[Database] ERROR: Failed to asscociate handle [%lld] to group [%lld] with sqlite result: %d.";
                  v114 = 28;
                  goto LABEL_153;
                }
              }
            }
          }
        }
      }
    }

    if (v78)
    {
      goto LABEL_145;
    }

LABEL_146:
    if (v80)
    {
      CFRelease(v80);
    }

    if (v81)
    {
      CFRelease(v81);
    }

    Mutable = theArraya;
    if (sqlite3_step(*(v76 + 8)) != 100)
    {
      goto LABEL_155;
    }
  }

  if (v78)
  {
    CFRelease(v78);
  }

  v20 = v429;
  if (v80)
  {
    CFRelease(v80);
  }

  if (theArraya)
  {
    CFRelease(theArraya);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  Mutable = 0;
LABEL_171:
  v122 = 1;
LABEL_172:
  v123 = IMLogHandleForCategory();
  if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v58;
    _os_log_impl(&dword_1B7AD5000, v123, OS_LOG_TYPE_INFO, "ORPHAN: Unable to find handles for groupID[%d]. This means we have message rows without a matching group. Failing the chat lookup.", buf, 8u);
  }

  if ((v122 & 1) == 0)
  {
    CFRelease(Mutable);
  }

  v121 = -1;
  v124 = cf;
  if (cf)
  {
    goto LABEL_360;
  }

LABEL_361:
  if (log < 0)
  {
    if (v121 != -1)
    {
      sub_1B7B53FF0(a2, v20);
    }

    goto LABEL_562;
  }

  if (v121 == -1)
  {
    v231 = IMLogHandleForCategory();
    if (os_log_type_enabled(v231, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v430;
      _os_log_impl(&dword_1B7AD5000, v231, OS_LOG_TYPE_INFO, "ORPHAN: Could not find an appropriate chat to use for messageID[%d]. Skipping this message.", buf, 8u);
    }

    goto LABEL_562;
  }

  v225 = CSDBSqliteConnectionStatementForSQL();
  if (!v225 || !*(v225 + 8))
  {
    v230 = IMLogHandleForCategory();
    if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF1B30(&v461, v462);
    }

    goto LABEL_562;
  }

  objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v226, v227);
  if (sqlite3_column_text(*(v20 + 8), 3))
  {
    v228 = sqlite3_column_text(*(v20 + 8), 3);
    v229 = CFStringCreateWithCString(alloc, v228, 0x8000100u);
  }

  else
  {
    v229 = 0;
  }

  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  v235 = CSDBSqliteStatementPerform();
  CSDBSqliteStatementReset();
  if (v235 != 1)
  {
    v236 = CSDBSqliteConnectionRowidOfLastInsert();
    if (v229)
    {
      CFRelease(v229);
    }

    sub_1B7B537D8();
    theArrayc = objc_alloc_init(MEMORY[0x1E696AD40]);
    if (sqlite3_column_text(*(v20 + 8), 3))
    {
      v237 = sqlite3_column_text(*(v20 + 8), 3);
      v238 = CFStringCreateWithCString(alloc, v237, 0x8000100u);
    }

    else
    {
      v238 = 0;
    }

    v419 = v236;
    v239 = sqlite3_column_int(*(v20 + 8), 2);
    v242 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x1E695DF00], v240, v241, v239);
    objc_msgSend_timeIntervalSinceReferenceDate(v242, v243, v244);
    if (v238)
    {
      v245 = objc_alloc(MEMORY[0x1E696AAB0]);
      v247 = objc_msgSend_initWithString_(v245, v246, v238);
      objc_msgSend_appendAttributedString_(theArrayc, v248, v247);

      CFRelease(v238);
    }

    cfb = sqlite3_column_int(*(v20 + 8), 0);
    v249 = sqlite3_column_int(*(v20 + 8), 7);
    v250 = CSDBSqliteConnectionStatementForSQL();
    if (!v250)
    {
      goto LABEL_465;
    }

    v253 = v250;
    if (!*(v250 + 8))
    {
      goto LABEL_465;
    }

    CSDBSqliteBindInt();
    if (sqlite3_step(*(v253 + 8)) == 100)
    {
      if (v249 <= 0)
      {
        v254 = --v249;
      }

      else
      {
        v254 = v249;
      }

      v414 = v254;
      if (cfb <= 0)
      {
        v255 = -(-cfb & 0xF);
      }

      else
      {
        v255 = cfb & 0xF;
      }

      v411 = v255;
      while (1)
      {
        v256 = sqlite3_column_int(*(v253 + 8), 3);
        if (sqlite3_column_text(*(v253 + 8), 5))
        {
          v257 = sqlite3_column_text(*(v253 + 8), 5);
          v258 = CFStringCreateWithCString(alloc, v257, 0x8000100u);
        }

        else
        {
          v258 = 0;
        }

        if (sqlite3_column_text(*(v253 + 8), 10))
        {
          v259 = sqlite3_column_text(*(v253 + 8), 10);
          v260 = CFStringCreateWithCString(alloc, v259, 0x8000100u);
        }

        else
        {
          v260 = 0;
        }

        if (v258)
        {
          break;
        }

LABEL_407:
        if (v260)
        {
          goto LABEL_408;
        }

LABEL_409:
        if (sqlite3_step(*(v253 + 8)) != 100)
        {
          goto LABEL_464;
        }
      }

      v261 = CFEqual(v258, @"application/smil");
      v262 = CFEqual(v258, @"text/plain");
      if (v261)
      {
LABEL_406:
        CFRelease(v258);
        goto LABEL_407;
      }

      if (v262)
      {
        if (sqlite3_column_text(*(v253 + 8), 2))
        {
          v265 = sqlite3_column_text(*(v253 + 8), 2);
          v266 = CFStringCreateWithCString(alloc, v265, 0x8000100u);
          if (v266)
          {
            v267 = v266;
            v268 = objc_alloc(MEMORY[0x1E696AAB0]);
            v270 = objc_msgSend_initWithString_(v268, v269, v267);
            objc_msgSend_appendAttributedString_(theArrayc, v271, v270);

            CFRelease(v258);
            if (v260)
            {
              CFRelease(v260);
            }

            v260 = v267;
LABEL_408:
            CFRelease(v260);
            goto LABEL_409;
          }
        }

        goto LABEL_406;
      }

      if (v260)
      {
        v272 = objc_msgSend_pathExtension(v260, v263, v264);
        v275 = 0x1E69A6000;
        if (v272)
        {
          v276 = v272;
          if (objc_msgSend_length(v272, v273, v274))
          {
LABEL_423:
            v279 = objc_msgSend_defaultHFSFileManager(*(v275 + 216), v273, v274);
            objc_msgSend_UTITypeOfPathExtension_(v279, v280, v276);
            v281 = sqlite3_column_blob(*(v253 + 8), 2);
            v282 = sqlite3_column_bytes(*(v253 + 8), 2);
            v284 = 0;
            if (v281 && v282)
            {
              v284 = CFDataCreate(alloc, v281, v282);
            }

            v416 = v284;
            v285 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v283, @"/var/mobile/Library/SMS/Parts/");
            v287 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v286, @"%02x", v414);
            v289 = objc_msgSend_stringByAppendingPathComponent_(v285, v288, v287);
            v291 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v290, @"%02d", v411);
            v293 = objc_msgSend_stringByAppendingPathComponent_(v289, v292, v291);
            v295 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v294, @"%d-%d", cfb, v256);
            v297 = objc_msgSend_stringByAppendingPathComponent_(v293, v296, v295);
            if (v276)
            {
              objc_msgSend_stringByAppendingPathExtension_(v297, v298, v276);
            }

            v300 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v298, v299);
            v301 = CSDBSqliteConnectionStatementForSQL();
            if (!v301 || !*(v301 + 8))
            {
              goto LABEL_460;
            }

            CSDBSqliteBindTextFromCFString();
            CSDBSqliteBindTextFromCFString();
            CSDBSqliteBindTextFromCFString();
            CSDBSqliteBindInt();
            v302 = CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
            if (v302 == 1)
            {
              v303 = IMLogHandleForCategory();
              if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
              {
                sub_1B7CF1984(&v469, v470);
              }

LABEL_460:
              v341 = objc_alloc(MEMORY[0x1E695DF20]);
              v343 = objc_msgSend_initWithObjectsAndKeys_(v341, v342, v300, v417, 0);
              v344 = objc_alloc(MEMORY[0x1E696AAB0]);
              v346 = objc_msgSend_initWithString_attributes_(v344, v345, v412, v343);
              objc_msgSend_appendAttributedString_(theArrayc, v347, v346);

              if (v276)
              {
                CFRelease(v276);
              }

              v20 = v429;
              if (v416)
              {
                CFRelease(v416);
              }

              goto LABEL_406;
            }

            CSDBSqliteConnectionRowidOfLastInsert();
            v304 = CSDBSqliteConnectionStatementForSQL();
            if (v304)
            {
              if (*(v304 + 8))
              {
                CSDBSqliteBindInt();
                CSDBSqliteBindInt();
                v307 = CSDBSqliteStatementPerform();
                CSDBSqliteStatementReset();
                if (v307 == 1)
                {
                  v308 = IMLogHandleForCategory();
                  if (os_log_type_enabled(v308, OS_LOG_TYPE_ERROR))
                  {
                    sub_1B7CF18D0(&v467, v468);
                  }
                }
              }
            }

            if (!v416)
            {
LABEL_455:
              v338 = CSDBSqliteConnectionStatementForSQL();
              if (v338)
              {
                if (*(v338 + 8))
                {
                  CSDBSqliteBindTextFromCFString();
                  CSDBSqliteBindTextFromCFString();
                  v339 = CSDBSqliteStatementPerform();
                  CSDBSqliteStatementReset();
                  if (v339 == 1)
                  {
                    v340 = IMLogHandleForCategory();
                    if (os_log_type_enabled(v340, OS_LOG_TYPE_ERROR))
                    {
                      sub_1B7CF1944(&v465, v466);
                    }
                  }
                }
              }

              goto LABEL_460;
            }

            if (v260)
            {
              PathComponent = objc_msgSend_lastPathComponent(v260, v305, v306);
            }

            else
            {
              v410 = v300;
              if (!v276)
              {
LABEL_446:
                v310 = MEMORY[0x1E696AEC0];
                v311 = objc_msgSend_hash(v300, v305, v306);
                v313 = objc_msgSend_stringWithFormat_(v310, v312, @"%02x", v311);
                v314 = MEMORY[0x1E696AEC0];
                v317 = objc_msgSend_hash(v300, v315, v316);
                if (v317 <= 0)
                {
                  v319 = -(-v317 & 0xF);
                }

                else
                {
                  v319 = v317 & 0xF;
                }

                v320 = objc_msgSend_stringWithFormat_(v314, v318, @"%02d", v319);
                v322 = objc_msgSend_stringByAppendingPathComponent_(@"/var/mobile/Library/SMS/Attachments", v321, v313);
                v324 = objc_msgSend_stringByAppendingPathComponent_(v322, v323, v320);
                v326 = objc_msgSend_stringByAppendingPathComponent_(v324, v325, v410);
                *&valuePtr = 0;
                v329 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v327, v328);
                v332 = objc_msgSend_stringByDeletingLastPathComponent(v326, v330, v331);
                if ((objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v329, v333, v332, 1, 0, &valuePtr) & 1) == 0)
                {
                  v335 = IMLogHandleForCategory();
                  if (os_log_type_enabled(v335, OS_LOG_TYPE_ERROR))
                  {
                    v348 = objc_msgSend_stringByDeletingLastPathComponent(v326, v334, v336);
                    *buf = 138412546;
                    *&buf[4] = v348;
                    *&buf[12] = 2112;
                    *&buf[14] = valuePtr;
                    _os_log_error_impl(&dword_1B7AD5000, v335, OS_LOG_TYPE_ERROR, "[Database] ERROR: Failed to create directory [%@]: %@", buf, 0x16u);
                  }
                }

                if ((objc_msgSend_writeToFile_atomically_(v416, v334, v326, 1) & 1) == 0)
                {
                  v337 = IMLogHandleForCategory();
                  if (os_log_type_enabled(v337, OS_LOG_TYPE_ERROR))
                  {
                    sub_1B7CF1910(&v447, v448);
                  }
                }

                goto LABEL_455;
              }

              PathComponent = objc_msgSend_stringByAppendingPathExtension_(v300, v305, v276);
            }

            v410 = PathComponent;
            goto LABEL_446;
          }

          CFRelease(v276);
        }
      }

      else
      {
        v275 = 0x1E69A6000uLL;
        if (!objc_msgSend_length(v258, v263, v264))
        {
          v276 = 0;
          goto LABEL_423;
        }
      }

      v277 = objc_msgSend_defaultHFSFileManager(*(v275 + 216), v273, v274);
      v276 = objc_msgSend_pathExtensionForMIMEType_(v277, v278, v258);
      goto LABEL_423;
    }

LABEL_464:
    CSDBSqliteStatementReset();
LABEL_465:
    if (objc_msgSend_length(theArrayc, v251, v252))
    {
      v351 = objc_msgSend___im_attributedStringByAssigningMessagePartNumbers(theArrayc, v349, v350);
    }

    else
    {
      v351 = 0;
    }

    v352 = v351;
    JWEncodeCodableObject();
    if (sqlite3_column_text(*(v20 + 8), 1))
    {
      v353 = sqlite3_column_text(*(v20 + 8), 1);
      v354 = CFStringCreateWithCString(alloc, v353, 0x8000100u);
    }

    else
    {
      v354 = 0;
    }

    if (sqlite3_column_text(*(v20 + 8), 3))
    {
      v355 = sqlite3_column_text(*(v20 + 8), 3);
      v356 = CFStringCreateWithCString(alloc, v355, 0x8000100u);
    }

    else
    {
      v356 = 0;
    }

    if (sqlite3_column_text(*(v20 + 8), 6))
    {
      v357 = sqlite3_column_text(*(v20 + 8), 6);
      cfc = CFStringCreateWithCString(alloc, v357, 0x8000100u);
    }

    else
    {
      cfc = 0;
    }

    if (sqlite3_column_text(*(v20 + 8), 13))
    {
      v358 = sqlite3_column_text(*(v20 + 8), 13);
      theArrayd = CFStringCreateWithCString(alloc, v358, 0x8000100u);
    }

    else
    {
      theArrayd = 0;
    }

    if (sqlite3_column_text(*(v20 + 8), 12))
    {
      v361 = sqlite3_column_text(*(v20 + 8), 12);
      v362 = CFStringCreateWithCString(alloc, v361, 0x8000100u);
    }

    else
    {
      v362 = 0;
    }

    v363 = (!v356 || !CFStringGetLength(v356)) && (!v362 || !CFStringGetLength(v362)) && objc_msgSend_length(v352, v359, v360) == 0;
    v364 = sqlite3_column_int(*(v429 + 8), 2);
    v367 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x1E695DF00], v365, v366, v364);
    objc_msgSend_timeIntervalSinceReferenceDate(v367, v368, v369);
    *&valuePtr = -1;
    v370 = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
    v371 = CSDBSqliteConnectionStatementForSQL();
    if (v371 && (v372 = v371, *(v371 + 8)))
    {
      CSDBSqliteBindInt();
      while (1)
      {
        if (sqlite3_step(*(v372 + 8)) != 100)
        {
          CSDBSqliteStatementReset();
          goto LABEL_497;
        }

        *buf = sqlite3_column_int(*(v372 + 8), 0);
        if (*buf == -1)
        {
          break;
        }

        v373 = CFNumberCreate(alloc, kCFNumberIntType, buf);
        if (v373)
        {
          v374 = v373;
          CFArrayAppendValue(v370, v373);
          CFRelease(v374);
        }
      }

      if (v370)
      {
        CFRelease(v370);
      }
    }

    else
    {
LABEL_497:
      if (v370)
      {
        v375 = CFArrayGetCount(v370);
        v376 = v375 == 1;
        v377 = v354;
        if (v375 == 1)
        {
          v378 = CFArrayGetValueAtIndex(v370, 0);
          if (v378)
          {
            CFNumberGetValue(v378, kCFNumberLongLongType, &valuePtr);
          }
        }

        CFRelease(v370);
LABEL_505:
        if (valuePtr == -1)
        {
          *&valuePtr = sub_1B7B5388C(a2, v377, 0, @"SMS", theArrayd);
          v379 = valuePtr == -1;
        }

        else
        {
          v379 = 0;
        }

        if (v363)
        {
          v380 = IMLogHandleForCategory();
          if (os_log_type_enabled(v380, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v380, OS_LOG_TYPE_INFO, "This message is empty, and we should NOT keep it.", buf, 2u);
          }

          if (valuePtr == -1)
          {
LABEL_514:
            v381 = IMLogHandleForCategory();
            if (os_log_type_enabled(v381, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1B7AD5000, v381, OS_LOG_TYPE_INFO, "This message lacks a handle, and we should NOT keep it.", buf, 2u);
            }
          }

          v382 = CSDBSqliteConnectionStatementForSQL();
          if (!v382 || !*(v382 + 8))
          {
            v388 = IMLogHandleForCategory();
            v20 = v429;
            v389 = cfc;
            if (os_log_type_enabled(v388, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1B7AD5000, v388, OS_LOG_TYPE_INFO, "Unable to delete message.", buf, 2u);
            }

LABEL_531:
            sub_1B7B53FF0(a2, v20);
            v391 = IMLogHandleForCategory();
            if (os_log_type_enabled(v391, OS_LOG_TYPE_ERROR))
            {
              sub_1B7CF1A04(&v445, v446);
              if (!v389)
              {
LABEL_534:
                if (theArrayd)
                {
                  CFRelease(theArrayd);
                }

                if (v362)
                {
                  CFRelease(v362);
                }

                if (v377)
                {
                  CFRelease(v377);
                }

                if (v356)
                {
                  v392 = v356;
LABEL_561:
                  CFRelease(v392);
                  goto LABEL_562;
                }

                goto LABEL_562;
              }
            }

            else if (!v389)
            {
              goto LABEL_534;
            }

            CFRelease(v389);
            goto LABEL_534;
          }

          CSDBSqliteBindInt();
          v383 = CSDBSqliteStatementPerform();
          v384 = IMLogHandleForCategory();
          v385 = os_log_type_enabled(v384, OS_LOG_TYPE_INFO);
          v20 = v429;
          if (v383 == 1)
          {
            if (v385)
            {
              *buf = 134218240;
              *&buf[4] = v419;
              *&buf[12] = 1024;
              *&buf[14] = 1;
              v386 = v384;
              v387 = "Problems deleting message [%lld], SQLite error: %d";
LABEL_529:
              _os_log_impl(&dword_1B7AD5000, v386, OS_LOG_TYPE_INFO, v387, buf, 0x12u);
            }
          }

          else if (v385)
          {
            *buf = 134218240;
            *&buf[4] = v419;
            *&buf[12] = 1024;
            *&buf[14] = v430;
            v386 = v384;
            v387 = "Message [%lld] Legacy [%d] was problematic, thus we skip it.";
            goto LABEL_529;
          }

          CSDBSqliteStatementReset();
          v377 = v354;
          v389 = cfc;
          goto LABEL_531;
        }

        if (v376 && v379)
        {
          goto LABEL_514;
        }

        v390 = CSDBSqliteConnectionStatementForSQL();
        if (!v390 || !*(v390 + 8))
        {
          goto LABEL_552;
        }

        CSDBSqliteBindBlobFromCFData();
        CSDBSqliteBindTextFromCFString();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindTextFromCFString();
        CSDBSqliteBindInt();
        CSDBSqliteBindTextFromCFString();
        CSDBSqliteBindTextFromCFString();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindTextFromCFString();
        CSDBSqliteBindInt();
        if (valuePtr == -1)
        {
          CSDBSqliteBindNull();
        }

        else
        {
          CSDBSqliteBindInt();
        }

        CSDBSqliteBindInt();
        v395 = CSDBSqliteStatementPerform();
        CSDBSqliteStatementReset();
        if (v395 == 1 && (v396 = IMLogHandleForCategory(), os_log_type_enabled(v396, OS_LOG_TYPE_ERROR)))
        {
          sub_1B7CF19C4(&v463, v464);
          if (!v377)
          {
LABEL_554:
            v20 = v429;
            if (v362)
            {
              CFRelease(v362);
            }

            if (v356)
            {
              CFRelease(v356);
            }

            if (cfc)
            {
              CFRelease(cfc);
            }

            v392 = theArrayd;
            if (theArrayd)
            {
              goto LABEL_561;
            }

            goto LABEL_562;
          }
        }

        else
        {
LABEL_552:
          if (!v377)
          {
            goto LABEL_554;
          }
        }

        CFRelease(v377);
        goto LABEL_554;
      }
    }

    v376 = 0;
    v377 = v354;
    goto LABEL_505;
  }

  v399 = IMLogHandleForCategory();
  if (os_log_type_enabled(v399, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF1A38(v399);
    if (v229)
    {
LABEL_576:
      CFRelease(v229);
    }
  }

  else if (v229)
  {
    goto LABEL_576;
  }

  objc_autoreleasePoolPop(context);
LABEL_578:
  v400 = IMLogHandleForCategory();
  if (os_log_type_enabled(v400, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF1AB8(v438, v400);
  }

LABEL_580:
  v15 = 0;
LABEL_581:
  CSDBSqliteStatementReset();
LABEL_582:
  v401 = CSDBSqliteConnectionStatementForSQL();
  if (!v401 || !*(v401 + 8) || (v402 = CSDBSqliteStatementPerform(), CSDBSqliteStatementReset(), v402 == 1))
  {
    v403 = IMLogHandleForCategory();
    if (os_log_type_enabled(v403, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v403, OS_LOG_TYPE_INFO, "Whoa pardner, we didn't drop the group to chat map table. C'est la vie.", buf, 2u);
    }
  }

  v404 = CSDBSqliteConnectionStatementForSQL();
  if (!v404 || !*(v404 + 8) || (v405 = CSDBSqliteStatementPerform(), CSDBSqliteStatementReset(), v405 == 1))
  {
    v406 = IMLogHandleForCategory();
    if (os_log_type_enabled(v406, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v406, OS_LOG_TYPE_INFO, "Whoa pardner, we didn't drop the non-canonical group to handle map table. C'est la vie.", buf, 2u);
    }
  }

  if (v15)
  {
    v407 = IMLogHandleForCategory();
    if (os_log_type_enabled(v407, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v407, OS_LOG_TYPE_INFO, "Asking DB to analyze.", buf, 2u);
    }

    CSDBSqliteConnectionPerformSQL();
  }

  v408 = IMLogHandleForCategory();
  if (os_log_type_enabled(v408, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v15;
    _os_log_impl(&dword_1B7AD5000, v408, OS_LOG_TYPE_INFO, "Migration ended with result %d", buf, 8u);
  }

  v409 = IMLogHandleForCategory();
  if (os_log_type_enabled(v409, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v409, OS_LOG_TYPE_INFO, "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -", buf, 2u);
  }

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

BOOL sub_1B7B537D8()
{
  v0 = CSDBSqliteConnectionStatementForSQL();
  if (!v0)
  {
    return 1;
  }

  if (!*(v0 + 8))
  {
    return 1;
  }

  CSDBSqliteBindInt();
  CSDBSqliteBindInt();
  v1 = CSDBSqliteStatementPerform();
  CSDBSqliteStatementReset();
  if (v1 != 1)
  {
    return 1;
  }

  v2 = IMLogHandleForCategory();
  result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1B7CF1B70();
    return 0;
  }

  return result;
}

uint64_t sub_1B7B5388C(int a1, __CFString *a2, __CFString *theString, const __CFString *a4, void *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  if (theString)
  {
    Insert = sub_1B7B53E58(a1, theString, a4, a5, 1);
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    Insert = -1;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if (Insert == -1)
  {
    Insert = sub_1B7B53E58(a1, a2, a4, a5, 0);
  }

LABEL_7:
  if (Insert != -1)
  {
    goto LABEL_8;
  }

  if (IMStringIsEmpty() && IMStringIsEmpty())
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v33 = 138412802;
      v34 = a2;
      v35 = 2112;
      v36 = theString;
      v37 = 2080;
      v38 = "int64_t __createHandleRecord(CSDBSqliteConnection *, CFStringRef, CFStringRef, CFStringRef, CFStringRef)";
      v12 = "Got an invalid IDs uncanon: (%@) canon: (%@) in %s.";
LABEL_23:
      v16 = v11;
      v17 = 32;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (IMStringIsEmpty())
  {
    v15 = IMLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v33 = 138412546;
      v34 = a4;
      v35 = 2080;
      v36 = "int64_t __createHandleRecord(CSDBSqliteConnection *, CFStringRef, CFStringRef, CFStringRef, CFStringRef)";
      v12 = "Got an invalid service (%@) in %s.";
      v16 = v15;
      v17 = 22;
LABEL_24:
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, v12, &v33, v17);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (!a2 || (v18 = objc_msgSend_lowercaseString(a2, v13, v14), (objc_msgSend_isEqualToString_(v18, v19, @"missed call") & 1) == 0))
  {
    if (!theString || (v20 = objc_msgSend_lowercaseString(theString, v13, v14), !objc_msgSend_isEqualToString_(v20, v21, @"missed call")))
    {
      v25 = CSDBSqliteConnectionStatementForSQL();
      if (!v25 || !*(v25 + 8))
      {
        goto LABEL_25;
      }

      if (theString)
      {
        v26 = CFRetain(theString);
      }

      else
      {
        v27 = sub_1B7B53F68(a2);
        IsEmpty = IMStringIsEmpty();
        if (!v27 || (IsEmpty & 1) != 0)
        {
          v29 = IMStringIsEmpty();
          v26 = 0;
          if (a2 && (v29 & 1) == 0)
          {
            v26 = CFRetain(a2);
          }

          if (!v27)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v26 = CFRetain(v27);
        }

        CFRelease(v27);
      }

LABEL_41:
      CSDBSqliteBindTextFromCFString();
      CSDBSqliteBindTextFromCFString();
      objc_msgSend_uppercaseString(a5, v30, v31);
      CSDBSqliteBindTextFromCFString();
      if (IMStringIsEmpty())
      {
        CSDBSqliteBindNull();
      }

      else
      {
        CSDBSqliteBindTextFromCFString();
      }

      if (CSDBSqliteStatementPerform() == 101)
      {
        Insert = CSDBSqliteConnectionRowidOfLastInsert();
      }

      else
      {
        v32 = IMLogHandleForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = 138413058;
          v34 = a2;
          v35 = 2112;
          v36 = theString;
          v37 = 2112;
          v38 = a4;
          v39 = 2112;
          v40 = a5;
          _os_log_error_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_ERROR, "[Database] ERROR: Unable to create handle row with uncanonid[%@] canonid[%@] service[%@] country[%@]", &v33, 0x2Au);
        }

        Insert = -1;
      }

      CSDBSqliteStatementReset();
      if (v26)
      {
        CFRelease(v26);
      }

LABEL_8:
      if (Insert != -1)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v33 = 138412802;
    v34 = a2;
    v35 = 2112;
    v36 = theString;
    v37 = 2080;
    v38 = "int64_t __createHandleRecord(CSDBSqliteConnection *, CFStringRef, CFStringRef, CFStringRef, CFStringRef)";
    v12 = "Got an invalid identifier (%@) (%@) in %s.";
    goto LABEL_23;
  }

LABEL_25:
  v22 = IMLogHandleForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v33 = 138413058;
    v34 = a2;
    v35 = 2112;
    v36 = theString;
    v37 = 2112;
    v38 = a4;
    v39 = 2112;
    v40 = a5;
    _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "AWOL handle for uncanonicalizedID [%@]  canonicalizedID [%@] Service [%@] Country [%@]", &v33, 0x2Au);
  }

  Insert = -1;
LABEL_28:
  v23 = *MEMORY[0x1E69E9840];
  return Insert;
}

BOOL sub_1B7B53CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 == -1 || a3 == -1)
  {
    v9 = IMLogHandleForCategory();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (result)
    {
      v11 = 134218240;
      v12 = a2;
      v13 = 2048;
      v14 = a3;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "** You attempted to bind HandleID [%lld] to ChatID [%lld]. One of these values is bogus.", &v11, 0x16u);
      result = 0;
    }
  }

  else
  {
    v5 = CSDBSqliteConnectionStatementForSQL();
    if (v5 && *(v5 + 8))
    {
      CSDBSqliteBindInt();
      CSDBSqliteBindInt();
    }

    v6 = CSDBSqliteStatementPerform();
    CSDBSqliteStatementReset();
    if (v6 == 1)
    {
      v7 = IMLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF1BE8();
      }
    }

    result = v6 != 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7B53E58(int a1, __CFString *theString, const __CFString *a3, uint64_t a4, int a5)
{
  Length = CFStringGetLength(theString);
  v9 = -1;
  if (a3)
  {
    if (Length)
    {
      if (CFStringGetLength(a3))
      {
        v10 = CSDBSqliteConnectionStatementForSQL();
        if (v10)
        {
          v11 = v10;
          if (*(v10 + 8))
          {
            if (a5 || (v13 = sub_1B7B53F68(theString)) == 0)
            {
              v12 = CFRetain(theString);
            }

            else
            {
              v14 = v13;
              v12 = CFRetain(v13);
              CFRelease(v14);
            }

            CSDBSqliteBindTextFromCFString();
            CSDBSqliteBindTextFromCFString();
            if (sqlite3_step(*(v11 + 8)) == 100)
            {
              v9 = sqlite3_column_int(*(v11 + 8), 0);
            }

            else
            {
              v9 = -1;
            }

            CSDBSqliteStatementReset();
            if (v12)
            {
              CFRelease(v12);
            }
          }
        }
      }
    }
  }

  return v9;
}

__CFString *sub_1B7B53F68(__CFString *theString)
{
  v1 = theString;
  if (theString)
  {
    if (CFStringHasPrefix(theString, @"+"))
    {
      v4 = IMCanonicalizeFormattedString();
    }

    else if (objc_msgSend__appearsToBePhoneNumber(v1, v2, v3))
    {
      v4 = IMInternationalForPhoneNumberWithOptions();
    }

    else
    {
      v4 = objc_msgSend_lowercaseString(v1, v5, v6);
    }

    v1 = v4;
    if (v4)
    {
      CFRetain(v4);
    }
  }

  return v1;
}

void sub_1B7B53FF0(uint64_t a1, uint64_t a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  valuePtr = sqlite3_column_int(*(a2 + 8), 2);
  v2 = CSDBSqliteConnectionStatementForSQL();
  if (v2)
  {
    v3 = v2;
    if (*(v2 + 8))
    {
      CSDBSqliteBindInt();
      if (sqlite3_step(*(v3 + 8)) == 100)
      {
        v4 = sqlite3_column_int(*(v3 + 8), 0);
        CSDBSqliteStatementReset();
        if (v4)
        {
          goto LABEL_19;
        }
      }

      else
      {
        CSDBSqliteStatementReset();
      }
    }
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (v6)
  {
    v7 = v6;
    values = v6;
    keys[0] = @"CKPlaceholderTimeSince1970Property";
    v8 = CFDictionaryCreate(v5, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v8)
    {
      v9 = v8;
      v10 = CSDBSqliteConnectionStatementForSQL();
      if (v10 && *(v10 + 8))
      {
        if (JWEncodeDictionary())
        {
          CSDBSqliteBindBlobFromCFData();
        }

        CSDBSqliteBindInt();
        if (CSDBSqliteStatementPerform() != 101)
        {
          v11 = IMLogHandleForCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF1C60();
          }
        }

        CSDBSqliteStatementReset();
      }

      CFRelease(v9);
    }

    CFRelease(v7);
  }

LABEL_19:
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1B7B541C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2 == -1 || a3 == -1)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF1CE4();
    }
  }

  else
  {
    v7 = CSDBSqliteConnectionStatementForSQL();
    if (v7)
    {
      if (*(v7 + 8))
      {
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        v8 = CSDBSqliteStatementPerform();
        CSDBSqliteStatementReset();
        if (v8 == 1)
        {
          v9 = IMLogHandleForCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v12 = 134218752;
            v13 = a3;
            v14 = 2048;
            v15 = a2;
            v16 = 1024;
            v17 = a4;
            v18 = 1024;
            v19 = 1;
            _os_log_error_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_ERROR, "[Database] ERROR: Failed to Asscociated chat [%lld] for group [%lld] (isBroadcast[%d]) with Sqlite result: %d.", &v12, 0x22u);
          }
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

CFStringRef sub_1B7B54348()
{
  v0 = CSDBSqliteConnectionStatementForSQL();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (!*(v0 + 8))
  {
    return 0;
  }

  CSDBSqliteBindInt();
  if (sqlite3_step(*(v1 + 8)) == 100 && sqlite3_column_text(*(v1 + 8), 0))
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = sqlite3_column_text(*(v1 + 8), 0);
    v4 = CFStringCreateWithCString(v2, v3, 0x8000100u);
  }

  else
  {
    v4 = 0;
  }

  CSDBSqliteStatementReset();
  return v4;
}

_BYTE *sub_1B7B54408(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void IMDSqlOperationSetError(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 168);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 168) = 0;
    }

    if (cf)
    {
      *(a1 + 168) = CFRetain(cf);
    }
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF23C4(v5, v6);
    }
  }
}

uint64_t IMDSqlOperationBeginTransaction(void *a1)
{
  if (a1)
  {
    if (!a1[1])
    {
      v2 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF2770(v2, v3);
      }
    }

    _IMDSqlOperationBeginQuery(a1, @"BEGIN IMMEDIATE;");
    IMDSqlOperationFinishQuery(a1);
    if (!a1[21])
    {
      a1[2] = CFRetain(@"BEGIN IMMEDIATE;");
      return 1;
    }
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF282C(v5, v6);
    }
  }

  return 0;
}

uint64_t IMDSqlOperationCommitTransaction(void *a1)
{
  if (!a1)
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2A60(v8, v9);
    }

    return 0;
  }

  if (!a1[1])
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF28E8(v2, v3);
    }
  }

  if (!a1[2])
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF29A4(v4, v5);
    }

    if (!a1[2])
    {
      return 0;
    }
  }

  _IMDSqlOperationBeginQuery(a1, @"COMMIT;");
  IMDSqlOperationFinishQuery(a1);
  if (a1[21])
  {
    return 0;
  }

  v6 = a1[2];
  if (v6)
  {
    CFRelease(v6);
    a1[2] = 0;
  }

  return 1;
}

uint64_t IMDSqlOperationRevertTransaction(void *a1)
{
  if (!a1)
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2C94(v8, v9);
    }

    return 0;
  }

  if (!a1[1])
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2B1C(v2, v3);
    }
  }

  if (!a1[2])
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2BD8(v4, v5);
    }

    if (!a1[2])
    {
      return 0;
    }
  }

  _IMDSqlOperationBeginQuery(a1, @"ROLLBACK;");
  IMDSqlOperationFinishQuery(a1);
  if (a1[21])
  {
    return 0;
  }

  v6 = a1[2];
  if (v6)
  {
    CFRelease(v6);
    a1[2] = 0;
  }

  return 1;
}

uint64_t IMDSqlOperationCommitOrRevertTransaction(void *a1)
{
  if (!a1)
  {
    v1 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2D50(v1, v2);
    }

    return 0;
  }

  if (a1[21])
  {
    IMDSqlOperationRevertTransaction(a1);
    return 0;
  }

  IMDSqlOperationCommitTransaction(a1);
  return 1;
}

sqlite3_stmt **_IMDSqlOperationGetRowsWithBindingBlock(sqlite3_stmt **a1, const __CFString *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = MEMORY[0x1E696AEC0];
    v9 = IMFileLocationTrimFileName();
    v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, &stru_1F2FA9728);
    v13 = objc_msgSend_stringWithFormat_(v8, v12, @"Unexpected nil '%@' in %s at %s:%d. %@", @"query", "NSArray *_IMDSqlOperationGetRowsWithBindingBlock(IMDSqlOperation *, CFStringRef, __strong dispatch_block_t)", v9, 329, v11);

    v14 = IMGetAssertionFailureHandler();
    if (v14)
    {
      v14(v13);
    }

    else
    {
      v17 = objc_msgSend_warning(MEMORY[0x1E69A6138], v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }

    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF2F98(v6, v7);
  }

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v5)
  {
LABEL_4:
    if (!a1)
    {
      goto LABEL_41;
    }

    _IMDSqlOperationBeginQuery(a1, a2);
    v5[2](v5);
    goto LABEL_22;
  }

LABEL_15:
  v18 = MEMORY[0x1E696AEC0];
  v19 = IMFileLocationTrimFileName();
  v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, &stru_1F2FA9728);
  v23 = objc_msgSend_stringWithFormat_(v18, v22, @"Unexpected nil '%@' in %s at %s:%d. %@", @"binder", "NSArray *_IMDSqlOperationGetRowsWithBindingBlock(IMDSqlOperation *, CFStringRef, __strong dispatch_block_t)", v19, 330, v21);

  v24 = IMGetAssertionFailureHandler();
  if (v24)
  {
    v24(v23);
  }

  else
  {
    v27 = objc_msgSend_warning(MEMORY[0x1E69A6138], v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE318();
    }
  }

  if (a1)
  {
    _IMDSqlOperationBeginQuery(a1, a2);
LABEL_22:
    v28 = 0;
    while (IMDSqlOperationHasRows(a1))
    {
      Row = IMDSqlStatementGetRow(a1 + 4);
      if (Row)
      {
        if (!v28)
        {
          v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (!v28)
          {
            v31 = MEMORY[0x1E696AEC0];
            v32 = IMFileLocationTrimFileName();
            v34 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v33, &stru_1F2FA9728);
            v36 = objc_msgSend_stringWithFormat_(v31, v35, @"Unexpected nil '%@' in %s at %s:%d. %@", @"rows", "NSArray *_IMDSqlOperationGetRowsWithBindingBlock(IMDSqlOperation *, CFStringRef, __strong dispatch_block_t)", v32, 345, v34);

            v37 = IMGetAssertionFailureHandler();
            if (v37)
            {
              v37(v36);
            }

            else
            {
              v40 = objc_msgSend_warning(MEMORY[0x1E69A6138], v38, v39);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v45 = v36;
                _os_log_error_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", buf, 0xCu);
              }
            }

            v28 = 0;
          }
        }

        objc_msgSend_addObject_(v28, v29, Row);
      }
    }

    IMDSqlOperationFinishQuery(a1);
    if (a1[21] && v28)
    {
      a1 = 0;
    }

    else
    {
      v41 = MEMORY[0x1E695E0F0];
      if (v28)
      {
        v41 = v28;
      }

      a1 = v41;
    }
  }

LABEL_41:

  v42 = *MEMORY[0x1E69E9840];
  return a1;
}

sqlite3_stmt **_IMDSqlOperationGetRowsForQueryWithBindingBlock(const __CFString *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v36 = xmmword_1E7CB8EC8;
  v37 = *off_1E7CB8ED8;
  v7 = MEMORY[0x1E696AEC0];
  v8 = IMFileLocationTrimFileName();
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, &stru_1F2FA9728);
  v12 = objc_msgSend_stringWithFormat_(v7, v11, @"Unexpected nil '%@' in %s at %s:%d. %@", @"query", "NSArray *_IMDSqlOperationGetRowsForQueryWithBindingBlock(CFStringRef, NSError *__autoreleasing *, __strong IMDSqlOperationBlock)", v8, 368, v10);

  v13 = IMGetAssertionFailureHandler();
  if (v13)
  {
    v13(v12);
  }

  else
  {
    v16 = objc_msgSend_warning(MEMORY[0x1E69A6138], v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE318();
    }
  }

  if (!v6)
  {
LABEL_10:
    v36 = xmmword_1E7CB8EF0;
    v37 = *off_1E7CB8F00;
    v17 = MEMORY[0x1E696AEC0];
    v18 = IMFileLocationTrimFileName();
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, &stru_1F2FA9728);
    v22 = objc_msgSend_stringWithFormat_(v17, v21, @"Unexpected nil '%@' in %s at %s:%d. %@", @"binderBlock", "NSArray *_IMDSqlOperationGetRowsForQueryWithBindingBlock(CFStringRef, NSError *__autoreleasing *, __strong IMDSqlOperationBlock)", v18, 369, v20);

    v23 = IMGetAssertionFailureHandler();
    if (v23)
    {
      v23(v22);
    }

    else
    {
      v26 = objc_msgSend_warning(MEMORY[0x1E69A6138], v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

LABEL_16:
  *&v36 = 0;
  *(&v36 + 1) = &v36;
  *&v37 = 0xD010000000;
  *(&v37 + 1) = "";
  memset(v38, 0, sizeof(v38));
  IMDSqlOperationInitWithSharedCSDBDatabase(v38);
  v27 = *(&v36 + 1);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1B7B54F04;
  v33[3] = &unk_1E7CB8F20;
  v28 = v6;
  v34 = v28;
  v35 = &v36;
  RowsWithBindingBlock = _IMDSqlOperationGetRowsWithBindingBlock((v27 + 32), a1, v33);
  if (IMDSqlOperationRelease(*(&v36 + 1) + 32, a2))
  {
    v30 = MEMORY[0x1E695E0F0];
    if (RowsWithBindingBlock)
    {
      v30 = RowsWithBindingBlock;
    }

    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  _Block_object_dispose(&v36, 8);
  return v31;
}

void sub_1B7B54EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B54F04(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 40) + 8) + 32);
  }

  return result;
}

void IMDSqlOperationColumnByIndex(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF31CC(v6, v7);
    }
  }

  IMDSqlStatementColumnByIndex((a1 + 32), a2, a3);
}

void IMDSqlOperationColumnByName(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = IMFileLocationTrimFileName();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, &stru_1F2FA9728);
    v11 = objc_msgSend_stringWithFormat_(v6, v10, @"Unexpected nil '%@' in %s at %s:%d. %@", @"operation", "IMDSqlColumn IMDSqlOperationColumnByName(IMDSqlOperation *, const char *)", v7, 449, v9);

    v12 = IMGetAssertionFailureHandler();
    if (v12)
    {
      v12(v11);
    }

    else
    {
      v15 = objc_msgSend_warning(MEMORY[0x1E69A6138], v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  IMDSqlStatementColumnByName((a1 + 32), a2, a3);
}

sqlite3_stmt *IMDSqlOperationColumnCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3288(v2, v3);
    }
  }

  return IMDSqlStatementColumnCount((a1 + 32));
}

const void *IMDChatRecordCreate(uint64_t a1, int64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int64_t a14, int64_t a15, int64_t a16, uint64_t a17, uint64_t a18, int64_t a19, uint64_t a20, int64_t a21, uint64_t a22, uint64_t a23, int64_t a24, int64_t a25, int64_t a26, int64_t a27, int64_t a28)
{
  v28 = a27;
  v29 = a28;
  v53 = a26;
  v56 = a25;
  v31 = a23;
  v30 = a24;
  v32 = a22;
  v52 = a21;
  v100 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v50 = v30;
    v33 = a5;
    pthread_once(&stru_1EDBE5A50, sub_1B7AE97F8);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v35 = Instance;
      Instance[1] = 0u;
      Instance[3] = 0u;
      Instance[4] = 0u;
      v49 = Instance + 1;
      Instance[2] = 0u;
      v36 = v28;
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_DEBUG, "_IMDChatRecordCreate()", buf, 2u);
        }
      }

      IMDEnsureSharedRecordStoreInitialized();
      objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, v38, v39);
      v40 = CSDBRecordCreate();
      if (v40)
      {
        cfa = CFNumberCreate(0, kCFNumberSInt64Type, &a21);
        v51 = CFNumberCreate(0, kCFNumberSInt64Type, &a26);
        v41 = 0;
        *buf = a8;
        v74 = a2;
        v75 = a3;
        v76 = a4;
        v77 = v33;
        v78 = a6;
        v79 = a7;
        v80 = a9;
        v81 = a12;
        v82 = a14;
        v83 = a11;
        v84 = a10;
        v85 = a13;
        v86 = a15;
        v87 = a16;
        v88 = a17;
        v89 = a18;
        v90 = a19;
        v91 = a20;
        v92 = cfa;
        v93 = v32;
        v94 = v31;
        v95 = v50;
        v96 = v51;
        v97 = v56;
        v98 = v36;
        v99 = v29;
        do
        {
          if (IMOSLoggingEnabled())
          {
            v42 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *v64 = 67109376;
              *v65 = v41;
              *&v65[4] = 1024;
              *&v65[6] = 27;
              _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_DEBUG, "_IMDChatRecordSetProperty [%d of %d]", v64, 0xEu);
            }
          }

          v43 = dword_1B7D09AE8[2 * v41];
          v44 = *&buf[8 * v41];
          CSDBRecordSetProperty();
          ++v41;
        }

        while (v41 != 27);
        if (cfa)
        {
          CFRelease(cfa);
        }

        if (v51)
        {
          CFRelease(v51);
        }

        v45 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *v64 = 138413314;
          *v65 = a6;
          *&v65[8] = 2112;
          v66 = a10;
          v67 = 2112;
          v68 = a13;
          v69 = 2112;
          v70 = a20;
          v71 = 2112;
          v72 = a7;
          _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_DEFAULT, "Saving new chat record to database with identifier: %@ displayName: %@ groupID: %@ originalGroupID: %@ service: %@", v64, 0x34u);
        }

        if (IMDChatRecordAddChat(v40))
        {
          *v49 = CSDBRecordGetID();
          IMDSMSRecordStoreRecordCommitChangesAndRelease(v40);
          goto LABEL_27;
        }

        CFRelease(v35);
        IMDSMSRecordStoreRecordCommitChangesAndRelease(v40);
      }

      else
      {
        CFRelease(v35);
      }
    }

    v46 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_DEFAULT, "Saving new chat failed", buf, 2u);
    }

    v35 = 0;
  }

  else
  {
    *buf = 0;
    v74 = buf;
    v75 = 0x2020000000;
    v76 = 0;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = sub_1B7B55714;
    v63[3] = &unk_1E7CB6838;
    v63[4] = buf;
    __syncXPCIMDChatRecordCreate_IPCAction(v63, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v52, v32, v31, v30, v56, v53, v28, v29);
    v35 = *(v74 + 3);
    _Block_object_dispose(buf, 8);
  }

LABEL_27:
  v47 = *MEMORY[0x1E69E9840];
  return v35;
}

void *sub_1B7B55714(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDChatRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1B7B55748(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t IMDChatRecordCopyChatIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF33BC(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    return 0;
  }

  if (!*(a2 + 24))
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B55904;
    v17[3] = &unk_1E7CB7920;
    v17[4] = &v18;
    v17[5] = a2;
    _IMDPerformBlock(v17);
    ValueAtIndex = v19[3];
    _Block_object_dispose(&v18, 8);
    return ValueAtIndex;
  }

  v4 = *(*(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + 216);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), 5);
  if (ValueAtIndex)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return ValueAtIndex;
  }

  v7 = *v4;
  if (!*v4)
  {
    return ValueAtIndex;
  }

  return v7();
}

void sub_1B7B558EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B55904(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t IMDChatRecordCopyGUIDUnlocked(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3434(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    return 0;
  }

  if (!*(a2 + 24))
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B55AC0;
    v17[3] = &unk_1E7CB7920;
    v17[4] = &v18;
    v17[5] = a2;
    _IMDPerformBlock(v17);
    ValueAtIndex = v19[3];
    _Block_object_dispose(&v18, 8);
    return ValueAtIndex;
  }

  v4 = *(*(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + 16);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), 0);
  if (ValueAtIndex)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return ValueAtIndex;
  }

  v7 = *v4;
  if (!*v4)
  {
    return ValueAtIndex;
  }

  return v7();
}

void sub_1B7B55AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B55AC0(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t IMDChatRecordCopyDisplayName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF34AC(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    return 0;
  }

  if (!*(a2 + 24))
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7B55C7C;
    v17[3] = &unk_1E7CB7920;
    v17[4] = &v18;
    v17[5] = a2;
    _IMDPerformBlock(v17);
    ValueAtIndex = v19[3];
    _Block_object_dispose(&v18, 8);
    return ValueAtIndex;
  }

  v4 = *(*(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + 456);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), 11);
  if (ValueAtIndex)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return ValueAtIndex;
  }

  v7 = *v4;
  if (!*v4)
  {
    return ValueAtIndex;
  }

  return v7();
}

void sub_1B7B55C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B55C7C(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

CFTypeRef IMDChatRecordCopyChatLookupRecords(void *a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a1[8])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3052000000;
    v21 = sub_1B7AE19A4;
    v22 = sub_1B7AE24DC;
    v23 = objc_msgSend_guid(a1, a2, a3);
    if (v19[5])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x3052000000;
      v15 = sub_1B7AE19A4;
      v16 = sub_1B7AE24DC;
      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = objc_msgSend_synchronousDatabase(IMDDatabase, v6, v7);
      v9 = v19[5];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1B7B55EA4;
      v11[3] = &unk_1E7CB8FC0;
      v11[4] = &v18;
      v11[5] = &v12;
      objc_msgSend_fetchIdentifiersForChatRecordWithGUID_completionHandler_(v8, v10, v9, v11);
      v5 = v13[5];
      _Block_object_dispose(&v12, 8);
    }

    else
    {
      v5 = 0;
    }

    _Block_object_dispose(&v18, 8);
    return v5;
  }

  v3 = a1[8];

  return CFRetain(v3);
}

void sub_1B7B55EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3524(a1, a3, v5);
    }
  }

  else
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);

    MEMORY[0x1EEE66B58](v6, sel_addEntriesFromDictionary_, a2);
  }
}

CFTypeRef IMDChatRecordCopyChatServiceRecords(void *a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a1[9])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3052000000;
    v21 = sub_1B7AE19A4;
    v22 = sub_1B7AE24DC;
    v23 = objc_msgSend_guid(a1, a2, a3);
    if (v19[5])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x3052000000;
      v15 = sub_1B7AE19A4;
      v16 = sub_1B7AE24DC;
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = objc_msgSend_synchronousDatabase(IMDDatabase, v6, v7);
      v9 = v19[5];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = sub_1B7B560F4;
      v11[3] = &unk_1E7CB8FE8;
      v11[4] = &v18;
      v11[5] = &v12;
      objc_msgSend_fetchServicesForChatWithGUID_completionHandler_(v8, v10, v9, v11);
      v5 = v13[5];
      _Block_object_dispose(&v12, 8);
    }

    else
    {
      v5 = 0;
    }

    _Block_object_dispose(&v18, 8);
    return v5;
  }

  v3 = a1[9];

  return CFRetain(v3);
}

void sub_1B7B560F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 32) + 8) + 40);
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = a3;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Error fetching services for chat record with guid %@ : %@", &v10, 0x16u);
    }

    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = *MEMORY[0x1E69E9840];

    objc_msgSend_addObjectsFromArray_(v8, a2, a2);
  }
}

uint64_t sub_1B7B56204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  CSDBSqliteBindInt();
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v8 = *MEMORY[0x1E695E480];
    do
    {
      v9 = sqlite3_column_int(*(a4 + 8), 0);
      v10 = IMDMessageRecordCreateFromRecordIDUnlocked(v8, v9);
      if (v10)
      {
        *(*(*(a1 + 32) + 8) + 24) = v10;
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

uint64_t IMDChatRecordCopyMessagesWithLimit(uint64_t a1, int64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    Identifier = IMDChatRecordGetIdentifier(a1);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B563EC;
    v9[3] = &unk_1E7CB7548;
    v9[5] = Identifier;
    v9[6] = a2;
    v9[4] = &v10;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT message_id FROM chat_message_join WHERE chat_id = ? ORDER BY ROWID DESC LIMIT ?;", v9);
  }

  else
  {
    v5 = IMDChatRecordGetIdentifier(a1);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7B564D4;
    v8[3] = &unk_1E7CB6838;
    v8[4] = &v10;
    __syncXPCIMDChatRecordCopyMessagesWithLimit_IPCAction(v8, v5, a2);
  }

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t sub_1B7B563EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  CSDBSqliteBindInt();
  v7 = *(a1 + 48);
  CSDBSqliteBindInt64();
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = MEMORY[0x1E695E9C0];
    do
    {
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v10);
      }

      v11 = sqlite3_column_int(*(a4 + 8), 0);
      v12 = IMDMessageRecordCreateFromRecordIDUnlocked(v9, v11);
      if (v12)
      {
        v13 = v12;
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v12);
        CFRelease(v13);
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

xpc_object_t sub_1B7B564D4(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B56568;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B56568(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

void sub_1B7B56650(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 40))
    {
      **(a1 + 40) = CSDBRecordGetProperty();
    }

    if (*(a1 + 48))
    {
      **(a1 + 48) = CSDBRecordGetProperty();
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 72))
    {
      **(a1 + 72) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 80))
    {
      **(a1 + 80) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 88))
    {
      **(a1 + 88) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 96))
    {
      **(a1 + 96) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 104))
    {
      **(a1 + 104) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 112))
    {
      **(a1 + 112) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 120))
    {
      **(a1 + 120) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 128))
    {
      **(a1 + 128) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 136))
    {
      **(a1 + 136) = CSDBRecordGetProperty();
    }

    if (*(a1 + 144))
    {
      **(a1 + 144) = CSDBRecordGetProperty();
    }

    if (*(a1 + 152))
    {
      **(a1 + 152) = CSDBRecordGetProperty();
    }

    if (*(a1 + 160))
    {
      **(a1 + 160) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 168))
    {
      **(a1 + 168) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 176))
    {
      **(a1 + 176) = CSDBRecordGetProperty();
    }

    if (*(a1 + 184))
    {
      **(a1 + 184) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 192))
    {
      **(a1 + 192) = sub_1B7B36E14();
    }

    if (*(a1 + 200))
    {
      **(a1 + 200) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 208))
    {
      **(a1 + 208) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 216))
    {
      **(a1 + 216) = CSDBRecordGetProperty();
    }

    if (*(a1 + 224))
    {
      **(a1 + 224) = sub_1B7B36E14();
    }

    if (*(a1 + 232))
    {
      **(a1 + 232) = CSDBRecordGetProperty();
    }

    if (*(a1 + 240))
    {
      **(a1 + 240) = CSDBRecordGetProperty();
    }

    if (*(a1 + 248))
    {
      **(a1 + 248) = CSDBRecordGetProperty();
    }

    CFRelease(v3);
  }
}

CFTypeRef IMDChatRecordCopyCachedLastMessage(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 48)) != 0)
  {
    return CFRetain(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t IMDChatRecordCachedUnreadCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 40);
  }

  else
  {
    return -1;
  }
}

uint64_t IMDChatRecordLastMessageTimeStampOnLoad(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return -1;
  }
}

void _IMDChatRecordSetGUID(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_1B7B56AD0;
      v20[3] = &unk_1E7CB75B0;
      v20[4] = a1;
      v20[5] = a2;
      _IMDPerformBlock(v20);
    }

    else
    {
      v12 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF3630(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF36A8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void sub_1B7B56AD0(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

void IMDChatRecordSetIsArchived(uint64_t a1, int64_t a2)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7B56C0C;
      v13[3] = &unk_1E7CB75B0;
      v13[4] = a1;
      v13[5] = a2;
      _IMDPerformBlock(v13);
    }

    else
    {
      v12 = *(a1 + 16);

      __syncXPCIMDChatRecordSetIsArchived_IPCAction(0, v12, a2);
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3720(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void sub_1B7B56C0C(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

void IMDChatRecordSetIsBlackholed(uint64_t a1, int64_t a2)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7B56D48;
      v13[3] = &unk_1E7CB75B0;
      v13[4] = a1;
      v13[5] = a2;
      _IMDPerformBlock(v13);
    }

    else
    {
      v12 = *(a1 + 16);

      __syncXPCIMDChatRecordSetIsBlackholed_IPCAction(0, v12, a2);
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3798(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void sub_1B7B56D48(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

void IMDChatRecordSetIsRecovered(uint64_t a1, int64_t a2)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7B56E84;
      v13[3] = &unk_1E7CB75B0;
      v13[4] = a1;
      v13[5] = a2;
      _IMDPerformBlock(v13);
    }

    else
    {
      v12 = *(a1 + 16);

      __syncXPCIMDChatRecordSetIsRecovered_IPCAction(0, v12, a2);
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3810(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void sub_1B7B56E84(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

void IMDChatRecordSetIsDeletingIncomingMessages(uint64_t a1, int64_t a2)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7B56FC0;
      v13[3] = &unk_1E7CB75B0;
      v13[4] = a1;
      v13[5] = a2;
      _IMDPerformBlock(v13);
    }

    else
    {
      v12 = *(a1 + 16);

      __syncXPCIMDChatRecordSetIsDeletingIncomingMessages_IPCAction(0, v12, a2);
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3888(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void sub_1B7B56FC0(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

uint64_t IMDChatRecordAddMessageIfNeededUnlocked(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  Identifier = IMDMessageRecordGetIdentifier(a2);
  v5 = IMDChatRecordGetIdentifier(a1);
  Date = IMDMessageRecordGetDate(a2, 0, v6);
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v13 = Identifier;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEBUG, "Trying to associate message [%lld] with chat [%lld]", buf, 0x16u);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7B57184;
  v11[3] = &unk_1E7CB9050;
  v11[4] = v5;
  v11[5] = Identifier;
  v11[6] = Date;
  result = _IMDPerformLockedStatementBlockWithQuery(@"INSERT OR IGNORE INTO chat_message_join (chat_id, message_id, message_date) VALUES (?, ?, ?);", v11);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B57184(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  CSDBSqliteBindInt();
  v3 = *(a1 + 40);
  CSDBSqliteBindInt();
  v4 = *(a1 + 48);
  CSDBSqliteBindInt64();
  v5 = CSDBSqliteStatementPerform();
  v6 = v5;
  if (v5)
  {
    if (v5 != 101)
    {
      v7 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 67109120;
        v11 = v6;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEFAULT, "SQLite returned %d from IMDChatRecordAddMessageIfNeededUnlocked", &v10, 8u);
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 67109120;
      v11 = v6;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEBUG, "SQLite returned %d from IMDChatRecordAddMessageIfNeeded", &v10, 8u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t IMDChatRecordRemoveMessage(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = IMDatabaseLogHandle(), os_log_type_enabled(v4, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF3900(v4, v5);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF39B8(v6, v7);
  }

LABEL_6:
  Identifier = IMDMessageRecordGetIdentifier(a2);
  v9 = IMDChatRecordGetIdentifier(a1);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7B573C4;
  v11[3] = &unk_1E7CB9070;
  v11[4] = v9;
  v11[5] = Identifier;
  v11[6] = a2;
  v11[7] = a1;
  return _IMDPerformLockedStatementBlockWithQuery(@"DELETE FROM chat_message_join WHERE chat_id = ? AND message_id = ?;", v11);
}

void sub_1B7B573C4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  CSDBSqliteBindInt();
  v3 = *(a1 + 40);
  CSDBSqliteBindInt();
  CSDBSqliteStatementPerform();
  CSDBSqliteStatementReset();
  IMDCoreSpotlightScheduleUpdateForDeletedMessages(1005);
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEBUG, "Finished remove message [%@] from chat [%@], updating the spotlight index for this chat.", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void IMDChatRecordAddHandle(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = IMDIsRunningInDatabaseServerProcess();
  Identifier = IMDHandleRecordGetIdentifier(a2);
  v6 = IMDChatRecordGetIdentifier(a1);
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v12 = Identifier;
        v13 = 2048;
        v14 = v6;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEBUG, "Trying to associate handle [%lld] with chat [%lld]", buf, 0x16u);
      }
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B576A0;
    v10[3] = &unk_1E7CB81C8;
    v10[4] = v6;
    v10[5] = Identifier;
    _IMDPerformLockedStatementBlockWithQuery(@"INSERT INTO chat_handle_join (chat_id, handle_id) VALUES (?, ?)", v10);
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];

    __syncXPCIMDChatRecordAddHandle_IPCAction(0, v6, Identifier);
  }
}

void sub_1B7B576A0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  CSDBSqliteBindInt();
  v3 = *(a1 + 40);
  CSDBSqliteBindInt();
  v4 = CSDBSqliteStatementPerform();
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 67109120;
      v7[1] = v4;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEBUG, "SQLite returned %d from IMDChatRecordAddHandle", v7, 8u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void IMDChatRecordRemoveHandle(uint64_t a1, uint64_t a2)
{
  v4 = IMDIsRunningInDatabaseServerProcess();
  Identifier = IMDHandleRecordGetIdentifier(a2);
  v6 = IMDChatRecordGetIdentifier(a1);
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7B5789C;
    v7[3] = &unk_1E7CB81C8;
    v7[4] = v6;
    v7[5] = Identifier;
    _IMDPerformLockedStatementBlockWithQuery(@"DELETE FROM chat_handle_join WHERE chat_id = ? AND handle_id = ?", v7);
  }

  else
  {

    __syncXPCIMDChatRecordRemoveHandle_IPCAction(0, v6, Identifier);
  }
}