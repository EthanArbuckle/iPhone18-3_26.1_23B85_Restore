@interface ICDocCamScannedDocumentEditor
- (BOOL)moveObjectWithIdentifier:(id)identifier toIndex:(unint64_t)index;
- (BOOL)setOrientation:(int64_t)orientation forAttachment:(id)attachment;
- (BOOL)updateTitle:(id)title forSubAttachment:(id)attachment;
- (ICAttachmentGalleryModel)galleryModel;
- (ICDocCamScannedDocumentEditor)initWithGalleryAttachment:(id)attachment;
- (id)subAttachmentWithIdentifier:(id)identifier;
- (unint64_t)indexForAttachmentWithIdentifier:(id)identifier;
- (void)applyFilter:(signed __int16)filter forAttachmentAtIndex:(unint64_t)index;
- (void)applyFilter:(signed __int16)filter forAttachmentWithIdentifier:(id)identifier;
- (void)deletePagesAtIndexes:(id)indexes;
- (void)movePageFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)saveAndUpdatePreview:(BOOL)preview;
- (void)setMarkupData:(id)data forAttachmentWithIdentifier:(id)identifier;
- (void)setOrientation:(int64_t)orientation forAttachmentAtIndex:(unint64_t)index;
- (void)setQuad:(id)quad forAttachment:(id)attachment;
- (void)setQuad:(id)quad forAttachmentWithIdentifier:(id)identifier;
- (void)undeleteSubAttachment:(id)attachment;
- (void)undoablyDeleteSubAttachments:(id)attachments actionName:(id)name;
- (void)undoablyMoveAttachmentWithIdentifier:(id)identifier toIndex:(unint64_t)index;
- (void)undoablySetOrientation:(int64_t)orientation forAttachmentIdentifier:(id)identifier;
- (void)undoablySetQuad:(id)quad forAttachment:(id)attachment;
- (void)undoablyUndeleteSubAttachments:(id)attachments actionName:(id)name;
- (void)undoablyUpdateTitle:(id)title forAttachmentWithIdentifier:(id)identifier isUserDefined:(BOOL)defined;
- (void)updateDocumentTitle:(id)title isUserDefined:(BOOL)defined;
@end

@implementation ICDocCamScannedDocumentEditor

- (ICDocCamScannedDocumentEditor)initWithGalleryAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v9.receiver = self;
  v9.super_class = ICDocCamScannedDocumentEditor;
  v5 = [(ICDocCamScannedDocumentEditor *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(ICDocCamScannedDocumentEditor *)v5 setGalleryAttachment:attachmentCopy];
    v7 = objc_alloc_init(MEMORY[0x277CCAD90]);
    [(ICDocCamScannedDocumentEditor *)v6 setUndoManager:v7];
  }

  return v6;
}

- (ICAttachmentGalleryModel)galleryModel
{
  objc_opt_class();
  galleryAttachment = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  attachmentModel = [galleryAttachment attachmentModel];
  v5 = ICCheckedDynamicCast();

  return v5;
}

- (void)undeleteSubAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if ([attachmentCopy markedForDeletion])
  {
    [MEMORY[0x277D35E00] undeleteAttachment:attachmentCopy];
    [attachmentCopy ic_postNotificationOnMainThreadWithName:*MEMORY[0x277D35BB8]];
  }
}

- (void)saveAndUpdatePreview:(BOOL)preview
{
  previewCopy = preview;
  galleryAttachment = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  mEMORY[0x277D366B0] = galleryAttachment;
  if (previewCopy)
  {
    [galleryAttachment setPreviewUpdateDate:0];

    galleryAttachment2 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [galleryAttachment2 setCachedImage:0];

    galleryAttachment3 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [galleryAttachment3 invalidateAttachmentPreviewImages];

    galleryAttachment4 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    managedObjectContext = [galleryAttachment4 managedObjectContext];
    [managedObjectContext ic_save];

    mEMORY[0x277D366B0] = [MEMORY[0x277D366B0] sharedGenerator];
    galleryAttachment5 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [mEMORY[0x277D366B0] generatePreviewIfNeededForAttachment:galleryAttachment5];
  }

  else
  {
    galleryAttachment5 = [galleryAttachment managedObjectContext];
    [galleryAttachment5 ic_save];
  }
}

- (void)updateDocumentTitle:(id)title isUserDefined:(BOOL)defined
{
  definedCopy = defined;
  titleCopy = title;
  galleryAttachment = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  identifier = [galleryAttachment identifier];
  [(ICDocCamScannedDocumentEditor *)self undoablyUpdateTitle:titleCopy forAttachmentWithIdentifier:identifier isUserDefined:definedCopy];
}

- (BOOL)updateTitle:(id)title forSubAttachment:(id)attachment
{
  titleCopy = title;
  attachmentCopy = attachment;
  identifier = [attachmentCopy identifier];
  v9 = [(ICDocCamScannedDocumentEditor *)self indexForAttachmentWithIdentifier:identifier];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    identifier2 = [attachmentCopy identifier];
    [(ICDocCamScannedDocumentEditor *)self undoablyUpdateTitle:titleCopy forAttachmentWithIdentifier:identifier2 isUserDefined:0];
  }

  return v9 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)undoablyUpdateTitle:(id)title forAttachmentWithIdentifier:(id)identifier isUserDefined:(BOOL)defined
{
  definedCopy = defined;
  titleCopy = title;
  v8 = MEMORY[0x277D35E00];
  identifierCopy = identifier;
  galleryAttachment = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  managedObjectContext = [galleryAttachment managedObjectContext];
  v12 = [v8 attachmentWithIdentifier:identifierCopy includeDeleted:0 context:managedObjectContext];

  identifier = [v12 identifier];
  galleryAttachment2 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  identifier2 = [galleryAttachment2 identifier];
  v16 = [identifier isEqualToString:identifier2];

  title = [v12 title];
  [v12 setTitle:titleCopy];
  if (definedCopy)
  {
    [v12 setUserTitle:titleCopy];
  }

  note = [v12 note];
  v19 = [note regenerateTitle:1 snippet:0];

  if (v19)
  {
    note2 = [v12 note];
    [note2 markShareDirtyIfNeededWithReason:@"Updated doc scan user title"];

    note3 = [v12 note];
    [note3 updateChangeCountWithReason:@"Updated doc scan user title"];
  }

  [v12 updateChangeCountWithReason:@"Updated doc scan user title"];
  note4 = [v12 note];
  [note4 updateModificationDateAndChangeCount];

  if (v16)
  {
    v23 = @"Change Document Name";
  }

  else
  {
    galleryAttachment3 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [galleryAttachment3 updateChangeCountWithReason:@"Updated doc scan user title"];

    galleryAttachment4 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [galleryAttachment4 attachmentDidChange];

    v23 = @"Change Image Name";
  }

  managedObjectContext2 = [v12 managedObjectContext];
  [managedObjectContext2 ic_save];

  undoManager = [(ICDocCamScannedDocumentEditor *)self undoManager];
  v28 = [undoManager prepareWithInvocationTarget:self];
  identifier3 = [v12 identifier];
  [v28 undoablyUpdateTitle:title forAttachmentWithIdentifier:identifier3 isUserDefined:definedCopy];

  undoManager2 = [(ICDocCamScannedDocumentEditor *)self undoManager];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v32 = [mainBundle localizedStringForKey:v23 value:&stru_282757698 table:0];
  [undoManager2 setActionName:v32];
}

- (BOOL)moveObjectWithIdentifier:(id)identifier toIndex:(unint64_t)index
{
  identifierCopy = identifier;
  galleryModel = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  attachmentIdentifiersOrderedSet = [galleryModel attachmentIdentifiersOrderedSet];
  v9 = [attachmentIdentifiersOrderedSet indexOfObject:identifierCopy];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICDocCamScannedDocumentEditor *)self movePageFromIndex:v9 toIndex:index];
  }

  return v9 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)movePageFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  galleryModel = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  attachmentIdentifiersOrderedSet = [galleryModel attachmentIdentifiersOrderedSet];
  v10 = [attachmentIdentifiersOrderedSet objectAtIndex:index];

  [(ICDocCamScannedDocumentEditor *)self undoablyMoveAttachmentWithIdentifier:v10 toIndex:toIndex];
  galleryAttachment = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  [galleryAttachment regenerateTitle];
}

- (void)undoablyMoveAttachmentWithIdentifier:(id)identifier toIndex:(unint64_t)index
{
  identifierCopy = identifier;
  galleryModel = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  v7 = [galleryModel subAttachmentCount] - 1;

  if (v7 >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v7;
  }

  galleryModel2 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  attachmentIdentifiersOrderedSet = [galleryModel2 attachmentIdentifiersOrderedSet];
  v11 = [attachmentIdentifiersOrderedSet indexOfObject:identifierCopy];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11 != indexCopy)
  {
    galleryModel3 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
    attachmentIdentifiersOrderedSet2 = [galleryModel3 attachmentIdentifiersOrderedSet];
    [attachmentIdentifiersOrderedSet2 moveObject:identifierCopy toIndex:indexCopy];

    galleryModel4 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
    [galleryModel4 setMergeableDataDirty:1];

    galleryAttachment = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [galleryAttachment saveMergeableDataIfNeeded];

    galleryAttachment2 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [galleryAttachment2 updateChangeCountWithReason:@"Moved gallery page"];

    galleryAttachment3 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [galleryAttachment3 attachmentDidChange];

    galleryAttachment4 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    managedObjectContext = [galleryAttachment4 managedObjectContext];
    [managedObjectContext ic_saveWithLogDescription:@"Moved gallery page"];

    galleryAttachment5 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    attachmentModel = [galleryAttachment5 attachmentModel];
    v22 = [attachmentModel shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:identifierCopy];
    if (v11)
    {
      v23 = v22;
    }

    else
    {
      v23 = 1;
    }

    if (indexCopy)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1;
    }

    [(ICDocCamScannedDocumentEditor *)self saveAndUpdatePreview:v24];
    undoManager = [(ICDocCamScannedDocumentEditor *)self undoManager];
    v26 = [undoManager prepareWithInvocationTarget:self];
    [v26 undoablyMoveAttachmentWithIdentifier:identifierCopy toIndex:v11];

    undoManager2 = [(ICDocCamScannedDocumentEditor *)self undoManager];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v29 = [mainBundle localizedStringForKey:@"Move Scan" value:&stru_282757698 table:0];
    [undoManager2 setActionName:v29];

    galleryAttachment6 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    objectID = [galleryAttachment6 objectID];

    if (objectID)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:*MEMORY[0x277D35BB8] object:objectID];
    }
  }
}

- (void)undoablyUndeleteSubAttachments:(id)attachments actionName:(id)name
{
  v46 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  nameCopy = name;
  v38 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(attachmentsCopy, "count")}];
  allKeys = [attachmentsCopy allKeys];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __75__ICDocCamScannedDocumentEditor_undoablyUndeleteSubAttachments_actionName___block_invoke;
  v43[3] = &unk_2781ABBB8;
  v37 = attachmentsCopy;
  v44 = v37;
  v8 = [allKeys sortedArrayUsingComparator:v43];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v40;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        v15 = MEMORY[0x277D35E00];
        galleryAttachment = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
        managedObjectContext = [galleryAttachment managedObjectContext];
        v18 = [v15 attachmentWithIdentifier:v14 includeDeleted:1 context:managedObjectContext];

        if (v18)
        {
          [(ICDocCamScannedDocumentEditor *)self undeleteSubAttachment:v18];
          v19 = [v37 objectForKeyedSubscript:v14];
          unsignedIntegerValue = [v19 unsignedIntegerValue];

          galleryModel = [(ICDocCamScannedDocumentEditor *)self galleryModel];
          subAttachmentCount = [galleryModel subAttachmentCount];

          if (unsignedIntegerValue >= subAttachmentCount)
          {
            v23 = subAttachmentCount;
          }

          else
          {
            v23 = unsignedIntegerValue;
          }

          galleryModel2 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
          [galleryModel2 insertSubAttachment:v18 atIndex:v23];

          if (v11)
          {
            v11 = 1;
          }

          else
          {
            galleryModel3 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
            v26 = [galleryModel3 shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:v14];
            if (v23)
            {
              v11 = v26;
            }

            else
            {
              v11 = 1;
            }
          }

          [v38 addObject:v14];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  galleryAttachment2 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  [galleryAttachment2 saveMergeableDataIfNeeded];

  galleryAttachment3 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  [galleryAttachment3 updateChangeCountWithReason:@"Undeleted gallery page"];

  galleryAttachment4 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  managedObjectContext2 = [galleryAttachment4 managedObjectContext];
  [managedObjectContext2 ic_saveWithLogDescription:@"Undeleted gallery page"];

  [(ICDocCamScannedDocumentEditor *)self saveAndUpdatePreview:v11 & 1];
  if ([v38 count])
  {
    undoManager = [(ICDocCamScannedDocumentEditor *)self undoManager];
    v32 = [undoManager prepareWithInvocationTarget:self];
    [v32 undoablyDeleteSubAttachments:v38 actionName:nameCopy];

    if (nameCopy)
    {
      undoManager2 = [(ICDocCamScannedDocumentEditor *)self undoManager];
      [undoManager2 setActionName:nameCopy];
    }
  }

  galleryAttachment5 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  [galleryAttachment5 regenerateTitle];
}

uint64_t __75__ICDocCamScannedDocumentEditor_undoablyUndeleteSubAttachments_actionName___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (void)undoablyDeleteSubAttachments:(id)attachments actionName:(id)name
{
  v64 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  nameCopy = name;
  selfCopy = self;
  galleryModel = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  attachmentIdentifiersOrderedSet = [galleryModel attachmentIdentifiersOrderedSet];

  v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(attachmentsCopy, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = attachmentsCopy;
  v10 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v59;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v59 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v58 + 1) + 8 * i);
        v15 = [attachmentIdentifiersOrderedSet indexOfObject:v14];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
          [v9 setObject:v16 forKeyedSubscript:v14];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v11);
  }

  v46 = attachmentIdentifiersOrderedSet;

  allKeys = [v9 allKeys];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __73__ICDocCamScannedDocumentEditor_undoablyDeleteSubAttachments_actionName___block_invoke;
  v56[3] = &unk_2781ABBB8;
  v50 = v9;
  v57 = v50;
  v18 = [allKeys sortedArrayUsingComparator:v56];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v45 = v18;
  reverseObjectEnumerator = [v18 reverseObjectEnumerator];
  v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v53;
    v23 = selfCopy;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v53 != v22)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v25 = *(*(&v52 + 1) + 8 * j);
        v26 = MEMORY[0x277D35E00];
        galleryAttachment = [(ICDocCamScannedDocumentEditor *)v23 galleryAttachment];
        managedObjectContext = [galleryAttachment managedObjectContext];
        v29 = [v26 attachmentWithIdentifier:v25 context:managedObjectContext];

        v30 = [v50 objectForKeyedSubscript:v25];
        unsignedIntegerValue = [v30 unsignedIntegerValue];

        if (v29)
        {
          v32 = unsignedIntegerValue == 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {
          v23 = selfCopy;
        }

        else
        {
          if (v21)
          {
            v21 = 1;
            v23 = selfCopy;
          }

          else
          {
            v23 = selfCopy;
            galleryModel2 = [(ICDocCamScannedDocumentEditor *)selfCopy galleryModel];
            v34 = [galleryModel2 shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:v25];
            if (unsignedIntegerValue)
            {
              v21 = v34;
            }

            else
            {
              v21 = 1;
            }
          }

          galleryModel3 = [(ICDocCamScannedDocumentEditor *)v23 galleryModel];
          [galleryModel3 removeSubAttachment:v29];

          if (([v29 markedForDeletion] & 1) == 0)
          {
            [MEMORY[0x277D35E00] deleteAttachment:v29];
          }
        }
      }

      v20 = [reverseObjectEnumerator countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v20);
  }

  else
  {
    v21 = 0;
    v23 = selfCopy;
  }

  galleryAttachment2 = [(ICDocCamScannedDocumentEditor *)v23 galleryAttachment];
  [galleryAttachment2 saveMergeableDataIfNeeded];

  galleryAttachment3 = [(ICDocCamScannedDocumentEditor *)v23 galleryAttachment];
  [galleryAttachment3 updateChangeCountWithReason:@"Deleted gallery page"];

  galleryAttachment4 = [(ICDocCamScannedDocumentEditor *)v23 galleryAttachment];
  [galleryAttachment4 attachmentDidChange];

  galleryAttachment5 = [(ICDocCamScannedDocumentEditor *)v23 galleryAttachment];
  managedObjectContext2 = [galleryAttachment5 managedObjectContext];
  [managedObjectContext2 ic_saveWithLogDescription:@"Deleted gallery page"];

  [(ICDocCamScannedDocumentEditor *)selfCopy saveAndUpdatePreview:v21 & 1];
  if ([v50 count])
  {
    undoManager = [(ICDocCamScannedDocumentEditor *)selfCopy undoManager];
    v42 = [undoManager prepareWithInvocationTarget:selfCopy];
    [v42 undoablyUndeleteSubAttachments:v50 actionName:nameCopy];

    if (nameCopy)
    {
      undoManager2 = [(ICDocCamScannedDocumentEditor *)selfCopy undoManager];
      [undoManager2 setActionName:nameCopy];
    }
  }

  galleryAttachment6 = [(ICDocCamScannedDocumentEditor *)selfCopy galleryAttachment];
  [galleryAttachment6 regenerateTitle];
}

uint64_t __73__ICDocCamScannedDocumentEditor_undoablyDeleteSubAttachments_actionName___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (void)deletePagesAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v5 = MEMORY[0x277CBEB18];
  galleryModel = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  v17 = [v5 arrayWithCapacity:{objc_msgSend(galleryModel, "subAttachmentCount")}];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__ICDocCamScannedDocumentEditor_deletePagesAtIndexes___block_invoke;
  v11[3] = &unk_2781ABBE0;
  v11[4] = self;
  v11[5] = &v12;
  [indexesCopy enumerateIndexesUsingBlock:v11];
  if ([v13[5] count])
  {
    v7 = MEMORY[0x277CCACA8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [mainBundle localizedStringForKey:@"DELETE_%lu_SCANNED_IMAGES" value:&stru_282757698 table:0];
    v10 = [v7 localizedStringWithFormat:v9, objc_msgSend(v13[5], "count")];

    [(ICDocCamScannedDocumentEditor *)self undoablyDeleteSubAttachments:v13[5] actionName:v10];
  }

  _Block_object_dispose(&v12, 8);
}

void __54__ICDocCamScannedDocumentEditor_deletePagesAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) galleryModel];
  v6 = [v4 subAttachmentIdentifierAtIndex:a2];

  v5 = v6;
  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
    v5 = v6;
  }
}

- (BOOL)setOrientation:(int64_t)orientation forAttachment:(id)attachment
{
  identifier = [attachment identifier];
  v7 = [(ICDocCamScannedDocumentEditor *)self indexForAttachmentWithIdentifier:identifier];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICDocCamScannedDocumentEditor *)self setOrientation:orientation forAttachmentAtIndex:v7];
  }

  return v7 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setOrientation:(int64_t)orientation forAttachmentAtIndex:(unint64_t)index
{
  galleryModel = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  v10 = [galleryModel singleSubAttachmentAtIndex:index];

  v8 = v10;
  if (v10)
  {
    identifier = [v10 identifier];
    [(ICDocCamScannedDocumentEditor *)self undoablySetOrientation:orientation forAttachmentIdentifier:identifier];

    v8 = v10;
  }
}

- (void)undoablySetOrientation:(int64_t)orientation forAttachmentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = MEMORY[0x277D35E00];
  galleryAttachment = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  managedObjectContext = [galleryAttachment managedObjectContext];
  v9 = [v6 attachmentWithIdentifier:identifierCopy context:managedObjectContext];

  orientation = [v9 orientation];
  v11 = orientation;
  if (v9)
  {
    v12 = orientation == orientation;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    [v9 setOrientation:orientation];
    attachmentModel = [v9 attachmentModel];
    [attachmentModel updateAttachmentSize];

    [v9 setOcrSummary:0];
    [v9 updateChangeCountWithReason:@"Changed doc scan page orientation"];
    [v9 setPreviewUpdateDate:0];
    galleryAttachment2 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    attachmentModel2 = [galleryAttachment2 attachmentModel];
    v16 = [attachmentModel2 shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:identifierCopy];

    if (v16)
    {
      galleryAttachment3 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
      [galleryAttachment3 setPreviewUpdateDate:0];

      galleryAttachment4 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
      [galleryAttachment4 setCachedImage:0];

      galleryAttachment5 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
      [galleryAttachment5 invalidateAttachmentPreviewImages];
    }

    galleryAttachment6 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [galleryAttachment6 attachmentDidChange];

    managedObjectContext2 = [v9 managedObjectContext];
    [managedObjectContext2 ic_save];

    mEMORY[0x277D366B0] = [MEMORY[0x277D366B0] sharedGenerator];
    [mEMORY[0x277D366B0] postProcessIfNeededForAttachment:v9];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v24 = *MEMORY[0x277D35BB8];
    objectID = [v9 objectID];
    [defaultCenter postNotificationName:v24 object:objectID];

    if (v16)
    {
      mEMORY[0x277D366B0]2 = [MEMORY[0x277D366B0] sharedGenerator];
      galleryAttachment7 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
      [mEMORY[0x277D366B0]2 generatePreviewIfNeededForAttachment:galleryAttachment7];
    }

    undoManager = [(ICDocCamScannedDocumentEditor *)self undoManager];
    v29 = [undoManager prepareWithInvocationTarget:self];
    [v29 undoablySetOrientation:v11 forAttachmentIdentifier:identifierCopy];

    undoManager2 = [(ICDocCamScannedDocumentEditor *)self undoManager];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v32 = [mainBundle localizedStringForKey:@"Rotate Scan" value:&stru_282757698 table:0];
    [undoManager2 setActionName:v32];
  }
}

- (void)applyFilter:(signed __int16)filter forAttachmentWithIdentifier:(id)identifier
{
  filterCopy = filter;
  identifierCopy = identifier;
  v6 = MEMORY[0x277D35E00];
  galleryAttachment = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  managedObjectContext = [galleryAttachment managedObjectContext];
  v9 = [v6 attachmentWithIdentifier:identifierCopy context:managedObjectContext];

  imageFilterType = [v9 imageFilterType];
  if (v9)
  {
    v11 = imageFilterType == filterCopy;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = imageFilterType;
    mEMORY[0x277D366B0] = [MEMORY[0x277D366B0] sharedGenerator];
    [mEMORY[0x277D366B0] cancelIfNeededForAttachment:v9];

    [v9 setImageFilterType:filterCopy];
    [v9 setOcrSummary:0];
    [v9 updateChangeCountWithReason:@"Applied doc scan page filter"];
    [v9 setPreviewUpdateDate:0];
    galleryAttachment2 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    attachmentModel = [galleryAttachment2 attachmentModel];
    v16 = [attachmentModel shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:identifierCopy];

    if (v16)
    {
      galleryAttachment3 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
      [galleryAttachment3 setPreviewUpdateDate:0];

      galleryAttachment4 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
      [galleryAttachment4 setCachedImage:0];

      galleryAttachment5 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
      [galleryAttachment5 invalidateAttachmentPreviewImages];
    }

    galleryAttachment6 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [galleryAttachment6 attachmentDidChange];

    managedObjectContext2 = [v9 managedObjectContext];
    [managedObjectContext2 ic_save];

    mEMORY[0x277D366B0]2 = [MEMORY[0x277D366B0] sharedGenerator];
    [mEMORY[0x277D366B0]2 generatePreviewIfNeededForAttachment:v9];

    mEMORY[0x277D366B0]3 = [MEMORY[0x277D366B0] sharedGenerator];
    [mEMORY[0x277D366B0]3 postProcessIfNeededForAttachment:v9];

    undoManager = [(ICDocCamScannedDocumentEditor *)self undoManager];
    v25 = [undoManager prepareWithInvocationTarget:self];
    [v25 applyFilter:v12 forAttachmentWithIdentifier:identifierCopy];

    undoManager2 = [(ICDocCamScannedDocumentEditor *)self undoManager];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v28 = [mainBundle localizedStringForKey:@"Set Scan Filter" value:&stru_282757698 table:0];
    [undoManager2 setActionName:v28];
  }
}

- (void)applyFilter:(signed __int16)filter forAttachmentAtIndex:(unint64_t)index
{
  filterCopy = filter;
  galleryModel = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  v10 = [galleryModel singleSubAttachmentAtIndex:index];

  identifier = [v10 identifier];

  if (identifier)
  {
    identifier2 = [v10 identifier];
    [(ICDocCamScannedDocumentEditor *)self applyFilter:filterCopy forAttachmentWithIdentifier:identifier2];
  }
}

- (void)setQuad:(id)quad forAttachmentWithIdentifier:(id)identifier
{
  quadCopy = quad;
  v7 = [(ICDocCamScannedDocumentEditor *)self subAttachmentWithIdentifier:identifier];
  [(ICDocCamScannedDocumentEditor *)self setQuad:quadCopy forAttachment:v7];
}

- (void)setQuad:(id)quad forAttachment:(id)attachment
{
  quadCopy = quad;
  attachmentCopy = attachment;
  croppingQuad = [attachmentCopy croppingQuad];
  v8 = [quadCopy isEqual:croppingQuad];

  if ((v8 & 1) == 0)
  {
    [(ICDocCamScannedDocumentEditor *)self undoablySetQuad:quadCopy forAttachment:attachmentCopy];
  }
}

- (void)undoablySetQuad:(id)quad forAttachment:(id)attachment
{
  attachmentCopy = attachment;
  quadCopy = quad;
  croppingQuad = [attachmentCopy croppingQuad];
  [attachmentCopy setCroppingQuad:quadCopy];

  [attachmentCopy setOcrSummary:0];
  attachmentModel = [attachmentCopy attachmentModel];
  [attachmentModel updateAttachmentSize];

  [attachmentCopy updateChangeCountWithReason:@"Set doc scan page cropping"];
  [attachmentCopy setPreviewUpdateDate:0];
  galleryAttachment = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  attachmentModel2 = [galleryAttachment attachmentModel];
  identifier = [attachmentCopy identifier];
  v12 = [attachmentModel2 shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:identifier];

  if (v12)
  {
    galleryAttachment2 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [galleryAttachment2 setPreviewUpdateDate:0];

    galleryAttachment3 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [galleryAttachment3 setCachedImage:0];

    galleryAttachment4 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [galleryAttachment4 invalidateAttachmentPreviewImages];
  }

  galleryAttachment5 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  [galleryAttachment5 attachmentDidChange];

  managedObjectContext = [attachmentCopy managedObjectContext];
  [managedObjectContext ic_save];

  mEMORY[0x277D366B0] = [MEMORY[0x277D366B0] sharedGenerator];
  [mEMORY[0x277D366B0] generatePreviewIfNeededForAttachment:attachmentCopy];

  mEMORY[0x277D366B0]2 = [MEMORY[0x277D366B0] sharedGenerator];
  [mEMORY[0x277D366B0]2 postProcessIfNeededForAttachment:attachmentCopy];

  undoManager = [(ICDocCamScannedDocumentEditor *)self undoManager];
  v21 = [undoManager prepareWithInvocationTarget:self];
  [v21 undoablySetQuad:croppingQuad forAttachment:attachmentCopy];

  undoManager2 = [(ICDocCamScannedDocumentEditor *)self undoManager];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v24 = [mainBundle localizedStringForKey:@"Set Crop" value:&stru_282757698 table:0];
  [undoManager2 setActionName:v24];
}

- (void)setMarkupData:(id)data forAttachmentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = MEMORY[0x277D35E00];
  dataCopy = data;
  galleryAttachment = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  managedObjectContext = [galleryAttachment managedObjectContext];
  v10 = [v6 attachmentWithIdentifier:identifierCopy context:managedObjectContext];

  markupModelData = [v10 markupModelData];
  [v10 setMarkupModelData:dataCopy];

  [v10 updateChangeCountWithReason:@"Applied doc scan page mark-up"];
  [v10 setPreviewUpdateDate:0];
  galleryAttachment2 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  attachmentModel = [galleryAttachment2 attachmentModel];
  v14 = [attachmentModel shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:identifierCopy];

  if (v14)
  {
    galleryAttachment3 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [galleryAttachment3 setPreviewUpdateDate:0];

    galleryAttachment4 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [galleryAttachment4 setCachedImage:0];

    galleryAttachment5 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [galleryAttachment5 invalidateAttachmentPreviewImages];
  }

  galleryAttachment6 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  [galleryAttachment6 attachmentDidChange];

  managedObjectContext2 = [v10 managedObjectContext];
  [managedObjectContext2 ic_save];

  mEMORY[0x277D366B0] = [MEMORY[0x277D366B0] sharedGenerator];
  [mEMORY[0x277D366B0] generatePreviewIfNeededForAttachment:v10];

  undoManager = [(ICDocCamScannedDocumentEditor *)self undoManager];
  v22 = [undoManager prepareWithInvocationTarget:self];
  [v22 setMarkupData:markupModelData forAttachmentWithIdentifier:identifierCopy];

  undoManager2 = [(ICDocCamScannedDocumentEditor *)self undoManager];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v25 = mainBundle;
  if (dataCopy)
  {
    v26 = @"Apply Markup";
  }

  else
  {
    v26 = @"Discard Markup";
  }

  v27 = [mainBundle localizedStringForKey:v26 value:&stru_282757698 table:0];
  [undoManager2 setActionName:v27];
}

- (id)subAttachmentWithIdentifier:(id)identifier
{
  v4 = MEMORY[0x277D35E00];
  identifierCopy = identifier;
  galleryAttachment = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  managedObjectContext = [galleryAttachment managedObjectContext];
  v8 = [v4 attachmentWithIdentifier:identifierCopy context:managedObjectContext];

  parentAttachment = [v8 parentAttachment];
  galleryAttachment2 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];

  if (parentAttachment == galleryAttachment2)
  {
    v13 = v8;
  }

  else
  {
    v11 = MEMORY[0x277D36198];
    identifier = [v8 identifier];
    [v11 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICDocCamScannedDocumentEditor subAttachmentWithIdentifier:]" simulateCrash:1 showAlert:0 format:{@"Trying to get sub attachment with identifier, but the parent is not the gallery attachment. %@", identifier}];

    v13 = 0;
  }

  return v13;
}

- (unint64_t)indexForAttachmentWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  galleryModel = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__ICDocCamScannedDocumentEditor_indexForAttachmentWithIdentifier___block_invoke;
  v9[3] = &unk_2781ABC08;
  v6 = identifierCopy;
  v10 = v6;
  v11 = &v12;
  [galleryModel enumerateSubAttachmentsWithBlock:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __66__ICDocCamScannedDocumentEditor_indexForAttachmentWithIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  result = [a3 isEqualToString:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a4;
    *a5 = 1;
  }

  return result;
}

@end