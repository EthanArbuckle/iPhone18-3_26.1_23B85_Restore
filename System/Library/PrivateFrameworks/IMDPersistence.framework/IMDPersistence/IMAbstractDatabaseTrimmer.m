@interface IMAbstractDatabaseTrimmer
- (BOOL)copyDatabase:(id)a3;
- (BOOL)trimDatabaseWithOperation:(IMDSqlOperation *)a3;
- (void)flushWALWithOperation:(IMDSqlOperation *)a3;
@end

@implementation IMAbstractDatabaseTrimmer

- (BOOL)trimDatabaseWithOperation:(IMDSqlOperation *)a3
{
  objc_msgSend_performMessageSelectionWithOperation_(self, a2, a3);
  if (a3->var5)
  {
    return 0;
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_msgSend_allColumns(IMDChatQueryStrings, v4, v5);
  v9 = objc_msgSend_stringWithFormat_(v6, v8, @"INSERT INTO chat SELECT %@ from source.chat WHERE ROWID IN (SELECT chat_id from source.chat_message_join where message_id IN (SELECT ROWID from message));", v7);
  _IMDSqlOperationBeginQuery(a3, v9);
  IMDSqlOperationFinishQuery(a3);
  if (a3->var5)
  {
    return 0;
  }

  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"INSERT OR IGNORE INTO message SELECT %@ from source.message WHERE ROWID IN (SELECT MAX(m.ROWID) FROM source.message m, chat c, source.chat_message_join cm WHERE m.ROWID=cm.message_id AND c.ROWID=cm.chat_id AND m.group_action_type IN (1,3) GROUP BY c.ROWID);", @"ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id");
  _IMDSqlOperationBeginQuery(a3, v11);
  IMDSqlOperationFinishQuery(a3);
  if (a3->var5)
  {
    return 0;
  }

  _IMDSqlOperationBeginQuery(a3, @"INSERT INTO chat_message_join SELECT * from source.chat_message_join WHERE message_id IN (SELECT ROWID from message);");
  IMDSqlOperationFinishQuery(a3);
  if (a3->var5)
  {
    return 0;
  }

  _IMDSqlOperationBeginQuery(a3, @"INSERT INTO handle SELECT * from source.handle WHERE ROWID IN (SELECT handle_id from source.chat_handle_join where chat_id IN (select ROWID from chat));");
  IMDSqlOperationFinishQuery(a3);
  if (a3->var5)
  {
    return 0;
  }

  _IMDSqlOperationBeginQuery(a3, @"INSERT INTO chat_handle_join SELECT * from source.chat_handle_join WHERE chat_id IN (SELECT ROWID from chat);");
  IMDSqlOperationFinishQuery(a3);
  if (a3->var5)
  {
    return 0;
  }

  _IMDSqlOperationBeginQuery(a3, @"INSERT OR IGNORE INTO handle SELECT * from source.handle WHERE ROWID IN (SELECT handle_id from message);");
  IMDSqlOperationFinishQuery(a3);
  if (a3->var5)
  {
    return 0;
  }

  _IMDSqlOperationBeginQuery(a3, @"INSERT OR IGNORE INTO handle SELECT * from source.handle WHERE ROWID IN (SELECT other_handle from message);");
  IMDSqlOperationFinishQuery(a3);
  if (a3->var5)
  {
    return 0;
  }

  v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"INSERT INTO attachment SELECT %@ from source.attachment WHERE ROWID IN (SELECT attachment_id from source.message_attachment_join where message_id IN (select ROWID from message));", @"ROWID, guid, created_date, start_date, filename, uti, mime_type, transfer_state, is_outgoing, user_info, transfer_name, total_bytes, is_sticker, sticker_user_info, attribution_info, hide_attachment, ck_sync_state, ck_server_change_token_blob, ck_record_id, original_guid, is_commsafety_sensitive, emoji_image_content_identifier, emoji_image_short_description, preview_generation_state ");
  _IMDSqlOperationBeginQuery(a3, v13);
  IMDSqlOperationFinishQuery(a3);
  if (a3->var5)
  {
    return 0;
  }

  _IMDSqlOperationBeginQuery(a3, @"UPDATE attachment SET transfer_state = 0; ");
  IMDSqlOperationFinishQuery(a3);
  if (a3->var5)
  {
    return 0;
  }

  _IMDSqlOperationBeginQuery(a3, @"INSERT INTO message_attachment_join SELECT * from source.message_attachment_join WHERE attachment_id IN (SELECT ROWID from attachment);");
  IMDSqlOperationFinishQuery(a3);
  if (a3->var5)
  {
    return 0;
  }

  _IMDSqlOperationBeginQuery(a3, @"DELETE FROM chat WHERE chat_identifier = 'stewie:emergency:112911';");
  IMDSqlOperationFinishQuery(a3);
  if (a3->var5)
  {
    return 0;
  }

  _IMDSqlOperationBeginQuery(a3, @"DELETE FROM chat WHERE chat_identifier LIKE 'stewie:roadside:%';");
  IMDSqlOperationFinishQuery(a3);
  return a3->var5 == 0;
}

- (BOOL)copyDatabase:(id)a3
{
  v5 = objc_msgSend_sourcePath(self, a2, a3);
  NSLog(&cfstr_TrimmingDataba.isa, v5);
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  v8 = objc_msgSend_destinationPath(self, v6, v7);
  IMDSqlOperationInitAndCreateIfNeededWithPath(v8, v25);
  v9 = MEMORY[0x1E696AEC0];
  v12 = objc_msgSend_sourcePath(self, v10, v11);
  v14 = objc_msgSend_stringWithFormat_(v9, v13, @"ATTACH '%@' AS source;", v12);
  _IMDSqlOperationBeginQuery(v25, v14);
  IMDSqlOperationFinishQuery(v25);
  if (!*(&v26 + 1))
  {
    IMDSqlOperationBeginTransaction(v25);
    if (!*(&v26 + 1))
    {
      IMDDropAllTriggersWithOperation(v25, 0, v15);
      if (!*(&v26 + 1))
      {
        objc_msgSend_trimDatabaseWithOperation_(self, v16, v25);
        if (!*(&v26 + 1))
        {
          IMDCreateTriggersWithOperation(v25, 0);
          if (!*(&v26 + 1))
          {
            IMDSqlOperationCommitTransaction(v25);
            if (!*(&v26 + 1))
            {
              objc_msgSend_flushWALWithOperation_(self, v17, v25);
            }
          }
        }
      }
    }
  }

  v24 = 0;
  v20 = IMDSqlOperationRelease(v25, &v24);
  if (v24)
  {
    v21 = objc_msgSend_destinationPath(self, v18, v19);
    objc_msgSend_deleteFailedArchiveAtPath_error_(self, v22, v21, 0);
  }

  if (a3)
  {
    (*(a3 + 2))(a3, v20, v24);
  }

  return v20;
}

- (void)flushWALWithOperation:(IMDSqlOperation *)a3
{
  _IMDSqlOperationBeginQuery(a3, @"PRAGMA wal_checkpoint(TRUNCATE);");

  IMDSqlOperationFinishQuery(a3);
}

@end