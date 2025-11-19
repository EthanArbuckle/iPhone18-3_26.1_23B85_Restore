@interface CDInteractionStore
@end

@implementation CDInteractionStore

void __70___CDInteractionStore_fetchOrCreateKeywordRecord_context_cache_error___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v2 = *(a1 + 40);
  v3 = v2 == 0;
  if (!v2)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695D5E0]);
    v11 = [MEMORY[0x1E695D5B8] entityForName:@"Keywords" inManagedObjectContext:*(a1 + 56)];
    [v4 setEntity:v11];

    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"keyword == %@", *(a1 + 48)];
    [v4 setPredicate:v12];

    v10 = [MEMORY[0x1E695DF00] date];
    v13 = *(a1 + 56);
    v31 = 0;
    v14 = [v13 executeFetchRequest:v4 error:&v31];
    v8 = v31;
    v15 = [v14 lastObject];
    v16 = *(*(a1 + 72) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v4 fetchLimit];
      [v10 timeIntervalSinceNow];
      v21 = v20;
      v22 = *(*(*(a1 + 72) + 8) + 40) != 0;
      v23 = [v4 predicate];
      *buf = 134218755;
      v34 = v19;
      v35 = 2048;
      v36 = -v21;
      v37 = 1024;
      v38 = v22;
      v39 = 2113;
      v40 = v23;
      _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_INFO, "fetchOrCreateKeywordRecord finished executeFetchRequest, fetchLimit %lu object(s), elapsed %f(sec), returned %i object(s), Predicate: %{private}@", buf, 0x26u);
    }

    goto LABEL_7;
  }

  v4 = [v2 objectForKeyedSubscript:*(a1 + 48)];
  v5 = v4 == 0;
  if (v4)
  {
    v6 = *(a1 + 56);
    v32 = 0;
    v7 = [v6 existingObjectWithID:v4 error:&v32];
    v8 = v32;
    v9 = *(*(a1 + 72) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;
LABEL_7:

    v5 = v3;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  objc_storeStrong((*(*(a1 + 80) + 8) + 40), v8);
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"Keywords" inManagedObjectContext:*(a1 + 56)];
    v25 = *(*(a1 + 72) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    v27 = [MEMORY[0x1E695DF00] date];
    [v27 timeIntervalSinceReferenceDate];
    [*(*(*(a1 + 72) + 8) + 40) setCreationDate:?];

    [*(*(*(a1 + 72) + 8) + 40) setKeyword:*(a1 + 48)];
  }

  if (*(a1 + 40))
  {
    v28 = *(*(*(a1 + 72) + 8) + 40);
    if (v28)
    {
      v29 = [v28 objectID];
      [*(a1 + 40) setObject:v29 forKeyedSubscript:*(a1 + 48)];
    }
  }

LABEL_16:

  v30 = *MEMORY[0x1E69E9840];
}

void __73___CDInteractionStore_fetchOrCreateAttachmentRecord_context_cache_error___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v2 = *(a1 + 40);
  v3 = v2 == 0;
  if (!v2)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695D5E0]);
    v11 = [MEMORY[0x1E695D5B8] entityForName:@"Attachment" inManagedObjectContext:*(a1 + 56)];
    [v4 setEntity:v11];

    v12 = MEMORY[0x1E696AE18];
    v13 = [*(a1 + 48) identifier];
    v14 = [*(a1 + 48) cloudIdentifier];
    v15 = [*(a1 + 48) uti];
    v16 = [*(a1 + 48) personInPhoto];
    v17 = [*(a1 + 48) photoSceneDescriptor];
    v18 = [v12 predicateWithFormat:@"identifier == %@ AND cloudIdentifier == %@ AND uti == %@ AND personInPhoto == %@ AND photoSceneDescriptor == %@", v13, v14, v15, v16, v17];
    [v4 setPredicate:v18];

    v10 = [MEMORY[0x1E695DF00] date];
    v19 = *(a1 + 56);
    v46 = 0;
    v20 = [v19 executeFetchRequest:v4 error:&v46];
    v8 = v46;
    v21 = [v20 lastObject];
    v22 = *(*(a1 + 72) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    v24 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v4 fetchLimit];
      [v10 timeIntervalSinceNow];
      v27 = v26;
      v28 = *(*(*(a1 + 72) + 8) + 40) != 0;
      v29 = [v4 predicate];
      *buf = 134218755;
      v49 = v25;
      v50 = 2048;
      v51 = -v27;
      v52 = 1024;
      v53 = v28;
      v54 = 2113;
      v55 = v29;
      _os_log_impl(&dword_191750000, v24, OS_LOG_TYPE_INFO, "fetchOrCreateAttachmentRecord finished executeFetchRequest, fetchLimit %lu object(s), elapsed %f(sec), returned %i object(s), Predicate: %{private}@", buf, 0x26u);
    }

    goto LABEL_7;
  }

  v4 = [v2 objectForKeyedSubscript:*(a1 + 48)];
  v5 = v4 == 0;
  if (v4)
  {
    v6 = *(a1 + 56);
    v47 = 0;
    v7 = [v6 existingObjectWithID:v4 error:&v47];
    v8 = v47;
    v9 = *(*(a1 + 72) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;
LABEL_7:

    v5 = v3;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  objc_storeStrong((*(*(a1 + 80) + 8) + 40), v8);
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v30 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"Attachment" inManagedObjectContext:*(a1 + 56)];
    v31 = *(*(a1 + 72) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    v33 = [*(a1 + 48) creationDate];
    [*(*(*(a1 + 72) + 8) + 40) setCreationDate:v33];

    v34 = [*(a1 + 48) identifier];
    [*(*(*(a1 + 72) + 8) + 40) setIdentifier:v34];

    v35 = [*(a1 + 48) photoLocalIdentifier];
    [*(*(*(a1 + 72) + 8) + 40) setPhotoLocalIdentifier:v35];

    v36 = [*(a1 + 48) cloudIdentifier];
    [*(*(*(a1 + 72) + 8) + 40) setCloudIdentifier:v36];

    v37 = [*(a1 + 48) size];
    [*(*(*(a1 + 72) + 8) + 40) setSizeInBytes:{objc_msgSend(v37, "longLongValue")}];

    v38 = [*(a1 + 48) uti];
    [*(*(*(a1 + 72) + 8) + 40) setUti:v38];

    v39 = [*(a1 + 48) contentText];
    [*(*(*(a1 + 72) + 8) + 40) setContentText:v39];

    v40 = [*(a1 + 48) contentURL];
    [*(*(*(a1 + 72) + 8) + 40) setContentURL:v40];

    v41 = [*(a1 + 48) personInPhoto];
    [*(*(*(a1 + 72) + 8) + 40) setPersonInPhoto:v41];

    v42 = [*(a1 + 48) photoSceneDescriptor];
    [*(*(*(a1 + 72) + 8) + 40) setPhotoSceneDescriptor:v42];
  }

  if (*(a1 + 40))
  {
    v43 = *(*(*(a1 + 72) + 8) + 40);
    if (v43)
    {
      v44 = [v43 objectID];
      [*(a1 + 40) setObject:v44 forKeyedSubscript:*(a1 + 48)];
    }
  }

LABEL_16:

  v45 = *MEMORY[0x1E69E9840];
}

void __70___CDInteractionStore_fetchOrCreateContactRecord_context_cache_error___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v2 = *(a1 + 40);
  v50 = v2 == 0;
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695D5E0]);
    v10 = [MEMORY[0x1E695D5B8] entityForName:@"Contacts" inManagedObjectContext:*(a1 + 56)];
    [v3 setEntity:v10];

    v11 = MEMORY[0x1E696AE18];
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "personIdType")}];
    v12 = [*(a1 + 48) personId];
    v13 = [*(a1 + 48) identifier];
    v14 = [*(a1 + 48) displayName];
    v15 = [*(a1 + 48) customIdentifier];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "displayType")}];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 48), "participantStatus")}];
    v18 = [v11 predicateWithFormat:@"personIdType == %@ AND personId == %@ AND identifier == %@ AND displayName == %@ AND customIdentifier == %@ AND displayType == %@ AND participantStatus == %@", v49, v12, v13, v14, v15, v16, v17];
    [v3 setPredicate:v18];

    v19 = [MEMORY[0x1E695DF00] date];
    v20 = *(a1 + 56);
    v51 = 0;
    v21 = [v20 executeFetchRequest:v3 error:&v51];
    v7 = v51;
    v22 = [v21 lastObject];
    v23 = *(*(a1 + 72) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    v25 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [v3 fetchLimit];
      [v19 timeIntervalSinceNow];
      v28 = v27;
      v29 = *(*(*(a1 + 72) + 8) + 40) != 0;
      v30 = [v3 predicate];
      *buf = 134218755;
      v54 = v26;
      v55 = 2048;
      v56 = -v28;
      v57 = 1024;
      v58 = v29;
      v59 = 2113;
      v60 = v30;
      _os_log_impl(&dword_191750000, v25, OS_LOG_TYPE_INFO, "fetchOrCreateContactRecord finished executeFetchRequest, fetchLimit %lu object(s), elapsed %f(sec), returned %i object(s), Predicate: %{private}@", buf, 0x26u);
    }

LABEL_8:
    v4 = v50;
    goto LABEL_10;
  }

  v3 = [v2 objectForKeyedSubscript:*(a1 + 48)];
  v4 = v3 == 0;
  if (v3)
  {
    v5 = *(a1 + 56);
    v52 = 0;
    v6 = [v5 existingObjectWithID:v3 error:&v52];
    v7 = v52;
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v6;

    if (*(*(*(a1 + 72) + 8) + 40))
    {
      v4 = 0;
      goto LABEL_10;
    }

    v19 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __70___CDInteractionStore_fetchOrCreateContactRecord_context_cache_error___block_invoke_cold_1();
    }

    goto LABEL_8;
  }

  v7 = 0;
LABEL_10:

  objc_storeStrong((*(*(a1 + 80) + 8) + 40), v7);
  v31 = *(*(*(a1 + 72) + 8) + 40);
  if (v31)
  {
    buf[0] = 0;
    v32 = [*(a1 + 64) appendMissingInformationForRecord:v31 fromContact:*(a1 + 48) cacheUpdateRequired:buf];
    v33 = *(*(a1 + 72) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;

    v35 = v4 | buf[0];
  }

  else
  {
    v36 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"Contacts" inManagedObjectContext:*(a1 + 56)];
    v37 = *(*(a1 + 72) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;

    v39 = [MEMORY[0x1E695DF00] date];
    [v39 timeIntervalSinceReferenceDate];
    [*(*(*(a1 + 72) + 8) + 40) setCreationDate:?];

    v40 = [*(a1 + 48) identifier];
    [*(*(*(a1 + 72) + 8) + 40) setIdentifier:v40];

    v41 = [*(a1 + 48) customIdentifier];
    [*(*(*(a1 + 72) + 8) + 40) setCustomIdentifier:v41];

    [*(*(*(a1 + 72) + 8) + 40) setPersonIdType:{objc_msgSend(*(a1 + 48), "personIdType")}];
    v42 = [*(a1 + 48) personId];
    [*(*(*(a1 + 72) + 8) + 40) setPersonId:v42];

    [*(*(*(a1 + 72) + 8) + 40) setType:{objc_msgSend(*(a1 + 48), "type")}];
    v43 = [*(a1 + 48) displayName];
    [*(*(*(a1 + 72) + 8) + 40) setDisplayName:v43];

    [*(*(*(a1 + 72) + 8) + 40) setDisplayType:{objc_msgSend(*(a1 + 48), "displayType")}];
    v44 = [*(a1 + 48) displayImageURL];
    [*(*(*(a1 + 72) + 8) + 40) setDisplayImageURL:v44];

    [*(*(*(a1 + 72) + 8) + 40) setParticipantStatus:{objc_msgSend(*(a1 + 48), "participantStatus")}];
    v35 = 1;
  }

  v45 = [*(*(*(a1 + 72) + 8) + 40) participantStatus];
  if (v45 != [*(a1 + 48) participantStatus])
  {
    [*(*(*(a1 + 72) + 8) + 40) setParticipantStatus:{objc_msgSend(*(a1 + 48), "participantStatus")}];
  }

  if (v35)
  {
    if (*(a1 + 40))
    {
      v46 = *(*(*(a1 + 72) + 8) + 40);
      if (v46)
      {
        v47 = [v46 objectID];
        [*(a1 + 40) setObject:v47 forKeyedSubscript:*(a1 + 48)];
      }
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

void __70___CDInteractionStore_batchFetchExistingKeywordRecords_context_error___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:@"Keywords" inManagedObjectContext:*(a1 + 40)];
  [v2 setEntity:v3];

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"keyword in %@", *(a1 + 48)];
  [v2 setPredicate:v4];

  v5 = [MEMORY[0x1E695DF00] date];
  v6 = *(a1 + 40);
  v27 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v27];
  v8 = v27;
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), v8);
  v9 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v2 fetchLimit];
    [v5 timeIntervalSinceNow];
    v12 = v11;
    v13 = [v7 count];
    v14 = [v2 predicate];
    *buf = 134218755;
    v30 = v10;
    v31 = 2048;
    v32 = -v12;
    v33 = 2048;
    v34 = v13;
    v35 = 2113;
    v36 = v14;
    _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "batchFetchExistingKeywordRecords finished executeFetchRequest, fetchLimit %lu object(s), elapsed %f(sec), returned %lu object(s), Predicate: %{private}@", buf, 0x2Au);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v16)
  {
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        v20 = [*(a1 + 56) createKeywordFromRecord:v19];
        v21 = [v19 objectID];
        [*(a1 + 64) setObject:v21 forKeyedSubscript:v20];
      }

      v16 = [v15 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v16);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __73___CDInteractionStore_batchFetchExistingAttachmentRecords_context_error___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:@"Attachment" inManagedObjectContext:*(a1 + 40)];
  [v2 setEntity:v3];

  v4 = [*(a1 + 48) valueForKey:@"identifier"];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"identifier in %@", v4];
  [v2 setPredicate:v5];

  v23 = [MEMORY[0x1E695DF00] date];
  v6 = *(a1 + 40);
  v28 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v28];
  v8 = v28;
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), v8);
  v9 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v2 fetchLimit];
    [v23 timeIntervalSinceNow];
    v12 = v11;
    v13 = [v7 count];
    v14 = [v2 predicate];
    *buf = 134218755;
    v31 = v10;
    v32 = 2048;
    v33 = -v12;
    v34 = 2048;
    v35 = v13;
    v36 = 2113;
    v37 = v14;
    _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "batchFetchExistingAttachmentRecords finished executeFetchRequest, fetchLimit %lu object(s), elapsed %f(sec), returned %lu object(s), Predicate: %{private}@", buf, 0x2Au);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v16)
  {
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v20 = [*(a1 + 56) createAttachmentFromRecord:v19];
        v21 = [v19 objectID];
        [*(a1 + 64) setObject:v21 forKeyedSubscript:v20];
      }

      v16 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v16);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __70___CDInteractionStore_batchFetchExistingContactRecords_context_error___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:@"Contacts" inManagedObjectContext:*(a1 + 40)];
  [v2 setEntity:v3];

  v4 = [MEMORY[0x1E695DFA8] set];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = *(a1 + 48);
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v6)
  {
    v7 = *v38;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        v10 = [v9 identifier];

        if (v10)
        {
          v11 = [v9 identifier];
          [v4 addObject:v11];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v6);
  }

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"identifier in %@", v4];
  [v2 setPredicate:v12];

  v31 = [MEMORY[0x1E695DF00] date];
  v13 = *(a1 + 40);
  v36 = 0;
  v14 = [v13 executeFetchRequest:v2 error:&v36];
  v30 = v36;
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), v30);
  v15 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v2 fetchLimit];
    [v31 timeIntervalSinceNow];
    v18 = v17;
    v19 = [v14 count];
    v20 = [v2 predicate];
    *buf = 134218755;
    v43 = v16;
    v44 = 2048;
    v45 = -v18;
    v46 = 2048;
    v47 = v19;
    v48 = 2113;
    v49 = v20;
    _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_INFO, "batchFetchExistingContactRecords finished executeFetchRequest, fetchLimit %lu object(s), elapsed %f(sec), returned %lu object(s), Predicate: %{private}@", buf, 0x2Au);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = v14;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v22)
  {
    v23 = *v33;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v32 + 1) + 8 * j);
        v26 = objc_autoreleasePoolPush();
        v27 = [*(a1 + 56) getContactForRecord:v25];
        v28 = [v25 objectID];
        [*(a1 + 64) setObject:v28 forKeyedSubscript:v27];

        objc_autoreleasePoolPop(v26);
      }

      v22 = [v21 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v22);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __77___CDInteractionStore_batchFetchExistingInteractionsWithUUIDs_context_error___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v27 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v2 = [MEMORY[0x1E695D5B8] entityForName:@"Interactions" inManagedObjectContext:*(a1 + 40)];
  [v27 setEntity:v2];

  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid in %@", *(a1 + 48)];
  v4 = [_CDInteractionStore predicateFilteringUsernameForPredicate:v3];
  [v27 setPredicate:v4];

  v26 = [MEMORY[0x1E695DF00] date];
  v5 = *(a1 + 40);
  v32 = 0;
  v6 = [v5 executeFetchRequest:v27 error:&v32];
  v25 = v32;
  objc_storeStrong((*(*(a1 + 72) + 8) + 40), v25);
  v7 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v27 fetchLimit];
    [v26 timeIntervalSinceNow];
    v10 = v9;
    v11 = [v6 count];
    v12 = [v27 predicate];
    *buf = 134218755;
    v35 = v8;
    v36 = 2048;
    v37 = -v10;
    v38 = 2048;
    v39 = v11;
    v40 = 2113;
    v41 = v12;
    _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_INFO, "batchFetchExistingInteractionsWithUUIDs finished executeFetchRequest, fetchLimit %lu object(s), elapsed %f(sec), returned %lu object(s), Predicate: %{private}@", buf, 0x2Au);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
  v15 = v13;
  if (!v14)
  {
    goto LABEL_16;
  }

  v16 = 0;
  v17 = *v29;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v29 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v28 + 1) + 8 * i);
      v20 = [v19 uuid];
      if (v20)
      {
        v21 = [v19 objectID];
        v22 = *(a1 + 64);
        v23 = [v19 uuid];
        [v22 setObject:v21 forKeyedSubscript:v23];
      }

      else
      {
        v16 += [v19 isDeleted] ^ 1;
      }
    }

    v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v14);

  if (v16)
  {
    v15 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __77___CDInteractionStore_batchFetchExistingInteractionsWithUUIDs_context_error___block_invoke_cold_2((a1 + 48), v16, v15);
    }

LABEL_16:
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __103___CDInteractionStore_createInteractionRecord_context_keywordCache_attachmentCache_contactCache_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"Interactions" inManagedObjectContext:*(a1 + 32)];
  v3 = *(*(a1 + 80) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MEMORY[0x1E695DF00] date];
  [v5 timeIntervalSinceReferenceDate];
  [*(*(*(a1 + 80) + 8) + 40) setCreationDate:?];

  [*(a1 + 40) fillWithoutRelationshipsInteractionRecord:*(*(*(a1 + 80) + 8) + 40) fromInteraction:*(a1 + 48)];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) sender];
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v60 = 0;
  v10 = [v6 fetchOrCreateContactRecord:v7 context:v8 cache:v9 error:&v60];
  v11 = v60;
  v12 = v60;
  [*(*(*(a1 + 80) + 8) + 40) setSender:v10];

  v13 = *(a1 + 40);
  v14 = [*(*(*(a1 + 80) + 8) + 40) sender];
  [v13 updateCachedStatsForContactRecord:v14 isSender:1 withInteraction:*(a1 + 48)];

  if (v12)
  {
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), v11);
  }

  v15 = *(*(*(a1 + 80) + 8) + 40);
  v16 = objc_alloc(MEMORY[0x1E695DFD8]);
  v17 = [*(a1 + 48) recipients];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __103___CDInteractionStore_createInteractionRecord_context_keywordCache_attachmentCache_contactCache_error___block_invoke_2;
  v55[3] = &unk_1E7368880;
  v41 = *(a1 + 32);
  v18 = v41.i64[0];
  v56 = vextq_s8(v41, v41, 8uLL);
  v57 = *(a1 + 56);
  v19 = *(a1 + 48);
  v20 = *(a1 + 88);
  v58 = v19;
  v59 = v20;
  v21 = [v17 _pas_mappedArrayWithTransform:v55];
  v22 = [v16 initWithArray:v21];
  [v15 addRecipients:v22];

  v23 = *(*(*(a1 + 80) + 8) + 40);
  v24 = objc_alloc(MEMORY[0x1E695DFD8]);
  v25 = [*(a1 + 48) keywords];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __103___CDInteractionStore_createInteractionRecord_context_keywordCache_attachmentCache_contactCache_error___block_invoke_3;
  v51[3] = &unk_1E73688A8;
  v42 = *(a1 + 32);
  v26 = v42.i64[0];
  v52 = vextq_s8(v42, v42, 8uLL);
  v27 = *(a1 + 64);
  v28 = *(a1 + 88);
  v53 = v27;
  v54 = v28;
  v29 = [v25 _pas_mappedArrayWithTransform:v51];
  v30 = [v24 initWithArray:v29];
  [v23 addKeywords:v30];

  v31 = *(*(*(a1 + 80) + 8) + 40);
  v32 = objc_alloc(MEMORY[0x1E695DFD8]);
  v33 = [*(a1 + 48) attachments];
  v44 = MEMORY[0x1E69E9820];
  v45 = 3221225472;
  v46 = __103___CDInteractionStore_createInteractionRecord_context_keywordCache_attachmentCache_contactCache_error___block_invoke_4;
  v47 = &unk_1E73688D0;
  v43 = *(a1 + 32);
  v34 = v43.i64[0];
  v48 = vextq_s8(v43, v43, 8uLL);
  v35 = *(a1 + 72);
  v36 = *(a1 + 88);
  v49 = v35;
  v50 = v36;
  v37 = [v33 _pas_mappedArrayWithTransform:&v44];
  v38 = [v32 initWithArray:v37];
  [v31 addAttachments:v38];

  v39 = [*(a1 + 48) nsUserName];
  if (v39)
  {
    [*(a1 + 48) nsUserName];
  }

  else
  {
    NSUserName();
  }
  v40 = ;
  [*(*(*(a1 + 80) + 8) + 40) setNsUserName:{v40, *&v43, v44, v45, v46, v47, v48.i64[0]}];
}

id __103___CDInteractionStore_createInteractionRecord_context_keywordCache_attachmentCache_contactCache_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = 0;
  v6 = [v3 fetchOrCreateContactRecord:a2 context:v4 cache:v5 error:&v10];
  v7 = v10;
  v8 = v10;
  [*(a1 + 32) updateCachedStatsForContactRecord:v6 isSender:0 withInteraction:*(a1 + 56)];
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v7);
  }

  return v6;
}

id __103___CDInteractionStore_createInteractionRecord_context_keywordCache_attachmentCache_contactCache_error___block_invoke_3(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v10 = 0;
  v6 = [v3 fetchOrCreateKeywordRecord:a2 context:v4 cache:v5 error:&v10];
  v7 = v10;
  v8 = v10;
  if (v8)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v7);
  }

  return v6;
}

id __103___CDInteractionStore_createInteractionRecord_context_keywordCache_attachmentCache_contactCache_error___block_invoke_4(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v10 = 0;
  v6 = [v3 fetchOrCreateAttachmentRecord:a2 context:v4 cache:v5 error:&v10];
  v7 = v10;
  v8 = v10;
  if (v8)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v7);
  }

  return v6;
}

void __60___CDInteractionStore_recordInteractions_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 recordInteractionsBatch:v3 error:&v7];
  v5 = v7;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v5);
  }
}

void __53___CDInteractionStore_recordInteractionsBatch_error___block_invoke(id *a1)
{
  v120 = *MEMORY[0x1E69E9840];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v1 = a1[4];
  v2 = [v1 countByEnumeratingWithState:&v102 objects:v116 count:16];
  v3 = 0x1E7366000uLL;
  if (v2)
  {
    v4 = v2;
    v5 = *v103;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v103 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v102 + 1) + 8 * i);
        if ([v7 mechanism] == 13 && (objc_msgSend(v7, "forcePersistInteraction") & 1) == 0)
        {
          v8 = [v7 targetBundleId];
          v9 = MEMORY[0x1E695DFD8];
          v10 = +[_CDConstants shareSheetTargetBundleIdMessages];
          v11 = [v9 setWithObjects:{v10, 0}];

          if (v8 && [v11 containsObject:v8])
          {
            [a1[5] removeObject:v7];
            if (*(a1[6] + 6) && ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()))
            {
              [v7 fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:*(a1[6] + 6)];
            }

            [a1[6] setPendingShareSheetInteraction:v7];
            v12 = +[_CDLogging interactionChannel];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v119 = v8;
              _os_log_debug_impl(&dword_191750000, v12, OS_LOG_TYPE_DEBUG, "Storing pending interaction for %@", buf, 0xCu);
            }
          }

          v3 = 0x1E7366000uLL;
        }
      }

      v4 = [v1 countByEnumeratingWithState:&v102 objects:v116 count:16];
    }

    while (v4);
  }

  v13 = a1;
  v14 = a1 + 6;
  v15 = [a1[6] pendingShareSheetInteraction];

  v88 = a1 + 6;
  if (!v15)
  {
    goto LABEL_74;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = [a1[5] copy];
  v92 = [obj countByEnumeratingWithState:&v98 objects:v115 count:16];
  if (!v92)
  {
    goto LABEL_73;
  }

  v91 = *v99;
  while (2)
  {
    v16 = 0;
    do
    {
      if (*v99 != v91)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v98 + 1) + 8 * v16);
      v18 = [*v14 pendingShareSheetInteraction];
      v19 = v17;
      if ([v19 direction] != 1)
      {
        goto LABEL_63;
      }

      v20 = [v18 targetBundleId];
      v21 = *(v3 + 264);
      v22 = +[_CDConstants shareSheetTargetBundleIdMessages];
      if ([v20 isEqualToString:v22])
      {
        v23 = [v19 bundleId];
        v24 = *(v3 + 264);
        v25 = +[_CDConstants mobileMessagesBundleId];
        v26 = [v23 isEqualToString:v25];

        if (v26)
        {
          v27 = [v18 domainIdentifier];
          if (!v27)
          {
            goto LABEL_63;
          }

          v28 = v27;
          v29 = [v19 domainIdentifier];
          if (!v29)
          {
            goto LABEL_62;
          }

          v30 = v29;
          v31 = [v18 domainIdentifier];
          v32 = [v19 domainIdentifier];
          v33 = [v31 isEqualToString:v32];

          if (v33)
          {
            goto LABEL_70;
          }

          goto LABEL_65;
        }
      }

      else
      {
      }

      v28 = [v18 targetBundleId];
      v34 = *(v3 + 264);
      v35 = +[_CDConstants shareSheetTargetBundleIdMail];
      if (([v28 isEqualToString:v35] & 1) == 0)
      {

LABEL_62:
LABEL_63:

LABEL_64:
        goto LABEL_65;
      }

      v36 = [v19 bundleId];
      v37 = *(v3 + 264);
      v38 = +[_CDConstants mobileMailBundleId];
      v39 = [v36 isEqualToString:v38];

      if (!v39)
      {
        goto LABEL_63;
      }

      v89 = v19;
      v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v41 = [v18 recipients];
      v42 = [v41 countByEnumeratingWithState:&v110 objects:buf count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v111;
        do
        {
          for (j = 0; j != v43; ++j)
          {
            if (*v111 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v110 + 1) + 8 * j);
            if ([v46 type] == 2)
            {
              v47 = [v46 handle];

              if (v47)
              {
                v48 = [v46 handle];
                [v40 addObject:v48];
              }
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v110 objects:buf count:16];
        }

        while (v43);
      }

      v49 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v50 = [v89 recipients];
      v51 = [v50 countByEnumeratingWithState:&v106 objects:v117 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v107;
        do
        {
          for (k = 0; k != v52; ++k)
          {
            if (*v107 != v53)
            {
              objc_enumerationMutation(v50);
            }

            v55 = *(*(&v106 + 1) + 8 * k);
            if ([v55 type] == 2)
            {
              v56 = [v55 handle];

              if (v56)
              {
                v57 = [v55 handle];
                [v49 addObject:v57];
              }
            }
          }

          v52 = [v50 countByEnumeratingWithState:&v106 objects:v117 count:16];
        }

        while (v52);
      }

      if (![v40 isEqualToSet:v49])
      {

        v14 = a1 + 6;
        v3 = 0x1E7366000;
        goto LABEL_64;
      }

      v58 = [v18 startDate];
      v59 = [v89 startDate];
      [v58 timeIntervalSinceDate:v59];
      v61 = v60;

      v19 = v89;
      if (v61 < 0.0)
      {
        v61 = -v61;
      }

      v14 = a1 + 6;
      v3 = 0x1E7366000;
      if (v61 < 10.0)
      {
LABEL_70:
        [v19 setMechanism:13];
        [*v14 pendingShareSheetInteraction];
        v64 = v63 = v19;
        v65 = [v64 bundleId];
        [v63 setBundleId:v65];

        v66 = [*v14 pendingShareSheetInteraction];
        v67 = [v66 targetBundleId];
        [v63 setTargetBundleId:v67];

        v68 = [*v14 pendingShareSheetInteraction];
        v69 = [v68 attachments];
        [v63 setAttachments:v69];

        v70 = +[_CDLogging interactionChannel];
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          __53___CDInteractionStore_recordInteractionsBatch_error___block_invoke_cold_1(v63, v70);
        }

        [*v14 setPendingShareSheetInteraction:0];
        goto LABEL_73;
      }

LABEL_65:
      ++v16;
    }

    while (v16 != v92);
    v62 = [obj countByEnumeratingWithState:&v98 objects:v115 count:16];
    v92 = v62;
    if (v62)
    {
      continue;
    }

    break;
  }

LABEL_73:

  v13 = a1;
LABEL_74:
  if ([v13[5] count])
  {
    v71 = [*v14 pendingShareSheetInteraction];

    if (v71)
    {
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v72 = v13[5];
      v73 = [v72 countByEnumeratingWithState:&v94 objects:v114 count:16];
      if (v73)
      {
        v74 = v73;
        v75 = 0;
        v76 = *v95;
        do
        {
          for (m = 0; m != v74; ++m)
          {
            if (*v95 != v76)
            {
              objc_enumerationMutation(v72);
            }

            v78 = [*(*(&v94 + 1) + 8 * m) startDate];
            v79 = v78;
            if (v75)
            {
              v80 = [v75 laterDate:v78];

              v75 = v80;
            }

            else
            {
              v75 = v78;
            }
          }

          v74 = [v72 countByEnumeratingWithState:&v94 objects:v114 count:16];
        }

        while (v74);
      }

      else
      {
        v75 = 0;
      }

      v81 = [*v88 pendingShareSheetInteraction];
      v82 = [v81 startDate];
      [v75 timeIntervalSinceDate:v82];
      v84 = v83;

      if (v84 < 0.0 || v84 > 60.0)
      {
        v86 = +[_CDLogging interactionChannel];
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          __53___CDInteractionStore_recordInteractionsBatch_error___block_invoke_cold_2(v88, v86);
        }

        [*v88 setPendingShareSheetInteraction:0];
      }
    }
  }

  v87 = *MEMORY[0x1E69E9840];
}

uint64_t __53___CDInteractionStore_recordInteractionsBatch_error___block_invoke_131(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __53___CDInteractionStore_recordInteractionsBatch_error___block_invoke_164(uint64_t a1)
{
  v2 = [[_CDMemoryUsageInterval alloc] initWithName:@"recordInteractionsBatch" client:0];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v3 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53___CDInteractionStore_recordInteractionsBatch_error___block_invoke_2;
  v14[3] = &unk_1E7368920;
  v4 = v2;
  v15 = v4;
  *&v5 = *(a1 + 40);
  *(&v5 + 1) = *(a1 + 48);
  v13 = v5;
  v6 = *(a1 + 32);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v18 = &v20;
  v19 = v7;
  v9 = v8;
  *&v10 = v6;
  *(&v10 + 1) = v9;
  v16 = v13;
  v17 = v10;
  [v3 performWithOptions:4 andBlock:v14];
  [(_CDMemoryUsageInterval *)v4 end];
  v11 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v11;
}

void __53___CDInteractionStore_recordInteractionsBatch_error___block_invoke_2(uint64_t a1)
{
  v174 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v1 = [MEMORY[0x1E695DFA8] set];
  v125 = [MEMORY[0x1E695DFA8] set];
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v159 objects:v173 count:16];
  if (v5)
  {
    v6 = *v160;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v160 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v159 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        v10 = [v8 recipients];

        if (v10)
        {
          v11 = [v8 recipients];
          [v1 addObjectsFromArray:v11];
        }

        v12 = [v8 sender];

        if (v12)
        {
          v13 = [v8 sender];
          [v1 addObject:v13];
        }

        v14 = [v8 keywords];

        if (v14)
        {
          v15 = [v8 keywords];
          [v125 addObjectsFromArray:v15];
        }

        v16 = [v8 attachments];

        if (v16)
        {
          v17 = [v8 attachments];
          [v2 addObjectsFromArray:v17];
        }

        v18 = [v8 uuid];

        if (v18)
        {
          v19 = [v8 uuid];
          [v3 addObject:v19];
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [v4 countByEnumeratingWithState:&v159 objects:v173 count:16];
    }

    while (v5);
  }

  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v158 = 0;
  v22 = [v20 batchFetchExistingContactRecords:v1 context:v21 error:&v158];
  v23 = v158;
  v24 = v158;
  if (([*(a1 + 48) lowPriorityWorkCanContinue] & 1) == 0)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_124;
  }

  if (v24)
  {
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), v23);
    goto LABEL_124;
  }

  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  v157 = 0;
  v123 = [v25 batchFetchExistingKeywordRecords:v125 context:v26 error:&v157];
  v27 = v157;
  v24 = v157;
  if (([*(a1 + 48) lowPriorityWorkCanContinue] & 1) == 0)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_123;
  }

  if (v24)
  {
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), v27);
    goto LABEL_123;
  }

  v28 = *(a1 + 48);
  v29 = *(a1 + 56);
  v156 = 0;
  v116 = [v28 batchFetchExistingAttachmentRecords:v2 context:v29 error:&v156];
  v30 = v156;
  v24 = v156;
  if (([*(a1 + 48) lowPriorityWorkCanContinue] & 1) == 0)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_122;
  }

  if (v24)
  {
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), v30);
    goto LABEL_122;
  }

  v31 = *(a1 + 48);
  v32 = *(a1 + 56);
  v155 = 0;
  v115 = [v31 batchFetchExistingInteractionsWithUUIDs:v3 context:v32 error:&v155];
  v33 = v155;
  v24 = v155;
  if (([*(a1 + 48) lowPriorityWorkCanContinue] & 1) == 0)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_121;
  }

  if (v24)
  {
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), v33);
    goto LABEL_121;
  }

  v34 = *(a1 + 40);
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  obj = v34;
  v113 = [obj countByEnumeratingWithState:&v151 objects:v172 count:16];
  if (!v113)
  {
    v105 = 0;
    goto LABEL_70;
  }

  v105 = 0;
  v108 = *v152;
  do
  {
    v35 = 0;
    do
    {
      if (*v152 != v108)
      {
        v36 = v35;
        objc_enumerationMutation(obj);
        v35 = v36;
      }

      v37 = v35;
      v38 = *(*(&v151 + 1) + 8 * v35);
      context = objc_autoreleasePoolPush();
      if (![*(a1 + 48) lowPriorityWorkCanContinue])
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;
        [*(a1 + 56) reset];
        objc_autoreleasePoolPop(context);
        v63 = obj;
        goto LABEL_119;
      }

      if ([v38 isValidInteraction])
      {
        v39 = [v38 domainIdentifier];
        if (v39)
        {
          goto LABEL_43;
        }

        v39 = [v38 derivedIntentIdentifier];
        if (v39)
        {
          goto LABEL_43;
        }

        v58 = [v38 recipients];
        v59 = v58 == 0;

        if (v59)
        {
          v39 = +[_CDLogging interactionChannel];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            v60 = [v38 targetBundleId];
            v61 = v60;
            if (!v60)
            {
              v101 = [v38 bundleId];
              v61 = v101;
            }

            *buf = 138412290;
            v168 = v61;
            _os_log_fault_impl(&dword_191750000, v39, OS_LOG_TYPE_FAULT, "Interaction from %@ does not have recipients, domain or derived intent identifier set. Suggestions for this intent will be suppressed as no recipient, domain, or derived intent identifier exists", buf, 0xCu);
            if (!v60)
            {
            }
          }

LABEL_43:
        }

        v40 = [v38 uuid];
        v41 = v40 == 0;

        if (v41)
        {
          v47 = +[_CDLogging instrumentationChannel];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            __53___CDInteractionStore_recordInteractionsBatch_error___block_invoke_2_cold_1(&v149, v150, v47);
          }
        }

        else
        {
          v42 = [v38 uuid];
          v43 = [v115 objectForKeyedSubscript:v42];
          v44 = v43 == 0;

          if (v44)
          {
            v48 = *(a1 + 48);
            v49 = *(a1 + 56);
            v148 = 0;
            v106 = [v48 createInteractionRecord:v38 context:v49 keywordCache:v123 attachmentCache:v116 contactCache:v22 error:&v148];
            v50 = v148;
          }

          else
          {
            v45 = [v38 updateDate];
            v46 = [v105 isEqualToDate:v45];

            if (v46)
            {
              v47 = 0;
              goto LABEL_55;
            }

            v51 = *(a1 + 64);
            v52 = [v38 uuid];
            [v51 addObject:v52];

            v53 = *(a1 + 48);
            v54 = *(a1 + 56);
            v147 = 0;
            v106 = [v53 createInteractionRecord:v38 context:v54 keywordCache:v123 attachmentCache:v116 contactCache:v22 error:&v147];
            v50 = v147;
          }

          v47 = v50;
          if (v47)
          {
            objc_storeStrong((*(*(a1 + 80) + 8) + 40), v47);
          }

          v55 = [v106 objectID];
          v56 = [v38 uuid];
          [v115 setObject:v55 forKeyedSubscript:v56];

LABEL_55:
          v57 = [v38 updateDate];

          v105 = v57;
        }
      }

      objc_autoreleasePoolPop(context);
      v35 = v37 + 1;
    }

    while (v113 != v37 + 1);
    v62 = [obj countByEnumeratingWithState:&v151 objects:v172 count:16];
    v113 = v62;
  }

  while (v62);
LABEL_70:

  if ([*(a1 + 56) hasChanges])
  {
    v114 = objc_opt_new();
    v107 = objc_opt_new();
    v104 = objc_opt_new();
    v102 = objc_opt_new();
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v64 = [*(a1 + 56) insertedObjects];
    v65 = [v64 countByEnumeratingWithState:&v143 objects:v171 count:16];
    if (v65)
    {
      contexta = *v144;
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v144 != contexta)
          {
            objc_enumerationMutation(v64);
          }

          v67 = *(*(&v143 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v68 = *(a1 + 48);
            v69 = v67;
            v70 = [v68 getContactForRecord:v69];
            [v114 setObject:v69 forKeyedSubscript:v70];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v71 = v67;
              v70 = [v71 keyword];
              [v107 setObject:v71 forKeyedSubscript:v70];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v72 = *(a1 + 48);
                v73 = v67;
                v70 = [v72 createAttachmentFromRecord:v73];
                [v104 setObject:v73 forKeyedSubscript:v70];
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v74 = v67;
                  v70 = [v74 uuid];
                  [v102 setObject:v74 forKeyedSubscript:v70];
                }

                else
                {
                  v70 = +[_CDLogging interactionChannel];
                  if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
                  {
                    v75 = objc_opt_class();
                    *buf = 138543619;
                    v168 = v75;
                    v169 = 2117;
                    v170 = v67;
                    _os_log_fault_impl(&dword_191750000, v70, OS_LOG_TYPE_FAULT, "Unexpected record type %{public}@ (%{sensitive}@)", buf, 0x16u);
                  }
                }
              }
            }
          }
        }

        v65 = [v64 countByEnumeratingWithState:&v143 objects:v171 count:16];
      }

      while (v65);
    }

    v76 = *(a1 + 56);
    v142 = 0;
    v77 = [v76 save:&v142];
    v100 = v142;
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), v100);
    if (v77)
    {
      v99 = objc_autoreleasePoolPush();
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v78 = v114;
      contextb = [v78 countByEnumeratingWithState:&v138 objects:v166 count:16];
      if (contextb)
      {
        v109 = *v139;
        do
        {
          for (k = 0; k != contextb; k = k + 1)
          {
            if (*v139 != v109)
            {
              objc_enumerationMutation(v78);
            }

            v80 = *(*(&v138 + 1) + 8 * k);
            v81 = [v78 objectForKeyedSubscript:{v80, v99, v100}];
            v82 = [v81 objectID];
            [v22 setObject:v82 forKeyedSubscript:v80];
          }

          contextb = [v78 countByEnumeratingWithState:&v138 objects:v166 count:16];
        }

        while (contextb);
      }

      v136 = 0u;
      v137 = 0u;
      v134 = 0u;
      v135 = 0u;
      v83 = v107;
      contextc = [v83 countByEnumeratingWithState:&v134 objects:v165 count:16];
      if (contextc)
      {
        v110 = *v135;
        do
        {
          for (m = 0; m != contextc; m = m + 1)
          {
            if (*v135 != v110)
            {
              objc_enumerationMutation(v83);
            }

            v85 = *(*(&v134 + 1) + 8 * m);
            v86 = [v83 objectForKeyedSubscript:{v85, v99}];
            v87 = [v86 objectID];
            [v123 setObject:v87 forKeyedSubscript:v85];
          }

          contextc = [v83 countByEnumeratingWithState:&v134 objects:v165 count:16];
        }

        while (contextc);
      }

      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v88 = v104;
      contextd = [v88 countByEnumeratingWithState:&v130 objects:v164 count:16];
      if (contextd)
      {
        v111 = *v131;
        do
        {
          for (n = 0; n != contextd; n = n + 1)
          {
            if (*v131 != v111)
            {
              objc_enumerationMutation(v88);
            }

            v90 = *(*(&v130 + 1) + 8 * n);
            v91 = [v88 objectForKeyedSubscript:{v90, v99}];
            v92 = [v91 objectID];
            [v116 setObject:v92 forKeyedSubscript:v90];
          }

          contextd = [v88 countByEnumeratingWithState:&v130 objects:v164 count:16];
        }

        while (contextd);
      }

      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v93 = v102;
      contexte = [v93 countByEnumeratingWithState:&v126 objects:v163 count:16];
      if (contexte)
      {
        v112 = *v127;
        do
        {
          for (ii = 0; ii != contexte; ii = ii + 1)
          {
            if (*v127 != v112)
            {
              objc_enumerationMutation(v93);
            }

            v95 = *(*(&v126 + 1) + 8 * ii);
            v96 = [v93 objectForKeyedSubscript:{v95, v99}];
            v97 = [v96 objectID];
            [v115 setObject:v97 forKeyedSubscript:v95];
          }

          contexte = [v93 countByEnumeratingWithState:&v126 objects:v163 count:16];
        }

        while (contexte);
      }

      objc_autoreleasePoolPop(v99);
    }

    [*(a1 + 56) reset];

    v63 = v114;
LABEL_119:
  }

LABEL_121:
LABEL_122:

LABEL_123:
LABEL_124:

  v98 = *MEMORY[0x1E69E9840];
}

void __73___CDInteractionStore_countInteractionsUsingPredicate_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = 0;
  [v2 countInteractionsUsingPredicate:v3 error:&v5];
  v4 = v5;
  (*(a1[6] + 16))();
}

void __69___CDInteractionStore_countContactsUsingPredicate_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = 0;
  [v2 countContactsUsingPredicate:v3 error:&v5];
  v4 = v5;
  (*(a1[6] + 16))();
}

void __100___CDInteractionStore_queryInteractionsUsingPredicate_sortDescriptors_limit_offset_objectIDs_error___block_invoke(uint64_t a1)
{
  v43[4] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:@"Interactions" inManagedObjectContext:*(a1 + 40)];
  [v2 setEntity:v3];

  [v2 setReturnsObjectsAsFaults:0];
  v43[0] = @"sender";
  v43[1] = @"recipients";
  v43[2] = @"keywords";
  v43[3] = @"attachments";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
  [v2 setRelationshipKeyPathsForPrefetching:v4];

  v5 = [_CDInteractionStore predicateFilteringUsernameForPredicate:*(a1 + 48)];
  [v2 setPredicate:v5];

  [v2 setFetchLimit:*(a1 + 96)];
  [v2 setFetchOffset:*(a1 + 104)];
  v6 = *(a1 + 56);
  if (v6 && [v6 count])
  {
    [v2 setSortDescriptors:*(a1 + 56)];
  }

  v7 = [MEMORY[0x1E695DF00] date];
  v8 = *(a1 + 40);
  v33 = 0;
  v9 = [v8 executeFetchRequest:v2 error:&v33];
  v10 = v33;
  v11 = v33;
  if (v11)
  {
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), v10);
  }

  v12 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v2 fetchLimit];
    [v7 timeIntervalSinceNow];
    v15 = v14;
    v16 = [v9 count];
    v17 = [v2 predicate];
    *buf = 134218755;
    v36 = v13;
    v37 = 2048;
    v38 = -v15;
    v39 = 2048;
    v40 = v16;
    v41 = 2113;
    v42 = v17;
    _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_INFO, "queryInteractionsUsingPredicate finished executeFetchRequest, fetchLimit %lu object(s), elapsed %f(sec), returned %lu object(s), Predicate: %{private}@", buf, 0x2Au);
  }

  if (!*(*(*(a1 + 80) + 8) + 40))
  {
    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v9;
    v19 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v19)
    {
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v9);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          v23 = [*(a1 + 64) createInteractionFromRecord:{v22, v29}];
          [v18 addObject:v23];

          v24 = *(a1 + 72);
          v25 = [v22 objectID];
          [v24 addObject:v25];
        }

        v19 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v19);
    }

    v26 = *(*(a1 + 88) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v18;
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __95___CDInteractionStore_queryInteractionsUsingPredicate_sortDescriptors_limit_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[8];
  v8 = 0;
  v6 = [v2 queryInteractionsUsingPredicate:v3 sortDescriptors:v4 limit:v5 error:&v8];
  v7 = v8;
  (*(a1[7] + 16))();
}

void __79___CDInteractionStore_queryContactsUsingPredicate_sortDescriptors_limit_error___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:@"Contacts" inManagedObjectContext:*(a1 + 40)];
  [v2 setEntity:v3];

  if (*(a1 + 48))
  {
    [v2 setPredicate:?];
  }

  if (*(a1 + 56))
  {
    [v2 setSortDescriptors:?];
  }

  [v2 setFetchLimit:*(a1 + 88)];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = *(a1 + 40);
  v27 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v27];
  v7 = v27;
  v8 = v27;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v7);
  }

  v9 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v2 fetchLimit];
    [v4 timeIntervalSinceNow];
    v12 = v11;
    v13 = [v6 count];
    v14 = *(a1 + 48);
    *buf = 134218755;
    v30 = v10;
    v31 = 2048;
    v32 = -v12;
    v33 = 2048;
    v34 = v13;
    v35 = 2113;
    v36 = v14;
    _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "queryContactsUsingPredicate finished executeFetchRequest, fetchLimit %lu object(s), elapsed %f(sec), returned %lu object(s), Predicate: %{private}@", buf, 0x2Au);
  }

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v6;
    v16 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v16)
    {
      v17 = *v24;
      do
      {
        v18 = 0;
        do
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v6);
          }

          v19 = [*(a1 + 64) getContactForRecord:{*(*(&v23 + 1) + 8 * v18), v23}];
          [v15 addObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v16);
    }

    v20 = *(*(a1 + 80) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v15;
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __91___CDInteractionStore_queryContactsUsingPredicate_sortDescriptors_limit_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[8];
  v8 = 0;
  v6 = [v2 queryContactsUsingPredicate:v3 sortDescriptors:v4 limit:v5 error:&v8];
  v7 = v8;
  (*(a1[7] + 16))();
}

void __72___CDInteractionStore_queryContactInteractionsUsingPredicate_withLimit___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v36 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v2 = [MEMORY[0x1E695D5B8] entityForName:@"Contacts" inManagedObjectContext:*(a1 + 40)];
  [v36 setEntity:v2];

  [v36 setPredicate:*(a1 + 48)];
  [v36 setFetchLimit:*(a1 + 72)];
  v35 = [MEMORY[0x1E695DF00] date];
  v3 = *(a1 + 40);
  v52 = 0;
  v4 = [v3 executeFetchRequest:v36 error:&v52];
  v5 = v52;
  v6 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v36 fetchLimit];
    [v35 timeIntervalSinceNow];
    v9 = v8;
    v10 = [v4 count];
    v11 = [v36 predicate];
    *buf = 134218755;
    v57 = v7;
    v58 = 2048;
    v59 = -v9;
    v60 = 2048;
    v61 = v10;
    v62 = 2113;
    v63 = v11;
    _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "queryContactInteractionsUsingPredicate finished executeFetchRequest, fetchLimit %lu object(s), elapsed %f(sec), returned %lu object(s), Predicate: %{private}@", buf, 0x2Au);
  }

  if (v5)
  {
    v12 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __72___CDInteractionStore_queryContactInteractionsUsingPredicate_withLimit___block_invoke_cold_2();
    }
  }

  else
  {
    v39 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v4;
    v13 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v13)
    {
      v38 = *v49;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v49 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v48 + 1) + 8 * i);
          v16 = [v15 interactionRecipient];
          v17 = [v16 count];
          v18 = [v15 interactionSender];
          v19 = [v18 count];

          v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:v19 + v17];
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v21 = [v15 interactionRecipient];
          v22 = [v21 countByEnumeratingWithState:&v44 objects:v54 count:16];
          if (v22)
          {
            v23 = *v45;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v45 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                v25 = [*(a1 + 56) createInteractionFromRecord:*(*(&v44 + 1) + 8 * j)];
                [v20 addObject:v25];
              }

              v22 = [v21 countByEnumeratingWithState:&v44 objects:v54 count:16];
            }

            while (v22);
          }

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v26 = [v15 interactionSender];
          v27 = [v26 countByEnumeratingWithState:&v40 objects:v53 count:16];
          if (v27)
          {
            v28 = *v41;
            do
            {
              for (k = 0; k != v27; ++k)
              {
                if (*v41 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                v30 = [*(a1 + 56) createInteractionFromRecord:*(*(&v40 + 1) + 8 * k)];
                [v20 addObject:v30];
              }

              v27 = [v26 countByEnumeratingWithState:&v40 objects:v53 count:16];
            }

            while (v27);
          }

          v31 = [*(a1 + 56) getContactForRecord:v15];
          [v39 setObject:v20 forKeyedSubscript:v31];
        }

        v13 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v13);
    }

    v32 = *(*(a1 + 64) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v39;
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __76___CDInteractionStore_histogramContactInteractionsUsingPredicate_withLimit___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v28 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v2 = [MEMORY[0x1E695D5B8] entityForName:@"Contacts" inManagedObjectContext:*(a1 + 40)];
  [v28 setEntity:v2];

  [v28 setPredicate:*(a1 + 48)];
  [v28 setFetchLimit:*(a1 + 72)];
  v27 = [MEMORY[0x1E695DF00] date];
  v3 = *(a1 + 40);
  v34 = 0;
  v4 = [v3 executeFetchRequest:v28 error:&v34];
  v5 = v34;
  v6 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v28 fetchLimit];
    [v27 timeIntervalSinceNow];
    v9 = v8;
    v10 = [v4 count];
    v11 = [v28 predicate];
    *buf = 134218755;
    v37 = v7;
    v38 = 2048;
    v39 = -v9;
    v40 = 2048;
    v41 = v10;
    v42 = 2113;
    v43 = v11;
    _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_INFO, "histogramContactInteractionsUsingPredicate finished executeFetchRequest, fetchLimit %lu object(s), elapsed %f(sec), returned %lu object(s), Predicate: %{private}@", buf, 0x2Au);
  }

  if (v5)
  {
    v12 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __72___CDInteractionStore_queryContactInteractionsUsingPredicate_withLimit___block_invoke_cold_2();
    }
  }

  else
  {
    v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v4;
    v16 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v16)
    {
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          v20 = MEMORY[0x1E696AD98];
          v21 = [v19 interactionRecipient];
          v22 = [v21 count];
          v23 = [v19 interactionSender];
          v24 = [v20 numberWithUnsignedInteger:{objc_msgSend(v23, "count") + v22}];

          v25 = [*(a1 + 56) getContactForRecord:v19];
          [*(*(*(a1 + 64) + 8) + 40) setObject:v24 forKeyedSubscript:v25];
        }

        v16 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v16);
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __44___CDInteractionStore_usersWithInteractions__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:@"Interactions" inManagedObjectContext:*(a1 + 40)];
  [v2 setEntity:v3];

  [v2 setPropertiesToFetch:&unk_1F05EF350];
  [v2 setReturnsDistinctResults:1];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = *(a1 + 40);
  v27 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v27];
  v7 = v27;
  v8 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v2 fetchLimit];
    [v4 timeIntervalSinceNow];
    v11 = v10;
    v12 = [v6 count];
    *buf = 134218496;
    v30 = v9;
    v31 = 2048;
    v32 = -v11;
    v33 = 2048;
    v34 = v12;
    _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_INFO, "usersWithInteractions: finished executeFetchRequest, fetchLimit %lu object(s), elapsed %f(sec), returned %lu object(s)", buf, 0x20u);
  }

  if (v7)
  {
    v13 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __44___CDInteractionStore_usersWithInteractions__block_invoke_cold_2();
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v15)
    {
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = [v18 nsUserName];

          if (v19)
          {
            v20 = *(a1 + 48);
            v21 = [v18 nsUserName];
            [v20 addObject:v21];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v15);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __52___CDInteractionStore_conversationsWithInteractions__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:@"Interactions" inManagedObjectContext:*(a1 + 40)];
  [v2 setEntity:v3];

  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  [v2 setPropertiesToFetch:&unk_1F05EF368];
  [v2 setReturnsDistinctResults:1];
  v4 = [_CDInteractionStore predicateFilteringUsernameForPredicate:0];
  [v2 setPredicate:v4];

  v5 = [MEMORY[0x1E695DF00] date];
  v6 = *(a1 + 40);
  v26 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v26];
  v8 = v26;
  v9 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v2 fetchLimit];
    [v5 timeIntervalSinceNow];
    v12 = v11;
    v13 = [v7 count];
    *buf = 134218496;
    v29 = v10;
    v30 = 2048;
    v31 = -v12;
    v32 = 2048;
    v33 = v13;
    _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "conversationsWithInteractions: finished executeFetchRequest, fetchLimit %lu object(s), elapsed %f(sec), returned %lu object(s)", buf, 0x20u);
  }

  if (v8)
  {
    v14 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __52___CDInteractionStore_conversationsWithInteractions__block_invoke_cold_2();
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v16)
    {
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v22 + 1) + 8 * i);
          v20 = [v19 domainIdentifier];
          if (!v20)
          {
            v20 = [v19 derivedIntentIdentifier];
            if (!v20)
            {
              continue;
            }
          }

          [*(a1 + 48) addObject:v20];
        }

        v16 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v16);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __67___CDInteractionStore_kMostRecentConversationsWithLimit_predicate___block_invoke(uint64_t a1)
{
  v38[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) begin];
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:@"Interactions" inManagedObjectContext:*(a1 + 40)];
  [v2 setEntity:v3];

  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  [v2 setPropertiesToFetch:&unk_1F05EF380];
  [v2 setReturnsDistinctResults:1];
  v4 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"startDate" ascending:0];
  v5 = objc_autoreleasePoolPush();
  v25 = v4;
  v38[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  objc_autoreleasePoolPop(v5);
  [v2 setSortDescriptors:v6];
  v7 = [_CDInteractionStore predicateFilteringUsernameForPredicate:*(a1 + 48)];
  [v2 setPredicate:v7];

  v8 = [MEMORY[0x1E695DF00] date];
  v9 = *(a1 + 40);
  v30 = 0;
  v10 = [v9 executeFetchRequest:v2 error:&v30];
  v11 = v30;
  v12 = +[_CDLogging instrumentationChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v2 fetchLimit];
    [v8 timeIntervalSinceNow];
    v15 = v14;
    v16 = [v10 count];
    *buf = 134218496;
    v33 = v13;
    v34 = 2048;
    v35 = -v15;
    v36 = 2048;
    v37 = v16;
    _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_INFO, "kMostRecentConversationsWithLimit: finished executeFetchRequest, fetchLimit %lu object(s), elapsed %f(sec), returned %lu object(s)", buf, 0x20u);
  }

  if (v11)
  {
    v17 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __52___CDInteractionStore_conversationsWithInteractions__block_invoke_cold_2();
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = v10;
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v19)
    {
      v20 = *v27;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v26 + 1) + 8 * i);
          v23 = [v22 domainIdentifier];
          if (!v23)
          {
            v23 = [v22 derivedIntentIdentifier];
            if (!v23)
            {
              continue;
            }
          }

          if ([*(a1 + 56) count] >= *(a1 + 64))
          {

            goto LABEL_20;
          }

          [*(a1 + 56) addObject:v23];
        }

        v19 = [v18 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __110___CDInteractionStore_iterInteractionRecordsWithPredicate_fetchLimit_sortAscending_updateTelemetry_withBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) begin];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __110___CDInteractionStore_iterInteractionRecordsWithPredicate_fetchLimit_sortAscending_updateTelemetry_withBlock___block_invoke_3;
  v11 = &unk_1E7368AA0;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v12 = v7;
  v13 = v6;
  [v2 performWithOptions:4 andBlock:&v8];
  [*(a1 + 32) end];
}

void __110___CDInteractionStore_iterInteractionRecordsWithPredicate_fetchLimit_sortAscending_updateTelemetry_withBlock___block_invoke_3(uint64_t a1)
{
  v68[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  [v2 setReturnsObjectsAsFaults:0];
  v68[0] = @"sender";
  v68[1] = @"recipients";
  v68[2] = @"keywords";
  v68[3] = @"attachments";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:4];
  [v2 setRelationshipKeyPathsForPrefetching:v3];

  v4 = [MEMORY[0x1E695D5B8] entityForName:@"Interactions" inManagedObjectContext:*(a1 + 32)];
  [v2 setEntity:v4];

  v5 = [_CDInteractionStore predicateFilteringUsernameForPredicate:*(a1 + 40)];
  [v2 setPredicate:v5];

  [v2 setFetchBatchSize:50];
  [v2 setFetchLimit:*(a1 + 64)];
  v6 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"startDate" ascending:*(a1 + 72)];
  v7 = objc_autoreleasePoolPush();
  v67 = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
  objc_autoreleasePoolPop(v7);
  [v2 setSortDescriptors:v8];

  v9 = [MEMORY[0x1E695DF00] now];
  v10 = *(a1 + 32);
  v55 = 0;
  v11 = [v10 executeFetchRequest:v2 error:&v55];
  v12 = v55;
  v13 = v12;
  if (v11)
  {
    v47 = v12;
    v48 = v9;
    v49 = v6;
    v50 = v2;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v46 = v11;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v51 objects:v66 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v52;
      v19 = 0.0;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v52 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v51 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          v23 = [MEMORY[0x1E695DF00] now];
          (*(*(a1 + 48) + 16))();
          v24 = [MEMORY[0x1E695DF00] now];
          [v24 timeIntervalSinceDate:v23];
          v19 = v19 + v25;

          objc_autoreleasePoolPop(v22);
        }

        v17 += v16;
        v16 = [v14 countByEnumeratingWithState:&v51 objects:v66 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
      v19 = 0.0;
    }

    v27 = [MEMORY[0x1E695DF00] now];
    v9 = v48;
    [v27 timeIntervalSinceDate:v48];
    v29 = v28 - v19;

    v30 = *(a1 + 56);
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%.2f", v29 * 1000.0];
    (*(v30 + 16))(v30, @"fetchTimeInMillis", v31);

    v32 = *(a1 + 56);
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%.2f", v19 * 1000.0];
    (*(v32 + 16))(v32, @"processingTimeInMillis", v33);

    v34 = +[_CDLogging instrumentationChannel];
    v2 = v50;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v50 fetchLimit];
      [v48 timeIntervalSinceNow];
      v37 = -v36;
      v38 = [v14 count];
      v39 = [v14 count];
      *buf = 134219008;
      v57 = v35;
      v58 = 2048;
      v59 = v37;
      v60 = 2048;
      v61 = v38;
      v62 = 2048;
      v63 = v17;
      v64 = 2048;
      v65 = v39 - v17;
      _os_log_impl(&dword_191750000, v34, OS_LOG_TYPE_DEFAULT, "_iterInteractionRecordsWithPredicate: finished processing interactions, fetchLimit %tu object(s), elapsed %f(sec), found %tu object(s), processed %tu object(s) (%tu were skipped due to timeout)", buf, 0x34u);
    }

    v40 = *(a1 + 56);
    v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", objc_msgSend(v14, "count")];
    (*(v40 + 16))(v40, @"recordCount", v41);

    v42 = *(a1 + 56);
    v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", v17];
    (*(v42 + 16))(v42, @"processedCount", v43);

    v44 = *(a1 + 56);
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", 1000 * v19];
    (*(v44 + 16))(v44, @"featureComputationTimeInMillis", v26);
    v6 = v49;
    v11 = v46;
    v13 = v47;
  }

  else
  {
    v26 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __110___CDInteractionStore_iterInteractionRecordsWithPredicate_fetchLimit_sortAscending_updateTelemetry_withBlock___block_invoke_3_cold_1();
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

void __41___CDInteractionStore_queryVersionNumber__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:@"Version" inManagedObjectContext:*(a1 + 32)];
  [v2 setEntity:v3];

  [v2 setFetchLimit:1];
  v4 = *(a1 + 32);
  v10 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = v6;
    v8 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __72___CDInteractionStore_queryContactInteractionsUsingPredicate_withLimit___block_invoke_cold_2();
    }
  }

  else
  {
    if (v5 && [v5 count])
    {
      v9 = [v5 firstObject];
      *(*(*(a1 + 40) + 8) + 24) = [v9 number];
    }

    v7 = 0;
  }
}

void __43___CDInteractionStore_recordVersionNumber___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:@"Version" inManagedObjectContext:*(a1 + 32)];
  [v2 setEntity:v3];

  [v2 setFetchLimit:1];
  v4 = *(a1 + 32);
  v9 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v9];
  v6 = v9;
  if (v6 || !v5)
  {
    goto LABEL_6;
  }

  if (![v5 count])
  {
    v6 = 0;
LABEL_6:
    v7 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"Version" inManagedObjectContext:*(a1 + 32)];
    goto LABEL_7;
  }

  v7 = [v5 firstObject];
  v6 = 0;
LABEL_7:
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSinceReferenceDate];
  [v7 setCreationDate:?];

  [v7 setNumber:*(a1 + 40)];
  [v7 setKey:@"store_version"];
  [*(a1 + 32) save:0];
}

void __41___CDInteractionStore_metadataDictionary__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:@"Metadata" inManagedObjectContext:*(a1 + 32)];
  [v2 setEntity:v3];

  [v2 setResultType:2];
  v4 = *(a1 + 32);
  v13 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v13];
  v6 = v13;
  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  v8 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_297];
  v9 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_303];
  v10 = [v7 initWithObjects:v8 forKeys:v9];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

id __41___CDInteractionStore_metadataDictionary__block_invoke_294(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE40];
  v3 = [a2 objectForKeyedSubscript:@"value"];
  v4 = [v2 propertyListWithData:v3 options:0 format:0 error:0];

  return v4;
}

void __38___CDInteractionStore_metadataForKey___block_invoke(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:@"Metadata" inManagedObjectContext:a1[4]];
  [v2 setEntity:v3];

  [v2 setResultType:2];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"key = %@", a1[5]];
  [v2 setPredicate:v4];

  [v2 setFetchLimit:1];
  v5 = a1[4];
  v14 = 0;
  v6 = [v5 executeFetchRequest:v2 error:&v14];
  v7 = v14;
  if (v7)
  {
    v8 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __38___CDInteractionStore_metadataForKey___block_invoke_cold_1(a1 + 5);
    }
  }

  v9 = [v6 firstObject];
  v10 = [v9 objectForKeyedSubscript:@"value"];

  if (v10)
  {
    v11 = [MEMORY[0x1E696AE40] propertyListWithData:v10 options:0 format:0 error:0];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

void __42___CDInteractionStore_setMetadata_forKey___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _deleteMetadataForKey:*(a1 + 40) moc:*(a1 + 48)] && *(a1 + 56))
  {
    if (!*(a1 + 64))
    {
      __42___CDInteractionStore_setMetadata_forKey___block_invoke_cold_1();
    }

    v2 = [MEMORY[0x1E695D5B8] entityForName:@"Metadata" inManagedObjectContext:*(a1 + 48)];
    v3 = objc_alloc(MEMORY[0x1E695D550]);
    v4 = *(a1 + 40);
    v23[0] = @"key";
    v23[1] = @"value";
    v5 = *(a1 + 64);
    v24[0] = v4;
    v24[1] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v25[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v8 = [v3 initWithEntity:v2 objects:v7];

    v9 = *(a1 + 48);
    v16 = 0;
    v10 = [v9 executeRequest:v8 error:&v16];
    v11 = v16;
    if (v11)
    {
      v12 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v14 = *(a1 + 56);
        v15 = *(a1 + 40);
        *buf = 138478339;
        v18 = v14;
        v19 = 2114;
        v20 = v15;
        v21 = 2113;
        v22 = v11;
        _os_log_fault_impl(&dword_191750000, v12, OS_LOG_TYPE_FAULT, "metadata: failed to set %{private}@ for key %{public}@: %{private}@", buf, 0x20u);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __55___CDInteractionStore_migrateIMessageDomainIdentifiers__block_invoke(void *a1)
{
  v50[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v3 = [MEMORY[0x1E695D5B8] entityForName:@"Interactions" inManagedObjectContext:a1[4]];
  [v2 setEntity:v3];

  v4 = MEMORY[0x1E696AB28];
  v50[0] = a1[5];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domainIdentifier BEGINSWITH %@", @"iMessage"];;
  v50[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v7 = [v4 andPredicateWithSubpredicates:v6];
  [v2 setPredicate:v7];

  [v2 setFetchLimit:1];
  v8 = a1[4];
  v40 = 0;
  v9 = [v8 executeFetchRequest:v2 error:&v40];
  v10 = v40;
  if (v9)
  {
    if ([v9 count])
    {
      v11 = [v9 objectAtIndexedSubscript:0];
      if (v11)
      {
        v38 = v11;
        v12 = [(__CFString *)v11 domainIdentifier];
        v13 = -[__CFString stringByReplacingOccurrencesOfString:withString:options:range:](v12, "stringByReplacingOccurrencesOfString:withString:options:range:", @"iMessage", @"any;", 10, 0, [@"iMessage;" length]);;
        v14 = +[_CDLogging interactionChannel];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138478339;
          v45 = v12;
          v46 = 2113;
          v47 = v13;
          v48 = 2113;
          v49 = v38;
          _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_DEFAULT, "migrateIMessageDomainIdentifiers Updating %{private}@ to %{private}@ (interaction: %{private}@)", buf, 0x20u);
        }

        v15 = [MEMORY[0x1E695D560] batchUpdateRequestWithEntityName:@"Interactions"];
        v16 = v12;
        v17 = v15;
        v18 = MEMORY[0x1E696AB28];
        v43[0] = a1[5];
        v37 = v16;
        v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"domainIdentifier = %@", v16];
        v43[1] = v19;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
        v21 = [v18 andPredicateWithSubpredicates:v20];
        [v17 setPredicate:v21];

        v41 = @"domainIdentifier";
        v42 = v13;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        [v17 setPropertiesToUpdate:v22];

        [v17 setResultType:2];
        v23 = a1[4];
        v39 = 0;
        v24 = [v23 executeRequest:v17 error:&v39];
        v25 = v39;
        if (v24)
        {
          v36 = [v24 result];
          v26 = [v36 isEqual:&unk_1F05EE778];
          v27 = +[_CDLogging interactionChannel];
          v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
          if (v26)
          {
            if (v28)
            {
              v29 = [v17 predicate];
              *buf = 138478339;
              v45 = v37;
              v46 = 2113;
              v47 = v13;
              v48 = 2113;
              v49 = v29;
              _os_log_impl(&dword_191750000, v27, OS_LOG_TYPE_DEFAULT, "migrateIMessageDomainIdentifiers Unexpectedly updated 0 entities from %{private}@ to %{private}@; aborting (predicate was %{private}@)", buf, 0x20u);
            }

            v30 = 0;
            *(*(a1[6] + 8) + 24) = 0;
          }

          else
          {
            if (v28)
            {
              v34 = [v24 result];
              *buf = 138543875;
              v45 = v34;
              v46 = 2113;
              v47 = v37;
              v48 = 2113;
              v49 = v13;
              _os_log_impl(&dword_191750000, v27, OS_LOG_TYPE_DEFAULT, "migrateIMessageDomainIdentifiers Updated %{public}@ entities from %{private}@ to %{private}@", buf, 0x20u);
            }

            v30 = 1;
          }

          *(*(a1[7] + 8) + 24) = v30;
        }

        else
        {
          v33 = +[_CDLogging interactionChannel];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            __55___CDInteractionStore_migrateIMessageDomainIdentifiers__block_invoke_cold_1(v37, v25);
          }

          *(*(a1[6] + 8) + 24) = 0;
        }

        v11 = v38;
      }
    }

    else
    {
      v32 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v45 = @"iMessage;";
        _os_log_impl(&dword_191750000, v32, OS_LOG_TYPE_DEFAULT, "migrateIMessageDomainIdentifiers No '%{public}@'-prefixed domain identifiers remaining", buf, 0xCu);
      }
    }
  }

  else
  {
    v31 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      __55___CDInteractionStore_migrateIMessageDomainIdentifiers__block_invoke_cold_2(v10);
    }

    *(*(a1[6] + 8) + 24) = 0;
  }

  v35 = *MEMORY[0x1E69E9840];
}

__CFString *__103___CDInteractionStore_deleteInteractionsMatchingPredicate_sortDescriptors_limit_debuggingReason_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 derivedIntentIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [v2 domainIdentifier];
    v7 = v6;
    v8 = @"(no supported identifier)";
    if (v6)
    {
      v8 = v6;
    }

    v5 = v8;
  }

  return v5;
}

id __78___CDInteractionStore_deleteInteractionsWithBundleId_domainIdentifiers_error___block_invoke(uint64_t a1, void *a2)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v11[0] = a2;
  v10[0] = @"domainIdentifier";
  v10[1] = @"domainIdentifierDot";
  v3 = a2;
  v4 = [v3 stringByAppendingString:@"."];
  v11[1] = v4;
  v10[2] = @"domainIdentifierSlash";
  v5 = [v3 stringByAppendingString:@"/"];
  v11[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v7 = [v2 predicateWithSubstitutionVariables:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __115___CDInteractionStore_deleteInteractionsMatchingPredicate_sortDescriptors_limit_debuggingReason_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = a1[7];
  v10 = 0;
  v7 = [v2 deleteInteractionsMatchingPredicate:v3 sortDescriptors:v4 limit:v5 debuggingReason:v6 error:&v10];
  v8 = v10;
  v9 = a1[8];
  if (v9)
  {
    (*(v9 + 16))(v9, v7, v8);
  }
}

void __72___CDInteractionStore_deleteInteractionsWithBundleId_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 deleteInteractionsWithBundleId:v3 error:&v7];
  v5 = v7;
  v6 = a1[6];
  if (v6)
  {
    (*(v6 + 16))(v6, v4, v5);
  }
}

void __80___CDInteractionStore_deleteInteractionsWithBundleId_account_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v8 = 0;
  v5 = [v2 deleteInteractionsWithBundleId:v3 account:v4 error:&v8];
  v6 = v8;
  v7 = a1[7];
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void __89___CDInteractionStore_deleteInteractionsWithBundleId_domainIdentifier_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v8 = 0;
  v5 = [v2 deleteInteractionsWithBundleId:v3 domainIdentifier:v4 error:&v8];
  v6 = v8;
  v7 = a1[7];
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void __90___CDInteractionStore_deleteInteractionsWithBundleId_domainIdentifiers_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v8 = 0;
  v5 = [v2 deleteInteractionsWithBundleId:v3 domainIdentifiers:v4 error:&v8];
  v6 = v8;
  v7 = a1[7];
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

void __70___CDInteractionStore_fetchOrCreateKeywordRecord_context_cache_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "fetchOrCreateKeywordRecord: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __73___CDInteractionStore_fetchOrCreateAttachmentRecord_context_cache_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "fetchOrCreateAttachmentRecord caught %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70___CDInteractionStore_fetchOrCreateContactRecord_context_cache_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "fetchOrCreateContactRecord: nil existingObjectWithID for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70___CDInteractionStore_fetchOrCreateContactRecord_context_cache_error___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "fetchOrCreateContactRecord Caught %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70___CDInteractionStore_batchFetchExistingKeywordRecords_context_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "batchFetchExistingKeywords: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __73___CDInteractionStore_batchFetchExistingAttachmentRecords_context_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "batchFetchExistingAttachmentRecords: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70___CDInteractionStore_batchFetchExistingContactRecords_context_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "batchFetchExistingContactRecords: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __77___CDInteractionStore_batchFetchExistingInteractionsWithUUIDs_context_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "batchFetchExistingInteractionsWithUUIDs: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __77___CDInteractionStore_batchFetchExistingInteractionsWithUUIDs_context_error___block_invoke_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2112;
  *&v4[14] = *a1;
  OUTLINED_FUNCTION_3_8(&dword_191750000, a2, a3, "got %tu non-deleted record(s) with a nil UUID when querying for UUIDs %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void __53___CDInteractionStore_recordInteractionsBatch_error___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 uuid];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_191750000, a2, OS_LOG_TYPE_DEBUG, "Associating share information from pending share interaction to interaction with uuid %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __53___CDInteractionStore_recordInteractionsBatch_error___block_invoke_cold_2(id *a1, NSObject *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [*a1 pendingShareSheetInteraction];
  v5 = [v4 bundleId];
  v6 = [*a1 pendingShareSheetInteraction];
  v7 = [v6 targetBundleId];
  v9 = 138412546;
  v10 = v5;
  v11 = 2112;
  v12 = v7;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Pending sharesheet interaction from %@ to %@ dropped because no matching interaction was found", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void __53___CDInteractionStore_recordInteractionsBatch_error___block_invoke_2_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_191750000, log, OS_LOG_TYPE_DEBUG, "Missing uuid in interaction - not storing", buf, 2u);
}

void __53___CDInteractionStore_recordInteractionsBatch_error___block_invoke_2_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "recordInteractionsBatch: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __100___CDInteractionStore_queryInteractionsUsingPredicate_sortDescriptors_limit_offset_objectIDs_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "Caught Exception: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __72___CDInteractionStore_queryContactInteractionsUsingPredicate_withLimit___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "queryContactInteractionsUsingPredicate: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __72___CDInteractionStore_queryContactInteractionsUsingPredicate_withLimit___block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Query error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __76___CDInteractionStore_histogramContactInteractionsUsingPredicate_withLimit___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "histogramContactInteractionsUsingPredicate: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __44___CDInteractionStore_usersWithInteractions__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "usersWithInteractions: query exception: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __44___CDInteractionStore_usersWithInteractions__block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "usersWithInteractions: query error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __52___CDInteractionStore_conversationsWithInteractions__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "conversationsWithInteractions: query exception: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __52___CDInteractionStore_conversationsWithInteractions__block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "conversationsWithInteractions: query error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __67___CDInteractionStore_kMostRecentConversationsWithLimit_predicate___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "kMostRecentConversationsWithLimit: query exception: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __110___CDInteractionStore_iterInteractionRecordsWithPredicate_fetchLimit_sortAscending_updateTelemetry_withBlock___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "_iterInteractionRecordsWithPredicate: query error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __41___CDInteractionStore_queryVersionNumber__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "queryVersionNumber: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __43___CDInteractionStore_recordVersionNumber___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "recordVersionNumber: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __41___CDInteractionStore_metadataDictionary__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "metadata: failed to load metadataDictionary: %{private}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __38___CDInteractionStore_metadataForKey___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 138543619;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_3_8(&dword_191750000, v1, v2, "metadata: failed to set get key %{public}@: %{private}@", v4, DWORD2(v4));
  v3 = *MEMORY[0x1E69E9840];
}

void __55___CDInteractionStore_migrateIMessageDomainIdentifiers__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  [a2 code];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "migrateIMessageDomainIdentifiers failed to update domainIdentifier %{private}@ (error was %{public}@): %{public}td %{private}@", v4, v5, v6, v7, 3u);
  v8 = *MEMORY[0x1E69E9840];
}

void __55___CDInteractionStore_migrateIMessageDomainIdentifiers__block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 code];
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_2_1(&dword_191750000, v1, v2, "migrateIMessageDomainIdentifiers Failed to query for '%{public}@'-prefixed domain identifiers (error was %{public}@): %{public}td %{private}@", v3, v4, v5, v6, 3u);
  v7 = *MEMORY[0x1E69E9840];
}

@end