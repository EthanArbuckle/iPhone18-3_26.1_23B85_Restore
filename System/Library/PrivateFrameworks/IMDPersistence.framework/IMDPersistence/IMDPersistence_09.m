void sub_1B7BE1044(uint64_t a1, xpc_object_t xdict)
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

        string = xpc_array_get_string(v4, v7);
        if (string)
        {
          v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, string);
          if (v11)
          {
            CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

uint64_t IMDMessageRecordGetMessagesSequenceNumber()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = -1;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1B7BE124C;
    v3[3] = &unk_1E7CB7390;
    v3[4] = &v4;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT seq FROM SQLITE_SEQUENCE WHERE name = 'message';", v3);
  }

  else
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = sub_1B7BE1298;
    v2[3] = &unk_1E7CB6838;
    v2[4] = &v4;
    __syncXPCIMDMessageRecordGetMessagesSequenceNumber_IPCAction(v2);
  }

  v0 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v0;
}

sqlite3_int64 sub_1B7BE124C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    result = sqlite3_column_int64(*(a4 + 8), 0);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

int64_t sub_1B7BE1298(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "int64_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDMessageRecordCopyMessagesBetweenRowIDs(int64_t a1, int64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      *&buf[4] = a1;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEBUG, "IMDMessageRecordCopyMessagesBetweenRowIDs [%lld:%lld]", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v11 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7BE14C4;
    v9[3] = &unk_1E7CBD090;
    v9[5] = a1;
    v9[6] = a2;
    v9[4] = buf;
    _IMDPerformLockedDatabaseBlock(v9);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7BE1630;
    v8[3] = &unk_1E7CB6838;
    v8[4] = buf;
    __syncXPCIMDMessageRecordCopyMessagesBetweenRowIDs_IPCAction(v8, a1, a2);
  }

  v5 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1B7BE14C4(void *a1)
{
  v2 = CSDBSqliteDatabaseStatementForWriting();
  if (v2 && *(v2 + 8))
  {
    v3 = a1[5];
    CSDBSqliteBindInt64();
    v4 = a1[6];
    v5 = CSDBSqliteBindInt64();
    sub_1B7AEAEE4(v5, v6, v7);
    v8 = CSDBRecordStoreProcessStatement();
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v10 = 0;
      v11 = *MEMORY[0x1E695E480];
      v12 = Count & 0x7FFFFFFF;
      v13 = MEMORY[0x1E695E9C0];
      while (1)
      {
        CFArrayGetValueAtIndex(v8, v10);
        ID = CSDBRecordGetID();
        v15 = IMDMessageRecordCreateFromRecordIDUnlocked(v11, ID);
        v16 = v15;
        if (!*(*(a1[4] + 8) + 24))
        {
          break;
        }

        if (v15)
        {
          goto LABEL_7;
        }

LABEL_8:
        if (v12 == ++v10)
        {
          goto LABEL_12;
        }
      }

      *(*(a1[4] + 8) + 24) = CFArrayCreateMutable(v11, v12, v13);
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_7:
      CFArrayAppendValue(*(*(a1[4] + 8) + 24), v16);
      CFRelease(v16);
      goto LABEL_8;
    }

LABEL_12:
    CSDBSqliteStatementReset();
    if (v8)
    {
      CFRelease(v8);
    }
  }

  CFRelease(@"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE rowID >= ?   AND rowID <= ?   AND item_type == 0 ORDER BY message.ROWID ASC;");
}

xpc_object_t sub_1B7BE1630(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BE16C4;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BE16C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_autoreleasePoolPush();
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v6 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v7 = v6;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6);
    CFRelease(v7);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

uint64_t IMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID(int64_t a1, int64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    MessagesSequenceNumber = IMDMessageRecordGetMessagesSequenceNumber();
    if ((a2 & ~(a2 >> 63)) <= MessagesSequenceNumber)
    {
      v6 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v22 = a1;
        v23 = 2048;
        v24 = a2 & ~(a2 >> 63);
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "IMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID limit: %lld  rowID: %lld", buf, 0x16u);
      }

      v7 = @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m  INDEXED BY message_idx_isRead_isFromMe_itemType  INNER JOIN chat_message_join cm ON cm.message_id = m.rowid  INNER JOIN chat c ON c.ROWID = cm.chat_id  WHERE m.is_read == 0  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0  AND c.is_filtered != 2  ORDER BY m.date DESC, m.ROWID DESC LIMIT ?;";
      v14[0] = MEMORY[0x1E69E9820];
      if (a2 > 0)
      {
        v7 = @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m  INDEXED BY message_idx_isRead_isFromMe_itemType  INNER JOIN chat_message_join cm ON cm.message_id = m.rowid  INNER JOIN chat c ON c.ROWID = cm.chat_id  WHERE m.ROWID > ?  AND m.is_read == 0  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0  AND c.is_filtered != 2  ORDER BY m.date DESC, m.ROWID DESC LIMIT ?;";
      }

      v8 = @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m  INDEXED BY message_idx_isRead_isFromMe_itemType  INNER JOIN chat_message_join cm ON cm.message_id = m.rowid  INNER JOIN chat c ON c.ROWID = cm.chat_id  WHERE m.is_read == 0  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0  AND c.is_filtered != 2  ORDER BY m.ROWID DESC;";
      v14[1] = 3221225472;
      v14[2] = sub_1B7BE1A00;
      v14[3] = &unk_1E7CBD0B8;
      v15 = a2 > 0;
      if (a2 > 0)
      {
        v8 = @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m  INDEXED BY message_idx_isRead_isFromMe_itemType  INNER JOIN chat_message_join cm ON cm.message_id = m.rowid  INNER JOIN chat c ON c.ROWID = cm.chat_id  WHERE m.ROWID > ?  AND m.is_read == 0  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0  AND c.is_filtered != 2  ORDER BY m.ROWID DESC;";
      }

      if (a1 <= 0)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }

      v16 = a1 > 0;
      v14[5] = a2 & ~(a2 >> 63);
      v14[6] = a1;
      v14[4] = &v17;
      _IMDPerformLockedStatementBlockWithQuery(v9, v14);
    }

    else
    {
      v5 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v22 = a2 & ~(a2 >> 63);
        v23 = 2048;
        v24 = MessagesSequenceNumber;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "The RowID is out of bounds.  We were asked for rows after [%lld] which exceeds the current sequence number [%lld]", buf, 0x16u);
      }
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7BE1C34;
    v13[3] = &unk_1E7CB6838;
    v13[4] = &v17;
    __syncXPCIMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID_IPCAction(v13, a1, a2);
  }

  v10 = v18[3];
  _Block_object_dispose(&v17, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1B7BE19D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BE1A00(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a1;
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 40);
    a1 = CSDBSqliteBindInt();
  }

  if (*(v3 + 57) == 1)
  {
    v5 = *(v3 + 48);
    a1 = CSDBSqliteBindInt();
  }

  sub_1B7AEAEE4(a1, a2, a3);
  v6 = CSDBRecordStoreProcessStatement();
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v9 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134217984;
        v20 = Count;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEFAULT, "IMDMessageRecordCopyNewestUnreadIncomingMessagesAfterRowID got back %ld rows", &v19, 0xCu);
      }

      v10 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v12 = Mutable;
        v13 = 0;
        do
        {
          CFArrayGetValueAtIndex(v7, v13);
          ID = CSDBRecordGetID();
          v15 = IMDMessageRecordCreateFromRecordIDUnlocked(v10, ID);
          if (v15)
          {
            v17 = v15;
            CFArrayAppendValue(v12, v15);
            CFRelease(v17);
          }

          ++v13;
        }

        while (Count != v13);
        if ((*(v3 + 57) & 1) == 0)
        {
          objc_msgSend_sortUsingComparator_(v12, v16, &unk_1F2FA1410);
        }

        *(*(*(v3 + 32) + 8) + 24) = v12;
      }
    }

    CFRelease(v7);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BE1BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Date = IMDMessageRecordGetDate(a2, 0, a3);
  Identifier = IMDMessageRecordGetDate(a3, 0, v6);
  if (!Date || !Identifier || Date == Identifier)
  {
    Date = IMDMessageRecordGetIdentifier(a2);
    Identifier = IMDMessageRecordGetIdentifier(a3);
  }

  if (Date > Identifier)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_1B7BE1C34(uint64_t a1, xpc_object_t xdict)
{
  v14 = *MEMORY[0x1E69E9840];
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v13 = count;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "IMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID got back %zu rows from XPC", buf, 0xCu);
    }

    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BE1DBC;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    xpc_array_apply(v4, applier);
  }

  v7 = *(*(*(a1 + 32) + 8) + 24);
  if (v7)
  {
    v8 = CFArrayGetCount(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v13) = v8;
    _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEFAULT, "IMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID got back %d rows after deserialization", buf, 8u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BE1DBC(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t IMDMessageRecordCopyUnreadIncomingMessagesWithChatIdentifiersOnServicesToLimitFallbackGUID(void *a1, void *a2, int64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = IMDatabaseMessageEventLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = a4;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Asked to load up to oldest unread or fallback message: %@", &buf, 0xCu);
  }

  v11 = objc_msgSend_count(a1, v9, v10);
  v14 = objc_msgSend_count(a2, v12, v13);
  v17 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v15, v16);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v17, v18, v19);
  if (v11 && v14 && v11 == v14)
  {
    v21 = isOneChatEnabled;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x2020000000;
    v31 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1B7BE2088;
      v27[3] = &unk_1E7CB7040;
      v28 = v21 ^ 1;
      v27[6] = a4;
      v27[7] = a1;
      v27[8] = a2;
      v27[9] = a3;
      v27[4] = &buf;
      v27[5] = v11;
      _IMDPerformLockedDatabaseBlock(v27);
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_1B7BE256C;
      v26[3] = &unk_1E7CB6838;
      v26[4] = &buf;
      __syncXPCIMDMessageRecordCopyUnreadIncomingMessagesWithChatIdentifiersOnServicesToLimitFallbackGUID_IPCAction(v26, a3, a1, a2, a4);
    }

    v23 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v22 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFBF4C();
    }

    v23 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t sub_1B7BE2088(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  result = CSDBSqliteDatabaseConnectionForReading();
  if (result)
  {
    CSDBSqliteConnectionBeginTransactionType();
    if (*(a1 + 80))
    {
      v3 = @"SELECT * FROM( SELECT ROWID from(     SELECT m1.ROWID FROM message m1 WHERE m1.GUID = ?    UNION      SELECT m2.ROWID FROM message m2        INNER JOIN chat_message_join cm ON          m2.ROWID = cm.message_id        WHERE cm.chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?)        AND m2.is_read = 0        AND m2.item_type = 0        AND m2.is_from_me = 0 )) ORDER BY ROWID ASC LIMIT 1;";
    }

    else
    {
      v3 = @"SELECT * FROM( SELECT ROWID from(     SELECT m1.ROWID FROM message m1 WHERE m1.GUID = ?    UNION      SELECT m2.ROWID FROM message m2        INNER JOIN chat_message_join cm ON          m2.ROWID = cm.message_id        WHERE cm.chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ?)        AND m2.is_read = 0        AND m2.item_type = 0        AND m2.is_from_me = 0 )) ORDER BY ROWID ASC LIMIT 1;";
    }

    v4 = CSDBSqliteDatabaseStatementForWriting();
    if (v4 && *(v4 + 8) && *(a1 + 40))
    {
      cf = v3;
      v5 = 0;
      v6 = 0;
      do
      {
        if (*(a1 + 48))
        {
          v7 = *(a1 + 48);
        }

        CSDBSqliteBindTextFromCFString();
        CFArrayGetValueAtIndex(*(a1 + 56), v6);
        CSDBSqliteBindTextFromCFString();
        if (*(a1 + 80) == 1)
        {
          CFArrayGetValueAtIndex(*(a1 + 64), v6);
          CSDBSqliteBindTextFromCFString();
        }

        v8 = CSDBSqliteStatementInteger64Result();
        if (!v8)
        {
          v9 = IMDatabaseMessageEventLogHandle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = *(a1 + 48);
            *buf = 138412546;
            v49 = v10;
            v50 = 1024;
            v51 = 0;
            _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Query failed to look up message for guid: %@ error: %d", buf, 0x12u);
          }
        }

        if (!v5 || v8 >= 1 && v8 < v5)
        {
          v5 = v8;
        }

        v11 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v49 = v5;
          _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Final adjusted row ID: %lld", buf, 0xCu);
        }

        CSDBSqliteStatementReset();
        ++v6;
      }

      while (v6 < *(a1 + 40));
      v3 = cf;
    }

    CFRelease(v3);
    if (*(a1 + 80))
    {
      v12 = @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m INNER JOIN chat_message_join cm ON   m.ROWID = cm.message_id WHERE cm.chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) AND m.ROWID >= ? AND m.item_type == 0  AND m.is_read == 0 ORDER BY cm.chat_id, cm.message_id DESC LIMIT ?;";
    }

    else
    {
      v12 = @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m INNER JOIN chat_message_join cm ON   m.ROWID = cm.message_id WHERE cm.chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ?) AND m.ROWID >= ? AND m.item_type == 0  AND m.is_read == 0 ORDER BY cm.chat_id, cm.message_id DESC LIMIT ?;";
    }

    v13 = CSDBSqliteDatabaseStatementForWriting();
    if (v13 && *(v13 + 8))
    {
      v47 = v12;
      v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      if (*(a1 + 40))
      {
        v15 = 0;
        do
        {
          CFArrayGetValueAtIndex(*(a1 + 56), v15);
          CSDBSqliteBindTextFromCFString();
          if (*(a1 + 80) == 1)
          {
            CFArrayGetValueAtIndex(*(a1 + 64), v15);
            CSDBSqliteBindTextFromCFString();
          }

          CSDBSqliteBindInt();
          v16 = *(a1 + 72);
          v17 = CSDBSqliteBindInt();
          sub_1B7AEAEE4(v17, v18, v19);
          v20 = CSDBRecordStoreProcessStatement();
          if (v20)
          {
            v21 = v20;
            if (CFArrayGetCount(v20) && CFArrayGetCount(v21) >= 1)
            {
              v22 = 0;
              do
              {
                CFArrayGetValueAtIndex(v21, v22);
                v23 = objc_alloc(MEMORY[0x1E696AD98]);
                ID = CSDBRecordGetID();
                v27 = objc_msgSend_initWithInteger_(v23, v25, ID);
                if (v27)
                {
                  objc_msgSend_addObject_(v14, v26, v27);
                }

                ++v22;
              }

              while (v22 < CFArrayGetCount(v21));
            }

            CFRelease(v21);
          }

          CSDBSqliteStatementReset();
          ++v15;
        }

        while (v15 < *(a1 + 40));
      }

      v28 = objc_autoreleasePoolPush();
      v31 = objc_msgSend_allObjects(v14, v29, v30);
      *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_sortedArrayUsingComparator_(v31, v32, &unk_1F2FA1430);
      objc_autoreleasePoolPop(v28);

      v33 = *(*(*(a1 + 32) + 8) + 24);
      v12 = v47;
      if (v33)
      {
        Count = CFArrayGetCount(v33);
        if (Count << 32)
        {
          v35 = Count;
          v36 = *MEMORY[0x1E695E480];
          Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
          if (v35 >= 1)
          {
            for (i = 0; i != v35; ++i)
            {
              if (*(a1 + 72) <= i)
              {
                break;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(*(*(*(a1 + 32) + 8) + 24), i);
              v42 = objc_msgSend_integerValue(ValueAtIndex, v40, v41);
              v43 = IMDMessageRecordCreateFromRecordIDUnlocked(v36, v42);
              if (v43)
              {
                v44 = v43;
                CFArrayAppendValue(Mutable, v43);
                CFRelease(v44);
              }
            }
          }

          CFRelease(*(*(*(a1 + 32) + 8) + 24));
          *(*(*(a1 + 32) + 8) + 24) = Mutable;
        }
      }
    }

    CFRelease(v12);
    CSDBSqliteConnectionCommit();
    result = CSDBSqliteDatabaseReleaseSqliteConnection();
  }

  v45 = *MEMORY[0x1E69E9840];
  return result;
}

xpc_object_t sub_1B7BE256C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BE2600;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BE2600(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t IMDMessageRecordCopyNewestFailedOutgoingMessagesToLimitAfterDate(int64_t a1, int64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    MostRecentMessageDate = IMDMessageRecordGetMostRecentMessageDate();
    v5 = a2 & ~(a2 >> 63);
    if (v5 <= MostRecentMessageDate)
    {
      v7 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v18 = a1;
        v19 = 2048;
        v20 = v5;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEFAULT, "IMDMessageRecordCopyNewestFailedOutgoingMessagesToLimitAfterDate limit: %lld  date: %lld", buf, 0x16u);
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7BE28D4;
      v12[3] = &unk_1E7CB7548;
      v12[5] = v5;
      v12[6] = a1;
      v12[4] = &v13;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE date > ?   AND item_type == 0   AND error != 0   AND is_from_me == 1   AND is_finished == 1 ORDER BY date DESC, ROWID DESC LIMIT ?;", v12);
    }

    else
    {
      v6 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v18 = a2 & ~(a2 >> 63);
        v19 = 2048;
        v20 = MostRecentMessageDate;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "The date is out of bounds.  We were asked for rows after date: [%lld] which exceeds the most recent message [%lld]", buf, 0x16u);
      }
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B7BE2A08;
    v11[3] = &unk_1E7CB6838;
    v11[4] = &v13;
    __syncXPCIMDMessageRecordCopyNewestFailedOutgoingMessagesToLimitAfterDate_IPCAction(v11, a1, a2);
  }

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1B7BE28AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BE28D4(void *a1)
{
  v2 = a1[5];
  CSDBSqliteBindInt64();
  v3 = a1[6];
  v4 = CSDBSqliteBindInt64();
  sub_1B7AEAEE4(v4, v5, v6);
  v7 = CSDBRecordStoreProcessStatement();
  if (v7)
  {
    v8 = v7;
    Count = CFArrayGetCount(v7);
    if (Count >= 1)
    {
      v10 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v12 = Mutable;
        for (i = 0; i != Count; ++i)
        {
          CFArrayGetValueAtIndex(v8, i);
          ID = CSDBRecordGetID();
          v15 = IMDMessageRecordCreateFromRecordIDUnlocked(v10, ID);
          if (v15)
          {
            v16 = v15;
            CFArrayAppendValue(v12, v15);
            CFRelease(v16);
          }
        }

        *(*(a1[4] + 8) + 24) = v12;
      }
    }

    CFRelease(v8);
  }
}

xpc_object_t sub_1B7BE2A08(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BE2A9C;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BE2A9C(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t IMDMessageRecordCopyMessagesDataDetectionResults(int64_t a1, int64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    MessagesSequenceNumber = IMDMessageRecordGetMessagesSequenceNumber();
    v5 = a2 & ~(a2 >> 63);
    if (v5 <= MessagesSequenceNumber)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          v18 = a1;
          v19 = 2048;
          v20 = v5;
          _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEBUG, "IMDMessageRecordCopyMessagesDataDetectionResults limit: %lld  rowID: %lld", buf, 0x16u);
        }
      }

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7BE2D98;
      v12[3] = &unk_1E7CB7548;
      v12[5] = v5;
      v12[6] = a1;
      v12[4] = &v13;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE ROWID > ?   AND item_type == 0   AND has_dd_results == 1 ORDER BY ROWID DESC LIMIT ?;", v12);
    }

    else
    {
      v6 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v18 = a2 & ~(a2 >> 63);
        v19 = 2048;
        v20 = MessagesSequenceNumber;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "The RowID is out of bounds.  We were asked for rows after [%lld] which exceeds the current sequence number [%lld]", buf, 0x16u);
      }
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B7BE2ECC;
    v11[3] = &unk_1E7CB6838;
    v11[4] = &v13;
    __syncXPCIMDMessageRecordCopyMessagesDataDetectionResults_IPCAction(v11, a1, a2);
  }

  v8 = v14[3];
  _Block_object_dispose(&v13, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1B7BE2D98(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindInt();
  v3 = *(a1 + 48);
  v4 = CSDBSqliteBindInt();
  sub_1B7AEAEE4(v4, v5, v6);
  v7 = CSDBRecordStoreProcessStatement();
  if (v7)
  {
    v8 = v7;
    Count = CFArrayGetCount(v7);
    if (Count >= 1)
    {
      v10 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v12 = Mutable;
        for (i = 0; i != Count; ++i)
        {
          CFArrayGetValueAtIndex(v8, i);
          ID = CSDBRecordGetID();
          v15 = IMDMessageRecordCreateFromRecordIDUnlocked(v10, ID);
          if (v15)
          {
            v16 = v15;
            CFArrayAppendValue(v12, v15);
            CFRelease(v16);
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = v12;
      }
    }

    CFRelease(v8);
  }
}

xpc_object_t sub_1B7BE2ECC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BE2F60;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BE2F60(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t IMDMessageRecordCopyMostRecentUseageOfAddresses(const __CFArray *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B7BE3364;
    v11[3] = &unk_1E7CB6838;
    v11[4] = &v13;
    __syncXPCIMDMessageRecordCopyMostRecentUseageOfAddresses_IPCAction(v11, a1);
    goto LABEL_14;
  }

  if (!a1)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCA3C();
    }

    goto LABEL_9;
  }

  Count = CFArrayGetCount(a1);
  if (Count > 0)
  {
    v3 = IMDMessageRecordCopyMostRecentUseageOfAddressesQuery(Count);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7BE3220;
    v12[3] = &unk_1E7CBD090;
    v12[5] = v3;
    v12[6] = a1;
    v12[4] = &v13;
    _IMDPerformLockedDatabaseBlock(v12);
    if (v3)
    {
      CFRelease(v3);
    }

LABEL_9:
    if (v14[3])
    {
      v5 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = v14[3];
        *buf = 138412290;
        v18 = v6;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Matching addresses (in order) are %@", buf, 0xCu);
      }
    }

    goto LABEL_14;
  }

  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CFCA00();
  }

LABEL_14:
  v8 = v14[3];
  _Block_object_dispose(&v13, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_1B7BE3220(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    result = CSDBSqliteDatabaseConnectionForReading();
    if (result)
    {
      v2 = v1[5];
      result = CSDBSqliteConnectionStatementForSQL();
      if (result)
      {
        v3 = result;
        if (*(result + 8))
        {
          v4 = v1[6];
          CSDBSqliteBindTextFromCFArrayOfCFStrings();
          if (sqlite3_step(*(v3 + 8)) == 100)
          {
            v5 = *MEMORY[0x1E695E480];
            v6 = MEMORY[0x1E695E9C0];
            do
            {
              if (sqlite3_column_text(*(v3 + 8), 1))
              {
                v7 = sqlite3_column_text(*(v3 + 8), 1);
                v8 = CFStringCreateWithCString(v5, v7, 0x8000100u);
                if (v8)
                {
                  v9 = v8;
                  v10 = *(*(v1[4] + 8) + 24);
                  if (!v10)
                  {
                    *(*(v1[4] + 8) + 24) = CFArrayCreateMutable(v5, 0, v6);
                    v10 = *(*(v1[4] + 8) + 24);
                  }

                  CFArrayAppendValue(v10, v9);
                  CFRelease(v9);
                }
              }
            }

            while (sqlite3_step(*(v3 + 8)) == 100);
          }

          return CSDBSqliteStatementReset();
        }
      }
    }
  }

  return result;
}

void sub_1B7BE3364(uint64_t a1, xpc_object_t xdict)
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

        string = xpc_array_get_string(v4, v7);
        if (string)
        {
          v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, string);
          if (v11)
          {
            CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v11);
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

uint64_t IMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v31 = xmmword_1E7CBD0D8;
    v32 = *off_1E7CBD0E8;
    v33 = 3919;
    v6 = MEMORY[0x1E696AEC0];
    v7 = IMFileLocationTrimFileName();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, &stru_1F2FA9728);
    v11 = objc_msgSend_stringWithFormat_(v6, v10, @"Unexpected nil '%@' in %s at %s:%d. %@", @"messageGUID", "CFArrayRef IMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender(NSString *, NSString *, NSError **)", v7, 3919, v9);
    v14 = IMGetAssertionFailureHandler();
    if (v14)
    {
      v14(v11);
    }

    else
    {
      v15 = objc_msgSend_warning(MEMORY[0x1E69A6138], v12, v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CED0B0();
      }
    }
  }

  *&v31 = 0;
  *(&v31 + 1) = &v31;
  v32 = 0x2020000000uLL;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (a2)
    {
      v16 = v29;
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_1B7BE3750;
      v29[3] = &unk_1E7CBD108;
      v29[4] = a1;
      v29[5] = a2;
      v17 = &v30;
      v18 = @"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE (associated_message_guid = ?) AND (handle_id IN (SELECT ROWID FROM handle where id = ?));";
    }

    else
    {
      v16 = v27;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1B7BE3894;
      v27[3] = &unk_1E7CB6F30;
      v27[4] = a1;
      v17 = &v28;
      v18 = @"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE ((associated_message_guid = ?) AND (is_from_me = 1));";
    }

    *v17 = &v31;
    _IMDPerformLockedStatementBlockWithQuery(v18, v16);
  }

  else
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_1B7BE38FC;
    v26[3] = &unk_1E7CBD130;
    v26[4] = &v31;
    v26[5] = a3;
    __syncXPCIMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender_IPCAction(v26, a1, a2);
  }

  v19 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v22 = objc_msgSend_count(*(*(&v31 + 1) + 24), v20, v21);
    *buf = 134218498;
    v35 = v22;
    v36 = 2112;
    v37 = a1;
    v38 = 2112;
    v39 = a2;
    _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Found %ld associated messages for messageGUID: %@, forSender: %@", buf, 0x20u);
  }

  v23 = *(*(&v31 + 1) + 24);
  _Block_object_dispose(&v31, 8);
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

__CFArray *sub_1B7BE3750(void *a1)
{
  v2 = a1[4];
  CSDBSqliteBindTextFromCFString();
  v3 = a1[5];
  v4 = CSDBSqliteBindTextFromCFString();
  sub_1B7AEAEE4(v4, v5, v6);
  v7 = CSDBRecordStoreProcessStatement();
  result = sub_1B7BE37C4(v7);
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

__CFArray *sub_1B7BE37C4(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    Mutable = 0;
  }

  else
  {
    v3 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v5 = 0;
      do
      {
        CFArrayGetValueAtIndex(a1, v5);
        ID = CSDBRecordGetID();
        v7 = IMDMessageRecordCreateFromRecordIDUnlocked(v3, ID);
        if (v7)
        {
          v8 = v7;
          CFArrayAppendValue(Mutable, v7);
          CFRelease(v8);
        }

        ++v5;
      }

      while (Count != v5);
    }
  }

  CFRelease(a1);
  return Mutable;
}

__CFArray *sub_1B7BE3894(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CSDBSqliteBindTextFromCFString();
  sub_1B7AEAEE4(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  result = sub_1B7BE37C4(v6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7BE38FC(uint64_t a1, xpc_object_t xdict)
{
  v20[1] = *MEMORY[0x1E69E9840];
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    v5 = result;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7BE3AC4;
    v18[3] = &unk_1E7CB8278;
    v18[4] = Mutable;
    result = xpc_array_apply(v5, v18);
  }

  else
  {
    Mutable = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = Mutable;
  if (*(a1 + 40))
  {
    result = xpc_dictionary_get_int64(xdict, "error_code");
    if (result)
    {
      v7 = result;
      string = xpc_dictionary_get_string(xdict, "error_domain");
      result = xpc_dictionary_get_string(xdict, "error_description");
      if (string)
      {
        if (result)
        {
          v10 = result;
        }

        else
        {
          v10 = "";
        }

        v11 = MEMORY[0x1E696ABC0];
        v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v9, string);
        v19 = *MEMORY[0x1E696A578];
        v20[0] = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v13, v10);
        v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v20, &v19, 1);
        result = objc_msgSend_errorWithDomain_code_userInfo_(v11, v16, v12, v7, v15);
        **(a1 + 40) = result;
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7BE3AC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(*(a1 + 32), v4);
    CFRelease(v5);
  }

  return 1;
}

uint64_t IMDMessageRecordCopyMessagesToUploadToCloudKitWithLimit(int64_t a1, int64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v17 = a1;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyMessagesToUploadToCloudKitWithLimit called with limit %lld", buf, 0xCu);
      }
    }

    if (a2 == 4)
    {
      v5 = @"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE ck_sync_state == 0 AND TRIM(guid) <> '' AND (service in ('iMessage', 'SMS', 'RCS', 'SatelliteSMS', 'iMessageLite'))AND was_detonated == 0 AND schedule_type != 2 AND balloon_bundle_id == 'com.apple.messages.chatbot' ORDER BY date LIMIT ? ;";
    }

    else
    {
      v5 = @"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE ck_sync_state == 0 AND TRIM(guid) <> '' AND (service in ('iMessage', 'SMS', 'RCS', 'SatelliteSMS', 'iMessageLite'))AND was_detonated == 0 AND schedule_type != 2 AND (balloon_bundle_id IS NULL OR balloon_bundle_id != 'com.apple.messages.chatbot') ORDER BY date LIMIT ? ;";
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B7BE3D6C;
    v11[3] = &unk_1E7CB7520;
    v11[4] = &v12;
    v11[5] = a1;
    _IMDPerformLockedStatementBlockWithQuery(v5, v11);
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7BE3F1C;
    v10[3] = &unk_1E7CB6838;
    v10[4] = &v12;
    __syncXPCIMDMessageRecordCopyMessagesToUploadToCloudKit_IPCAction(v10, a1, a2);
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Returned from DB call.", buf, 2u);
      }
    }
  }

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1B7BE3D6C(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = CSDBSqliteBindInt64();
  sub_1B7AEAEE4(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = sub_1B7BE37C4(v6);
  v7 = *(*(*(a1 + 32) + 8) + 24);
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        Count = CFArrayGetCount(*(*(*(a1 + 32) + 8) + 24));
        v16 = 134217984;
        v17 = Count;
        v11 = "Number of results %ld";
        v12 = v9;
        v13 = 12;
LABEL_8:
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, v11, &v16, v13);
      }
    }
  }

  else if (v8)
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      v11 = "Number of results 0";
      v12 = v14;
      v13 = 2;
      goto LABEL_8;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BE3F1C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    v4 = result;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BE3FE8;
    applier[3] = &unk_1E7CB8278;
    applier[4] = Mutable;
    result = xpc_array_apply(v4, applier);
  }

  else
  {
    Mutable = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = Mutable;
  return result;
}

uint64_t sub_1B7BE3FE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(*(a1 + 32), v4);
    CFRelease(v5);
  }

  return 1;
}

uint64_t IMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKitWithLimit(int64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v14 = a1;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKitWithLimit called with limit %lld", buf, 0xCu);
      }
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7BE4260;
    v8[3] = &unk_1E7CB7948;
    v8[4] = &v9;
    v8[5] = a1;
    IMDRunSqlOperation(v8);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BE49FC;
    v7[3] = &unk_1E7CB6838;
    v7[4] = &v9;
    __syncXPCIMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKit_IPCAction(v7, a1);
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Returned from DB call.", buf, 2u);
      }
    }
  }

  v4 = v10[3];
  _Block_object_dispose(&v9, 8);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL sub_1B7BE4260(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BE432C;
  v5[3] = &unk_1E7CB75B0;
  v2 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7BE4338;
  v4[3] = &unk_1E7CB7920;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT ROWID, guid, thread_originator_guid, thread_originator_part FROM message where ck_sync_state == 8 AND (service == 'iMessage' OR service == 'SMS') order by date limit ? ;", v5, v4);
}

BOOL sub_1B7BE4338(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v30 = 0;
    v3 = MEMORY[0x1E69E9820];
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      v50 = 0;
      v51 = &v50;
      v52 = 0x2020000000;
      v53 = 0;
      v44 = 0;
      v45 = &v44;
      v46 = 0x3052000000;
      v47 = sub_1B7AE1B30;
      v48 = sub_1B7AE25A0;
      v49 = 0;
      v38 = 0;
      v39 = &v38;
      v40 = 0x3052000000;
      v41 = sub_1B7AE1B30;
      v42 = sub_1B7AE25A0;
      v43 = 0;
      v32 = 0;
      v33 = &v32;
      v34 = 0x3052000000;
      v35 = sub_1B7AE1B30;
      v36 = sub_1B7AE25A0;
      v37 = 0;
      v4 = *(a1 + 40);
      v31[0] = v3;
      v31[1] = 3221225472;
      v31[2] = sub_1B7BE4848;
      v31[3] = &unk_1E7CBD158;
      v31[4] = &v50;
      v31[5] = &v44;
      v31[6] = &v38;
      v31[7] = &v32;
      IMDSqlOperationIterateRow(v4, v31);
      if (v51[3] && objc_msgSend_length(v45[5], v5, v6) && objc_msgSend_length(v39[5], v7, v8))
      {
        Mutable = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v10 = CFNumberCreate(allocator, kCFNumberLongLongType, v51 + 3);
          CFDictionarySetValue(Mutable, @"ROWID", v10);
          CFDictionarySetValue(Mutable, @"MID", v45[5]);
          CFDictionarySetValue(Mutable, @"TOID", v39[5]);
          if (objc_msgSend_length(v33[5], v11, v12))
          {
            CFDictionarySetValue(Mutable, @"TOPart", v33[5]);
          }

          v13 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v51[3];
            v15 = v45[5];
            v16 = v39[5];
            v17 = v33[5];
            *buf = 134218754;
            v55 = v14;
            v56 = 2112;
            v57 = v15;
            v58 = 2112;
            v59 = v16;
            v60 = 2112;
            v61 = v17;
            _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "Found message %lld/%@ to update : originator GUID/part: %@/%@", buf, 0x2Au);
          }

          v18 = v30;
          if (!v30)
          {
            v18 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          }

          v30 = v18;
          CFArrayAppendValue(v18, Mutable);
          CFRelease(Mutable);
          if (v10)
          {
            CFRelease(v10);
          }

          goto LABEL_18;
        }

        v26 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v45[5];
          *buf = 138412290;
          v55 = v27;
          v23 = v26;
          v24 = "Message Update v1 Query - unable to create row dictionary for messageId: %@, skipping!";
          v25 = 12;
          goto LABEL_17;
        }
      }

      else
      {
        v19 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v51[3];
          v21 = v45[5];
          v22 = v39[5];
          *buf = 134218498;
          v55 = v20;
          v56 = 2112;
          v57 = v21;
          v58 = 2112;
          v59 = v22;
          v23 = v19;
          v24 = "Message Update v1 query got invalid column data back: rowid %lld messageId:%@ threadOriginatorGUID:%@";
          v25 = 32;
LABEL_17:
          _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, v25);
        }
      }

LABEL_18:
      _Block_object_dispose(&v32, 8);
      _Block_object_dispose(&v38, 8);
      _Block_object_dispose(&v44, 8);
      _Block_object_dispose(&v50, 8);
      result = IMDSqlOperationHasRows(*(a1 + 40));
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  v30 = 0;
LABEL_23:
  *(*(*(a1 + 32) + 8) + 24) = v30;
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7BE47F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1B7BE4848(void *a1, __int128 *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v10 = *a2;
      v11 = *(a2 + 2);
      v5 = IMDStringFromSqlColumn(&v10);
      v6 = a1[6];
      goto LABEL_13;
    }

    if (v4 == 3)
    {
      v10 = *a2;
      v11 = *(a2 + 2);
      v5 = IMDStringFromSqlColumn(&v10);
      v6 = a1[7];
      goto LABEL_13;
    }
  }

  else
  {
    if (!v4)
    {
      v10 = *a2;
      v11 = *(a2 + 2);
      *(*(a1[4] + 8) + 24) = IMDInt64FromSqlColumn(&v10);
      goto LABEL_14;
    }

    if (v4 == 1)
    {
      v10 = *a2;
      v11 = *(a2 + 2);
      v5 = IMDStringFromSqlColumn(&v10);
      v6 = a1[5];
LABEL_13:
      *(*(v6 + 8) + 40) = v5;
      goto LABEL_14;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a2 + 4);
      LODWORD(v10) = 67109120;
      DWORD1(v10) = v8;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Unexpected column in Message Update v1 with index %d", &v10, 8u);
    }
  }

LABEL_14:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BE49FC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    v4 = result;
    result = xpc_array_get_count(result);
    if (result)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = sub_1B7BE4AC0;
      applier[3] = &unk_1E7CB8400;
      applier[4] = v5;
      result = xpc_array_apply(v4, applier);
      *(*(*(a1 + 32) + 8) + 24) = v5;
    }
  }

  return result;
}

uint64_t sub_1B7BE4AC0(uint64_t a1)
{
  v2 = IMCreateDictionaryFromXPCObjectWithStandardAllowlist();
  objc_msgSend_addObject_(*(a1 + 32), v3, v2);

  return 1;
}

uint64_t IMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKitWithLimit(int64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v14 = a1;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKitWithLimit called with limit %lld", buf, 0xCu);
      }
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7BE4D30;
    v8[3] = &unk_1E7CB7948;
    v8[4] = &v9;
    v8[5] = a1;
    IMDRunSqlOperation(v8);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BE55B0;
    v7[3] = &unk_1E7CB6838;
    v7[4] = &v9;
    __syncXPCIMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKit_IPCAction(v7, a1);
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Returned from DB call.", buf, 2u);
      }
    }
  }

  v4 = v10[3];
  _Block_object_dispose(&v9, 8);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL sub_1B7BE4D30(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BE4DFC;
  v5[3] = &unk_1E7CB75B0;
  v2 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7BE4E08;
  v4[3] = &unk_1E7CB7920;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT ROWID, guid, syndication_ranges, synced_syndication_ranges FROM message where syndication_ranges is not null AND (synced_syndication_ranges is null or syndication_ranges != synced_syndication_ranges) AND (service == 'iMessage' OR service == 'SMS') order by date limit ? ;", v5, v4);
}

BOOL sub_1B7BE4E08(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v39 = 0;
    v4 = MEMORY[0x1E69E9820];
    allocator = *MEMORY[0x1E695E480];
    *&v3 = 138412290;
    v37 = v3;
    while (1)
    {
      v59 = 0;
      v60 = &v59;
      v61 = 0x2020000000;
      v62 = 0;
      v53 = 0;
      v54 = &v53;
      v55 = 0x3052000000;
      v56 = sub_1B7AE1B30;
      v57 = sub_1B7AE25A0;
      v58 = 0;
      v47 = 0;
      v48 = &v47;
      v49 = 0x3052000000;
      v50 = sub_1B7AE1B30;
      v51 = sub_1B7AE25A0;
      v52 = 0;
      v41 = 0;
      v42 = &v41;
      v43 = 0x3052000000;
      v44 = sub_1B7AE1B30;
      v45 = sub_1B7AE25A0;
      v46 = 0;
      v5 = *(a1 + 40);
      v40[0] = v4;
      v40[1] = 3221225472;
      v40[2] = sub_1B7BE53FC;
      v40[3] = &unk_1E7CBD158;
      v40[4] = &v59;
      v40[5] = &v53;
      v40[6] = &v47;
      v40[7] = &v41;
      IMDSqlOperationIterateRow(v5, v40);
      if (v60[3] && objc_msgSend_length(v54[5], v6, v7) && objc_msgSend_length(v48[5], v8, v9))
      {
        Mutable = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v11 = CFNumberCreate(allocator, kCFNumberLongLongType, v60 + 3);
          CFDictionarySetValue(Mutable, @"ROWID", v11);
          CFDictionarySetValue(Mutable, @"MID", v54[5]);
          if (objc_msgSend_length(v48[5], v12, v13))
          {
            CFDictionarySetValue(Mutable, @"SR", v48[5]);
          }

          if (objc_msgSend_length(v42[5], v14, v15, v37))
          {
            CFDictionarySetValue(Mutable, @"SSR", v42[5]);
          }

          v16 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v60[3];
            v18 = v54[5];
            v19 = v48[5];
            v20 = v42[5];
            *buf = 134218754;
            v64 = v17;
            v65 = 2112;
            v66 = v18;
            v67 = 2112;
            v68 = v19;
            v69 = 2112;
            v70 = v20;
            _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_DEFAULT, "Found message %lld/%@ to update : originator GUID/part: %@/%@", buf, 0x2Au);
          }

          v21 = v39;
          if (!v39)
          {
            v21 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          }

          v39 = v21;
          CFArrayAppendValue(v21, Mutable);
          CFRelease(Mutable);
          if (v11)
          {
            CFRelease(v11);
          }

          v22 = v54[5];
          if (v22)
          {

            v54[5] = 0;
          }

          v23 = v48[5];
          if (v23)
          {

            v48[5] = 0;
          }

          v24 = v42[5];
          if (!v24)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v32 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = v54[5];
            *buf = v37;
            v64 = v33;
            _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_DEFAULT, "Message Update v1 Query - unable to create row dictionary for messageId: %@, skipping!", buf, 0xCu);
          }

          v34 = v54[5];
          if (v34)
          {

            v54[5] = 0;
          }

          v35 = v48[5];
          if (v35)
          {

            v48[5] = 0;
          }

          v24 = v42[5];
          if (!v24)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        v25 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v60[3];
          v27 = v54[5];
          v28 = v48[5];
          v29 = v42[5];
          *buf = 134218754;
          v64 = v26;
          v65 = 2112;
          v66 = v27;
          v67 = 2112;
          v68 = v28;
          v69 = 2112;
          v70 = v29;
          _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_DEFAULT, "Message Update T2 query got invalid column data back: rowid %lld messageId:%@ syndicationRanges:%@ syncedSyndicationRanges:%@", buf, 0x2Au);
        }

        v30 = v54[5];
        if (v30)
        {

          v54[5] = 0;
        }

        v31 = v48[5];
        if (v31)
        {

          v48[5] = 0;
        }

        v24 = v42[5];
        if (!v24)
        {
          goto LABEL_31;
        }
      }

      v42[5] = 0;
LABEL_31:
      _Block_object_dispose(&v41, 8);
      _Block_object_dispose(&v47, 8);
      _Block_object_dispose(&v53, 8);
      _Block_object_dispose(&v59, 8);
      result = IMDSqlOperationHasRows(*(a1 + 40));
      if (!result)
      {
        goto LABEL_42;
      }
    }
  }

  v39 = 0;
LABEL_42:
  *(*(*(a1 + 32) + 8) + 24) = v39;
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7BE53A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1B7BE53FC(void *a1, __int128 *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v10 = *a2;
      v11 = *(a2 + 2);
      v5 = IMDStringFromSqlColumn(&v10);
      v6 = a1[6];
      goto LABEL_13;
    }

    if (v4 == 3)
    {
      v10 = *a2;
      v11 = *(a2 + 2);
      v5 = IMDStringFromSqlColumn(&v10);
      v6 = a1[7];
      goto LABEL_13;
    }
  }

  else
  {
    if (!v4)
    {
      v10 = *a2;
      v11 = *(a2 + 2);
      *(*(a1[4] + 8) + 24) = IMDInt64FromSqlColumn(&v10);
      goto LABEL_14;
    }

    if (v4 == 1)
    {
      v10 = *a2;
      v11 = *(a2 + 2);
      v5 = IMDStringFromSqlColumn(&v10);
      v6 = a1[5];
LABEL_13:
      *(*(v6 + 8) + 40) = v5;
      goto LABEL_14;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a2 + 4);
      LODWORD(v10) = 67109120;
      DWORD1(v10) = v8;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Unexpected column in Message Update v1 with index %d", &v10, 8u);
    }
  }

LABEL_14:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BE55B0(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    v4 = result;
    result = xpc_array_get_count(result);
    if (result)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = sub_1B7BE5674;
      applier[3] = &unk_1E7CB8400;
      applier[4] = v5;
      result = xpc_array_apply(v4, applier);
      *(*(*(a1 + 32) + 8) + 24) = v5;
    }
  }

  return result;
}

uint64_t sub_1B7BE5674(uint64_t a1)
{
  v2 = IMCreateDictionaryFromXPCObjectWithStandardAllowlist();
  objc_msgSend_addObject_(*(a1 + 32), v3, v2);
  if (v2)
  {
  }

  return 1;
}

uint64_t IMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKitWithLimit(int64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v14 = a1;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKitWithLimit called with limit %lld", buf, 0xCu);
      }
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7BE58E8;
    v8[3] = &unk_1E7CB7948;
    v8[4] = &v9;
    v8[5] = a1;
    IMDRunSqlOperation(v8);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BE603C;
    v7[3] = &unk_1E7CB6838;
    v7[4] = &v9;
    __syncXPCIMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKit_IPCAction(v7, a1);
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Returned from DB call.", buf, 2u);
      }
    }
  }

  v4 = v10[3];
  _Block_object_dispose(&v9, 8);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL sub_1B7BE58E8(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BE59B4;
  v5[3] = &unk_1E7CB75B0;
  v2 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7BE59C0;
  v4[3] = &unk_1E7CB7920;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT ROWID, guid, service FROM message where ck_sync_state == 9 AND (service in ('iMessage', 'SMS', 'RCS', 'SatelliteSMS', 'iMessageLite')) order by date limit ? ;", v5, v4);
}

BOOL sub_1B7BE59C0(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v28 = 0;
    v3 = MEMORY[0x1E69E9820];
    allocator = *MEMORY[0x1E695E480];
    while (1)
    {
      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = 0;
      v36 = 0;
      v37 = &v36;
      v38 = 0x3052000000;
      v39 = sub_1B7AE1B30;
      v40 = sub_1B7AE25A0;
      v41 = 0;
      v30 = 0;
      v31 = &v30;
      v32 = 0x3052000000;
      v33 = sub_1B7AE1B30;
      v34 = sub_1B7AE25A0;
      v35 = 0;
      v4 = *(a1 + 40);
      v29[0] = v3;
      v29[1] = 3221225472;
      v29[2] = sub_1B7BE5EB8;
      v29[3] = &unk_1E7CB86F8;
      v29[4] = &v42;
      v29[5] = &v36;
      v29[6] = &v30;
      IMDSqlOperationIterateRow(v4, v29);
      if (v43[3] && objc_msgSend_length(v37[5], v5, v6) && objc_msgSend_length(v31[5], v7, v8))
      {
        Mutable = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v10 = CFNumberCreate(allocator, kCFNumberLongLongType, v43 + 3);
          CFDictionarySetValue(Mutable, @"ROWID", v10);
          CFDictionarySetValue(Mutable, @"MID", v37[5]);
          CFDictionarySetValue(Mutable, @"service", v31[5]);
          v11 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = v43[3];
            v13 = v37[5];
            v14 = v31[5];
            *buf = 134218498;
            v47 = v12;
            v48 = 2112;
            v49 = v13;
            v50 = 2112;
            v51 = v14;
            _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_DEFAULT, "Found message %lld/%@/%@ to update", buf, 0x20u);
          }

          v15 = v28;
          if (!v28)
          {
            v15 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          }

          v28 = v15;
          CFArrayAppendValue(v15, Mutable);
          v16 = v37[5];
          if (v16)
          {
            CFRelease(v16);
            v37[5] = 0;
          }

          CFRelease(Mutable);
          if (v10)
          {
            CFRelease(v10);
          }

          v17 = v31[5];
          if (!v17)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v23 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v37[5];
            *buf = 138412290;
            v47 = v24;
            _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_DEFAULT, "Message Update v3 Query - unable to create row dictionary for messageId: %@, skipping!", buf, 0xCu);
          }

          v25 = v37[5];
          if (v25)
          {
            CFRelease(v25);
            v37[5] = 0;
          }

          v17 = v31[5];
          if (!v17)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        v18 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v43[3];
          v20 = v37[5];
          v21 = v31[5];
          *buf = 134218498;
          v47 = v19;
          v48 = 2112;
          v49 = v20;
          v50 = 2112;
          v51 = v21;
          _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_DEFAULT, "Message Update v3 query got invalid column data back: rowid %lld messageId:%@ service:%@", buf, 0x20u);
        }

        v22 = v37[5];
        if (v22)
        {
          CFRelease(v22);
          v37[5] = 0;
        }

        v17 = v31[5];
        if (!v17)
        {
          goto LABEL_23;
        }
      }

      CFRelease(v17);
      v31[5] = 0;
LABEL_23:
      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(&v42, 8);
      result = IMDSqlOperationHasRows(*(a1 + 40));
      if (!result)
      {
        goto LABEL_32;
      }
    }
  }

  v28 = 0;
LABEL_32:
  *(*(*(a1 + 32) + 8) + 24) = v28;
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7BE5E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_1B7BE5EB8(void *a1, __int128 *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  if (v4 == 2)
  {
    v10 = *a2;
    v11 = *(a2 + 2);
    v5 = IMDStringFromSqlColumn(&v10);
    v6 = a1[6];
    goto LABEL_7;
  }

  if (v4 == 1)
  {
    v10 = *a2;
    v11 = *(a2 + 2);
    v5 = IMDStringFromSqlColumn(&v10);
    v6 = a1[5];
LABEL_7:
    *(*(v6 + 8) + 40) = v5;
    goto LABEL_11;
  }

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a2 + 4);
        LODWORD(v10) = 67109120;
        DWORD1(v10) = v8;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Unexpected column in Message Update v3 with index %d", &v10, 8u);
      }
    }
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 2);
    *(*(a1[4] + 8) + 24) = IMDInt64FromSqlColumn(&v10);
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BE603C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    v4 = result;
    result = xpc_array_get_count(result);
    if (result)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = sub_1B7BE6100;
      applier[3] = &unk_1E7CB8400;
      applier[4] = v5;
      result = xpc_array_apply(v4, applier);
      *(*(*(a1 + 32) + 8) + 24) = v5;
    }
  }

  return result;
}

uint64_t sub_1B7BE6100(uint64_t a1)
{
  v2 = IMCreateDictionaryFromXPCObjectWithStandardAllowlist();
  objc_msgSend_addObject_(*(a1 + 32), v3, v2);

  return 1;
}

void IMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v0 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync", v2, 2u);
      }
    }

    memset(v2, 0, sizeof(v2));
    IMDSqlOperationInitWithSharedCSDBDatabase(v2);
    IMDSqlOperationExecuteQuery(v2, @"update message set ck_sync_state=0,ck_record_id='',ck_record_change_tag='';update attachment set ck_sync_state=0, ck_server_change_token_blob='';update recoverable_message_part set ck_sync_state=0;", &unk_1F2FA1450);
    IMDSqlOperationExecuteQuery(v2, @"update message set synced_syndication_ranges=NULL where synced_syndication_ranges is not null;", &unk_1F2FA1470);
    IMDSqlOperationRelease(v2, 0);
  }

  else
  {
    __syncXPCIMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync(0);
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Returned from DB call after marking all msgs as dirty.", v2, 2u);
      }
    }
  }
}

void sub_1B7BE62B4()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync updated messages as dirty ", v1, 2u);
    }
  }
}

void sub_1B7BE6354()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDMarkMessageForT2UpdateSync updated messages with syndicationRanges as dirty for T2 update", v1, 2u);
    }
  }
}

uint64_t IMDMessageRecordCopyRecordIDsAndGUIDsToDeleteWithLimit(sqlite3_int64 a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = sub_1B7AE1B30;
  v20 = sub_1B7AE25A0;
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = a1;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyRecordIDsAndGUIDsToDeleteWithLimit is in IMDP with limit %lld", buf, 0xCu);
      }
    }

    v23 = 0u;
    memset(v24, 0, sizeof(v24));
    *buf = 0u;
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    _IMDSqlOperationBeginQuery(buf, @" select * from sync_deleted_messages where LENGTH(recordID) > 0 limit ?;");
    IMDSqlStatementBindInt64(v24, a1);
    while (IMDSqlOperationHasRows(buf))
    {
      Row = IMDSqlStatementGetRow(v24);
      if (Row)
      {
        objc_msgSend_addObject_(v17[5], v3, Row);
      }
    }

    IMDSqlOperationFinishQuery(buf);
    v15 = 0;
    IMDSqlOperationRelease(buf, &v15);
    if (v15)
    {
      v10 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFCA78(&v15);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = a1;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyRecordIDsAndGUIDsToDeleteWithLimit is in imagent with limit %lld", buf, 0xCu);
      }
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7BE6774;
    v14[3] = &unk_1E7CB6838;
    v14[4] = &v16;
    __syncXPCIMDMessageRecordCopyMessagesToDeleteFromCloudKit_IPCAction(v14, a1);
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = objc_msgSend_count(v17[5], v7, v8);
        *buf = 134217984;
        *&buf[4] = v9;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Returned from DB call after loading messages to delete messages count %lu", buf, 0xCu);
      }
    }
  }

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1B7BE66E8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7BE66A0);
  }

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(exc_buf);
}

xpc_object_t sub_1B7BE6774(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BE6808;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7BE6808(uint64_t a1, int a2, xpc_object_t xdict)
{
  v5 = MEMORY[0x1E696AEC0];
  string = xpc_dictionary_get_string(xdict, "guid");
  v8 = objc_msgSend_stringWithCString_encoding_(v5, v7, string, 4);
  v9 = MEMORY[0x1E696AEC0];
  v10 = xpc_dictionary_get_string(xdict, "recordID");
  v12 = objc_msgSend_stringWithCString_encoding_(v9, v11, v10, 4);
  v14 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], v13, v8, @"guid", v12, @"recordID", 0);
  objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v15, v14);
  return 1;
}

void IMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 138412546;
    *&v7[1] = a1;
    LOWORD(v7[3]) = 2112;
    *(&v7[3] + 2) = a2;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Request to add message with guid (%@) and recordID (%@) to delete table", v7, 0x16u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v8, 0, sizeof(v8));
    memset(v7, 0, sizeof(v7));
    IMDSqlOperationInitWithSharedCSDBDatabase(v7);
    _IMDSqlOperationBeginQuery(v7, @" INSERT INTO sync_deleted_messages (guid, recordID) VALUES (?, ?);");
    IMDSqlStatementBindTextFromCFString(v8, a1);
    IMDSqlStatementBindTextFromCFString(v8, a2);
    IMDSqlOperationFinishQuery(v7);
    IMDSqlOperationRelease(v7, 0);
  }

  else
  {
    __syncXPCIMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit_IPCAction(0, a1, a2);
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 138412546;
    *&v7[1] = a1;
    LOWORD(v7[3]) = 2112;
    *(&v7[3] + 2) = a2;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Finished adding message with guid (%@) and recordID (%@) to delete table", v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void IMDAddIncompatibleGroupPhotoChangedMessagesToDeleteFromCloudKit()
{
  v0 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v2[0]) = 0;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEFAULT, "Request to add incompatible group photo to delete table", v2, 2u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v2, 0, sizeof(v2));
    IMDSqlOperationInitWithSharedCSDBDatabase(v2);
    _IMDSqlOperationBeginQuery(v2, @" INSERT INTO sync_deleted_messages (guid, recordID) SELECT guid,ck_record_id FROM message WHERE item_type = 3 AND group_action_type != 0 AND length(ck_record_id) > 0;");
    IMDSqlOperationFinishQuery(v2);
    IMDSqlOperationRelease(v2, 0);
  }

  else
  {
    __syncXPCIMDAddIncompatibleGroupPhotoChangedMessagesToDeleteFromCloudKit_IPCAction(0);
  }

  v1 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v2[0]) = 0;
    _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_DEFAULT, "Finished adding incompatible group photo to delete table", v2, 2u);
  }
}

void IMDMessageRecordDeleteTombStonedMessagesWithRecordIDs(const __CFArray *a1)
{
  if (!a1 || !CFArrayGetCount(a1))
  {
    v4 = IMDatabaseLogHandle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v5 = "IMDMessageRecordDeleteTombStonedMessagesWithGUIDs has no GUIDs to delete.";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_7;
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    Count = CFArrayGetCount(a1);
    v3 = IMDCreateQueryRemoveMessagesFromTombStoneTableQuery(Count);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7BE6CC0;
    v9[3] = &unk_1E7CBD178;
    v9[4] = v3;
    v9[5] = a1;
    IMDRunSqlOperation(v9);
    CFRelease(v3);
    return;
  }

  __syncXPCIMDMessageRecordDeleteTombStonedMessagesForRecordIDs_IPCAction(0, a1);
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

BOOL sub_1B7BE6CC0(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BE6D40;
  v6[3] = &unk_1E7CB75B0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[4] = a2;
  v6[5] = v4;
  return _IMDSqlOperationRunQuery(a2, v3, v6, 0);
}

void IMDMessageRecordMarkMessageWithROWIDAsIgnoreButNeedingSyncWithCloudKit(sqlite3_int64 a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5[0]) = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Request to mark message with ROWID %lld as ignore but needing sync", v5, 0xCu);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v6, 0, sizeof(v6));
    memset(v5, 0, sizeof(v5));
    IMDSqlOperationInitWithSharedCSDBDatabase(v5);
    _IMDSqlOperationBeginQuery(v5, @"update message set ck_sync_state = 2 where rowid=?");
    IMDSqlStatementBindInt64(v6, a1);
    IMDSqlOperationFinishQuery(v5);
    IMDSqlOperationRelease(v5, 0);
  }

  else
  {
    __syncXPCIMDMessageRecordMarkMessageWithROWIDAsIgnoreButNeedingSyncWithCloudKit_IPCAction(0, a1);
  }

  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5[0]) = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_DEFAULT, "Finised marking message with ROWID %lld as ignore but needing sync", v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void IMDMessageRecordMarkMessageWithROWIDAsSyncedWithCloudKit(sqlite3_int64 a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5[0]) = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Request to mark message with ROWID %lld as clean", v5, 0xCu);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v6, 0, sizeof(v6));
    memset(v5, 0, sizeof(v5));
    IMDSqlOperationInitWithSharedCSDBDatabase(v5);
    _IMDSqlOperationBeginQuery(v5, @"update message set ck_sync_state = 1 where rowid=?");
    IMDSqlStatementBindInt64(v6, a1);
    IMDSqlOperationFinishQuery(v5);
    IMDSqlOperationRelease(v5, 0);
  }

  else
  {
    __syncXPCIMDMessageRecordMarkMessageWithROWIDAsSyncedWithCloudKit_IPCAction(0, a1);
  }

  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5[0]) = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_DEFAULT, "Finised marking message with ROWID %lld as clean", v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

sqlite3_int64 _IMDColumnTotalCount(uint64_t a1, const __CFString *a2)
{
  _IMDSqlOperationBeginQuery(a1, a2);
  v7 = 0uLL;
  v8 = 0;
  IMDSqlOperationColumnByIndex(a1, 0, &v7);
  v3 = 0;
  if (IMDSqlOperationHasRows(a1))
  {
    v5 = v7;
    v6 = v8;
    v3 = IMDInt64FromSqlColumn(&v5);
  }

  IMDSqlOperationFinishQuery(a1);
  return v3;
}

id sub_1B7BE7084(uint64_t a1, const __CFString *a2)
{
  _IMDSqlOperationBeginQuery(a1, a2);
  v20 = 0uLL;
  v21 = 0;
  IMDSqlOperationColumnByIndex(a1, 0, &v20);
  v18 = 0uLL;
  v19 = 0;
  IMDSqlOperationColumnByIndex(a1, 1, &v18);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = 0;
  if (IMDSqlOperationHasRows(a1))
  {
    v5 = 0;
    do
    {
      v16 = v20;
      v17 = v21;
      v6 = IMDInt64FromSqlColumn(&v16);
      v16 = v18;
      v17 = v19;
      v7 = IMDInt64FromSqlColumn(&v16);
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"Status %ld", v6);
      v11 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v10, v7);
      objc_msgSend_setObject_forKey_(v3, v12, v11, v9);
      v5 += v7;
    }

    while (IMDSqlOperationHasRows(a1));
  }

  v13 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v4, v5);
  objc_msgSend_setObject_forKey_(v3, v14, v13, @"total");
  IMDSqlOperationFinishQuery(a1);
  return v3;
}

void IMDMessageRecordCalculateLocalCloudKitStatisticsAsync(uint64_t a1, const char *a2, uint64_t a3)
{
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], a2, a3);
  v37[3] = v4;
  v32 = 0;
  v33 = &v32;
  v34 = 0xD010000000;
  v35 = "";
  memset(v36, 0, sizeof(v36));
  IMDSqlOperationInitWithSharedCSDBDatabase(v36);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = sub_1B7AE1B30;
  v30 = sub_1B7AE25A0;
  v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
  IMDSqlOperationBeginTransaction(v33 + 4);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = sub_1B7AE1B30;
  v24 = sub_1B7AE25A0;
  v7 = objc_msgSend_allKeys(&unk_1F2FCA3C8, v5, v6);
  v25 = objc_msgSend_mutableCopy(v7, v8, v9);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = sub_1B7BE749C;
  v18 = sub_1B7BE74AC;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7BE74B8;
  v13[3] = &unk_1E7CBD1F0;
  v13[6] = &v20;
  v13[7] = &v32;
  v13[8] = &v26;
  v13[9] = &v14;
  v13[4] = &unk_1F2FCA3C8;
  v13[5] = a1;
  v13[10] = v37;
  v12 = objc_msgSend_copy(v13, v10, v11);
  v15[5] = v12;
  (*(v12 + 16))();

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(v37, 8);
}

void sub_1B7BE7430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1B7BE74B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v190[19] = *MEMORY[0x1E69E9840];
  Object = objc_msgSend_firstObject(*(*(*(a1 + 48) + 8) + 40), a2, a3);
  objc_msgSend_removeObjectAtIndex_(*(*(*(a1 + 48) + 8) + 40), v5, 0);
  v7 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v6, Object);
  if (v7)
  {
    v10 = sub_1B7BE7084(*(*(a1 + 56) + 8) + 32, v7);
    if (v10)
    {
      objc_msgSend_setObject_forKey_(*(*(*(a1 + 64) + 8) + 40), v8, v10, Object);
    }
  }

  if (objc_msgSend_count(*(*(*(a1 + 48) + 8) + 40), v8, v9))
  {
    v11 = *(*(*(a1 + 48) + 8) + 40);
    v12 = *(*(*(a1 + 64) + 8) + 40);
    v13 = *(*(*(a1 + 72) + 8) + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7BE7D74;
    block[3] = &unk_1E7CBD1A0;
    v14 = *(a1 + 48);
    v15 = *(a1 + 64);
    block[4] = *(a1 + 72);
    block[5] = v14;
    block[6] = v15;
    IMDPersistencePerformBlock(block, 0, v16);
  }

  else
  {
    v177 = 0;
    IMDSqlOperationCommitOrRevertTransaction((*(*(a1 + 56) + 8) + 32));
    IMDSqlOperationRelease(*(*(a1 + 56) + 8) + 32, &v177);
    if (v177)
    {
      v20 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v23 = objc_msgSend_localizedDescription(v177, v21, v22);
        *buf = 138412290;
        v180 = *&v23;
        _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "IMDMessageRecordCalculateLocalCloudKitStatistics failed with error: %@", buf, 0xCu);
      }

      v24 = *(a1 + 40);
      if (v24)
      {
        (*(v24 + 16))(v24, 0);
      }
    }

    else
    {
      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v18, v19);
      v26 = v25;
      v173 = 0;
      v174 = &v173;
      v175 = 0x2020000000;
      v176 = 0;
      v169 = 0;
      v170 = &v169;
      v171 = 0x2020000000;
      v172 = 0;
      v27 = *(*(*(a1 + 64) + 8) + 40);
      v168[0] = MEMORY[0x1E69E9820];
      v168[1] = 3221225472;
      v168[2] = sub_1B7BE7DE8;
      v168[3] = &unk_1E7CBD1C8;
      v168[4] = &v173;
      v168[5] = &v169;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v27, v28, v168);
      v189[0] = @"chatStats";
      v190[0] = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v29, @"chat");
      v189[1] = @"msgStats";
      v190[1] = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v30, @"msg");
      v189[2] = @"attStats";
      v190[2] = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v31, @"att");
      v189[3] = *MEMORY[0x1E69A6E78];
      v32 = MEMORY[0x1E696AD98];
      v34 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v33, @"chat");
      v36 = objc_msgSend_objectForKeyedSubscript_(v34, v35, @"total");
      v39 = objc_msgSend_longLongValue(v36, v37, v38);
      v190[3] = objc_msgSend_numberWithLongLong_(v32, v40, v39);
      v189[4] = *MEMORY[0x1E69A6E58];
      v41 = MEMORY[0x1E696AD98];
      v43 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v42, @"chat");
      v45 = objc_msgSend_objectForKeyedSubscript_(v43, v44, @"Status 1");
      v48 = objc_msgSend_longLongValue(v45, v46, v47);
      v190[4] = objc_msgSend_numberWithLongLong_(v41, v49, v48);
      v189[5] = *MEMORY[0x1E69A6E28];
      v50 = MEMORY[0x1E696AD98];
      v52 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v51, @"delChat");
      v54 = objc_msgSend_objectForKeyedSubscript_(v52, v53, @"total");
      v57 = objc_msgSend_longLongValue(v54, v55, v56);
      v190[5] = objc_msgSend_numberWithLongLong_(v50, v58, v57);
      v189[6] = *MEMORY[0x1E69A6E88];
      v59 = MEMORY[0x1E696AD98];
      v61 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v60, @"msg");
      v63 = objc_msgSend_objectForKeyedSubscript_(v61, v62, @"total");
      v66 = objc_msgSend_longLongValue(v63, v64, v65);
      v190[6] = objc_msgSend_numberWithLongLong_(v59, v67, v66);
      v189[7] = *MEMORY[0x1E69A6E60];
      v68 = MEMORY[0x1E696AD98];
      v70 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v69, @"msg");
      v72 = objc_msgSend_objectForKeyedSubscript_(v70, v71, @"Status 1");
      v75 = objc_msgSend_longLongValue(v72, v73, v74);
      v190[7] = objc_msgSend_numberWithLongLong_(v68, v76, v75);
      v189[8] = *MEMORY[0x1E69A6E30];
      v77 = MEMORY[0x1E696AD98];
      v79 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v78, @"delMsg");
      v81 = objc_msgSend_objectForKeyedSubscript_(v79, v80, @"total");
      v84 = objc_msgSend_longLongValue(v81, v82, v83);
      v190[8] = objc_msgSend_numberWithLongLong_(v77, v85, v84);
      v189[9] = *MEMORY[0x1E69A6E70];
      v86 = MEMORY[0x1E696AD98];
      v88 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v87, @"att");
      v90 = objc_msgSend_objectForKeyedSubscript_(v88, v89, @"total");
      v93 = objc_msgSend_longLongValue(v90, v91, v92);
      v190[9] = objc_msgSend_numberWithLongLong_(v86, v94, v93);
      v189[10] = *MEMORY[0x1E69A6E50];
      v95 = MEMORY[0x1E696AD98];
      v97 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v96, @"att");
      v99 = objc_msgSend_objectForKeyedSubscript_(v97, v98, @"Status 1");
      v102 = objc_msgSend_longLongValue(v99, v100, v101);
      v190[10] = objc_msgSend_numberWithLongLong_(v95, v103, v102);
      v189[11] = *MEMORY[0x1E69A6E20];
      v104 = MEMORY[0x1E696AD98];
      v106 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v105, @"delAtt");
      v108 = objc_msgSend_objectForKeyedSubscript_(v106, v107, @"Status 1");
      v111 = objc_msgSend_longLongValue(v108, v109, v110);
      v190[11] = objc_msgSend_numberWithLongLong_(v104, v112, v111);
      v189[12] = *MEMORY[0x1E69A6E90];
      v113 = MEMORY[0x1E696AD98];
      v115 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v114, @"recovMsg");
      v117 = objc_msgSend_objectForKeyedSubscript_(v115, v116, @"total");
      v120 = objc_msgSend_longLongValue(v117, v118, v119);
      v190[12] = objc_msgSend_numberWithLongLong_(v113, v121, v120);
      v189[13] = *MEMORY[0x1E69A6E68];
      v122 = MEMORY[0x1E696AD98];
      v124 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v123, @"recovMsg");
      v126 = objc_msgSend_objectForKeyedSubscript_(v124, v125, @"Status 1");
      v129 = objc_msgSend_longLongValue(v126, v127, v128);
      v190[13] = objc_msgSend_numberWithLongLong_(v122, v130, v129);
      v189[14] = *MEMORY[0x1E69A6E38];
      v131 = MEMORY[0x1E696AD98];
      v133 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v132, @"delRecovMsg");
      v135 = objc_msgSend_objectForKeyedSubscript_(v133, v134, @"total");
      v138 = objc_msgSend_longLongValue(v135, v136, v137);
      v190[14] = objc_msgSend_numberWithLongLong_(v131, v139, v138);
      v189[15] = *MEMORY[0x1E69A6E40];
      v140 = MEMORY[0x1E696AD98];
      v142 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v141, @"updT1");
      v144 = objc_msgSend_objectForKeyedSubscript_(v142, v143, @"total");
      v147 = objc_msgSend_longLongValue(v144, v145, v146);
      v190[15] = objc_msgSend_numberWithLongLong_(v140, v148, v147);
      v189[16] = *MEMORY[0x1E69A6E48];
      v149 = MEMORY[0x1E696AD98];
      v151 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 64) + 8) + 40), v150, @"updT2");
      v153 = objc_msgSend_objectForKeyedSubscript_(v151, v152, @"total");
      v156 = objc_msgSend_longLongValue(v153, v154, v155);
      v190[16] = objc_msgSend_numberWithLongLong_(v149, v157, v156);
      v189[17] = *MEMORY[0x1E69A6E18];
      v190[17] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v158, v170[3]);
      v189[18] = *MEMORY[0x1E69A6E80];
      v190[18] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v159, v174[3]);
      v161 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v160, v190, v189, 19);
      v162 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v162, OS_LOG_TYPE_INFO))
      {
        v163 = v26 - *(*(*(a1 + 80) + 8) + 24);
        v164 = v170[3];
        v165 = v174[3];
        v166 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 134219010;
        v180 = v163;
        v181 = 2048;
        v182 = v164;
        v183 = 2048;
        v184 = v165;
        v185 = 2048;
        v186 = v165 - v164;
        v187 = 2112;
        v188 = v166;
        _os_log_impl(&dword_1B7AD5000, v162, OS_LOG_TYPE_INFO, "Calculated sync stats in %f seconds. All Records: %lld of %lld, %lld remaining. All Stats: %@", buf, 0x34u);
      }

      v167 = *(a1 + 40);
      if (v167)
      {
        (*(v167 + 16))(v167, v161);
      }

      _Block_object_dispose(&v169, 8);
      _Block_object_dispose(&v173, 8);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1B7BE7D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_1B7BE7D74(void *a1)
{
  (*(*(*(a1[4] + 8) + 40) + 16))();

  v2 = *(*(a1[4] + 8) + 40);
}

uint64_t sub_1B7BE7DE8(uint64_t a1, const char *a2, void *a3)
{
  v5 = objc_msgSend_objectForKey_(a3, a2, @"total");
  *(*(*(a1 + 32) + 8) + 24) += objc_msgSend_longLongValue(v5, v6, v7);
  v9 = objc_msgSend_objectForKey_(a3, v8, @"Status 1");
  result = objc_msgSend_longLongValue(v9, v10, v11);
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

id IMDMessageRecordCalculateLocalCloudKitStatistics()
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_1B7AE1B30;
  v14 = sub_1B7AE25A0;
  v15 = 0;
  if ((IMDIsRunningInDatabaseServerProcess() & 1) == 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7BE7FEC;
    v9[3] = &unk_1E7CB6838;
    v9[4] = &v10;
    __syncXPCIMDMessageRecordCalculateLocalCloudKitStatistics_IPCAction(v9);
  }

  v0 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v3 = objc_msgSend_description(v11[5], v1, v2);
    v5 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v3, v4, @"\n", &stru_1F2FA9728);
    *buf = 138412290;
    v17 = v5;
    _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDMessageRecordCalculateLocalCloudKitStatistics loaded stats: %@", buf, 0xCu);
  }

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1B7BE7FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7BE7FEC(uint64_t a1, xpc_object_t xdict)
{
  if (xpc_dictionary_get_value(xdict, "dictionary_result"))
  {
    *(*(*(a1 + 32) + 8) + 40) = IMCreateDictionaryFromXPCObjectWithStandardAllowlist();
  }

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Expected dictionary of cloudkit stats is nil 2", v4, 2u);
    }
  }
}

BOOL sub_1B7BE8088(uint64_t a1, const char *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"UPDATE %@ SET ck_sync_state = 0;", a2);
  if (!IMDSqlOperationExecuteQuery(a1, v6, 0))
  {
LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v32 = 0;
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"SELECT ROWID from %@ LIMIT %lld", a2, a3);
  RowsForQuery = _IMDSqlOperationGetRowsForQuery(v8, &v32);
  v11 = RowsForQuery;
  if (v32)
  {
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v32;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "_IMDMessageRecordSetSyncCountOnTable got error: %@", buf, 0xCu);
    }

    goto LABEL_6;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(RowsForQuery, v10, &v28, v33, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v29;
LABEL_10:
    v20 = 0;
    while (1)
    {
      if (*v29 != v19)
      {
        objc_enumerationMutation(v11);
      }

      v21 = MEMORY[0x1E696AEC0];
      v22 = objc_msgSend_objectForKey_(*(*(&v28 + 1) + 8 * v20), v17, @"ROWID");
      v25 = objc_msgSend_longLongValue(v22, v23, v24);
      v27 = objc_msgSend_stringWithFormat_(v21, v26, @"UPDATE %@ SET ck_sync_state = 1 WHERE ROWID = %lld;", a2, v25);
      v13 = IMDSqlOperationExecuteQuery(a1, v27, 0);
      if (!v13)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, &v28, v33, 16);
        if (v18)
        {
          goto LABEL_10;
        }

        break;
      }
    }
  }

  else
  {

    v13 = 1;
  }

LABEL_7:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void _IMDMessageRecordSetCloudKitSyncCounts(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v5 = objc_msgSend_description(a1, v3, v4);
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v5, v6, @"\n", &stru_1F2FA9728);
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Write cloudkit sync counts: %@", buf, 0xCu);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v8 = objc_msgSend_objectForKey_(a1, v7, *MEMORY[0x1E69A6E60]);
    v11 = objc_msgSend_longLongValue(v8, v9, v10);
    v13 = objc_msgSend_objectForKey_(a1, v12, *MEMORY[0x1E69A6E58]);
    v16 = objc_msgSend_longLongValue(v13, v14, v15);
    v18 = objc_msgSend_objectForKey_(a1, v17, *MEMORY[0x1E69A6E50]);
    v21 = objc_msgSend_longLongValue(v18, v19, v20);
    v22 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0]) = 134218496;
      *(buf + 4) = v11;
      WORD6(buf[0]) = 2048;
      *(buf + 14) = v16;
      WORD3(buf[1]) = 2048;
      *(&buf[1] + 1) = v21;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "setting new stats: messageSyncCount: %lld, chatSyncCount: %lld, attachmentCount: %lld", buf, 0x20u);
    }

    memset(buf, 0, sizeof(buf));
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    IMDSqlOperationBeginTransaction(buf);
    sub_1B7BE8088(buf, @"message", v11);
    sub_1B7BE8088(buf, @"chat", v16);
    sub_1B7BE8088(buf, @"attachment", v21);
    IMDSqlOperationCommitOrRevertTransaction(buf);
    v33 = 0;
    IMDSqlOperationRelease(buf, &v33);
    if (v33)
    {
      v23 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFCAF0(&v33, v23, v24);
      }
    }

    v25 = IMDMessageRecordCalculateLocalCloudKitStatistics();
    v26 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v29 = objc_msgSend_description(v25, v27, v28);
      v31 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v29, v30, @"\n", &stru_1F2FA9728);
      *v34 = 138412290;
      v35 = v31;
      _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "new stats: %@", v34, 0xCu);
    }
  }

  else
  {
    __syncXPCIMDMessageRecordSetCloudKitSyncCounts_IPCAction(0);
  }

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t IMDMessageRecordCopyMessagesWithReplyToGUIDs(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_length(a1, a2, a3))
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_1B7BE86A0;
      v8[3] = &unk_1E7CB6F30;
      v8[4] = a1;
      v8[5] = &v9;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message WHERE reply_to_guid = ?;", v8);
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = sub_1B7BE8708;
      v7[3] = &unk_1E7CB6838;
      v7[4] = &v9;
      __syncXPCIMDMessageRecordCopyMessagesWithReplyToGUIDs_IPCAction(v7, a1);
    }

    v5 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCB74();
    }

    return 0;
  }

  return v5;
}

__CFArray *sub_1B7BE86A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CSDBSqliteBindTextFromCFString();
  sub_1B7AEAEE4(v3, v4, v5);
  v6 = CSDBRecordStoreProcessStatement();
  result = sub_1B7BE37C4(v6);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7BE8708(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    v4 = result;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7BE87D4;
    applier[3] = &unk_1E7CB8278;
    applier[4] = Mutable;
    result = xpc_array_apply(v4, applier);
  }

  else
  {
    Mutable = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = Mutable;
  return result;
}

uint64_t sub_1B7BE87D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(*(a1 + 32), v4);
    CFRelease(v5);
  }

  return 1;
}

BOOL sub_1B7BE881C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = *MEMORY[0x1E69E9840];
  v12 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v17 = a2;
    v18 = 2112;
    v19 = a3;
    v20 = 2112;
    v21 = a4;
    v22 = 2048;
    v23 = a5;
    v24 = 2112;
    v25 = a6;
    _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "Performing threaded history query ref msg: %@ originator guid: %@ part: %@ limit: %llu results: %@", buf, 0x34u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7BE8964;
  v15[3] = &unk_1E7CBD238;
  v15[6] = a3;
  v15[7] = a4;
  v15[8] = a2;
  v15[9] = a5;
  v15[4] = a6;
  v15[5] = a1;
  result = IMDRunSqlOperation(v15);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1B7BE8964(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 40))
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCBB0(v4, v5);
    }
  }

  v6 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BE8A74;
  v10[3] = &unk_1E7CBD210;
  v10[4] = a2;
  v11 = *(a1 + 48);
  v7 = *(a1 + 72);
  v12 = *(a1 + 64);
  v13 = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BE8ADC;
  v9[3] = &unk_1E7CB6FD0;
  v9[4] = *(a1 + 32);
  v9[5] = a2;
  return _IMDSqlOperationRunQuery(a2, v6, v10, v9);
}

void sub_1B7BE8A74(uint64_t a1)
{
  IMDSqlStatementBindTextFromCFString(*(a1 + 32) + 32, *(a1 + 40));
  IMDSqlStatementBindTextFromCFString(*(a1 + 32) + 32, *(a1 + 48));
  IMDSqlStatementBindTextFromCFString(*(a1 + 32) + 32, *(a1 + 56));
  v2 = *(a1 + 64);
  v3 = *(a1 + 32) + 32;

  IMDSqlStatementBindInt(v3, v2);
}

BOOL sub_1B7BE8ADC(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7BE8B88;
      v5[3] = &unk_1E7CB6FA8;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

uint64_t sub_1B7BE8B88(uint64_t a1, __int128 *a2)
{
  v9 = *a2;
  v10 = *(a2 + 2);
  v3 = IMDInt64FromSqlColumn(&v9);
  v4 = *(a1 + 32);
  v6 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v5, v3);
  return objc_msgSend_addObject_(v4, v7, v6);
}

BOOL sub_1B7BE8BE8(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BE8CB4;
  v5[3] = &unk_1E7CB75B0;
  v2 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7BE8CC0;
  v4[3] = &unk_1E7CB6FD0;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT   m.ROWID FROM   message m INNER JOIN  chat_message_join cmj ON cmj.message_id = m.ROWID WHERE   m.associated_message_guid = ?  AND m.thread_originator_guid IS NULL", v5, v4);
}

BOOL sub_1B7BE8CC0(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7BE8D6C;
      v5[3] = &unk_1E7CB6FA8;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

uint64_t sub_1B7BE8D6C(uint64_t a1, __int128 *a2)
{
  v9 = *a2;
  v10 = *(a2 + 2);
  v3 = IMDInt64FromSqlColumn(&v9);
  v4 = *(a1 + 32);
  v6 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v5, v3);
  return objc_msgSend_addObject_(v4, v7, v6);
}

uint64_t sub_1B7BE8DCC(uint64_t a1)
{
  v2 = *(a1 + 40);
  CSDBSqliteBindInt();
  v3 = *(a1 + 48);
  CSDBSqliteBindInt();
  v4 = *(a1 + 56);
  v5 = CSDBSqliteBindInt();
  sub_1B7AEAEE4(v5, v6, v7);
  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7BE8E48(uint64_t a1)
{
  if (CSDBSqliteDatabaseConnectionForReading())
  {
    v2 = CSDBSqliteConnectionStatementForSQL();
    if (v2)
    {
      v3 = v2;
      if (*(v2 + 8))
      {
        v4 = *(a1 + 32);
        CSDBSqliteBindTextFromCFString();
        if (sqlite3_step(*(v3 + 8)) == 100)
        {
          v5 = *MEMORY[0x1E695E480];
          do
          {
            if (sqlite3_column_text(*(v3 + 8), 0))
            {
              v6 = sqlite3_column_text(*(v3 + 8), 0);
              v7 = CFStringCreateWithCString(v5, v6, 0x8000100u);
              if (v7)
              {
                v8 = v7;
                CFArrayAppendValue(*(a1 + 40), v7);
                CFRelease(v8);
              }
            }
          }

          while (sqlite3_step(*(v3 + 8)) == 100);
        }

        CSDBSqliteStatementReset();
      }
    }

    CSDBSqliteDatabaseReleaseSqliteConnection();
  }

  CFRelease(@"SELECT   m.guid FROM   message m INNER JOIN chat_message_join cm ON   m.ROWID = cm.message_id INNER JOIN chat c ON   c.ROWID = cm.chat_id WHERE   m.is_from_me = 0   AND m.is_played = 0   AND m.is_audio_message = 1   AND c.guid = ? ORDER BY m.ROWID ASC");
  CSDBRecordSaveStore();

  return CSDBRecordStoreInvalidateCachesWithStore();
}

void sub_1B7BE8F64(uint64_t a1, const char *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  v4 = IMDGenerateInClauseForCount(*(a1 + 48), a2);
  v5 = CFStringCreateWithFormat(v3, 0, @"SELECT   message_id FROM chat_recoverable_message_join WHERE message_id in (SELECT rowid FROM message INDEXED BY message_idx_isRead_isFromMe_itemType  WHERE (is_read == 0     AND is_finished == 1     AND is_from_me == 0     AND item_type == 0     AND is_system_message == 0)) AND chat_id %@", v4);
  if (v5)
  {
    v6 = v5;
    if (CSDBSqliteDatabaseConnectionForReading())
    {
      v7 = CSDBSqliteConnectionStatementForSQL();
      if (v7)
      {
        v9 = v7;
        if (*(v7 + 8))
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = *(a1 + 32);
          v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v8, &v23, v27, 16);
          if (v11)
          {
            v14 = v11;
            v15 = *v24;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v24 != v15)
                {
                  objc_enumerationMutation(v10);
                }

                objc_msgSend_integerValue(*(*(&v23 + 1) + 8 * i), v12, v13);
                CSDBSqliteBindInt64();
              }

              v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v23, v27, 16);
            }

            while (v14);
          }

          while (sqlite3_step(*(v9 + 8)) == 100)
          {
            v17 = sqlite3_column_int64(*(v9 + 8), 0);
            if (v17 != -1)
            {
              v19 = *(a1 + 40);
              v20 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v18, v17);
              objc_msgSend_addObject_(v19, v21, v20);
            }
          }

          CSDBSqliteStatementReset();
        }
      }

      CSDBSqliteDatabaseReleaseSqliteConnection();
    }

    CFRelease(v6);
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7BE9134(void *a1)
{
  v2 = a1[5];
  v3 = CSDBSqliteDatabaseStatementForWriting();
  if (v3 && *(v3 + 8))
  {
    v6 = a1[6];
    if (!v6)
    {
      v6 = objc_msgSend_date(MEMORY[0x1E695DF00], v4, v5);
    }

    objc_msgSend___im_nanosecondTimeInterval(v6, v4, v5);
    CSDBSqliteBindInt64();
    v7 = a1[7];
    CSDBSqliteBindInt64();
    CSDBSqliteStatementPerform();
    CSDBSqliteStatementReset();
    *(*(a1[4] + 8) + 24) = 1;
  }

  CSDBRecordSaveStore();

  return CSDBRecordStoreInvalidateCachesWithStore();
}

uint64_t sub_1B7BE91E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  *(a2 + 24) = a3;
  *(a2 + 28) = 2112;
  *(a2 + 30) = result;
  return result;
}

void sub_1B7BE91FC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x26u);
}

void *IMDCreateIMItemFromIMDMessageRecordRefCopyAttachmentsIfNeededWithAccountLookup(void *a1, void *a2, char a3, int a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v322 = 0;
  v323 = 0;
  v320 = 0;
  v321 = 0;
  v318 = 0;
  v319 = 0;
  v316 = 0;
  v317 = 0;
  v314 = 0;
  v315 = 0;
  v312 = 0;
  v313 = 0;
  v310 = 0;
  v311 = 0;
  v308 = 0;
  v309 = 0;
  v307 = 0;
  v305 = 0;
  v306 = 0;
  v303 = 0;
  v304 = 0;
  v302 = 0;
  v301 = 0;
  v300 = 0;
  v299 = 0;
  v298 = 0;
  v297 = 0;
  v296 = 0;
  v295 = 0;
  v294 = 0;
  v293 = 0;
  v292 = 0;
  v291 = 0;
  v290 = 0;
  v289 = 0;
  v288 = 0;
  v287 = 0;
  v286 = 0;
  v285 = 0;
  v284 = 0;
  v283 = 0;
  v282 = 0;
  v281 = 0;
  v280 = 0;
  v279 = 0;
  v278 = 0;
  v277 = 0;
  v276 = 0;
  v275 = 0;
  v274 = 0;
  v273 = 0;
  v272 = 0;
  v271 = 0;
  v270 = 0;
  v269 = 0;
  v268 = 0;
  IMDMessageRecordBulkCopy(a1, &v314, &v319, &v318, &v305, &v322, &v323, &v321, &v320, &v304, &v303, &v302, &v301, &v300, &v299, &v315, &v298, &v316, &v317, &v307 + 1, &v307, &v306, &v313, &v297, &v312, &v311, &v310, &v309, &v308, &v296, &v295, &v293, &v292, &v291, &v290, &v289, &v288, &v287, &v286, &v285, &v284, &v283, &v282, &v281, &v280, &v279, &v278, &v277, &v276, &v275, &v274, &v273, &v272, &v271, &v270, &v269, &v268);
  v254 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v10, v319);
  v253 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v11, v318);
  v244 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v12, v317);
  v252 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v13, v316);
  ThreadIdentifierWithComponents = 0;
  v17 = v281;
  if (v280)
  {
    v14 = v279;
    if (v279)
    {
      ThreadIdentifierWithComponents = IMMessageCreateThreadIdentifierWithComponents();
    }
  }

  if (v322)
  {
    v246 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v14, v15, v322);
  }

  else
  {
    v246 = 0;
  }

  if (v323)
  {
    v255 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v14, v15, v323);
  }

  else
  {
    v255 = 0;
  }

  if (v321)
  {
    v251 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v14, v15, v321);
  }

  else
  {
    v251 = 0;
  }

  if (v320)
  {
    v250 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v14, v15, v320);
  }

  else
  {
    v250 = 0;
  }

  if (v289)
  {
    v249 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v14, v15, v289);
  }

  else
  {
    v249 = 0;
  }

  if (v275)
  {
    v245 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v14, v15, v275);
  }

  else
  {
    v245 = 0;
  }

  if (v274)
  {
    v248 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v14, v15, v274);
    if (!a2)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v248 = 0;
    if (!a2)
    {
LABEL_29:
      if (v315 >= 1 && (v19 = IMDMessageRecordCopyHandle(a1, v14, v15)) != 0)
      {
        v20 = *MEMORY[0x1E695E480];
        v260 = IMDHandleRecordCopyID(*MEMORY[0x1E695E480], v19);
        v18 = IMDHandleRecordCopyUncanonicalizedID(v20, v19);
        v256 = IMDHandleRecordCopyCountry(v20, v19);
        CFRelease(v19);
      }

      else
      {
        v256 = 0;
        v18 = 0;
        v260 = 0;
      }

      goto LABEL_33;
    }
  }

  if (v314 == 3)
  {
    goto LABEL_29;
  }

  v260 = a2;
  v256 = 0;
  v18 = 0;
LABEL_33:
  if (v313 >= 1 && (v21 = IMDMessageRecordCopyOtherHandle(a1, v14, v15)) != 0)
  {
    v22 = *MEMORY[0x1E695E480];
    v259 = IMDHandleRecordCopyID(*MEMORY[0x1E695E480], v21);
    v258 = IMDHandleRecordCopyUncanonicalizedID(v22, v21);
    v257 = IMDHandleRecordCopyCountry(v22, v21);
    CFRelease(v21);
  }

  else
  {
    v257 = 0;
    v258 = 0;
    v259 = 0;
  }

  if (v317 == 1 && (v23 = objc_msgSend_componentsSeparatedByString_(v306, v14, @","), objc_msgSend_count(v23, v24, v25)))
  {
    v247 = objc_msgSend_objectAtIndex_(v23, v14, 0);
  }

  else
  {
    v247 = 0;
  }

  if (v306)
  {
    CFRelease(v306);
    v306 = 0;
  }

  if (a4 && (HIBYTE(v307) || (a3 & 1) == 0) && (v26 = IMDMessageRecordCopyAttachments(a1), (v27 = v26) != 0))
  {
    if (CFArrayGetCount(v26) < 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v29 = 0;
      v30 = *MEMORY[0x1E695E480];
      while (v29 < CFArrayGetCount(v27))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v27, v29);
        v33 = IMDAttachmentRecordCopyGUID(v30, ValueAtIndex);
        if (v33)
        {
          objc_msgSend_addObject_(v28, v32, v33);
          CFRelease(v33);
        }

        ++v29;
      }
    }

    CFRelease(v27);
  }

  else
  {
    v28 = 0;
  }

  v34 = v301;
  if (a5)
  {
    v35 = (*(a5 + 16))(a5, v299, v300, v301);
    if (v35)
    {
      v36 = v35;

      v300 = objc_msgSend_loginID(v36, v37, v38);
      v299 = objc_msgSend_accountID(v36, v39, v40);
    }
  }

  timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = 0;
  if (v314 <= 3)
  {
    v43 = v17;
    if (v314 > 1)
    {
      if (v314 == 2)
      {
        v79 = objc_alloc(MEMORY[0x1E69A80A0]);
        v42 = v246;
        timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSender_time_guid_type_(v79, v80, v260, v246, v305, 2);
        v44 = v252;
        if (v288)
        {
          v55 = objc_msgSend_dictionaryWithMessageSummaryInfoData_(MEMORY[0x1E695DF20], v81, v288);
        }

        else
        {
          v55 = 0;
        }

        objc_msgSend_setTitle_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v81, v297);
      }

      else
      {
        v44 = v252;
        v42 = v246;
        v52 = objc_alloc(MEMORY[0x1E69A8098]);
        timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSender_time_guid_type_(v52, v53, v260, v246, v305, 3);
        if (v288)
        {
          v55 = objc_msgSend_dictionaryWithMessageSummaryInfoData_(MEMORY[0x1E695DF20], v54, v288);
        }

        else
        {
          v55 = 0;
        }

        objc_msgSend_setActionType_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v54, v312);
      }

      objc_msgSend_setUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v122, v18);
      v46 = v256;
      objc_msgSend_setCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v138, v256);
      objc_msgSend_setOtherHandle_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v139, v259);
      objc_msgSend_setOtherUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v140, v258);
      objc_msgSend_setOtherCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v141, v257);
      objc_msgSend_setService_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v142, v34);
      objc_msgSend_setAccount_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v143, v300);
      objc_msgSend_setAccountID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v144, v299);
      objc_msgSend__setMessageID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v145, v319);
      objc_msgSend_setDestinationCallerID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v146, v283);
      objc_msgSend_setReplyToGUID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v147, v282);
      objc_msgSend_setSortID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v148, v43);
      v151 = objc_msgSend_unsignedIntValue(v44, v149, v150);
      objc_msgSend_setErrorCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v152, v151);
      v153 = v55;
      v45 = v18;
      objc_msgSend_setMessageSummaryInfo_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v154, v153);
    }

    else if (v314)
    {
      v44 = v252;
      v42 = v246;
      v45 = v18;
      v46 = v256;
      if (v314 == 1)
      {
        v48 = objc_alloc(MEMORY[0x1E69A81B8]);
        timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSender_time_guid_type_(v48, v49, v260, v246, v305, 1);
        if (v288)
        {
          v51 = objc_msgSend_dictionaryWithMessageSummaryInfoData_(MEMORY[0x1E695DF20], v50, v288);
        }

        else
        {
          v51 = 0;
        }

        objc_msgSend_setChangeType_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v50, v312);
        objc_msgSend_setUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v103, v18);
        v46 = v256;
        objc_msgSend_setCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v104, v256);
        objc_msgSend_setOtherHandle_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v105, v259);
        objc_msgSend_setOtherUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v106, v258);
        objc_msgSend_setOtherCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v107, v257);
        objc_msgSend_setService_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v108, v34);
        objc_msgSend_setAccount_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v109, v300);
        objc_msgSend_setAccountID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v110, v299);
        objc_msgSend__setMessageID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v111, v319);
        objc_msgSend_setDestinationCallerID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v112, v283);
        objc_msgSend_setReplyToGUID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v113, v282);
        objc_msgSend_setSortID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v114, v43);
        v117 = objc_msgSend_unsignedIntValue(v252, v115, v116);
        objc_msgSend_setErrorCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v118, v117);
        v119 = v51;
        v45 = v18;
        objc_msgSend_setMessageSummaryInfo_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v120, v119);
        objc_msgSend_setTimeRead_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v121, v255);
      }
    }

    else
    {
      v72 = objc_autoreleasePoolPush();
      v75 = objc_msgSend_unsignedLongLongValue(v302, v73, v74);
      v77 = 0;
      if ((v75 & 4) == 0 && v260)
      {
        v77 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x1E695DF20], v76, v260, *MEMORY[0x1E69A6310]);
      }

      v242 = v77;
      if (v288)
      {
        v78 = objc_msgSend_dictionaryWithMessageSummaryInfoData_(MEMORY[0x1E695DF20], v76, v288);
      }

      else
      {
        v78 = 0;
      }

      v239 = v78;
      v240 = v72;
      v241 = v17;
      v243 = ThreadIdentifierWithComponents;
      if (v296)
      {
        v235 = objc_alloc(MEMORY[0x1E69A7EF0]);
        v237 = v298;
        v233 = v303;
        v125 = objc_msgSend_unsignedLongLongValue(v302, v123, v124);
        v229 = v305;
        v231 = v125;
        v227 = objc_msgSend_longLongValue(v254, v126, v127);
        v128 = v300;
        v129 = v299;
        v130 = v309;
        v131 = v292;
        v132 = v291;
        v133 = v290;
        LODWORD(v219) = objc_msgSend_unsignedIntValue(v252, v134, v135);
        v218 = v133;
        v217 = v129;
        ThreadIdentifierWithComponents = v243;
        v42 = v246;
        timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSenderInfo_time_timeRead_timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID_(v235, v136, v242, v246, v255, v251, v250, v237, 0, v233, 0, v28, v231, v229, v227, v128, v217, v34, v260, v247, v18, v256, v130, v131, v132, v218, v249, v219, v296, v295, v293, v294, v271, 0, 0, v273, v239, v276, v243, v248, v270, v269, v268);
        v43 = v241;
      }

      else
      {
        v236 = objc_alloc(MEMORY[0x1E69A8138]);
        v238 = v298;
        v234 = v303;
        v157 = objc_msgSend_unsignedLongLongValue(v302, v155, v156);
        v230 = v305;
        v232 = v157;
        v160 = objc_msgSend_longLongValue(v254, v158, v159);
        v226 = v300;
        v228 = v160;
        v224 = v309;
        v225 = v299;
        v222 = v291;
        v223 = v292;
        v161 = v290;
        v162 = v273;
        v165 = objc_msgSend_unsignedIntValue(v252, v163, v164);
        v167 = objc_msgSend_rangesFromSerializedString_(MEMORY[0x1E69A8158], v166, v278);
        v169 = objc_msgSend_rangesFromSerializedString_(MEMORY[0x1E69A8158], v168, v277);
        LODWORD(v221) = v165;
        v220 = v162;
        ThreadIdentifierWithComponents = v243;
        timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSenderInfo_time_timeRead_timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_bizIntent_locale_biaReferenceID_errorType_threadIdentifier_syndicationRanges_syncedSyndicationRanges_partCount_dateEdited_dateRecovered_scheduleType_scheduleState_cloudKitChatID_(v236, v170, v242, v246, v255, v251, v250, v238, 0, v234, 0, v28, v232, v230, v228, v226, v225, v34, v260, v247, v18, v256, v224, v223, v222, v161, v249, 0, 0, v220, v221, v243, v167, v169, v276, v245, v248, v270, v269, v268);
        if (objc_msgSend_isReply(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v171, v172))
        {
          v262 = 0;
          v263 = &v262;
          v264 = 0x3052000000;
          v265 = sub_1B7AE1B40;
          v266 = sub_1B7AE25AC;
          v267 = 0;
          v174 = objc_msgSend_synchronousDatabase(IMDDatabase, v137, v173);
          v261[0] = MEMORY[0x1E69E9820];
          v261[1] = 3221225472;
          v261[2] = sub_1B7BEA514;
          v261[3] = &unk_1E7CBB6C8;
          v261[4] = &v262;
          objc_msgSend_fetchMessageRecordWithGUID_excludeRecoverableMessages_completionHandler_(v174, v175, v280, 1, v261);
          v176 = v263[5];
          if (v176)
          {
            v177 = IMDCreateIMItemFromIMDMessageRecordRefCopyAttachmentsIfNeededWithAccountLookup(v176, 0, 1, 1, a5);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_setThreadOriginator_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v178, v177);
            }
          }

          _Block_object_dispose(&v262, 8);
        }

        v43 = v17;
        if (v239)
        {
          objc_msgSend_setMessageSummaryInfo_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v137, v239);
        }

        v42 = v246;
      }

      objc_msgSend_setDestinationCallerID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v137, v283);
      objc_msgSend_setThreadIdentifier_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v179, ThreadIdentifierWithComponents);
      v182 = objc_msgSend_longLongValue(v253, v180, v181);
      objc_msgSend_setReplaceID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v183, v182);
      objc_msgSend_setFallbackHash_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v184, v272);
      v185 = IMDMessageRecordCopyThreadCountsByPart(a1);
      if (v185)
      {
        v188 = v185;
        objc_msgSend_setReplyCountsByPart_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v186, v185);
      }

      v44 = v252;
      v45 = v18;
      if (!objc_msgSend_count(v28, v186, v187) && objc_msgSend_length(v304, v189, v190) && (objc_msgSend_hasDataDetectorResults(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v189, v190) & 1) == 0)
      {
        objc_msgSend_setPlainBody_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v189, v304);
      }

      if ((objc_msgSend_flags(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v189, v190) & 4) == 0 && !objc_msgSend_sender(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v191, v192) || (objc_msgSend_isFromMe(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v191, v192) & 1) == 0 && !objc_msgSend_sender(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v193, v194) || (v195 = objc_msgSend_guid(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v193, v194), !objc_msgSend_length(v195, v196, v197)))
      {

        timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = 0;
      }

      objc_autoreleasePoolPop(v240);
      v46 = v256;
    }

    goto LABEL_118;
  }

  v42 = v246;
  v43 = v17;
  if (v314 <= 5)
  {
    v44 = v252;
    v45 = v18;
    if (v314 != 4)
    {
      v46 = v256;
      v56 = objc_alloc(MEMORY[0x1E69A8110]);
      timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSender_time_guid_type_(v56, v57, v260, v246, v305, 5);
      objc_msgSend_setActionType_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v58, v308);
      objc_msgSend_setUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v59, v18);
      objc_msgSend_setCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v60, v256);
      objc_msgSend_setOtherHandle_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v61, v259);
      objc_msgSend_setOtherUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v62, v258);
      objc_msgSend_setOtherCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v63, v257);
      objc_msgSend_setOriginalMessageGUID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v64, v298);
      objc_msgSend_setService_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v65, v34);
      objc_msgSend_setAccount_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v66, v300);
      objc_msgSend_setAccountID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v67, v299);
      objc_msgSend__setMessageID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v68, v319);
      objc_msgSend_setBalloonBundleID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v69, v292);
      objc_msgSend_setDestinationCallerID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v70, v283);
LABEL_86:
      objc_msgSend_setReplyToGUID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v71, v282);
      objc_msgSend_setSortID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v102, v43);
      goto LABEL_118;
    }

    v86 = objc_alloc(MEMORY[0x1E69A80E8]);
    timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSender_time_guid_type_(v86, v87, v260, v246, v305, 4);
    objc_msgSend_setStatus_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v88, v311);
    objc_msgSend_setDirection_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v89, v310);
    objc_msgSend_setUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v90, v18);
LABEL_85:
    v46 = v256;
    objc_msgSend_setCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v91, v256);
    objc_msgSend_setOtherHandle_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v94, v259);
    objc_msgSend_setOtherUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v95, v258);
    objc_msgSend_setOtherCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v96, v257);
    objc_msgSend_setService_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v97, v34);
    objc_msgSend_setAccount_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v98, v300);
    objc_msgSend_setAccountID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v99, v299);
    objc_msgSend__setMessageID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v100, v319);
    objc_msgSend_setDestinationCallerID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v101, v283);
    goto LABEL_86;
  }

  v44 = v252;
  v45 = v18;
  if (v314 == 8)
  {
    v82 = objc_alloc(MEMORY[0x1E69A80F0]);
    v84 = objc_msgSend_initWithSender_time_guid_type_(v82, v83, v260, v246, v305, 8);
LABEL_84:
    timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = v84;
    objc_msgSend_setUnformattedID_(v84, v85, v18);
    goto LABEL_85;
  }

  if (v314 == 7)
  {
    v92 = objc_alloc(MEMORY[0x1E69A8300]);
    v84 = objc_msgSend_initWithSender_time_guid_type_(v92, v93, v260, v246, v305, 7);
    goto LABEL_84;
  }

  v46 = v256;
  if (v314 == 6)
  {
    if (v288)
    {
      v47 = objc_msgSend_dictionaryWithMessageSummaryInfoData_(MEMORY[0x1E695DF20], v14, v288);
    }

    else
    {
      v47 = MEMORY[0x1E695E0F8];
    }

    v203 = objc_alloc(MEMORY[0x1E69A82E0]);
    timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID = objc_msgSend_initWithSender_time_guid_messageSummaryInfo_(v203, v204, v260, v246, v305, v47);
    objc_msgSend_setService_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v205, v34);
    objc_msgSend_setAccount_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v206, v300);
    objc_msgSend_setAccountID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v207, v299);
    objc_msgSend__setMessageID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v208, v319);
    v45 = v18;
    objc_msgSend_setUnformattedID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v209, v18);
    v46 = v256;
    objc_msgSend_setCountryCode_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v210, v256);
    objc_msgSend_setDestinationCallerID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v211, v283);
    v214 = objc_msgSend_unsignedLongLongValue(v302, v212, v213);
    objc_msgSend_setFlags_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v215, v214);
    goto LABEL_86;
  }

LABEL_118:
  objc_msgSend_setCloudKitSyncState_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v14, v287);
  objc_msgSend_setCloudKitRecordID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v198, v286);
  objc_msgSend_setCloudKitServerChangeTokenBlob_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v199, v285);
  objc_msgSend_setCloudKitRecordChangeTag_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v200, v284);
  objc_msgSend_setReplyToGUID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v201, v282);
  objc_msgSend_setSortID_(timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID, v202, v43);

  return timeDelivered_timePlayed_subject_body_bodyData_attributes_fileTransferGUIDs_flags_guid_messageID_account_accountID_service_handle_roomName_unformattedID_countryCode_expireState_balloonBundleID_payloadData_expressiveSendStyleID_timeExpressiveSendPlayed_errorType_associatedMessageGUID_associatedMessageType_associatedMessageRange_associatedMessageEmoji_bizIntent_locale_biaReferenceID_messageSummaryInfo_partCount_threadIdentifier_dateRecovered_scheduleType_scheduleState_cloudKitChatID;
}

id sub_1B7BEA514(uint64_t a1, void *a2)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

void __XPCServerIMDMessageStoreSave_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEA5BC;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v4, v5);
}

uint64_t sub_1B7BEA5BC(uint64_t a1)
{
  IMDSMSRecordStoreSave();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageStoreIsFull_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BEA684;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

uint64_t sub_1B7BEA684(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  IsFull = IMDSMSRecordIsFull();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (IsFull)
      {
        v4 = @"YES";
      }

      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Is database full? %@", &v8, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    xpc_dictionary_set_BOOL(v5, "BOOL_result", IsFull != 0);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageStoreSchemaVersion_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BEA818;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

uint64_t sub_1B7BEA818(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  SchemaVersion = IMDSMSRecordStoreGetSchemaVersion();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = SchemaVersion;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Database schema version? %u", v6, 8u);
    }
  }

  if (SchemaVersion)
  {
    xpc_dictionary_set_uint64(*(a1 + 32), "uint64_result", SchemaVersion);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageStoreSchema_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BEA994;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

uint64_t sub_1B7BEA994(uint64_t a1)
{
  Schema = IMDSMSRecordStoreGetSchema();
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Fetched Database schema", v9, 2u);
    }
  }

  if (Schema)
  {
    v6 = *(a1 + 32);
    v7 = objc_msgSend_UTF8String(Schema, v3, v4);
    xpc_dictionary_set_string(v6, "schema", v7);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCreate_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, __int128 a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, const char *a16, uint64_t a17, char a18, int a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25)
{
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1B7BEAB70;
  v27[3] = &unk_1E7CBD320;
  v41 = a6;
  v42 = a7;
  v27[4] = a5;
  v27[5] = a8;
  v28 = a9;
  v46 = a12;
  v29 = a10;
  v30 = a14;
  v47 = a15;
  v31 = a16;
  v32 = a17;
  v48 = a18;
  v43 = a11;
  v44 = a19;
  v33 = a20;
  v39 = a13;
  v40 = a22;
  v34 = a21;
  v35 = a23;
  v45 = a25;
  v36 = a24;
  v37 = a3;
  v38 = a4;
  v25 = sub_1B7ADEAB4(a3, a16, a15);
  IMDPersistencePerformBlock(v27, v25, v26);
}

void sub_1B7BEAB70(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCreate(0, *(a1 + 32), *(a1 + 168), *(a1 + 172), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 176), *(a1 + 188), *(a1 + 152), *(a1 + 72), *(a1 + 189), *(a1 + 80), *(a1 + 88), *(a1 + 190), *(a1 + 180), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 160), *(a1 + 120), *(a1 + 128), *(a1 + 184));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 48);
        *buf = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Created attachment record for guid: %@ with filename %@", buf, 0x16u);
      }
    }

    _IMDAttachmentRecordBulkCopyXPCDictionary(v2, *(a1 + 136), 1);
  }

  else if (v3)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Failed to create attachment record for guid: %@", buf, 0xCu);
    }
  }

  v9 = *(a1 + 144);
  if (v9)
  {
    (*(v9 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __XPCServerIMDAttachmentRecordRIDForGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEADE0;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEADE0(uint64_t a1)
{
  v2 = IMDAttachmentRecordRowIDForGUID(*(a1 + 32));
  xpc_dictionary_set_int64(*(a1 + 40), "rrid", v2);
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyAttachmentForGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BEAEC8;
  v8[3] = &unk_1E7CBD370;
  v9 = a6;
  v8[4] = a5;
  v8[5] = a3;
  v8[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

void sub_1B7BEAEC8(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID(*(a1 + 32), *(a1 + 56));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copied attachment record for guid: %@", &v10, 0xCu);
      }
    }

    _IMDAttachmentRecordBulkCopyXPCDictionary(v2, *(a1 + 40), 1);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "No attachment record found for guid: %@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __XPCServerIMDAttachmentRecordCopyStickerAttachmentForStickerCachePath_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEB0C8;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

void sub_1B7BEB0C8(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentCopyAttachmentWithStickerPath(*(a1 + 32));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copied attachment record for path: %@", &v10, 0xCu);
      }
    }

    _IMDAttachmentRecordBulkCopyXPCDictionary(v2, *(a1 + 40), 1);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "No attachment record found for path: %@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __XPCServerIMDAttachmentRecordDeleteAttachmentForGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BEB2C0;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a5;
  v7[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t sub_1B7BEB2C0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Delete attachment for guid: %@", &v6, 0xCu);
    }
  }

  IMDAttachmentRecordDeleteAttachmentForGUID(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentRecordDeleteAttachmentsOlderThanDays_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BEB41C;
  v7[3] = &unk_1E7CBD398;
  v7[4] = a4;
  v7[5] = a5;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t sub_1B7BEB41C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Deleting attachments older than %lld days", &v6, 0xCu);
    }
  }

  IMDAttachmentRecordDeleteAttachmentsOlderThanDays(*(a1 + 40));
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentRecordEstimateSpaceTakenByAttachmentsOlderThanDays_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEB57C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEB57C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 48);
      v7 = 134217984;
      v8 = v3;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Query space saved by deleting attachments older than %lld days", &v7, 0xCu);
    }
  }

  v4 = IMDAttachmentRecordEstimateSpaceTakenByAttachmentsOlderThanDays(*(a1 + 48));
  xpc_dictionary_set_uint64(*(a1 + 32), "bytes", v4);
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDDatabaseClean_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEB6EC;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v4, v5);
}

uint64_t sub_1B7BEB6EC(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Clean database", v4, 2u);
    }
  }

  IMDDatabaseClean();
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordFindLargestConversations_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEB80C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEB80C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Query largest conversations", v6, 2u);
    }
  }

  if (IMDAttachmentFindLargestConversations(*(a1 + 48)))
  {
    v3 = _CFXPCCreateXPCObjectFromCFObject();
    if (v3)
    {
      v4 = v3;
      xpc_dictionary_set_value(*(a1 + 32), "result", v3);
      xpc_release(v4);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordFindLargestAttachmentGUIDsWithLimitAndOffset_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BEB960;
  v9[3] = &unk_1E7CBD3E8;
  v9[8] = a6;
  v9[9] = a7;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  v9[7] = a5;
  v7 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v9, v7, v8);
}

uint64_t sub_1B7BEB960(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Query largest attachment GUIDs", v8, 2u);
    }
  }

  string = xpc_dictionary_get_string(*(a1 + 32), "attachmentClass");
  if (string)
  {
    string = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, string);
  }

  if (IMDAttachmentFindLargestAttachmentGUIDsForAttachmentClassWithLimitAndOffset(string, *(a1 + 56), *(a1 + 64), *(a1 + 72)))
  {
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    if (v5)
    {
      v6 = v5;
      xpc_dictionary_set_value(*(a1 + 40), "result", v5);
      xpc_release(v6);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordSpaceTakenByAttachmentClass_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEBAD8;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEBAD8(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Query space taken by attachment class", v6, 2u);
    }
  }

  if (IMDAttachmentSpaceTakenByAttachmentClass(*(a1 + 48)))
  {
    v3 = _CFXPCCreateXPCObjectFromCFObject();
    if (v3)
    {
      v4 = v3;
      xpc_dictionary_set_value(*(a1 + 32), "result", v3);
      xpc_release(v4);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordDoesAttachmentWithGUIDExist_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEBC28;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEBC28(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  DoesAttachmentWithGUIDExist = IMDAttachmentRecordDoesAttachmentWithGUIDExist(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      v5 = *(a1 + 32);
      if (DoesAttachmentWithGUIDExist)
      {
        v4 = @"YES";
      }

      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Does attachment exist for guid: %@? %@", &v9, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    xpc_dictionary_set_BOOL(v6, "BOOL_result", DoesAttachmentWithGUIDExist != 0);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentRecordDoesStickerPathHaveAttachments_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEBDD4;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEBDD4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  HaveAttachments = IMDAttachmentRecordDoesStickerPathHaveAttachments(*(a1 + 32));
  if (*(a1 + 40))
  {
    v3 = HaveAttachments;
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v8 = 138412546;
        v9 = v5;
        v10 = 2048;
        v11 = v3;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Attachment count at sticker: %@ is %lld", &v8, 0x16u);
      }
    }

    xpc_dictionary_set_int64(*(a1 + 40), "int64_result", v3);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentRecordCopyRecentFilenames_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEBF68;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEBF68(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCopyRecentFilenames(a1[6]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = a1[6];
      v20 = 134218240;
      v21 = v6;
      v22 = 2048;
      v23 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying filenames for most recent %lld attachments (Results: %ld)", &v20, 0x16u);
    }
  }

  v9 = xpc_array_create(0, 0);
  if (v9)
  {
    v11 = objc_msgSend_count(v2, v7, v8);
    if (v11)
    {
      v12 = 0;
      do
      {
        v13 = objc_msgSend_objectAtIndex_(v2, v10, v12);
        v15 = xpc_dictionary_create(0, 0, 0);
        if (v15)
        {
          v16 = objc_msgSend_UTF8String(v13, v10, v14);
          xpc_array_set_string(v9, 0xFFFFFFFFFFFFFFFFLL, v16);
          xpc_release(v15);
        }

        ++v12;
      }

      while (v11 != v12);
    }

    v17 = a1[4];
    if (v17)
    {
      xpc_dictionary_set_value(v17, "array_result", v9);
    }

    xpc_release(v9);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentRecordCopyAttachmentsForQueryWithLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEC1A8;
  block[3] = &unk_1E7CBD410;
  block[7] = a5;
  block[8] = a7;
  block[4] = a6;
  block[5] = a3;
  block[6] = a4;
  v7 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v7, v8);
}

uint64_t sub_1B7BEC1A8(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCopyAttachmentsForQueryWithLimit(*(a1 + 56), *(a1 + 32), *(a1 + 64));
  v3 = xpc_array_create(0, 0);
  if (v3 && v2)
  {
    Count = CFArrayGetCount(v2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 56);
        v6 = *(a1 + 64);
        v14 = 134218496;
        v15 = v6;
        v16 = 2048;
        v17 = v7;
        v18 = 2048;
        v19 = Count;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copying most recent %lld attachments for queryType: %lld (Results: %ld)", &v14, 0x20u);
      }
    }

    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
        v10 = xpc_dictionary_create(0, 0, 0);
        if (v10)
        {
          _IMDAttachmentRecordBulkCopyXPCDictionary(ValueAtIndex, v10, 1);
          xpc_array_set_value(v3, 0xFFFFFFFFFFFFFFFFLL, v10);
          xpc_release(v10);
        }
      }
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      xpc_dictionary_set_value(v11, "array_result", v3);
    }
  }

  if (v3)
  {
    xpc_release(v3);
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

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEC3FC;
  block[3] = &unk_1E7CBD438;
  block[5] = a5;
  block[6] = a6;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BEC3FC(void *a1)
{
  IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState(a1[5], a1[6]);
  result = a1[4];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordMarkAttachmentWithROWIDAsSyncedWithCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BEC4CC;
  v7[3] = &unk_1E7CBD398;
  v7[4] = a4;
  v7[5] = a5;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t sub_1B7BEC4CC(uint64_t a1)
{
  IMDAttachmentRecordMarkAttachmentWithROWIDAsSyncedWithCloudKit(*(a1 + 40));
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEC598;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v4, v5);
}

uint64_t sub_1B7BEC598(uint64_t a1)
{
  IMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDAttachmentResetAllAttachmentsInFailedCloudDownloadState_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEC660;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v4, v5);
}

uint64_t sub_1B7BEC660(uint64_t a1)
{
  IMDAttachmentResetAllAttachmentsInFailedCloudDownloadState();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyMessageForAttachmentGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEC72C;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

void sub_1B7BEC72C(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCopyMessageForAttachmentGUID(*(a1 + 32));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Getting message record for attachment GUID %@", &v10, 0xCu);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v2, *(a1 + 40), 1, 0);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to copy message for attachment GUID %@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __XPCServerIMDAttachmentRecordUpdateAttachmentGUIDWithGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BEC930;
  v8[3] = &unk_1E7CBD460;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BEC930(uint64_t *a1)
{
  updated = IMDAttachmentRecordUpdateAttachmentGUIDWithGUID(a1[4], a1[5]);
  v3 = a1[6];
  if (v3)
  {
    xpc_dictionary_set_BOOL(v3, "BOOL_result", updated != 0);
  }

  result = a1[7];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordGetPurgeableDiskSpace_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BECA20;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

uint64_t sub_1B7BECA20(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  PurgeableDiskSpace = IMDAttachmentRecordGetPurgeableDiskSpace();
  if (*(a1 + 32))
  {
    v3 = PurgeableDiskSpace;
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 134217984;
        v8 = v3;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Purgeable disk space is %lld", &v7, 0xCu);
      }
    }

    xpc_dictionary_set_int64(*(a1 + 32), "purgeableDiskSpace", v3);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentRecordGetNonSyncedAttachmentDiskSpace_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BECB9C;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

uint64_t sub_1B7BECB9C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  NonSyncedAttachmentDiskSpace = IMDAttachmentRecordGetNonSyncedAttachmentDiskSpace();
  if (*(a1 + 32))
  {
    v3 = NonSyncedAttachmentDiskSpace;
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = 134217984;
        v8 = v3;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Non synced attachment disk space is %lld", &v7, 0xCu);
      }
    }

    xpc_dictionary_set_int64(*(a1 + 32), "diskSpace", v3);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentRecordCopyAttachmentsToMetricForDiskSpace_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BECD1C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BECD1C(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCopyAttachmentsToMetricForDiskSpace(a1[6]);
  v3 = xpc_array_create(0, 0);
  if (v3 && v2)
  {
    Count = CFArrayGetCount(v2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = a1[6];
        v13 = 134218240;
        v14 = v6;
        v15 = 2048;
        v16 = Count;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copying oldest attachments to delete to free up: %lld bytes (Results: %ld)", &v13, 0x16u);
      }
    }

    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
        v9 = xpc_dictionary_create(0, 0, 0);
        if (v9)
        {
          _IMDAttachmentRecordBulkCopyXPCDictionary(ValueAtIndex, v9, 1);
          xpc_array_set_value(v3, 0xFFFFFFFFFFFFFFFFLL, v9);
          xpc_release(v9);
        }
      }
    }

    v10 = a1[4];
    if (v10)
    {
      xpc_dictionary_set_value(v10, "array_result", v3);
    }
  }

  if (v3)
  {
    xpc_release(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChats_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BECF60;
  v8[3] = &unk_1E7CBD488;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BECF60(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = IMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChatsTest(a1[6], a1[7]);
  v34 = objc_msgSend_allValues(v1, v2, v3);
  cf = v1;
  v6 = objc_msgSend_allKeys(v1, v4, v5);
  v7 = xpc_dictionary_create(0, 0, 0);
  if (objc_msgSend_count(v6, v8, v9))
  {
    v12 = 0;
    *&v11 = 134218496;
    v32 = v11;
    do
    {
      v13 = objc_msgSend_objectAtIndexedSubscript_(v6, v10, v12);
      v15 = objc_msgSend_valueForKey_(cf, v14, v13);
      v18 = xpc_array_create(0, 0);
      if (v18 != 0 && v34 != 0)
      {
        v19 = objc_msgSend_count(v15, v16, v17);
        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v22 = a1[6];
            v21 = a1[7];
            *buf = v32;
            v37 = v21;
            v38 = 2048;
            v39 = v22;
            v40 = 2048;
            v41 = v19;
            _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Copying most recent attachments %ld from %ld most recent chats: (Results: %ld)", buf, 0x20u);
          }
        }

        if (v19)
        {
          for (i = 0; i != v19; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
            v25 = xpc_dictionary_create(0, 0, 0);
            if (v25)
            {
              _IMDAttachmentRecordBulkCopyXPCDictionary(ValueAtIndex, v25, 1);
              xpc_array_set_value(v18, 0xFFFFFFFFFFFFFFFFLL, v25);
              xpc_release(v25);
            }
          }
        }
      }

      v26 = objc_msgSend_cStringUsingEncoding_(v13, v16, 1);
      xpc_dictionary_set_value(v7, v26, v18);
      if (v18)
      {
        xpc_release(v18);
      }

      ++v12;
    }

    while (objc_msgSend_count(v6, v27, v28, v32) > v12);
  }

  v29 = a1[4];
  if (v29)
  {
    xpc_dictionary_set_value(v29, "dictionary_result", v7);
  }

  if (v7)
  {
    xpc_release(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BED28C;
  v8[3] = &unk_1E7CBD4B0;
  v8[5] = a4;
  v8[6] = a5;
  v9 = a6;
  v8[4] = a3;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BED28C(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace(*(a1 + 48), *(a1 + 56));
  v3 = xpc_array_create(0, 0);
  if (v3 && v2)
  {
    Count = CFArrayGetCount(v2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 48);
        v7 = *(a1 + 56);
        v14 = 134218496;
        v15 = v6;
        v16 = 1024;
        v17 = v7;
        v18 = 2048;
        v19 = Count;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copying oldest attachments to delete to free up: %lld bytes starting offset: %d (Results: %ld)", &v14, 0x1Cu);
      }
    }

    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
        v10 = xpc_dictionary_create(0, 0, 0);
        if (v10)
        {
          _IMDAttachmentRecordBulkCopyXPCDictionary(ValueAtIndex, v10, 1);
          xpc_array_set_value(v3, 0xFFFFFFFFFFFFFFFFLL, v10);
          xpc_release(v10);
        }
      }
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      xpc_dictionary_set_value(v11, "array_result", v3);
    }
  }

  if (v3)
  {
    xpc_release(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentUpdateAttachmentFileSizeWithRowIDGreaterThanWatermark_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BED4E4;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BED4E4(uint64_t a1)
{
  v1 = a1;
  updated = IMDAttachmentUpdateAttachmentFileSizeWithRowIDGreaterThanWatermark(*(a1 + 48));
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v6 = v3;
    v27 = v1;
    if (objc_msgSend_count(updated, v4, v5))
    {
      v8 = 0;
      do
      {
        v9 = objc_msgSend_objectAtIndex_(updated, v7, v8);
        v10 = xpc_dictionary_create(0, 0, 0);
        if (v10)
        {
          v13 = v10;
          if (objc_msgSend_objectForKeyedSubscript_(v9, v11, @"rowID"))
          {
            v15 = objc_msgSend_objectForKeyedSubscript_(v9, v14, @"rowID");
            v23 = objc_msgSend_intValue(v15, v16, v17);
            v25 = 0;
            IMInsertIntsToXPCDictionary();
          }

          if (objc_msgSend_objectForKeyedSubscript_(v9, v14, @"filename", v23, v25))
          {
            v24 = objc_msgSend_objectForKeyedSubscript_(v9, v18, @"filename");
            v26 = 0;
            IMInsertNSStringsToXPCDictionary();
          }

          if (objc_msgSend_objectForKeyedSubscript_(v9, v18, @"guid", v24, v26))
          {
            v23 = objc_msgSend_objectForKeyedSubscript_(v9, v19, @"guid");
            v25 = 0;
            IMInsertNSStringsToXPCDictionary();
          }

          xpc_array_append_value(v6, v13);
          xpc_release(v13);
        }

        ++v8;
      }

      while (v8 < objc_msgSend_count(updated, v11, v12, v23, v25));
    }

    v1 = v27;
    if (updated)
    {
      v20 = *(v27 + 32);
      if (v20)
      {
        xpc_dictionary_set_value(v20, "array_result", v6);
      }
    }

    xpc_release(v6);
  }

  if (updated)
  {
    CFRelease(updated);
  }

  result = *(v1 + 40);
  if (result)
  {
    v22 = *(result + 16);

    return v22();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordDeleteAttachmentPreviewsOlderThan_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BED750;
  v7[3] = &unk_1E7CBD398;
  v7[4] = a4;
  v7[5] = a5;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t sub_1B7BED750(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  IMDAttachmentRecordDeleteAttachmentPreviewsOlderThan(*(a1 + 40));
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Deleting files older than %lld recent attachments", &v6, 0xCu);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BED8B0;
  v8[3] = &unk_1E7CBD460;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BED8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices(*(a1 + 32), *(a1 + 40), a3);
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138412802;
      v46 = v8;
      v47 = 2112;
      v48 = v7;
      v49 = 2048;
      v50 = objc_msgSend_count(v3, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copying filenames for attachments for chat identifiers: %@ on services: %@   (Results: %ld)", buf, 0x20u);
    }
  }

  v11 = xpc_array_create(0, 0);
  if (v11)
  {
    v13 = objc_msgSend_count(v3, v9, v10);
    if (v13)
    {
      v14 = 0;
      do
      {
        v15 = objc_msgSend_objectAtIndex_(v3, v12, v14);
        v16 = xpc_dictionary_create(0, 0, 0);
        if (v16)
        {
          v17 = objc_msgSend_objectForKeyedSubscript_(v15, v12, @"path");
          v20 = objc_msgSend_UTF8String(v17, v18, v19);
          v22 = objc_msgSend_objectForKey_(v15, v21, @"guid");
          v25 = objc_msgSend_UTF8String(v22, v23, v24);
          xpc_dictionary_set_string(v16, "guid", v25);
          if (v20)
          {
            xpc_dictionary_set_string(v16, "path", v20);
          }

          v27 = objc_msgSend_objectForKey_(v15, v26, @"isSticker");
          v30 = objc_msgSend_BOOLValue(v27, v28, v29);
          xpc_dictionary_set_BOOL(v16, "isSticker", v30);
          v32 = objc_msgSend_objectForKey_(v15, v31, @"createdDate");
          v35 = objc_msgSend_unsignedLongLongValue(v32, v33, v34);
          xpc_dictionary_set_int64(v16, "createdDate", v35);
          v37 = objc_msgSend_objectForKey_(v15, v36, @"transferState");
          v40 = objc_msgSend_unsignedLongLongValue(v37, v38, v39);
          xpc_dictionary_set_int64(v16, "transferState", v40);
          xpc_array_append_value(v11, v16);
          xpc_release(v16);
        }

        ++v14;
      }

      while (v13 != v14);
    }

    v41 = *(a1 + 48);
    if (v41)
    {
      xpc_dictionary_set_value(v41, "array_result", v11);
    }

    xpc_release(v11);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v43 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServices_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEDBE8;
  block[3] = &unk_1E7CBD4D8;
  block[4] = a5;
  block[5] = a6;
  block[7] = a4;
  block[8] = a7;
  block[6] = a3;
  v7 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v7, v8);
}

uint64_t sub_1B7BEDBE8(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServices(*(a1 + 32), *(a1 + 40), *(a1 + 64));
  v3 = xpc_array_create(0, 0);
  if (v3 && v2)
  {
    Count = CFArrayGetCount(v2);
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v7 = *(a1 + 40);
        v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v6, *(a1 + 64));
        v16 = 138412802;
        v17 = v8;
        v18 = 2112;
        v19 = v7;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copying purged attachments for chat %@ services %@ limit %@", &v16, 0x20u);
      }
    }

    if (Count)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
        v12 = xpc_dictionary_create(0, 0, 0);
        if (v12)
        {
          _IMDAttachmentRecordBulkCopyXPCDictionary(ValueAtIndex, v12, 1);
          xpc_array_set_value(v3, 0xFFFFFFFFFFFFFFFFLL, v12);
          xpc_release(v12);
        }
      }
    }

    v13 = *(a1 + 48);
    if (v13)
    {
      xpc_dictionary_set_value(v13, "array_result", v3);
    }
  }

  if (v3)
  {
    xpc_release(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDChatGetChatsThatContainRecipient_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEDE50;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEDE50(uint64_t a1)
{
  v1 = a1;
  v38 = *MEMORY[0x1E69E9840];
  ChatsThatContainRecipient = IMDChatGetChatsThatContainRecipient(*(a1 + 32));
  if (ChatsThatContainRecipient)
  {
    v3 = ChatsThatContainRecipient;
    v35 = v1;
    v4 = xpc_array_create(0, 0);
    if (v4)
    {
      v5 = v4;
      Count = CFArrayGetCount(v3);
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = *(v35 + 32);
          *buf = 138412290;
          v37 = v8;
          _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "All chats that have %@ as a participant.", buf, 0xCu);
        }
      }

      if (Count)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
          v12 = xpc_dictionary_create(0, 0, 0);
          if (v12)
          {
            v13 = objc_msgSend_valueForKey_(ValueAtIndex, v11, @"chatGUID");
            if (v13)
            {
              v16 = objc_msgSend_UTF8String(v13, v14, v15);
              xpc_dictionary_set_string(v12, "chatGUID", v16);
            }

            v17 = objc_msgSend_valueForKey_(ValueAtIndex, v14, @"displayName");
            if (v17)
            {
              v20 = objc_msgSend_UTF8String(v17, v18, v19);
              xpc_dictionary_set_string(v12, "displayName", v20);
            }

            v21 = xpc_array_create(0, 0);
            v23 = objc_msgSend_valueForKey_(ValueAtIndex, v22, @"handles");
            v26 = v23;
            if (v23 && objc_msgSend_count(v23, v24, v25))
            {
              v28 = 0;
              do
              {
                v29 = objc_msgSend_objectAtIndex_(v26, v27, v28);
                v32 = xpc_dictionary_create(0, 0, 0);
                if (v32)
                {
                  _IMDHandleRecordBulkCopyXPCDictionary(v29, v32, 1);
                  xpc_array_append_value(v21, v32);
                  xpc_release(v32);
                }

                ++v28;
              }

              while (v28 < objc_msgSend_count(v26, v30, v31));
            }

            if (v21)
            {
              xpc_dictionary_set_value(v12, "handles", v21);
              xpc_release(v21);
            }

            xpc_array_set_value(v5, 0xFFFFFFFFFFFFFFFFLL, v12);
            xpc_release(v12);
          }
        }
      }

      xpc_dictionary_set_value(*(v35 + 40), "array_result", v5);
      xpc_release(v5);
    }

    CFRelease(v3);
    v1 = v35;
  }

  result = *(v1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v34 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServices_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BEE194;
  v8[3] = &unk_1E7CBD460;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BEE194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = IMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServices(*(a1 + 32), *(a1 + 40), a3);
  v5 = xpc_array_create(0, 0);
  v6 = v5;
  if (v5 && v4)
  {
    if (CFArrayGetCount(v4) == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = *(a1 + 32);
          v9 = *(a1 + 40);
          v19 = 138412546;
          v20 = v8;
          v21 = 2112;
          v22 = v9;
          _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Copying purged attachments count for chat %@ services %@", &v19, 0x16u);
        }
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
      v13 = objc_msgSend_unsignedIntegerValue(ValueAtIndex, v11, v12);
      v14 = xpc_dictionary_create(0, 0, 0);
      v15 = v14;
      if (v14)
      {
        xpc_dictionary_set_int64(v14, "purgedCount", v13);
        xpc_array_set_value(v6, 0xFFFFFFFFFFFFFFFFLL, v15);
        xpc_release(v15);
      }

      v16 = *(a1 + 48);
      if (v16)
      {
        xpc_dictionary_set_value(v16, "array_result", v6);
      }
    }
  }

  else if (!v5)
  {
    goto LABEL_13;
  }

  xpc_release(v6);
LABEL_13:
  if (v4)
  {
    CFRelease(v4);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDAttachmentRecordCopyStickers_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEE3CC;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEE3CC(uint64_t a1)
{
  v1 = a1;
  v2 = IMDAttachmentRecordCopyAttachmentStickers(*(a1 + 48));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying filenames for sticker attachments", buf, 2u);
    }
  }

  v4 = xpc_array_create(0, 0);
  if (v4)
  {
    v7 = v4;
    v29 = v1;
    if (objc_msgSend_count(v2, v5, v6))
    {
      v9 = 0;
      v30 = v2;
      do
      {
        v10 = objc_msgSend_objectAtIndex_(v2, v8, v9);
        v12 = objc_msgSend_valueForKey_(v10, v11, @"sticker_user_info");
        v14 = objc_msgSend_valueForKey_(v10, v13, @"filename");
        v16 = objc_msgSend_valueForKey_(v10, v15, @"created_date");
        objc_msgSend_intValue(v16, v17, v18);
        v20 = objc_msgSend_valueForKey_(v10, v19, @"accessibility_string");
        if (v12 && v14)
        {
          v23 = v20;
          v24 = xpc_dictionary_create(0, 0, 0);
          IMInsertDatasToXPCDictionary();
          IMInsertNSStringsToXPCDictionary();
          v2 = v30;
          IMInsertIntsToXPCDictionary();
          v27 = v23;
          v28 = 0;
          IMInsertNSStringsToXPCDictionary();
          xpc_array_append_value(v7, v24);
          xpc_release(v24);
        }

        ++v9;
      }

      while (v9 < objc_msgSend_count(v2, v21, v22, v27, v28));
    }

    v1 = v29;
    v25 = *(v29 + 32);
    if (v25)
    {
      xpc_dictionary_set_value(v25, "array_result", v7);
    }

    xpc_release(v7);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(v1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordBulkUpdate_IPCAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, __int128 a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, unsigned __int8 a15, const char *a16, uint64_t a17, char a18, int a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEE718;
  block[3] = &unk_1E7CBD500;
  v40 = a6;
  v41 = a7;
  block[4] = a5;
  block[5] = a8;
  v28 = a9;
  v45 = a12;
  v29 = a10;
  v30 = a14;
  v46 = a15;
  v31 = a16;
  v32 = a17;
  v47 = a18;
  v42 = a11;
  v43 = a19;
  v33 = a20;
  v38 = a13;
  v39 = a22;
  v34 = a21;
  v35 = a23;
  v44 = a25;
  v36 = a24;
  v37 = a4;
  v25 = sub_1B7ADEAB4(a3, a16, a15);
  IMDPersistencePerformBlock(block, v25, v26);
}

uint64_t sub_1B7BEE718(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentRecordCopyAttachmentForGUID(*(a1 + 32));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        *buf = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Updating attachment for guid: %@", buf, 0xCu);
      }
    }

    IMDAttachmentRecordBulkUpdate(v2, *(a1 + 32), *(a1 + 160), *(a1 + 164), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 168), *(a1 + 180), *(a1 + 144), *(a1 + 72), *(a1 + 181), *(a1 + 80), *(a1 + 88), *(a1 + 182), *(a1 + 172), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 152), *(a1 + 120), *(a1 + 128), *(a1 + 176));
    CFRelease(v2);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v11 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "No attachment found to update for guid: %@", buf, 0xCu);
    }
  }

  result = *(a1 + 136);
  if (result)
  {
    result = (*(result + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDCNRecordIDAndHistoryTokenForAliases_IPAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEE974;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEE974(uint64_t a1)
{
  IMDCNRecordIDAndHistoryTokenForAliases(*(a1 + 32));
  if (*(a1 + 40))
  {
    IMInsertDictionariesToXPCDictionary();
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDCNRecordIDForAliases_IPAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEEA6C;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEEA6C(uint64_t a1)
{
  IMDCNRecordIDForAliases(*(a1 + 32));
  if (*(a1 + 40))
  {
    IMInsertDictionariesToXPCDictionary();
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDCNRecordIDAndHistoryTokenForAliases_asyncIPAction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EDBE5BE0 != -1)
  {
    sub_1B7CFCC60();
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BEEBD4;
  v10[3] = &unk_1E7CBD460;
  v10[4] = a5;
  v10[5] = a6;
  v10[6] = a3;
  v10[7] = a4;
  dispatch_async(qword_1EDBE5BD8, v10);
}

dispatch_queue_t sub_1B7BEEB98()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  result = dispatch_queue_create("_IMDPersistenceQueueForAsyncIPAction", v0);
  qword_1EDBE5BD8 = result;
  return result;
}

void sub_1B7BEEBD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7BEEC4C;
  v3[3] = &unk_1E7CBD528;
  v4 = *(a1 + 48);
  IMDCNRecordIDAndHistoryTokenForAliasesWithCompletionHandler(v2, v1, v3);
}

uint64_t sub_1B7BEEC4C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    IMInsertDictionariesToXPCDictionary();
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDIsFavoritedContact_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEED38;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEED38(uint64_t a1)
{
  v2 = IMDIsFavoritedContact(*(a1 + 32));
  v3 = *(a1 + 40);
  if (v3)
  {
    xpc_dictionary_set_BOOL(v3, "BOOL_result", v2);
  }

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDCNGivenNameAndBirthdayForHandleID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEEE20;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEEE20(uint64_t a1)
{
  IMDCNGivenNameAndBirthdayForHandleID(*(a1 + 32));
  if (*(a1 + 40))
  {
    IMInsertDictionariesToXPCDictionary();
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDCNFullNameAndOrganizationNameForHandleID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEEF18;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEEF18(uint64_t a1)
{
  IMDCNFullNameAndOrganizationNameForHandleID(*(a1 + 32));
  if (*(a1 + 40))
  {
    IMInsertDictionariesToXPCDictionary();
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDHandleRecordCreate_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEF01C;
  block[3] = &unk_1E7CBD550;
  block[4] = a5;
  block[5] = a6;
  block[6] = a7;
  block[7] = a8;
  block[8] = a9;
  block[9] = a3;
  block[10] = a4;
  v9 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v9, v10);
}

void sub_1B7BEF01C(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = IMDHandleRecordCreate(0, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 48);
        v12 = 138412546;
        v13 = v5;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Creating handle record for ID: %@  service: %@", &v12, 0x16u);
      }
    }

    _IMDHandleRecordBulkCopyXPCDictionary(v2, *(a1 + 72), 1);
  }

  else if (v3)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 48);
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Failed to create handle record for ID: %@  service: %@", &v12, 0x16u);
    }
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    (*(v10 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __XPCServerIMDMessageRecordUnassociateMessageWithGUIDFromAttachmentWithGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEF244;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BEF244(uint64_t *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      v4 = a1[5];
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Unassociating message guid: %@  from attachment: %@", &v7, 0x16u);
    }
  }

  IMDMessageRecordUnassociateMessageWithGUIDFromAttachmentWithGUID(a1[4], a1[5]);
  result = a1[6];
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEF3B0;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v6, v7);
}

uint64_t sub_1B7BEF3B0(uint64_t *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      v4 = a1[5];
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Associating message guid: %@  from attachment: %@", &v7, 0x16u);
    }
  }

  IMDMessageRecordAssociateMessageWithGUIDToAttachmentWithGUID(a1[4], a1[5]);
  result = a1[6];
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesForAssociatedGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEF51C;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEF51C(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessagesForAssociatedGUID(*(a1 + 32));
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
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying messages for associated guid: %@   (Results: %ld)", &v19, 0x16u);
    }
  }

  v9 = xpc_array_create(0, 0);
  if (v9)
  {
    if (objc_msgSend_count(v2, v7, v8))
    {
      v11 = 0;
      do
      {
        v12 = objc_msgSend_objectAtIndex_(v2, v10, v11);
        v15 = xpc_dictionary_create(0, 0, 0);
        if (v15)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v12, v15, 1, 0);
          xpc_array_append_value(v9, v15);
          xpc_release(v15);
        }

        ++v11;
      }

      while (v11 < objc_msgSend_count(v2, v13, v14));
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

void __XPCServerIMDMessageRecordCopyMessagesBetweenRowIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BEF760;
  v8[3] = &unk_1E7CBD488;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BEF760(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessagesBetweenRowIDs(a1[6], a1[7]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = a1[6];
      v6 = a1[7];
      v20 = 134218496;
      v21 = v7;
      v22 = 2048;
      v23 = v6;
      v24 = 2048;
      v25 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying messages between rowID: %lld  and rowID: %lld   (Results: %ld)", &v20, 0x20u);
    }
  }

  v10 = xpc_array_create(0, 0);
  if (v10)
  {
    v11 = objc_msgSend_count(v2, v8, v9);
    if (v11 >= 1)
    {
      v13 = 0;
      v14 = v11 & 0x7FFFFFFF;
      do
      {
        v15 = objc_msgSend_objectAtIndex_(v2, v12, v13);
        v16 = xpc_dictionary_create(0, 0, 0);
        if (v16)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v15, v16, 1, 0);
          xpc_array_append_value(v10, v16);
          xpc_release(v16);
        }

        ++v13;
      }

      while (v14 != v13);
    }

    v17 = a1[4];
    if (v17)
    {
      xpc_dictionary_set_value(v17, "array_result", v10);
    }

    xpc_release(v10);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyMessageForGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7AF1DDC;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

void __XPCServerIMDMessageRecordCopyMessageForRowID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEFA34;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

void sub_1B7BEFA34(uint64_t *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessageForRowID(a1[6]);
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = a1[6];
        v10 = 134218242;
        v11 = v5;
        v12 = 2112;
        v13 = v2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copy message for RowID: %lld   (Result: %@)", &v10, 0x16u);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v2, a1[4], 1, 0);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = a1[6];
      v10 = 134217984;
      v11 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to copy message for rowID: %lld", &v10, 0xCu);
    }
  }

  v8 = a1[5];
  if (v8)
  {
    (*(v8 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __XPCServerIMDMessageRecordCopyLastReceivedMessage_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BEFC40;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

void sub_1B7BEFC40(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ReceivedMessage = IMDMessageRecordCopyLastReceivedMessage();
  v3 = IMOSLoggingEnabled();
  if (ReceivedMessage)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = ReceivedMessage;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copy last received message (Result: %@)", &v8, 0xCu);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(ReceivedMessage, *(a1 + 32), 1, 0);
  }

  else if (v3)
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Failed to copy last received message", &v8, 2u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }

  if (ReceivedMessage)
  {
    CFRelease(ReceivedMessage);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __XPCServerIMDMessageRecordCopyLastReceivedMessageLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BEFE2C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BEFE2C(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  ReceivedMessageLimit = IMDMessageRecordCopyLastReceivedMessageLimit(a1[6]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = a1[6];
      v19 = 134218240;
      v20 = v6;
      v21 = 2048;
      v22 = objc_msgSend_count(ReceivedMessageLimit, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying last received messages with limit: %lld   (Results: %ld)", &v19, 0x16u);
    }
  }

  v9 = xpc_array_create(0, 0);
  if (v9)
  {
    v10 = objc_msgSend_count(ReceivedMessageLimit, v7, v8);
    if (v10 >= 1)
    {
      v12 = 0;
      v13 = v10 & 0x7FFFFFFF;
      do
      {
        v14 = objc_msgSend_objectAtIndex_(ReceivedMessageLimit, v11, v12);
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

    v16 = a1[4];
    if (v16)
    {
      xpc_dictionary_set_value(v16, "array_result", v9);
    }

    xpc_release(v9);
  }

  if (ReceivedMessageLimit)
  {
    CFRelease(ReceivedMessageLimit);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesForRowIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF0078;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF0078(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessagesForRowIDs(*(a1 + 32));
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
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying messages for rowIDs: %@   (Results: %ld)", &v19, 0x16u);
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

void __XPCServerIMDMessageRecordDeleteMessagesForGUIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BF02C0;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a5;
  v7[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t sub_1B7BF02C0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Delete messages for guids: %@", &v6, 0xCu);
    }
  }

  IMDMessageRecordDeleteMessagesForGUIDs(*(a1 + 32), 0);
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordDeleteMessagesOlderThanDays_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BF0420;
  v7[3] = &unk_1E7CBD398;
  v7[4] = a4;
  v7[5] = a5;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t sub_1B7BF0420(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Delete messages older than %lld days", &v6, 0xCu);
    }
  }

  IMDMessageRecordDeleteMessagesOlderThanDays(*(a1 + 40), 0);
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesWithRoomnameOnServiceLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF0588;
  block[3] = &unk_1E7CBD4D8;
  block[4] = a5;
  block[5] = a6;
  block[7] = a4;
  block[8] = a7;
  block[6] = a3;
  v7 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v7, v8);
}

uint64_t sub_1B7BF0588(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessagesWithRoomnameOnServiceLimit(*(a1 + 32), *(a1 + 40), *(a1 + 64));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v20 = 138412802;
      v21 = v7;
      v22 = 2112;
      v23 = v6;
      v24 = 2048;
      v25 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying messages for room name: %@ on service: %@   (Results: %ld)", &v20, 0x20u);
    }
  }

  v10 = xpc_array_create(0, 0);
  if (v10)
  {
    v11 = objc_msgSend_count(v2, v8, v9);
    if (v11 >= 1)
    {
      v13 = 0;
      v14 = v11 & 0x7FFFFFFF;
      do
      {
        v15 = objc_msgSend_objectAtIndex_(v2, v12, v13);
        v16 = xpc_dictionary_create(0, 0, 0);
        if (v16)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v15, v16, 1, 0);
          xpc_array_append_value(v10, v16);
          xpc_release(v16);
        }

        ++v13;
      }

      while (v14 != v13);
    }

    v17 = *(a1 + 48);
    if (v17)
    {
      xpc_dictionary_set_value(v17, "array_result", v10);
    }

    xpc_release(v10);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7BF07F4;
  v12[3] = &unk_1E7CBD5C8;
  v12[4] = a5;
  v12[5] = a6;
  v12[10] = a9;
  v12[11] = a10;
  v12[6] = a7;
  v12[7] = a8;
  v12[8] = a3;
  v12[9] = a4;
  v10 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v12, v10, v11);
}

uint64_t sub_1B7BF07F4(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  value = 1;
  v27 = 1;
  v2 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 80), *(a1 + 88), *(a1 + 56), &value, &v27);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = objc_msgSend_count(v2, v4, v5);
      v9 = *(a1 + 80);
      v10 = *(a1 + 88);
      *buf = 138413314;
      v30 = v7;
      v31 = 2112;
      v32 = v6;
      v33 = 2048;
      v34 = v8;
      v35 = 2048;
      v36 = v9;
      v37 = 2048;
      v38 = v10;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying limited number of messages for chat identifiers: %@ on services: %@  (Results: %ld) numberOfMessagesBefore: %lld numberOfMessagesAfter: %lld", buf, 0x34u);
    }
  }

  v11 = xpc_array_create(0, 0);
  v12 = xpc_BOOL_create(value);
  v15 = xpc_BOOL_create(v27);
  if (v11)
  {
    v16 = objc_msgSend_count(v2, v13, v14);
    if (v16 >= 1)
    {
      v18 = 0;
      v19 = v16 & 0x7FFFFFFF;
      do
      {
        v20 = objc_msgSend_objectAtIndex_(v2, v17, v18);
        v21 = xpc_dictionary_create(0, 0, 0);
        if (v21)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v20, v21, 1, 0);
          xpc_array_append_value(v11, v21);
          xpc_release(v21);
        }

        ++v18;
      }

      while (v19 != v18);
    }

    v22 = *(a1 + 64);
    if (v22)
    {
      xpc_dictionary_set_value(v22, "array_result", v11);
    }

    xpc_release(v11);
  }

  if (v12)
  {
    v23 = *(a1 + 64);
    if (v23)
    {
      xpc_dictionary_set_value(v23, "has_messages_before", v12);
    }

    xpc_release(v12);
  }

  if (v15)
  {
    v24 = *(a1 + 64);
    if (v24)
    {
      xpc_dictionary_set_value(v24, "has_messages_after", v15);
    }

    xpc_release(v15);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 72);
  if (result)
  {
    result = (*(result + 16))();
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyFrequentRepliesForChatIdentifiersOnServicesLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF0AEC;
  block[3] = &unk_1E7CBD4D8;
  block[4] = a5;
  block[5] = a6;
  block[7] = a4;
  block[8] = a7;
  block[6] = a3;
  v7 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v7, v8);
}

uint64_t sub_1B7BF0AEC(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyFrequentRepliesForChatIdentifiersOnServicesUpToLimit(*(a1 + 32), *(a1 + 40), *(a1 + 64));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v22 = 138412802;
      v23 = v7;
      v24 = 2112;
      v25 = v6;
      v26 = 2048;
      v27 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copying frequent replies for chat identifiers: %@ on services: %@   (Results: %ld)", &v22, 0x20u);
    }
  }

  v10 = xpc_array_create(0, 0);
  if (v10)
  {
    v11 = objc_msgSend_count(v2, v8, v9);
    if (v11 >= 1)
    {
      v13 = 0;
      v14 = v11 & 0x7FFFFFFF;
      do
      {
        v15 = objc_msgSend_objectAtIndex_(v2, v12, v13);
        v18 = objc_msgSend_UTF8String(v15, v16, v17);
        xpc_array_set_string(v10, 0xFFFFFFFFFFFFFFFFLL, v18);
        ++v13;
      }

      while (v14 != v13);
    }

    v19 = *(a1 + 48);
    if (v19)
    {
      xpc_dictionary_set_value(v19, "array_result", v10);
    }

    xpc_release(v10);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyGUIDsForMessagesWithChatIdentifiersOnServices_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF0D10;
  v8[3] = &unk_1E7CBD460;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BF0D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = IMDMessageRecordCopyGUIDsForMessagesWithChatIdentifiersOnServices(*(a1 + 32), *(a1 + 40), a3);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v24 = 138412802;
      v25 = v9;
      v26 = 2112;
      v27 = v8;
      v28 = 2048;
      v29 = objc_msgSend_count(v4, v6, v7);
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Copying guids for chat identifiers: %@ on services: %@   (Results: %ld)", &v24, 0x20u);
    }
  }

  v12 = xpc_array_create(0, 0);
  if (v12)
  {
    v13 = objc_msgSend_count(v4, v10, v11);
    if (v13 >= 1)
    {
      v15 = 0;
      v16 = v13 & 0x7FFFFFFF;
      do
      {
        v17 = objc_msgSend_objectAtIndex_(v4, v14, v15);
        v19 = xpc_dictionary_create(0, 0, 0);
        if (v19)
        {
          v20 = objc_msgSend_UTF8String(v17, v14, v18);
          xpc_array_set_string(v12, 0xFFFFFFFFFFFFFFFFLL, v20);
          xpc_release(v19);
        }

        ++v15;
      }

      while (v16 != v15);
    }

    v21 = *(a1 + 48);
    if (v21)
    {
      xpc_dictionary_set_value(v21, "array_result", v12);
    }

    xpc_release(v12);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDChatRemapChatsWithLastAddressedSIMIDToNewLastAddressedIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF0F60;
  v9[3] = &unk_1E7CBD460;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a7;
  v9[7] = a4;
  v7 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v9, v7, v8);
}

uint64_t sub_1B7BF0F60(uint64_t a1)
{
  IMDChatRemapChatsWithLastAddressedSIMIDToNewLastAddressedIDs(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatGetMessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF1034;
  v8[3] = &unk_1E7CBD460;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BF1034(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs = IMDChatGetMessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs(*(a1 + 32), *(a1 + 40));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138412802;
      v22 = v4;
      v23 = 2112;
      v24 = v5;
      v25 = 2112;
      v26 = MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Getting last addressed labelID and last message date for chat identifiers: %@ and last addressed labelIDs: %@   (Results: %@)", buf, 0x20u);
    }
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    if (objc_msgSend_count(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs, v6, v7))
    {
      if (objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs, v9, @"labelID"))
      {
        v19 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs, v10, @"labelID");
        v20 = 0;
        IMInsertNSStringsToXPCDictionary();
      }

      if (objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs, v10, @"date", v19, v20))
      {
        v12 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs, v11, @"date");
        v15 = objc_msgSend_integerValue(v12, v13, v14);
        xpc_dictionary_set_int64(v8, "date", v15);
      }
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      xpc_dictionary_set_value(v16, "dictionary_result", v8);
    }

    xpc_release(v8);
  }

  if (MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs)
  {
    CFRelease(MessageDateAndLastAddressedLabelIDFromChatIdentifiersAndLastAddressedLabelIDs);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDChatGetMessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF127C;
  v8[3] = &unk_1E7CBD460;
  v8[4] = a5;
  v8[5] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BF127C(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles = IMDChatGetMessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles(*(a1 + 32), *(a1 + 40));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      *buf = 138412802;
      v22 = v4;
      v23 = 2112;
      v24 = v5;
      v25 = 2112;
      v26 = MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Getting last addressed handle and last message date for chat identifiers: %@ and last addressed handles: %@   (Results: %@)", buf, 0x20u);
    }
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    if (objc_msgSend_count(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles, v6, v7))
    {
      if (objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles, v9, @"handle"))
      {
        v19 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles, v10, @"handle");
        v20 = 0;
        IMInsertNSStringsToXPCDictionary();
      }

      if (objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles, v10, @"date", v19, v20))
      {
        v12 = objc_msgSend_objectForKeyedSubscript_(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles, v11, @"date");
        v15 = objc_msgSend_integerValue(v12, v13, v14);
        xpc_dictionary_set_int64(v8, "date", v15);
      }
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      xpc_dictionary_set_value(v16, "dictionary_result", v8);
    }

    xpc_release(v8);
  }

  if (MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles)
  {
    CFRelease(MessageDateAndLastAddressedHandleFromChatIdentifiersAndLastAddressedHandles);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServices_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF14C4;
  v9[3] = &unk_1E7CBD460;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a7;
  v9[7] = a4;
  v7 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v9, v7, v8);
}

uint64_t sub_1B7BF14C4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v8 = 138412802;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Delete messages guids: %@ for chat identifiers: %@ on services: %@", &v8, 0x20u);
    }
  }

  IMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServices(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesWithHandleOnServiceLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF1644;
  block[3] = &unk_1E7CBD4D8;
  block[4] = a5;
  block[5] = a6;
  block[7] = a4;
  block[8] = a7;
  block[6] = a3;
  v7 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v7, v8);
}

uint64_t sub_1B7BF1644(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessagesWithHandleOnServiceLimit(*(a1 + 32), *(a1 + 40), *(a1 + 64));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = *(a1 + 64);
      v21 = 138413058;
      v22 = v7;
      v23 = 2112;
      v24 = v6;
      v25 = 2048;
      v26 = v8;
      v27 = 2048;
      v28 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy messages with for handle: %@ on service: %@  limit: %lld  (Results: %ld)", &v21, 0x2Au);
    }
  }

  v11 = xpc_array_create(0, 0);
  if (v11)
  {
    v12 = objc_msgSend_count(v2, v9, v10);
    if (v12 >= 1)
    {
      v14 = 0;
      v15 = v12 & 0x7FFFFFFF;
      do
      {
        v16 = objc_msgSend_objectAtIndex_(v2, v13, v14);
        v17 = xpc_dictionary_create(0, 0, 0);
        if (v17)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v16, v17, 1, 0);
          xpc_array_append_value(v11, v17);
          xpc_release(v17);
        }

        ++v14;
      }

      while (v15 != v14);
    }

    v18 = *(a1 + 48);
    if (v18)
    {
      xpc_dictionary_set_value(v18, "array_result", v11);
    }

    xpc_release(v11);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 56);
  if (result)
  {
    result = (*(result + 16))();
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyMessageMatchingBodyStringWithChatIdentifiersServicesSkippingGUIDs_IPCAction(double a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7BF18C8;
  v14[3] = &unk_1E7CBD5F0;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a8;
  v14[7] = a9;
  *&v14[12] = a1;
  v15 = a10;
  v14[8] = a11;
  v14[9] = a12;
  v14[10] = a4;
  v14[11] = a5;
  v12 = sub_1B7ADEAB4(a4, a3, a4);
  IMDPersistencePerformBlock(v14, v12, v13);
}

void sub_1B7BF18C8(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessageMatchingBodyStringWithChatIdentifiersServicesSkippingGUIDs(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 104), *(a1 + 64), *(a1 + 72), *(a1 + 96));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 64);
        v6 = *(a1 + 72);
        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        v16 = 138413314;
        v17 = v7;
        v18 = 2112;
        v19 = v5;
        v20 = 2112;
        v21 = v6;
        v22 = 2112;
        v23 = v8;
        v24 = 2112;
        v25 = v2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copy messages with handle: %@ matching body with for chatidentifiers: %@ on services: %@  skipping: %@  (Result: %@)", &v16, 0x34u);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v2, *(a1 + 80), 1, 0);
  }

  else if (v3)
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 64);
      v11 = *(a1 + 72);
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v16 = 138413058;
      v17 = v12;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "No message found with handle: %@ matching body with for chatidentifiers: %@ on services: %@  skipping: %@", &v16, 0x2Au);
    }
  }

  v14 = *(a1 + 88);
  if (v14)
  {
    (*(v14 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __XPCServerIMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDs_IPCAction(double a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF1B30;
  block[3] = &unk_1E7CBD578;
  block[4] = a6;
  block[5] = a7;
  block[6] = a8;
  block[7] = a9;
  *&block[10] = a1;
  block[8] = a4;
  block[9] = a5;
  v9 = sub_1B7ADEAB4(a4, a3, a4);
  IMDPersistencePerformBlock(block, v9, v10);
}

void sub_1B7BF1B30(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDs(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 80));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 40);
        v6 = *(a1 + 48);
        v12 = 138412802;
        v13 = v5;
        v14 = 2112;
        v15 = v6;
        v16 = 2112;
        v17 = v2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copy messages with handle: %@ matching body skipping services: %@  (Result: %@)", &v12, 0x20u);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v2, *(a1 + 64), 1, 0);
  }

  else if (v3)
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "No message found with handle: %@ matching body skipping services: %@", &v12, 0x16u);
    }
  }

  v10 = *(a1 + 72);
  if (v10)
  {
    (*(v10 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __XPCServerIMDMessageRecordCopyMessageMatchingBodyStringWithHandleMatchingServiceMatchingSOSSkippingGUID_IPCAction(double a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7BF1D70;
  v12[3] = &unk_1E7CBD618;
  v12[4] = a6;
  v12[5] = a7;
  v13 = a9;
  v12[6] = a8;
  v12[7] = a10;
  *&v12[10] = a1;
  v12[8] = a4;
  v12[9] = a5;
  v10 = sub_1B7ADEAB4(a4, a3, a4);
  IMDPersistencePerformBlock(v12, v10, v11);
}

void sub_1B7BF1D70(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessageMatchingBodyStringWithHandleMatchingServiceMatchingSOSSkippingGUID(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 56), *(a1 + 80));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 40);
        v6 = *(a1 + 48);
        v7 = *(a1 + 88);
        v13 = 138413058;
        v14 = v5;
        v15 = 2112;
        v16 = v6;
        v17 = 1024;
        v18 = v7;
        v19 = 2112;
        v20 = v2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copy SOS messages with handle: %@ matching body matching service: %@ matchingIsSOS: %d (Result: %@)", &v13, 0x26u);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v2, *(a1 + 64), 1, 0);
  }

  else if (v3)
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "No SOS duplicate message found with handle: %@ matching body matching service: %@", &v13, 0x16u);
    }
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    (*(v11 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __XPCServerIMDMessageRecordCopyMessageWithHandleOnServiceWithReplaceID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF1FB8;
  block[3] = &unk_1E7CBD4D8;
  block[4] = a5;
  block[5] = a6;
  block[7] = a4;
  block[8] = a7;
  block[6] = a3;
  v7 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v7, v8);
}

void sub_1B7BF1FB8(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessageWithHandleOnServiceWithReplaceID(*(a1 + 32), *(a1 + 40), *(a1 + 64));
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
        v7 = *(a1 + 64);
        v14 = 138413058;
        v15 = v5;
        v16 = 2112;
        v17 = v6;
        v18 = 2048;
        v19 = v7;
        v20 = 2112;
        v21 = v2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Copy message with handle: %@ on service: %@  replaceID: %lld (Result: %@)", &v14, 0x2Au);
      }
    }

    _IMDMessageRecordBulkCopyXPCDictionary(v2, *(a1 + 48), 1, 0);
  }

  else if (v3)
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = *(a1 + 64);
      v14 = 138412802;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2048;
      v19 = v11;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "No message found with handle: %@ on service: %@  replaceID: %lld", &v14, 0x20u);
    }
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __XPCServerIMDMessageRecordCopyUndeliveredOneToOneiMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF2204;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF2204(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyUndeliveredOneToOneiMessages(a1[6]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy undelivered 1-1 messages (Results: %ld)", &v18, 0xCu);
    }
  }

  v8 = xpc_array_create(0, 0);
  if (v8)
  {
    v9 = objc_msgSend_count(v2, v6, v7);
    if (v9 >= 1)
    {
      v11 = 0;
      v12 = v9 & 0x7FFFFFFF;
      do
      {
        v13 = objc_msgSend_objectAtIndex_(v2, v10, v11);
        v14 = xpc_dictionary_create(0, 0, 0);
        if (v14)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v13, v14, 1, 0);
          xpc_array_append_value(v8, v14);
          xpc_release(v14);
        }

        ++v11;
      }

      while (v12 != v11);
    }

    v15 = a1[4];
    if (v15)
    {
      xpc_dictionary_set_value(v15, "array_result", v8);
    }

    xpc_release(v8);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyExpiringOrExpiredMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF2440;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF2440(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyExpiringOrExpiredMessages(a1[6]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy expiring or expired messages (Results: %ld)", &v18, 0xCu);
    }
  }

  v8 = xpc_array_create(0, 0);
  if (v8)
  {
    v9 = objc_msgSend_count(v2, v6, v7);
    if (v9 >= 1)
    {
      v11 = 0;
      v12 = v9 & 0x7FFFFFFF;
      do
      {
        v13 = objc_msgSend_objectAtIndex_(v2, v10, v11);
        v14 = xpc_dictionary_create(0, 0, 0);
        if (v14)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v13, v14, 1, 0);
          xpc_array_append_value(v8, v14);
          xpc_release(v14);
        }

        ++v11;
      }

      while (v12 != v11);
    }

    v15 = a1[4];
    if (v15)
    {
      xpc_dictionary_set_value(v15, "array_result", v8);
    }

    xpc_release(v8);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyUnsentUnfailedMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF267C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF267C(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyUnsentUnfailedMessages(a1[6]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy unsent messages (Results: %ld)", &v18, 0xCu);
    }
  }

  v8 = xpc_array_create(0, 0);
  if (v8)
  {
    v9 = objc_msgSend_count(v2, v6, v7);
    if (v9 >= 1)
    {
      v11 = 0;
      v12 = v9 & 0x7FFFFFFF;
      do
      {
        v13 = objc_msgSend_objectAtIndex_(v2, v10, v11);
        v14 = xpc_dictionary_create(0, 0, 0);
        if (v14)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v13, v14, 1, 0);
          xpc_array_append_value(v8, v14);
          xpc_release(v14);
        }

        ++v11;
      }

      while (v12 != v11);
    }

    v15 = a1[4];
    if (v15)
    {
      xpc_dictionary_set_value(v15, "array_result", v8);
    }

    xpc_release(v8);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyMessageActionItemsForOriginalMessageGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF28B8;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF28B8(uint64_t *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessageActionItemsForOriginalMessageGUID(a1[4]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy message action items for original message guid (Results: %ld)", &v18, 0xCu);
    }
  }

  v8 = xpc_array_create(0, 0);
  if (v8)
  {
    v9 = objc_msgSend_count(v2, v6, v7);
    if (v9 >= 1)
    {
      v11 = 0;
      v12 = v9 & 0x7FFFFFFF;
      do
      {
        v13 = objc_msgSend_objectAtIndex_(v2, v10, v11);
        v14 = xpc_dictionary_create(0, 0, 0);
        if (v14)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v13, v14, 1, 0);
          xpc_array_append_value(v8, v14);
          xpc_release(v14);
        }

        ++v11;
      }

      while (v12 != v11);
    }

    v15 = a1[5];
    if (v15)
    {
      xpc_dictionary_set_value(v15, "array_result", v8);
    }

    xpc_release(v8);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[6];
  if (result)
  {
    result = (*(result + 16))();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCountAllUnreadMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BF2AF0;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

uint64_t sub_1B7BF2AF0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCountAllUnreadMessages();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = v2;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unread message count: %lld", &v6, 0xCu);
    }
  }

  if (v2)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "sint64_result", v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCountAllUnreadMessagesForChatGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF2C70;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF2C70(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCountAllUnreadMessagesForChatGUID(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v7 = 134218242;
      v8 = v2;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unread message count: %lld  for chat GUID: %@", &v7, 0x16u);
    }
  }

  if (v2)
  {
    xpc_dictionary_set_int64(*(a1 + 40), "sint64_result", v2);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCountAllUnreadMessagesForChatRowID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF2E04;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF2E04(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCountAllUnreadMessagesForChatRowID(*(a1 + 48));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 48);
      v7 = 134218240;
      v8 = v2;
      v9 = 2048;
      v10 = v4;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unread message count: %lld  for chat rowID: %lld", &v7, 0x16u);
    }
  }

  if (v2)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "sint64_result", v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordLastFailedMessageRowID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BF2F94;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

uint64_t sub_1B7BF2F94(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  FailedMessageRowID = IMDMessageRecordLastFailedMessageRowID();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = FailedMessageRowID;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Last failed message rowID: %lld", &v6, 0xCu);
    }
  }

  if (FailedMessageRowID)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "sint64_result", FailedMessageRowID);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordLastSyncedMessageRowID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BF3110;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

uint64_t sub_1B7BF3110(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  SyncedMessageRowID = IMDMessageRecordLastSyncedMessageRowID();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = SyncedMessageRowID;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Last synced message rowID: %lld", &v6, 0xCu);
    }
  }

  if (SyncedMessageRowID)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "sint64_result", SyncedMessageRowID);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordLastFailedMessageDate_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BF328C;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

uint64_t sub_1B7BF328C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  FailedMessageDate = IMDMessageRecordLastFailedMessageDate();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = FailedMessageDate;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Last failed message rowID: %lld", &v6, 0xCu);
    }
  }

  if (FailedMessageDate)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "sint64_result", FailedMessageDate);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordGetMostRecentMessageDate_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BF3408;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

uint64_t sub_1B7BF3408(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  MostRecentMessageDate = IMDMessageRecordGetMostRecentMessageDate();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = MostRecentMessageDate;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Most recent message date: %lld", &v6, 0xCu);
    }
  }

  if (MostRecentMessageDate)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "sint64_result", MostRecentMessageDate);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordGetIndentifierForMessageWithGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF3588;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF3588(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  IndentifierForMessageWithGUID = IMDMessageRecordGetIndentifierForMessageWithGUID(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v7 = 138412546;
      v8 = v4;
      v9 = 2048;
      v10 = IndentifierForMessageWithGUID;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Get identifier for message guid: %@  result: %lld", &v7, 0x16u);
    }
  }

  if (IndentifierForMessageWithGUID)
  {
    xpc_dictionary_set_int64(*(a1 + 40), "sint64_result", IndentifierForMessageWithGUID);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordMaxMessageIDFromChatMessageJoin_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BF3718;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

uint64_t sub_1B7BF3718(uint64_t a1)
{
  v2 = IMDMessageRecordMaxMessageIDFromChatMessageJoin();
  if (v2)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "sint64_result", v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __XPCServerIMDMessageRecordGetMessagesSequenceNumber_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BF37F8;
  v6[3] = &unk_1E7CBD2F8;
  v6[4] = a3;
  v6[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v6, v4, v5);
}

uint64_t sub_1B7BF37F8(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  MessagesSequenceNumber = IMDMessageRecordGetMessagesSequenceNumber();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 134217984;
      v7 = MessagesSequenceNumber;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Get messages sequence number: %lld", &v6, 0xCu);
    }
  }

  if (MessagesSequenceNumber)
  {
    xpc_dictionary_set_int64(*(a1 + 32), "int64_result", MessagesSequenceNumber);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordMarkMessageGUIDAsDeduplicated_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BF3974;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a5;
  v7[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v7, v5, v6);
}

uint64_t sub_1B7BF3974(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    IMDMessageRecordMarkMessageGUIDAsDeduplicated(v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __XPCServerIMDMessageRecordMarkFailedAllUnsentUnfailedMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF3A44;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v4, v5);
}

uint64_t sub_1B7BF3A44(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Mark all unsent messages failed", v4, 2u);
    }
  }

  IMDMessageRecordMarkFailedAllUnsentUnfailedMessages();
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordDeleteOrphanedMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF3B60;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v4, v5);
}

uint64_t sub_1B7BF3B60(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Delete orphaned messages", v4, 2u);
    }
  }

  IMDMessageRecordDeleteOrphanedMessages();
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyAndMarkAsReadMessagesPriorToGuidMatchingChatGUIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7AF5A14;
  v10[3] = &unk_1E7CBD640;
  v10[4] = a5;
  v10[5] = a6;
  v11 = a8;
  v10[6] = a7;
  v10[7] = a3;
  v10[8] = a4;
  v8 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v10, v8, v9);
}

void __XPCServerIMDMessageRecordCopyAllUnplayedMessageGUIDsForChatGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF3D04;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(block, v5, v6);
}

uint64_t sub_1B7BF3D04(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyAllUnplayedMessageGUIDsForChatGUID(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v21 = 138412546;
      v22 = v6;
      v23 = 2048;
      v24 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy unplayed audio messages guids, for chat guid: %@  (Results: %ld)", &v21, 0x16u);
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
        v16 = xpc_dictionary_create(0, 0, 0);
        if (v16)
        {
          v17 = objc_msgSend_UTF8String(v14, v11, v15);
          xpc_array_set_string(v9, 0xFFFFFFFFFFFFFFFFLL, v17);
          xpc_release(v16);
        }

        ++v12;
      }

      while (v13 != v12);
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      xpc_dictionary_set_value(v18, "array_result", v9);
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

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyUnreadIncomingMessagesWithChatIdentifiersOnServicesToLimitFallbackGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BF3F48;
  v10[3] = &unk_1E7CBD668;
  v10[4] = a5;
  v10[5] = a6;
  v10[6] = a8;
  v10[7] = a3;
  v10[8] = a4;
  v10[9] = a7;
  v8 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v10, v8, v9);
}

uint64_t sub_1B7BF3F48(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyUnreadIncomingMessagesWithChatIdentifiersOnServicesToLimitFallbackGUID(*(a1 + 32), *(a1 + 40), *(a1 + 72), *(a1 + 48));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = *(a1 + 72);
      v9 = *(a1 + 48);
      v22 = 138413314;
      v23 = v7;
      v24 = 2112;
      v25 = v6;
      v26 = 2048;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      v30 = 2048;
      v31 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy unread incoming messages chatIdentifiers:%@   services: %@   limit: %lld  fallbackGUID:%@ (Result: %lu)", &v22, 0x34u);
    }
  }

  v12 = xpc_array_create(0, 0);
  if (v12)
  {
    v13 = objc_msgSend_count(v2, v10, v11);
    if (v13 >= 1)
    {
      v15 = 0;
      v16 = v13 & 0x7FFFFFFF;
      do
      {
        v17 = objc_msgSend_objectAtIndex_(v2, v14, v15);
        v18 = xpc_dictionary_create(0, 0, 0);
        if (v18)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v17, v18, 1, 0);
          xpc_array_append_value(v12, v18);
          xpc_release(v18);
        }

        ++v15;
      }

      while (v16 != v15);
    }

    v19 = *(a1 + 56);
    if (v19)
    {
      xpc_dictionary_set_value(v19, "array_result", v12);
    }

    xpc_release(v12);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 64);
  if (result)
  {
    result = (*(result + 16))();
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesDataDetectionResults_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF41C0;
  v8[3] = &unk_1E7CBD488;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3);
  IMDPersistencePerformBlock(v8, v6, v7);
}

uint64_t sub_1B7BF41C0(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyMessagesDataDetectionResults(a1[6], a1[7]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = a1[6];
      v7 = a1[7];
      v20 = 134218496;
      v21 = v7;
      v22 = 2048;
      v23 = v6;
      v24 = 2048;
      v25 = objc_msgSend_count(v2, v4, v5);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Copy DD result messages up to rowID: %lld  limit: %lld   (Result: %lu)", &v20, 0x20u);
    }
  }

  v10 = xpc_array_create(0, 0);
  if (v10)
  {
    v11 = objc_msgSend_count(v2, v8, v9);
    if (v11 >= 1)
    {
      v13 = 0;
      v14 = v11 & 0x7FFFFFFF;
      do
      {
        v15 = objc_msgSend_objectAtIndex_(v2, v12, v13);
        v16 = xpc_dictionary_create(0, 0, 0);
        if (v16)
        {
          _IMDMessageRecordBulkCopyXPCDictionary(v15, v16, 1, 0);
          xpc_array_append_value(v10, v16);
          xpc_release(v16);
        }

        ++v13;
      }

      while (v14 != v13);
    }

    v17 = a1[4];
    if (v17)
    {
      xpc_dictionary_set_value(v17, "array_result", v10);
    }

    xpc_release(v10);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[5];
  if (result)
  {
    result = (*(result + 16))();
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}