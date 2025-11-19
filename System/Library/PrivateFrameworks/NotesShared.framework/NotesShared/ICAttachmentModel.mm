@interface ICAttachmentModel
+ (Class)modelClassForAttachmentType:(signed __int16)a3;
+ (id)contentInfoTextForAttachmentType:(signed __int16)a3 withCount:(unint64_t)a4;
+ (void)deletePreviewItemHardLinkURLs;
- (BOOL)canSaveURL;
- (BOOL)hasThumbnailImage;
- (BOOL)isReadyToPresent;
- (BOOL)mergeWithMergeableData:(id)a3 mergeableFieldState:(id)a4;
- (BOOL)requiresPostProcessing;
- (BOOL)supportsQuickLook;
- (CGAffineTransform)previewImageOrientationTransform;
- (CGSize)intrinsicContentSize;
- (ICAttachment)attachment;
- (ICAttachmentModel)initWithAttachment:(id)a3;
- (NSString)hardLinkVersion;
- (NSURL)saveURL;
- (NSUUID)currentReplicaID;
- (id)dataForQuickLook;
- (id)dataForTypeIdentifier:(id)a3;
- (id)fileURLForTypeIdentifier:(id)a3;
- (id)generateHardLinkURLIfNecessaryForURL:(id)a3;
- (id)generateHardLinkURLIfNecessaryForURL:(id)a3 withFileName:(id)a4;
- (id)generateTemporaryURLWithExtension:(id)a3;
- (id)hardLinkFolderURL;
- (id)mergeableDataForCopying:(id *)a3;
- (id)previewItemTitle;
- (id)previewItemURL;
- (id)providerFileTypes;
- (id)searchableTextContent;
- (id)searchableTextContentForLocation;
- (id)standaloneTitleForNote;
- (void)addMergeableDataToCloudKitRecord:(id)a3 approach:(int64_t)a4 mergeableFieldState:(id)a5;
- (void)assetWithCompletion:(id)a3;
- (void)dealloc;
- (void)deleteChildAttachments;
- (void)mergeMergeableDataFromCloudKitRecord:(id)a3 approach:(int64_t)a4 mergeableFieldState:(id)a5;
- (void)undeleteChildAttachments;
- (void)updateAttachmentMarkedForDeletionStateAttachmentIsInUse:(BOOL)a3;
- (void)updateFileBasedAttributes;
@end

@implementation ICAttachmentModel

- (CGSize)intrinsicContentSize
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v13 = "";
  v14 = *MEMORY[0x277CBF3A8];
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__ICAttachmentModel_intrinsicContentSize__block_invoke;
  v9[3] = &unk_278194DE8;
  v9[4] = self;
  v9[5] = &v10;
  [v4 performBlockAndWait:v9];

  v5 = v11[4];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = v5;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (ICAttachment)attachment
{
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  return WeakRetained;
}

void __41__ICAttachmentModel_intrinsicContentSize__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) attachment];
  [v7 sizeWidth];
  v3 = v2;
  v4 = [*(a1 + 32) attachment];
  [v4 sizeHeight];
  v5 = *(*(a1 + 40) + 8);
  *(v5 + 32) = v3;
  *(v5 + 40) = v6;
}

- (void)dealloc
{
  if (objc_opt_respondsToSelector())
  {
    [(ICAttachmentModel *)self attachmentModelDealloc];
  }

  v3.receiver = self;
  v3.super_class = ICAttachmentModel;
  [(ICAttachmentModel *)&v3 dealloc];
}

+ (id)contentInfoTextForAttachmentType:(signed __int16)a3 withCount:(unint64_t)a4
{
  switch(a3)
  {
    case 3:
      v6 = MEMORY[0x277CCACA8];
      v7 = @"NOTE_LIST_PHOTOS_%lu";
      goto LABEL_13;
    case 4:
      v6 = MEMORY[0x277CCACA8];
      v7 = @"NOTE_LIST_AUDIO_RECORDINGS_%lu";
      goto LABEL_13;
    case 5:
      v6 = MEMORY[0x277CCACA8];
      v7 = @"NOTE_LIST_VIDEOS_%lu";
      goto LABEL_13;
    case 6:
    case 14:
      v6 = MEMORY[0x277CCACA8];
      v7 = @"NOTE_LIST_PDFS_%lu";
      goto LABEL_13;
    case 7:
      v6 = MEMORY[0x277CCACA8];
      v7 = @"NOTE_LIST_MAP_LOCATIONS_%lu";
      goto LABEL_13;
    case 8:
      v6 = MEMORY[0x277CCACA8];
      v7 = @"NOTE_LIST_WEB_LINKS_%lu";
      goto LABEL_13;
    case 9:
      v6 = MEMORY[0x277CCACA8];
      v7 = @"NOTE_LIST_SKETCHES_%lu";
      goto LABEL_13;
    case 10:
    case 13:
      v5 = __ICLocalizedFrameworkString_impl(@"Handwritten note", @"Handwritten note", 0, 1);
      goto LABEL_14;
    case 11:
    case 15:
      v6 = MEMORY[0x277CCACA8];
      v7 = @"NOTE_LIST_SCANNED_DOCUMENTS_%lu";
      goto LABEL_13;
    case 12:
      v6 = MEMORY[0x277CCACA8];
      v7 = @"NOTE_LIST_TABLES_%lu";
      goto LABEL_13;
    default:
      v6 = MEMORY[0x277CCACA8];
      v7 = @"NOTE_LIST_ATTACHMENTS_%lu";
LABEL_13:
      v8 = __ICLocalizedFrameworkString_impl(v7, v7, 0, 1);
      v5 = [v6 localizedStringWithFormat:v8, a4];

LABEL_14:

      return v5;
  }
}

+ (Class)modelClassForAttachmentType:(signed __int16)a3
{
  v4 = objc_opt_class();

  return v4;
}

- (ICAttachmentModel)initWithAttachment:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICAttachmentModel;
  v5 = [(ICAttachmentModel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attachment, v4);
  }

  return v6;
}

- (NSUUID)currentReplicaID
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 currentReplicaID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CCAD78] UUID];
  }

  v6 = v5;

  return v6;
}

- (BOOL)mergeWithMergeableData:(id)a3 mergeableFieldState:(id)a4
{
  v5 = a3;
  v6 = [(ICAttachmentModel *)self attachment];
  [v6 setMergeableData:v5];

  return 0;
}

- (void)addMergeableDataToCloudKitRecord:(id)a3 approach:(int64_t)a4 mergeableFieldState:(id)a5
{
  v7 = a3;
  v8 = [(ICAttachmentModel *)self attachment];
  v9 = [v8 isPasswordProtected];

  if (v9)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"!self.attachment.isPasswordProtected" functionName:"-[ICAttachmentModel addMergeableDataToCloudKitRecord:approach:mergeableFieldState:]" simulateCrash:1 showAlert:0 format:@"Locked notes should use encrypted values JSON instead"];
  }

  v12 = [(ICAttachmentModel *)self attachment];
  v10 = [v12 mergeableData];
  v11 = [(ICAttachmentModel *)self attachment];
  [v7 ic_setEncryptedInlineableDataAsset:v10 forKeyPrefix:@"MergeableData" approach:a4 withObject:v11];
}

- (void)mergeMergeableDataFromCloudKitRecord:(id)a3 approach:(int64_t)a4 mergeableFieldState:(id)a5
{
  v13 = a5;
  v7 = [a3 ic_encryptedInlineableDataAssetForKeyPrefix:@"MergeableData"];
  if (v7)
  {
    [(ICAttachmentModel *)self mergeWithMergeableData:v7 mergeableFieldState:v13];
    if ([(ICAttachmentModel *)self providesTextContentInNote])
    {
      [(ICAttachmentModel *)self regenerateTextContentInNote];
      v8 = [(ICAttachmentModel *)self attachment];
      v9 = [v8 note];
      if ([v9 needsInitialFetchFromCloud])
      {
LABEL_6:

        goto LABEL_7;
      }

      v10 = [(ICAttachmentModel *)self attachment];
      v11 = [v10 isInNoteTitleOrSnippet];

      if (v11)
      {
        v8 = [(ICAttachmentModel *)self attachment];
        v9 = [v8 note];
        [v9 regenerateTitle:1 snippet:1];
        goto LABEL_6;
      }
    }

LABEL_7:
    v12 = [(ICAttachmentModel *)self attachment];
    [v12 saveMergeableDataIfNeeded];
  }
}

- (BOOL)requiresPostProcessing
{
  if ([(ICAttachmentModel *)self supportsOCR])
  {
    return 1;
  }

  return [(ICAttachmentModel *)self supportsImageClassification];
}

- (NSString)hardLinkVersion
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__24;
  v14 = __Block_byref_object_dispose__24;
  v15 = 0;
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__ICAttachmentModel_hardLinkVersion__block_invoke;
  v9[3] = &unk_278194DE8;
  v9[4] = self;
  v9[5] = &v10;
  [v4 performBlockAndWait:v9];

  v5 = MEMORY[0x277CCACA8];
  [v11[5] timeIntervalSince1970];
  v7 = [v5 stringWithFormat:@"%ld", v6];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __36__ICAttachmentModel_hardLinkVersion__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) attachment];
  v2 = [v5 modificationDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)hasThumbnailImage
{
  v3 = [(ICAttachmentModel *)self attachment];
  if ([v3 markedForDeletion])
  {
    v4 = 0;
  }

  else if ([(ICAttachmentModel *)self hasPreviews])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ICAttachmentModel *)self attachment];
    v6 = [v5 media];
    v7 = [v6 mediaURL];
    v4 = v7 != 0;
  }

  return v4;
}

- (NSURL)saveURL
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__24;
  v12 = __Block_byref_object_dispose__24;
  v13 = 0;
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__ICAttachmentModel_saveURL__block_invoke;
  v7[3] = &unk_278194DE8;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __28__ICAttachmentModel_saveURL__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) attachment];
  v2 = [v6 media];
  v3 = [v2 mediaURL];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)canSaveURL
{
  v2 = [(ICAttachmentModel *)self saveURL];
  v3 = v2 != 0;

  return v3;
}

- (id)searchableTextContent
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [(ICAttachmentModel *)self searchableTextContentForLocation];
  if (v4)
  {
    [v3 appendString:v4];
  }

  return v3;
}

- (id)searchableTextContentForLocation
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 location];

  if (v3 && [v3 placeUpdated])
  {
    v4 = [v3 placemark];

    if (v4)
    {
      v5 = [v3 searchStrings];
      v4 = [v5 componentsJoinedByString:@" "];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)standaloneTitleForNote
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 userTitle];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(ICAttachmentModel *)self attachment];
    v5 = [v6 title];
  }

  if (![v5 length])
  {
    v7 = +[ICNote defaultTitleForEmptyNote];

    v5 = v7;
  }

  v8 = [v5 pathExtension];
  if ([v8 length])
  {
    v9 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:v8];
    if ([v9 isEqual:*MEMORY[0x277CE1E08]])
    {
      v10 = [v5 stringByDeletingPathExtension];

      v5 = v10;
    }
  }

  return v5;
}

- (void)updateAttachmentMarkedForDeletionStateAttachmentIsInUse:(BOOL)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(ICAttachmentModel *)self attachment];
  v6 = v5;
  if (a3)
  {
    if ([v5 needsInitialRelationshipSetup])
    {
      v7 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v6 identifier];
        *buf = 138412290;
        v20 = v8;
        _os_log_impl(&dword_214D51000, v7, OS_LOG_TYPE_INFO, "Setting needsInitialRelationshipSetup=NO on %@", buf, 0xCu);
      }

      [v6 setNeedsInitialRelationshipSetup:0];
    }
  }

  else if (([v5 needsInitialFetchFromCloud] & 1) == 0 && (objc_msgSend(v6, "isBeingEditedLocallyOnDevice") & 1) == 0)
  {
    v9 = [v6 needsInitialRelationshipSetup];
    goto LABEL_9;
  }

  v9 = 1;
LABEL_9:
  if ([v6 markedForDeletion] && v9)
  {
    v10 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v6 shortLoggingDescription];
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_214D51000, v10, OS_LOG_TYPE_INFO, "Unmarking attachment for deletion because it is in use: %@", buf, 0xCu);
    }

    [ICAttachment undeleteAttachment:v6];
  }

  else if ((([v6 markedForDeletion] | v9) & 1) == 0)
  {
    v12 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v6 shortLoggingDescription];
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&dword_214D51000, v12, OS_LOG_TYPE_INFO, "Marking attachment for deletion because it is not in use: %@", buf, 0xCu);
    }

    [ICAttachment deleteAttachment:v6];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = [(ICAttachmentModel *)self attachment];
    v18 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [v14 postNotificationName:@"ICAttachmentDeletedNotification" object:0 userInfo:v16];
  }
}

- (void)deleteChildAttachments
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 subAttachments];

  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [ICAttachment deleteAttachment:*(*(&v19 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(ICAttachmentModel *)self attachment];
  v10 = [v9 inlineAttachments];

  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(ICBaseAttachment *)ICInlineAttachment deleteAttachment:*(*(&v15 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)undeleteChildAttachments
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 subAttachments];

  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [ICAttachment undeleteAttachment:*(*(&v19 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [(ICAttachmentModel *)self attachment];
  v10 = [v9 inlineAttachments];

  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(ICBaseAttachment *)ICInlineAttachment undeleteAttachment:*(*(&v15 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (BOOL)isReadyToPresent
{
  v3 = [(ICAttachmentModel *)self attachment];
  if ([v3 needsToBeRequested])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(ICAttachmentModel *)self attachment];
    v4 = [v5 isUnsupported] ^ 1;
  }

  return v4;
}

- (void)updateFileBasedAttributes
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 media];
  v5 = [v4 isValid];

  if (v5)
  {
    v6 = [(ICAttachmentModel *)self attachment];
    v7 = [v6 media];
    v8 = [v7 isPasswordProtected];

    v9 = [(ICAttachmentModel *)self attachment];
    v10 = [v9 media];
    v11 = v10;
    if (v8)
    {
      [v10 encryptedMediaURL];
    }

    else
    {
      [v10 mediaURL];
    }
    v12 = ;

    v38 = 0;
    v13 = *MEMORY[0x277CBE838];
    [v12 getResourceValue:&v38 forKey:*MEMORY[0x277CBE838] error:0];
    v14 = v38;
    if (v14)
    {
      v15 = v14;
      v16 = [v14 integerValue];
    }

    else
    {
      v37 = 0;
      [v12 getResourceValue:&v37 forKey:*MEMORY[0x277CBE868] error:0];
      v15 = v37;
      if ([v15 BOOLValue])
      {
        v17 = [MEMORY[0x277CCAA00] defaultManager];
        v18 = [MEMORY[0x277CBEA60] arrayWithObject:v13];
        v30 = v17;
        v31 = v12;
        v19 = [v17 enumeratorAtURL:v12 includingPropertiesForKeys:v18 options:0 errorHandler:0];

        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v33 objects:v39 count:16];
        if (v21)
        {
          v22 = v21;
          v16 = 0;
          v23 = *v34;
          do
          {
            v24 = 0;
            v25 = v15;
            do
            {
              if (*v34 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v26 = *(*(&v33 + 1) + 8 * v24);
              v32 = 0;
              v27 = [v26 getResourceValue:&v32 forKey:v13 error:0];
              v15 = v32;

              if (v27)
              {
                v16 += [v15 integerValue];
              }

              ++v24;
              v25 = v15;
            }

            while (v22 != v24);
            v22 = [v20 countByEnumeratingWithState:&v33 objects:v39 count:16];
          }

          while (v22);
        }

        else
        {
          v16 = 0;
        }

        v12 = v31;
      }

      else
      {
        v16 = 0;
      }
    }

    v28 = [(ICAttachmentModel *)self attachment];
    [v28 setFileSize:v16];

    v29 = [(ICAttachmentModel *)self attachment];
    [v29 updateChangeCountWithReason:@"Updated file-based attributes"];
  }
}

- (CGAffineTransform)previewImageOrientationTransform
{
  v3 = MEMORY[0x277CBF2C0];
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

- (void)assetWithCompletion:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(ICAttachmentModel *)self asset];
    (*(a3 + 2))(v5, v6);
  }
}

+ (void)deletePreviewItemHardLinkURLs
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = NSTemporaryDirectory();
  v19 = [v2 stringByAppendingPathComponent:@"HardLinkURLTemp"];

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 removeItemAtPath:v19 error:0];

  v4 = +[ICNoteContext sharedContext];
  v5 = [v4 workerManagedObjectContext];

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__24;
  v38 = __Block_byref_object_dispose__24;
  v39 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __50__ICAttachmentModel_deletePreviewItemHardLinkURLs__block_invoke;
  v31[3] = &unk_278194DE8;
  v33 = &v34;
  v32 = v5;
  v17 = v32;
  [v32 performBlockAndWait:v31];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v35[5];
  v6 = [obj countByEnumeratingWithState:&v27 objects:v40 count:16];
  if (v6)
  {
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v21 = 0;
        v22 = &v21;
        v23 = 0x3032000000;
        v24 = __Block_byref_object_copy__24;
        v25 = __Block_byref_object_dispose__24;
        v26 = 0;
        v10 = [v9 managedObjectContext];
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __50__ICAttachmentModel_deletePreviewItemHardLinkURLs__block_invoke_2;
        v20[3] = &unk_278194DE8;
        v20[4] = v9;
        v20[5] = &v21;
        [v10 performBlockAndWait:v20];

        v11 = +[ICAccount accountUtilities];
        v12 = [v11 temporaryDirectoryURLForAccountIdentifier:v22[5]];
        v13 = [v12 URLByAppendingPathComponent:@"HardLinkURLTemp" isDirectory:1];

        v14 = [v13 path];
        LOBYTE(v12) = [v14 isEqualToString:v19];

        if ((v12 & 1) == 0)
        {
          v15 = [MEMORY[0x277CCAA00] defaultManager];
          [v15 removeItemAtURL:v13 error:0];
        }

        _Block_object_dispose(&v21, 8);
        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v27 objects:v40 count:16];
    }

    while (v6);
  }

  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 postNotificationName:@"ICAttachmentModelDidDeleteHardLinksNotification" object:0];

  _Block_object_dispose(&v34, 8);
}

void __50__ICAttachmentModel_deletePreviewItemHardLinkURLs__block_invoke(uint64_t a1)
{
  v2 = [ICAccount allAccountsInContext:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __50__ICAttachmentModel_deletePreviewItemHardLinkURLs__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)hardLinkFolderURL
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__24;
  v26 = __Block_byref_object_dispose__24;
  v27 = 0;
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 managedObjectContext];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __38__ICAttachmentModel_hardLinkFolderURL__block_invoke;
  v21[3] = &unk_278194DE8;
  v21[4] = self;
  v21[5] = &v22;
  [v4 performBlockAndWait:v21];

  v5 = +[ICAccount accountUtilities];
  v6 = [v5 temporaryDirectoryURLForAccountIdentifier:v23[5]];

  v7 = [v6 URLByAppendingPathComponent:@"HardLinkURLTemp" isDirectory:1];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__24;
  v19 = __Block_byref_object_dispose__24;
  v20 = 0;
  v8 = [(ICAttachmentModel *)self attachment];
  v9 = [v8 managedObjectContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __38__ICAttachmentModel_hardLinkFolderURL__block_invoke_2;
  v14[3] = &unk_278194DE8;
  v14[4] = self;
  v14[5] = &v15;
  [v9 performBlockAndWait:v14];

  v10 = [v7 URLByAppendingPathComponent:v16[5] isDirectory:1];

  v11 = [(ICAttachmentModel *)self hardLinkVersion];
  v12 = [v10 URLByAppendingPathComponent:v11 isDirectory:1];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v22, 8);

  return v12;
}

void __38__ICAttachmentModel_hardLinkFolderURL__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) attachment];
  v2 = [v7 note];
  v3 = [v2 account];
  v4 = [v3 identifier];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __38__ICAttachmentModel_hardLinkFolderURL__block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) attachment];
  v2 = [v5 identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)previewItemURL
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__24;
  v12 = __Block_byref_object_dispose__24;
  v13 = 0;
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ICAttachmentModel_previewItemURL__block_invoke;
  v7[3] = &unk_278194D68;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __35__ICAttachmentModel_previewItemURL__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) needsFullSizePreview])
  {
    v2 = [*(a1 + 32) attachment];
    v3 = [v2 media];
    v4 = [v3 isPasswordProtected];

    if ((v4 & 1) == 0)
    {
      v21 = [*(a1 + 32) attachment];
      [v21 sizeWidth];
      v23 = v22;
      v24 = [*(a1 + 32) attachment];
      [v24 sizeHeight];
      v26 = v25;

      v27 = [*(a1 + 32) attachment];
      v12 = [v27 attachmentPreviewImageWithMinSize:v23 scale:{v26, 1.0}];

      v20 = [v12 orientedPreviewImageURL];
      goto LABEL_10;
    }
  }

  v5 = [*(a1 + 32) attachment];
  v6 = [v5 media];
  v7 = [v6 mediaURL];
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 32) attachment];
    v10 = [v9 media];
    v11 = [v10 isPasswordProtected];

    if ((v11 & 1) == 0)
    {
      v12 = [*(a1 + 32) attachment];
      v13 = [v12 media];
      v14 = [v13 prepareExportableMediaURL];
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

LABEL_11:
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
  }

  v17 = [*(a1 + 32) attachment];
  v18 = [v17 URL];

  v19 = [*(a1 + 32) attachment];
  v12 = v19;
  if (v18)
  {
    v20 = [v19 URL];
LABEL_10:
    v28 = *(*(a1 + 40) + 8);
    v13 = *(v28 + 40);
    *(v28 + 40) = v20;
    goto LABEL_11;
  }

  if (![v19 hasFallbackPDF])
  {
    goto LABEL_12;
  }

  v32 = [*(a1 + 32) attachment];
  v33 = [v32 isPasswordProtected];

  if ((v33 & 1) == 0)
  {
    v12 = [*(a1 + 32) attachment];
    v20 = [v12 fallbackPDFURL];
    goto LABEL_10;
  }

LABEL_13:
  v29 = [*(a1 + 32) generateHardLinkURLIfNecessaryForURL:*(*(*(a1 + 40) + 8) + 40)];
  v30 = *(*(a1 + 40) + 8);
  v31 = *(v30 + 40);
  *(v30 + 40) = v29;
}

- (id)generateTemporaryURLWithExtension:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentModel *)self hardLinkFolderURL];
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];
  v8 = [v5 URLByAppendingPathComponent:v7 isDirectory:0];

  v9 = [v8 URLByAppendingPathExtension:v4];

  v10 = [v9 pathExtension];
  LOBYTE(v7) = [v10 isEqualToString:v4];

  if ((v7 & 1) == 0)
  {
    v11 = [v9 URLByDeletingPathExtension];
    v12 = [v11 URLByAppendingPathExtension:v4];

    v9 = v12;
  }

  return v9;
}

- (id)generateHardLinkURLIfNecessaryForURL:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentModel *)self attachment];
  v6 = [v5 title];
  v7 = [(ICAttachmentModel *)self generateHardLinkURLIfNecessaryForURL:v4 withFileName:v6];

  return v7;
}

- (id)generateHardLinkURLIfNecessaryForURL:(id)a3 withFileName:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isFileURL] && objc_msgSend(v7, "length"))
  {
    v8 = [v7 ic_sanitizedFilenameString];
    if ([v8 length] && (objc_msgSend(v6, "lastPathComponent"), v9 = objc_claimAutoreleasedReturnValue(), -[ICAttachmentModel attachment](self, "attachment"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "title"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v9, "isEqualToString:", v11), v11, v10, v9, (v12 & 1) == 0))
    {
      v14 = [(ICAttachmentModel *)self hardLinkFolderURL];
      v13 = [v14 URLByAppendingPathComponent:v8 isDirectory:0];

      v15 = [v6 pathExtension];
      v16 = [(ICAttachmentModel *)self correctedHardlinkURLFileExtensionForExtension:v15];

      v17 = [v13 pathExtension];
      v18 = [v17 isEqualToString:v16];

      if ((v18 & 1) == 0)
      {
        v19 = [v13 URLByAppendingPathExtension:v16];

        v13 = v19;
      }

      if (([v13 checkResourceIsReachableAndReturnError:0] & 1) == 0)
      {
        v20 = [MEMORY[0x277CCAA00] defaultManager];
        v21 = [v13 URLByDeletingLastPathComponent];
        [v20 removeItemAtURL:v21 error:0];

        v22 = [v13 URLByDeletingLastPathComponent];
        v23 = [v22 path];
        v24 = [v20 fileExistsAtPath:v23];

        if ((v24 & 1) == 0)
        {
          v25 = [v13 URLByDeletingLastPathComponent];
          [v20 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:0];
        }

        v26 = [MEMORY[0x277CCAA00] defaultManager];
        v30 = 0;
        [v26 linkItemAtURL:v6 toURL:v13 error:&v30];
        v27 = v30;

        if (v27)
        {
          v28 = os_log_create("com.apple.notes", "Media");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v32 = v27;
            _os_log_impl(&dword_214D51000, v28, OS_LOG_TYPE_DEFAULT, "Error creating hard link for previewItemURL: %@", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      v13 = v6;
    }

    v6 = v13;
  }

  return v6;
}

- (id)previewItemTitle
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 title];

  return v3;
}

- (BOOL)supportsQuickLook
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 media];

  if (v4)
  {
    return 1;
  }

  v6 = [(ICAttachmentModel *)self attachment];
  v7 = [v6 hasFallbackPDF];

  return v7;
}

- (id)dataForQuickLook
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 media];

  v5 = [(ICAttachmentModel *)self attachment];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 media];
    v8 = [v7 decryptedData];

LABEL_5:
    goto LABEL_6;
  }

  v9 = [v5 hasFallbackPDF];

  if (v9)
  {
    v6 = [(ICAttachmentModel *)self attachment];
    v8 = [v6 fallbackPDFData];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)providerFileTypes
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICAttachmentModel *)self attachment];
  if ([v3 isPasswordProtected])
  {
    goto LABEL_6;
  }

  v4 = [(ICAttachmentModel *)self attachment];
  v5 = [v4 media];
  if (([v5 hasFile] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v6 = [(ICAttachmentModel *)self attachment];
  v7 = [v6 typeUTI];

  if (v7)
  {
    v8 = [(ICAttachmentModel *)self attachment];
    v9 = [v8 typeUTI];
    v12[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

    goto LABEL_8;
  }

LABEL_7:
  v10 = MEMORY[0x277CBEBF8];
LABEL_8:

  return v10;
}

- (id)fileURLForTypeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ICAttachmentModel *)self attachment];
  if (([v5 isPasswordProtected] & 1) == 0)
  {
    v7 = [(ICAttachmentModel *)self attachment];
    v8 = [v7 media];
    v9 = [v8 isValid];

    if (v9)
    {
      v5 = [(ICAttachmentModel *)self attachment];
      v10 = [v5 typeUTI];
      if ([v4 isEqualToString:v10])
      {

        goto LABEL_6;
      }

      if (!v4)
      {
        v6 = 0;
        goto LABEL_11;
      }

      v11 = [v4 length];

      if (!v11)
      {
LABEL_6:
        v5 = [(ICAttachmentModel *)self attachment];
        v10 = [v5 media];
        v6 = [v10 mediaURL];
LABEL_11:

        goto LABEL_12;
      }
    }

    v6 = 0;
    goto LABEL_13;
  }

  v6 = 0;
LABEL_12:

LABEL_13:

  return v6;
}

- (id)dataForTypeIdentifier:(id)a3
{
  v3 = [(ICAttachmentModel *)self fileURLForTypeIdentifier:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)mergeableDataForCopying:(id *)a3
{
  [(ICAttachmentModel *)self persistPendingChanges];
  v4 = [(ICAttachmentModel *)self attachment];
  v5 = [v4 mergeableData];

  return v5;
}

@end