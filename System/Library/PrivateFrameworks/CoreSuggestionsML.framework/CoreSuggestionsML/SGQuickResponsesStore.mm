@interface SGQuickResponsesStore
+ (BOOL)isProfane:(id)profane inLocales:(id)locales;
+ (SGQuickResponsesStore)sharedInstance;
+ (id)instanceInMemory;
+ (id)keyWithLanguage:(id)language andResponse:(id)response;
+ (void)warmup;
- (BOOL)addingMessageExceedsBatchLimit:(unint64_t)limit tableLimit:(unint64_t)tableLimit message:(id)message language:(id)language prompt:(id)prompt recipientHandle:(id)handle sentAt:(id)at;
- (BOOL)deltaForResponsesOnRow:(id)row completion:(id)completion;
- (BOOL)frailReadTransaction:(id)transaction;
- (BOOL)frailWriteTransaction:(id)transaction;
- (BOOL)resetDbIfNeededCompareWithCompatibilityVersion:(unint64_t)version;
- (double)getPerRecipientCountForReply:(id)reply language:(id)language recipient:(id)recipient;
- (double)getUsageSpreadForReply:(id)reply language:(id)language;
- (id)_recordsForResponses:(id)responses language:(id)language;
- (id)embeddingForPrompt:(id)prompt language:(id)language embedder:(id)embedder;
- (id)getModelVersion;
- (id)getProfanityLocale;
- (id)initInDirectory:(id)directory inMemory:(BOOL)memory withMigration:(BOOL)migration forTools:(BOOL)tools;
- (id)messagesForEval:(id)eval;
- (id)nearestCustomResponsesAndScoresToPromptEmbedding:(id)embedding recipient:(id)recipient limit:(unint64_t)limit withinRadius:(float)radius responseCountExponent:(float)exponent minimumDecayedCount:(float)count compatibilityVersion:(unint64_t)version language:(id)self0 locale:(id)self1 allowProfanity:(BOOL)self2 minimumTimeInterval:(double)self3 usageSpreadExponent:(float)self4;
- (id)nearestCustomResponsesToPromptEmbedding:(id)embedding recipient:(id)recipient limit:(unint64_t)limit withinRadius:(float)radius responseCountExponent:(float)exponent minimumDecayedCount:(float)count compatibilityVersion:(unint64_t)version language:(id)self0 locale:(id)self1 allowProfanity:(BOOL)self2 minimumTimeInterval:(double)self3 usageSpreadExponent:(float)self4;
- (id)recordsForResponses:(id)responses language:(id)language;
- (id)recordsForResponsesInternal:(id)internal language:(id)language;
- (unint64_t)countCustomResponsesAfterPruningWithMinimumCountThreshold:(double)threshold;
- (unint64_t)countCustomResponsesAfterTruncatingTable:(unint64_t)table;
- (unint64_t)designateFilteringBatch:(unint64_t)batch;
- (void)_addCustomResponseToDb:(id)db reply:(id)reply language:(id)language embedding:(id)embedding sentAt:(double)at recipient:(id)recipient messagesRowId:(int64_t)id onError:(id)self0;
- (void)_incrementCustomResponseInDb:(id)db reply:(id)reply language:(id)language embedding:(id)embedding sentAt:(double)at recipient:(id)recipient messagesRowId:(int64_t)id onError:(id)self0;
- (void)addDisplayedToResponses:(id)responses language:(id)language;
- (void)addSelectedToResponse:(id)response language:(id)language;
- (void)addWrittenToResponse:(id)response language:(id)language isMatch:(BOOL)match;
- (void)calculateUsageSpreads;
- (void)decayAllCustomResponsesWithDecayFactor:(double)factor filteringBatchSize:(unint64_t)size;
- (void)destroyInstanceInMemory;
- (void)filterBatchWithMinimumDistinctRecipients:(unint64_t)recipients minimumReplyOccurences:(unint64_t)occurences;
- (void)prunePerRecipientTableWithMaxRows:(unint64_t)rows;
- (void)recordKnownCustomResponsesInBatchWithEmbedder:(id)embedder compatibilityVersion:(unint64_t)version;
- (void)recordMessagesInBatchAsCustomResponsesWithEmbedder:(id)embedder compatibilityVersion:(unint64_t)version;
- (void)resetCustomResponsesAndResetMessages:(BOOL)messages;
- (void)resetCustomResponsesForEval:(id)eval;
- (void)setProfanityLocale:(id)locale andModelVersion:(int64_t)version;
@end

@implementation SGQuickResponsesStore

- (double)getUsageSpreadForReply:(id)reply language:(id)language
{
  replyCopy = reply;
  languageCopy = language;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0xBFF0000000000000;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__SGQuickResponsesStore_getUsageSpreadForReply_language___block_invoke;
  v12[3] = &unk_278EB8110;
  v8 = replyCopy;
  v13 = v8;
  v9 = languageCopy;
  v14 = v9;
  v15 = @"SELECT usage_spread FROM custom_responses WHERE reply=$reply AND language=$language";
  v16 = &v17;
  [(SGQuickResponsesStore *)self frailReadTransaction:v12];
  v10 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v10;
}

void __57__SGQuickResponsesStore_getUsageSpreadForReply_language___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SGQuickResponsesStore_getUsageSpreadForReply_language___block_invoke_2;
  v8[3] = &unk_278EB7BE8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SGQuickResponsesStore_getUsageSpreadForReply_language___block_invoke_3;
  v7[3] = &unk_278EB7B70;
  v7[4] = *(a1 + 56);
  [a2 prepAndRunQuery:v6 onPrep:v8 onRow:v7 onError:a3];
}

void __57__SGQuickResponsesStore_getUsageSpreadForReply_language___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:"$reply" toNSString:v3];
  [v4 bindNamedParam:"$language" toNSString:*(a1 + 40)];
}

uint64_t __57__SGQuickResponsesStore_getUsageSpreadForReply_language___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 getDoubleForColumnAlias:"usage_spread"];
  *(*(*(a1 + 32) + 8) + 24) = v3;
  return *MEMORY[0x277D42698];
}

- (double)getPerRecipientCountForReply:(id)reply language:(id)language recipient:(id)recipient
{
  replyCopy = reply;
  languageCopy = language;
  recipientCopy = recipient;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__SGQuickResponsesStore_getPerRecipientCountForReply_language_recipient___block_invoke;
  v16[3] = &unk_278EB80E8;
  v11 = replyCopy;
  v17 = v11;
  v12 = languageCopy;
  v18 = v12;
  v13 = recipientCopy;
  v19 = v13;
  v20 = @"SELECT decayed_times_used FROM cr_per_recipient_counts WHERE reply=$reply AND language=$language AND recipient=$recipient";
  v21 = &v22;
  [(SGQuickResponsesStore *)self frailReadTransaction:v16];
  v14 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v14;
}

void __73__SGQuickResponsesStore_getPerRecipientCountForReply_language_recipient___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SGQuickResponsesStore_getPerRecipientCountForReply_language_recipient___block_invoke_2;
  v8[3] = &unk_278EB7C88;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__SGQuickResponsesStore_getPerRecipientCountForReply_language_recipient___block_invoke_3;
  v7[3] = &unk_278EB7B70;
  v7[4] = *(a1 + 64);
  [a2 prepAndRunQuery:v6 onPrep:v8 onRow:v7 onError:a3];
}

void __73__SGQuickResponsesStore_getPerRecipientCountForReply_language_recipient___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindNamedParam:"$reply" toNSString:v3];
  [v4 bindNamedParam:"$language" toNSString:a1[5]];
  [v4 bindNamedParam:"$recipient" toNSString:a1[6]];
}

uint64_t __73__SGQuickResponsesStore_getPerRecipientCountForReply_language_recipient___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 getDoubleForColumnAlias:"decayed_times_used"];
  *(*(*(a1 + 32) + 8) + 24) = v3;
  return *MEMORY[0x277D42698];
}

- (void)destroyInstanceInMemory
{
  readerWriter = self->_readerWriter;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__SGQuickResponsesStore_destroyInstanceInMemory__block_invoke;
  v3[3] = &unk_278EB80C0;
  v3[4] = self;
  v3[5] = a2;
  [(_PASLock *)readerWriter runWithLockAcquired:v3];
}

void __48__SGQuickResponsesStore_destroyInstanceInMemory__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getObject];
  v5 = [v4 db];
  v6 = [v5 isInMemory];

  if ((v6 & 1) == 0)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SGQuickResponsesStore.m" lineNumber:1237 description:{@"Invalid parameter not satisfying: %@", @"flakyDatabaseHandle.getObject.db.isInMemory"}];
  }

  [v3 destroyCachedObject];
  v7 = [v3 peekAtCachedObject];

  if (v7)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SGQuickResponsesStore.m" lineNumber:1239 description:@"SGQuickResponsesStore failed to destroy instance in memory."];
  }
}

- (BOOL)deltaForResponsesOnRow:(id)row completion:(id)completion
{
  rowCopy = row;
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__SGQuickResponsesStore_deltaForResponsesOnRow_completion___block_invoke;
  v11[3] = &unk_278EB8098;
  v16 = rowCopy;
  v17 = completionCopy;
  v12 = @"SELECT t1.lang_response AS lang_response        ,CASE            WHEN t2.displayed IS NULL THEN t1.displayed            ELSE t1.displayed - t2.displayed         END AS displayed        ,CASE            WHEN t2.selected IS NULL THEN t1.selected            ELSE t1.selected - t2.selected         END AS selected        ,CASE            WHEN t2.matched IS NULL THEN t1.matched            ELSE t1.matched - t2.matched         END AS matched FROM responses t1 LEFT JOIN responses_snapshot t2     ON t1.lang_response = t2.lang_response ORDER BY RANDOM() ";
  v13 = @"DROP TABLE responses_snapshot";
  v14 = @"CREATE TABLE responses_snapshot AS     SELECT *     FROM responses ";
  v15 = @"CREATE INDEX idx_responses_snapshot_lang_response ON responses_snapshot (lang_response)";
  v8 = completionCopy;
  v9 = rowCopy;
  LOBYTE(self) = [(SGQuickResponsesStore *)self frailWriteTransaction:v11];

  return self;
}

void __59__SGQuickResponsesStore_deltaForResponsesOnRow_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__579;
  v22 = __Block_byref_object_dispose__580;
  v23 = 0;
  v7 = *(a1 + 32);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __59__SGQuickResponsesStore_deltaForResponsesOnRow_completion___block_invoke_2;
  v15 = &unk_278EB8070;
  v16 = *(a1 + 64);
  v17 = &v18;
  LOBYTE(v7) = [v5 prepAndRunQuery:v7 onPrep:0 onRow:&v12 onError:v6];

  if (v7)
  {
    if (v19[5])
    {
      v6[2](v6);
    }

    else
    {
      v10 = *(a1 + 72);
      if (v10 && ((*(v10 + 16))(v10, 0, v8, v9), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        (v6[2])(v6, v11);
      }

      else if ([v5 prepAndRunQuery:*(a1 + 40) onPrep:0 onRow:0 onError:{v6, v12, v13, v14, v15}] && objc_msgSend(v5, "prepAndRunQuery:onPrep:onRow:onError:", *(a1 + 48), 0, 0, v6))
      {
        [v5 prepAndRunQuery:*(a1 + 56) onPrep:0 onRow:0 onError:v6];
      }
    }
  }

  _Block_object_dispose(&v18, 8);
}

uint64_t __59__SGQuickResponsesStore_deltaForResponsesOnRow_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 getNSStringForColumnAlias:"lang_response"];
    v6 = [v4 getInt64ForColumnAlias:"displayed"];
    if (v6 != v6)
    {
      v7 = sgLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v21 = v6;
        _os_log_fault_impl(&dword_24799E000, v7, OS_LOG_TYPE_FAULT, "SGQuickResponsesEngagementDeltas displayed value %lld is out of range for int32_t, casting to boundary value", buf, 0xCu);
      }

      if (_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        goto LABEL_27;
      }

      v6 = (v6 >> 63) ^ 0x7FFFFFFF;
    }

    v8 = [v4 getInt64ForColumnAlias:"selected"];
    if (v8 != v8)
    {
      v9 = sgLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v21 = v8;
        _os_log_fault_impl(&dword_24799E000, v9, OS_LOG_TYPE_FAULT, "SGQuickResponsesEngagementDeltas selected value %lld is out of range for int32_t, casting to boundary value", buf, 0xCu);
      }

      if (_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        goto LABEL_27;
      }

      v8 = (v8 >> 63) ^ 0x7FFFFFFF;
    }

    v10 = [v4 getInt64ForColumnAlias:"matched"];
    if (v10 == v10)
    {
LABEL_17:
      if (v5)
      {
        v12 = [[SGQuickResponsesEngagementDeltas alloc] initWithLangResponse:v5 displayed:v6 selected:v8 matched:v10];
        v13 = *(*(a1 + 40) + 8);
        obj = *(v13 + 40);
        v14 = (*(*(a1 + 32) + 16))();
        objc_storeStrong((v13 + 40), obj);
      }

      else
      {
        v16 = sgLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_24799E000, v16, OS_LOG_TYPE_ERROR, "Language in deltaForResponsesOnRow was null, continuing to iterate as best effort", buf, 2u);
        }

        v14 = *MEMORY[0x277D42690];
      }

      goto LABEL_26;
    }

    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v21 = v10;
      _os_log_fault_impl(&dword_24799E000, v11, OS_LOG_TYPE_FAULT, "SGQuickResponsesEngagementDeltas matched value %lld is out of range for int32_t, casting to boundary value", buf, 0xCu);
    }

    if (!_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      v10 = (v10 >> 63) ^ 0x7FFFFFFF;
      goto LABEL_17;
    }

LABEL_27:
    abort();
  }

  v15 = sgLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_24799E000, v15, OS_LOG_TYPE_ERROR, "Row returned in deltaForResponsesOnRow was null, continuing to iterate as best effort", buf, 2u);
  }

  v14 = *MEMORY[0x277D42690];
LABEL_26:

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (unint64_t)countCustomResponsesAfterTruncatingTable:(unint64_t)table
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__SGQuickResponsesStore_countCustomResponsesAfterTruncatingTable___block_invoke;
  v13[3] = &unk_278EB7D48;
  v14 = @"SELECT COUNT(ROWID) as c from custom_responses";
  v15 = &v16;
  [(SGQuickResponsesStore *)self frailReadTransaction:v13];
  v5 = v17[3];
  if (v5 > table)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__SGQuickResponsesStore_countCustomResponsesAfterTruncatingTable___block_invoke_3;
    v10[3] = &unk_278EB7D20;
    v11 = @"DELETE FROM custom_responses ORDER BY decayed_times_used ASC LIMIT $table_limit";
    v12 = v5 - table;
    if ([(SGQuickResponsesStore *)self frailWriteTransaction:v10])
    {
      v17[3] = table;
    }

    else
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __66__SGQuickResponsesStore_countCustomResponsesAfterTruncatingTable___block_invoke_5;
      v7[3] = &unk_278EB7D48;
      v8 = @"SELECT COUNT(ROWID) as c from custom_responses";
      v9 = &v16;
      [(SGQuickResponsesStore *)self frailReadTransaction:v7];
    }

    v5 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  return v5;
}

uint64_t __66__SGQuickResponsesStore_countCustomResponsesAfterTruncatingTable___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__SGQuickResponsesStore_countCustomResponsesAfterTruncatingTable___block_invoke_2;
  v6[3] = &unk_278EB7B70;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  return [a2 prepAndRunQuery:v4 onPrep:0 onRow:v6 onError:a3];
}

uint64_t __66__SGQuickResponsesStore_countCustomResponsesAfterTruncatingTable___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__SGQuickResponsesStore_countCustomResponsesAfterTruncatingTable___block_invoke_4;
  v6[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  return [a2 prepAndRunQuery:v4 onPrep:v6 onRow:0 onError:a3];
}

uint64_t __66__SGQuickResponsesStore_countCustomResponsesAfterTruncatingTable___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__SGQuickResponsesStore_countCustomResponsesAfterTruncatingTable___block_invoke_6;
  v6[3] = &unk_278EB7B70;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  return [a2 prepAndRunQuery:v4 onPrep:0 onRow:v6 onError:a3];
}

- (unint64_t)countCustomResponsesAfterPruningWithMinimumCountThreshold:(double)threshold
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__SGQuickResponsesStore_countCustomResponsesAfterPruningWithMinimumCountThreshold___block_invoke;
  v13[3] = &unk_278EB7D20;
  thresholdCopy = threshold;
  v14 = @"DELETE FROM custom_responses WHERE decayed_times_used < $threshold";
  [(SGQuickResponsesStore *)self frailWriteTransaction:v13];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__SGQuickResponsesStore_countCustomResponsesAfterPruningWithMinimumCountThreshold___block_invoke_3;
  v6[3] = &unk_278EB7D48;
  v7 = @"SELECT COUNT(ROWID) as c from custom_responses";
  v8 = &v9;
  [(SGQuickResponsesStore *)self frailReadTransaction:v6];
  v4 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __83__SGQuickResponsesStore_countCustomResponsesAfterPruningWithMinimumCountThreshold___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__SGQuickResponsesStore_countCustomResponsesAfterPruningWithMinimumCountThreshold___block_invoke_2;
  v6[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v6[4] = *(a1 + 40);
  return [a2 prepAndRunQuery:v4 onPrep:v6 onRow:0 onError:a3];
}

uint64_t __83__SGQuickResponsesStore_countCustomResponsesAfterPruningWithMinimumCountThreshold___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__SGQuickResponsesStore_countCustomResponsesAfterPruningWithMinimumCountThreshold___block_invoke_4;
  v6[3] = &unk_278EB7B70;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  return [a2 prepAndRunQuery:v4 onPrep:0 onRow:v6 onError:a3];
}

- (void)decayAllCustomResponsesWithDecayFactor:(double)factor filteringBatchSize:(unint64_t)size
{
  v5 = pow(factor, size);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__SGQuickResponsesStore_decayAllCustomResponsesWithDecayFactor_filteringBatchSize___block_invoke;
  v9[3] = &unk_278EB7ED0;
  v12 = v5;
  v10 = @"UPDATE custom_responses SET prompt_embedding = $prompt_embedding, decayed_times_used = decayed_times_used * $decay_factor WHERE rowid = $rowid";
  v11 = @"SELECT rowid, prompt_embedding from custom_responses";
  [(SGQuickResponsesStore *)self frailWriteTransaction:v9];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__SGQuickResponsesStore_decayAllCustomResponsesWithDecayFactor_filteringBatchSize___block_invoke_4;
  v6[3] = &unk_278EB7D20;
  v8 = v5;
  v7 = @"UPDATE cr_per_recipient_counts SET decayed_times_used = decayed_times_used * $decay_factor";
  [(SGQuickResponsesStore *)self frailWriteTransaction:v6];
}

void __83__SGQuickResponsesStore_decayAllCustomResponsesWithDecayFactor_filteringBatchSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__SGQuickResponsesStore_decayAllCustomResponsesWithDecayFactor_filteringBatchSize___block_invoke_2;
  v10[3] = &unk_278EB8048;
  v14 = *(a1 + 48);
  v11 = v5;
  v7 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v6;
  v8 = v6;
  v9 = v5;
  [v9 prepAndRunQuery:v7 onPrep:0 onRow:v10 onError:v8];
}

uint64_t __83__SGQuickResponsesStore_decayAllCustomResponsesWithDecayFactor_filteringBatchSize___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__SGQuickResponsesStore_decayAllCustomResponsesWithDecayFactor_filteringBatchSize___block_invoke_5;
  v6[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v6[4] = *(a1 + 40);
  return [a2 prepAndRunQuery:v4 onPrep:v6 onRow:0 onError:a3];
}

uint64_t __83__SGQuickResponsesStore_decayAllCustomResponsesWithDecayFactor_filteringBatchSize___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumnAlias:"rowid"];
  v5 = objc_alloc(MEMORY[0x277D41F58]);
  v6 = [v3 getNSDataForColumnAlias:"prompt_embedding"];

  v7 = [v6 mutableCopy];
  v8 = [v5 initWithData:v7];

  v9 = *(a1 + 56);
  *&v9 = v9;
  [v8 scaleInPlaceWithFactor:v9];
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__SGQuickResponsesStore_decayAllCustomResponsesWithDecayFactor_filteringBatchSize___block_invoke_3;
  v16[3] = &unk_278EB8020;
  v18 = *(a1 + 56);
  v17 = v8;
  v19 = v4;
  v12 = *(a1 + 48);
  v13 = v8;
  [v10 prepAndRunQuery:v11 onPrep:v16 onRow:0 onError:v12];
  v14 = MEMORY[0x277D42690];

  return *v14;
}

void __83__SGQuickResponsesStore_decayAllCustomResponsesWithDecayFactor_filteringBatchSize___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  [v5 bindNamedParam:"$decay_factor" toDouble:v3];
  v4 = [*(a1 + 32) data];
  [v5 bindNamedParam:"$prompt_embedding" toNSData:v4];

  [v5 bindNamedParam:"$rowid" toInt64:*(a1 + 48)];
}

- (id)nearestCustomResponsesToPromptEmbedding:(id)embedding recipient:(id)recipient limit:(unint64_t)limit withinRadius:(float)radius responseCountExponent:(float)exponent minimumDecayedCount:(float)count compatibilityVersion:(unint64_t)version language:(id)self0 locale:(id)self1 allowProfanity:(BOOL)self2 minimumTimeInterval:(double)self3 usageSpreadExponent:(float)self4
{
  v30 = *MEMORY[0x277D85DE8];
  LOBYTE(v24) = profanity;
  v14 = [SGQuickResponsesStore nearestCustomResponsesAndScoresToPromptEmbedding:"nearestCustomResponsesAndScoresToPromptEmbedding:recipient:limit:withinRadius:responseCountExponent:minimumDecayedCount:compatibilityVersion:language:locale:allowProfanity:minimumTimeInterval:usageSpreadExponent:" recipient:embedding limit:recipient withinRadius:limit responseCountExponent:version minimumDecayedCount:language compatibilityVersion:locale language:v24 locale:? allowProfanity:? minimumTimeInterval:? usageSpreadExponent:?];
  v15 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        first = [*(*(&v25 + 1) + 8 * i) first];
        [v15 addObject:first];
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)nearestCustomResponsesAndScoresToPromptEmbedding:(id)embedding recipient:(id)recipient limit:(unint64_t)limit withinRadius:(float)radius responseCountExponent:(float)exponent minimumDecayedCount:(float)count compatibilityVersion:(unint64_t)version language:(id)self0 locale:(id)self1 allowProfanity:(BOOL)self2 minimumTimeInterval:(double)self3 usageSpreadExponent:(float)self4
{
  v103 = *MEMORY[0x277D85DE8];
  embeddingCopy = embedding;
  recipientCopy = recipient;
  languageCopy = language;
  localeCopy = locale;
  getModelVersion = [(SGQuickResponsesStore *)self getModelVersion];
  integerValue = [getModelVersion integerValue];

  if (integerValue == version)
  {
    v81 = languageCopy;
    limitCopy = limit;
    v30 = [objc_alloc(MEMORY[0x277D41F20]) initWithNumbers:embeddingCopy];
    v31 = objc_opt_new();
    v32 = sgLogHandle();
    v33 = os_signpost_id_generate(v32);

    v34 = sgLogHandle();
    v35 = v34;
    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24799E000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v33, "SelectCustomResponseRows", &unk_2479DB655, buf, 2u);
    }

    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __237__SGQuickResponsesStore_nearestCustomResponsesAndScoresToPromptEmbedding_recipient_limit_withinRadius_responseCountExponent_minimumDecayedCount_compatibilityVersion_language_locale_allowProfanity_minimumTimeInterval_usageSpreadExponent___block_invoke;
    v88[3] = &unk_278EB7F98;
    v89 = languageCopy;
    countCopy = count;
    intervalCopy = interval;
    v77 = v30;
    v90 = v77;
    v91 = recipientCopy;
    selfCopy = self;
    spreadExponentCopy = spreadExponent;
    exponentCopy = exponent;
    radiusCopy = radius;
    v79 = v31;
    v93 = v79;
    v94 = @"SELECT reply, prompt_embedding, decayed_times_used, usage_spread FROM custom_responses WHERE language = $language   AND decayed_times_used >= $minimum_decayed_count   AND last_seen - first_seen >= $minimum_time_interval";
    [(SGQuickResponsesStore *)self frailReadTransaction:v88];
    v36 = sgLogHandle();
    v37 = v36;
    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24799E000, v37, OS_SIGNPOST_INTERVAL_END, v33, "SelectCustomResponseRows", &unk_2479DB655, buf, 2u);
    }

    v38 = sgLogHandle();
    v39 = os_signpost_id_generate(v38);

    v40 = sgLogHandle();
    v41 = v40;
    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24799E000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v39, "SortCustomResponses", &unk_2479DB655, buf, 2u);
    }

    v80 = recipientCopy;

    v42 = v79;
    [v79 sortUsingComparator:&__block_literal_global_216];
    v43 = sgLogHandle();
    v44 = v43;
    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24799E000, v44, OS_SIGNPOST_INTERVAL_END, v39, "SortCustomResponses", &unk_2479DB655, buf, 2u);
    }

    v45 = sgLogHandle();
    v46 = os_signpost_id_generate(v45);

    v47 = sgLogHandle();
    v48 = v47;
    if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24799E000, v48, OS_SIGNPOST_INTERVAL_BEGIN, v46, "DedupeCustomResponses", &unk_2479DB655, buf, 2u);
    }

    v49 = [SGDeduperML bucketerWithMapping:&__block_literal_global_221];
    v78 = [SGDeduperML dedupe:v79 bucketer:v49 resolver:&__block_literal_global_226];

    v50 = sgLogHandle();
    v51 = v50;
    if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24799E000, v51, OS_SIGNPOST_INTERVAL_END, v46, "DedupeCustomResponses", &unk_2479DB655, buf, 2u);
    }

    getProfanityLocale = [(SGQuickResponsesStore *)self getProfanityLocale];
    v53 = getProfanityLocale;
    if (!localeCopy || profanity || ([getProfanityLocale isEqualToString:localeCopy] & 1) != 0)
    {
      v54 = v78;
      if ([v78 count] <= limitCopy)
      {
        v55 = v78;
      }

      else
      {
        v55 = [v78 subarrayWithRange:{0, limitCopy}];
      }

      v56 = v55;
      v57 = v77;
    }

    else
    {
      v75 = v53;
      v76 = embeddingCopy;
      v58 = sgLogHandle();
      v59 = os_signpost_id_generate(v58);

      v60 = sgLogHandle();
      v61 = v60;
      if (v59 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24799E000, v61, OS_SIGNPOST_INTERVAL_BEGIN, v59, "RemoveProfaneCustomResponses", &unk_2479DB655, buf, 2u);
      }

      v56 = objc_opt_new();
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v62 = v78;
      v63 = [v62 countByEnumeratingWithState:&v84 objects:v102 count:16];
      if (v63)
      {
        v64 = v63;
        v65 = *v85;
LABEL_33:
        v66 = 0;
        while (1)
        {
          if (*v85 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v67 = *(*(&v84 + 1) + 8 * v66);
          first = [v67 first];
          v101 = localeCopy;
          v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
          v70 = [SGQuickResponsesStore isProfane:first inLocales:v69];

          if (!v70)
          {
            [v56 addObject:v67];
            if ([v56 count] == limitCopy)
            {
              break;
            }
          }

          if (v64 == ++v66)
          {
            v64 = [v62 countByEnumeratingWithState:&v84 objects:v102 count:16];
            if (v64)
            {
              goto LABEL_33;
            }

            break;
          }
        }
      }

      v71 = sgLogHandle();
      v72 = v71;
      if (v59 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24799E000, v72, OS_SIGNPOST_INTERVAL_END, v59, "RemoveProfaneCustomResponses", &unk_2479DB655, buf, 2u);
      }

      embeddingCopy = v76;
      v57 = v77;
      recipientCopy = v80;
      languageCopy = v81;
      v54 = v78;
      v42 = v79;
      v53 = v75;
    }
  }

  else
  {
    v56 = MEMORY[0x277CBEBF8];
  }

  v73 = *MEMORY[0x277D85DE8];

  return v56;
}

void __237__SGQuickResponsesStore_nearestCustomResponsesAndScoresToPromptEmbedding_recipient_limit_withinRadius_responseCountExponent_minimumDecayedCount_compatibilityVersion_language_locale_allowProfanity_minimumTimeInterval_usageSpreadExponent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 72);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __237__SGQuickResponsesStore_nearestCustomResponsesAndScoresToPromptEmbedding_recipient_limit_withinRadius_responseCountExponent_minimumDecayedCount_compatibilityVersion_language_locale_allowProfanity_minimumTimeInterval_usageSpreadExponent___block_invoke_2;
  v19[3] = &unk_278EB7F48;
  v20 = *(a1 + 32);
  v22 = *(a1 + 88);
  v21 = *(a1 + 80);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __237__SGQuickResponsesStore_nearestCustomResponsesAndScoresToPromptEmbedding_recipient_limit_withinRadius_responseCountExponent_minimumDecayedCount_compatibilityVersion_language_locale_allowProfanity_minimumTimeInterval_usageSpreadExponent___block_invoke_3;
  v13[3] = &unk_278EB7F70;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v17 = *(a1 + 92);
  v12 = *(a1 + 56);
  v9 = *(a1 + 32);
  *&v10 = v12;
  *(&v10 + 1) = v9;
  *&v11 = v7;
  *(&v11 + 1) = v8;
  v14 = v11;
  v15 = v10;
  v18 = *(a1 + 96);
  v16 = *(a1 + 64);
  [a2 prepAndRunQuery:v6 onPrep:v19 onRow:v13 onError:a3];
}

id __237__SGQuickResponsesStore_nearestCustomResponsesAndScoresToPromptEmbedding_recipient_limit_withinRadius_responseCountExponent_minimumDecayedCount_compatibilityVersion_language_locale_allowProfanity_minimumTimeInterval_usageSpreadExponent___block_invoke_2_223(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEA60];
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v2 arrayWithObject:v3];

  return v4;
}

id __237__SGQuickResponsesStore_nearestCustomResponsesAndScoresToPromptEmbedding_recipient_limit_withinRadius_responseCountExponent_minimumDecayedCount_compatibilityVersion_language_locale_allowProfanity_minimumTimeInterval_usageSpreadExponent___block_invoke_218(uint64_t a1, void *a2)
{
  v2 = [a2 first];
  v3 = [SGQuickResponsesInference normalizeStringForDeduping:v2];

  return v3;
}

uint64_t __237__SGQuickResponsesStore_nearestCustomResponsesAndScoresToPromptEmbedding_recipient_limit_withinRadius_responseCountExponent_minimumDecayedCount_compatibilityVersion_language_locale_allowProfanity_minimumTimeInterval_usageSpreadExponent___block_invoke_213(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 second];
  v6 = [v4 second];

  v7 = [v5 compare:v6];
  return v7;
}

void __237__SGQuickResponsesStore_nearestCustomResponsesAndScoresToPromptEmbedding_recipient_limit_withinRadius_responseCountExponent_minimumDecayedCount_compatibilityVersion_language_locale_allowProfanity_minimumTimeInterval_usageSpreadExponent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:"$language" toNSString:v3];
  [v4 bindNamedParam:"$minimum_decayed_count" toDouble:*(a1 + 48)];
  [v4 bindNamedParam:"$minimum_time_interval" toDouble:*(a1 + 40)];
}

uint64_t __237__SGQuickResponsesStore_nearestCustomResponsesAndScoresToPromptEmbedding_recipient_limit_withinRadius_responseCountExponent_minimumDecayedCount_compatibilityVersion_language_locale_allowProfanity_minimumTimeInterval_usageSpreadExponent___block_invoke_3(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sgLogHandle();
  v5 = os_signpost_id_generate(v4);

  v6 = sgLogHandle();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v44) = 0;
    _os_signpost_emit_with_name_impl(&dword_24799E000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SingleCustomResponseRow", &unk_2479DB655, &v44, 2u);
  }

  v8 = [v3 getNSStringForColumnAlias:"reply"];
  if (!v8)
  {
    v27 = sgLogHandle();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    LOWORD(v44) = 0;
    v28 = "SGQuickResponsesStore: Unexpected null value for custom_responses.reply";
    goto LABEL_33;
  }

  [v3 getDoubleForColumnAlias:"decayed_times_used"];
  v10 = v9;
  v11 = [v3 getNSDataForColumnAlias:"prompt_embedding"];
  if (!v11)
  {
    v27 = sgLogHandle();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    LOWORD(v44) = 0;
    v28 = "SGQuickResponsesStore: Unexpected null value for custom_responses.prompt_embedding";
LABEL_33:
    _os_log_fault_impl(&dword_24799E000, v27, OS_LOG_TYPE_FAULT, v28, &v44, 2u);
LABEL_16:

    if (!_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      v13 = 0;
      v12 = 0;
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  v12 = v11;
  v13 = [objc_alloc(MEMORY[0x277D41F58]) initWithData:v11];
  *&v14 = v10;
  [v13 scaleInPlaceWithInversedFactor:v14];
  v15 = [v13 count];
  v16 = [*(a1 + 32) count];
  v17 = sgLogHandle();
  v18 = v17;
  if (v15 == v16)
  {
    v19 = os_signpost_id_generate(v17);

    v20 = sgLogHandle();
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      LOWORD(v44) = 0;
      _os_signpost_emit_with_name_impl(&dword_24799E000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "ComputeCustomResponseDistance", &unk_2479DB655, &v44, 2u);
    }

    v22 = 0.0;
    if (*(a1 + 40))
    {
      v23 = 1.0;
      if (*(a1 + 72) > 0.0)
      {
        [v3 getDoubleForColumnAlias:"usage_spread"];
        v25 = v24;
        [*(a1 + 48) getPerRecipientCountForReply:v8 language:*(a1 + 56) recipient:*(a1 + 40)];
        v22 = v26;
        v23 = pow(v25, *(a1 + 72));
      }
    }

    else
    {
      v23 = 1.0;
    }

    [v13 cosineDistanceFrom:*(a1 + 32)];
    v30 = v29 / pow((1.0 - v23) * v22 + v23 * v10, *(a1 + 76));
    v31 = sgLogHandle();
    v32 = v31;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      LOWORD(v44) = 0;
      _os_signpost_emit_with_name_impl(&dword_24799E000, v32, OS_SIGNPOST_INTERVAL_END, v19, "ComputeCustomResponseDistance", &unk_2479DB655, &v44, 2u);
    }

    if (*(a1 + 80) > v30)
    {
      v34 = *(a1 + 64);
      v35 = MEMORY[0x277D42648];
      *&v33 = v30;
      v36 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
      v37 = [v35 tupleWithFirst:v8 second:v36];
      [v34 addObject:v37];
    }

    goto LABEL_28;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    v42 = [v13 count];
    v43 = [*(a1 + 32) count];
    v44 = 134218240;
    v45 = v42;
    v46 = 2048;
    v47 = v43;
    _os_log_fault_impl(&dword_24799E000, v18, OS_LOG_TYPE_FAULT, "SGQuickResponsesStore: mis-matched dimensions (a possible plist error) between embedding and densePromptEmbedding in store: %tu v,s. %tu", &v44, 0x16u);
  }

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
LABEL_21:
    abort();
  }

LABEL_28:
  v38 = sgLogHandle();
  v39 = v38;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    LOWORD(v44) = 0;
    _os_signpost_emit_with_name_impl(&dword_24799E000, v39, OS_SIGNPOST_INTERVAL_END, v5, "SingleCustomResponseRow", &unk_2479DB655, &v44, 2u);
  }

  v40 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

- (void)prunePerRecipientTableWithMaxRows:(unint64_t)rows
{
  v74 = *MEMORY[0x277D85DE8];
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __59__SGQuickResponsesStore_prunePerRecipientTableWithMaxRows___block_invoke;
  v64[3] = &unk_278EB7D48;
  v65 = @"SELECT COUNT(ROWID) as n FROM cr_per_recipient_counts";
  v66 = &v67;
  [(SGQuickResponsesStore *)self frailReadTransaction:v64];
  if (v68[3] > rows)
  {
    v4 = objc_opt_new();
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __59__SGQuickResponsesStore_prunePerRecipientTableWithMaxRows___block_invoke_3;
    v61[3] = &unk_278EB7E58;
    v5 = v4;
    v62 = v5;
    v63 = @"SELECT reply, language, COUNT(ROWID) as n FROM cr_per_recipient_counts GROUP BY reply, language";
    [(SGQuickResponsesStore *)self frailReadTransaction:v61];
    v46 = [v5 mutableCopy];
    v48 = objc_opt_new();
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v57 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
    if (v6)
    {
      v7 = *v58;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v58 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v57 + 1) + 8 * i);
          v10 = MEMORY[0x277D42648];
          v11 = [obj objectForKeyedSubscript:v9];
          v12 = [v10 tupleWithFirst:v9 second:v11];

          [v48 addObject:v12];
        }

        v6 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
      }

      while (v6);
    }

    v44 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"second" ascending:0];
    v72 = v44;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
    [v48 sortUsingDescriptors:v13];

    v14 = v68[3];
    v15 = [v48 count];
    v16 = v14 - rows;
    if (v14 != rows)
    {
      v17 = v15;
      v42 = v15 - 1;
      while (1)
      {
        if (v17 < 2)
        {
          v19 = 0;
        }

        else
        {
          for (j = 1; j != v17; ++j)
          {
            v19 = j - 1;
            v20 = [v48 objectAtIndexedSubscript:j - 1];
            first = [v20 first];
            v21 = [v46 objectForKeyedSubscript:first];
            integerValue = [v21 integerValue];
            v23 = [v48 objectAtIndexedSubscript:j];
            first2 = [v23 first];
            v25 = [v46 objectForKeyedSubscript:first2];
            LOBYTE(integerValue) = integerValue == [v25 integerValue];

            if ((integerValue & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          v19 = v42;
        }

LABEL_17:
        while ((v19 & 0x80000000) == 0)
        {
          v26 = [v48 objectAtIndexedSubscript:v19];
          first3 = [v26 first];

          if (!first3)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:846 description:{@"Invalid parameter not satisfying: %@", @"k"}];
          }

          v28 = MEMORY[0x277CCABB0];
          v29 = [v46 objectForKeyedSubscript:first3];
          v30 = [v28 numberWithInteger:{objc_msgSend(v29, "integerValue") - 1}];
          [v46 setObject:v30 forKeyedSubscript:first3];

          --v19;
          if (!--v16)
          {
            goto LABEL_21;
          }
        }
      }
    }

LABEL_21:
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v32 = v46;
    v33 = [v32 countByEnumeratingWithState:&v53 objects:v71 count:16];
    if (v33)
    {
      v34 = *v54;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v54 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v53 + 1) + 8 * k);
          v37 = [obj objectForKeyedSubscript:v36];
          integerValue2 = [v37 integerValue];
          v39 = [v32 objectForKeyedSubscript:v36];
          integerValue3 = [v39 integerValue];

          if (integerValue2 - integerValue3 >= 1)
          {
            v50[0] = MEMORY[0x277D85DD0];
            v50[1] = 3221225472;
            v50[2] = __59__SGQuickResponsesStore_prunePerRecipientTableWithMaxRows___block_invoke_5;
            v50[3] = &unk_278EB7ED0;
            v52 = integerValue2 - integerValue3;
            v50[4] = v36;
            v51 = @"DELETE FROM cr_per_recipient_counts WHERE reply=$reply AND language=$language ORDER BY decayed_times_used ASC LIMIT $n_rows ";
            [(SGQuickResponsesStore *)self frailWriteTransaction:v50];
          }
        }

        v33 = [v32 countByEnumeratingWithState:&v53 objects:v71 count:16];
      }

      while (v33);
    }
  }

  _Block_object_dispose(&v67, 8);
  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __59__SGQuickResponsesStore_prunePerRecipientTableWithMaxRows___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SGQuickResponsesStore_prunePerRecipientTableWithMaxRows___block_invoke_2;
  v6[3] = &unk_278EB7B70;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  return [a2 prepAndRunQuery:v4 onPrep:0 onRow:v6 onError:a3];
}

void __59__SGQuickResponsesStore_prunePerRecipientTableWithMaxRows___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SGQuickResponsesStore_prunePerRecipientTableWithMaxRows___block_invoke_4;
  v6[3] = &unk_278EB7EF8;
  v5 = *(a1 + 40);
  v7 = *(a1 + 32);
  [a2 prepAndRunQuery:v5 onPrep:0 onRow:v6 onError:a3];
}

uint64_t __59__SGQuickResponsesStore_prunePerRecipientTableWithMaxRows___block_invoke_5(void *a1, void *a2, uint64_t a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__SGQuickResponsesStore_prunePerRecipientTableWithMaxRows___block_invoke_6;
  v7[3] = &unk_278EB7EA8;
  v4 = a1[5];
  v5 = a1[6];
  v7[4] = a1[4];
  v7[5] = v5;
  return [a2 prepAndRunQuery:v4 onPrep:v7 onRow:0 onError:a3];
}

void __59__SGQuickResponsesStore_prunePerRecipientTableWithMaxRows___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 first];
  [v6 bindNamedParam:"$reply" toNSString:v4];

  v5 = [*(a1 + 32) second];
  [v6 bindNamedParam:"$language" toNSString:v5];

  [v6 bindNamedParam:"$n_rows" toInt64:*(a1 + 40)];
}

uint64_t __59__SGQuickResponsesStore_prunePerRecipientTableWithMaxRows___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"reply"];
  v5 = [v3 getNSStringForColumnAlias:"language"];
  v6 = [v3 getInt64ForColumnAlias:"n"];

  v7 = [MEMORY[0x277D42648] tupleWithFirst:v4 second:v5];
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];

  v9 = MEMORY[0x277D42690];
  return *v9;
}

- (void)calculateUsageSpreads
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__SGQuickResponsesStore_calculateUsageSpreads__block_invoke;
  v2[3] = &unk_278EB7E80;
  v3 = @"UPDATE custom_responses SET usage_spread = (SELECT CAST(u AS FLOAT)/c FROM    (SELECT count(distinct(recipient)) AS u FROM messages WHERE messages.reply=custom_responses.reply AND messages.language=custom_responses.language),    (SELECT count(distinct(recipient)) AS c FROM messages))";
  [(SGQuickResponsesStore *)self frailWriteTransaction:v2];
}

- (void)recordMessagesInBatchAsCustomResponsesWithEmbedder:(id)embedder compatibilityVersion:(unint64_t)version
{
  embedderCopy = embedder;
  if (![(SGQuickResponsesStore *)self resetDbIfNeededCompareWithCompatibilityVersion:version])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __97__SGQuickResponsesStore_recordMessagesInBatchAsCustomResponsesWithEmbedder_compatibilityVersion___block_invoke;
    v7[3] = &unk_278EB7D70;
    v8 = @"SELECT rowid, reply, language, prompt, sent_at, recipient FROM messages WHERE filtering AND NOT filtered";
    selfCopy = self;
    v10 = @"SELECT prompt_embedding FROM custom_responses WHERE reply=$reply AND language=$language";
    v11 = embedderCopy;
    [(SGQuickResponsesStore *)self frailWriteTransaction:v7];
  }
}

void __97__SGQuickResponsesStore_recordMessagesInBatchAsCustomResponsesWithEmbedder_compatibilityVersion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __97__SGQuickResponsesStore_recordMessagesInBatchAsCustomResponsesWithEmbedder_compatibilityVersion___block_invoke_2;
  v11[3] = &unk_278EB7F20;
  v14 = *(a1 + 56);
  v8 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v5;
  v13 = v8;
  v15 = v6;
  v9 = v6;
  v10 = v5;
  [v10 prepAndRunQuery:v7 onPrep:0 onRow:v11 onError:v9];
}

uint64_t __97__SGQuickResponsesStore_recordMessagesInBatchAsCustomResponsesWithEmbedder_compatibilityVersion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumnAlias:"rowid"];
  v5 = [v3 getNSStringForColumnAlias:"reply"];
  v6 = [v3 getNSStringForColumnAlias:"language"];
  v7 = [v3 getNSStringForColumnAlias:"prompt"];
  v8 = [v3 getNSStringForColumnAlias:"recipient"];
  [v3 getDoubleForColumnAlias:"sent_at"];
  if (v7 && v6 && *(a1 + 56) && v5)
  {
    v10 = v9;
    v11 = [*(a1 + 32) embeddingForPrompt:v7 language:v6 embedder:?];
    v12 = v11;
    if (v11)
    {
      v21 = v11;
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy__579;
      v30 = __Block_byref_object_dispose__580;
      v31 = 0;
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __97__SGQuickResponsesStore_recordMessagesInBatchAsCustomResponsesWithEmbedder_compatibilityVersion___block_invoke_3;
      v23[3] = &unk_278EB7BE8;
      v20 = v5;
      v24 = v20;
      v19 = v6;
      v25 = v19;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __97__SGQuickResponsesStore_recordMessagesInBatchAsCustomResponsesWithEmbedder_compatibilityVersion___block_invoke_4;
      v22[3] = &unk_278EB7B70;
      v22[4] = &v26;
      v12 = v21;
      [v13 prepAndRunQuery:v14 onPrep:v23 onRow:v22 onError:*(a1 + 64)];
      if (v27[5])
      {
        v15 = objc_alloc(MEMORY[0x277D41F58]);
        v16 = [v15 initWithData:v27[5]];
        [v16 sumInPlaceWithVector:v21];
        [*(a1 + 32) _incrementCustomResponseInDb:*(a1 + 40) reply:v20 language:v19 embedding:v16 sentAt:v8 recipient:v4 messagesRowId:v10 onError:*(a1 + 64)];
      }

      else
      {
        [*(a1 + 32) _addCustomResponseToDb:*(a1 + 40) reply:v20 language:v19 embedding:v21 sentAt:v8 recipient:v4 messagesRowId:v10 onError:*(a1 + 64)];
      }

      v17 = *MEMORY[0x277D42690];

      _Block_object_dispose(&v26, 8);
    }

    else
    {
      v17 = *MEMORY[0x277D42698];
    }
  }

  else
  {
    v17 = *MEMORY[0x277D42690];
  }

  return v17;
}

void __97__SGQuickResponsesStore_recordMessagesInBatchAsCustomResponsesWithEmbedder_compatibilityVersion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:"$reply" toNSString:v3];
  [v4 bindNamedParam:"$language" toNSString:*(a1 + 40)];
}

uint64_t __97__SGQuickResponsesStore_recordMessagesInBatchAsCustomResponsesWithEmbedder_compatibilityVersion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 getNSDataForColumnAlias:"prompt_embedding"];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42690];
}

- (id)messagesForEval:(id)eval
{
  evalCopy = eval;
  v5 = objc_opt_new();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__SGQuickResponsesStore_messagesForEval___block_invoke;
  v16[3] = &unk_278EB7D48;
  v17 = @"SELECT COUNT(*) as n FROM messages";
  v18 = &v19;
  [(SGQuickResponsesStore *)self frailReadTransaction:v16];
  v6 = v20[3];
  [evalCopy doubleValue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__SGQuickResponsesStore_messagesForEval___block_invoke_3;
  v12[3] = &unk_278EB7ED0;
  v15 = (v7 * v6);
  v8 = v5;
  v13 = v8;
  v14 = @"SELECT prompt, reply FROM messages ORDER BY sent_at DESC LIMIT $evalCount";
  [(SGQuickResponsesStore *)self frailReadTransaction:v12];
  v9 = v14;
  v10 = v8;

  _Block_object_dispose(&v19, 8);

  return v10;
}

uint64_t __41__SGQuickResponsesStore_messagesForEval___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__SGQuickResponsesStore_messagesForEval___block_invoke_2;
  v6[3] = &unk_278EB7B70;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  return [a2 prepAndRunQuery:v4 onPrep:0 onRow:v6 onError:a3];
}

void __41__SGQuickResponsesStore_messagesForEval___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SGQuickResponsesStore_messagesForEval___block_invoke_4;
  v8[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__SGQuickResponsesStore_messagesForEval___block_invoke_5;
  v6[3] = &unk_278EB7EF8;
  v7 = *(a1 + 32);
  [a2 prepAndRunQuery:v5 onPrep:v8 onRow:v6 onError:a3];
}

uint64_t __41__SGQuickResponsesStore_messagesForEval___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"prompt"];
  v5 = [v3 getNSStringForColumnAlias:"reply"];

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277D42648] tupleWithFirst:v4 second:v5];
  [v6 addObject:v7];

  v8 = MEMORY[0x277D42690];
  return *v8;
}

- (void)resetCustomResponsesForEval:(id)eval
{
  evalCopy = eval;
  [(SGQuickResponsesStore *)self resetCustomResponsesAndResetMessages:0];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__SGQuickResponsesStore_resetCustomResponsesForEval___block_invoke;
  v10[3] = &unk_278EB7D48;
  v11 = @"SELECT COUNT(*) as n FROM messages";
  v12 = &v13;
  [(SGQuickResponsesStore *)self frailReadTransaction:v10];
  v5 = v14[3];
  [evalCopy doubleValue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SGQuickResponsesStore_resetCustomResponsesForEval___block_invoke_3;
  v7[3] = &unk_278EB7D20;
  v8 = @"UPDATE messages SET filtered = true ORDER BY sent_at DESC LIMIT $evalCount";
  v9 = (v6 * v5);
  [(SGQuickResponsesStore *)self frailWriteTransaction:v7];

  _Block_object_dispose(&v13, 8);
}

uint64_t __53__SGQuickResponsesStore_resetCustomResponsesForEval___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SGQuickResponsesStore_resetCustomResponsesForEval___block_invoke_2;
  v6[3] = &unk_278EB7B70;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  return [a2 prepAndRunQuery:v4 onPrep:0 onRow:v6 onError:a3];
}

uint64_t __53__SGQuickResponsesStore_resetCustomResponsesForEval___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SGQuickResponsesStore_resetCustomResponsesForEval___block_invoke_4;
  v6[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  return [a2 prepAndRunQuery:v4 onPrep:v6 onRow:0 onError:a3];
}

- (void)resetCustomResponsesAndResetMessages:(BOOL)messages
{
  messagesCopy = messages;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__SGQuickResponsesStore_resetCustomResponsesAndResetMessages___block_invoke;
  v13[3] = &unk_278EB7E80;
  v14 = @"DELETE FROM custom_responses";
  [(SGQuickResponsesStore *)self frailWriteTransaction:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SGQuickResponsesStore_resetCustomResponsesAndResetMessages___block_invoke_2;
  v11[3] = &unk_278EB7E80;
  v12 = @"DELETE FROM custom_responses_version";
  [(SGQuickResponsesStore *)self frailWriteTransaction:v11];
  if (messagesCopy)
  {
    v5 = v10;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v6 = @"DELETE FROM messages";
    v7 = __62__SGQuickResponsesStore_resetCustomResponsesAndResetMessages___block_invoke_3;
  }

  else
  {
    v5 = &v8;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v6 = @"UPDATE messages SET filtering = false, filtered = false";
    v7 = __62__SGQuickResponsesStore_resetCustomResponsesAndResetMessages___block_invoke_4;
  }

  v5[2] = v7;
  v5[3] = &unk_278EB7E80;
  v5[4] = v6;
  [(SGQuickResponsesStore *)self frailWriteTransaction:v5, v8, v9];
}

- (BOOL)resetDbIfNeededCompareWithCompatibilityVersion:(unint64_t)version
{
  getModelVersion = [(SGQuickResponsesStore *)self getModelVersion];
  v6 = getModelVersion;
  if (getModelVersion)
  {
    v7 = [getModelVersion integerValue] != version;
  }

  else
  {
    v7 = 0;
  }

  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  if (v7 || (-[SGQuickResponsesStore getProfanityLocale](self, "getProfanityLocale"), (v10 = objc_claimAutoreleasedReturnValue()) != 0) && (v11 = v10, v12 = [v10 isEqualToString:firstObject], v11, (v12 & 1) == 0))
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __72__SGQuickResponsesStore_resetDbIfNeededCompareWithCompatibilityVersion___block_invoke;
    v18[3] = &unk_278EB7E80;
    v19 = @"DELETE FROM custom_responses";
    [(SGQuickResponsesStore *)self frailWriteTransaction:v18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__SGQuickResponsesStore_resetDbIfNeededCompareWithCompatibilityVersion___block_invoke_2;
    v16[3] = &unk_278EB7E80;
    v17 = @"UPDATE messages SET filtering = false, filtered = false";
    [(SGQuickResponsesStore *)self frailWriteTransaction:v16];

    v13 = 1;
LABEL_10:
    [(SGQuickResponsesStore *)self setProfanityLocale:firstObject andModelVersion:version];
    v14 = v13;
    goto LABEL_11;
  }

  v13 = 0;
  v14 = 0;
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v14;
}

- (void)setProfanityLocale:(id)locale andModelVersion:(int64_t)version
{
  localeCopy = locale;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__SGQuickResponsesStore_setProfanityLocale_andModelVersion___block_invoke;
  v12[3] = &unk_278EB7E80;
  v13 = @"DELETE FROM custom_responses_version";
  [(SGQuickResponsesStore *)self frailWriteTransaction:v12];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SGQuickResponsesStore_setProfanityLocale_andModelVersion___block_invoke_2;
  v8[3] = &unk_278EB7ED0;
  v9 = localeCopy;
  v10 = @"INSERT INTO custom_responses_version (current_version, profanity_locale) VALUES($current_version, $profanity_locale)";
  versionCopy = version;
  v7 = localeCopy;
  [(SGQuickResponsesStore *)self frailWriteTransaction:v8];
}

void __60__SGQuickResponsesStore_setProfanityLocale_andModelVersion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SGQuickResponsesStore_setProfanityLocale_andModelVersion___block_invoke_3;
  v6[3] = &unk_278EB7EA8;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = *(a1 + 32);
  [a2 prepAndRunQuery:v5 onPrep:v6 onRow:0 onError:a3];
}

void __60__SGQuickResponsesStore_setProfanityLocale_andModelVersion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:"$current_version" toInt64:v3];
  [v4 bindNamedParam:"$profanity_locale" toNSString:*(a1 + 32)];
}

- (id)getModelVersion
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__579;
  v11 = __Block_byref_object_dispose__580;
  v12 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__SGQuickResponsesStore_getModelVersion__block_invoke;
  v4[3] = &unk_278EB7D48;
  v5 = @"SELECT current_version FROM custom_responses_version";
  v6 = &v7;
  [(SGQuickResponsesStore *)self frailReadTransaction:v4];
  v2 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v2;
}

uint64_t __40__SGQuickResponsesStore_getModelVersion__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__SGQuickResponsesStore_getModelVersion__block_invoke_2;
  v6[3] = &unk_278EB7B70;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  return [a2 prepAndRunQuery:v4 onPrep:0 onRow:v6 onError:a3];
}

uint64_t __40__SGQuickResponsesStore_getModelVersion__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(a2, "getInt64ForColumnAlias:", "current_version")}];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

- (id)getProfanityLocale
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__579;
  v11 = __Block_byref_object_dispose__580;
  v12 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__SGQuickResponsesStore_getProfanityLocale__block_invoke;
  v4[3] = &unk_278EB7D48;
  v5 = @"SELECT profanity_locale FROM custom_responses_version";
  v6 = &v7;
  [(SGQuickResponsesStore *)self frailReadTransaction:v4];
  v2 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v2;
}

uint64_t __43__SGQuickResponsesStore_getProfanityLocale__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__SGQuickResponsesStore_getProfanityLocale__block_invoke_2;
  v6[3] = &unk_278EB7B70;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  return [a2 prepAndRunQuery:v4 onPrep:0 onRow:v6 onError:a3];
}

uint64_t __43__SGQuickResponsesStore_getProfanityLocale__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 getNSStringForColumnAlias:"profanity_locale"];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *MEMORY[0x277D42698];
}

- (void)filterBatchWithMinimumDistinctRecipients:(unint64_t)recipients minimumReplyOccurences:(unint64_t)occurences
{
  v35 = *MEMORY[0x277D85DE8];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __89__SGQuickResponsesStore_filterBatchWithMinimumDistinctRecipients_minimumReplyOccurences___block_invoke;
  v30[3] = &unk_278EB7DE0;
  recipientsCopy = recipients;
  occurencesCopy = occurences;
  v31 = @"UPDATE messages SET filtering = false, filtered = true WHERE filtering AND reply IN (SELECT reply FROM messages GROUP BY reply HAVING COUNT(DISTINCT(recipient)) < $recipients OR COUNT(reply) < $replies)";
  [(SGQuickResponsesStore *)self frailWriteTransaction:v30];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__579;
  v28 = __Block_byref_object_dispose__580;
  v29 = objc_opt_new();
  getProfanityLocale = [(SGQuickResponsesStore *)self getProfanityLocale];
  if (!getProfanityLocale)
  {
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    getProfanityLocale = [preferredLanguages firstObject];
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __89__SGQuickResponsesStore_filterBatchWithMinimumDistinctRecipients_minimumReplyOccurences___block_invoke_3;
  v20[3] = &unk_278EB7E30;
  v7 = getProfanityLocale;
  v23 = &v24;
  v21 = v7;
  v22 = @"SELECT rowid, reply FROM messages WHERE filtering";
  [(SGQuickResponsesStore *)self frailReadTransaction:v20];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v25[5];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v34 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __89__SGQuickResponsesStore_filterBatchWithMinimumDistinctRecipients_minimumReplyOccurences___block_invoke_142;
        v14[3] = &unk_278EB7E58;
        v14[4] = v12;
        v15 = @"UPDATE messages SET filtering = false, filtered = true WHERE rowid = $row_id";
        [(SGQuickResponsesStore *)self frailWriteTransaction:v14];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v34 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(&v24, 8);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __89__SGQuickResponsesStore_filterBatchWithMinimumDistinctRecipients_minimumReplyOccurences___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__SGQuickResponsesStore_filterBatchWithMinimumDistinctRecipients_minimumReplyOccurences___block_invoke_2;
  v6[3] = &__block_descriptor_48_e29_v16__0___PASSqliteStatement_8l;
  v7 = *(a1 + 40);
  return [a2 prepAndRunQuery:v4 onPrep:v6 onRow:0 onError:a3];
}

void __89__SGQuickResponsesStore_filterBatchWithMinimumDistinctRecipients_minimumReplyOccurences___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__SGQuickResponsesStore_filterBatchWithMinimumDistinctRecipients_minimumReplyOccurences___block_invoke_4;
  v9[3] = &unk_278EB7E08;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v10 = v7;
  v11 = v8;
  [a2 prepAndRunQuery:v6 onPrep:0 onRow:v9 onError:a3];
}

uint64_t __89__SGQuickResponsesStore_filterBatchWithMinimumDistinctRecipients_minimumReplyOccurences___block_invoke_142(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__SGQuickResponsesStore_filterBatchWithMinimumDistinctRecipients_minimumReplyOccurences___block_invoke_2_143;
  v6[3] = &unk_278EB7B48;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  return [a2 prepAndRunQuery:v4 onPrep:v6 onRow:0 onError:a3];
}

void __89__SGQuickResponsesStore_filterBatchWithMinimumDistinctRecipients_minimumReplyOccurences___block_invoke_2_143(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 bindNamedParam:"$row_id" toInt64:{objc_msgSend(v2, "integerValue")}];
}

uint64_t __89__SGQuickResponsesStore_filterBatchWithMinimumDistinctRecipients_minimumReplyOccurences___block_invoke_4(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"reply"];
  if (!v4)
  {
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_fault_impl(&dword_24799E000, v5, OS_LOG_TYPE_FAULT, "SGQuickreponsesStore: Unexpected null value for custom_responses.reply", v13, 2u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  v6 = [v3 getInt64ForColumnAlias:"rowid"];
  v14[0] = *(a1 + 32);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v8 = [SGQuickResponsesStore isProfane:v4 inLocales:v7];

  if (v8)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
    [v9 addObject:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42690];
}

void __89__SGQuickResponsesStore_filterBatchWithMinimumDistinctRecipients_minimumReplyOccurences___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:"$recipients" toInt64:v3];
  [v4 bindNamedParam:"$replies" toInt64:*(a1 + 40)];
}

- (unint64_t)designateFilteringBatch:(unint64_t)batch
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SGQuickResponsesStore_designateFilteringBatch___block_invoke;
  v5[3] = &unk_278EB7D98;
  v8 = &v10;
  batchCopy = batch;
  v6 = @"UPDATE messages SET filtering = true WHERE NOT filtered ORDER BY sent_at LIMIT $limit";
  v7 = @"SELECT changes();";
  [(SGQuickResponsesStore *)self frailWriteTransaction:v5];
  v3 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v3;
}

void __49__SGQuickResponsesStore_designateFilteringBatch___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__SGQuickResponsesStore_designateFilteringBatch___block_invoke_2;
  v10[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v10[4] = a1[7];
  if ([v5 prepAndRunQuery:v7 onPrep:v10 onRow:0 onError:v6])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__SGQuickResponsesStore_designateFilteringBatch___block_invoke_3;
    v9[3] = &unk_278EB7B70;
    v8 = a1[5];
    v9[4] = a1[6];
    [v5 prepAndRunQuery:v8 onPrep:0 onRow:v9 onError:v6];
  }
}

- (void)recordKnownCustomResponsesInBatchWithEmbedder:(id)embedder compatibilityVersion:(unint64_t)version
{
  embedderCopy = embedder;
  if (![(SGQuickResponsesStore *)self resetDbIfNeededCompareWithCompatibilityVersion:version])
  {
    v7 = objc_opt_new();
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __92__SGQuickResponsesStore_recordKnownCustomResponsesInBatchWithEmbedder_compatibilityVersion___block_invoke;
    v9[3] = &unk_278EB7D70;
    v9[4] = self;
    v10 = v7;
    v11 = @"SELECT m.rowid, m.filtering, m.filtered, m.recipient, m.prompt, m.language, m.reply, m.sent_at, cr.prompt_embedding FROM messages as m, (SELECT reply, language, prompt_embedding from custom_responses) as cr WHERE m.filtering AND NOT m.filtered AND m.reply = cr.reply AND m.language = cr.language";
    v12 = embedderCopy;
    v8 = v7;
    [(SGQuickResponsesStore *)self frailWriteTransaction:v9];
  }
}

void __92__SGQuickResponsesStore_recordKnownCustomResponsesInBatchWithEmbedder_compatibilityVersion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__SGQuickResponsesStore_recordKnownCustomResponsesInBatchWithEmbedder_compatibilityVersion___block_invoke_2;
  v10[3] = &unk_278EB7F20;
  v10[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  v13 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = v5;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  [v9 prepAndRunQuery:v7 onPrep:0 onRow:v10 onError:v8];
}

uint64_t __92__SGQuickResponsesStore_recordKnownCustomResponsesInBatchWithEmbedder_compatibilityVersion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnAlias:"language"];
  if (v4)
  {
    v5 = [v3 getNSStringForColumnAlias:"recipient"];
    if (v5)
    {
      v6 = [v3 getNSStringForColumnAlias:"reply"];
      v7 = [v3 getNSStringForColumnAlias:"prompt"];
      v8 = [v3 getInt64ForColumnAlias:"rowid"];
      [v3 getDoubleForColumnAlias:"sent_at"];
      v10 = v9;
      v11 = [*(a1 + 32) embeddingForPrompt:v7 language:v4 embedder:*(a1 + 56)];
      if (!v11)
      {
        v16 = *MEMORY[0x277D42698];
        goto LABEL_18;
      }

      v12 = [MEMORY[0x277D42648] tupleWithFirst:v6 second:v4];
      v13 = [*(a1 + 40) objectForKeyedSubscript:v12];
      if (v13)
      {
        goto LABEL_7;
      }

      v21 = v8;
      v14 = [v3 getNSDataForColumnAlias:"prompt_embedding"];
      if (v14)
      {
        v15 = v14;
        v13 = [objc_alloc(MEMORY[0x277D41F58]) initWithData:v14];
        [*(a1 + 40) setObject:v13 forKeyedSubscript:v12];

        v8 = v21;
LABEL_7:
        [v13 sumInPlaceWithVector:v11];
        [*(a1 + 32) _incrementCustomResponseInDb:*(a1 + 48) reply:v6 language:v4 embedding:v13 sentAt:v5 recipient:v8 messagesRowId:v10 onError:*(a1 + 64)];
        v16 = *MEMORY[0x277D42690];

LABEL_8:
LABEL_18:

        goto LABEL_19;
      }

      v20 = sgLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *v22 = 0;
        _os_log_fault_impl(&dword_24799E000, v20, OS_LOG_TYPE_FAULT, "SGQuickResponsesStore: Unexpected null value for custom_responses.prompt_embedding", v22, 2u);
      }

      if (!_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        v16 = *MEMORY[0x277D42690];
        goto LABEL_8;
      }
    }

    else
    {
      v18 = sgLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        *v23 = 0;
        _os_log_fault_impl(&dword_24799E000, v18, OS_LOG_TYPE_FAULT, "SGQuickResponsesStore: Unexpected null value for custom_responses.recipient", v23, 2u);
      }

      if (!_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        v16 = *MEMORY[0x277D42690];
LABEL_19:

        goto LABEL_20;
      }
    }

LABEL_25:
    abort();
  }

  v17 = sgLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_24799E000, v17, OS_LOG_TYPE_FAULT, "SGQuickResponsesStore: Unexpected null value for custom_responses.language", buf, 2u);
  }

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
    goto LABEL_25;
  }

  v16 = *MEMORY[0x277D42690];
LABEL_20:

  return v16;
}

- (id)embeddingForPrompt:(id)prompt language:(id)language embedder:(id)embedder
{
  promptCopy = prompt;
  languageCopy = language;
  embedderCopy = embedder;
  v10 = objc_autoreleasePoolPush();
  v11 = embedderCopy[2](embedderCopy, promptCopy, languageCopy);
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277D41F20]) initWithNumbers:v11];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v10);

  return v12;
}

- (BOOL)addingMessageExceedsBatchLimit:(unint64_t)limit tableLimit:(unint64_t)tableLimit message:(id)message language:(id)language prompt:(id)prompt recipientHandle:(id)handle sentAt:(id)at
{
  v51[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  languageCopy = language;
  promptCopy = prompt;
  handleCopy = handle;
  atCopy = at;
  if (![messageCopy length])
  {
    goto LABEL_9;
  }

  if ([promptCopy length] >= 0x119)
  {
    v18 = [promptCopy substringToIndex:140];
    v19 = [promptCopy substringFromIndex:{objc_msgSend(promptCopy, "length") - 140}];
    v20 = [v18 stringByAppendingString:v19];
    v21 = _PASRepairString();

    promptCopy = v21;
  }

  if ([promptCopy length])
  {
    getProfanityLocale = [(SGQuickResponsesStore *)self getProfanityLocale];
    if (!getProfanityLocale)
    {
      preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
      getProfanityLocale = [preferredLanguages firstObject];
    }

    v51[0] = languageCopy;
    v51[1] = getProfanityLocale;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
    v25 = [SGQuickResponsesStore isProfane:messageCopy inLocales:v24];

    if (v25)
    {
      v26 = 0;
    }

    else
    {
      [atCopy timeIntervalSinceReferenceDate];
      v28 = v27;
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __114__SGQuickResponsesStore_addingMessageExceedsBatchLimit_tableLimit_message_language_prompt_recipientHandle_sentAt___block_invoke;
      v44[3] = &unk_278EB7CF8;
      v45 = messageCopy;
      v46 = languageCopy;
      v47 = promptCopy;
      v50 = v28;
      v48 = handleCopy;
      v49 = @"INSERT INTO messages (reply, language, prompt, recipient, sent_at, filtering, filtered) VALUES($reply, $language, $prompt, $recipient, $sent_at, false, false)";
      [(SGQuickResponsesStore *)self frailWriteTransaction:v44];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __114__SGQuickResponsesStore_addingMessageExceedsBatchLimit_tableLimit_message_language_prompt_recipientHandle_sentAt___block_invoke_3;
      v41[3] = &unk_278EB7D20;
      v42 = @"DELETE FROM messages ORDER BY sent_at DESC LIMIT -1 OFFSET $table_limit";
      tableLimitCopy = tableLimit;
      [(SGQuickResponsesStore *)self frailWriteTransaction:v41];
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v40 = 0;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __114__SGQuickResponsesStore_addingMessageExceedsBatchLimit_tableLimit_message_language_prompt_recipientHandle_sentAt___block_invoke_5;
      v34[3] = &unk_278EB7D48;
      v35 = @"SELECT COUNT(ROWID) as c from messages where NOT filtered";
      v36 = &v37;
      [(SGQuickResponsesStore *)self frailReadTransaction:v34];
      v26 = v38[3] > v32;

      _Block_object_dispose(&v37, 8);
    }
  }

  else
  {
LABEL_9:
    v26 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v26;
}

void __114__SGQuickResponsesStore_addingMessageExceedsBatchLimit_tableLimit_message_language_prompt_recipientHandle_sentAt___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __114__SGQuickResponsesStore_addingMessageExceedsBatchLimit_tableLimit_message_language_prompt_recipientHandle_sentAt___block_invoke_2;
  v13[3] = &unk_278EB7CD0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v14 = v12;
  v15 = v11;
  v16 = *(a1 + 72);
  [a2 prepAndRunQuery:v6 onPrep:v13 onRow:0 onError:a3];
}

uint64_t __114__SGQuickResponsesStore_addingMessageExceedsBatchLimit_tableLimit_message_language_prompt_recipientHandle_sentAt___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __114__SGQuickResponsesStore_addingMessageExceedsBatchLimit_tableLimit_message_language_prompt_recipientHandle_sentAt___block_invoke_4;
  v6[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  return [a2 prepAndRunQuery:v4 onPrep:v6 onRow:0 onError:a3];
}

uint64_t __114__SGQuickResponsesStore_addingMessageExceedsBatchLimit_tableLimit_message_language_prompt_recipientHandle_sentAt___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __114__SGQuickResponsesStore_addingMessageExceedsBatchLimit_tableLimit_message_language_prompt_recipientHandle_sentAt___block_invoke_6;
  v6[3] = &unk_278EB7B70;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  return [a2 prepAndRunQuery:v4 onPrep:0 onRow:v6 onError:a3];
}

void __114__SGQuickResponsesStore_addingMessageExceedsBatchLimit_tableLimit_message_language_prompt_recipientHandle_sentAt___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:"$reply" toNSString:v3];
  [v4 bindNamedParam:"$language" toNSString:*(a1 + 40)];
  [v4 bindNamedParam:"$prompt" toNSString:*(a1 + 48)];
  [v4 bindNamedParam:"$recipient" toNSString:*(a1 + 56)];
  [v4 bindNamedParam:"$sent_at" toDouble:*(a1 + 64)];
}

- (void)_incrementCustomResponseInDb:(id)db reply:(id)reply language:(id)language embedding:(id)embedding sentAt:(double)at recipient:(id)recipient messagesRowId:(int64_t)id onError:(id)self0
{
  replyCopy = reply;
  languageCopy = language;
  embeddingCopy = embedding;
  recipientCopy = recipient;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __118__SGQuickResponsesStore__incrementCustomResponseInDb_reply_language_embedding_sentAt_recipient_messagesRowId_onError___block_invoke;
  v34[3] = &unk_278EB7C60;
  v20 = replyCopy;
  v35 = v20;
  v21 = languageCopy;
  v36 = v21;
  v37 = embeddingCopy;
  atCopy = at;
  v22 = embeddingCopy;
  errorCopy = error;
  dbCopy = db;
  [dbCopy prepAndRunQuery:@"UPDATE custom_responses SET prompt_embedding = $prompt_embedding onPrep:decayed_times_used = decayed_times_used + 1 onRow:first_seen = MIN($sent_at onError:{first_seen), last_seen = MAX($sent_at, last_seen) WHERE language = $language AND reply = $reply", v34, 0, errorCopy}];
  v25 = perRecipientCountUpsertQuery;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __118__SGQuickResponsesStore__incrementCustomResponseInDb_reply_language_embedding_sentAt_recipient_messagesRowId_onError___block_invoke_2;
  v30[3] = &unk_278EB7C88;
  v31 = v20;
  v32 = v21;
  v33 = recipientCopy;
  v26 = recipientCopy;
  v27 = v21;
  v28 = v20;
  [dbCopy prepAndRunQuery:v25 onPrep:v30 onRow:0 onError:errorCopy];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __118__SGQuickResponsesStore__incrementCustomResponseInDb_reply_language_embedding_sentAt_recipient_messagesRowId_onError___block_invoke_3;
  v29[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v29[4] = id;
  [dbCopy prepAndRunQuery:markFilteredQuery onPrep:v29 onRow:0 onError:errorCopy];
}

void __118__SGQuickResponsesStore__incrementCustomResponseInDb_reply_language_embedding_sentAt_recipient_messagesRowId_onError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 bindNamedParam:"$reply" toNSString:v3];
  [v5 bindNamedParam:"$language" toNSString:*(a1 + 40)];
  v4 = [*(a1 + 48) data];
  [v5 bindNamedParam:"$prompt_embedding" toNSData:v4];

  [v5 bindNamedParam:"$sent_at" toDouble:*(a1 + 56)];
}

void __118__SGQuickResponsesStore__incrementCustomResponseInDb_reply_language_embedding_sentAt_recipient_messagesRowId_onError___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindNamedParam:"$reply" toNSString:v3];
  [v4 bindNamedParam:"$language" toNSString:a1[5]];
  [v4 bindNamedParam:"$recipient" toNSString:a1[6]];
}

- (void)_addCustomResponseToDb:(id)db reply:(id)reply language:(id)language embedding:(id)embedding sentAt:(double)at recipient:(id)recipient messagesRowId:(int64_t)id onError:(id)self0
{
  replyCopy = reply;
  languageCopy = language;
  embeddingCopy = embedding;
  recipientCopy = recipient;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __112__SGQuickResponsesStore__addCustomResponseToDb_reply_language_embedding_sentAt_recipient_messagesRowId_onError___block_invoke;
  v34[3] = &unk_278EB7C60;
  v20 = replyCopy;
  v35 = v20;
  v21 = languageCopy;
  v36 = v21;
  v37 = embeddingCopy;
  atCopy = at;
  v22 = embeddingCopy;
  errorCopy = error;
  dbCopy = db;
  [dbCopy prepAndRunQuery:@"INSERT INTO custom_responses (reply onPrep:language onRow:prompt_embedding onError:{decayed_times_used, first_seen, last_seen)                       VALUES($reply, $language, $prompt_embedding, 1, $sent_at, $sent_at)", v34, 0, errorCopy}];
  v25 = perRecipientCountUpsertQuery;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __112__SGQuickResponsesStore__addCustomResponseToDb_reply_language_embedding_sentAt_recipient_messagesRowId_onError___block_invoke_2;
  v30[3] = &unk_278EB7C88;
  v31 = v20;
  v32 = v21;
  v33 = recipientCopy;
  v26 = recipientCopy;
  v27 = v21;
  v28 = v20;
  [dbCopy prepAndRunQuery:v25 onPrep:v30 onRow:0 onError:errorCopy];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __112__SGQuickResponsesStore__addCustomResponseToDb_reply_language_embedding_sentAt_recipient_messagesRowId_onError___block_invoke_3;
  v29[3] = &__block_descriptor_40_e29_v16__0___PASSqliteStatement_8l;
  v29[4] = id;
  [dbCopy prepAndRunQuery:markFilteredQuery onPrep:v29 onRow:0 onError:errorCopy];
}

void __112__SGQuickResponsesStore__addCustomResponseToDb_reply_language_embedding_sentAt_recipient_messagesRowId_onError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 bindNamedParam:"$reply" toNSString:v3];
  [v5 bindNamedParam:"$language" toNSString:*(a1 + 40)];
  v4 = [*(a1 + 48) data];
  [v5 bindNamedParam:"$prompt_embedding" toNSData:v4];

  [v5 bindNamedParam:"$sent_at" toDouble:*(a1 + 56)];
}

void __112__SGQuickResponsesStore__addCustomResponseToDb_reply_language_embedding_sentAt_recipient_messagesRowId_onError___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 bindNamedParam:"$reply" toNSString:v3];
  [v4 bindNamedParam:"$language" toNSString:a1[5]];
  [v4 bindNamedParam:"$recipient" toNSString:a1[6]];
}

- (void)addWrittenToResponse:(id)response language:(id)language isMatch:(BOOL)match
{
  languageCopy = language;
  v9 = [SGQuickResponsesReplies normalizeReplyText:response];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SGQuickResponsesStore_addWrittenToResponse_language_isMatch___block_invoke;
  v12[3] = &unk_278EB7C38;
  matchCopy = match;
  v13 = languageCopy;
  v14 = v9;
  v15 = @"INSERT INTO responses (lang_response, matched) VALUES($lang_response,1) ON CONFLICT(lang_response) DO UPDATE SET matched=matched+1";
  v16 = @"INSERT INTO responses_totals (language, matched) VALUES ($language,1) ON CONFLICT(language) DO UPDATE SET matched=matched+1";
  v17 = @"INSERT INTO responses_totals (language, unmatched) VALUES ($language,1) ON CONFLICT(language) DO UPDATE SET unmatched=unmatched+1";
  v10 = v9;
  v11 = languageCopy;
  [(SGQuickResponsesStore *)self frailWriteTransaction:v12];
}

void __63__SGQuickResponsesStore_addWrittenToResponse_language_isMatch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 72) != 1)
  {
    v10 = 64;
LABEL_7:
    v11 = *(a1 + v10);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__SGQuickResponsesStore_addWrittenToResponse_language_isMatch___block_invoke_3;
    v12[3] = &unk_278EB7B48;
    v13 = *(a1 + 32);
    [v5 prepAndRunQuery:v11 onPrep:v12 onRow:0 onError:v6];

    goto LABEL_8;
  }

  v7 = [SGQuickResponsesStore keyWithLanguage:*(a1 + 32) andResponse:*(a1 + 40)];
  v8 = *(a1 + 48);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__SGQuickResponsesStore_addWrittenToResponse_language_isMatch___block_invoke_2;
  v14[3] = &unk_278EB7B48;
  v15 = v7;
  v9 = v7;
  LODWORD(v8) = [v5 prepAndRunQuery:v8 onPrep:v14 onRow:0 onError:v6];

  if (v8)
  {
    v10 = 64;
    if (*(a1 + 72))
    {
      v10 = 56;
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)addSelectedToResponse:(id)response language:(id)language
{
  languageCopy = language;
  v7 = [SGQuickResponsesReplies normalizeReplyText:response];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__SGQuickResponsesStore_addSelectedToResponse_language___block_invoke;
  v10[3] = &unk_278EB7C10;
  v11 = languageCopy;
  v12 = v7;
  v13 = @"INSERT INTO responses (lang_response, selected) VALUES($lang_response,1) ON CONFLICT(lang_response) DO UPDATE SET selected=selected+1";
  v14 = @"INSERT INTO responses_totals (language, selected) VALUES ($language,1) ON CONFLICT(language) DO UPDATE SET selected=selected+1";
  v8 = v7;
  v9 = languageCopy;
  [(SGQuickResponsesStore *)self frailWriteTransaction:v10];
}

void __56__SGQuickResponsesStore_addSelectedToResponse_language___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [SGQuickResponsesStore keyWithLanguage:*(a1 + 32) andResponse:*(a1 + 40)];
  v8 = *(a1 + 48);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SGQuickResponsesStore_addSelectedToResponse_language___block_invoke_2;
  v13[3] = &unk_278EB7B48;
  v9 = v7;
  v14 = v9;
  LODWORD(v8) = [v5 prepAndRunQuery:v8 onPrep:v13 onRow:0 onError:v6];

  if (v8)
  {
    v10 = *(a1 + 56);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__SGQuickResponsesStore_addSelectedToResponse_language___block_invoke_3;
    v11[3] = &unk_278EB7B48;
    v12 = *(a1 + 32);
    [v5 prepAndRunQuery:v10 onPrep:v11 onRow:0 onError:v6];
  }
}

- (void)addDisplayedToResponses:(id)responses language:(id)language
{
  languageCopy = language;
  v7 = [responses _pas_mappedArrayWithTransform:&__block_literal_global_54];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__SGQuickResponsesStore_addDisplayedToResponses_language___block_invoke_2;
  v10[3] = &unk_278EB7C10;
  v11 = v7;
  v12 = languageCopy;
  v13 = @"INSERT INTO responses (lang_response, displayed) VALUES($lang_response,1) ON CONFLICT(lang_response) DO UPDATE SET displayed=displayed+1";
  v14 = @"INSERT INTO responses_totals (language, opportunities, displayed) VALUES ($language,1,$count) ON CONFLICT(language) DO UPDATE SET opportunities=opportunities+1, displayed=displayed+$count";
  v8 = languageCopy;
  v9 = v7;
  [(SGQuickResponsesStore *)self frailWriteTransaction:v10];
}

void __58__SGQuickResponsesStore_addDisplayedToResponses_language___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v23 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [SGQuickResponsesStore keyWithLanguage:*(a1 + 40) andResponse:*(*(&v22 + 1) + 8 * v11)];
      v13 = *(a1 + 48);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __58__SGQuickResponsesStore_addDisplayedToResponses_language___block_invoke_3;
      v20[3] = &unk_278EB7B48;
      v21 = v12;
      v14 = v12;
      LODWORD(v13) = [v5 prepAndRunQuery:v13 onPrep:v20 onRow:0 onError:v6];

      if (!v13)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v15 = *(a1 + 56);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__SGQuickResponsesStore_addDisplayedToResponses_language___block_invoke_4;
    v17[3] = &unk_278EB7BE8;
    v18 = *(a1 + 40);
    v19 = *(a1 + 32);
    [v5 prepAndRunQuery:v15 onPrep:v17 onRow:0 onError:v6];

    v7 = v18;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __58__SGQuickResponsesStore_addDisplayedToResponses_language___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:"$language" toNSString:v3];
  [v4 bindNamedParam:"$count" toInt64:{objc_msgSend(*(a1 + 40), "count")}];
}

- (id)_recordsForResponses:(id)responses language:(id)language
{
  responsesCopy = responses;
  languageCopy = language;
  v8 = objc_opt_new();
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __55__SGQuickResponsesStore__recordsForResponses_language___block_invoke;
  v18 = &unk_278EB7BC0;
  v9 = responsesCopy;
  v19 = v9;
  v10 = languageCopy;
  v20 = v10;
  v21 = @"SELECT * FROM responses WHERE lang_response=$lang_response";
  v11 = v8;
  v24 = &v45;
  v25 = &v41;
  v26 = &v37;
  v27 = &v33;
  v28 = &v29;
  v22 = v11;
  v23 = @"SELECT * FROM responses_totals WHERE language=$language";
  if ([(SGQuickResponsesStore *)self frailReadTransaction:&v15])
  {
    v12 = [SGQuickResponsesRecords alloc];
    v13 = [(SGQuickResponsesRecords *)v12 initWithReplyRecords:v11 totalOpportunities:v46[3] totalDisplayed:v42[3] totalSelected:v38[3] totalMatched:v34[3] totalUnmatched:v30[3], v15, v16, v17, v18, v19, v20, v21];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  return v13;
}

void __55__SGQuickResponsesStore__recordsForResponses_language___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v20 = a2;
  v21 = a3;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v5)
  {
    v19 = *v38;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v37 + 1) + 8 * v6);
        v31 = 0;
        v32 = &v31;
        v33 = 0x3032000000;
        v34 = __Block_byref_object_copy__579;
        v35 = __Block_byref_object_dispose__580;
        v36 = 0;
        v8 = [SGQuickResponsesStore keyWithLanguage:*(a1 + 40) andResponse:v7];
        v9 = *(a1 + 48);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __55__SGQuickResponsesStore__recordsForResponses_language___block_invoke_40;
        v29[3] = &unk_278EB7B48;
        v10 = v8;
        v30 = v10;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __55__SGQuickResponsesStore__recordsForResponses_language___block_invoke_2;
        v28[3] = &unk_278EB7B70;
        v28[4] = &v31;
        LOBYTE(v9) = [v20 prepAndRunQuery:v9 onPrep:v29 onRow:v28 onError:v21];

        if ((v9 & 1) == 0)
        {

          _Block_object_dispose(&v31, 8);
          v16 = obj;
          goto LABEL_13;
        }

        v11 = v32[5];
        if (!v11)
        {
          v12 = [[SGQuickResponsesReplyRecord alloc] initWithDisplayed:0.0 selected:0.0 matched:0.0];
          v13 = v32[5];
          v32[5] = v12;

          v11 = v32[5];
        }

        [*(a1 + 56) addObject:v11];

        _Block_object_dispose(&v31, 8);
        ++v6;
      }

      while (v5 != v6);
      v5 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14 = *(a1 + 64);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __55__SGQuickResponsesStore__recordsForResponses_language___block_invoke_3;
  v26[3] = &unk_278EB7B48;
  v27 = *(a1 + 40);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __55__SGQuickResponsesStore__recordsForResponses_language___block_invoke_4;
  v22[3] = &unk_278EB7B98;
  v15 = *(a1 + 88);
  v23 = *(a1 + 72);
  v24 = v15;
  v25 = *(a1 + 104);
  [v20 prepAndRunQuery:v14 onPrep:v26 onRow:v22 onError:v21];
  v16 = v27;
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __55__SGQuickResponsesStore__recordsForResponses_language___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getInt64ForColumnName:"displayed" table:0];
  v5 = [v3 getInt64ForColumnName:"selected" table:0];
  v6 = [v3 getInt64ForColumnName:"matched" table:0];

  v7 = [[SGQuickResponsesReplyRecord alloc] initWithDisplayed:v4 selected:v5 matched:v6];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *MEMORY[0x277D42698];
}

uint64_t __55__SGQuickResponsesStore__recordsForResponses_language___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  *(*(a1[4] + 8) + 24) = [v3 getInt64ForColumnName:"opportunities" table:0];
  *(*(a1[5] + 8) + 24) = [v3 getInt64ForColumnName:"displayed" table:0];
  *(*(a1[6] + 8) + 24) = [v3 getInt64ForColumnName:"selected" table:0];
  *(*(a1[7] + 8) + 24) = [v3 getInt64ForColumnName:"matched" table:0];
  v4 = [v3 getInt64ForColumnName:"unmatched" table:0];

  *(*(a1[8] + 8) + 24) = v4;
  return *MEMORY[0x277D42698];
}

- (id)recordsForResponsesInternal:(id)internal language:(id)language
{
  languageCopy = language;
  v7 = [internal _pas_mappedArrayWithTransform:&__block_literal_global_32];
  v8 = [(SGQuickResponsesStore *)self _recordsForResponses:v7 language:languageCopy];

  return v8;
}

- (id)recordsForResponses:(id)responses language:(id)language
{
  languageCopy = language;
  v7 = [responses _pas_mappedArrayWithTransform:&__block_literal_global_29];
  v8 = [(SGQuickResponsesStore *)self _recordsForResponses:v7 language:languageCopy];

  return v8;
}

- (BOOL)frailWriteTransaction:(id)transaction
{
  transactionCopy = transaction;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = objc_autoreleasePoolPush();
  readerWriter = self->_readerWriter;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SGQuickResponsesStore_frailWriteTransaction___block_invoke;
  v9[3] = &unk_278EB7B00;
  v11 = &v12;
  v7 = transactionCopy;
  v10 = v7;
  [(_PASLock *)readerWriter runWithLockAcquired:v9];

  objc_autoreleasePoolPop(v5);
  LOBYTE(v5) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v5;
}

void __47__SGQuickResponsesStore_frailWriteTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getObject];
  v5 = [v4 db];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__SGQuickResponsesStore_frailWriteTransaction___block_invoke_2;
    v8[3] = &unk_278EB7AD8;
    v10 = *(a1 + 32);
    v6 = v5;
    v7 = *(a1 + 40);
    v9 = v6;
    v11 = v7;
    [v6 frailWriteTransaction:v8];
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      [v3 destroyCachedObject];
    }
  }
}

uint64_t __47__SGQuickResponsesStore_frailWriteTransaction___block_invoke_2(void *a1)
{
  v2 = a1[5];
  v3 = a1[4];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __47__SGQuickResponsesStore_frailWriteTransaction___block_invoke_3;
  v8 = &unk_278EB7AB0;
  v9 = a1[6];
  (*(v2 + 16))();
  return *(*(a1[6] + 8) + 24);
}

uint64_t __47__SGQuickResponsesStore_frailWriteTransaction___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v6 = [a2 userInfo];
    v7 = 138412290;
    v8 = v6;
    _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGQuickResponsesStore write error: %@", &v7, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (BOOL)frailReadTransaction:(id)transaction
{
  transactionCopy = transaction;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = objc_autoreleasePoolPush();
  readerWriter = self->_readerWriter;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__SGQuickResponsesStore_frailReadTransaction___block_invoke;
  v9[3] = &unk_278EB7B00;
  v11 = &v12;
  v7 = transactionCopy;
  v10 = v7;
  [(_PASLock *)readerWriter runWithLockAcquired:v9];

  objc_autoreleasePoolPop(v5);
  LOBYTE(v5) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v5;
}

void __46__SGQuickResponsesStore_frailReadTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getObject];
  v5 = [v4 db];

  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__SGQuickResponsesStore_frailReadTransaction___block_invoke_2;
    v8[3] = &unk_278EB7AD8;
    v10 = *(a1 + 32);
    v6 = v5;
    v7 = *(a1 + 40);
    v9 = v6;
    v11 = v7;
    [v6 frailReadTransaction:v8];
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      [v3 destroyCachedObject];
    }
  }
}

uint64_t __46__SGQuickResponsesStore_frailReadTransaction___block_invoke_2(void *a1)
{
  v2 = a1[5];
  v3 = a1[4];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __46__SGQuickResponsesStore_frailReadTransaction___block_invoke_3;
  v8 = &unk_278EB7AB0;
  v9 = a1[6];
  (*(v2 + 16))();
  return *(*(a1[6] + 8) + 24);
}

uint64_t __46__SGQuickResponsesStore_frailReadTransaction___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v6 = [a2 userInfo];
    v7 = 138412290;
    v8 = v6;
    _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "SGQuickResponsesStore read error: %@", &v7, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v4 = *MEMORY[0x277D85DE8];
  return *MEMORY[0x277D42698];
}

- (id)initInDirectory:(id)directory inMemory:(BOOL)memory withMigration:(BOOL)migration forTools:(BOOL)tools
{
  directoryCopy = directory;
  v26.receiver = self;
  v26.super_class = SGQuickResponsesStore;
  v11 = [(SGQuickResponsesStore *)&v26 init];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277D425F8]);
    v13 = [SGLazyInit alloc];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __73__SGQuickResponsesStore_initInDirectory_inMemory_withMigration_forTools___block_invoke;
    v21 = &unk_278EB7A68;
    v22 = directoryCopy;
    memoryCopy = memory;
    migrationCopy = migration;
    toolsCopy = tools;
    v14 = [(SGLazyInit *)v13 initWithInitializer:&v18 destructor:&__block_literal_global_24];
    v15 = [v12 initWithGuardedData:{v14, v18, v19, v20, v21}];
    readerWriter = v11->_readerWriter;
    v11->_readerWriter = v15;
  }

  return v11;
}

id __73__SGQuickResponsesStore_initInDirectory_inMemory_withMigration_forTools___block_invoke(uint64_t a1)
{
  v1 = [[SGQuickResponsesDatabase alloc] initInDirectory:*(a1 + 32) inMemory:*(a1 + 40) withMigration:*(a1 + 41) forTools:*(a1 + 42)];

  return v1;
}

void __73__SGQuickResponsesStore_initInDirectory_inMemory_withMigration_forTools___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 db];
  [v2 closePermanently];
}

+ (id)keyWithLanguage:(id)language andResponse:(id)response
{
  responseCopy = response;
  languageCopy = language;
  v7 = [languageCopy length];
  v8 = [@"|" length];
  v9 = v7 + [responseCopy length];
  v10 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:v8 + v9];
  [v10 appendString:languageCopy];

  [v10 appendString:@"|"];
  [v10 appendString:responseCopy];

  return v10;
}

+ (BOOL)isProfane:(id)profane inLocales:(id)locales
{
  v18 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  v6 = [SGTokenizerML tokenize:profane];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = localesCopy;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([SGLexiconML profanityInTokens:v6 forLocaleIdentifier:*(*(&v13 + 1) + 8 * i), v13])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)instanceInMemory
{
  v2 = [[SGQuickResponsesStore alloc] initInDirectory:0 inMemory:1 withMigration:1];

  return v2;
}

+ (SGQuickResponsesStore)sharedInstance
{
  if (sharedInstance__pasOnceToken3 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken3, &__block_literal_global_17);
  }

  v3 = sharedInstance__pasExprOnceResult_758;

  return v3;
}

void __39__SGQuickResponsesStore_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[SGQuickResponsesStore alloc] initInDirectory:0 inMemory:0 withMigration:1];
  v2 = sharedInstance__pasExprOnceResult_758;
  sharedInstance__pasExprOnceResult_758 = v1;

  objc_autoreleasePoolPop(v0);
}

+ (void)warmup
{
  v4 = +[SGQuickResponsesStore sharedInstance];
  v6 = v4;
  if (!v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesStore.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"store"}];

    v4 = 0;
  }

  [*(v4 + 8) runWithLockAcquired:&__block_literal_global_760];
}

void __31__SGQuickResponsesStore_warmup__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 getObject];
  v3 = [v2 db];

  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Quick Responses: failed to initialize database while warming up store", v4, 2u);
  }
}

@end