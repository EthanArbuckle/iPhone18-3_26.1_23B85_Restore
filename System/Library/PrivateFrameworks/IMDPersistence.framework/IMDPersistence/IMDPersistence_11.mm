void sub_1B7C068DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Unwind_Resume(a1);
}

xpc_object_t sub_1B7C069B0(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7C06A54;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 40);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7C06A54(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = MEMORY[0x1E696AD98];
  v4 = IMGetXPCIntFromDictionary();
  v6 = objc_msgSend_numberWithLongLong_(v3, v5, v4);
  objc_msgSend_setObject_forKeyedSubscript_(v2, v7, v6, @"rowID");
  v8 = IMGetXPCStringFromDictionary();
  objc_msgSend_setObject_forKeyedSubscript_(v2, v9, v8, @"filename");
  v10 = IMGetXPCStringFromDictionary();
  objc_msgSend_setObject_forKeyedSubscript_(v2, v11, v10, @"guid");
  objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v12, v2);

  return 1;
}

void IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServicesQuery(void *a1, const char *a2, CFTypeRef *a3)
{
  v4 = a2;
  v17 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_count(a1, a2, a3);
  Mutable = CFStringCreateMutable(0, 0);
  v7 = Mutable;
  if (v4)
  {
    v8 = @"SELECT c.rowid FROM chat c WHERE (c.chat_identifier = ? AND c.service_name = ?)";
  }

  else
  {
    v8 = @"SELECT c.rowid FROM chat c WHERE (c.chat_identifier = ?)";
  }

  CFStringAppend(Mutable, v8);
  if (v5 >= 2)
  {
    if (v4)
    {
      v9 = @" OR (c.chat_identifier = ? AND c.service_name = ?)";
    }

    else
    {
      v9 = @" OR (c.chat_identifier = ?)";
    }

    v10 = v5 - 1;
    do
    {
      CFStringAppend(v7, v9);
      --v10;
    }

    while (v10);
  }

  v11 = CFStringCreateWithFormat(0, 0, @"select a.filename, a.guid, a.is_sticker, a.created_date, a.transfer_state from attachment a join  (select ma.attachment_id as a_id, message_date as m_date from message_attachment_join ma join (select cm.message_id as message_id, cm.message_date as message_date from message m join chat_message_join cm where m.cache_has_attachments = 1 AND cm.chat_id AND cm.chat_id IN (%@) AND m.rowid = cm.message_id) as tmp where ma.message_id = tmp.message_id) as tmp2 where a.rowid = tmp2.a_id AND     a.hide_attachment == 0 ORDER BY tmp2.m_date ASC;", v7);
  v12 = v11;
  if (a3)
  {
    *a3 = CFRetain(v11);
    v13 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServicesQuery %@", buf, 0xCu);
    }
  }

  CFRelease(v12);
  CFRelease(v7);
  v14 = *MEMORY[0x1E69E9840];
}

sqlite3_stmt **sub_1B7C06C7C(void *a1, sqlite3_stmt **a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7C06D0C;
  v7[3] = &unk_1E7CB75B0;
  v4 = a1[5];
  v5 = a1[6];
  v7[4] = a2;
  v7[5] = v5;
  result = _IMDSqlOperationGetRowsWithBindingBlock(a2, v4, v7);
  *(*(a1[4] + 8) + 40) = result;
  return result;
}

sqlite3_stmt **sub_1B7C06D18(void *a1, sqlite3_stmt **a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7C06DB0;
  v5[3] = &unk_1E7CB8428;
  v5[4] = a1[4];
  v6 = a2;
  v3 = a1[6];
  v7 = a1[7];
  result = _IMDSqlOperationGetRowsWithBindingBlock(v6, v3, v5);
  *(*(a1[5] + 8) + 40) = result;
  return result;
}

void sub_1B7C06DB0(uint64_t *a1)
{
  IMDSqlStatementBindTextFromCFString(a1[5] + 32, a1[4]);
  v2 = a1[6];
  v3 = a1[5] + 32;

  IMDSqlStatementBindInt64(v3, v2);
}

void IMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServicesQuery(void *a1, const char *a2, uint64_t a3, CFTypeRef *a4)
{
  v6 = a2;
  v17 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_count(a1, a2, a3);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"SELECT c.rowid FROM chat c WHERE (c.chat_identifier = ? AND c.service_name = ?)");
  if (v7 >= 2)
  {
    if (v6)
    {
      v9 = @" OR (c.chat_identifier = ? AND c.service_name = ?)";
    }

    else
    {
      v9 = @" OR (c.chat_identifier = ?)";
    }

    v10 = v7 - 1;
    do
    {
      CFStringAppend(Mutable, v9);
      --v10;
    }

    while (v10);
  }

  v11 = CFStringCreateWithFormat(0, 0, @"SELECT * FROM attachment a INNER JOIN message_attachment_join ma ON   a.ROWID = ma.attachment_id INNER JOIN chat_message_join cm ON   ma.message_id = cm.message_id INNER JOIN message m ON   ma.message_id = m.ROWID WHERE   m.cache_has_attachments   AND m.expire_state != %d   AND cm.chat_id IN (%@)   AND a.hide_attachment == 0   AND a.ck_sync_state == 1   AND a.transfer_state == 0 ORDER BY m.date DESC limit %d", 2, Mutable, a3);
  v12 = v11;
  if (a4)
  {
    *a4 = CFRetain(v11);
    v13 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServicesQuery %@", buf, 0xCu);
    }
  }

  CFRelease(v12);
  CFRelease(Mutable);
  v14 = *MEMORY[0x1E69E9840];
}

void IMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServicesQuery(void *a1, const char *a2, CFTypeRef *a3)
{
  v4 = a2;
  v5 = objc_msgSend_count(a1, a2, a3);
  Mutable = CFStringCreateMutable(0, 0);
  v7 = Mutable;
  if (v4)
  {
    v8 = @"SELECT c.rowid FROM chat c INDEXED BY chat_idx_chat_identifier_service_name WHERE (c.chat_identifier = ? AND c.service_name = ?)";
  }

  else
  {
    v8 = @"SELECT c.rowid FROM chat c INDEXED BY chat_idx_chat_identifier_service_name WHERE (c.chat_identifier = ?)";
  }

  CFStringAppend(Mutable, v8);
  if (v5 >= 2)
  {
    if (v4)
    {
      v9 = @" OR (c.chat_identifier = ? AND c.service_name = ?)";
    }

    else
    {
      v9 = @" OR (c.chat_identifier = ?)";
    }

    v10 = v5 - 1;
    do
    {
      CFStringAppend(v7, v9);
      --v10;
    }

    while (v10);
  }

  v11 = CFStringCreateWithFormat(0, 0, @"select count(*) from attachment a INDEXED BY attachment_idx_purged_attachments_v2 join (select ma.attachment_id as a_id, message_date as m_date from message_attachment_join ma INDEXED BY message_attachment_join_idx_attachment_id join (select cm.message_id as message_id, cm.message_date as message_date from message m INDEXED BY message_idx_cache_has_attachments join chat_message_join cm where m.cache_has_attachments = 1 AND cm.chat_id AND cm.chat_id IN (%@) AND m.rowid = cm.message_id) as tmp where ma.message_id = tmp.message_id) as tmp2 where a.rowid = tmp2.a_id AND a.hide_attachment == 0 AND (a.ck_sync_state == 1 OR a.ck_sync_state == 4) AND a.transfer_state == 0 ORDER BY tmp2.m_date ASC;", v7);
  v12 = v11;
  if (a3)
  {
    *a3 = CFRetain(v11);
  }

  CFRelease(v12);

  CFRelease(v7);
}

__CFArray *IMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServices(void *a1, char *a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_count(a1, a2, a3);
  v9 = objc_msgSend_count(a2, v7, v8);
  v12 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v10, v11);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v12, v13, v14);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = a2;
      *&buf[22] = 2112;
      v47 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v17, a3);
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Copy purged attachments for chat %@ services %@ limit %@", buf, 0x20u);
    }
  }

  if (v6 && v9 && v6 == v9)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v18 = (isOneChatEnabled ^ 1u);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v47 = 0;
      v39 = 0;
      IMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServicesQuery(a1, v18, a3, &v39);
      if (v39)
      {
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = sub_1B7C07494;
        v37[3] = &unk_1E7CBD9E8;
        v38 = v18;
        v37[6] = a1;
        v37[7] = a2;
        v37[4] = buf;
        v37[5] = v6;
        _IMDPerformLockedStatementBlockWithQuery(v39, v37);
        v19 = *(*&buf[8] + 24);
        if (v19)
        {
          Count = CFArrayGetCount(v19);
        }

        else
        {
          Count = 0;
        }

        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v25 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v24, Count);
            *v40 = 138412802;
            v41 = v25;
            v42 = 2112;
            v43 = a1;
            v44 = 2112;
            v45 = v39;
            _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "%@ assets that have been purged for chat %@ outQuery %@", v40, 0x20u);
          }
        }

        if (Count < 1)
        {
          Mutable = 0;
        }

        else
        {
          v26 = 0;
          Mutable = 0;
          v27 = Count;
          v28 = *MEMORY[0x1E695E480];
          v29 = MEMORY[0x1E695E9C0];
          do
          {
            CFArrayGetValueAtIndex(*(*&buf[8] + 24), v26);
            ID = CSDBRecordGetID();
            v31 = IMDAttachmentRecordCreateFromRecordIDUnlocked(v28, ID);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(0, 0, v29);
            }

            CFArrayAppendValue(Mutable, v31);
            if (v31)
            {
              CFRelease(v31);
            }

            ++v26;
          }

          while (v27 != v26);
        }

        v32 = *(*&buf[8] + 24);
        if (v32)
        {
          CFRelease(v32);
        }
      }

      else
      {
        v22 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CFD7AC();
        }

        Mutable = 0;
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v47 = 0;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = sub_1B7C07544;
      v36[3] = &unk_1E7CB6838;
      v36[4] = buf;
      __syncXPCIMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServices_IPCAction(v36, a1, a2);
      Mutable = *(*&buf[8] + 24);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v33 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFBF4C();
    }

    Mutable = 0;
  }

  v34 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t sub_1B7C07494(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a1 + 48), v2);
      CSDBSqliteBindTextFromCFString();
      if (*(a1 + 64) == 1)
      {
        CFArrayGetValueAtIndex(*(a1 + 56), v2);
        CSDBSqliteBindTextFromCFString();
      }

      ++v2;
    }

    while (v2 < *(a1 + 40));
  }

  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1B7C07544(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      v7 = 0;
      v8 = MEMORY[0x1E695E9C0];
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
        }

        v9 = xpc_array_get_value(v4, v7);
        v10 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(v9);
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v10);
        if (v10)
        {
          CFRelease(v10);
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

__CFArray *IMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServices(void *a1, char *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_count(a1, a2, a3);
  v8 = objc_msgSend_count(a2, v6, v7);
  v11 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v9, v10);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v11, v12, v13);
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = a2;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Copy purged attachments count for chat %@ services %@", buf, 0x16u);
    }
  }

  if (v5 && v8 && v5 == v8)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v16 = (isOneChatEnabled ^ 1u);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v39 = 0;
      cf = 0;
      IMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServicesQuery(a1, v16, &cf);
      if (cf)
      {
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = sub_1B7C079D4;
        v29[3] = &unk_1E7CBD9E8;
        v30 = v16;
        v29[6] = a1;
        v29[7] = a2;
        v29[4] = buf;
        v29[5] = v5;
        _IMDPerformLockedStatementBlockWithQuery(cf, v29);
        CFArrayGetValueAtIndex(*(*&buf[8] + 24), 0);
        v17 = MEMORY[0x1E696AD98];
        ID = CSDBRecordGetID();
        v20 = objc_msgSend_numberWithInt_(v17, v19, ID);
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *v32 = 138412802;
            v33 = v20;
            v34 = 2112;
            v35 = a1;
            v36 = 2112;
            v37 = cf;
            _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "%@ assets that have been purged for chat %@ outQuery %@", v32, 0x20u);
          }
        }

        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        CFArrayAppendValue(Mutable, v20);
        v23 = *(*&buf[8] + 24);
        if (v23)
        {
          CFRelease(v23);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        v24 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CFD7AC();
        }

        Mutable = 0;
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v39 = 0;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1B7C07A84;
      v28[3] = &unk_1E7CB6838;
      v28[4] = buf;
      __syncXPCIMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServices_IPCAction(v28, a1, a2);
      Mutable = *(*&buf[8] + 24);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v25 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFBF4C();
    }

    Mutable = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t sub_1B7C079D4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a1 + 48), v2);
      CSDBSqliteBindTextFromCFString();
      if (*(a1 + 64) == 1)
      {
        CFArrayGetValueAtIndex(*(a1 + 56), v2);
        CSDBSqliteBindTextFromCFString();
      }

      ++v2;
    }

    while (v2 < *(a1 + 40));
  }

  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1B7C07A84(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    if (xpc_array_get_count(value) == 1)
    {
      dictionary = xpc_array_get_dictionary(v4, 0);
      if (dictionary)
      {
        int64 = xpc_dictionary_get_int64(dictionary, "purgedCount");
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        v7 = *(*(*(a1 + 32) + 8) + 24);
        v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v8, int64);

        CFArrayAppendValue(v7, v9);
      }
    }
  }
}

uint64_t IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices(void *a1, char *a2, uint64_t a3)
{
  v5 = objc_msgSend_count(a1, a2, a3);
  v8 = objc_msgSend_count(a2, v6, v7);
  v11 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v9, v10);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v11, v12, v13);
  if (v5 && v8 && v5 == v8)
  {
    v15 = isOneChatEnabled;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v16 = (v15 ^ 1u);
      v23 = 0;
      IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServicesQuery(a1, v16, &v23);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1B7C07D24;
      v21[3] = &unk_1E7CBD9E8;
      v22 = v16;
      v21[6] = a1;
      v21[7] = a2;
      v21[4] = &v24;
      v21[5] = v5;
      _IMDPerformLockedStatementBlockWithQuery(v23, v21);
      if (v23)
      {
        CFRelease(v23);
      }
    }

    else
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_1B7C0806C;
      v20[3] = &unk_1E7CB6838;
      v20[4] = &v24;
      __syncXPCIMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices_IPCAction(v20, a1, a2);
    }

    v18 = v25[3];
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v17 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFBF4C();
    }

    return 0;
  }

  return v18;
}

uint64_t sub_1B7C07D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v6 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a1 + 48), v6);
      CSDBSqliteBindTextFromCFString();
      if (*(a1 + 64) == 1)
      {
        CFArrayGetValueAtIndex(*(a1 + 56), v6);
        CSDBSqliteBindTextFromCFString();
      }

      ++v6;
    }

    while (v6 < *(a1 + 40));
  }

  if (sqlite3_step(*(a4 + 8)) == 100)
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

      v12 = objc_alloc(MEMORY[0x1E696AD98]);
      v13 = sqlite3_column_int(*(a4 + 8), 2) != 0;
      v15 = objc_msgSend_initWithBool_(v12, v14, v13);
      v16 = objc_alloc(MEMORY[0x1E696AD98]);
      v17 = sqlite3_column_int64(*(a4 + 8), 3);
      v19 = objc_msgSend_initWithUnsignedLong_(v16, v18, v17);
      v20 = objc_alloc(MEMORY[0x1E696AD98]);
      v21 = sqlite3_column_int64(*(a4 + 8), 4);
      v23 = objc_msgSend_initWithUnsignedLong_(v20, v22, v21);
      v24 = v23;
      if (v11 && v15 && v19 && v23)
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        }

        v25 = objc_alloc(MEMORY[0x1E695DF90]);
        v27 = objc_msgSend_initWithObjectsAndKeys_(v25, v26, v11, @"guid", v15, @"isSticker", v19, @"createdDate", v24, @"transferState", 0);
        v29 = v27;
        if (v9)
        {
          objc_msgSend_setObject_forKey_(v27, v28, v9, @"path");
        }

        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v29);
      }

      else
      {
        v30 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413314;
          v34 = v9;
          v35 = 2112;
          v36 = v11;
          v37 = 2112;
          v38 = v15;
          v39 = 2112;
          v40 = v19;
          v41 = 2112;
          v42 = v24;
          _os_log_error_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_ERROR, "Skipping an attachment because of incomplete data filename %@ guid %@ isSticker %@ createdDate %@ transferState %@", buf, 0x34u);
        }
      }
    }

    while (sqlite3_step(*(a4 + 8)) == 100);
  }

  result = CSDBSqliteStatementReset();
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7C0806C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    count = xpc_array_get_count(value);
    if (count)
    {
      v3 = 0;
      v31 = a1;
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        }

        v4 = xpc_array_get_value(value, v3);
        string = xpc_dictionary_get_string(v4, "guid");
        v6 = xpc_dictionary_get_string(v4, "path");
        v7 = xpc_dictionary_get_BOOL(v4, "isSticker");
        int64 = xpc_dictionary_get_int64(v4, "createdDate");
        v9 = xpc_dictionary_get_int64(v4, "transferState");
        if (string)
        {
          v10 = v9;
          v11 = objc_alloc(MEMORY[0x1E696AEC0]);
          v13 = objc_msgSend_initWithUTF8String_(v11, v12, string);
          if (v6)
          {
            v14 = objc_alloc(MEMORY[0x1E696AEC0]);
            v6 = objc_msgSend_initWithUTF8String_(v14, v15, v6);
          }

          v16 = objc_alloc(MEMORY[0x1E696AD98]);
          v18 = objc_msgSend_initWithBool_(v16, v17, v7);
          v19 = objc_alloc(MEMORY[0x1E695DF00]);
          v22 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v19, v20, v21, int64);
          v23 = objc_alloc(MEMORY[0x1E696AD98]);
          v25 = objc_msgSend_initWithLongLong_(v23, v24, v10);
          v26 = objc_alloc(MEMORY[0x1E695DF90]);
          v28 = objc_msgSend_initWithObjectsAndKeys_(v26, v27, v13, @"guid", v6, @"path", v18, @"isSticker", v22, @"createdDate", v25, @"transferState", 0);
          v30 = v28;
          if (v6)
          {
            objc_msgSend_setObject_forKey_(v28, v29, v6, @"path");
          }

          a1 = v31;
          if (v30)
          {
            CFArrayAppendValue(*(*(*(v31 + 32) + 8) + 24), v30);
          }
        }

        ++v3;
      }

      while (count != v3);
    }
  }
}

void IMDAttachmentRecordDeleteAttachmentForGUID(CFStringRef theString)
{
  if (theString && CFStringGetLength(theString))
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = sub_1B7C083A4;
      v3[3] = &unk_1E7CB7590;
      v3[4] = theString;
      _IMDPerformLockedStatementBlockWithQuery(@"DELETE FROM attachment WHERE guid = ?;", v3);
    }

    else
    {

      __syncXPCIMDAttachmentRecordDeleteAttachmentForGUID_IPCAction(0, theString);
    }
  }

  else
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD7E8();
    }
  }
}

uint64_t sub_1B7C083A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteStatementPerform();
  CSDBRecordSaveStore();

  return CSDBRecordStoreInvalidateCachesWithStore();
}

uint64_t IMDAttachmentRecordAddAttachment(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7C084B8;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7C084A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7C084B8(uint64_t result)
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

uint64_t IMDAttachmentRecordUpdateAttachmentGUIDWithGUID(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v47 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  if (a1 && a2)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v36 = 0;
      v37 = &v36;
      v38 = 0xD010000000;
      v39 = "";
      memset(v40, 0, sizeof(v40));
      IMDSqlOperationInitWithSharedCSDBDatabase(v40);
      IMDSqlOperationBeginTransaction(v37 + 4);
      v31 = 0;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v33 = sub_1B7C0899C;
      v34 = &unk_1E7CB6EA8;
      v35 = &v36;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_1B7C089FC;
      v30[3] = &unk_1E7CBD8A8;
      v30[4] = a1;
      RowsForQueryWithBindingBlock = _IMDSqlOperationGetRowsForQueryWithBindingBlock(@"SELECT ROWID FROM attachment WHERE guid = ? LIMIT 1;", &v31, v30);
      v6 = RowsForQueryWithBindingBlock;
      if (v31)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_23;
        }

        v9 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          goto LABEL_23;
        }

        *buf = 138412290;
        v46 = v31;
        v10 = "IMDAttachmentRecordUpdateAttachmentGUIDWithGUID - kIMDAttachmentRecordGetAttachmentRowIDForGUID returned error %@";
        v11 = v9;
        v12 = 12;
LABEL_8:
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
LABEL_23:
        v33(v32);
        v2 = *(v42 + 24);
        _Block_object_dispose(&v36, 8);
        goto LABEL_24;
      }

      if (!objc_msgSend_count(RowsForQueryWithBindingBlock, v7, v8))
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_23;
        }

        v25 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          goto LABEL_23;
        }

        *buf = 0;
        v10 = "IMDAttachmentRecordUpdateAttachmentGUIDWithGUID - kIMDAttachmentRecordGetAttachmentRowIDForGUID returned zero results";
        v11 = v25;
        v12 = 2;
        goto LABEL_8;
      }

      Object = objc_msgSend_firstObject(RowsForQueryWithBindingBlock, v13, v14);
      v17 = objc_msgSend_objectForKey_(Object, v16, @"ROWID");
      v20 = objc_msgSend_integerValue(v17, v18, v19);
      v21 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v46 = v20;
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_DEFAULT, "Updating GUID for attachment at rowID %lld", buf, 0xCu);
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_1B7C08A0C;
      v29[3] = &unk_1E7CBD998;
      v29[4] = &v36;
      v29[5] = a2;
      v29[6] = v20;
      v22 = IMDSqlOperationExecuteQuery((v37 + 4), @"UPDATE attachment set guid = ? WHERE ROWID = ?;", v29);
      *(v42 + 24) = v22;
      v23 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v42 + 24))
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        *buf = 138412290;
        v46 = v24;
        _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_DEFAULT, "kIMDAttachmentRecordUpdateAttachmentGUIDWithGUID Success: %@", buf, 0xCu);
      }

      v33(v32);
      _Block_object_dispose(&v36, 8);
    }

    else
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1B7C08A5C;
      v28[3] = &unk_1E7CB6838;
      v28[4] = &v41;
      __syncXPCIMDAttachmentRecordUpdateAttachmentGUIDWithGUID_IPCAction(v28, a1, a2);
    }

    v2 = *(v42 + 24);
  }

LABEL_24:
  _Block_object_dispose(&v41, 8);
  v26 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1B7C08978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 128), 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7C0899C(uint64_t a1)
{
  IMDSqlOperationFinishQuery(*(*(a1 + 32) + 8) + 32);
  IMDSqlOperationCommitOrRevertTransaction((*(*(a1 + 32) + 8) + 32));
  v2 = *(*(a1 + 32) + 8) + 32;

  return IMDSqlOperationRelease(v2, 0);
}

void sub_1B7C08A0C(void *a1)
{
  IMDSqlStatementBindTextFromCFString(*(a1[4] + 8) + 64, a1[5]);
  v2 = a1[6];
  v3 = *(a1[4] + 8) + 64;

  IMDSqlStatementBindInt64(v3, v2);
}

BOOL sub_1B7C08A5C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_BOOL(xdict, "BOOL_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentCopyGUIDsAfterRowWithLimit(void *a1, sqlite3_int64 a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = sub_1B7AE1B50;
  v26 = sub_1B7AE25B8;
  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        buf[0] = 138412546;
        *&buf[1] = a1;
        LOWORD(buf[3]) = 2048;
        *(&buf[3] + 2) = a2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDAttachmentCopyGUIDsAfterRowWithLimit is in IMDP afterRow %@ with limit %lld", buf, 0x16u);
      }
    }

    memset(v29, 0, sizeof(v29));
    memset(buf, 0, sizeof(buf));
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    if (a1)
    {
      v5 = @" select ROWID, guid, maj.rowid is null as is_orphaned from attachment left join message_attachment_join maj on attachment.ROWID=maj.attachment_id WHERE ROWID > ? ORDER BY ROWID limit ?;";
    }

    else
    {
      v5 = @" select ROWID, guid, maj.rowid is null as is_orphaned from attachment left join message_attachment_join maj on attachment.ROWID=maj.attachment_id ORDER BY ROWID limit ?;";
    }

    _IMDSqlOperationBeginQuery(buf, v5);
    if (a1)
    {
      v8 = objc_msgSend_longLongValue(a1, v6, v7);
      IMDSqlStatementBindInt64(v29, v8);
    }

    IMDSqlStatementBindInt64(v29, a2);
    while (IMDSqlOperationHasRows(buf))
    {
      Row = IMDSqlStatementGetRow(v29);
      if (Row)
      {
        objc_msgSend_addObject_(v23[5], v9, Row);
      }
    }

    IMDSqlOperationFinishQuery(buf);
    v21 = 0;
    IMDSqlOperationRelease(buf, &v21);
    if (v21)
    {
      v16 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFD858(&v21);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        buf[0] = 138412546;
        *&buf[1] = a1;
        LOWORD(buf[3]) = 2048;
        *(&buf[3] + 2) = a2;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "IMDAttachmentCopyGUIDsAfterRowWithLimit is in imagent afterRow %@ with limit %lld", buf, 0x16u);
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1B7C08E68;
    v20[3] = &unk_1E7CB6838;
    v20[4] = &v22;
    __syncXPCIMDAttachmentRecordCopyAttachmentGUIDs_IPCAction(v20, a1, a2);
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = objc_msgSend_count(v23[5], v13, v14);
        buf[0] = 134217984;
        *&buf[1] = v15;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Returned from DB call after loading attachments to delete messages count %lu", buf, 0xCu);
      }
    }
  }

  v17 = v23[5];
  _Block_object_dispose(&v22, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_1B7C08DDC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7C08D94);
  }

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(exc_buf);
}

xpc_object_t sub_1B7C08E68(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7C08EFC;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7C08EFC(uint64_t a1, int a2, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "ROWID");
  v6 = MEMORY[0x1E696AEC0];
  string = xpc_dictionary_get_string(xdict, "guid");
  v9 = objc_msgSend_stringWithCString_encoding_(v6, v8, string, 4);
  v10 = xpc_dictionary_get_BOOL(xdict, "is_orphaned");
  v11 = MEMORY[0x1E695DF20];
  v13 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v12, int64);
  v15 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v14, v10);
  v17 = objc_msgSend_dictionaryWithObjectsAndKeys_(v11, v16, v9, @"guid", v13, @"ROWID", v15, @"is_orphaned", 0);
  objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v18, v17);
  return 1;
}

uint64_t IMDAttachmentCopyRecordIDsToDeleteAfterRowWithLimit(void *a1, sqlite3_int64 a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = sub_1B7AE1B50;
  v26 = sub_1B7AE25B8;
  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        buf[0] = 138412546;
        *&buf[1] = a1;
        LOWORD(buf[3]) = 2048;
        *(&buf[3] + 2) = a2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDAttachmentCopyRecordIDsToDeleteAfterRowWithLimit is in IMDP with afterRow %@ limit %lld", buf, 0x16u);
      }
    }

    memset(v29, 0, sizeof(v29));
    memset(buf, 0, sizeof(buf));
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    if (a1)
    {
      v5 = @" select * from sync_deleted_attachments where LENGTH(TRIM(recordID)) > 0 AND ROWID > ? ORDER BY ROWID LIMIT ?;";
    }

    else
    {
      v5 = @" select * from sync_deleted_attachments where LENGTH(TRIM(recordID)) > 0 ORDER BY ROWID LIMIT ?;";
    }

    _IMDSqlOperationBeginQuery(buf, v5);
    if (a1)
    {
      v8 = objc_msgSend_longLongValue(a1, v6, v7);
      IMDSqlStatementBindInt64(v29, v8);
    }

    IMDSqlStatementBindInt64(v29, a2);
    while (IMDSqlOperationHasRows(buf))
    {
      Row = IMDSqlStatementGetRow(v29);
      if (Row)
      {
        objc_msgSend_addObject_(v23[5], v9, Row);
      }
    }

    IMDSqlOperationFinishQuery(buf);
    v21 = 0;
    IMDSqlOperationRelease(buf, &v21);
    if (v21)
    {
      v16 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFD8D0(&v21);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        buf[0] = 138412546;
        *&buf[1] = a1;
        LOWORD(buf[3]) = 2048;
        *(&buf[3] + 2) = a2;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "IMDAttachmentCopyRecordIDsToDeleteAfterRowWithLimit is in imagent afterRow %@ with limit %lld", buf, 0x16u);
      }
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1B7C093C8;
    v20[3] = &unk_1E7CB6838;
    v20[4] = &v22;
    __syncXPCIMDAttachmentRecordCopyAttachmentsToDeleteFromCloudKit_IPCAction(v20, a1, a2);
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v15 = objc_msgSend_count(v23[5], v13, v14);
        buf[0] = 134217984;
        *&buf[1] = v15;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Returned from DB call after loading attachments to delete messages count %lu", buf, 0xCu);
      }
    }
  }

  v17 = v23[5];
  _Block_object_dispose(&v22, 8);
  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_1B7C0933C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7C092F4);
  }

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(exc_buf);
}

xpc_object_t sub_1B7C093C8(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7C0945C;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7C0945C(uint64_t a1, int a2, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "ROWID");
  v6 = MEMORY[0x1E696AEC0];
  string = xpc_dictionary_get_string(xdict, "guid");
  v9 = objc_msgSend_stringWithCString_encoding_(v6, v8, string, 4);
  v10 = MEMORY[0x1E696AEC0];
  v11 = xpc_dictionary_get_string(xdict, "recordID");
  v13 = objc_msgSend_stringWithCString_encoding_(v10, v12, v11, 4);
  v14 = MEMORY[0x1E695DF20];
  v16 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v15, int64);
  v18 = objc_msgSend_dictionaryWithObjectsAndKeys_(v14, v17, v9, @"guid", v13, @"recordID", v16, @"ROWID", 0);
  objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v19, v18);
  return 1;
}

__CFString *sub_1B7C09560(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"DELETE FROM sync_deleted_attachments WHERE (recordID = ?");
  v3 = a1 - 1;
  if (a1 != 1)
  {
    do
    {
      CFStringAppend(Mutable, @" OR recordID = ?");
      --v3;
    }

    while (v3);
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

void IMDAttachmentRecordDeleteTombStonedAttachmentsWithRecordIDs(const __CFArray *a1)
{
  if (!a1 || !CFArrayGetCount(a1))
  {
    v4 = IMDatabaseLogHandle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v5 = "IMDAttachmentRecordDeleteTombStonedAttachmentsWithRecordIDs has no GUIDs to delete.";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_7;
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    Count = CFArrayGetCount(a1);
    v3 = sub_1B7C09560(Count);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7C09760;
    v9[3] = &unk_1E7CBD178;
    v9[4] = v3;
    v9[5] = a1;
    IMDRunSqlOperation(v9);
    CFRelease(v3);
    return;
  }

  __syncXPCIMDAttachmentRecordDeleteTombStonedAttachmentsForRecordIDs_IPCAction(0, a1);
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Returned from DB call after deleting RecordIDs from Tombstone table";
      v6 = v8;
      v7 = OS_LOG_TYPE_INFO;
LABEL_7:
      _os_log_impl(&dword_1B7AD5000, v6, v7, v5, buf, 2u);
    }
  }
}

BOOL sub_1B7C09760(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7C097E0;
  v6[3] = &unk_1E7CB75B0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[4] = a2;
  v6[5] = v4;
  return _IMDSqlOperationRunQuery(a2, v3, v6, 0);
}

void IMDAttachmentMarkAllFailedAttachmentsAsNeedingSync()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEFAULT, "Request to markAllUnsuccessFullySyncedAttachmentsAsNeedingSync ", buf, 2u);
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
    IMDSqlOperationExecuteQuery(buf, @"UPDATE attachment SET ck_sync_state=0 where ck_sync_state in (2,3,5) OR (ck_sync_state==1 AND guid not like at_%);", &unk_1F2FA1570);
    v3 = 0;
    IMDSqlOperationRelease(buf, &v3);
    if (v3)
    {
      v1 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 138412290;
        v16 = v3;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_DEFAULT, "Error executing markAllFailedAttachmentsAsNeedingSync %@ ", v15, 0xCu);
      }
    }
  }

  else
  {
    __syncXPCIMDAttachmentRecordMarkFailedAttachmentsAsNeedingSync_IPCAction(0);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7C09938()
{
  v0 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEFAULT, "Executed query to mark all unsuccessfuly synced attachments as needing sync", v1, 2u);
  }
}

uint64_t sub_1B7C09998(uint64_t a1, const char *a2)
{
  result = objc_msgSend_fileExistsAtPath_(*(a1 + 32), a2, a2);
  if (result)
  {
    v8 = 0;
    result = objc_msgSend_attributesOfItemAtPath_error_(*(a1 + 32), v5, a2, &v8);
    if (result)
    {
      result = objc_msgSend_fileSize(result, v6, v7);
      *(*(*(a1 + 40) + 8) + 24) += result;
    }
  }

  return result;
}

void _IMDSMSRecordStoreCustomFunctionBeforeDeleteAttachment(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v6 = dword_1EBA54308++;
  if (v6 >= 1)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD948(v7);
    }
  }

  if (a2 == 2)
  {
    v8 = sqlite3_value_int(*a3);
    v9 = sqlite3_value_text(a3[1]);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B7C09B20;
    v11[3] = &unk_1E7CBCC58;
    v11[4] = v9;
    v12 = v8;
    IMDPersistencePerformBlock(v11, 1, v10);
    sqlite3_result_int(a1, 0);
  }

  else
  {
    sqlite3_result_error(a1, "_IMDSMSRecordStoreCustomFunctionDeleteAttachment: wrong number of arguments", -1);
  }

  --dword_1EBA54308;
}

void sub_1B7C09B20(uint64_t a1, const char *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, *(a1 + 32));
  if (objc_msgSend_length(v3, v4, v5))
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, finding messageRowID for attachment rowID %d", buf, 8u);
    }

    *buf = 0;
    v53 = buf;
    v54 = 0x2020000000;
    v55 = 0;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_1B7C0A138;
    v48[3] = &unk_1E7CBDE00;
    v49 = *(a1 + 40);
    v48[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT message_id FROM message_attachment_join WHERE attachment_id = ? LIMIT 1", v48);
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(v53 + 3);
      *v50 = 134217984;
      v51 = v9;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, message row id: %lli", v50, 0xCu);
    }

    v10 = IMDMessageRecordCopyMessageForRowID(*(v53 + 3));
    v11 = v10;
    if (v10)
    {
      v46 = 0;
      v47 = 0;
      v45 = 0;
      IMDMessageRecordBulkCopy(v10, 0, 0, 0, &v46, 0, 0, 0, 0, 0, &v47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      v12 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v50 = 138412290;
        v51 = v11;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, messageRecord: %@", v50, 0xCu);
      }

      v13 = v46;
      if (v47 && v46)
      {
        v14 = JWDecodeCodableObjectWithStandardAllowlist();
        v15 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *v50 = 138412290;
          v51 = v3;
          _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, we found attachment guid: %@", v50, 0xCu);
        }

        v18 = objc_msgSend_mutableCopy(v14, v16, v17);
        v21 = objc_msgSend_length(v18, v19, v20);
        v22 = *MEMORY[0x1E69A5FD8];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = sub_1B7C0A184;
        v44[3] = &unk_1E7CBDE28;
        v44[4] = v18;
        v44[5] = v3;
        objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v18, v23, v22, 0, v21, 0, v44);
        v25 = objc_msgSend_dictionaryWithMessageSummaryInfoData_(MEMORY[0x1E695DF20], v24, v45);
        v27 = objc_msgSend_objectForKey_(v25, v26, *MEMORY[0x1E69A7240]);
        if (objc_msgSend_length(v18, v28, v29) || objc_msgSend_count(v27, v30, v31))
        {
          v32 = JWEncodeCodableObject();
          v35 = objc_msgSend_string(v18, v33, v34);
          if (v32)
          {
            if (v35)
            {
              v42[0] = MEMORY[0x1E69E9820];
              v42[1] = 3221225472;
              v42[2] = sub_1B7C0A37C;
              v42[3] = &unk_1E7CBDE78;
              v42[4] = v35;
              v42[5] = v46;
              v42[6] = v32;
              _IMDPerformLockedStatementBlockWithQuery(@"UPDATE message set attributedBody = ?, text = ? where guid = ?", v42);
              v36 = IMDatabaseLogHandle();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
              {
                *v50 = 0;
                _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, updated attributedBody and text", v50, 2u);
              }
            }
          }
        }

        else
        {
          v38 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            *v50 = 0;
            _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment,deleted messages for guid", v50, 2u);
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1B7C0A2B4;
          block[3] = &unk_1E7CBDE50;
          block[4] = v46;
          IMDPersistencePerformBlock(block, 0, v39);
        }

        v13 = v46;
      }

      if (v13)
      {
        CFRelease(v13);
        v46 = 0;
      }

      if (v47)
      {
        CFRelease(v47);
        v47 = 0;
      }

      CFRelease(v11);
    }

    else
    {
      v37 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *v50 = 0;
        _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, no message record found", v50, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  v40 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, all done!", buf, 2u);
  }

  v41 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7C0A138(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindInt();
  result = CSDBSqliteStatementInteger64Result();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1B7C0A184(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_attribute_atIndex_effectiveRange_(*(a1 + 32), a2, *MEMORY[0x1E69A5F68], a3, 0);
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, guid in message part: %@", &v13, 0xCu);
  }

  if (objc_msgSend_isEqualToString_(v7, v9, *(a1 + 40)))
  {
    objc_msgSend_deleteCharactersInRange_(*(a1 + 32), v10, a3, a4);
    v11 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, was equal, deleting range", &v13, 2u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1B7C0A2B4(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "TRIGGER: deferred deletion of messageGUID: %@", buf, 0xCu);
  }

  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  v6 = objc_msgSend_initWithObjects_(v4, v5, *(a1 + 32), 0);
  IMDMessageRecordDeleteMessagesForGUIDs(v6, 0);

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7C0A37C(void *a1)
{
  v2 = a1[6];
  CSDBSqliteBindBlobFromCFData();
  v3 = a1[4];
  CSDBSqliteBindTextFromCFString();
  v4 = a1[5];
  CSDBSqliteBindTextFromCFString();

  return CSDBSqliteStatementPerform();
}

void _IMDSMSRecordStoreCustomFunctionDeleteAttachment(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v4 = sqlite3_value_text(*a3);
    if (v4)
    {
      v5 = v4;
      v6 = objc_autoreleasePoolPush();
      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = objc_msgSend_initWithUTF8String_(v7, v8, v5);
      v12 = objc_msgSend_stringByResolvingAndStandardizingPath(v9, v10, v11);
      v13 = IMSharedHelperPathIsInStickerCache();
      v14 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = @"NO";
        if (v13)
        {
          v17 = @"YES";
        }

        v39 = 138412546;
        v40 = v12;
        v41 = 2112;
        v42 = v17;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "TRIGGER: Deleting attachment files based on path: %@, pathIsInStickerCache %@", &v39, 0x16u);
      }

      if (v13 & 1 | ((objc_msgSend_isAbsolutePath(v12, v15, v16) & 1) == 0))
      {
        v18 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v39 = 138412290;
          v40 = v12;
          _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Did not delete attachment at path %@", &v39, 0xCu);
        }

        v19 = 0;
      }

      else
      {
        v21 = objc_alloc_init(MEMORY[0x1E696AC08]);
        PathComponent = objc_msgSend_stringByDeletingLastPathComponent(v12, v22, v23);
        if (v12)
        {
          objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v24, v12, 0);
        }

        v26 = IMPreviewCachesDirectoryWithAttachmentURL();
        v29 = objc_msgSend_lastPathComponent(PathComponent, v27, v28);
        v32 = objc_msgSend_length(v29, v30, v31);
        v33 = IMDatabaseLogHandle();
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
        if (v32 < 0x24)
        {
          if (v34)
          {
            v39 = 138412290;
            v40 = v12;
            _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "Just deleting the original path: %@", &v39, 0xCu);
          }

          v19 = objc_msgSend_removeItemAtPath_error_(v21, v35, v12, 0);
        }

        else
        {
          if (v34)
          {
            v39 = 138412290;
            v40 = PathComponent;
            _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "Deleting this guid directory too: %@", &v39, 0xCu);
          }

          v19 = objc_msgSend_removeItemAtPath_error_(v21, v35, PathComponent, 0);
          if (v26)
          {
            objc_msgSend_removeItemAtURL_error_(v21, v36, v26, 0);
            v37 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              v39 = 138412290;
              v40 = v26;
              _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "Deleting this caches guid directory too: %@", &v39, 0xCu);
            }
          }
        }
      }

      objc_autoreleasePoolPop(v6);
    }

    else
    {
      v19 = 0;
    }

    sqlite3_result_int(a1, v19);
    v38 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v20 = *MEMORY[0x1E69E9840];

    sqlite3_result_error(a1, "_IMDSMSRecordStoreCustomFunctionDeleteAttachment: wrong number of arguments", -1);
  }
}

void _IMDSMSRecordStoreCustomFunctionAfterDeleteMessagePlugin(sqlite3_context *a1, int a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = &qword_1EBA54000;
  v7 = dword_1EBA5430C++;
  if (v7 >= 1)
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD948(v8);
    }
  }

  if (a2 == 2)
  {
    v9 = sqlite3_value_text(*(a3 + 8));
    if (v9)
    {
      v10 = v9;
      context = objc_autoreleasePoolPush();
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v11, v10);
      v14 = objc_alloc_init(MEMORY[0x1E696AC08]);
      for (i = 0; i != 3; ++i)
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"%@-%d", v12, i);
        v16 = IMPluginSnapshotCachesFileURL();
        v17 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v16;
          _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "TRIGGER: Deleting plugin snapshot at path: %@", buf, 0xCu);
        }

        v22 = 0;
        if ((objc_msgSend_removeItemAtURL_error_(v14, v18, v16, &v22) & 1) == 0)
        {
          v19 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v24 = v22;
            _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Failure to delete file at path with error: %@", buf, 0xCu);
          }
        }
      }

      objc_autoreleasePoolPop(context);
      v6 = &qword_1EBA54000;
    }
  }

  else
  {
    sqlite3_result_error(a1, "_IMDSMSRecordStoreCustomFunctionAfterDeleteMessagePlugin: wrong number of arguments", -1);
  }

  --*(v6 + 195);
  v20 = *MEMORY[0x1E69E9840];
}

void _IMDSMSRecordStoreCustomFunctionTrim(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v4 = sqlite3_value_text(*a3);
      if (v4)
      {
        v5 = v4;
        v6 = objc_autoreleasePoolPush();
        v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, v5);
        v11 = objc_msgSend_trimmedString(v8, v9, v10);
        v14 = objc_msgSend_UTF8String(v11, v12, v13);
        sqlite3_result_text(a1, v14, -1, 0xFFFFFFFFFFFFFFFFLL);

        objc_autoreleasePoolPop(v6);
        return;
      }

      v15 = "_IMDSMSRecordStoreCustomFunctionTrim: SQLite text of value[0] was NULL.";
    }

    else
    {
      v15 = "_IMDSMSRecordStoreCustomFunctionTrim: sqlite3_value was NULL.";
    }
  }

  else
  {
    v15 = "_IMDSMSRecordStoreCustomFunctionTrim: wrong number of arguments";
  }

  sqlite3_result_error(a1, v15, -1);
}

uint64_t IMDPersistenceCheckNotDatabaseThread()
{
  if (byte_1EDBE7948 == 1)
  {
    IMDSharedThreadedRecordStore();
    if (CSDBThreadedRecordStoreOwnsCurrentThread())
    {
      if (IMOSLoggingEnabled())
      {
        v0 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "**************************************************************************", buf, 2u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v1 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
        {
          *v6 = 0;
          _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "***** Non-database work on the database thread, please file a radar ******", v6, 2u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v2 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *v5 = 0;
          _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "**************************************************************************", v5, 2u);
        }
      }

      if (qword_1EBA54318 != -1)
      {
        sub_1B7CFD98C();
      }

      v3 = qword_1EBA54320;
      if (os_log_type_enabled(qword_1EBA54320, OS_LOG_TYPE_FAULT))
      {
        sub_1B7CFD9B4(v3);
      }
    }
  }

  return 1;
}

void IMDPersistencePerformBlockAfterDelay(void *a1, const char *a2, uint64_t a3, double a4)
{
  if (a1)
  {
    if (byte_1EDBE7948 == 1)
    {
      IMDSharedThreadedRecordStore();

      CSDBPerformBlockAfterDelay();
    }

    else
    {
      v5 = objc_msgSend_copy(a1, a2, a3);
      if (qword_1EBA54330[0] != -1)
      {
        sub_1B7CFDA3C();
      }

      v6 = qword_1EBA54328;
      if (qword_1EBA54328)
      {
        v7 = dispatch_time(0, (a4 * 1000000000.0));
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1B7C0B304;
        block[3] = &unk_1E7CB7FD8;
        block[4] = v5;
        dispatch_after(v7, v6, block);
      }
    }
  }
}

void IMDPersistencePerformBlockWithHandoffIfNeeded(dispatch_block_t block, const char *a2, uint64_t a3)
{
  if ((a2 & 1) != 0 || !objc_msgSend_currentConnection(MEMORY[0x1E696B0B8], a2, a3))
  {

    IMDPersistencePerformBlock(block, a2, a3);
  }

  else
  {
    v5 = MEMORY[0x1E696B0B8];
    v6 = IMDSharedThreadedRecordStore();
    v8 = MEMORY[0x1B8CAF1A0](v6);

    objc_msgSend__handoffCurrentReplyToQueue_block_(v5, v7, v8, block);
  }
}

void IMDPersistenceDispatchAsyncWithHandoffIfNeeded(NSObject *a1, void *a2, uint64_t a3)
{
  if (objc_msgSend_currentConnection(MEMORY[0x1E696B0B8], a2, a3))
  {
    v6 = MEMORY[0x1E696B0B8];

    objc_msgSend__handoffCurrentReplyToQueue_block_(v6, v5, a1, a2);
  }

  else
  {

    dispatch_async(a1, a2);
  }
}

uint64_t _IMDContactStore()
{
  if (qword_1EDBE5BF8 != -1)
  {
    sub_1B7CFDA50();
  }

  return qword_1EDBE5BF0;
}

void sub_1B7C0B45C()
{
  v8 = objc_alloc_init(MEMORY[0x1E695CE28]);
  v2 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v0, v1);
  if (objc_msgSend_isIntroductionsEnabled(v2, v3, v4))
  {
    objc_msgSend_setIncludeAcceptedIntroductions_(v8, v5, 1);
  }

  v6 = objc_alloc(MEMORY[0x1E695CE18]);
  qword_1EDBE5BF0 = objc_msgSend_initWithConfiguration_(v6, v7, v8);
}

uint64_t IMDPersistenceSubmitEvent(void *a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  result = objc_msgSend_length(a1, a2, a3);
  if (result)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = a1;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Submitting persistence event: %@", &v7, 0xCu);
      }
    }

    result = IMSubmitSimpleAggegateMetric();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *IMDDBRecordGetAllColumnNames(uint64_t *a1, const char *a2)
{
  LODWORD(v2) = a2;
  v4 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, a2 + 1);
  objc_msgSend_addObject_(v4, v5, @"ROWID");
  if (v2 >= 1)
  {
    v2 = v2;
    do
    {
      v7 = *a1;
      a1 += 5;
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, v7);
      objc_msgSend_addObject_(v4, v9, v8);
      --v2;
    }

    while (v2);
  }

  return v4;
}

__CFString *_IMDGetUserDefaultsDomainForSavedDeviceInfo()
{
  if (qword_1EBA54310)
  {
    return qword_1EBA54310;
  }

  else
  {
    return @"com.apple.imdsmsrecordstore";
  }
}

void _IMDSetUserDefaultsDomainForSavedDeviceInfo(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (qword_1EBA54310)
  {

    qword_1EBA54310 = 0;
  }

  if (a1)
  {
    qword_1EBA54310 = a1;
  }

  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = qword_1EBA54310;
    if (!qword_1EBA54310)
    {
      v3 = @"com.apple.imdsmsrecordstore";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Set device state test user defaults domain to: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void *_IMDGetSavedDeviceState()
{
  if (qword_1EBA54310)
  {
    v0 = qword_1EBA54310;
  }

  else
  {
    v0 = @"com.apple.imdsmsrecordstore";
  }

  v1 = CFPreferencesCopyValue(@"IMDSavedDeviceState", v0, @"mobile", *MEMORY[0x1E695E898]);
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  return v2;
}

id _IMDSetAllPropertiesOnDeviceStateIfNeeded(void *a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_mutableCopy(a1, a2, a3);
  if (!v5)
  {
    v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v3, v4);
  }

  if (!objc_msgSend_objectForKey_(v5, v3, @"IMDSavedDeviceStateDidUpgradeKey"))
  {
    objc_msgSend_setObject_forKey_(v5, v6, MEMORY[0x1E695E110], @"IMDSavedDeviceStateDidUpgradeKey");
  }

  if (!objc_msgSend_objectForKey_(v5, v6, @"IMDSavedDeviceStateDidRestoreFromBackupKey"))
  {
    objc_msgSend_setObject_forKey_(v5, v7, MEMORY[0x1E695E110], @"IMDSavedDeviceStateDidRestoreFromBackupKey");
  }

  if (!objc_msgSend_objectForKey_(v5, v7, @"IMDSavedDeviceStateDidMigrateFromDifferentDeviceKey"))
  {
    objc_msgSend_setObject_forKey_(v5, v8, MEMORY[0x1E695E110], @"IMDSavedDeviceStateDidMigrateFromDifferentDeviceKey");
  }

  if (!objc_msgSend_objectForKey_(v5, v8, @"IMDSavedDeviceStateDidRestoreFromCloudBackupKey"))
  {
    objc_msgSend_setObject_forKey_(v5, v9, MEMORY[0x1E695E110], @"IMDSavedDeviceStateDidRestoreFromCloudBackupKey");
  }

  if (!objc_msgSend_objectForKey_(v5, v9, @"IMDSavedDeviceStateDidMigrateKey"))
  {
    objc_msgSend_setObject_forKey_(v5, v10, MEMORY[0x1E695E110], @"IMDSavedDeviceStateDidMigrateKey");
  }

  if (!objc_msgSend_objectForKey_(v5, v10, @"IMDSavedDeviceStateBuildVersionKey"))
  {
    v13 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v11, v12);
    v16 = objc_msgSend_operatingSystemVersionString(v13, v14, v15);
    objc_msgSend_setObject_forKey_(v5, v17, v16, @"IMDSavedDeviceStateBuildVersionKey");
  }

  if (!objc_msgSend_objectForKey_(v5, v11, @"IMDSavedDeviceStateIsMigratingKey"))
  {
    objc_msgSend_setObject_forKey_(v5, v18, MEMORY[0x1E695E110], @"IMDSavedDeviceStateIsMigratingKey");
  }

  if (!objc_msgSend_objectForKey_(v5, v18, @"IMDSavedDeviceStateDateKey"))
  {
    v21 = objc_msgSend_date(MEMORY[0x1E695DF00], v19, v20);
    objc_msgSend_setObject_forKey_(v5, v22, v21, @"IMDSavedDeviceStateDateKey");
  }

  return v5;
}

void _IMDSetSavedDeviceState(void *a1, const char *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = _IMDSetAllPropertiesOnDeviceStateIfNeeded(a1, a2, a3);
  }

  else
  {
    v3 = 0;
  }

  if (qword_1EBA54310)
  {
    v4 = qword_1EBA54310;
  }

  else
  {
    v4 = @"com.apple.imdsmsrecordstore";
  }

  v5 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"IMDSavedDeviceState", v3, v4, @"mobile", *MEMORY[0x1E695E898]);
  if (qword_1EBA54310)
  {
    v6 = qword_1EBA54310;
  }

  else
  {
    v6 = @"com.apple.imdsmsrecordstore";
  }

  CFPreferencesSynchronize(v6, @"mobile", v5);
  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    v12 = objc_msgSend_description(v3, v8, v9);
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Saved device state: %@", &v11, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

id IMDReadDeviceState()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = _IMDGetSavedDeviceState();
  v3 = _IMDSetAllPropertiesOnDeviceStateIfNeeded(v0, v1, v2);
  v4 = IMDatabaseLogHandle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v0)
  {
    if (v5)
    {
      v11 = 138412290;
      v12 = objc_msgSend_description(v3, v6, v7);
      v8 = "Read stored device state: %@";
LABEL_6:
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, v8, &v11, 0xCu);
    }
  }

  else if (v5)
  {
    v11 = 138412290;
    v12 = objc_msgSend_description(v3, v6, v7);
    v8 = "Device state not set, return default version: %@";
    goto LABEL_6;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

void IMSaveDeviceState(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[6] = *MEMORY[0x1E69E9840];
  v21[0] = @"IMDSavedDeviceStateDidUpgradeKey";
  v22[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a1);
  v21[1] = @"IMDSavedDeviceStateDidRestoreFromBackupKey";
  v22[1] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v11, a2);
  v21[2] = @"IMDSavedDeviceStateDidMigrateFromDifferentDeviceKey";
  v22[2] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v12, a3);
  v21[3] = @"IMDSavedDeviceStateDidRestoreFromCloudBackupKey";
  v22[3] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v13, a4);
  v21[4] = @"IMDSavedDeviceStateDidMigrateKey";
  v22[4] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v14, a5);
  v21[5] = @"IMDSavedDeviceStateIsMigratingKey";
  v22[5] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v15, a6);
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v22, v21, 6);
  _IMDSetSavedDeviceState(v17, v18, v19);
  v20 = *MEMORY[0x1E69E9840];
}

os_log_t sub_1B7C0BC88()
{
  result = os_log_create("com.apple.runtime-issues", "Messages");
  qword_1EBA54320 = result;
  return result;
}

dispatch_queue_t sub_1B7C0BCB8()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("_IMDPersistenceClientQueue", v0);
  qword_1EBA54328 = result;
  return result;
}

void sub_1B7C0BDD8()
{
  if (qword_1EDBE5C90 != -1)
  {
    sub_1B7CFDA64();
  }

  if (!qword_1EDBE5C68)
  {
    v0 = MEMORY[0x1E696AEC0];
    v1 = IMFileLocationTrimFileName();
    v3 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v2, &stru_1F2FA9728);
    v5 = objc_msgSend_stringWithFormat_(v0, v4, @"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMContactsContactEmailAddressesKey", "void _IMDContactsApiInit(void)", v1, 72, v3);

    v6 = IMGetAssertionFailureHandler();
    if (v6)
    {
      v6(v5);
    }

    else
    {
      v9 = objc_msgSend_warning(MEMORY[0x1E69A6138], v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFDA78();
      }
    }
  }

  if (!qword_1EDBE5C58)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = IMFileLocationTrimFileName();
    v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, &stru_1F2FA9728);
    v15 = objc_msgSend_stringWithFormat_(v10, v14, @"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMContactsContactPhoneNumbersKey", "void _IMDContactsApiInit(void)", v11, 73, v13);

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
        sub_1B7CFDA78();
      }
    }
  }

  if (!qword_1EDBE5C60)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = IMFileLocationTrimFileName();
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, &stru_1F2FA9728);
    v25 = objc_msgSend_stringWithFormat_(v20, v24, @"Unexpected nil '%@' in %s at %s:%d. %@", @"kIMContactsContactInstantMessageAddressesKey", "void _IMDContactsApiInit(void)", v21, 74, v23);

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
        sub_1B7CFDA78();
      }
    }
  }
}

void sub_1B7C0C0F4()
{
  v0 = objc_alloc_init(IMDCNPersonAliasResolver);
  v1 = qword_1EBA53A30;
  qword_1EBA53A30 = v0;
}

void sub_1B7C0D1FC(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7C0D1E8);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

void sub_1B7C0D23C(uint64_t *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedInstance(IMDContactCache, a2, a3);
  objc_msgSend_cacheContactsFromFetchResults_forAliases_(v4, v5, a1[4], a1[5]);

  v9 = objc_msgSend_sharedInstance(IMDContactCache, v6, v7);
  objc_msgSend_setCurrentHistoryToken_(v9, v8, *(*(a1[6] + 8) + 40));
}

uint64_t sub_1B7C0E220()
{
  if (!qword_1EDBE5C68)
  {
    v0 = MEMORY[0x1B8CAFAD0]("CNContactEmailAddressesKey", @"Contacts");
    if (v0)
    {
      v1 = *v0;
    }

    else
    {
      v1 = 0;
    }

    objc_storeStrong(&qword_1EDBE5C68, v1);
  }

  if (!qword_1EDBE5C58)
  {
    v2 = MEMORY[0x1B8CAFAD0]("CNContactPhoneNumbersKey", @"Contacts");
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    objc_storeStrong(&qword_1EDBE5C58, v3);
  }

  if (!qword_1EDBE5C60)
  {
    v4 = MEMORY[0x1B8CAFAD0]("CNContactInstantMessageAddressesKey", @"Contacts");
    if (v4)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    objc_storeStrong(&qword_1EDBE5C60, v5);
  }

  qword_1EDBE5CA8 = MEMORY[0x1B8CAFAC0](@"CNContactStore", @"Contacts");
  qword_1EDBE5CC0 = MEMORY[0x1B8CAFAC0](@"CNContact", @"Contacts");
  qword_1EDBE5C98 = MEMORY[0x1B8CAFAC0](@"CNPhoneNumber", @"Contacts");
  qword_1EDBE5CB0 = MEMORY[0x1B8CAFAC0](@"CNContactFormatter", @"Contacts");
  qword_1EDBE5CB8 = MEMORY[0x1B8CAFAC0](@"CNContactFetchRequest", @"Contacts");
  qword_1EDBE5CC8 = MEMORY[0x1B8CAFAC0](@"CNChangeHistoryFetchRequest", @"Contacts");
  result = MEMORY[0x1B8CAFAC0](@"CNFavorites", @"Contacts");
  qword_1EDBE5CA0 = result;
  return result;
}

void sub_1B7C0E648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7C0E7EC()
{
  if (qword_1EDBE3F50 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ChatRecord();
  sub_1B7C10724(&qword_1EDBE5708, type metadata accessor for ChatRecord);
  result = sub_1B7CC1208(v0);
  if (result)
  {
    v2 = *(result + 32);

    v3 = *(v2 + 16);
    if (v3)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_1B7AECEEC(0, v3, 0);
      v4 = v12;
      v5 = v2 + 32;
      do
      {
        sub_1B7AEBEFC(v5, v11);
        v7 = v11[2];
        v6 = v11[3];

        sub_1B7AEBF70(v11);
        v12 = v4;
        v9 = *(v4 + 16);
        v8 = *(v4 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1B7AECEEC((v8 > 1), v9 + 1, 1);
          v4 = v12;
        }

        *(v4 + 16) = v9 + 1;
        v10 = v4 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        v5 += 136;
        --v3;
      }

      while (v3);
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    v11[0] = &unk_1F2FA15D0;
    result = sub_1B7C50BFC(v4);
    off_1EBA50DF8 = v11[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7C0EC44(uint64_t a1, uint64_t a2)
{
  v4 = 0xE000000000000000;
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0x205443454C4553, 0xE700000000000000);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_1B7CFEA30();
  v7 = [ObjCClassFromMetadata allColumnsWithPrefix_];

  v8 = sub_1B7CFEA60();
  v10 = v9;

  MEMORY[0x1B8CADCA0](v8, v10);

  MEMORY[0x1B8CADCA0](0xD00000000000014CLL, 0x80000001B7D4E700);
  if (a2)
  {
    MEMORY[0x1B8CADCA0](a1, a2);
    v11 = 0x20444E4120;
    v4 = 0xE500000000000000;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1B8CADCA0](v11, v4);

  MEMORY[0x1B8CADCA0](0xD000000000000016, 0x80000001B7D4E850);
  return 0;
}

uint64_t sub_1B7C0EE48()
{
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0x205443454C4553, 0xE700000000000000);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = sub_1B7CFEA30();
  v2 = [ObjCClassFromMetadata allColumnsWithPrefix_];

  v3 = sub_1B7CFEA60();
  v5 = v4;

  MEMORY[0x1B8CADCA0](v3, v5);

  MEMORY[0x1B8CADCA0](0xD0000000000000B5, 0x80000001B7D4E9E0);
  return 0;
}

uint64_t sub_1B7C0EF40(int a1)
{
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000009ALL, 0x80000001B7D4E870);
  v2 = [swift_getObjCClassFromMetadata() allColumns];
  v3 = sub_1B7CFEA60();
  v5 = v4;

  MEMORY[0x1B8CADCA0](v3, v5);

  MEMORY[0x1B8CADCA0](0xD000000000000067, 0x80000001B7D4E910);
  sub_1B7AF7F10(0xD00000000000005CLL, 0x80000001B7D4E980, a1);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v6 = sub_1B7CFEA10();
  v8 = v7;

  MEMORY[0x1B8CADCA0](v6, v8);

  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  return 0;
}

uint64_t sub_1B7C0F114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_1B7CFE120();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B7C0EC44(a3, a4);
  v19 = v18;
  sub_1B7C108AC(a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B7C10844(v11);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1B7CFF210();

    v27 = v17;
    v28 = v19;
    MEMORY[0x1B8CADCA0](0xD000000000000023, 0x80000001B7D4E6D0);
    v20 = sub_1B7CFE0A0();
    v21 = [v20 __im_nanosecondTimeInterval];

    v26 = v21;
    v22 = sub_1B7CFF570();
    MEMORY[0x1B8CADCA0](v22);

    v17 = v27;
    v19 = v28;
    (*(v13 + 8))(v16, v12);
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1B7CFF210();

  v27 = v17;
  v28 = v19;
  MEMORY[0x1B8CADCA0](0xD000000000000023, 0x80000001B7D4E6A0);
  result = v27;
  if (a1 >= 1)
  {
    MEMORY[0x1B8CADCA0](0x2054494D494C0ALL, 0xE700000000000000);
    v26 = a1;
    v24 = sub_1B7CFF570();
    MEMORY[0x1B8CADCA0](v24);

    MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
    return v27;
  }

  return result;
}

IMDChatQueryStrings __swiftcall IMDChatQueryStrings.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

const char *sub_1B7C0F77C(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1B7AE3B2C(0xD000000000000039, 0x80000001B7D4F0D0, 0);
  if (!v1)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

void *sub_1B7C0F888(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EDBE3F50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MessageRecord();
  sub_1B7C10724(&qword_1EDBE5658, type metadata accessor for MessageRecord);
  result = sub_1B7CC1208(v2);
  if (result)
  {
    sub_1B7C2EBBC(result, 0x74694B64756F6C63, 0xEE00444974616843);
  }

  else
  {
    __break(1u);
  }

  return result;
}

const char *sub_1B7C0F99C(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1B7AE3B2C(0xD000000000000039, 0x80000001B7D4F090, 0);
  if (!v1)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

void *sub_1B7C0FAC4(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EDBE3F50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ChatRecord();
  sub_1B7C10724(&qword_1EDBE5708, type metadata accessor for ChatRecord);
  result = sub_1B7CC1208(v2);
  if (result)
  {
    sub_1B7C2EBBC(result, 0x6E69646E65507369, 0xEF77656976655267);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7C0FC2C(uint64_t *a1)
{
  v1 = *a1;

  sub_1B7C816E0();
}

const char *sub_1B7C0FC84(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1B7AE3B2C(0xD00000000000002FLL, 0x80000001B7D4F060, 0);
  if (!v1)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

const char *sub_1B7C0FD90(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1B7AE3B2C(0xD000000000000036, 0x80000001B7D4F020, 0);
  if (!v1)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

unint64_t type metadata accessor for IMDChatQueryStrings()
{
  result = qword_1EBA51670;
  if (!qword_1EBA51670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA51670);
  }

  return result;
}

__n128 sub_1B7C0FEEC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1B7C0FF20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 176))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7C0FF7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_1B7C10010(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_1B7C10038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1B7C10064(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7C100C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B7C10210(uint64_t a1, id *a2)
{
  result = sub_1B7CFEA40();
  *a2 = 0;
  return result;
}

uint64_t sub_1B7C10288(uint64_t a1, id *a2)
{
  v3 = sub_1B7CFEA50();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B7C10308@<X0>(uint64_t *a1@<X8>)
{
  sub_1B7CFEA60();
  v2 = sub_1B7CFEA30();

  *a1 = v2;
  return result;
}

uint64_t sub_1B7C1034C()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](v1);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C103C0()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](v1);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C10404()
{
  v1 = *v0;
  v2 = sub_1B7CFEA60();
  v3 = MEMORY[0x1B8CADD40](v2);

  return v3;
}

uint64_t sub_1B7C10440()
{
  v1 = *v0;
  sub_1B7CFEA60();
  sub_1B7CFEB10();
}

uint64_t sub_1B7C10494()
{
  v1 = *v0;
  sub_1B7CFEA60();
  sub_1B7CFF7C0();
  sub_1B7CFEB10();
  v2 = sub_1B7CFF800();

  return v2;
}

uint64_t sub_1B7C10524(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1B7CFEA60();
  v6 = v5;
  if (v4 == sub_1B7CFEA60() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B7CFF590();
  }

  return v9 & 1;
}

uint64_t sub_1B7C105AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B7CFEA30();

  *a2 = v5;
  return result;
}

uint64_t sub_1B7C105F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1B7CFEA60();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1B7C10620(uint64_t a1)
{
  v2 = sub_1B7C10724(&qword_1EBA51730, type metadata accessor for URLResourceKey);
  v3 = sub_1B7C10724(&qword_1EBA51738, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B7C10724(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7C107FC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1B7C10844(uint64_t a1)
{
  v2 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C108AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7C1091C(uint64_t *a1, uint64_t *a2)
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

__n128 sub_1B7C109B4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B7C109E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7C10A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1B7C10AE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7C10B3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_1B7C10BC0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B7C10BD4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7C10BF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 sub_1B7C10C34(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B7C10C50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7C10CAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_1B7C10D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B7C10D58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7C10DB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_1B7C10E6C(uint64_t a1)
{
  type metadata accessor for CFDictionary(255);
  *(a1 + 16) = v2;
  return 0;
}

__n128 sub_1B7C10EB4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1B7C10EF8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 200))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7C10F54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B7C11000(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1B7C11014(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7C11034(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

__n128 sub_1B7C11088(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B7C1109C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7C110BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1B7C11184()
{
  v1 = v0;
  v2 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v152 = v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v145 = v127 - v6;
  v134 = sub_1B7CFE420();
  v133 = *(v134 - 8);
  v7 = *(v133 + 64);
  v8 = MEMORY[0x1EEE9AC00](v134);
  v130 = v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v129 = v127 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v150 = v127 - v12;
  v13 = sub_1B7CFDFF0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v128 = (v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v16);
  v157 = (v127 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v146 = (v127 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v148 = (v127 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v149 = (v127 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (v127 - v27);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v147 = v127 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = (v127 - v31);
  if (qword_1EBA515D8 != -1)
  {
LABEL_59:
    swift_once();
  }

  v141 = qword_1EBA5DAF0;
  v143 = "eDirectoryLoggerDelegate";
  v136 = OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_rootDirectory;
  v137 = *(v14 + 16);
  v138 = v14;
  v137(v32, v1 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_rootDirectory, v13);
  v140 = sub_1B7CFDF30();
  v144 = v33;
  v142 = v1;
  v34 = *(v14 + 8);
  v34(v32, v13);
  v35 = v148;
  sub_1B7C4F08C(v148);
  v36 = v149;
  sub_1B7CFDF60();
  v34(v35, v13);
  sub_1B7CFDF60();
  v34(v36, v13);
  v37 = v147;
  sub_1B7CFDF70();
  v132 = v28;
  v148 = v34;
  v149 = (v14 + 8);
  v34(v28, v13);
  v38 = type metadata accessor for StorageInspectorReportFile();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  v42 = (v41 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile____lazy_storage___path);
  *v42 = 0;
  v42[1] = 0;
  *(v41 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle) = 0;
  v43 = v138 + 32;
  v147 = *(v138 + 32);
  (v147)(v41 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v37, v13);

  v28 = v142;
  v44 = v146;
  v131 = v14 + 16;
  v137(v146, &v142[v136], v13);
  if (qword_1EBA51660 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for AttachmentDirectoryEnumerator();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();

  v48 = v151;
  v49 = sub_1B7CD6A6C(v44);
  v50 = v150;
  if (!v48)
  {
    v151 = v49;
    v135 = v41;
    v127[2] = "directoryBatchSize";
    v127[1] = "com.apple.Messages";
    sub_1B7CFE410();

    v54 = sub_1B7CFE400();
    v55 = sub_1B7CFEED0();

    v56 = os_log_type_enabled(v54, v55);
    v141 = 0;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      *&v155 = v146;
      *v57 = 136315138;
      v58 = v132;
      v137(v132, v28 + v136, v13);
      v59 = sub_1B7CFDFC0();
      v61 = v60;
      v148(v58, v13);
      v62 = sub_1B7AED1B8(v59, v61, &v155);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_1B7AD5000, v54, v55, "Logging contents of root directory: '%s'", v57, 0xCu);
      v63 = v146;
      sub_1B7AE9168(v146);
      MEMORY[0x1B8CB0E70](v63, -1, -1);
      MEMORY[0x1B8CB0E70](v57, -1, -1);

      v127[0] = *(v133 + 8);
      (v127[0])(v150, v134);
    }

    else
    {

      v127[0] = *(v133 + 8);
      (v127[0])(v50, v134);
    }

    v1 = v145;
    v64 = 0;
    v143 = 0;
    v146 = OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_error;
    v144 = OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_minDepth;
    v139 = OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_directoryBatchSize;
    v14 = v138 + 56;
    v32 = (v138 + 48);
    v150 = MEMORY[0x1E69E7CC0];
    v140 = v43;
    v65 = v151;
    while (1)
    {
      v66 = objc_autoreleasePoolPush();
      v67 = *(v65 + 16);
      if (v67)
      {
        if ([v67 nextObject])
        {
          sub_1B7CFF0A0();
          v65 = v151;
          swift_unknownObjectRelease();
        }

        else
        {
          v153 = 0u;
          v154 = 0u;
        }

        v155 = v153;
        v156 = v154;
        if (*(&v154 + 1))
        {
          v68 = v152;
          v69 = swift_dynamicCast() ^ 1;
          v70 = v68;
          v1 = v145;
          (*v14)(v70, v69, 1, v13);
          goto LABEL_21;
        }
      }

      else
      {
        v155 = 0u;
        v156 = 0u;
      }

      sub_1B7AEE190(&v155, &qword_1EBA51FA8, qword_1B7D0B230);
      (*v14)(v152, 1, 1, v13);
LABEL_21:
      v71 = *(v146 + v65);
      if (v71)
      {
        swift_willThrow();
        v84 = v71;
        sub_1B7AEE190(v152, &qword_1EBA51FA0, &qword_1B7D0A6D0);
        goto LABEL_37;
      }

      sub_1B7C124A0(v152, v1);
      if ((*v32)(v1, 1, v13) == 1)
      {
        sub_1B7AEE190(v1, &qword_1EBA51FA0, &qword_1B7D0A6D0);
        objc_autoreleasePoolPop(v66);
        if (*(v150 + 2))
        {
          v88 = v141;
          sub_1B7C96998(v150);
          v89 = v130;
          v90 = v129;
          v91 = v132;
          if (v88)
          {

            swift_setDeallocating();
            v92 = *sub_1B7C95D64();
            v93 = *(v92 + 48);
            v94 = *(v92 + 52);
            swift_deallocClassInstance();
            goto LABEL_54;
          }
        }

        else
        {
          v89 = v130;
          v90 = v129;
          v91 = v132;
        }

        sub_1B7CFE410();

        v95 = v28;
        v96 = sub_1B7CFE400();
        v97 = sub_1B7CFEED0();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *&v155 = swift_slowAlloc();
          v99 = v155;
          *v98 = 134218242;
          *(v98 + 4) = v64;
          *(v98 + 12) = 2080;
          v137(v91, &v95[v136], v13);
          v100 = sub_1B7CFDFC0();
          v101 = v91;
          v103 = v102;
          v148(v101, v13);
          v104 = sub_1B7AED1B8(v100, v103, &v155);

          *(v98 + 14) = v104;
          _os_log_impl(&dword_1B7AD5000, v96, v97, "Finished Logging %ld contents of root directory: '%s'", v98, 0x16u);
          sub_1B7AE9168(v99);
          v105 = v99;
          v89 = v130;
          MEMORY[0x1B8CB0E70](v105, -1, -1);
          MEMORY[0x1B8CB0E70](v98, -1, -1);

          v106 = v129;
        }

        else
        {

          v106 = v90;
        }

        (v127[0])(v106, v134);
        sub_1B7CFE410();

        v107 = sub_1B7CFE400();
        v108 = sub_1B7CFEED0();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          *&v155 = v110;
          *v109 = 136315138;
          v111 = sub_1B7C95CE0();
          v113 = sub_1B7AED1B8(v111, v112, &v155);

          *(v109 + 4) = v113;
          _os_log_impl(&dword_1B7AD5000, v107, v108, "Created log file: %s", v109, 0xCu);
          sub_1B7AE9168(v110);
          MEMORY[0x1B8CB0E70](v110, -1, -1);
          MEMORY[0x1B8CB0E70](v109, -1, -1);
        }

        (v127[0])(v89, v134);
        v114 = v128;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v116 = *(Strong + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);
          v137(v114, v135 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v13);
          swift_beginAccess();
          v117 = *(v116 + 344);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v116 + 344) = v117;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v117 = sub_1B7CA1D44(0, v117[2] + 1, 1, v117);
            *(v116 + 344) = v117;
          }

          v119 = v138;
          v121 = v117[2];
          v120 = v117[3];
          if (v121 >= v120 >> 1)
          {
            v126 = sub_1B7CA1D44(v120 > 1, v121 + 1, 1, v117);
            v119 = v138;
            v117 = v126;
          }

          v117[2] = v121 + 1;
          (v147)(v117 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v121, v114, v13);
          *(v116 + 344) = v117;

          swift_setDeallocating();
          v122 = *sub_1B7C95D64();
          v123 = *(v122 + 48);
          v124 = *(v122 + 52);
          swift_deallocClassInstance();
          swift_unknownObjectRelease();
          goto LABEL_54;
        }

LABEL_38:
        swift_setDeallocating();
        v85 = *sub_1B7C95D64();
        v86 = *(v85 + 48);
        v87 = *(v85 + 52);
        swift_deallocClassInstance();
LABEL_54:

        return 1;
      }

      (v147)(v157, v1, v13);
      v65 = v151;
      v72 = *(v151 + 16);
      if (v72)
      {
        v73 = [v72 level];
        if (v73 < *(v28 + v144))
        {
LABEL_11:
          v148(v157, v13);
          goto LABEL_12;
        }
      }

      else if (*(v28 + v144) > 0)
      {
        goto LABEL_11;
      }

      v64 = v143 + 1;
      if (__OFADD__(v143, 1))
      {
        __break(1u);
        goto LABEL_59;
      }

      v74 = sub_1B7CFDFC0();
      v76 = v75;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v77 = v150;
      }

      else
      {
        v77 = sub_1B7AF182C(0, *(v150 + 2) + 1, 1, v150);
      }

      v79 = *(v77 + 2);
      v78 = *(v77 + 3);
      v80 = v79 + 1;
      if (v79 >= v78 >> 1)
      {
        v77 = sub_1B7AF182C((v78 > 1), v79 + 1, 1, v77);
      }

      *(v77 + 2) = v80;
      v81 = &v77[16 * v79];
      *(v81 + 4) = v74;
      *(v81 + 5) = v76;
      v28 = v142;
      if (v80 >= *&v142[v139])
      {
        v82 = v141;
        v83 = v77;
        sub_1B7C96998(v77);
        v141 = v82;
        if (v82)
        {
          v150 = v83;
          v148(v157, v13);
LABEL_37:
          objc_autoreleasePoolPop(v66);

          goto LABEL_38;
        }

        v148(v157, v13);

        v150 = MEMORY[0x1E69E7CC0];
        v143 = v64;
      }

      else
      {
        v150 = v77;
        v148(v157, v13);
        v143 = v64;
      }

      v65 = v151;
      v1 = v145;
LABEL_12:
      objc_autoreleasePoolPop(v66);
    }
  }

  swift_setDeallocating();
  v51 = *sub_1B7C95D64();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_deallocClassInstance();
  return 1;
}

uint64_t sub_1B7C122C0()
{
  v1 = OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_rootDirectory;
  v2 = sub_1B7CFDFF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1B7C12510(v0 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_delegate);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AttachmentStorageDirectoryLogger()
{
  result = qword_1EBA51F90;
  if (!qword_1EBA51F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7C123C0()
{
  result = sub_1B7CFDFF0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7C12468()
{
  v1 = *v0;
  sub_1B7C11184();
  return 1;
}

double sub_1B7C12490@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1B7C124A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B7C12538(uint64_t a1, void (*a2)(uint64_t, void))
{
  sub_1B7AE3F68();
  v32[1] = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD000000000000034, 0x80000001B7D50B60);
  v5 = sub_1B7AF5664(a1);
  sub_1B7AF57A0(v5);

  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);

  v6 = sub_1B7AE3B2C(0, 0xE000000000000000, 0);
  v32[0] = v4;

  sub_1B7C94FDC(v33, v6, v32, v6);
  v31 = a2;

  swift_bridgeObjectRelease_n();
  v7 = v32[0];
  v8 = sub_1B7AEE408(MEMORY[0x1E69E7CC0]);
  v9 = *(v7 + 16);
  if (!v9)
  {
LABEL_16:

    sub_1B7C12930(v8);
    v30 = v29;

    v31(v30, 0);

    return;
  }

  v10 = 0;
  v11 = (v7 + 48);
  while (v10 < *(v7 + 16))
  {
    v14 = *(v11 - 2);
    v13 = *(v11 - 1);
    v15 = *v11;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = v8;
    v17 = sub_1B7AE11D0(v14, v13);
    v19 = v8[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_20;
    }

    v23 = v18;
    if (v8[3] < v22)
    {
      sub_1B7AEE574(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1B7AE11D0(v14, v13);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      if (v23)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v28 = v17;
    sub_1B7CE8360();
    v17 = v28;
    if (v23)
    {
LABEL_3:
      v12 = v17;

      v8 = v32[0];
      *(*(v32[0] + 56) + 8 * v12) = v15;

      goto LABEL_4;
    }

LABEL_12:
    v8 = v32[0];
    *(v32[0] + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v25 = (v8[6] + 16 * v17);
    *v25 = v14;
    v25[1] = v13;
    *(v8[7] + 8 * v17) = v15;

    v26 = v8[2];
    v21 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v21)
    {
      goto LABEL_21;
    }

    v8[2] = v27;
LABEL_4:
    ++v10;
    v11 += 3;
    if (v9 == v10)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1B7CFF740();
  __break(1u);
}

void sub_1B7C12930(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1B7C107FC(&qword_1EBA521F0, &unk_1B7D0A6E0);
    v2 = sub_1B7CFF380();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = sub_1B7CFEE20();
        v21 = sub_1B7AE11D0(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1B7C12C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v5 = sub_1B7CFE980();
  if (a2)
  {
    v6 = sub_1B7CFDEB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1B7C12CF8(void (*a1)(void))
{
  v21 = a1;
  v1 = sub_1B7CFE120();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  sub_1B7AE3F68();
  sub_1B7CFE100();
  IMSharedHelperMessagePriorityTimeout();
  sub_1B7CFE090();
  v9 = *(v2 + 8);
  v9(v6, v1);
  v10 = sub_1B7CFE080();
  v9(v8, v1);
  sub_1B7CFE100();
  IMSharedHelperReadMessagePriorityTimeout();
  sub_1B7CFE090();
  v9(v6, v1);
  v11 = sub_1B7CFE080();
  v9(v8, v1);
  v12 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1B7AE3A9C((v13 > 1), v14 + 1, 1, v12);
  }

  v16 = MEMORY[0x1E69E7360];
  v23 = MEMORY[0x1E69E7360];
  v24 = &off_1F2FA8A78;
  *&v22 = v11;
  v12[2] = v15;
  sub_1B7AE910C(&v22, &v12[5 * v14 + 4]);
  v17 = v12[3];
  v18 = v14 + 2;
  if (v18 > (v17 >> 1))
  {
    v12 = sub_1B7AE3A9C((v17 > 1), v18, 1, v12);
  }

  v23 = v16;
  v24 = &off_1F2FA8A78;
  *&v22 = v10;
  v12[2] = v18;
  sub_1B7AE910C(&v22, &v12[5 * v15 + 4]);
  sub_1B7AE3B2C(0xD0000000000000A4, 0x80000001B7D50AB0, 0);
  sub_1B7AF3FE4(v12);

  v21(0);
}

void sub_1B7C1317C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_1B7AEE088(0, &qword_1EDBE58F8, 0x1E69A8340);
    v5 = sub_1B7CFECC0();
  }

  if (a2)
  {
    v6 = sub_1B7CFDEB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1B7C13228(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1B7AEE088(0, &qword_1EDBE58F8, 0x1E69A8340);
    v4 = sub_1B7CFECE0();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_1B7C132CC(int64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void))
{
  sub_1B7AE3F68();
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v6[2];
  v7 = v6[3];
  v9 = v8 + 1;
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1B7AE3A9C((v7 > 1), v8 + 1, 1, v6);
  }

  v10 = MEMORY[0x1E69E7360];
  v30 = MEMORY[0x1E69E7360];
  v31 = &off_1F2FA8A78;
  *&v29 = a1;
  v6[2] = v9;
  sub_1B7AE910C(&v29, &v6[5 * v8 + 4]);
  v12 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
  }

  else
  {
    v11 = v6[3];
    a1 = v8 + 2;
    if ((v8 + 2) <= (v11 >> 1))
    {
      goto LABEL_5;
    }
  }

  v6 = sub_1B7AE3A9C((v11 > 1), a1, 1, v6);
LABEL_5:
  v30 = v10;
  v31 = &off_1F2FA8A78;
  *&v29 = v12;
  v6[2] = a1;
  sub_1B7AE910C(&v29, &v6[5 * v9 + 4]);
  v13 = v6[3];
  if ((v8 + 3) > (v13 >> 1))
  {
    v6 = sub_1B7AE3A9C((v13 > 1), v8 + 3, 1, v6);
  }

  v30 = v10;
  v31 = &off_1F2FA8A78;
  *&v29 = a2;
  v6[2] = v8 + 3;
  sub_1B7AE910C(&v29, &v6[5 * a1 + 4]);
  v14 = sub_1B7AE3B2C(0xD00000000000047DLL, 0x80000001B7D4F710, 0);
  *&v29 = v5;

  sub_1B7C95060(v6, v14, &v29, v14);

  v15 = v29;
  *&v29 = &v28;
  v16 = MEMORY[0x1E69E7CC0];
  sub_1B7C15630(0xD00000000000001DLL, 0x80000001B7D4FB90, MEMORY[0x1E69E7CC0], 0, &v29);
  if (v28 < v12)
  {
    v17 = -1;
  }

  else
  {
    v17 = v12;
  }

  v26 = v17;
  v18 = *(v15 + 16);
  if (v18)
  {
    sub_1B7AECEEC(0, v18, 0);
    v19 = v16;
    v20 = (v15 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);

      if (v24 >= v23 >> 1)
      {
        sub_1B7AECEEC((v23 > 1), v24 + 1, 1);
      }

      *(v19 + 16) = v24 + 1;
      v25 = v19 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v20 += 3;
      --v18;
    }

    while (v18);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  a3(v19, v26, 0);
}

void sub_1B7C13824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B7CFECC0();
  if (a3)
  {
    v8 = sub_1B7CFDEB0();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, a2);
}

uint64_t sub_1B7C138B8(uint64_t a1, void (*a2)(void))
{
  sub_1B7AE3F68();
  *(&v28 + 1) = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD000000000000267, 0x80000001B7D4F320);
  v5 = sub_1B7AF5664(a1);
  sub_1B7AF57A0(v5);

  MEMORY[0x1B8CADCA0](0xD000000000000118, 0x80000001B7D4F590);

  v6 = sub_1B7AE3B2C(0, 0xE000000000000000, 0);
  *&v28 = v4;

  sub_1B7C950B8(v29, v6, &v28, v6);

  swift_bridgeObjectRelease_n();
  v7 = *(v28 + 16);
  if (v7)
  {
    v25 = a2;
    v8 = (v28 + 64);
    v26 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = *(v8 - 4);
      v9 = *(v8 - 3);
      v11 = *(v8 - 2);
      v27 = *(v8 - 1);
      v12 = *v8;

      v13 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = v13[2];
      v14 = v13[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1B7AE3A9C((v14 > 1), v15 + 1, 1, v13);
      }

      v31 = &off_1F2FA8A78;
      v30 = MEMORY[0x1E69E7360];
      *&v28 = v10;
      v13[2] = v16;
      sub_1B7AE910C(&v28, &v13[5 * v15 + 4]);
      v17 = v13[3];
      v18 = v15 + 2;
      if ((v15 + 2) > (v17 >> 1))
      {
        v13 = sub_1B7AE3A9C((v17 > 1), v15 + 2, 1, v13);
      }

      v31 = &off_1F2FA8A78;
      v30 = MEMORY[0x1E69E7360];
      *&v28 = v9;
      v13[2] = v18;
      sub_1B7AE910C(&v28, &v13[5 * v16 + 4]);
      v19 = v13[3];
      if ((v15 + 3) > (v19 >> 1))
      {
        v13 = sub_1B7AE3A9C((v19 > 1), v15 + 3, 1, v13);
      }

      v31 = &off_1F2FA8A78;
      v30 = MEMORY[0x1E69E7360];
      *&v28 = v11;
      v13[2] = v15 + 3;
      sub_1B7AE910C(&v28, &v13[5 * v18 + 4]);
      sub_1B7AE3B2C(0xD000000000000059, 0x80000001B7D4F6B0, 0);
      sub_1B7AF3FE4(v13);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = v26;
      }

      else
      {
        v20 = sub_1B7AF182C(0, *(v26 + 2) + 1, 1, v26);
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1B7AF182C((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v26 = v20;
      v23 = &v20[16 * v22];
      *(v23 + 4) = v27;
      *(v23 + 5) = v12;
      v8 += 5;
      --v7;
    }

    while (v7);

    a2 = v25;
    v4 = v26;
  }

  else
  {
  }

  a2(v4);
}

uint64_t sub_1B7C13F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  sub_1B7AE3F68();

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6158];
  v18 = MEMORY[0x1E69E6158];
  v19 = &off_1F2FA8B58;
  *&v17 = a1;
  *(&v17 + 1) = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v17, &v9[5 * v11 + 4]);
  v14 = v9[3];

  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v18 = v13;
  v19 = &off_1F2FA8B58;
  *&v17 = a3;
  *(&v17 + 1) = a4;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v17, &v9[5 * v12 + 4]);
  sub_1B7AE3B2C(0xD00000000000002FLL, 0x80000001B7D4F2F0, 0);
  sub_1B7AF3FE4(v9);

  a5(0);
}

uint64_t sub_1B7C14214(sqlite3_int64 a1)
{
  v3 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v75 - v6;
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v9 = *(a1 + 40);
  if (v9 < 0xFFFFFFFF80000000)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v9 > 0x7FFFFFFF)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  result = sqlite3_column_text(*(a1 + 32), v9);
  if (!result)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  result = sub_1B7CFEB80();
  if (v8 == 1)
  {
    goto LABEL_87;
  }

  v11 = *(a1 + 56);
  if (v11 < 0xFFFFFFFF80000000)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v12 = v10;
  v86 = result;
  v13 = *(a1 + 48);
  if (sqlite3_column_type(v13, v11) == 5)
  {
    result = 0;
    v14 = 0;
  }

  else
  {
    result = sqlite3_column_text(v13, v11);
    if (!result)
    {
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    result = sub_1B7CFEB80();
  }

  if (v8 < 3)
  {
    goto LABEL_90;
  }

  v85 = v14;
  v15 = *(a1 + 72);
  if (v15 < 0xFFFFFFFF80000000)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v75[4] = result;
  v16 = *(a1 + 64);
  if (sqlite3_column_type(v16, v15) == 5)
  {
    result = 0;
    v17 = 0;
  }

  else
  {
    result = sqlite3_column_text(v16, v15);
    if (!result)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    result = sub_1B7CFEB80();
  }

  if (v8 == 3)
  {
    goto LABEL_93;
  }

  v75[3] = result;
  v84 = v17;
  v18 = *(a1 + 88);
  if (v18 < 0xFFFFFFFF80000000)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v18 > 0x7FFFFFFF)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v19 = *(a1 + 80);
  if (sqlite3_column_type(v19, *(a1 + 88)) == 5)
  {
    result = 0;
    v83 = 0;
  }

  else
  {
    result = sqlite3_column_text(v19, v18);
    if (!result)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    result = sub_1B7CFEB80();
    v83 = v20;
  }

  if (v8 < 5)
  {
    goto LABEL_96;
  }

  v21 = *(a1 + 104);
  if (v21 < 0xFFFFFFFF80000000)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v21 > 0x7FFFFFFF)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v75[2] = result;
  v22 = *(a1 + 96);
  if (sqlite3_column_type(v22, v21) == 5)
  {
    result = 0;
    v82 = 0;
  }

  else
  {
    result = sqlite3_column_text(v22, v21);
    if (!result)
    {
LABEL_128:
      __break(1u);
      return result;
    }

    result = sub_1B7CFEB80();
    v82 = v23;
  }

  if (v8 == 5)
  {
    goto LABEL_99;
  }

  v24 = *(a1 + 120);
  if (v24 < 0xFFFFFFFF80000000)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v24 > 0x7FFFFFFF)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v75[1] = result;
  result = sqlite3_column_int64(*(a1 + 112), v24);
  if (v8 < 7)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v25 = *(a1 + 136);
  if (v25 < 0xFFFFFFFF80000000)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v25 > 0x7FFFFFFF)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v26 = result;
  result = sqlite3_column_int64(*(a1 + 128), v25);
  if (v8 == 7)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v27 = *(a1 + 152);
  if (v27 < 0xFFFFFFFF80000000)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v27 > 0x7FFFFFFF)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v28 = result;
  result = sqlite3_column_int64(*(a1 + 144), v27);
  if (v8 < 9)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v29 = *(a1 + 168);
  if (v29 < 0xFFFFFFFF80000000)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  if (v29 > 0x7FFFFFFF)
  {
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v79 = result;
  v80 = v28;
  v81 = v26;
  v88 = v8;
  result = sqlite3_column_text(*(a1 + 160), v29);
  if (!result)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v30 = sub_1B7CFEB80();
  v87[0] = 44;
  v87[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v30);
  v73[2] = v87;
  v33 = sub_1B7CA57D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B7C14D3C, v73, v31, v32, v75);
  v78 = v1;
  v34 = *(v33 + 16);
  if (v34)
  {
    v75[0] = v12;
    v76 = a1;
    v77 = v7;
    v87[0] = MEMORY[0x1E69E7CC0];
    result = sub_1B7AECEEC(0, v34, 0);
    v35 = 0;
    v36 = v87[0];
    v37 = (v33 + 56);
    while (v35 < *(v33 + 16))
    {
      v38 = *(v37 - 3);
      v39 = *(v37 - 2);
      v40 = *(v37 - 1);
      v41 = *v37;

      v42 = MEMORY[0x1B8CADC20](v38, v39, v40, v41);
      v44 = v43;

      v87[0] = v36;
      v46 = *(v36 + 16);
      v45 = *(v36 + 24);
      if (v46 >= v45 >> 1)
      {
        result = sub_1B7AECEEC((v45 > 1), v46 + 1, 1);
        v36 = v87[0];
      }

      ++v35;
      *(v36 + 16) = v46 + 1;
      v47 = v36 + 16 * v46;
      *(v47 + 32) = v42;
      *(v47 + 40) = v44;
      v37 += 4;
      if (v34 == v35)
      {

        a1 = v76;
        v7 = v77;
        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_84;
  }

LABEL_54:
  if (v88 == 9)
  {
    goto LABEL_111;
  }

  v48 = *(a1 + 184);
  if (v48 < 0xFFFFFFFF80000000)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (v48 > 0x7FFFFFFF)
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v49 = *(a1 + 176);
  if (sqlite3_column_type(v49, *(a1 + 184)) == 5)
  {
    v50 = 1;
  }

  else
  {
    sqlite3_column_double(v49, v48);
    sub_1B7CFE0D0();
    v50 = 0;
  }

  v51 = sub_1B7CFE120();
  v52 = *(v51 - 8);
  result = (*(v52 + 56))(v7, v50, 1, v51);
  if (v88 < 0xB)
  {
    goto LABEL_114;
  }

  v53 = *(a1 + 200);
  if (v53 < 0xFFFFFFFF80000000)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v53 > 0x7FFFFFFF)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  result = sqlite3_column_int64(*(a1 + 192), v53);
  if (v88 == 11)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v54 = *(a1 + 216);
  if (v54 < 0xFFFFFFFF80000000)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  if (v54 > 0x7FFFFFFF)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v55 = result;
  result = sqlite3_column_int64(*(a1 + 208), v54);
  if (v88 < 0xD)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v56 = *(a1 + 232);
  if (v56 < 0xFFFFFFFF80000000)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v56 > 0x7FFFFFFF)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v77 = result;
  v88 = v55;
  v57 = v7;
  v76 = sqlite3_column_int64(*(a1 + 224), v56);
  v86 = sub_1B7CFEA30();

  if (v85)
  {
    v58 = sub_1B7CFEA30();
  }

  else
  {
    v58 = 0;
  }

  v60 = v82;
  v59 = v83;
  if (v84)
  {
    v61 = sub_1B7CFEA30();

    if (v59)
    {
      goto LABEL_74;
    }

LABEL_77:
    v62 = 0;
    if (v60)
    {
      goto LABEL_75;
    }

LABEL_78:
    v63 = 0;
    goto LABEL_79;
  }

  v61 = 0;
  if (!v83)
  {
    goto LABEL_77;
  }

LABEL_74:
  v62 = sub_1B7CFEA30();

  if (!v60)
  {
    goto LABEL_78;
  }

LABEL_75:
  v63 = sub_1B7CFEA30();

LABEL_79:
  v64 = sub_1B7CFECC0();

  if ((*(v52 + 48))(v57, 1, v51) == 1)
  {
    v65 = 0;
  }

  else
  {
    v65 = sub_1B7CFE0A0();
    (*(v52 + 8))(v57, v51);
  }

  v66 = v80 != 0;
  v67 = v79 != 0;
  v68 = v76 != 0;
  v69 = objc_allocWithZone(MEMORY[0x1E69A8340]);
  LOBYTE(v74) = v68;
  BYTE1(v72) = v67;
  LOBYTE(v72) = v66;
  v70 = v86;
  v71 = [v69 initWithGUID:v86 groupID:v58 originalGroupID:v61 lastAddressedHandleID:v62 lastAddressedSIMID:v63 isFiltered:v81 isBlackholed:v72 isArchived:v64 participants:v65 timeSensitiveRefreshDate:v88 timeSensitiveMessageCount:v77 unreadCount:v74 isPendingReview:?];

  return v71;
}

uint64_t sub_1B7C14A9C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = swift_allocObject();
    v13[2] = a3;
    v13[3] = a4;
    v13[4] = a1;
    v13[5] = a2;
    v13[6] = sub_1B7AF5954;
    v13[7] = v10;
    v17[4] = sub_1B7C14C4C;
    v17[5] = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1B7AE14D0;
    v17[3] = &unk_1F2F9F7D0;
    v14 = _Block_copy(v17);
    _Block_copy(a5);

    IMDPersistencePerformBlock(v14, 1, v15);
    _Block_release(v14);
  }

  else
  {
LABEL_8:
    _Block_copy(a5);
    a5[2](a5, 0);
  }
}

unint64_t sub_1B7C14C5C()
{
  result = qword_1EBA50F50;
  if (!qword_1EBA50F50)
  {
    type metadata accessor for SQLConnectionError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50F50);
  }

  return result;
}

void sub_1B7C14CB4()
{
  v1 = *(v0 + 16);
  v2 = sub_1B7CFECC0();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1B7C14D6C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7C14DF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B7AED284(a1, v20);
  sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
  if (swift_dynamicCast())
  {
    sub_1B7AE910C(&v19, a2);
  }

  else
  {
    sub_1B7AEE088(0, &unk_1EDBE59A0, 0x1E696AEC0);
    if (swift_dynamicCast())
    {
      v3 = v19;
      v4 = sub_1B7CFEA60();
      v6 = v5;
      a2[3] = MEMORY[0x1E69E6158];
      a2[4] = &off_1F2FA8B58;

      *a2 = v4;
      a2[1] = v6;
    }

    else
    {
      sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v7 = v19;
        sub_1B7AEE088(0, &qword_1EBA51FB8, 0x1E696AB90);
        if (([v19 isKindOfClass_] & 1) != 0 || (v8 = objc_msgSend(v19, sel_integerValue), v9 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E696AD98]), sel_initWithInteger_, v8), v10 = sub_1B7CFEFD0(), v9, (v10 & 1) == 0))
        {
          [v19 doubleValue];
          v17 = v16;
          a2[3] = MEMORY[0x1E69E63B0];
          a2[4] = &off_1F2FA8B38;

          *a2 = v17;
        }

        else
        {
          if (([v19 longLongValue] & 0x8000000000000000) != 0 || (v11 = objc_msgSend(v19, sel_unsignedLongLongValue), v12 = objc_msgSend(v19, sel_longLongValue), (v12 & 0x8000000000000000) == 0) && v11 == v12)
          {
            v13 = [v19 longLongValue];
            v14 = MEMORY[0x1E69E7360];
            v15 = &off_1F2FA8A78;
          }

          else
          {
            v13 = [v19 unsignedLongLongValue];
            v14 = MEMORY[0x1E69E76D8];
            v15 = &off_1F2FA8B18;
          }

          a2[3] = v14;
          a2[4] = v15;

          *a2 = v13;
        }
      }

      else
      {
        a2[3] = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
        a2[4] = sub_1B7C1547C();
        *a2 = 0;
        a2[1] = 0;
      }
    }
  }

  return sub_1B7AE9168(v20);
}

void sub_1B7C15098(void *a1)
{
  v2 = v1;
  if (!a1)
  {
    v16 = *(v1 + 16);
    v29 = v2[2];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_10:
      v31 = v16[2];
      v30 = v16[3];
      if (v31 >= v30 >> 1)
      {
        v16 = sub_1B7AE3A9C((v30 > 1), v31 + 1, 1, v16);
      }

      v42 = MEMORY[0x1E69E6158];
      v43 = &off_1F2FA8B58;
      *&v41 = 12576;
      *(&v41 + 1) = 0xE200000000000000;
      v16[2] = v31 + 1;
      sub_1B7AE910C(&v41, &v16[5 * v31 + 4]);
      v2[2] = v16;
      MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
      return;
    }

LABEL_16:
    v16 = sub_1B7AE3A9C(0, v16[2] + 1, 1, v16);
    goto LABEL_10;
  }

  *&v41 = 32;
  *(&v41 + 1) = 0xE100000000000000;
  v3 = a1;
  v4 = [v3 expression];
  v5 = sub_1B7CFEA60();
  v7 = v6;

  MEMORY[0x1B8CADCA0](v5, v7);

  v9 = 32;
  v8 = 0xE100000000000000;
  v10 = [v3 parameters];
  v11 = sub_1B7CFECE0();

  v12 = v2[1];
  v13 = v2[2];
  v14 = *(v11 + 16);
  if (v14)
  {
    v32[1] = v2 + 2;
    v33 = 32;
    v34 = 0xE100000000000000;
    v35 = v3;
    v15 = *v2;
    v36 = v2;
    v37 = v15;
    v40 = MEMORY[0x1E69E7CC0];
    v38 = v12;

    v16 = &v40;
    sub_1B7AF5760(0, v14, 0);
    v17 = 0;
    v18 = v40;
    v19 = v11 + 32;
    v20 = v11;
    while (v17 < *(v20 + 16))
    {
      sub_1B7AED284(v19, v39);
      sub_1B7C14DF0(v39, &v41);
      sub_1B7AE9168(v39);
      v40 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B7AF5760((v21 > 1), v22 + 1, 1);
      }

      ++v17;
      v16 = v42;
      v23 = v43;
      v24 = sub_1B7C1542C(&v41, v42);
      v2 = v32;
      v25 = *(*(v16 - 1) + 64);
      MEMORY[0x1EEE9AC00](v24);
      v27 = v32 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v27);
      sub_1B7CB5BB0(v22, v27, &v40, v16, v23);
      sub_1B7AE9168(&v41);
      v18 = v40;
      v19 += 32;
      if (v14 == v17)
      {

        v3 = v35;
        v9 = v33;
        v8 = v34;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_14:
  MEMORY[0x1B8CADCA0](v9, v8);

  sub_1B7AF3098(v18);
}

uint64_t sub_1B7C1542C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1B7C1547C()
{
  result = qword_1EBA50E68;
  if (!qword_1EBA50E68)
  {
    sub_1B7C1091C(&qword_1EBA51FB0, &unk_1B7D0FA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50E68);
  }

  return result;
}

uint64_t sub_1B7C154F8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 4) != 0)
  {
    sub_1B7CA4FAC(a1, a2, a3);
  }

  v9 = sub_1B7AE3B2C(a1, a2, a4);
  if (v4)
  {
  }

  v11 = v9;
  v12 = MEMORY[0x1E69E7CC0];

  sub_1B7AF1A7C(a3, v11, &v12, v11);

  return v12;
}

uint64_t sub_1B7C1565C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void (*a5)(uint64_t, const char *, uint64_t *, const char *)@<X4>, void **a6@<X8>)
{
  if ((a4 & 4) != 0)
  {
    sub_1B7CA4FAC(a1, a2, a3);
  }

  v13 = sub_1B7AE3B2C(a1, a2, a4);
  if (v6)
  {
  }

  v15 = v13;
  v19 = MEMORY[0x1E69E7CC0];

  a5(a3, v15, &v19, v15);

  v16 = v19;
  if (*(v19 + 16) == 1)
  {
    v17 = *(v19 + 32);

    **a6 = v17;
  }

  else
  {
    type metadata accessor for SQLConnectionError(0);
    sub_1B7C14C5C();
    swift_allocError();
    v18 = *(v16 + 16);

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_1B7C15818@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void **a5@<X8>)
{
  if ((a4 & 4) != 0)
  {
    sub_1B7CA4FAC(a1, a2, a3);
  }

  v11 = sub_1B7AE3B2C(a1, a2, a4);
  if (v5)
  {
  }

  v13 = v11;
  v19 = MEMORY[0x1E69E7CC0];

  sub_1B7AF1A7C(a3, v13, &v19, v13);

  v14 = v19;
  if (v19[2] == 1)
  {
    v16 = v19[4];
    v15 = v19[5];

    v17 = *a5;
    *v17 = v16;
    v17[1] = v15;
  }

  else
  {
    type metadata accessor for SQLConnectionError(0);
    sub_1B7C14C5C();
    swift_allocError();
    v18 = v14[2];

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_1B7C159CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t **a5@<X8>)
{
  if ((a4 & 4) != 0)
  {
    sub_1B7CA4FAC(a1, a2, a3);
  }

  v11 = sub_1B7AE3B2C(a1, a2, a4);
  if (v5)
  {
  }

  v13 = v11;
  v19 = MEMORY[0x1E69E7CC0];

  sub_1B7C9508C(a3, v13, &v19, v13);

  v14 = v19;
  if (v19[2] == 1)
  {
    v15 = v19[4];
    v16 = v19[5];
    sub_1B7C1A208(v15, v16);

    v17 = *a5;
    *v17 = v15;
    v17[1] = v16;
  }

  else
  {
    type metadata accessor for SQLConnectionError(0);
    sub_1B7C14C5C();
    swift_allocError();
    v18 = v14[2];

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

BOOL sub_1B7C15B84()
{
  v1 = type metadata accessor for SQLConnectionError(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v15;

  v5 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1B7AE3A9C((v6 > 1), v7 + 1, 1, v5);
  }

  v12 = MEMORY[0x1E69E6158];
  v13 = &off_1F2FA8B58;
  *&v11 = 0x7372655674616863;
  *(&v11 + 1) = 0xEB000000006E6F69;
  v5[2] = v7 + 1;
  sub_1B7AE910C(&v11, &v5[5 * v7 + 4]);
  sub_1B7C1565C(0xD000000000000029, 0x80000001B7D51060, v5, 0, sub_1B7AF2C24, &v14);
  if (!v0)
  {

    return v15 > 0;
  }

  *&v11 = v0;
  v8 = v0;
  sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    return v9;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1B7C19DBC(v4);
    goto LABEL_9;
  }

  return 0;
}

void sub_1B7C15DB4()
{
  v2 = type metadata accessor for SQLConnectionError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v22 = &v23;

  v7 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1B7AE3A9C((v8 > 1), v9 + 1, 1, v7);
  }

  v20 = MEMORY[0x1E69E6158];
  v21 = &off_1F2FA8B58;
  *&v19 = 0x7372655674616863;
  *(&v19 + 1) = 0xEB000000006E6F69;
  v7[2] = v9 + 1;
  sub_1B7AE910C(&v19, &v7[5 * v9 + 4]);
  sub_1B7C1565C(0xD000000000000029, 0x80000001B7D51060, v7, 0, sub_1B7AF2C24, &v22);
  if (v1)
  {

    *&v19 = v1;
    v10 = v1;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {

LABEL_13:
        if (qword_1EBA50EB8 != -1)
        {
          swift_once();
        }

        v15 = sub_1B7CFE420();
        sub_1B7AD9040(v15, qword_1EBA5DA20);
        v16 = sub_1B7CFE400();
        v17 = sub_1B7CFEED0();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_1B7AD5000, v16, v17, "Chat table doesn't need split migration", v18, 2u);
          MEMORY[0x1B8CB0E70](v18, -1, -1);
        }

        return;
      }

      sub_1B7C19DBC(v5);
    }

    return;
  }

  if (v23 <= 0)
  {
    goto LABEL_13;
  }

  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B7CFE420();
  sub_1B7AD9040(v11, qword_1EBA5DA20);
  v12 = sub_1B7CFE400();
  v13 = sub_1B7CFEF00();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B7AD5000, v12, v13, "Migrating chat table to legacy split chats", v14, 2u);
    MEMORY[0x1B8CB0E70](v14, -1, -1);
  }

  sub_1B7C16194(v6);

  sub_1B7CD2F6C(0, 0x7372655674616863, 0xEB000000006E6F69);
}

void sub_1B7C16194(uint64_t a1)
{
  v206 = *MEMORY[0x1E69E9840];
  v195 = type metadata accessor for SQLConnectionError(0);
  v2 = *(*(v195 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v195);
  v192 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v164 - v5;
  v7 = sub_1B7AE8874(1952540771, 0xE400000000000000);
  v9 = v8;
  *&v202[0] = MEMORY[0x1E69E7CC0];
  *&v203 = 0xD000000000000012;
  *(&v203 + 1) = 0x80000001B7D50BA0;
  MEMORY[0x1B8CADCA0](v7);
  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  v10 = v203;

  v11 = v198;
  v12 = sub_1B7AE3B2C(v10, *(&v10 + 1), 1);
  if (v11)
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_4;
  }

  v198 = v9;
  v178 = 0xD000000000000012;
  v187 = a1;
  sub_1B7C945B4(MEMORY[0x1E69E7CC0], v12, v202);
  v197 = 0;
  v164 = v6;

  swift_bridgeObjectRelease_n();
  v14 = *&v202[0];
  v15 = *(*&v202[0] + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v17 = 0;
    v18 = *&v202[0] + 40;
    v196 = v15 - 1;
    v176 = MEMORY[0x1E69E7CC0];
    v198 = *&v202[0] + 40;
    do
    {
      v19 = (v18 + 16 * v17);
      v20 = v17;
      while (1)
      {
        if (v20 >= *(v14 + 16))
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
        }

        v21 = *(v19 - 1);
        v22 = *v19;
        v23 = v21 == 0x4449574F52 && v22 == 0xE500000000000000;
        if (!v23)
        {
          v24 = *(v19 - 1);
          v25 = *v19;
          if ((sub_1B7CFF590() & 1) == 0)
          {
            break;
          }
        }

        ++v20;
        v19 += 2;
        if (v15 == v20)
        {
          v16 = MEMORY[0x1E69E7CC0];
          goto LABEL_25;
        }
      }

      v26 = v176;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v203 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B7AE70B4(0, *(v26 + 16) + 1, 1);
        v26 = v203;
      }

      v18 = v198;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v193 = *(v26 + 16);
        v194 = v29 + 1;
        sub_1B7AE70B4((v28 > 1), v29 + 1, 1);
        v29 = v193;
        v30 = v194;
        v18 = v198;
        v26 = v203;
      }

      v17 = v20 + 1;
      *(v26 + 16) = v30;
      v176 = v26;
      v31 = v26 + 16 * v29;
      *(v31 + 32) = v21;
      *(v31 + 40) = v22;
      v23 = v196 == v20;
      v16 = MEMORY[0x1E69E7CC0];
    }

    while (!v23);
  }

  else
  {
    v176 = MEMORY[0x1E69E7CC0];
  }

LABEL_25:

  v165 = 0x80000001B7D50BC0;
  v32 = 0x80000001B7D50C10;
  v170 = "M chat WHERE guid ==  ? ";
  v33 = MEMORY[0x1E69A7AC8];
  v169 = "cloudkit_record_id";
  *&v34 = 136315138;
  v185 = v34;
  v168 = xmmword_1B7D0A6F0;
  v171 = 0x80000001B7D50C10;
LABEL_26:
  v35 = *v33;
  *&v203 = sub_1B7CFEA60();
  *(&v203 + 1) = v36;

  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);

  v37 = v203;

  v38 = sub_1B7AE3A9C(0, 1, 1, v16);
  v40 = v38[2];
  v39 = v38[3];
  if (v40 >= v39 >> 1)
  {
    v38 = sub_1B7AE3A9C((v39 > 1), v40 + 1, 1, v38);
  }

  v204 = MEMORY[0x1E69E6158];
  v205 = &off_1F2FA8B58;
  v203 = v37;
  v38[2] = v40 + 1;
  sub_1B7AE910C(&v203, &v38[5 * v40 + 4]);
  v41 = v187;
  v42 = v197;
  v43 = sub_1B7AE3B2C(0xD00000000000004ALL, v165, 0);
  if (v42)
  {

    goto LABEL_4;
  }

  v44 = v43;
  *&v203 = v16;

  sub_1B7AF1A7C(v38, v44, &v203, v44);
  v197 = 0;

  v45 = v203;
  v167 = *(v203 + 16);
  if (!v167)
  {

    goto LABEL_5;
  }

  v46 = 0;
  v173 = v203 + 32;
  v172 = v203;
  while (1)
  {
    if (v46 >= *(v45 + 16))
    {
      goto LABEL_108;
    }

    v181 = v46;
    v47 = (v173 + 16 * v46);
    v48 = *v47;
    v49 = qword_1EBA50EB8;
    v198 = v47[1];

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = sub_1B7CFE420();
    v51 = sub_1B7AD9040(v50, qword_1EBA5DA20);

    v196 = v51;
    v52 = sub_1B7CFE400();
    v53 = sub_1B7CFEEE0();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v203 = v55;
      *v54 = v185;
      *(v54 + 4) = sub_1B7AED1B8(v48, v198, &v203);
      _os_log_impl(&dword_1B7AD5000, v52, v53, "Preparing to split %s", v54, 0xCu);
      sub_1B7AE9168(v55);
      MEMORY[0x1B8CB0E70](v55, -1, -1);
      MEMORY[0x1B8CB0E70](v54, -1, -1);
    }

    v56 = sub_1B7AE3A9C(0, 1, 1, v16);
    v58 = v56[2];
    v57 = v56[3];
    if (v58 >= v57 >> 1)
    {
      v56 = sub_1B7AE3A9C((v57 > 1), v58 + 1, 1, v56);
    }

    v204 = MEMORY[0x1E69E6158];
    v205 = &off_1F2FA8B58;
    *&v203 = v48;
    *(&v203 + 1) = v198;
    v56[2] = v58 + 1;
    sub_1B7AE910C(&v203, &v56[5 * v58 + 4]);
    v59 = v197;
    v60 = sub_1B7AE3B2C(0xD000000000000028, v32, 0);
    if (v59)
    {
      v151 = v59;

      goto LABEL_92;
    }

    v61 = v60;
    *&v203 = v16;

    sub_1B7AF2C24(v56, v61, &v203, v61);
    v197 = 0;
    v62 = v203;
    if (*(v203 + 16) != 1)
    {
      sub_1B7C14C5C();
      v152 = swift_allocError();
      v153 = *(v62 + 16);

      swift_storeEnumTagMultiPayload();
      v151 = v152;
      swift_willThrow();

LABEL_92:
      *&v203 = v151;
      v154 = v151;
      sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
      v155 = v164;
      if (swift_dynamicCast())
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {

          v156 = sub_1B7CFE400();
          v157 = sub_1B7CFEEF0();

          if (os_log_type_enabled(v156, v157))
          {
            v158 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            v160 = v48;
            v161 = v198;
            v162 = v159;
            *&v203 = v159;
            *v158 = v185;
            v163 = sub_1B7AED1B8(v160, v161, &v203);

            *(v158 + 4) = v163;
            _os_log_impl(&dword_1B7AD5000, v156, v157, "No rowID for guid %s", v158, 0xCu);
            sub_1B7AE9168(v162);
            MEMORY[0x1B8CB0E70](v162, -1, -1);
            MEMORY[0x1B8CB0E70](v158, -1, -1);
          }

          else
          {
          }

          goto LABEL_5;
        }

        sub_1B7C19DBC(v155);
      }

      goto LABEL_4;
    }

    v174 = *(v203 + 32);

    v201 = 45;
    v188 = v48;
    v63 = sub_1B7CFEA30();
    *&v203 = 0;
    IMComponentsFromChatGUID();

    v64 = v203;
    if (v203)
    {
      v203 = 0uLL;
      v65 = v64;
      sub_1B7CFEA50();
      v166 = v65;

      v186 = *(&v203 + 1);
      if (*(&v203 + 1))
      {
        break;
      }
    }

    v70 = sub_1B7CFE400();
    v71 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = v198;
      v75 = v73;
      *&v203 = v73;
      *v72 = v185;
      v76 = sub_1B7AED1B8(v188, v74, &v203);

      *(v72 + 4) = v76;
      v41 = v187;
      _os_log_impl(&dword_1B7AD5000, v70, v71, "No chat identifier or style for %s", v72, 0xCu);
      sub_1B7AE9168(v75);
      v77 = v75;
      v32 = v171;
      MEMORY[0x1B8CB0E70](v77, -1, -1);
      MEMORY[0x1B8CB0E70](v72, -1, -1);
    }

    else
    {
    }

LABEL_88:
    v46 = v181 + 1;
    v45 = v172;
    if (v181 + 1 == v167)
    {

      v33 = MEMORY[0x1E69A7AC8];
      goto LABEL_26;
    }
  }

  v182 = v203;
  v66 = IMChatServiceNames();
  v67 = sub_1B7CFECE0();

  v179 = *(v67 + 16);
  if (!v179)
  {
LABEL_86:

    v150 = v197;
    sub_1B7C190F0(v174);
    v197 = v150;
    if (v150)
    {

      goto LABEL_5;
    }

    goto LABEL_88;
  }

  v68 = 0;
  v69 = (v67 + 40);
  v180 = v67;
  while (1)
  {
    if (v68 >= *(v67 + 16))
    {
      goto LABEL_107;
    }

    v80 = v32;
    v82 = *(v69 - 1);
    v81 = *v69;
    v189 = v69;
    swift_bridgeObjectRetain_n();
    v83 = sub_1B7CFE400();
    v84 = sub_1B7CFEEE0();

    v85 = os_log_type_enabled(v83, v84);
    v190 = v68;
    if (v85)
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *&v203 = v87;
      *v86 = v185;
      *(v86 + 4) = sub_1B7AED1B8(v82, v81, &v203);
      _os_log_impl(&dword_1B7AD5000, v83, v84, " ==> adopting service %s", v86, 0xCu);
      sub_1B7AE9168(v87);
      MEMORY[0x1B8CB0E70](v87, -1, -1);
      MEMORY[0x1B8CB0E70](v86, -1, -1);
    }

    v88 = sub_1B7CFEA30();
    v191 = v82;
    v89 = sub_1B7CFEA30();
    v90 = IMCopyGUIDForChat();

    if (!v90)
    {

      v99 = sub_1B7CFE400();
      v100 = sub_1B7CFEEF0();

      v32 = v80;
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *&v203 = v102;
        *v101 = v185;
        v103 = sub_1B7AED1B8(v191, v81, &v203);

        *(v101 + 4) = v103;
        v41 = v187;
        _os_log_impl(&dword_1B7AD5000, v99, v100, "Failed to create service guid for %s", v101, 0xCu);
        sub_1B7AE9168(v102);
        MEMORY[0x1B8CB0E70](v102, -1, -1);
        MEMORY[0x1B8CB0E70](v101, -1, -1);
      }

      else
      {
      }

      v67 = v180;
      v78 = v189;
      v79 = v190;
      v16 = MEMORY[0x1E69E7CC0];
      goto LABEL_50;
    }

    v194 = sub_1B7CFEA60();
    v92 = v91;

    v193 = v92;

    v93 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v95 = v93[2];
    v94 = v93[3];
    v32 = v80;
    if (v95 >= v94 >> 1)
    {
      v93 = sub_1B7AE3A9C((v94 > 1), v95 + 1, 1, v93);
    }

    v204 = MEMORY[0x1E69E6158];
    v205 = &off_1F2FA8B58;
    *&v203 = v194;
    *(&v203 + 1) = v193;
    v93[2] = v95 + 1;
    sub_1B7AE910C(&v203, &v93[5 * v95 + 4]);
    v96 = v197;
    v97 = sub_1B7AE3B2C(0xD000000000000028, v80, 0);
    v16 = MEMORY[0x1E69E7CC0];
    if (v96)
    {
      v98 = v96;

      goto LABEL_66;
    }

    v104 = v97;
    *&v203 = MEMORY[0x1E69E7CC0];

    sub_1B7AF2C24(v93, v104, &v203, v104);
    v197 = 0;
    v105 = v203;
    if (*(v203 + 16) != 1)
    {
      break;
    }

    v106 = v193;

    v107 = sub_1B7CFE400();
    v108 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *&v203 = v110;
      *v109 = v185;
      v111 = sub_1B7AED1B8(v194, v106, &v203);

      *(v109 + 4) = v111;
      v41 = v187;
      _os_log_impl(&dword_1B7AD5000, v107, v108, "Unexpectedly has existing service chat for %s", v109, 0xCu);
      sub_1B7AE9168(v110);
      MEMORY[0x1B8CB0E70](v110, -1, -1);
      MEMORY[0x1B8CB0E70](v109, -1, -1);
    }

    else
    {
    }

LABEL_84:
    v67 = v180;
    v78 = v189;
    v79 = v190;
LABEL_50:
    v68 = v79 + 1;
    v69 = v78 + 2;
    if (v179 == v68)
    {
      goto LABEL_86;
    }
  }

  sub_1B7C14C5C();
  v112 = swift_allocError();
  v197 = v113;
  v114 = *(v105 + 16);

  v41 = v187;
  swift_storeEnumTagMultiPayload();
  v98 = v112;
  swift_willThrow();

LABEL_66:
  *&v203 = v98;
  v115 = v98;
  sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
  v116 = v192;
  if (!swift_dynamicCast())
  {
    goto LABEL_97;
  }

  if (swift_getEnumCaseMultiPayload() == 5)
  {

    v117 = v188;
    v118 = v191;
    sub_1B7C17E0C(v188, v198, v191, v81, v41);
    v120 = v119;
    v122 = v121;
    v197 = sub_1B7C1811C(v117, v198, v118, v81, v41);
    v183 = v124;
    v184 = v123;
    v177 = v125;
    v175 = 0;
    sub_1B7C107FC(&qword_1EBA51FC8, &qword_1B7D0A708);
    inited = swift_initStackObject();
    *(inited + 32) = 1684632935;
    *(inited + 16) = v168;
    v127 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 80) = &off_1F2FA8B58;
    v129 = v193;
    v128 = v194;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v128;
    *(inited + 56) = v129;
    strcpy((inited + 88), "service_name");
    *(inited + 101) = 0;
    *(inited + 102) = -5120;
    *(inited + 104) = v118;
    *(inited + 128) = v127;
    *(inited + 136) = &off_1F2FA8B58;
    *(inited + 112) = v81;

    v130 = sub_1B7C239C8(inited);
    swift_setDeallocating();
    sub_1B7C107FC(&qword_1EBA521B0, &unk_1B7D0A710);
    swift_arrayDestroy();
    v200 = v130;
    if (v122)
    {
      v204 = v127;
      v205 = &off_1F2FA8B58;
      *&v203 = v120;
      *(&v203 + 1) = v122;
      sub_1B7AE910C(&v203, v202);
      v131 = swift_isUniquelyReferenced_nonNull_native();
      v199 = v130;
      sub_1B7CA5D1C(v202, v178, v170 | 0x8000000000000000, v131);
      v200 = v199;
    }

    else
    {
      sub_1B7CE2EA4(v178, v170 | 0x8000000000000000, &v203);
      sub_1B7C1A0C8(&v203);
    }

    v16 = MEMORY[0x1E69E7CC0];
    v132 = v183;
    v41 = v187;
    v133 = v175;
    v134 = v193;
    if (v184)
    {
      v204 = v127;
      v205 = &off_1F2FA8B58;
      *&v203 = v197;
      *(&v203 + 1) = v184;
      sub_1B7AE910C(&v203, v202);

      v135 = v200;
      v136 = swift_isUniquelyReferenced_nonNull_native();
      v199 = v135;
      sub_1B7CA5D1C(v202, 0x64695F70756F7267, 0xE800000000000000, v136);
      v200 = v199;
      if (v132)
      {
        goto LABEL_73;
      }

LABEL_75:
      sub_1B7CE2EA4(0xD000000000000011, v169 | 0x8000000000000000, &v203);
      sub_1B7C1A0C8(&v203);
      v139 = v200;
    }

    else
    {
      sub_1B7CE2EA4(0x64695F70756F7267, 0xE800000000000000, &v203);
      sub_1B7C1A0C8(&v203);
      if (!v132)
      {
        goto LABEL_75;
      }

LABEL_73:
      v204 = v127;
      v205 = &off_1F2FA8B58;
      *&v203 = v177;
      *(&v203 + 1) = v132;
      sub_1B7AE910C(&v203, v202);

      v137 = v200;
      v138 = swift_isUniquelyReferenced_nonNull_native();
      v199 = v137;
      sub_1B7CA5D1C(v202, 0xD000000000000011, v169 | 0x8000000000000000, v138);
      v139 = v199;
      v200 = v199;
    }

    sub_1B7C183B0(v188, v198, v176, v139);
    if (v133)
    {

      goto LABEL_4;
    }

    sub_1B7C17BF8(v194, v134);
    if (v141)
    {
      v197 = 0;

      v142 = sub_1B7CFE400();
      v143 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *&v203 = v145;
        *v144 = v185;
        v146 = sub_1B7AED1B8(v194, v134, &v203);

        *(v144 + 4) = v146;
        v41 = v187;
        _os_log_impl(&dword_1B7AD5000, v142, v143, "Failed to get row ID for %s", v144, 0xCu);
        sub_1B7AE9168(v145);
        MEMORY[0x1B8CB0E70](v145, -1, -1);
        MEMORY[0x1B8CB0E70](v144, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v147 = v140;

      v148 = v174;
      sub_1B7C186D4(v174, v147);
      v149 = v191;
      sub_1B7C18994(v148, v147, v191, v81);
      sub_1B7C18D20(v197, v184, v177, v183, v147, v149, v81);
      v197 = 0;
    }

    v32 = v171;
    goto LABEL_84;
  }

  sub_1B7C19DBC(v116);
LABEL_97:

LABEL_4:

LABEL_5:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1B7C17B04()
{
  v1 = v0;
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7CFE420();
  sub_1B7AD9040(v2, qword_1EBA5DA20);
  v3 = sub_1B7CFE400();
  v4 = sub_1B7CFEF00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, v4, "Migrating chat table to legacy split chats without versioning", v5, 2u);
    MEMORY[0x1B8CB0E70](v5, -1, -1);
  }

  sub_1B7C16194(*v1);
}

void sub_1B7C17BF8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SQLConnectionError(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v16;

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v14 = MEMORY[0x1E69E6158];
  v15 = &off_1F2FA8B58;
  *&v13 = a1;
  *(&v13 + 1) = a2;
  v9[2] = v11 + 1;
  sub_1B7AE910C(&v13, &v9[5 * v11 + 4]);
  sub_1B7C1565C(0xD000000000000028, 0x80000001B7D50C10, v9, 0, sub_1B7AF2C24, &v17);
  if (v2)
  {

    *&v13 = v2;
    v12 = v2;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {

        return;
      }

      sub_1B7C19DBC(v8);
    }
  }

  else
  {
  }
}

void sub_1B7C17E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v25 = a3;
  v24 = type metadata accessor for SQLConnectionError(0);
  v8 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B7CFE420();
  sub_1B7AD9040(v11, qword_1EBA5DA20);
  v12 = sub_1B7CFE400();
  v13 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B7AD5000, v12, v13, " ==> executing: copying ckRecordID", v14, 2u);
    MEMORY[0x1B8CB0E70](v14, -1, -1);
  }

  v32 = &v31;

  v15 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = v15[2];
  v16 = v15[3];
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1B7AE3A9C((v16 > 1), v17 + 1, 1, v15);
  }

  v19 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1E69E6158];
  v30 = &off_1F2FA8B58;
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v15[2] = v18;
  sub_1B7AE910C(&v28, &v15[5 * v17 + 4]);
  v20 = v15[3];

  if ((v17 + 2) > (v20 >> 1))
  {
    v15 = sub_1B7AE3A9C((v20 > 1), v17 + 2, 1, v15);
  }

  v29 = v19;
  v30 = &off_1F2FA8B58;
  *&v28 = v25;
  *(&v28 + 1) = a4;
  v15[2] = v17 + 2;
  sub_1B7AE910C(&v28, &v15[5 * v18 + 4]);
  v21 = v27;
  sub_1B7C15818(0xD00000000000008ALL, 0x80000001B7D50FA0, v15, 0, &v32);
  if (v21)
  {

    *&v28 = v21;
    v22 = v21;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {

        return;
      }

      sub_1B7C19DBC(v10);
    }
  }

  else
  {
  }
}

uint64_t sub_1B7C1811C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B7C19380(a1, a2, a5);
  if (!v6)
  {
    v10 = v9;
    v11 = *MEMORY[0x1E69A6AD8];
    v12 = sub_1B7CFEA60();
    if (*(v10 + 16))
    {
      v14 = sub_1B7AE11D0(v12, v13);
      v16 = v15;

      if (v16)
      {
        v17 = *(*(v10 + 56) + 8 * v14);
        if (v17[2])
        {
          v5 = v17[4];
          v18 = v17[5];

          goto LABEL_8;
        }
      }
    }

    else
    {
    }

    v5 = 0;
LABEL_8:
    sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0A6F0;
    v20 = *MEMORY[0x1E69A7AD8];
    *(inited + 32) = sub_1B7CFEA60();
    *(inited + 40) = v21;
    v22 = *MEMORY[0x1E69A7AE0];
    v23 = sub_1B7CFEA60();
    *(inited + 48) = v23;
    *(inited + 56) = v24;
    v38[0] = a3;
    v38[1] = a4;
    MEMORY[0x1EEE9AC00](v23);
    v37[2] = v38;
    v25 = sub_1B7C19B50(sub_1B7C1A26C, v37, inited);
    v38[11] = 0;
    swift_setDeallocating();
    swift_arrayDestroy();
    if ((v25 & 1) == 0)
    {

      return v5;
    }

    v26 = sub_1B7CFEA30();
    v27 = IMChatLookupDomainForServiceName();

    if (!v27)
    {
      goto LABEL_15;
    }

    v28 = sub_1B7CFEA60();
    if (*(v10 + 16))
    {
      v30 = sub_1B7AE11D0(v28, v29);
      v32 = v31;

      if (v32)
      {
        v33 = *(*(v10 + 56) + 8 * v30);

        if (v33[2])
        {
          v35 = v33[4];
          v34 = v33[5];

          return v5;
        }

LABEL_15:

        return v5;
      }
    }

    else
    {
    }
  }

  return v5;
}

uint64_t sub_1B7C183B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];

  v10 = sub_1B7C19E18(a3, a4, &v25);

  *&v19 = v10;
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v11 = sub_1B7CFEA10();
  v13 = v12;

  v22 = 0;
  v23 = 0xE000000000000000;
  v24 = v9;
  MEMORY[0x1B8CADCA0](0xD000000000000012, 0x80000001B7D50EB0);
  sub_1B7CB5600(a3);
  MEMORY[0x1B8CADCA0](0x5443454C45530A29, 0xE900000000000020);
  MEMORY[0x1B8CADCA0](v11, v13);

  sub_1B7AF3098(v14);
  MEMORY[0x1B8CADCA0](0xD00000000000001DLL, 0x80000001B7D50ED0);
  v15 = v9;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1B7AE3A9C(0, v9[2] + 1, 1, v9);
  }

  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1B7AE3A9C((v16 > 1), v17 + 1, 1, v15);
  }

  v20 = MEMORY[0x1E69E6158];
  v21 = &off_1F2FA8B58;
  *&v19 = a1;
  *(&v19 + 1) = a2;
  v15[2] = v17 + 1;
  sub_1B7AE910C(&v19, &v15[5 * v17 + 4]);
  v24 = v15;

  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);

  sub_1B7AE3B2C(v22, v23, 0);
  if (v4)
  {
  }

  else
  {
    sub_1B7AF3FE4(v15);
  }
}

uint64_t sub_1B7C186D4(uint64_t a1, uint64_t a2)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B7CFE420();
  sub_1B7AD9040(v5, qword_1EBA5DA20);
  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&dword_1B7AD5000, v6, v7, " ==> executing: copy handle associates from chat %ld to chat %ld", v8, 0x16u);
    MEMORY[0x1B8CB0E70](v8, -1, -1);
  }

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6530];
  v17 = MEMORY[0x1E69E6530];
  v18 = &off_1F2FA89F8;
  *&v16 = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v16, &v9[5 * v11 + 4]);
  v14 = v9[3];
  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v17 = v13;
  v18 = &off_1F2FA89F8;
  *&v16 = a1;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v16, &v9[5 * v12 + 4]);
  sub_1B7AE3B2C(0xD00000000000008BLL, 0x80000001B7D50E20, 0);
  if (!v2)
  {
    sub_1B7AF3FE4(v9);
  }
}

uint64_t sub_1B7C18994(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B7CFE420();
  sub_1B7AD9040(v8, qword_1EBA5DA20);

  v9 = sub_1B7CFE400();
  v10 = sub_1B7CFEEE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v23 = v12;
    *v11 = 134218498;
    *(v11 + 4) = a1;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a2;
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_1B7AED1B8(a3, a4, &v23);
    _os_log_impl(&dword_1B7AD5000, v9, v10, " ==> executing: moving messages from chat %ld to chat %ld on service %s", v11, 0x20u);
    sub_1B7AE9168(v12);
    MEMORY[0x1B8CB0E70](v12, -1, -1);
    MEMORY[0x1B8CB0E70](v11, -1, -1);
  }

  v13 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = v13[2];
  v14 = v13[3];
  v16 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1B7AE3A9C((v14 > 1), v15 + 1, 1, v13);
  }

  v17 = MEMORY[0x1E69E6530];
  v24 = MEMORY[0x1E69E6530];
  v25 = &off_1F2FA89F8;
  *&v23 = a2;
  v13[2] = v16;
  sub_1B7AE910C(&v23, &v13[5 * v15 + 4]);
  v18 = v13[3];
  v19 = v15 + 2;
  if ((v15 + 2) > (v18 >> 1))
  {
    v13 = sub_1B7AE3A9C((v18 > 1), v15 + 2, 1, v13);
  }

  v24 = v17;
  v25 = &off_1F2FA89F8;
  *&v23 = a1;
  v13[2] = v19;
  sub_1B7AE910C(&v23, &v13[5 * v16 + 4]);
  v20 = v13[3];

  if ((v15 + 3) > (v20 >> 1))
  {
    v13 = sub_1B7AE3A9C((v20 > 1), v15 + 3, 1, v13);
  }

  v24 = MEMORY[0x1E69E6158];
  v25 = &off_1F2FA8B58;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  v13[2] = v15 + 3;
  sub_1B7AE910C(&v23, &v13[5 * v19 + 4]);
  v21 = v26;
  sub_1B7AE3B2C(0xD00000000000009DLL, 0x80000001B7D50D80, 0);
  if (!v21)
  {
    sub_1B7AF3FE4(v13);
  }
}

void sub_1B7C18D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v42 = a3;
  v44 = a1;
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v14 = sub_1B7CFE420();
  sub_1B7AD9040(v14, qword_1EBA5DA20);
  v15 = sub_1B7CFE400();
  v16 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v15, v16))
  {
    v41 = a2;
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1B7AD5000, v15, v16, " ==> executing: assigning identifiers to new legacy chats", v17, 2u);
    v8 = v7;
    a2 = v41;
    MEMORY[0x1B8CB0E70](v17, -1, -1);
  }

  if (a2)
  {
    v18 = *MEMORY[0x1E69A6AD8];
    v19 = sub_1B7CFEA60();
    sub_1B7C1988C(v44, a2, v19, v20, a5, 1);
    if (v8)
    {
LABEL_19:

      return;
    }

    v21 = *MEMORY[0x1E69A7AF0];
    if (sub_1B7CFEA60() == a6 && v22 == a7)
    {
      goto LABEL_15;
    }

    v24 = sub_1B7CFF590();

    if ((v24 & 1) == 0)
    {
      v25 = sub_1B7CFEA30();
      v26 = IMChatLookupDomainForServiceName();

      if (v26)
      {
        v41 = v26;
        v27 = sub_1B7CFEA60();
        sub_1B7C1988C(v44, a2, v27, v28, a5, 0);

LABEL_15:
      }
    }
  }

  if (a4)
  {
    v29 = sub_1B7CFEA30();
    v30 = IMChatLookupDomainForServiceName();

    if (v30)
    {
      sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B7D0A6F0;
      v32 = *MEMORY[0x1E69A7AD8];
      *(inited + 32) = sub_1B7CFEA60();
      *(inited + 40) = v33;
      v34 = *MEMORY[0x1E69A7AE0];
      v35 = sub_1B7CFEA60();
      *(inited + 48) = v35;
      *(inited + 56) = v36;
      v43[0] = a6;
      v43[1] = a7;
      MEMORY[0x1EEE9AC00](v35);
      v40[2] = v43;
      v37 = sub_1B7C19B50(sub_1B7C1A130, v40, inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v38 = sub_1B7CFEA60();
      sub_1B7C1988C(v42, a4, v38, v39, a5, v37 & 1);

      goto LABEL_19;
    }
  }
}

uint64_t sub_1B7C190F0(uint64_t a1)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B7CFE420();
  sub_1B7AD9040(v3, qword_1EBA5DA20);
  v4 = sub_1B7CFE400();
  v5 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v4, v5, " ==> executing: deleting chat with ROWID %ld", v6, 0xCu);
    MEMORY[0x1B8CB0E70](v6, -1, -1);
  }

  v7 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1B7AE3A9C((v8 > 1), v9 + 1, 1, v7);
  }

  v12 = MEMORY[0x1E69E6530];
  v13 = &off_1F2FA89F8;
  *&v11 = a1;
  v7[2] = v9 + 1;
  sub_1B7AE910C(&v11, &v7[5 * v9 + 4]);
  sub_1B7AE3B2C(0xD000000000000022, 0x80000001B7D51030, 0);
  if (!v1)
  {
    sub_1B7AF3FE4(v7);
  }
}

uint64_t sub_1B7C19380(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EBA50EB8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v8 = sub_1B7CFE420();
    sub_1B7AD9040(v8, qword_1EBA5DA20);
    v9 = sub_1B7CFE400();
    v10 = sub_1B7CFEEE0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B7AD5000, v9, v10, " ==> executing: copying domain identifiers", v11, 2u);
      MEMORY[0x1B8CB0E70](v11, -1, -1);
    }

    v12 = MEMORY[0x1E69E7CC0];
    v13 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v15 = v13[2];
    v14 = v13[3];
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1B7AE3A9C((v14 > 1), v15 + 1, 1, v13);
    }

    v47 = MEMORY[0x1E69E6158];
    v48 = &off_1F2FA8B58;
    *&v46 = a1;
    *(&v46 + 1) = a2;
    v13[2] = v15 + 1;
    sub_1B7AE910C(&v46, &v13[5 * v15 + 4]);
    a2 = 0x80000001B7D50EF0;
    v16 = a3;
    v17 = sub_1B7AE3B2C(0xD0000000000000A4, 0x80000001B7D50EF0, 0);
    if (v4)
    {
      break;
    }

    v18 = v17;
    *&v46 = v12;

    sub_1B7AEA964(v13, v18, &v46, v18);

    a3 = v46;
    v16 = sub_1B7AF1238(MEMORY[0x1E69E7CC0]);
    v45 = *(a3 + 16);
    if (!v45)
    {
      break;
    }

    v19 = 0;
    v4 = (a3 + 56);
    v44 = a3;
    while (v19 < *(a3 + 16))
    {
      a1 = *(v4 - 3);
      a3 = *(v4 - 2);
      a2 = *v4;
      v49 = *(v4 - 1);
      v22 = v16[2];

      if (v22)
      {

        v23 = sub_1B7AE11D0(a1, a3);
        v25 = v24;

        v26 = MEMORY[0x1E69E7CC0];
        if ((v25 & 1) == 0)
        {
          goto LABEL_17;
        }

        v26 = *(v16[7] + 8 * v23);
      }

      else
      {
        v26 = MEMORY[0x1E69E7CC0];
      }

LABEL_17:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1B7AF182C(0, *(v26 + 2) + 1, 1, v26);
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1B7AF182C((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[16 * v28];
      *(v29 + 4) = v49;
      *(v29 + 5) = a2;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v46 = v16;
      v31 = sub_1B7AE11D0(a1, a3);
      v33 = v16[2];
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_33;
      }

      v37 = v32;
      if (v16[3] < v36)
      {
        sub_1B7CE4030(v36, isUniquelyReferenced_nonNull_native);
        v31 = sub_1B7AE11D0(a1, a3);
        if ((v37 & 1) != (v38 & 1))
        {
          result = sub_1B7CFF740();
          __break(1u);
          return result;
        }

LABEL_26:
        if (v37)
        {
          goto LABEL_9;
        }

        goto LABEL_27;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }

      v42 = v31;
      sub_1B7CE84C8();
      v31 = v42;
      if (v37)
      {
LABEL_9:
        v20 = v31;

        v16 = v46;
        v21 = *(v46 + 56);
        a1 = *(v21 + 8 * v20);
        *(v21 + 8 * v20) = v26;

        goto LABEL_10;
      }

LABEL_27:
      v16 = v46;
      *(v46 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v39 = (v16[6] + 16 * v31);
      *v39 = a1;
      v39[1] = a3;
      *(v16[7] + 8 * v31) = v26;

      v40 = v16[2];
      v35 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v35)
      {
        goto LABEL_34;
      }

      v16[2] = v41;
LABEL_10:
      ++v19;
      v4 += 4;
      a3 = v44;
      if (v45 == v19)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_31:

  return v16;
}

uint64_t sub_1B7C1988C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v10 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1B7AE3A9C((v11 > 1), v12 + 1, 1, v10);
  }

  v14 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69E6158];
  v27 = &off_1F2FA8B58;
  *&v25 = a1;
  *(&v25 + 1) = a2;
  v10[2] = v13;
  sub_1B7AE910C(&v25, &v10[5 * v12 + 4]);
  v15 = v10[3];
  v16 = v12 + 2;

  if ((v12 + 2) > (v15 >> 1))
  {
    v10 = sub_1B7AE3A9C((v15 > 1), v12 + 2, 1, v10);
  }

  v26 = v14;
  v27 = &off_1F2FA8B58;
  *&v25 = a3;
  *(&v25 + 1) = a4;
  v10[2] = v16;
  sub_1B7AE910C(&v25, &v10[5 * v13 + 4]);
  v17 = v10[3];
  v18 = v12 + 3;
  if ((v12 + 3) > (v17 >> 1))
  {
    v10 = sub_1B7AE3A9C((v17 > 1), v12 + 3, 1, v10);
  }

  v19 = MEMORY[0x1E69E6530];
  v26 = MEMORY[0x1E69E6530];
  v27 = &off_1F2FA89F8;
  *&v25 = a6;
  v10[2] = v18;
  sub_1B7AE910C(&v25, &v10[5 * v16 + 4]);
  v20 = v10[3];
  if ((v12 + 4) > (v20 >> 1))
  {
    v10 = sub_1B7AE3A9C((v20 > 1), v12 + 4, 1, v10);
  }

  v26 = v19;
  v27 = &off_1F2FA89F8;
  *&v25 = a5;
  v10[2] = v12 + 4;
  sub_1B7AE910C(&v25, &v10[5 * v18 + 4]);
  v21 = v28;
  sub_1B7AE3B2C(0xD0000000000000FFLL, 0x80000001B7D50C80, 0);
  if (!v21)
  {
    sub_1B7AF3FE4(v10);
  }
}

uint64_t sub_1B7C19B50(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B7C19BFC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1B8CAE380](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1B7CFF120();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1B7C19D24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1B7C1A14C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B7AE910C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1B7C19DBC(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C19E18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v34 = a3;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v3, 0);
    v4 = v40;
    v7 = (a1 + 40);
    v33 = a2;
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v10 = *(a2 + 16);

      if (v10 && (v11 = sub_1B7AE11D0(v9, v8), (v12 & 1) != 0))
      {
        sub_1B7AE90A8(*(a2 + 56) + 40 * v11, &v35);
        sub_1B7AE910C(&v35, &v38);
        sub_1B7AE90A8(&v38, &v35);
        v13 = v34;
        v14 = *v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v13 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v14 = sub_1B7AE3A9C(0, v14[2] + 1, 1, v14);
          *v34 = v14;
        }

        v17 = v14[2];
        v16 = v14[3];
        if (v17 >= v16 >> 1)
        {
          v30 = sub_1B7AE3A9C((v16 > 1), v17 + 1, 1, v14);
          *v34 = v30;
        }

        v18 = v36;
        v19 = v37;
        v20 = sub_1B7C1542C(&v35, v36);
        v21 = *(*(v18 - 8) + 64);
        MEMORY[0x1EEE9AC00](v20);
        v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v24 + 16))(v23);
        sub_1B7C19D24(v17, v23, v34, v18, v19);
        sub_1B7AE9168(&v35);
        sub_1B7AE9168(&v38);

        v25 = 0xE100000000000000;
        v26 = 63;
        a2 = v33;
      }

      else
      {
        v38 = 11875;
        v39 = 0xE200000000000000;
        MEMORY[0x1B8CADCA0](v9, v8);

        v26 = v38;
        v25 = v39;
      }

      v40 = v4;
      v28 = *(v4 + 16);
      v27 = *(v4 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1B7AECEEC((v27 > 1), v28 + 1, 1);
        v4 = v40;
      }

      *(v4 + 16) = v28 + 1;
      v29 = v4 + 16 * v28;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      v7 += 2;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1B7C1A0C8(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA51FD0, qword_1B7D11D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1B7C1A14C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1B7C1A1B0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B7CFF590() & 1;
  }
}

uint64_t sub_1B7C1A208(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t StorageInspectionLoggable.logger.getter()
{
  static StorageInspectionLoggable.category.getter();

  return sub_1B7CFE410();
}

unint64_t static StorageInspectionLoggable.category.getter()
{
  sub_1B7CFF210();

  v0 = sub_1B7CFF8D0();
  MEMORY[0x1B8CADCA0](v0);

  return 0xD000000000000012;
}

uint64_t static StorageInspectionLoggable.logger.getter()
{
  static StorageInspectionLoggable.category.getter();

  return sub_1B7CFE410();
}

uint64_t sub_1B7C1A3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7CFDEA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - v9;
  v27 = a3;
  v11 = sub_1B7CFE1B0();
  sub_1B7CFE190();
  sub_1B7C107FC(&qword_1EBA51FD8, &qword_1B7D0AA40);
  sub_1B7C107FC(&qword_1EBA51FE0, &qword_1B7D0AA48);
  if (swift_dynamicCast())
  {
    sub_1B7AE910C(v25, v28);
    sub_1B7C107FC(&qword_1EBA51FF0, &qword_1B7D0AA58);
    v12 = (sub_1B7C107FC(&qword_1EBA52160, &qword_1B7D0AA60) - 8);
    v13 = *(*v12 + 72);
    v14 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B7D0A7B0;
    v16 = v15 + v14;
    v17 = (v16 + v12[14]);
    v24[1] = v10;

    sub_1B7CFE1A0();
    sub_1B7CFDE90();
    (*(v7 + 8))(v10, v6);
    v18 = *(a2 + 24);
    *v17 = *(a2 + 16);
    v17[1] = v18;
    v17[2] = MEMORY[0x1E69E7CC0];

    v19 = sub_1B7C23AFC(v15);
    swift_setDeallocating();
    sub_1B7AEE190(v16, &qword_1EBA52160, &qword_1B7D0AA60);
    swift_deallocClassInstance();
    *&v25[0] = a2;
    *(&v25[0] + 1) = v19;
    v20 = v29;
    v21 = v30;
    sub_1B7AE9124(v28, v29);
    v22 = (*(v21 + 8))(v25, v20, v21);

    (*(*(v11 - 8) + 8))(a1, v11);

    sub_1B7AE9168(v28);
    return v22;
  }

  else
  {
    (*(*(v11 - 8) + 8))(a1, v11);

    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1B7AEE190(v25, &qword_1EBA51FE8, &qword_1B7D0AA50);
    return 0;
  }
}

uint64_t sub_1B7C1A748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v37 = *(a2 + 24);
  v38 = a4;
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_conformsToProtocol2();
  if (AssociatedTypeWitness)
  {
    v20 = v19 == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = 21321;
  if (v20)
  {
    v21 = 15677;
  }

  v36 = v21;
  sub_1B7CFDE10();
  v22 = v35;
  v34 = (*(a3 + 8))(v35, v11, a3);
  v24 = v23;
  v39 = v25;
  (*(v12 + 8))(v15, v11);
  sub_1B7CFDE20();
  v26 = v37;
  v27 = (*(v38 + 8))(v22, v37);
  v29 = v28;
  v31 = v30;
  (*(v5 + 8))(v9, v26);
  v40 = 40;
  v41 = 0xE100000000000000;
  MEMORY[0x1B8CADCA0](v34, v24);

  MEMORY[0x1B8CADCA0](8233, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](v36, 0xE200000000000000);

  MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](v27, v29);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  v32 = v40;
  v40 = v39;
  sub_1B7AF3098(v31);
  return v32;
}

uint64_t sub_1B7C1AA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *(a2 + 24);
  v39 = a4;
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (swift_conformsToProtocol2())
  {
    v20 = AssociatedTypeWitness == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = 15649;
  }

  else
  {
    v21 = 0x544F4E205349;
  }

  v22 = 0xE600000000000000;
  if (v20)
  {
    v22 = 0xE200000000000000;
  }

  v36 = v22;
  v37 = v21;
  sub_1B7CFDE70();
  v35 = (*(a3 + 8))(a1, v12, a3);
  v24 = v23;
  v40 = v25;
  (*(v13 + 8))(v16, v12);
  sub_1B7CFDE80();
  v26 = a1;
  v27 = v38;
  v28 = (*(v39 + 8))(v26, v38);
  v30 = v29;
  v32 = v31;
  (*(v6 + 8))(v10, v27);
  v41 = 40;
  v42 = 0xE100000000000000;
  MEMORY[0x1B8CADCA0](v35, v24);

  MEMORY[0x1B8CADCA0](8233, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](v37, v36);

  MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](v28, v30);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  v33 = v41;
  v41 = v40;
  sub_1B7AF3098(v32);
  return v33;
}

BOOL sub_1B7C1AD34(void *a1, uint64_t a2)
{
  v3 = *(a2 - 16);
  v2 = *(a2 - 8);
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  return sub_1B7C1C6FC();
}

uint64_t sub_1B7C1AD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a1;
  v43 = a4;
  v6 = sub_1B7CFDE00();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a2 + 24);
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFDD70();
  v21 = a3;
  v22 = *(a3 + 8);
  v23 = v42;
  v24 = v22(v42, v16, v21);
  v39 = v25;
  v40 = v24;
  v46 = v26;
  (*(v17 + 8))(v20, v16);
  sub_1B7CFDD80();
  v27 = v23;
  v28 = v41;
  v29 = (*(v43 + 8))(v27, v41);
  v31 = v30;
  v33 = v32;
  (*(v11 + 8))(v15, v28);
  sub_1B7CFDD60();
  v34 = sub_1B7C1B088();
  v36 = v35;
  (*(v44 + 8))(v10, v45);
  v47 = 40;
  v48 = 0xE100000000000000;
  MEMORY[0x1B8CADCA0](v40, v39);

  MEMORY[0x1B8CADCA0](8233, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](v34, v36);

  MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](v29, v31);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  v37 = v47;
  v47 = v46;
  sub_1B7AF3098(v33);
  return v37;
}

uint64_t sub_1B7C1B088()
{
  v1 = v0;
  v2 = sub_1B7CFDE00();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6968C40])
  {
    return 60;
  }

  if (v7 == *MEMORY[0x1E6968C30])
  {
    return 15676;
  }

  if (v7 == *MEMORY[0x1E6968C28])
  {
    return 62;
  }

  if (v7 == *MEMORY[0x1E6968C38])
  {
    return 15678;
  }

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000015, 0x80000001B7D51150);
  sub_1B7CFF320();
  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

uint64_t sub_1B7C1B294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C107FC(&unk_1EBA52600, &qword_1B7D0AA78);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7D0A7B0;
  *(v5 + 56) = *(a2 + 16);
  *(v5 + 64) = a3;
  sub_1B7C1A14C((v5 + 32));
  MEMORY[0x1B8CACF70](a2);
  return 63;
}

uint64_t sub_1B7C1B328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1B8CACF90](v10);
  v11 = (*(a3 + 8))(a1, v5, a3);
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  v16[0] = v11;
  v16[1] = v13;
  MEMORY[0x1B8CADCA0](46, 0xE100000000000000);
  v14 = sub_1B7C1B484(a1);
  MEMORY[0x1B8CADCA0](v14);

  return v16[0];
}

uint64_t sub_1B7C1B484(uint64_t a1)
{
  sub_1B7CFDE40();
  v2 = sub_1B7C4BE8C();
  v4 = v3;

  v5 = *(*a1 + 48);

  v6 = sub_1B7CFEC30();
  if (*(v5 + 16))
  {
    v8 = sub_1B7AE11D0(v6, v7);
    v10 = v9;

    if (v10)
    {

      v11 = (*(v5 + 56) + 16 * v8);
      v12 = *v11;
      v13 = v11[1];

      return v12;
    }
  }

  else
  {
  }

  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](v2, v4);
  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

uint64_t sub_1B7C1B604(uint64_t a1)
{
  v2 = sub_1B7CFDD90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8;
  sub_1B7CFDE90();
  v10 = *(a1 + 8);
  if (*(v10 + 16) && (v11 = sub_1B7C40208(v9), (v12 & 1) != 0))
  {
    v13 = (*(v10 + 56) + 24 * v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = *(v3 + 8);

    v17(v9, v2);
    return v14;
  }

  else
  {
    v19 = *(v3 + 8);
    v19(v9, v2);
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D51100);
    sub_1B7CFDE90();
    sub_1B7CFF320();
    v19(v7, v2);
    result = sub_1B7CFF340();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7C1B8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v41 = a7;
  v42 = a8;
  v38 = a4;
  v39 = a6;
  v37 = *(a2 + 24);
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23(v22);
  v36 = (*(a3 + 8))(a1, v17, a3);
  v25 = v24;
  v40 = v26;
  (*(v18 + 8))(v21, v17);
  v39(a2);
  v27 = v37;
  v28 = (*(v38 + 8))(a1, v37);
  v30 = v29;
  v32 = v31;
  (*(v11 + 8))(v15, v27);
  v43 = 40;
  v44 = 0xE100000000000000;
  MEMORY[0x1B8CADCA0](v36, v25);

  MEMORY[0x1B8CADCA0](v41, v42);
  MEMORY[0x1B8CADCA0](v28, v30);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  v33 = v43;
  v43 = v40;
  sub_1B7AF3098(v32);
  return v33;
}

uint64_t sub_1B7C1BB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFDE60();
  v10 = (*(a3 + 8))(a1, v5, a3);
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  v14[0] = 0x2820544F4ELL;
  v14[1] = 0xE500000000000000;
  MEMORY[0x1B8CADCA0](v10, v12);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  return v14[0];
}

uint64_t sub_1B7C1BC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1B8CACF00](v10);
  v11 = (*(a3 + 8))(a1, v5, a3);
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t sub_1B7C1BDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v44 = a1;
  v6 = sub_1B7C107FC(&qword_1EBA51FF8, &qword_1B7D0AA68);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = v43 - v8;
  v47 = sub_1B7C107FC(&qword_1EBA52000, &qword_1B7D0AA70);
  v45 = *(v47 - 8);
  v9 = *(v45 + 64);
  v10 = MEMORY[0x1EEE9AC00](v47);
  v43[0] = v43 - v11;
  v12 = *(a2 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v43[1] = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v43 - v18;
  v20 = *(a2 + 16);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v24 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1B8CACEE0](a2);
  v25 = a3;
  v26 = *(a3 + 8);
  v27 = v44;
  v49 = v26(v44, v20, v25);
  v50 = v28;
  v51 = v29;
  (*(v21 + 8))(v24, v20);
  sub_1B7CFDDB0();
  v48 = (*(v48 + 8))(v27, v12);
  v31 = v30;
  v33 = v32;
  v34 = v19;
  v35 = v46;
  (*(v13 + 8))(v34, v12);
  v36 = v45;
  sub_1B7CFDDB0();
  v37 = v47;
  v38 = swift_dynamicCast();
  v39 = *(v36 + 56);
  if ((v38 & 1) == 0)
  {
    v39(v35, 1, 1, v37);
    sub_1B7AEE190(v35, &qword_1EBA51FF8, &qword_1B7D0AA68);
    goto LABEL_5;
  }

  v39(v35, 0, 1, v37);
  v40 = v43[0];
  (*(v36 + 32))(v43[0], v35, v37);
  MEMORY[0x1B8CACF70](&v52, v37);
  (*(v36 + 8))(v40, v37);
  if (v52)
  {
LABEL_5:
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1B7CFF210();

    v52 = 0x28286C6C756E6669;
    v53 = 0xE800000000000000;
    MEMORY[0x1B8CADCA0](v49, v50);

    MEMORY[0x1B8CADCA0](673197097, 0xE400000000000000);
    MEMORY[0x1B8CADCA0](v48, v31);

    MEMORY[0x1B8CADCA0](10537, 0xE200000000000000);
    v41 = v52;
    v52 = v51;
    sub_1B7AF3098(v33);
    return v41;
  }

  return v49;
}

uint64_t sub_1B7C1C238(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v43 = a1;
  v49 = a2[4];
  v50 = a4;
  v51 = *(v49 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7CFDD90();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[3];
  v52 = sub_1B7CFDEA0();
  v13 = *(v52 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v52);
  v17 = &v42 - v16;
  v18 = a2[2];
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1B8CACF10](a2);
  v53 = (*(a3 + 8))(a1, v18, a3);
  v24 = v23;
  v26 = v25;
  (*(v19 + 8))(v22, v18);
  sub_1B7CFDDE0();
  v27 = v44;
  v28 = v52;
  sub_1B7CFDE90();
  (*(v13 + 8))(v17, v28);

  v29 = v43;
  v30 = *(v43 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *(v29 + 8);
  v48 = v24;
  v52 = v26;
  sub_1B7CA5E70(v53, v24, v26, v27, isUniquelyReferenced_nonNull_native);
  (*(v45 + 8))(v27, v46);
  *(v29 + 8) = v54;
  v32 = v47;
  sub_1B7CFDDF0();
  v33 = v50;
  v34 = v32;
  v35 = v49;
  v45 = (*(v50 + 8))(v29, v49, v50);
  v46 = v36;
  v38 = v37;
  v39 = *(v51 + 8);
  v39(v34, v35);
  sub_1B7CFDDF0();
  LOBYTE(v22) = (*(v33 + 16))(v35, v33);
  v39(v34, v35);
  if (v22)
  {

    return v45;
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1B7CFF210();

    v54 = 0x2828666669;
    v55 = 0xE500000000000000;
    MEMORY[0x1B8CADCA0](v53, v48);

    MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D510B0);
    MEMORY[0x1B8CADCA0](v45, v38);

    MEMORY[0x1B8CADCA0](0x294C4C554E202C29, 0xE800000000000000);
    v40 = v54;
    v54 = v52;
    sub_1B7AF3098(v46);
  }

  return v40;
}

uint64_t SqlOperation.ColumnType.description.getter()
{
  v1 = *v0;
  v2 = 0x72656765746E69;
  v3 = 1954047348;
  v4 = 1651469410;
  if (v1 != 3)
  {
    v4 = 1819047278;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74616F6C66;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t SqlOperation.ColumnType.init(rawValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x40302010005uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1B7C1C81C()
{
  result = qword_1EBA52008;
  if (!qword_1EBA52008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52008);
  }

  return result;
}

uint64_t sub_1B7C1C870()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](v1 + 1);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C1C8E8()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](v1 + 1);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C1C944()
{
  v1 = *v0;
  v2 = 0x72656765746E69;
  v3 = 1954047348;
  v4 = 1651469410;
  if (v1 != 3)
  {
    v4 = 1819047278;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74616F6C66;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t _s10ColumnTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10ColumnTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B7C1CB20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B7CFE420();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = v11;

  sub_1B7CFE410();
  v12 = sub_1B7CFE400();
  v13 = sub_1B7CFEED0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v20 = a1;
    v15 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1B7AD5000, v12, v13, "Cross checking DatabaseExportRecordCounter with DatabaseInspector:", v14, 2u);
    a1 = v20;
    MEMORY[0x1B8CB0E70](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v16 = *(a1 + 24);
  v17 = *(a2 + 80);

  sub_1B7C9E06C(v16, v17);

  return v3;
}

uint64_t sub_1B7C1CD2C(uint64_t *a1)
{
  swift_allocObject();
  sub_1B7AE90A8(a1, v4);
  v2 = StorageInspectionCrossCheckReport.init(from:)(v4);
  sub_1B7AE9168(a1);
  return v2;
}

uint64_t RecordCounterDatabaseInspectorCrossCheckReport.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t RecordCounterDatabaseInspectorCrossCheckReport.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C1CE48()
{
  if (qword_1EDBE3F50 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for MessageRecord();
  sub_1B7C1D34C();
  result = sub_1B7CC1208(v0);
  if (result)
  {
    v2 = *(result + 32);

    v3 = *(v2 + 16);
    if (v3)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_1B7AECEEC(0, v3, 0);
      v4 = v12;
      v5 = v2 + 32;
      do
      {
        sub_1B7AEBEFC(v5, v11);
        v7 = v11[2];
        v6 = v11[3];

        sub_1B7AEBF70(v11);
        v12 = v4;
        v9 = *(v4 + 16);
        v8 = *(v4 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1B7AECEEC((v8 > 1), v9 + 1, 1);
          v4 = v12;
        }

        *(v4 + 16) = v9 + 1;
        v10 = v4 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        v5 += 136;
        --v3;
      }

      while (v3);
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    v11[0] = &unk_1F2FA1628;
    result = sub_1B7C50BFC(v4);
    off_1EBA50CE8 = v11[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

IMDMessageQueryStrings __swiftcall IMDMessageQueryStrings.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMDMessageQueryStrings()
{
  result = qword_1EBA52010;
  if (!qword_1EBA52010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA52010);
  }

  return result;
}

uint64_t sub_1B7C1D15C(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    goto LABEL_13;
  }

  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    if (qword_1EBA50CE0 != -1)
    {
      swift_once();
    }

    v5 = off_1EBA50CE8;
    v6 = *(off_1EBA50CE8 + 2);
    if (v6)
    {
      v15 = MEMORY[0x1E69E7CC0];
      sub_1B7AECEEC(0, v6, 0);
      v7 = (v5 + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;

        MEMORY[0x1B8CADCA0](v8, v9);

        v11 = *(v15 + 16);
        v10 = *(v15 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B7AECEEC((v10 > 1), v11 + 1, 1);
        }

        *(v15 + 16) = v11 + 1;
        v12 = v15 + 16 * v11;
        *(v12 + 32) = a1;
        *(v12 + 40) = a2;
        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
LABEL_13:
    if (qword_1EBA50CE0 != -1)
    {
      swift_once();
    }
  }

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v13 = sub_1B7CFEA10();

  MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
  return v13;
}

unint64_t sub_1B7C1D34C()
{
  result = qword_1EDBE5658;
  if (!qword_1EDBE5658)
  {
    type metadata accessor for MessageRecord();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBE5658);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SQLColumn(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B7C1D3B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7C1D3F8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B7C1D450@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B7AE8874(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B7C1D478(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B7CFF590();
  }
}

uint64_t sub_1B7C1D4A8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_1B7C1D4DC()
{
  result = qword_1EBA52018;
  if (!qword_1EBA52018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52018);
  }

  return result;
}

unint64_t sub_1B7C1D540()
{
  result = qword_1EBA52020;
  if (!qword_1EBA52020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52020);
  }

  return result;
}

unint64_t sub_1B7C1D598()
{
  result = qword_1EBA52028;
  if (!qword_1EBA52028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52028);
  }

  return result;
}

uint64_t sub_1B7C1D5F8(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52030, &unk_1B7D13080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C1D664@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F38, type metadata accessor for ChatServiceRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord);
  sub_1B7CFE770();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B7C1D770(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F38, type metadata accessor for ChatServiceRecord);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C1D848()
{
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F38, type metadata accessor for ChatServiceRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C1D94C()
{
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord);
  sub_1B7CFE790();
}

uint64_t sub_1B7C1DA00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F38, type metadata accessor for ChatServiceRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord);
  sub_1B7C1EC10(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  v4 = sub_1B7CFE760();

  *a2 = v4;
  return result;
}

uint64_t sub_1B7C1DB3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F38, type metadata accessor for ChatServiceRecord);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C1DC08()
{
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F38, type metadata accessor for ChatServiceRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord);
  sub_1B7C1EC10(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  v0 = sub_1B7CFE760();

  return v0;
}

uint64_t sub_1B7C1DD40()
{
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord);
  sub_1B7C1EC10(&qword_1EDBE5728, type metadata accessor for ChatRecord);
  sub_1B7CFE780();
}

uint64_t sub_1B7C1DE3C()
{
  sub_1B7AE9168(v0 + 2);
  v1 = OBJC_IVAR____TtC14IMDPersistence17ChatServiceRecord___observationRegistrar;
  v2 = sub_1B7CFE200();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChatServiceRecord()
{
  result = qword_1EDBE3F00;
  if (!qword_1EDBE3F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7C1DF34()
{
  result = sub_1B7CFE200();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1B7C1E010(__int128 *a1)
{
  v2 = type metadata accessor for ChatServiceRecord();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v5[5] = sub_1B7C107FC(&qword_1EBA52070, qword_1B7D0AFE0);
  v5[6] = swift_getOpaqueTypeConformance2();
  sub_1B7C1A14C(v5 + 2);
  sub_1B7CFE720();
  sub_1B7CFE1F0();
  swift_beginAccess();
  sub_1B7AE9168(v5 + 2);
  sub_1B7AE910C(a1, (v5 + 2));
  swift_endAccess();
  return v5;
}

uint64_t sub_1B7C1E154(__int128 *a1)
{
  swift_beginAccess();
  sub_1B7AE9168((v1 + 16));
  sub_1B7AE910C(a1, v1 + 16);
  return swift_endAccess();
}

void (*sub_1B7C1E1AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1B7AE90A8(v1 + 16, v4);
  return sub_1B7C1E23C;
}

void sub_1B7C1E23C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1B7AE90A8(*a1, v2 + 40);
    swift_beginAccess();
    sub_1B7AE9168((v3 + 16));
    sub_1B7AE910C((v2 + 40), v3 + 16);
    swift_endAccess();
    sub_1B7AE9168(v2);
  }

  else
  {
    swift_beginAccess();
    sub_1B7AE9168((v3 + 16));
    sub_1B7AE910C(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1B7C1E2F8()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  type metadata accessor for ChatServiceRecord();
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord);
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C1E384()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B7CFE750();
}

uint64_t sub_1B7C1E3DC()
{
  sub_1B7CFF7C0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C1E444()
{
  v1 = *v0;
  type metadata accessor for ChatServiceRecord();
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord);
  return sub_1B7CFE740();
}

uint64_t sub_1B7C1E4C0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1B7C1E6DC(uint64_t a1)
{
  result = sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7C1E734()
{
  v32 = sub_1B7CFE850();
  v0 = *(v32 - 8);
  v1 = v0;
  v2 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B7CFE7D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(&qword_1EBA52050, &qword_1B7D0AF40);
  v10 = *(v0 + 72);
  v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B7D0A6F0;
  swift_getKeyPath();
  v36 = 0u;
  v37 = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_1B7CFE840();
  swift_getKeyPath();
  v36 = 0u;
  v37 = 0u;
  (*(v6 + 104))(v9, *MEMORY[0x1E697BCD8], v5);
  v13 = sub_1B7CFE800();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = MEMORY[0x1E69E7CC0];
  v17 = sub_1B7CFE810();
  *(&v34 + 1) = v13;
  v35 = sub_1B7C1EC10(qword_1EDBE3A20, MEMORY[0x1E697BCF0]);
  *&v33 = v17;
  sub_1B7CFE840();
  swift_getKeyPath();
  v36 = 0u;
  v37 = 0u;
  sub_1B7C107FC(&qword_1EBA52058, &qword_1B7D0AFC8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B7D0A7B0;
  sub_1B7C107FC(&qword_1EBA52060, &qword_1B7D0AFD0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B7D0AD40;
  *(v19 + 32) = swift_getKeyPath();
  *(v19 + 40) = swift_getKeyPath();
  *(v18 + 32) = v19;
  v20 = v4;
  v21 = sub_1B7C107FC(&qword_1EBA52068, &qword_1B7D0AFD8);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_1B7CFE890();
  *(&v34 + 1) = v21;
  v35 = sub_1B7C1EB90();
  *&v33 = v24;
  sub_1B7CFE840();
  v25 = sub_1B7CA2198(0, 1, 1, v16);
  v27 = v25[2];
  v26 = v25[3];
  if (v27 >= v26 >> 1)
  {
    v25 = sub_1B7CA2198(v26 > 1, v27 + 1, 1, v25);
  }

  v25[2] = v27 + 1;
  v28 = v25 + v11 + v27 * v10;
  v29 = v25;
  (*(v1 + 32))(v28, v20, v32);
  *&v33 = v12;
  sub_1B7C50CF0(v29);
  return v33;
}

unint64_t sub_1B7C1EB90()
{
  result = qword_1EDBE3A10;
  if (!qword_1EDBE3A10)
  {
    sub_1B7C1091C(&qword_1EBA52068, &qword_1B7D0AFD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBE3A10);
  }

  return result;
}

uint64_t sub_1B7C1EBF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C1DD40();
}

uint64_t sub_1B7C1EC10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7C1EC58()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C1D94C();
}

uint64_t sub_1B7C1EC88(unint64_t a1, void **a2, uint64_t *a3)
{
  v11 = *(a1 + 16);
  if (!v11)
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = a2;
  v3 = a1;
  v12 = *(a1 + 40);
  if (v12 < 0xFFFFFFFF80000000)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = v4;
  v7 = a3;
  if (!sqlite3_column_text(*(a1 + 32), v12))
  {
    __break(1u);
    goto LABEL_35;
  }

  v13 = sub_1B7CFEB80();
  if (v11 < 3)
  {
    goto LABEL_28;
  }

  v6 = v14;
  v15 = *(v3 + 72);
  if (v15 < 0xFFFFFFFF80000000)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v16 = v13;
  v45 = v7;
  v17 = sqlite3_column_int64(*(v3 + 64), v15);
  v44 = v16;

  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  v43 = v17;
  v18 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v18);

  v10 = v16;
  v9 = v6;
  v5 = MEMORY[0x1B8CADD40](v16, v6);
  v19 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v8;
  v46 = *v8;
  *v8 = 0x8000000000000000;
  v3 = sub_1B7AE1160(v5);
  v23 = v21[2];
  v24 = (v22 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  LOBYTE(v7) = v22;
  if (v21[3] >= v25)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  sub_1B7CE49B4(v25, isUniquelyReferenced_nonNull_native);
  v21 = v46;
  v26 = sub_1B7AE1160(v5);
  if ((v7 & 1) != (v27 & 1))
  {
LABEL_35:
    result = sub_1B7CFF740();
    __break(1u);
    return result;
  }

  v3 = v26;
  while (1)
  {
LABEL_13:
    v28 = *v8;
    *v8 = v21;

    v29 = *v8;
    if ((v7 & 1) == 0)
    {
      sub_1B7CA66E4(v3, v5, 0, *v8);
    }

    v30 = v29[7];
    v31 = *(v30 + 8 * v3);
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (!v32)
    {
      break;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    sub_1B7CE8A84();
    v21 = v46;
  }

  *(v30 + 8 * v3) = v33;
  v34 = MEMORY[0x1B8CADD40](v10, v9);

  v35 = *v8;
  if (!(*v8)[2])
  {
  }

  v36 = sub_1B7AE1160(v34);
  if ((v37 & 1) == 0 || *(*(v35 + 56) + 8 * v36) != 2)
  {
  }

  v38 = *v45;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v45 = v38;
  if ((result & 1) == 0)
  {
    result = sub_1B7CA1D90(0, v38[2] + 1, 1, v38);
    v38 = result;
    *v45 = result;
  }

  v41 = v38[2];
  v40 = v38[3];
  if (v41 >= v40 >> 1)
  {
    result = sub_1B7CA1D90((v40 > 1), v41 + 1, 1, v38);
    v38 = result;
    *v45 = result;
  }

  v38[2] = v41 + 1;
  v42 = &v38[3 * v41];
  v42[4] = v44;
  v42[5] = v6;
  v42[6] = v43;
  return result;
}