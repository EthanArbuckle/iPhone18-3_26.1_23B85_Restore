void sub_1B7B5789C(uint64_t a1)
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
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEBUG, "SQLite returned %d from IMDChatRecordRemoveHandle", v7, 8u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void IMDChatRecordAnonymizedUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((IMDIsRunningInDatabaseServerProcess() & 1) == 0)
  {
    v36 = xmmword_1E7CB9090;
    v37 = *off_1E7CB90A0;
    v38 = 1446;
    v17 = MEMORY[0x1E696AEC0];
    v18 = IMFileLocationTrimFileName();
    v20 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, &stru_1F2FA9728);
    v22 = objc_msgSend_stringWithFormat_(v17, v21, @"Unexpected false '%@' in %s at %s:%d. %@", @"IMDIsRunningInDatabaseServerProcess()", "void IMDChatRecordAnonymizedUpdate(IMDChatRecordRef, CFDataRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef)", v18, 1446, v20);
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

  if (a1)
  {
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1B7B57B70;
    v35[3] = &unk_1E7CB8230;
    v35[4] = a1;
    v35[5] = a2;
    v35[6] = a3;
    v35[7] = a6;
    v35[8] = a5;
    v35[9] = a4;
    v35[10] = a7;
    v35[11] = a8;
    v35[12] = a9;
    _IMDPerformBlock(v35);
  }

  else
  {
    v27 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3AE8(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }
}

void sub_1B7B57B70(void *a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(a1[4] + 16));
  if (v2)
  {
    v3 = v2;
    if (a1[5])
    {
      CSDBRecordSetProperty();
    }

    v4 = a1[6];
    if (v4 && CFStringGetLength(v4) >= 1)
    {
      v5 = a1[6];
      CSDBRecordSetProperty();
    }

    v6 = a1[7];
    if (v6 && CFStringGetLength(v6) >= 1)
    {
      v7 = a1[7];
      CSDBRecordSetProperty();
    }

    v8 = a1[8];
    if (v8 && CFStringGetLength(v8) >= 1)
    {
      v9 = a1[8];
      CSDBRecordSetProperty();
    }

    v10 = a1[9];
    if (v10 && CFStringGetLength(v10) >= 1)
    {
      v11 = a1[9];
      CSDBRecordSetProperty();
    }

    v12 = a1[10];
    if (v12 && CFStringGetLength(v12) >= 1)
    {
      v13 = a1[10];
      CSDBRecordSetProperty();
    }

    v14 = a1[11];
    if (v14 && CFStringGetLength(v14) >= 1)
    {
      v15 = a1[11];
      CSDBRecordSetProperty();
    }

    v16 = a1[12];
    if (v16 && CFStringGetLength(v16) >= 1)
    {
      v17 = a1[12];
      CSDBRecordSetProperty();
    }

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

_OWORD *_IMDCopyIMDChatRecordFromXPCObjectServer(void *a1)
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

  return sub_1B7AEF890(0, int64, 0);
}

xpc_object_t _IMDCopyXPCObjectFromIMDChatRecordClient(uint64_t a1)
{
  if (!a1 || !*(a1 + 24))
  {
    return 0;
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = 0;
  for (i = 0; i != 28; ++i)
  {
    v7 = (*(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, v2, v3, v17, v18) + 80) + v5);
    v8 = *v7;
    v9 = v7[1];
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
    if (!ValueAtIndex)
    {
      goto LABEL_15;
    }

    v11 = ValueAtIndex;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v17 = ValueAtIndex;
        v18 = 0;
        IMInsertDatasToXPCDictionary();
        goto LABEL_15;
      }

      if (v9 != 3)
      {
        goto LABEL_15;
      }

      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      v12 = valuePtr;
      v13 = v4;
      v14 = v8;
LABEL_13:
      xpc_dictionary_set_int64(v13, v14, v12);
      goto LABEL_15;
    }

    if (!v9)
    {
      v13 = v4;
      v14 = v8;
      v12 = v11;
      goto LABEL_13;
    }

    if (v9 == 1)
    {
      v17 = ValueAtIndex;
      v18 = 0;
      IMInsertNSStringsToXPCDictionary();
    }

LABEL_15:
    v5 += 40;
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    xpc_dictionary_set_int64(v4, "recordIdentifier", v15);
  }

  return v4;
}

void sub_1B7B57E90(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 32);
        v9 = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = a3;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Failed to fetch services for chat record with guid %@ : %@", &v9, 0x16u);
      }
    }
  }

  else if (objc_msgSend_count(a2, a2, 0))
  {
    v7 = *(a1 + 40);
    IMInsertArraysToXPCDictionary();
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t IMDMergeDuplicateChatsWithOperation(uint64_t a1, id a2, uint64_t a3, void *a4)
{
  v102 = *MEMORY[0x1E69E9840];
  obj = a2;
  if (a2)
  {
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *buf = xmmword_1E7CB9130;
    *&buf[16] = *off_1E7CB9140;
    v101 = 1875;
    v11 = MEMORY[0x1E696AEC0];
    v12 = IMFileLocationTrimFileName();
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, &stru_1F2FA9728);
    v16 = objc_msgSend_stringWithFormat_(v11, v15, @"Unexpected nil '%@' in %s at %s:%d. %@", @"losingChatGUIDs", "BOOL IMDMergeDuplicateChatsWithOperation(IMDSqlOperation *, NSArray<NSString *> *, NSString *, NSString *)", v12, 1875, v14);
    v19 = IMGetAssertionFailureHandler();
    if (v19)
    {
      v19(v16);
    }

    else
    {
      v20 = objc_msgSend_warning(MEMORY[0x1E69A6138], v17, v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }

    a2 = 0;
    if (a1)
    {
LABEL_3:
      if (a3)
      {
        goto LABEL_4;
      }

LABEL_20:
      *buf = xmmword_1E7CB9180;
      *&buf[16] = *off_1E7CB9190;
      v101 = 1877;
      v31 = MEMORY[0x1E696AEC0];
      v32 = IMFileLocationTrimFileName();
      v34 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v33, &stru_1F2FA9728);
      v36 = objc_msgSend_stringWithFormat_(v31, v35, @"Unexpected nil '%@' in %s at %s:%d. %@", @"winningChatGUID", "BOOL IMDMergeDuplicateChatsWithOperation(IMDSqlOperation *, NSArray<NSString *> *, NSString *, NSString *)", v32, 1877, v34);
      v39 = IMGetAssertionFailureHandler();
      if (v39)
      {
        v39(v36);
      }

      else
      {
        v40 = objc_msgSend_warning(MEMORY[0x1E69A6138], v37, v38);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CEE318();
        }
      }

      goto LABEL_24;
    }
  }

  *buf = xmmword_1E7CB9158;
  *&buf[16] = *off_1E7CB9168;
  v101 = 1876;
  v21 = MEMORY[0x1E696AEC0];
  v22 = IMFileLocationTrimFileName();
  v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, &stru_1F2FA9728);
  v26 = objc_msgSend_stringWithFormat_(v21, v25, @"Unexpected nil '%@' in %s at %s:%d. %@", @"operation", "BOOL IMDMergeDuplicateChatsWithOperation(IMDSqlOperation *, NSArray<NSString *> *, NSString *, NSString *)", v22, 1876, v24);
  v29 = IMGetAssertionFailureHandler();
  if (v29)
  {
    v29(v26);
  }

  else
  {
    v30 = objc_msgSend_warning(MEMORY[0x1E69A6138], v27, v28);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE318();
    }
  }

  a2 = obj;
  if (!a3)
  {
    goto LABEL_20;
  }

LABEL_4:
  result = 0;
  if (!a1 || !a2)
  {
    goto LABEL_43;
  }

  IMDDropAllTriggersWithOperation(a1, 0, a3);
  if (!*(a1 + 168))
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v95, v99, 16);
    if (v41)
    {
      v42 = *v96;
      while (2)
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v96 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v95 + 1) + 8 * i);
          v94[0] = MEMORY[0x1E69E9820];
          v94[1] = 3221225472;
          v94[2] = sub_1B7B5884C;
          v94[3] = &unk_1E7CB91B0;
          v94[5] = v44;
          v94[6] = a1;
          v94[4] = a3;
          _IMDSqlOperationRunQuery(a1, @"UPDATE chat_message_join SET chat_id = (SELECT ROWID FROM chat WHERE guid = ?) WHERE (chat_id = (SELECT ROWID FROM chat WHERE guid = ?) AND message_id NOT IN (SELECT message_id from chat_message_join WHERE chat_id =  (SELECT ROWID FROM chat WHERE guid = ?)));", v94, 0);
          if (*(a1 + 168))
          {
            if (IMOSLoggingEnabled())
            {
              v46 = OSLogHandleForIMEventCategory();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                v49 = IMDSqlOperationErrorDescription(a1, v47, v48);
                *buf = 138412546;
                *&buf[4] = v49;
                *&buf[12] = 2112;
                *&buf[14] = v44;
                _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, "failed updating chat_message_join table: %@ for unwanted chat: %@", buf, 0x16u);
              }
            }

            goto LABEL_37;
          }
        }

        v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v95, v99, 16);
        if (v41)
        {
          continue;
        }

        break;
      }
    }

LABEL_37:
    if (*(a1 + 168))
    {
      goto LABEL_61;
    }

    if (IMOSLoggingEnabled())
    {
      v63 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v64 = objc_msgSend_count(obj, v61, v62);
        v67 = objc_msgSend_description(obj, v65, v66);
        *buf = 134218242;
        *&buf[4] = v64;
        *&buf[12] = 2112;
        *&buf[14] = v67;
        _os_log_impl(&dword_1B7AD5000, v63, OS_LOG_TYPE_INFO, "Delete %lld rows from chat_handle_join: %@", buf, 0x16u);
      }
    }

    v68 = MEMORY[0x1E696AEC0];
    v69 = objc_msgSend_count(obj, v61, v62);
    v71 = IMDGenerateInClauseForCount(v69, v70);
    v73 = objc_msgSend_stringWithFormat_(v68, v72, @"DELETE FROM chat_handle_join WHERE chat_id IN (SELECT ROWID FROM chat WHERE guid %@)", v71);
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = sub_1B7B588A4;
    v93[3] = &unk_1E7CB6FD0;
    v93[4] = obj;
    v93[5] = a1;
    _IMDSqlOperationRunQuery(a1, v73, v93, 0);
    if (*(a1 + 168))
    {
      if (IMOSLoggingEnabled())
      {
        v76 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          v77 = IMDSqlOperationErrorDescription(a1, v74, v75);
          v80 = objc_msgSend_description(obj, v78, v79);
          *buf = 138412546;
          *&buf[4] = v77;
          *&buf[12] = 2112;
          *&buf[14] = v80;
          _os_log_impl(&dword_1B7AD5000, v76, OS_LOG_TYPE_INFO, "failed deleting chat_handle_join rows failed (%@) - for unwanted chats: %@", buf, 0x16u);
        }
      }

      if (*(a1 + 168))
      {
        goto LABEL_61;
      }
    }

    if (objc_msgSend_length(a4, v74, v75))
    {
      v82 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v81, @"UPDATE chat SET display_name = ? WHERE guid = ?;");
      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = sub_1B7B58994;
      v92[3] = &unk_1E7CB91B0;
      v92[5] = a3;
      v92[6] = a1;
      v92[4] = a4;
      _IMDSqlOperationRunQuery(a1, v82, v92, 0);
    }

    if (*(a1 + 168))
    {
LABEL_61:
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_42;
      }

      v50 = OSLogHandleForIMEventCategory();
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        goto LABEL_42;
      }

      v53 = objc_msgSend_count(obj, v51, v52);
      v56 = objc_msgSend_description(obj, v54, v55);
      *buf = 134218498;
      *&buf[4] = v53;
      *&buf[12] = 2112;
      *&buf[14] = v56;
      *&buf[22] = 2112;
      *&buf[24] = a3;
      v57 = "Finished merging %ld (%@) unwanted chats into %@ ";
      v58 = v50;
      v59 = 32;
    }

    else
    {
      IMDCreateTriggersWithOperation(a1, 0);
      if (!*(a1 + 168))
      {
        goto LABEL_42;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_42;
      }

      v83 = OSLogHandleForIMEventCategory();
      if (!os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
      {
        goto LABEL_42;
      }

      v86 = IMDSqlOperationErrorDescription(a1, v84, v85);
      v89 = objc_msgSend_description(obj, v87, v88);
      *buf = 138412546;
      *&buf[4] = v86;
      *&buf[12] = 2112;
      *&buf[14] = v89;
      v57 = "failed recreating the triggers: (%@) - for unwanted chats: %@";
      v58 = v83;
      v59 = 22;
    }

    _os_log_impl(&dword_1B7AD5000, v58, OS_LOG_TYPE_INFO, v57, buf, v59);
LABEL_42:
    result = *(a1 + 168) == 0;
    goto LABEL_43;
  }

  result = IMOSLoggingEnabled();
  if (result)
  {
    v8 = OSLogHandleForIMEventCategory();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 138412290;
      *&buf[4] = IMDSqlOperationErrorDescription(a1, v9, v10);
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "failed dropping triggers: %@", buf, 0xCu);
LABEL_24:
      result = 0;
    }
  }

LABEL_43:
  v60 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B587C4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7B584C8);
  }

  _Unwind_Resume(a1);
}

void sub_1B7B5884C(uint64_t *a1)
{
  IMDSqlStatementBindTextFromCFString(a1[6] + 32, a1[4]);
  IMDSqlStatementBindTextFromCFString(a1[6] + 32, a1[5]);
  v2 = a1[4];
  v3 = a1[6] + 32;

  IMDSqlStatementBindTextFromCFString(v3, v2);
}

uint64_t sub_1B7B588A4(uint64_t a1, const char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = *(a1 + 32);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, a2, &v10, v14, 16);
  if (result)
  {
    v5 = result;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        IMDSqlStatementBindTextFromCFString(*(a1 + 40) + 32, *(*(&v10 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v8, &v10, v14, 16);
      v5 = result;
    }

    while (result);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B58994(uint64_t *a1)
{
  IMDSqlStatementBindTextFromCFString(a1[6] + 32, a1[4]);
  v2 = a1[5];
  v3 = a1[6] + 32;

  IMDSqlStatementBindTextFromCFString(v3, v2);
}

uint64_t IMDChatRecordRepairDuplicateChats(void *a1, uint64_t a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1B7B58DC4;
    v29[3] = &unk_1E7CB91D8;
    v29[4] = a1;
    v29[5] = a2;
    v29[6] = a3;
    v29[7] = &v30;
    v29[8] = a4;
    IMDRunSqlOperation(v29);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_msgSend_count(a1, v8, v9);
        v14 = objc_msgSend_description(a1, v12, v13);
        *buf = 134218498;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        *&buf[22] = 2112;
        v37 = a2;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Being to merge %lld (%@) duplicate chats into winning chat %@", buf, 0x20u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    v37 = sub_1B7AE19A4;
    v38 = sub_1B7AE24DC;
    v39 = 0;
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v8, v9);
    v16 = v15;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1B7B59044;
    v28[3] = &unk_1E7CB74D0;
    v28[4] = &v30;
    v28[5] = buf;
    __syncXPCIMDRepairDuplicateChats_IPCAction(v28, a1, a2, a3);
    if (*(v31 + 24) == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v18, v19);
          *v34 = 134217984;
          v35 = v20 - v16;
          _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Finished merging duplicated chats in %f seconds", v34, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v24 = COERCE_DOUBLE(objc_msgSend_localizedDescription(*(*&buf[8] + 40), v22, v23));
          *v34 = 138412290;
          v35 = v24;
          _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "IMDMergeDuplicateChatsWithOperation in agent failed with error: %@", v34, 0xCu);
        }
      }

      if (a4)
      {
        *a4 = *(*&buf[8] + 40);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  v25 = *(v31 + 24);
  _Block_object_dispose(&v30, 8);
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

void sub_1B7B58D34(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    if (!v25)
    {
      JUMPOUT(0x1B7B58CC8);
    }

    JUMPOUT(0x1B7B58CB4);
  }

  _Block_object_dispose((v26 - 144), 8);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(exc_buf);
}

void sub_1B7B58DC4(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_msgSend_count(*(a1 + 32), v4, v5);
      *&v10 = COERCE_DOUBLE(objc_msgSend_description(*(a1 + 32), v8, v9));
      v11 = *(a1 + 40);
      v26 = 134218498;
      v27 = v7;
      v28 = 2112;
      v29 = *&v10;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Being to merge %lld (%@) duplicate chats into winning chat %@", &v26, 0x20u);
    }
  }

  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v4, v5);
  v13 = v12;
  IMDSqlOperationBeginTransaction(a2);
  *(*(*(a1 + 56) + 8) + 24) = IMDMergeDuplicateChatsWithOperation(a2, *(a1 + 32), *(a1 + 40), *(a1 + 48));
  if (*(a2 + 168))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = IMDSqlOperationErrorDescription(a2, v15, v16);
        v26 = 138412290;
        v27 = v17;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "IMDMergeDuplicateChatsWithOperation failed in db with error: %@", &v26, 0xCu);
      }
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = *(a2 + 168);
    }
  }

  IMDSqlOperationCommitOrRevertTransaction(a2);
  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v21 = objc_msgSend_count(*(a1 + 32), v19, v20);
      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v22, v23);
      v26 = 134218240;
      v27 = v21;
      v28 = 2048;
      v29 = v24 - v13;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Finished repairing %lld duplicate chats in %f seconds", &v26, 0x16u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7B59044(uint64_t result, xpc_object_t xdict)
{
  if (xdict)
  {
    v3 = result;
    result = xpc_dictionary_get_BOOL(xdict, "BOOL_result");
    *(*(*(v3 + 32) + 8) + 24) = result;
    if ((*(*(*(v3 + 32) + 8) + 24) & 1) == 0)
    {
      result = xpc_dictionary_get_string(xdict, "error_domain");
      if (result)
      {
        v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, result);
        uint64 = xpc_dictionary_get_uint64(xdict, "error_code");
        string = xpc_dictionary_get_string(xdict, "error_localized_description");
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

        v13 = objc_alloc(MEMORY[0x1E696ABC0]);
        result = objc_msgSend_initWithDomain_code_userInfo_(v13, v14, v5, uint64, v12);
        *(*(*(v3 + 40) + 8) + 40) = result;
      }
    }
  }

  return result;
}

CFStringRef sub_1B7B59178(void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<IMDChatRecord %p [%p]>[%lld]{}", a1, v3, a1[2]);
}

uint64_t sub_1B7B591D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _IMDCopyIMDHandleRecordFromXPCObjectClient(a3);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(*(*(a1 + 32) + 32), v4);
    CFRelease(v5);
  }

  return 1;
}

uint64_t sub_1B7B5921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  CSDBSqliteBindInt();
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9C0];
    do
    {
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v9);
      }

      v10 = sqlite3_column_int(*(a4 + 8), 0);
      v11 = IMDHandleRecordCreateFromRecordIDUnlocked(v8, v10);
      if (v11)
      {
        v12 = v11;
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
        CFRelease(v12);
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

uint64_t _IMDSMSDatabaseMigrateData_24_25()
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
        v3 = *MEMORY[0x1E695E480];
        v4 = *MEMORY[0x1E69A5F00];
        do
        {
          sqlite3_column_int(*(v1 + 8), 0);
          v5 = sqlite3_column_blob(*(v1 + 8), 1);
          v6 = sqlite3_column_bytes(*(v1 + 8), 1);
          if (v5)
          {
            v7 = v6 == 0;
          }

          else
          {
            v7 = 1;
          }

          if (v7)
          {
            v8 = 0;
          }

          else
          {
            v8 = CFDataCreate(v3, v5, v6);
          }

          v9 = JWDecodeCodableObjectWithStandardAllowlist();
          v12 = objc_msgSend_string(v9, v10, v11);
          v14 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v13, v4);
          v16 = objc_msgSend_stringByRemovingCharactersFromSet_(v12, v15, v14);
          v17 = CSDBSqliteConnectionStatementForSQL();
          if (v17 && *(v17 + 8))
          {
            if (v16)
            {
              CSDBSqliteBindTextFromCFString();
            }

            else
            {
              CSDBSqliteBindNull();
            }

            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }
        }

        while (sqlite3_step(*(v1 + 8)) == 100);
      }
    }
  }

  return 1;
}

void *IMDCreateCFErrorWithQueryErrorCode(int a1, sqlite3 *a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = sqlite3_errmsg(a2);
    if (v5)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, v5);
      a3 = objc_msgSend_stringWithFormat_(v7, v9, @"%@, error: %@", a3, v8);
    }
  }

  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E696A578];
  v20[0] = a3;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, v20, &v19, 1);
  v14 = objc_msgSend_initWithDomain_code_userInfo_(v10, v13, @"SQL_ERROR", a1, v12);
  v15 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF3C50(v14, v15, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v14;
}

const void *sub_1B7B5958C()
{
  v0 = _CFCopySystemVersionDictionary();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, *MEMORY[0x1E695E1E8]);
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v1);
  return v3;
}

uint64_t sub_1B7B595E8()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1B8CAFAD0]("DMIsMigrationNeeded", @"DataMigration");
  if (byte_1EDBE2A90 == 1)
  {
    byte_1EDBE2A90 = v0();
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        if (byte_1EDBE2A90)
        {
          v2 = @"YES";
        }

        else
        {
          v2 = @"NO";
        }

        v12 = 138412290;
        v13 = v2;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "system migration finished: %@", &v12, 0xCu);
      }
    }

    if (byte_1EDBE2A90 == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v3 = OSLogHandleForIMEventCategory();
        v4 = 1;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          LOWORD(v12) = 0;
          _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "system needs to finish migration still, not allowing indexing", &v12, 2u);
        }
      }

      else
      {
        v4 = 1;
      }

      goto LABEL_31;
    }
  }

  v5 = sub_1B7B5958C();
  if (v5)
  {
    CFPreferencesSynchronize(@"com.apple.imdsmsrecordstore", @"mobile", *MEMORY[0x1E695E898]);
    v6 = CFPreferencesCopyValue(@"kIMDPersistenceLastBuild", @"com.apple.imdsmsrecordstore", @"mobile", *MEMORY[0x1E695E8B0]);
    if (v6 && CFStringCompare(v5, v6, 1uLL) == kCFCompareEqualTo)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v12 = 138412546;
          v13 = v6;
          v14 = 2112;
          v15 = v5;
          _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Migration not needed, allowing indexing, lastBuild: %@ currentBuild: %@", &v12, 0x16u);
        }
      }

      v4 = 0;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v12 = 138412546;
          v13 = v6;
          v14 = 2112;
          v15 = v5;
          _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Needs migration, not allowing indexing, lastBuild: %@, currentBuild: %@", &v12, 0x16u);
        }
      }

      v4 = 1;
      if (!v6)
      {
        goto LABEL_29;
      }
    }

    CFRelease(v6);
LABEL_29:
    CFRelease(v5);
    goto LABEL_31;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "No current build version, allowing indexing", &v12, 2u);
    }
  }

  v4 = 0;
LABEL_31:
  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t IMDSystemMigrationOccurred()
{
  if (byte_1EDBE5C80)
  {
    return 1;
  }

  result = sub_1B7B595E8() ^ 1;
  byte_1EDBE5C80 = result;
  return result;
}

void IMDSystemMigrationSetHasMigrated(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  byte_1EDBE5C80 = a1;
  if (a1)
  {
    v1 = sub_1B7B5958C();
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v5 = 138412290;
        v6 = v1;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "We have migrated, lastBuild: %@", &v5, 0xCu);
      }
    }

    v3 = *MEMORY[0x1E695E898];
    CFPreferencesSetValue(@"kIMDPersistenceLastBuild", v1, @"com.apple.imdsmsrecordstore", @"mobile", *MEMORY[0x1E695E898]);
    CFPreferencesSynchronize(@"com.apple.imdsmsrecordstore", @"mobile", v3);
    if (v1)
    {
      CFRelease(v1);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t IMDSaveWallpaperForCNContact(void *a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v52 = v3;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "handle to save wallpaper for: %@", buf, 0xCu);
      }
    }

    v8 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v5, v6);
    v10 = objc_msgSend_fetchCNContactForHandleWithID_(v8, v9, v3);

    v13 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v11, v12);
    v16 = objc_msgSend_keysForNicknameHandling(MEMORY[0x1E69A7FD0], v14, v15);
    v18 = objc_msgSend_completedContact_withKeys_(v13, v17, v10, v16);

    if (v18)
    {
      v22 = objc_msgSend_mutableCopy(v18, v19, v20);
      if (!v4 || (objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v21, v4), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend_dataWithContentsOfURL_(MEMORY[0x1E695DEF0], v24, v23), v25 = objc_claimAutoreleasedReturnValue(), v23, !v25))
      {
        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v52 = v3;
            _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "updated contact wallpaper with nil image from handle: %@", buf, 0xCu);
          }
        }

        v25 = 0;
      }

      v29 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v26, v27);
      v32 = objc_msgSend_getContactStore(v29, v30, v31);

      v33 = objc_alloc_init(MEMORY[0x1E695CF88]);
      objc_msgSend_updateContact_(v33, v34, v22);
      v46 = 0;
      v36 = objc_msgSend_executeSaveRequest_error_(v32, v35, v33, &v46);
      v37 = v46;
      *(v48 + 24) = v36;
      if (v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = v36;
      }

      if ((v38 & 1) == 0)
      {
        v39 = IMLogHandleForCategory();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF3CDC(v37, v39);
        }
      }
    }

    else
    {
      v22 = IMLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF3D54(v3, v22);
      }
    }
  }

  else
  {
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = sub_1B7B59ED0;
    v43[3] = &unk_1E7CB70D0;
    v45 = &v47;
    v44 = v3;
    __syncXPCIMDSaveWallpaperForCNContact_IPCAction(v43, v44, v4);
    v18 = v44;
  }

  v40 = *(v48 + 24);
  _Block_object_dispose(&v47, 8);

  v41 = *MEMORY[0x1E69E9840];
  return v40 & 1;
}

void sub_1B7B59ED0(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(v3, "BOOL_result");
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "successfully saved wallpaper for: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7B5A65C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = *(a1 + 32);
  v11 = objc_msgSend_transferGUID(v7, v9, v10);
  LODWORD(v8) = objc_msgSend_isEqualToString_(v8, v12, v11);

  if (v8)
  {
    if (*(a1 + 56) == 1 && IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        v17 = 136315650;
        v18 = "+[IMDAttachmentSyndicationUtilities _attachmentGUIDIsSyndicatable:syndicationIdentifier:attachmentUTI:attributedBody:encodedSyndicationRanges:isCMM:verbose:]_block_invoke";
        v19 = 2112;
        v20 = v14;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "%s Found corresponding IMMessagePartDescriptor for attachment GUID %@ (syndicationIdentifier %@)", &v17, 0x20u);
      }
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
}

id sub_1B7B5B20C(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = @"sms.db";
  }

  else
  {
    v2 = @"sms-temp.db";
  }

  PathToFilename = IMDSMSRecordStoreCreatePathToFilename(v2);

  return PathToFilename;
}

uint64_t IMDSMSRecordStoreCreatePathToFilename(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_msgSend_addObject_(v3, v4, @"/");
  objc_msgSend_addObject_(v3, v5, @"var");
  objc_msgSend_addObject_(v3, v6, @"mobile");
  objc_msgSend_addObject_(v3, v7, @"Library");
  objc_msgSend_addObject_(v3, v8, @"SMS");
  objc_msgSend_addObject_(v3, v9, v1);
  v11 = objc_msgSend_pathWithComponents_(MEMORY[0x1E696AEC0], v10, v3);

  objc_autoreleasePoolPop(v2);
  return v11;
}

void _IMDSetDatabasePathBlock(const void *a1)
{
  v1 = _Block_copy(a1);
  v2 = off_1EBA510E8;
  off_1EBA510E8 = v1;
}

void _IMDExecuteBlockForTesting(void *a1)
{
  v1 = off_1EBA510E8;
  v2 = a1;
  aBlock = _Block_copy(v1);
  v2[2](v2);

  v3 = _Block_copy(aBlock);
  v4 = off_1EBA510E8;
  off_1EBA510E8 = v3;
}

void *IMDSMSRecordStoreIsDatabaseProtectedAtPath(void *result, const char *a2)
{
  if (result)
  {
    return objc_msgSend_hasSuffix_(result, a2, @"sms.db");
  }

  return result;
}

uint64_t IMDSMSRecordStoreCopySMSDBPathWithCreate(int a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = (*(off_1EBA510E8 + 2))();
  v6 = v3;
  if (a1)
  {
    v7 = v3;
    objc_msgSend_fileSystemRepresentation(v7, v8, v9);
    CSDBGetMobileUserUID();
    CSDBGetMobileUserGID();
    CSDBCreateDirectoriesToPath();
  }

  v10 = objc_msgSend_stringByResolvingAndStandardizingPath(v6, v4, v5);

  objc_autoreleasePoolPop(v2);
  return v10;
}

void IMDSMSRecordStoreInvalidateCaches()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {

    _IMDPerformLockedMessageStoreBlockWithoutInitialize(&unk_1F2FA0BB0);
  }
}

uint64_t sub_1B7B5B4F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return CSDBRecordStoreInvalidateCachesWithStore();
  }

  return result;
}

uint64_t IMDSMSRecordStoreGetSchemaVersion()
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v0 = IMDIsRunningInDatabaseServerProcess();
  if (v0)
  {
    IMDSMSRecordStoreUseProtectedDatabase(v0, v1, v2);
    v3 = IMDSMSRecordStoreCopySMSDBPathWithCreate(1);
    v4 = v3;
    if (v3)
    {
      v5 = v3;
      v8 = objc_msgSend_UTF8String(v5, v6, v7);
      if (v8)
      {
        memset(&v12, 0, sizeof(v12));
        if (!stat(v8, &v12))
        {
          *(v14 + 6) = CSDBSqliteUtilitiesGetSchemaVersionAtPathWithProtection();
        }
      }
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B7B5B65C;
    v11[3] = &unk_1E7CB6838;
    v11[4] = &v13;
    __syncXPCIMDMessageStoreSchemaVersion_IPCAction(v11);
  }

  v9 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v9;
}

uint64_t sub_1B7B5B65C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_uint64(xdict, "uint64_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

__CFString *IMDSMSRecordStoreGetSchema()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B7AE19C4;
  v9 = sub_1B7AE24F0;
  v10 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1B7B5B820;
    v4[3] = &unk_1E7CB7390;
    v4[4] = &v5;
    _IMDPerformLockedStatementBlockWithQuery(@"select type,name,tbl_name,sql from sqlite_master;", v4);
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1B7B5B9E4;
    v3[3] = &unk_1E7CB6838;
    v3[4] = &v5;
    __syncXPCIMDMessageStoreSchema_IPCAction(v3);
  }

  v0 = v6[5];
  if (!v0)
  {
    v0 = &stru_1F2FA9728;
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);

  return v1;
}

uint64_t sub_1B7B5B820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v7 = *MEMORY[0x1E695E480];
    do
    {
      if (sqlite3_column_text(*(a4 + 8), 0))
      {
        v8 = sqlite3_column_text(*(a4 + 8), 0);
        v9 = CFStringCreateWithCString(v7, v8, 0x8000100u);
      }

      else
      {
        v9 = 0;
      }

      if (sqlite3_column_text(*(a4 + 8), 1))
      {
        v10 = sqlite3_column_text(*(a4 + 8), 1);
        v11 = CFStringCreateWithCString(v7, v10, 0x8000100u);
      }

      else
      {
        v11 = 0;
      }

      if (sqlite3_column_text(*(a4 + 8), 2))
      {
        v12 = sqlite3_column_text(*(a4 + 8), 2);
        v13 = CFStringCreateWithCString(v7, v12, 0x8000100u);
      }

      else
      {
        v13 = 0;
      }

      if (sqlite3_column_text(*(a4 + 8), 3))
      {
        v15 = sqlite3_column_text(*(a4 + 8), 3);
        v16 = CFStringCreateWithCString(v7, v15, 0x8000100u);
      }

      else
      {
        v16 = 0;
      }

      if (*(*(*(a1 + 32) + 8) + 40))
      {
        objc_msgSend_stringByAppendingFormat_(*(*(*(a1 + 32) + 8) + 40), v14, @"<t:%@, n:%@, tn:%@, sql:%@>", v9, v11, v13, v16);
      }

      else
      {
        objc_msgSend_stringByAppendingFormat_(&stru_1F2FA9728, v14, @"<t:%@, n:%@, tn:%@, sql:%@>", v9, v11, v13, v16);
      }
      v17 = ;
      v18 = *(*(a1 + 32) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

void sub_1B7B5B9E4(uint64_t a1, xpc_object_t xdict)
{
  v3 = MEMORY[0x1E696AEC0];
  string = xpc_dictionary_get_string(xdict, "schema");
  if (string)
  {
    objc_msgSend_stringWithCString_encoding_(v3, v5, string, 4);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(v3, v5, "", 4);
  }
  v6 = ;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t IMDSMSRecordStoreSetPageCacheSize(uint64_t a1)
{
  result = IMDIsRunningInDatabaseServerProcess();
  if (result)
  {

    return MEMORY[0x1EEE003E8](a1);
  }

  return result;
}

uint64_t sub_1B7B5BAB8()
{
  CSDBRecordSaveStore();

  return CSDBRecordStoreInvalidateCachesWithStore();
}

void IMDSMSRecordStoreRecordCommitChangesAndRelease(const void *a1)
{
  _IMDPerformLockedMessageStoreBlock(&unk_1F2FA0BF0);

  CFRelease(a1);
}

uint64_t IMDSMSRecordStoreCopySMSDBPath(uint64_t a1, const char *a2, uint64_t a3)
{
  IMDSMSRecordStoreUseProtectedDatabase(a1, a2, a3);

  return IMDSMSRecordStoreCopySMSDBPathWithCreate(1);
}

void IMDSMSRecordStoreSave()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {

    _IMDPerformLockedMessageStoreBlock(&unk_1F2F9FAF0);
  }

  else
  {

    __syncXPCIMDMessageStoreSave_IPCAction(0);
  }
}

uint64_t sub_1B7B5BBE8(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B5CB60;
  v3[3] = &unk_1E7CB92D0;
  v3[5] = &v4;
  v3[6] = a1;
  v3[4] = v8;
  _IMDPerformLockedDatabaseBlock(v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  _Block_object_dispose(v8, 8);
  return v1;
}

void sub_1B7B5BCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5BCFC()
{
  v0 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  v2 = CFStringCreateWithFormat(v0, 0, @"%f", *&Current);
  CSDBSqliteConnectionBeginTransactionType();
  CSDBSqliteConnectionSetValueForProperty();
  CSDBSqliteConnectionSetValueForProperty();
  CSDBSqliteConnectionSetValueForProperty();
  CSDBSqliteConnectionCommit();

  CFRelease(v2);
}

uint64_t sub_1B7B5BDD4()
{
  v0 = CSDBSqliteDatabaseConnectionForReading();
  IMDSqliteDatabaseClean(v0, v1, v2);

  return CSDBSqliteDatabaseReleaseSqliteConnection();
}

void IMDSMSRecordStoreClean()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "Beginning record store clean.", v1, 2u);
    }
  }

  _IMDPerformLockedDatabaseBlock(&unk_1F2FA0C30);
}

double _IMDSMSRecordStoreCountersGetLastResetTime()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1B7B5BF7C;
  v2[3] = &unk_1E7CB92A8;
  v2[4] = &v3;
  _IMDPerformLockedDatabaseBlock(v2);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7B5BF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5BF7C(uint64_t a1)
{
  v2 = CSDBSqliteDatabaseCopyValueForProperty();
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CFStringGetDoubleValue(v2);

    CFRelease(v3);
  }
}

uint64_t _IMDSMSRecordStoreShouldDeleteStickerFromReferenceCount(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = IMAttachmentsLogHandle();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (!a1)
  {
    if (v3)
    {
      LOWORD(v10) = 0;
      v5 = "XPC connection failed, not deleting sticker";
      v6 = v2;
      v7 = 2;
LABEL_10:
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, v5, &v10, v7);
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  if (a1 != -1)
  {
    if (v3)
    {
      v10 = 134217984;
      v11 = a1;
      v5 = "Found %lld sticker(s), path is in use";
      v6 = v2;
      v7 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v3)
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Sticker with path is not in use.", &v10, 2u);
  }

  v4 = 1;
LABEL_12:

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

void IMDCleanseOrphanedStickerAttachments()
{
  v59 = *MEMORY[0x1E69E9840];
  v0 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEFAULT, "Beginning sticker attachment cleanse.", buf, 2u);
  }

  v45 = IMStickerCacheDirectoryURL();
  v44 = objc_msgSend_path(v45, v1, v2);
  v5 = objc_msgSend_stringByResolvingAndStandardizingPath(v44, v3, v4);
  if (v5)
  {
    v6 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v5;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "Sticker cache path %@", buf, 0xCu);
    }

    v9 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v7, v8);
    v52 = 0;
    v42 = objc_msgSend_contentsOfDirectoryAtPath_error_(v9, v10, v5, &v52);
    v43 = v52;

    if (v43)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v56 = v5;
          v57 = 2112;
          v58 = v43;
          _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Attachments. Error getting contents of directory %@ error %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v15 = objc_msgSend_lastPathComponent(v5, v11, v12);
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = v42;
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v48, buf, 16);
      if (v18)
      {
        v19 = *v49;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v49 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v48 + 1) + 8 * i);
            v22 = objc_msgSend_stringByAppendingPathComponent_(v15, v17, v21);
            v24 = objc_msgSend_stringByAppendingString_(v22, v23, @"%");

            v26 = objc_msgSend_stringByAppendingString_(@"%", v25, v24);

            v27 = IMAttachmentsLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *v53 = 138412290;
              v54 = v26;
              _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_DEFAULT, "Searching db for filename: %@", v53, 0xCu);
            }

            HaveAttachments = IMDAttachmentRecordDoesStickerPathHaveAttachments(v26);
            v30 = objc_msgSend_stringByAppendingPathComponent_(v5, v29, v21);
            v33 = objc_msgSend_stringByResolvingAndStandardizingPath(v30, v31, v32);

            if (_IMDSMSRecordStoreShouldDeleteStickerFromReferenceCount(HaveAttachments))
            {
              if (IMOSLoggingEnabled())
              {
                v36 = OSLogHandleForIMEventCategory();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
                {
                  *v53 = 138412290;
                  v54 = v33;
                  _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_INFO, "Will delete %@", v53, 0xCu);
                }
              }

              v37 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v34, v35);
              v47 = 0;
              objc_msgSend_removeItemAtPath_error_(v37, v38, v33, &v47);
              v39 = v47;

              if (v39 && IMOSLoggingEnabled())
              {
                v40 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  *v53 = 138412290;
                  v54 = v33;
                  _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_INFO, "Attachments. Could not delete sticker at path %@", v53, 0xCu);
                }
              }
            }
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v48, buf, 16);
        }

        while (v18);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Attachments _IMDCleanseOrpanedStickersInStickerCachePath nil stickerCachePath", buf, 2u);
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

void IMDCleanseBrowserSnapshots()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEFAULT, "Beginning browser snapshot deletion", buf, 2u);
  }

  v1 = IMBrowserSnapshotCacheDirectoryURL();
  v4 = objc_msgSend_path(v1, v2, v3);

  v7 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v5, v6);
  v12 = 0;
  objc_msgSend_removeItemAtPath_error_(v7, v8, v4, &v12);
  v9 = v12;

  if (v9 && IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Attachments. Could not delete browser snapshot cache at path %@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

BOOL IMDPersistenceProtectionMerge_UnprotectedDatabaseExists()
{
  v21 = *MEMORY[0x1E69E9840];
  v0 = (*(off_1EBA510E8 + 2))();
  v1 = v0;
  v4 = objc_msgSend_UTF8String(v1, v2, v3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v5 = stat(v4, &v14);
  if ((!v5 || *__error() != 2) && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = v0;
      v10 = objc_msgSend_UTF8String(v0, v8, v9);
      v11 = "NO";
      *buf = 136315650;
      v16 = v10;
      if (!v5)
      {
        v11 = "YES";
      }

      v17 = 2080;
      v18 = v11;
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "ProtectionMerge: unprotected database: %s, found: %s, error: %d\n", buf, 0x1Cu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5 == 0;
}

BOOL IMDPersistenceProtectionMerge_DeleteUnprotectedDatabase()
{
  v37 = *MEMORY[0x1E69E9840];
  v0 = (*(off_1EBA510E8 + 2))();
  v1 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_msgSend_initWithFormat_(v1, v2, @"%@-shm", v0);
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = objc_msgSend_initWithFormat_(v4, v5, @"%@-wal", v0);
  v7 = v3;
  v10 = objc_msgSend_UTF8String(v7, v8, v9);
  remove(v10, v11);
  v12 = v6;
  v15 = objc_msgSend_UTF8String(v12, v13, v14);
  remove(v15, v16);
  v17 = v0;
  v20 = objc_msgSend_UTF8String(v17, v18, v19);
  v22 = remove(v20, v21);
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = v0;
      v27 = objc_msgSend_UTF8String(v24, v25, v26);
      v28 = "NO";
      *buf = 136315650;
      v32 = v27;
      if (!v22)
      {
        v28 = "YES";
      }

      v33 = 2080;
      v34 = v28;
      v35 = 1024;
      v36 = v22;
      _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "ProtectionMerge: unprotected database: %s, deleted: %s, error: %d\n", buf, 0x1Cu);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return !v22;
}

uint64_t IMDPersistenceProtectionMerge_CurrentlyUsingUnprotectedDatabase()
{
  v0 = IMDSharedSqliteDatabasePath();
  v1 = (*(off_1EBA510E8 + 2))();
  isEqualToString = objc_msgSend_isEqualToString_(v0, v2, v1);

  return isEqualToString;
}

void sub_1B7B5CB60(void *a1)
{
  v2 = a1[6];
  if (v2 <= 3)
  {
    *(*(a1[4] + 8) + 24) = off_1E7CB92F0[v2];
  }

  v3 = *(*(a1[4] + 8) + 24);
  v4 = CSDBSqliteDatabaseCopyValueForProperty();
  if (v4)
  {
    v5 = v4;
    *(*(a1[5] + 8) + 24) += CFStringGetIntValue(v4);

    CFRelease(v5);
  }
}

void sub_1B7B5CC3C()
{
  v0 = objc_alloc_init(IMDGroupPhotoDonationManager);
  v1 = qword_1EDBE7938;
  qword_1EDBE7938 = v0;
}

void sub_1B7B5D1C0()
{
  qword_1EDBE7950 = _CFRuntimeRegisterClass();
  v0 = objc_opt_class();
  class_getName(v0);
  _CFRuntimeBridgeClasses();
  v1 = objc_opt_class();

  IMDBridgedRecordPopulatePropertyImplementations(v1, &off_1E7CB9378, 23);
}

const void *IMDAttachmentRecordCreate(uint64_t a1, uint64_t a2, uint8_t *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v71 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    pthread_once(&stru_1EDBE5740, sub_1B7B5D1C0);
    Instance = _CFRuntimeCreateInstance();
    v25 = Instance;
    if (Instance)
    {
      *(Instance + 16) = 0;
      v39 = (Instance + 16);
      *(Instance + 24) = 0;
      v26 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "_IMDAttachmentRecordCreate()", buf, 2u);
      }

      IMDEnsureSharedRecordStoreInitialized();
      v28 = a12;
      v27 = a14;
      v31 = CSDBRecordCreate();
      if (v31)
      {
        if (a12)
        {
          v28 = JWEncodeDictionary();
        }

        if (a14)
        {
          v27 = JWEncodeDictionary();
        }

        if (a15)
        {
          v32 = JWEncodeDictionary();
        }

        else
        {
          v32 = 0;
        }

        *buf = a2;
        v49 = a3;
        v50 = a4;
        v34 = 0;
        v51 = objc_msgSend_stringByAbbreviatingWithTildeInPath(a6, v29, v30);
        v52 = a7;
        v53 = a8;
        v54 = a9;
        v55 = a10;
        v56 = v28;
        v57 = a5;
        v58 = a11;
        v59 = a13;
        v60 = v27;
        v61 = v32;
        v62 = a16;
        v63 = a17;
        v64 = a18;
        v65 = a19;
        v66 = a20;
        v67 = a21;
        v68 = a22;
        v69 = a23;
        v70 = a24;
        do
        {
          v35 = dword_1B7D09BC0[v34];
          v36 = *&buf[v34 * 4];
          CSDBRecordSetProperty();
          v34 += 2;
        }

        while (v34 != 46);
        if (IMDAttachmentRecordAddAttachment(v31))
        {
          *v39 = CSDBRecordGetID();
        }

        else
        {
          CFRelease(v25);
          v25 = 0;
        }

        CFRelease(v31);
        IMDAttachmentRecordDoubleCheckSize(a6, a11);
      }

      else
      {
        v33 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF3F68(v33);
        }

        CFRelease(v25);
        v25 = 0;
      }
    }
  }

  else
  {
    *buf = 0;
    v49 = buf;
    v50 = 0x2020000000;
    v51 = 0;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = sub_1B7B5D618;
    v47[3] = &unk_1E7CB6838;
    v47[4] = buf;
    __syncXPCIMDAttachmentRecordCreate_IPCAction(v47, a2, a3, a4, a5, a6, a7, a8, a9, a10 != 0, a11, a12, a13 != 0, a14, a15, a16 != 0, a17, a18, a19, a20, a21, a22, a23, a24);
    v25 = *(v49 + 3);
    _Block_object_dispose(buf, 8);
  }

  v37 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t sub_1B7B5D618(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _IMDCopyIMDAttachmentRecordFromXPCObjectClient(void *a1)
{
  if (xpc_dictionary_get_count(a1) >= 3)
  {
    pthread_once(&stru_1EDBE5740, sub_1B7B5D1C0);
    Instance = _CFRuntimeCreateInstance();
    v2 = Instance;
    if (!Instance)
    {
      return v2;
    }

    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    v4 = 23;
    Mutable = CFArrayCreateMutable(0, 23, 0);
    do
    {
      CFArrayAppendValue(Mutable, 0);
      --v4;
    }

    while (v4);
    for (i = &qword_1E7CB9388; ; i += 5)
    {
      v7 = 0;
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v11 = IMGetXPCDataFromDictionary();
          goto LABEL_15;
        }

        if (v9 != 3)
        {
          goto LABEL_16;
        }
      }

      else if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_16;
        }

        v11 = IMGetXPCStringFromDictionary();
        goto LABEL_15;
      }

      v11 = IMGetXPCIntFromDictionary();
LABEL_15:
      v7 = v11;
LABEL_16:
      if (CFArrayGetValueAtIndex(Mutable, v4))
      {
        if (v10)
        {
          v12 = *(v10 + 8);
          if (v12)
          {
            v12();
          }
        }
      }

      if (v7 && v10 && *v10)
      {
        v7 = (*v10)(v7);
      }

      CFArraySetValueAtIndex(Mutable, v4++, v7);
      if (v4 == 23)
      {
        *(v2 + 24) = Mutable;
        *(v2 + 16) = xpc_dictionary_get_int64(a1, "recordIdentifier");
        return v2;
      }
    }
  }

  return 0;
}

const void *sub_1B7B5D7E8(uint64_t a1, uint64_t a2, int a3)
{
  pthread_once(&stru_1EDBE5740, sub_1B7B5D1C0);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 0;
  }

  v6 = Instance;
  *(Instance + 16) = a2;
  *(Instance + 24) = 0;
  if (a3)
  {
    v7 = IMDAttachmentRecordCopyAttachmentRecord(a2);
  }

  else
  {
    v7 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(a2);
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v7 = v6;
    v8 = 0;
  }

  CFRelease(v7);
  return v8;
}

uint64_t IMDAttachmentRecordIsSticker(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 11);
      v2 = ValueAtIndex;
      if (ValueAtIndex && *MEMORY[0x1E69990E8])
      {
        return (*MEMORY[0x1E69990E8])(ValueAtIndex);
      }
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B5D9B8;
      v12[3] = &unk_1E7CB7920;
      v12[4] = &v13;
      v12[5] = a1;
      _IMDPerformBlock(v12);
      v2 = *(v14 + 24);
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3FAC(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1B7B5D9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5D9B8(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordGetIdentifier(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  v6 = v1;
  v7 = v2;
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Attempted to get record identifier for NULL attachment record", v5, 2u);
  }

  return 0;
}

uint64_t IMDAttachmentRecordCopyGUID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4024(v6, v7, v8, v9, v10, v11, v12, v13);
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
    v14[2] = sub_1B7B5DBCC;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
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

void sub_1B7B5DBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5DBCC(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordGetCreatedDate(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 1);
      if (ValueAtIndex && *MEMORY[0x1E69990E8])
      {
        LODWORD(ValueAtIndex) = (*MEMORY[0x1E69990E8])();
      }

      return ValueAtIndex;
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B5DD54;
      v12[3] = &unk_1E7CB7920;
      v12[4] = &v13;
      v12[5] = a1;
      _IMDPerformBlock(v12);
      v2 = *(v14 + 6);
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF409C(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1B7B5DD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5DD54(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordGetStartDate(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 2);
      if (ValueAtIndex && *MEMORY[0x1E69990E8])
      {
        LODWORD(ValueAtIndex) = (*MEMORY[0x1E69990E8])();
      }

      return ValueAtIndex;
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B5DEDC;
      v12[3] = &unk_1E7CB7920;
      v12[4] = &v13;
      v12[5] = a1;
      _IMDPerformBlock(v12);
      v2 = *(v14 + 6);
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4114(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1B7B5DEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5DEDC(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordGetIsOutgoing(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 7);
      v2 = ValueAtIndex;
      if (ValueAtIndex && *MEMORY[0x1E69990E8])
      {
        return (*MEMORY[0x1E69990E8])(ValueAtIndex);
      }
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B5E06C;
      v12[3] = &unk_1E7CB7920;
      v12[4] = &v13;
      v12[5] = a1;
      _IMDPerformBlock(v12);
      v2 = *(v14 + 24);
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF418C(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1B7B5E054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5E06C(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

id IMDAttachmentRecordCopyFilename(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4204(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    return 0;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1B7B5E278;
    v29[3] = &unk_1E7CB7920;
    v29[4] = &v30;
    v29[5] = a2;
    _IMDPerformBlock(v29);
    v24 = v31[3];
    if (v24)
    {
      v27 = objc_msgSend_stringByResolvingAndStandardizingPath(v24, v22, v23);
      v28 = v31[3];
      if (v28)
      {
        CFRelease(v28);
        v31[3] = 0;
      }

      if (a3)
      {
        v27 = objc_msgSend___im_filePathWithVariant_(v27, v25, *MEMORY[0x1E69A7078]);
      }

      v21 = objc_msgSend___im_apfsCompatibleFilename(v27, v25, v26);
      v31[3] = v21;
    }

    else
    {
      v21 = 0;
    }

    _Block_object_dispose(&v30, 8);
    return v21;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v4, 3);
  if (!ValueAtIndex)
  {
    return 0;
  }

  if (a3)
  {
    ValueAtIndex = objc_msgSend___im_filePathWithVariant_(ValueAtIndex, v6, *MEMORY[0x1E69A7078]);
  }

  v8 = objc_msgSend_stringByResolvingAndStandardizingPath(ValueAtIndex, v6, v7);
  v11 = objc_msgSend___im_apfsCompatibleFilename(v8, v9, v10);

  return v11;
}

void sub_1B7B5E25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5E278(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordCopyTransferName(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF427C(v6, v7, v8, v9, v10, v11, v12, v13);
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
    v14[2] = sub_1B7B5E418;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 9);
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

void sub_1B7B5E400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5E418(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordCopyUTIType(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF42F4(v6, v7, v8, v9, v10, v11, v12, v13);
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
    v14[2] = sub_1B7B5E5B8;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 4);
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

void sub_1B7B5E5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5E5B8(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

const __CFData *IMDAttachmentRecordCopyAttributionInfo(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF436C(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    return 0;
  }

  v2 = *(a2 + 24);
  if (!v2)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7B5E760;
    v15[3] = &unk_1E7CB7920;
    v15[4] = &v16;
    v15[5] = a2;
    _IMDPerformBlock(v15);
    v4 = v17[3];
    _Block_object_dispose(&v16, 8);
    return v4;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 13);
  v4 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    return v4;
  }

  if (CFDataGetLength(ValueAtIndex) < 1)
  {
    return 0;
  }

  v5 = JWDecodeDictionary();
  if (!v5)
  {
    return 0;
  }

  return CFRetain(v5);
}

void sub_1B7B5E748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5E760(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = CSDBRecordCopyProperty();
    if (v4)
    {
      v5 = v4;
      if (CFDataGetLength(v4) < 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = JWDecodeDictionary();
        if (v6)
        {
          v6 = CFRetain(v6);
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = v6;
      CFRelease(v5);
    }

    else
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    CFRelease(v3);
  }
}

const __CFData *IMDAttachmentRecordCopyUserInfo(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF43E4(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    return 0;
  }

  v2 = *(a2 + 24);
  if (!v2)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7B5E958;
    v15[3] = &unk_1E7CB7920;
    v15[4] = &v16;
    v15[5] = a2;
    _IMDPerformBlock(v15);
    v4 = v17[3];
    _Block_object_dispose(&v16, 8);
    return v4;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 8);
  v4 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    return v4;
  }

  if (CFDataGetLength(ValueAtIndex) < 1)
  {
    return 0;
  }

  v5 = JWDecodeDictionary();
  if (!v5)
  {
    return 0;
  }

  return CFRetain(v5);
}

void sub_1B7B5E940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5E958(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = CSDBRecordCopyProperty();
    if (v4)
    {
      v5 = v4;
      if (CFDataGetLength(v4) < 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = JWDecodeDictionary();
        if (v6)
        {
          v6 = CFRetain(v6);
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = v6;
      CFRelease(v5);
    }

    else
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordCopyMIMEType(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF445C(v6, v7, v8, v9, v10, v11, v12, v13);
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
    v14[2] = sub_1B7B5EB48;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 5);
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

void sub_1B7B5EB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5EB48(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordGetTransferState(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 6);
      if (ValueAtIndex && *MEMORY[0x1E69990E8])
      {
        LODWORD(ValueAtIndex) = (*MEMORY[0x1E69990E8])();
      }

      return ValueAtIndex;
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B5ECD0;
      v12[3] = &unk_1E7CB7920;
      v12[4] = &v13;
      v12[5] = a1;
      _IMDPerformBlock(v12);
      v2 = *(v14 + 6);
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF44D4(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1B7B5ECB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5ECD0(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordGetTotalBytes(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 10);
      v2 = ValueAtIndex;
      if (ValueAtIndex && *MEMORY[0x1E69990E8])
      {
        return (*MEMORY[0x1E69990E8])(ValueAtIndex);
      }
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B5EE60;
      v12[3] = &unk_1E7CB7920;
      v12[4] = &v13;
      v12[5] = a1;
      _IMDPerformBlock(v12);
      v2 = v14[3];
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF454C(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1B7B5EE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5EE60(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordGetCommSafetySensitive(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 19);
      v2 = ValueAtIndex;
      if (ValueAtIndex && *MEMORY[0x1E69990E8])
      {
        return (*MEMORY[0x1E69990E8])(ValueAtIndex);
      }
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B5EFF0;
      v12[3] = &unk_1E7CB7920;
      v12[4] = &v13;
      v12[5] = a1;
      _IMDPerformBlock(v12);
      v2 = v14[3];
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF45C4(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1B7B5EFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5EFF0(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordCopyEmojiImageContentIdentifier(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF463C(v6, v7, v8, v9, v10, v11, v12, v13);
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
    v14[2] = sub_1B7B5F190;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 20);
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

void sub_1B7B5F178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5F190(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordCopyEmojiImageShortDescription(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF46B4(v6, v7, v8, v9, v10, v11, v12, v13);
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
    v14[2] = sub_1B7B5F330;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 21);
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

void sub_1B7B5F318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5F330(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

void _IMDAttachmentRecordBulkCopy(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, _BYTE *a10, void *a11, void *a12, _BYTE *a13, void *a14, void *a15, _BYTE *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23)
{
  if (a1)
  {
    v25 = a6;
    v28 = a15;
    v29 = a12;
    v30 = *(a1 + 24);
    if (v30)
    {
      if (a2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v30, 0);
        v32 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
        }

        *a2 = v32;
        v28 = a15;
        v29 = a12;
        v25 = a6;
      }

      if (a7)
      {
        v33 = CFArrayGetValueAtIndex(*(a1 + 24), 4);
        v34 = v33;
        if (v33)
        {
          CFRetain(v33);
        }

        *a7 = v34;
      }

      if (a8)
      {
        v35 = CFArrayGetValueAtIndex(*(a1 + 24), 5);
        v36 = v35;
        if (v35)
        {
          CFRetain(v35);
        }

        *a8 = v36;
      }

      if (a5)
      {
        v37 = CFArrayGetValueAtIndex(*(a1 + 24), 9);
        v38 = v37;
        if (v37)
        {
          CFRetain(v37);
        }

        *a5 = v38;
      }

      if (a3)
      {
        *a3 = CFArrayGetValueAtIndex(*(a1 + 24), 1);
      }

      if (a4)
      {
        *a4 = CFArrayGetValueAtIndex(*(a1 + 24), 2);
      }

      if (a9)
      {
        *a9 = CFArrayGetValueAtIndex(*(a1 + 24), 6);
      }

      if (a10)
      {
        *a10 = CFArrayGetValueAtIndex(*(a1 + 24), 7);
      }

      if (a11)
      {
        *a11 = CFArrayGetValueAtIndex(*(a1 + 24), 10);
      }

      if (a13)
      {
        *a13 = CFArrayGetValueAtIndex(*(a1 + 24), 11);
      }

      if (a16)
      {
        *a16 = CFArrayGetValueAtIndex(*(a1 + 24), 14);
      }

      if (a17)
      {
        *a17 = CFArrayGetValueAtIndex(*(a1 + 24), 15);
      }

      if (a18)
      {
        v39 = CFArrayGetValueAtIndex(*(a1 + 24), 16);
        v40 = v39;
        if (v39)
        {
          CFRetain(v39);
        }

        *a18 = v40;
      }

      if (a19)
      {
        v41 = CFArrayGetValueAtIndex(*(a1 + 24), 17);
        v42 = v41;
        if (v41)
        {
          CFRetain(v41);
        }

        *a19 = v42;
      }

      if (a20)
      {
        v43 = CFArrayGetValueAtIndex(*(a1 + 24), 18);
        v44 = v43;
        if (v43)
        {
          CFRetain(v43);
        }

        *a20 = v44;
      }

      if (a21)
      {
        *a21 = CFArrayGetValueAtIndex(*(a1 + 24), 19);
      }

      if (a22)
      {
        v45 = CFArrayGetValueAtIndex(*(a1 + 24), 20);
        v46 = v45;
        if (v45)
        {
          CFRetain(v45);
        }

        *a22 = v46;
      }

      if (a23)
      {
        v47 = CFArrayGetValueAtIndex(*(a1 + 24), 21);
        v48 = v47;
        if (v47)
        {
          CFRetain(v47);
        }

        *a23 = v48;
      }

      if (v25)
      {
        v49 = CFArrayGetValueAtIndex(*(a1 + 24), 3);
        if (v49)
        {
          v52 = objc_msgSend_stringByExpandingTildeInPath(v49, v50, v51);
          v49 = objc_msgSend___im_apfsCompatibleFilename(v52, v53, v54);
        }

        *v25 = v49;
      }

      if (v29)
      {
        v55 = CFArrayGetValueAtIndex(*(a1 + 24), 8);
        if (v55)
        {
          if (CFDataGetLength(v55) < 1)
          {
            v55 = 0;
          }

          else
          {
            v55 = JWDecodeDictionary();
            if (v55)
            {
              v55 = CFRetain(v55);
            }
          }
        }

        *v29 = v55;
      }

      if (a14)
      {
        v64 = CFArrayGetValueAtIndex(*(a1 + 24), 12);
        if (v64)
        {
          if (CFDataGetLength(v64) < 1)
          {
            v64 = 0;
          }

          else
          {
            v64 = JWDecodeDictionary();
            if (v64)
            {
              v64 = CFRetain(v64);
            }
          }
        }

        *a14 = v64;
      }

      if (v28)
      {
        v65 = CFArrayGetValueAtIndex(*(a1 + 24), 13);
        if (v65)
        {
          if (CFDataGetLength(v65) < 1)
          {
            v65 = 0;
          }

          else
          {
            v65 = JWDecodeDictionary();
            if (v65)
            {
              v65 = CFRetain(v65);
            }
          }
        }

        *v28 = v65;
      }
    }

    else
    {
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = sub_1B7B5F838;
      v70[3] = &unk_1E7CB9310;
      v70[4] = a1;
      v70[5] = a2;
      v70[6] = a6;
      v70[7] = a7;
      v70[8] = a5;
      v70[9] = a8;
      v70[10] = a12;
      v70[11] = a14;
      v70[12] = a15;
      v70[13] = a3;
      v70[14] = a4;
      v70[15] = a9;
      v70[16] = a10;
      v70[17] = a13;
      v70[18] = a11;
      v70[19] = a16;
      v70[20] = a17;
      v70[21] = a18;
      v70[22] = a19;
      v70[23] = a20;
      v70[24] = a21;
      v70[25] = a22;
      v70[26] = a23;
      _IMDPerformBlock(v70);
    }
  }

  else
  {
    v56 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF472C(v56, v57, v58, v59, v60, v61, v62, v63);
    }
  }
}

void sub_1B7B5F838(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 40))
    {
      **(a1 + 40) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 48))
    {
      v4 = CSDBRecordCopyProperty();
      if (v4)
      {
        v7 = v4;
        v8 = objc_msgSend_stringByResolvingAndStandardizingPath(v4, v5, v6);
        v11 = objc_msgSend___im_apfsCompatibleFilename(v8, v9, v10);
        CFRelease(v7);
      }

      else
      {
        v11 = 0;
      }

      **(a1 + 48) = v11;
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = CSDBRecordCopyProperty();
      if (!**(a1 + 64))
      {
        v12 = CSDBRecordCopyProperty();
        if (v12)
        {
          v15 = v12;
          PathComponent = objc_msgSend_lastPathComponent(v12, v13, v14);
          **(a1 + 64) = objc_msgSend___im_apfsCompatibleFilename(PathComponent, v17, v18);
          CFRelease(v15);
        }
      }
    }

    if (*(a1 + 72))
    {
      **(a1 + 72) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 80))
    {
      v19 = CSDBRecordCopyProperty();
      if (v19)
      {
        v20 = v19;
        if (CFDataGetLength(v19) < 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = JWDecodeDictionary();
          if (v21)
          {
            v21 = CFRetain(v21);
          }
        }

        **(a1 + 80) = v21;
        CFRelease(v20);
      }

      else
      {
        **(a1 + 80) = 0;
      }
    }

    if (*(a1 + 88))
    {
      v22 = CSDBRecordCopyProperty();
      if (v22)
      {
        v23 = v22;
        if (CFDataGetLength(v22) < 1)
        {
          v24 = 0;
        }

        else
        {
          v24 = JWDecodeDictionary();
          if (v24)
          {
            v24 = CFRetain(v24);
          }
        }

        **(a1 + 88) = v24;
        CFRelease(v23);
      }

      else
      {
        **(a1 + 88) = 0;
      }
    }

    if (*(a1 + 96))
    {
      v25 = CSDBRecordCopyProperty();
      if (v25)
      {
        v26 = v25;
        if (CFDataGetLength(v25) < 1)
        {
          v27 = 0;
        }

        else
        {
          v27 = JWDecodeDictionary();
          if (v27)
          {
            v27 = CFRetain(v27);
          }
        }

        **(a1 + 96) = v27;
        CFRelease(v26);
      }

      else
      {
        **(a1 + 96) = 0;
      }
    }

    if (*(a1 + 104))
    {
      **(a1 + 104) = CSDBRecordGetProperty();
    }

    if (*(a1 + 112))
    {
      **(a1 + 112) = CSDBRecordGetProperty();
    }

    if (*(a1 + 120))
    {
      **(a1 + 120) = CSDBRecordGetProperty();
    }

    if (*(a1 + 128))
    {
      **(a1 + 128) = CSDBRecordGetProperty();
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
      **(a1 + 160) = CSDBRecordGetProperty();
    }

    if (*(a1 + 168))
    {
      **(a1 + 168) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 176))
    {
      **(a1 + 176) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 184))
    {
      **(a1 + 184) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 192))
    {
      **(a1 + 192) = CSDBRecordGetProperty();
    }

    if (*(a1 + 200))
    {
      **(a1 + 200) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 208))
    {
      **(a1 + 208) = CSDBRecordCopyProperty();
    }

    CFRelease(v3);
  }
}

void IMDAttachmentRecordBulkUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v24 = a15;
      v25 = a24;
      if (a24 == 3 || IMFileTransferAttributionInfoHasLegacyState())
      {
        v25 = IMFileTransferPreviewGenerationStateWithStoredState();
        v28 = a19;
        v29 = a20;
        v30 = a14;
        v31 = a10;
        if (a15)
        {
          v32 = objc_msgSend_mutableCopy(a15, v26, v27);
          objc_msgSend_removeObjectForKey_(v32, v33, *MEMORY[0x1E69A6FE0]);
          v39 = a21;
          v38 = a18;
          v40 = a12;
          v41 = a16;
          if (objc_msgSend_count(v32, v34, v35))
          {
            v24 = objc_msgSend_copy(v32, v36, v37);
            CFAutorelease(v24);
          }

          else
          {
            v24 = 0;
          }

          CFRelease(v32);
          v51 = a8;
          v50 = a7;
          v31 = a10;
          v28 = a19;
        }

        else
        {
          v39 = a21;
          v38 = a18;
          v51 = a8;
          v50 = a7;
          v40 = a12;
          v41 = a16;
        }
      }

      else
      {
        v28 = a19;
        v29 = a20;
        v39 = a21;
        v38 = a18;
        v30 = a14;
        v51 = a8;
        v50 = a7;
        v40 = a12;
        v41 = a16;
        v31 = a10;
      }

      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = sub_1B7B5FFBC;
      v60[3] = &unk_1E7CB9330;
      v60[4] = a1;
      v60[5] = a3;
      v60[6] = a4;
      v60[7] = a9;
      v61 = v31;
      v62 = a13;
      v63 = v41;
      v60[8] = a11;
      v60[9] = v25;
      v60[10] = a2;
      v60[11] = a6;
      v60[12] = a5;
      v60[13] = v50;
      v60[14] = v51;
      v60[15] = v40;
      v60[16] = v30;
      v60[17] = v24;
      v60[18] = a17;
      v60[19] = v38;
      v60[20] = v28;
      v60[21] = v29;
      v60[22] = v39;
      v60[23] = a22;
      v60[24] = a23;
      _IMDPerformBlock(v60);
    }

    else
    {

      __syncXPCIMDAttachmentRecordBulkUpdate_IPCAction(0, a2, a3, a4, a5, a6, a7, a8, a9, a10 != 0, a11, a12, a13 != 0, a14, a15, a16 != 0, a17, a18, a19, a20, a21, a24);
    }
  }

  else
  {
    v42 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF47A4(v42, v43, v44, v45, v46, v47, v48, v49);
    }
  }
}

void sub_1B7B5FFBC(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    CSDBRecordSetProperty();
    v5 = *(a1 + 48);
    CSDBRecordSetProperty();
    v6 = *(a1 + 56);
    CSDBRecordSetProperty();
    v7 = *(a1 + 200);
    CSDBRecordSetProperty();
    v8 = *(a1 + 64);
    CSDBRecordSetProperty();
    v9 = *(a1 + 201);
    CSDBRecordSetProperty();
    v10 = *(a1 + 202);
    CSDBRecordSetProperty();
    v11 = *(a1 + 72);
    CSDBRecordSetProperty();
    v13 = *(a1 + 80);
    if (v13)
    {
      CSDBRecordSetProperty();
    }

    v14 = *(a1 + 88);
    if (v14)
    {
      objc_msgSend_stringByAbbreviatingWithTildeInPath(v14, v12, v13);
      CSDBRecordSetProperty();
    }

    v15 = *(a1 + 96);
    if (v15)
    {
      objc_msgSend_lastPathComponent(v15, v12, v13);
      CSDBRecordSetProperty();
    }

    if (*(a1 + 104))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 112))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 120))
    {
      JWEncodeDictionary();
      CSDBRecordSetProperty();
    }

    if (*(a1 + 128))
    {
      JWEncodeDictionary();
      CSDBRecordSetProperty();
    }

    if (*(a1 + 136))
    {
      JWEncodeDictionary();
      CSDBRecordSetProperty();
    }

    v16 = *(a1 + 144);
    CSDBRecordSetProperty();
    if (*(a1 + 152))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 160))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 168))
    {
      CSDBRecordSetProperty();
    }

    v17 = *(a1 + 176);
    CSDBRecordSetProperty();
    if (*(a1 + 184))
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 192))
    {
      CSDBRecordSetProperty();
    }

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
    v18 = *(a1 + 88);
    v19 = *(a1 + 64);

    IMDAttachmentRecordDoubleCheckSize(v18, v19);
  }
}

void IMDAttachmentRecordAnonymizedUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    goto LABEL_6;
  }

  v37 = xmmword_1E7CB9350;
  v38 = *off_1E7CB9360;
  v39 = 1326;
  v12 = MEMORY[0x1E696AEC0];
  v13 = IMFileLocationTrimFileName();
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, &stru_1F2FA9728);
  v17 = objc_msgSend_stringWithFormat_(v12, v16, @"Unexpected false '%@' in %s at %s:%d. %@", @"IMDIsRunningInDatabaseServerProcess()", "void IMDAttachmentRecordAnonymizedUpdate(IMDAttachmentRecordRef, CFStringRef, CFStringRef, CFDictionaryRef, CFDictionaryRef, CFDictionaryRef)", v13, 1326, v15);
  v18 = IMGetAssertionFailureHandler();
  if (!v18)
  {
    v21 = objc_msgSend_warning(MEMORY[0x1E69A6138], v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFAB0(v17, v21, v22, v23, v24, v25, v26, v27);
      if (!a1)
      {
        goto LABEL_9;
      }

LABEL_7:
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = sub_1B7B60384;
      v36[3] = &unk_1E7CB8310;
      v36[4] = a1;
      v36[5] = a2;
      v36[6] = a3;
      v36[7] = a4;
      v36[8] = a5;
      v36[9] = a6;
      _IMDPerformBlock(v36);
      return;
    }

LABEL_6:
    if (!a1)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v18(v17);
  if (a1)
  {
    goto LABEL_7;
  }

LABEL_9:
  v28 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF481C(v28, v29, v30, v31, v32, v33, v34, v35);
  }
}

void sub_1B7B60384(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    if (v4 && CFStringGetLength(v4) >= 1)
    {
      objc_msgSend_stringByAbbreviatingWithTildeInPath(*(a1 + 40), v5, v6);
      CSDBRecordSetProperty();
    }

    v7 = *(a1 + 48);
    if (v7 && CFStringGetLength(v7) >= 1)
    {
      v8 = *(a1 + 48);
      CSDBRecordSetProperty();
    }

    if (*(a1 + 56))
    {
      JWEncodeDictionary();
      CSDBRecordSetProperty();
    }

    if (*(a1 + 64))
    {
      JWEncodeDictionary();
      CSDBRecordSetProperty();
    }

    if (*(a1 + 72))
    {
      JWEncodeDictionary();
      CSDBRecordSetProperty();
    }

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

const void *_IMDCopyIMDAttachmentRecordFromXPCObjectServer(void *a1)
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

  return sub_1B7B5D7E8(0, int64, 1);
}

xpc_object_t _IMDCopyXPCObjectFromIMDAttachmentRecordClient(uint64_t a1)
{
  if (!a1 || !*(a1 + 24))
  {
    return 0;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = 0;
  v4 = &unk_1E7CB9380;
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v3);
    if (!ValueAtIndex)
    {
      goto LABEL_15;
    }

    v8 = ValueAtIndex;
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        IMInsertDatasToXPCDictionary();
        goto LABEL_15;
      }

      if (v6 != 3)
      {
        goto LABEL_15;
      }

      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      v10 = v2;
      v11 = v5;
LABEL_13:
      xpc_dictionary_set_int64(v10, v11, v9);
      goto LABEL_15;
    }

    if (!v6)
    {
      v10 = v2;
      v11 = v5;
      v9 = v8;
      goto LABEL_13;
    }

    if (v6 == 1)
    {
      IMInsertNSStringsToXPCDictionary();
    }

LABEL_15:
    v4 += 5;
    ++v3;
  }

  while (v3 != 23);
  v12 = *(a1 + 16);
  if (v12)
  {
    xpc_dictionary_set_int64(v2, "recordIdentifier", v12);
  }

  return v2;
}

void _IMDAttachmentRecordBulkCopyXPCDictionary(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a1)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1B7B606CC;
      v19[3] = &unk_1E7CB8428;
      v19[4] = a2;
      v19[5] = a1;
      v19[6] = a1;
      if (a3)
      {
        _IMDPerformBlock(v19);
      }

      else
      {
        sub_1B7B606CC(v19);
      }
    }

    else
    {
      v11 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF4894(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF490C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1B7B606CC(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    for (i = &unk_1E7CB9380; ; i += 5)
    {
      v6 = *(i - 1);
      v7 = *i;
      Property = CSDBRecordGetProperty();
      v9 = Property;
      if (v7 <= 1)
      {
        break;
      }

      if (v7 == 2)
      {
        v14 = *(a1 + 32);
        IMInsertDatasToXPCDictionary();
      }

      else if (v7 == 3)
      {
        valuePtr = 0;
        if (Property)
        {
          CFNumberGetValue(Property, kCFNumberSInt64Type, &valuePtr);
          v11 = valuePtr;
        }

        else
        {
          v11 = 0;
        }

        v12 = *(a1 + 32);
        v13 = v6;
LABEL_15:
        xpc_dictionary_set_int64(v12, v13, v11);
      }

LABEL_16:
      if (++v4 == 23)
      {
        xpc_dictionary_set_int64(*(a1 + 32), "recordIdentifier", *(*(a1 + 48) + 16));
        CFRelease(v3);
        return;
      }
    }

    if (v7)
    {
      if (v7 == 1)
      {
        v10 = *(a1 + 32);
        IMInsertNSStringsToXPCDictionary();
      }

      goto LABEL_16;
    }

    v12 = *(a1 + 32);
    v13 = v6;
    v11 = v9;
    goto LABEL_15;
  }
}

void sub_1B7B60800(uint64_t a1)
{
  *(a1 + 16) = -1;
  if (*(a1 + 24))
  {
    v2 = 0;
    v3 = &qword_1E7CB9388;
    do
    {
      v4 = *v3;
      if (CFArrayGetValueAtIndex(*(a1 + 24), v2))
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          v5();
        }
      }

      ++v2;
      v3 += 5;
    }

    while (v2 != 23);
    v6 = *(a1 + 24);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 24) = 0;
    }
  }
}

CFStringRef sub_1B7B608A4(const void *a1)
{
  if (a1)
  {
    v2 = CFGetAllocator(a1);
    v3 = CFGetAllocator(a1);
    return CFStringCreateWithFormat(v2, 0, @"<IMDAttachmentRecord %p [%p]>{}", a1, v3);
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4984(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    return 0;
  }
}

void sub_1B7B60B14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v4, a2, a4);
  }

  v5 = CSDBSqliteStatementPerform();
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "SQLite returned %d from deleteAttachmentsByPredicate", v8, 8u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7B6115C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B6117C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v5, a2, a4);
  }

  v10 = CSDBRecordStoreProcessStatement();
  v7 = objc_msgSend__copyAttachmentRecordsFromCoreSDBResults_(*(a1 + 40), v6, v10);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_1B7B61714(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v5, a2, a4);
  }

  v6 = *(a1 + 56);
  CSDBSqliteBindInt64();
  v11 = CSDBRecordStoreProcessStatement();
  v8 = objc_msgSend__copyAttachmentRecordsFromCoreSDBResults_(*(a1 + 40), v7, v11);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

BOOL sub_1B7B6228C()
{
  v0 = CSDBSqliteConnectionPerformSQL();
  v1 = v0;
  if (v0)
  {
    if (v0 != 101)
    {
      v2 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF4BC0();
      }
    }
  }

  return !v1 || v1 == 101;
}

uint64_t sub_1B7B62300()
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  v0 = CSDBSqliteStatementInteger64Result();
  CSDBSqliteStatementReset();
  return v0;
}

uint64_t sub_1B7B6235C()
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  v0 = CSDBSqliteStatementInteger64Result();
  CSDBSqliteStatementReset();
  return v0;
}

uint64_t sub_1B7B623B8()
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  v0 = CSDBSqliteStatementInteger64Result();
  CSDBSqliteStatementReset();
  return v0;
}

uint64_t sub_1B7B62414()
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  v0 = CSDBSqliteStatementInteger64Result();
  CSDBSqliteStatementReset();
  return v0;
}

uint64_t sub_1B7B62488()
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteBindBlobFromCFData();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt();
  CSDBSqliteStatementPerform();
  CSDBSqliteStatementReset();

  return CSDBSqliteConnectionRowidOfLastInsert();
}

uint64_t sub_1B7B6257C()
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteStatementPerform();
  CSDBSqliteStatementReset();

  return CSDBSqliteConnectionRowidOfLastInsert();
}

uint64_t sub_1B7B625F8(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 134218240;
      v8 = a1;
      v9 = 2048;
      v10 = a2;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Adding handle %lld to chat %lld", &v7, 0x16u);
    }
  }

  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteStatementPerform();
  result = CSDBSqliteStatementReset();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7B62710()
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteStatementPerform();
  CSDBSqliteStatementReset();

  return CSDBSqliteConnectionRowidOfLastInsert();
}

uint64_t sub_1B7B62834()
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindBlobFromCFData();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
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
  CSDBSqliteBindInt64();
  CSDBSqliteStatementPerform();
  CSDBSqliteStatementReset();

  return CSDBSqliteConnectionRowidOfLastInsert();
}

uint64_t sub_1B7B62A98()
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteStatementPerform();

  return CSDBSqliteStatementReset();
}

uint64_t IMDMessageImportBeginWithDatabaseAndConnection(void **a1, const char *a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  qword_1EBA53F38 = a2;
  v3 = objc_msgSend_stringByDeletingPathExtension(*a1, a2, a3);
  v5 = objc_msgSend_stringByAppendingPathExtension_(v3, v4, @"importbackup");
  v7 = objc_msgSend_stringByAppendingPathExtension_(v5, v6, @"db");
  qword_1EBA53F40 = v7;
  CSDBSqliteBackupDatabase();
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v45 = v7;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Backing up database to %@", buf, 0xCu);
    }
  }

  sub_1B7B6228C();
  v9 = sub_1B7B6228C();
  v10 = CSDBSqliteConnectionStatementForSQL();
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (sqlite3_step(v12) == 100)
      {
        v13 = 0;
        do
        {
          v14 = sqlite3_column_int64(*(v11 + 8), 0);
          v15 = sqlite3_column_int64(*(v11 + 8), 1);
          v16 = v15;
          if (v13 <= v15)
          {
            v13 = v15;
          }

          else
          {
            CSDBSqliteConnectionStatementForSQL();
            CSDBSqliteBindInt64();
            CSDBSqliteBindInt64();
            v17 = CSDBSqliteStatementPerform();
            if (v17)
            {
              if (v17 != 101)
              {
                v18 = IMDatabaseLogHandle();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v45 = v14;
                  v46 = 2048;
                  v47 = v16;
                  _os_log_error_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_ERROR, "Couldn't update %lld with order date %lld", buf, 0x16u);
                }
              }
            }

            CSDBSqliteStatementReset();
          }
        }

        while (sqlite3_step(*(v11 + 8)) == 100);
      }

      CSDBSqliteStatementReset();
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = IMDDatabaseTriggers();
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v38, v43, 16);
  if (v22)
  {
    v23 = *v39;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v19);
        }

        objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v21, @"DROP TRIGGER IF EXISTS %@", *(*(&v38 + 1) + 8 * i));
        v9 = v9 & sub_1B7B6228C();
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v38, v43, 16);
    }

    while (v22);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v25 = IMDDatabaseIndexes();
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v34, v42, 16);
  if (v28)
  {
    v29 = *v35;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(v25);
        }

        objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v27, @"DROP INDEX IF EXISTS %@", *(*(&v34 + 1) + 8 * j));
        v9 = v9 & sub_1B7B6228C();
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v34, v42, 16);
    }

    while (v28);
  }

  byte_1EBA53F48 = 1;
  if ((v9 & 1) == 0)
  {
    v31 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4C3C();
    }

    byte_1EBA53F48 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v9;
}

void IMDMessageImportEnd(uint64_t a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if ((byte_1EBA53F48 & 1) == 0)
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4C7C();
    }

    goto LABEL_30;
  }

  if (qword_1EBA53F38)
  {
    if (sub_1B7B6228C())
    {
      v3 = sub_1B7B6228C();
      CSDBRecordStoreCreateTablesForClass();
      if (v3 && sub_1B7B6228C() && sub_1B7B6228C() && sub_1B7B6228C() && sub_1B7B6228C() && sub_1B7B6228C() && sub_1B7B6228C() && sub_1B7B6228C() && sub_1B7B6228C() && sub_1B7B6228C() && sub_1B7B6228C() && sub_1B7B6228C() && sub_1B7B6228C() && sub_1B7B6228C() && sub_1B7B6228C())
      {
        goto LABEL_19;
      }
    }

    else
    {
      CSDBRecordStoreCreateTablesForClass();
    }

LABEL_28:
    if (qword_1EBA53F40)
    {
      CFRelease(qword_1EBA53F40);
      qword_1EBA53F40 = 0;
    }

    goto LABEL_30;
  }

LABEL_19:
  v4 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3);
  if (objc_msgSend_isInternalInstall(v4, v5, v6))
  {
    goto LABEL_28;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = qword_1EBA53F40;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Successful import! This is not an internal install so let's delete the backup database stored at %@", &v10, 0xCu);
    }
  }

  if (qword_1EBA53F40)
  {
    CSDBSqliteDeleteDatabase();
    goto LABEL_28;
  }

LABEL_30:
  byte_1EBA53F48 = 0;
  qword_1EBA53F38 = 0;
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t IMDCopyGUIDForImportedOneToOneChat()
{
  v16 = *MEMORY[0x1E69E9840];
  v0 = IMCopyGUIDForChat();
  if (byte_1EBA53F48)
  {
    v1 = sub_1B7B62300();
    v2 = IMOSLoggingEnabled();
    if (v1 <= 0)
    {
      if (v2)
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v14 = 138412290;
          v15 = v0;
          _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Creating chat for guid: %@", &v14, 0xCu);
        }
      }

      v6 = sub_1B7B62488();
      if (v6 < 1)
      {
        v10 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF4D78();
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
          {
            v14 = 134217984;
            v15 = v6;
            _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Created new chat with row id: %lld", &v14, 0xCu);
          }
        }

        v8 = sub_1B7B62414();
        if (v8 > 0)
        {
          goto LABEL_20;
        }

        if (IMOSLoggingEnabled())
        {
          v9 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v14 = 134217984;
            v15 = v8;
            _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Creating handle for: %lld", &v14, 0xCu);
          }
        }

        v8 = sub_1B7B6257C();
        if (v8 < 1)
        {
          v13 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF4DE8();
          }
        }

        else
        {
LABEL_20:
          sub_1B7B625F8(v8, v6);
        }
      }
    }

    else if (v2)
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v0;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Already have chat for guid: %@", &v14, 0xCu);
      }
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4CFC();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t IMDCopyGUIDForImportedChat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v28 = IMCopyGUIDForChat();
  if (byte_1EBA53F48)
  {
    v8 = sub_1B7B62300();
    v9 = IMOSLoggingEnabled();
    if (v8 <= 0)
    {
      if (v9)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v34 = v28;
          _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Creating chat for guid: %@", buf, 0xCu);
        }
      }

      v13 = sub_1B7B62488();
      if (v13 < 1)
      {
        v25 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF4D78();
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v34 = v13;
            _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Created new chat: %lld", buf, 0xCu);
          }
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v14, &v29, v37, 16);
        if (v16)
        {
          v17 = *v30;
          do
          {
            v18 = 0;
            do
            {
              if (*v30 != v17)
              {
                objc_enumerationMutation(a7);
              }

              v19 = *(*(&v29 + 1) + 8 * v18);
              v20 = sub_1B7B62414();
              if (v20 > 0)
              {
                goto LABEL_25;
              }

              if (IMOSLoggingEnabled())
              {
                v21 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v34 = v19;
                  _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Creating handle for: %@", buf, 0xCu);
                }
              }

              v20 = sub_1B7B6257C();
              if (v20 < 1)
              {
                v23 = IMDatabaseLogHandle();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v34 = v20;
                  v35 = 2048;
                  v36 = v13;
                  _os_log_error_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_ERROR, "Failed to add handle: %lld to chat: %lld", buf, 0x16u);
                }
              }

              else
              {
LABEL_25:
                sub_1B7B625F8(v20, v13);
              }

              ++v18;
            }

            while (v16 != v18);
            v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v22, &v29, v37, 16);
            v16 = v24;
          }

          while (v24);
        }
      }
    }

    else if (v9)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v34 = v28;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Already have chat for guid: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4E64();
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return v28;
}

void IMDImportAttachmentWithData(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v19 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = a1;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Import attachment %@ with data", &v17, 0xCu);
    }
  }

  sub_1B7B63A4C(a1, a2, 0, a8, a3, a4, a6, a9);
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1B7B63A4C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v54 = *MEMORY[0x1E69E9840];
  if (byte_1EBA53F48)
  {
    if (a1)
    {
      if (sub_1B7B623B8() > 0)
      {
        if (IMOSLoggingEnabled())
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = a1;
            _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Already have an attachment for guid %@", buf, 0xCu);
          }
        }

        goto LABEL_38;
      }

      v17 = IMDCopyAttachmentPersistentPath(a1, a8, a6, a5, 0, 0);
      v18 = objc_alloc_init(MEMORY[0x1E696AC08]);
      PathComponent = objc_msgSend_stringByDeletingLastPathComponent(v17, v19, v20);
      if ((objc_msgSend_makeDirectoriesInPath_mode_(v18, v22, PathComponent, 448) & 1) == 0)
      {
        v23 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF4F60();
        }
      }

      if (a4)
      {
        if ((objc_msgSend_writeToFile_atomically_(a4, v24, v17, 0) & 1) == 0)
        {
          v27 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF4FDC();
          }
        }

        objc_msgSend_length(a4, v25, v26);
LABEL_33:
        v45 = sub_1B7B62710();
        if (IMOSLoggingEnabled())
        {
          v46 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 134218498;
            *&buf[4] = v45;
            v50 = 2112;
            v51 = a3;
            v52 = 2112;
            v53 = a1;
            _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, "Created attachment id %lld with path %@ for guid %@", buf, 0x20u);
          }
        }

        if (v17)
        {
          CFRelease(v17);
        }

        goto LABEL_38;
      }

      v48 = 0;
      if (a3)
      {
        v28 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v24, a3);
      }

      else
      {
        v28 = 0;
      }

      v29 = v17;
      if (v17)
      {
        v30 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v24, v17);
        if (!v28)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v30 = 0;
        if (!v28)
        {
          goto LABEL_29;
        }
      }

      v31 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v24, v29);
      if (objc_msgSend_linkItemAtURL_toURL_error_(v31, v32, v28, v30, &v48) & 1) != 0 || v30 && (v35 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v33, v34), (objc_msgSend_copyItemAtURL_toURL_error_(v35, v36, v28, v30, &v48)))
      {
LABEL_31:
        if (objc_msgSend_length(a3, v33, v34))
        {
          *buf = 0;
          v40 = objc_msgSend_defaultHFSFileManager(MEMORY[0x1E69A60D8], v38, v39);
          v42 = objc_msgSend_attributesOfItemAtPath_error_(v40, v41, a3, buf);
          objc_msgSend_fileSize(v42, v43, v44);
        }

        goto LABEL_33;
      }

LABEL_29:
      v37 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *&buf[4] = a3;
        v50 = 2112;
        v51 = v17;
        v52 = 2112;
        v53 = v48;
        _os_log_error_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_ERROR, "MessageImport - couldn't link/copy attachment from %@ to %@ - %@", buf, 0x20u);
      }

      goto LABEL_31;
    }

    v16 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF504C();
    }
  }

  else
  {
    v15 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4EE0();
    }
  }

LABEL_38:
  v47 = *MEMORY[0x1E69E9840];
}

void IMDImportAttachmentWithPath(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v21 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = 138412546;
      v18 = a1;
      v19 = 2112;
      v20 = a3;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Import attachment %@ with filePath %@", &v17, 0x16u);
    }
  }

  sub_1B7B63A4C(a1, a2, a3, 0, a4, a5, a7, a9);
  v16 = *MEMORY[0x1E69E9840];
}

void IMDImportMessage(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17)
{
  v41 = *MEMORY[0x1E69E9840];
  if (byte_1EBA53F48)
  {
    if (sub_1B7B62300() < 1)
    {
      v32 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF510C();
      }
    }

    else
    {
      v23 = sub_1B7B6235C();
      v24 = 1;
      if (v23 <= 0 && a17)
      {
        CSDBSqliteConnectionStatementForSQL();
        CSDBSqliteBindInt64();
        CSDBSqliteBindTextFromCFString();
        CSDBSqliteBindInt64();
        CSDBSqliteBindInt64();
        v25 = CSDBSqliteStatementInteger64Result();
        v24 = v25 < 1;
        if (v25 >= 1)
        {
          if (IMOSLoggingEnabled())
          {
            log = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v38 = a3;
              v39 = 2048;
              v40 = a11;
              _os_log_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_INFO, "Found duplicate for %@ at %lld", buf, 0x16u);
            }
          }
        }

        CSDBSqliteStatementReset();
      }

      if (v23 <= 0 && v24)
      {
        if (!objc_msgSend_length(a2, v21, v22))
        {
          a2 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v26, v27);
        }

        IMComponentsFromChatGUID();
        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v38 = a1;
            _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "Found chat for guid: %@", buf, 0xCu);
          }
        }

        if (sub_1B7B62414() <= 0)
        {
          if (IMOSLoggingEnabled())
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v38 = a4;
              _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "Creating handle for: %@", buf, 0xCu);
            }
          }

          sub_1B7B6257C();
        }

        if (sub_1B7B62834() < 1)
        {
          v34 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF5188();
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v30 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v38 = a2;
              v39 = 2112;
              v40 = a1;
              _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_INFO, "Created message for guid: %@  associating with chat: %@", buf, 0x16u);
            }
          }

          sub_1B7B62A98();
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v33 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v38 = a2;
          v39 = 2112;
          v40 = a1;
          _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "Not inserting %@  already have message in chat: %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v31 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF508C();
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

uint64_t IMDBindAttachmentToMessage(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = a2;
      v10 = 2112;
      v11 = a1;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Associated attachment GUID %@ with message GUID: %@", &v8, 0x16u);
    }
  }

  v5 = sub_1B7B6235C();
  result = sub_1B7B623B8();
  if (v5 >= 1 && result >= 1)
  {
    CSDBSqliteConnectionStatementForSQL();
    CSDBSqliteBindInt64();
    CSDBSqliteBindInt64();
    CSDBSqliteStatementPerform();
    result = CSDBSqliteStatementReset();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

_OWORD *IMDCreateIMDMessageRecordRefFromIMMessageItem(void *a1, const char *a2, uint64_t a3)
{
  v790 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = objc_msgSend_type(a1, a2, a3);
    result = 0;
    if (v6 <= 3)
    {
      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v96 = objc_msgSend_guid(a1, v4, v5);
          v99 = objc_msgSend_time(a1, v97, v98);
          v102 = objc_msgSend_service(a1, v100, v101);
          v105 = objc_msgSend_account(a1, v103, v104);
          v108 = objc_msgSend_accountID(a1, v106, v107);
          if (objc_msgSend_sender(a1, v109, v110))
          {
            v113 = objc_msgSend_sender(a1, v111, v112);
          }

          else
          {
            v113 = objc_msgSend_handle(a1, v111, v112);
          }

          v471 = v113;
          v472 = objc_msgSend_otherHandle(a1, v114, v115);
          v475 = objc_msgSend_title(a1, v473, v474);
          v476 = IMDatabaseLogHandle();
          v731 = v472;
          v740 = v471;
          v750 = v108;
          v760 = v105;
          v770 = v102;
          if (os_log_type_enabled(v476, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v96;
            *&buf[12] = 2112;
            *&buf[14] = v475;
            _os_log_impl(&dword_1B7AD5000, v476, OS_LOG_TYPE_DEFAULT, "Attempting to create title item with GUID: %@   title: %@", buf, 0x16u);
          }

          v722 = v475;
          v780 = v96;
          v715 = objc_msgSend___im_nanosecondTimeInterval(v99, v477, v478);
          v481 = objc_msgSend_errorCode(a1, v479, v480);
          v708 = objc_msgSend_countryCode(a1, v482, v483);
          v486 = objc_msgSend_unformattedID(a1, v484, v485);
          v489 = objc_msgSend_cloudKitSyncState(a1, v487, v488);
          v492 = objc_msgSend_cloudKitRecordID(a1, v490, v491);
          v495 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v493, v494);
          v498 = objc_msgSend_cloudKitRecordChangeTag(a1, v496, v497);
          v501 = objc_msgSend_destinationCallerID(a1, v499, v500);
          v504 = objc_msgSend_replyToGUID(a1, v502, v503);
          v507 = objc_msgSend_sortID(a1, v505, v506);
          v510 = objc_msgSend_cloudKitChatID(a1, v508, v509);
          result = IMDMessageRecordCreate(0, 2, 0, v715, 0, 0, 0, v481, 0, 0, 0, v780, 0, v770, v760, v750, 0, v740, v708, v486, v731, v722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v489, v492, v495, v498, 0, v501, v504, v507, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v510);
        }

        else
        {
          if (objc_msgSend_sender(a1, v4, v5))
          {
            v776 = objc_msgSend_sender(a1, v72, v73);
          }

          else
          {
            v776 = objc_msgSend_handle(a1, v72, v73);
          }

          v767 = objc_msgSend_actionType(a1, v74, v75);
          if (IMOSLoggingEnabled())
          {
            v307 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v307, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              *&buf[4] = objc_msgSend_guid(a1, v305, v306);
              *&buf[12] = 2112;
              *&buf[14] = v776;
              *&buf[22] = 2112;
              *&buf[24] = objc_msgSend_otherHandle(a1, v308, v309);
              _os_log_impl(&dword_1B7AD5000, v307, OS_LOG_TYPE_INFO, "Attempting to add group leave GUID: %@ %@ => %@", buf, 0x20u);
            }
          }

          v310 = objc_msgSend_time(a1, v305, v306);
          v757 = objc_msgSend___im_nanosecondTimeInterval(v310, v311, v312);
          v747 = objc_msgSend_errorCode(a1, v313, v314);
          v737 = objc_msgSend_guid(a1, v315, v316);
          v728 = objc_msgSend_service(a1, v317, v318);
          v719 = objc_msgSend_account(a1, v319, v320);
          v712 = objc_msgSend_accountID(a1, v321, v322);
          v705 = objc_msgSend_countryCode(a1, v323, v324);
          v327 = objc_msgSend_unformattedID(a1, v325, v326);
          v330 = objc_msgSend_otherHandle(a1, v328, v329);
          v333 = objc_msgSend_cloudKitSyncState(a1, v331, v332);
          v336 = objc_msgSend_cloudKitRecordID(a1, v334, v335);
          v339 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v337, v338);
          v342 = objc_msgSend_cloudKitRecordChangeTag(a1, v340, v341);
          v345 = objc_msgSend_destinationCallerID(a1, v343, v344);
          v348 = objc_msgSend_replyToGUID(a1, v346, v347);
          v351 = objc_msgSend_sortID(a1, v349, v350);
          v354 = objc_msgSend_cloudKitChatID(a1, v352, v353);
          result = IMDMessageRecordCreate(0, 3, 0, v757, 0, 0, 0, v747, 0, 0, 0, v737, 0, v728, v719, v712, 0, v776, v705, v327, v330, 0, v767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v333, v336, v339, v342, 0, v345, v348, v351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v354);
        }
      }

      else if (v6)
      {
        if (v6 == 1)
        {
          if (objc_msgSend_sender(a1, v4, v5))
          {
            v775 = objc_msgSend_sender(a1, v68, v69);
          }

          else
          {
            v775 = objc_msgSend_handle(a1, v68, v69);
          }

          v238 = MEMORY[0x1E695DEF0];
          v239 = objc_msgSend_messageSummaryInfo(a1, v70, v71);
          v756 = objc_msgSend_dataWithMessageSummaryInfoDictionary_(v238, v240, v239);
          v766 = objc_msgSend_changeType(a1, v241, v242);
          v245 = objc_msgSend_timeRead(a1, v243, v244) != 0;
          if (IMOSLoggingEnabled())
          {
            v248 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v248, OS_LOG_TYPE_INFO))
            {
              v249 = objc_msgSend_guid(a1, v246, v247);
              v252 = objc_msgSend_otherHandle(a1, v250, v251);
              v253 = @"remove";
              *buf = 138413058;
              *&buf[4] = v249;
              *&buf[12] = 2112;
              if (!v766)
              {
                v253 = @"invite";
              }

              *&buf[14] = v253;
              *&buf[22] = 2112;
              *&buf[24] = v775;
              *v787 = 2112;
              *&v787[2] = v252;
              _os_log_impl(&dword_1B7AD5000, v248, OS_LOG_TYPE_INFO, "Attempting to create participant change item with GUID: %@  %@  %@ => %@", buf, 0x2Au);
            }
          }

          v254 = objc_msgSend_time(a1, v246, v247);
          v746 = objc_msgSend___im_nanosecondTimeInterval(v254, v255, v256);
          v259 = objc_msgSend_timeRead(a1, v257, v258);
          v736 = objc_msgSend___im_nanosecondTimeInterval(v259, v260, v261);
          v727 = objc_msgSend_errorCode(a1, v262, v263);
          v718 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v264, v245 << 13);
          v711 = objc_msgSend_guid(a1, v265, v266);
          v704 = objc_msgSend_service(a1, v267, v268);
          v701 = objc_msgSend_account(a1, v269, v270);
          v699 = objc_msgSend_accountID(a1, v271, v272);
          v697 = objc_msgSend_countryCode(a1, v273, v274);
          v277 = objc_msgSend_unformattedID(a1, v275, v276);
          v280 = objc_msgSend_otherHandle(a1, v278, v279);
          v283 = objc_msgSend_cloudKitSyncState(a1, v281, v282);
          v286 = objc_msgSend_cloudKitRecordID(a1, v284, v285);
          v289 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v287, v288);
          v292 = objc_msgSend_cloudKitRecordChangeTag(a1, v290, v291);
          v295 = objc_msgSend_destinationCallerID(a1, v293, v294);
          v298 = objc_msgSend_replyToGUID(a1, v296, v297);
          v301 = objc_msgSend_sortID(a1, v299, v300);
          v304 = objc_msgSend_cloudKitChatID(a1, v302, v303);
          result = IMDMessageRecordCreate(0, 1, 0, v746, v736, 0, 0, v727, 0, 0, v718, v711, 0, v704, v701, v699, 0, v775, v697, v277, v280, 0, v766, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v756, v283, v286, v289, v292, 0, v295, v298, v301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v304);
        }
      }

      else
      {
        v80 = objc_msgSend_guid(a1, v4, v5);
        v83 = objc_msgSend_time(a1, v81, v82);
        v778 = objc_msgSend_timeRead(a1, v84, v85);
        v765 = objc_msgSend_timeDelivered(a1, v86, v87);
        v90 = objc_msgSend_timePlayed(a1, v88, v89);
        if (objc_msgSend_body(a1, v91, v92))
        {
          objc_msgSend_body(a1, v93, v94);
          v95 = JWEncodeCodableObject();
        }

        else
        {
          v95 = 0;
        }

        v160 = MEMORY[0x1E696AD98];
        v161 = objc_msgSend_flags(a1, v93, v94);
        v163 = objc_msgSend_numberWithUnsignedLongLong_(v160, v162, v161);
        v166 = objc_msgSend_service(a1, v164, v165);
        v700 = objc_msgSend_account(a1, v167, v168);
        v698 = objc_msgSend_accountID(a1, v169, v170);
        v171 = MEMORY[0x1E696AD98];
        v174 = objc_msgSend_errorCode(a1, v172, v173);
        v755 = objc_msgSend_numberWithUnsignedInt_(v171, v175, v174);
        v178 = objc_msgSend_roomName(a1, v176, v177);
        v181 = objc_msgSend_length(v178, v179, v180);
        v184 = &unk_1F2FCA2D8;
        if (!v181)
        {
          v184 = &unk_1F2FCA2C0;
        }

        v745 = v184;
        v695 = objc_msgSend_subject(a1, v182, v183);
        v187 = objc_msgSend_body(a1, v185, v186);
        v190 = objc_msgSend_string(v187, v188, v189);
        v693 = objc_msgSend_partCount(a1, v191, v192);
        v717 = v95;
        v726 = v80;
        v703 = v166;
        v710 = v163;
        v696 = v190;
        if (objc_msgSend_isFromMe(a1, v193, v194))
        {
          v197 = objc_msgSend_handle(a1, v195, v196);
        }

        else
        {
          v197 = objc_msgSend_sender(a1, v195, v196);
        }

        v694 = v197;
        v692 = objc_msgSend_expireState(a1, v198, v199);
        v690 = objc_msgSend_destinationCallerID(a1, v200, v201);
        v691 = objc_msgSend_balloonBundleID(a1, v202, v203);
        v689 = objc_msgSend_payloadData(a1, v204, v205);
        v688 = objc_msgSend_expressiveSendStyleID(a1, v206, v207);
        v735 = objc_msgSend_timeExpressiveSendPlayed(a1, v208, v209);
        v212 = objc_msgSend_associatedMessageGUID(a1, v210, v211);
        v686 = objc_msgSend_associatedMessageType(a1, v213, v214);
        v685 = objc_msgSend_associatedMessageRange(a1, v215, v216);
        v684 = v217;
        v218 = MEMORY[0x1E695DEF0];
        v220 = objc_msgSend_messageSummaryInfo(a1, v217, v219);
        v683 = objc_msgSend_dataWithMessageSummaryInfoDictionary_(v218, v221, v220);
        v687 = v212;
        if (v212)
        {
          v784 = 0;
          v785 = objc_msgSend_type(a1, v222, v223);
          if (v785)
          {
            *buf = xmmword_1E7CBA250;
            *&buf[16] = *off_1E7CBA260;
            *v787 = 842;
            v225 = objc_msgSend_value_withObjCType_(MEMORY[0x1E696B098], v224, &v785, "q");
            v227 = objc_msgSend_value_withObjCType_(MEMORY[0x1E696B098], v226, &v784, "q");
            v228 = MEMORY[0x1E696AEC0];
            v229 = IMFileLocationTrimFileName();
            v230 = *v787;
            v232 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v231, &stru_1F2FA9728);
            v234 = objc_msgSend_stringWithFormat_(v228, v233, @"Unexpected not equal '%@ (%@) != %@ (%@)' in %s at %s:%d. %@", @"[imMessageItem type]", v225, @"IMDMessageRecordItemTypeMessage", v227, "IMDMessageRecordRef IMDCreateIMDMessageRecordRefFromIMMessageItem(IMItem *)", v229, v230, v232);
            v237 = IMGetAssertionFailureHandler();
            if (v237)
            {
              v237(v234);
            }

            else
            {
              v581 = objc_msgSend_warning(MEMORY[0x1E69A6138], v235, v236);
              if (os_log_type_enabled(v581, OS_LOG_TYPE_ERROR))
              {
                sub_1B7CEC540(v234, v581);
              }
            }
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            *buf = xmmword_1E7CBA278;
            *&buf[16] = *off_1E7CBA288;
            *v787 = 843;
            v582 = MEMORY[0x1E696AEC0];
            v583 = IMFileLocationTrimFileName();
            v584 = *v787;
            v586 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v585, &stru_1F2FA9728);
            v588 = objc_msgSend_stringWithFormat_(v582, v587, @"Unexpected false '%@' in %s at %s:%d. %@", @"[imMessageItem isKindOfClass:[IMAssociatedMessageItem class]]", "IMDMessageRecordRef IMDCreateIMDMessageRecordRefFromIMMessageItem(IMItem *)", v583, v584, v586);
            v591 = IMGetAssertionFailureHandler();
            if (v591)
            {
              v591(v588);
            }

            else
            {
              v592 = objc_msgSend_warning(MEMORY[0x1E69A6138], v589, v590);
              if (os_log_type_enabled(v592, OS_LOG_TYPE_ERROR))
              {
                sub_1B7CEC540(v588, v592);
              }
            }
          }
        }

        v682 = IMDDataDectorDictionaryForMessageItem(a1);
        v785 = 0;
        *buf = 0;
        objc_msgSend_threadIdentifier(a1, v593, v594);
        IMMessageThreadIdentifierGetComponents();
        v595 = MEMORY[0x1E69A8158];
        v598 = objc_msgSend_syndicationRanges(a1, v596, v597);
        v681 = objc_msgSend_serializedStringFromArray_(v595, v599, v598);
        v600 = MEMORY[0x1E69A8158];
        v603 = objc_msgSend_syncedSyndicationRanges(a1, v601, v602);
        v680 = objc_msgSend_serializedStringFromArray_(v600, v604, v603);
        v607 = objc_msgSend_dateEdited(a1, v605, v606);
        v679 = objc_msgSend_dateRecovered(a1, v608, v609);
        v678 = objc_msgSend_biaReferenceID(a1, v610, v611);
        v677 = objc_msgSend_fallbackHash(a1, v612, v613);
        v676 = objc_msgSend_associatedMessageEmoji(a1, v614, v615);
        v675 = objc_msgSend_scheduleType(a1, v616, v617);
        v674 = objc_msgSend_scheduleState(a1, v618, v619);
        v673 = objc_msgSend_cloudKitChatID(a1, v620, v621);
        v672 = objc_msgSend___im_nanosecondTimeInterval(v83, v622, v623);
        v783 = objc_msgSend___im_nanosecondTimeInterval(v778, v624, v625);
        v773 = objc_msgSend___im_nanosecondTimeInterval(v765, v626, v627);
        v671 = objc_msgSend___im_nanosecondTimeInterval(v90, v628, v629);
        v763 = objc_msgSend_intValue(v755, v630, v631);
        v634 = objc_msgSend_intValue(v745, v632, v633);
        v753 = objc_msgSend_replaceID(a1, v635, v636);
        v670 = objc_msgSend_countryCode(a1, v637, v638);
        v669 = objc_msgSend_unformattedID(a1, v639, v640);
        v743 = objc_msgSend___im_nanosecondTimeInterval(v735, v641, v642);
        v645 = objc_msgSend_cloudKitSyncState(a1, v643, v644);
        v648 = objc_msgSend_cloudKitRecordID(a1, v646, v647);
        v651 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v649, v650);
        v654 = objc_msgSend_cloudKitRecordChangeTag(a1, v652, v653);
        v657 = objc_msgSend_replyToGUID(a1, v655, v656);
        v660 = objc_msgSend_sortID(a1, v658, v659);
        v662 = v785;
        v661 = *buf;
        v665 = objc_msgSend___im_nanosecondTimeInterval(v607, v663, v664);
        v668 = objc_msgSend___im_nanosecondTimeInterval(v679, v666, v667);
        result = IMDMessageRecordCreate(0, 0, v696, v672, v783, v773, v671, v763, v634, v753, v710, v726, v717, v703, v700, v698, v695, v694, v670, v669, 0, 0, 0, 0, 0, v692, 0, v687, v686, v685, v684, v691, v689, v688, v743, v683, v645, v648, v651, v654, v682, v690, v657, v660, v661, v662, v681, v680, v693, v665, v668, v678, v677, v676, v675, v674, v673);
      }
    }

    else if (v6 <= 5)
    {
      if (v6 == 4)
      {
        if (objc_msgSend_sender(a1, v4, v5))
        {
          v779 = objc_msgSend_sender(a1, v136, v137);
        }

        else
        {
          v779 = objc_msgSend_handle(a1, v136, v137);
        }

        v411 = objc_msgSend_status(a1, v138, v139);
        if (v411 == 1)
        {
          v412 = @"stop sharing";
        }

        else
        {
          v412 = @"unknown";
        }

        v413 = objc_msgSend_direction(a1, v409, v410);
        if (v413)
        {
          v414 = @"unknown";
        }

        else
        {
          v414 = @"outgoing";
        }

        if (IMOSLoggingEnabled())
        {
          v417 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v417, OS_LOG_TYPE_INFO))
          {
            v418 = objc_msgSend_guid(a1, v415, v416);
            v421 = objc_msgSend_otherHandle(a1, v419, v420);
            v422 = @"incoming";
            *buf = 138413314;
            if (v413 != 1)
            {
              v422 = v414;
            }

            *&buf[4] = v418;
            *&buf[12] = 2112;
            v423 = @"start sharing";
            if (v411)
            {
              v423 = v412;
            }

            *&buf[14] = v423;
            *&buf[22] = 2112;
            *&buf[24] = v422;
            *v787 = 2112;
            *&v787[2] = v779;
            v788 = 2112;
            v789 = v421;
            _os_log_impl(&dword_1B7AD5000, v417, OS_LOG_TYPE_INFO, "Attempting location share update to chat guid GUID: %@  (%@:%@) %@ => %@", buf, 0x34u);
          }
        }

        v424 = objc_msgSend_time(a1, v415, v416);
        v769 = objc_msgSend___im_nanosecondTimeInterval(v424, v425, v426);
        v759 = objc_msgSend_guid(a1, v427, v428);
        v749 = objc_msgSend_service(a1, v429, v430);
        v739 = objc_msgSend_account(a1, v431, v432);
        v730 = objc_msgSend_accountID(a1, v433, v434);
        v721 = objc_msgSend_countryCode(a1, v435, v436);
        v714 = objc_msgSend_unformattedID(a1, v437, v438);
        v707 = objc_msgSend_otherHandle(a1, v439, v440);
        v443 = objc_msgSend_status(a1, v441, v442);
        v446 = objc_msgSend_direction(a1, v444, v445);
        v449 = objc_msgSend_cloudKitSyncState(a1, v447, v448);
        v452 = objc_msgSend_cloudKitRecordID(a1, v450, v451);
        v455 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v453, v454);
        v458 = objc_msgSend_cloudKitRecordChangeTag(a1, v456, v457);
        v461 = objc_msgSend_destinationCallerID(a1, v459, v460);
        v464 = objc_msgSend_replyToGUID(a1, v462, v463);
        v467 = objc_msgSend_sortID(a1, v465, v466);
        v470 = objc_msgSend_cloudKitChatID(a1, v468, v469);
        result = IMDMessageRecordCreate(0, 4, 0, v769, 0, 0, 0, 0, 0, 0, 0, v759, 0, v749, v739, v730, 0, v779, v721, v714, v707, 0, 0, v443, v446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v449, v452, v455, v458, 0, v461, v464, v467, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v470);
      }

      else
      {
        if (objc_msgSend_sender(a1, v4, v5))
        {
          v777 = objc_msgSend_sender(a1, v76, v77);
        }

        else
        {
          v777 = objc_msgSend_handle(a1, v76, v77);
        }

        v355 = objc_msgSend_actionType(a1, v78, v79);
        v768 = v355;
        if (v355 >= 3)
        {
          v356 = @"unknown";
        }

        else
        {
          v356 = off_1E7CBA2A0[v355];
        }

        if (IMOSLoggingEnabled())
        {
          v359 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v359, OS_LOG_TYPE_INFO))
          {
            *buf = 138413058;
            *&buf[4] = objc_msgSend_guid(a1, v357, v358);
            *&buf[12] = 2112;
            *&buf[14] = v356;
            *&buf[22] = 2112;
            *&buf[24] = v777;
            *v787 = 2112;
            *&v787[2] = objc_msgSend_otherHandle(a1, v360, v361);
            _os_log_impl(&dword_1B7AD5000, v359, OS_LOG_TYPE_INFO, "Attempting to add message action GUID: %@ (%@) %@ => %@", buf, 0x2Au);
          }
        }

        v362 = objc_msgSend_time(a1, v357, v358);
        v758 = objc_msgSend___im_nanosecondTimeInterval(v362, v363, v364);
        v748 = objc_msgSend_guid(a1, v365, v366);
        v738 = objc_msgSend_service(a1, v367, v368);
        v729 = objc_msgSend_account(a1, v369, v370);
        v720 = objc_msgSend_accountID(a1, v371, v372);
        v713 = objc_msgSend_originalMessageGUID(a1, v373, v374);
        v706 = objc_msgSend_countryCode(a1, v375, v376);
        v702 = objc_msgSend_unformattedID(a1, v377, v378);
        v381 = objc_msgSend_otherHandle(a1, v379, v380);
        v384 = objc_msgSend_balloonBundleID(a1, v382, v383);
        v387 = objc_msgSend_cloudKitSyncState(a1, v385, v386);
        v390 = objc_msgSend_cloudKitRecordID(a1, v388, v389);
        v393 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v391, v392);
        v396 = objc_msgSend_cloudKitRecordChangeTag(a1, v394, v395);
        v399 = objc_msgSend_destinationCallerID(a1, v397, v398);
        v402 = objc_msgSend_replyToGUID(a1, v400, v401);
        v405 = objc_msgSend_sortID(a1, v403, v404);
        v408 = objc_msgSend_cloudKitChatID(a1, v406, v407);
        result = IMDMessageRecordCreate(0, 5, 0, v758, 0, 0, 0, 0, 0, 0, 0, v748, 0, v738, v729, v720, v713, v777, v706, v702, v381, 0, 0, 0, 0, 0, v768, 0, 0, 0, 0, v384, 0, 0, 0, 0, v387, v390, v393, v396, 0, v399, v402, v405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v408);
      }
    }

    else
    {
      switch(v6)
      {
        case 8:
          v116 = objc_msgSend_guid(a1, v4, v5);
          v119 = objc_msgSend_time(a1, v117, v118);
          v122 = objc_msgSend_service(a1, v120, v121);
          v125 = objc_msgSend_account(a1, v123, v124);
          v128 = objc_msgSend_accountID(a1, v126, v127);
          if (objc_msgSend_sender(a1, v129, v130))
          {
            v133 = objc_msgSend_sender(a1, v131, v132);
          }

          else
          {
            v133 = objc_msgSend_handle(a1, v131, v132);
          }

          v511 = v133;
          v512 = objc_msgSend_otherHandle(a1, v134, v135);
          v513 = IMDatabaseLogHandle();
          v732 = v512;
          v741 = v511;
          v751 = v128;
          v761 = v125;
          v771 = v122;
          if (os_log_type_enabled(v513, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v116;
            _os_log_impl(&dword_1B7AD5000, v513, OS_LOG_TYPE_DEFAULT, "Attempting to create location update item with GUID: %@", buf, 0xCu);
          }

          v781 = v116;
          v723 = objc_msgSend___im_nanosecondTimeInterval(v119, v514, v515);
          v518 = objc_msgSend_countryCode(a1, v516, v517);
          v521 = objc_msgSend_unformattedID(a1, v519, v520);
          v524 = objc_msgSend_cloudKitSyncState(a1, v522, v523);
          v527 = objc_msgSend_cloudKitRecordID(a1, v525, v526);
          v530 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v528, v529);
          v533 = objc_msgSend_cloudKitRecordChangeTag(a1, v531, v532);
          v536 = objc_msgSend_destinationCallerID(a1, v534, v535);
          v539 = objc_msgSend_replyToGUID(a1, v537, v538);
          v542 = objc_msgSend_sortID(a1, v540, v541);
          v545 = objc_msgSend_cloudKitChatID(a1, v543, v544);
          result = IMDMessageRecordCreate(0, 8, 0, v723, 0, 0, 0, 0, 0, 0, 0, v781, 0, v771, v761, v751, 0, v741, v518, v521, v732, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v524, v527, v530, v533, 0, v536, v539, v542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v545);
          break;
        case 7:
          v140 = objc_msgSend_guid(a1, v4, v5);
          v143 = objc_msgSend_time(a1, v141, v142);
          v146 = objc_msgSend_service(a1, v144, v145);
          v149 = objc_msgSend_account(a1, v147, v148);
          v152 = objc_msgSend_accountID(a1, v150, v151);
          if (objc_msgSend_sender(a1, v153, v154))
          {
            v157 = objc_msgSend_sender(a1, v155, v156);
          }

          else
          {
            v157 = objc_msgSend_handle(a1, v155, v156);
          }

          v546 = v157;
          v547 = objc_msgSend_otherHandle(a1, v158, v159);
          v548 = IMDatabaseLogHandle();
          v733 = v547;
          v742 = v546;
          v752 = v152;
          v762 = v149;
          v772 = v146;
          if (os_log_type_enabled(v548, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v140;
            _os_log_impl(&dword_1B7AD5000, v548, OS_LOG_TYPE_DEFAULT, "Attempting to create transcript sharing item with GUID: %@", buf, 0xCu);
          }

          v782 = v140;
          v724 = objc_msgSend___im_nanosecondTimeInterval(v143, v549, v550);
          v553 = objc_msgSend_countryCode(a1, v551, v552);
          v556 = objc_msgSend_unformattedID(a1, v554, v555);
          v559 = objc_msgSend_cloudKitSyncState(a1, v557, v558);
          v562 = objc_msgSend_cloudKitRecordID(a1, v560, v561);
          v565 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v563, v564);
          v568 = objc_msgSend_cloudKitRecordChangeTag(a1, v566, v567);
          v571 = objc_msgSend_destinationCallerID(a1, v569, v570);
          v574 = objc_msgSend_replyToGUID(a1, v572, v573);
          v577 = objc_msgSend_sortID(a1, v575, v576);
          v580 = objc_msgSend_cloudKitChatID(a1, v578, v579);
          result = IMDMessageRecordCreate(0, 7, 0, v724, 0, 0, 0, 0, 0, 0, 0, v782, 0, v772, v762, v752, 0, v742, v553, v556, v733, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v559, v562, v565, v568, 0, v571, v574, v577, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v580);
          break;
        case 6:
          if (IMOSLoggingEnabled())
          {
            v10 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              *&buf[4] = objc_msgSend_guid(a1, v8, v9);
              *&buf[12] = 2112;
              *&buf[14] = objc_msgSend_conversationUUID(a1, v11, v12);
              _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Attempting to create a TU Conversation item with guid %@ conversationUUID: %@", buf, 0x16u);
            }
          }

          v13 = MEMORY[0x1E696AD98];
          v14 = objc_msgSend_flags(a1, v8, v9);
          v774 = objc_msgSend_numberWithUnsignedLongLong_(v13, v15, v14);
          v16 = MEMORY[0x1E695DEF0];
          v19 = objc_msgSend_messageSummaryInfo(a1, v17, v18);
          v764 = objc_msgSend_dataWithMessageSummaryInfoDictionary_(v16, v20, v19);
          v23 = objc_msgSend_time(a1, v21, v22);
          v754 = objc_msgSend___im_nanosecondTimeInterval(v23, v24, v25);
          v744 = objc_msgSend_guid(a1, v26, v27);
          v734 = objc_msgSend_service(a1, v28, v29);
          v725 = objc_msgSend_account(a1, v30, v31);
          v716 = objc_msgSend_accountID(a1, v32, v33);
          v709 = objc_msgSend_handle(a1, v34, v35);
          v38 = objc_msgSend_countryCode(a1, v36, v37);
          v41 = objc_msgSend_unformattedID(a1, v39, v40);
          v44 = objc_msgSend_cloudKitSyncState(a1, v42, v43);
          v47 = objc_msgSend_cloudKitRecordID(a1, v45, v46);
          v50 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v48, v49);
          v53 = objc_msgSend_cloudKitRecordChangeTag(a1, v51, v52);
          v56 = objc_msgSend_destinationCallerID(a1, v54, v55);
          v59 = objc_msgSend_replyToGUID(a1, v57, v58);
          v62 = objc_msgSend_sortID(a1, v60, v61);
          v65 = objc_msgSend_cloudKitChatID(a1, v63, v64);
          result = IMDMessageRecordCreate(0, 6, 0, v754, 0, 0, 0, 0, 0, 0, v774, v744, 0, v734, v725, v716, 0, v709, v38, v41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v764, v44, v47, v50, v53, 0, v56, v59, v62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v65);
          break;
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v66 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v66, OS_LOG_TYPE_INFO, "Attempted to create IMDMessageRecordRef from nil IMItem.", buf, 2u);
      }
    }

    result = 0;
  }

  v67 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B65F84(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1B7B64E88);
  }

  _Unwind_Resume(exception_object);
}

id IMDDataDectorDictionaryForMessageItem(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = objc_msgSend_roomName(a1, v3, v4);
  if (v5)
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v6, @"msg-room-%@", v5);
  }

  else
  {
    v10 = objc_msgSend_handle(a1, v6, v7);
    if (!v10)
    {
      goto LABEL_6;
    }

    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"msg-handle-%@", v10);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v2, v9, v8, *MEMORY[0x1E69A6550]);
LABEL_6:
  v13 = objc_msgSend_service(a1, v11, v12);
  objc_msgSend_setObject_forKeyedSubscript_(v2, v14, v13, *MEMORY[0x1E69A6558]);
  v17 = objc_msgSend_copy(v2, v15, v16);

  return v17;
}

id IMDUpdateIMMessageItemWithIMMessageItemForceReplaceReplaceError(id a1, void *a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  v1178 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = objc_alloc(MEMORY[0x1E69A7EF0]);
      a1 = objc_msgSend_initWithMessageItem_(v13, v14, a1);
    }
  }

  context = objc_autoreleasePoolPush();
  v15 = MEMORY[0x1E696AD60];
  v18 = objc_msgSend_guid(a1, v16, v17);
  v20 = objc_msgSend_stringWithFormat_(v15, v19, @"IMMessageItem: %@", v18);
  v25 = objc_msgSend_plainBody(a2, v21, v22);
  if ((a3 & 1) == 0 && ((v31 = objc_msgSend_plainBody(a1, v23, v24), v31 == v25) || (v33 = v31, objc_msgSend_length(v31, v23, v32)) && objc_msgSend_length(v25, v23, v34) && objc_msgSend_isEqualToString_(v33, v23, v25)))
  {
    v30 = objc_msgSend_bodyData(a2, v23, v32);
  }

  else
  {
    objc_msgSend_setPlainBody_(a1, v23, v25);
    v30 = objc_msgSend_bodyData(a2, v26, v27);
    if (a3)
    {
      goto LABEL_17;
    }
  }

  v35 = objc_msgSend_bodyData(a1, v28, v29);
  if (v35 == v30 || v30 && v35 && objc_msgSend_isEqualToData_(v35, v28, v30))
  {
    v39 = objc_msgSend_body(a2, v28, v36);
    goto LABEL_18;
  }

LABEL_17:
  objc_msgSend_setBodyData_(a1, v28, v30);
  v39 = objc_msgSend_body(a2, v40, v41);
  if (a3)
  {
LABEL_22:
    objc_msgSend_appendString_(v20, v37, @", body changed");
    objc_msgSend_setBody_(a1, v52, v39);
    goto LABEL_23;
  }

LABEL_18:
  v42 = objc_msgSend_body(a1, v37, v38);
  v45 = objc_msgSend_string(v42, v43, v44);
  v48 = objc_msgSend_string(v39, v46, v47);
  if (v45 != v48)
  {
    v50 = v48;
    if (!objc_msgSend_length(v45, v37, v49) || !objc_msgSend_length(v50, v37, v51) || (objc_msgSend_isEqualToString_(v45, v37, v50) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v1114 = a6;
  v53 = objc_msgSend_partCount(a2, v37, v49);
  objc_msgSend_setPartCount_(a1, v54, v53);
  v59 = objc_msgSend_subject(a2, v55, v56);
  if ((a3 & 1) != 0 || (v324 = objc_msgSend_subject(a1, v57, v58), v324 != v59) && ((v325 = v324, !objc_msgSend_length(v324, v57, v61)) || !objc_msgSend_length(v59, v57, v326) || (objc_msgSend_isEqualToString_(v325, v57, v59) & 1) == 0))
  {
    objc_msgSend_appendString_(v20, v57, @", subject changed");
    objc_msgSend_setSubject_(a1, v60, v59);
  }

  if (isKindOfClass)
  {
    v62 = objc_msgSend_associatedMessageGUID(a1, v57, v61);
    v65 = objc_msgSend_associatedMessageGUID(a2, v63, v64);
    if (v62 != v65)
    {
      v68 = v65;
      if (!objc_msgSend_length(v62, v66, v67) || objc_msgSend_length(v68, v66, v67) && (objc_msgSend_isEqualToString_(v62, v66, v68) & 1) == 0)
      {
        v69 = MEMORY[0x1E696AEC0];
        v70 = objc_msgSend_associatedMessageGUID(a1, v66, v67);
        v73 = objc_msgSend_associatedMessageGUID(a2, v71, v72);
        v75 = objc_msgSend_stringWithFormat_(v69, v74, @", associatedMessageGUID from %@ to %@", v70, v73);
        objc_msgSend_appendString_(v20, v76, v75);
        v79 = objc_msgSend_associatedMessageGUID(a2, v77, v78);
        objc_msgSend_setAssociatedMessageGUID_(a1, v80, v79);
      }
    }

    v81 = MEMORY[0x1E696AD98];
    v82 = objc_msgSend_associatedMessageType(a1, v66, v67);
    v84 = objc_msgSend_numberWithUnsignedLongLong_(v81, v83, v82);
    v85 = MEMORY[0x1E696AD98];
    v88 = objc_msgSend_associatedMessageType(a2, v86, v87);
    v90 = objc_msgSend_numberWithUnsignedLongLong_(v85, v89, v88);
    if (v84 != v90 && (!v84 || (v92 = v90) != 0 && (objc_msgSend_isEqualToNumber_(v84, v91, v90) & 1) == 0))
    {
      v93 = MEMORY[0x1E696AEC0];
      v94 = MEMORY[0x1E696AD98];
      v95 = objc_msgSend_associatedMessageType(a1, v91, v92);
      v97 = objc_msgSend_numberWithUnsignedLongLong_(v94, v96, v95);
      v98 = MEMORY[0x1E696AD98];
      v101 = objc_msgSend_associatedMessageType(a2, v99, v100);
      v103 = objc_msgSend_numberWithUnsignedLongLong_(v98, v102, v101);
      v105 = objc_msgSend_stringWithFormat_(v93, v104, @", associatedMessageType from %@ to %@", v97, v103);
      objc_msgSend_appendString_(v20, v106, v105);
      v109 = objc_msgSend_associatedMessageType(a2, v107, v108);
      objc_msgSend_setAssociatedMessageType_(a1, v110, v109);
    }

    v111 = objc_msgSend_associatedMessageRange(a2, v91, v92);
    v113 = v112;
    v115 = objc_msgSend_associatedMessageRange(a1, v112, v114);
    v116 = v113 == v57 && v111 == v115;
    if (!v116 && v113)
    {
      objc_msgSend_setAssociatedMessageRange_(a1, v57, v111, v113);
    }
  }

  if ((a3 & 1) == 0 && !objc_msgSend_payloadData(a2, v57, v61) && !objc_msgSend_payloadData(a1, v57, v61))
  {
    goto LABEL_58;
  }

  v117 = objc_msgSend_payloadData(a1, v57, v61);
  v120 = objc_msgSend_payloadData(a2, v118, v119);
  if (v117 != v120 && (!v117 || (v61 = v120) == 0 || (objc_msgSend_isEqualToData_(v117, v57, v120) & 1) == 0))
  {
    v121 = objc_msgSend_payloadData(a2, v57, v61);
    objc_msgSend_setPayloadData_(a1, v122, v121);
  }

  if (a3)
  {
    if (objc_msgSend_balloonBundleID(a2, v57, v61))
    {
      v125 = objc_msgSend_balloonBundleID(a1, v123, v124);
      v128 = objc_msgSend_balloonBundleID(a2, v126, v127);
      if (v125 != v128)
      {
        v129 = v128;
        if (!objc_msgSend_length(v125, v123, v124) || objc_msgSend_length(v129, v123, v124) && (objc_msgSend_isEqualToString_(v125, v123, v129) & 1) == 0)
        {
          v130 = objc_msgSend_balloonBundleID(a2, v123, v124);
          objc_msgSend_setBalloonBundleID_(a1, v131, v130);
        }
      }
    }
  }

  else
  {
LABEL_58:
    if (!objc_msgSend_messageSummaryInfo(a2, v57, v61) && !objc_msgSend_messageSummaryInfo(a1, v123, v124))
    {
      goto LABEL_62;
    }
  }

  v132 = objc_msgSend_messageSummaryInfo(a2, v123, v124);
  v135 = objc_msgSend_messageSummaryInfo(a1, v133, v134);
  if ((objc_msgSend_isEqualToDictionary_(v132, v136, v135) & 1) == 0)
  {
    v137 = objc_msgSend_messageSummaryInfo(a2, v123, v124);
    objc_msgSend_setMessageSummaryInfo_(a1, v138, v137);
  }

  if ((a3 & 1) == 0)
  {
LABEL_62:
    if (!objc_msgSend_fileTransferGUIDs(a2, v123, v124) && !objc_msgSend_fileTransferGUIDs(a1, v123, v124))
    {
      goto LABEL_66;
    }
  }

  v139 = objc_msgSend_fileTransferGUIDs(a2, v123, v124);
  v142 = objc_msgSend_fileTransferGUIDs(a1, v140, v141);
  if ((objc_msgSend_isEqualToArray_(v139, v143, v142) & 1) == 0)
  {
    v144 = MEMORY[0x1E696AEC0];
    v145 = objc_msgSend_fileTransferGUIDs(a1, v123, v124);
    v148 = objc_msgSend_fileTransferGUIDs(a2, v146, v147);
    v150 = objc_msgSend_stringWithFormat_(v144, v149, @", fileTransferGUIDs from %@ to %@", v145, v148);
    objc_msgSend_appendString_(v20, v151, v150);
    v154 = objc_msgSend_fileTransferGUIDs(a2, v152, v153);
    objc_msgSend_setFileTransferGUIDs_(a1, v155, v154);
  }

LABEL_66:
  v156 = objc_msgSend_time(a2, v123, v124);
  v159 = v156;
  if ((a3 & 1) != 0 || v156)
  {
    v160 = objc_msgSend_time(a1, v157, v158);
    if (v160 != v159 && (!v160 || v159 && (objc_msgSend_isEqualToDate_(v160, v157, v159) & 1) == 0))
    {
      if ((a3 & 1) != 0 || (v161 = objc_msgSend_time(a1, v157, v158), objc_msgSend_timeIntervalSinceReferenceDate(v161, v162, v163), v164 >= 0.00000011920929))
      {
        v165 = MEMORY[0x1E696AEC0];
        v166 = objc_msgSend_time(a1, v157, v158);
        v168 = objc_msgSend_stringWithFormat_(v165, v167, @", time from %@ to %@", v166, v159);
        objc_msgSend_appendString_(v20, v169, v168);
        objc_msgSend_setTime_(a1, v170, v159);
      }
    }
  }

  v173 = objc_msgSend_timeDelivered(a2, v157, v158);
  if (v173 || a3)
  {
    v174 = objc_msgSend_timeDelivered(a1, v171, v172);
    if (v174 != v173 && (!v174 || v173 && (objc_msgSend_isEqualToDate_(v174, v171, v173) & 1) == 0))
    {
      v175 = MEMORY[0x1E696AEC0];
      v176 = objc_msgSend_timeDelivered(a1, v171, v172);
      v178 = objc_msgSend_stringWithFormat_(v175, v177, @", timeDelivered from %@ to %@", v176, v173);
      objc_msgSend_appendString_(v20, v179, v178);
      objc_msgSend_setTimeDelivered_(a1, v180, v173);
    }
  }

  v183 = objc_msgSend_timeRead(a2, v171, v172);
  if (v183 || a3)
  {
    v184 = objc_msgSend_timeRead(a1, v181, v182);
    if (v184 != v183 && (!v184 || v183 && (objc_msgSend_isEqualToDate_(v184, v181, v183) & 1) == 0))
    {
      v185 = MEMORY[0x1E696AEC0];
      v186 = objc_msgSend_timeRead(a1, v181, v182);
      v188 = objc_msgSend_stringWithFormat_(v185, v187, @", timeRead from %@ to %@", v186, v183);
      objc_msgSend_appendString_(v20, v189, v188);
      objc_msgSend_setTimeRead_(a1, v190, v183);
    }
  }

  v193 = objc_msgSend_timePlayed(a2, v181, v182);
  if (v193 || a3)
  {
    v194 = objc_msgSend_timePlayed(a1, v191, v192);
    if (v194 != v193 && (!v194 || v193 && (objc_msgSend_isEqualToDate_(v194, v191, v193) & 1) == 0))
    {
      v195 = MEMORY[0x1E696AEC0];
      v196 = objc_msgSend_timePlayed(a1, v191, v192);
      v198 = objc_msgSend_stringWithFormat_(v195, v197, @", timePlayed from %@ to %@", v196, v193);
      objc_msgSend_appendString_(v20, v199, v198);
      objc_msgSend_setTimePlayed_(a1, v200, v193);
    }
  }

  v203 = objc_msgSend_dateEdited(a2, v191, v192);
  if (v203 || a3)
  {
    v204 = objc_msgSend_dateEdited(a1, v201, v202);
    if (v204 != v203 && (!v204 || v203 && (objc_msgSend_isEqualToDate_(v204, v201, v203) & 1) == 0))
    {
      v205 = MEMORY[0x1E696AEC0];
      v206 = objc_msgSend_dateEdited(a1, v201, v202);
      v208 = objc_msgSend_stringWithFormat_(v205, v207, @", dateEdited from %@ to %@", v206, v203);
      objc_msgSend_appendString_(v20, v209, v208);
      objc_msgSend_setDateEdited_(a1, v210, v203);
    }
  }

  v211 = objc_msgSend_account(a2, v201, v202);
  v214 = objc_msgSend_account(a1, v212, v213);
  if (v214 != v211)
  {
    v217 = v214;
    if (!objc_msgSend_length(v214, v215, v216) || objc_msgSend_length(v211, v215, v218) && (objc_msgSend_isEqualToString_(v217, v215, v211) & 1) == 0)
    {
      objc_msgSend_setAccount_(a1, v215, v211);
    }
  }

  v219 = objc_msgSend_accountID(a2, v215, v216);
  v222 = objc_msgSend_accountID(a1, v220, v221);
  if (v222 != v219)
  {
    v225 = v222;
    if (!objc_msgSend_length(v222, v223, v224) || objc_msgSend_length(v219, v223, v226) && (objc_msgSend_isEqualToString_(v225, v223, v219) & 1) == 0)
    {
      objc_msgSend_setAccountID_(a1, v223, v219);
    }
  }

  v227 = objc_msgSend_service(a2, v223, v224);
  v230 = objc_msgSend_service(a1, v228, v229);
  if (v230 != v227)
  {
    v233 = v230;
    if (!objc_msgSend_length(v230, v231, v232) || objc_msgSend_length(v227, v231, v232) && (objc_msgSend_isEqualToString_(v233, v231, v227) & 1) == 0)
    {
      v234 = MEMORY[0x1E696AEC0];
      v235 = objc_msgSend_service(a1, v231, v232);
      v237 = objc_msgSend_stringWithFormat_(v234, v236, @", service from %@ to %@", v235, v227);
      objc_msgSend_appendString_(v20, v238, v237);
      objc_msgSend_setService_(a1, v239, v227);
    }
  }

  v242 = objc_msgSend_destinationCallerID(a2, v231, v232);
  if (v242 || a3)
  {
    v243 = objc_msgSend_destinationCallerID(a1, v240, v241);
    if (v243 != v242)
    {
      v244 = v243;
      if (!objc_msgSend_length(v243, v240, v241) || objc_msgSend_length(v242, v240, v241) && (objc_msgSend_isEqualToString_(v244, v240, v242) & 1) == 0)
      {
        v245 = MEMORY[0x1E696AEC0];
        v246 = objc_msgSend_destinationCallerID(a1, v240, v241);
        v248 = objc_msgSend_stringWithFormat_(v245, v247, @", destinationCallerID from %@ to %@", v246, v242);
        objc_msgSend_appendString_(v20, v249, v248);
        objc_msgSend_setDestinationCallerID_(a1, v250, v242);
      }
    }
  }

  if ((a3 & 1) != 0 || a4)
  {
    v251 = MEMORY[0x1E696AD98];
    v252 = objc_msgSend_errorCode(a2, v240, v241);
    v254 = objc_msgSend_numberWithUnsignedInt_(v251, v253, v252);
    v255 = MEMORY[0x1E696AD98];
    v258 = objc_msgSend_errorCode(a1, v256, v257);
    v260 = objc_msgSend_numberWithUnsignedInt_(v255, v259, v258);
    if (v260 != v254)
    {
      v261 = v260;
      if (!v260 || v254 && (objc_msgSend_isEqualToNumber_(v260, v240, v254) & 1) == 0)
      {
        v262 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v240, @", errorCode from %@ to %@", v261, v254);
        objc_msgSend_appendString_(v20, v263, v262);
        v266 = objc_msgSend_unsignedIntValue(v254, v264, v265);
        objc_msgSend_setErrorCode_(a1, v267, v266);
      }
    }
  }

  v270 = objc_msgSend_expireState(a2, v240, v241);
  if ((a3 & 1) != 0 || v270 > objc_msgSend_expireState(a1, v268, v269))
  {
    v271 = MEMORY[0x1E696AEC0];
    v272 = objc_msgSend_expireState(a1, v268, v269);
    v274 = objc_msgSend_stringWithFormat_(v271, v273, @", expireState from %lld to %lld", v272, v270);
    objc_msgSend_appendString_(v20, v275, v274);
    objc_msgSend_setExpireState_(a1, v276, v270);
  }

  v279 = objc_msgSend_timeExpressiveSendPlayed(a2, v268, v269);
  if (v279 || a3)
  {
    v280 = objc_msgSend_timeExpressiveSendPlayed(a1, v277, v278);
    if (v280 != v279 && (!v280 || v279 && (objc_msgSend_isEqualToDate_(v280, v277, v279) & 1) == 0))
    {
      v281 = MEMORY[0x1E696AEC0];
      v282 = objc_msgSend_timeExpressiveSendPlayed(a1, v277, v278);
      v284 = objc_msgSend_stringWithFormat_(v281, v283, @", timeExpressiveSendPlayed from %@ to %@", v282, v279);
      objc_msgSend_appendString_(v20, v285, v284);
      objc_msgSend_setTimeExpressiveSendPlayed_(a1, v286, v279);
    }
  }

  if (a5)
  {
    v287 = MEMORY[0x1E696AD98];
    v288 = objc_msgSend_flags(a2, v277, v278);
    v290 = objc_msgSend_numberWithUnsignedLongLong_(v287, v289, v288);
    v291 = MEMORY[0x1E696AD98];
    v294 = objc_msgSend_flags(a1, v292, v293);
    v296 = objc_msgSend_numberWithUnsignedLongLong_(v291, v295, v294);
    if (v296 != v290)
    {
      v297 = v296;
      if (!v296 || v290 && (objc_msgSend_isEqualToNumber_(v296, v277, v290) & 1) == 0)
      {
        v298 = objc_msgSend_flags(a1, v277, v278);
        v301 = objc_msgSend_flags(a2, v299, v300);
        v303 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v302, @", flags from %@ to %@", v297, v290);
        objc_msgSend_appendString_(v20, v304, v303);
        if (v1114)
        {
          v307 = -1;
        }

        else
        {
          v307 = a7;
        }

        v308 = v301 & v307;
        if ((a3 & 1) == 0 && (v298 & 8) == 0 && objc_msgSend_isEmpty(a2, v305, v306))
        {
          v308 &= ~8uLL;
        }

        v309 = v308 | v298;
        if (((a7 & 0x2000) != 0 || v1114) && objc_msgSend_isRead(a1, v305, v306) && !objc_msgSend_isRead(a2, v305, v306))
        {
          v309 &= ~0x2000uLL;
        }

        if (((a7 & 0x8000) != 0 || v1114) && objc_msgSend_isSent(a1, v305, v306) && !objc_msgSend_isSent(a2, v305, v306))
        {
          v309 &= ~0x8000uLL;
        }

        if (((a7 & 0x1000) != 0 || v1114) && objc_msgSend_isDelivered(a1, v305, v306) && !objc_msgSend_isDelivered(a2, v305, v306))
        {
          v309 &= ~0x1000uLL;
        }

        if (((a7 & 0x4000000) != 0 || v1114) && objc_msgSend_isCorrupt(a1, v305, v306) && !objc_msgSend_isCorrupt(a2, v305, v306))
        {
          v309 &= ~0x4000000uLL;
        }

        if (((a7 & 0x8000000) != 0 || v1114) && objc_msgSend_isSpam(a1, v305, v306) && !objc_msgSend_isSpam(a2, v305, v306))
        {
          v309 &= ~0x8000000uLL;
        }

        if (((a7 & 0x20000000000) != 0 || v1114) && objc_msgSend_isPendingSatelliteSend(a1, v305, v306) && !objc_msgSend_isPendingSatelliteSend(a2, v305, v306))
        {
          v309 &= ~0x20000000000uLL;
        }

        if (((a7 & 0x40000000000) != 0 || v1114) && objc_msgSend_needsRelay(a1, v305, v306) && !objc_msgSend_needsRelay(a2, v305, v310))
        {
          v309 &= ~0x40000000000uLL;
        }

        objc_msgSend_setFlags_(a1, v305, v309);
      }
    }
  }

  if (a3)
  {
    v311 = MEMORY[0x1E696AEC0];
    if (objc_msgSend_hasUnseenMention(a1, v277, v278))
    {
      v314 = @"YES";
    }

    else
    {
      v314 = @"NO";
    }

    if (objc_msgSend_hasUnseenMention(a2, v312, v313))
    {
      v316 = objc_msgSend_stringWithFormat_(v311, v315, @", hasUnseenMention from %@ to %@", v314, @"YES");
    }

    else
    {
      v316 = objc_msgSend_stringWithFormat_(v311, v315, @", hasUnseenMention from %@ to %@", v314, @"NO");
    }

    objc_msgSend_appendString_(v20, v317, v316);
    hasUnseenMention = objc_msgSend_hasUnseenMention(a2, v318, v319);
    objc_msgSend_setHasUnseenMention_(a1, v321, hasUnseenMention);
  }

  else
  {
    v327 = objc_msgSend_hasUnseenMention(a1, v277, v278);
    if (v327 != objc_msgSend_hasUnseenMention(a2, v328, v329))
    {
      v332 = MEMORY[0x1E696AEC0];
      if (objc_msgSend_hasUnseenMention(a1, v330, v331))
      {
        v335 = @"YES";
      }

      else
      {
        v335 = @"NO";
      }

      if (objc_msgSend_hasUnseenMention(a2, v333, v334))
      {
        v337 = objc_msgSend_stringWithFormat_(v332, v336, @", hasUnseenMention from %@ to %@", v335, @"YES");
      }

      else
      {
        v337 = objc_msgSend_stringWithFormat_(v332, v336, @", hasUnseenMention from %@ to %@", v335, @"NO");
      }

      objc_msgSend_appendString_(v20, v338, v337);
      v341 = objc_msgSend_hasUnseenMention(a2, v339, v340);
      objc_msgSend_setHasUnseenMention_(a1, v342, v341);
    }

    v343 = objc_msgSend_cloudKitSyncState(a1, v330, v331);
    if (v343 == objc_msgSend_cloudKitSyncState(a2, v344, v345))
    {
LABEL_214:
      v362 = objc_msgSend_cloudKitRecordID(a1, v322, v323);
      v365 = objc_msgSend_cloudKitRecordID(a2, v363, v364);
      if (v362 != v365)
      {
        v368 = v365;
        if (!objc_msgSend_length(v362, v366, v367) || objc_msgSend_length(v368, v366, v367) && (objc_msgSend_isEqualToString_(v362, v366, v368) & 1) == 0)
        {
          v369 = objc_msgSend_cloudKitRecordID(a2, v366, v367);
          objc_msgSend_setCloudKitRecordID_(a1, v370, v369);
        }
      }

      v371 = objc_msgSend_cloudKitRecordChangeTag(a1, v366, v367);
      v374 = objc_msgSend_cloudKitRecordChangeTag(a2, v372, v373);
      if (v371 == v374)
      {
        goto LABEL_225;
      }

      v375 = v374;
      if (objc_msgSend_length(v371, v360, v361))
      {
        if (!objc_msgSend_length(v375, v360, v361) || (objc_msgSend_isEqualToString_(v371, v360, v375) & 1) != 0)
        {
          goto LABEL_225;
        }
      }

      goto LABEL_223;
    }
  }

  v346 = MEMORY[0x1E696AEC0];
  v347 = objc_msgSend_cloudKitSyncState(a1, v322, v323);
  v350 = objc_msgSend_cloudKitSyncState(a2, v348, v349);
  v352 = objc_msgSend_stringWithFormat_(v346, v351, @", cloudKitSyncState from %lld to %lld", v347, v350);
  objc_msgSend_appendString_(v20, v353, v352);
  v356 = objc_msgSend_cloudKitSyncState(a2, v354, v355);
  objc_msgSend_setCloudKitSyncState_(a1, v357, v356);
  if ((a3 & 1) == 0)
  {
    goto LABEL_214;
  }

  v358 = objc_msgSend_cloudKitRecordID(a2, v322, v323);
  objc_msgSend_setCloudKitRecordID_(a1, v359, v358);
LABEL_223:
  v376 = objc_msgSend_cloudKitRecordChangeTag(a2, v360, v361);
  objc_msgSend_setCloudKitRecordChangeTag_(a1, v377, v376);
  v380 = objc_msgSend_cloudKitServerChangeTokenBlob(a2, v378, v379);
  objc_msgSend_setCloudKitServerChangeTokenBlob_(a1, v381, v380);
  if (a3)
  {
    v382 = MEMORY[0x1E696AEC0];
    v383 = objc_msgSend_replyToGUID(a1, v360, v361);
    v386 = objc_msgSend_replyToGUID(a2, v384, v385);
    v388 = objc_msgSend_stringWithFormat_(v382, v387, @", replyToGUID from %@ to %@", v383, v386);
    objc_msgSend_appendString_(v20, v389, v388);
    v392 = objc_msgSend_replyToGUID(a2, v390, v391);
    objc_msgSend_setReplyToGUID_(a1, v393, v392);
    goto LABEL_234;
  }

LABEL_225:
  v396 = objc_msgSend_replyToGUID(a1, v360, v361);
  v399 = objc_msgSend_replyToGUID(a2, v397, v398);
  if (v396 != v399)
  {
    v402 = v399;
    if (!objc_msgSend_length(v396, v400, v401) || objc_msgSend_length(v402, v400, v401) && (objc_msgSend_isEqualToString_(v396, v400, v402) & 1) == 0)
    {
      v403 = MEMORY[0x1E696AEC0];
      v404 = objc_msgSend_replyToGUID(a1, v400, v401);
      v407 = objc_msgSend_replyToGUID(a2, v405, v406);
      v409 = objc_msgSend_stringWithFormat_(v403, v408, @", replyToGUID from %@ to %@", v404, v407);
      objc_msgSend_appendString_(v20, v410, v409);
      v413 = objc_msgSend_replyToGUID(a2, v411, v412);
      objc_msgSend_setReplyToGUID_(a1, v414, v413);
    }
  }

  v415 = MEMORY[0x1E696AD98];
  v416 = objc_msgSend_sortID(a1, v400, v401);
  v418 = objc_msgSend_numberWithUnsignedInteger_(v415, v417, v416);
  v419 = MEMORY[0x1E696AD98];
  v422 = objc_msgSend_sortID(a2, v420, v421);
  v424 = objc_msgSend_numberWithUnsignedInteger_(v419, v423, v422);
  if (v418 == v424 || v418 && ((v395 = v424) == 0 || (objc_msgSend_isEqualToNumber_(v418, v394, v424) & 1) != 0))
  {
LABEL_236:
    v457 = objc_msgSend_threadIdentifier(a1, v394, v395);
    v460 = objc_msgSend_threadIdentifier(a2, v458, v459);
    if (v457 != v460)
    {
      v463 = v460;
      if (!objc_msgSend_length(v457, v461, v462) || objc_msgSend_length(v463, v461, v462) && (objc_msgSend_isEqualToString_(v457, v461, v463) & 1) == 0)
      {
        v464 = MEMORY[0x1E696AEC0];
        v465 = objc_msgSend_threadIdentifier(a1, v461, v462);
        v468 = objc_msgSend_threadIdentifier(a2, v466, v467);
        v470 = objc_msgSend_stringWithFormat_(v464, v469, @", threadIdentifier from %@ to %@", v465, v468);
        objc_msgSend_appendString_(v20, v471, v470);
        v474 = objc_msgSend_threadIdentifier(a2, v472, v473);
        objc_msgSend_setThreadIdentifier_(a1, v475, v474);
      }
    }

    v476 = objc_msgSend_syndicationRanges(a1, v461, v462);
    v479 = objc_msgSend_syndicationRanges(a2, v477, v478);
    if (v476 == v479)
    {
      goto LABEL_247;
    }

    if (v476)
    {
      v456 = v479;
      if (v479)
      {
        if (objc_msgSend_isEqualToArray_(v476, v455, v479))
        {
          goto LABEL_247;
        }
      }
    }

    goto LABEL_245;
  }

LABEL_234:
  v425 = MEMORY[0x1E696AEC0];
  v426 = MEMORY[0x1E696AD98];
  v427 = objc_msgSend_sortID(a1, v394, v395);
  v429 = objc_msgSend_numberWithUnsignedInteger_(v426, v428, v427);
  v430 = MEMORY[0x1E696AD98];
  v433 = objc_msgSend_sortID(a2, v431, v432);
  v435 = objc_msgSend_numberWithUnsignedInteger_(v430, v434, v433);
  v437 = objc_msgSend_stringWithFormat_(v425, v436, @", sortID from %@ to %@", v429, v435);
  objc_msgSend_appendString_(v20, v438, v437);
  v441 = objc_msgSend_sortID(a2, v439, v440);
  objc_msgSend_setSortID_(a1, v442, v441);
  if ((a3 & 1) == 0)
  {
    goto LABEL_236;
  }

  v443 = MEMORY[0x1E696AEC0];
  v444 = objc_msgSend_threadIdentifier(a1, v394, v395);
  v447 = objc_msgSend_threadIdentifier(a2, v445, v446);
  v449 = objc_msgSend_stringWithFormat_(v443, v448, @", threadIdentifier from %@ to %@", v444, v447);
  objc_msgSend_appendString_(v20, v450, v449);
  v453 = objc_msgSend_threadIdentifier(a2, v451, v452);
  objc_msgSend_setThreadIdentifier_(a1, v454, v453);
LABEL_245:
  v480 = MEMORY[0x1E696AEC0];
  v481 = objc_msgSend_syndicationRanges(a1, v455, v456);
  v484 = objc_msgSend_syndicationRanges(a2, v482, v483);
  v486 = objc_msgSend_stringWithFormat_(v480, v485, @", syndicationRanges from %@ to %@", v481, v484);
  objc_msgSend_appendString_(v20, v487, v486);
  v490 = objc_msgSend_syndicationRanges(a2, v488, v489);
  objc_msgSend_setSyndicationRanges_(a1, v491, v490);
  if (a3)
  {
    v492 = MEMORY[0x1E696AEC0];
    v493 = objc_msgSend_syncedSyndicationRanges(a1, v455, v456);
    v496 = objc_msgSend_syncedSyndicationRanges(a2, v494, v495);
    v498 = objc_msgSend_stringWithFormat_(v492, v497, @", syncedSyndicationRanges from %@ to %@", v493, v496);
    objc_msgSend_appendString_(v20, v499, v498);
    v502 = objc_msgSend_syncedSyndicationRanges(a2, v500, v501);
    objc_msgSend_setSyncedSyndicationRanges_(a1, v503, v502);
    goto LABEL_256;
  }

LABEL_247:
  v506 = objc_msgSend_syncedSyndicationRanges(a1, v455, v456);
  v509 = objc_msgSend_syncedSyndicationRanges(a2, v507, v508);
  if (v506 != v509 && (!v506 || (v511 = v509) == 0 || (objc_msgSend_isEqualToArray_(v506, v510, v509) & 1) == 0))
  {
    v512 = MEMORY[0x1E696AEC0];
    v513 = objc_msgSend_syncedSyndicationRanges(a1, v510, v511);
    v516 = objc_msgSend_syncedSyndicationRanges(a2, v514, v515);
    v518 = objc_msgSend_stringWithFormat_(v512, v517, @", syncedSyndicationRanges from %@ to %@", v513, v516);
    objc_msgSend_appendString_(v20, v519, v518);
    v522 = objc_msgSend_syncedSyndicationRanges(a2, v520, v521);
    objc_msgSend_setSyncedSyndicationRanges_(a1, v523, v522);
  }

  v524 = objc_msgSend_expressiveSendStyleID(a1, v510, v511);
  v527 = objc_msgSend_expressiveSendStyleID(a2, v525, v526);
  if (v524 == v527 || (v528 = v527, objc_msgSend_length(v524, v504, v505)) && (!objc_msgSend_length(v528, v504, v505) || (objc_msgSend_isEqualToString_(v524, v504, v528) & 1) != 0))
  {
LABEL_258:
    v555 = objc_msgSend_scheduleType(a1, v504, v505);
    if (v555 != objc_msgSend_scheduleType(a2, v556, v557))
    {
      v560 = MEMORY[0x1E696AEC0];
      v561 = objc_msgSend_scheduleType(a1, v558, v559);
      v564 = objc_msgSend_scheduleType(a2, v562, v563);
      v566 = objc_msgSend_stringWithFormat_(v560, v565, @", scheduleType from %lu to %lu", v561, v564);
      objc_msgSend_appendString_(v20, v567, v566);
      v570 = objc_msgSend_scheduleType(a2, v568, v569);
      objc_msgSend_setScheduleType_(a1, v571, v570);
    }

    v572 = objc_msgSend_scheduleState(a1, v558, v559);
    if (v572 == objc_msgSend_scheduleState(a2, v573, v574))
    {
      goto LABEL_262;
    }

    goto LABEL_261;
  }

LABEL_256:
  v529 = MEMORY[0x1E696AEC0];
  v530 = objc_msgSend_expressiveSendStyleID(a1, v504, v505);
  v533 = objc_msgSend_expressiveSendStyleID(a2, v531, v532);
  v535 = objc_msgSend_stringWithFormat_(v529, v534, @", expressiveSendStyleID from %@ to %@", v530, v533);
  objc_msgSend_appendString_(v20, v536, v535);
  v539 = objc_msgSend_expressiveSendStyleID(a2, v537, v538);
  objc_msgSend_setExpressiveSendStyleID_(a1, v540, v539);
  if ((a3 & 1) == 0)
  {
    goto LABEL_258;
  }

  v541 = MEMORY[0x1E696AEC0];
  v542 = objc_msgSend_scheduleType(a1, v504, v505);
  v545 = objc_msgSend_scheduleType(a2, v543, v544);
  v547 = objc_msgSend_stringWithFormat_(v541, v546, @", scheduleType from %lu to %lu", v542, v545);
  objc_msgSend_appendString_(v20, v548, v547);
  v551 = objc_msgSend_scheduleType(a2, v549, v550);
  objc_msgSend_setScheduleType_(a1, v552, v551);
LABEL_261:
  v575 = MEMORY[0x1E696AEC0];
  v576 = objc_msgSend_scheduleState(a1, v553, v554);
  v579 = objc_msgSend_scheduleState(a2, v577, v578);
  v581 = objc_msgSend_stringWithFormat_(v575, v580, @", scheduleState from %lu to %lu", v576, v579);
  objc_msgSend_appendString_(v20, v582, v581);
  v585 = objc_msgSend_scheduleState(a2, v583, v584);
  objc_msgSend_setScheduleState_(a1, v586, v585);
  if (a3)
  {
LABEL_263:
    v590 = MEMORY[0x1E696AEC0];
    v591 = objc_msgSend_fallbackHash(a1, v553, v554);
    v594 = objc_msgSend_fallbackHash(a2, v592, v593);
    v596 = objc_msgSend_stringWithFormat_(v590, v595, @", fallbackHash from %@ to %@", v591, v594);
    objc_msgSend_appendString_(v20, v597, v596);
    v600 = objc_msgSend_fallbackHash(a2, v598, v599);
    objc_msgSend_setFallbackHash_(a1, v601, v600);
    goto LABEL_264;
  }

LABEL_262:
  v587 = objc_msgSend_fallbackHash(a1, v553, v554);
  if (v587 != objc_msgSend_fallbackHash(a2, v588, v589))
  {
    goto LABEL_263;
  }

LABEL_264:
  v602 = objc_msgSend_cloudKitChatID(a2, v553, v554);
  v605 = objc_msgSend_cloudKitChatID(a1, v603, v604);
  if (v605 != v602)
  {
    v608 = v605;
    if (!objc_msgSend_length(v605, v606, v607) || objc_msgSend_length(v602, v606, v607) && (objc_msgSend_isEqualToString_(v608, v606, v602) & 1) == 0)
    {
      v609 = MEMORY[0x1E696AEC0];
      v610 = objc_msgSend_cloudKitChatID(a1, v606, v607);
      v612 = objc_msgSend_stringWithFormat_(v609, v611, @", cloudKitChatID from %@ to %@", v610, v602);
      objc_msgSend_appendString_(v20, v613, v612);
      objc_msgSend_setCloudKitChatID_(a1, v614, v602);
    }
  }

  v1175 = 0;
  v1176 = 0;
  objc_msgSend_threadIdentifier(a1, v606, v607);
  IMMessageThreadIdentifierGetComponents();
  v615 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v615, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v20;
    _os_log_impl(&dword_1B7AD5000, v615, OS_LOG_TYPE_DEFAULT, "Updating %@", &buf, 0xCu);
  }

  v618 = objc_msgSend_guid(a1, v616, v617);
  v619 = IMDMessageRecordCopyMessageForGUID(v618);
  if (v619)
  {
    v620 = v619;
    v1173 = 0;
    v1174 = 0;
    v1171 = 0;
    v1172 = 0;
    v1169 = 0;
    v1170 = 0;
    v1167 = 0;
    v1168 = 0;
    v1165 = 0;
    v1166 = 0;
    v1163 = 0;
    v1164 = 0;
    v1161 = 0;
    v1162 = 0;
    v1159 = 0;
    v1160 = 0;
    v1158 = 0;
    v1157 = 0;
    v1156 = 0;
    v1155 = 0;
    v1154 = 0;
    v1153 = 0;
    v1152 = 0;
    v1151 = 0;
    v1150 = 0;
    v1149 = 0;
    v1148 = 0;
    v1147 = 0;
    v1146 = 0;
    buf = 0uLL;
    v1145 = 0;
    v1144 = 0;
    v1143 = 0;
    cf = 0;
    v1141 = 0;
    v1140 = 0;
    v1139 = 0;
    v1138 = 0;
    v1137 = 0;
    v1136 = 0;
    v1135 = 0;
    v1134 = 0;
    v1133 = 0;
    v1132 = 0;
    v1131 = 0;
    v1130 = 0;
    v1129 = 0;
    v1128 = 0;
    v1127 = 0;
    v1126 = 0;
    v1125 = 0;
    v1124 = 0;
    v1123 = 0;
    v1122 = 0;
    v1121 = 0;
    IMDMessageRecordBulkCopy(v619, &v1154, &v1174, &v1173, &v1172, &v1171, &v1170, &v1169, &v1168, &v1167, &v1166, &v1165, &v1164, &v1163, &v1162, &v1161, &v1160, &v1159, &v1158, &v1157 + 1, &v1157, &v1156, &v1152, &v1153, &v1149, &v1150, &v1151, &v1155, &v1148, &v1147, &v1146, &buf, &v1143, &cf, &v1145, &v1144, &v1141, &v1140, &v1139, &v1138, &v1137, &v1136, &v1135, &v1134, &v1133, &v1132, &v1131, &v1130, &v1129, &v1128, &v1127, &v1126, &v1125, &v1124, &v1123, &v1122, &v1121);
    v623 = objc_msgSend_time(a1, v621, v622);
    v626 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v624, v625, v1171);
    if (v623 == v626)
    {
      goto LABEL_276;
    }

    if (!v623)
    {
      v629 = 1;
      goto LABEL_278;
    }

    v628 = v626;
    if (!v626)
    {
LABEL_276:
      v629 = 0;
    }

    else
    {
      v629 = objc_msgSend_isEqualToDate_(v623, v627, v626) ^ 1;
    }

LABEL_278:
    v630 = objc_msgSend_timeRead(a1, v627, v628);
    v633 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v631, v632, v1170);
    if (v630 == v633)
    {
      goto LABEL_282;
    }

    if (!v630)
    {
      v636 = 1;
      goto LABEL_284;
    }

    v635 = v633;
    if (!v633)
    {
LABEL_282:
      v636 = 0;
    }

    else
    {
      v636 = objc_msgSend_isEqualToDate_(v630, v634, v633) ^ 1;
    }

LABEL_284:
    v637 = v629 | v636;
    v638 = objc_msgSend_timeDelivered(a1, v634, v635);
    v641 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v639, v640, v1169);
    if (v638 == v641)
    {
      goto LABEL_288;
    }

    if (!v638)
    {
      v644 = 1;
      goto LABEL_290;
    }

    v643 = v641;
    if (!v641)
    {
LABEL_288:
      v644 = 0;
    }

    else
    {
      v644 = objc_msgSend_isEqualToDate_(v638, v642, v641) ^ 1;
    }

LABEL_290:
    v645 = v637 | v644;
    v646 = objc_msgSend_timePlayed(a1, v642, v643);
    v649 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v647, v648, v1168);
    if (v646 == v649)
    {
      goto LABEL_294;
    }

    if (!v646)
    {
      v652 = 1;
      goto LABEL_296;
    }

    v651 = v649;
    if (!v649)
    {
LABEL_294:
      v652 = 0;
    }

    else
    {
      v652 = objc_msgSend_isEqualToDate_(v646, v650, v649) ^ 1;
    }

LABEL_296:
    v653 = v645 | v652;
    v654 = objc_msgSend_plainBody(a1, v650, v651);
    v657 = v1167;
    if (v654 == v1167)
    {
      v659 = 0;
    }

    else
    {
      v658 = v654;
      if (objc_msgSend_length(v654, v655, v656) && objc_msgSend_length(v657, v655, v656))
      {
        v659 = objc_msgSend_isEqualToString_(v658, v655, v657) ^ 1;
      }

      else
      {
        v659 = 1;
      }
    }

    v660 = v653 | v659;
    v661 = objc_msgSend_bodyData(a1, v655, v656);
    v663 = v1166;
    if (v661 == v1166)
    {
      v664 = 0;
    }

    else
    {
      v664 = 1;
      if (v661 && v1166)
      {
        v664 = objc_msgSend_isEqualToData_(v661, v662, v1166) ^ 1;
      }
    }

    v665 = v660 | v664;
    v666 = MEMORY[0x1E696AD98];
    v667 = objc_msgSend_flags(a1, v662, v663);
    v669 = objc_msgSend_numberWithUnsignedLongLong_(v666, v668, v667);
    v671 = v1165;
    if (v669 == v1165)
    {
      goto LABEL_311;
    }

    if (!v669)
    {
      v672 = 1;
      goto LABEL_313;
    }

    if (!v1165)
    {
LABEL_311:
      v672 = 0;
    }

    else
    {
      v672 = objc_msgSend_isEqualToNumber_(v669, v670, v1165) ^ 1;
    }

LABEL_313:
    v673 = v665 | v672;
    v674 = objc_msgSend_service(a1, v670, v671);
    v677 = v1164;
    if (v674 == v1164)
    {
      goto LABEL_317;
    }

    v678 = v674;
    if (!objc_msgSend_length(v674, v675, v676))
    {
      v679 = 1;
      goto LABEL_319;
    }

    if (!objc_msgSend_length(v677, v675, v676))
    {
LABEL_317:
      v679 = 0;
    }

    else
    {
      v679 = objc_msgSend_isEqualToString_(v678, v675, v677) ^ 1;
    }

LABEL_319:
    v680 = v673 | v679;
    v681 = objc_msgSend_destinationCallerID(a1, v675, v676);
    v684 = v1136;
    if (v681 == v1136)
    {
      goto LABEL_323;
    }

    v685 = v681;
    if (!objc_msgSend_length(v681, v682, v683))
    {
      v686 = 1;
      goto LABEL_325;
    }

    if (!objc_msgSend_length(v684, v682, v683))
    {
LABEL_323:
      v686 = 0;
    }

    else
    {
      v686 = objc_msgSend_isEqualToString_(v685, v682, v684) ^ 1;
    }

LABEL_325:
    v687 = v680 | v686;
    v688 = objc_msgSend_roomName(a1, v682, v683);
    v691 = v1156;
    if (v688 == v1156)
    {
      goto LABEL_329;
    }

    v692 = v688;
    if (!objc_msgSend_length(v688, v689, v690))
    {
      v693 = 1;
      goto LABEL_331;
    }

    if (!objc_msgSend_length(v691, v689, v690))
    {
LABEL_329:
      v693 = 0;
    }

    else
    {
      v693 = objc_msgSend_isEqualToString_(v692, v689, v691) ^ 1;
    }

LABEL_331:
    v694 = v687 | v693;
    v695 = objc_msgSend_account(a1, v689, v690);
    v698 = v1163;
    if (v695 == v1163)
    {
      goto LABEL_335;
    }

    v699 = v695;
    if (!objc_msgSend_length(v695, v696, v697))
    {
      v700 = 1;
      goto LABEL_337;
    }

    if (!objc_msgSend_length(v698, v696, v697))
    {
LABEL_335:
      v700 = 0;
    }

    else
    {
      v700 = objc_msgSend_isEqualToString_(v699, v696, v698) ^ 1;
    }

LABEL_337:
    v701 = v694 | v700;
    v702 = objc_msgSend_accountID(a1, v696, v697);
    v705 = v1162;
    if (v702 == v1162)
    {
      goto LABEL_341;
    }

    v706 = v702;
    if (!objc_msgSend_length(v702, v703, v704))
    {
      v707 = 1;
      goto LABEL_343;
    }

    if (!objc_msgSend_length(v705, v703, v704))
    {
LABEL_341:
      v707 = 0;
    }

    else
    {
      v707 = objc_msgSend_isEqualToString_(v706, v703, v705) ^ 1;
    }

LABEL_343:
    v708 = v701 | v707;
    v709 = objc_msgSend_subject(a1, v703, v704);
    v712 = v1160;
    if (v709 == v1160)
    {
      v714 = 0;
    }

    else
    {
      v713 = v709;
      if (objc_msgSend_length(v709, v710, v711) && objc_msgSend_length(v712, v710, v711))
      {
        v714 = objc_msgSend_isEqualToString_(v713, v710, v712) ^ 1;
      }

      else
      {
        v714 = 1;
      }
    }

    v715 = v708 | v714;
    v716 = MEMORY[0x1E696AD98];
    v717 = objc_msgSend_errorCode(a1, v710, v711);
    v719 = objc_msgSend_numberWithUnsignedInt_(v716, v718, v717);
    v721 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v720, v1159);
    if (v719 == v721)
    {
      goto LABEL_353;
    }

    if (!v719)
    {
      v724 = 1;
      goto LABEL_355;
    }

    v723 = v721;
    if (!v721)
    {
LABEL_353:
      v724 = 0;
    }

    else
    {
      v724 = objc_msgSend_isEqualToNumber_(v719, v722, v721) ^ 1;
    }

LABEL_355:
    v725 = v715 | v724;
    v726 = MEMORY[0x1E696AD98];
    v727 = objc_msgSend_expireState(a1, v722, v723);
    v729 = objc_msgSend_numberWithLongLong_(v726, v728, v727);
    v731 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v730, v1155);
    if (v729 == v731)
    {
      goto LABEL_359;
    }

    if (!v729)
    {
      v734 = 1;
      goto LABEL_361;
    }

    v733 = v731;
    if (!v731)
    {
LABEL_359:
      v734 = 0;
    }

    else
    {
      v734 = objc_msgSend_isEqualToNumber_(v729, v732, v731) ^ 1;
    }

LABEL_361:
    v735 = v725 | v734;
    v736 = v1143;
    v737 = objc_msgSend_balloonBundleID(a1, v732, v733);
    if (v736 == v737)
    {
      goto LABEL_365;
    }

    v740 = v737;
    if (!objc_msgSend_length(v736, v738, v739))
    {
      v741 = 1;
      goto LABEL_367;
    }

    if (!objc_msgSend_length(v740, v738, v739))
    {
LABEL_365:
      v741 = 0;
    }

    else
    {
      v741 = objc_msgSend_isEqualToString_(v736, v738, v740) ^ 1;
    }

LABEL_367:
    v742 = v735 | v741;
    v743 = objc_msgSend_payloadData(a1, v738, v739);
    v745 = cf;
    if (v743 == cf)
    {
      v746 = 0;
    }

    else
    {
      v746 = 1;
      if (v743 && cf)
      {
        v746 = objc_msgSend_isEqualToData_(v743, v744, cf) ^ 1;
      }
    }

    v747 = v742 | v746;
    v748 = objc_msgSend_associatedMessageGUID(a1, v744, v745);
    v751 = v1147;
    if (v748 == v1147)
    {
      goto LABEL_376;
    }

    v752 = v748;
    if (!objc_msgSend_length(v748, v749, v750))
    {
      v753 = 1;
      goto LABEL_378;
    }

    if (!objc_msgSend_length(v751, v749, v750))
    {
LABEL_376:
      v753 = 0;
    }

    else
    {
      v753 = objc_msgSend_isEqualToString_(v752, v749, v751) ^ 1;
    }

LABEL_378:
    v754 = v747 | v753;
    v755 = MEMORY[0x1E696AD98];
    v756 = objc_msgSend_associatedMessageType(a1, v749, v750);
    v758 = objc_msgSend_numberWithLongLong_(v755, v757, v756);
    v760 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v759, v1146);
    if (v758 == v760)
    {
      goto LABEL_382;
    }

    if (!v758)
    {
      v763 = 1;
      goto LABEL_384;
    }

    v762 = v760;
    if (!v760)
    {
LABEL_382:
      v763 = 0;
    }

    else
    {
      v763 = objc_msgSend_isEqualToNumber_(v758, v761, v760) ^ 1;
    }

LABEL_384:
    v764 = v754 | v763;
    v765 = objc_msgSend_expressiveSendStyleID(a1, v761, v762);
    v768 = v1145;
    if (v765 == v1145)
    {
      goto LABEL_388;
    }

    v769 = v765;
    if (!objc_msgSend_length(v765, v766, v767))
    {
      v770 = 1;
      goto LABEL_390;
    }

    if (!objc_msgSend_length(v768, v766, v767))
    {
LABEL_388:
      v770 = 0;
    }

    else
    {
      v770 = objc_msgSend_isEqualToString_(v769, v766, v768) ^ 1;
    }

LABEL_390:
    v771 = v764 | v770;
    v772 = objc_msgSend_timeExpressiveSendPlayed(a1, v766, v767);
    v775 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v773, v774, v1144);
    if (v772 == v775)
    {
      goto LABEL_394;
    }

    if (!v772)
    {
      v778 = 1;
      goto LABEL_396;
    }

    v777 = v775;
    if (!v775)
    {
LABEL_394:
      v778 = 0;
    }

    else
    {
      v778 = objc_msgSend_isEqualToDate_(v772, v776, v775) ^ 1;
    }

LABEL_396:
    v779 = v771 | v778;
    v780 = objc_msgSend_associatedMessageRange(a1, v776, v777);
    v782 = v781;
    v783 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v781, v780);
    v785 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v784, buf);
    if (v783 == v785)
    {
      goto LABEL_400;
    }

    if (!v783)
    {
      v787 = 1;
      goto LABEL_402;
    }

    if (!v785)
    {
LABEL_400:
      v787 = 0;
    }

    else
    {
      v787 = objc_msgSend_isEqualToNumber_(v783, v786, v785) ^ 1;
    }

LABEL_402:
    v788 = v779 | v787;
    v789 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v786, v782);
    v791 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v790, *(&buf + 1));
    if (v789 == v791)
    {
      goto LABEL_406;
    }

    if (!v789)
    {
      v794 = 1;
      goto LABEL_408;
    }

    v793 = v791;
    if (!v791)
    {
LABEL_406:
      v794 = 0;
    }

    else
    {
      v794 = objc_msgSend_isEqualToNumber_(v789, v792, v791) ^ 1;
    }

LABEL_408:
    v795 = v788 | v794;
    v796 = MEMORY[0x1E695DEF0];
    v797 = objc_msgSend_messageSummaryInfo(a1, v792, v793);
    v799 = objc_msgSend_dataWithMessageSummaryInfoDictionary_(v796, v798, v797);
    v801 = v1141;
    if (v799 == v1141)
    {
      v802 = 0;
    }

    else
    {
      v802 = 1;
      if (v799 && v1141)
      {
        v802 = objc_msgSend_isEqualToData_(v799, v800, v1141) ^ 1;
      }
    }

    v803 = v795 | v802;
    v804 = MEMORY[0x1E696AD98];
    v805 = objc_msgSend_cloudKitSyncState(a1, v800, v801);
    v807 = objc_msgSend_numberWithLongLong_(v804, v806, v805);
    v809 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v808, v1140);
    if (v807 == v809)
    {
      goto LABEL_417;
    }

    if (!v807)
    {
      v812 = 1;
      goto LABEL_419;
    }

    v811 = v809;
    if (!v809)
    {
LABEL_417:
      v812 = 0;
    }

    else
    {
      v812 = objc_msgSend_isEqualToNumber_(v807, v810, v809) ^ 1;
    }

LABEL_419:
    v813 = v803 | v812;
    v814 = objc_msgSend_cloudKitRecordID(a1, v810, v811);
    v817 = v1139;
    if (v814 == v1139)
    {
      goto LABEL_423;
    }

    v818 = v814;
    if (!objc_msgSend_length(v814, v815, v816))
    {
      v819 = 1;
      goto LABEL_425;
    }

    if (!objc_msgSend_length(v817, v815, v816))
    {
LABEL_423:
      v819 = 0;
    }

    else
    {
      v819 = objc_msgSend_isEqualToString_(v818, v815, v817) ^ 1;
    }

LABEL_425:
    v820 = v813 | v819;
    v821 = objc_msgSend_cloudKitRecordChangeTag(a1, v815, v816);
    v824 = v1137;
    if (v821 == v1137)
    {
      goto LABEL_429;
    }

    v825 = v821;
    if (!objc_msgSend_length(v821, v822, v823))
    {
      v826 = 1;
      goto LABEL_431;
    }

    if (!objc_msgSend_length(v824, v822, v823))
    {
LABEL_429:
      v826 = 0;
    }

    else
    {
      v826 = objc_msgSend_isEqualToString_(v825, v822, v824) ^ 1;
    }

LABEL_431:
    v827 = v820 | v826;
    v828 = objc_msgSend_replyToGUID(a1, v822, v823);
    v831 = v1135;
    if (v828 == v1135)
    {
      goto LABEL_435;
    }

    v832 = v828;
    if (!objc_msgSend_length(v828, v829, v830))
    {
      v833 = 1;
      goto LABEL_437;
    }

    if (!objc_msgSend_length(v831, v829, v830))
    {
LABEL_435:
      v833 = 0;
    }

    else
    {
      v833 = objc_msgSend_isEqualToString_(v832, v829, v831) ^ 1;
    }

LABEL_437:
    v834 = v827 | v833;
    v835 = MEMORY[0x1E696AD98];
    v836 = objc_msgSend_sortID(a1, v829, v830);
    v838 = objc_msgSend_numberWithUnsignedInteger_(v835, v837, v836);
    v840 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v839, v1134);
    if (v838 == v840)
    {
      goto LABEL_441;
    }

    if (!v838)
    {
      v843 = 1;
      goto LABEL_443;
    }

    v842 = v840;
    if (!v840)
    {
LABEL_441:
      v843 = 0;
    }

    else
    {
      v843 = objc_msgSend_isEqualToNumber_(v838, v841, v840) ^ 1;
    }

LABEL_443:
    v844 = v834 | v843;
    v845 = v1176;
    v846 = v1133;
    if (v1176 == v1133)
    {
      goto LABEL_447;
    }

    if (!objc_msgSend_length(v1176, v841, v842))
    {
      v847 = 1;
      goto LABEL_449;
    }

    if (!objc_msgSend_length(v846, v841, v842))
    {
LABEL_447:
      v847 = 0;
    }

    else
    {
      v847 = objc_msgSend_isEqualToString_(v845, v841, v846) ^ 1;
    }

LABEL_449:
    v848 = v844 | v847;
    v849 = v1175;
    v850 = v1132;
    if (v1175 == v1132)
    {
      goto LABEL_453;
    }

    if (!objc_msgSend_length(v1175, v841, v842))
    {
      v851 = 1;
      goto LABEL_455;
    }

    if (!objc_msgSend_length(v850, v841, v842))
    {
LABEL_453:
      v851 = 0;
    }

    else
    {
      v851 = objc_msgSend_isEqualToString_(v849, v841, v850) ^ 1;
    }

LABEL_455:
    v852 = v848 | v851;
    v853 = objc_msgSend_dateEdited(a1, v841, v842);
    v856 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v854, v855, v1128);
    if (v853 == v856)
    {
      goto LABEL_459;
    }

    if (!v853)
    {
      v859 = 1;
      goto LABEL_461;
    }

    v858 = v856;
    if (!v856)
    {
LABEL_459:
      v859 = 0;
    }

    else
    {
      v859 = objc_msgSend_isEqualToDate_(v853, v857, v856) ^ 1;
    }

LABEL_461:
    v860 = v852 | v859;
    v861 = objc_msgSend_biaReferenceID(a1, v857, v858);
    v864 = v1126;
    if (v861 == v1126)
    {
      goto LABEL_465;
    }

    v865 = v861;
    if (!objc_msgSend_length(v861, v862, v863))
    {
      v866 = 1;
      goto LABEL_467;
    }

    if (!objc_msgSend_length(v864, v862, v863))
    {
LABEL_465:
      v866 = 0;
    }

    else
    {
      v866 = objc_msgSend_isEqualToString_(v865, v862, v864) ^ 1;
    }

LABEL_467:
    v867 = v860 | v866;
    v868 = MEMORY[0x1E696AD98];
    v869 = objc_msgSend_partCount(a1, v862, v863);
    v871 = objc_msgSend_numberWithUnsignedInteger_(v868, v870, v869);
    v873 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v872, v1129);
    if (v871 == v873)
    {
      goto LABEL_471;
    }

    if (!v871)
    {
      v876 = 1;
      goto LABEL_473;
    }

    v875 = v873;
    if (!v873)
    {
LABEL_471:
      v876 = 0;
    }

    else
    {
      v876 = objc_msgSend_isEqualToNumber_(v871, v874, v873) ^ 1;
    }

LABEL_473:
    v877 = v867 | v876;
    v878 = objc_msgSend_fallbackHash(a1, v874, v875);
    v881 = v1125;
    if (v878 == v1125)
    {
      goto LABEL_477;
    }

    v882 = v878;
    if (!objc_msgSend_length(v878, v879, v880))
    {
      v883 = 1;
      goto LABEL_479;
    }

    if (!objc_msgSend_length(v881, v879, v880))
    {
LABEL_477:
      v883 = 0;
    }

    else
    {
      v883 = objc_msgSend_isEqualToString_(v882, v879, v881) ^ 1;
    }

LABEL_479:
    v884 = v877 | v883;
    v885 = objc_msgSend_associatedMessageEmoji(a1, v879, v880);
    v888 = v1124;
    if (v885 == v1124)
    {
      goto LABEL_483;
    }

    v889 = v885;
    if (!objc_msgSend_length(v885, v886, v887))
    {
      v890 = 1;
      goto LABEL_485;
    }

    if (!objc_msgSend_length(v888, v886, v887))
    {
LABEL_483:
      v890 = 0;
    }

    else
    {
      v890 = objc_msgSend_isEqualToString_(v889, v886, v888) ^ 1;
    }

LABEL_485:
    v891 = v884 | v890;
    v892 = MEMORY[0x1E696AD98];
    v893 = objc_msgSend_scheduleType(a1, v886, v887);
    v895 = objc_msgSend_numberWithUnsignedInteger_(v892, v894, v893);
    v897 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v896, v1123);
    if (v895 == v897)
    {
      goto LABEL_489;
    }

    if (!v895)
    {
      v900 = 1;
      goto LABEL_491;
    }

    v899 = v897;
    if (!v897)
    {
LABEL_489:
      v900 = 0;
    }

    else
    {
      v900 = objc_msgSend_isEqualToNumber_(v895, v898, v897) ^ 1;
    }

LABEL_491:
    v901 = v891 | v900;
    v902 = MEMORY[0x1E696AD98];
    v903 = objc_msgSend_scheduleState(a1, v898, v899);
    v905 = objc_msgSend_numberWithUnsignedInteger_(v902, v904, v903);
    v907 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v906, v1122);
    if (v905 == v907)
    {
      goto LABEL_495;
    }

    if (!v905)
    {
      v910 = 1;
      goto LABEL_497;
    }

    v909 = v907;
    if (!v907)
    {
LABEL_495:
      v910 = 0;
    }

    else
    {
      v910 = objc_msgSend_isEqualToNumber_(v905, v908, v907) ^ 1;
    }

LABEL_497:
    v911 = v901 | v910;
    v912 = objc_msgSend_cloudKitChatID(a1, v908, v909);
    v915 = v1121;
    if (v912 == v1121)
    {
      goto LABEL_501;
    }

    v916 = v912;
    if (!objc_msgSend_length(v912, v913, v914))
    {
      v917 = 1;
      goto LABEL_503;
    }

    if (!objc_msgSend_length(v915, v913, v914))
    {
LABEL_501:
      v917 = 0;
    }

    else
    {
      v917 = objc_msgSend_isEqualToString_(v916, v913, v915) ^ 1;
    }

LABEL_503:
    v918 = v911 | v917;
    v919 = objc_msgSend_roomName(a1, v913, v914);
    v922 = objc_msgSend_length(v919, v920, v921) != 0;
    v924 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v923, v922);
    v926 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v925, v1158);
    if (v924 == v926)
    {
      goto LABEL_507;
    }

    if (!v924)
    {
      v929 = 1;
      goto LABEL_509;
    }

    v928 = v926;
    if (!v926)
    {
LABEL_507:
      v929 = 0;
    }

    else
    {
      v929 = objc_msgSend_isEqualToNumber_(v924, v927, v926) ^ 1;
    }

LABEL_509:
    v930 = v918 | v929;
    Identifier = v1161;
    if (objc_msgSend_isFromMe(a1, v927, v928))
    {
      v933 = objc_msgSend_handle(a1, v931, v932);
    }

    else
    {
      v933 = objc_msgSend_sender(a1, v931, v932);
    }

    v936 = v933;
    if (v933)
    {
      v937 = objc_msgSend_service(a1, v934, v935);
      if (v937)
      {
        v938 = v937;
        v939 = IMDHandleRecordCopyHandleForIDOnService(v936, v937);
        if (v939 || (v940 = *MEMORY[0x1E695E480], v941 = IMCountryCodeForIncomingTextMessage(), (v939 = IMDHandleRecordCreate(v940, v936, v941, v938, 0, 0)) != 0))
        {
          v942 = v939;
          v943 = v1161;
          if (v943 != IMDHandleRecordGetIdentifier(v939))
          {
            v930 = 1;
          }

          Identifier = IMDHandleRecordGetIdentifier(v942);
          CFRelease(v942);
        }
      }
    }

    v944 = MEMORY[0x1E69A8158];
    v945 = objc_msgSend_syndicationRanges(a1, v934, v935);
    v947 = objc_msgSend_serializedStringFromArray_(v944, v946, v945);
    v950 = v1131;
    v1117 = v947;
    if (v947 == v1131)
    {
      goto LABEL_523;
    }

    v951 = v947;
    if (!objc_msgSend_length(v947, v948, v949))
    {
      v952 = 1;
      goto LABEL_525;
    }

    if (!objc_msgSend_length(v950, v948, v949))
    {
LABEL_523:
      v952 = 0;
    }

    else
    {
      v952 = objc_msgSend_isEqualToString_(v951, v948, v950) ^ 1;
    }

LABEL_525:
    v953 = MEMORY[0x1E69A8158];
    v954 = objc_msgSend_syncedSyndicationRanges(a1, v948, v949);
    v956 = objc_msgSend_serializedStringFromArray_(v953, v955, v954);
    v959 = v956;
    v960 = v1130;
    if (v956 == v1130)
    {
      goto LABEL_529;
    }

    if (!objc_msgSend_length(v956, v957, v958))
    {
      v961 = 1;
      goto LABEL_531;
    }

    if (!objc_msgSend_length(v960, v957, v958))
    {
LABEL_529:
      v961 = 0;
    }

    else
    {
      v961 = objc_msgSend_isEqualToString_(v959, v957, v960) ^ 1;
    }

LABEL_531:
    if (v1172)
    {
      CFRelease(v1172);
    }

    if (v1167)
    {
      CFRelease(v1167);
    }

    if (v1166)
    {
      CFRelease(v1166);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v1165)
    {
      CFRelease(v1165);
    }

    if (v1164)
    {
      CFRelease(v1164);
    }

    if (v1163)
    {
      CFRelease(v1163);
    }

    if (v1162)
    {
      CFRelease(v1162);
    }

    if (v1160)
    {
      CFRelease(v1160);
    }

    if (v1156)
    {
      CFRelease(v1156);
    }

    if (v1153)
    {
      CFRelease(v1153);
    }

    if (v1147)
    {
      CFRelease(v1147);
    }

    if (v1145)
    {
      CFRelease(v1145);
    }

    if (v1141)
    {
      CFRelease(v1141);
    }

    if (v1139)
    {
      CFRelease(v1139);
    }

    if (v1137)
    {
      CFRelease(v1137);
    }

    if (v1138)
    {
      CFRelease(v1138);
    }

    if (v1136)
    {
      CFRelease(v1136);
    }

    if (v1135)
    {
      CFRelease(v1135);
    }

    if (v1133)
    {
      CFRelease(v1133);
    }

    if (v1132)
    {
      CFRelease(v1132);
    }

    if (v1131)
    {
      CFRelease(v1131);
    }

    if (v1130)
    {
      CFRelease(v1130);
    }

    if (v1126)
    {
      CFRelease(v1126);
    }

    if (v1125)
    {
      CFRelease(v1125);
    }

    v962 = v930 | v952;
    if (v1124)
    {
      CFRelease(v1124);
    }

    v963 = v962 | v961;
    if (v1121)
    {
      CFRelease(v1121);
    }

    if ((v963 | a3) == 1)
    {
      v1115 = objc_msgSend_replaceID(a1, v957, v958);
      v966 = objc_msgSend_time(a1, v964, v965);
      v1113 = objc_msgSend___im_nanosecondTimeInterval(v966, v967, v968);
      v971 = objc_msgSend_timeRead(a1, v969, v970);
      v1112 = objc_msgSend___im_nanosecondTimeInterval(v971, v972, v973);
      v976 = objc_msgSend_timeDelivered(a1, v974, v975);
      v1111 = objc_msgSend___im_nanosecondTimeInterval(v976, v977, v978);
      v981 = objc_msgSend_timePlayed(a1, v979, v980);
      v1110 = objc_msgSend___im_nanosecondTimeInterval(v981, v982, v983);
      v1109 = objc_msgSend_plainBody(a1, v984, v985);
      v1108 = objc_msgSend_bodyData(a1, v986, v987);
      v988 = MEMORY[0x1E696AD98];
      v991 = objc_msgSend_flags(a1, v989, v990);
      v1107 = objc_msgSend_numberWithUnsignedLongLong_(v988, v992, v991);
      v1106 = objc_msgSend_service(a1, v993, v994);
      v1105 = objc_msgSend_account(a1, v995, v996);
      v1104 = objc_msgSend_accountID(a1, v997, v998);
      v1103 = objc_msgSend_subject(a1, v999, v1000);
      v1102 = objc_msgSend_errorCode(a1, v1001, v1002);
      v1101 = objc_msgSend_intValue(v924, v1003, v1004);
      v1100 = objc_msgSend_expireState(a1, v1005, v1006);
      v1099 = objc_msgSend_associatedMessageGUID(a1, v1007, v1008);
      v1098 = objc_msgSend_associatedMessageType(a1, v1009, v1010);
      v1097 = objc_msgSend_associatedMessageRange(a1, v1011, v1012);
      v1096 = v1013;
      v1095 = objc_msgSend_balloonBundleID(a1, v1013, v1014);
      v1094 = objc_msgSend_payloadData(a1, v1015, v1016);
      v1093 = objc_msgSend_expressiveSendStyleID(a1, v1017, v1018);
      v1021 = objc_msgSend_timeExpressiveSendPlayed(a1, v1019, v1020);
      v1092 = objc_msgSend___im_nanosecondTimeInterval(v1021, v1022, v1023);
      v1024 = MEMORY[0x1E695DEF0];
      v1027 = objc_msgSend_messageSummaryInfo(a1, v1025, v1026);
      v1091 = objc_msgSend_dataWithMessageSummaryInfoDictionary_(v1024, v1028, v1027);
      v1090 = objc_msgSend_cloudKitSyncState(a1, v1029, v1030);
      v1089 = objc_msgSend_cloudKitRecordID(a1, v1031, v1032);
      v1088 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v1033, v1034);
      v1087 = objc_msgSend_cloudKitRecordChangeTag(a1, v1035, v1036);
      v1086 = objc_msgSend_destinationCallerID(a1, v1037, v1038);
      v1085 = objc_msgSend_replyToGUID(a1, v1039, v1040);
      v1043 = objc_msgSend_sortID(a1, v1041, v1042);
      v1083 = v1176;
      v1084 = v1043;
      v1082 = v1175;
      v1081 = objc_msgSend_partCount(a1, v1044, v1045);
      v1048 = objc_msgSend_dateEdited(a1, v1046, v1047);
      v1051 = objc_msgSend___im_nanosecondTimeInterval(v1048, v1049, v1050);
      v1054 = objc_msgSend_dateRecovered(a1, v1052, v1053);
      v1057 = v620;
      v1058 = objc_msgSend___im_nanosecondTimeInterval(v1054, v1055, v1056);
      v1061 = objc_msgSend_biaReferenceID(a1, v1059, v1060);
      v1064 = objc_msgSend_fallbackHash(a1, v1062, v1063);
      v1067 = objc_msgSend_associatedMessageEmoji(a1, v1065, v1066);
      v1070 = objc_msgSend_scheduleType(a1, v1068, v1069);
      v1073 = v959;
      v1074 = objc_msgSend_scheduleState(a1, v1071, v1072);
      v1077 = objc_msgSend_cloudKitChatID(a1, v1075, v1076);
      v1080 = v1058;
      v620 = v1057;
      IMDMessageRecordBulkUpdate(v1057, v1115, 0, v1113, v1112, v1111, v1110, v1109, v1108, v1107, v1106, v1105, v1104, Identifier, v1103, v1102, v1101, 0, 0, 0, 0, 0, v1100, 0, v1099, v1098, v1097, v1096, v1095, v1094, v1093, v1092, v1091, v1090, v1089, v1088, v1087, v1086, v1085, v1084, v1083, v1082, v1117, v1073, v1081, v1051, v1080, v1061, v1064, v1067, v1070, v1074, v1077);
    }

    CFRelease(v620);
  }

  objc_autoreleasePoolPop(context);
  v1078 = *MEMORY[0x1E69E9840];
  return a1;
}

void *IMDUpdateIMItemWithIMItemForceReplace(void *a1, void *a2, int a3)
{
  v318 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = a1;
    *&buf[12] = 2112;
    *&buf[14] = a2;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEFAULT, "Updating IMItem: %@ from IMItem: %@", buf, 0x16u);
  }

  v10 = objc_msgSend_time(a2, v8, v9);
  v13 = v10;
  if ((a3 & 1) != 0 || v10)
  {
    v14 = objc_msgSend_time(a1, v11, v12);
    if (v14 != v13 && (!v14 || v13 && (objc_msgSend_isEqualToDate_(v14, v11, v13) & 1) == 0))
    {
      if ((a3 & 1) != 0 || (v15 = objc_msgSend_time(a1, v11, v12), objc_msgSend_timeIntervalSinceReferenceDate(v15, v16, v17), v18 >= 0.00000011920929))
      {
        objc_msgSend_setTime_(a1, v11, v13);
      }
    }
  }

  v19 = objc_msgSend_account(a2, v11, v12);
  v22 = objc_msgSend_account(a1, v20, v21);
  if (v22 != v19)
  {
    v25 = v22;
    if (!objc_msgSend_length(v22, v23, v24) || objc_msgSend_length(v19, v23, v26) && (objc_msgSend_isEqualToString_(v25, v23, v19) & 1) == 0)
    {
      objc_msgSend_setAccount_(a1, v23, v19);
    }
  }

  v27 = objc_msgSend_accountID(a2, v23, v24);
  v30 = objc_msgSend_accountID(a1, v28, v29);
  if (v30 != v27)
  {
    v33 = v30;
    if (!objc_msgSend_length(v30, v31, v32) || objc_msgSend_length(v27, v31, v34) && (objc_msgSend_isEqualToString_(v33, v31, v27) & 1) == 0)
    {
      objc_msgSend_setAccountID_(a1, v31, v27);
    }
  }

  v35 = objc_msgSend_service(a2, v31, v32);
  v38 = objc_msgSend_service(a1, v36, v37);
  if (v38 != v35)
  {
    v41 = v38;
    if (!objc_msgSend_length(v38, v39, v40) || objc_msgSend_length(v35, v39, v42) && (objc_msgSend_isEqualToString_(v41, v39, v35) & 1) == 0)
    {
      objc_msgSend_setService_(a1, v39, v35);
    }
  }

  v43 = objc_msgSend_destinationCallerID(a2, v39, v40);
  v46 = objc_msgSend_destinationCallerID(a1, v44, v45);
  if (v46 != v43)
  {
    v49 = v46;
    if (!objc_msgSend_length(v46, v47, v48) || objc_msgSend_length(v43, v47, v50) && (objc_msgSend_isEqualToString_(v49, v47, v43) & 1) == 0)
    {
      objc_msgSend_setDestinationCallerID_(a1, v47, v43);
    }
  }

  if (objc_msgSend_conformsToProtocol_(a1, v47, &unk_1F2FE89D8) && objc_msgSend_conformsToProtocol_(a2, v51, &unk_1F2FE89D8))
  {
    v53 = objc_msgSend_errorCode(a2, v51, v52);
    objc_msgSend_setErrorCode_(a1, v54, v53);
  }

  if (a3)
  {
    v55 = objc_msgSend_cloudKitSyncState(a2, v51, v52);
    objc_msgSend_setCloudKitSyncState_(a1, v56, v55);
  }

  else
  {
    v69 = objc_msgSend_cloudKitSyncState(a1, v51, v52);
    if (v69 != objc_msgSend_cloudKitSyncState(a2, v70, v71))
    {
      v74 = objc_msgSend_cloudKitSyncState(a2, v72, v73);
      objc_msgSend_setCloudKitSyncState_(a1, v75, v74);
    }

    v76 = objc_msgSend_cloudKitRecordID(a1, v72, v73);
    v79 = objc_msgSend_cloudKitRecordID(a2, v77, v78);
    if (v76 == v79 || (v80 = v79, objc_msgSend_length(v76, v57, v58)) && (!objc_msgSend_length(v80, v57, v58) || (objc_msgSend_isEqualToString_(v76, v57, v80) & 1) != 0))
    {
LABEL_45:
      v81 = objc_msgSend_cloudKitRecordChangeTag(a1, v57, v58);
      v84 = objc_msgSend_cloudKitRecordChangeTag(a2, v82, v83);
      if (v81 != v84)
      {
        v87 = v84;
        if (!objc_msgSend_length(v81, v85, v86) || objc_msgSend_length(v87, v85, v86) && (objc_msgSend_isEqualToString_(v81, v85, v87) & 1) == 0)
        {
          v88 = objc_msgSend_cloudKitRecordChangeTag(a2, v85, v86);
          objc_msgSend_setCloudKitRecordChangeTag_(a1, v89, v88);
          v92 = objc_msgSend_cloudKitServerChangeTokenBlob(a2, v90, v91);
          objc_msgSend_setCloudKitServerChangeTokenBlob_(a1, v93, v92);
        }
      }

      v94 = objc_msgSend_replyToGUID(a1, v85, v86);
      v97 = objc_msgSend_replyToGUID(a2, v95, v96);
      if (v94 == v97)
      {
        goto LABEL_56;
      }

      v98 = v97;
      if (objc_msgSend_length(v94, v67, v68))
      {
        if (!objc_msgSend_length(v98, v67, v68) || (objc_msgSend_isEqualToString_(v94, v67, v98) & 1) != 0)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_54;
    }
  }

  v59 = objc_msgSend_cloudKitRecordID(a2, v57, v58);
  objc_msgSend_setCloudKitRecordID_(a1, v60, v59);
  if ((a3 & 1) == 0)
  {
    goto LABEL_45;
  }

  v61 = objc_msgSend_cloudKitRecordChangeTag(a2, v57, v58);
  objc_msgSend_setCloudKitRecordChangeTag_(a1, v62, v61);
  v65 = objc_msgSend_cloudKitServerChangeTokenBlob(a2, v63, v64);
  objc_msgSend_setCloudKitServerChangeTokenBlob_(a1, v66, v65);
LABEL_54:
  v99 = objc_msgSend_replyToGUID(a2, v67, v68);
  objc_msgSend_setReplyToGUID_(a1, v100, v99);
  if (a3)
  {
    v101 = objc_msgSend_sortID(a2, v67, v68);
    objc_msgSend_setSortID_(a1, v102, v101);
LABEL_65:
    v124 = objc_msgSend_cloudKitChatID(a2, v103, v104);
    objc_msgSend_setCloudKitChatID_(a1, v125, v124);
    goto LABEL_66;
  }

LABEL_56:
  v105 = MEMORY[0x1E696AD98];
  v106 = objc_msgSend_sortID(a1, v67, v68);
  v108 = objc_msgSend_numberWithUnsignedInteger_(v105, v107, v106);
  v109 = MEMORY[0x1E696AD98];
  v112 = objc_msgSend_sortID(a2, v110, v111);
  v114 = objc_msgSend_numberWithUnsignedInteger_(v109, v113, v112);
  if (v108 != v114 && (!v108 || (v116 = v114) != 0 && (objc_msgSend_isEqualToNumber_(v108, v115, v114) & 1) == 0))
  {
    v117 = objc_msgSend_sortID(a2, v115, v116);
    objc_msgSend_setSortID_(a1, v118, v117);
  }

  v119 = objc_msgSend_cloudKitChatID(a1, v115, v116);
  v122 = objc_msgSend_cloudKitChatID(a2, v120, v121);
  if (v119 != v122)
  {
    v123 = v122;
    if (!objc_msgSend_length(v119, v103, v104) || objc_msgSend_length(v123, v103, v104) && (objc_msgSend_isEqualToString_(v119, v103, v123) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

LABEL_66:
  v126 = objc_msgSend_guid(a1, v103, v104);
  v127 = IMDMessageRecordCopyMessageForGUID(v126);
  if (!v127)
  {
    goto LABEL_178;
  }

  v128 = v127;
  v315 = 0;
  v316 = 0;
  v313 = 0;
  v314 = 0;
  v311 = 0;
  v312 = 0;
  v309 = 0;
  v310 = 0;
  v307 = 0;
  v308 = 0;
  v305 = 0;
  v306 = 0;
  v303 = 0;
  v304 = 0;
  *buf = 0u;
  v301 = 0;
  v302 = 0;
  cf = 0;
  v299 = 0;
  v298 = 0;
  v296 = 0;
  v297 = 0;
  v294 = 0;
  v295 = 0;
  IMDMessageRecordBulkCopy(v127, 0, &v316, 0, &v315, &v314, 0, 0, 0, 0, 0, 0, &v313, &v312, &v311, &v310, 0, &v295, 0, 0, 0, &v309, &v308, 0, &v305, &v306, &v307, 0, &v304, 0, &v303, buf, 0, 0, 0, 0, 0, &v302, &v301, &cf, &v299, &v298, &v297, &v296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v294);
  v131 = objc_msgSend_time(a1, v129, v130);
  v134 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v132, v133, v314);
  if (v131 == v134)
  {
LABEL_71:
    v137 = 0;
    goto LABEL_73;
  }

  if (v131)
  {
    v136 = v134;
    if (v134)
    {
      v137 = objc_msgSend_isEqualToDate_(v131, v135, v134) ^ 1;
      goto LABEL_73;
    }

    goto LABEL_71;
  }

  v137 = 1;
LABEL_73:
  v138 = objc_msgSend_service(a1, v135, v136);
  v141 = v313;
  if (v138 == v313)
  {
LABEL_77:
    v143 = 0;
    goto LABEL_79;
  }

  v142 = v138;
  if (objc_msgSend_length(v138, v139, v140))
  {
    if (objc_msgSend_length(v141, v139, v140))
    {
      v143 = objc_msgSend_isEqualToString_(v142, v139, v141) ^ 1;
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  v143 = 1;
LABEL_79:
  v144 = v137 | v143;
  v145 = objc_msgSend_destinationCallerID(a1, v139, v140);
  v148 = v298;
  if (v145 == v298)
  {
LABEL_83:
    v150 = 0;
    goto LABEL_85;
  }

  v149 = v145;
  if (objc_msgSend_length(v145, v146, v147))
  {
    if (objc_msgSend_length(v148, v146, v147))
    {
      v150 = objc_msgSend_isEqualToString_(v149, v146, v148) ^ 1;
      goto LABEL_85;
    }

    goto LABEL_83;
  }

  v150 = 1;
LABEL_85:
  v151 = v144 | v150;
  v152 = objc_msgSend_roomName(a1, v146, v147);
  v155 = v309;
  if (v152 == v309)
  {
LABEL_89:
    v157 = 0;
    goto LABEL_91;
  }

  v156 = v152;
  if (objc_msgSend_length(v152, v153, v154))
  {
    if (objc_msgSend_length(v155, v153, v154))
    {
      v157 = objc_msgSend_isEqualToString_(v156, v153, v155) ^ 1;
      goto LABEL_91;
    }

    goto LABEL_89;
  }

  v157 = 1;
LABEL_91:
  v158 = v151 | v157;
  v159 = objc_msgSend_account(a1, v153, v154);
  v162 = v312;
  if (v159 == v312)
  {
LABEL_95:
    v164 = 0;
    goto LABEL_97;
  }

  v163 = v159;
  if (objc_msgSend_length(v159, v160, v161))
  {
    if (objc_msgSend_length(v162, v160, v161))
    {
      v164 = objc_msgSend_isEqualToString_(v163, v160, v162) ^ 1;
      goto LABEL_97;
    }

    goto LABEL_95;
  }

  v164 = 1;
LABEL_97:
  v165 = v158 | v164;
  v166 = objc_msgSend_accountID(a1, v160, v161);
  v169 = v311;
  if (v166 == v311)
  {
LABEL_101:
    v171 = 0;
    goto LABEL_103;
  }

  v170 = v166;
  if (objc_msgSend_length(v166, v167, v168))
  {
    if (objc_msgSend_length(v169, v167, v168))
    {
      v171 = objc_msgSend_isEqualToString_(v170, v167, v169) ^ 1;
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  v171 = 1;
LABEL_103:
  v172 = v165 | v171;
  v173 = MEMORY[0x1E696AD98];
  v174 = objc_msgSend_cloudKitSyncState(a1, v167, v168);
  v176 = objc_msgSend_numberWithLongLong_(v173, v175, v174);
  v178 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v177, v302);
  if (v176 == v178)
  {
LABEL_107:
    v181 = 0;
    goto LABEL_109;
  }

  if (v176)
  {
    v180 = v178;
    if (v178)
    {
      v181 = objc_msgSend_isEqualToNumber_(v176, v179, v178) ^ 1;
      goto LABEL_109;
    }

    goto LABEL_107;
  }

  v181 = 1;
LABEL_109:
  v182 = v172 | v181;
  v183 = objc_msgSend_cloudKitRecordID(a1, v179, v180);
  v186 = v301;
  if (v183 == v301)
  {
LABEL_113:
    v188 = 0;
    goto LABEL_115;
  }

  v187 = v183;
  if (objc_msgSend_length(v183, v184, v185))
  {
    if (objc_msgSend_length(v186, v184, v185))
    {
      v188 = objc_msgSend_isEqualToString_(v187, v184, v186) ^ 1;
      goto LABEL_115;
    }

    goto LABEL_113;
  }

  v188 = 1;
LABEL_115:
  v189 = v182 | v188;
  v190 = objc_msgSend_cloudKitRecordChangeTag(a1, v184, v185);
  v193 = v299;
  if (v190 == v299)
  {
LABEL_119:
    v195 = 0;
    goto LABEL_121;
  }

  v194 = v190;
  if (objc_msgSend_length(v190, v191, v192))
  {
    if (objc_msgSend_length(v193, v191, v192))
    {
      v195 = objc_msgSend_isEqualToString_(v194, v191, v193) ^ 1;
      goto LABEL_121;
    }

    goto LABEL_119;
  }

  v195 = 1;
LABEL_121:
  v196 = v189 | v195;
  v197 = objc_msgSend_replyToGUID(a1, v191, v192);
  v200 = v297;
  if (v197 == v297)
  {
LABEL_125:
    v202 = 0;
    goto LABEL_127;
  }

  v201 = v197;
  if (objc_msgSend_length(v197, v198, v199))
  {
    if (objc_msgSend_length(v200, v198, v199))
    {
      v202 = objc_msgSend_isEqualToString_(v201, v198, v200) ^ 1;
      goto LABEL_127;
    }

    goto LABEL_125;
  }

  v202 = 1;
LABEL_127:
  v203 = v196 | v202;
  v204 = MEMORY[0x1E696AD98];
  v205 = objc_msgSend_sortID(a1, v198, v199);
  v207 = objc_msgSend_numberWithUnsignedInteger_(v204, v206, v205);
  v209 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v208, v296);
  if (v207 == v209)
  {
LABEL_131:
    v212 = 0;
    goto LABEL_133;
  }

  if (v207)
  {
    v211 = v209;
    if (v209)
    {
      v212 = objc_msgSend_isEqualToNumber_(v207, v210, v209) ^ 1;
      goto LABEL_133;
    }

    goto LABEL_131;
  }

  v212 = 1;
LABEL_133:
  v213 = v203 | v212;
  v214 = objc_msgSend_cloudKitChatID(a1, v210, v211);
  v217 = v294;
  if (v214 == v294)
  {
LABEL_137:
    v220 = 0;
    goto LABEL_139;
  }

  v218 = v214;
  if (objc_msgSend_length(v214, v215, v216))
  {
    if (objc_msgSend_length(v217, v215, v219))
    {
      v220 = objc_msgSend_isEqualToString_(v218, v215, v217) ^ 1;
      goto LABEL_139;
    }

    goto LABEL_137;
  }

  v220 = 1;
LABEL_139:
  v221 = v213 | v220;
  if (objc_msgSend_conformsToProtocol_(a1, v215, &unk_1F2FE89D8))
  {
    v224 = v295;
    if (v224 != objc_msgSend_errorCode(a1, v222, v223))
    {
      v221 = 1;
    }
  }

  Identifier = v310;
  if (objc_msgSend_sender(a1, v222, v223))
  {
    v228 = objc_msgSend_sender(a1, v226, v227);
  }

  else
  {
    v228 = objc_msgSend_handle(a1, v226, v227);
  }

  v231 = v228;
  if (v228)
  {
    v232 = objc_msgSend_service(a1, v229, v230);
    if (v232)
    {
      v233 = v232;
      v234 = IMDHandleRecordCopyHandleForIDOnService(v231, v232);
      if (v234 || (v235 = *MEMORY[0x1E695E480], v236 = IMCountryCodeForIncomingTextMessage(), (v234 = IMDHandleRecordCreate(v235, v231, v236, v233, 0, 0)) != 0))
      {
        v237 = v234;
        v238 = v310;
        if (v238 != IMDHandleRecordGetIdentifier(v234))
        {
          v221 = 1;
        }

        Identifier = IMDHandleRecordGetIdentifier(v237);
        CFRelease(v237);
      }
    }
  }

  if (objc_msgSend_conformsToProtocol_(a1, v229, &unk_1F2FE89D8))
  {
    v241 = objc_msgSend_errorCode(a1, v239, v240);
  }

  else
  {
    v241 = 0;
  }

  if (v315)
  {
    CFRelease(v315);
  }

  if (v313)
  {
    CFRelease(v313);
  }

  if (v312)
  {
    CFRelease(v312);
  }

  if (v311)
  {
    CFRelease(v311);
  }

  if (v309)
  {
    CFRelease(v309);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v299)
  {
    CFRelease(v299);
  }

  if (v301)
  {
    CFRelease(v301);
  }

  if (v298)
  {
    CFRelease(v298);
  }

  if (v294)
  {
    CFRelease(v294);
  }

  if ((v221 | a3) == 1)
  {
    v242 = objc_msgSend_time(a1, v239, v240);
    v292 = objc_msgSend___im_nanosecondTimeInterval(v242, v243, v244);
    v291 = objc_msgSend_service(a1, v245, v246);
    v290 = objc_msgSend_account(a1, v247, v248);
    v251 = objc_msgSend_accountID(a1, v249, v250);
    v288 = v308;
    v289 = v251;
    v286 = v306;
    v287 = v305;
    v284 = v304;
    v285 = v307;
    v283 = v303;
    v293 = v6;
    v254 = objc_msgSend_cloudKitSyncState(a1, v252, v253);
    v257 = v128;
    v258 = objc_msgSend_cloudKitRecordID(a1, v255, v256);
    v282 = v241;
    v261 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v259, v260);
    v264 = objc_msgSend_cloudKitRecordChangeTag(a1, v262, v263);
    v267 = Identifier;
    v268 = objc_msgSend_destinationCallerID(a1, v265, v266);
    v271 = objc_msgSend_replyToGUID(a1, v269, v270);
    v274 = objc_msgSend_sortID(a1, v272, v273);
    v277 = objc_msgSend_cloudKitChatID(a1, v275, v276);
    v281 = v258;
    v128 = v257;
    v280 = v254;
    v6 = v293;
    IMDMessageRecordBulkUpdate(v257, 0, 0, v292, 0, 0, 0, 0, 0, 0, v291, v290, v289, v267, 0, v282, 0, v288, 0, v287, v286, v285, 0, v284, 0, v283, *buf, *&buf[8], 0, 0, 0, 0, 0, v280, v281, v261, v264, v268, v271, v274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v277);
  }

  CFRelease(v128);
LABEL_178:
  objc_autoreleasePoolPop(v6);
  v278 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t IMDSharedSqliteDatabasePath()
{
  if (!sub_1B7ADF510(1))
  {
    v0 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF539C(v0, v1);
    }
  }

  v2 = CSDBSqliteDatabasePath();
  if (!v2)
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF544C(v3, v4);
    }
  }

  return v2;
}

void sub_1B7B6A70C(uint64_t a1)
{
  CSDBSetCorruptedDatabaseHandler();
  if (!qword_1EDBE6300)
  {
    qword_1EDBE6300 = CSDBCreateThreadedRecordStore();
    if (!qword_1EDBE6300)
    {
      v2 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF557C(v2, v3);
      }
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

uint64_t CSDBSharedRecordStore()
{
  if (!IMDSharedThreadedRecordStore())
  {
    v0 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF562C(v0, v1);
    }
  }

  v2 = CSDBRecordStoreRefFromThreadedRecordStoreRef();
  if (!v2)
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF56DC(v3, v4);
    }
  }

  return v2;
}

uint64_t IMDCreateThreadedRecordStoreWithPath(uint64_t a1)
{
  v2 = CSDBCreateThreadedRecordStore();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B6A934;
  v6[3] = &unk_1E7CBA2C0;
  v6[4] = a1;
  objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v3, v4);
  _IMDInitializeMessagesRecordStoreWithVersion(v2, v6, 0);
  return v2;
}

uint64_t _IMDInitializeMessagesRecordStore(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  objc_msgSend_schemaVersion(IMDLegacyRecordBridge, a2, a3);

  return _IMDInitializeMessagesRecordStoreWithVersion(a1, a2, v3);
}

id sub_1B7B6A934(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_stringByResolvingAndStandardizingPath(*(a1 + 32), a2, a3);

  return v3;
}

void IMDSMSRecordStoreClose()
{
  v0 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "Saving database.", buf, 2u);
  }

  _IMDSMSRecordStoreSaveAndInvalidateCaches();
  if (IMDSharedThreadedRecordStore())
  {
    v1 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Destroying database.", v5, 2u);
    }

    v2 = IMDSharedThreadedRecordStore();
    MEMORY[0x1B8CAF1D0](v2);
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Closed database.", v4, 2u);
    }
  }
}

BOOL sub_1B7B6AA4C(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v3 = IMDatabaseLogHandle(), os_log_type_enabled(v3, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF583C(v3, v4);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF58EC(v5, v6);
  }

LABEL_6:
  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Create tables...", v11, 2u);
  }

  CSDBSqliteConnectionCommit();
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  Database = CSDBRecordStoreGetDatabase();
  IMDSqlOperationInitWithCSDBConnection(a2, Database, v11);
  IMDSqlOperationBeginTransaction(v11);
  if (*(&v12 + 1))
  {
    goto LABEL_13;
  }

  IMDCreateTablesWithOperation(v11, 1);
  if (*(&v12 + 1))
  {
    goto LABEL_13;
  }

  IMDCreateIndexesWithOperation(v11, 1);
  if (*(&v12 + 1) || (IMDCreateTriggersWithOperation(v11, 1), *(&v12 + 1)) || (CSDBSqliteConnectionSetValueForProperty(), CSDBSqliteConnectionSetValueForProperty(), CSDBSqliteConnectionSetValueForProperty(), CSDBSqliteConnectionSetValueForProperty(), CSDBSqliteConnectionSetValueForProperty(), objc_msgSend_configureNewDatabaseUsingConnection_(IMDLegacyRecordBridge, v9, *(&v11[0] + 1)), *(&v12 + 1)))
  {
LABEL_13:
    IMDSqlOperationRevertTransaction(v11);
  }

  else
  {
    IMDSqlOperationCommitTransaction(v11);
  }

  return IMDSqlOperationRelease(v11, 0);
}

void sub_1B7B6AC34(void *a1, uint64_t a2)
{
  v4 = a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B6ACB8;
  v6[3] = &unk_1E7CB6FD0;
  v6[4] = a1;
  v6[5] = a2;
  IMDPersistencePerformBlock(v6, 0, v5);
}

void sub_1B7B6ACB8(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF599C();
  }

  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    *buf = 134217984;
    *&buf[4] = v4;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "  Elapsed milliseconds: %lld", buf, 0xCu);
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "  Query:", buf, 2u);
  }

  v6 = *(a1 + 32);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = a1;
  if (objc_msgSend_length(v6, v8, v9) >= 0x3E8)
  {
    if (objc_msgSend_length(v6, v10, v11))
    {
      v14 = 0;
      do
      {
        if (objc_msgSend_length(v6, v12, v13) - v14 > 0x3E7)
        {
          v17 = 1000;
          v19 = objc_msgSend_substringWithRange_(v6, v15, v14, 1000);
        }

        else
        {
          v17 = objc_msgSend_length(v6, v15, v16) - v14;
          v19 = objc_msgSend_substringWithRange_(v6, v18, v14, v17);
        }

        objc_msgSend_addObject_(v7, v20, v19);
        v14 += v17;
      }

      while (v14 < objc_msgSend_length(v6, v21, v22));
    }
  }

  else
  {
    objc_msgSend_addObject_(v7, v10, v6);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, &v42, v59, 16);
  if (v23)
  {
    v24 = v23;
    v25 = *v43;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v43 != v25)
        {
          objc_enumerationMutation(v7);
        }

        v27 = *(*(&v42 + 1) + 8 * i);
        v28 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v27;
          _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "    '%@'", buf, 0xCu);
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v29, &v42, v59, 16);
    }

    while (v24);
  }

  v30 = objc_alloc(MEMORY[0x1E696AEC0]);
  v32 = objc_msgSend_initWithFormat_(v30, v31, @"EXPLAIN QUERY PLAN %@;", *(v40 + 32));
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  *buf = 0u;
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  _IMDSqlOperationBeginQuery(buf, v32);
  v33 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *v46 = 0;
    _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "  Query Plan:", v46, 2u);
  }

  while (IMDSqlOperationHasRows(buf))
  {
    v34 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1B7B6B13C;
    v41[3] = &unk_1E7CB6FA8;
    v41[4] = v34;
    IMDSqlOperationIterateRow(buf, v41);
    v36 = objc_msgSend_containsString_(v34, v35, @"SCAN");
    v37 = IMDatabaseLogHandle();
    v38 = v37;
    if (v36)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *v46 = 138412290;
        v47 = v34;
        _os_log_error_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_ERROR, "    '%@' <-- TABLE SCAN DETECTED!", v46, 0xCu);
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *v46 = 138412290;
      v47 = v34;
      _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_INFO, "    '%@'", v46, 0xCu);
    }
  }

  IMDSqlOperationFinishQuery(buf);

  v39 = *MEMORY[0x1E69E9840];
}

void sub_1B7B6B13C(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (!v4)
  {
    v4 = sqlite3_column_name(**a2, *(a2 + 4));
    *(a2 + 1) = v4;
  }

  if (!strncmp(v4, "detail", 0x100uLL))
  {
    v7 = *a2;
    v8 = *(a2 + 2);
    v5 = IMDStringFromSqlColumn(&v7);
    objc_msgSend_appendString_(*(a1 + 32), v6, v5);
  }
}

void sub_1B7B6B1C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Setting page size.", buf, 2u);
      }

      CSDBSqliteConnectionPerformSQL();
      v4 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Enabling WAL journal mode.", v24, 2u);
      }

      CSDBSqliteConnectionPerformSQL();
      v5 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v23 = 0;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Enabling Foreign Key support.", v23, 2u);
      }

      CSDBSqliteConnectionPerformSQL();
      if (*(a2 + 8))
      {
        v6 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v22 = 0;
          _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Registering external functions.", v22, 2u);
        }

        v7 = *(a2 + 8);
        CSDBSqliteDatabaseRegisterFunctionForDB();
        v8 = *(a2 + 8);
        CSDBSqliteDatabaseRegisterFunctionForDB();
        v9 = *(a2 + 8);
        CSDBSqliteDatabaseRegisterFunctionForDB();
        v10 = *(a2 + 8);
        CSDBSqliteDatabaseRegisterFunctionForDB();
        v11 = *(a2 + 8);
        CSDBSqliteDatabaseRegisterFunctionForDB();
        v12 = *(a2 + 8);
        CSDBSqliteDatabaseRegisterFunctionForDB();
        v13 = *(a2 + 8);
        CSDBSqliteDatabaseRegisterFunctionForDB();
        v14 = *(a2 + 8);
        CSDBSqliteDatabaseRegisterFunctionForDB();
        v15 = *(a2 + 8);
        CSDBSqliteDatabaseRegisterFunctionForDB();
        v16 = *(a2 + 8);
        CSDBSqliteDatabaseRegisterFunctionForDB();
        sqlite3_create_function(*(a2 + 8), "domain_for_service", 1, 2049, 0, _IMDSMSRecordStoreCustomFunctionDomainForService, 0, 0);
        v17 = *(a2 + 8);
      }

      else
      {
        v17 = 0;
      }

      sqlite3_trace_v2(v17, 2u, sub_1B7AE0448, 0);
      return;
    }

    goto LABEL_16;
  }

  v18 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF59D0(v18, v19);
  }

  if (!a2)
  {
LABEL_16:
    v20 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF5A80(v20, v21);
    }
  }
}