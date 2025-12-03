@interface ICNoteMergePolicy
- (BOOL)resolveConflictingAttachment:(id)attachment with:(id)with;
- (BOOL)resolveConflictingAttachment:(id)attachment withInlineAttachment:(id)inlineAttachment;
- (BOOL)resolveConflictingAttachmentPreviewImage:(id)image with:(id)with;
- (BOOL)resolveConflictingDeviceMigrationState:(id)state with:(id)with;
- (BOOL)resolveConflictingFolder:(id)folder with:(id)with;
- (BOOL)resolveConflictingInlineAttachment:(id)attachment with:(id)with;
- (BOOL)resolveConflictingLegacyTombstone:(id)tombstone with:(id)with;
- (BOOL)resolveConflictingNote:(id)note with:(id)with;
- (BOOL)resolveConstraintConflict:(id)conflict;
- (BOOL)resolveConstraintConflicts:(id)conflicts error:(id *)error;
- (BOOL)resolveOptimisticLockingVersionConflicts:(id)conflicts error:(id *)error;
- (ICNoteMergePolicy)init;
- (void)resolveConflict:(id)conflict forWallClockMergeablesInObject:(id)object;
@end

@implementation ICNoteMergePolicy

- (ICNoteMergePolicy)init
{
  v3.receiver = self;
  v3.super_class = ICNoteMergePolicy;
  return [(NSMergePolicy *)&v3 initWithMergeType:2];
}

- (BOOL)resolveOptimisticLockingVersionConflicts:(id)conflicts error:(id *)error
{
  v89 = *MEMORY[0x277D85DE8];
  conflictsCopy = conflicts;
  selfCopy = self;
  v81.receiver = self;
  v81.super_class = ICNoteMergePolicy;
  v7 = [(NSMergePolicy *)&v81 resolveOptimisticLockingVersionConflicts:conflictsCopy error:error];
  [MEMORY[0x277D36278] postBasicEvent:15];
  if (v7 && !*error)
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = conflictsCopy;
    v9 = [obj countByEnumeratingWithState:&v77 objects:v88 count:16];
    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = v9;
    v64 = v7;
    v65 = conflictsCopy;
    v11 = *v78;
    v75 = *v78;
LABEL_8:
    v12 = 0;
    while (1)
    {
      if (*v78 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v77 + 1) + 8 * v12);
      if (![v13 newVersionNumber])
      {
        v20 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [(ICNoteMergePolicy *)v86 resolveOptimisticLockingVersionConflicts:v13 error:&v87, v20];
        }

        sourceObject = [v13 sourceObject];
        managedObjectContext = [sourceObject managedObjectContext];
        sourceObject2 = [v13 sourceObject];
        [managedObjectContext deleteObject:sourceObject2];

        goto LABEL_63;
      }

      sourceObject3 = [v13 sourceObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      sourceObject = [v13 sourceObject];
      if (isKindOfClass)
      {
        objc_opt_class();
        persistedSnapshot = [v13 persistedSnapshot];
        v18 = [persistedSnapshot objectForKeyedSubscript:@"modificationDate"];
        if (v18)
        {
          managedObjectContext = ICDynamicCast();
        }

        else
        {
          cachedSnapshot = [v13 cachedSnapshot];
          v29 = [cachedSnapshot objectForKeyedSubscript:@"modificationDate"];
          managedObjectContext = ICDynamicCast();

          v11 = v75;
        }

        v30 = v10;

        if (managedObjectContext)
        {
          modificationDate = [sourceObject modificationDate];
          v32 = [modificationDate compare:managedObjectContext];

          if (v32 == -1)
          {
            [sourceObject setModificationDate:managedObjectContext];
          }
        }

        cryptoTag = [sourceObject cryptoTag];
        if (cryptoTag)
        {
          noteData = [sourceObject noteData];
          cryptoTag2 = [noteData cryptoTag];
          if (cryptoTag2)
          {
            cryptoInitializationVector = [sourceObject cryptoInitializationVector];
            if (cryptoInitializationVector)
            {
              noteData2 = [sourceObject noteData];
              cryptoInitializationVector2 = [noteData2 cryptoInitializationVector];
              if (cryptoInitializationVector2)
              {
                v72 = cryptoInitializationVector2;
                cryptoTag3 = [sourceObject cryptoTag];
                noteData3 = [sourceObject noteData];
                [noteData3 cryptoTag];
                v69 = v71 = cryptoTag3;
                if ([cryptoTag3 isEqual:?])
                {
                  cryptoInitializationVector3 = [sourceObject cryptoInitializationVector];
                  noteData4 = [sourceObject noteData];
                  cryptoInitializationVector4 = [noteData4 cryptoInitializationVector];
                  v39 = [cryptoInitializationVector3 isEqual:cryptoInitializationVector4];
                }

                else
                {
                  v39 = 0;
                }

                cryptoInitializationVector2 = v72;
              }

              else
              {
                v39 = 1;
              }
            }

            else
            {
              v39 = 1;
            }
          }

          else
          {
            v39 = 1;
          }

          v11 = v75;
        }

        else
        {
          v39 = 1;
        }

        v10 = v30;
        if ([sourceObject isPasswordProtected] && !((+[ICCryptoStrategyFactory cipherVersionForObject:](ICCryptoStrategyFactory, "cipherVersionForObject:", sourceObject) != 0) | v39 & 1))
        {
          v52 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            noteData5 = [sourceObject noteData];
            ic_loggingIdentifier = [noteData5 ic_loggingIdentifier];
            shortLoggingDescription = [sourceObject shortLoggingDescription];
            *buf = 138412546;
            v83 = ic_loggingIdentifier;
            v84 = 2112;
            v85 = shortLoggingDescription;
            _os_log_error_impl(&dword_214D51000, v52, OS_LOG_TYPE_ERROR, "Re-saving note data (%@) because crypto goo has diverged for note: %@", buf, 0x16u);
          }

          noteData6 = [sourceObject noteData];
          [noteData6 setNeedsToBeSaved:1];

          noteData7 = [sourceObject noteData];
          [noteData7 saveNoteDataIfNeeded];
        }

        goto LABEL_62;
      }

      objc_opt_class();
      v22 = objc_opt_isKindOfClass();

      sourceObject = [v13 sourceObject];
      if (v22)
      {
        break;
      }

      objc_opt_class();
      v25 = objc_opt_isKindOfClass();

      if (v25)
      {
        sourceObject = [v13 sourceObject];
        objc_opt_class();
        persistedSnapshot2 = [v13 persistedSnapshot];
        v27 = [persistedSnapshot2 objectForKeyedSubscript:@"mergeableData"];
        if (v27)
        {
          managedObjectContext = ICDynamicCast();
        }

        else
        {
          cachedSnapshot2 = [v13 cachedSnapshot];
          v48 = [cachedSnapshot2 objectForKeyedSubscript:@"mergeableData"];
          managedObjectContext = ICDynamicCast();

          v11 = v75;
        }

        if (managedObjectContext)
        {
          v49 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            v61 = objc_opt_class();
            v62 = v61;
            identifier = [sourceObject identifier];
            *buf = 138412546;
            v83 = v61;
            v84 = 2112;
            v85 = identifier;
            _os_log_debug_impl(&dword_214D51000, v49, OS_LOG_TYPE_DEBUG, "Resolving mergeableData conflict for %@ (%@)", buf, 0x16u);
          }

          attachmentModel = [sourceObject attachmentModel];
          [attachmentModel mergeWithMergeableData:managedObjectContext];

          attachmentModel2 = [sourceObject attachmentModel];
          [attachmentModel2 setMergeableDataDirty:1];

          [sourceObject saveMergeableDataIfNeeded];
        }

LABEL_62:
        [(ICNoteMergePolicy *)selfCopy resolveConflict:v13 forWallClockMergeablesInObject:sourceObject];
LABEL_63:
      }

      if (v10 == ++v12)
      {
        v10 = [obj countByEnumeratingWithState:&v77 objects:v88 count:16];
        if (!v10)
        {
          conflictsCopy = v65;
          LOBYTE(v7) = v64;
          goto LABEL_5;
        }

        goto LABEL_8;
      }
    }

    objc_opt_class();
    persistedSnapshot3 = [v13 persistedSnapshot];
    v24 = [persistedSnapshot3 objectForKeyedSubscript:@"data"];
    if (v24)
    {
      managedObjectContext = ICDynamicCast();
    }

    else
    {
      cachedSnapshot3 = [v13 cachedSnapshot];
      v41 = [cachedSnapshot3 objectForKeyedSubscript:@"data"];
      managedObjectContext = ICDynamicCast();

      v11 = v75;
    }

    if (managedObjectContext)
    {
      v42 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        ic_loggingIdentifier2 = [sourceObject ic_loggingIdentifier];
        note = [sourceObject note];
        shortLoggingDescription2 = [note shortLoggingDescription];
        *buf = 138412546;
        v83 = ic_loggingIdentifier2;
        v84 = 2112;
        v85 = shortLoggingDescription2;
        _os_log_debug_impl(&dword_214D51000, v42, OS_LOG_TYPE_DEBUG, "Resolving note data (%@) conflict for note: %@", buf, 0x16u);
      }

      note2 = [sourceObject note];
      isPasswordProtected = [note2 isPasswordProtected];

      note3 = [sourceObject note];
      v46 = note3;
      if (isPasswordProtected)
      {
        [note3 mergeEncryptedData:managedObjectContext mergeConflict:v13];
      }

      else
      {
        [note3 mergeWithNoteData:managedObjectContext];
      }

      [sourceObject setNeedsToBeSaved:1];
      [sourceObject saveNoteDataIfNeeded];
    }

    goto LABEL_63;
  }

  [MEMORY[0x277D36278] postBasicEvent:16];
  obj = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
  {
    [(ICNoteMergePolicy *)conflictsCopy resolveOptimisticLockingVersionConflicts:error error:obj];
  }

LABEL_5:

  return v7;
}

- (void)resolveConflict:(id)conflict forWallClockMergeablesInObject:(id)object
{
  v41 = *MEMORY[0x277D85DE8];
  conflictCopy = conflict;
  objectCopy = object;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [objc_opt_class() mergeableWallClockValueKeyPaths];
  v29 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v29)
  {
    v28 = *v31;
    *&v7 = 138412546;
    v26 = v7;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        objc_opt_class();
        persistedSnapshot = [conflictCopy persistedSnapshot];
        v11 = [persistedSnapshot objectForKeyedSubscript:v9];
        if (v11)
        {
          v12 = ICDynamicCast();
        }

        else
        {
          cachedSnapshot = [conflictCopy cachedSnapshot];
          v14 = [cachedSnapshot objectForKeyedSubscript:v9];
          v12 = ICDynamicCast();
        }

        if ([v12 length])
        {
          v15 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v22 = objc_opt_class();
            v23 = v22;
            ic_loggingIdentifier = [objectCopy ic_loggingIdentifier];
            *buf = 138412802;
            v35 = v22;
            v36 = 2112;
            v37 = v9;
            v38 = 2112;
            v39 = ic_loggingIdentifier;
            _os_log_debug_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEBUG, "Resolving wall clock mergeable conflict for %@ (key=%@, identifier=%@)", buf, 0x20u);
          }

          objc_opt_class();
          v16 = [objectCopy valueForKey:v9];
          v17 = ICDynamicCast();

          if ([v17 length])
          {
            v18 = [[ICTTMergeableWallClockValue alloc] initWithData:v17];
            v19 = [[ICTTMergeableWallClockValue alloc] initWithData:v12];
            if (![(ICTTMergeableWallClockValue *)v18 merge:v19])
            {
              v20 = os_log_create("com.apple.notes", "CoreData");
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                ic_loggingIdentifier2 = [objectCopy ic_loggingIdentifier];
                *buf = v26;
                v35 = v9;
                v36 = 2112;
                v37 = ic_loggingIdentifier2;
                _os_log_error_impl(&dword_214D51000, v20, OS_LOG_TYPE_ERROR, "Merge failed when resolving conflict for key (%@): %@", buf, 0x16u);
              }
            }

            serialize = [(ICTTMergeableWallClockValue *)v18 serialize];
            [objectCopy setValue:serialize forKeyPath:v9];
          }

          else
          {
            [objectCopy setValue:v12 forKeyPath:v9];
          }
        }

        ++v8;
      }

      while (v29 != v8);
      v29 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v29);
  }
}

- (BOOL)resolveConstraintConflicts:(id)conflicts error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  conflictsCopy = conflicts;
  [MEMORY[0x277D36278] postBasicEvent:17];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = conflictsCopy;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        v12 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          conflictingObjects = [v11 conflictingObjects];
          firstObject = [conflictingObjects firstObject];
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          [v11 constraintValues];
          v16 = v8;
          v17 = v9;
          v19 = v18 = self;
          *buf = 138412546;
          v32 = v15;
          v33 = 2112;
          v34 = v19;
          _os_log_impl(&dword_214D51000, v12, OS_LOG_TYPE_INFO, "Found constraint conflict for %@: %@", buf, 0x16u);

          self = v18;
          v9 = v17;
          v8 = v16;
        }

        if (![(ICNoteMergePolicy *)self resolveConstraintConflict:v11])
        {
          [MEMORY[0x277D36278] postBasicEvent:3];
          v20 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v11;
            _os_log_error_impl(&dword_214D51000, v20, OS_LOG_TYPE_ERROR, "Constraint violation when merging the MOC: %@", buf, 0xCu);
          }

          if (v8)
          {
            v8 = 1;
          }

          else
          {
            v8 = 1;
            [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICNoteMergePolicy resolveConstraintConflicts:error:]" simulateCrash:1 showAlert:1 format:@"Constraint violation when merging the MOC"];
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v7);
  }

  v26.receiver = self;
  v26.super_class = ICNoteMergePolicy;
  v21 = [(NSMergePolicy *)&v26 resolveConstraintConflicts:obj error:error];

  return v21;
}

- (BOOL)resolveConstraintConflict:(id)conflict
{
  v44[1] = *MEMORY[0x277D85DE8];
  conflictCopy = conflict;
  constraint = [conflictCopy constraint];
  v6 = NSStringFromSelector(sel_identifier);
  v7 = [constraint containsObject:v6];

  if (v7)
  {
    conflictingObjects = [conflictCopy conflictingObjects];
    v9 = [conflictingObjects mutableCopy];

    databaseObject = [conflictCopy databaseObject];

    if (databaseObject)
    {
      databaseObject2 = [conflictCopy databaseObject];
      [v9 insertObject:databaseObject2 atIndex:0];
    }

    v12 = MEMORY[0x277CCAC98];
    v13 = NSStringFromSelector(sel_className);
    v14 = [v12 sortDescriptorWithKey:v13 ascending:1];
    v44[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    [v9 sortUsingDescriptors:v15];

    if ([v9 count] == 2)
    {
      firstObject = [v9 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        lastObject = [v9 lastObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          firstObject2 = [v9 firstObject];
          lastObject2 = [v9 lastObject];
          v21 = [(ICNoteMergePolicy *)self resolveConflictingAttachment:firstObject2 withInlineAttachment:lastObject2];
          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    if ([v9 count] == 2)
    {
      firstObject3 = [v9 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        lastObject3 = [v9 lastObject];
        objc_opt_class();
        v25 = objc_opt_isKindOfClass();

        if (v25)
        {
          firstObject2 = [v9 firstObject];
          lastObject2 = [v9 lastObject];
          v21 = [(ICNoteMergePolicy *)self resolveConflictingNote:firstObject2 with:lastObject2];
          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    if ([v9 count] == 2)
    {
      firstObject4 = [v9 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        lastObject4 = [v9 lastObject];
        objc_opt_class();
        v28 = objc_opt_isKindOfClass();

        if (v28)
        {
          firstObject2 = [v9 firstObject];
          lastObject2 = [v9 lastObject];
          v21 = [(ICNoteMergePolicy *)self resolveConflictingFolder:firstObject2 with:lastObject2];
          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    if ([v9 count] == 2)
    {
      firstObject5 = [v9 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        lastObject5 = [v9 lastObject];
        objc_opt_class();
        v31 = objc_opt_isKindOfClass();

        if (v31)
        {
          firstObject2 = [v9 firstObject];
          lastObject2 = [v9 lastObject];
          v21 = [(ICNoteMergePolicy *)self resolveConflictingAttachment:firstObject2 with:lastObject2];
          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    if ([v9 count] == 2)
    {
      firstObject6 = [v9 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        lastObject6 = [v9 lastObject];
        objc_opt_class();
        v34 = objc_opt_isKindOfClass();

        if (v34)
        {
          firstObject2 = [v9 firstObject];
          lastObject2 = [v9 lastObject];
          v21 = [(ICNoteMergePolicy *)self resolveConflictingAttachmentPreviewImage:firstObject2 with:lastObject2];
          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    if ([v9 count] == 2)
    {
      firstObject7 = [v9 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        lastObject7 = [v9 lastObject];
        objc_opt_class();
        v37 = objc_opt_isKindOfClass();

        if (v37)
        {
          firstObject2 = [v9 firstObject];
          lastObject2 = [v9 lastObject];
          v21 = [(ICNoteMergePolicy *)self resolveConflictingInlineAttachment:firstObject2 with:lastObject2];
          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    if ([v9 count] == 2)
    {
      firstObject8 = [v9 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        lastObject8 = [v9 lastObject];
        objc_opt_class();
        v40 = objc_opt_isKindOfClass();

        if (v40)
        {
          firstObject2 = [v9 firstObject];
          lastObject2 = [v9 lastObject];
          v21 = [(ICNoteMergePolicy *)self resolveConflictingDeviceMigrationState:firstObject2 with:lastObject2];
          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    if ([v9 count] != 2)
    {
      goto LABEL_46;
    }

    firstObject2 = [v9 firstObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = 0;
      goto LABEL_45;
    }

    lastObject9 = [v9 lastObject];
    objc_opt_class();
    v42 = objc_opt_isKindOfClass();

    if ((v42 & 1) == 0)
    {
LABEL_46:
      v22 = 0;
      goto LABEL_47;
    }

    firstObject2 = [v9 firstObject];
    lastObject2 = [v9 lastObject];
    v21 = [(ICNoteMergePolicy *)self resolveConflictingLegacyTombstone:firstObject2 with:lastObject2];
LABEL_44:
    v22 = v21;

LABEL_45:
LABEL_47:

    goto LABEL_48;
  }

  v22 = 0;
LABEL_48:

  return v22;
}

- (BOOL)resolveConflictingAttachment:(id)attachment withInlineAttachment:(id)inlineAttachment
{
  attachmentCopy = attachment;
  inlineAttachmentCopy = inlineAttachment;
  v7 = inlineAttachmentCopy;
  if (!attachmentCopy || !inlineAttachmentCopy)
  {
    goto LABEL_8;
  }

  title = [attachmentCopy title];
  if (title || ([attachmentCopy userTitle], (title = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(attachmentCopy, "urlString"), (title = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(attachmentCopy, "media"), (title = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_8:
    v9 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICNoteMergePolicy resolveConflictingAttachment:withInlineAttachment:];
    }

    v10 = 0;
    goto LABEL_11;
  }

  identifier = [attachmentCopy identifier];
  identifier2 = [v7 identifier];
  v14 = [identifier isEqualToString:identifier2];

  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteMergePolicy resolveConflictingAttachment:withInlineAttachment:];
  }

  managedObjectContext = [attachmentCopy managedObjectContext];
  [managedObjectContext deleteObject:attachmentCopy];

  v10 = 1;
  [v7 setNeedsToBeFetchedFromCloud:1];
LABEL_11:

  return v10;
}

- (BOOL)resolveConflictingFolder:(id)folder with:(id)with
{
  v75 = *MEMORY[0x277D85DE8];
  folderCopy = folder;
  withCopy = with;
  if ([folderCopy needsInitialFetchFromCloud] && (objc_msgSend(withCopy, "needsInitialFetchFromCloud") & 1) == 0)
  {
    v7 = withCopy;
    v8 = folderCopy;
    goto LABEL_22;
  }

  if (([folderCopy needsInitialFetchFromCloud] & 1) == 0 && objc_msgSend(withCopy, "needsInitialFetchFromCloud") || objc_msgSend(folderCopy, "needsInitialFetchFromCloud") && objc_msgSend(withCopy, "needsInitialFetchFromCloud"))
  {
    v7 = folderCopy;
    v8 = withCopy;
LABEL_22:
    v13 = v8;
    goto LABEL_23;
  }

  if (([folderCopy needsInitialFetchFromCloud] & 1) != 0 || (objc_msgSend(withCopy, "needsInitialFetchFromCloud") & 1) != 0 || (v9 = objc_msgSend(folderCopy, "folderType"), v9 != objc_msgSend(withCopy, "folderType")) || (objc_msgSend(folderCopy, "account"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(withCopy, "account"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, !v12))
  {
    v7 = 0;
    v13 = 0;
    goto LABEL_46;
  }

  v7 = folderCopy;
  v13 = withCopy;
  dateForLastTitleModification = [v13 dateForLastTitleModification];
  dateForLastTitleModification2 = [v7 dateForLastTitleModification];
  v16 = [dateForLastTitleModification ic_isLaterThanDate:dateForLastTitleModification2];

  if (v16)
  {
    title = [v13 title];
    [v7 setTitle:title];

    dateForLastTitleModification3 = [v13 dateForLastTitleModification];
    [v7 setDateForLastTitleModification:dateForLastTitleModification3];
  }

  parentModificationDate = [v13 parentModificationDate];
  parentModificationDate2 = [v7 parentModificationDate];
  v21 = [parentModificationDate ic_isLaterThanDate:parentModificationDate2];

  if (v21)
  {
    parent = [v13 parent];
    [v7 setParent:parent];
  }

  customNoteSortTypeModificationDate = [v13 customNoteSortTypeModificationDate];
  customNoteSortTypeModificationDate2 = [v7 customNoteSortTypeModificationDate];
  v25 = [customNoteSortTypeModificationDate ic_isLaterThanDate:customNoteSortTypeModificationDate2];

  if (v25)
  {
    customNoteSortTypeValue = [v13 customNoteSortTypeValue];
    [v7 setCustomNoteSortTypeValue:customNoteSortTypeValue];

    customNoteSortTypeModificationDate3 = [v13 customNoteSortTypeModificationDate];
    [v7 setCustomNoteSortTypeModificationDate:customNoteSortTypeModificationDate3];
  }

  mergeableData = [v13 mergeableData];

  if (mergeableData)
  {
    mergeableData2 = [v13 mergeableData];
    [v7 mergeWithMergeableData:mergeableData2];
  }

LABEL_23:
  if (v13 && v7)
  {
    v30 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      identifier = [folderCopy identifier];
      objectID = [v7 objectID];
      objectID2 = [v13 objectID];
      *buf = 138412802;
      v70 = identifier;
      v71 = 2112;
      v72 = objectID;
      v73 = 2112;
      v74 = objectID2;
      _os_log_debug_impl(&dword_214D51000, v30, OS_LOG_TYPE_DEBUG, "Resolving folder conflict (%@) by keeping (%@) and deleting (%@)", buf, 0x20u);
    }

    notes = [v13 notes];
    v32 = [notes count];

    if (v32)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      notes2 = [v13 notes];
      v34 = [notes2 copy];

      v35 = [v34 countByEnumeratingWithState:&v63 objects:v68 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v64;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v64 != v37)
            {
              objc_enumerationMutation(v34);
            }

            [*(*(&v63 + 1) + 8 * i) setFolder:v7];
          }

          v36 = [v34 countByEnumeratingWithState:&v63 objects:v68 count:16];
        }

        while (v36);
      }

      notes3 = [v13 notes];
      v40 = [notes3 copy];
      [v7 addNotes:v40];

      v41 = [MEMORY[0x277CBEB98] set];
      [v13 setNotes:v41];
    }

    children = [v13 children];
    v43 = [children count];

    if (v43)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      children2 = [v13 children];
      v45 = [children2 copy];

      v46 = [v45 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v60;
        do
        {
          for (j = 0; j != v47; ++j)
          {
            if (*v60 != v48)
            {
              objc_enumerationMutation(v45);
            }

            [*(*(&v59 + 1) + 8 * j) setParent:v7];
          }

          v47 = [v45 countByEnumeratingWithState:&v59 objects:v67 count:16];
        }

        while (v47);
      }

      children3 = [v13 children];
      v51 = [children3 copy];
      [v7 addChildren:v51];

      v52 = [MEMORY[0x277CBEB98] set];
      [v13 setChildren:v52];
    }

    [ICFolder purgeFolder:v13];
    v53 = 1;
    goto LABEL_49;
  }

LABEL_46:
  v54 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    [ICNoteMergePolicy resolveConflictingFolder:with:];
  }

  v53 = 0;
LABEL_49:

  return v53;
}

- (BOOL)resolveConflictingInlineAttachment:(id)attachment with:(id)with
{
  v37 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  withCopy = with;
  if (![attachmentCopy needsInitialFetchFromCloud] || (v7 = objc_msgSend(withCopy, "needsInitialFetchFromCloud"), v8 = withCopy, v9 = attachmentCopy, v7))
  {
    if (([attachmentCopy needsInitialFetchFromCloud] & 1) != 0 || (v10 = objc_msgSend(withCopy, "needsInitialFetchFromCloud"), v8 = attachmentCopy, v9 = withCopy, (v10 & 1) == 0))
    {
      if (![attachmentCopy needsInitialFetchFromCloud] || (v11 = objc_msgSend(withCopy, "needsInitialFetchFromCloud"), v8 = attachmentCopy, v9 = withCopy, (v11 & 1) == 0))
      {
        if (([attachmentCopy needsInitialFetchFromCloud] & 1) != 0 || (objc_msgSend(withCopy, "needsInitialFetchFromCloud") & 1) != 0 || (objc_msgSend(attachmentCopy, "tokenContentIdentifier"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(withCopy, "tokenContentIdentifier"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "isEqualToString:", v22), v22, v21, !v23))
        {
          v12 = 0;
          v13 = 0;
          goto LABEL_31;
        }

        markedForDeletion = [attachmentCopy markedForDeletion];
        markedForDeletion2 = [withCopy markedForDeletion];
        v8 = attachmentCopy;
        v9 = withCopy;
        if (markedForDeletion != markedForDeletion2)
        {
          markedForDeletion3 = [attachmentCopy markedForDeletion];
          if (markedForDeletion3)
          {
            v8 = attachmentCopy;
          }

          else
          {
            v8 = withCopy;
          }

          if (markedForDeletion3)
          {
            v9 = withCopy;
          }

          else
          {
            v9 = attachmentCopy;
          }
        }
      }
    }
  }

  v12 = v8;
  v13 = v9;
  if (v13 && v12)
  {
    v14 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      identifier = [attachmentCopy identifier];
      objectID = [v12 objectID];
      objectID2 = [v13 objectID];
      v31 = 138412802;
      v32 = identifier;
      v33 = 2112;
      v34 = objectID;
      v35 = 2112;
      v36 = objectID2;
      _os_log_debug_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEBUG, "Resolving inline attachment conflict (%@) by keeping (%@) and deleting (%@)", &v31, 0x20u);
    }

    note = [v12 note];
    if (!note)
    {
      note2 = [v13 note];

      if (!note2)
      {
        goto LABEL_15;
      }

      note = [v13 note];
      [v12 setNote:note];
    }

LABEL_15:
    parentAttachment = [v12 parentAttachment];
    if (!parentAttachment)
    {
      parentAttachment2 = [v13 parentAttachment];

      if (!parentAttachment2)
      {
LABEL_19:
        managedObjectContext = [v13 managedObjectContext];
        [managedObjectContext deleteObject:v13];
        v20 = 1;
        goto LABEL_34;
      }

      parentAttachment = [v13 parentAttachment];
      [v12 setParentAttachment:parentAttachment];
    }

    goto LABEL_19;
  }

LABEL_31:
  managedObjectContext = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_ERROR))
  {
    [ICNoteMergePolicy resolveConflictingInlineAttachment:with:];
  }

  v20 = 0;
LABEL_34:

  return v20;
}

- (BOOL)resolveConflictingNote:(id)note with:(id)with
{
  v76 = *MEMORY[0x277D85DE8];
  noteCopy = note;
  withCopy = with;
  if (![noteCopy needsInitialFetchFromCloud] || (v7 = objc_msgSend(withCopy, "needsInitialFetchFromCloud"), v8 = withCopy, v9 = noteCopy, v7))
  {
    if (([noteCopy needsInitialFetchFromCloud] & 1) != 0 || (v10 = objc_msgSend(withCopy, "needsInitialFetchFromCloud"), v8 = noteCopy, v9 = withCopy, (v10 & 1) == 0))
    {
      if (![noteCopy needsInitialFetchFromCloud] || (v11 = objc_msgSend(withCopy, "markedForDeletion"), v8 = withCopy, v9 = noteCopy, (v11 & 1) == 0))
      {
        if (![noteCopy markedForDeletion] || (v12 = objc_msgSend(withCopy, "needsInitialFetchFromCloud"), v8 = noteCopy, v9 = withCopy, (v12 & 1) == 0))
        {
          folder = [noteCopy folder];
          if (folder)
          {
          }

          else
          {
            folder2 = [withCopy folder];

            v8 = withCopy;
            v9 = noteCopy;
            if (folder2)
            {
              goto LABEL_21;
            }
          }

          folder3 = [noteCopy folder];
          if (!folder3 || (v15 = folder3, [withCopy folder], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v8 = noteCopy, v9 = withCopy, v16))
          {
            folder4 = [noteCopy folder];
            folder5 = [withCopy folder];
            v19 = [folder4 isEqual:folder5];

            if (!v19)
            {
              v22 = 0;
              v23 = 0;
              goto LABEL_47;
            }

            document = [noteCopy document];

            if (document)
            {
              v8 = noteCopy;
            }

            else
            {
              v8 = withCopy;
            }

            if (document)
            {
              v9 = withCopy;
            }

            else
            {
              v9 = noteCopy;
            }
          }
        }
      }
    }
  }

LABEL_21:
  v22 = v8;
  v23 = v9;
  if (v23 && v22)
  {
    v24 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      identifier = [noteCopy identifier];
      objectID = [v22 objectID];
      objectID2 = [v23 objectID];
      *buf = 138412802;
      v71 = identifier;
      v72 = 2112;
      v73 = objectID;
      v74 = 2112;
      v75 = objectID2;
      _os_log_debug_impl(&dword_214D51000, v24, OS_LOG_TYPE_DEBUG, "Resolving note conflict (%@) by keeping (%@) and deleting (%@)", buf, 0x20u);
    }

    attachments = [v23 attachments];
    v26 = [attachments count];

    if (v26)
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      attachments2 = [v23 attachments];
      v28 = [attachments2 copy];

      v29 = [v28 countByEnumeratingWithState:&v64 objects:v69 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v65;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v65 != v31)
            {
              objc_enumerationMutation(v28);
            }

            [*(*(&v64 + 1) + 8 * i) setNote:v22];
          }

          v30 = [v28 countByEnumeratingWithState:&v64 objects:v69 count:16];
        }

        while (v30);
      }

      attachments3 = [v23 attachments];
      v34 = [attachments3 copy];
      [v22 addAttachments:v34];

      v35 = [MEMORY[0x277CBEB98] set];
      [v23 setAttachments:v35];
    }

    inlineAttachments = [v23 inlineAttachments];
    v37 = [inlineAttachments count];

    if (v37)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      inlineAttachments2 = [v23 inlineAttachments];
      v39 = [inlineAttachments2 copy];

      v40 = [v39 countByEnumeratingWithState:&v60 objects:v68 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v61;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v61 != v42)
            {
              objc_enumerationMutation(v39);
            }

            [*(*(&v60 + 1) + 8 * j) setNote:v22];
          }

          v41 = [v39 countByEnumeratingWithState:&v60 objects:v68 count:16];
        }

        while (v41);
      }

      inlineAttachments3 = [v23 inlineAttachments];
      v45 = [inlineAttachments3 copy];
      [v22 addInlineAttachments:v45];

      v46 = [MEMORY[0x277CBEB98] set];
      [v23 setInlineAttachments:v46];
    }

    document2 = [v23 document];

    if (document2)
    {
      v54 = MEMORY[0x277D85DD0];
      v55 = 3221225472;
      v56 = __49__ICNoteMergePolicy_resolveConflictingNote_with___block_invoke;
      v57 = &unk_278195138;
      v58 = v22;
      v59 = v23;
      [v58 performMerge:&v54];
    }

    managedObjectContext = [v23 managedObjectContext];
    [managedObjectContext deleteObject:v23];
    v49 = 1;
    goto LABEL_50;
  }

LABEL_47:
  managedObjectContext = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_ERROR))
  {
    [ICNoteMergePolicy resolveConflictingNote:with:];
  }

  v49 = 0;
LABEL_50:

  return v49;
}

uint64_t __49__ICNoteMergePolicy_resolveConflictingNote_with___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) document];
  v3 = [*(a1 + 40) document];
  v4 = [v2 mergeWithStringVersionedDocument:v3];

  return v4;
}

- (BOOL)resolveConflictingAttachment:(id)attachment with:(id)with
{
  v31 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  withCopy = with;
  if (([attachmentCopy needsInitialFetchFromCloud] & 1) != 0 || (v7 = objc_msgSend(withCopy, "needsInitialFetchFromCloud"), v8 = attachmentCopy, v9 = withCopy, (v7 & 1) == 0))
  {
    if (![attachmentCopy needsInitialFetchFromCloud] || (v10 = objc_msgSend(withCopy, "needsInitialFetchFromCloud"), v8 = withCopy, v9 = attachmentCopy, v10))
    {
      if (![attachmentCopy needsInitialFetchFromCloud] || (v11 = objc_msgSend(withCopy, "needsInitialFetchFromCloud"), v8 = attachmentCopy, v9 = withCopy, (v11 & 1) == 0))
      {
        serverRecordData = [attachmentCopy serverRecordData];
        if (!serverRecordData || (v13 = serverRecordData, [withCopy serverRecordData], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v8 = attachmentCopy, v9 = withCopy, v14))
        {
          serverRecordData2 = [withCopy serverRecordData];
          if (!serverRecordData2)
          {
LABEL_12:
            v17 = 0;
LABEL_18:
            managedObjectContext = os_log_create("com.apple.notes", "CoreData");
            if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_ERROR))
            {
              [ICNoteMergePolicy resolveConflictingAttachment:with:];
            }

            v20 = 0;
            goto LABEL_21;
          }

          serverRecordData3 = [attachmentCopy serverRecordData];

          v8 = withCopy;
          v9 = attachmentCopy;
          if (serverRecordData3)
          {
            serverRecordData2 = 0;
            goto LABEL_12;
          }
        }
      }
    }
  }

  serverRecordData2 = v8;
  v17 = v9;
  if (!v17 || !serverRecordData2)
  {
    goto LABEL_18;
  }

  v18 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    identifier = [attachmentCopy identifier];
    objectID = [serverRecordData2 objectID];
    objectID2 = [v17 objectID];
    v25 = 138412802;
    v26 = identifier;
    v27 = 2112;
    v28 = objectID;
    v29 = 2112;
    v30 = objectID2;
    _os_log_debug_impl(&dword_214D51000, v18, OS_LOG_TYPE_DEBUG, "Resolving attachment conflict (%@) by keeping (%@) and deleting (%@)", &v25, 0x20u);
  }

  [v17 suppressFileDeletion];
  managedObjectContext = [v17 managedObjectContext];
  [managedObjectContext deleteObject:v17];
  v20 = 1;
LABEL_21:

  return v20;
}

- (BOOL)resolveConflictingAttachmentPreviewImage:(id)image with:(id)with
{
  v32 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  withCopy = with;
  if (([imageCopy versionOutOfDate] & 1) != 0 || (v7 = objc_msgSend(withCopy, "versionOutOfDate"), v8 = imageCopy, v9 = withCopy, (v7 & 1) == 0))
  {
    if (![imageCopy isInCloud] || (v10 = objc_msgSend(withCopy, "isInCloud"), v8 = imageCopy, v9 = withCopy, v10))
    {
      if (![imageCopy versionOutOfDate] || (v11 = objc_msgSend(withCopy, "versionOutOfDate"), v8 = withCopy, v9 = imageCopy, v11))
      {
        if (([imageCopy isInCloud] & 1) != 0 || (v12 = objc_msgSend(withCopy, "isInCloud"), v8 = withCopy, v9 = imageCopy, (v12 & 1) == 0))
        {
          modifiedDate = [imageCopy modifiedDate];
          modifiedDate2 = [withCopy modifiedDate];
          v15 = [modifiedDate ic_isLaterThanDate:modifiedDate2];

          if (v15)
          {
            v8 = imageCopy;
          }

          else
          {
            v8 = withCopy;
          }

          if (v15)
          {
            v9 = withCopy;
          }

          else
          {
            v9 = imageCopy;
          }
        }
      }
    }
  }

  v16 = v8;
  v17 = v9;
  if (v17)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = !v18;
  v20 = os_log_create("com.apple.notes", "CoreData");
  managedObjectContext = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      identifier = [imageCopy identifier];
      objectID = [v16 objectID];
      objectID2 = [v17 objectID];
      v26 = 138412802;
      v27 = identifier;
      v28 = 2112;
      v29 = objectID;
      v30 = 2112;
      v31 = objectID2;
      _os_log_debug_impl(&dword_214D51000, managedObjectContext, OS_LOG_TYPE_DEBUG, "Resolving attachment preview image conflict (%@) by keeping (%@) and deleting (%@)", &v26, 0x20u);
    }

    [v17 suppressFileDeletion];
    managedObjectContext = [v17 managedObjectContext];
    [managedObjectContext deleteObject:v17];
  }

  else
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ICNoteMergePolicy resolveConflictingAttachmentPreviewImage:with:];
    }
  }

  return v19;
}

- (BOOL)resolveConflictingDeviceMigrationState:(id)state with:(id)with
{
  v37 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  withCopy = with;
  if (![stateCopy isInCloud] || (v7 = objc_msgSend(withCopy, "isInCloud"), v8 = stateCopy, v9 = withCopy, v7))
  {
    if (([stateCopy isInCloud] & 1) != 0 || (v10 = objc_msgSend(withCopy, "isInCloud"), v8 = withCopy, v9 = stateCopy, (v10 & 1) == 0))
    {
      stateModificationDate = [stateCopy stateModificationDate];
      stateModificationDate2 = [withCopy stateModificationDate];
      v13 = [stateModificationDate ic_isLaterThanDate:stateModificationDate2];

      if (v13)
      {
        v8 = stateCopy;
      }

      else
      {
        v8 = withCopy;
      }

      if (v13)
      {
        v9 = withCopy;
      }

      else
      {
        v9 = stateCopy;
      }
    }
  }

  v14 = v8;
  v15 = v9;
  if (v15)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  v18 = os_log_create("com.apple.notes", "CoreData");
  managedObjectContext = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      identifier = [stateCopy identifier];
      objectID = [v14 objectID];
      objectID2 = [v15 objectID];
      v31 = 138412802;
      v32 = identifier;
      v33 = 2112;
      v34 = objectID;
      v35 = 2112;
      v36 = objectID2;
      _os_log_debug_impl(&dword_214D51000, managedObjectContext, OS_LOG_TYPE_DEBUG, "Resolving device migration state conflict (%@) by keeping (%@) and deleting (%@)", &v31, 0x20u);
    }

    stateModificationDate3 = [v15 stateModificationDate];
    stateModificationDate4 = [v14 stateModificationDate];
    v22 = [stateModificationDate3 ic_isLaterThanDate:stateModificationDate4];

    if (v22)
    {
      [v14 setState:{objc_msgSend(v15, "state")}];
      stateModificationDate5 = [v15 stateModificationDate];
      [v14 setStateModificationDate:stateModificationDate5];

      [v14 updateChangeCountWithReason:@"Resolved Core Data conflict"];
    }

    managedObjectContext = [v15 managedObjectContext];
    [managedObjectContext deleteObject:v15];
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [stateCopy identifier];
      objectID3 = [v14 objectID];
      objectID4 = [v15 objectID];
      v31 = 138412802;
      v32 = identifier2;
      v33 = 2112;
      v34 = objectID3;
      v35 = 2112;
      v36 = objectID4;
      _os_log_error_impl(&dword_214D51000, managedObjectContext, OS_LOG_TYPE_ERROR, "Not resolving device migration state constraint conflict (%@) between (%@) and (%@)", &v31, 0x20u);
    }
  }

  return v17;
}

- (BOOL)resolveConflictingLegacyTombstone:(id)tombstone with:(id)with
{
  v35 = *MEMORY[0x277D85DE8];
  tombstoneCopy = tombstone;
  withCopy = with;
  if (![tombstoneCopy isInCloud] || (v7 = objc_msgSend(withCopy, "isInCloud"), v8 = tombstoneCopy, v9 = withCopy, v7))
  {
    if (([tombstoneCopy isInCloud] & 1) != 0 || (v10 = objc_msgSend(withCopy, "isInCloud"), v8 = withCopy, v9 = tombstoneCopy, (v10 & 1) == 0))
    {
      account = [tombstoneCopy account];
      if (!account || (v12 = account, [withCopy account], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v8 = tombstoneCopy, v9 = withCopy, v13))
      {
        account2 = [tombstoneCopy account];
        if (account2)
        {
        }

        else
        {
          account3 = [withCopy account];

          v8 = withCopy;
          v9 = tombstoneCopy;
          if (account3)
          {
            goto LABEL_12;
          }
        }

        v15 = [tombstoneCopy isEquivalentTo:withCopy];
        v8 = tombstoneCopy;
        v9 = withCopy;
        if (!v15)
        {
          v16 = 0;
          v17 = 0;
LABEL_17:
          managedObjectContext = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(managedObjectContext, OS_LOG_TYPE_ERROR))
          {
            identifier = [tombstoneCopy identifier];
            objectID = [v16 objectID];
            objectID2 = [v17 objectID];
            v29 = 138412802;
            v30 = identifier;
            v31 = 2112;
            v32 = objectID;
            v33 = 2112;
            v34 = objectID2;
            _os_log_error_impl(&dword_214D51000, managedObjectContext, OS_LOG_TYPE_ERROR, "Not resolving legacy tombstone constraint conflict (%@) between (%@) and (%@)", &v29, 0x20u);
          }

          v21 = 0;
          goto LABEL_20;
        }
      }
    }
  }

LABEL_12:
  v16 = v8;
  v17 = v9;
  if (!v17 || !v16)
  {
    goto LABEL_17;
  }

  v19 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    identifier2 = [tombstoneCopy identifier];
    objectID3 = [v16 objectID];
    objectID4 = [v17 objectID];
    v29 = 138412802;
    v30 = identifier2;
    v31 = 2112;
    v32 = objectID3;
    v33 = 2112;
    v34 = objectID4;
    _os_log_debug_impl(&dword_214D51000, v19, OS_LOG_TYPE_DEBUG, "Resolving legacy tombstone conflict (%@) by keeping (%@) and deleting (%@)", &v29, 0x20u);
  }

  managedObjectContext = [v17 managedObjectContext];
  [managedObjectContext deleteObject:v17];
  v21 = 1;
LABEL_20:

  return v21;
}

- (void)resolveOptimisticLockingVersionConflicts:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_214D51000, log, OS_LOG_TYPE_ERROR, "CoreData optimistic locking resolution failed for conflicts: %@, error: %@", &v4, 0x16u);
}

- (void)resolveOptimisticLockingVersionConflicts:(void *)a3 error:(NSObject *)a4 .cold.2(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 sourceObject];
  v8 = [v7 entity];
  v9 = [v8 name];
  *a1 = 138412290;
  *a3 = v9;
  _os_log_debug_impl(&dword_214D51000, a4, OS_LOG_TYPE_DEBUG, "Another context deleted a %@ and we are deleting it too", a1, 0xCu);
}

- (void)resolveConflictingAttachment:withInlineAttachment:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [v2 identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_3_3() objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4() objectID];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_1(&dword_214D51000, v4, v5, "Not resolving attachment vs inline attachment constraint conflict (%@) between (%@) and (%@)", v6, v7, v8, v9, v10);
}

- (void)resolveConflictingAttachment:withInlineAttachment:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v13 = *MEMORY[0x277D85DE8];
  v4 = [v3 identifier];
  v5 = [v1 objectID];
  v6 = [v2 objectID];
  v7 = 138412802;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  _os_log_debug_impl(&dword_214D51000, v0, OS_LOG_TYPE_DEBUG, "Resolving attachment vs inline attachment conflict (%@) by keeping (%@) and deleting (%@)", &v7, 0x20u);
}

- (void)resolveConflictingFolder:with:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [v2 identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_3_3() objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4() objectID];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_1(&dword_214D51000, v4, v5, "Not resolving folder constraint conflict (%@) between (%@) and (%@)", v6, v7, v8, v9, v10);
}

- (void)resolveConflictingInlineAttachment:with:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [v2 identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_3_3() objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4() objectID];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_1(&dword_214D51000, v4, v5, "Not resolving inline attachment constraint conflict (%@) between (%@) and (%@)", v6, v7, v8, v9, v10);
}

- (void)resolveConflictingNote:with:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [v2 identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_3_3() objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4() objectID];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_1(&dword_214D51000, v4, v5, "Not resolving note constraint conflict (%@) between (%@) and (%@)", v6, v7, v8, v9, v10);
}

- (void)resolveConflictingAttachment:with:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [v2 identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_3_3() objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4() objectID];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_1(&dword_214D51000, v4, v5, "Not resolving attachment constraint conflict (%@) between (%@) and (%@)", v6, v7, v8, v9, v10);
}

- (void)resolveConflictingAttachmentPreviewImage:with:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [v2 identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_3_3() objectID];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4() objectID];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_1(&dword_214D51000, v4, v5, "Not resolving attachment preview image constraint conflict (%@) between (%@) and (%@)", v6, v7, v8, v9, v10);
}

@end