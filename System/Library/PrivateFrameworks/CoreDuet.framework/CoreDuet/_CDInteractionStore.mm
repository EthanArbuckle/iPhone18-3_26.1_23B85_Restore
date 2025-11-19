@interface _CDInteractionStore
+ (id)predicateFilteringUsernameForPredicate:(id)a3;
- (BOOL)_deleteMetadataForKey:(id)a3 moc:(id)a4;
- (BOOL)deleteStorage;
- (BOOL)openAndCheckIfReadable;
- (BOOL)recordInteraction:(id)a3;
- (BOOL)recordInteractionsBatch:(id)a3 error:(id *)a4;
- (BOOL)recordVersionNumber:(int64_t)a3;
- (BOOL)updateInteractionsBatch:(id)a3 error:(id *)a4;
- (id)anonymizedCopyToDirectory:(id)a3 salt:(id)a4;
- (id)appendMissingInformationForRecord:(id)a3 fromContact:(id)a4 cacheUpdateRequired:(BOOL *)a5;
- (id)batchFetchExistingAttachmentRecords:(id)a3 context:(id)a4 error:(id *)a5;
- (id)batchFetchExistingContactRecords:(id)a3 context:(id)a4 error:(id *)a5;
- (id)batchFetchExistingInteractionsWithUUIDs:(id)a3 context:(id)a4 error:(id *)a5;
- (id)batchFetchExistingKeywordRecords:(id)a3 context:(id)a4 error:(id *)a5;
- (id)conversationsWithInteractions;
- (id)createAttachmentFromRecord:(id)a3;
- (id)createInteractionFromRecord:(id)a3;
- (id)createInteractionRecord:(id)a3 context:(id)a4 keywordCache:(id)a5 attachmentCache:(id)a6 contactCache:(id)a7 error:(id *)a8;
- (id)dateFromTimeIntervalSinceRef:(double)a3;
- (id)errorForException:(id)a3;
- (id)fetchOrCreateAttachmentRecord:(id)a3 context:(id)a4 cache:(id)a5 error:(id *)a6;
- (id)fetchOrCreateContactRecord:(id)a3 context:(id)a4 cache:(id)a5 error:(id *)a6;
- (id)fetchOrCreateKeywordRecord:(id)a3 context:(id)a4 cache:(id)a5 error:(id *)a6;
- (id)getContactForRecord:(id)a3;
- (id)histogramContactInteractionsUsingPredicate:(id)a3 withLimit:(unint64_t)a4;
- (id)interactionCountPerMechanism;
- (id)kMostRecentConversationsWithLimit:(unint64_t)a3 predicate:(id)a4;
- (id)metadataDictionary;
- (id)metadataForKey:(id)a3;
- (id)predicateForInteractions:(id)a3;
- (id)queryContactInteractionsUsingPredicate:(id)a3 withLimit:(unint64_t)a4;
- (id)queryContactsUsingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 error:(id *)a6;
- (id)queryInteractionsUsingPredicate:(id)a3 matchingNameTokens:(id)a4 sortDescriptors:(id)a5 limit:(unint64_t)a6 error:(id *)a7;
- (id)queryInteractionsUsingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 objectIDs:(id *)a7 error:(id *)a8;
- (id)queryInteractionsUsingPredicate:(id)a3 withLimit:(unint64_t)a4;
- (id)recipientArrayWithMostRecentSenderFirstFromIncomingInteraction:(id)a3 outgoingInteraction:(id)a4;
- (id)usersWithInteractions;
- (int64_t)queryVersionNumber;
- (unint64_t)countContactsUsingPredicate:(id)a3 error:(id *)a4;
- (unint64_t)countInteractionsUsingPredicate:(id)a3 error:(id *)a4;
- (unint64_t)deleteInteractionsMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 debuggingReason:(id)a6 error:(id *)a7;
- (unint64_t)deleteInteractionsOlderThanDate:(id)a3 debuggingReason:(id)a4 limit:(unint64_t)a5;
- (unint64_t)deleteInteractionsWithBundleId:(id)a3 account:(id)a4 error:(id *)a5;
- (unint64_t)deleteInteractionsWithBundleId:(id)a3 domainIdentifier:(id)a4 error:(id *)a5;
- (unint64_t)deleteInteractionsWithBundleId:(id)a3 domainIdentifiers:(id)a4 error:(id *)a5;
- (unint64_t)deleteInteractionsWithBundleId:(id)a3 error:(id *)a4;
- (unint64_t)deleteOldInteractionsIfNeededToLimitTotalNumber:(unint64_t)a3 limit:(unint64_t)a4;
- (unint64_t)deleteUnreferencedContacts;
- (unint64_t)deleteUnreferencedKeywords;
- (void)anonymizeAttachmentsWithSalt:(id)a3;
- (void)anonymizeContactsWithSalt:(id)a3;
- (void)anonymizeInteractionsWithSalt:(id)a3;
- (void)anonymizeKeywordsWithSalt:(id)a3;
- (void)anonymizeWithSalt:(id)a3;
- (void)closeStorage;
- (void)countContactsUsingPredicate:(id)a3 completionHandler:(id)a4;
- (void)countInteractionsUsingPredicate:(id)a3 completionHandler:(id)a4;
- (void)deleteInteractionsMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 debuggingReason:(id)a6 completionHandler:(id)a7;
- (void)deleteInteractionsWithBundleId:(id)a3 account:(id)a4 completionHandler:(id)a5;
- (void)deleteInteractionsWithBundleId:(id)a3 completionHandler:(id)a4;
- (void)deleteInteractionsWithBundleId:(id)a3 domainIdentifier:(id)a4 completionHandler:(id)a5;
- (void)deleteInteractionsWithBundleId:(id)a3 domainIdentifiers:(id)a4 completionHandler:(id)a5;
- (void)exitMaintenanceMode;
- (void)fillWithoutRelationshipsInteractionRecord:(id)a3 fromInteraction:(id)a4;
- (void)iterInteractionRecordsWithPredicate:(id)a3 fetchLimit:(unint64_t)a4 sortAscending:(BOOL)a5 updateTelemetry:(id)a6 withBlock:(id)a7;
- (void)migrateIMessageDomainIdentifiers;
- (void)queryContactsUsingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6;
- (void)queryInteractionsUsingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6;
- (void)recordInteractions:(id)a3 completionHandler:(id)a4;
- (void)runHighPriorityDBBlock:(id)a3;
- (void)runLowPriorityDBPreemptableBlock:(id)a3;
- (void)setMetadata:(id)a3 forKey:(id)a4;
- (void)updateCachedStatsForContactRecord:(id)a3 isSender:(BOOL)a4 withInteraction:(id)a5;
@end

@implementation _CDInteractionStore

- (void)runHighPriorityDBBlock:(id)a3
{
  v4 = a3;
  dispatch_group_enter(self->_waitingForDB);
  v4[2]();
  dispatch_group_leave(self->_waitingForDB);
}

- (void)runLowPriorityDBPreemptableBlock:(id)a3
{
  v4 = a3;
  do
  {
    dispatch_group_wait(self->_waitingForDB, 0xFFFFFFFFFFFFFFFFLL);
  }

  while (v4[2]());
}

- (id)fetchOrCreateKeywordRecord:(id)a3 context:(id)a4 cache:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__10;
    v36 = __Block_byref_object_dispose__10;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__10;
    v30 = __Block_byref_object_dispose__10;
    v31 = 0;
    v13 = [[_CDMemoryUsageInterval alloc] initWithName:@"fetchOrCreateKeywordRecord" client:0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70___CDInteractionStore_fetchOrCreateKeywordRecord_context_cache_error___block_invoke;
    v18[3] = &unk_1E7368830;
    v14 = v13;
    v19 = v14;
    v20 = v12;
    v21 = v10;
    v24 = &v32;
    v22 = v11;
    v23 = self;
    v25 = &v26;
    [v22 performWithOptions:4 andBlock:v18];
    [(_CDMemoryUsageInterval *)v14 end];
    if (a6)
    {
      v15 = v27[5];
      if (v15)
      {
        *a6 = v15;
      }
    }

    v16 = v33[5];

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)fetchOrCreateAttachmentRecord:(id)a3 context:(id)a4 cache:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__10;
    v36 = __Block_byref_object_dispose__10;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__10;
    v30 = __Block_byref_object_dispose__10;
    v31 = 0;
    v13 = [[_CDMemoryUsageInterval alloc] initWithName:@"fetchOrCreateAttachmentRecord" client:0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __73___CDInteractionStore_fetchOrCreateAttachmentRecord_context_cache_error___block_invoke;
    v18[3] = &unk_1E7368830;
    v14 = v13;
    v19 = v14;
    v20 = v12;
    v21 = v10;
    v24 = &v32;
    v22 = v11;
    v23 = self;
    v25 = &v26;
    [v22 performWithOptions:4 andBlock:v18];
    [(_CDMemoryUsageInterval *)v14 end];
    if (a6)
    {
      v15 = v27[5];
      if (v15)
      {
        *a6 = v15;
      }
    }

    v16 = v33[5];

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)fetchOrCreateContactRecord:(id)a3 context:(id)a4 cache:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__10;
    v36 = __Block_byref_object_dispose__10;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__10;
    v30 = __Block_byref_object_dispose__10;
    v31 = 0;
    v13 = [[_CDMemoryUsageInterval alloc] initWithName:@"fetchOrCreateContactRecord" client:0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __70___CDInteractionStore_fetchOrCreateContactRecord_context_cache_error___block_invoke;
    v18[3] = &unk_1E7368830;
    v14 = v13;
    v19 = v14;
    v20 = v12;
    v21 = v10;
    v24 = &v32;
    v22 = v11;
    v23 = self;
    v25 = &v26;
    [v22 performWithOptions:4 andBlock:v18];
    [(_CDMemoryUsageInterval *)v14 end];
    if (a6)
    {
      v15 = v27[5];
      if (v15)
      {
        *a6 = v15;
      }
    }

    v16 = v33[5];

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)appendMissingInformationForRecord:(id)a3 fromContact:(id)a4 cacheUpdateRequired:(BOOL *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 identifier];
  if (v9)
  {
  }

  else
  {
    v10 = [v8 identifier];

    if (v10)
    {
      v11 = [v8 identifier];
      [v7 setIdentifier:v11];

      *a5 = 1;
    }
  }

  v12 = [v7 customIdentifier];
  if (v12)
  {
  }

  else
  {
    v13 = [v8 customIdentifier];

    if (v13)
    {
      v14 = [v8 customIdentifier];
      [v7 setCustomIdentifier:v14];

      *a5 = 1;
    }
  }

  v15 = [v7 personId];
  if (v15)
  {
  }

  else
  {
    v16 = [v8 personId];

    if (v16)
    {
      v17 = [v8 personId];
      [v7 setPersonId:v17];

      *a5 = 1;
    }
  }

  v18 = [v7 displayName];
  if (v18)
  {
  }

  else
  {
    v19 = [v8 displayName];

    if (v19)
    {
      v20 = [v8 displayName];
      [v7 setDisplayName:v20];

      *a5 = 1;
    }
  }

  v21 = [v7 displayImageURL];
  if (v21)
  {
  }

  else
  {
    v22 = [v8 displayImageURL];

    if (v22)
    {
      v23 = [v8 displayImageURL];
      [v7 setDisplayImageURL:v23];

      *a5 = 1;
    }
  }

  return v7;
}

- (id)batchFetchExistingKeywordRecords:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__10;
  v34 = __Block_byref_object_dispose__10;
  v35 = 0;
  v11 = [[_CDMemoryUsageInterval alloc] initWithName:@"batchFetchExistingKeywordRecords" client:0];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __70___CDInteractionStore_batchFetchExistingKeywordRecords_context_error___block_invoke;
  v23 = &unk_1E7368858;
  v12 = v11;
  v24 = v12;
  v13 = v9;
  v25 = v13;
  v14 = v8;
  v26 = v14;
  v27 = self;
  v29 = &v30;
  v15 = v10;
  v28 = v15;
  [v13 performWithOptions:4 andBlock:&v20];
  [(_CDMemoryUsageInterval *)v12 end:v20];
  if (a5)
  {
    v16 = v31[5];
    if (v16)
    {
      *a5 = v16;
    }
  }

  v17 = v28;
  v18 = v15;

  _Block_object_dispose(&v30, 8);

  return v18;
}

- (id)errorForException:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A578];
  v4 = [a3 reason];
  v5 = v4;
  v6 = @"Exception Caught";
  if (v4)
  {
    v6 = v4;
  }

  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v3 errorWithDomain:@"com.apple.coreduet.CDInteractionStore" code:0 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)batchFetchExistingAttachmentRecords:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__10;
  v34 = __Block_byref_object_dispose__10;
  v35 = 0;
  v11 = [[_CDMemoryUsageInterval alloc] initWithName:@"batchFetchExistingAttachmentRecords" client:0];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __73___CDInteractionStore_batchFetchExistingAttachmentRecords_context_error___block_invoke;
  v23 = &unk_1E7368858;
  v12 = v11;
  v24 = v12;
  v13 = v9;
  v25 = v13;
  v14 = v8;
  v26 = v14;
  v27 = self;
  v29 = &v30;
  v15 = v10;
  v28 = v15;
  [v13 performWithOptions:4 andBlock:&v20];
  [(_CDMemoryUsageInterval *)v12 end:v20];
  if (a5)
  {
    v16 = v31[5];
    if (v16)
    {
      *a5 = v16;
    }
  }

  v17 = v28;
  v18 = v15;

  _Block_object_dispose(&v30, 8);

  return v18;
}

- (id)batchFetchExistingContactRecords:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__10;
  v34 = __Block_byref_object_dispose__10;
  v35 = 0;
  v11 = [[_CDMemoryUsageInterval alloc] initWithName:@"batchFetchExistingContactRecords" client:0];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __70___CDInteractionStore_batchFetchExistingContactRecords_context_error___block_invoke;
  v23 = &unk_1E7368858;
  v12 = v11;
  v24 = v12;
  v13 = v9;
  v25 = v13;
  v14 = v8;
  v26 = v14;
  v27 = self;
  v29 = &v30;
  v15 = v10;
  v28 = v15;
  [v13 performWithOptions:4 andBlock:&v20];
  [(_CDMemoryUsageInterval *)v12 end:v20];
  if (a5)
  {
    v16 = v31[5];
    if (v16)
    {
      *a5 = v16;
    }
  }

  v17 = v28;
  v18 = v15;

  _Block_object_dispose(&v30, 8);

  return v18;
}

- (id)batchFetchExistingInteractionsWithUUIDs:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__10;
  v34 = __Block_byref_object_dispose__10;
  v35 = 0;
  v11 = [[_CDMemoryUsageInterval alloc] initWithName:@"batchFetchExistingInteractionsWithUUIDs" client:0];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __77___CDInteractionStore_batchFetchExistingInteractionsWithUUIDs_context_error___block_invoke;
  v23 = &unk_1E7368858;
  v12 = v11;
  v24 = v12;
  v13 = v9;
  v25 = v13;
  v14 = v8;
  v26 = v14;
  v27 = self;
  v29 = &v30;
  v15 = v10;
  v28 = v15;
  [v13 performWithOptions:4 andBlock:&v20];
  [(_CDMemoryUsageInterval *)v12 end:v20];
  if (a5)
  {
    v16 = v31[5];
    if (v16)
    {
      *a5 = v16;
    }
  }

  v17 = v28;
  v18 = v15;

  _Block_object_dispose(&v30, 8);

  return v18;
}

- (void)fillWithoutRelationshipsInteractionRecord:(id)a3 fromInteraction:(id)a4
{
  v5 = a4;
  v21 = a3;
  v6 = [v5 startDate];
  [v6 timeIntervalSinceReferenceDate];
  [v21 setStartDate:?];

  v7 = [v5 updateDate];
  [v7 timeIntervalSinceReferenceDate];
  [v21 setUpdateDate:?];

  v8 = [v5 endDate];
  [v8 timeIntervalSinceReferenceDate];
  [v21 setEndDate:?];

  v9 = [v5 uuid];
  [v21 setUuid:v9];

  v10 = [v5 locationUUID];
  [v21 setLocationUUID:v10];

  [v21 setMechanism:{objc_msgSend(v5, "mechanism")}];
  [v21 setDirection:{objc_msgSend(v5, "direction")}];
  [v21 setIsResponse:{objc_msgSend(v5, "isResponse")}];
  v11 = [v5 bundleId];
  [v21 setBundleId:v11];

  v12 = [v5 targetBundleId];
  [v21 setTargetBundleId:v12];

  v13 = [v5 groupName];
  [v21 setGroupName:v13];

  v14 = [v5 contentURL];
  v15 = [v14 absoluteString];
  [v21 setContentURL:v15];

  v16 = [v5 derivedIntentIdentifier];
  [v21 setDerivedIntentIdentifier:v16];

  v17 = [v5 domainIdentifier];
  [v21 setDomainIdentifier:v17];

  v18 = [v5 account];
  [v21 setAccount:v18];

  v19 = [v5 recipients];
  [v21 setRecipientCount:{objc_msgSend(v19, "count")}];

  [v21 setMailShareSheetDeletionCandidate:{objc_msgSend(v5, "mailShareSheetDeletionCandidate")}];
  v20 = [v5 selfParticipantStatus];

  [v21 setSelfParticipantStatus:v20];
}

- (void)updateCachedStatsForContactRecord:(id)a3 isSender:(BOOL)a4 withInteraction:(id)a5
{
  v6 = a4;
  v20 = a3;
  v7 = a5;
  if (v20 && v7)
  {
    v8 = [v7 startDate];
    [v8 timeIntervalSinceReferenceDate];
    v10 = v9;

    if ([v7 direction])
    {
      if ([v7 direction] == 1 && !v6)
      {
        [v20 setOutgoingRecipientCount:{objc_msgSend(v20, "outgoingRecipientCount") + 1}];
        [v20 lastOutgoingRecipientDate];
        if (v11 < v10)
        {
          [v20 setLastOutgoingRecipientDate:v10];
        }

        [v20 firstOutgoingRecipientDate];
        if (v12 == 0.0 || ([v20 firstOutgoingRecipientDate], v13 > v10))
        {
          [v20 setFirstOutgoingRecipientDate:v10];
        }
      }
    }

    else if (v6)
    {
      [v20 setIncomingSenderCount:{objc_msgSend(v20, "incomingSenderCount") + 1}];
      [v20 lastIncomingSenderDate];
      if (v14 < v10)
      {
        [v20 setLastIncomingSenderDate:v10];
      }

      [v20 firstIncomingSenderDate];
      if (v15 == 0.0 || ([v20 firstIncomingSenderDate], v16 > v10))
      {
        [v20 setFirstIncomingSenderDate:v10];
      }
    }

    else
    {
      [v20 setIncomingRecipientCount:{objc_msgSend(v20, "incomingRecipientCount") + 1}];
      [v20 lastIncomingRecipientDate];
      if (v17 < v10)
      {
        [v20 setLastIncomingRecipientDate:v10];
      }

      [v20 firstIncomingRecipientDate];
      if (v18 == 0.0 || ([v20 firstIncomingRecipientDate], v19 > v10))
      {
        [v20 setFirstIncomingRecipientDate:v10];
      }
    }
  }
}

- (id)createInteractionRecord:(id)a3 context:(id)a4 keywordCache:(id)a5 attachmentCache:(id)a6 contactCache:(id)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__10;
  v46 = __Block_byref_object_dispose__10;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__10;
  v40 = __Block_byref_object_dispose__10;
  v41 = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __103___CDInteractionStore_createInteractionRecord_context_keywordCache_attachmentCache_contactCache_error___block_invoke;
  v27[3] = &unk_1E73688F8;
  v34 = &v42;
  v19 = v15;
  v28 = v19;
  v29 = self;
  v20 = v14;
  v30 = v20;
  v21 = v18;
  v31 = v21;
  v35 = &v36;
  v22 = v16;
  v32 = v22;
  v23 = v17;
  v33 = v23;
  [v19 performWithOptions:4 andBlock:v27];
  if (a8)
  {
    v24 = v37[5];
    if (v24)
    {
      *a8 = v24;
    }
  }

  v25 = v43[5];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v25;
}

- (id)dateFromTimeIntervalSinceRef:(double)a3
{
  if (a3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v3];
  }

  return v5;
}

- (id)getContactForRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 contact];

    if (!v6)
    {
      v26 = [_CDContact alloc];
      v7 = [v5 identifier];
      v8 = [v5 type];
      v9 = [v5 customIdentifier];
      v10 = [v5 displayName];
      v11 = [v5 displayType];
      v12 = [v5 personId];
      v13 = [v5 personIdType];
      v14 = [v5 displayImageURL];
      v15 = -[_CDContact initWithIdentifier:type:customIdentifier:displayName:displayType:personId:personIdType:displayImageURL:participantStatus:](v26, "initWithIdentifier:type:customIdentifier:displayName:displayType:personId:personIdType:displayImageURL:participantStatus:", v7, v8, v9, v10, v11, v12, v13, v14, [v5 participantStatus]);
      [v5 setContact:v15];

      v16 = objc_alloc_init(_CDContactStatistics);
      -[_CDContactStatistics setIncomingSenderCount:](v16, "setIncomingSenderCount:", [v5 incomingSenderCount]);
      -[_CDContactStatistics setIncomingRecipientCount:](v16, "setIncomingRecipientCount:", [v5 incomingRecipientCount]);
      -[_CDContactStatistics setOutgoingRecipientCount:](v16, "setOutgoingRecipientCount:", [v5 outgoingRecipientCount]);
      [v5 firstIncomingSenderDate];
      v17 = [(_CDInteractionStore *)self dateFromTimeIntervalSinceRef:?];
      [(_CDContactStatistics *)v16 setFirstIncomingSenderDate:v17];

      [v5 firstIncomingRecipientDate];
      v18 = [(_CDInteractionStore *)self dateFromTimeIntervalSinceRef:?];
      [(_CDContactStatistics *)v16 setFirstIncomingRecipientDate:v18];

      [v5 firstOutgoingRecipientDate];
      v19 = [(_CDInteractionStore *)self dateFromTimeIntervalSinceRef:?];
      [(_CDContactStatistics *)v16 setFirstOutgoingRecipientDate:v19];

      [v5 lastIncomingSenderDate];
      v20 = [(_CDInteractionStore *)self dateFromTimeIntervalSinceRef:?];
      [(_CDContactStatistics *)v16 setLastIncomingSenderDate:v20];

      [v5 lastIncomingRecipientDate];
      v21 = [(_CDInteractionStore *)self dateFromTimeIntervalSinceRef:?];
      [(_CDContactStatistics *)v16 setLastIncomingRecipientDate:v21];

      [v5 lastOutgoingRecipientDate];
      v22 = [(_CDInteractionStore *)self dateFromTimeIntervalSinceRef:?];
      [(_CDContactStatistics *)v16 setLastOutgoingRecipientDate:v22];

      v23 = [v5 contact];
      [v23 setStatistics:v16];
    }

    v24 = [v5 contact];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)createAttachmentFromRecord:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E696AD98];
    v4 = a3;
    v5 = [v3 numberWithLongLong:{objc_msgSend(v4, "sizeInBytes")}];
    if ([v5 isEqual:&unk_1F05EE778])
    {

      v5 = 0;
    }

    v17 = [_CDAttachment alloc];
    v16 = [v4 identifier];
    v6 = [v4 cloudIdentifier];
    v7 = [v4 photoLocalIdentifier];
    v8 = [v4 uti];
    v15 = [v4 creationDate];
    v9 = [v4 contentURL];
    v10 = [v4 contentText];
    v11 = [v4 photoSceneDescriptor];
    v12 = [v4 personInPhoto];

    v13 = [(_CDAttachment *)v17 initWithIdentifier:v16 cloudIdentifier:v6 photoLocalIdentifier:v7 type:v8 sizeInBytes:v5 creationDate:v15 contentURL:v9 contentText:v10 photoSceneDescriptor:v11 personInPhoto:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)createInteractionFromRecord:(id)a3
{
  v83 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(_CDInteraction);
    v6 = MEMORY[0x1E695DF00];
    [v4 startDate];
    v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
    [(_CDInteraction *)v5 setStartDate:v7];

    v8 = MEMORY[0x1E695DF00];
    [v4 updateDate];
    v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
    [(_CDInteraction *)v5 setUpdateDate:v9];

    v10 = MEMORY[0x1E695DF00];
    [v4 endDate];
    v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
    [(_CDInteraction *)v5 setEndDate:v11];

    v12 = [v4 uuid];
    [(_CDInteraction *)v5 setUuid:v12];

    v13 = [v4 locationUUID];
    [(_CDInteraction *)v5 setLocationUUID:v13];

    -[_CDInteraction setMechanism:](v5, "setMechanism:", [v4 mechanism]);
    -[_CDInteraction setDirection:](v5, "setDirection:", [v4 direction]);
    -[_CDInteraction setIsResponse:](v5, "setIsResponse:", [v4 isResponse]);
    v14 = [v4 bundleId];
    [(_CDInteraction *)v5 setBundleId:v14];

    v15 = [v4 targetBundleId];
    [(_CDInteraction *)v5 setTargetBundleId:v15];

    v16 = [v4 groupName];
    [(_CDInteraction *)v5 setGroupName:v16];

    v17 = MEMORY[0x1E695DFF8];
    v18 = [v4 contentURL];
    v19 = [v18 stringByRemovingPercentEncoding];
    v20 = [v17 URLWithString:v19];
    [(_CDInteraction *)v5 setContentURL:v20];

    v21 = [v4 sender];
    v22 = [(_CDInteractionStore *)self getContactForRecord:v21];
    [(_CDInteraction *)v5 setSender:v22];

    v23 = [v4 account];
    [(_CDInteraction *)v5 setAccount:v23];

    v24 = [v4 derivedIntentIdentifier];
    [(_CDInteraction *)v5 setDerivedIntentIdentifier:v24];

    v25 = [v4 domainIdentifier];
    [(_CDInteraction *)v5 setDomainIdentifier:v25];

    -[_CDInteraction setMailShareSheetDeletionCandidate:](v5, "setMailShareSheetDeletionCandidate:", [v4 mailShareSheetDeletionCandidate]);
    -[_CDInteraction setSelfParticipantStatus:](v5, "setSelfParticipantStatus:", [v4 selfParticipantStatus]);
    v26 = [v4 recipients];
    v27 = [v26 count];

    if (v27)
    {
      v28 = objc_alloc(MEMORY[0x1E695DF70]);
      v29 = [v4 recipients];
      v30 = [v28 initWithCapacity:{objc_msgSend(v29, "count")}];

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v31 = [v4 recipients];
      v32 = [v31 countByEnumeratingWithState:&v76 objects:v82 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v77;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v77 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v76 + 1) + 8 * i);
            v37 = objc_autoreleasePoolPush();
            v38 = [(_CDInteractionStore *)self getContactForRecord:v36];
            [v30 addObject:v38];

            objc_autoreleasePoolPop(v37);
          }

          v33 = [v31 countByEnumeratingWithState:&v76 objects:v82 count:16];
        }

        while (v33);
      }

      [(_CDInteraction *)v5 setRecipients:v30];
    }

    v39 = [v4 keywords];
    v40 = [v39 count];

    if (v40)
    {
      v41 = objc_alloc(MEMORY[0x1E695DF70]);
      v42 = [v4 keywords];
      v43 = [v41 initWithCapacity:{objc_msgSend(v42, "count")}];

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v44 = [v4 keywords];
      v45 = [v44 countByEnumeratingWithState:&v72 objects:v81 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v73;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v73 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v72 + 1) + 8 * j);
            v50 = objc_autoreleasePoolPush();
            v51 = [(_CDInteractionStore *)self createKeywordFromRecord:v49];
            if (v51)
            {
              [v43 addObject:v51];
            }

            objc_autoreleasePoolPop(v50);
          }

          v46 = [v44 countByEnumeratingWithState:&v72 objects:v81 count:16];
        }

        while (v46);
      }

      [(_CDInteraction *)v5 setKeywords:v43];
    }

    v52 = [v4 attachments];
    v53 = [v52 count];

    if (v53)
    {
      v54 = objc_alloc(MEMORY[0x1E695DF70]);
      v55 = [v4 attachments];
      v56 = [v54 initWithCapacity:{objc_msgSend(v55, "count")}];

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v57 = [v4 attachments];
      v58 = [v57 countByEnumeratingWithState:&v68 objects:v80 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v69;
        do
        {
          for (k = 0; k != v59; ++k)
          {
            if (*v69 != v60)
            {
              objc_enumerationMutation(v57);
            }

            v62 = *(*(&v68 + 1) + 8 * k);
            v63 = objc_autoreleasePoolPush();
            v64 = [(_CDInteractionStore *)self createAttachmentFromRecord:v62];
            [v56 addObject:v64];

            objc_autoreleasePoolPop(v63);
          }

          v59 = [v57 countByEnumeratingWithState:&v68 objects:v80 count:16];
        }

        while (v59);
      }

      [(_CDInteraction *)v5 setAttachments:v56];
    }

    v65 = [v4 nsUserName];
    [(_CDInteraction *)v5 setNsUserName:v65];
  }

  else
  {
    v5 = 0;
  }

  v66 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)recordInteraction:(id)a3
{
  v4 = [MEMORY[0x1E695DEC8] arrayWithObject:a3];
  LOBYTE(self) = [(_CDInteractionStore *)self recordInteractions:v4];

  return self;
}

- (void)recordInteractions:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60___CDInteractionStore_recordInteractions_completionHandler___block_invoke;
  v15[3] = &unk_1E7368368;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v9 = v15;
  v10 = workQueue;
  v11 = v7;
  v12 = v6;
  v13 = os_transaction_create();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_3;
  block[3] = &unk_1E7367818;
  v19 = v13;
  v20 = v9;
  v14 = v13;
  dispatch_async(v10, block);
}

- (BOOL)recordInteractionsBatch:(id)a3 error:(id *)a4
{
  v165 = *MEMORY[0x1E69E9840];
  v102 = a3;
  v123 = self;
  v103 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  oslog = +[_CDLogging interactionChannel];
  if (!v103)
  {
    if (os_log_type_enabled(&oslog->super, OS_LOG_TYPE_ERROR))
    {
      [_CDInteractionStore recordInteractionsBatch:error:];
    }

    goto LABEL_94;
  }

  v5 = oslog;
  if (os_log_type_enabled(&oslog->super, OS_LOG_TYPE_INFO))
  {
    v6 = v102;
    v7 = [v102 count];
    v8 = [v102 count];
    if (v8 >= 0xB)
    {
      v9 = objc_autoreleasePoolPush();
      v6 = [v102 subarrayWithRange:{0, 10}];
      objc_autoreleasePoolPop(v9);
    }

    *buf = 134218243;
    *&buf[4] = v7;
    *&buf[12] = 2117;
    *&buf[14] = v6;
    _os_log_impl(&dword_191750000, &oslog->super, OS_LOG_TYPE_INFO, "recordInteractionsBatch - recording: %tu interactions %{sensitive}@", buf, 0x16u);
    if (v8 >= 0xB)
    {
    }

    v5 = oslog;
  }

  oslog = [[_CDMemoryUsageInterval alloc] initWithName:@"recordInteractionsBatchPreprocessing" client:0];
  [(_CDMemoryUsageInterval *)oslog begin];
  v10 = [v102 mutableCopy];
  pendingShareInteractionQueue = v123->_pendingShareInteractionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___CDInteractionStore_recordInteractionsBatch_error___block_invoke;
  block[3] = &unk_1E7367A48;
  v149 = v102;
  v101 = v10;
  v150 = v101;
  v151 = v123;
  dispatch_sync(pendingShareInteractionQueue, block);
  v12 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_CDInteractionStore recordInteractionsBatch:error:];
  }

  if (![v101 count])
  {
    [(_CDMemoryUsageInterval *)oslog end];
    goto LABEL_93;
  }

  v13 = [v101 sortedArrayUsingComparator:&__block_literal_global_31];
  v14 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [_CDInteractionStore recordInteractionsBatch:error:];
  }

  v108 = [MEMORY[0x1E695DF90] dictionary];
  v15 = [MEMORY[0x1E695DF90] dictionary];
  v110 = [MEMORY[0x1E695DF70] array];
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  obj = v13;
  v16 = [obj countByEnumeratingWithState:&v144 objects:v164 count:16];
  if (v16)
  {
    v17 = *v145;
    do
    {
      v18 = 0;
      do
      {
        if (*v145 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v144 + 1) + 8 * v18);
        v20 = [v19 targetBundleId];
        v21 = +[_CDConstants shareSheetTargetBundleIdMail];
        v22 = [v20 isEqualToString:v21];

        if (v22)
        {
          [v19 setMailShareSheetDeletionCandidate:1];
          [v110 addObject:v19];
          goto LABEL_29;
        }

        v23 = [v19 bundleId];
        v24 = +[_CDConstants mobileMessagesBundleId];
        if (![v23 isEqualToString:v24])
        {
          goto LABEL_27;
        }

        v25 = [v19 groupName];
        if (!v25)
        {
          goto LABEL_27;
        }

        v26 = [v19 domainIdentifier];
        if (!v26)
        {

LABEL_27:
LABEL_28:
          [v110 addObject:v19];
          goto LABEL_29;
        }

        v27 = [v19 mechanism] == 4;

        if (!v27)
        {
          goto LABEL_28;
        }

        v28 = [v19 direction] == 0;
        v29 = [v19 domainIdentifier];
        if (v28)
        {
          [v15 setObject:v19 forKeyedSubscript:v29];
        }

        else
        {
          [v108 setObject:v19 forKeyedSubscript:v29];

          v30 = [v19 domainIdentifier];
          [v15 setObject:0 forKeyedSubscript:v30];
        }

LABEL_29:
        ++v18;
      }

      while (v16 != v18);
      v31 = [obj countByEnumeratingWithState:&v144 objects:v164 count:16];
      v16 = v31;
    }

    while (v31);
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v109 = v15;
  v107 = [v109 countByEnumeratingWithState:&v140 objects:v163 count:16];
  if (!v107)
  {
    goto LABEL_58;
  }

  v106 = *v141;
  do
  {
    for (i = 0; i != v107; ++i)
    {
      if (*v141 != v106)
      {
        objc_enumerationMutation(v109);
      }

      v33 = *(*(&v140 + 1) + 8 * i);
      v34 = [v109 objectForKeyedSubscript:v33];
      [v110 addObject:v34];
      v112 = [v108 objectForKeyedSubscript:v33];
      v35 = [MEMORY[0x1E695DF70] array];
      v36 = MEMORY[0x1E696AE18];
      v37 = [v34 startDate];
      v121 = [v36 predicateWithFormat:@"(startDate <= %@)", v37];

      [v35 addObject:v121];
      v38 = MEMORY[0x1E696AE18];
      v39 = +[_CDConstants mobileMessagesBundleId];
      v119 = [v38 predicateWithFormat:@"(bundleId == %@)", v39];

      [v35 addObject:v119];
      v117 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(domainIdentifier == %@)", v33];
      [v35 addObject:v117];
      v40 = MEMORY[0x1E696AE18];
      v41 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F05EF338];
      v115 = [v40 predicateWithFormat:@"(direction IN %@)", v41];

      [v35 addObject:v115];
      v114 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v35];
      v42 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
      *v152 = 0;
      v162 = v42;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:1];
      v139 = 0;
      v44 = [(_CDInteractionStore *)v123 queryInteractionsUsingPredicate:v114 sortDescriptors:v43 limit:1 offset:0 objectIDs:v152 error:&v139];
      v45 = v139;
      v46 = [v44 firstObject];

      v47 = objc_autoreleasePoolPush();
      v48 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", *v152];
      objc_autoreleasePoolPop(v47);
      if (v45)
      {
        v49 = +[_CDLogging interactionChannel];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v45;
          _os_log_error_impl(&dword_191750000, v49, OS_LOG_TYPE_ERROR, "Error retrieving old interaction from store when attempting messages groupName update: %@", buf, 0xCu);
        }

LABEL_41:

        goto LABEL_56;
      }

      if (v46 && v112)
      {
        v50 = [v112 startDate];
        v51 = [v46 startDate];
        [v50 timeIntervalSinceDate:v51];
        v53 = v52 < 0.0;

        if (!v53)
        {
          v54 = [v34 groupName];
          [v112 setGroupName:v54];

          v55 = [v34 contentURL];
          [v112 setContentURL:v55];

          v56 = [(_CDInteractionStore *)v123 recipientArrayWithMostRecentSenderFirstFromIncomingInteraction:v34 outgoingInteraction:v112];
          [v112 setRecipients:v56];

          [v108 removeObjectForKey:v33];
          [v110 addObject:v112];
          goto LABEL_55;
        }
      }

      else if (!v46)
      {
        [v34 contentURL];

        goto LABEL_55;
      }

      v57 = [v34 groupName];
      [v46 setGroupName:v57];

      v58 = [v34 contentURL];
      [v46 setContentURL:v58];

      v59 = [v34 sender];
      LODWORD(v58) = v59 == 0;

      if (v58)
      {
        v60 = [v34 recipients];
        [v46 setRecipients:v60];
      }

      v61 = [(_CDInteractionStore *)v123 recipientArrayWithMostRecentSenderFirstFromIncomingInteraction:v34 outgoingInteraction:v46];
      [v46 setRecipients:v61];

      v138 = 0;
      [(_CDInteractionStore *)v123 deleteInteractionsMatchingPredicate:v48 sortDescriptors:0 limit:1 debuggingReason:@"recordInteractionsBatch upsert (case A)" error:&v138];
      v62 = v138;
      if (v62)
      {
        v45 = v62;
        v49 = +[_CDLogging interactionChannel];
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v45;
          _os_log_error_impl(&dword_191750000, v49, OS_LOG_TYPE_ERROR, "Error deleting old interaction from store when attempting messages groupName update: %@", buf, 0xCu);
        }

        goto LABEL_41;
      }

      [v110 addObject:v46];
LABEL_55:
      v45 = 0;
LABEL_56:
    }

    v107 = [v109 countByEnumeratingWithState:&v140 objects:v163 count:16];
  }

  while (v107);
LABEL_58:

  v113 = [v108 allValues];
  [v110 addObjectsFromArray:v113];
  [(_CDMemoryUsageInterval *)oslog end];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v159 = __Block_byref_object_copy__10;
  v160 = __Block_byref_object_dispose__10;
  v161 = 0;
  v63 = [MEMORY[0x1E695DFA8] set];
  v132[0] = MEMORY[0x1E69E9820];
  v132[1] = 3221225472;
  v132[2] = __53___CDInteractionStore_recordInteractionsBatch_error___block_invoke_164;
  v132[3] = &unk_1E7368948;
  v118 = v103;
  v133 = v118;
  v64 = v110;
  v134 = v64;
  v135 = v123;
  v137 = buf;
  v65 = v63;
  v136 = v65;
  [(_CDInteractionStore *)v123 runLowPriorityDBPreemptableBlock:v132];
  v66 = [[_CDMemoryUsageInterval alloc] initWithName:@"recordInteractionsBatchPostProcessing" client:0];
  [(_CDMemoryUsageInterval *)v66 begin];
  v111 = v66;
  v120 = v64;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v116 = v65;
  v67 = [v116 countByEnumeratingWithState:&v128 objects:v157 count:16];
  if (v67)
  {
    LOBYTE(v68) = 0;
    v122 = *v129;
    do
    {
      for (j = 0; j != v67; ++j)
      {
        if (*v129 != v122)
        {
          objc_enumerationMutation(v116);
        }

        v70 = *(*(&v128 + 1) + 8 * j);
        v71 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid == %@", v70];
        v72 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"updateDate" ascending:0];
        v156 = v72;
        v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v156 count:1];
        v74 = (*&buf[8] + 40);
        v127 = *(*&buf[8] + 40);
        v75 = [(_CDInteractionStore *)v123 queryInteractionsUsingPredicate:v71 sortDescriptors:v73 limit:1 error:&v127];
        objc_storeStrong(v74, v127);
        v76 = [v75 firstObject];

        if (v68)
        {
          goto LABEL_64;
        }

        v77 = [v76 bundleId];
        v78 = +[_CDConstants mobileMessagesBundleId];
        if ([v77 isEqualToString:v78])
        {
          v79 = [v76 recipients];
          v68 = [v79 count] > 1;

          if (v68)
          {
            notify_post([@"com.apple.CoreDuet.InteractionStore.MessagesGroupInfoChange" UTF8String]);
LABEL_64:
            LOBYTE(v68) = 1;
          }
        }

        else
        {

          LOBYTE(v68) = 0;
        }

        if (v76)
        {
          v80 = MEMORY[0x1E696AE18];
          v81 = [v76 updateDate];
          v82 = [v80 predicateWithFormat:@"uuid == %@ AND updateDate < %@", v70, v81];

          v83 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"updateDate" ascending:0];
          v155 = v83;
          v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v155 count:1];
          v85 = (*&buf[8] + 40);
          v126 = *(*&buf[8] + 40);
          v86 = [(_CDInteractionStore *)v123 queryInteractionsUsingPredicate:v82 sortDescriptors:v84 limit:1 error:&v126];
          objc_storeStrong(v85, v126);
          v87 = [v86 firstObject];

          v88 = +[_CDLogging interactionChannel];
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
          {
            *v152 = 138412290;
            *&v152[4] = v76;
            _os_log_debug_impl(&dword_191750000, v88, OS_LOG_TYPE_DEBUG, "duplicateUUID handling, latest interaction: %@", v152, 0xCu);
          }

          v89 = +[_CDLogging interactionChannel];
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            *v152 = 138412290;
            *&v152[4] = v87;
            _os_log_debug_impl(&dword_191750000, v89, OS_LOG_TYPE_DEBUG, "duplicateUUID handling, toBeDeletedInteraction: %@", v152, 0xCu);
          }

          if ([v87 mechanism] == 13)
          {
            v90 = +[_CDLogging interactionChannel];
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
            {
              [(_CDInteractionStore *)&v124 recordInteractionsBatch:v125 error:v90];
            }

            v91 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid == %@ AND mechanism == %@", v70, &unk_1F05EE7C0];
            v92 = [_CDInteractionStore predicateFilteringUsernameForPredicate:v91];
            LOBYTE(v99) = 0;
            [_DKCoreDataStorage deleteObjectsInContext:v118 entityName:@"Interactions" predicate:v92 sortDescriptors:0 fetchLimit:0 includeSubentities:0 includePendingChanges:v99];
          }

          else
          {
            v91 = [_CDInteractionStore predicateFilteringUsernameForPredicate:v82];
            LOBYTE(v98) = 0;
            [_DKCoreDataStorage deleteObjectsInContext:v118 entityName:@"Interactions" predicate:v91 sortDescriptors:0 fetchLimit:0 includeSubentities:0 includePendingChanges:v98];
          }

          [v120 removeObject:v76];
        }
      }

      v67 = [v116 countByEnumeratingWithState:&v128 objects:v157 count:16];
    }

    while (v67);
  }

  if (a4)
  {
    v93 = *(*&buf[8] + 40);
    if (v93)
    {
      *a4 = v93;
    }
  }

  if ([v120 count])
  {
    [(_CDInteractionStoreNotifier *)v123->_notifier recorded:v120];
  }

  [(_CDMemoryUsageInterval *)v111 end];
  v94 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
  {
    v95 = [v120 count];
    *v152 = 134218243;
    *&v152[4] = v95;
    v153 = 2117;
    v154 = v120;
    _os_log_impl(&dword_191750000, v94, OS_LOG_TYPE_INFO, "recordInteractionsBatch - recorded %tu interactions, %{sensitive}@", v152, 0x16u);
  }

  _Block_object_dispose(buf, 8);
LABEL_93:

LABEL_94:
  v96 = *MEMORY[0x1E69E9840];
  return v103 != 0;
}

- (BOOL)openAndCheckIfReadable
{
  v2 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v3 = v2 != 0;

  return v3;
}

- (id)recipientArrayWithMostRecentSenderFirstFromIncomingInteraction:(id)a3 outgoingInteraction:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 recipients];
  v10 = [v9 mutableCopy];

  v11 = [v7 sender];
  if (v11 && [v10 containsObject:v11])
  {
    [v10 removeObject:v11];
    [v10 insertObject:v11 atIndex:0];
    goto LABEL_20;
  }

  v12 = [v11 identifier];
  v13 = [v11 personId];
  if (![v10 count])
  {
    goto LABEL_19;
  }

  v14 = 0;
  while (1)
  {
    if (!v13)
    {
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    v4 = [v10 objectAtIndexedSubscript:v14];
    v5 = [v4 personId];
    if ([v5 isEqualToString:v13])
    {
      break;
    }

    if (!v12)
    {

      goto LABEL_15;
    }

LABEL_11:
    v15 = [v10 objectAtIndexedSubscript:v14];
    v16 = [v15 identifier];
    v17 = [v16 isEqualToString:v12];

    if (v13)
    {

      if (v17)
      {
        goto LABEL_18;
      }
    }

    else if (v17)
    {
      goto LABEL_18;
    }

LABEL_15:
    if ([v10 count] <= ++v14)
    {
      goto LABEL_19;
    }
  }

LABEL_18:
  [v10 removeObjectAtIndex:v14];
  [v10 insertObject:v11 atIndex:0];
LABEL_19:

  v8 = v20;
  v7 = v21;
LABEL_20:
  v18 = [v10 copy];

  return v18;
}

- (BOOL)updateInteractionsBatch:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 count])
  {
    v7 = [(_CDInteractionStore *)self predicateForInteractions:v6];
    v8 = [(_CDInteractionStore *)self deleteInteractionsMatchingPredicate:v7 sortDescriptors:0 limit:-1 debuggingReason:@"updateInteractionsBatch" error:0];
    v9 = +[_CDLogging mediaAnalysisChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218240;
      v14 = v8;
      v15 = 2048;
      v16 = [v6 count];
      _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_DEFAULT, "Deleted %tu interactions, creating %tu interactions", &v13, 0x16u);
    }

    v10 = [(_CDInteractionStore *)self recordInteractionsBatch:v6 error:a4];
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)predicateForInteractions:(id)a3
{
  v3 = [a3 _pas_mappedArrayWithTransform:&__block_literal_global_195];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid in %@", v3];

  return v4;
}

- (unint64_t)countInteractionsUsingPredicate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[_CDMemoryUsageInterval alloc] initWithName:@"countInteractionsUsingPredicate" client:0];
  [(_CDMemoryUsageInterval *)v6 begin];
  v7 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v8 = [_CDInteractionStore predicateFilteringUsernameForPredicate:v5];

  v9 = [_DKCoreDataStorage countObjectsInContext:v7 entityName:@"Interactions" predicate:v8 includeSubentities:0 includePendingChanges:0];
  [(_CDMemoryUsageInterval *)v6 end];

  return v9;
}

- (void)countInteractionsUsingPredicate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    workQueue = self->_workQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73___CDInteractionStore_countInteractionsUsingPredicate_completionHandler___block_invoke;
    v13[3] = &unk_1E7368368;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    v9 = v13;
    v10 = workQueue;
    v11 = os_transaction_create();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_3;
    block[3] = &unk_1E7367818;
    v17 = v11;
    v18 = v9;
    v12 = v11;
    dispatch_async(v10, block);
  }
}

- (unint64_t)countContactsUsingPredicate:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[_CDMemoryUsageInterval alloc] initWithName:@"countContactsUsingPredicate" client:0];
  [(_CDMemoryUsageInterval *)v6 begin];
  v7 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v8 = [_DKCoreDataStorage countObjectsInContext:v7 entityName:@"Contacts" predicate:v5 includeSubentities:0 includePendingChanges:0];

  [(_CDMemoryUsageInterval *)v6 end];
  return v8;
}

- (void)countContactsUsingPredicate:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    workQueue = self->_workQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69___CDInteractionStore_countContactsUsingPredicate_completionHandler___block_invoke;
    v13[3] = &unk_1E7368368;
    v13[4] = self;
    v14 = v6;
    v15 = v7;
    v9 = v13;
    v10 = workQueue;
    v11 = os_transaction_create();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_3;
    block[3] = &unk_1E7367818;
    v17 = v11;
    v18 = v9;
    v12 = v11;
    dispatch_async(v10, block);
  }
}

- (id)queryInteractionsUsingPredicate:(id)a3 matchingNameTokens:(id)a4 sortDescriptors:(id)a5 limit:(unint64_t)a6 error:(id *)a7
{
  v38 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v9 = a4;
  v28 = a5;
  v10 = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY recipients.displayName CONTAINS[cd] %@", v16];
        v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"sender.displayName CONTAINS[cd] %@", v16];
        [v10 addObject:v17];
        [v10 addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v13);
  }

  v19 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v10];
  v20 = v19;
  if (v31)
  {
    v21 = MEMORY[0x1E696AB28];
    v36[0] = v31;
    v36[1] = v19;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v23 = [v21 andPredicateWithSubpredicates:v22];

    v20 = v23;
  }

  v24 = [(_CDInteractionStore *)self queryInteractionsUsingPredicate:v20 sortDescriptors:v28 limit:a6 offset:0 error:a7];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)queryInteractionsUsingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 offset:(unint64_t)a6 objectIDs:(id *)a7 error:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__10;
  v53 = __Block_byref_object_dispose__10;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__10;
  v47 = __Block_byref_object_dispose__10;
  v48 = 0;
  if (a7)
  {
    v16 = objc_opt_new();
  }

  else
  {
    v16 = 0;
  }

  v17 = [(_CDInteractionStore *)self readConcurrently];
  storage = self->_storage;
  v19 = *MEMORY[0x1E696A388];
  if (v17)
  {
    [(_DKCoreDataStorage *)storage privateManagedObjectContextFor:v19];
  }

  else
  {
    [(_DKCoreDataStorage *)storage managedObjectContextFor:v19];
  }
  v20 = ;
  v21 = [[_CDMemoryUsageInterval alloc] initWithName:@"queryInteractionsUsingPredicate" client:0];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __100___CDInteractionStore_queryInteractionsUsingPredicate_sortDescriptors_limit_offset_objectIDs_error___block_invoke;
  v32[3] = &unk_1E7368990;
  v22 = v21;
  v33 = v22;
  v23 = v20;
  v34 = v23;
  v24 = v14;
  v35 = v24;
  v41 = a5;
  v42 = a6;
  v25 = v15;
  v39 = &v43;
  v36 = v25;
  v37 = self;
  v26 = v16;
  v38 = v26;
  v40 = &v49;
  [v23 performWithOptions:4 andBlock:v32];
  [(_CDMemoryUsageInterval *)v22 end];
  if (a8)
  {
    v27 = v44[5];
    if (v27)
    {
      *a8 = v27;
    }
  }

  if ([(_CDInteractionStore *)self readConcurrently])
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __100___CDInteractionStore_queryInteractionsUsingPredicate_sortDescriptors_limit_offset_objectIDs_error___block_invoke_211;
    v30[3] = &unk_1E7367440;
    v31 = v23;
    [v31 performBlock:v30];
  }

  if (a7)
  {
    objc_storeStrong(a7, v16);
  }

  v28 = v50[5];

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);

  return v28;
}

- (void)queryInteractionsUsingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v12)
  {
    workQueue = self->_workQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __95___CDInteractionStore_queryInteractionsUsingPredicate_sortDescriptors_limit_completionHandler___block_invoke;
    v18[3] = &unk_1E73689B8;
    v18[4] = self;
    v19 = v10;
    v20 = v11;
    v22 = a5;
    v21 = v12;
    v14 = v18;
    v15 = workQueue;
    v16 = os_transaction_create();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_3;
    block[3] = &unk_1E7367818;
    v24 = v16;
    v25 = v14;
    v17 = v16;
    dispatch_async(v15, block);
  }
}

- (id)queryInteractionsUsingPredicate:(id)a3 withLimit:(unint64_t)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEB0];
  v7 = a3;
  v8 = [[v6 alloc] initWithKey:@"startDate" ascending:0];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v10 = [(_CDInteractionStore *)self queryInteractionsUsingPredicate:v7 sortDescriptors:v9 limit:a4];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)queryContactsUsingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 error:(id *)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a5;
    _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_INFO, "queryContactsUsingPredicate - querying for %tu items from interaction store", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__10;
  v44 = __Block_byref_object_dispose__10;
  v45 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__10;
  v39 = __Block_byref_object_dispose__10;
  v40 = 0;
  v13 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v14 = [[_CDMemoryUsageInterval alloc] initWithName:@"queryContactsUsingPredicate" client:0];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __79___CDInteractionStore_queryContactsUsingPredicate_sortDescriptors_limit_error___block_invoke;
  v26 = &unk_1E73689E0;
  v15 = v14;
  v27 = v15;
  v16 = v13;
  v28 = v16;
  v17 = v10;
  v29 = v17;
  v18 = v11;
  v30 = v18;
  v31 = self;
  v32 = &v35;
  p_buf = &buf;
  v34 = a5;
  [v16 performWithOptions:4 andBlock:&v23];
  [(_CDMemoryUsageInterval *)v15 end:v23];
  if (a6)
  {
    v19 = v36[5];
    if (v19)
    {
      *a6 = v19;
    }
  }

  v20 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&buf, 8);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)queryContactsUsingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v12)
  {
    workQueue = self->_workQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __91___CDInteractionStore_queryContactsUsingPredicate_sortDescriptors_limit_completionHandler___block_invoke;
    v18[3] = &unk_1E73689B8;
    v18[4] = self;
    v19 = v10;
    v20 = v11;
    v22 = a5;
    v21 = v12;
    v14 = v18;
    v15 = workQueue;
    v16 = os_transaction_create();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __cd_dispatch_async_capture_tx_block_invoke_3;
    block[3] = &unk_1E7367818;
    v24 = v16;
    v25 = v14;
    v17 = v16;
    dispatch_async(v15, block);
  }
}

- (id)queryContactInteractionsUsingPredicate:(id)a3 withLimit:(unint64_t)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a4;
    _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_INFO, "queryContactInteractionsUsingPredicate - querying for %tu items from interaction store", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  v8 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v9 = [[_CDMemoryUsageInterval alloc] initWithName:@"queryContactInteractionsUsingPredicate" client:0];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __72___CDInteractionStore_queryContactInteractionsUsingPredicate_withLimit___block_invoke;
  v19 = &unk_1E7368A08;
  v10 = v9;
  v20 = v10;
  v11 = v8;
  v21 = v11;
  v12 = v6;
  v22 = v12;
  v23 = self;
  p_buf = &buf;
  v25 = a4;
  [v11 performWithOptions:4 andBlock:&v16];
  [(_CDMemoryUsageInterval *)v10 end:v16];
  v13 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)histogramContactInteractionsUsingPredicate:(id)a3 withLimit:(unint64_t)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__10;
  v28 = __Block_byref_object_dispose__10;
  v29 = 0;
  v7 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v8 = [[_CDMemoryUsageInterval alloc] initWithName:@"histogramContactInteractionsUsingPredicate" client:0];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __76___CDInteractionStore_histogramContactInteractionsUsingPredicate_withLimit___block_invoke;
  v17 = &unk_1E7368A30;
  v9 = v8;
  v18 = v9;
  v10 = v7;
  v19 = v10;
  v11 = v6;
  v22 = &v24;
  v23 = a4;
  v20 = v11;
  v21 = self;
  [v10 performWithOptions:4 andBlock:&v14];
  [(_CDMemoryUsageInterval *)v9 end:v14];
  v12 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v12;
}

- (id)interactionCountPerMechanism
{
  v3 = objc_opt_new();
  for (i = 0; i != 21; ++i)
  {
    v5 = MEMORY[0x1E696AE18];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    v7 = [v5 predicateWithFormat:@"mechanism = %@", v6];

    v8 = [(_CDInteractionStore *)self countInteractionsUsingPredicate:v7 error:0];
    if (v8)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      v10 = mechanismToString(i);
      [v3 setObject:v9 forKeyedSubscript:v10];
    }
  }

  return v3;
}

- (id)usersWithInteractions
{
  v3 = objc_opt_new();
  v4 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v5 = [[_CDMemoryUsageInterval alloc] initWithName:@"usersWithInteractions" client:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44___CDInteractionStore_usersWithInteractions__block_invoke;
  v12[3] = &unk_1E7367A48;
  v13 = v5;
  v14 = v4;
  v6 = v3;
  v15 = v6;
  v7 = v4;
  v8 = v5;
  [v7 performWithOptions:4 andBlock:v12];
  [(_CDMemoryUsageInterval *)v8 end];
  v9 = v15;
  v10 = v6;

  return v6;
}

- (id)conversationsWithInteractions
{
  v3 = objc_opt_new();
  v4 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v5 = [[_CDMemoryUsageInterval alloc] initWithName:@"conversationsWithInteractions" client:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52___CDInteractionStore_conversationsWithInteractions__block_invoke;
  v12[3] = &unk_1E7367A48;
  v13 = v5;
  v14 = v4;
  v6 = v3;
  v15 = v6;
  v7 = v4;
  v8 = v5;
  [v7 performWithOptions:4 andBlock:v12];
  [(_CDMemoryUsageInterval *)v8 end];
  v9 = v15;
  v10 = v6;

  return v6;
}

- (id)kMostRecentConversationsWithLimit:(unint64_t)a3 predicate:(id)a4
{
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v9 = [[_CDMemoryUsageInterval alloc] initWithName:@"kMostRecentConversationsWithLimit" client:0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67___CDInteractionStore_kMostRecentConversationsWithLimit_predicate___block_invoke;
  v17[3] = &unk_1E7368A58;
  v18 = v9;
  v19 = v8;
  v20 = v6;
  v10 = v7;
  v21 = v10;
  v22 = a3;
  v11 = v6;
  v12 = v8;
  v13 = v9;
  [v12 performWithOptions:4 andBlock:v17];
  [(_CDMemoryUsageInterval *)v13 end];
  v14 = v21;
  v15 = v10;

  return v10;
}

- (void)iterInteractionRecordsWithPredicate:(id)a3 fetchLimit:(unint64_t)a4 sortAscending:(BOOL)a5 updateTelemetry:(id)a6 withBlock:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = a6;
  v15 = [[_CDMemoryUsageInterval alloc] initWithName:@"iterInteractionRecordsWithPredicate" client:0];
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &__block_literal_global_256;
  }

  v17 = MEMORY[0x193B00C50](v16);

  v18 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __110___CDInteractionStore_iterInteractionRecordsWithPredicate_fetchLimit_sortAscending_updateTelemetry_withBlock___block_invoke_2;
  v24[3] = &unk_1E7368AC8;
  v25 = v15;
  v26 = v18;
  v31 = a5;
  v27 = v12;
  v28 = v13;
  v29 = v17;
  v30 = a4;
  v19 = v17;
  v20 = v13;
  v21 = v12;
  v22 = v18;
  v23 = v15;
  [(_CDInteractionStore *)self runHighPriorityDBBlock:v24];
}

- (void)exitMaintenanceMode
{
  [(_CDInteractionStoreNotifier *)self->_notifier resume];
  [(_CDInteractionStoreNotifier *)self->_notifier deleteAll];
  self->_inMaintenanceMode = 0;
}

- (unint64_t)deleteUnreferencedKeywords
{
  v2 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"interactions.@count == 0"];
  LOBYTE(v6) = 0;
  v4 = [_DKCoreDataStorage deleteObjectsInContext:v2 entityName:@"Keywords" predicate:v3 sortDescriptors:MEMORY[0x1E695E0F0] fetchLimit:20000 includeSubentities:0 includePendingChanges:v6];

  return v4;
}

- (unint64_t)deleteUnreferencedContacts
{
  v2 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"interactionRecipient.@count == 0 AND interactionSender.@count == 0"];
  LOBYTE(v6) = 0;
  v4 = [_DKCoreDataStorage deleteObjectsInContext:v2 entityName:@"Contacts" predicate:v3 sortDescriptors:MEMORY[0x1E695E0F0] fetchLimit:20000 includeSubentities:0 includePendingChanges:v6];

  return v4;
}

- (unint64_t)deleteInteractionsOlderThanDate:(id)a3 debuggingReason:(id)a4 limit:(unint64_t)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696AEB0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 sortDescriptorWithKey:@"startDate" ascending:1];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate < %@", v10];

  v17[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v14 = [(_CDInteractionStore *)self deleteInteractionsMatchingPredicate:v12 sortDescriptors:v13 limit:a5 debuggingReason:v9 error:0];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (unint64_t)deleteOldInteractionsIfNeededToLimitTotalNumber:(unint64_t)a3 limit:(unint64_t)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v8 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v9 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v22[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  LOWORD(v15) = 1;
  v11 = [_DKCoreDataStorage deleteObjectsIfNeededToLimitTotal:a3 context:v8 entityName:@"Interactions" predicate:v9 sortDescriptors:v10 fetchLimit:a4 includeSubentities:v15 includePendingChanges:?];

  if (v11)
  {
    v12 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v17 = v11;
      v18 = 2048;
      v19 = a3;
      v20 = 2048;
      v21 = a4;
      _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_DEFAULT, "Deleted %tu interactions due to age (deleteOldInteractionsIfNeededToLimitTotalNumber:%tu limit:%tu)", buf, 0x20u);
    }

    [(_CDInteractionStore *)self deleteUnreferencedKeywords];
    [(_CDInteractionStore *)self deleteUnreferencedContacts];
    if (!self->_inMaintenanceMode)
    {
      [(_CDInteractionStoreNotifier *)self->_notifier deleteAll];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)closeStorage
{
  v3 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [_CDInteractionStore closeStorage];
  }

  [(_DKCoreDataStorage *)self->_storage closeStorageForProtectionClass:*MEMORY[0x1E696A388]];
}

- (int64_t)queryVersionNumber
{
  v2 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0x8000000000000000;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41___CDInteractionStore_queryVersionNumber__block_invoke;
  v6[3] = &unk_1E7368AF0;
  v3 = v2;
  v7 = v3;
  v8 = &v9;
  [v3 performWithOptions:4 andBlock:v6];
  v4 = v10[3];

  _Block_object_dispose(&v9, 8);
  return v4;
}

- (BOOL)recordVersionNumber:(int64_t)a3
{
  v4 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43___CDInteractionStore_recordVersionNumber___block_invoke;
  v7[3] = &unk_1E7368B18;
  v8 = v4;
  v9 = a3;
  v5 = v4;
  [v5 performWithOptions:4 andBlock:v7];

  return 1;
}

- (id)metadataDictionary
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = 0;
  v2 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41___CDInteractionStore_metadataDictionary__block_invoke;
  v6[3] = &unk_1E7368AF0;
  v3 = v2;
  v7 = v3;
  v8 = &v9;
  [v3 performWithOptions:4 andBlock:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)metadataForKey:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10;
  v18 = __Block_byref_object_dispose__10;
  v19 = 0;
  v5 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38___CDInteractionStore_metadataForKey___block_invoke;
  v10[3] = &unk_1E7368808;
  v6 = v5;
  v11 = v6;
  v7 = v4;
  v12 = v7;
  v13 = &v14;
  [v6 performWithOptions:4 andBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (BOOL)_deleteMetadataForKey:(id)a3 moc:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v8 = [MEMORY[0x1E695D5B8] entityForName:@"Metadata" inManagedObjectContext:v6];
  [v7 setEntity:v8];

  [v7 setResultType:2];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"key = %@", v5];
  [v7 setPredicate:v9];

  [v7 setFetchLimit:1];
  v10 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v7];
  v15 = 0;
  v11 = [v6 executeRequest:v10 error:&v15];
  v12 = v15;
  if (v12)
  {
    v13 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [_CDInteractionStore _deleteMetadataForKey:moc:];
    }
  }

  return v12 == 0;
}

- (void)setMetadata:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v19 = 0;
    v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:200 options:0 error:&v19];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42___CDInteractionStore_setMetadata_forKey___block_invoke;
  v14[3] = &unk_1E7368B60;
  v14[4] = self;
  v15 = v7;
  v16 = v9;
  v17 = v6;
  v18 = v8;
  v10 = v8;
  v11 = v6;
  v12 = v9;
  v13 = v7;
  [v12 performWithOptions:4 andBlock:v14];
}

- (void)migrateIMessageDomainIdentifiers
{
  v37[2] = *MEMORY[0x1E69E9840];
  v2 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_191750000, v2, OS_LOG_TYPE_DEFAULT, "migrateIMessageDomainIdentifiers Begin", buf, 2u);
  }

  v3 = [(_CDInteractionStore *)self metadataForKey:@"migrateIMessageDomainIdentifiers"];
  v4 = [v3 isEqual:MEMORY[0x1E695E118]];

  if (v4)
  {
    v5 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "migrateIMessageDomainIdentifiers End (Already completed)", buf, 2u);
    }
  }

  else
  {
    v6 = MEMORY[0x1E696AE18];
    v7 = +[_CDConstants mobileMessagesBundleId];
    v37[0] = v7;
    v8 = +[_CDConstants contactsAutocompleteBundleId];
    v37[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    v10 = +[_CDConstants shareSheetTargetBundleIdMessages];
    v36 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    v12 = [v6 predicateWithFormat:@"noindex(bundleId) in %@ OR noindex(targetBundleId) in %@", v9, v11];

    *buf = 0;
    v33 = buf;
    v34 = 0x2020000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 1;
    v13 = *MEMORY[0x1E696A388];
    do
    {
      v14 = objc_autoreleasePoolPush();
      v33[24] = 0;
      v15 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:v13];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __55___CDInteractionStore_migrateIMessageDomainIdentifiers__block_invoke;
      v23[3] = &unk_1E7368B88;
      v16 = v15;
      v24 = v16;
      v5 = v12;
      v25 = v5;
      v26 = &v28;
      v27 = buf;
      [v16 performWithOptions:4 andBlock:v23];

      objc_autoreleasePoolPop(v14);
    }

    while ((v33[24] & 1) != 0);
    if (*(v29 + 24) == 1)
    {
      v17 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_191750000, v17, OS_LOG_TYPE_DEFAULT, "migrateIMessageDomainIdentifiers Marking successful migration", v22, 2u);
      }

      [(_CDInteractionStore *)self setMetadata:MEMORY[0x1E695E118] forKey:@"migrateIMessageDomainIdentifiers"];
    }

    else
    {
      v18 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_DEFAULT, "migrateIMessageDomainIdentifiers Migration was not successful", v22, 2u);
      }
    }

    v19 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_191750000, v19, OS_LOG_TYPE_DEFAULT, "migrateIMessageDomainIdentifiers End", v22, 2u);
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(buf, 8);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (BOOL)deleteStorage
{
  v3 = [(_DKCoreDataStorage *)self->_storage deleteStorageFor:*MEMORY[0x1E696A388]];
  if (v3 && !self->_inMaintenanceMode)
  {
    [(_CDInteractionStoreNotifier *)self->_notifier deleteAll];
  }

  return v3;
}

- (unint64_t)deleteInteractionsMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 debuggingReason:(id)a6 error:(id *)a7
{
  v45 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v34 = a6;
  context = objc_autoreleasePoolPush();
  if (a5 >= 0x3E8)
  {
    v13 = 1000;
  }

  else
  {
    v13 = a5;
  }

  if (a5)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1000;
  }

  v35 = 0;
  v36 = 0;
  v15 = [(_CDInteractionStore *)self queryInteractionsUsingPredicate:v11 sortDescriptors:v12 limit:v14 offset:0 objectIDs:&v36 error:&v35];
  v16 = v35;
  if ([v36 count])
  {
    v17 = [v15 _pas_mappedArrayWithTransform:&__block_literal_global_343];
    v18 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if ([v36 count] >= v14)
      {
        v19 = @"at least ";
      }

      else
      {
        v19 = &stru_1F05B9908;
      }

      v20 = [v36 count];
      *buf = 138544131;
      v38 = v19;
      v39 = 2048;
      v40 = v20;
      v41 = 2114;
      v42 = v34;
      v43 = 2113;
      v44 = v17;
      _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_DEFAULT, "Deleted %{public}@%tu interactions with reason %{public}@: %{private}@", buf, 0x2Au);
    }
  }

  v21 = [v36 count];
  v22 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  if (v21 >= v14)
  {
    v23 = [_CDInteractionStore predicateFilteringUsernameForPredicate:v11];
    LOBYTE(v32) = 0;
    v24 = v22;
    v25 = v23;
    v26 = v12;
  }

  else
  {
    v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v36];
    LOBYTE(v32) = 0;
    v24 = v22;
    v25 = v23;
    v26 = 0;
  }

  v27 = [_DKCoreDataStorage deleteObjectsInContext:v24 entityName:@"Interactions" predicate:v25 sortDescriptors:v26 fetchLimit:a5 includeSubentities:0 includePendingChanges:v32];

  if (v16 && v27)
  {
    v28 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      [_CDInteractionStore deleteInteractionsMatchingPredicate:sortDescriptors:limit:debuggingReason:error:];
    }
  }

  else
  {
    if (v16 && !v27)
    {
      v29 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [_CDInteractionStore deleteInteractionsMatchingPredicate:sortDescriptors:limit:debuggingReason:error:];
      }

      goto LABEL_36;
    }

    if (!v27)
    {
      goto LABEL_36;
    }
  }

  [(_CDInteractionStore *)self deleteUnreferencedKeywords];
  [(_CDInteractionStore *)self deleteUnreferencedContacts];
  if (self->_inMaintenanceMode)
  {
    if (!v16)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v16 || v27 > 0x3E8)
  {
LABEL_35:
    [(_CDInteractionStoreNotifier *)self->_notifier deleteAll];
    goto LABEL_36;
  }

  if (v27 <= 0x3E7)
  {
    [(_CDInteractionStoreNotifier *)self->_notifier deleted:v15];
  }

LABEL_36:

  objc_autoreleasePoolPop(context);
  v30 = *MEMORY[0x1E69E9840];
  return v27;
}

- (unint64_t)deleteInteractionsWithBundleId:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = _CDTargetBundleIdForBundleId(v6);
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleId == %@ OR targetBundleId == %@ OR targetBundleId == %@", v6, v6, v7];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"deleteInteractionsWithBundleId:%@ andTargetBundleIds:%@, %@", v6, v6, v7];

  v10 = [(_CDInteractionStore *)self deleteInteractionsMatchingPredicate:v8 sortDescriptors:MEMORY[0x1E695E0F0] limit:20000 debuggingReason:v9 error:a4];
  return v10;
}

- (unint64_t)deleteInteractionsWithBundleId:(id)a3 account:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x1E696AE18];
  v9 = a4;
  v10 = a3;
  v11 = _CDTargetBundleIdForBundleId(v10);
  v12 = [v8 predicateWithFormat:@"(bundleId == %@ OR targetBundleId == %@) AND account == %@", v10, v11, v9];

  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"deleteInteractionsWithBundleId:%@ account:%@", v10, v9];
  v14 = [(_CDInteractionStore *)self deleteInteractionsMatchingPredicate:v12 sortDescriptors:MEMORY[0x1E695E0F0] limit:20000 debuggingReason:v13 error:a5];

  return v14;
}

- (unint64_t)deleteInteractionsWithBundleId:(id)a3 domainIdentifier:(id)a4 error:(id *)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = a4;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a4;
  v10 = a3;
  v11 = [v8 arrayWithObjects:&v15 count:1];

  v12 = [(_CDInteractionStore *)self deleteInteractionsWithBundleId:v10 domainIdentifiers:v11 error:a5, v15, v16];
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (unint64_t)deleteInteractionsWithBundleId:(id)a3 domainIdentifiers:(id)a4 error:(id *)a5
{
  v29[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v9 count])
  {
    v23 = _CDTargetBundleIdForBundleId(v8);
    v26 = [objc_alloc(MEMORY[0x1E69C5D18]) initWithDomainsFromArray:v9];
    v10 = [v26 allDomains];
    v25 = a5;
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(domainIdentifier == $domainIdentifier) OR (domainIdentifier >= $domainIdentifierDot AND domainIdentifier < $domainIdentifierSlash)"];
    v12 = [v10 allObjects];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __78___CDInteractionStore_deleteInteractionsWithBundleId_domainIdentifiers_error___block_invoke;
    v27[3] = &unk_1E7368BB0;
    v28 = v11;
    v24 = v11;
    v13 = [v12 _pas_mappedArrayWithTransform:v27];

    v14 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v13];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(noindex(mechanism) != %@ AND noindex(bundleId) == %@) OR (noindex(mechanism) == %@ AND noindex(targetBundleId) == %@)", &unk_1F05EE7D8, v8, &unk_1F05EE7D8, v23];
    v16 = MEMORY[0x1E696AB28];
    v29[0] = v14;
    v29[1] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v18 = [v16 andPredicateWithSubpredicates:v17];
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"deleteInteractionsWithBundleId:%@ domainIdentifiers:(redacted) (bundleId)", v8];
    v20 = [(_CDInteractionStore *)self deleteInteractionsMatchingPredicate:v18 sortDescriptors:MEMORY[0x1E695E0F0] limit:20000 debuggingReason:v19 error:v25];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)deleteInteractionsMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(unint64_t)a5 debuggingReason:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  workQueue = self->_workQueue;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __115___CDInteractionStore_deleteInteractionsMatchingPredicate_sortDescriptors_limit_debuggingReason_completionHandler___block_invoke;
  v25[3] = &unk_1E7368BD8;
  v25[4] = self;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = a5;
  v17 = v25;
  v18 = workQueue;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  v23 = os_transaction_create();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_3;
  block[3] = &unk_1E7367818;
  v32 = v23;
  v33 = v17;
  v24 = v23;
  dispatch_async(v18, block);
}

- (void)deleteInteractionsWithBundleId:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72___CDInteractionStore_deleteInteractionsWithBundleId_completionHandler___block_invoke;
  v15[3] = &unk_1E7368368;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v9 = v15;
  v10 = workQueue;
  v11 = v7;
  v12 = v6;
  v13 = os_transaction_create();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_3;
  block[3] = &unk_1E7367818;
  v19 = v13;
  v20 = v9;
  v14 = v13;
  dispatch_async(v10, block);
}

- (void)deleteInteractionsWithBundleId:(id)a3 account:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  workQueue = self->_workQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80___CDInteractionStore_deleteInteractionsWithBundleId_account_completionHandler___block_invoke;
  v19[3] = &unk_1E7368C00;
  v19[4] = self;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v12 = v19;
  v13 = workQueue;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = os_transaction_create();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_3;
  block[3] = &unk_1E7367818;
  v24 = v17;
  v25 = v12;
  v18 = v17;
  dispatch_async(v13, block);
}

- (void)deleteInteractionsWithBundleId:(id)a3 domainIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  workQueue = self->_workQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89___CDInteractionStore_deleteInteractionsWithBundleId_domainIdentifier_completionHandler___block_invoke;
  v19[3] = &unk_1E7368C00;
  v19[4] = self;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v12 = v19;
  v13 = workQueue;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = os_transaction_create();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_3;
  block[3] = &unk_1E7367818;
  v24 = v17;
  v25 = v12;
  v18 = v17;
  dispatch_async(v13, block);
}

- (void)deleteInteractionsWithBundleId:(id)a3 domainIdentifiers:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  workQueue = self->_workQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90___CDInteractionStore_deleteInteractionsWithBundleId_domainIdentifiers_completionHandler___block_invoke;
  v19[3] = &unk_1E7368C00;
  v19[4] = self;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v12 = v19;
  v13 = workQueue;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = os_transaction_create();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __cd_dispatch_async_capture_tx_block_invoke_3;
  block[3] = &unk_1E7367818;
  v24 = v17;
  v25 = v12;
  v18 = v17;
  dispatch_async(v13, block);
}

- (id)anonymizedCopyToDirectory:(id)a3 salt:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(_DKCoreDataStorage *)self->_storage copyStorageFor:*MEMORY[0x1E696A388] toDirectory:v6];

  objc_autoreleasePoolPop(v8);
  if (v9)
  {
    v9 = [_CDInteractionStore storeWithDirectory:v6 readOnly:0];
    [v9 anonymizeWithSalt:v7];
  }

  return v9;
}

- (void)anonymizeWithSalt:(id)a3
{
  v4 = a3;
  [(_CDInteractionStore *)self anonymizeContactsWithSalt:v4];
  [(_CDInteractionStore *)self anonymizeKeywordsWithSalt:v4];
  [(_CDInteractionStore *)self anonymizeInteractionsWithSalt:v4];
  [(_CDInteractionStore *)self anonymizeAttachmentsWithSalt:v4];
}

- (void)anonymizeInteractionsWithSalt:(id)a3
{
  storage = self->_storage;
  v4 = *MEMORY[0x1E696A388];
  v5 = a3;
  v7 = [(_DKCoreDataStorage *)storage managedObjectContextFor:v4];
  LOBYTE(v6) = 0;
  [_DKCoreDataStorage anonymizeObjectStringsInContext:v7 entityName:@"Interactions" predicate:0 sortDescriptors:0 batchFetchLimit:1000 totalFetchLimit:0 includeSubentities:v6 salt:v5];
}

- (void)anonymizeKeywordsWithSalt:(id)a3
{
  storage = self->_storage;
  v4 = *MEMORY[0x1E696A388];
  v5 = a3;
  v7 = [(_DKCoreDataStorage *)storage managedObjectContextFor:v4];
  LOBYTE(v6) = 0;
  [_DKCoreDataStorage anonymizeObjectStringsInContext:v7 entityName:@"Keywords" predicate:0 sortDescriptors:0 batchFetchLimit:1000 totalFetchLimit:0 includeSubentities:v6 salt:v5];
}

- (void)anonymizeContactsWithSalt:(id)a3
{
  storage = self->_storage;
  v4 = *MEMORY[0x1E696A388];
  v5 = a3;
  v7 = [(_DKCoreDataStorage *)storage managedObjectContextFor:v4];
  LOBYTE(v6) = 0;
  [_DKCoreDataStorage anonymizeObjectStringsInContext:v7 entityName:@"Contacts" predicate:0 sortDescriptors:0 batchFetchLimit:1000 totalFetchLimit:0 includeSubentities:v6 salt:v5];
}

- (void)anonymizeAttachmentsWithSalt:(id)a3
{
  storage = self->_storage;
  v4 = *MEMORY[0x1E696A388];
  v5 = a3;
  v7 = [(_DKCoreDataStorage *)storage managedObjectContextFor:v4];
  LOBYTE(v6) = 0;
  [_DKCoreDataStorage anonymizeObjectStringsInContext:v7 entityName:@"Attachment" predicate:0 sortDescriptors:0 batchFetchLimit:1000 totalFetchLimit:0 includeSubentities:v6 salt:v5];
}

+ (id)predicateFilteringUsernameForPredicate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  v6 = v5;

  return v6;
}

- (void)recordInteractionsBatch:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_191750000, v0, OS_LOG_TYPE_DEBUG, "recordInteractionsBatch - interactionsToPersist: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)recordInteractionsBatch:error:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_191750000, v0, OS_LOG_TYPE_DEBUG, "recordInteractionsBatch - interactionsToPersistSortedByDate: %{sensitive}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)recordInteractionsBatch:(os_log_t)log error:.cold.4(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_191750000, log, OS_LOG_TYPE_DEBUG, "Applying special logic not to overwrite donation with SS mechanism", buf, 2u);
}

- (void)_deleteMetadataForKey:moc:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_3_8(&dword_191750000, v0, v1, "metadata: failed to set delete key %{public}@: %{private}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)deleteInteractionsMatchingPredicate:sortDescriptors:limit:debuggingReason:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_7();
  _os_log_error_impl(&dword_191750000, v0, OS_LOG_TYPE_ERROR, "Did not delete any interactions but encountered error fetching interactions, reason: %{public}@, error: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)deleteInteractionsMatchingPredicate:sortDescriptors:limit:debuggingReason:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_3_8(&dword_191750000, v0, v1, "Deleted interactions but encountered error fetching interactions, reason: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end