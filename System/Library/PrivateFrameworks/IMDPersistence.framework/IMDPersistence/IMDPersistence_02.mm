uint64_t sub_1B7AF2A34(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDChatRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v8 = v6;
    objc_msgSend_addObject_(*(a1 + 32), v7, v6);
    CFRelease(v8);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

uint64_t IMDHandleRecordCopyCountry(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFCFC(v6, v7, v8, v9, v10, v11, v12, v13);
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
    v14[2] = sub_1B7B395F4;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 1);
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

void sub_1B7AF2BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t IMDSqlOperationGetError(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = *(result + 168);
    if (v2)
    {
      if (a2)
      {
        *a2 = v2;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

sqlite3_int64 sub_1B7AF2C68@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, sqlite3_int64 *a3@<X8>)
{
  result = sqlite3_column_int64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7AF2C98(uint64_t *a1, uint64_t a2)
{
  off_1F2FA8A10(*(a2 + 16), 0, &v10);
  if (v2)
  {
    sub_1B7C95194();
    swift_allocError();
    *v4 = 1;
    *(v4 + 8) = v2;
    *(v4 + 56) = 2;
    return swift_willThrow();
  }

  else
  {
    v6 = v10;
    v7 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v7;
    if ((result & 1) == 0)
    {
      result = sub_1B7AF2DCC(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
      *a1 = result;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_1B7AF2DCC((v8 > 1), v9 + 1, 1, v7);
      v7 = result;
      *a1 = result;
    }

    *(v7 + 16) = v9 + 1;
    *(v7 + 8 * v9 + 32) = v6;
  }

  return result;
}

void _sSo21IMDLegacyRecordBridgeC14IMDPersistenceE24migrateChatTableIfNeeded5usingySpySo20CSDBSqliteConnectionVG_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionConfiguration();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - v8;
  v10 = *(v7 + 36);
  v11 = sub_1B7CFE420();
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  *v9 = 1;
  *(v9 + 1) = 0;
  *(v9 + 8) = 1;
  v12 = [objc_opt_self() sharedFeatureFlags];
  v13 = [v12 _isOneChatOptedOut];

  v14 = *(a1 + 8);
  if (!v14)
  {
    goto LABEL_14;
  }

  sub_1B7AE3EA4(v9, v6);
  v15 = type metadata accessor for SQLConnection(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = (v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
  v20 = MEMORY[0x1E69E7CC8];
  *v19 = MEMORY[0x1E69E7CC8];
  v19[1] = v20;
  v19[2] = 32;
  *(v18 + 16) = v14;
  *(v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
  sub_1B7AE3EA4(v6, v18 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
  if ((v6[2] & 1) == 0)
  {
    v21 = v6[1] * 1000.0;
    if (COERCE__INT64(fabs(v21)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v21 > -2147483650.0)
    {
      if (v21 < 2147483650.0)
      {
        sqlite3_busy_timeout(v14, v21);
        goto LABEL_7;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

LABEL_7:
  sub_1B7C4BDE4(v6, type metadata accessor for SQLConnectionConfiguration);
  if (v13)
  {
    v22 = &off_1F2FA3188;
    v23 = &type metadata for SplitChatMigrator;
  }

  else
  {
    v26 = 0;
    v22 = &off_1F2FA8698;
    v23 = &type metadata for MergedChatMigrator;
  }

  v27 = v23;
  v28 = v22;
  v25 = v18;

  sub_1B7C4B0A8(&v25, v18, 0x74616843656E4FLL, 0xE700000000000000);

  sub_1B7C4BDE4(v9, type metadata accessor for SQLConnectionConfiguration);
  sub_1B7AE9168(&v25);
}

uint64_t IMDChatRecordCopyGUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3344(v9, v10, v11, v12, v13, v14, v15, v16);
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
    v17[2] = sub_1B7B55748;
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

void sub_1B7AF3220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFArray *IMDMessageRecordCopyAndMarkAsReadMessagesPriorToGuidMatchingChatGUIDs(__CFString *a1, const __CFArray *a2, uint64_t a3, int a4)
{
  v101 = *MEMORY[0x1E69E9840];
  values = a1;
  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEFAULT, "IMDMessageRecordCopyAndMarkAsReadMessagesPriorToGuidMatchingChatGUIDs", &buf, 2u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v8 = objc_alloc_init(MEMORY[0x1E69A6170]);
    v9 = IMDDatabaseTelemetryLogHandle();
    if (os_signpost_enabled(v9))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B7AD5000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MarkAsRead-Database", " enableTelemetry=YES ", &buf, 2u);
    }

    if (a1)
    {
      objc_msgSend_startTimingForKey_(v8, v10, @"1. QueryHighestRowID");
      IndentifierForMessageWithGUID = IMDMessageRecordGetIndentifierForMessageWithGUID(a1);
      objc_msgSend_stopTimingForKey_(v8, v12, @"1. QueryHighestRowID");
      if (IndentifierForMessageWithGUID == -1)
      {

LABEL_37:
        Mutable = 0;
        goto LABEL_55;
      }
    }

    else
    {
      IndentifierForMessageWithGUID = -1;
    }

    objc_msgSend_startTimingForKey_(v8, v10, @"2. QueryChatRecordIDs");
    v16 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15);
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        v21 = IMDChatRecordCopyChatForGUID(ValueAtIndex);
        v23 = v21;
        if (v21)
        {
          Identifier = IMDChatRecordGetIdentifier(v21);
          v26 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v25, Identifier);
          objc_msgSend_addObject_(v16, v27, v26);
          CFRelease(v23);
        }

        else
        {
          v28 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v22, -1);
          objc_msgSend_addObject_(v16, v29, v28);
        }
      }
    }

    objc_msgSend_stopTimingForKey_(v8, v17, @"2. QueryChatRecordIDs");
    objc_msgSend_startTimingForKey_(v8, v30, @"3. MarkAsRead");
    if (a4)
    {
      *&v98 = 0;
      *(&v98 + 1) = &v98;
      v99 = 0x2020000000;
      v100 = 0;
      v32 = IMDGenerateInClauseForCount(1, v31);
      v33 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"UPDATE   message SET   is_read = 1,   date_read = ? WHERE rowid %@", v32);
      if (v33)
      {
        v34 = objc_alloc_init(MEMORY[0x1E69A6170]);
        v35 = IMDMessageRecordCopyMessageForGUIDUnlocked(a1);
        v36 = v35;
        if (v35)
        {
          v37 = IMDMessageRecordGetIdentifier(v35);
          objc_msgSend_startTimingForKey_(v34, v38, @"Query2-Update");
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v87 = sub_1B7BE9134;
          v88 = &unk_1E7CBD2D0;
          v91 = a3;
          v92 = v37;
          v89 = &v98;
          v90 = v33;
          _IMDPerformLockedDatabaseBlock(&buf);
          CFRelease(v36);
        }

        else
        {
          v46 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = a1;
            _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_DEFAULT, "Unable to create message record for guid %@", &buf, 0xCu);
          }
        }

        CFRelease(v33);
        objc_msgSend_stopTimingForKey_(v34, v47, @"Query2-Update");
        v48 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *v96 = 138412290;
          v97 = v34;
          _os_log_impl(&dword_1B7AD5000, v48, OS_LOG_TYPE_DEFAULT, "Time to run db query for marking 1:1 as read when receiving remote read receipt: %@", v96, 0xCu);
        }
      }

      v49 = *(*(&v98 + 1) + 24);
      _Block_object_dispose(&v98, 8);
      objc_msgSend_stopTimingForKey_(v8, v50, @"3. MarkAsRead");
      v51 = IMDDatabaseTelemetryLogHandle();
      if (os_signpost_enabled(v51))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_1B7AD5000, v51, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MarkAsRead-Database", " enableTelemetry=YES ", &buf, 2u);
      }

      v52 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_1B7AD5000, v52, OS_LOG_TYPE_DEFAULT, "Time to mark 1:1 as read when receiving read receipt from receiver: %@", &buf, 0xCu);
      }

      if (!v49)
      {
        goto LABEL_37;
      }

      Mutable = CFArrayCreate(0, &values, 1, 0);
    }

    else
    {
      v39 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_DEFAULT, "_IMDMessageRecordCopyAndMarkAsReadMessagesReceivedPriorToGuidMatchingChatGUIDs", &buf, 2u);
      }

      v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v43 = objc_msgSend_count(v16, v41, v42);
      if (v43)
      {
        v44 = objc_alloc_init(MEMORY[0x1E69A6170]);
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v87 = sub_1B7AF4B30;
        v88 = &unk_1E7CBD2A8;
        v95 = IndentifierForMessageWithGUID != -1;
        v89 = v44;
        v90 = v16;
        v91 = v40;
        v92 = v43;
        v93 = IndentifierForMessageWithGUID;
        v94 = a3;
        _IMDPerformLockedDatabaseBlock(&buf);
        v45 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v98) = 138412290;
          *(&v98 + 4) = v44;
          _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_DEFAULT, "Time to run db query for marking 1:1 as read when tapping/reflecting read receipt: %@", &v98, 0xCu);
        }
      }

      else
      {
        v44 = v40;
        v40 = 0;
      }

      objc_msgSend_stopTimingForKey_(v8, v53, @"3. MarkAsRead");
      objc_msgSend_startTimingForKey_(v8, v54, @"4. QueryMessageGUIDsFromRowIDs");
      v57 = objc_msgSend_count(v40, v55, v56);
      Mutable = CFArrayCreateMutable(0, v57, MEMORY[0x1E695E9C0]);
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v58, &v80, v85, 16);
      if (v61)
      {
        v62 = *v81;
        v63 = *MEMORY[0x1E695E480];
        do
        {
          for (j = 0; j != v61; ++j)
          {
            if (*v81 != v62)
            {
              objc_enumerationMutation(v40);
            }

            v65 = objc_msgSend_integerValue(*(*(&v80 + 1) + 8 * j), v59, v60);
            v66 = IMDMessageRecordCreateFromRecordIDUnlocked(v63, v65);
            v67 = IMDMessageRecordCopyGUIDForMessage(v66);
            CFArrayAppendValue(Mutable, v67);
            if (v67)
            {
              CFRelease(v67);
            }

            if (v66)
            {
              CFRelease(v66);
            }
          }

          v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v59, &v80, v85, 16);
        }

        while (v61);
      }

      objc_msgSend_stopTimingForKey_(v8, v59, @"4. QueryMessageGUIDsFromRowIDs");
      objc_msgSend_startTimingForKey_(v8, v68, @"5. MarkReviewed");
      v71 = objc_msgSend_synchronousDatabase(IMDDatabase, v69, v70);
      objc_msgSend_updatePendingReviewForChatsWithGUIDs_pendingReview_completionHandler_(v71, v72, a2, 0, &unk_1F2FA13F0);
      objc_msgSend_stopTimingForKey_(v8, v73, @"5. MarkReviewed");
      v74 = IMDDatabaseTelemetryLogHandle();
      if (os_signpost_enabled(v74))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_1B7AD5000, v74, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MarkAsRead-Database", " enableTelemetry=YES ", &buf, 2u);
      }

      v75 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_impl(&dword_1B7AD5000, v75, OS_LOG_TYPE_DEFAULT, "Time to mark 1:1 as read when tapping/reflecting read receipt: %@", &buf, 0xCu);
      }
    }
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v87 = 0x2020000000;
    v88 = 0;
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = sub_1B7BE1044;
    v79[3] = &unk_1E7CB6838;
    v79[4] = &buf;
    __syncXPCIMDMessageRecordCopyAndMarkAsReadMessagesPriorToGuidMatchingChatGUIDs_IPCAction(v79, a1, a2, a3, a4 != 0);
    Mutable = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

LABEL_55:
  v76 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void __syncXPCIMDMessageRecordCopyAndMarkAsReadMessagesPriorToGuidMatchingChatGUIDs_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  if (v10)
  {
    v11 = v10;
    xpc_dictionary_set_int64(v10, "__xpc__event_code__", 94);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertArraysToXPCDictionary();
    }

    if (a4)
    {
      IMInsertCodableObjectsToXPCDictionary();
    }

    if (a5)
    {
      xpc_dictionary_set_BOOL(v11, "fromMe", 1);
    }

    __XPCIMDMessageStoreSendXPCMessage(v11, a1, 0);

    xpc_release(v11);
  }
}

const __CFString *IMDMessageRecordGetIndentifierForMessageWithGUID(CFStringRef theString)
{
  v1 = theString;
  v18 = *MEMORY[0x1E69E9840];
  if (theString)
  {
    if (CFStringGetLength(theString))
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = -1;
      if (IMDIsRunningInDatabaseServerProcess())
      {
        v2 = IMDMessageRecordCopyMessageForGUID(v1);
        v3 = v2;
        if (v2)
        {
          Identifier = IMDMessageRecordGetIdentifier(v2);
          v11[3] = Identifier;
          if (IMOSLoggingEnabled())
          {
            v5 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
            {
              v6 = v11[3];
              *buf = 134218242;
              v15 = v6;
              v16 = 2112;
              v17 = v1;
              _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEBUG, "Row ID is %lld for message with guid [%@]", buf, 0x16u);
            }
          }

          CFRelease(v3);
        }
      }

      else
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = sub_1B7BE0CEC;
        v9[3] = &unk_1E7CB6838;
        v9[4] = &v10;
        __syncXPCIMDMessageRecordGetIndentifierForMessageWithGUID_IPCAction(v9, v1);
      }

      v1 = v11[3];
      _Block_object_dispose(&v10, 8);
    }

    else
    {
      v1 = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v1;
}

const __CFString *IMDMessageRecordCopyMessageForGUID(const __CFString *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEBUG, "IMDMessageRecordCopyMessageForGUID [%@]", &buf, 0xCu);
    }
  }

  if (a1)
  {
    if (CFStringGetLength(a1))
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v8 = 0x2020000000;
      v9 = 0;
      if (IMDIsRunningInDatabaseServerProcess())
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = sub_1B7AF4724;
        v6[3] = &unk_1E7CB7520;
        v6[4] = &buf;
        v6[5] = a1;
        _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE guid = ? ORDER BY message.ROWID ASC;", v6);
      }

      else
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = sub_1B7AF1F70;
        v5[3] = &unk_1E7CB6838;
        v5[4] = &buf;
        __syncXPCIMDMessageRecordCopyMessageForGUID_IPCAction(v5, a1);
      }

      a1 = *(*(&buf + 1) + 24);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      a1 = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_1B7AF3FE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = sqlite3_db_handle(v4);
  if (v5)
  {
    v6 = v5;
    result = sub_1B7AEA57C(a1);
    if (v2)
    {
      return result;
    }

    do
    {
      v8 = sqlite3_step(v4);
    }

    while (v8 == 100);
    if (v8 == 101)
    {
      return sqlite3_reset(v4);
    }

    sub_1B7C95194();
    swift_allocError();
    v11 = v10;
    result = sqlite3_errmsg(v6);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v12 = sub_1B7CFEB70();
    v14 = v13;
    v15 = sqlite3_extended_errcode(v6);
    sub_1B7C951E8();
    v16 = swift_allocError();
    *v17 = v15;
    v17[1] = v12;
    v17[2] = v14;
    *v11 = v16;
    *(v11 + 56) = 3;
  }

  else
  {
    sub_1B7C95194();
    swift_allocError();
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0;
    *(v9 + 56) = 4;
  }

  return swift_willThrow();
}

const char *sub_1B7AF4128(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1B7AE3B2C(0xD00000000000027ELL, 0x80000001B7D4EC80, 0);
  if (!v1)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

uint64_t _sSo21IMDLegacyRecordBridgeC14IMDPersistenceE25migrateChatLookupIfNeeded5usingySpySo20CSDBSqliteConnectionVG_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionConfiguration();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - v8;
  v10 = *(v7 + 36);
  v11 = sub_1B7CFE420();
  result = (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  *v9 = 1;
  *(v9 + 1) = 0;
  *(v9 + 8) = 1;
  v13 = *(a1 + 8);
  if (!v13)
  {
    goto LABEL_11;
  }

  sub_1B7AE3EA4(v9, v6);
  v14 = type metadata accessor for SQLConnection(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = (v17 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
  v19 = MEMORY[0x1E69E7CC8];
  *v18 = MEMORY[0x1E69E7CC8];
  v18[1] = v19;
  v18[2] = 32;
  *(v17 + 16) = v13;
  *(v17 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
  result = sub_1B7AE3EA4(v6, v17 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
  if (v6[2])
  {
LABEL_7:
    sub_1B7C4BDE4(v6, type metadata accessor for SQLConnectionConfiguration);
    sub_1B7AF4440(v17);

    return sub_1B7C4BDE4(v9, type metadata accessor for SQLConnectionConfiguration);
  }

  v20 = v6[1] * 1000.0;
  if (COERCE__INT64(fabs(v20)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v20 > -2147483650.0)
  {
    if (v20 < 2147483650.0)
    {
      sqlite3_busy_timeout(v13, v20);
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

void sub_1B7AF4440(uint64_t a1)
{
  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isMissingMessagesEnabled];

  if (v3)
  {
    v10 = &type metadata for ChatLookupMigrator;
    v11 = &off_1F2FA7DC0;
    v8 = a1;
    v9 = 0;

    sub_1B7C4B0A8(&v8, a1, 0x6F6F4C2074616843, 0xEB0000000070756BLL);
    sub_1B7AE9168(&v8);
  }

  else
  {
    if (qword_1EBA50EB8 != -1)
    {
      swift_once();
    }

    v4 = sub_1B7CFE420();
    sub_1B7AD9040(v4, qword_1EBA5DA20);
    oslog = sub_1B7CFE400();
    v5 = sub_1B7CFEED0();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B7AD5000, oslog, v5, "Skipping missing messages migration, feature flag disabled.", v6, 2u);
      MEMORY[0x1B8CB0E70](v6, -1, -1);
    }
  }
}

uint64_t sub_1B7AF4604(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1B7C107FC(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1B7AF4724(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = CSDBSqliteBindTextFromCFString();
  sub_1B7AEAEE4(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6))
    {
      CFArrayGetValueAtIndex(v7, 0);
      ID = CSDBRecordGetID();
      *(*(*(a1 + 32) + 8) + 24) = IMDMessageRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
    }

    CFRelease(v7);
  }
}

uint64_t sub_1B7AF47F0(void *a1)
{
  v1 = [a1 selectAllColumns];
  sub_1B7CFEA60();

  MEMORY[0x1B8CADCA0](0xD000000000000027, 0x80000001B7D4EAA0);

  v2 = sub_1B7CFEA30();

  return v2;
}

id sub_1B7AF48A8(void *a1, uint64_t a2, SEL *a3, uint64_t a4)
{
  v5 = [a1 *a3];
  v6 = sub_1B7CFEA60();
  v8 = v7;

  MEMORY[0x1B8CADCA0](v6, v8);

  MEMORY[0x1B8CADCA0](0x616863204D4F5246, a4);

  v9 = sub_1B7CFEA30();

  return v9;
}

uint64_t IMDChatRecordGetIdentifier(uint64_t a1)
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
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Attempted to get identifier for NULL chat record: %@", &v4, 0xCu);
    }

    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void _IMDPerformLockedDatabaseBlock(uint64_t a1)
{
  if (a1)
  {
    IMDEnsureSharedRecordStoreInitialized();
    if (!IMDSharedThreadedRecordStore())
    {
      v2 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE868(v2, v3);
      }
    }

    v4 = CSDBRecordStoreRefFromThreadedRecordStoreRef();
    if (!v4)
    {
      v5 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE910(v5, v6);
      }
    }

    v7 = CSDBSqliteDatabaseFromThreadedRecordStoreRef();
    if (!v7)
    {
      v8 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE9B8(v8, v9);
      }
    }

    (*(a1 + 16))(a1, v4, v7);
  }

  else
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEEA60(v10, v11);
    }

    IMDEnsureSharedRecordStoreInitialized();
  }
}

uint64_t sub_1B7AF4B30(uint64_t a1, const char *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  if (*(a1 + 80))
  {
    v4 = " AND rowid <= ?";
  }

  else
  {
    v4 = "";
  }

  v5 = IMDGenerateInClauseForCount(*(a1 + 56), a2);
  v6 = CFStringCreateWithFormat(v3, 0, @"SELECT   message_id FROM chat_message_join WHERE message_id in (SELECT rowid FROM message INDEXED BY message_idx_isRead_isFromMe_itemType  WHERE (is_read == 0     AND is_finished == 1     AND is_from_me == 0     AND item_type == 0     AND is_system_message == 0     %s)) AND chat_id %@", v4, v5);
  if (v6)
  {
    v9 = v6;
    objc_msgSend_startTimingForKey_(*(a1 + 32), v7, @"Query1");
    if (CSDBSqliteDatabaseConnectionForReading())
    {
      v10 = CSDBSqliteConnectionStatementForSQL();
      if (v10)
      {
        v12 = v10;
        if (*(v10 + 8))
        {
          if (*(a1 + 80))
          {
            v13 = *(a1 + 64);
            CSDBSqliteBindInt64();
          }

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v14 = *(a1 + 40);
          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v11, &v54, v61, 16);
          if (v15)
          {
            v18 = v15;
            v19 = *v55;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v55 != v19)
                {
                  objc_enumerationMutation(v14);
                }

                objc_msgSend_integerValue(*(*(&v54 + 1) + 8 * i), v16, v17);
                CSDBSqliteBindInt64();
              }

              v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v54, v61, 16);
            }

            while (v18);
          }

          while (sqlite3_step(*(v12 + 8)) == 100)
          {
            v21 = sqlite3_column_int64(*(v12 + 8), 0);
            if (v21 != -1)
            {
              v23 = *(a1 + 48);
              v24 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v22, v21);
              objc_msgSend_addObject_(v23, v25, v24);
            }
          }

          CSDBSqliteStatementReset();
        }
      }

      CSDBSqliteDatabaseReleaseSqliteConnection();
    }

    CFRelease(v9);
    objc_msgSend_stopTimingForKey_(*(a1 + 32), v26, @"Query1");
  }

  v27 = objc_msgSend_count(*(a1 + 48), v7, v8);
  if (v27 < 1)
  {
    v46 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = *(a1 + 40);
      *buf = 138412290;
      v59 = v47;
      _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_DEFAULT, "Query results were null or empty bulk reading messages for %@", buf, 0xCu);
    }
  }

  else
  {
    v29 = IMDGenerateInClauseForCount(v27, v28);
    v30 = CFStringCreateWithFormat(v3, 0, @"UPDATE   message SET   is_read = 1,   date_read = ? WHERE rowid %@", v29);
    if (v30)
    {
      v32 = v30;
      objc_msgSend_startTimingForKey_(*(a1 + 32), v31, @"Query2-Update");
      v33 = CSDBSqliteDatabaseStatementForWriting();
      if (v33 && *(v33 + 8))
      {
        v36 = *(a1 + 72);
        if (!v36)
        {
          v36 = objc_msgSend_date(MEMORY[0x1E695DF00], v34, v35);
        }

        objc_msgSend___im_nanosecondTimeInterval(v36, v34, v35);
        CSDBSqliteBindInt64();
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v37 = *(a1 + 48);
        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, &v50, v60, 16);
        if (v39)
        {
          v42 = v39;
          v43 = *v51;
          do
          {
            for (j = 0; j != v42; ++j)
            {
              if (*v51 != v43)
              {
                objc_enumerationMutation(v37);
              }

              objc_msgSend_integerValue(*(*(&v50 + 1) + 8 * j), v40, v41);
              CSDBSqliteBindInt64();
            }

            v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v40, &v50, v60, 16);
          }

          while (v42);
        }

        CSDBSqliteStatementPerform();
        CSDBSqliteStatementReset();
      }

      CFRelease(v32);
      objc_msgSend_stopTimingForKey_(*(a1 + 32), v45, @"Query2-Update");
    }
  }

  CSDBRecordSaveStore();
  result = CSDBRecordStoreInvalidateCachesWithStore();
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

void *IMDGenerateInClauseForCount(int a1, const char *a2)
{
  v4 = objc_msgSend_stringWithString_(MEMORY[0x1E696AD60], a2, @"IN (");
  if (a1 >= 1)
  {
    v5 = 0;
    do
    {
      if (v5 >= a1 - 1)
      {
        objc_msgSend_appendFormat_(v4, v3, @"? "));
      }

      else
      {
        objc_msgSend_appendFormat_(v4, v3, @"?, ");
      }

      ++v5;
    }

    while (a1 != v5);
  }

  return v4;
}

uint64_t IMDMessageRecordCopyGUIDForMessage(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = a1;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_DEBUG, "IMDMessageRecordCopyGUID [%@]", &v6, 0xCu);
    }
  }

  if (a1)
  {
    result = IMDMessageRecordCopyGUID(*MEMORY[0x1E695E480], a1, v2);
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IMDMessageRecordCopyGUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF3C4(v9, v10, v11, v12, v13, v14, v15, v16);
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
    v17[2] = sub_1B7AF51B4;
    v17[3] = &unk_1E7CB7920;
    v17[4] = &v18;
    v17[5] = a2;
    _IMDPerformBlock(v17);
    ValueAtIndex = v19[3];
    _Block_object_dispose(&v18, 8);
    return ValueAtIndex;
  }

  v4 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + 16);
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

void sub_1B7AF519C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7AF51B4(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t sub_1B7AF5358(char a1, uint64_t a2, void (*a3)(void))
{
  sub_1B7AE3F68();
  v20 = 0;
  v21 = 0xE000000000000000;
  v5 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD000000000000024, 0x80000001B7D58920);
  v6 = sub_1B7AE3A9C(0, 1, 1, v5);
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1B7AE3A9C((v7 > 1), v8 + 1, 1, v6);
  }

  v9 = MEMORY[0x1E69E6370];
  v18 = MEMORY[0x1E69E6370];
  v19 = &off_1F2FA89D8;
  v10 = a1 & 1;
  LOBYTE(v17) = v10;
  v6[2] = v8 + 1;
  sub_1B7AE910C(&v17, &v6[5 * v8 + 4]);
  v22 = v6;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0xD000000000000035, 0x80000001B7D58950);
  v12 = v6[2];
  v11 = v6[3];
  if (v12 >= v11 >> 1)
  {
    v6 = sub_1B7AE3A9C((v11 > 1), v12 + 1, 1, v6);
  }

  v18 = v9;
  v19 = &off_1F2FA89D8;
  LOBYTE(v17) = v10;
  v6[2] = v12 + 1;
  sub_1B7AE910C(&v17, &v6[5 * v12 + 4]);
  v22 = v6;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0xD000000000000031, 0x80000001B7D58990);
  v13 = sub_1B7AF5664(a2);
  sub_1B7AF57A0(v13);

  v14 = v22;
  sub_1B7AE3B2C(v20, v21, 0);
  sub_1B7AF3FE4(v14);

  a3(0);
}

uint64_t sub_1B7AF5664(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B7AF5760(0, v1, 0);
    v2 = v13;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);

      if (v8 >= v7 >> 1)
      {
        sub_1B7AF5760((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v11 = MEMORY[0x1E69E6158];
      v12 = &off_1F2FA8B58;
      *&v10 = v6;
      *(&v10 + 1) = v5;
      *(v2 + 16) = v8 + 1;
      sub_1B7AE910C(&v10, v2 + 40 * v8 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1B7AF5760(void *a1, int64_t a2, char a3)
{
  result = sub_1B7AE9AB8(a1, a2, a3, *v3, &unk_1EBA52600, &qword_1B7D0AA78, &qword_1EBA52460, &qword_1B7D113A0);
  *v3 = result;
  return result;
}

uint64_t sub_1B7AF57A0(uint64_t a1)
{

  sub_1B7AF3098(v2);
  sub_1B7AF7F10(0x3F, 0xE100000000000000, *(a1 + 16));
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v3 = sub_1B7CFEA10();
  v5 = v4;

  MEMORY[0x1B8CADCA0](v3, v5);

  MEMORY[0x1B8CADCA0](2107680, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](2107424, 0xE300000000000000);
}

uint64_t sub_1B7AF58B0(sqlite3_stmt *a1, int a2, char a3)
{
  result = sqlite3_bind_int64(a1, a2, a3 & 1);
  if (result)
  {
    result = sqlite3_db_handle(a1);
    if (result)
    {
      v5 = result;
      result = sqlite3_errmsg(result);
      if (result)
      {
        v6 = sub_1B7CFEB70();
        v8 = v7;
        v9 = sqlite3_extended_errcode(v5);
        sub_1B7C951E8();
        swift_allocError();
        *v10 = v9;
        v10[1] = v6;
        v10[2] = v8;
        return swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1B7AF595C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B7CFDEB0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1B7AF59C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFC990();
    }
  }
}

uint64_t sub_1B7AF5A14(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  MessagesPriorToGuidMatchingChatGUIDs = IMDMessageRecordCopyAndMarkAsReadMessagesPriorToGuidMatchingChatGUIDs(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 72));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v22 = 138412802;
      v23 = v7;
      v24 = 2112;
      v25 = v6;
      v26 = 2048;
      v27 = objc_msgSend_count(MessagesPriorToGuidMatchingChatGUIDs, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy messages guids, and mark read, for chatGUIDs: %@ up to guid: %@  (Results: %ld)", &v22, 0x20u);
    }
  }

  v10 = xpc_array_create(0, 0);
  if (v10)
  {
    v11 = objc_msgSend_count(MessagesPriorToGuidMatchingChatGUIDs, v8, v9);
    if (v11 >= 1)
    {
      v13 = 0;
      v14 = v11 & 0x7FFFFFFF;
      do
      {
        v15 = objc_msgSend_objectAtIndex_(MessagesPriorToGuidMatchingChatGUIDs, v12, v13);
        v17 = xpc_dictionary_create(0, 0, 0);
        if (v17)
        {
          v18 = objc_msgSend_UTF8String(v15, v12, v16);
          xpc_array_set_string(v10, 0xFFFFFFFFFFFFFFFFLL, v18);
          xpc_release(v17);
        }

        ++v13;
      }

      while (v14 != v13);
    }

    v19 = *(a1 + 56);
    if (v19)
    {
      xpc_dictionary_set_value(v19, "array_result", v10);
    }

    xpc_release(v10);
  }

  if (MessagesPriorToGuidMatchingChatGUIDs)
  {
    CFRelease(MessagesPriorToGuidMatchingChatGUIDs);
  }

  result = *(a1 + 64);
  if (result)
  {
    result = (*(result + 16))();
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void IMDNotificationsRetractNotificationsForReadMessages(void *a1)
{
  v5 = a1;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v3 = objc_msgSend_sharedInstance(IMDNotificationsController, v1, v2);
    objc_msgSend_retractNotificationsForReadMessages_(v3, v4, v5);
  }

  else
  {
    __asyncXPCIMDNotificationsRetractNotificationsForReadMessages_IPCAction(&unk_1F2F9FC70, v5);
  }
}

void __asyncXPCIMDNotificationsRetractNotificationsForReadMessages_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 196);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 1);

    xpc_release(v5);
  }
}

void *sub_1B7AF5D20@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  sub_1B7AD8208(a1);
  result = *a1;
  if (!*a1 || (v5 = [result remoteObjectProxy], sub_1B7CFF0A0(), swift_unknownObjectRelease(), sub_1B7C107FC(&qword_1EBA52810, &qword_1B7D0D250), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a2 = 0;
  }

  return result;
}

void IMDCoreSpotlightReindexMessagesWhileBlocking(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v10 = objc_msgSend_queryProviderWithBlockingXPC_(IMDIndexingController, v9, a3);
  v11 = [IMDIndexingContext alloc];
  v13 = objc_msgSend_initForReindexing_reason_(v11, v12, 1, a2);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1B7BAF934;
  v17[3] = &unk_1E7CBB398;
  v18 = v7;
  v19 = v8;
  v14 = v8;
  v15 = v7;
  objc_msgSend_addMessageGUIDs_context_completionHandler_(v10, v16, v15, v13, v17);
}

void __XPCServerIMDNotificationsRetractNotificationsForReadMessages_asyncIPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7AF5FF8;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a5;
  v7[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t sub_1B7AF5FF8(uint64_t a1)
{
  IMDNotificationsRetractNotificationsForReadMessages(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1B7AF6150(void *a1)
{
  block = a1;
  sub_1B7AF61B8(0);
  if (qword_1EBA53C08 != -1)
  {
    sub_1B7CECB5C();
  }

  dispatch_async(qword_1EBA53C00, block);
}

void sub_1B7AF61B8(int a1)
{
  v1 = a1;
  if ((dispatch_get_specific("_IMDNotificationRequestQueue") != 0) != a1)
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "**************************************************************************", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "******* Notification work done on wrong queue, please file a radar *******", v9, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "**************************************************************************", v8, 2u);
      }
    }

    v7 = objc_msgSend_logger(IMDNotificationsController, v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1B7CECACC(v1, v7);
    }
  }
}

const __CFArray *IMDMessageRecordCopyMessagesForGUIDs(const __CFArray *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEBUG, "IMDMessageRecordCopyMessagesForGUIDs [%@]", &buf, 0xCu);
    }
  }

  if (a1)
  {
    if (CFArrayGetCount(a1))
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v8 = 0x2020000000;
      v9 = 0;
      if (IMDIsRunningInDatabaseServerProcess())
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = sub_1B7AF69BC;
        v6[3] = &unk_1E7CBCBC8;
        v6[4] = &buf;
        v6[5] = a1;
        _IMDPerformLockedDatabaseBlock(v6);
      }

      else
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = sub_1B7BD7C54;
        v5[3] = &unk_1E7CB6838;
        v5[4] = &buf;
        __syncXPCIMDMessageRecordCopyMessagesForGUIDs_IPCAction(v5, a1);
      }

      a1 = *(*(&buf + 1) + 24);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      a1 = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void __syncXPCIMDMessageRecordCopyMessagesForGUIDs_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 44);
    if (a2)
    {
      IMInsertArraysToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void IMDIndexingClientRequest(void *a1)
{
  if (dispatch_get_specific("IMDIndexingClientRequestQueue"))
  {
    v2 = a1[2];
    v4 = a1;
    v2();
  }

  else
  {
    v3 = a1;
    v4 = IMDIndexingClientRequestQueue();
    dispatch_async(v4, v3);
  }
}

id IMDIndexingClientRequestQueue()
{
  if (qword_1EBA53C18 != -1)
  {
    sub_1B7CFB688();
  }

  v1 = qword_1EBA53C10;

  return v1;
}

void __XPCServerIMDMessageRecordCopyMessagesForGUIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7AF67EC;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7AF67EC(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessagesForGUIDs(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v19 = 138412546;
      v20 = v6;
      v21 = 2048;
      v22 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying messages for guids: %@   (Results: %ld)", &v19, 0x16u);
    }
  }

  v9 = xpc_array_create(0, 0);
  if (v9)
  {
    v10 = objc_msgSend_count(v2, v7, v8);
    if (v10 >= 1)
    {
      v12 = 0;
      v13 = v10 & 0x7FFFFFFF;
      do
      {
        v14 = objc_msgSend_objectAtIndex_(v2, v11, v12);
        v15 = xpc_dictionary_create(0, 0, 0);
        if (v15)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v14, v15, 1, 0);
          xpc_array_append_value(v9, v15);
          xpc_release(v15);
        }

        ++v12;
      }

      while (v13 != v12);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      xpc_dictionary_set_value(v16, "array_result", v9);
    }

    xpc_release(v9);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7AF69BC(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 40));
  v3 = IMDMessageRecordCopyMessagesForGUIDsQuery(Count);
  if (!v3)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFBE60(v4, v5);
    }
  }

  v6 = CSDBSqliteDatabaseStatementForWriting();
  if (v6 && *(v6 + 8))
  {
    v7 = *(a1 + 40);
    v8 = CSDBSqliteBindTextFromCFArrayOfCFStrings();
    sub_1B7AEAEE4(v8, v9, v10);
    v11 = CSDBRecordStoreProcessStatement();
    v12 = CFArrayGetCount(v11);
    if (v12 >= 1)
    {
      v13 = 0;
      v14 = *MEMORY[0x1E695E480];
      v15 = v12 & 0x7FFFFFFF;
      v16 = MEMORY[0x1E695E9C0];
      while (1)
      {
        CFArrayGetValueAtIndex(v11, v13);
        ID = CSDBRecordGetID();
        v18 = IMDMessageRecordCreateFromRecordIDUnlocked(v14, ID);
        v19 = v18;
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          break;
        }

        if (v18)
        {
          goto LABEL_10;
        }

LABEL_11:
        if (v15 == ++v13)
        {
          goto LABEL_15;
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(v14, v15, v16);
      if (!v19)
      {
        goto LABEL_11;
      }

LABEL_10:
      CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v19);
      CFRelease(v19);
      goto LABEL_11;
    }

LABEL_15:
    CSDBSqliteStatementReset();
    if (v11)
    {
      CFRelease(v11);
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

__CFString *IMDMessageRecordCopyMessagesForGUIDsQuery(int a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message ");
    CFStringAppend(v3, @"WHERE guid ");
    v5 = IMDGenerateInClauseForCount(a1, v4);
    CFStringAppend(v3, v5);
    CFStringAppend(v3, @"ORDER BY message.ROWID ASC;");
  }

  else
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD218(v6, v7);
    }
  }

  return v3;
}

uint64_t IMDCoreSpotlightDisabled(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_supportsSpotlight(MEMORY[0x1E69A8020], a2, a3);
  if ((v3 & 1) == 0 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Not donating to spotlight since it is not enabled", v6, 2u);
    }
  }

  return v3 ^ 1u;
}

uint64_t sub_1B7AF6C94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA51FB0, &unk_1B7D0FA00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7AF6D20@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    v11 = 1;
  }

  else
  {
    result = (*(a4 + 24))(a1, a2, a3, a4);
    if (v5)
    {
      return result;
    }

    v11 = 0;
  }

  return (*(*(a3 - 8) + 56))(a5, v11, 1, a3);
}

sqlite3_int64 sub_1B7AF6DE8@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, BOOL *a3@<X8>)
{
  result = sqlite3_column_int64(a1, a2);
  *a3 = result != 0;
  return result;
}

void sub_1B7AF6FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7AF7684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7AF769C(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = objc_msgSend_batchFetcher(*(a1 + 32), a2, a3);
  v6 = objc_msgSend__messageRecordBatchSize(*(a1 + 32), v4, v5);
  v8 = objc_msgSend_nextBatchWithSize_(v11, v7, v6);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t sub_1B7AF7A58()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B7AF7A98(uint64_t a1, void (*a2)(void *, void))
{
  sub_1B7AE3F68();
  v37[1] = 0xE000000000000000;
  v3 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD0000000000000B5, 0x80000001B7D591D0);
  v4 = sub_1B7AF5664(a1);
  sub_1B7AF57A0(v4);

  MEMORY[0x1B8CADCA0](8763, 0xE200000000000000);

  v5 = sub_1B7AE3B2C(0, 0xE000000000000000, 0);
  v37[0] = v3;

  sub_1B7AEA964(v38, v5, v37, v5);

  swift_bridgeObjectRelease_n();
  v6 = v37[0];
  v7 = sub_1B7AF1238(MEMORY[0x1E69E7CC0]);
  v35 = *(v6 + 16);
  if (!v35)
  {
LABEL_20:

    a2(v7, 0);

    return;
  }

  v8 = 0;
  v9 = (v6 + 56);
  v34 = v6;
  while (v8 < *(v6 + 16))
  {
    v10 = *(v9 - 2);
    v36 = *(v9 - 3);
    v11 = *(v9 - 1);
    v12 = *v9;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37[0] = v7;
    v15 = sub_1B7AE11D0(v11, v12);
    v16 = v7[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_24;
    }

    v19 = v14;
    if (v7[3] >= v18)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v14)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1B7CE84C8();
        v7 = v37[0];
        if (v19)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_1B7CE4030(v18, isUniquelyReferenced_nonNull_native);
      v7 = v37[0];
      v20 = sub_1B7AE11D0(v11, v12);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_26;
      }

      v15 = v20;
      if (v19)
      {
LABEL_11:

        goto LABEL_15;
      }
    }

    v7[(v15 >> 6) + 8] |= 1 << v15;
    v22 = (v7[6] + 16 * v15);
    *v22 = v11;
    v22[1] = v12;
    *(v7[7] + 8 * v15) = MEMORY[0x1E69E7CC0];
    v23 = v7[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_25;
    }

    v7[2] = v25;
LABEL_15:
    v26 = v7[7];
    v27 = *(v26 + 8 * v15);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + 8 * v15) = v27;
    if ((v28 & 1) == 0)
    {
      v27 = sub_1B7AF182C(0, *(v27 + 2) + 1, 1, v27);
      *(v26 + 8 * v15) = v27;
    }

    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    if (v30 >= v29 >> 1)
    {
      *(v26 + 8 * v15) = sub_1B7AF182C((v29 > 1), v30 + 1, 1, v27);
    }

    ++v8;

    v31 = *(v26 + 8 * v15);
    *(v31 + 16) = v30 + 1;
    v32 = v31 + 16 * v30;
    *(v32 + 32) = v36;
    *(v32 + 40) = v10;
    v9 += 4;
    v6 = v34;
    if (v35 == v8)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1B7CFF740();
  __break(1u);
}

void *sub_1B7AF7F10(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1B7CFED20();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

unint64_t sub_1B7AF7FAC()
{
  result = qword_1EDBE3020;
  if (!qword_1EDBE3020)
  {
    sub_1B7C1091C(&unk_1EBA525A0, "D\r\b");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBE3020);
  }

  return result;
}

id _IMDSpotlightIndexForIndexingReason()
{
  IMDIndexingAssertClientRequestQueue();
  if (objc_msgSend_deviceIsLockedDown(MEMORY[0x1E69A8020], v0, v1))
  {
    v4 = 0;
  }

  else if (objc_msgSend_alwaysUseCriticalIndex(MEMORY[0x1E69A7FF8], v2, v3) || IMCoreSpotlightIndexReasonIsIncomingMessage() && (objc_msgSend_messageSummarizationEnabled(MEMORY[0x1E69A8090], v5, v6) & 1) != 0)
  {
    v4 = IMCoreSpotlightCriticalIndex();
  }

  else
  {
    v4 = IMCoreSpotlightIndex();
  }

  return v4;
}

void IMDIndexingAssertClientRequestQueue()
{
  if (!dispatch_get_specific("IMDIndexingClientRequestQueue"))
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
        *v16 = 0;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "********** Indexing work done on wrong queue, please file a radar ********", v16, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "**************************************************************************", v15, 2u);
      }
    }

    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1B7CFB69C(v3);
    }

    v6 = objc_msgSend_date(MEMORY[0x1E695DF00], v4, v5);
    v8 = v6;
    if (qword_1EBA542E8 && (objc_msgSend_timeIntervalSinceDate_(v6, v7, qword_1EBA542E8), v11 <= 10.0))
    {
      v13 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v9, v10);
      objc_msgSend_forceAutoBugCaptureWithSubType_errorPayload_type_context_(v13, v14, @"Threading Issue", 0, @"Spotlight", @"Spotlight work unexpectedly done off the Spotlight queue");
    }

    else
    {
      v12 = v8;
      v13 = qword_1EBA542E8;
      qword_1EBA542E8 = v12;
    }
  }
}

id IMCoreSpotlightIndex()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    IMDIndexingAssertClientRequestQueue();
  }

  if (qword_1EDBE5C20 != -1)
  {
    sub_1B7AF833C();
  }

  v0 = qword_1EDBE5C18;

  return v0;
}

void sub_1B7AF8350()
{
  v0 = objc_alloc(MEMORY[0x1E6964E78]);
  v2 = objc_msgSend_initWithName_bundleIdentifier_(v0, v1, @"com.apple.MobileSMS", @"com.apple.MobileSMS");
  v3 = qword_1EDBE5C18;
  qword_1EDBE5C18 = v2;
}

void sub_1B7AF8670(uint64_t a1, void *a2, char a3)
{
  if (a2)
  {
    a3 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = a3;
  v5 = *(a1 + 32);
  v8 = a2;
  objc_msgSend_invalidate(v5, v6, v7);
  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_1B7AF871C(uint64_t *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[20]);
  if (v2)
  {
    v3 = v2;
    IMDChatRecordBulkUpdate(v2, a1[21], a1[22], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[23], a1[24], a1[25], a1[14], a1[15], a1[26], a1[16], a1[27], a1[17], a1[18], a1[28], a1[29], a1[30], a1[31], a1[32]);
    CFRelease(v3);
  }

  result = a1[19];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void IMDChatRecordBulkUpdate(uint64_t a1, int64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int64_t a14, int64_t a15, int64_t a16, uint64_t a17, uint64_t a18, int64_t a19, uint64_t a20, int64_t a21, uint64_t a22, uint64_t a23, int64_t a24, int64_t a25, int64_t a26, int64_t a27, int64_t a28)
{
  v49 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v48 = a1;
      _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_DEBUG, "IMDChatRecordBulkUpdateChat %@", buf, 0xCu);
    }
  }

  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = sub_1B7AF8A58;
      v46[3] = &unk_1E7CB9030;
      v46[4] = a1;
      v46[5] = a3;
      v46[6] = a2;
      v46[7] = a14;
      v46[8] = a15;
      v46[9] = a24;
      v46[10] = a27;
      v46[11] = a28;
      v46[12] = a16;
      v46[13] = a4;
      v46[14] = a5;
      v46[15] = a6;
      v46[16] = a7;
      v46[17] = a11;
      v46[18] = a10;
      v46[19] = a8;
      v46[20] = a9;
      v46[21] = a12;
      v46[22] = a13;
      v46[23] = a17;
      v46[24] = a18;
      v46[25] = a19;
      v46[26] = a20;
      v46[27] = a21;
      v46[28] = a22;
      v46[29] = a23;
      v46[30] = a26;
      v46[31] = a25;
      _IMDPerformBlock(v46);
    }

    else
    {
      __syncXPCIMDChatRecordBulkUpdate_IPCAction(0, *(a1 + 16), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
    }
  }

  else
  {
    v37 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3A70(v37, v38, v39, v40, v41, v42, v43, v44);
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

void sub_1B7AF8A58(void *a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(a1[4] + 16));
  if (v2)
  {
    v3 = v2;
    v4 = a1[5];
    CSDBRecordSetProperty();
    v5 = a1[6];
    CSDBRecordSetProperty();
    v6 = a1[7];
    CSDBRecordSetProperty();
    v7 = a1[8];
    CSDBRecordSetProperty();
    v8 = a1[9];
    CSDBRecordSetProperty();
    v9 = a1[10];
    CSDBRecordSetProperty();
    v10 = a1[11];
    CSDBRecordSetProperty();
    v11 = a1[12];
    CSDBRecordSetProperty();
    if (a1[13])
    {
      CSDBRecordSetProperty();
    }

    if (a1[14])
    {
      CSDBRecordSetProperty();
    }

    if (a1[15])
    {
      CSDBRecordSetProperty();
    }

    if (a1[16])
    {
      CSDBRecordSetProperty();
    }

    if (a1[17])
    {
      v12 = a1[17];
    }

    CSDBRecordSetProperty();
    if (a1[18])
    {
      v13 = a1[18];
    }

    CSDBRecordSetProperty();
    if (a1[19])
    {
      CSDBRecordSetProperty();
    }

    if (a1[20])
    {
      CSDBRecordSetProperty();
    }

    if (a1[21])
    {
      CSDBRecordSetProperty();
    }

    if (a1[22])
    {
      CSDBRecordSetProperty();
    }

    if (a1[23])
    {
      CSDBRecordSetProperty();
    }

    if (a1[24])
    {
      v14 = a1[24];
    }

    CSDBRecordSetProperty();
    v15 = a1[25];
    CSDBRecordSetProperty();
    if (a1[26])
    {
      CSDBRecordSetProperty();
    }

    sub_1B7AF8CB8(v3, 19, a1[27]);
    if (a1[28])
    {
      v16 = a1[28];
    }

    CSDBRecordSetProperty();
    if (a1[29])
    {
      CSDBRecordSetProperty();
    }

    sub_1B7AF8CB8(v3, 23, a1[30]);
    v17 = a1[31];
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

void sub_1B7AF8CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  valuePtr = a3;
  v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (v3)
  {
    v4 = v3;
    CSDBRecordSetProperty();
    CFRelease(v4);
  }
}

void IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(const void *a1)
{
  _IMDPerformLockedMessageStoreBlock(&unk_1F2FA0BD0);

  CFRelease(a1);
}

void __syncXPCIMDChatRecordCopyChatForGUID_IPCAction(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_int64(v4, "__xpc__event_code__", 122);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    IMInsertBoolsToXPCDictionary();
    __XPCIMDMessageStoreSendXPCMessage(v5, a1, 0);

    xpc_release(v5);
  }
}

void __syncXPCIMDHandleRecordBulkUpdate_IPCAction(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = xpc_dictionary_create(0, 0, 0);
  if (v14)
  {
    v15 = v14;
    xpc_dictionary_set_int64(v14, "__xpc__event_code__", 40);
    if (a2)
    {
      xpc_dictionary_set_int64(v15, "handleID", a2);
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a4)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a5)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a6)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a7)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v15, a1, 0);

    xpc_release(v15);
  }
}

void IMDHandleRecordBulkUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFEDC(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    goto LABEL_9;
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138413570;
        v26 = a1;
        v27 = 2112;
        v28 = a2;
        v29 = 2112;
        v30 = a3;
        v31 = 2112;
        v32 = a4;
        v33 = 2112;
        v34 = a5;
        v35 = 2112;
        v36 = a6;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Updating handle: %@   ID: %@   Country: %@   Service: %@  Unformatted: %@ PersonCentricID: %@", buf, 0x3Eu);
      }
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1B7AF9400;
    v24[3] = &unk_1E7CB8310;
    v24[4] = a1;
    v24[5] = a2;
    v24[6] = a3;
    v24[7] = a4;
    v24[8] = a5;
    v24[9] = a6;
    _IMDPerformBlock(v24);
LABEL_9:
    v21 = *MEMORY[0x1E69E9840];
    return;
  }

  v22 = *(a1 + 16);
  v23 = *MEMORY[0x1E69E9840];

  __syncXPCIMDHandleRecordBulkUpdate_IPCAction(0, v22, a2, a3, a4, a5, a6);
}

uint64_t sub_1B7AF9184(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDHandleRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __XPCServerIMDHandleRecordBulkUpdate_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7AF9244;
  block[3] = &unk_1E7CBD578;
  block[9] = a4;
  block[10] = a5;
  block[4] = a6;
  block[5] = a7;
  block[6] = a9;
  block[7] = a8;
  block[8] = a10;
  v10 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v10, v11);
}

uint64_t sub_1B7AF9244(uint64_t *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = IMDHandleRecordCreateFromRecordID(0, a1[10]);
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = a1[10];
        v6 = a1[4];
        v7 = a1[5];
        v8 = a1[6];
        v9 = a1[7];
        v10 = a1[8];
        v15 = 134219266;
        v16 = v5;
        v17 = 2112;
        v18 = v6;
        v19 = 2112;
        v20 = v7;
        v21 = 2112;
        v22 = v8;
        v23 = 2112;
        v24 = v9;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Updating handle record for handle ID: %lld   ID: %@  country: %@  unformatted: %@  service: %@ personCentricID: %@", &v15, 0x3Eu);
      }
    }

    IMDHandleRecordBulkUpdate(v2, a1[4], a1[5], a1[7], a1[6], a1[8]);
    CFRelease(v2);
  }

  else if (v3)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = a1[10];
      v15 = 134217984;
      v16 = v12;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Failed handle record record ID: %lld", &v15, 0xCu);
    }
  }

  result = a1[9];
  if (result)
  {
    result = (*(result + 16))();
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7AF9400(void *a1)
{
  v2 = IMDHandleRecordCopyHandleRecordUnlocked(*(a1[4] + 16));
  if (v2)
  {
    v3 = v2;
    if (a1[5])
    {
      CSDBRecordSetProperty();
    }

    if (a1[6])
    {
      CSDBRecordSetProperty();
    }

    if (a1[7])
    {
      CSDBRecordSetProperty();
    }

    if (a1[8])
    {
      CSDBRecordSetProperty();
    }

    if (a1[9])
    {
      CSDBRecordSetProperty();
    }

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

void __XPCServerIMDChatRecordCopyChatForGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7AFA0A8;
  v8[3] = &unk_1E7CBD370;
  v9 = a6;
  v8[4] = a5;
  v8[5] = a3;
  v8[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t IMDMessageRecordCopyAttachmentsForIDWithLock(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7AFA13C;
  v3[3] = &unk_1E7CB7520;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedStatementBlockWithQuery(@"SELECT attachment_id FROM message_attachment_join WHERE message_id = ? LIMIT ?;", v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7AF95E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7AF9600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 48);
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
        v12 = v10;
        ItemType = IMDMessageRecordGetItemType(v10, 0, v11);
        ScheduleType = IMDMessageRecordGetScheduleType(v12, 0, v14);
        v17 = IMDMessageRecordGetScheduleState(v12, 0, v16) - 1;
        v19 = ScheduleType == 2 && v17 < 2;
        if (ItemType)
        {
          v20 = 0;
        }

        else
        {
          v20 = !v19;
        }

        if (v20)
        {
          v21 = *(*(a1 + 40) + 8);
          v22 = *(v21 + 24);
          if (v22)
          {
            CFRelease(v22);
            *(*(*(a1 + 40) + 8) + 24) = 0;
            v21 = *(*(a1 + 40) + 8);
          }

          *(v21 + 24) = v12;
        }

        else
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          CFRelease(v12);
        }
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

void sub_1B7AF9720(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

uint64_t IMDMessageRecordGetScheduleState(uint64_t a1, const char *a2, uint64_t a3)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -1;
  if (a1)
  {
    v3 = a2;
    if (*(a1 + 24))
    {
      v5 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + 3576);
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 89);
      v7 = ValueAtIndex;
      if (ValueAtIndex && v5)
      {
        if (!*v5)
        {
LABEL_8:
          CFNumberGetValue(v7, kCFNumberSInt64Type, v20 + 3);
          CFRelease(v7);
          goto LABEL_14;
        }

        v7 = (*v5)(ValueAtIndex);
      }

      if (v7)
      {
        goto LABEL_8;
      }
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7AF9720;
    v18[3] = &unk_1E7CB7920;
    v18[4] = &v19;
    v18[5] = a1;
    if (v3)
    {
      _IMDPerformBlock(v18);
    }

    else
    {
      sub_1B7AF9720(v18);
    }
  }

  else
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF694(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

LABEL_14:
  v16 = v20[3];
  _Block_object_dispose(&v19, 8);
  return v16;
}

void sub_1B7AF98E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7AF9908(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

uint64_t IMDMessageRecordGetScheduleType(uint64_t a1, const char *a2, uint64_t a3)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -1;
  if (a1)
  {
    v3 = a2;
    if (*(a1 + 24))
    {
      v5 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + 3536);
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 88);
      v7 = ValueAtIndex;
      if (ValueAtIndex && v5)
      {
        if (!*v5)
        {
LABEL_8:
          CFNumberGetValue(v7, kCFNumberSInt64Type, v20 + 3);
          CFRelease(v7);
          goto LABEL_14;
        }

        v7 = (*v5)(ValueAtIndex);
      }

      if (v7)
      {
        goto LABEL_8;
      }
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7AF9908;
    v18[3] = &unk_1E7CB7920;
    v18[4] = &v19;
    v18[5] = a1;
    if (v3)
    {
      _IMDPerformBlock(v18);
    }

    else
    {
      sub_1B7AF9908(v18);
    }
  }

  else
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF61C(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

LABEL_14:
  v16 = v20[3];
  _Block_object_dispose(&v19, 8);
  return v16;
}

void sub_1B7AF9AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7AF9AF0(uint64_t a1)
{
  v2 = IMDMessageRecordCopyMessageRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

uint64_t IMDMessageRecordGetItemType(uint64_t a1, const char *a2, uint64_t a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -1;
  if (!a1)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEF52C(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    goto LABEL_12;
  }

  if (!*(a1 + 24))
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1B7AF9AF0;
    v16[3] = &unk_1E7CB7920;
    v16[4] = &v17;
    v16[5] = a1;
    if (a2)
    {
      _IMDPerformBlock(v16);
    }

    else
    {
      sub_1B7AF9AF0(v16);
    }

LABEL_12:
    v6 = v18[3];
    goto LABEL_13;
  }

  v4 = *(*(objc_msgSend_messageRecordDescriptor(IMDLegacyRecordBridge, a2, a3) + 80) + 1616);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 40);
  v6 = ValueAtIndex;
  if (ValueAtIndex && v4 && *v4)
  {
    v6 = (*v4)(ValueAtIndex);
  }

LABEL_13:
  _Block_object_dispose(&v17, 8);
  return v6;
}

void sub_1B7AF9C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t IMDChatRecordCopyLastMessage(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  Identifier = IMDChatRecordGetIdentifier(a1);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7AF9600;
  v6[3] = &unk_1E7CB9010;
  v6[5] = &v11;
  v6[6] = Identifier;
  v6[4] = &v7;
  _IMDPerformLockedStatementBlockWithQuery(@"SELECT cm.message_id from chat_message_join cm where cm.chat_id = ? ORDER BY cm.message_date DESC, cm.message_id DESC LIMIT 1;", v6);
  if (*(v8 + 24) == 1)
  {
    v2 = v12[3];
    if (v2)
    {
      CFRelease(v2);
    }

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1B7B56204;
    v5[3] = &unk_1E7CB7520;
    v5[4] = &v11;
    v5[5] = Identifier;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID from message m                 INNER JOIN chat_message_join cm ON cm.chat_id = ? AND cm.message_id = m.ROWID                 WHERE m.item_type == 0                 AND (m.schedule_type == 0                     OR (m.schedule_type == 2 AND (m.schedule_state != 1 AND m.schedule_state != 2)))                 ORDER BY cm.message_date DESC, cm.message_id DESC LIMIT 1", v5);
  }

  v3 = v12[3];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v3;
}

uint64_t sub_1B7AF9E34(uint64_t a1, unint64_t a2)
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
    if (qword_1EBA50DF0 != -1)
    {
      swift_once();
    }

    v5 = off_1EBA50DF8;
    v6 = *(off_1EBA50DF8 + 2);
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
    if (qword_1EBA50DF0 != -1)
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

void sub_1B7AFA0A8(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatForGUIDWithDisplayNameHiddenIfUnknown(*(a1 + 32), *(a1 + 56));
  v3 = v2;
  if (v2)
  {
    _IMDChatRecordBulkCopyXPCDictionary(v2, *(a1 + 40), 0, 0, 1, 1);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))();
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_1B7AFA13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 40);
  CSDBSqliteBindInt();
  CSDBSqliteBindInt64();
  if (sqlite3_step(*(a4 + 8)) != 100)
  {
    goto LABEL_20;
  }

  v7 = 0;
  v8 = *MEMORY[0x1E695E480];
  v9 = MEMORY[0x1E695E9C0];
  do
  {
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v9);
    }

    v10 = sqlite3_column_int(*(a4 + 8), 0);
    v11 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(v10);
    if (v11)
    {
      ID = CSDBRecordGetID();
      v13 = IMDAttachmentRecordCreateFromRecordIDUnlocked(v8, ID);
      if (v13)
      {
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v13);
        if (v7)
        {
          v7 = 1;
        }

        else
        {
          v14 = IMDAttachmentRecordCopyGUID(v8, v13);
          if (v14)
          {
            v15 = IMFileTransferGUIDIsTemporary();
            v7 = v15;
            if (v15)
            {
              if (IMOSLoggingEnabled())
              {
                v16 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v21 = v14;
                  _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Found legacy GUID %@ in list of attachments", buf, 0xCu);
                }
              }
            }
          }

          else
          {
            v7 = 0;
          }
        }

        CFRelease(v13);
      }

      CFRelease(v11);
    }
  }

  while (sqlite3_step(*(a4 + 8)) == 100);
  if ((v7 & 1) == 0)
  {
LABEL_20:
    v17 = *(*(a1 + 32) + 8);
    v18 = *(v17 + 24);
    if (v18)
    {
      v23.length = CFArrayGetCount(*(v17 + 24));
      v23.location = 0;
      CFArraySortValues(v18, v23, sub_1B7B361B8, 0);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

id sub_1B7AFA388(void *a1)
{
  v2 = sub_1B7CFEA30();
  v3 = [a1 allColumnsWithPrefix_];

  if (!v3)
  {
    sub_1B7CFEA60();
    v4 = sub_1B7CFEA30();

    v3 = v4;
  }

  return v3;
}

void __syncXPCIMDChatRecordBulkUpdate_IPCAction(uint64_t a1, int64_t a2, int64_t a3, int64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int64_t a15, int64_t a16, int64_t a17, uint64_t a18, uint64_t a19, int64_t a20, uint64_t a21, int64_t a22, uint64_t a23, uint64_t a24, int64_t a25, int64_t a26, int64_t a27, int64_t a28, int64_t a29)
{
  v36 = xpc_dictionary_create(0, 0, 0);
  if (v36)
  {
    v37 = v36;
    xpc_dictionary_set_int64(v36, "__xpc__event_code__", 117);
    if (a2)
    {
      xpc_dictionary_set_int64(v37, "identifier", a2);
    }

    if (a3)
    {
      xpc_dictionary_set_int64(v37, "style", a3);
    }

    if (a4)
    {
      xpc_dictionary_set_int64(v37, "state", a4);
    }

    if (a5)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a6)
    {
      IMInsertDatasToXPCDictionary();
    }

    if (a7)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a8)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a9)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a10)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a11)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a12)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a13)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a14)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a15)
    {
      xpc_dictionary_set_int64(v37, "isArchived", a15);
    }

    if (a16)
    {
      xpc_dictionary_set_int64(v37, "isFiltered", a16);
    }

    if (a25)
    {
      xpc_dictionary_set_int64(v37, "isBlackholed", a25);
    }

    if (a17)
    {
      xpc_dictionary_set_int64(v37, "hasHadSuccessfulQuery", a17);
    }

    if (a18)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a19)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v37, "ckSyncState", a20);
    if (a21)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v37, "lastReadMessageTimeStamp", a22);
    if (a23)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a24)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    xpc_dictionary_set_int64(v37, "syndicationType", a26);
    xpc_dictionary_set_int64(v37, "syndicationDate", a27);
    if (a28)
    {
      xpc_dictionary_set_int64(v37, "isRecovered", a28);
    }

    if (a29)
    {
      xpc_dictionary_set_int64(v37, "isDeletingIncomingMessages", a29);
    }

    __XPCIMDMessageStoreSendXPCMessage(v37, a1, 0);

    xpc_release(v37);
  }
}

void __XPCServerIMDChatRecordBulkUpdate_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, __int128 a14, const char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24, uint64_t a25)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7AF871C;
  block[3] = &unk_1E7CBD708;
  v40 = a6;
  v41 = a7;
  block[4] = a8;
  v28 = a9;
  v29 = a10;
  v30 = a11;
  v31 = a12;
  v42 = a14;
  v32 = a13;
  v33 = a16;
  v43 = a15;
  v44 = a18;
  v34 = a17;
  v35 = a19;
  v45 = a20;
  v36 = a21;
  v37 = a22;
  v46 = a23;
  v47 = a24;
  v48 = a25;
  v38 = a4;
  v39 = a5;
  v25 = sub_1B7ADEAB4(a3, a15, a13);
  IMDPersistencePerformBlock(block, v25, v26);
}

uint64_t IMDHandleRecordCopyHandleForIDOnService(const __CFString *a1, const __CFString *a2)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  v5 = 0;
  if (!a2 || !Length)
  {
    return v5;
  }

  if (!CFStringGetLength(a2))
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7AFAD54;
    v8[3] = &unk_1E7CB7548;
    v8[5] = a1;
    v8[6] = a2;
    v8[4] = &v9;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, id, country, service, uncanonicalized_id, person_centric_id FROM handle WHERE   id = ? AND   service = ? ORDER BY handle.ROWID ASC;", v8);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7AF9184;
    v7[3] = &unk_1E7CB6838;
    v7[4] = &v9;
    __syncXPCIMDHandleRecordCopyHandleForIDOnService_IPCAction(v7, a1, a2);
  }

  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __syncXPCIMDHandleRecordCopyHandleForIDOnService_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    xpc_dictionary_set_int64(v6, "__xpc__event_code__", 41);
    if (a2)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    if (a3)
    {
      IMInsertNSStringsToXPCDictionary();
    }

    __XPCIMDMessageStoreSendXPCMessage(v7, a1, 0);

    xpc_release(v7);
  }
}

void __XPCServerIMDHandleRecordCopyHandleForIDOnService_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7AFABBC;
  v8[3] = &unk_1E7CBD460;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7AFABBC(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = IMDHandleRecordCopyHandleForIDOnService(*(a1 + 32), *(a1 + 40));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 40);
        v12 = 138412546;
        v13 = v5;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copied handle record for ID: %@  service: %@", &v12, 0x16u);
      }
    }

    _IMDHandleRecordBulkCopyXPCDictionary(v2, *(a1 + 48), 1);
    CFRelease(v2);
  }

  else if (v3)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "No handle record found for ID: %@  service: %@", &v12, 0x16u);
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7AFAD54(void *a1)
{
  v2 = a1[5];
  CSDBSqliteBindTextFromCFString();
  v3 = a1[6];
  CSDBSqliteBindTextFromCFString();
  v4 = CSDBRecordStoreProcessStatement();
  if (v4)
  {
    v5 = v4;
    if (CFArrayGetCount(v4))
    {
      CFArrayGetValueAtIndex(v5, 0);
      ID = CSDBRecordGetID();
      *(*(a1[4] + 8) + 24) = IMDHandleRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
    }

    CFRelease(v5);
  }
}

uint64_t sub_1B7AFAE74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1B7AFAEDC()
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1B7AFB1B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7AFB1F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1B7AFB23C(uint64_t a1, void *a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v50 = a4;
  v51 = a3;
  v6 = sub_1B7CFE120();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7AE3F68();
  sub_1B7CFE100();
  sub_1B7CFE0E0();
  v12 = v11;
  (*(v7 + 8))(v10, v6);
  v13 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC0];
  v55 = 0;
  v56 = 0xE000000000000000;
  MEMORY[0x1B8CADCA0](0xD0000000000002E5, 0x80000001B7D4FBD0);
  IMSharedHelperReadMessagePriorityTimeout();
  v15 = v14;
  v16 = sub_1B7AE3A9C(0, 1, 1, v13);
  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1B7AE3A9C((v17 > 1), v18 + 1, 1, v16);
  }

  v19 = MEMORY[0x1E69E63B0];
  v53 = MEMORY[0x1E69E63B0];
  v54 = &off_1F2FA8B38;
  *&v52 = v15;
  v16[2] = v18 + 1;
  sub_1B7AE910C(&v52, &v16[5 * v18 + 4]);
  v57 = v16;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0xD00000000000001ALL, 0x80000001B7D4FEC0);
  IMSharedHelperMessagePriorityTimeout();
  v22 = v16[2];
  v21 = v16[3];
  if (v22 >= v21 >> 1)
  {
    v44 = v20;
    v45 = sub_1B7AE3A9C((v21 > 1), v22 + 1, 1, v16);
    v20 = v44;
    v16 = v45;
  }

  v53 = v19;
  v54 = &off_1F2FA8B38;
  *&v52 = v20;
  v16[2] = v22 + 1;
  sub_1B7AE910C(&v52, &v16[5 * v22 + 4]);
  v57 = v16;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0xD00000000000016FLL, 0x80000001B7D4FEE0);
  v24 = v16[2];
  v23 = v16[3];
  if (v24 >= v23 >> 1)
  {
    v16 = sub_1B7AE3A9C((v23 > 1), v24 + 1, 1, v16);
  }

  v53 = v19;
  v54 = &off_1F2FA8B38;
  *&v52 = v12;
  v16[2] = v24 + 1;
  sub_1B7AE910C(&v52, &v16[5 * v24 + 4]);
  v57 = v16;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0xD000000000000196, 0x80000001B7D50050);
  IMSharedHelperReadMessagePriorityTimeout();
  v27 = v16[2];
  v26 = v16[3];
  if (v27 >= v26 >> 1)
  {
    v46 = v25;
    v47 = sub_1B7AE3A9C((v26 > 1), v27 + 1, 1, v16);
    v25 = v46;
    v16 = v47;
  }

  v53 = v19;
  v54 = &off_1F2FA8B38;
  *&v52 = v25;
  v16[2] = v27 + 1;
  sub_1B7AE910C(&v52, &v16[5 * v27 + 4]);
  v57 = v16;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0xD00000000000001ALL, 0x80000001B7D4FEC0);
  IMSharedHelperMessagePriorityTimeout();
  v30 = v16[2];
  v29 = v16[3];
  if (v30 >= v29 >> 1)
  {
    v48 = v28;
    v49 = sub_1B7AE3A9C((v29 > 1), v30 + 1, 1, v16);
    v28 = v48;
    v16 = v49;
  }

  v53 = v19;
  v54 = &off_1F2FA8B38;
  *&v52 = v28;
  v16[2] = v30 + 1;
  sub_1B7AE910C(&v52, &v16[5 * v30 + 4]);
  v57 = v16;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0xD00000000000038CLL, 0x80000001B7D501F0);
  v32 = v16[2];
  v31 = v16[3];
  if (v32 >= v31 >> 1)
  {
    v16 = sub_1B7AE3A9C((v31 > 1), v32 + 1, 1, v16);
  }

  v53 = v19;
  v54 = &off_1F2FA8B38;
  *&v52 = v12;
  v16[2] = v32 + 1;
  sub_1B7AE910C(&v52, &v16[5 * v32 + 4]);
  v57 = v16;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0xD0000000000000D6, 0x80000001B7D50580);
  v34 = v16[2];
  v33 = v16[3];
  if (v34 >= v33 >> 1)
  {
    v16 = sub_1B7AE3A9C((v33 > 1), v34 + 1, 1, v16);
  }

  v53 = v19;
  v54 = &off_1F2FA8B38;
  *&v52 = v12;
  v16[2] = v34 + 1;
  sub_1B7AE910C(&v52, &v16[5 * v34 + 4]);
  v57 = v16;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0xD00000000000043ELL, 0x80000001B7D50660);
  v35 = sub_1B7AF5664(a1);
  if (*(v35 + 16))
  {
    *&v52 = 32;
    *(&v52 + 1) = 0xE100000000000000;
    v36 = v35;
    v37 = sub_1B7CFF220();
    MEMORY[0x1B8CADCA0](v37);

    MEMORY[0x1B8CADCA0](5130528, 0xE300000000000000);
    MEMORY[0x1B8CADCA0](v52, *(&v52 + 1));

    sub_1B7AF57A0(v36);
  }

  else
  {

    MEMORY[0x1B8CADCA0](2109728, 0xE300000000000000);
  }

  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  v39 = v55;
  v38 = v56;
  v40 = v57;
  v41 = a2;
  v42 = sub_1B7AE3B2C(v39, v38, 0);
  v43 = v41;
  sub_1B7C942E8(v40, v42, &v58, v43);

  v51(v58, 0);
}

void __XPCServerIMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesWithOptionalThreadIdentifierAndLimit_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7AE66E8;
  v11[3] = &unk_1E7CBD5A0;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a7;
  v11[7] = a8;
  v12 = a10;
  v13 = a11;
  v11[9] = a4;
  v11[10] = a9;
  v11[8] = a3;
  IMDPersistencePerformBlock(v11, 1, a3);
}

void sub_1B7AFB9DC(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);
    *buf = 134218498;
    v27 = v5;
    v28 = 2048;
    v29 = v6;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "history query %lu / %lu - %@ - in operation", buf, 0x20u);
  }

  HistoryAllItemsWithOptionalThreadIdentifierQuery = IMDMessageRecordGetHistoryAllItemsWithOptionalThreadIdentifierQuery(*(a1 + 112), *(a1 + 113), *(a1 + 80), *(a1 + 114) != 0);
  if (!HistoryAllItemsWithOptionalThreadIdentifierQuery)
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFBFE4(v9, v10);
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7BDA80C;
  v15[3] = &unk_1E7CBCDB0;
  v11 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = a2;
  v24 = *(a1 + 113);
  v21 = *(a1 + 88);
  v25 = *(a1 + 112);
  v16 = *(a1 + 32);
  v17 = *(a1 + 48);
  v18 = v11;
  v12 = *(a1 + 80);
  v22 = *(a1 + 104);
  v23 = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7BDA96C;
  v14[3] = &unk_1E7CBCCA8;
  v14[4] = v16;
  v14[5] = *(a1 + 56);
  v14[6] = v11;
  v14[7] = v19;
  v14[8] = a2;
  _IMDSqlOperationRunQuery(a2, HistoryAllItemsWithOptionalThreadIdentifierQuery, v15, v14);
  if (HistoryAllItemsWithOptionalThreadIdentifierQuery)
  {
    CFRelease(HistoryAllItemsWithOptionalThreadIdentifierQuery);
  }

  v13 = *MEMORY[0x1E69E9840];
}

__CFString *IMDMessageRecordGetHistoryAllItemsWithOptionalThreadIdentifierQuery(char a1, int a2, uint64_t a3, int a4)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v9 = Mutable;
  if ((a4 & 1) == 0)
  {
    CFStringAppend(Mutable, @"SELECT cm.message_id FROM chat_message_join cm ");
    if ((a1 & 1) == 0)
    {
      if (a2)
      {
        v13 = @"WHERE cm.chat_id IN (SELECT c.ROWID FROM chat c WHERE (c.chat_identifier = ? and c.service_name = ?)) ";
      }

      else
      {
        v13 = @"WHERE cm.chat_id IN (SELECT c.ROWID FROM chat c WHERE (c.chat_identifier = ?)) ";
      }

LABEL_17:
      CFStringAppend(v9, v13);
      if (a4)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

    CFStringAppend(v9, @"INNER JOIN message m ON m.ROWID = cm.message_id ");
    if (a2)
    {
      v12 = @"WHERE cm.chat_id IN (SELECT c.ROWID FROM chat c WHERE (c.chat_identifier = ? and c.service_name = ?)) ";
    }

    else
    {
      v12 = @"WHERE cm.chat_id IN (SELECT c.ROWID FROM chat c WHERE (c.chat_identifier = ?)) ";
    }

    CFStringAppend(v9, v12);
LABEL_13:
    v13 = @"AND ((m.thread_originator_guid = ? AND m.thread_originator_part = ?) OR m.associated_message_guid = ?)";
    goto LABEL_17;
  }

  CFStringAppend(Mutable, @"SELECT m.ROWID FROM message m ");
  CFStringAppend(v9, @"INNER JOIN chat_message_join cm ON m.ROWID = cm.message_id ");
  if (a2)
  {
    v10 = @"WHERE cm.chat_id IN (SELECT c.ROWID FROM chat c WHERE (c.chat_identifier = ? and c.service_name = ?)) ";
  }

  else
  {
    v10 = @"WHERE cm.chat_id IN (SELECT c.ROWID FROM chat c WHERE (c.chat_identifier = ?)) ";
  }

  CFStringAppend(v9, v10);
  if (a1)
  {
    goto LABEL_13;
  }

  if (a4)
  {
LABEL_7:
    CFStringAppend(v9, @"AND m.is_read == 0 AND m.is_finished == 1 AND m.is_from_me == 0 ");
    v11 = @"ORDER BY m.date DESC, m.ROWID DESC ";
    goto LABEL_19;
  }

LABEL_18:
  v11 = @"ORDER BY cm.message_date DESC, cm.message_id DESC ";
LABEL_19:
  CFStringAppend(v9, v11);
  if (a3)
  {
    CFStringAppend(v9, @"LIMIT ?");
  }

  CFStringAppend(v9, @";");
  return v9;
}

uint64_t sub_1B7AFBD80(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7AFBDA0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void *sub_1B7AFBDC8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B7AFBDE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7AFBE04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1B7AFBE38()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B7AFBE80()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B7AFBEB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7AFBF0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B7AE8874(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B7AFBF70()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7AFBFA8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B7AFBFE8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7AFC020()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7AFC058()
{
  MEMORY[0x1B8CB0F40](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7AFC098()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7AFC0E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7AFE378()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7AFE3B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B7AFE400()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B7AFE448()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7AFE480()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7AFE4B8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7AFE4F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B7AFE558()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B7AFE5A0()
{
  v1 = sub_1B7CFE180();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v7 + 8);
  if (v10 >> 60 != 15)
  {
    sub_1B7C204B0(*(v0 + v7), v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v3 | 7);
}

uint64_t sub_1B7AFE6C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  sub_1B7C3D63C();
  result = sub_1B7CFF090();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B7AFE710()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B7AFE758()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_1B7C204B0(*(v0 + 32), v1);
  }

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B7AFE7B8()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_1B7C204B0(*(v0 + 24), v1);
  }

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B7AFE810()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7AFE848()
{
  v1 = sub_1B7CFE120();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1B7AFE908()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B7AFE958()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B7AFE9BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1B7AFEA28(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1B7CFF7B0();
  return sub_1B7AE1164(a1, v4);
}

uint64_t sub_1B7AFEA68()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B7AFEAA8()
{
  v1 = sub_1B7C107FC(&qword_1EBA52630, &qword_1B7D0CC40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B7AFEB3C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B7AFEBC8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7AFEC24()
{
  v1 = sub_1B7CFE2E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1B7AFED1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1B7AFED6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1B7AFEDBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1B7AFEE0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 344);
}

uint64_t sub_1B7AFEE78()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7AFEEB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7AFEEE8()
{
  MEMORY[0x1B8CB0F40](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7AFEF28()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7AFEF60()
{
  v1 = sub_1B7C107FC(&qword_1EBA52910, &unk_1B7D0D940);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B7AFF048()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7AFF09C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1B7AFF0D8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7AFF110()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7AFF158()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7AFF190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1B7AFF2D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B7AFF420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7CFDFF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B7AFF4DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B7CFDFF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B7AFF5D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1B7AFF628@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1B7AFF670(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1B7AFF6B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1B7AFF6FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_1B7AFF740@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1B7AFF788(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_1B7AFF7CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1B7AFF814(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

uint64_t sub_1B7AFF858@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_1B7AFF8A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 56) = v2;
  return result;
}

uint64_t sub_1B7AFF8E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_1B7AFF92C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 64) = v2;
  return result;
}

__n128 sub_1B7AFF970@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 72);
  v5 = *(v3 + 88);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_1B7AFF9BC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  result = *a1;
  *(v3 + 88) = *(a1 + 16);
  *(v3 + 72) = result;
  return result;
}

__n128 sub_1B7AFFA08@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 104);
  v5 = *(v3 + 120);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_1B7AFFA54(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  result = *a1;
  *(v3 + 120) = *(a1 + 16);
  *(v3 + 104) = result;
  return result;
}

__n128 sub_1B7AFFAA0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 136);
  v5 = *(v3 + 152);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_1B7AFFAEC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  result = *a1;
  *(v3 + 152) = *(a1 + 16);
  *(v3 + 136) = result;
  return result;
}

__n128 sub_1B7AFFB38@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 168);
  v5 = *(v3 + 184);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_1B7AFFB84(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  result = *a1;
  *(v3 + 184) = *(a1 + 16);
  *(v3 + 168) = result;
  return result;
}

__n128 sub_1B7AFFBD0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 200);
  v5 = *(v3 + 216);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_1B7AFFC1C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  result = *a1;
  *(v3 + 216) = *(a1 + 16);
  *(v3 + 200) = result;
  return result;
}

__n128 sub_1B7AFFC68@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 232);
  v5 = *(v3 + 248);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_1B7AFFCB4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  result = *a1;
  *(v3 + 248) = *(a1 + 16);
  *(v3 + 232) = result;
  return result;
}

__n128 sub_1B7AFFD00@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + 264;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_1B7AFFD4C(uint64_t a1, void *a2)
{
  v3 = (*a2 + 264);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t sub_1B7AFFD98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 296);
  return result;
}

uint64_t sub_1B7AFFDE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 296) = v2;
  return result;
}

uint64_t sub_1B7AFFE24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 304);
  return result;
}

uint64_t sub_1B7AFFE6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 304) = v2;
  return result;
}

__n128 sub_1B7AFFEB0@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + 312;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_1B7AFFEFC(uint64_t a1, void *a2)
{
  v3 = (*a2 + 312);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

unint64_t *sub_1B7AFFF54(unint64_t *result, void *a2)
{
  v2 = *result;
  v3 = a2[1];
  a2[1] = *result;
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (v4)
  {
    v4 = __CFADD__(*a2, v5);
    v6 = *a2 + v5;
    if (!v4)
    {
      *a2 = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *sub_1B7AFFF90(unint64_t *result, void *a2)
{
  v2 = *result;
  v3 = a2[2];
  a2[2] = *result;
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (v4)
  {
    v4 = __CFADD__(*a2, v5);
    v6 = *a2 + v5;
    if (!v4)
    {
      *a2 = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *sub_1B7AFFFCC(unint64_t *result, void *a2)
{
  v2 = *result;
  v3 = a2[3];
  a2[3] = *result;
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (v4)
  {
    v4 = __CFADD__(*a2, v5);
    v6 = *a2 + v5;
    if (!v4)
    {
      *a2 = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7AFFFFC()
{
  v1 = type metadata accessor for StorageInspectionAttachmentRecord();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 40);

  v8 = *(v1 + 32);
  v9 = sub_1B7CFDFF0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = v5 + *(v1 + 48);
  v12 = type metadata accessor for StorageInspectionAttachmentDirectory();
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    (*(v10 + 8))(v11, v9);
    v13 = *(v11 + *(v12 + 20));
  }

  v14 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + v14 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + 17, v2 | 7);
}

uint64_t sub_1B7B001C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7B002B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_reportDirectoryURL;
  swift_beginAccess();
  return sub_1B7C487D8(v3 + v4, a2);
}

uint64_t sub_1B7B00BE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1B7B00C2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1B7B00C70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1B7B00CB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_1B7B00CFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1B7B00D44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_1B7B00D88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1B7B00E58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7B00E90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7B00EC8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7B00F80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 344);
}

uint64_t sub_1B7B00FD0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7B01008()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B7B01060()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7B010B0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B7B01128()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7B01168()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7B011A0()
{
  v1 = *(v0 + 24);
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v2 = sub_1B7CFEDB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1B7B01250()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B7B012A0()
{
  v1 = *(v0 + 16);
  sub_1B7C1091C(&qword_1EBA51FC0, &qword_1B7D0A700);
  v2 = sub_1B7CFEDB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1B7B01350()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B7B013A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1B7B013F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1B7B01444(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1B7C107FC(&qword_1EBA53418, &unk_1B7D11640);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 28)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1B7B014F8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1B7C107FC(&qword_1EBA53418, &unk_1B7D11640);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7B015A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 344);
}

uint64_t sub_1B7B015FC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B7B01654(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7CFE230();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B7B016C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7CFE230();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void *sub_1B7B01730@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  a2[2] = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1B7B01750()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B7B01798()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B7B017E0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B7B0182C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B7B0187C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B7B018D8()
{
  v1 = *(sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_1B7CFE120();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v8 + 8, v2 | 7);
}

uint64_t sub_1B7B01B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B7CFDFF0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B7B01C18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B7CFDFF0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7B01CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B7CFDFF0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B7B01D70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B7CFDFF0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7B01E30()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7B01E8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7B01EC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7B01F08()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7B01F40()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7B01F80()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B7B01FD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7B02024()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7B0205C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B7B0209C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7B020E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B7B02128()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7B021AC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7B021E4()
{
  v1 = sub_1B7CFDFF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B7B022CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void IMDAttachmentRecordDoubleCheckSize(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (qword_1EDBE5C10 != -1)
  {
    sub_1B7CEB0F0();
  }

  if (byte_1EBA53C20 == 1)
  {
    if (v5 && objc_msgSend_length(v5, v3, v4))
    {
      v11 = *MEMORY[0x1E69A6F48];
      v6 = IMFileSizeForItemAtPath();
      v7 = 0;
      if (v6)
      {
        v8 = IMLogHandleForCategory();
        v9 = v8;
        if (v11 == a2)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v13 = v5;
            v14 = 2048;
            v15 = v11;
            v16 = 2048;
            v17 = *(&v11 + 1);
            _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Writing correct size for attachment at path: %@. Size: %lld (allocation size on disk: %lld)", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v13 = v5;
          v14 = 2048;
          v15 = a2;
          v16 = 2048;
          v17 = v11;
          v18 = 2048;
          v19 = *(&v11 + 1);
          _os_log_error_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_ERROR, "Writing incorrect size for attachment at path: %@. Incorrect size %lld, correct size: %lld (allocation size on disk: %lld)", buf, 0x2Au);
        }
      }

      else
      {
        v9 = IMLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CEB104(v5, v7, v9);
        }
      }
    }

    else
    {
      v7 = IMLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEB1B8(v7);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B7B025E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3);
  isInternalInstall = objc_msgSend_isInternalInstall(v6, v3, v4);
  if (isInternalInstall)
  {
    LOBYTE(isInternalInstall) = IMGetDomainBoolForKeyWithDefaultValue();
  }

  byte_1EBA53C20 = isInternalInstall;
}

id sub_1B7B02650(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_identifier(a1, a2, a3);
  v7 = objc_msgSend_content(a1, v5, v6);
  v10 = objc_msgSend_userInfo(v7, v8, v9);
  v13 = objc_msgSend_mutableCopy(v10, v11, v12);

  objc_msgSend_setObject_forKeyedSubscript_(v13, v14, MEMORY[0x1E695E118], @"CKBBContextKeyIsCellularWaypointAvailable");
  v17 = objc_msgSend_content(a1, v15, v16);
  v20 = objc_msgSend_mutableCopy(v17, v18, v19);

  v23 = objc_msgSend_copy(v13, v21, v22);
  objc_msgSend_setUserInfo_(v20, v24, v23);

  v27 = objc_msgSend_copy(v20, v25, v26);
  v30 = objc_msgSend_trigger(a1, v28, v29);
  v32 = objc_msgSend_requestWithIdentifier_content_trigger_(MEMORY[0x1E6983298], v31, v4, v27, v30);

  return v32;
}

void sub_1B7B03C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B03CA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  result = CSDBSqliteStatementInteger64Result();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7B03D9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  v3 = *(a1 + 40);
  CSDBSqliteBindInt64();

  return CSDBSqliteStatementPerform();
}

void sub_1B7B03FF4()
{
  v0 = objc_alloc_init(IMDContactCache);
  v1 = qword_1EDBE7920;
  qword_1EDBE7920 = v0;
}

void sub_1B7B04994(void **a1, const char *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  if (objc_msgSend_count(a1[4], v5, v6))
  {
    v9 = objc_msgSend_allKeys(a1[4], v7, v8);
    objc_msgSend_addObjectsFromArray_(v4, v10, v9);

    objc_msgSend_updateCacheForAliases_(a1[5], v11, a1[4]);
  }

  if (objc_msgSend_count(a1[6], v7, v8))
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = a1[6];
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v28, v32, 16);
    if (v14)
    {
      v16 = v14;
      v17 = *v29;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = objc_msgSend__handlesMatchingContactIdentifier_(a1[5], v15, v19, v28);
          v23 = objc_msgSend_fullNameCache(a1[5], v21, v22);
          objc_msgSend_removeObjectForKey_(v23, v24, v19);

          objc_msgSend_removeCachedContactsForKeys_(a1[5], v25, v20);
          objc_msgSend_addObjectsFromArray_(v4, v26, v20);
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v28, v32, 16);
      }

      while (v16);
    }
  }

  IMDCoreSpotlightReIndexForHandles(v4, 1015);

  v27 = *MEMORY[0x1E69E9840];
}

void IMDMessagePTaskInsertRow(uint64_t a1, sqlite3_int64 a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v9, 0, sizeof(v9));
    memset(v8, 0, sizeof(v8));
    IMDSqlOperationInitWithSharedCSDBDatabase(v8);
    _IMDSqlOperationBeginQuery(v8, @"INSERT INTO message_processing_task (guid, task_flags) VALUES (?, ?);");
    IMDSqlStatementBindTextFromCFString(v9, a1);
    IMDSqlStatementBindInt64(v9, a2);
    IMDSqlOperationFinishQuery(v8);
    v7 = 0;
    IMDSqlOperationRelease(v8, &v7);
    if (v7)
    {
      v4 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v11 = a1;
        v12 = 2048;
        v13 = a2;
        v14 = 2112;
        v15 = v7;
        _os_log_error_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_ERROR, "Unable to insert row (guid:%@ taskFlag:%ld) into Message PTask Table: %@", buf, 0x20u);
      }
    }

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];

    __syncXPCIMDMessagePTaskInsertRow_IPCAction(0, a1, a2);
  }
}

uint64_t IMDMessagePTaskSelectWithLimit(sqlite3_int64 a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_1B7AE18B4;
  v15 = sub_1B7AE244C;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v10, 0, sizeof(v10));
    memset(v9, 0, sizeof(v9));
    IMDSqlOperationInitWithSharedCSDBDatabase(v9);
    _IMDSqlOperationBeginQuery(v9, @"SELECT * FROM message_processing_task ORDER BY ROWID ASC LIMIT ?;");
    IMDSqlStatementBindInt64(v10, a1);
    while (IMDSqlOperationHasRows(v9))
    {
      Row = IMDSqlStatementGetRow(v10);
      if (Row)
      {
        objc_msgSend_addObject_(v12[5], v2, Row);
      }
    }

    IMDSqlOperationFinishQuery(v9);
    v8 = 0;
    IMDSqlOperationRelease(v9, &v8);
    if (v8)
    {
      v4 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEB408(&v8, v4);
      }
    }
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7B06B5C;
    v7[3] = &unk_1E7CB6838;
    v7[4] = &v11;
    __syncXPCIMDMessagePTaskSelectWithLimit_IPCAction(v7, a1);
  }

  v5 = v12[5];
  _Block_object_dispose(&v11, 8);
  return v5;
}

xpc_object_t sub_1B7B06B5C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B06BF0;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B06BF0(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = IMGetXPCStringFromDictionary();
  objc_msgSend_setObject_forKeyedSubscript_(v2, v4, v3, @"guid");
  v5 = MEMORY[0x1E696AD98];
  v6 = IMGetXPCIntFromDictionary();
  v8 = objc_msgSend_numberWithLongLong_(v5, v7, v6);
  objc_msgSend_setObject_forKeyedSubscript_(v2, v9, v8, @"task_flags");
  objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v10, v2);

  return 1;
}

void IMDMessagePTaskUpdateTaskFlagsForGUID(uint64_t a1, sqlite3_int64 a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v9, 0, sizeof(v9));
    memset(v8, 0, sizeof(v8));
    IMDSqlOperationInitWithSharedCSDBDatabase(v8);
    _IMDSqlOperationBeginQuery(v8, @"UPDATE message_processing_task SET task_flags = ? WHERE guid = ?;");
    IMDSqlStatementBindInt64(v9, a2);
    IMDSqlStatementBindTextFromCFString(v9, a1);
    IMDSqlOperationFinishQuery(v8);
    v7 = 0;
    IMDSqlOperationRelease(v8, &v7);
    if (v7)
    {
      v4 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v11 = a1;
        v12 = 2048;
        v13 = a2;
        v14 = 2112;
        v15 = v7;
        _os_log_error_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_ERROR, "Unable to update row (guid:%@ taskFlag:%ld) for Message PTask Table: %@", buf, 0x20u);
      }
    }

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];

    __syncXPCIMDMessagePTaskUpdateTaskFlagsForGUID_IPCAction(0, a1, a2);
  }
}

void IMDMessagePTaskDeleteAllCompletedTask()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v2, 0, sizeof(v2));
    IMDSqlOperationInitWithSharedCSDBDatabase(v2);
    _IMDSqlOperationBeginQuery(v2, @"Delete from message_processing_task WHERE task_flags = 0;");
    IMDSqlOperationFinishQuery(v2);
    v1 = 0;
    IMDSqlOperationRelease(v2, &v1);
    if (v1)
    {
      v0 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEB484(&v1, v0);
      }
    }
  }

  else
  {

    __syncXPCIMDMessagePTaskDeleteAllCompletedTask_IPCAction(0);
  }
}

void sub_1B7B07A3C(uint64_t a1, const char *a2)
{
  v20[29] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69A71B0];
  v19[0] = @"rowID";
  v19[1] = v2;
  v20[0] = @"ROWID";
  v20[1] = @"item_type";
  v3 = *MEMORY[0x1E69A7148];
  v19[2] = *MEMORY[0x1E69A7168];
  v19[3] = v3;
  v20[2] = @"guid";
  v20[3] = @"date";
  v4 = *MEMORY[0x1E69A7188];
  v19[4] = *MEMORY[0x1E69A71D0];
  v19[5] = v4;
  v20[4] = @"text";
  v20[5] = @"is_from_me";
  v5 = *MEMORY[0x1E69A7170];
  v19[6] = *MEMORY[0x1E69A7160];
  v19[7] = v5;
  v20[6] = @"fallback_hash";
  v20[7] = @"has_dd_results";
  v6 = *MEMORY[0x1E69A71F0];
  v19[8] = *MEMORY[0x1E69A71B8];
  v19[9] = v6;
  v20[8] = @"needs_relay";
  v20[9] = @"schedule_type";
  v7 = *MEMORY[0x1E69A71F8];
  v19[10] = *MEMORY[0x1E69A71E8];
  v19[11] = v7;
  v20[10] = @"schedule_state";
  v20[11] = @"service";
  v8 = *MEMORY[0x1E69A7130];
  v19[12] = *MEMORY[0x1E69A7138];
  v19[13] = v8;
  v20[12] = @"ck_sync_state";
  v20[13] = @"balloon_bundle_id";
  v9 = *MEMORY[0x1E69A7140];
  v19[14] = *MEMORY[0x1E69A71C8];
  v19[15] = v9;
  v20[14] = @"is_pending_satellite_send";
  v20[15] = @"country";
  v10 = *MEMORY[0x1E69A7178];
  v19[16] = *MEMORY[0x1E69A71E0];
  v19[17] = v10;
  v20[16] = @"reply_to_guid";
  v20[17] = @"is_expirable";
  v11 = *MEMORY[0x1E69A71C0];
  v19[18] = *MEMORY[0x1E69A7150];
  v19[19] = v11;
  v20[18] = @"expire_state";
  v20[19] = @"payload_data";
  v12 = *MEMORY[0x1E69A7200];
  v19[20] = *MEMORY[0x1E69A7158];
  v19[21] = v12;
  v20[20] = @"expressive_send_style_id";
  v20[21] = @"was_detonated";
  v13 = *MEMORY[0x1E69A71A8];
  v19[22] = *MEMORY[0x1E69A7128];
  v19[23] = v13;
  v20[22] = @"account_guid";
  v20[23] = @"is_time_sensitive";
  v14 = *MEMORY[0x1E69A7190];
  v19[24] = *MEMORY[0x1E69A7180];
  v19[25] = v14;
  v20[24] = @"is_finished";
  v20[25] = @"is_read";
  v15 = *MEMORY[0x1E69A7198];
  v19[26] = *MEMORY[0x1E69A71A0];
  v19[27] = v15;
  v20[26] = @"is_system_message";
  v20[27] = @"is_sos";
  v19[28] = *MEMORY[0x1E69A71D8];
  v20[28] = @"replace";
  v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v20, v19, 29);
  v17 = qword_1EDBE5B10;
  qword_1EDBE5B10 = v16;

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1B7B0823C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B085E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B08618(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_bindParametersToSqliteWithStatement_(*(a1 + 32), a2, a4);
  v9 = CSDBRecordStoreProcessStatement();
  v6 = objc_msgSend__copyHandleRecordsFromCoreSDBResults_(*(a1 + 40), v5, v9);
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_1B7B08BAC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v5, a2, a4);
  }

  v6 = *(a1 + 56);
  CSDBSqliteBindInt64();
  v11 = CSDBRecordStoreProcessStatement();
  v8 = objc_msgSend__copyHandleRecordsFromCoreSDBResults_(*(a1 + 40), v7, v11);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_1B7B08EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void IMDSqlStatementBindTextFromArrayOfCFStrings(uint64_t a1, CFArrayRef theArray)
{
  if (theArray)
  {
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEB67C(v4, v5);
    }

    if (!a1)
    {
      goto LABEL_11;
    }
  }

  if (*(a1 + 16) && *a1)
  {
    if (!theArray)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_11:
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEB730(v6, v7);
  }

  if (a1 && theArray && *a1)
  {
LABEL_16:
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        CFArrayGetValueAtIndex(theArray, i);
        v10 = CSDBCreateUTF8StringFromCFString();
        if (v10)
        {
          v11 = v10;
          v12 = *a1;
          v13 = *(a1 + 32) + 1;
          *(a1 + 32) = v13;
          sqlite3_bind_text(v12, v13, v11, -1, MEMORY[0x1E69E9B38]);
        }
      }
    }
  }
}

void IMDSqlStatementBindInt64(uint64_t a1, sqlite3_int64 a2)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      v4 = *a1;
      if (*a1)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEB7E4(v5, v6);
  }

  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
LABEL_8:
      v7 = *(a1 + 32) + 1;
      *(a1 + 32) = v7;
      sqlite3_bind_int64(v4, v7, a2);
    }
  }
}

void IMDSqlStatementBindDouble(uint64_t a1, double a2)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      goto LABEL_7;
    }
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEB94C(v5, v6);
  }

  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
LABEL_7:
      v7 = *(a1 + 32) + 1;
      *(a1 + 32) = v7;
      sqlite3_bind_double(v4, v7, a2);
    }
  }
}

void IMDSqlStatementBindNull(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      goto LABEL_7;
    }
  }

  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEBA00(v3, v4);
  }

  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
LABEL_7:
      v5 = *(a1 + 32) + 1;
      *(a1 + 32) = v5;
      sqlite3_bind_null(v2, v5);
    }
  }
}

void IMDSqlStatementBindBlob(uint64_t a1, CFDataRef theData)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      goto LABEL_7;
    }
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEBAB4(v5, v6);
  }

  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
LABEL_7:
      v7 = *(a1 + 32);
      v8 = v7 + 1;
      *(a1 + 32) = v7 + 1;
      if (theData)
      {
        BytePtr = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        sqlite3_bind_blob(v4, v8, BytePtr, Length, 0);
      }

      else
      {
        sqlite3_bind_null(v4, v7 + 1);
      }
    }
  }
}

uint64_t IMDIntFromSqlColumn(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    goto LABEL_13;
  }

  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEBB68(v3, v4);
  }

  v2 = *a1;
  if (*a1)
  {
LABEL_13:
    if (*v2)
    {
      return sqlite3_column_int(*v2, *(a1 + 16));
    }

    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEBC1C(v6, v7);
    }
  }

  return 0;
}

double IMDDoubleFromSqlColumn(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    goto LABEL_13;
  }

  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEBCD0(v3, v4);
  }

  v2 = *a1;
  if (*a1)
  {
LABEL_13:
    if (*v2)
    {
      return sqlite3_column_double(*v2, *(a1 + 16));
    }

    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEBD84(v6, v7);
    }
  }

  return 0.0;
}

const unsigned __int8 *IMDStringFromSqlColumn(uint64_t a1)
{
  v2 = *a1;
  if (!*a1)
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEBFA0(v3, v4);
    }

    v2 = *a1;
    if (!*a1)
    {
      return 0;
    }
  }

  if (!*v2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEC054(v6, v7);
    }

    return 0;
  }

  result = sqlite3_column_text(*v2, *(a1 + 16));
  if (result)
  {
    return CFStringCreateWithCString(*MEMORY[0x1E695E480], result, 0x8000100u);
  }

  return result;
}

CFDataRef IMDBlobFromSqlColumn(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    goto LABEL_5;
  }

  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEC108(v3, v4);
  }

  v2 = *a1;
  if (*a1)
  {
LABEL_5:
    v5 = *v2;
    if (*v2)
    {
      v6 = sqlite3_column_blob(*v2, *(a1 + 16));
      v7 = sqlite3_column_bytes(v5, *(a1 + 16));
      if (v6)
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        return CFDataCreate(*MEMORY[0x1E695E480], v6, v7);
      }
    }

    else
    {
      v10 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEC1BC(v10, v11);
      }
    }
  }

  return 0;
}

void IMDSqlStatementColumnByIndex(sqlite3_stmt **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (!a1 || (v6 = *a1) == 0)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEC48C(v7, v8);
    }

    if (!a1)
    {
      goto LABEL_17;
    }

    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_17;
    }
  }

  v9 = sqlite3_column_count(v6);
  v10 = v9;
  if (a2 < 0 || v9 <= a2)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = IMFileLocationTrimFileName();
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, &stru_1F2FA9728);
    v16 = objc_msgSend_stringWithFormat_(v11, v15, @"Unexpected false '%@' in %s at %s:%d. %@", @"index >= 0 && index < count", "IMDSqlColumn IMDSqlStatementColumnByIndex(IMDSqlStatement *, int)", v12, 195, v14);

    v17 = IMGetAssertionFailureHandler();
    if (v17)
    {
      v17(v16);
    }

    else
    {
      v20 = objc_msgSend_warning(MEMORY[0x1E69A6138], v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEC540(v16, v20);
      }
    }
  }

  v21 = sqlite3_column_name(*a1, a2);
  if (*a1)
  {
    *a3 = a1;
    *(a3 + 8) = v21;
    *(a3 + 16) = a2;
    *(a3 + 20) = v10;
  }

  else
  {
LABEL_17:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void IMDSqlStatementColumnByName(sqlite3_stmt **a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1 || (v6 = *a1) == 0)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEC5B8(v7, v8);
    }

    if (!a1)
    {
      goto LABEL_14;
    }

    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_14;
    }
  }

  v9 = sqlite3_column_count(v6);
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = 0;
    while (1)
    {
      v12 = sqlite3_column_name(*a1, v11);
      if (!v12)
      {
        v12 = sqlite3_column_name(*a1, v11);
      }

      if (!strncmp(v12, a2, 0x100uLL))
      {
        break;
      }

      if (v10 == ++v11)
      {
        *a3 = a1;
        *(a3 + 8) = v12;
        *(a3 + 16) = v11 - 1;
        *(a3 + 20) = v10;
        goto LABEL_14;
      }
    }

    *a3 = a1;
    *(a3 + 8) = v12;
    *(a3 + 16) = v11;
    *(a3 + 20) = v10;
  }

  else
  {
LABEL_14:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

uint64_t IMDSqlColumnGetType(uint64_t a1)
{
  if (*a1 && **a1)
  {
    return sqlite3_column_type(**a1, *(a1 + 16));
  }

  else
  {
    return 0;
  }
}

sqlite3_stmt *IMDSqlColumnGetObject(__int128 *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = *v2;
    if (*v2)
    {
      v5 = sqlite3_column_type(v4, *(a1 + 4));
      v4 = 0;
      if (v5 > 2)
      {
        if (v5 == 3)
        {
          v14 = *a1;
          v15 = *(a1 + 2);
          v4 = IMDStringFromSqlColumn(&v14);
        }

        else if (v5 == 4)
        {
          v14 = *a1;
          v15 = *(a1 + 2);
          v4 = IMDBlobFromSqlColumn(&v14);
        }
      }

      else if (v5 == 1)
      {
        v11 = MEMORY[0x1E696AD98];
        v14 = *a1;
        v15 = *(a1 + 2);
        v12 = IMDInt64FromSqlColumn(&v14);
        v4 = objc_msgSend_numberWithLongLong_(v11, v13, v12);
      }

      else if (v5 == 2)
      {
        v6 = MEMORY[0x1E696AD98];
        v14 = *a1;
        v15 = *(a1 + 2);
        v7 = IMDDoubleFromSqlColumn(&v14);
        v4 = objc_msgSend_numberWithDouble_(v6, v8, v9, v7);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void IMDSqlColumnSetColumnValueInXPCDictionary(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3)
  {
    v11 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEC66C(v11, v12);
    }

    if (**a2)
    {
      goto LABEL_17;
    }

LABEL_14:
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEC720(v13, v14);
    }

    goto LABEL_17;
  }

  v4 = *a2;
  v5 = **a2;
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!v6)
  {
    v8 = sqlite3_column_name(**a2, v7);
    *(a2 + 8) = v8;
    v4 = *a2;
    if (!*a2)
    {
      goto LABEL_17;
    }

    v6 = v8;
    v7 = *(a2 + 16);
  }

  if (*v4)
  {
    v9 = sqlite3_column_type(*v4, v7);
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v18 = sqlite3_column_text(v5, *(a2 + 16));
        if (v18)
        {
          xpc_dictionary_set_string(v3, v6, v18);
        }
      }

      else if (v9 == 4)
      {
        v15 = sqlite3_column_blob(v5, *(a2 + 16));
        v16 = sqlite3_column_bytes(v5, *(a2 + 16));
        if (v15)
        {
          if (v16)
          {
            xpc_dictionary_set_data(v3, v6, v15, v16);
          }
        }
      }
    }

    else if (v9 == 1)
    {
      v17 = sqlite3_column_int64(v5, *(a2 + 16));
      xpc_dictionary_set_int64(v3, v6, v17);
    }

    else if (v9 == 2)
    {
      v10 = sqlite3_column_double(v5, *(a2 + 16));
      xpc_dictionary_set_double(v3, v6, v10);
    }
  }

LABEL_17:
}

id IMDSqlStatementGetXPCRow(sqlite3_stmt **a1)
{
  if (a1 && *a1)
  {
    goto LABEL_7;
  }

  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEC7D4(v2, v3);
  }

  if (a1 && *a1)
  {
LABEL_7:
    v4 = xpc_dictionary_create(0, 0, 0);
    if (*a1)
    {
      v5 = sqlite3_column_count(*a1);
      if (v5 >= 1)
      {
        v6 = v5;
        for (i = 0; i != v6; ++i)
        {
          v9[0] = a1;
          v9[1] = 0;
          v10 = i;
          v11 = v6;
          IMDSqlColumnSetColumnValueInXPCDictionary(v4, v9);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

__CFDictionary *IMDSqlStatementGetRow(sqlite3_stmt **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      goto LABEL_24;
    }
  }

  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CEC888(v3, v4);
  }

  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
LABEL_24:
      v5 = sqlite3_column_count(v2);
      if (v5 >= 1)
      {
        v6 = v5;
        Mutable = 0;
        v8 = 0;
        v9 = MEMORY[0x1E695E9D8];
        v10 = MEMORY[0x1E695E9E8];
        while (1)
        {
          v11 = sqlite3_column_name(*a1, v8);
          *&v20 = a1;
          *(&v20 + 1) = v11;
          v21 = v8;
          v22 = v6;
          v12 = IMDSqlColumnGetObject(&v20);
          if (v12)
          {
            break;
          }

LABEL_18:

          if (v6 == ++v8)
          {
            return Mutable;
          }
        }

        v14 = objc_alloc(MEMORY[0x1E696AEC0]);
        if (!v11)
        {
          if (*a1)
          {
            v15 = sqlite3_column_name(*a1, v8);
            v17 = objc_msgSend_initWithCString_encoding_(v14, v16, v15, 4);
LABEL_15:
            v18 = v17;
            if (!Mutable)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, v9, v10);
            }

            CFDictionarySetValue(Mutable, v18, v12);

            goto LABEL_18;
          }

          v11 = 0;
        }

        v17 = objc_msgSend_initWithCString_encoding_(v14, v13, v11, 4);
        goto LABEL_15;
      }
    }
  }

  return 0;
}

sqlite3_stmt *IMDSqlStatementColumnCount(sqlite3_stmt **a1)
{
  if (a1)
  {
    result = *a1;
    if (result)
    {
      return sqlite3_column_count(result);
    }

    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEC93C(v3, v4);
    }

    result = *a1;
    if (*a1)
    {
      return sqlite3_column_count(result);
    }
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEC9F0(v5, v6);
    }

    return 0;
  }

  return result;
}

id IMDNotificationsControllerLogHandle()
{
  if (qword_1EBA53EC8 != -1)
  {
    sub_1B7CECAA4();
  }

  v1 = qword_1EBA53EC0;

  return v1;
}

void sub_1B7B09DD0()
{
  v0 = os_log_create("com.apple.Messages", "IMDNotificationsController");
  v1 = qword_1EBA53EC0;
  qword_1EBA53EC0 = v0;
}

void sub_1B7B09E14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_1EDBE7928;
  qword_1EDBE7928 = v2;
}

void sub_1B7B09E94()
{
  v0 = os_log_create("com.apple.Messages", "IMDNotificationsController");
  v1 = qword_1EBA53ED0;
  qword_1EBA53ED0 = v0;
}

void sub_1B7B0A3A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_notificationCenter(*(a1 + 32), a2, a3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B0A438;
  v6[3] = &unk_1E7CB6AB8;
  v7 = v3;
  v4 = v3;
  objc_msgSend_getNotificationSettingsWithCompletionHandler_(v4, v5, v6);
}

void sub_1B7B0A438(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "getNotificationSettingsWithCompletionHandler settings:%@", &v9, 0xCu);
  }

  if (!objc_msgSend_criticalAlertSetting(v3, v5, v6))
  {
    objc_msgSend_requestAuthorizationWithOptions_completionHandler_(*(a1 + 32), v7, 23, &unk_1F2FA08F0);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7B0A510(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "requestAuthorizationWithOptions granted:%{BOOL}d error:%@", v7, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7B0B420(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], a2, *(a1 + 32));
  IMSetDomainValueForKey();
}

void sub_1B7B0B4F8(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], a2, *(a1 + 32));
  IMSetDomainValueForKey();
}

uint64_t sub_1B7B0B810(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_date(v4, v6, v7);
  v11 = objc_msgSend_date(v5, v9, v10);
  v15 = objc_msgSend_compare_(v8, v12, v11);
  if (!v15)
  {
    v16 = objc_msgSend_rowID(v4, v13, v14);
    if (v16 > objc_msgSend_rowID(v5, v17, v18))
    {
      v15 = 1;
    }

    else
    {
      v15 = -1;
    }
  }

  return v15;
}

uint64_t sub_1B7B0B980(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v8 = a3;
  if (!v5)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  if (objc_msgSend_rawDate(v5, v6, v7) <= *(a1 + 32))
  {
    v10 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_msgSend_guid(v5, v11, v12);
      v16 = 138412290;
      v17 = v13;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "Skipping posting guid as we already posted messages newer: %@", &v16, 0xCu);
    }

    goto LABEL_7;
  }

  v9 = 1;
LABEL_8:

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1B7B0BFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B0BFEC(uint64_t a1, void *a2, uint64_t a3)
{
  result = objc_msgSend_count(a2, a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7B0C380(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3);
  isInternalInstall = objc_msgSend_isInternalInstall(v3, v4, v5);

  if (!isInternalInstall)
  {
    return 0;
  }

  return IMGetDomainBoolForKey();
}

void sub_1B7B0C4C0(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_rawDate(v3, v5, v6);
  v9 = objc_msgSend__generateNotificationRequestForDeliveryError_isCarouselUITriggered_(*(a1 + 32), v8, v3, *(a1 + 48));
  v10 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_msgSend_identifier(v9, v11, v12);
    v17 = 138412290;
    v18 = v13;
    _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "Generated notification request for failed delivery identifier %@", &v17, 0xCu);
  }

  objc_msgSend_addObject_(*(a1 + 40), v14, v9);
  objc_msgSend_advanceLastAlertedFailedMessageDate_(*(a1 + 32), v15, v7);

  objc_autoreleasePoolPop(v4);
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1B7B0CE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 192), 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7B0CE80(void *a1, void *a2)
{
  v3 = a2;
  *(*(a1[6] + 8) + 24) += objc_msgSend_count(v3, v4, v5);
  v6 = a1[4];
  v8 = objc_msgSend_arrayByAddingObjectsFromArray_(v3, v7, a1[5]);
  v10 = objc_msgSend__userNotificationsForMessageRecords_newerThanDate_isUrgentMessageTrigger_isCarouselUITriggered_(v6, v9, v8, a1[8], 0, 0);

  v12 = objc_msgSend_arrayByAddingObjectsFromArray_(*(*(a1[7] + 8) + 40), v11, v10);
  v13 = *(a1[7] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v17 = objc_msgSend_count(v3, v15, v16);
  return v17 != 0;
}

void sub_1B7B0D394(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v26, v30, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = objc_msgSend_handleRecord(v11, v6, v7);
        v15 = objc_msgSend_canonicalizedURIString(v12, v13, v14);
        if (v15)
        {
          v18 = v15;
        }

        else
        {
          v20 = objc_msgSend_handleRecord(v11, v16, v17);
          v18 = objc_msgSend_uncanonicalizedURIString(v20, v21, v22);

          if (!v18)
          {
            goto LABEL_11;
          }
        }

        if ((objc_msgSend_containsObject_(*(a1 + 32), v19, v18) & 1) == 0)
        {
          objc_msgSend_addObject_(*(a1 + 32), v23, v18);
          objc_msgSend_addObject_(*(a1 + 40), v24, v11);
        }

LABEL_11:
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v26, v30, 16);
    }

    while (v8);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1B7B0D5C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_count(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_count(*(a1 + 40), v5, v6);
  v16 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v8, v7 + v4);
  objc_msgSend_addObjectsFromArray_(v16, v9, *(a1 + 40));
  objc_msgSend_addObjectsFromArray_(v16, v10, *(a1 + 32));
  v11 = *(a1 + 48);
  isMostActiveDevice = objc_msgSend__isMostActiveDevice(v11, v12, v13);
  objc_msgSend___postNotificationRequests_isMostActiveDevice_(v11, v15, v16, isMostActiveDevice);
}

uint64_t sub_1B7B0D6F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  isMostActiveDevice = objc_msgSend__isMostActiveDevice(v3, a2, a3);

  return objc_msgSend___postNotificationRequests_isMostActiveDevice_(v3, v5, v4, isMostActiveDevice);
}

void sub_1B7B0DA84(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMDNotificationsControllerLogHandle();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CECDCC(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_identifier(*(a1 + 32), v6, v7);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Finished posting notification: %@", &v10, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7B0DB7C(uint64_t a1, void *a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD98];
  v4 = objc_msgSend_authorizationStatus(a2, a2, a3);
  v6 = objc_msgSend_numberWithInteger_(v3, v5, v4);
  v9 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v7, v8);
  v10 = *MEMORY[0x1E69A7790];
  v15 = *MEMORY[0x1E69A7798];
  v16[0] = v6;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, v16, &v15, 1);
  objc_msgSend_trackEvent_withDictionary_(v9, v13, v10, v12);

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1B7B0E0F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_notificationCenter(*(a1 + 32), a2, a3);
  objc_msgSend_removeDeliveredNotificationsWithIdentifiers_(v4, v5, *(a1 + 40));

  v6 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "Withdrew message notifications for message guids %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7B0E294(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend__removeAllDeliveredMessageNotifications(*(a1 + 32), a2, a3);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B0E32C;
  v6[3] = &unk_1E7CB6770;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  IMDPersistencePerformBlock(v6, 0, v5);
}

void sub_1B7B0E7B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_notificationCenter(*(a1 + 32), a2, a3);
  v5 = *(a1 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7B0E8F8;
  v14[3] = &unk_1E7CB6C80;
  v6 = v4;
  v15 = v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v7, v14);
  if (objc_msgSend_count(*(a1 + 48), v8, v9))
  {
    v10 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "Retracting notifications for messageGUIDs: %@", buf, 0xCu);
    }

    objc_msgSend_removeDeliveredNotificationsWithIdentifiers_(v6, v12, *(a1 + 48));
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1B7B0E8F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B0E9A4;
  v9[3] = &unk_1E7CB6C58;
  v10 = v5;
  v7 = v5;
  objc_msgSend_replaceContentForRequestWithIdentifier_replacementContent_completionHandler_(v6, v8, v7, a3, v9);
}

void sub_1B7B0E9A4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMDNotificationsControllerLogHandle();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CECE7C(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Finished updating edited message content for notification request: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7B0EDB4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_notificationCenter(*(a1 + 32), a2, a3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B0EE60;
  v7[3] = &unk_1E7CB6C58;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  objc_msgSend_addNotificationRequest_withCompletionHandler_(v4, v6, v5, v7);
}

void sub_1B7B0EE60(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "we added the notification request under first unlock %@ with error %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

id sub_1B7B124D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = qword_1EBA53EE0;
  v10 = qword_1EBA53EE0;
  if (!qword_1EBA53EE0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7B1CA74;
    v6[3] = &unk_1E7CB6EA8;
    v6[4] = &v7;
    sub_1B7B1CA74(v6, a2, a3);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1B7B1259C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7B13A64(uint64_t a1, const char *a2, void *a3, void *a4, _BYTE *a5, _BYTE *a6, void *a7, void *a8, void *a9)
{
  v15 = objc_msgSend_objectForKey_(*(a1 + 32), a2, a2);
  v18 = v15;
  if (v15)
  {
    if (a7)
    {
      *a7 = 0;
    }

    if (a3)
    {
      v19 = objc_msgSend_path(v15, v16, v17);
      v22 = objc_msgSend_length(v19, v20, v21);
      if (v22)
      {
        v22 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v23, v19, 0);
      }

      *a3 = v22;
    }

    if (a4)
    {
      *a4 = objc_msgSend_utiString(v18, v16, v17);
    }

    if (a5)
    {
      *a5 = objc_msgSend_isSticker(v18, v16, v17);
    }

    if (a6)
    {
      *a6 = objc_msgSend_isOutgoing(v18, v16, v17);
    }

    if (a8)
    {
      *a8 = objc_msgSend_emojiImageShortDescription(v18, v16, v17);
    }

    if (a9)
    {
      v24 = objc_msgSend_attributionInfo(v18, v16, v17);
      *a9 = objc_msgSend_objectForKeyedSubscript_(v24, v25, *MEMORY[0x1E69A6F98]);
    }
  }

  return v18 != 0;
}

void sub_1B7B13CAC()
{
  v0 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEFAULT, "Re-Alert setting has changd", v1, 2u);
  }

  dword_1EDBE1D60 = -1;
}

id sub_1B7B15368(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend__suggestedDisplayNameForAddress_(*(a1 + 32), v4, v3);
  if (!objc_msgSend_length(v5, v6, v7))
  {
    v10 = objc_msgSend__nicknameDisplayNameForID_(*(a1 + 32), v8, v3);

    v5 = v10;
  }

  if (!objc_msgSend_length(v5, v8, v9))
  {
    v11 = *(a1 + 40);

    v5 = v11;
  }

  return v5;
}

intptr_t sub_1B7B15720(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(a2, a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);

  return dispatch_semaphore_signal(v7);
}

void sub_1B7B16784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B1679C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = a2;
  if (MEMORY[0x1B8CAF9C0]())
  {
    v7 = IMNormalizePhoneNumber();

    v8 = v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = v10;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v11 = v8;
  v9 = objc_msgSend_containsObject_(*(a1 + 32), v8, v8);
  v8 = v11;
  if (v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

LABEL_7:
}

void sub_1B7B172EC()
{
  qword_1EDBE7990 = MEMORY[0x1B8CAFAC0](@"STConversation", @"ScreenTimeCore");
  v0 = MEMORY[0x1B8CAFAC0](@"STConversationContext", @"ScreenTimeCore");
  qword_1EDBE7998 = v0;
  if (qword_1EDBE7990)
  {
    if (v0)
    {
      return;
    }

    goto LABEL_10;
  }

  v1 = MEMORY[0x1E696AEC0];
  v2 = IMFileLocationTrimFileName();
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v3, &stru_1F2FA9728);
  v6 = objc_msgSend_stringWithFormat_(v1, v5, @"Unexpected nil '%@' in %s at %s:%d. %@", @"IMSTConversationClass", "[IMDNotificationsController screenTimeNotificationOptionsForChatDictionary:]_block_invoke", v2, 3453, v4);

  v7 = IMGetAssertionFailureHandler();
  if (v7)
  {
    v7(v6);
  }

  else
  {
    v10 = objc_msgSend_warning(MEMORY[0x1E69A6138], v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CED0B0();
    }
  }

  if (!qword_1EDBE7998)
  {
LABEL_10:
    v11 = MEMORY[0x1E696AEC0];
    v12 = IMFileLocationTrimFileName();
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, &stru_1F2FA9728);
    v16 = objc_msgSend_stringWithFormat_(v11, v15, @"Unexpected nil '%@' in %s at %s:%d. %@", @"IMSTConversationContextClass", "[IMDNotificationsController screenTimeNotificationOptionsForChatDictionary:]_block_invoke", v12, 3454, v14);

    v17 = IMGetAssertionFailureHandler();
    if (v17)
    {
      v17(v16);
    }

    else
    {
      v20 = objc_msgSend_warning(MEMORY[0x1E69A6138], v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CED0B0();
      }
    }
  }
}

uint64_t sub_1B7B18500(uint64_t a1)
{
  v2 = IMDNotificationsControllerLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "INInteraction updated, re-posting notifications", v5, 2u);
  }

  return objc_msgSend_postNotificationsWithContext_(*(a1 + 32), v3, 0);
}

uint64_t sub_1B7B189C4(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), a2, a2);
  isAdaptiveImageGlyph = objc_msgSend_isAdaptiveImageGlyph(v2, v3, v4);

  return isAdaptiveImageGlyph;
}

uint64_t sub_1B7B18A04(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), a2, a2);
  isCommSafetySensitive = objc_msgSend_isCommSafetySensitive(v2, v3, v4);

  return isCommSafetySensitive;
}

id sub_1B7B18A44(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), a2, a2);
  v5 = objc_msgSend__adaptiveImageGlyphForAttachment_(*(a1 + 40), v4, v3);

  return v5;
}

void sub_1B7B191C8(void **a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_objectForKey_(a1[4], v8, v7);
    isCommSafetySensitive = objc_msgSend_isCommSafetySensitive(v9, v10, v11);
    if (objc_msgSend_isAdaptiveImageGlyph(v9, v13, v14))
    {
      v16 = a3 >= a3 + a4;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v28 = *MEMORY[0x1E69A77D0];
      v27 = *MEMORY[0x1E69A77D8];
      v17 = a3;
      while (1)
      {
        v18 = objc_msgSend__adaptiveImageGlyphForAttachment_(a1[5], v15, v9, v27);
        v20 = v18;
        if (isCommSafetySensitive)
        {
          break;
        }

        if (!v18)
        {
          v21 = IMDNotificationsControllerLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CED190(&buf, v30, v21);
          }

          goto LABEL_15;
        }

        objc_msgSend_addAttribute_value_range_(a1[7], v19, v28, v18, v17, 1);
        objc_msgSend_addAttribute_value_range_(a1[7], v26, v27, v20, v17, 1);
LABEL_16:

        ++v17;
        if (!--a4)
        {
          goto LABEL_7;
        }
      }

      v21 = objc_msgSend_attributesAtIndex_effectiveRange_(a1[6], v19, a3, 0);
      v22 = objc_alloc(MEMORY[0x1E696AAB0]);
      v24 = objc_msgSend_initWithString_attributes_(v22, v23, @"", v21);
      objc_msgSend_replaceCharactersInRange_withAttributedString_(a1[7], v25, v17, 1, v24);

LABEL_15:
      goto LABEL_16;
    }

LABEL_7:
  }
}

void sub_1B7B19388(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B19428;
  v8[3] = &unk_1E7CB6E38;
  v9 = *(a1 + 32);
  v10 = a3;
  v11 = a4;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(a2, v7, v8);
}

void sub_1B7B19428(uint64_t a1, void *a2)
{
  v6 = a2;
  if ((objc_msgSend_isEqualToString_(v6, v3, *MEMORY[0x1E69A77D0]) & 1) == 0 && (objc_msgSend_isEqualToString_(v6, v4, *MEMORY[0x1E69A77D8]) & 1) == 0)
  {
    objc_msgSend_removeAttribute_range_(*(a1 + 32), v5, v6, *(a1 + 40), *(a1 + 48));
  }
}

void sub_1B7B19E1C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = IMLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1B7CED1D0();
    }

    objc_end_catch();
    JUMPOUT(0x1B7B197ECLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B7B1A4C4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(a1);
    v4 = IMDNotificationsControllerLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *(v2 - 128) = 138412290;
      *(v2 - 124) = v3;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Failed to check TUConversation: [%@]", (v2 - 128), 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1B7B1A43CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1B7B1C9D8()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("IMDNotificationRequestQueue", attr);
  v2 = qword_1EBA53C00;
  qword_1EBA53C00 = v1;

  dispatch_queue_set_specific(qword_1EBA53C00, "_IMDNotificationRequestQueue", 1, 0);
}

Class sub_1B7B1CA74(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!qword_1EBA53EE8)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = sub_1B7B1CBA0;
    v8[4] = &unk_1E7CB6A70;
    v8[5] = v8;
    v9 = xmmword_1E7CB6EC8;
    v10 = 0;
    qword_1EBA53EE8 = _sl_dlopen();
  }

  if (!qword_1EBA53EE8)
  {
    sub_1B7CED3EC(v8, a2, a3);
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("SOSUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CED370(result, v5, v6);
  }

  qword_1EBA53EE0 = *(*(*(a1 + 32) + 8) + 24);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7B1CBA0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EBA53EE8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7B1CC14()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("IMDSharingActiveDeviceQueue", attr);
  v2 = qword_1EBA53BF0;
  qword_1EBA53BF0 = v1;
}

Class sub_1B7B1CC98(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!qword_1EBA53BE8)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = sub_1B7B1CDC4;
    v8[4] = &unk_1E7CB6A70;
    v8[5] = v8;
    v9 = xmmword_1E7CB6EE0;
    v10 = 0;
    qword_1EBA53BE8 = _sl_dlopen();
  }

  if (!qword_1EBA53BE8)
  {
    sub_1B7CED4E8(v8, a2, a3);
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("SMMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1B7CED46C(result, v5, v6);
  }

  qword_1EBA53B10 = *(*(*(a1 + 32) + 8) + 24);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7B1CDC4(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EBA53BE8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id IMDKVValueForKey(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3052000000;
    v8 = sub_1B7AE1904;
    v9 = sub_1B7AE2478;
    v10 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = sub_1B7B1CFA0;
      v4[3] = &unk_1E7CB6F30;
      v4[4] = v1;
      v4[5] = &v5;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT value FROM kvtable WHERE key = ?", v4);
    }

    else
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = sub_1B7B1CFE4;
      v3[3] = &unk_1E7CB6838;
      v3[4] = &v5;
      __syncXPCIMDKVValueForKey_IPCAction(v3, v1);
    }

    v1 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

uint64_t sub_1B7B1CFA0(uint64_t a1)
{
  v2 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  result = CSDBSqliteStatementCopyDataResult();
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

id sub_1B7B1CFE4(uint64_t a1)
{
  result = IMGetXPCDataFromDictionary();
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void IMDKVPersistValueForKey(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      if (a2)
      {
        v6 = sub_1B7B1D13C;
        v7 = &unk_1E7CB6F58;
        v8 = a1;
        v9 = a2;
        v4 = @"INSERT OR REPLACE INTO kvtable (key, value) VALUES (?, ?)";
      }

      else
      {
        v6 = sub_1B7B1D18C;
        v7 = &unk_1E7CB6F80;
        v8 = a1;
        v4 = @"DELETE FROM kvtable WHERE key = ?";
      }

      _IMDPerformLockedStatementBlockWithQuery(v4, v5);
    }

    else
    {

      __syncXPCIMDKVPersistValueForKey_IPCAction(0, a1, a2);
    }
  }
}

uint64_t sub_1B7B1D13C(uint64_t a1)
{
  v2 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();
  v3 = *(a1 + 40);
  CSDBSqliteBindBlobFromCFData();

  return CSDBSqliteStatementPerform();
}

uint64_t sub_1B7B1D18C(uint64_t a1)
{
  v1 = *(a1 + 32);
  CSDBSqliteBindTextFromCFString();

  return CSDBSqliteStatementPerform();
}

BOOL _IMDSqlOperationRunQueryWithExplanationsIfNeeded(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = _IMDSqlOperationRunQuery(a1, a2, a3, a4);
  if (a5)
  {
    sub_1B7CED74C(a2, &v11, a1, a3);
  }

  return v9;
}

void sub_1B7B1D23C(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (IMDSqlOperationHasRows(*(a1 + 40)))
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v4 = *(a1 + 40);
      v19[0] = v3;
      v19[1] = 3221225472;
      v19[2] = sub_1B7B1D454;
      v19[3] = &unk_1E7CB6FA8;
      v19[4] = v2;
      IMDSqlOperationIterateRow(v4, v19);
    }

    while (IMDSqlOperationHasRows(*(a1 + 40)));
  }

  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CED7FC(a1, v5);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v6, &v15, v22, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v2);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = IMLogHandleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v21 = v11;
          _os_log_error_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v13, &v15, v22, 16);
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1B7B1D454(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 4) == 3)
  {
    v9 = v2;
    v10 = v3;
    v7 = *a2;
    v8 = *(a2 + 2);
    v5 = IMDStringFromSqlColumn(&v7);
    objc_msgSend_addObject_(*(a1 + 32), v6, v5);
    CFRelease(v5);
  }
}

BOOL _IMDSqlOperationRunQueryWithString(const __CFString *a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CED928(v6, v7);
    }
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0xD010000000;
  v15 = "";
  memset(v16, 0, sizeof(v16));
  IMDSqlOperationInitWithSharedCSDBDatabase(v16);
  if (a3)
  {
    v8 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B7B1D610;
    v11[3] = &unk_1E7CB6FF8;
    v11[4] = a3;
    v11[5] = &v12;
  }

  else
  {
    v8 = 0;
  }

  _IMDSqlOperationRunQuery((v13 + 4), a1, 0, v8);
  v9 = IMDSqlOperationRelease((v13 + 4), a2);
  _Block_object_dispose(&v12, 8);
  return v9;
}

void sub_1B7B1D5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitQuery_OriginalPreSorting(uint64_t a1, int a2, uint64_t a3, CFTypeRef *a4)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m INNER JOIN chat_message_join cm ON   m.ROWID = cm.message_id WHERE cm.chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) ");
  if (a1)
  {
    CFStringAppend(Mutable, @"AND m.ROWID >=(SELECT * FROM (SELECT mm.rowid FROM message mm WHERE mm.GUID = ? UNION SELECT 0) ORDER BY ROWID DESC LIMIT 1  ) ");
  }

  if (a2)
  {
    CFStringAppend(Mutable, @" AND m.item_type == 0 AND m.associated_message_type == 0 ");
  }

  CFStringAppend(Mutable, @"ORDER BY cm.chat_id, cm.message_id DESC ");
  if (a3)
  {
    CFStringAppend(Mutable, @"LIMIT ?");
  }

  if (a4)
  {
    *a4 = CFRetain(Mutable);
  }

  CFRelease(Mutable);
}

void IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifierQuery_Original(uint64_t a1, int a2, int a3, int a4, uint64_t a5, CFTypeRef *a6)
{
  v26 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m INNER JOIN chat_message_join cm ON   m.ROWID = cm.message_id WHERE cm.chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) ");
  if (a2)
  {
    CFStringAppend(Mutable, @"AND ((m.thread_originator_guid = ? AND m.thread_originator_part = ?) OR m.associated_message_guid = ?)");
  }

  if (a1)
  {
    CFStringAppend(Mutable, @"AND m.ROWID >=(SELECT * FROM (SELECT mm.rowid FROM message mm WHERE mm.GUID = ? UNION SELECT 0) ORDER BY ROWID DESC LIMIT 1  ) ");
  }

  if (a3)
  {
    CFStringAppend(Mutable, @" AND m.item_type == 0 AND m.associated_message_type == 0 ");
  }

  if (a4)
  {
    CFStringAppend(Mutable, @" AND m.is_read == 0 AND m.is_finished == 1 AND m.is_from_me == 0 ");
  }

  CFStringAppend(Mutable, @"ORDER BY cm.chat_id, cm.message_date DESC, cm.message_id DESC ");
  if (a5)
  {
    CFStringAppend(Mutable, @"LIMIT ?");
  }

  if (a6)
  {
    *a6 = CFRetain(Mutable);
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15[0] = 67110402;
      v15[1] = a2;
      v16 = 2112;
      v17 = a1;
      v18 = 1024;
      v19 = a3;
      v20 = 1024;
      v21 = a4;
      v22 = 2048;
      v23 = a5;
      v24 = 2112;
      v25 = Mutable;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "useThreadOriginator = %d, messageGUID = %@, onlyMessageItems= %d, onlyUnread= %d, limit= %lld, Query: %@", v15, 0x32u);
    }
  }

  CFRelease(Mutable);
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t _IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimit_OriginalPreSorting(void *a1, char *a2, uint64_t a3, int a4, int64_t a5)
{
  v10 = objc_msgSend_count(a1, a2, a3);
  v13 = objc_msgSend_count(a2, v11, v12);
  if (v10 && v13 && v10 == v13)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1B7B1DA8C;
      v18[3] = &unk_1E7CB7040;
      v19 = a4;
      v18[6] = a5;
      v18[7] = v10;
      v18[8] = a1;
      v18[9] = a2;
      v18[4] = &v20;
      v18[5] = a3;
      _IMDPerformLockedDatabaseBlock(v18);
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1B7B1DD8C;
      v17[3] = &unk_1E7CB6838;
      v17[4] = &v20;
      __syncXPCIMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesWithOptionalThreadIdentifierAndLimit_IPCAction(v17, a1, a2, a3, 0, a5, a4 != 0, 0);
    }

    v15 = v21[3];
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v14 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CED9D8(v14);
    }

    return 0;
  }

  return v15;
}

uint64_t sub_1B7B1DA8C(uint64_t a1)
{
  result = CSDBSqliteDatabaseConnectionForReading();
  if (result)
  {
    CSDBSqliteConnectionBeginTransactionType();
    cf = 0;
    IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitQuery_OriginalPreSorting(*(a1 + 40), *(a1 + 80) != 0, *(a1 + 48), &cf);
    v3 = CSDBSqliteDatabaseStatementForWriting();
    if (v3 && *(v3 + 8))
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      if (*(a1 + 56))
      {
        v5 = 0;
        do
        {
          CFArrayGetValueAtIndex(*(a1 + 64), v5);
          CSDBSqliteBindTextFromCFString();
          CFArrayGetValueAtIndex(*(a1 + 72), v5);
          v6 = CSDBSqliteBindTextFromCFString();
          if (*(a1 + 40))
          {
            v6 = CSDBSqliteBindTextFromCFString();
          }

          v8 = *(a1 + 48);
          if (v8 >= 1)
          {
            v6 = CSDBSqliteBindInt();
          }

          sub_1B7AEAEE4(v6, v8, v7);
          v9 = CSDBRecordStoreProcessStatement();
          if (v9)
          {
            v10 = v9;
            if (CFArrayGetCount(v9) && CFArrayGetCount(v10) >= 1)
            {
              v11 = 0;
              do
              {
                CFArrayGetValueAtIndex(v10, v11);
                v12 = objc_alloc(MEMORY[0x1E696AD98]);
                ID = CSDBRecordGetID();
                v16 = objc_msgSend_initWithInteger_(v12, v14, ID);
                if (v16)
                {
                  objc_msgSend_addObject_(v4, v15, v16);
                }

                ++v11;
              }

              while (v11 < CFArrayGetCount(v10));
            }

            CFRelease(v10);
          }

          CSDBSqliteStatementReset();
          ++v5;
        }

        while (v5 < *(a1 + 56));
      }

      v17 = objc_autoreleasePoolPush();
      v20 = objc_msgSend_allObjects(v4, v18, v19);
      *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_sortedArrayUsingComparator_(v20, v21, &unk_1F2F9FFF0);
      objc_autoreleasePoolPop(v17);

      v22 = *(*(*(a1 + 32) + 8) + 24);
      if (v22)
      {
        Count = CFArrayGetCount(v22);
        if (Count << 32)
        {
          if (Count >= *(a1 + 48))
          {
            v24 = *(a1 + 48);
          }

          else
          {
            v24 = Count;
          }

          v25 = *MEMORY[0x1E695E480];
          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v24, MEMORY[0x1E695E9C0]);
          if (v24 >= 1)
          {
            for (i = 0; i != v24; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(*(*(a1 + 32) + 8) + 24), i);
              v31 = objc_msgSend_integerValue(ValueAtIndex, v29, v30);
              v32 = IMDMessageRecordCreateFromRecordIDUnlocked(v25, v31);
              if (v32)
              {
                v33 = v32;
                CFArrayAppendValue(Mutable, v32);
                CFRelease(v33);
              }
            }
          }

          CFRelease(*(*(*(a1 + 32) + 8) + 24));
          *(*(*(a1 + 32) + 8) + 24) = Mutable;
        }
      }
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    CSDBSqliteConnectionCommit();
    return CSDBSqliteDatabaseReleaseSqliteConnection();
  }

  return result;
}

xpc_object_t sub_1B7B1DD8C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B1DE20;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B1DE20(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t _IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifier_Original(void *a1, char *a2, uint64_t a3, const __CFString *a4, int a5, int a6, int64_t a7)
{
  v14 = objc_msgSend_count(a1, a2, a3);
  v17 = objc_msgSend_count(a2, v15, v16);
  v18 = v17;
  v37 = 0;
  v38 = 0;
  if (a4)
  {
    Length = CFStringGetLength(a4);
    if (v14 && v18 && v14 == v18)
    {
      if (Length >= 1)
      {
        IMMessageThreadIdentifierGetComponents();
        if (objc_msgSend_length(v38, v20, v21))
        {
          v24 = objc_msgSend_length(v37, v22, v23) != 0;
LABEL_12:
          v33 = 0;
          v34 = &v33;
          v35 = 0x2020000000;
          v36 = 0;
          if (IMDIsRunningInDatabaseServerProcess())
          {
            v29[0] = MEMORY[0x1E69E9820];
            v29[1] = 3221225472;
            v29[2] = sub_1B7B1E0F0;
            v29[3] = &unk_1E7CB7068;
            v30 = v24;
            v31 = a5;
            v32 = a6;
            v29[8] = a7;
            v29[9] = v14;
            v29[10] = a1;
            v29[11] = a2;
            v29[4] = v38;
            v29[5] = v37;
            v29[12] = a4;
            v29[6] = &v33;
            v29[7] = a3;
            _IMDPerformLockedDatabaseBlock(v29);
          }

          else
          {
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = sub_1B7B1E358;
            v28[3] = &unk_1E7CB6838;
            v28[4] = &v33;
            __syncXPCIMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesWithOptionalThreadIdentifierAndLimit_IPCAction(v28, a1, a2, a3, 0, a7, a5 != 0, a6 != 0);
          }

          v26 = v34[3];
          _Block_object_dispose(&v33, 8);
          return v26;
        }
      }

LABEL_11:
      v24 = 0;
      goto LABEL_12;
    }
  }

  else if (v14 && v17 && v14 == v17)
  {
    goto LABEL_11;
  }

  v25 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CED9D8(v25);
  }

  return 0;
}

uint64_t sub_1B7B1E0F0(uint64_t a1)
{
  result = CSDBSqliteDatabaseConnectionForReading();
  if (result)
  {
    CSDBSqliteConnectionBeginTransactionType();
    cf = 0;
    IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifierQuery_Original(*(a1 + 56), *(a1 + 104), *(a1 + 105) != 0, *(a1 + 106) != 0, *(a1 + 64), &cf);
    v3 = CSDBSqliteDatabaseStatementForWriting();
    if (v3 && *(v3 + 8))
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      if (*(a1 + 72))
      {
        v5 = 0;
        do
        {
          CFArrayGetValueAtIndex(*(a1 + 80), v5);
          CSDBSqliteBindTextFromCFString();
          CFArrayGetValueAtIndex(*(a1 + 88), v5);
          v6 = CSDBSqliteBindTextFromCFString();
          if (*(a1 + 104) == 1)
          {
            v8 = *(a1 + 32);
            CSDBSqliteBindTextFromCFString();
            v9 = *(a1 + 40);
            CSDBSqliteBindTextFromCFString();
            v10 = *(a1 + 96);
            AssociatedMessageGUIDFromThreadIdentifier = IMMessageCreateAssociatedMessageGUIDFromThreadIdentifier();
            CSDBSqliteBindTextFromCFString();
          }

          if (*(a1 + 56))
          {
            v6 = CSDBSqliteBindTextFromCFString();
          }

          v12 = *(a1 + 64);
          if (v12 >= 1)
          {
            v6 = CSDBSqliteBindInt();
          }

          sub_1B7AEAEE4(v6, v12, v7);
          v13 = CSDBRecordStoreProcessStatement();
          if (v13)
          {
            v14 = v13;
            if (CFArrayGetCount(v13) && CFArrayGetCount(v14) >= 1)
            {
              v15 = 0;
              do
              {
                CFArrayGetValueAtIndex(v14, v15);
                v16 = objc_alloc(MEMORY[0x1E696AD98]);
                ID = CSDBRecordGetID();
                v20 = objc_msgSend_initWithInteger_(v16, v18, ID);
                if (v20)
                {
                  objc_msgSend_addObject_(v4, v19, v20);
                }

                ++v15;
              }

              while (v15 < CFArrayGetCount(v14));
            }

            CFRelease(v14);
          }

          CSDBSqliteStatementReset();
          ++v5;
        }

        while (v5 < *(a1 + 72));
      }

      *(*(*(a1 + 48) + 8) + 24) = IMDMessageRecordLoadMessagesInSet(v4, *(a1 + 64), 1);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    CSDBSqliteConnectionCommit();
    return CSDBSqliteDatabaseReleaseSqliteConnection();
  }

  return result;
}

xpc_object_t sub_1B7B1E358(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B1E3EC;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B1E3EC(uint64_t a1, uint64_t a2, void *a3)
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

void IMDMessageRecordSelectMessagesWithGUIDsChatIdentifiersOnServicesQuery1_Original(int a1, CFTypeRef *a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  if (Mutable)
  {
    v5 = Mutable;
    CFStringAppend(Mutable, @"SELECT FROM chat_message_join WHERE chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) AND message_id IN (SELECT m.ROWID FROM message m WHERE m.guid ");
    v7 = IMDGenerateInClauseForCount(a1, v6);
    CFStringAppend(v5, v7);
    CFStringAppend(v5, @""));
    if (a2)
    {
      *a2 = CFRetain(v5);
    }

    CFRelease(v5);
  }
}

void IMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServicesQuery1_Original(int a1, CFTypeRef *a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  if (Mutable)
  {
    v5 = Mutable;
    CFStringAppend(Mutable, @"DELETE FROM chat_message_join WHERE chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) AND message_id IN (SELECT m.ROWID FROM message m WHERE m.guid ");
    v7 = IMDGenerateInClauseForCount(a1, v6);
    CFStringAppend(v5, v7);
    CFStringAppend(v5, @""));
    if (a2)
    {
      *a2 = CFRetain(v5);
    }

    CFRelease(v5);
  }
}

void IMDCNRecordIDAndHistoryTokenForAliasesWithCompletionHandler(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v10 = objc_msgSend_sharedResolver(IMDCNPersonAliasResolver, v8, v9);
    v12 = objc_msgSend__updateAliasToCNIDMap_withHistoryToken_(v10, v11, v5, v6);
    v13 = MEMORY[0x1E695DF90];
    v16 = objc_msgSend_currentHistoryToken(v10, v14, v15);
    v18 = objc_msgSend_dictionaryWithObjectsAndKeys_(v13, v17, v12, @"aliasMap", v16, @"historyToken", 0);

    v7[2](v7, v18);
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1B7B1E7E0;
    v19[3] = &unk_1E7CB70A8;
    v20 = v5;
    v21 = v7;
    __asyncXPCIMDCNRecordIDAndHistoryTokenForAliases_IPAction(v19, v20, v6);
  }
}

void sub_1B7B1E7E0(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = xpc_dictionary_get_value(v3, "dictionary_result");
  if (v4)
  {
    v5 = IMGetXPCDictionaryFromDictionary();
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = objc_msgSend_objectForKey_(v5, v7, @"aliasMap");
        v11 = objc_msgSend_count(v8, v9, v10);
        v14 = objc_msgSend_count(*(a1 + 32), v12, v13);
        v16 = 134218240;
        v17 = v11;
        v18 = 2048;
        v19 = v14;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "IMDCNRecordIDForAliases ASYNC returning updated map count %lu. Old map count %lu", &v16, 0x16u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

id IMDCNRecordIDAndHistoryTokenForAliases(void *a1)
{
  v1 = a1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1B7AE1914;
  v23 = sub_1B7AE2484;
  v24 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v4 = objc_msgSend_sharedResolver(IMDCNPersonAliasResolver, v2, v3);
    v6 = objc_msgSend__fetchAliasToCNIDMapForAliases_(v4, v5, v1);
    v7 = MEMORY[0x1E695DF20];
    v10 = objc_msgSend_currentHistoryToken(v4, v8, v9);
    v12 = objc_msgSend_dictionaryWithObjectsAndKeys_(v7, v11, v6, @"aliasMap", v10, @"historyToken", 0);
    v13 = v20[5];
    v20[5] = v12;
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1B7B1EB34;
    v16[3] = &unk_1E7CB70D0;
    v18 = &v19;
    v17 = v1;
    __syncXPCIMDCNRecordIDAndHistoryTokenForAliases_IPAction(v16, v17);
    v4 = v17;
  }

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v14;
}

void sub_1B7B1EB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B1EB34(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = xpc_dictionary_get_value(v3, "dictionary_result");
  if (v4)
  {
    v5 = IMGetXPCDictionaryFromDictionary();
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = objc_msgSend_objectForKey_(*(*(*(a1 + 40) + 8) + 40), v9, @"aliasMap");
        v13 = objc_msgSend_count(v10, v11, v12);
        v16 = objc_msgSend_count(*(a1 + 32), v14, v15);
        v18 = 134218240;
        v19 = v13;
        v20 = 2048;
        v21 = v16;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "IMDCNRecordIDForAliases returning map count %lu for aliases count %lu", &v18, 0x16u);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

id IMDCNRecordIDForAliases(void *a1)
{
  v1 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1B7AE1914;
  v17 = sub_1B7AE2484;
  v18 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v4 = objc_msgSend_sharedResolver(IMDCNPersonAliasResolver, v2, v3);
    v6 = objc_msgSend__fetchAliasToCNIDMapForAliases_(v4, v5, v1);
    v7 = v14[5];
    v14[5] = v6;
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B1EE08;
    v10[3] = &unk_1E7CB70D0;
    v12 = &v13;
    v11 = v1;
    __syncXPCIMDCNRecordIDForAliases_IPAction(v10, v11);
    v4 = v11;
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void sub_1B7B1EDEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B1EE08(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = xpc_dictionary_get_value(v3, "dictionary_result");
  if (v4)
  {
    v5 = IMGetXPCDictionaryFromDictionary();
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = objc_msgSend_count(*(*(*(a1 + 40) + 8) + 40), v9, v10);
        v14 = objc_msgSend_count(*(a1 + 32), v12, v13);
        v16 = 134218240;
        v17 = v11;
        v18 = 2048;
        v19 = v14;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "IMDCNRecordIDForAliases returning map count %lu for aliases count %lu", &v16, 0x16u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

id IMDCNGivenNameAndBirthdayForHandleID(void *a1)
{
  v1 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1B7AE1914;
  v15 = sub_1B7AE2484;
  v16 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v4 = objc_msgSend_sharedResolver(IMDCNPersonAliasResolver, v2, v3);
    v6 = objc_msgSend__fetchContactGivenNameAndBirthdayForHandleID_(v4, v5, v1);
    v7 = v12[5];
    v12[5] = v6;
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B1F0B8;
    v10[3] = &unk_1E7CB6838;
    v10[4] = &v11;
    __syncXPCIMDCNGivenNameAndBirthdayForHandleID_IPCAction(v10, v1);
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void sub_1B7B1F09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B1F0B8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = xpc_dictionary_get_value(v3, "dictionary_result");
  if (v4)
  {
    v5 = IMGetXPCDictionaryFromDictionary();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = objc_msgSend_count(*(*(*(a1 + 32) + 8) + 40), v9, v10);
        v13 = 134217984;
        v14 = v11;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "IMDCNGivenNameAndBirthdayForHandleID returning total Contact keys: %lu", &v13, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

id IMDCNFullNameAndOrganizationNameForHandleID(void *a1)
{
  v1 = a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1B7AE1914;
  v15 = sub_1B7AE2484;
  v16 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v4 = objc_msgSend_sharedResolver(IMDCNPersonAliasResolver, v2, v3);
    v6 = objc_msgSend__fetchContactFullNameAndOrganizationNameForHandleID_(v4, v5, v1);
    v7 = v12[5];
    v12[5] = v6;
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B1F348;
    v10[3] = &unk_1E7CB6838;
    v10[4] = &v11;
    __syncXPCIMDCNFullNameAndOrganizationNameForHandleID_IPCAction(v10, v1);
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void sub_1B7B1F32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B1F348(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = xpc_dictionary_get_value(v3, "dictionary_result");
  if (v4)
  {
    v5 = IMGetXPCDictionaryFromDictionary();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = objc_msgSend_count(*(*(*(a1 + 32) + 8) + 40), v9, v10);
        v13 = 134217984;
        v14 = v11;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "IMDCNFullNameAndOrganizationNameForHandleID returning total Contact keys: %lu", &v13, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t IMDAreAllAliasesUnknown(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = IMDCNRecordIDForAliases(v1);
    v6 = v3;
    if (v3 && objc_msgSend_count(v3, v4, v5))
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v6;
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v26, 16);
      if (v10)
      {
        v11 = *v21;
        LODWORD(v12) = 1;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v14 = objc_msgSend_objectForKeyedSubscript_(v7, v9, *(*(&v20 + 1) + 8 * i), v20);
            isEqualToString = objc_msgSend_isEqualToString_(v14, v15, @"__kIMDCNPersonNotFound");

            v12 = isEqualToString & v12;
          }

          v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v20, v26, 16);
        }

        while (v10);
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v25 = v12;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "IMDAreAllAliasesUnknown result is %d", buf, 8u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t IMDIsFavoritedContact(void *a1)
{
  v1 = a1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v4 = objc_msgSend_sharedResolver(IMDCNPersonAliasResolver, v2, v3);
    isFavoritedContact = objc_msgSend_isFavoritedContact_(v4, v5, v1);
    *(v11 + 24) = isFavoritedContact;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B1F774;
    v9[3] = &unk_1E7CB6838;
    v9[4] = &v10;
    __syncXPCIMDIsFavoritedContact_IPCAction(v9, v1);
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v7;
}

void sub_1B7B1F758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7B1F774(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_BOOL(xdict, "BOOL_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1B7B1F7B4()
{
  v0 = objc_alloc_init(IMDDatabaseServer);
  v1 = qword_1EDBE5AC0;
  qword_1EDBE5AC0 = v0;
}

void sub_1B7B1FBF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  v9 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v5 = objc_msgSend_database(*(a1 + 40), v3, v4);
  v7 = objc_msgSend_chatRecordsFilteredByPredicate_(v5, v6, v9);

  objc_msgSend__respondWithChatRecords_responseMessage_completionHandler_(*(a1 + 40), v8, v7, *(a1 + 48), *(a1 + 56));
}

void sub_1B7B1FD78(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  v3 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v4 = *(a1 + 40);
  v5 = xpc_dictionary_get_value(*(a1 + 32), "sortDescriptors");
  v6 = objc_opt_class();
  v8 = objc_msgSend__codableObjectsCopiedFromXPCArray_objectClass_(v4, v7, v5, v6);

  int64 = xpc_dictionary_get_int64(*(a1 + 32), "limit");
  v12 = objc_msgSend_database(*(a1 + 40), v10, v11);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7B1FED4;
  v15[3] = &unk_1E7CB7120;
  v13 = *(a1 + 48);
  v15[4] = *(a1 + 40);
  v16 = v13;
  v17 = *(a1 + 56);
  objc_msgSend_fetchChatRecordsFilteredUsingPredicate_sortedUsingDescriptors_limit_completionHandler_(v12, v14, v3, v8, int64, v15);
}

void sub_1B7B1FFC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  v3 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  v4 = xpc_dictionary_get_BOOL(*(a1 + 32), "ascending");
  v5 = *(a1 + 32);
  objc_opt_class();
  v6 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "limit");
  v10 = objc_msgSend_database(*(a1 + 40), v8, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B20128;
  v13[3] = &unk_1E7CB7120;
  v11 = *(a1 + 48);
  v13[4] = *(a1 + 40);
  v14 = v11;
  v15 = *(a1 + 56);
  objc_msgSend_fetchChatRecordsFilteredUsingPredicate_sortedUsingLastMessageDateAscending_olderThan_limit_completionHandler_(v10, v12, v3, v4, v6, int64, v13);
}

void sub_1B7B2021C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = IMGetXPCStringFromDictionary();
  v5 = objc_msgSend_database(*(a1 + 40), v3, v4);
  v7 = objc_msgSend_chatRecordsWithIdentifier_(v5, v6, v9);

  objc_msgSend__respondWithChatRecords_responseMessage_completionHandler_(*(a1 + 40), v8, v7, *(a1 + 48), *(a1 + 56));
}