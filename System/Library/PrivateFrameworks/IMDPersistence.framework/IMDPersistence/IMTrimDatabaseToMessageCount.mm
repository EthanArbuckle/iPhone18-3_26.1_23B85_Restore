@interface IMTrimDatabaseToMessageCount
- (IMTrimDatabaseToMessageCount)initWithSourceDatabasePath:(id)path destinationDatabasePath:(id)databasePath messageCount:(int64_t)count;
- (void)performMessageSelectionWithOperation:(IMDSqlOperation *)operation;
@end

@implementation IMTrimDatabaseToMessageCount

- (IMTrimDatabaseToMessageCount)initWithSourceDatabasePath:(id)path destinationDatabasePath:(id)databasePath messageCount:(int64_t)count
{
  v7.receiver = self;
  v7.super_class = IMTrimDatabaseToMessageCount;
  result = [(IMAbstractDatabaseArchiver *)&v7 initWithSourceDatabasePath:path destinationDatabasePath:databasePath];
  if (result)
  {
    result->_messageCount = count;
  }

  return result;
}

- (void)performMessageSelectionWithOperation:(IMDSqlOperation *)operation
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"INSERT INTO message SELECT %@ from source.message ORDER BY DATE DESC LIMIT ?;", @"ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id");
  _IMDSqlOperationBeginQuery(operation, v5);
  IMDSqlStatementBindInt64(&operation->var4, self->_messageCount);

  IMDSqlOperationFinishQuery(operation);
}

@end