@interface _CDInteractionStore
+ (id)predicateFilteringUsernameForPredicate:(id)predicate;
- (BOOL)_deleteMetadataForKey:(id)key moc:(id)moc;
- (BOOL)deleteStorage;
- (BOOL)openAndCheckIfReadable;
- (BOOL)recordInteraction:(id)interaction;
- (BOOL)recordInteractionsBatch:(id)batch error:(id *)error;
- (BOOL)recordVersionNumber:(int64_t)number;
- (BOOL)updateInteractionsBatch:(id)batch error:(id *)error;
- (id)anonymizedCopyToDirectory:(id)directory salt:(id)salt;
- (id)appendMissingInformationForRecord:(id)record fromContact:(id)contact cacheUpdateRequired:(BOOL *)required;
- (id)batchFetchExistingAttachmentRecords:(id)records context:(id)context error:(id *)error;
- (id)batchFetchExistingContactRecords:(id)records context:(id)context error:(id *)error;
- (id)batchFetchExistingInteractionsWithUUIDs:(id)ds context:(id)context error:(id *)error;
- (id)batchFetchExistingKeywordRecords:(id)records context:(id)context error:(id *)error;
- (id)conversationsWithInteractions;
- (id)createAttachmentFromRecord:(id)record;
- (id)createInteractionFromRecord:(id)record;
- (id)createInteractionRecord:(id)record context:(id)context keywordCache:(id)cache attachmentCache:(id)attachmentCache contactCache:(id)contactCache error:(id *)error;
- (id)dateFromTimeIntervalSinceRef:(double)ref;
- (id)errorForException:(id)exception;
- (id)fetchOrCreateAttachmentRecord:(id)record context:(id)context cache:(id)cache error:(id *)error;
- (id)fetchOrCreateContactRecord:(id)record context:(id)context cache:(id)cache error:(id *)error;
- (id)fetchOrCreateKeywordRecord:(id)record context:(id)context cache:(id)cache error:(id *)error;
- (id)getContactForRecord:(id)record;
- (id)histogramContactInteractionsUsingPredicate:(id)predicate withLimit:(unint64_t)limit;
- (id)interactionCountPerMechanism;
- (id)kMostRecentConversationsWithLimit:(unint64_t)limit predicate:(id)predicate;
- (id)metadataDictionary;
- (id)metadataForKey:(id)key;
- (id)predicateForInteractions:(id)interactions;
- (id)queryContactInteractionsUsingPredicate:(id)predicate withLimit:(unint64_t)limit;
- (id)queryContactsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit error:(id *)error;
- (id)queryInteractionsUsingPredicate:(id)predicate matchingNameTokens:(id)tokens sortDescriptors:(id)descriptors limit:(unint64_t)limit error:(id *)error;
- (id)queryInteractionsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset objectIDs:(id *)ds error:(id *)error;
- (id)queryInteractionsUsingPredicate:(id)predicate withLimit:(unint64_t)limit;
- (id)recipientArrayWithMostRecentSenderFirstFromIncomingInteraction:(id)interaction outgoingInteraction:(id)outgoingInteraction;
- (id)usersWithInteractions;
- (int64_t)queryVersionNumber;
- (unint64_t)countContactsUsingPredicate:(id)predicate error:(id *)error;
- (unint64_t)countInteractionsUsingPredicate:(id)predicate error:(id *)error;
- (unint64_t)deleteInteractionsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit debuggingReason:(id)reason error:(id *)error;
- (unint64_t)deleteInteractionsOlderThanDate:(id)date debuggingReason:(id)reason limit:(unint64_t)limit;
- (unint64_t)deleteInteractionsWithBundleId:(id)id account:(id)account error:(id *)error;
- (unint64_t)deleteInteractionsWithBundleId:(id)id domainIdentifier:(id)identifier error:(id *)error;
- (unint64_t)deleteInteractionsWithBundleId:(id)id domainIdentifiers:(id)identifiers error:(id *)error;
- (unint64_t)deleteInteractionsWithBundleId:(id)id error:(id *)error;
- (unint64_t)deleteOldInteractionsIfNeededToLimitTotalNumber:(unint64_t)number limit:(unint64_t)limit;
- (unint64_t)deleteUnreferencedContacts;
- (unint64_t)deleteUnreferencedKeywords;
- (void)anonymizeAttachmentsWithSalt:(id)salt;
- (void)anonymizeContactsWithSalt:(id)salt;
- (void)anonymizeInteractionsWithSalt:(id)salt;
- (void)anonymizeKeywordsWithSalt:(id)salt;
- (void)anonymizeWithSalt:(id)salt;
- (void)closeStorage;
- (void)countContactsUsingPredicate:(id)predicate completionHandler:(id)handler;
- (void)countInteractionsUsingPredicate:(id)predicate completionHandler:(id)handler;
- (void)deleteInteractionsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit debuggingReason:(id)reason completionHandler:(id)handler;
- (void)deleteInteractionsWithBundleId:(id)id account:(id)account completionHandler:(id)handler;
- (void)deleteInteractionsWithBundleId:(id)id completionHandler:(id)handler;
- (void)deleteInteractionsWithBundleId:(id)id domainIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteInteractionsWithBundleId:(id)id domainIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)exitMaintenanceMode;
- (void)fillWithoutRelationshipsInteractionRecord:(id)record fromInteraction:(id)interaction;
- (void)iterInteractionRecordsWithPredicate:(id)predicate fetchLimit:(unint64_t)limit sortAscending:(BOOL)ascending updateTelemetry:(id)telemetry withBlock:(id)block;
- (void)migrateIMessageDomainIdentifiers;
- (void)queryContactsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler;
- (void)queryInteractionsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler;
- (void)recordInteractions:(id)interactions completionHandler:(id)handler;
- (void)runHighPriorityDBBlock:(id)block;
- (void)runLowPriorityDBPreemptableBlock:(id)block;
- (void)setMetadata:(id)metadata forKey:(id)key;
- (void)updateCachedStatsForContactRecord:(id)record isSender:(BOOL)sender withInteraction:(id)interaction;
@end

@implementation _CDInteractionStore

- (void)runHighPriorityDBBlock:(id)block
{
  blockCopy = block;
  dispatch_group_enter(self->_waitingForDB);
  blockCopy[2]();
  dispatch_group_leave(self->_waitingForDB);
}

- (void)runLowPriorityDBPreemptableBlock:(id)block
{
  blockCopy = block;
  do
  {
    dispatch_group_wait(self->_waitingForDB, 0xFFFFFFFFFFFFFFFFLL);
  }

  while (blockCopy[2]());
}

- (id)fetchOrCreateKeywordRecord:(id)record context:(id)context cache:(id)cache error:(id *)error
{
  recordCopy = record;
  contextCopy = context;
  cacheCopy = cache;
  if (recordCopy)
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
    v20 = cacheCopy;
    v21 = recordCopy;
    v24 = &v32;
    v22 = contextCopy;
    selfCopy = self;
    v25 = &v26;
    [v22 performWithOptions:4 andBlock:v18];
    [(_CDMemoryUsageInterval *)v14 end];
    if (error)
    {
      v15 = v27[5];
      if (v15)
      {
        *error = v15;
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

- (id)fetchOrCreateAttachmentRecord:(id)record context:(id)context cache:(id)cache error:(id *)error
{
  recordCopy = record;
  contextCopy = context;
  cacheCopy = cache;
  if (recordCopy)
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
    v20 = cacheCopy;
    v21 = recordCopy;
    v24 = &v32;
    v22 = contextCopy;
    selfCopy = self;
    v25 = &v26;
    [v22 performWithOptions:4 andBlock:v18];
    [(_CDMemoryUsageInterval *)v14 end];
    if (error)
    {
      v15 = v27[5];
      if (v15)
      {
        *error = v15;
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

- (id)fetchOrCreateContactRecord:(id)record context:(id)context cache:(id)cache error:(id *)error
{
  recordCopy = record;
  contextCopy = context;
  cacheCopy = cache;
  if (recordCopy)
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
    v20 = cacheCopy;
    v21 = recordCopy;
    v24 = &v32;
    v22 = contextCopy;
    selfCopy = self;
    v25 = &v26;
    [v22 performWithOptions:4 andBlock:v18];
    [(_CDMemoryUsageInterval *)v14 end];
    if (error)
    {
      v15 = v27[5];
      if (v15)
      {
        *error = v15;
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

- (id)appendMissingInformationForRecord:(id)record fromContact:(id)contact cacheUpdateRequired:(BOOL *)required
{
  recordCopy = record;
  contactCopy = contact;
  identifier = [recordCopy identifier];
  if (identifier)
  {
  }

  else
  {
    identifier2 = [contactCopy identifier];

    if (identifier2)
    {
      identifier3 = [contactCopy identifier];
      [recordCopy setIdentifier:identifier3];

      *required = 1;
    }
  }

  customIdentifier = [recordCopy customIdentifier];
  if (customIdentifier)
  {
  }

  else
  {
    customIdentifier2 = [contactCopy customIdentifier];

    if (customIdentifier2)
    {
      customIdentifier3 = [contactCopy customIdentifier];
      [recordCopy setCustomIdentifier:customIdentifier3];

      *required = 1;
    }
  }

  personId = [recordCopy personId];
  if (personId)
  {
  }

  else
  {
    personId2 = [contactCopy personId];

    if (personId2)
    {
      personId3 = [contactCopy personId];
      [recordCopy setPersonId:personId3];

      *required = 1;
    }
  }

  displayName = [recordCopy displayName];
  if (displayName)
  {
  }

  else
  {
    displayName2 = [contactCopy displayName];

    if (displayName2)
    {
      displayName3 = [contactCopy displayName];
      [recordCopy setDisplayName:displayName3];

      *required = 1;
    }
  }

  displayImageURL = [recordCopy displayImageURL];
  if (displayImageURL)
  {
  }

  else
  {
    displayImageURL2 = [contactCopy displayImageURL];

    if (displayImageURL2)
    {
      displayImageURL3 = [contactCopy displayImageURL];
      [recordCopy setDisplayImageURL:displayImageURL3];

      *required = 1;
    }
  }

  return recordCopy;
}

- (id)batchFetchExistingKeywordRecords:(id)records context:(id)context error:(id *)error
{
  recordsCopy = records;
  contextCopy = context;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
  v13 = contextCopy;
  v25 = v13;
  v14 = recordsCopy;
  v26 = v14;
  selfCopy = self;
  v29 = &v30;
  v15 = dictionary;
  v28 = v15;
  [v13 performWithOptions:4 andBlock:&v20];
  [(_CDMemoryUsageInterval *)v12 end:v20];
  if (error)
  {
    v16 = v31[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = v28;
  v18 = v15;

  _Block_object_dispose(&v30, 8);

  return v18;
}

- (id)errorForException:(id)exception
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A578];
  reason = [exception reason];
  v5 = reason;
  v6 = @"Exception Caught";
  if (reason)
  {
    v6 = reason;
  }

  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v3 errorWithDomain:@"com.apple.coreduet.CDInteractionStore" code:0 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)batchFetchExistingAttachmentRecords:(id)records context:(id)context error:(id *)error
{
  recordsCopy = records;
  contextCopy = context;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
  v13 = contextCopy;
  v25 = v13;
  v14 = recordsCopy;
  v26 = v14;
  selfCopy = self;
  v29 = &v30;
  v15 = dictionary;
  v28 = v15;
  [v13 performWithOptions:4 andBlock:&v20];
  [(_CDMemoryUsageInterval *)v12 end:v20];
  if (error)
  {
    v16 = v31[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = v28;
  v18 = v15;

  _Block_object_dispose(&v30, 8);

  return v18;
}

- (id)batchFetchExistingContactRecords:(id)records context:(id)context error:(id *)error
{
  recordsCopy = records;
  contextCopy = context;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
  v13 = contextCopy;
  v25 = v13;
  v14 = recordsCopy;
  v26 = v14;
  selfCopy = self;
  v29 = &v30;
  v15 = dictionary;
  v28 = v15;
  [v13 performWithOptions:4 andBlock:&v20];
  [(_CDMemoryUsageInterval *)v12 end:v20];
  if (error)
  {
    v16 = v31[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = v28;
  v18 = v15;

  _Block_object_dispose(&v30, 8);

  return v18;
}

- (id)batchFetchExistingInteractionsWithUUIDs:(id)ds context:(id)context error:(id *)error
{
  dsCopy = ds;
  contextCopy = context;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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
  v13 = contextCopy;
  v25 = v13;
  v14 = dsCopy;
  v26 = v14;
  selfCopy = self;
  v29 = &v30;
  v15 = dictionary;
  v28 = v15;
  [v13 performWithOptions:4 andBlock:&v20];
  [(_CDMemoryUsageInterval *)v12 end:v20];
  if (error)
  {
    v16 = v31[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = v28;
  v18 = v15;

  _Block_object_dispose(&v30, 8);

  return v18;
}

- (void)fillWithoutRelationshipsInteractionRecord:(id)record fromInteraction:(id)interaction
{
  interactionCopy = interaction;
  recordCopy = record;
  startDate = [interactionCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  [recordCopy setStartDate:?];

  updateDate = [interactionCopy updateDate];
  [updateDate timeIntervalSinceReferenceDate];
  [recordCopy setUpdateDate:?];

  endDate = [interactionCopy endDate];
  [endDate timeIntervalSinceReferenceDate];
  [recordCopy setEndDate:?];

  uuid = [interactionCopy uuid];
  [recordCopy setUuid:uuid];

  locationUUID = [interactionCopy locationUUID];
  [recordCopy setLocationUUID:locationUUID];

  [recordCopy setMechanism:{objc_msgSend(interactionCopy, "mechanism")}];
  [recordCopy setDirection:{objc_msgSend(interactionCopy, "direction")}];
  [recordCopy setIsResponse:{objc_msgSend(interactionCopy, "isResponse")}];
  bundleId = [interactionCopy bundleId];
  [recordCopy setBundleId:bundleId];

  targetBundleId = [interactionCopy targetBundleId];
  [recordCopy setTargetBundleId:targetBundleId];

  groupName = [interactionCopy groupName];
  [recordCopy setGroupName:groupName];

  contentURL = [interactionCopy contentURL];
  absoluteString = [contentURL absoluteString];
  [recordCopy setContentURL:absoluteString];

  derivedIntentIdentifier = [interactionCopy derivedIntentIdentifier];
  [recordCopy setDerivedIntentIdentifier:derivedIntentIdentifier];

  domainIdentifier = [interactionCopy domainIdentifier];
  [recordCopy setDomainIdentifier:domainIdentifier];

  account = [interactionCopy account];
  [recordCopy setAccount:account];

  recipients = [interactionCopy recipients];
  [recordCopy setRecipientCount:{objc_msgSend(recipients, "count")}];

  [recordCopy setMailShareSheetDeletionCandidate:{objc_msgSend(interactionCopy, "mailShareSheetDeletionCandidate")}];
  selfParticipantStatus = [interactionCopy selfParticipantStatus];

  [recordCopy setSelfParticipantStatus:selfParticipantStatus];
}

- (void)updateCachedStatsForContactRecord:(id)record isSender:(BOOL)sender withInteraction:(id)interaction
{
  senderCopy = sender;
  recordCopy = record;
  interactionCopy = interaction;
  if (recordCopy && interactionCopy)
  {
    startDate = [interactionCopy startDate];
    [startDate timeIntervalSinceReferenceDate];
    v10 = v9;

    if ([interactionCopy direction])
    {
      if ([interactionCopy direction] == 1 && !senderCopy)
      {
        [recordCopy setOutgoingRecipientCount:{objc_msgSend(recordCopy, "outgoingRecipientCount") + 1}];
        [recordCopy lastOutgoingRecipientDate];
        if (v11 < v10)
        {
          [recordCopy setLastOutgoingRecipientDate:v10];
        }

        [recordCopy firstOutgoingRecipientDate];
        if (v12 == 0.0 || ([recordCopy firstOutgoingRecipientDate], v13 > v10))
        {
          [recordCopy setFirstOutgoingRecipientDate:v10];
        }
      }
    }

    else if (senderCopy)
    {
      [recordCopy setIncomingSenderCount:{objc_msgSend(recordCopy, "incomingSenderCount") + 1}];
      [recordCopy lastIncomingSenderDate];
      if (v14 < v10)
      {
        [recordCopy setLastIncomingSenderDate:v10];
      }

      [recordCopy firstIncomingSenderDate];
      if (v15 == 0.0 || ([recordCopy firstIncomingSenderDate], v16 > v10))
      {
        [recordCopy setFirstIncomingSenderDate:v10];
      }
    }

    else
    {
      [recordCopy setIncomingRecipientCount:{objc_msgSend(recordCopy, "incomingRecipientCount") + 1}];
      [recordCopy lastIncomingRecipientDate];
      if (v17 < v10)
      {
        [recordCopy setLastIncomingRecipientDate:v10];
      }

      [recordCopy firstIncomingRecipientDate];
      if (v18 == 0.0 || ([recordCopy firstIncomingRecipientDate], v19 > v10))
      {
        [recordCopy setFirstIncomingRecipientDate:v10];
      }
    }
  }
}

- (id)createInteractionRecord:(id)record context:(id)context keywordCache:(id)cache attachmentCache:(id)attachmentCache contactCache:(id)contactCache error:(id *)error
{
  recordCopy = record;
  contextCopy = context;
  cacheCopy = cache;
  attachmentCacheCopy = attachmentCache;
  contactCacheCopy = contactCache;
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
  v19 = contextCopy;
  v28 = v19;
  selfCopy = self;
  v20 = recordCopy;
  v30 = v20;
  v21 = contactCacheCopy;
  v31 = v21;
  v35 = &v36;
  v22 = cacheCopy;
  v32 = v22;
  v23 = attachmentCacheCopy;
  v33 = v23;
  [v19 performWithOptions:4 andBlock:v27];
  if (error)
  {
    v24 = v37[5];
    if (v24)
    {
      *error = v24;
    }
  }

  v25 = v43[5];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return v25;
}

- (id)dateFromTimeIntervalSinceRef:(double)ref
{
  if (ref == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v3];
  }

  return v5;
}

- (id)getContactForRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (recordCopy)
  {
    contact = [recordCopy contact];

    if (!contact)
    {
      v26 = [_CDContact alloc];
      identifier = [v5 identifier];
      type = [v5 type];
      customIdentifier = [v5 customIdentifier];
      displayName = [v5 displayName];
      displayType = [v5 displayType];
      personId = [v5 personId];
      personIdType = [v5 personIdType];
      displayImageURL = [v5 displayImageURL];
      v15 = -[_CDContact initWithIdentifier:type:customIdentifier:displayName:displayType:personId:personIdType:displayImageURL:participantStatus:](v26, "initWithIdentifier:type:customIdentifier:displayName:displayType:personId:personIdType:displayImageURL:participantStatus:", identifier, type, customIdentifier, displayName, displayType, personId, personIdType, displayImageURL, [v5 participantStatus]);
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

      contact2 = [v5 contact];
      [contact2 setStatistics:v16];
    }

    contact3 = [v5 contact];
  }

  else
  {
    contact3 = 0;
  }

  return contact3;
}

- (id)createAttachmentFromRecord:(id)record
{
  if (record)
  {
    v3 = MEMORY[0x1E696AD98];
    recordCopy = record;
    v5 = [v3 numberWithLongLong:{objc_msgSend(recordCopy, "sizeInBytes")}];
    if ([v5 isEqual:&unk_1F05EE778])
    {

      v5 = 0;
    }

    v17 = [_CDAttachment alloc];
    identifier = [recordCopy identifier];
    cloudIdentifier = [recordCopy cloudIdentifier];
    photoLocalIdentifier = [recordCopy photoLocalIdentifier];
    v8 = [recordCopy uti];
    creationDate = [recordCopy creationDate];
    contentURL = [recordCopy contentURL];
    contentText = [recordCopy contentText];
    photoSceneDescriptor = [recordCopy photoSceneDescriptor];
    personInPhoto = [recordCopy personInPhoto];

    v13 = [(_CDAttachment *)v17 initWithIdentifier:identifier cloudIdentifier:cloudIdentifier photoLocalIdentifier:photoLocalIdentifier type:v8 sizeInBytes:v5 creationDate:creationDate contentURL:contentURL contentText:contentText photoSceneDescriptor:photoSceneDescriptor personInPhoto:personInPhoto];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)createInteractionFromRecord:(id)record
{
  v83 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  if (recordCopy)
  {
    v5 = objc_alloc_init(_CDInteraction);
    v6 = MEMORY[0x1E695DF00];
    [recordCopy startDate];
    v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
    [(_CDInteraction *)v5 setStartDate:v7];

    v8 = MEMORY[0x1E695DF00];
    [recordCopy updateDate];
    v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
    [(_CDInteraction *)v5 setUpdateDate:v9];

    v10 = MEMORY[0x1E695DF00];
    [recordCopy endDate];
    v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
    [(_CDInteraction *)v5 setEndDate:v11];

    uuid = [recordCopy uuid];
    [(_CDInteraction *)v5 setUuid:uuid];

    locationUUID = [recordCopy locationUUID];
    [(_CDInteraction *)v5 setLocationUUID:locationUUID];

    -[_CDInteraction setMechanism:](v5, "setMechanism:", [recordCopy mechanism]);
    -[_CDInteraction setDirection:](v5, "setDirection:", [recordCopy direction]);
    -[_CDInteraction setIsResponse:](v5, "setIsResponse:", [recordCopy isResponse]);
    bundleId = [recordCopy bundleId];
    [(_CDInteraction *)v5 setBundleId:bundleId];

    targetBundleId = [recordCopy targetBundleId];
    [(_CDInteraction *)v5 setTargetBundleId:targetBundleId];

    groupName = [recordCopy groupName];
    [(_CDInteraction *)v5 setGroupName:groupName];

    v17 = MEMORY[0x1E695DFF8];
    contentURL = [recordCopy contentURL];
    stringByRemovingPercentEncoding = [contentURL stringByRemovingPercentEncoding];
    v20 = [v17 URLWithString:stringByRemovingPercentEncoding];
    [(_CDInteraction *)v5 setContentURL:v20];

    sender = [recordCopy sender];
    v22 = [(_CDInteractionStore *)self getContactForRecord:sender];
    [(_CDInteraction *)v5 setSender:v22];

    account = [recordCopy account];
    [(_CDInteraction *)v5 setAccount:account];

    derivedIntentIdentifier = [recordCopy derivedIntentIdentifier];
    [(_CDInteraction *)v5 setDerivedIntentIdentifier:derivedIntentIdentifier];

    domainIdentifier = [recordCopy domainIdentifier];
    [(_CDInteraction *)v5 setDomainIdentifier:domainIdentifier];

    -[_CDInteraction setMailShareSheetDeletionCandidate:](v5, "setMailShareSheetDeletionCandidate:", [recordCopy mailShareSheetDeletionCandidate]);
    -[_CDInteraction setSelfParticipantStatus:](v5, "setSelfParticipantStatus:", [recordCopy selfParticipantStatus]);
    recipients = [recordCopy recipients];
    v27 = [recipients count];

    if (v27)
    {
      v28 = objc_alloc(MEMORY[0x1E695DF70]);
      recipients2 = [recordCopy recipients];
      v30 = [v28 initWithCapacity:{objc_msgSend(recipients2, "count")}];

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      recipients3 = [recordCopy recipients];
      v32 = [recipients3 countByEnumeratingWithState:&v76 objects:v82 count:16];
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
              objc_enumerationMutation(recipients3);
            }

            v36 = *(*(&v76 + 1) + 8 * i);
            v37 = objc_autoreleasePoolPush();
            v38 = [(_CDInteractionStore *)self getContactForRecord:v36];
            [v30 addObject:v38];

            objc_autoreleasePoolPop(v37);
          }

          v33 = [recipients3 countByEnumeratingWithState:&v76 objects:v82 count:16];
        }

        while (v33);
      }

      [(_CDInteraction *)v5 setRecipients:v30];
    }

    keywords = [recordCopy keywords];
    v40 = [keywords count];

    if (v40)
    {
      v41 = objc_alloc(MEMORY[0x1E695DF70]);
      keywords2 = [recordCopy keywords];
      v43 = [v41 initWithCapacity:{objc_msgSend(keywords2, "count")}];

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      keywords3 = [recordCopy keywords];
      v45 = [keywords3 countByEnumeratingWithState:&v72 objects:v81 count:16];
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
              objc_enumerationMutation(keywords3);
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

          v46 = [keywords3 countByEnumeratingWithState:&v72 objects:v81 count:16];
        }

        while (v46);
      }

      [(_CDInteraction *)v5 setKeywords:v43];
    }

    attachments = [recordCopy attachments];
    v53 = [attachments count];

    if (v53)
    {
      v54 = objc_alloc(MEMORY[0x1E695DF70]);
      attachments2 = [recordCopy attachments];
      v56 = [v54 initWithCapacity:{objc_msgSend(attachments2, "count")}];

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      attachments3 = [recordCopy attachments];
      v58 = [attachments3 countByEnumeratingWithState:&v68 objects:v80 count:16];
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
              objc_enumerationMutation(attachments3);
            }

            v62 = *(*(&v68 + 1) + 8 * k);
            v63 = objc_autoreleasePoolPush();
            v64 = [(_CDInteractionStore *)self createAttachmentFromRecord:v62];
            [v56 addObject:v64];

            objc_autoreleasePoolPop(v63);
          }

          v59 = [attachments3 countByEnumeratingWithState:&v68 objects:v80 count:16];
        }

        while (v59);
      }

      [(_CDInteraction *)v5 setAttachments:v56];
    }

    nsUserName = [recordCopy nsUserName];
    [(_CDInteraction *)v5 setNsUserName:nsUserName];
  }

  else
  {
    v5 = 0;
  }

  v66 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)recordInteraction:(id)interaction
{
  v4 = [MEMORY[0x1E695DEC8] arrayWithObject:interaction];
  LOBYTE(self) = [(_CDInteractionStore *)self recordInteractions:v4];

  return self;
}

- (void)recordInteractions:(id)interactions completionHandler:(id)handler
{
  interactionsCopy = interactions;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60___CDInteractionStore_recordInteractions_completionHandler___block_invoke;
  v15[3] = &unk_1E7368368;
  v15[4] = self;
  v16 = interactionsCopy;
  v17 = handlerCopy;
  v9 = v15;
  v10 = workQueue;
  v11 = handlerCopy;
  v12 = interactionsCopy;
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

- (BOOL)recordInteractionsBatch:(id)batch error:(id *)error
{
  v165 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  selfCopy = self;
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
    v6 = batchCopy;
    v7 = [batchCopy count];
    v8 = [batchCopy count];
    if (v8 >= 0xB)
    {
      v9 = objc_autoreleasePoolPush();
      v6 = [batchCopy subarrayWithRange:{0, 10}];
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
  v10 = [batchCopy mutableCopy];
  pendingShareInteractionQueue = selfCopy->_pendingShareInteractionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___CDInteractionStore_recordInteractionsBatch_error___block_invoke;
  block[3] = &unk_1E7367A48;
  v149 = batchCopy;
  v101 = v10;
  v150 = v101;
  v151 = selfCopy;
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

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
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
        targetBundleId = [v19 targetBundleId];
        v21 = +[_CDConstants shareSheetTargetBundleIdMail];
        v22 = [targetBundleId isEqualToString:v21];

        if (v22)
        {
          [v19 setMailShareSheetDeletionCandidate:1];
          [array addObject:v19];
          goto LABEL_29;
        }

        bundleId = [v19 bundleId];
        v24 = +[_CDConstants mobileMessagesBundleId];
        if (![bundleId isEqualToString:v24])
        {
          goto LABEL_27;
        }

        groupName = [v19 groupName];
        if (!groupName)
        {
          goto LABEL_27;
        }

        domainIdentifier = [v19 domainIdentifier];
        if (!domainIdentifier)
        {

LABEL_27:
LABEL_28:
          [array addObject:v19];
          goto LABEL_29;
        }

        v27 = [v19 mechanism] == 4;

        if (!v27)
        {
          goto LABEL_28;
        }

        v28 = [v19 direction] == 0;
        domainIdentifier2 = [v19 domainIdentifier];
        if (v28)
        {
          [dictionary2 setObject:v19 forKeyedSubscript:domainIdentifier2];
        }

        else
        {
          [dictionary setObject:v19 forKeyedSubscript:domainIdentifier2];

          domainIdentifier3 = [v19 domainIdentifier];
          [dictionary2 setObject:0 forKeyedSubscript:domainIdentifier3];
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
  v109 = dictionary2;
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
      [array addObject:v34];
      v112 = [dictionary objectForKeyedSubscript:v33];
      array2 = [MEMORY[0x1E695DF70] array];
      v36 = MEMORY[0x1E696AE18];
      startDate = [v34 startDate];
      v121 = [v36 predicateWithFormat:@"(startDate <= %@)", startDate];

      [array2 addObject:v121];
      v38 = MEMORY[0x1E696AE18];
      v39 = +[_CDConstants mobileMessagesBundleId];
      v119 = [v38 predicateWithFormat:@"(bundleId == %@)", v39];

      [array2 addObject:v119];
      v117 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(domainIdentifier == %@)", v33];
      [array2 addObject:v117];
      v40 = MEMORY[0x1E696AE18];
      v41 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F05EF338];
      v115 = [v40 predicateWithFormat:@"(direction IN %@)", v41];

      [array2 addObject:v115];
      v114 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array2];
      v42 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
      *v152 = 0;
      v162 = v42;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:1];
      v139 = 0;
      v44 = [(_CDInteractionStore *)selfCopy queryInteractionsUsingPredicate:v114 sortDescriptors:v43 limit:1 offset:0 objectIDs:v152 error:&v139];
      v45 = v139;
      firstObject = [v44 firstObject];

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

      if (firstObject && v112)
      {
        startDate2 = [v112 startDate];
        startDate3 = [firstObject startDate];
        [startDate2 timeIntervalSinceDate:startDate3];
        v53 = v52 < 0.0;

        if (!v53)
        {
          groupName2 = [v34 groupName];
          [v112 setGroupName:groupName2];

          contentURL = [v34 contentURL];
          [v112 setContentURL:contentURL];

          v56 = [(_CDInteractionStore *)selfCopy recipientArrayWithMostRecentSenderFirstFromIncomingInteraction:v34 outgoingInteraction:v112];
          [v112 setRecipients:v56];

          [dictionary removeObjectForKey:v33];
          [array addObject:v112];
          goto LABEL_55;
        }
      }

      else if (!firstObject)
      {
        [v34 contentURL];

        goto LABEL_55;
      }

      groupName3 = [v34 groupName];
      [firstObject setGroupName:groupName3];

      contentURL2 = [v34 contentURL];
      [firstObject setContentURL:contentURL2];

      sender = [v34 sender];
      LODWORD(contentURL2) = sender == 0;

      if (contentURL2)
      {
        recipients = [v34 recipients];
        [firstObject setRecipients:recipients];
      }

      v61 = [(_CDInteractionStore *)selfCopy recipientArrayWithMostRecentSenderFirstFromIncomingInteraction:v34 outgoingInteraction:firstObject];
      [firstObject setRecipients:v61];

      v138 = 0;
      [(_CDInteractionStore *)selfCopy deleteInteractionsMatchingPredicate:v48 sortDescriptors:0 limit:1 debuggingReason:@"recordInteractionsBatch upsert (case A)" error:&v138];
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

      [array addObject:firstObject];
LABEL_55:
      v45 = 0;
LABEL_56:
    }

    v107 = [v109 countByEnumeratingWithState:&v140 objects:v163 count:16];
  }

  while (v107);
LABEL_58:

  allValues = [dictionary allValues];
  [array addObjectsFromArray:allValues];
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
  v64 = array;
  v134 = v64;
  v135 = selfCopy;
  v137 = buf;
  v65 = v63;
  v136 = v65;
  [(_CDInteractionStore *)selfCopy runLowPriorityDBPreemptableBlock:v132];
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
        v75 = [(_CDInteractionStore *)selfCopy queryInteractionsUsingPredicate:v71 sortDescriptors:v73 limit:1 error:&v127];
        objc_storeStrong(v74, v127);
        firstObject2 = [v75 firstObject];

        if (v68)
        {
          goto LABEL_64;
        }

        bundleId2 = [firstObject2 bundleId];
        v78 = +[_CDConstants mobileMessagesBundleId];
        if ([bundleId2 isEqualToString:v78])
        {
          recipients2 = [firstObject2 recipients];
          v68 = [recipients2 count] > 1;

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

        if (firstObject2)
        {
          v80 = MEMORY[0x1E696AE18];
          updateDate = [firstObject2 updateDate];
          v82 = [v80 predicateWithFormat:@"uuid == %@ AND updateDate < %@", v70, updateDate];

          v83 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"updateDate" ascending:0];
          v155 = v83;
          v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v155 count:1];
          v85 = (*&buf[8] + 40);
          v126 = *(*&buf[8] + 40);
          v86 = [(_CDInteractionStore *)selfCopy queryInteractionsUsingPredicate:v82 sortDescriptors:v84 limit:1 error:&v126];
          objc_storeStrong(v85, v126);
          firstObject3 = [v86 firstObject];

          v88 = +[_CDLogging interactionChannel];
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
          {
            *v152 = 138412290;
            *&v152[4] = firstObject2;
            _os_log_debug_impl(&dword_191750000, v88, OS_LOG_TYPE_DEBUG, "duplicateUUID handling, latest interaction: %@", v152, 0xCu);
          }

          v89 = +[_CDLogging interactionChannel];
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            *v152 = 138412290;
            *&v152[4] = firstObject3;
            _os_log_debug_impl(&dword_191750000, v89, OS_LOG_TYPE_DEBUG, "duplicateUUID handling, toBeDeletedInteraction: %@", v152, 0xCu);
          }

          if ([firstObject3 mechanism] == 13)
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

          [v120 removeObject:firstObject2];
        }
      }

      v67 = [v116 countByEnumeratingWithState:&v128 objects:v157 count:16];
    }

    while (v67);
  }

  if (error)
  {
    v93 = *(*&buf[8] + 40);
    if (v93)
    {
      *error = v93;
    }
  }

  if ([v120 count])
  {
    [(_CDInteractionStoreNotifier *)selfCopy->_notifier recorded:v120];
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

- (id)recipientArrayWithMostRecentSenderFirstFromIncomingInteraction:(id)interaction outgoingInteraction:(id)outgoingInteraction
{
  interactionCopy = interaction;
  outgoingInteractionCopy = outgoingInteraction;
  recipients = [outgoingInteractionCopy recipients];
  v10 = [recipients mutableCopy];

  sender = [interactionCopy sender];
  if (sender && [v10 containsObject:sender])
  {
    [v10 removeObject:sender];
    [v10 insertObject:sender atIndex:0];
    goto LABEL_20;
  }

  identifier = [sender identifier];
  personId = [sender personId];
  if (![v10 count])
  {
    goto LABEL_19;
  }

  v14 = 0;
  while (1)
  {
    if (!personId)
    {
      if (!identifier)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    v4 = [v10 objectAtIndexedSubscript:v14];
    personId2 = [v4 personId];
    if ([personId2 isEqualToString:personId])
    {
      break;
    }

    if (!identifier)
    {

      goto LABEL_15;
    }

LABEL_11:
    v15 = [v10 objectAtIndexedSubscript:v14];
    identifier2 = [v15 identifier];
    v17 = [identifier2 isEqualToString:identifier];

    if (personId)
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
  [v10 insertObject:sender atIndex:0];
LABEL_19:

  outgoingInteractionCopy = v20;
  interactionCopy = v21;
LABEL_20:
  v18 = [v10 copy];

  return v18;
}

- (BOOL)updateInteractionsBatch:(id)batch error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  if ([batchCopy count])
  {
    v7 = [(_CDInteractionStore *)self predicateForInteractions:batchCopy];
    v8 = [(_CDInteractionStore *)self deleteInteractionsMatchingPredicate:v7 sortDescriptors:0 limit:-1 debuggingReason:@"updateInteractionsBatch" error:0];
    v9 = +[_CDLogging mediaAnalysisChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218240;
      v14 = v8;
      v15 = 2048;
      v16 = [batchCopy count];
      _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_DEFAULT, "Deleted %tu interactions, creating %tu interactions", &v13, 0x16u);
    }

    v10 = [(_CDInteractionStore *)self recordInteractionsBatch:batchCopy error:error];
  }

  else
  {
    v10 = 1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)predicateForInteractions:(id)interactions
{
  v3 = [interactions _pas_mappedArrayWithTransform:&__block_literal_global_195];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid in %@", v3];

  return v4;
}

- (unint64_t)countInteractionsUsingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v6 = [[_CDMemoryUsageInterval alloc] initWithName:@"countInteractionsUsingPredicate" client:0];
  [(_CDMemoryUsageInterval *)v6 begin];
  v7 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v8 = [_CDInteractionStore predicateFilteringUsernameForPredicate:predicateCopy];

  v9 = [_DKCoreDataStorage countObjectsInContext:v7 entityName:@"Interactions" predicate:v8 includeSubentities:0 includePendingChanges:0];
  [(_CDMemoryUsageInterval *)v6 end];

  return v9;
}

- (void)countInteractionsUsingPredicate:(id)predicate completionHandler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    workQueue = self->_workQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73___CDInteractionStore_countInteractionsUsingPredicate_completionHandler___block_invoke;
    v13[3] = &unk_1E7368368;
    v13[4] = self;
    v14 = predicateCopy;
    v15 = handlerCopy;
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

- (unint64_t)countContactsUsingPredicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  v6 = [[_CDMemoryUsageInterval alloc] initWithName:@"countContactsUsingPredicate" client:0];
  [(_CDMemoryUsageInterval *)v6 begin];
  v7 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v8 = [_DKCoreDataStorage countObjectsInContext:v7 entityName:@"Contacts" predicate:predicateCopy includeSubentities:0 includePendingChanges:0];

  [(_CDMemoryUsageInterval *)v6 end];
  return v8;
}

- (void)countContactsUsingPredicate:(id)predicate completionHandler:(id)handler
{
  predicateCopy = predicate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    workQueue = self->_workQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69___CDInteractionStore_countContactsUsingPredicate_completionHandler___block_invoke;
    v13[3] = &unk_1E7368368;
    v13[4] = self;
    v14 = predicateCopy;
    v15 = handlerCopy;
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

- (id)queryInteractionsUsingPredicate:(id)predicate matchingNameTokens:(id)tokens sortDescriptors:(id)descriptors limit:(unint64_t)limit error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  tokensCopy = tokens;
  descriptorsCopy = descriptors;
  array = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = tokensCopy;
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
        [array addObject:v17];
        [array addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v13);
  }

  v19 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:array];
  v20 = v19;
  if (predicateCopy)
  {
    v21 = MEMORY[0x1E696AB28];
    v36[0] = predicateCopy;
    v36[1] = v19;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v23 = [v21 andPredicateWithSubpredicates:v22];

    v20 = v23;
  }

  v24 = [(_CDInteractionStore *)self queryInteractionsUsingPredicate:v20 sortDescriptors:descriptorsCopy limit:limit offset:0 error:error];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)queryInteractionsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit offset:(unint64_t)offset objectIDs:(id *)ds error:(id *)error
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
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
  if (ds)
  {
    v16 = objc_opt_new();
  }

  else
  {
    v16 = 0;
  }

  readConcurrently = [(_CDInteractionStore *)self readConcurrently];
  storage = self->_storage;
  v19 = *MEMORY[0x1E696A388];
  if (readConcurrently)
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
  v24 = predicateCopy;
  v35 = v24;
  limitCopy = limit;
  offsetCopy = offset;
  v25 = descriptorsCopy;
  v39 = &v43;
  v36 = v25;
  selfCopy = self;
  v26 = v16;
  v38 = v26;
  v40 = &v49;
  [v23 performWithOptions:4 andBlock:v32];
  [(_CDMemoryUsageInterval *)v22 end];
  if (error)
  {
    v27 = v44[5];
    if (v27)
    {
      *error = v27;
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

  if (ds)
  {
    objc_storeStrong(ds, v16);
  }

  v28 = v50[5];

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);

  return v28;
}

- (void)queryInteractionsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  if (handlerCopy)
  {
    workQueue = self->_workQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __95___CDInteractionStore_queryInteractionsUsingPredicate_sortDescriptors_limit_completionHandler___block_invoke;
    v18[3] = &unk_1E73689B8;
    v18[4] = self;
    v19 = predicateCopy;
    v20 = descriptorsCopy;
    limitCopy = limit;
    v21 = handlerCopy;
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

- (id)queryInteractionsUsingPredicate:(id)predicate withLimit:(unint64_t)limit
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEB0];
  predicateCopy = predicate;
  v8 = [[v6 alloc] initWithKey:@"startDate" ascending:0];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v10 = [(_CDInteractionStore *)self queryInteractionsUsingPredicate:predicateCopy sortDescriptors:v9 limit:limit];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)queryContactsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v12 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = limit;
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
  v17 = predicateCopy;
  v29 = v17;
  v18 = descriptorsCopy;
  v30 = v18;
  selfCopy = self;
  v32 = &v35;
  p_buf = &buf;
  limitCopy = limit;
  [v16 performWithOptions:4 andBlock:&v23];
  [(_CDMemoryUsageInterval *)v15 end:v23];
  if (error)
  {
    v19 = v36[5];
    if (v19)
    {
      *error = v19;
    }
  }

  v20 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&buf, 8);

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)queryContactsUsingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit completionHandler:(id)handler
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  handlerCopy = handler;
  if (handlerCopy)
  {
    workQueue = self->_workQueue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __91___CDInteractionStore_queryContactsUsingPredicate_sortDescriptors_limit_completionHandler___block_invoke;
    v18[3] = &unk_1E73689B8;
    v18[4] = self;
    v19 = predicateCopy;
    v20 = descriptorsCopy;
    limitCopy = limit;
    v21 = handlerCopy;
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

- (id)queryContactInteractionsUsingPredicate:(id)predicate withLimit:(unint64_t)limit
{
  v31 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  v7 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = limit;
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
  v12 = predicateCopy;
  v22 = v12;
  selfCopy = self;
  p_buf = &buf;
  limitCopy = limit;
  [v11 performWithOptions:4 andBlock:&v16];
  [(_CDMemoryUsageInterval *)v10 end:v16];
  v13 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)histogramContactInteractionsUsingPredicate:(id)predicate withLimit:(unint64_t)limit
{
  predicateCopy = predicate;
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
  v11 = predicateCopy;
  v22 = &v24;
  limitCopy = limit;
  v20 = v11;
  selfCopy = self;
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

- (id)kMostRecentConversationsWithLimit:(unint64_t)limit predicate:(id)predicate
{
  predicateCopy = predicate;
  v7 = objc_opt_new();
  v8 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v9 = [[_CDMemoryUsageInterval alloc] initWithName:@"kMostRecentConversationsWithLimit" client:0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __67___CDInteractionStore_kMostRecentConversationsWithLimit_predicate___block_invoke;
  v17[3] = &unk_1E7368A58;
  v18 = v9;
  v19 = v8;
  v20 = predicateCopy;
  v10 = v7;
  v21 = v10;
  limitCopy = limit;
  v11 = predicateCopy;
  v12 = v8;
  v13 = v9;
  [v12 performWithOptions:4 andBlock:v17];
  [(_CDMemoryUsageInterval *)v13 end];
  v14 = v21;
  v15 = v10;

  return v10;
}

- (void)iterInteractionRecordsWithPredicate:(id)predicate fetchLimit:(unint64_t)limit sortAscending:(BOOL)ascending updateTelemetry:(id)telemetry withBlock:(id)block
{
  predicateCopy = predicate;
  blockCopy = block;
  telemetryCopy = telemetry;
  v15 = [[_CDMemoryUsageInterval alloc] initWithName:@"iterInteractionRecordsWithPredicate" client:0];
  if (telemetryCopy)
  {
    v16 = telemetryCopy;
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
  ascendingCopy = ascending;
  v27 = predicateCopy;
  v28 = blockCopy;
  v29 = v17;
  limitCopy = limit;
  v19 = v17;
  v20 = blockCopy;
  v21 = predicateCopy;
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

- (unint64_t)deleteInteractionsOlderThanDate:(id)date debuggingReason:(id)reason limit:(unint64_t)limit
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E696AEB0];
  reasonCopy = reason;
  dateCopy = date;
  v11 = [v8 sortDescriptorWithKey:@"startDate" ascending:1];
  dateCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"startDate < %@", dateCopy];

  v17[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v14 = [(_CDInteractionStore *)self deleteInteractionsMatchingPredicate:dateCopy sortDescriptors:v13 limit:limit debuggingReason:reasonCopy error:0];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (unint64_t)deleteOldInteractionsIfNeededToLimitTotalNumber:(unint64_t)number limit:(unint64_t)limit
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
  v8 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v9 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v22[0] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  LOWORD(v15) = 1;
  v11 = [_DKCoreDataStorage deleteObjectsIfNeededToLimitTotal:number context:v8 entityName:@"Interactions" predicate:v9 sortDescriptors:v10 fetchLimit:limit includeSubentities:v15 includePendingChanges:?];

  if (v11)
  {
    v12 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v17 = v11;
      v18 = 2048;
      numberCopy = number;
      v20 = 2048;
      limitCopy = limit;
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

- (BOOL)recordVersionNumber:(int64_t)number
{
  v4 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43___CDInteractionStore_recordVersionNumber___block_invoke;
  v7[3] = &unk_1E7368B18;
  v8 = v4;
  numberCopy = number;
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

- (id)metadataForKey:(id)key
{
  keyCopy = key;
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
  v7 = keyCopy;
  v12 = v7;
  v13 = &v14;
  [v6 performWithOptions:4 andBlock:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (BOOL)_deleteMetadataForKey:(id)key moc:(id)moc
{
  keyCopy = key;
  mocCopy = moc;
  v7 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v8 = [MEMORY[0x1E695D5B8] entityForName:@"Metadata" inManagedObjectContext:mocCopy];
  [v7 setEntity:v8];

  [v7 setResultType:2];
  keyCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"key = %@", keyCopy];
  [v7 setPredicate:keyCopy];

  [v7 setFetchLimit:1];
  v10 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v7];
  v15 = 0;
  v11 = [mocCopy executeRequest:v10 error:&v15];
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

- (void)setMetadata:(id)metadata forKey:(id)key
{
  metadataCopy = metadata;
  keyCopy = key;
  if (metadataCopy)
  {
    v19 = 0;
    v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:metadataCopy format:200 options:0 error:&v19];
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
  v15 = keyCopy;
  v16 = v9;
  v17 = metadataCopy;
  v18 = v8;
  v10 = v8;
  v11 = metadataCopy;
  v12 = v9;
  v13 = keyCopy;
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

- (unint64_t)deleteInteractionsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit debuggingReason:(id)reason error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  reasonCopy = reason;
  context = objc_autoreleasePoolPush();
  if (limit >= 0x3E8)
  {
    limitCopy = 1000;
  }

  else
  {
    limitCopy = limit;
  }

  if (limit)
  {
    v14 = limitCopy;
  }

  else
  {
    v14 = 1000;
  }

  v35 = 0;
  v36 = 0;
  v15 = [(_CDInteractionStore *)self queryInteractionsUsingPredicate:predicateCopy sortDescriptors:descriptorsCopy limit:v14 offset:0 objectIDs:&v36 error:&v35];
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
      v42 = reasonCopy;
      v43 = 2113;
      v44 = v17;
      _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_DEFAULT, "Deleted %{public}@%tu interactions with reason %{public}@: %{private}@", buf, 0x2Au);
    }
  }

  v21 = [v36 count];
  v22 = [(_DKCoreDataStorage *)self->_storage managedObjectContextFor:*MEMORY[0x1E696A388]];
  if (v21 >= v14)
  {
    v23 = [_CDInteractionStore predicateFilteringUsernameForPredicate:predicateCopy];
    LOBYTE(v32) = 0;
    v24 = v22;
    v25 = v23;
    v26 = descriptorsCopy;
  }

  else
  {
    v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v36];
    LOBYTE(v32) = 0;
    v24 = v22;
    v25 = v23;
    v26 = 0;
  }

  v27 = [_DKCoreDataStorage deleteObjectsInContext:v24 entityName:@"Interactions" predicate:v25 sortDescriptors:v26 fetchLimit:limit includeSubentities:0 includePendingChanges:v32];

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

- (unint64_t)deleteInteractionsWithBundleId:(id)id error:(id *)error
{
  idCopy = id;
  v7 = _CDTargetBundleIdForBundleId(idCopy);
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleId == %@ OR targetBundleId == %@ OR targetBundleId == %@", idCopy, idCopy, v7];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"deleteInteractionsWithBundleId:%@ andTargetBundleIds:%@, %@", idCopy, idCopy, v7];

  v10 = [(_CDInteractionStore *)self deleteInteractionsMatchingPredicate:v8 sortDescriptors:MEMORY[0x1E695E0F0] limit:20000 debuggingReason:v9 error:error];
  return v10;
}

- (unint64_t)deleteInteractionsWithBundleId:(id)id account:(id)account error:(id *)error
{
  v8 = MEMORY[0x1E696AE18];
  accountCopy = account;
  idCopy = id;
  v11 = _CDTargetBundleIdForBundleId(idCopy);
  accountCopy = [v8 predicateWithFormat:@"(bundleId == %@ OR targetBundleId == %@) AND account == %@", idCopy, v11, accountCopy];

  accountCopy2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"deleteInteractionsWithBundleId:%@ account:%@", idCopy, accountCopy];
  v14 = [(_CDInteractionStore *)self deleteInteractionsMatchingPredicate:accountCopy sortDescriptors:MEMORY[0x1E695E0F0] limit:20000 debuggingReason:accountCopy2 error:error];

  return v14;
}

- (unint64_t)deleteInteractionsWithBundleId:(id)id domainIdentifier:(id)identifier error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v8 = MEMORY[0x1E695DEC8];
  identifierCopy2 = identifier;
  idCopy = id;
  v11 = [v8 arrayWithObjects:&identifierCopy count:1];

  v12 = [(_CDInteractionStore *)self deleteInteractionsWithBundleId:idCopy domainIdentifiers:v11 error:error, identifierCopy, v16];
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (unint64_t)deleteInteractionsWithBundleId:(id)id domainIdentifiers:(id)identifiers error:(id *)error
{
  v29[2] = *MEMORY[0x1E69E9840];
  idCopy = id;
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v23 = _CDTargetBundleIdForBundleId(idCopy);
    v26 = [objc_alloc(MEMORY[0x1E69C5D18]) initWithDomainsFromArray:identifiersCopy];
    allDomains = [v26 allDomains];
    errorCopy = error;
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(domainIdentifier == $domainIdentifier) OR (domainIdentifier >= $domainIdentifierDot AND domainIdentifier < $domainIdentifierSlash)"];
    allObjects = [allDomains allObjects];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __78___CDInteractionStore_deleteInteractionsWithBundleId_domainIdentifiers_error___block_invoke;
    v27[3] = &unk_1E7368BB0;
    v28 = v11;
    v24 = v11;
    v13 = [allObjects _pas_mappedArrayWithTransform:v27];

    v14 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v13];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(noindex(mechanism) != %@ AND noindex(bundleId) == %@) OR (noindex(mechanism) == %@ AND noindex(targetBundleId) == %@)", &unk_1F05EE7D8, idCopy, &unk_1F05EE7D8, v23];
    v16 = MEMORY[0x1E696AB28];
    v29[0] = v14;
    v29[1] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v18 = [v16 andPredicateWithSubpredicates:v17];
    idCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"deleteInteractionsWithBundleId:%@ domainIdentifiers:(redacted) (bundleId)", idCopy];
    v20 = [(_CDInteractionStore *)self deleteInteractionsMatchingPredicate:v18 sortDescriptors:MEMORY[0x1E695E0F0] limit:20000 debuggingReason:idCopy error:errorCopy];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (void)deleteInteractionsMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit debuggingReason:(id)reason completionHandler:(id)handler
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  reasonCopy = reason;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __115___CDInteractionStore_deleteInteractionsMatchingPredicate_sortDescriptors_limit_debuggingReason_completionHandler___block_invoke;
  v25[3] = &unk_1E7368BD8;
  v25[4] = self;
  v26 = predicateCopy;
  v27 = descriptorsCopy;
  v28 = reasonCopy;
  v29 = handlerCopy;
  limitCopy = limit;
  v17 = v25;
  v18 = workQueue;
  v19 = handlerCopy;
  v20 = reasonCopy;
  v21 = descriptorsCopy;
  v22 = predicateCopy;
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

- (void)deleteInteractionsWithBundleId:(id)id completionHandler:(id)handler
{
  idCopy = id;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72___CDInteractionStore_deleteInteractionsWithBundleId_completionHandler___block_invoke;
  v15[3] = &unk_1E7368368;
  v15[4] = self;
  v16 = idCopy;
  v17 = handlerCopy;
  v9 = v15;
  v10 = workQueue;
  v11 = handlerCopy;
  v12 = idCopy;
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

- (void)deleteInteractionsWithBundleId:(id)id account:(id)account completionHandler:(id)handler
{
  idCopy = id;
  accountCopy = account;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80___CDInteractionStore_deleteInteractionsWithBundleId_account_completionHandler___block_invoke;
  v19[3] = &unk_1E7368C00;
  v19[4] = self;
  v20 = idCopy;
  v21 = accountCopy;
  v22 = handlerCopy;
  v12 = v19;
  v13 = workQueue;
  v14 = handlerCopy;
  v15 = accountCopy;
  v16 = idCopy;
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

- (void)deleteInteractionsWithBundleId:(id)id domainIdentifier:(id)identifier completionHandler:(id)handler
{
  idCopy = id;
  identifierCopy = identifier;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89___CDInteractionStore_deleteInteractionsWithBundleId_domainIdentifier_completionHandler___block_invoke;
  v19[3] = &unk_1E7368C00;
  v19[4] = self;
  v20 = idCopy;
  v21 = identifierCopy;
  v22 = handlerCopy;
  v12 = v19;
  v13 = workQueue;
  v14 = handlerCopy;
  v15 = identifierCopy;
  v16 = idCopy;
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

- (void)deleteInteractionsWithBundleId:(id)id domainIdentifiers:(id)identifiers completionHandler:(id)handler
{
  idCopy = id;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  workQueue = self->_workQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90___CDInteractionStore_deleteInteractionsWithBundleId_domainIdentifiers_completionHandler___block_invoke;
  v19[3] = &unk_1E7368C00;
  v19[4] = self;
  v20 = idCopy;
  v21 = identifiersCopy;
  v22 = handlerCopy;
  v12 = v19;
  v13 = workQueue;
  v14 = handlerCopy;
  v15 = identifiersCopy;
  v16 = idCopy;
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

- (id)anonymizedCopyToDirectory:(id)directory salt:(id)salt
{
  directoryCopy = directory;
  saltCopy = salt;
  v8 = objc_autoreleasePoolPush();
  v9 = [(_DKCoreDataStorage *)self->_storage copyStorageFor:*MEMORY[0x1E696A388] toDirectory:directoryCopy];

  objc_autoreleasePoolPop(v8);
  if (v9)
  {
    v9 = [_CDInteractionStore storeWithDirectory:directoryCopy readOnly:0];
    [v9 anonymizeWithSalt:saltCopy];
  }

  return v9;
}

- (void)anonymizeWithSalt:(id)salt
{
  saltCopy = salt;
  [(_CDInteractionStore *)self anonymizeContactsWithSalt:saltCopy];
  [(_CDInteractionStore *)self anonymizeKeywordsWithSalt:saltCopy];
  [(_CDInteractionStore *)self anonymizeInteractionsWithSalt:saltCopy];
  [(_CDInteractionStore *)self anonymizeAttachmentsWithSalt:saltCopy];
}

- (void)anonymizeInteractionsWithSalt:(id)salt
{
  storage = self->_storage;
  v4 = *MEMORY[0x1E696A388];
  saltCopy = salt;
  v7 = [(_DKCoreDataStorage *)storage managedObjectContextFor:v4];
  LOBYTE(v6) = 0;
  [_DKCoreDataStorage anonymizeObjectStringsInContext:v7 entityName:@"Interactions" predicate:0 sortDescriptors:0 batchFetchLimit:1000 totalFetchLimit:0 includeSubentities:v6 salt:saltCopy];
}

- (void)anonymizeKeywordsWithSalt:(id)salt
{
  storage = self->_storage;
  v4 = *MEMORY[0x1E696A388];
  saltCopy = salt;
  v7 = [(_DKCoreDataStorage *)storage managedObjectContextFor:v4];
  LOBYTE(v6) = 0;
  [_DKCoreDataStorage anonymizeObjectStringsInContext:v7 entityName:@"Keywords" predicate:0 sortDescriptors:0 batchFetchLimit:1000 totalFetchLimit:0 includeSubentities:v6 salt:saltCopy];
}

- (void)anonymizeContactsWithSalt:(id)salt
{
  storage = self->_storage;
  v4 = *MEMORY[0x1E696A388];
  saltCopy = salt;
  v7 = [(_DKCoreDataStorage *)storage managedObjectContextFor:v4];
  LOBYTE(v6) = 0;
  [_DKCoreDataStorage anonymizeObjectStringsInContext:v7 entityName:@"Contacts" predicate:0 sortDescriptors:0 batchFetchLimit:1000 totalFetchLimit:0 includeSubentities:v6 salt:saltCopy];
}

- (void)anonymizeAttachmentsWithSalt:(id)salt
{
  storage = self->_storage;
  v4 = *MEMORY[0x1E696A388];
  saltCopy = salt;
  v7 = [(_DKCoreDataStorage *)storage managedObjectContextFor:v4];
  LOBYTE(v6) = 0;
  [_DKCoreDataStorage anonymizeObjectStringsInContext:v7 entityName:@"Attachment" predicate:0 sortDescriptors:0 batchFetchLimit:1000 totalFetchLimit:0 includeSubentities:v6 salt:saltCopy];
}

+ (id)predicateFilteringUsernameForPredicate:(id)predicate
{
  predicateCopy = predicate;
  v4 = predicateCopy;
  if (predicateCopy)
  {
    v5 = predicateCopy;
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