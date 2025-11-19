@interface MFMessagePersistence
@end

@implementation MFMessagePersistence

void __31__MFMessagePersistence_iOS_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_24;
  log_log_24 = v1;
}

uint64_t __49__MFMessagePersistence_iOS_defaultLibraryOptions__block_invoke()
{
  _MergedGlobals = 7342143;
  result = _os_feature_enabled_impl();
  if ((result & 1) != 0 || (result = _os_feature_enabled_impl(), result) && (result = EMIsGreymatterSupported(), result))
  {
    _MergedGlobals |= 0x200020u;
  }

  return result;
}

uint64_t __52__MFMessagePersistence_iOS_messageIDsWithBasePaths___block_invoke(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__MFMessagePersistence_iOS_messageIDsWithBasePaths___block_invoke_2;
  v18[3] = &unk_1E7AA3DD8;
  v4 = a1[4];
  v5 = a1[6];
  v18[4] = a1[5];
  v19 = v5;
  v17 = 0;
  [a2 executeSelectStatement:v4 withBlock:v18 error:&v17];
  v6 = v17;
  if (v6)
  {
    v7 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __52__MFMessagePersistence_iOS_messageIDsWithBasePaths___block_invoke_cold_1(a1, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v7 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[7];
      *buf = 138543362;
      v21 = v14;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Found attachment basepaths for messages %{public}@", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

void __52__MFMessagePersistence_iOS_messageIDsWithBasePaths___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"global_message_id"];
  v5 = [v4 numberValue];

  v6 = [v3 objectForKeyedSubscript:@"mailbox"];
  v7 = [v6 numberValue];

  v8 = MEMORY[0x1E695DFF8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
  v10 = [WeakRetained urlForMailboxID:{objc_msgSend(v7, "longLongValue")}];
  v11 = [v8 URLWithString:v10];

  v12 = [MailAccount accountWithURL:v11];
  v13 = MEMORY[0x1E695DFF8];
  v14 = [v12 defaultPath];
  v15 = [v13 URLWithString:v14];

  v16 = [*(a1 + 40) objectForKeyedSubscript:v5];
  if (v16)
  {
    v17 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = v5;
      _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "Already found base path for global message ID %lld (likely due to duplicate message)", buf, 0xCu);
    }

    [v16 addObject:v15];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v15, 0}];
    [*(a1 + 40) setObject:? forKeyedSubscript:?];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __106__MFMessagePersistence_iOS_requestContentForMessageObjectID_requestID_options_delegate_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [*(a1 + 32) summary];
    if (v6)
    {
    }

    else if (([*(a1 + 40) isCancelled] & 1) == 0)
    {
      [*(a1 + 48) generateSummaryForMessage:*(a1 + 32) downloadIfNecessary:1];
    }
  }

  (*(*(a1 + 56) + 16))();
}

void __106__MFMessagePersistence_iOS_requestContentForMessageObjectID_requestID_options_delegate_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = [v5 securityInformation];
    v8 = [v7 smimeError];
    if (v8 || ([v5 hasMoreContent] & 1) != 0)
    {
      v9 = *(a1 + 120);

      if (v9 == 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_11:
    v18 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_DEFAULT, "Skipping the retry for message content with network", buf, 2u);
    }

    [*(a1 + 96) setCompletedUnitCount:2];
    (*(*(a1 + 104) + 16))();
    goto LABEL_14;
  }

  if ((*(a1 + 120) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v10 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) requestedRepresentation];
    v12 = *(a1 + 40);
    *buf = 138543618;
    v33 = v11;
    v34 = 2114;
    v35 = v12;
    _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "Retrying the request %{public}@ content for message %{public}@ with network", buf, 0x16u);
  }

  v13 = [*(a1 + 48) messageStore];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __106__MFMessagePersistence_iOS_requestContentForMessageObjectID_requestID_options_delegate_completionHandler___block_invoke_63;
  v21[3] = &unk_1E7AA70D8;
  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  v16 = *(a1 + 112);
  v22 = v15;
  v31 = v16;
  v20 = *(a1 + 48);
  v17 = v20.i64[0];
  v23 = vextq_s8(v20, v20, 8uLL);
  v24 = *(a1 + 64);
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v27 = *(a1 + 32);
  v28 = *(a1 + 88);
  v30 = *(a1 + 104);
  v29 = *(a1 + 96);
  [v13 fetchBodyDataForMessage:v14 completionHandler:v21];

LABEL_14:
  v19 = *MEMORY[0x1E69E9840];
}

void __106__MFMessagePersistence_iOS_requestContentForMessageObjectID_requestID_options_delegate_completionHandler___block_invoke_63(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    __106__MFMessagePersistence_iOS_requestContentForMessageObjectID_requestID_options_delegate_completionHandler___block_invoke_63_cold_1(a1, buf, [v3 length], v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v5 = v5[20];
  }

  v6 = v5;
  v7 = *(a1 + 112);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = [v9 messageTransformer];
  v12 = *(a1 + 56);
  v13 = *(a1 + 88);
  v14 = [MFMessageContentRequest onScheduler:v6 requestID:v7 requestContentForObjectID:v8 messagePersistence:v9 legacyMessage:v10 messageTransformer:v11 mailDropAttachmentGenerator:*(a1 + 56) listUnsubscribeHandler:*(a1 + 64) clientIdentifier:*(a1 + 72) options:*(a1 + 80) delegate:v13 completionHandler:*(a1 + 104)];

  [*(a1 + 96) addChild:v14 withPendingUnitCount:1];
  v15 = *MEMORY[0x1E69E9840];
}

void __74__MFMessagePersistence_iOS_generateSummaryForMessage_downloadIfNecessary___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) summaryLoaderProvider];
  v3 = [v2 messageSummaryLoaderForMessage:*(a1 + 40)];

  v4 = [v3 requestSummaryImmediatelyFromDownloadedMessage:*(a1 + 40) downloadIfNecessary:*(a1 + 48)];
  if (v4)
  {
    [*(a1 + 40) setSummary:v4];
    v5 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "length")}];
      v7 = [*(a1 + 40) messageID];
      v9 = 138412802;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 2048;
      v14 = v3;
      _os_log_debug_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEBUG, "Generated summary (length=%{publid}@) for: %@ (summaryLoader=%p)", &v9, 0x20u);
    }
  }

  else
  {
    v5 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 40) messageID];
      objc_claimAutoreleasedReturnValue();
      __74__MFMessagePersistence_iOS_generateSummaryForMessage_downloadIfNecessary___block_invoke_cold_1();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __88__MFMessagePersistence_iOS__libraryMessageForMessageObjectID_preferNonOutgoingMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mailbox];
  v3 = [v2 isOutgoingMailboxUid];

  return v3 ^ 1u;
}

uint64_t __74__MFMessagePersistence_iOS_globalIDForMessageWithDatabaseID_mailboxScope___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E699B948]);
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() messagesTableName];
  v7 = [v4 initWithResultColumn:@"global_message_id" table:v6];

  v8 = MEMORY[0x1E699B768];
  if (*(a1 + 64) == 1)
  {
    v9 = [v7 join:@"mailboxes" sourceColumn:@"mailbox" targetColumn:*MEMORY[0x1E699B768]];
    [v9 addResultColumn:@"url"];
  }

  v10 = MEMORY[0x1E699B8C8];
  v11 = *(a1 + 32);
  v12 = [objc_opt_class() messagesTableName];
  v13 = [v10 table:v12 column:*v8];
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a1 + 56)];
  v15 = [v13 equalTo:v14];
  [v7 setWhere:v15];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__MFMessagePersistence_iOS_globalIDForMessageWithDatabaseID_mailboxScope___block_invoke_2;
  v18[3] = &unk_1E7AA7190;
  v20 = *(a1 + 64);
  v19 = *(a1 + 40);
  v16 = [v3 executeSelectStatement:v7 withBlock:v18 error:0];

  return v16;
}

void __74__MFMessagePersistence_iOS_globalIDForMessageWithDatabaseID_mailboxScope___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectAtIndexedSubscript:0];
  *(*(*(a1 + 32) + 8) + 24) = [v3 databaseIDValue];

  if (*(a1 + 48) == 1)
  {
    v4 = [v8 objectAtIndexedSubscript:1];
    v5 = [v4 stringValue];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __88__MFMessagePersistence_iOS_messageObjectIDForSearchIndexerIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 absoluteString];
    v8 = [MailAccount mailboxUidFromActiveAccountsForURL:v7];

    v9 = [v8 account];
    v10 = [v9 taskManager];

    if (v10)
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        v11 = v11[20];
      }

      v12 = v11;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __88__MFMessagePersistence_iOS_messageObjectIDForSearchIndexerIdentifier_completionHandler___block_invoke_89;
      v20[3] = &unk_1E7AA7208;
      v25 = a3;
      v21 = v10;
      v13 = v8;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v22 = v13;
      v23 = v14;
      v24 = v15;
      [v12 performBlock:v20];
    }

    else
    {
      v18 = *(a1 + 40);
      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:1024 userInfo:0];
      (*(v18 + 16))(v18, 0, v19);
    }
  }

  else
  {
    v16 = +[MFMessagePersistence_iOS log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "Received nil result from SearchIndexer.", buf, 2u);
    }

    v17 = *(a1 + 40);
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:1024 userInfo:0];
    (*(v17 + 16))(v17, 0, v8);
  }
}

void __88__MFMessagePersistence_iOS_messageObjectIDForSearchIndexerIdentifier_completionHandler___block_invoke_89(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = [MFUIDSet alloc];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 64)];
  v15[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v5 = [(MFUIDSet *)v2 initWithUIDs:v4];

  v6 = [*(a1 + 32) downloadMessagesForUIDs:v5 inMailbox:*(a1 + 40)];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__MFMessagePersistence_iOS_messageObjectIDForSearchIndexerIdentifier_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7AA71E0;
  v9 = *(a1 + 40);
  v7 = v9.i64[0];
  v13 = vextq_s8(v9, v9, 8uLL);
  v14 = *(a1 + 56);
  [v6 addSuccessBlock:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__MFMessagePersistence_iOS_messageObjectIDForSearchIndexerIdentifier_completionHandler___block_invoke_3;
  v10[3] = &unk_1E7AA68F0;
  v11 = *(a1 + 56);
  [v6 addFailureBlock:v10];

  v8 = *MEMORY[0x1E69E9840];
}

void __88__MFMessagePersistence_iOS_messageObjectIDForSearchIndexerIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uids];
  v4 = [v3 firstObject];

  if (!v4)
  {
    goto LABEL_2;
  }

  v7 = [(MFMessagePersistence_iOS *)*(a1 + 32) library];
  v8 = [v4 stringValue];
  v9 = [*(a1 + 40) URLString];
  v10 = [v7 messageWithRemoteID:v8 inRemoteMailbox:v9];

  v11 = [v10 objectID];

  if (v11)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
LABEL_2:
    v5 = *(a1 + 48);
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:1024 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);

    v11 = 0;
  }
}

id __106__MFMessagePersistence_iOS_persistenceDidChangeGlobalMessageID_orConversationID_message_generationWindow___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) persistedMessageID];
  v3 = [v1 numberWithLongLong:{objc_msgSend(v2, "databaseID")}];

  return v3;
}

uint64_t __45__MFMessagePersistence_iOS_collectStatistics__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 protectedDatabaseAttached];
  [*(a1 + 32) setProtectedDataAvailable:v4];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__MFMessagePersistence_iOS_collectStatistics__block_invoke_2;
  aBlock[3] = &unk_1E7AA7280;
  v5 = v3;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  [*(a1 + 32) setMessageData:{v6[2](v6, @"SELECT COUNT(*) FROM message_data"}];
  [*(a1 + 32) setMessageDataDeleted:{v6[2](v6, @"SELECT COUNT(*) FROM message_data_deleted"}];
  [*(a1 + 32) setMessagesMarkedAsJournaled:{v6[2](v6, @"SELECT COUNT(*) FROM messages WHERE journaled = '1'"}];
  [*(a1 + 32) setMailboxesNeedingReconcilication:{v6[2](v6, @"SELECT COUNT(*) FROM mailboxes WHERE reconcile = '1'"}];
  if (v4)
  {
    [*(a1 + 32) setProtectedMessageData:{v6[2](v6, @"SELECT COUNT(*) FROM protected_message_data"}];
  }

  v7 = EMLogSearchableIndexStatus();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_INFO, "Persistence statistics: %{public}@", buf, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __45__MFMessagePersistence_iOS_collectStatistics__block_invoke_2(uint64_t a1, void *a2)
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

  return v6;
}

void __52__MFMessagePersistence_iOS_messageIDsWithBasePaths___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 56));
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, a2, a3, "Failed to fetch attachment basepaths for messages %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __106__MFMessagePersistence_iOS_requestContentForMessageObjectID_requestID_options_delegate_completionHandler___block_invoke_63_cold_1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *(a1 + 32);
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = v4;
  _os_log_impl(&dword_1B0389000, log, OS_LOG_TYPE_DEFAULT, "Fetched body data of length %lu for message %{public}@ with network", buf, 0x16u);
}

void __74__MFMessagePersistence_iOS_generateSummaryForMessage_downloadIfNecessary___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_7();
  *v1 = 138412546;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2048;
  *(v1 + 14) = v3;
  _os_log_error_impl(&dword_1B0389000, v5, OS_LOG_TYPE_ERROR, "Failed to generate summary for %@ (summaryLoader=%p)", v4, 0x16u);
}

@end