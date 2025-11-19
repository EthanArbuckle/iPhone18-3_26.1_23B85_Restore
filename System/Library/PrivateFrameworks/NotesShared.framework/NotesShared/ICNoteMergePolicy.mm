@interface ICNoteMergePolicy
- (BOOL)resolveConflictingAttachment:(id)a3 with:(id)a4;
- (BOOL)resolveConflictingAttachment:(id)a3 withInlineAttachment:(id)a4;
- (BOOL)resolveConflictingAttachmentPreviewImage:(id)a3 with:(id)a4;
- (BOOL)resolveConflictingDeviceMigrationState:(id)a3 with:(id)a4;
- (BOOL)resolveConflictingFolder:(id)a3 with:(id)a4;
- (BOOL)resolveConflictingInlineAttachment:(id)a3 with:(id)a4;
- (BOOL)resolveConflictingLegacyTombstone:(id)a3 with:(id)a4;
- (BOOL)resolveConflictingNote:(id)a3 with:(id)a4;
- (BOOL)resolveConstraintConflict:(id)a3;
- (BOOL)resolveConstraintConflicts:(id)a3 error:(id *)a4;
- (BOOL)resolveOptimisticLockingVersionConflicts:(id)a3 error:(id *)a4;
- (ICNoteMergePolicy)init;
- (void)resolveConflict:(id)a3 forWallClockMergeablesInObject:(id)a4;
@end

@implementation ICNoteMergePolicy

- (ICNoteMergePolicy)init
{
  v3.receiver = self;
  v3.super_class = ICNoteMergePolicy;
  return [(NSMergePolicy *)&v3 initWithMergeType:2];
}

- (BOOL)resolveOptimisticLockingVersionConflicts:(id)a3 error:(id *)a4
{
  v89 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v74 = self;
  v81.receiver = self;
  v81.super_class = ICNoteMergePolicy;
  v7 = [(NSMergePolicy *)&v81 resolveOptimisticLockingVersionConflicts:v6 error:a4];
  [MEMORY[0x277D36278] postBasicEvent:15];
  if (v7 && !*a4)
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v77 objects:v88 count:16];
    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = v9;
    v64 = v7;
    v65 = v6;
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

        v16 = [v13 sourceObject];
        v19 = [v16 managedObjectContext];
        v21 = [v13 sourceObject];
        [v19 deleteObject:v21];

        goto LABEL_63;
      }

      v14 = [v13 sourceObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v16 = [v13 sourceObject];
      if (isKindOfClass)
      {
        objc_opt_class();
        v17 = [v13 persistedSnapshot];
        v18 = [v17 objectForKeyedSubscript:@"modificationDate"];
        if (v18)
        {
          v19 = ICDynamicCast();
        }

        else
        {
          v28 = [v13 cachedSnapshot];
          v29 = [v28 objectForKeyedSubscript:@"modificationDate"];
          v19 = ICDynamicCast();

          v11 = v75;
        }

        v30 = v10;

        if (v19)
        {
          v31 = [v16 modificationDate];
          v32 = [v31 compare:v19];

          if (v32 == -1)
          {
            [v16 setModificationDate:v19];
          }
        }

        v33 = [v16 cryptoTag];
        if (v33)
        {
          v34 = [v16 noteData];
          v35 = [v34 cryptoTag];
          if (v35)
          {
            v36 = [v16 cryptoInitializationVector];
            if (v36)
            {
              v73 = [v16 noteData];
              v37 = [v73 cryptoInitializationVector];
              if (v37)
              {
                v72 = v37;
                v38 = [v16 cryptoTag];
                v70 = [v16 noteData];
                [v70 cryptoTag];
                v69 = v71 = v38;
                if ([v38 isEqual:?])
                {
                  v67 = [v16 cryptoInitializationVector];
                  v68 = [v16 noteData];
                  v66 = [v68 cryptoInitializationVector];
                  v39 = [v67 isEqual:v66];
                }

                else
                {
                  v39 = 0;
                }

                v37 = v72;
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
        if ([v16 isPasswordProtected] && !((+[ICCryptoStrategyFactory cipherVersionForObject:](ICCryptoStrategyFactory, "cipherVersionForObject:", v16) != 0) | v39 & 1))
        {
          v52 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            v58 = [v16 noteData];
            v59 = [v58 ic_loggingIdentifier];
            v60 = [v16 shortLoggingDescription];
            *buf = 138412546;
            v83 = v59;
            v84 = 2112;
            v85 = v60;
            _os_log_error_impl(&dword_214D51000, v52, OS_LOG_TYPE_ERROR, "Re-saving note data (%@) because crypto goo has diverged for note: %@", buf, 0x16u);
          }

          v53 = [v16 noteData];
          [v53 setNeedsToBeSaved:1];

          v54 = [v16 noteData];
          [v54 saveNoteDataIfNeeded];
        }

        goto LABEL_62;
      }

      objc_opt_class();
      v22 = objc_opt_isKindOfClass();

      v16 = [v13 sourceObject];
      if (v22)
      {
        break;
      }

      objc_opt_class();
      v25 = objc_opt_isKindOfClass();

      if (v25)
      {
        v16 = [v13 sourceObject];
        objc_opt_class();
        v26 = [v13 persistedSnapshot];
        v27 = [v26 objectForKeyedSubscript:@"mergeableData"];
        if (v27)
        {
          v19 = ICDynamicCast();
        }

        else
        {
          v47 = [v13 cachedSnapshot];
          v48 = [v47 objectForKeyedSubscript:@"mergeableData"];
          v19 = ICDynamicCast();

          v11 = v75;
        }

        if (v19)
        {
          v49 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            v61 = objc_opt_class();
            v62 = v61;
            v63 = [v16 identifier];
            *buf = 138412546;
            v83 = v61;
            v84 = 2112;
            v85 = v63;
            _os_log_debug_impl(&dword_214D51000, v49, OS_LOG_TYPE_DEBUG, "Resolving mergeableData conflict for %@ (%@)", buf, 0x16u);
          }

          v50 = [v16 attachmentModel];
          [v50 mergeWithMergeableData:v19];

          v51 = [v16 attachmentModel];
          [v51 setMergeableDataDirty:1];

          [v16 saveMergeableDataIfNeeded];
        }

LABEL_62:
        [(ICNoteMergePolicy *)v74 resolveConflict:v13 forWallClockMergeablesInObject:v16];
LABEL_63:
      }

      if (v10 == ++v12)
      {
        v10 = [obj countByEnumeratingWithState:&v77 objects:v88 count:16];
        if (!v10)
        {
          v6 = v65;
          LOBYTE(v7) = v64;
          goto LABEL_5;
        }

        goto LABEL_8;
      }
    }

    objc_opt_class();
    v23 = [v13 persistedSnapshot];
    v24 = [v23 objectForKeyedSubscript:@"data"];
    if (v24)
    {
      v19 = ICDynamicCast();
    }

    else
    {
      v40 = [v13 cachedSnapshot];
      v41 = [v40 objectForKeyedSubscript:@"data"];
      v19 = ICDynamicCast();

      v11 = v75;
    }

    if (v19)
    {
      v42 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v55 = [v16 ic_loggingIdentifier];
        v56 = [v16 note];
        v57 = [v56 shortLoggingDescription];
        *buf = 138412546;
        v83 = v55;
        v84 = 2112;
        v85 = v57;
        _os_log_debug_impl(&dword_214D51000, v42, OS_LOG_TYPE_DEBUG, "Resolving note data (%@) conflict for note: %@", buf, 0x16u);
      }

      v43 = [v16 note];
      v44 = [v43 isPasswordProtected];

      v45 = [v16 note];
      v46 = v45;
      if (v44)
      {
        [v45 mergeEncryptedData:v19 mergeConflict:v13];
      }

      else
      {
        [v45 mergeWithNoteData:v19];
      }

      [v16 setNeedsToBeSaved:1];
      [v16 saveNoteDataIfNeeded];
    }

    goto LABEL_63;
  }

  [MEMORY[0x277D36278] postBasicEvent:16];
  obj = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
  {
    [(ICNoteMergePolicy *)v6 resolveOptimisticLockingVersionConflicts:a4 error:obj];
  }

LABEL_5:

  return v7;
}

- (void)resolveConflict:(id)a3 forWallClockMergeablesInObject:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
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
        v10 = [v5 persistedSnapshot];
        v11 = [v10 objectForKeyedSubscript:v9];
        if (v11)
        {
          v12 = ICDynamicCast();
        }

        else
        {
          v13 = [v5 cachedSnapshot];
          v14 = [v13 objectForKeyedSubscript:v9];
          v12 = ICDynamicCast();
        }

        if ([v12 length])
        {
          v15 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v22 = objc_opt_class();
            v23 = v22;
            v24 = [v6 ic_loggingIdentifier];
            *buf = 138412802;
            v35 = v22;
            v36 = 2112;
            v37 = v9;
            v38 = 2112;
            v39 = v24;
            _os_log_debug_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEBUG, "Resolving wall clock mergeable conflict for %@ (key=%@, identifier=%@)", buf, 0x20u);
          }

          objc_opt_class();
          v16 = [v6 valueForKey:v9];
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
                v25 = [v6 ic_loggingIdentifier];
                *buf = v26;
                v35 = v9;
                v36 = 2112;
                v37 = v25;
                _os_log_error_impl(&dword_214D51000, v20, OS_LOG_TYPE_ERROR, "Merge failed when resolving conflict for key (%@): %@", buf, 0x16u);
              }
            }

            v21 = [(ICTTMergeableWallClockValue *)v18 serialize];
            [v6 setValue:v21 forKeyPath:v9];
          }

          else
          {
            [v6 setValue:v12 forKeyPath:v9];
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

- (BOOL)resolveConstraintConflicts:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [MEMORY[0x277D36278] postBasicEvent:17];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v5;
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
          v25 = [v11 conflictingObjects];
          v13 = [v25 firstObject];
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
  v21 = [(NSMergePolicy *)&v26 resolveConstraintConflicts:obj error:a4];

  return v21;
}

- (BOOL)resolveConstraintConflict:(id)a3
{
  v44[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 constraint];
  v6 = NSStringFromSelector(sel_identifier);
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [v4 conflictingObjects];
    v9 = [v8 mutableCopy];

    v10 = [v4 databaseObject];

    if (v10)
    {
      v11 = [v4 databaseObject];
      [v9 insertObject:v11 atIndex:0];
    }

    v12 = MEMORY[0x277CCAC98];
    v13 = NSStringFromSelector(sel_className);
    v14 = [v12 sortDescriptorWithKey:v13 ascending:1];
    v44[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    [v9 sortUsingDescriptors:v15];

    if ([v9 count] == 2)
    {
      v16 = [v9 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [v9 lastObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v19 = [v9 firstObject];
          v20 = [v9 lastObject];
          v21 = [(ICNoteMergePolicy *)self resolveConflictingAttachment:v19 withInlineAttachment:v20];
          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    if ([v9 count] == 2)
    {
      v23 = [v9 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [v9 lastObject];
        objc_opt_class();
        v25 = objc_opt_isKindOfClass();

        if (v25)
        {
          v19 = [v9 firstObject];
          v20 = [v9 lastObject];
          v21 = [(ICNoteMergePolicy *)self resolveConflictingNote:v19 with:v20];
          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    if ([v9 count] == 2)
    {
      v26 = [v9 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = [v9 lastObject];
        objc_opt_class();
        v28 = objc_opt_isKindOfClass();

        if (v28)
        {
          v19 = [v9 firstObject];
          v20 = [v9 lastObject];
          v21 = [(ICNoteMergePolicy *)self resolveConflictingFolder:v19 with:v20];
          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    if ([v9 count] == 2)
    {
      v29 = [v9 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v30 = [v9 lastObject];
        objc_opt_class();
        v31 = objc_opt_isKindOfClass();

        if (v31)
        {
          v19 = [v9 firstObject];
          v20 = [v9 lastObject];
          v21 = [(ICNoteMergePolicy *)self resolveConflictingAttachment:v19 with:v20];
          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    if ([v9 count] == 2)
    {
      v32 = [v9 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = [v9 lastObject];
        objc_opt_class();
        v34 = objc_opt_isKindOfClass();

        if (v34)
        {
          v19 = [v9 firstObject];
          v20 = [v9 lastObject];
          v21 = [(ICNoteMergePolicy *)self resolveConflictingAttachmentPreviewImage:v19 with:v20];
          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    if ([v9 count] == 2)
    {
      v35 = [v9 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = [v9 lastObject];
        objc_opt_class();
        v37 = objc_opt_isKindOfClass();

        if (v37)
        {
          v19 = [v9 firstObject];
          v20 = [v9 lastObject];
          v21 = [(ICNoteMergePolicy *)self resolveConflictingInlineAttachment:v19 with:v20];
          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    if ([v9 count] == 2)
    {
      v38 = [v9 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v39 = [v9 lastObject];
        objc_opt_class();
        v40 = objc_opt_isKindOfClass();

        if (v40)
        {
          v19 = [v9 firstObject];
          v20 = [v9 lastObject];
          v21 = [(ICNoteMergePolicy *)self resolveConflictingDeviceMigrationState:v19 with:v20];
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

    v19 = [v9 firstObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = 0;
      goto LABEL_45;
    }

    v41 = [v9 lastObject];
    objc_opt_class();
    v42 = objc_opt_isKindOfClass();

    if ((v42 & 1) == 0)
    {
LABEL_46:
      v22 = 0;
      goto LABEL_47;
    }

    v19 = [v9 firstObject];
    v20 = [v9 lastObject];
    v21 = [(ICNoteMergePolicy *)self resolveConflictingLegacyTombstone:v19 with:v20];
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

- (BOOL)resolveConflictingAttachment:(id)a3 withInlineAttachment:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5 || !v6)
  {
    goto LABEL_8;
  }

  v8 = [v5 title];
  if (v8 || ([v5 userTitle], (v8 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v5, "urlString"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v5, "media"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
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

  v12 = [v5 identifier];
  v13 = [v7 identifier];
  v14 = [v12 isEqualToString:v13];

  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ICNoteMergePolicy resolveConflictingAttachment:withInlineAttachment:];
  }

  v16 = [v5 managedObjectContext];
  [v16 deleteObject:v5];

  v10 = 1;
  [v7 setNeedsToBeFetchedFromCloud:1];
LABEL_11:

  return v10;
}

- (BOOL)resolveConflictingFolder:(id)a3 with:(id)a4
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 needsInitialFetchFromCloud] && (objc_msgSend(v6, "needsInitialFetchFromCloud") & 1) == 0)
  {
    v7 = v6;
    v8 = v5;
    goto LABEL_22;
  }

  if (([v5 needsInitialFetchFromCloud] & 1) == 0 && objc_msgSend(v6, "needsInitialFetchFromCloud") || objc_msgSend(v5, "needsInitialFetchFromCloud") && objc_msgSend(v6, "needsInitialFetchFromCloud"))
  {
    v7 = v5;
    v8 = v6;
LABEL_22:
    v13 = v8;
    goto LABEL_23;
  }

  if (([v5 needsInitialFetchFromCloud] & 1) != 0 || (objc_msgSend(v6, "needsInitialFetchFromCloud") & 1) != 0 || (v9 = objc_msgSend(v5, "folderType"), v9 != objc_msgSend(v6, "folderType")) || (objc_msgSend(v5, "account"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "account"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, !v12))
  {
    v7 = 0;
    v13 = 0;
    goto LABEL_46;
  }

  v7 = v5;
  v13 = v6;
  v14 = [v13 dateForLastTitleModification];
  v15 = [v7 dateForLastTitleModification];
  v16 = [v14 ic_isLaterThanDate:v15];

  if (v16)
  {
    v17 = [v13 title];
    [v7 setTitle:v17];

    v18 = [v13 dateForLastTitleModification];
    [v7 setDateForLastTitleModification:v18];
  }

  v19 = [v13 parentModificationDate];
  v20 = [v7 parentModificationDate];
  v21 = [v19 ic_isLaterThanDate:v20];

  if (v21)
  {
    v22 = [v13 parent];
    [v7 setParent:v22];
  }

  v23 = [v13 customNoteSortTypeModificationDate];
  v24 = [v7 customNoteSortTypeModificationDate];
  v25 = [v23 ic_isLaterThanDate:v24];

  if (v25)
  {
    v26 = [v13 customNoteSortTypeValue];
    [v7 setCustomNoteSortTypeValue:v26];

    v27 = [v13 customNoteSortTypeModificationDate];
    [v7 setCustomNoteSortTypeModificationDate:v27];
  }

  v28 = [v13 mergeableData];

  if (v28)
  {
    v29 = [v13 mergeableData];
    [v7 mergeWithMergeableData:v29];
  }

LABEL_23:
  if (v13 && v7)
  {
    v30 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v56 = [v5 identifier];
      v57 = [v7 objectID];
      v58 = [v13 objectID];
      *buf = 138412802;
      v70 = v56;
      v71 = 2112;
      v72 = v57;
      v73 = 2112;
      v74 = v58;
      _os_log_debug_impl(&dword_214D51000, v30, OS_LOG_TYPE_DEBUG, "Resolving folder conflict (%@) by keeping (%@) and deleting (%@)", buf, 0x20u);
    }

    v31 = [v13 notes];
    v32 = [v31 count];

    if (v32)
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v33 = [v13 notes];
      v34 = [v33 copy];

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

      v39 = [v13 notes];
      v40 = [v39 copy];
      [v7 addNotes:v40];

      v41 = [MEMORY[0x277CBEB98] set];
      [v13 setNotes:v41];
    }

    v42 = [v13 children];
    v43 = [v42 count];

    if (v43)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v44 = [v13 children];
      v45 = [v44 copy];

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

      v50 = [v13 children];
      v51 = [v50 copy];
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

- (BOOL)resolveConflictingInlineAttachment:(id)a3 with:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (![v5 needsInitialFetchFromCloud] || (v7 = objc_msgSend(v6, "needsInitialFetchFromCloud"), v8 = v6, v9 = v5, v7))
  {
    if (([v5 needsInitialFetchFromCloud] & 1) != 0 || (v10 = objc_msgSend(v6, "needsInitialFetchFromCloud"), v8 = v5, v9 = v6, (v10 & 1) == 0))
    {
      if (![v5 needsInitialFetchFromCloud] || (v11 = objc_msgSend(v6, "needsInitialFetchFromCloud"), v8 = v5, v9 = v6, (v11 & 1) == 0))
      {
        if (([v5 needsInitialFetchFromCloud] & 1) != 0 || (objc_msgSend(v6, "needsInitialFetchFromCloud") & 1) != 0 || (objc_msgSend(v5, "tokenContentIdentifier"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "tokenContentIdentifier"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "isEqualToString:", v22), v22, v21, !v23))
        {
          v12 = 0;
          v13 = 0;
          goto LABEL_31;
        }

        v24 = [v5 markedForDeletion];
        v25 = [v6 markedForDeletion];
        v8 = v5;
        v9 = v6;
        if (v24 != v25)
        {
          v26 = [v5 markedForDeletion];
          if (v26)
          {
            v8 = v5;
          }

          else
          {
            v8 = v6;
          }

          if (v26)
          {
            v9 = v6;
          }

          else
          {
            v9 = v5;
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
      v28 = [v5 identifier];
      v29 = [v12 objectID];
      v30 = [v13 objectID];
      v31 = 138412802;
      v32 = v28;
      v33 = 2112;
      v34 = v29;
      v35 = 2112;
      v36 = v30;
      _os_log_debug_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEBUG, "Resolving inline attachment conflict (%@) by keeping (%@) and deleting (%@)", &v31, 0x20u);
    }

    v15 = [v12 note];
    if (!v15)
    {
      v16 = [v13 note];

      if (!v16)
      {
        goto LABEL_15;
      }

      v15 = [v13 note];
      [v12 setNote:v15];
    }

LABEL_15:
    v17 = [v12 parentAttachment];
    if (!v17)
    {
      v18 = [v13 parentAttachment];

      if (!v18)
      {
LABEL_19:
        v19 = [v13 managedObjectContext];
        [v19 deleteObject:v13];
        v20 = 1;
        goto LABEL_34;
      }

      v17 = [v13 parentAttachment];
      [v12 setParentAttachment:v17];
    }

    goto LABEL_19;
  }

LABEL_31:
  v19 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [ICNoteMergePolicy resolveConflictingInlineAttachment:with:];
  }

  v20 = 0;
LABEL_34:

  return v20;
}

- (BOOL)resolveConflictingNote:(id)a3 with:(id)a4
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (![v5 needsInitialFetchFromCloud] || (v7 = objc_msgSend(v6, "needsInitialFetchFromCloud"), v8 = v6, v9 = v5, v7))
  {
    if (([v5 needsInitialFetchFromCloud] & 1) != 0 || (v10 = objc_msgSend(v6, "needsInitialFetchFromCloud"), v8 = v5, v9 = v6, (v10 & 1) == 0))
    {
      if (![v5 needsInitialFetchFromCloud] || (v11 = objc_msgSend(v6, "markedForDeletion"), v8 = v6, v9 = v5, (v11 & 1) == 0))
      {
        if (![v5 markedForDeletion] || (v12 = objc_msgSend(v6, "needsInitialFetchFromCloud"), v8 = v5, v9 = v6, (v12 & 1) == 0))
        {
          v13 = [v5 folder];
          if (v13)
          {
          }

          else
          {
            v21 = [v6 folder];

            v8 = v6;
            v9 = v5;
            if (v21)
            {
              goto LABEL_21;
            }
          }

          v14 = [v5 folder];
          if (!v14 || (v15 = v14, [v6 folder], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v8 = v5, v9 = v6, v16))
          {
            v17 = [v5 folder];
            v18 = [v6 folder];
            v19 = [v17 isEqual:v18];

            if (!v19)
            {
              v22 = 0;
              v23 = 0;
              goto LABEL_47;
            }

            v20 = [v5 document];

            if (v20)
            {
              v8 = v5;
            }

            else
            {
              v8 = v6;
            }

            if (v20)
            {
              v9 = v6;
            }

            else
            {
              v9 = v5;
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
      v51 = [v5 identifier];
      v52 = [v22 objectID];
      v53 = [v23 objectID];
      *buf = 138412802;
      v71 = v51;
      v72 = 2112;
      v73 = v52;
      v74 = 2112;
      v75 = v53;
      _os_log_debug_impl(&dword_214D51000, v24, OS_LOG_TYPE_DEBUG, "Resolving note conflict (%@) by keeping (%@) and deleting (%@)", buf, 0x20u);
    }

    v25 = [v23 attachments];
    v26 = [v25 count];

    if (v26)
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v27 = [v23 attachments];
      v28 = [v27 copy];

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

      v33 = [v23 attachments];
      v34 = [v33 copy];
      [v22 addAttachments:v34];

      v35 = [MEMORY[0x277CBEB98] set];
      [v23 setAttachments:v35];
    }

    v36 = [v23 inlineAttachments];
    v37 = [v36 count];

    if (v37)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v38 = [v23 inlineAttachments];
      v39 = [v38 copy];

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

      v44 = [v23 inlineAttachments];
      v45 = [v44 copy];
      [v22 addInlineAttachments:v45];

      v46 = [MEMORY[0x277CBEB98] set];
      [v23 setInlineAttachments:v46];
    }

    v47 = [v23 document];

    if (v47)
    {
      v54 = MEMORY[0x277D85DD0];
      v55 = 3221225472;
      v56 = __49__ICNoteMergePolicy_resolveConflictingNote_with___block_invoke;
      v57 = &unk_278195138;
      v58 = v22;
      v59 = v23;
      [v58 performMerge:&v54];
    }

    v48 = [v23 managedObjectContext];
    [v48 deleteObject:v23];
    v49 = 1;
    goto LABEL_50;
  }

LABEL_47:
  v48 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
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

- (BOOL)resolveConflictingAttachment:(id)a3 with:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (([v5 needsInitialFetchFromCloud] & 1) != 0 || (v7 = objc_msgSend(v6, "needsInitialFetchFromCloud"), v8 = v5, v9 = v6, (v7 & 1) == 0))
  {
    if (![v5 needsInitialFetchFromCloud] || (v10 = objc_msgSend(v6, "needsInitialFetchFromCloud"), v8 = v6, v9 = v5, v10))
    {
      if (![v5 needsInitialFetchFromCloud] || (v11 = objc_msgSend(v6, "needsInitialFetchFromCloud"), v8 = v5, v9 = v6, (v11 & 1) == 0))
      {
        v12 = [v5 serverRecordData];
        if (!v12 || (v13 = v12, [v6 serverRecordData], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v8 = v5, v9 = v6, v14))
        {
          v15 = [v6 serverRecordData];
          if (!v15)
          {
LABEL_12:
            v17 = 0;
LABEL_18:
            v19 = os_log_create("com.apple.notes", "CoreData");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [ICNoteMergePolicy resolveConflictingAttachment:with:];
            }

            v20 = 0;
            goto LABEL_21;
          }

          v16 = [v5 serverRecordData];

          v8 = v6;
          v9 = v5;
          if (v16)
          {
            v15 = 0;
            goto LABEL_12;
          }
        }
      }
    }
  }

  v15 = v8;
  v17 = v9;
  if (!v17 || !v15)
  {
    goto LABEL_18;
  }

  v18 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v22 = [v5 identifier];
    v23 = [v15 objectID];
    v24 = [v17 objectID];
    v25 = 138412802;
    v26 = v22;
    v27 = 2112;
    v28 = v23;
    v29 = 2112;
    v30 = v24;
    _os_log_debug_impl(&dword_214D51000, v18, OS_LOG_TYPE_DEBUG, "Resolving attachment conflict (%@) by keeping (%@) and deleting (%@)", &v25, 0x20u);
  }

  [v17 suppressFileDeletion];
  v19 = [v17 managedObjectContext];
  [v19 deleteObject:v17];
  v20 = 1;
LABEL_21:

  return v20;
}

- (BOOL)resolveConflictingAttachmentPreviewImage:(id)a3 with:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (([v5 versionOutOfDate] & 1) != 0 || (v7 = objc_msgSend(v6, "versionOutOfDate"), v8 = v5, v9 = v6, (v7 & 1) == 0))
  {
    if (![v5 isInCloud] || (v10 = objc_msgSend(v6, "isInCloud"), v8 = v5, v9 = v6, v10))
    {
      if (![v5 versionOutOfDate] || (v11 = objc_msgSend(v6, "versionOutOfDate"), v8 = v6, v9 = v5, v11))
      {
        if (([v5 isInCloud] & 1) != 0 || (v12 = objc_msgSend(v6, "isInCloud"), v8 = v6, v9 = v5, (v12 & 1) == 0))
        {
          v13 = [v5 modifiedDate];
          v14 = [v6 modifiedDate];
          v15 = [v13 ic_isLaterThanDate:v14];

          if (v15)
          {
            v8 = v5;
          }

          else
          {
            v8 = v6;
          }

          if (v15)
          {
            v9 = v6;
          }

          else
          {
            v9 = v5;
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
  v21 = v20;
  if (v19)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v23 = [v5 identifier];
      v24 = [v16 objectID];
      v25 = [v17 objectID];
      v26 = 138412802;
      v27 = v23;
      v28 = 2112;
      v29 = v24;
      v30 = 2112;
      v31 = v25;
      _os_log_debug_impl(&dword_214D51000, v21, OS_LOG_TYPE_DEBUG, "Resolving attachment preview image conflict (%@) by keeping (%@) and deleting (%@)", &v26, 0x20u);
    }

    [v17 suppressFileDeletion];
    v21 = [v17 managedObjectContext];
    [v21 deleteObject:v17];
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

- (BOOL)resolveConflictingDeviceMigrationState:(id)a3 with:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (![v5 isInCloud] || (v7 = objc_msgSend(v6, "isInCloud"), v8 = v5, v9 = v6, v7))
  {
    if (([v5 isInCloud] & 1) != 0 || (v10 = objc_msgSend(v6, "isInCloud"), v8 = v6, v9 = v5, (v10 & 1) == 0))
    {
      v11 = [v5 stateModificationDate];
      v12 = [v6 stateModificationDate];
      v13 = [v11 ic_isLaterThanDate:v12];

      if (v13)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6;
      }

      if (v13)
      {
        v9 = v6;
      }

      else
      {
        v9 = v5;
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
  v19 = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v5 identifier];
      v26 = [v14 objectID];
      v27 = [v15 objectID];
      v31 = 138412802;
      v32 = v25;
      v33 = 2112;
      v34 = v26;
      v35 = 2112;
      v36 = v27;
      _os_log_debug_impl(&dword_214D51000, v19, OS_LOG_TYPE_DEBUG, "Resolving device migration state conflict (%@) by keeping (%@) and deleting (%@)", &v31, 0x20u);
    }

    v20 = [v15 stateModificationDate];
    v21 = [v14 stateModificationDate];
    v22 = [v20 ic_isLaterThanDate:v21];

    if (v22)
    {
      [v14 setState:{objc_msgSend(v15, "state")}];
      v23 = [v15 stateModificationDate];
      [v14 setStateModificationDate:v23];

      [v14 updateChangeCountWithReason:@"Resolved Core Data conflict"];
    }

    v19 = [v15 managedObjectContext];
    [v19 deleteObject:v15];
  }

  else
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v28 = [v5 identifier];
      v29 = [v14 objectID];
      v30 = [v15 objectID];
      v31 = 138412802;
      v32 = v28;
      v33 = 2112;
      v34 = v29;
      v35 = 2112;
      v36 = v30;
      _os_log_error_impl(&dword_214D51000, v19, OS_LOG_TYPE_ERROR, "Not resolving device migration state constraint conflict (%@) between (%@) and (%@)", &v31, 0x20u);
    }
  }

  return v17;
}

- (BOOL)resolveConflictingLegacyTombstone:(id)a3 with:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (![v5 isInCloud] || (v7 = objc_msgSend(v6, "isInCloud"), v8 = v5, v9 = v6, v7))
  {
    if (([v5 isInCloud] & 1) != 0 || (v10 = objc_msgSend(v6, "isInCloud"), v8 = v6, v9 = v5, (v10 & 1) == 0))
    {
      v11 = [v5 account];
      if (!v11 || (v12 = v11, [v6 account], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v8 = v5, v9 = v6, v13))
      {
        v14 = [v5 account];
        if (v14)
        {
        }

        else
        {
          v18 = [v6 account];

          v8 = v6;
          v9 = v5;
          if (v18)
          {
            goto LABEL_12;
          }
        }

        v15 = [v5 isEquivalentTo:v6];
        v8 = v5;
        v9 = v6;
        if (!v15)
        {
          v16 = 0;
          v17 = 0;
LABEL_17:
          v20 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v23 = [v5 identifier];
            v24 = [v16 objectID];
            v25 = [v17 objectID];
            v29 = 138412802;
            v30 = v23;
            v31 = 2112;
            v32 = v24;
            v33 = 2112;
            v34 = v25;
            _os_log_error_impl(&dword_214D51000, v20, OS_LOG_TYPE_ERROR, "Not resolving legacy tombstone constraint conflict (%@) between (%@) and (%@)", &v29, 0x20u);
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
    v26 = [v5 identifier];
    v27 = [v16 objectID];
    v28 = [v17 objectID];
    v29 = 138412802;
    v30 = v26;
    v31 = 2112;
    v32 = v27;
    v33 = 2112;
    v34 = v28;
    _os_log_debug_impl(&dword_214D51000, v19, OS_LOG_TYPE_DEBUG, "Resolving legacy tombstone conflict (%@) by keeping (%@) and deleting (%@)", &v29, 0x20u);
  }

  v20 = [v17 managedObjectContext];
  [v20 deleteObject:v17];
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