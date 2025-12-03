@interface ICAttachmentGalleryModel
- (BOOL)attachmentHasMergeableData;
- (BOOL)hasThumbnailImage;
- (BOOL)mergeWithMergeableData:(id)data mergeableFieldState:(id)state;
- (BOOL)providesStandaloneTitleForNote;
- (BOOL)shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:(id)identifier;
- (ICCROrderedSet)attachmentIdentifiersOrderedSet;
- (ICTTOrderedSetVersionedDocument)attachmentIdentifiersOrderedSetDocument;
- (NSArray)subAttachmentIdentifiers;
- (id)firstSubAttachment;
- (id)searchableStringArray;
- (id)searchableTextContent;
- (id)singleSubAttachmentAtIndex:(unint64_t)index;
- (id)standaloneTitleForNote;
- (id)subAttachmentIdentifierAtIndex:(unint64_t)index;
- (id)titleForSubAttachment:(id)attachment;
- (int64_t)previewImageOrientation;
- (unint64_t)indexOfSubAttachmentWithIdentifier:(id)identifier;
- (unint64_t)subAttachmentCount;
- (void)addSubAttachment:(id)attachment;
- (void)attachmentDidRefresh:(BOOL)refresh;
- (void)attachmentWillRefresh:(BOOL)refresh;
- (void)attachmentWillTurnIntoFault;
- (void)enumerateSubAttachmentsWithBlock:(id)block;
- (void)insertSubAttachment:(id)attachment atIndex:(unint64_t)index;
- (void)removeSubAttachment:(id)attachment;
- (void)undeleteSubAttachments;
- (void)updateAfterLoadWithSubAttachmentIdentifierMap:(id)map;
- (void)updateAttachmentMarkedForDeletionStateAttachmentIsInUse:(BOOL)use;
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

- (void)attachmentWillRefresh:(BOOL)refresh
{
  if (![(ICAttachmentModel *)self isMergeableDataDirty])
  {
    attachmentIdentifiersOrderedSetDocument = self->_attachmentIdentifiersOrderedSetDocument;
    self->_attachmentIdentifiersOrderedSetDocument = 0;
  }
}

- (void)attachmentDidRefresh:(BOOL)refresh
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
  firstSubAttachment = [(ICAttachmentGalleryModel *)self firstSubAttachment];
  attachment = [(ICAttachmentModel *)self attachment];
  if ([attachment markedForDeletion])
  {
    v5 = 0;
  }

  else
  {
    media = [firstSubAttachment media];
    mediaURL = [media mediaURL];
    v5 = mediaURL != 0;
  }

  return v5;
}

- (id)firstSubAttachment
{
  subAttachmentCount = [(ICAttachmentGalleryModel *)self subAttachmentCount];
  if (subAttachmentCount)
  {
    subAttachmentCount = [(ICAttachmentGalleryModel *)self singleSubAttachmentAtIndex:0];
  }

  return subAttachmentCount;
}

- (BOOL)attachmentHasMergeableData
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  attachment = [(ICAttachmentModel *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__ICAttachmentGalleryModel_attachmentHasMergeableData__block_invoke;
  v6[3] = &unk_278194DE8;
  v6[4] = self;
  v6[5] = &v7;
  [managedObjectContext performBlockAndWait:v6];

  LOBYTE(attachment) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return attachment;
}

void __54__ICAttachmentGalleryModel_attachmentHasMergeableData__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) attachment];
  v2 = [v3 mergeableData];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

- (id)titleForSubAttachment:(id)attachment
{
  attachmentCopy = attachment;
  parentAttachment = [attachmentCopy parentAttachment];
  attachment = [(ICAttachmentModel *)self attachment];

  if (parentAttachment == attachment && (-[ICAttachmentGalleryModel attachmentIdentifiersOrderedSet](self, "attachmentIdentifiersOrderedSet"), v7 = objc_claimAutoreleasedReturnValue(), [attachmentCopy identifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "indexOfObject:", v8), v8, v7, v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = __ICLocalizedFrameworkString_impl(@"%@ %ld", @"%@ %ld", 0, 1);
    v13 = MEMORY[0x277CCACA8];
    attachment2 = [(ICAttachmentModel *)self attachment];
    title = [attachment2 title];
    v10 = [v13 localizedStringWithFormat:v12, title, v9 + 1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  attachment = [(ICAttachmentModel *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__ICAttachmentGalleryModel_shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier___block_invoke;
  v10[3] = &unk_278194D68;
  v10[4] = self;
  v10[5] = &v11;
  [managedObjectContext performBlockAndWait:v10];

  v7 = v12[5];
  if (v7)
  {
    v8 = [v7 isEqualToString:identifierCopy];
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

- (void)addSubAttachment:(id)attachment
{
  attachmentCopy = attachment;
  attachmentIdentifiersOrderedSet = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
  v5 = [attachmentIdentifiersOrderedSet count];

  [(ICAttachmentGalleryModel *)self insertSubAttachment:attachmentCopy atIndex:v5];
}

- (void)insertSubAttachment:(id)attachment atIndex:(unint64_t)index
{
  attachmentCopy = attachment;
  attachment = [(ICAttachmentModel *)self attachment];
  [attachment addSubAttachmentsObject:attachmentCopy];

  attachment2 = [(ICAttachmentModel *)self attachment];
  [attachmentCopy setParentAttachment:attachment2];

  [attachmentCopy updateChangeCountWithReason:@"Inserted subattachment"];
  attachmentIdentifiersOrderedSet = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
  identifier = [attachmentCopy identifier];

  [attachmentIdentifiersOrderedSet insertObject:identifier atIndex:index];

  [(ICAttachmentModel *)self setMergeableDataDirty:1];
}

- (void)removeSubAttachment:(id)attachment
{
  attachmentCopy = attachment;
  attachment = [(ICAttachmentModel *)self attachment];
  [attachment removeSubAttachmentsObject:attachmentCopy];

  attachmentIdentifiersOrderedSet = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
  identifier = [attachmentCopy identifier];

  [attachmentIdentifiersOrderedSet removeObject:identifier];

  [(ICAttachmentModel *)self setMergeableDataDirty:1];
}

- (void)enumerateSubAttachmentsWithBlock:(id)block
{
  v44 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  attachment = [(ICAttachmentModel *)self attachment];
  subAttachments = [attachment subAttachments];

  v7 = objc_alloc(MEMORY[0x277CCAB00]);
  selfCopy = self;
  attachment2 = [(ICAttachmentModel *)self attachment];
  subAttachments2 = [attachment2 subAttachments];
  v10 = [v7 initWithKeyOptions:0x10000 valueOptions:5 capacity:{objc_msgSend(subAttachments2, "count")}];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = subAttachments;
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
        identifier = [v16 identifier];
        [v10 setObject:v16 forKey:identifier];
      }

      v13 = [v11 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v13);
  }

  subAttachmentIdentifiers = [(ICAttachmentGalleryModel *)selfCopy subAttachmentIdentifiers];
  v32 = 0;
  if ([subAttachmentIdentifiers count])
  {
    v20 = 0;
    *&v19 = 138412546;
    v30 = v19;
    do
    {
      v21 = [subAttachmentIdentifiers objectAtIndex:{v20, v30}];
      if (!v21)
      {
        goto LABEL_21;
      }

      v22 = [v10 objectForKey:v21];
      if (v22)
      {
        v23 = v22;
        parentAttachment = [v22 parentAttachment];
        attachment3 = [(ICAttachmentModel *)selfCopy attachment];

        if (parentAttachment == attachment3)
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
          attachment4 = [(ICAttachmentModel *)selfCopy attachment];
          identifier2 = [attachment4 identifier];
          *buf = v30;
          v40 = v21;
          v41 = 2112;
          v42 = identifier2;
          _os_log_error_impl(&dword_214D51000, v26, OS_LOG_TYPE_ERROR, "Attachment not found: %@, when enumerating: %@", buf, 0x16u);
        }

        v23 = v26;
      }

      v23 = 0;
LABEL_20:
      blockCopy[2](blockCopy, v23, v21, v20, &v32);
      v27 = v32;

      if (v27)
      {

        break;
      }

LABEL_21:

      ++v20;
    }

    while (v20 < [subAttachmentIdentifiers count]);
  }
}

- (unint64_t)indexOfSubAttachmentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  subAttachmentIdentifiers = [(ICAttachmentGalleryModel *)self subAttachmentIdentifiers];
  v6 = [subAttachmentIdentifiers indexOfObject:identifierCopy];

  return v6;
}

- (unint64_t)subAttachmentCount
{
  if (![(ICAttachmentGalleryModel *)self attachmentHasMergeableData])
  {
    return 0;
  }

  attachmentIdentifiersOrderedSet = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
  v4 = [attachmentIdentifiersOrderedSet count];

  return v4;
}

- (NSArray)subAttachmentIdentifiers
{
  if ([(ICAttachmentGalleryModel *)self attachmentHasMergeableData])
  {
    attachmentIdentifiersOrderedSet = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
    allObjects = [attachmentIdentifiersOrderedSet allObjects];
  }

  else
  {
    allObjects = MEMORY[0x277CBEBF8];
  }

  return allObjects;
}

- (id)subAttachmentIdentifierAtIndex:(unint64_t)index
{
  attachmentIdentifiersOrderedSet = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
  v5 = [attachmentIdentifiersOrderedSet objectAtIndex:index];

  return v5;
}

- (id)singleSubAttachmentAtIndex:(unint64_t)index
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [(ICAttachmentGalleryModel *)self subAttachmentIdentifierAtIndex:?];
  if (!v5)
  {
    v19 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(ICAttachmentGalleryModel *)self singleSubAttachmentAtIndex:index, v19];
    }

LABEL_21:

    v15 = 0;
    goto LABEL_22;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  attachment = [(ICAttachmentModel *)self attachment];
  subAttachments = [attachment subAttachments];

  v8 = [subAttachments countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (!v8)
  {
LABEL_10:
    v15 = subAttachments;
LABEL_16:

LABEL_17:
    v19 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      attachment2 = [(ICAttachmentModel *)self attachment];
      identifier = [attachment2 identifier];
      *buf = 138412802;
      v28 = v5;
      v29 = 2112;
      v30 = identifier;
      v31 = 2048;
      indexCopy = index;
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
      objc_enumerationMutation(subAttachments);
    }

    v12 = *(*(&v23 + 1) + 8 * v11);
    identifier2 = [v12 identifier];
    v14 = [identifier2 isEqualToString:v5];

    if (v14)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [subAttachments countByEnumeratingWithState:&v23 objects:v33 count:16];
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

  parentAttachment = [v15 parentAttachment];
  attachment3 = [(ICAttachmentModel *)self attachment];

  if (parentAttachment != attachment3)
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
    attachment = [(ICAttachmentModel *)self attachment];
    managedObjectContext = [attachment managedObjectContext];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__ICAttachmentGalleryModel_attachmentIdentifiersOrderedSetDocument__block_invoke;
    v10[3] = &unk_2781950A8;
    v10[4] = self;
    v10[5] = &v17;
    v10[6] = &v11;
    [managedObjectContext performBlockAndWait:v10];

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
  attachmentIdentifiersOrderedSetDocument = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSetDocument];
  orderedSet = [attachmentIdentifiersOrderedSetDocument orderedSet];
  v5 = ICCheckedDynamicCast();

  return v5;
}

- (BOOL)mergeWithMergeableData:(id)data mergeableFieldState:(id)state
{
  if (!data)
  {
    return 0;
  }

  dataCopy = data;
  v6 = os_log_create("com.apple.notes", "Topotext");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ICAttachmentGalleryModel mergeWithMergeableData:v6 mergeableFieldState:?];
  }

  v7 = [ICTTOrderedSetVersionedDocument alloc];
  currentReplicaID = [(ICAttachmentModel *)self currentReplicaID];
  v9 = [(ICTTVersionedDocument *)v7 initWithData:dataCopy replicaID:currentReplicaID];

  attachmentIdentifiersOrderedSetDocument = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSetDocument];
  v11 = [attachmentIdentifiersOrderedSetDocument mergeWithOrderedSetVersionedDocument:v9];

  v12 = v11 == 2;
  if (v11 == 2)
  {
    attachment = [(ICAttachmentModel *)self attachment];
    previewUpdateDate = [attachment previewUpdateDate];
    attachment2 = [(ICAttachmentModel *)self attachment];
    modificationDate = [attachment2 modificationDate];
    v17 = [previewUpdateDate compare:modificationDate];

    if (v17 != -1)
    {
      attachment3 = [(ICAttachmentModel *)self attachment];
      [attachment3 setPreviewUpdateDate:0];
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

  attachmentIdentifiersOrderedSetDocument = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSetDocument];
  serialize = [attachmentIdentifiersOrderedSetDocument serialize];
  attachment = [(ICAttachmentModel *)self attachment];
  [attachment setMergeableData:serialize];
}

- (void)updateAfterLoadWithSubAttachmentIdentifierMap:(id)map
{
  v29 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  attachmentIdentifiersOrderedSet = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
  allObjects = [attachmentIdentifiersOrderedSet allObjects];

  attachmentIdentifiersOrderedSet2 = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
  [attachmentIdentifiersOrderedSet2 removeAllObjects];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = allObjects;
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
        v14 = [mapCopy objectForKeyedSubscript:{v13, v18}];
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
          attachmentIdentifiersOrderedSet3 = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
          [attachmentIdentifiersOrderedSet3 addObject:v14];
        }

        else
        {
          attachmentIdentifiersOrderedSet3 = os_log_create("com.apple.notes", "CoreData");
          if (os_log_type_enabled(attachmentIdentifiersOrderedSet3, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v25 = v13;
            _os_log_error_impl(&dword_214D51000, attachmentIdentifiersOrderedSet3, OS_LOG_TYPE_ERROR, "Unable to map from %@ to new identifier", buf, 0xCu);
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
    attachment = [(ICAttachmentModel *)self attachment];
    [attachment saveMergeableDataIfNeeded];
  }
}

- (void)updateAttachmentMarkedForDeletionStateAttachmentIsInUse:(BOOL)use
{
  v40 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = ICAttachmentGalleryModel;
  [(ICAttachmentModel *)&v34 updateAttachmentMarkedForDeletionStateAttachmentIsInUse:use];
  attachment = [(ICAttachmentModel *)self attachment];
  if (([attachment needsInitialFetchFromCloud] & 1) == 0)
  {
    attachment2 = [(ICAttachmentModel *)self attachment];
    hasChanges = [attachment2 hasChanges];

    if (hasChanges)
    {
      return;
    }

    attachment3 = [(ICAttachmentModel *)self attachment];
    markedForDeletion = [attachment3 markedForDeletion];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    selfCopy = self;
    attachment4 = [(ICAttachmentModel *)self attachment];
    attachment = [attachment4 subAttachments];

    v10 = [attachment countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v31;
      *&v11 = 138412546;
      v28 = v11;
      selfCopy2 = self;
      do
      {
        v15 = 0;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(attachment);
          }

          v16 = *(*(&v30 + 1) + 8 * v15);
          if ((markedForDeletion & 1) != 0 || (-[ICAttachmentGalleryModel attachmentIdentifiersOrderedSet](selfCopy2, "attachmentIdentifiersOrderedSet"), v17 = objc_claimAutoreleasedReturnValue(), [v16 identifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "containsObject:", v18), v18, v17, (v19 & 1) == 0))
          {
            if (([v16 markedForDeletion] & 1) == 0)
            {
              v21 = os_log_create("com.apple.notes", "CoreData");
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                identifier = [v16 identifier];
                attachment5 = [(ICAttachmentModel *)selfCopy2 attachment];
                identifier2 = [attachment5 identifier];
                *buf = v28;
                v36 = identifier;
                v37 = 2112;
                v38 = identifier2;
                _os_log_debug_impl(&dword_214D51000, v21, OS_LOG_TYPE_DEBUG, "Gallery model deleting subattachment %@ %@", buf, 0x16u);

                selfCopy2 = selfCopy;
              }

              [ICAttachment deleteAttachment:v16];
            }
          }

          else if ([v16 markedForDeletion])
          {
            v20 = os_log_create("com.apple.notes", "CoreData");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              identifier3 = [v16 identifier];
              attachment6 = [(ICAttachmentModel *)selfCopy attachment];
              identifier4 = [attachment6 identifier];
              *buf = v28;
              v36 = identifier3;
              v37 = 2112;
              v38 = identifier4;
              _os_log_debug_impl(&dword_214D51000, v20, OS_LOG_TYPE_DEBUG, "Gallery model un-deleting subattachment %@ %@", buf, 0x16u);

              selfCopy2 = selfCopy;
            }

            [ICAttachment undeleteAttachment:v16];
          }

          ++v15;
        }

        while (v12 != v15);
        v12 = [attachment countByEnumeratingWithState:&v30 objects:v39 count:16];
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
  attachment = [(ICAttachmentModel *)self attachment];
  subAttachments = [attachment subAttachments];

  v5 = [subAttachments countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(subAttachments);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        attachmentIdentifiersOrderedSet = [(ICAttachmentGalleryModel *)self attachmentIdentifiersOrderedSet];
        identifier = [v9 identifier];
        v12 = [attachmentIdentifiersOrderedSet containsObject:identifier];

        if (v12)
        {
          [ICAttachment undeleteAttachment:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [subAttachments countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (BOOL)providesStandaloneTitleForNote
{
  attachment = [(ICAttachmentModel *)self attachment];
  title = [attachment title];

  if (title)
  {
    attachment2 = [(ICAttachmentModel *)self attachment];
    defaultTitle = [attachment2 defaultTitle];
    v7 = [title isEqualToString:defaultTitle] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)standaloneTitleForNote
{
  attachment = [(ICAttachmentModel *)self attachment];
  title = [attachment title];

  return title;
}

- (id)searchableTextContent
{
  searchableStringArray = [(ICAttachmentGalleryModel *)self searchableStringArray];
  v3 = [searchableStringArray componentsJoinedByString:@" "];

  return v3;
}

- (id)searchableStringArray
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__ICAttachmentGalleryModel_searchableStringArray__block_invoke;
  v6[3] = &unk_2781950D0;
  v4 = array;
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
  previewImageOrientation = [(ICAttachmentModel *)&v7 previewImageOrientation];
  if ([(ICAttachmentGalleryModel *)self subAttachmentCount])
  {
    firstSubAttachment = [(ICAttachmentGalleryModel *)self firstSubAttachment];
    attachmentModel = [firstSubAttachment attachmentModel];
    previewImageOrientation = [attachmentModel previewImageOrientation];
  }

  return previewImageOrientation;
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