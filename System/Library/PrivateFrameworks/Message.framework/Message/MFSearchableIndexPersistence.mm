@interface MFSearchableIndexPersistence
@end

@implementation MFSearchableIndexPersistence

void __39__MFSearchableIndexPersistence_iOS_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_32;
  log_log_32 = v1;
}

void __47__MFSearchableIndexPersistence_iOS_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_2;
  signpostLog_log_2 = v1;
}

void __139__MFSearchableIndexPersistence_iOS_attachmentItemMetadataForAttachmentID_attachmentPersistentID_messagePersistentID_name_mailboxID_result___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v23 = +[MFSearchableIndexPersistence_iOS log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __139__MFSearchableIndexPersistence_iOS_attachmentItemMetadataForAttachmentID_attachmentPersistentID_messagePersistentID_name_mailboxID_result___block_invoke_cold_1(a1);
    }

    goto LABEL_12;
  }

  if (!v6)
  {
    v23 = +[MFSearchableIndexPersistence_iOS log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      __139__MFSearchableIndexPersistence_iOS_attachmentItemMetadataForAttachmentID_attachmentPersistentID_messagePersistentID_name_mailboxID_result___block_invoke_cold_2(a1);
    }

LABEL_12:

    (*(a1[8] + 16))();
    goto LABEL_13;
  }

  v26 = [(EDSearchableIndexItem *)MFSearchableIndexItem_iOS mailboxIdentifiersForMessage:v6];
  v25 = [MEMORY[0x1E699B6A8] domainIdentifierForMessage:v7];
  v24 = [MEMORY[0x1E699B6A8] accountIdentifierForMessage:v7];
  v8 = [v7 senders];
  v9 = [v8 firstObject];

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = [v7 to];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [v7 to];
    [v10 addObjectsFromArray:v13];
  }

  v14 = [v7 cc];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [v7 cc];
    [v10 addObjectsFromArray:v16];
  }

  v17 = objc_alloc(MEMORY[0x1E699B690]);
  v18 = a1[7];
  v19 = [v7 messageIDHeader];
  v20 = [v7 dateReceived];
  v21 = [v7 dateSent];
  v22 = [v17 initWithAttachmentFileURL:v5 name:v18 domainIdentifier:v25 accountIdentifier:v24 mailboxIdentifiers:v26 messageIDHeader:v19 senderAddress:v9 recipientAddresses:v10 dateReceived:v20 dateSent:v21];

  (*(a1[8] + 16))();
LABEL_13:
}

id __98__MFSearchableIndexPersistence_iOS__verificationDataFromMessage_messageIDTransactionIDDictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E699AFD0] rawAddressFromFullAddress:a2];

  return v2;
}

uint64_t __46__MFSearchableIndexPersistence_iOS_statistics__block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__MFSearchableIndexPersistence_iOS_statistics__block_invoke_2;
  aBlock[3] = &unk_1E7AA7808;
  v4 = v3;
  v51 = v4;
  v5 = _Block_copy(aBlock);
  v6 = +[MFMailMessageLibrary defaultInstance];
  v43 = [v6 activeMailboxesClause];

  v41 = [MEMORY[0x1E695DF70] array];
  v7 = +[MFMailMessageLibrary defaultInstance];
  v8 = [v7 mailboxFrecencyController];
  v9 = [v8 frecentMailboxes];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __46__MFSearchableIndexPersistence_iOS_statistics__block_invoke_3;
  v48[3] = &unk_1E7AA39F0;
  v10 = v41;
  v49 = v10;
  [v9 enumerateIndexesUsingBlock:v48];

  v42 = [v10 componentsJoinedByString:{@", "}];
  v11 = +[MFSearchableIndexPersistence_iOS signpostLog];
  v12 = [*(a1 + 32) signpostID];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SEARCH INDEX STATISTICS", "Starting database query for messages to index", buf, 2u);
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT COUNT(*) AS indexable_messages, SUM(CASE WHEN messages.searchable_message IS NULL THEN 1 ELSE 0 END) AS messages_to_index, SUM(CASE WHEN messages.searchable_message IS NOT NULL then 1 ELSE 0 END) as indexed_messages, SUM(CASE WHEN searchable_messages.message_body_indexed then 1 ELSE 0 END) as message_bodies_indexed, SUM(CASE WHEN searchable_messages.transaction_id = %lld THEN 1 ELSE 0 END) AS messages_to_redonate, SUM(CASE WHEN NOT searchable_messages.message_body_indexed AND messages.mailbox IN (%@) THEN 1 ELSE 0 END) as unindexed_message_bodies_in_frecents  FROM messages       LEFT OUTER JOIN searchable_messages ON messages.searchable_message = searchable_messages.ROWID WHERE deleted = '0' %@", 0, v42, v43];
  v14 = [v4 preparedStatementForQueryString:v13];
  v15 = v14;
  v16 = [v14 compiled];

  if (v16)
  {
    if (sqlite3_step(v16) == 100)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(v16, 0)}];
      [*(*(*(a1 + 40) + 8) + 40) setObject:v17 forKeyedSubscript:*MEMORY[0x1E699AA20]];

      v18 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(v16, 1)}];
      [*(*(*(a1 + 40) + 8) + 40) setObject:v18 forKeyedSubscript:*MEMORY[0x1E699AA98]];

      v19 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(v16, 2)}];
      [*(*(*(a1 + 40) + 8) + 40) setObject:v19 forKeyedSubscript:*MEMORY[0x1E699AA88]];

      v20 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(v16, 3)}];
      [*(*(*(a1 + 40) + 8) + 40) setObject:v20 forKeyedSubscript:*MEMORY[0x1E699AA58]];

      v21 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(v16, 4)}];
      [*(*(*(a1 + 40) + 8) + 40) setObject:v21 forKeyedSubscript:*MEMORY[0x1E699AAA0]];

      v22 = sqlite3_column_int(v16, 0);
      v23 = v22 - sqlite3_column_int(v16, 3);
      if (v23)
      {
        v24 = [MEMORY[0x1E696AD98] numberWithInt:{(100 * sqlite3_column_int(v16, 5) / v23)}];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v24 forKeyedSubscript:*MEMORY[0x1E699AAC0]];
      }
    }

    sqlite3_reset(v16);
  }

  else
  {
    memset(buf, 170, 0x288uLL);
    *&buf[32] = 0;
    *v54 = 0xE00000001;
    v55 = 1;
    v56 = getpid();
    v52 = 648;
    if (!sysctl(v54, 4u, buf, &v52, 0, 0) && (*&buf[32] & 0x800) != 0)
    {
      __debugbreak();
    }
  }

  v25 = +[MFSearchableIndexPersistence_iOS signpostLog];
  v26 = [*(a1 + 32) signpostID];
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v25, OS_SIGNPOST_INTERVAL_END, v26, "SEARCH INDEX STATISTICS", "Finished database query for messages to index", buf, 2u);
  }

  v27 = +[MFSearchableIndexPersistence_iOS signpostLog];
  v28 = [*(a1 + 32) signpostID];
  if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v28, "SEARCH INDEX STATISTICS", "Starting database query for messages to reindex", buf, 2u);
  }

  v29 = v5[2](v5, @"SELECT COUNT(*) FROM searchable_rebuild");
  [*(*(*(a1 + 40) + 8) + 40) setObject:v29 forKeyedSubscript:*MEMORY[0x1E699AAA8]];

  v30 = +[MFSearchableIndexPersistence_iOS signpostLog];
  v31 = [*(a1 + 32) signpostID];
  if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0389000, v30, OS_SIGNPOST_INTERVAL_END, v31, "SEARCH INDEX STATISTICS", "Finished database query for messages to reindex", buf, 2u);
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __46__MFSearchableIndexPersistence_iOS_statistics__block_invoke_44;
  v44[3] = &unk_1E7AA7830;
  v32 = v43;
  v45 = v32;
  v33 = v4;
  v34 = *(a1 + 40);
  v46 = v33;
  v47 = v34;
  v35 = _Block_copy(v44);
  if ([v33 protectedDatabaseAttached])
  {
    v36 = v5[2](v5, @"SELECT COUNT(*) FROM message_attachments WHERE message_attachments.attachment IS NOT NULL");
    [*(*(*(a1 + 40) + 8) + 40) setObject:v36 forKeyedSubscript:*MEMORY[0x1E699AA18]];

    v37 = v5[2](v5, @"SELECT COUNT(*) FROM searchable_attachments");
    [*(*(*(a1 + 40) + 8) + 40) setObject:v37 forKeyedSubscript:*MEMORY[0x1E699AA00]];

    v38 = v5[2](v5, @"SELECT COUNT(*) FROM message_attachments LEFT OUTER JOIN searchable_attachments ON (message_attachments.ROWID = searchable_attachments.attachment_id) WHERE searchable_attachments.attachment_id IS NULL AND message_attachments.attachment IS NOT NULL");;
    [*(*(*(a1 + 40) + 8) + 40) setObject:v38 forKeyedSubscript:*MEMORY[0x1E699AA08]];
  }

  v35[2](v35, *MEMORY[0x1E699AAB8], 2);
  v35[2](v35, *MEMORY[0x1E699AAB0], 30);

  v39 = *MEMORY[0x1E69E9840];
  return 1;
}

id __46__MFSearchableIndexPersistence_iOS_statistics__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) preparedStatementForQueryString:v3];
  v5 = [v4 compiled];

  if (v5)
  {
    if (sqlite3_step(v5) == 100)
    {
      v6 = sqlite3_column_int(v5, 0);
    }

    else
    {
      v6 = 0;
    }

    sqlite3_reset(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];

  return v7;
}

void __46__MFSearchableIndexPersistence_iOS_statistics__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

void __46__MFSearchableIndexPersistence_iOS_statistics__block_invoke_44(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT COUNT(*) AS indexable_messages, SUM(CASE WHEN messages.searchable_message IS NULL THEN 1 ELSE 0 END) AS messages_to_index, SUM(CASE WHEN messages.searchable_message IS NOT NULL then 1 ELSE 0 END) as indexed_messages       FROM messages LEFT OUTER JOIN searchable_messages ON messages.searchable_message = searchable_messages.ROWID       WHERE deleted = '0' AND (date_received > unixepoch('now', 'start of day', '-%lu days')) %@", a3, *(a1 + 32)];
  v7 = [*(a1 + 40) preparedStatementForQueryString:v6];
  v8 = [v7 compiled];

  if (v8)
  {
    if (sqlite3_step(v8) == 100)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(v8, 0)}];
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(v8, 1)}];
      v11 = [MEMORY[0x1E696AD98] numberWithInt:{sqlite3_column_int(v8, 2)}];
      v12 = [v10 unsignedIntegerValue];
      v13 = [v11 unsignedIntegerValue];
      if ([v9 integerValue] >= 1)
      {
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{100 * ((v13 + v12) / objc_msgSend(v9, "integerValue"))}];
        [*(*(*(a1 + 48) + 8) + 40) setObject:v14 forKeyedSubscript:v5];
      }
    }

    sqlite3_reset(v8);
  }

  else
  {
    v15 = +[MFSearchableIndexPersistence_iOS log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __46__MFSearchableIndexPersistence_iOS_statistics__block_invoke_44_cold_1(v6, v15);
    }

    memset(__b, 170, sizeof(__b));
    __b[8] = 0;
    *v19 = 0xE00000001;
    v20 = 1;
    v21 = getpid();
    v17 = 648;
    if (!sysctl(v19, 4u, __b, &v17, 0, 0) && (__b[8] & 0x800) != 0)
    {
      __debugbreak();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __139__MFSearchableIndexPersistence_iOS_attachmentItemMetadataForAttachmentID_attachmentPersistentID_messagePersistentID_name_mailboxID_result___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEBUG, "Unable to retrieve a fileURL for a message in the attachments table for attachmentID:%{public}@ attachmentPersistentID:%{public}@ messageID:%{public}@ name:%@", v7, 0x2Au);
  v6 = *MEMORY[0x1E69E9840];
}

void __139__MFSearchableIndexPersistence_iOS_attachmentItemMetadataForAttachmentID_attachmentPersistentID_messagePersistentID_name_mailboxID_result___block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  OUTLINED_FUNCTION_0_9();
  _os_log_fault_impl(&dword_1B0389000, v5, OS_LOG_TYPE_FAULT, "Encountered a reference to a non-existent message in the attachments table for attachmentID:%{public}@ attachmentPersistentID:%{public}@ messageID:%{public}@ name:%@", v7, 0x2Au);
  v6 = *MEMORY[0x1E69E9840];
}

void __46__MFSearchableIndexPersistence_iOS_statistics__block_invoke_44_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Failed to generate query: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end