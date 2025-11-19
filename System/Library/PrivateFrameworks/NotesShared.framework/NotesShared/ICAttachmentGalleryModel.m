@interface ICAttachmentGalleryModel
- (BOOL)attachmentHasMergeableData;
- (BOOL)hasThumbnailImage;
- (BOOL)mergeWithMergeableData:(id)a3 mergeableFieldState:(id)a4;
- (BOOL)providesStandaloneTitleForNote;
- (BOOL)shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:(id)a3;
- (ICCROrderedSet)attachmentIdentifiersOrderedSet;
- (ICTTOrderedSetVersionedDocument)attachmentIdentifiersOrderedSetDocument;
- (NSArray)subAttachmentIdentifiers;
- (id)firstSubAttachment;
- (id)searchableStringArray;
- (id)searchableTextContent;
- (id)singleSubAttachmentAtIndex:(unint64_t)a3;
- (id)standaloneTitleForNote;
- (id)subAttachmentIdentifierAtIndex:(unint64_t)a3;
- (id)titleForSubAttachment:(id)a3;
- (int64_t)previewImageOrientation;
- (unint64_t)indexOfSubAttachmentWithIdentifier:(id)a3;
- (unint64_t)subAttachmentCount;
- (void)addSubAttachment:(id)a3;
- (void)attachmentDidRefresh:(BOOL)a3;
- (void)attachmentWillRefresh:(BOOL)a3;
- (void)attachmentWillTurnIntoFault;
- (void)enumerateSubAttachmentsWithBlock:(id)a3;
- (void)insertSubAttachment:(id)a3 atIndex:(unint64_t)a4;
- (void)removeSubAttachment:(id)a3;
- (void)undeleteSubAttachments;
- (void)updateAfterLoadWithSubAttachmentIdentifierMap:(id)a3;
- (void)updateAttachmentMarkedForDeletionStateAttachmentIsInUse:(BOOL)a3;
- (void)writeMergeableData;
@end

@implementation ICAttachmentGalleryModel

- (void)attachmentWillTurnIntoFault
{
  if (![(ICAttachmentModel *)self isMergeableDataDirty])
  {
    attachmentIdentifiersOrderedSetDocument = self->_attachmentIdentifiersOrderedSetDocument;
    self->_attachmentIdentifiersOrderedSetDocument = 0;
  }
}

- (void)attachmentWillRefresh:(BOOL)a3
{
  if (![(ICAttachmentModel *)self isMergeableDataDirty])
  {
    attachmentIdentifiersOrderedSetDocument = self->_attachmentIdentifiersOrderedSetDocument;
    self->_attachmentIdentifiersOrderedSetDocument = 0;
  }
}

- (void)attachmentDidRefresh:(BOOL)a3
{
  if (self->_attachmentIdentifiersOrderedSetDocument && [(ICAttachmentModel *)self isMergeableDataDirty])
  {
    v4 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [ICAttachmentGalleryModel attachmentDidRefresh:?];
    }
  }
}

- (BOOL)hasThumbnailImage
{
  v3 = [(ICAttachmentGalleryModel *)self firstSubAttachment];
  v4 = [(ICAttachmentModel *)self attachment];
  if ([v4 markedForDeletion])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 media];
    v7 = [v6 mediaURL];
    v5 = v7 != 0;
  }

  return v5;
}

- (id)firstSubAttachment
{
  v3 = [(ICAttachmentGalleryModel *)self subAttachmentCount];
  if (v3)
  {
    v3 = [(ICAttachmentGalleryModel *)self singleSubAttachmentAtIndex:0];
  }

  return v3;
}

- (BOOL)attachmentHasMergeableData
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__ICAttachmentGalleryModel_attachmentHasMergeableData__block_invoke;
  v6[3] = &unk_278194DE8;
  v6[4] = self;
  v6[5] = &v7;
  [v4 performBlockAndWait:v6];

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __54__ICAttachmentGalleryModel_attachmentHasMergeableData__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) attachment];
  v2 = [v3 mergeableData];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (id)titleForSubAttachment:(id)a3
{
  v4 = a3;
  v5 = [v4 parentAttachment];
  v6 = [(ICAttachmentModel *)self attachment];

  if (v5 == v6 && (-[ICAttachmentGalleryModel attachmentIdentifiersOrderedSet](self, "attachmentIdentifiersOrderedSet"), v7 = objc_claimAutoreleasedReturnValue(), [v4 identifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "indexOfObject:", v8), v8, v7, v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = __ICLocalizedFrameworkString_impl(@"%@ %ld", @"%@ %ld", 0, 1);
    v13 = MEMORY[0x277CCACA8];
    v14 = [(ICAttachmentModel *)self attachment];
    v15 = [v14 title];
    v10 = [v13 localizedStringWithFormat:v12, v15, v9 + 1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  v5 = [(ICAttachmentModel *)self attachment];
  v6 = [v5 managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__ICAttachmentGalleryModel_shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier___block_invoke;
  v10[3] = &unk_278194D68;
  v10[4] = self;
  v10[5] = &v11;
  [v6 performBlockAndWait:v10];

  v7 = v12[5];
  if (v7)
  {
    v8 = [v7 isEqualToString:v4];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

void __90__ICAttachmentGalleryModel_shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) attachment];
  if (([v6 markedForDeletion] & 1) == 0)
  {
    v2 = [*(a1 + 32) subAttachmentCount];

    if (!v2)
    {
      return;
    }

    v6 = [*(a1 + 32) firstSubAttachment];
    v3 = [v6 identifier];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (void)addSubAttachment:(id)a3
{
  v6 = a3;
  v4 = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
  v5 = [v4 count];

  [(ICAttachmentGalleryModel *)self insertSubAttachment:v6 atIndex:v5];
}

- (void)insertSubAttachment:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ICAttachmentModel *)self attachment];
  [v7 addSubAttachmentsObject:v6];

  v8 = [(ICAttachmentModel *)self attachment];
  [v6 setParentAttachment:v8];

  [v6 updateChangeCountWithReason:@"Inserted subattachment"];
  v9 = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
  v10 = [v6 identifier];

  [v9 insertObject:v10 atIndex:a4];

  [(ICAttachmentModel *)self setMergeableDataDirty:1];
}

- (void)removeSubAttachment:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentModel *)self attachment];
  [v5 removeSubAttachmentsObject:v4];

  v6 = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
  v7 = [v4 identifier];

  [v6 removeObject:v7];

  [(ICAttachmentModel *)self setMergeableDataDirty:1];
}

- (void)enumerateSubAttachmentsWithBlock:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICAttachmentModel *)self attachment];
  v6 = [v5 subAttachments];

  v7 = objc_alloc(MEMORY[0x277CCAB00]);
  v31 = self;
  v8 = [(ICAttachmentModel *)self attachment];
  v9 = [v8 subAttachments];
  v10 = [v7 initWithKeyOptions:0x10000 valueOptions:5 capacity:{objc_msgSend(v9, "count")}];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        v17 = [v16 identifier];
        [v10 setObject:v16 forKey:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v13);
  }

  v18 = [(ICAttachmentGalleryModel *)v31 subAttachmentIdentifiers];
  v32 = 0;
  if ([v18 count])
  {
    v20 = 0;
    *&v19 = 138412546;
    v30 = v19;
    do
    {
      v21 = [v18 objectAtIndex:{v20, v30}];
      if (!v21)
      {
        goto LABEL_21;
      }

      v22 = [v10 objectForKey:v21];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 parentAttachment];
        v25 = [(ICAttachmentModel *)v31 attachment];

        if (v24 == v25)
        {
          goto LABEL_20;
        }

        v26 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [(ICAttachmentGalleryModel *)v37 enumerateSubAttachmentsWithBlock:v23, &v38, v26];
        }
      }

      else
      {
        v26 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = [(ICAttachmentModel *)v31 attachment];
          v29 = [v28 identifier];
          *buf = v30;
          v40 = v21;
          v41 = 2112;
          v42 = v29;
          _os_log_error_impl(&dword_214D51000, v26, OS_LOG_TYPE_ERROR, "Attachment not found: %@, when enumerating: %@", buf, 0x16u);
        }

        v23 = v26;
      }

      v23 = 0;
LABEL_20:
      v4[2](v4, v23, v21, v20, &v32);
      v27 = v32;

      if (v27)
      {

        break;
      }

LABEL_21:

      ++v20;
    }

    while (v20 < [v18 count]);
  }
}

- (unint64_t)indexOfSubAttachmentWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentGalleryModel *)self subAttachmentIdentifiers];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (unint64_t)subAttachmentCount
{
  if (![(ICAttachmentGalleryModel *)self attachmentHasMergeableData])
  {
    return 0;
  }

  v3 = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
  v4 = [v3 count];

  return v4;
}

- (NSArray)subAttachmentIdentifiers
{
  if ([(ICAttachmentGalleryModel *)self attachmentHasMergeableData])
  {
    v3 = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
    v4 = [v3 allObjects];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (id)subAttachmentIdentifierAtIndex:(unint64_t)a3
{
  v4 = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (id)singleSubAttachmentAtIndex:(unint64_t)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [(ICAttachmentGalleryModel *)self subAttachmentIdentifierAtIndex:?];
  if (!v5)
  {
    v19 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(ICAttachmentGalleryModel *)self singleSubAttachmentAtIndex:a3, v19];
    }

LABEL_21:

    v15 = 0;
    goto LABEL_22;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [(ICAttachmentModel *)self attachment];
  v7 = [v6 subAttachments];

  v8 = [v7 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (!v8)
  {
LABEL_10:
    v15 = v7;
LABEL_16:

LABEL_17:
    v19 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = [(ICAttachmentModel *)self attachment];
      v21 = [v20 identifier];
      *buf = 138412802;
      v28 = v5;
      v29 = 2112;
      v30 = v21;
      v31 = 2048;
      v32 = a3;
      _os_log_debug_impl(&dword_214D51000, v19, OS_LOG_TYPE_DEBUG, "Sub attachment %@ not found in %@ at index %ld", buf, 0x20u);
    }

    goto LABEL_21;
  }

  v9 = v8;
  v10 = *v24;
LABEL_4:
  v11 = 0;
  while (1)
  {
    if (*v24 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v23 + 1) + 8 * v11);
    v13 = [v12 identifier];
    v14 = [v13 isEqualToString:v5];

    if (v14)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v9)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v15 = v12;

  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = [v15 parentAttachment];
  v17 = [(ICAttachmentModel *)self attachment];

  if (v16 != v17)
  {
    v18 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ICAttachmentGalleryModel singleSubAttachmentAtIndex:v15];
    }

    goto LABEL_16;
  }

LABEL_22:

  return v15;
}

- (ICTTOrderedSetVersionedDocument)attachmentIdentifiersOrderedSetDocument
{
  attachmentIdentifiersOrderedSetDocument = self->_attachmentIdentifiersOrderedSetDocument;
  if (!attachmentIdentifiersOrderedSetDocument)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__3;
    v21 = __Block_byref_object_dispose__3;
    v22 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__3;
    v15 = __Block_byref_object_dispose__3;
    v16 = 0;
    v4 = [(ICAttachmentModel *)self attachment];
    v5 = [v4 managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__ICAttachmentGalleryModel_attachmentIdentifiersOrderedSetDocument__block_invoke;
    v10[3] = &unk_2781950A8;
    v10[4] = self;
    v10[5] = &v17;
    v10[6] = &v11;
    [v5 performBlockAndWait:v10];

    v6 = [ICTTOrderedSetVersionedDocument alloc];
    v7 = [(ICTTVersionedDocument *)v6 initWithData:v18[5] replicaID:v12[5]];
    v8 = self->_attachmentIdentifiersOrderedSetDocument;
    self->_attachmentIdentifiersOrderedSetDocument = v7;

    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v17, 8);

    attachmentIdentifiersOrderedSetDocument = self->_attachmentIdentifiersOrderedSetDocument;
  }

  return attachmentIdentifiersOrderedSetDocument;
}

void __67__ICAttachmentGalleryModel_attachmentIdentifiersOrderedSetDocument__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 mergeableData];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) currentReplicaID];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (ICCROrderedSet)attachmentIdentifiersOrderedSet
{
  objc_opt_class();
  v3 = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSetDocument];
  v4 = [v3 orderedSet];
  v5 = ICCheckedDynamicCast();

  return v5;
}

- (BOOL)mergeWithMergeableData:(id)a3 mergeableFieldState:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v6 = os_log_create("com.apple.notes", "Topotext");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ICAttachmentGalleryModel mergeWithMergeableData:v6 mergeableFieldState:?];
  }

  v7 = [ICTTOrderedSetVersionedDocument alloc];
  v8 = [(ICAttachmentModel *)self currentReplicaID];
  v9 = [(ICTTVersionedDocument *)v7 initWithData:v5 replicaID:v8];

  v10 = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSetDocument];
  v11 = [v10 mergeWithOrderedSetVersionedDocument:v9];

  v12 = v11 == 2;
  if (v11 == 2)
  {
    v13 = [(ICAttachmentModel *)self attachment];
    v14 = [v13 previewUpdateDate];
    v15 = [(ICAttachmentModel *)self attachment];
    v16 = [v15 modificationDate];
    v17 = [v14 compare:v16];

    if (v17 != -1)
    {
      v18 = [(ICAttachmentModel *)self attachment];
      [v18 setPreviewUpdateDate:0];
    }

    v19 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [ICAttachmentGalleryModel mergeWithMergeableData:v19 mergeableFieldState:?];
    }

    [(ICAttachmentModel *)self setMergeableDataDirty:1];
  }

  return v12;
}

- (void)writeMergeableData
{
  if ([(ICAttachmentModel *)self isMergeableDataDirty])
  {
    [(ICAttachmentModel *)self setMergeableDataDirty:0];
  }

  v5 = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSetDocument];
  v3 = [v5 serialize];
  v4 = [(ICAttachmentModel *)self attachment];
  [v4 setMergeableData:v3];
}

- (void)updateAfterLoadWithSubAttachmentIdentifierMap:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
  v6 = [v5 allObjects];

  v7 = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
  [v7 removeAllObjects];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v21;
    *&v9 = 138412290;
    v18 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v4 objectForKeyedSubscript:{v13, v18}];
        v15 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v25 = v13;
          v26 = 2112;
          v27 = v14;
          _os_log_debug_impl(&dword_214D51000, v15, OS_LOG_TYPE_DEBUG, "Update sub attachment after load: %@ => %@", buf, 0x16u);
        }

        if (v14)
        {
          v16 = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
          [v16 addObject:v14];
        }

        else
        {
          v16 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v25 = v13;
            _os_log_error_impl(&dword_214D51000, v16, OS_LOG_TYPE_ERROR, "Unable to map from %@ to new identifier", buf, 0xCu);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v10);
  }

  if ([obj count])
  {
    [(ICAttachmentModel *)self setMergeableDataDirty:1];
    v17 = [(ICAttachmentModel *)self attachment];
    [v17 saveMergeableDataIfNeeded];
  }
}

- (void)updateAttachmentMarkedForDeletionStateAttachmentIsInUse:(BOOL)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = ICAttachmentGalleryModel;
  [(ICAttachmentModel *)&v34 updateAttachmentMarkedForDeletionStateAttachmentIsInUse:a3];
  v4 = [(ICAttachmentModel *)self attachment];
  if (([v4 needsInitialFetchFromCloud] & 1) == 0)
  {
    v5 = [(ICAttachmentModel *)self attachment];
    v6 = [v5 hasChanges];

    if (v6)
    {
      return;
    }

    v7 = [(ICAttachmentModel *)self attachment];
    v8 = [v7 markedForDeletion];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = self;
    v9 = [(ICAttachmentModel *)self attachment];
    v4 = [v9 subAttachments];

    v10 = [v4 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v31;
      *&v11 = 138412546;
      v28 = v11;
      v14 = self;
      do
      {
        v15 = 0;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v4);
          }

          v16 = *(*(&v30 + 1) + 8 * v15);
          if ((v8 & 1) != 0 || (-[ICAttachmentGalleryModel attachmentIdentifiersOrderedSet](v14, "attachmentIdentifiersOrderedSet"), v17 = objc_claimAutoreleasedReturnValue(), [v16 identifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "containsObject:", v18), v18, v17, (v19 & 1) == 0))
          {
            if (([v16 markedForDeletion] & 1) == 0)
            {
              v21 = os_log_create("com.apple.notes", "CoreData");
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                v22 = [v16 identifier];
                v23 = [(ICAttachmentModel *)v14 attachment];
                v24 = [v23 identifier];
                *buf = v28;
                v36 = v22;
                v37 = 2112;
                v38 = v24;
                _os_log_debug_impl(&dword_214D51000, v21, OS_LOG_TYPE_DEBUG, "Gallery model deleting subattachment %@ %@", buf, 0x16u);

                v14 = v29;
              }

              [ICAttachment deleteAttachment:v16];
            }
          }

          else if ([v16 markedForDeletion])
          {
            v20 = os_log_create("com.apple.notes", "CoreData");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v25 = [v16 identifier];
              v26 = [(ICAttachmentModel *)v29 attachment];
              v27 = [v26 identifier];
              *buf = v28;
              v36 = v25;
              v37 = 2112;
              v38 = v27;
              _os_log_debug_impl(&dword_214D51000, v20, OS_LOG_TYPE_DEBUG, "Gallery model un-deleting subattachment %@ %@", buf, 0x16u);

              v14 = v29;
            }

            [ICAttachment undeleteAttachment:v16];
          }

          ++v15;
        }

        while (v12 != v15);
        v12 = [v4 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v12);
    }
  }
}

- (void)undeleteSubAttachments
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 subAttachments];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
        v11 = [v9 identifier];
        v12 = [v10 containsObject:v11];

        if (v12)
        {
          [ICAttachment undeleteAttachment:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (BOOL)providesStandaloneTitleForNote
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 title];

  if (v4)
  {
    v5 = [(ICAttachmentModel *)self attachment];
    v6 = [v5 defaultTitle];
    v7 = [v4 isEqualToString:v6] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)standaloneTitleForNote
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 title];

  return v3;
}

- (id)searchableTextContent
{
  v2 = [(ICAttachmentGalleryModel *)self searchableStringArray];
  v3 = [v2 componentsJoinedByString:@" "];

  return v3;
}

- (id)searchableStringArray
{
  v3 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__ICAttachmentGalleryModel_searchableStringArray__block_invoke;
  v6[3] = &unk_2781950D0;
  v4 = v3;
  v7 = v4;
  [(ICAttachmentGalleryModel *)self enumerateSubAttachmentsWithBlock:v6];

  return v4;
}

void __49__ICAttachmentGalleryModel_searchableStringArray__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 summary];
  [v2 ic_addNonNilObject:v3];
}

- (int64_t)previewImageOrientation
{
  v7.receiver = self;
  v7.super_class = ICAttachmentGalleryModel;
  v3 = [(ICAttachmentModel *)&v7 previewImageOrientation];
  if ([(ICAttachmentGalleryModel *)self subAttachmentCount])
  {
    v4 = [(ICAttachmentGalleryModel *)self firstSubAttachment];
    v5 = [v4 attachmentModel];
    v3 = [v5 previewImageOrientation];
  }

  return v3;
}

- (void)attachmentDidRefresh:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 attachment];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v3, v4, "Had a dirty attachment gallery document after refresh: %@", v5, v6, v7, v8, 2u);
}

- (void)enumerateSubAttachmentsWithBlock:(void *)a3 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 shortLoggingDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_214D51000, a4, OS_LOG_TYPE_DEBUG, "Parent attachment not synced yet for: %@", a1, 0xCu);
}

- (void)singleSubAttachmentAtIndex:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_0_0(&dword_214D51000, v2, v3, "Parent attachment not synced yet for: %@", v4, v5, v6, v7, 2u);
}

- (void)singleSubAttachmentAtIndex:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 attachment];
  v6 = [v5 identifier];
  v7 = 134218242;
  v8 = a2;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_214D51000, a3, OS_LOG_TYPE_ERROR, "Unable to find identifier at index: %ld, for attachment: %@", &v7, 0x16u);
}

@end