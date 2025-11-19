@interface ICDocCamScannedDocumentEditor
- (BOOL)moveObjectWithIdentifier:(id)a3 toIndex:(unint64_t)a4;
- (BOOL)setOrientation:(int64_t)a3 forAttachment:(id)a4;
- (BOOL)updateTitle:(id)a3 forSubAttachment:(id)a4;
- (ICAttachmentGalleryModel)galleryModel;
- (ICDocCamScannedDocumentEditor)initWithGalleryAttachment:(id)a3;
- (id)subAttachmentWithIdentifier:(id)a3;
- (unint64_t)indexForAttachmentWithIdentifier:(id)a3;
- (void)applyFilter:(signed __int16)a3 forAttachmentAtIndex:(unint64_t)a4;
- (void)applyFilter:(signed __int16)a3 forAttachmentWithIdentifier:(id)a4;
- (void)deletePagesAtIndexes:(id)a3;
- (void)movePageFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)saveAndUpdatePreview:(BOOL)a3;
- (void)setMarkupData:(id)a3 forAttachmentWithIdentifier:(id)a4;
- (void)setOrientation:(int64_t)a3 forAttachmentAtIndex:(unint64_t)a4;
- (void)setQuad:(id)a3 forAttachment:(id)a4;
- (void)setQuad:(id)a3 forAttachmentWithIdentifier:(id)a4;
- (void)undeleteSubAttachment:(id)a3;
- (void)undoablyDeleteSubAttachments:(id)a3 actionName:(id)a4;
- (void)undoablyMoveAttachmentWithIdentifier:(id)a3 toIndex:(unint64_t)a4;
- (void)undoablySetOrientation:(int64_t)a3 forAttachmentIdentifier:(id)a4;
- (void)undoablySetQuad:(id)a3 forAttachment:(id)a4;
- (void)undoablyUndeleteSubAttachments:(id)a3 actionName:(id)a4;
- (void)undoablyUpdateTitle:(id)a3 forAttachmentWithIdentifier:(id)a4 isUserDefined:(BOOL)a5;
- (void)updateDocumentTitle:(id)a3 isUserDefined:(BOOL)a4;
@end

@implementation ICDocCamScannedDocumentEditor

- (ICDocCamScannedDocumentEditor)initWithGalleryAttachment:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICDocCamScannedDocumentEditor;
  v5 = [(ICDocCamScannedDocumentEditor *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(ICDocCamScannedDocumentEditor *)v5 setGalleryAttachment:v4];
    v7 = objc_alloc_init(MEMORY[0x277CCAD90]);
    [(ICDocCamScannedDocumentEditor *)v6 setUndoManager:v7];
  }

  return v6;
}

- (ICAttachmentGalleryModel)galleryModel
{
  objc_opt_class();
  v3 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  v4 = [v3 attachmentModel];
  v5 = ICCheckedDynamicCast();

  return v5;
}

- (void)undeleteSubAttachment:(id)a3
{
  v3 = a3;
  if ([v3 markedForDeletion])
  {
    [MEMORY[0x277D35E00] undeleteAttachment:v3];
    [v3 ic_postNotificationOnMainThreadWithName:*MEMORY[0x277D35BB8]];
  }
}

- (void)saveAndUpdatePreview:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  v11 = v5;
  if (v3)
  {
    [v5 setPreviewUpdateDate:0];

    v6 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v6 setCachedImage:0];

    v7 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v7 invalidateAttachmentPreviewImages];

    v8 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    v9 = [v8 managedObjectContext];
    [v9 ic_save];

    v11 = [MEMORY[0x277D366B0] sharedGenerator];
    v10 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v11 generatePreviewIfNeededForAttachment:v10];
  }

  else
  {
    v10 = [v5 managedObjectContext];
    [v10 ic_save];
  }
}

- (void)updateDocumentTitle:(id)a3 isUserDefined:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v8 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  v7 = [v8 identifier];
  [(ICDocCamScannedDocumentEditor *)self undoablyUpdateTitle:v6 forAttachmentWithIdentifier:v7 isUserDefined:v4];
}

- (BOOL)updateTitle:(id)a3 forSubAttachment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v9 = [(ICDocCamScannedDocumentEditor *)self indexForAttachmentWithIdentifier:v8];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v7 identifier];
    [(ICDocCamScannedDocumentEditor *)self undoablyUpdateTitle:v6 forAttachmentWithIdentifier:v10 isUserDefined:0];
  }

  return v9 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)undoablyUpdateTitle:(id)a3 forAttachmentWithIdentifier:(id)a4 isUserDefined:(BOOL)a5
{
  v5 = a5;
  v33 = a3;
  v8 = MEMORY[0x277D35E00];
  v9 = a4;
  v10 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  v11 = [v10 managedObjectContext];
  v12 = [v8 attachmentWithIdentifier:v9 includeDeleted:0 context:v11];

  v13 = [v12 identifier];
  v14 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  v15 = [v14 identifier];
  v16 = [v13 isEqualToString:v15];

  v17 = [v12 title];
  [v12 setTitle:v33];
  if (v5)
  {
    [v12 setUserTitle:v33];
  }

  v18 = [v12 note];
  v19 = [v18 regenerateTitle:1 snippet:0];

  if (v19)
  {
    v20 = [v12 note];
    [v20 markShareDirtyIfNeededWithReason:@"Updated doc scan user title"];

    v21 = [v12 note];
    [v21 updateChangeCountWithReason:@"Updated doc scan user title"];
  }

  [v12 updateChangeCountWithReason:@"Updated doc scan user title"];
  v22 = [v12 note];
  [v22 updateModificationDateAndChangeCount];

  if (v16)
  {
    v23 = @"Change Document Name";
  }

  else
  {
    v24 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v24 updateChangeCountWithReason:@"Updated doc scan user title"];

    v25 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v25 attachmentDidChange];

    v23 = @"Change Image Name";
  }

  v26 = [v12 managedObjectContext];
  [v26 ic_save];

  v27 = [(ICDocCamScannedDocumentEditor *)self undoManager];
  v28 = [v27 prepareWithInvocationTarget:self];
  v29 = [v12 identifier];
  [v28 undoablyUpdateTitle:v17 forAttachmentWithIdentifier:v29 isUserDefined:v5];

  v30 = [(ICDocCamScannedDocumentEditor *)self undoManager];
  v31 = [MEMORY[0x277CCA8D8] mainBundle];
  v32 = [v31 localizedStringForKey:v23 value:&stru_282757698 table:0];
  [v30 setActionName:v32];
}

- (BOOL)moveObjectWithIdentifier:(id)a3 toIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  v8 = [v7 attachmentIdentifiersOrderedSet];
  v9 = [v8 indexOfObject:v6];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICDocCamScannedDocumentEditor *)self movePageFromIndex:v9 toIndex:a4];
  }

  return v9 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)movePageFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v7 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  v8 = [v7 attachmentIdentifiersOrderedSet];
  v10 = [v8 objectAtIndex:a3];

  [(ICDocCamScannedDocumentEditor *)self undoablyMoveAttachmentWithIdentifier:v10 toIndex:a4];
  v9 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  [v9 regenerateTitle];
}

- (void)undoablyMoveAttachmentWithIdentifier:(id)a3 toIndex:(unint64_t)a4
{
  v33 = a3;
  v6 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  v7 = [v6 subAttachmentCount] - 1;

  if (v7 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = v7;
  }

  v9 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  v10 = [v9 attachmentIdentifiersOrderedSet];
  v11 = [v10 indexOfObject:v33];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11 != v8)
  {
    v12 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
    v13 = [v12 attachmentIdentifiersOrderedSet];
    [v13 moveObject:v33 toIndex:v8];

    v14 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
    [v14 setMergeableDataDirty:1];

    v15 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v15 saveMergeableDataIfNeeded];

    v16 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v16 updateChangeCountWithReason:@"Moved gallery page"];

    v17 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v17 attachmentDidChange];

    v18 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    v19 = [v18 managedObjectContext];
    [v19 ic_saveWithLogDescription:@"Moved gallery page"];

    v20 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    v21 = [v20 attachmentModel];
    v22 = [v21 shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:v33];
    if (v11)
    {
      v23 = v22;
    }

    else
    {
      v23 = 1;
    }

    if (v8)
    {
      v24 = v23;
    }

    else
    {
      v24 = 1;
    }

    [(ICDocCamScannedDocumentEditor *)self saveAndUpdatePreview:v24];
    v25 = [(ICDocCamScannedDocumentEditor *)self undoManager];
    v26 = [v25 prepareWithInvocationTarget:self];
    [v26 undoablyMoveAttachmentWithIdentifier:v33 toIndex:v11];

    v27 = [(ICDocCamScannedDocumentEditor *)self undoManager];
    v28 = [MEMORY[0x277CCA8D8] mainBundle];
    v29 = [v28 localizedStringForKey:@"Move Scan" value:&stru_282757698 table:0];
    [v27 setActionName:v29];

    v30 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    v31 = [v30 objectID];

    if (v31)
    {
      v32 = [MEMORY[0x277CCAB98] defaultCenter];
      [v32 postNotificationName:*MEMORY[0x277D35BB8] object:v31];
    }
  }
}

- (void)undoablyUndeleteSubAttachments:(id)a3 actionName:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v35 = a4;
  v38 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v7 = [v6 allKeys];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __75__ICDocCamScannedDocumentEditor_undoablyUndeleteSubAttachments_actionName___block_invoke;
  v43[3] = &unk_2781ABBB8;
  v37 = v6;
  v44 = v37;
  v8 = [v7 sortedArrayUsingComparator:v43];

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
        v16 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
        v17 = [v16 managedObjectContext];
        v18 = [v15 attachmentWithIdentifier:v14 includeDeleted:1 context:v17];

        if (v18)
        {
          [(ICDocCamScannedDocumentEditor *)self undeleteSubAttachment:v18];
          v19 = [v37 objectForKeyedSubscript:v14];
          v20 = [v19 unsignedIntegerValue];

          v21 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
          v22 = [v21 subAttachmentCount];

          if (v20 >= v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = v20;
          }

          v24 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
          [v24 insertSubAttachment:v18 atIndex:v23];

          if (v11)
          {
            v11 = 1;
          }

          else
          {
            v25 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
            v26 = [v25 shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:v14];
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

  v27 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  [v27 saveMergeableDataIfNeeded];

  v28 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  [v28 updateChangeCountWithReason:@"Undeleted gallery page"];

  v29 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  v30 = [v29 managedObjectContext];
  [v30 ic_saveWithLogDescription:@"Undeleted gallery page"];

  [(ICDocCamScannedDocumentEditor *)self saveAndUpdatePreview:v11 & 1];
  if ([v38 count])
  {
    v31 = [(ICDocCamScannedDocumentEditor *)self undoManager];
    v32 = [v31 prepareWithInvocationTarget:self];
    [v32 undoablyDeleteSubAttachments:v38 actionName:v35];

    if (v35)
    {
      v33 = [(ICDocCamScannedDocumentEditor *)self undoManager];
      [v33 setActionName:v35];
    }
  }

  v34 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  [v34 regenerateTitle];
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

- (void)undoablyDeleteSubAttachments:(id)a3 actionName:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v47 = a4;
  v51 = self;
  v7 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  v8 = [v7 attachmentIdentifiersOrderedSet];

  v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v6;
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
        v15 = [v8 indexOfObject:v14];
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

  v46 = v8;

  v17 = [v9 allKeys];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __73__ICDocCamScannedDocumentEditor_undoablyDeleteSubAttachments_actionName___block_invoke;
  v56[3] = &unk_2781ABBB8;
  v50 = v9;
  v57 = v50;
  v18 = [v17 sortedArrayUsingComparator:v56];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v45 = v18;
  v48 = [v18 reverseObjectEnumerator];
  v19 = [v48 countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v53;
    v23 = v51;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v53 != v22)
        {
          objc_enumerationMutation(v48);
        }

        v25 = *(*(&v52 + 1) + 8 * j);
        v26 = MEMORY[0x277D35E00];
        v27 = [(ICDocCamScannedDocumentEditor *)v23 galleryAttachment];
        v28 = [v27 managedObjectContext];
        v29 = [v26 attachmentWithIdentifier:v25 context:v28];

        v30 = [v50 objectForKeyedSubscript:v25];
        v31 = [v30 unsignedIntegerValue];

        if (v29)
        {
          v32 = v31 == 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = 1;
        }

        if (v32)
        {
          v23 = v51;
        }

        else
        {
          if (v21)
          {
            v21 = 1;
            v23 = v51;
          }

          else
          {
            v23 = v51;
            v33 = [(ICDocCamScannedDocumentEditor *)v51 galleryModel];
            v34 = [v33 shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:v25];
            if (v31)
            {
              v21 = v34;
            }

            else
            {
              v21 = 1;
            }
          }

          v35 = [(ICDocCamScannedDocumentEditor *)v23 galleryModel];
          [v35 removeSubAttachment:v29];

          if (([v29 markedForDeletion] & 1) == 0)
          {
            [MEMORY[0x277D35E00] deleteAttachment:v29];
          }
        }
      }

      v20 = [v48 countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v20);
  }

  else
  {
    v21 = 0;
    v23 = v51;
  }

  v36 = [(ICDocCamScannedDocumentEditor *)v23 galleryAttachment];
  [v36 saveMergeableDataIfNeeded];

  v37 = [(ICDocCamScannedDocumentEditor *)v23 galleryAttachment];
  [v37 updateChangeCountWithReason:@"Deleted gallery page"];

  v38 = [(ICDocCamScannedDocumentEditor *)v23 galleryAttachment];
  [v38 attachmentDidChange];

  v39 = [(ICDocCamScannedDocumentEditor *)v23 galleryAttachment];
  v40 = [v39 managedObjectContext];
  [v40 ic_saveWithLogDescription:@"Deleted gallery page"];

  [(ICDocCamScannedDocumentEditor *)v51 saveAndUpdatePreview:v21 & 1];
  if ([v50 count])
  {
    v41 = [(ICDocCamScannedDocumentEditor *)v51 undoManager];
    v42 = [v41 prepareWithInvocationTarget:v51];
    [v42 undoablyUndeleteSubAttachments:v50 actionName:v47];

    if (v47)
    {
      v43 = [(ICDocCamScannedDocumentEditor *)v51 undoManager];
      [v43 setActionName:v47];
    }
  }

  v44 = [(ICDocCamScannedDocumentEditor *)v51 galleryAttachment];
  [v44 regenerateTitle];
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

- (void)deletePagesAtIndexes:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v5 = MEMORY[0x277CBEB18];
  v6 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  v17 = [v5 arrayWithCapacity:{objc_msgSend(v6, "subAttachmentCount")}];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__ICDocCamScannedDocumentEditor_deletePagesAtIndexes___block_invoke;
  v11[3] = &unk_2781ABBE0;
  v11[4] = self;
  v11[5] = &v12;
  [v4 enumerateIndexesUsingBlock:v11];
  if ([v13[5] count])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] mainBundle];
    v9 = [v8 localizedStringForKey:@"DELETE_%lu_SCANNED_IMAGES" value:&stru_282757698 table:0];
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

- (BOOL)setOrientation:(int64_t)a3 forAttachment:(id)a4
{
  v6 = [a4 identifier];
  v7 = [(ICDocCamScannedDocumentEditor *)self indexForAttachmentWithIdentifier:v6];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(ICDocCamScannedDocumentEditor *)self setOrientation:a3 forAttachmentAtIndex:v7];
  }

  return v7 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)setOrientation:(int64_t)a3 forAttachmentAtIndex:(unint64_t)a4
{
  v7 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  v10 = [v7 singleSubAttachmentAtIndex:a4];

  v8 = v10;
  if (v10)
  {
    v9 = [v10 identifier];
    [(ICDocCamScannedDocumentEditor *)self undoablySetOrientation:a3 forAttachmentIdentifier:v9];

    v8 = v10;
  }
}

- (void)undoablySetOrientation:(int64_t)a3 forAttachmentIdentifier:(id)a4
{
  v33 = a4;
  v6 = MEMORY[0x277D35E00];
  v7 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  v8 = [v7 managedObjectContext];
  v9 = [v6 attachmentWithIdentifier:v33 context:v8];

  v10 = [v9 orientation];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == a3;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    [v9 setOrientation:a3];
    v13 = [v9 attachmentModel];
    [v13 updateAttachmentSize];

    [v9 setOcrSummary:0];
    [v9 updateChangeCountWithReason:@"Changed doc scan page orientation"];
    [v9 setPreviewUpdateDate:0];
    v14 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    v15 = [v14 attachmentModel];
    v16 = [v15 shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:v33];

    if (v16)
    {
      v17 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
      [v17 setPreviewUpdateDate:0];

      v18 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
      [v18 setCachedImage:0];

      v19 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
      [v19 invalidateAttachmentPreviewImages];
    }

    v20 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v20 attachmentDidChange];

    v21 = [v9 managedObjectContext];
    [v21 ic_save];

    v22 = [MEMORY[0x277D366B0] sharedGenerator];
    [v22 postProcessIfNeededForAttachment:v9];

    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    v24 = *MEMORY[0x277D35BB8];
    v25 = [v9 objectID];
    [v23 postNotificationName:v24 object:v25];

    if (v16)
    {
      v26 = [MEMORY[0x277D366B0] sharedGenerator];
      v27 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
      [v26 generatePreviewIfNeededForAttachment:v27];
    }

    v28 = [(ICDocCamScannedDocumentEditor *)self undoManager];
    v29 = [v28 prepareWithInvocationTarget:self];
    [v29 undoablySetOrientation:v11 forAttachmentIdentifier:v33];

    v30 = [(ICDocCamScannedDocumentEditor *)self undoManager];
    v31 = [MEMORY[0x277CCA8D8] mainBundle];
    v32 = [v31 localizedStringForKey:@"Rotate Scan" value:&stru_282757698 table:0];
    [v30 setActionName:v32];
  }
}

- (void)applyFilter:(signed __int16)a3 forAttachmentWithIdentifier:(id)a4
{
  v4 = a3;
  v29 = a4;
  v6 = MEMORY[0x277D35E00];
  v7 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  v8 = [v7 managedObjectContext];
  v9 = [v6 attachmentWithIdentifier:v29 context:v8];

  v10 = [v9 imageFilterType];
  if (v9)
  {
    v11 = v10 == v4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = v10;
    v13 = [MEMORY[0x277D366B0] sharedGenerator];
    [v13 cancelIfNeededForAttachment:v9];

    [v9 setImageFilterType:v4];
    [v9 setOcrSummary:0];
    [v9 updateChangeCountWithReason:@"Applied doc scan page filter"];
    [v9 setPreviewUpdateDate:0];
    v14 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    v15 = [v14 attachmentModel];
    v16 = [v15 shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:v29];

    if (v16)
    {
      v17 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
      [v17 setPreviewUpdateDate:0];

      v18 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
      [v18 setCachedImage:0];

      v19 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
      [v19 invalidateAttachmentPreviewImages];
    }

    v20 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v20 attachmentDidChange];

    v21 = [v9 managedObjectContext];
    [v21 ic_save];

    v22 = [MEMORY[0x277D366B0] sharedGenerator];
    [v22 generatePreviewIfNeededForAttachment:v9];

    v23 = [MEMORY[0x277D366B0] sharedGenerator];
    [v23 postProcessIfNeededForAttachment:v9];

    v24 = [(ICDocCamScannedDocumentEditor *)self undoManager];
    v25 = [v24 prepareWithInvocationTarget:self];
    [v25 applyFilter:v12 forAttachmentWithIdentifier:v29];

    v26 = [(ICDocCamScannedDocumentEditor *)self undoManager];
    v27 = [MEMORY[0x277CCA8D8] mainBundle];
    v28 = [v27 localizedStringForKey:@"Set Scan Filter" value:&stru_282757698 table:0];
    [v26 setActionName:v28];
  }
}

- (void)applyFilter:(signed __int16)a3 forAttachmentAtIndex:(unint64_t)a4
{
  v5 = a3;
  v7 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  v10 = [v7 singleSubAttachmentAtIndex:a4];

  v8 = [v10 identifier];

  if (v8)
  {
    v9 = [v10 identifier];
    [(ICDocCamScannedDocumentEditor *)self applyFilter:v5 forAttachmentWithIdentifier:v9];
  }
}

- (void)setQuad:(id)a3 forAttachmentWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(ICDocCamScannedDocumentEditor *)self subAttachmentWithIdentifier:a4];
  [(ICDocCamScannedDocumentEditor *)self setQuad:v6 forAttachment:v7];
}

- (void)setQuad:(id)a3 forAttachment:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v6 croppingQuad];
  v8 = [v9 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    [(ICDocCamScannedDocumentEditor *)self undoablySetQuad:v9 forAttachment:v6];
  }
}

- (void)undoablySetQuad:(id)a3 forAttachment:(id)a4
{
  v25 = a4;
  v6 = a3;
  v7 = [v25 croppingQuad];
  [v25 setCroppingQuad:v6];

  [v25 setOcrSummary:0];
  v8 = [v25 attachmentModel];
  [v8 updateAttachmentSize];

  [v25 updateChangeCountWithReason:@"Set doc scan page cropping"];
  [v25 setPreviewUpdateDate:0];
  v9 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  v10 = [v9 attachmentModel];
  v11 = [v25 identifier];
  v12 = [v10 shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:v11];

  if (v12)
  {
    v13 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v13 setPreviewUpdateDate:0];

    v14 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v14 setCachedImage:0];

    v15 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v15 invalidateAttachmentPreviewImages];
  }

  v16 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  [v16 attachmentDidChange];

  v17 = [v25 managedObjectContext];
  [v17 ic_save];

  v18 = [MEMORY[0x277D366B0] sharedGenerator];
  [v18 generatePreviewIfNeededForAttachment:v25];

  v19 = [MEMORY[0x277D366B0] sharedGenerator];
  [v19 postProcessIfNeededForAttachment:v25];

  v20 = [(ICDocCamScannedDocumentEditor *)self undoManager];
  v21 = [v20 prepareWithInvocationTarget:self];
  [v21 undoablySetQuad:v7 forAttachment:v25];

  v22 = [(ICDocCamScannedDocumentEditor *)self undoManager];
  v23 = [MEMORY[0x277CCA8D8] mainBundle];
  v24 = [v23 localizedStringForKey:@"Set Crop" value:&stru_282757698 table:0];
  [v22 setActionName:v24];
}

- (void)setMarkupData:(id)a3 forAttachmentWithIdentifier:(id)a4
{
  v28 = a4;
  v6 = MEMORY[0x277D35E00];
  v7 = a3;
  v8 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  v9 = [v8 managedObjectContext];
  v10 = [v6 attachmentWithIdentifier:v28 context:v9];

  v11 = [v10 markupModelData];
  [v10 setMarkupModelData:v7];

  [v10 updateChangeCountWithReason:@"Applied doc scan page mark-up"];
  [v10 setPreviewUpdateDate:0];
  v12 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  v13 = [v12 attachmentModel];
  v14 = [v13 shouldGeneratePreviewAfterChangeInSubAttachmentWithIdentifier:v28];

  if (v14)
  {
    v15 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v15 setPreviewUpdateDate:0];

    v16 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v16 setCachedImage:0];

    v17 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
    [v17 invalidateAttachmentPreviewImages];
  }

  v18 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  [v18 attachmentDidChange];

  v19 = [v10 managedObjectContext];
  [v19 ic_save];

  v20 = [MEMORY[0x277D366B0] sharedGenerator];
  [v20 generatePreviewIfNeededForAttachment:v10];

  v21 = [(ICDocCamScannedDocumentEditor *)self undoManager];
  v22 = [v21 prepareWithInvocationTarget:self];
  [v22 setMarkupData:v11 forAttachmentWithIdentifier:v28];

  v23 = [(ICDocCamScannedDocumentEditor *)self undoManager];
  v24 = [MEMORY[0x277CCA8D8] mainBundle];
  v25 = v24;
  if (v7)
  {
    v26 = @"Apply Markup";
  }

  else
  {
    v26 = @"Discard Markup";
  }

  v27 = [v24 localizedStringForKey:v26 value:&stru_282757698 table:0];
  [v23 setActionName:v27];
}

- (id)subAttachmentWithIdentifier:(id)a3
{
  v4 = MEMORY[0x277D35E00];
  v5 = a3;
  v6 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];
  v7 = [v6 managedObjectContext];
  v8 = [v4 attachmentWithIdentifier:v5 context:v7];

  v9 = [v8 parentAttachment];
  v10 = [(ICDocCamScannedDocumentEditor *)self galleryAttachment];

  if (v9 == v10)
  {
    v13 = v8;
  }

  else
  {
    v11 = MEMORY[0x277D36198];
    v12 = [v8 identifier];
    [v11 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICDocCamScannedDocumentEditor subAttachmentWithIdentifier:]" simulateCrash:1 showAlert:0 format:{@"Trying to get sub attachment with identifier, but the parent is not the gallery attachment. %@", v12}];

    v13 = 0;
  }

  return v13;
}

- (unint64_t)indexForAttachmentWithIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [(ICDocCamScannedDocumentEditor *)self galleryModel];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__ICDocCamScannedDocumentEditor_indexForAttachmentWithIdentifier___block_invoke;
  v9[3] = &unk_2781ABC08;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateSubAttachmentsWithBlock:v9];

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