@interface ICNote(UI)
+ (NSObject)duplicateNote:()UI intoFolder:isPasswordProtected:removeOriginalNote:;
+ (id)duplicateNote:()UI isPasswordProtected:removeOriginalNote:;
+ (id)newNoteWithAttributedString:()UI inFolder:error:;
+ (id)newNoteWithString:()UI inFolder:error:;
+ (void)redactNote:()UI;
+ (void)removeUsageOfHashtag:()UI;
+ (void)thumbnailImageForAttachment:()UI minSize:scale:appearanceType:requireAppearance:imageScaling:showAsFileIcon:isMovie:movieDuration:;
- (BOOL)convertTextInNoteBodyToHashtag:()UI;
- (BOOL)removeHashtag:()UI;
- (BOOL)shouldReleaseTextStorageWhenTurningIntoFault;
- (ICAirDropNoteActivityItemProvider)airDropActivityItemSource;
- (ICCalculateAccessibilityController)calculateAccessibilityController;
- (ICCalculateDocumentController)calculateDocumentController;
- (ICCollaborationColorManager)collaborationColorManager;
- (ICDocumentMergeController)documentMergeController;
- (ICTTTextContentStorage)textContentStorageCreateIfNeeded;
- (id)_icaxGalleryViewDescriptionForAttachment:()UI fromAttachments:orInlineAttachments:;
- (id)addHashtagToNoteBody:()UI onlyIfMissing:;
- (id)attachmentActivityItemsForSharing;
- (id)attachmentActivityItemsForSharingForRange:()UI;
- (id)attachmentFromInlineDrawingAttachment:()UI;
- (id)attachmentFromLegacyAttachmentFileWrapper:()UI;
- (id)attachmentFromObject:()UI createIfNecessary:;
- (id)attachmentFromRemoteFileWrapper:()UI;
- (id)attachmentFromStandardFileWrapper:()UI;
- (id)attachmentFromSystemPaperAttachment:()UI;
- (id)attributedStringForUTI:()UI inRange:;
- (id)calculatePreviewBehaviorUserDefaultsKey;
- (id)checklistStyleAccessibilityDescriptionForRange:()UI;
- (id)emphasisStyleAccessibilityDescriptionForRange:()UI;
- (id)firstAttachmentInTextStorage;
- (id)folderSystemImageName;
- (id)indentationStyleAccessibilityDescriptionForRange:()UI;
- (id)navigationBarIconWithSize:()UI;
- (id)noteActivityItemsForSharingWithNoteExporter:()UI;
- (id)rangesModifiedAfterTimestamp:()UI inTextStorage:;
- (id)searchableItemViewAttributeSet;
- (id)selectedInk;
- (id)textContentStorage;
- (id)textStorage;
- (id)textStorageWithoutCreating;
- (id)thumbnailImageWithMinSize:()UI scale:appearanceType:requireAppearance:imageScaling:showAsFileIcon:isMovie:movieDuration:attachment:;
- (uint64_t)_icaxItemNumberForParagraphAtLocation:()UI withStyle:inAttrString:;
- (uint64_t)appendAttributedString:()UI options:error:;
- (uint64_t)calculatePreviewBehavior;
- (uint64_t)copyValuesToNote:()UI;
- (uint64_t)hasMentionForParticipant:()UI;
- (uint64_t)ic_characterCountIncludingSpaces:()UI;
- (uint64_t)ic_hasLightBackground;
- (uint64_t)ic_lineCount;
- (uint64_t)ic_wordCount;
- (uint64_t)isCalculateMathEnabled;
- (uint64_t)isDrawingStroke;
- (uint64_t)isFastSyncSessionActive;
- (uint64_t)isHandwritingRecognitionEnabled;
- (uint64_t)isHashtagRowAtRange:()UI outRangeForAppending:outIndex:forHashtagAttachment:outHashtagCount:;
- (uint64_t)noteDidClearDecryptedData;
- (uint64_t)noteWillTurnIntoFault;
- (uint64_t)preventLockReason;
- (uint64_t)primaryWritingDirection;
- (uint64_t)saveAfterDelay;
- (uint64_t)setHandwritingRecognitionEnabled:()UI;
- (uint64_t)updateModificationDateAndChangeCount;
- (uint64_t)updateModificationDateAndChangeCountAndSaveAfterDelay;
- (uint64_t)updateModificationDateAndChangeCountAndSaveImmediately;
- (uint64_t)updateThumbnailAttachmentIdentifier;
- (void)_updateTextViewToPaperIfNecessary;
- (void)announceAccessibilitySelectionChangedByMerge;
- (void)announceAccessibilitySelectionChangedByMergeWithSavedSelections:()UI beforeMergeTimestamp:;
- (void)applyOutlineState;
- (void)createMissingAttachmentsInTextStorage;
- (void)fetchThumbnailImageWithMinSize:()UI scale:cache:appearanceInfo:cacheKey:processingBlock:completionBlock:;
- (void)filterAttachmentsInTextStorage:()UI range:;
- (void)formatExpressionsInAttributedString:()UI range:textStorageOffset:skipStaleExpressions:;
- (void)icaxGalleryViewCustomContentDescription;
- (void)markBlockAndInlineAttachmentsForDeletion:()UI inAttributedString:;
- (void)noteDidApplyAttachmentViewTypeToAllAttachments;
- (void)noteDidMergeNoteDocumentWithUserInfo:()UI;
- (void)noteDidReplaceDocument;
- (void)noteWillMergeDocumentWithUserInfo:()UI;
- (void)noteWillReleaseTextStorage;
- (void)notifyTextViewsNoteDidMerge;
- (void)notifyTextViewsNoteWillMerge;
- (void)outlineControllerCollapsedStateDidChange:()UI;
- (void)redactAuthorAttributionsToCurrentUser;
- (void)save;
- (void)saveOutlineState;
- (void)setCalculatePreviewBehavior:()UI;
- (void)setIsDrawingStroke:()UI;
- (void)setIsFastSyncSessionActive:()UI;
- (void)setSelectedInk:()UI;
- (void)textStorage:()UI didProcessEditing:range:changeInLength:;
- (void)textStorage:()UI willProcessEditing:range:changeInLength:;
- (void)textStorageDidChange:()UI;
- (void)textStorageWillChange:()UI;
- (void)updatePKDrawingsWithHandwritingRecognitionEnabled:()UI;
@end

@implementation ICNote(UI)

- (uint64_t)noteWillTurnIntoFault
{
  result = [a1 shouldReleaseTextStorageWhenTurningIntoFault];
  if (result)
  {
    [a1 setReservedForTextContentStorage:0];
    v3 = MEMORY[0x1E69E58C0];

    return [v3 cancelPreviousPerformRequestsWithTarget:a1 selector:sel_save object:0];
  }

  return result;
}

- (BOOL)shouldReleaseTextStorageWhenTurningIntoFault
{
  v2 = [a1 documentWithoutCreating];

  if (v2 && ![a1 shouldReleaseDocumentWhenTurningIntoFault])
  {
    return 0;
  }

  v3 = [a1 textStorageWithoutCreating];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    [v3 textLayoutManagers];
  }

  else
  {
    [v3 layoutManagers];
  }
  v4 = ;
  v5 = [v4 count];

  v6 = v5 == 0;
  return v6;
}

- (id)textStorageWithoutCreating
{
  v1 = [a1 textContentStorage];
  v2 = [v1 textStorage];

  return v2;
}

- (id)textContentStorage
{
  objc_opt_class();
  v2 = [a1 reservedForTextContentStorage];
  v3 = ICCheckedDynamicCast();

  return v3;
}

- (id)textStorage
{
  v1 = [a1 textContentStorageCreateIfNeeded];
  v2 = [v1 textStorage];

  return v2;
}

- (ICTTTextContentStorage)textContentStorageCreateIfNeeded
{
  v2 = [a1 textContentStorage];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = [a1 document];
    if (v4)
    {
      v5 = [[ICTTTextStorage alloc] initWithDocument:v4];
      [(ICTTTextStorage *)v5 setDelegate:a1];
      v6 = [ICTTTextContentStorage alloc];
      v7 = [a1 outlineState];
      v8 = [(ICTTTextContentStorage *)v6 initWithTextStorage:v5 outlineState:v7];

      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      v10 = [MEMORY[0x1E696AD80] ICOutlineControllerCollapsedStateDidChange];
      [v9 addObserver:a1 selector:sel_outlineControllerCollapsedStateDidChange_ name:v10 object:0];

      [a1 setReservedForTextContentStorage:v8];
      v3 = v8;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)noteDidReplaceDocument
{
  v4 = [a1 textStorageWithoutCreating];
  v2 = [a1 documentWithoutCreating];
  if (v4)
  {
    if (v2)
    {
      v3 = [v4 document];

      if (v3 != v2)
      {
        [v4 replaceWithDocument:v2];
      }
    }
  }
}

- (ICCalculateDocumentController)calculateDocumentController
{
  if (ICInternalSettingsIsMathEnabled() && ([a1 managedObjectContext], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "concurrencyType"), v2, v3 == 2) && (objc_msgSend(a1, "textStorage"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = objc_getAssociatedObject(a1, &calculateDocumentControllerHandle);
    if (!v5)
    {
      v5 = [[ICCalculateDocumentController alloc] initWithNote:a1];
      objc_setAssociatedObject(a1, &calculateDocumentControllerHandle, v5, 1);
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)calculatePreviewBehavior
{
  v2 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  v3 = [a1 calculatePreviewBehaviorUserDefaultsKey];
  v4 = [v2 integerForKey:v3];

  return v4;
}

- (id)calculatePreviewBehaviorUserDefaultsKey
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = [a1 identifier];
  v3 = NSStringFromSelector(sel_calculatePreviewBehavior);
  v4 = [v1 stringWithFormat:@"%@--%@", v2, v3];

  return v4;
}

- (ICDocumentMergeController)documentMergeController
{
  v2 = objc_getAssociatedObject(a1, &documentMergeController_documentMergeControllerHandle);
  if (!v2)
  {
    v2 = objc_alloc_init(ICDocumentMergeController);
    objc_setAssociatedObject(a1, &documentMergeController_documentMergeControllerHandle, v2, 1);
  }

  v3 = v2;

  return v3;
}

- (uint64_t)isHandwritingRecognitionEnabled
{
  v1 = objc_getAssociatedObject(a1, kICHandwritingRecognitionEnabledKey);
  v2 = [v1 BOOLValue];

  return v2;
}

- (ICCalculateAccessibilityController)calculateAccessibilityController
{
  if (ICInternalSettingsIsMathEnabled())
  {
    v2 = objc_getAssociatedObject(a1, &calculateAccessibilityControllerHandle);
    if (!v2)
    {
      v2 = [[ICCalculateAccessibilityController alloc] initWithNote:a1];
      objc_setAssociatedObject(a1, &calculateAccessibilityControllerHandle, v2, 1);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)isFastSyncSessionActive
{
  v1 = objc_getAssociatedObject(a1, kICIsFastSyncSessionActive);
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIsFastSyncSessionActive:()UI
{
  if ([a1 isFastSyncSessionActive] != a3)
  {
    v5 = os_log_create("com.apple.notes", "RealtimeCollaboration");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(ICNote(UI) *)a3 setIsFastSyncSessionActive:a1];
    }

    v6 = kICIsFastSyncSessionActive;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    objc_setAssociatedObject(a1, v6, v7, 3);
  }
}

- (void)noteWillReleaseTextStorage
{
  v2 = [a1 textStorageWithoutCreating];
  [v2 setIsZombie:1];
  [a1 discardCalculateDocumentController];
}

- (uint64_t)noteDidClearDecryptedData
{
  v2 = [a1 textStorageWithoutCreating];
  v3 = [v2 styler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [a1 textStorageWithoutCreating];
    v6 = [v5 styler];

    [v6 setNote:0];
  }

  return [a1 setReservedForTextContentStorage:0];
}

- (void)noteWillMergeDocumentWithUserInfo:()UI
{
  v10 = a3;
  v4 = [a1 textStorage];
  v5 = [v4 mergeableString];
  v6 = [v5 timestamp];
  v7 = [v6 copy];

  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:@"BeforeMergeTimestamp"];
  }

  v8 = [a1 textStorage];
  v9 = [v8 savedSelectionWithSelectionAffinity:0];

  if (v9)
  {
    [v10 setObject:v9 forKeyedSubscript:@"SavedSelections"];
  }

  [a1 notifyTextViewsNoteWillMerge];
}

- (id)rangesModifiedAfterTimestamp:()UI inTextStorage:
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a4;
  v7 = a3;
  v8 = [v5 array];
  v9 = [v6 mergeableString];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__ICNote_UI__rangesModifiedAfterTimestamp_inTextStorage___block_invoke;
  v13[3] = &unk_1E846A3E0;
  v14 = v8;
  v10 = v8;
  [v9 enumerateHighlightableRangesModifiedAfter:v7 includingAttributes:1 usingBlock:v13];

  v11 = [v10 copy];

  return v11;
}

- (void)noteDidMergeNoteDocumentWithUserInfo:()UI
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"SavedSelections"];
  v6 = [a1 textStorage];
  [v6 restoreSelection:v5];

  [a1 notifyTextViewsNoteDidMerge];
  v7 = [v4 objectForKeyedSubscript:@"BeforeMergeTimestamp"];

  v8 = [a1 textStorage];
  v9 = [a1 rangesModifiedAfterTimestamp:v7 inTextStorage:v8];

  if ([v9 count])
  {
    objc_opt_class();
    v10 = [a1 textStorage];
    v11 = [v10 styler];
    v12 = ICDynamicCast();

    v13 = [v12 authorHighlightsController];
    v14 = [a1 textStorage];
    v15 = [v14 ic_range];
    v17 = v16;
    v18 = [a1 textStorage];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __51__ICNote_UI__noteDidMergeNoteDocumentWithUserInfo___block_invoke;
    v20[3] = &unk_1E846A408;
    v21 = v9;
    v22 = v12;
    v23 = a1;
    v19 = v12;
    [v13 performHighlightUpdatesForRange:v15 inTextStorage:v17 updates:{v18, v20}];
  }

  [a1 announceAccessibilitySelectionChangedByMergeWithSavedSelections:v5 beforeMergeTimestamp:v7];
  [a1 applyOutlineState];
}

- (ICCollaborationColorManager)collaborationColorManager
{
  objc_opt_class();
  v2 = [a1 reservedForCollaborationColorManager];
  v3 = ICDynamicCast();

  if (!v3)
  {
    v3 = objc_alloc_init(ICCollaborationColorManager);
    [a1 setReservedForCollaborationColorManager:v3];
  }

  return v3;
}

- (uint64_t)ic_hasLightBackground
{
  v2 = [MEMORY[0x1E69DD1B8] ic_alwaysShowLightContent];
  if ([a1 prefersLightBackground] & 1) != 0 || (v2)
  {
    return 1;
  }

  v3 = MEMORY[0x1E69B7A58];

  return [v3 deviceIsVision];
}

- (uint64_t)hasMentionForParticipant:()UI
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v5 = [v4 ic_userRecordNameInNote:a1];
  v6 = [MEMORY[0x1E69B77E8] allUserRecordName];
  v7 = [a1 textStorage];
  v8 = [a1 managedObjectContext];
  v9 = [a1 textStorage];
  v10 = [v9 length];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__ICNote_UI__hasMentionForParticipant___block_invoke;
  v15[3] = &unk_1E846A430;
  v11 = v5;
  v16 = v11;
  v12 = v6;
  v17 = v12;
  v18 = &v19;
  [v7 ic_enumerateInlineAttachmentsInContext:v8 range:0 options:v10 usingBlock:{0, v15}];

  v13 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);

  return v13;
}

- (void)formatExpressionsInAttributedString:()UI range:textStorageOffset:skipStaleExpressions:
{
  v12 = a3;
  v13 = [a1 calculateDocumentController];
  [v13 formatExpressionsInAttributedString:v12 range:a4 textStorageOffset:a5 skipStaleExpressions:{a6, a7}];
}

- (void)outlineControllerCollapsedStateDidChange:()UI
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v6 = ICDynamicCast();

  v7 = [v6 textStorage];
  v8 = [v7 document];
  v9 = [a1 textStorageWithoutCreating];
  v10 = [v9 document];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    v12 = [a1 managedObjectContext];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__ICNote_UI__outlineControllerCollapsedStateDidChange___block_invoke;
    v13[3] = &unk_1E8468BA0;
    v13[4] = a1;
    [v12 performBlockAndWait:v13];
  }
}

- (void)setCalculatePreviewBehavior:()UI
{
  v5 = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  v6 = [a1 calculatePreviewBehaviorUserDefaultsKey];
  [v5 setInteger:a3 forKey:v6];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"ICNoteDidChangeCalculatePreviewBehavior" object:a1];
}

- (uint64_t)isCalculateMathEnabled
{
  v1 = [a1 calculateDocumentController];
  v2 = [v1 isCalculateMathEnabled];

  return v2;
}

- (uint64_t)primaryWritingDirection
{
  v1 = [a1 textStorage];
  v2 = [v1 attribute:*MEMORY[0x1E69B7600] atIndex:0 effectiveRange:0];

  if (v2)
  {
    v3 = [v2 layoutWritingDirection];
  }

  else
  {
    v3 = -1;
  }

  return v3;
}

- (id)noteActivityItemsForSharingWithNoteExporter:()UI
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [[ICNoteTopoTextActivityItemSource alloc] initWithNote:a1];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v16 = v4;
  objc_initWeak(&location, a1);
  v5 = [ICNoteStringActivityItemSource alloc];
  v6 = [a1 title];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __58__ICNote_UI__noteActivityItemsForSharingWithNoteExporter___block_invoke;
  v25[3] = &unk_1E846A458;
  objc_copyWeak(&v26, &location);
  v25[4] = a1;
  v18 = [(ICNoteStringActivityItemSource *)v5 initWithTitle:v6 attributedStringCreator:v25];

  if (v18)
  {
    [v3 addObject:v4];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [a1 attachmentActivityItemsForSharing];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [[ICFilterAttachmentActivityItemSource alloc] initAttachmentItem:*(*(&v21 + 1) + 8 * i)];
        if (v11)
        {
          [v3 addObject:v11];
        }

        else
        {
          [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"filterAttachmentActivityItemSource" functionName:"-[ICNote(UI) noteActivityItemsForSharingWithNoteExporter:]" simulateCrash:1 showAlert:0 format:@"Failed to create filter attachment activity item source"];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v8);
  }

  v12 = [[ICNoteHTMLActivityItemSource alloc] initWithNote:a1];
  [v3 addObject:v12];
  if (v19)
  {
    v13 = [[ICNoteRTFDActivityItemSource alloc] initWithNote:a1 noteExporter:v19];
    [v3 addObject:v13];
  }

  v14 = [v3 copy];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return v14;
}

- (ICAirDropNoteActivityItemProvider)airDropActivityItemSource
{
  v2 = [a1 ic_permanentObjectID];
  v3 = [ICAirDropNoteActivityItemProvider alloc];
  v4 = [a1 title];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__ICNote_UI__airDropActivityItemSource__block_invoke;
  v8[3] = &unk_1E846A480;
  v9 = v2;
  v5 = v2;
  v6 = [(ICAirDropNoteActivityItemProvider *)v3 initWithTitle:v4 airDropDocumentCreator:v8];

  return v6;
}

- (id)attachmentActivityItemsForSharing
{
  v2 = [a1 textStorage];
  v3 = [a1 attachmentActivityItemsForSharingForRange:{0, objc_msgSend(v2, "length")}];

  return v3;
}

- (id)attachmentActivityItemsForSharingForRange:()UI
{
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __56__ICNote_UI__attachmentActivityItemsForSharingForRange___block_invoke;
  v11[3] = &unk_1E846A4A8;
  v13 = a3;
  v14 = a4;
  v12 = v7;
  v8 = v7;
  [a1 enumerateAttachmentsInOrderUsingBlock:v11];
  v9 = [v8 copy];

  return v9;
}

+ (id)newNoteWithAttributedString:()UI inFolder:error:
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((folder) != nil)" functionName:"+[ICNote(UI) newNoteWithAttributedString:inFolder:error:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "folder"}];
  }

  v9 = [MEMORY[0x1E69B77F0] newEmptyNoteInFolder:v8];
  if ([v9 appendAttributedString:v7 options:7 error:a5])
  {
    v10 = [v9 textStorage];
    v11 = [v10 styler];

    objc_opt_class();
    v12 = ICDynamicCast();
    if (!v12)
    {
      v12 = objc_alloc_init(ICTextController);
      v13 = [v9 textStorage];
      [v13 setStyler:v12];
    }

    v14 = [v9 textStorage];
    [v14 beginEditing];

    v15 = [v9 textStorage];
    v16 = [v15 string];
    v17 = [v16 paragraphRangeForRange:{0, 0}];
    v19 = v18;

    v20 = [v9 textStorage];
    LODWORD(v16) = [(ICTextController *)v12 paragraphStyleForRange:v17 inTextView:v19 inTextStorage:0, v20];

    v21 = +[ICTextStyle noteDefaultNamedStyle];
    if (v16 == 3)
    {
      v22 = v21;
      if (v21 != 3)
      {
        v23 = [v9 textStorage];
        [(ICTextController *)v12 setTextStyle:v22 range:v17 inTextStorage:v19 inTextView:v23, 0];
      }
    }

    v24 = [v9 textStorage];
    [v24 endEditing];

    v25 = [v9 textStorage];
    [v25 fixupAfterEditing];

    v26 = [v9 textStorage];
    v27 = [v26 styler];

    if (v27 != v11)
    {
      v28 = [v9 textStorage];
      [v28 setStyler:v11];
    }

    [v9 updateChangeCountWithReason:@"Created note from string"];
    v29 = v9;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (id)newNoteWithString:()UI inFolder:error:
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((folder) != nil)" functionName:"+[ICNote(UI) newNoteWithString:inFolder:error:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "folder"}];
  }

  v9 = [MEMORY[0x1E69B77F0] newEmptyNoteInFolder:v8];
  [v9 updateChangeCountWithReason:@"Created note from string"];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = [MEMORY[0x1E69B78C0] paragraphStyleNamed:{+[ICTextStyle noteDefaultNamedStyle](ICTextStyle, "noteDefaultNamedStyle")}];
  [v10 setObject:v11 forKey:*MEMORY[0x1E69B7600]];

  v12 = [v7 paragraphRangeForRange:{0, 0}];
  v14 = v13;
  v15 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v7];
  [v15 setAttributes:v10 range:{v12, v14}];
  v16 = [v9 appendAttributedString:v15 error:a5];
  v17 = 0;
  if (v16)
  {
    v17 = v9;
  }

  return v17;
}

- (uint64_t)appendAttributedString:()UI options:error:
{
  v31[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [a1 textStorage];
  v10 = [a1 allowsNewTextLength:{objc_msgSend(v8, "length") + objc_msgSend(v9, "length")}];

  if (v10)
  {
    v11 = [a1 textStorage];
    v12 = [v11 styler];

    if (!v12)
    {
      v13 = objc_alloc_init(ICTextController);
      v14 = [a1 textStorage];
      [v14 setStyler:v13];
    }

    v15 = [a1 textStorage];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __51__ICNote_UI__appendAttributedString_options_error___block_invoke;
    v28[3] = &unk_1E8468F80;
    v28[4] = a1;
    v29 = v8;
    [v15 editWithAttributeOptions:a4 usingBlock:v28];

    v16 = [a1 textStorage];
    [v16 fixupAfterEditing];

    if (!v12)
    {
      v17 = [a1 textStorage];
      [v17 setStyler:0];
    }

    [a1 updateModificationDateAndChangeCount];
    v18 = [MEMORY[0x1E69B7800] sharedContext];
    v27 = 0;
    v19 = [v18 save:&v27];
    v20 = v27;

    if ((v19 & 1) == 0)
    {
      if (a5)
      {
        v21 = v20;
        *a5 = v20;
      }

      else
      {
        v25 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [ICNote(UI) appendAttributedString:options:error:];
        }
      }
    }
  }

  else
  {
    if (a5)
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E69B79F0];
      v30 = *MEMORY[0x1E69B7A00];
      v31[0] = @"Note length exceeded.";
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      *a5 = [v22 errorWithDomain:v23 code:204 userInfo:v24];
    }

    v19 = 0;
  }

  return v19;
}

- (id)attributedStringForUTI:()UI inRange:
{
  v8 = a3;
  v9 = [v8 conformsToType:*MEMORY[0x1E6982F40]];
  v10 = [a1 textStorage];
  v11 = v10;
  if (v10)
  {
    if (v9)
    {
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v12 = [v10 styler];
      objc_opt_class();
      v15 = ICDynamicCast();
      v16 = v15;
      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = objc_alloc_init(ICTextController);
      }

      v13 = v17;

      [v11 setStyler:v13];
      [(ICTTTextController *)v13 styleText:v11 inRange:a4 fixModelAttributes:a5, 0];
    }

    v18 = [v8 identifier];
    v19 = [v11 filteredAttributedStringForUTI:v18 range:{a4, a5}];

    if ((v9 & 1) == 0)
    {
      v20 = [v11 styler];

      if (v20 != v12)
      {
        [v11 setStyler:v12];
      }
    }

    v14 = v19;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (uint64_t)preventLockReason
{
  v2 = [a1 account];
  v3 = [v2 canPasswordProtectNotes];

  if (!v3)
  {
    return 6;
  }

  if ([a1 isSystemPaper])
  {
    return 4;
  }

  if ([a1 isSharedViaICloud])
  {
    return 5;
  }

  if ([a1 hasTags])
  {
    return 3;
  }

  if ([a1 containsAttachmentsUnsupportedInPasswordProtection])
  {
    return 2;
  }

  return 0;
}

+ (id)duplicateNote:()UI isPasswordProtected:removeOriginalNote:
{
  v8 = a3;
  v9 = [v8 folder];
  if (v9)
  {
    v10 = [a1 duplicateNote:v8 intoFolder:v9 isPasswordProtected:a4 removeOriginalNote:a5];
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "Move");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ICNote(UI) duplicateNote:v8 isPasswordProtected:? removeOriginalNote:?];
    }

    v10 = 0;
  }

  return v10;
}

+ (NSObject)duplicateNote:()UI intoFolder:isPasswordProtected:removeOriginalNote:
{
  v54 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = os_log_create("com.apple.notes", "Move");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 shortLoggingDescription];
    v13 = [v10 shortLoggingDescription];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:a5];
    v15 = [MEMORY[0x1E696AD98] numberWithBool:a6];
    v42 = 138413570;
    v43 = v12;
    v44 = 2112;
    v45 = v13;
    v46 = 2112;
    v47 = v14;
    v48 = 2112;
    v50 = 2080;
    v49 = v15;
    v51 = "+[ICNote(UI) duplicateNote:intoFolder:isPasswordProtected:removeOriginalNote:]";
    v52 = 1024;
    v53 = 764;
    _os_log_impl(&dword_1D4171000, v11, OS_LOG_TYPE_DEFAULT, "Duplicating note… {originalNote: %@, folder: %@, isPasswordProtected: %@, removingOriginalNote: %@}%s:%d", &v42, 0x3Au);
  }

  if (a5 && [v9 preventLockReason])
  {
    v16 = os_log_create("com.apple.notes", "Move");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ICNote(UI) duplicateNote:v9 intoFolder:? isPasswordProtected:? removeOriginalNote:?];
    }

    v17 = 0;
    v18 = v16;
    goto LABEL_33;
  }

  v19 = [MEMORY[0x1E696AD88] defaultCenter];
  v20 = *MEMORY[0x1E695D358];
  v21 = [v9 managedObjectContext];
  v18 = [v19 addObserverForName:v20 object:v21 queue:0 usingBlock:&__block_literal_global_25];

  v22 = [MEMORY[0x1E69B76D0] sharedState];
  [v22 beginBlockingDeauthentication];

  [v9 persistPendingChangesRecursively];
  [v9 mergeUnappliedEncryptedRecordRecursively];
  v23 = [v9 managedObjectContext];
  [v23 refreshAllObjects];

  v16 = [MEMORY[0x1E69B77F0] newEmptyNoteInFolder:v10];
  if (!a5)
  {
    if ([v9 copyValuesToNote:v16])
    {
      goto LABEL_16;
    }

LABEL_27:
    v39 = os_log_create("com.apple.notes", "Move");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      +[ICNote(UI) duplicateNote:intoFolder:isPasswordProtected:removeOriginalNote:];
    }

    goto LABEL_31;
  }

  v24 = [v9 isPasswordProtected];
  [v16 setIsPasswordProtected:1];
  if (v24)
  {
    v25 = [v16 cryptoStrategy];
    [v25 initializeCryptoPropertiesFromObject:v9];
  }

  else
  {
    [v16 initializeCryptoProperties];
  }

  if (([v9 copyValuesToNote:v16] & 1) == 0)
  {
    goto LABEL_27;
  }

  [v16 setSnippet:0];
LABEL_16:
  v26 = [v16 noteData];
  [v26 setNeedsToBeSaved:1];

  v27 = [v16 noteData];
  v28 = [v27 saveNoteDataIfNeeded];

  if ((v28 & 1) == 0)
  {
    v39 = os_log_create("com.apple.notes", "Move");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      +[ICNote(UI) duplicateNote:intoFolder:isPasswordProtected:removeOriginalNote:];
    }

LABEL_31:

    [MEMORY[0x1E69B77F0] deleteNote:v16];
    v40 = [MEMORY[0x1E696AD88] defaultCenter];
    [v40 removeObserver:v18];

    v38 = [MEMORY[0x1E69B76D0] sharedState];
    [v38 endBlockingDeauthentication];
LABEL_32:

    v17 = 0;
    goto LABEL_33;
  }

  [v16 updateChangeCountWithReason:@"Duplicated note"];
  if ([v16 wantsUserSpecificRecord])
  {
    [v16 updateUserSpecificChangeCountWithReason:@"Duplicated note"];
  }

  v29 = [MEMORY[0x1E69B76D0] sharedState];
  [v29 endBlockingDeauthentication];

  if (a6)
  {
    if ([v9 isPasswordProtected])
    {
      v30 = [MEMORY[0x1E69B76D0] sharedState];
      [v30 setCachedMainKey:0 forObject:v9];
    }

    [MEMORY[0x1E69B7778] changeLinkDestinationFromNote:v9 toNote:v16];
    [v9 markForDeletion];
    [v9 updateChangeCountWithReason:@"Duplicated note"];
    [MEMORY[0x1E69B77F0] redactNote:v9];
    [MEMORY[0x1E69B77F0] deleteNote:v9];
    v31 = [v9 account];
    v32 = [v31 trashFolder];
    [v9 setFolder:v32];

    v33 = [MEMORY[0x1E695DF00] now];
    [v9 setFolderModificationDate:v33];

    [v9 updateChangeCountWithReason:@"Duplicated note"];
  }

  v34 = [MEMORY[0x1E696AD88] defaultCenter];
  [v34 removeObserver:v18];

  v35 = [v9 managedObjectContext];
  v36 = [v35 ic_saveWithLogDescription:@"Duplicated note"];

  v37 = os_log_create("com.apple.notes", "Move");
  v38 = v37;
  if ((v36 & 1) == 0)
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      +[ICNote(UI) duplicateNote:intoFolder:isPasswordProtected:removeOriginalNote:];
    }

    goto LABEL_32;
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    +[ICNote(UI) duplicateNote:intoFolder:isPasswordProtected:removeOriginalNote:];
  }

  v16 = v16;
  v17 = v16;
LABEL_33:

  return v17;
}

+ (void)redactNote:()UI
{
  v75 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 mergeableString];
  v5 = [v3 textStorage];
  v6 = [v5 ic_range];
  [v4 replaceCharactersInRange:v6 withString:{v7, &stru_1F4F94F00}];

  [v3 setTitle:0];
  [v3 setSnippet:0];
  [v3 setReplicaIDToUserIDDictData:0];
  [v3 setReplicaIDToNotesVersionData:0];
  [v3 setActivityEventsData:0];
  [v3 setOutlineStateData:0];
  v54 = v3;
  v8 = [v3 attachments];
  v9 = [v8 copy];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v9;
  v57 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v57)
  {
    v56 = *v67;
    v60 = *MEMORY[0x1E6982F28];
    *&v10 = 138412802;
    v53 = v10;
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v67 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v66 + 1) + 8 * i);
        v13 = [v12 mergeableData];

        if (v13)
        {
          v14 = objc_alloc_init(MEMORY[0x1E695DEF0]);
          [v12 setMergeableData:v14];
        }

        [v12 setTitle:0];
        [v12 setHandwritingSummary:0];
        [v12 setImageClassificationSummary:0];
        [v12 setOcrSummary:0];
        v15 = [v12 previewImages];
        v16 = [v15 copy];

        if (v16)
        {
          v58 = v16;
          v59 = i;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v17 = v16;
          v18 = [v17 countByEnumeratingWithState:&v62 objects:v73 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v63;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v63 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v62 + 1) + 8 * j);
                [v22 invalidateOrientedImage];
                DeviceRGB = CGColorSpaceCreateDeviceRGB();
                [v22 width];
                v25 = v24;
                [v22 height];
                v27 = CGBitmapContextCreate(0, v25, v26, 8uLL, 0, DeviceRGB, 2u);
                *components = xmmword_1D4434138;
                *&components[2] = unk_1D4434148;
                v28 = CGColorCreate(DeviceRGB, components);
                CGContextSetFillColorWithColor(v27, v28);
                CGColorRelease(v28);
                CGColorSpaceRelease(DeviceRGB);
                [v22 width];
                v30 = v29;
                [v22 height];
                v76.size.height = v31;
                v76.origin.x = 0.0;
                v76.origin.y = 0.0;
                v76.size.width = v30;
                CGContextFillRect(v27, v76);
                Image = CGBitmapContextCreateImage(v27);
                v33 = [v60 identifier];
                v34 = ICDataFromCGImage();

                CGImageRelease(Image);
                CGContextRelease(v27);
                [v22 width];
                v36 = v35;
                [v22 height];
                v38 = v37;
                [v22 scale];
                if ([v22 setImageData:v34 withSize:0 scale:v36 appearanceType:{v38, v39}])
                {
                  [v12 updateChangeCountWithReason:@"Redacted note"];
                }

                else
                {
                  v40 = os_log_create("com.apple.notes", "PreviewGeneration");
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                  {
                    [(ICNote(UI) *)v70 redactNote:v12, &v71, v40];
                  }
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v62 objects:v73 count:16];
            }

            while (v19);
          }

          v16 = v58;
          i = v59;
        }

        v41 = [v12 media];

        if (v41)
        {
          v42 = [v12 media];
          v43 = [v42 hasFile];

          if (v43)
          {
            v44 = [v12 media];
            v45 = objc_alloc_init(MEMORY[0x1E695DEF0]);
            v61 = 0;
            v46 = [v44 writeData:v45 error:&v61];
            v47 = v61;

            if ((v46 & 1) == 0)
            {
              v48 = os_log_create("com.apple.notes", "Media");
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                v49 = [v12 media];
                v50 = [v49 identifier];
                v51 = [v54 identifier];
                LODWORD(components[0]) = v53;
                *(components + 4) = v50;
                WORD2(components[1]) = 2112;
                *(&components[1] + 6) = v51;
                HIWORD(components[2]) = 2112;
                *&components[3] = v47;
                _os_log_error_impl(&dword_1D4171000, v48, OS_LOG_TYPE_ERROR, "Error redacting media %@ for note %@ error: %@", components, 0x20u);
              }
            }
          }
        }
      }

      v57 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v57);
  }

  v52 = [v54 managedObjectContext];
  [v52 setShouldPerformSecureOperation:1];
}

- (void)redactAuthorAttributionsToCurrentUser
{
  v3.receiver = a1;
  v3.super_class = &off_1F504BD70;
  objc_msgSendSuper2(&v3, sel_redactAuthorAttributionsToCurrentUser);
  v2 = [a1 textStorage];
  [v2 redactAuthorAttributionsToCurrentUser];
}

- (void)_updateTextViewToPaperIfNecessary
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [a1 textStorage];
  v2 = [v1 textViews];

  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (+[ICSystemPaperTextAttachment isEnabled](ICSystemPaperTextAttachment, "isEnabled") && ([v7 isPaperEnabled] & 1) == 0)
        {
          [v7 setPaperEnabled:1];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)attachmentFromObject:()UI createIfNecessary:
{
  v6 = a3;
  if ([objc_opt_class() isInlineAttachment:v6])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 attachment], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
    }

    else
    {
      if ([v6 conformsToProtocol:&unk_1F4FC5D80])
      {
        v8 = [a1 inlineAttachmentWithICTTAttachment:v6];
      }

      else
      {
        v8 = 0;
      }

      v10 = 0;
      if (v8 || !a4)
      {
        goto LABEL_34;
      }

      v13 = v6;
      v14 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [ICNote(UI) attachmentFromObject:v13 createIfNecessary:a1];
      }

      v15 = [v13 attachmentIdentifier];
      if ([v15 length])
      {
        v8 = [a1 addInlineAttachmentWithIdentifier:v15];
        [v8 setNeedsInitialFetchFromCloud:1];
        v16 = [v13 attachmentUTI];
        [v8 setTypeUTI:v16];

        v17 = [v8 typeUTI];

        if (!v17)
        {
          v18 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [ICNote(UI) attachmentFromObject:v13 createIfNecessary:a1];
          }

          [v8 setTypeUTI:*MEMORY[0x1E69B7550]];
        }
      }

      else
      {
        v22 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [ICNote(UI) attachmentFromObject:v13 createIfNecessary:a1];
        }

        v8 = 0;
      }
    }

    goto LABEL_33;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a1 _updateTextViewToPaperIfNecessary];
      v9 = v6;
      v10 = [v9 attachment];
      if (!v10 && a4)
      {
        v10 = [a1 attachmentFromSystemPaperAttachment:v9];
      }

      goto LABEL_16;
    }

    objc_opt_class();
    v19 = ICDynamicCast();
    v20 = [v19 ic_isSystemTextAttachment];

    if (v20)
    {
      v21 = v6;
      goto LABEL_44;
    }

    if ([v6 conformsToProtocol:&unk_1F4FC5D80])
    {
      v9 = v6;
      v26 = [v9 attachmentIdentifier];
      if (v26 && (v27 = v26, [v9 attachmentUTI], v28 = objc_claimAutoreleasedReturnValue(), v28, v27, v28))
      {
        v29 = [v9 attachmentIdentifier];
        v10 = [a1 attachmentWithIdentifier:v29];

        if (v10)
        {
LABEL_55:
          v34 = [v9 attachmentUTI];
          [v10 setTypeUTI:v34];

          v35 = [v10 typeUTI];
          v36 = [v35 isEqualToString:*MEMORY[0x1E69B7450]];

          if (v36)
          {
            [a1 _updateTextViewToPaperIfNecessary];
          }

          v37 = [v10 typeUTI];

          if (v37)
          {
            goto LABEL_16;
          }

          v12 = [*MEMORY[0x1E6982E30] identifier];
          [v10 setTypeUTI:v12];
          goto LABEL_9;
        }

        if (a4)
        {
          v30 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            [ICNote(UI) attachmentFromObject:createIfNecessary:];
          }

          v31 = [v9 attachmentIdentifier];
          v10 = [a1 addAttachmentWithIdentifier:v31];

          v32 = [MEMORY[0x1E695DF00] distantPast];
          [v10 setModificationDate:v32];

          v33 = [MEMORY[0x1E695DF00] distantPast];
          [v10 setCreationDate:v33];

          [v10 setNeedsInitialFetchFromCloud:1];
          goto LABEL_55;
        }
      }

      else
      {
        v41 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          [ICNote(UI) attachmentFromObject:createIfNecessary:];
        }

        [MEMORY[0x1E69B7AC0] postBasicEvent:20];
      }
    }

    else if (a4)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![ICTextAttachment textAttachmentIsContent:v6])
      {
        v8 = 0;
LABEL_33:
        v10 = 0;
        goto LABEL_34;
      }

      v9 = v6;
      v38 = [v9 fileType];
      v39 = [v38 isEqualToString:*MEMORY[0x1E69B7458]];

      if (v39)
      {
        v12 = [v9 contents];
        v40 = [a1 attachmentFromTableData:v12];
      }

      else
      {
        v42 = [v9 image];

        if (v42)
        {
          v43 = MEMORY[0x1E6982C40];
          v44 = [v9 image];
          v45 = [v43 typeWithIdentifier:{CGImageGetUTType(objc_msgSend(v44, "ic_CGImage"))}];
          v46 = [v45 conformsToType:*MEMORY[0x1E6982E58]];

          if (v46)
          {
            v47 = [v9 image];
            v48 = UIImageJPEGRepresentation(v47, 1.0);

            v49 = [objc_alloc(MEMORY[0x1E696AC38]) initRegularFileWithContents:v48];
            [v49 setPreferredFilename:@"Attachment.jpeg"];
            [v9 setFileWrapper:v49];
          }
        }

        v12 = [v9 fileWrapper];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = [a1 attachmentFromLegacyAttachmentFileWrapper:v12];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v40 = [a1 attachmentFromRemoteFileWrapper:v12];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 && !v12)
            {
              v10 = 0;
              goto LABEL_9;
            }

            v40 = [a1 attachmentFromStandardFileWrapper:v12];
          }
        }
      }

      v10 = v40;
      goto LABEL_9;
    }

    v21 = 0;
    goto LABEL_44;
  }

  v9 = v6;
  v10 = [v9 attachment];
  if (v10 || !a4)
  {
    goto LABEL_16;
  }

  v10 = [a1 attachmentFromInlineDrawingAttachment:v9];
  objc_opt_class();
  v11 = [v10 attachmentModel];
  v12 = ICDynamicCast();

  [v12 setHandwritingRecognitionEnabled:{objc_msgSend(a1, "isHandwritingRecognitionEnabled")}];
LABEL_9:

LABEL_16:
  v8 = 0;
LABEL_34:
  if (v8)
  {
    v23 = v8;
  }

  else
  {
    v23 = v10;
  }

  v21 = v23;
  v24 = [v21 note];

  if (v24 != a1)
  {
    [v21 setNote:a1];
  }

  if (v8)
  {
    [a1 addInlineAttachmentsObject:v8];
  }

  else if (v10)
  {
    [a1 addAttachmentsObject:v10];
  }

LABEL_44:

  return v21;
}

- (id)attachmentFromInlineDrawingAttachment:()UI
{
  v4 = *MEMORY[0x1E69B7438];
  v5 = a3;
  v6 = [a1 addAttachmentWithUTI:v4];
  v7 = [v6 attachmentModel];
  v8 = [v5 contents];

  [v7 mergeWithMergeableData:v8];
  [v6 updateChangeCountWithReason:@"Created attachment from inline drawing"];

  return v6;
}

- (id)attachmentFromSystemPaperAttachment:()UI
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F4FDCDE8])
  {
    v5 = [v4 _paperIdentifier];
    v6 = [a1 addSystemPaperAttachmentWithIdentifier:v5];
    [v6 updateChangeCountWithReason:@"Created attachment from System Paper"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)attachmentFromStandardFileWrapper:()UI
{
  v1 = [a1 addAttachmentWithFileWrapper:?];
  [v1 updateChangeCountWithReason:@"Created attachment from file wrapper"];
  v2 = [v1 media];
  [v2 updateChangeCountWithReason:@"Created attachment from file wrapper"];

  return v1;
}

- (id)attachmentFromLegacyAttachmentFileWrapper:()UI
{
  v4 = a3;
  v5 = MEMORY[0x1E69B7680];
  v6 = [v4 attachmentIdentifier];
  v7 = [a1 managedObjectContext];
  v8 = [v5 attachmentWithIdentifier:v6 context:v7];

  if (!v8)
  {
    v9 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICNote(UI) attachmentFromLegacyAttachmentFileWrapper:v4];
    }
  }

  return v8;
}

- (id)attachmentFromRemoteFileWrapper:()UI
{
  v4 = [a3 remoteURL];
  v5 = [a1 addAttachmentWithRemoteFileURL:v4];

  v6 = [MEMORY[0x1E69B7870] sharedDownloader];
  [v6 downloadRemoteFileForAttachment:v5];

  [v5 updateChangeCountWithReason:@"Created attachment from remote file wrapper"];

  return v5;
}

- (uint64_t)updateThumbnailAttachmentIdentifier
{
  v2 = [a1 thumbnailAttachmentIdentifier];
  if (v2 || ([a1 isPasswordProtected] & 1) != 0)
  {
  }

  else if (([a1 isDeletedOrInTrash] & 1) == 0)
  {
    v4 = [a1 attachments];
    v5 = [v4 objectsPassingTest:&__block_literal_global_246];
    v6 = [v5 count];

    if (v6)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__20;
      v17 = __Block_byref_object_dispose__20;
      v18 = 0;
      v7 = [a1 textStorage];
      v8 = [v7 length];
      v9 = *MEMORY[0x1E69DB5F8];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __49__ICNote_UI__updateThumbnailAttachmentIdentifier__block_invoke_2;
      v12[3] = &unk_1E846A510;
      v12[4] = a1;
      v12[5] = &v13;
      [v7 enumerateAttribute:v9 inRange:0 options:v8 usingBlock:{0, v12}];
      if (v14[5])
      {
        v10 = [a1 thumbnailAttachmentIdentifier];
        v11 = [v10 isEqualToString:v14[5]];

        if ((v11 & 1) == 0)
        {
          [a1 setThumbnailAttachmentIdentifier:v14[5]];

          _Block_object_dispose(&v13, 8);
          return 1;
        }
      }

      _Block_object_dispose(&v13, 8);
    }
  }

  return 0;
}

- (id)thumbnailImageWithMinSize:()UI scale:appearanceType:requireAppearance:imageScaling:showAsFileIcon:isMovie:movieDuration:attachment:
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__20;
  v20 = __Block_byref_object_dispose__20;
  v21 = 0;
  *a8 = 0;
  *a9 = 0;
  *a10 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __140__ICNote_UI__thumbnailImageWithMinSize_scale_appearanceType_requireAppearance_imageScaling_showAsFileIcon_isMovie_movieDuration_attachment___block_invoke;
  v14[3] = &unk_1E846A538;
  v14[4] = &v16;
  *&v14[5] = a2;
  *&v14[6] = a3;
  *&v14[7] = a4;
  v15 = a7;
  v14[8] = a6;
  v14[9] = a8;
  v14[10] = a9;
  v14[11] = a10;
  v14[12] = a11;
  v14[13] = a12;
  [a1 enumerateAttachmentsInOrderUsingBlock:v14];
  v12 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v12;
}

+ (void)thumbnailImageForAttachment:()UI minSize:scale:appearanceType:requireAppearance:imageScaling:showAsFileIcon:isMovie:movieDuration:
{
  v15 = 0;
  v9 = [a3 thumbnailImage:&v15 minSize:a9 scale:? appearanceType:? requireAppearance:? imageScaling:? showAsFileIcon:? isMovie:? movieDuration:?];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (void)fetchThumbnailImageWithMinSize:()UI scale:cache:appearanceInfo:cacheKey:processingBlock:completionBlock:
{
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v23 = [a1 thumbnailAttachmentIdentifier];
  if (v23)
  {
    v24 = [a1 attachmentWithIdentifier:v23];
    v25 = [v24 attachmentModel];
    v26 = [v25 showThumbnailInNoteList];

    if (v26)
    {
      v27 = [v24 attachmentModel];
      v28 = [v27 genericListThumbnailCreator];
      v29 = [v24 fetchThumbnailImageWithMinSize:v19 scale:v18 appearanceInfo:v20 cache:v21 cacheKey:v22 processingBlock:v28 completionBlock:a2 fallbackBlock:a3 aboutToLoadHandler:{a4, 0}];
      *(v42 + 24) = v29;
    }

    else
    {
      [a1 setThumbnailAttachmentIdentifier:0];
    }
  }

  if ((v42[3] & 1) == 0 && ([a1 isPasswordProtected] & 1) == 0)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __113__ICNote_UI__fetchThumbnailImageWithMinSize_scale_cache_appearanceInfo_cacheKey_processingBlock_completionBlock___block_invoke;
    v30[3] = &unk_1E846A560;
    v37 = &v41;
    v38 = a2;
    v39 = a3;
    v40 = a4;
    v31 = v19;
    v32 = v18;
    v33 = v20;
    v35 = v21;
    v36 = v22;
    v34 = a1;
    [a1 enumerateAttachmentsInOrderUsingBlock:v30];
  }

  _Block_object_dispose(&v41, 8);
}

- (void)noteDidApplyAttachmentViewTypeToAllAttachments
{
  v1 = [a1 textStorage];
  v26 = [v1 wantsUndoCommands];
  v28 = v1;
  [v1 setWantsUndoCommands:0];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3010000000;
  v37 = &unk_1D449C2A9;
  v38 = xmmword_1D4433FC0;
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [v1 length];
  v5 = *MEMORY[0x1E69DB5F8];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __60__ICNote_UI__noteDidApplyAttachmentViewTypeToAllAttachments__block_invoke;
  v30[3] = &unk_1E846A588;
  v6 = v2;
  v31 = v6;
  v29 = v3;
  v32 = v29;
  v33 = &v34;
  [v28 enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0, v30}];
  [v28 beginEditing];
  if ([a1 attachmentViewType] == 1 && objc_msgSend(v29, "count") >= 2)
  {
    v24 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v25 = 0;
    for (i = 0; i < [v29 count] - 1; ++i)
    {
      v8 = [v6 objectAtIndexedSubscript:i];
      v9 = [v6 objectAtIndexedSubscript:i + 1];
      if ([v8 supportsMultipleThumbnailsOnSameLine])
      {
        v10 = objc_opt_class();
        if (v10 == objc_opt_class())
        {
          v11 = [v29 objectAtIndexedSubscript:i];
          v12 = [v11 rangeValue];
          v14 = v13;

          v15 = [v29 objectAtIndexedSubscript:i + 1];
          v16 = [v15 rangeValue];

          if (v16 - (v12 + v14) == 1)
          {
            v17 = [v28 string];
            v18 = v12 - v25;
            v19 = [v17 substringWithRange:{v12 - v25 + v14, 1}];
            v20 = [v19 componentsSeparatedByCharactersInSet:v24];
            v21 = [v20 count];

            if (v21 == 2)
            {
              [v28 replaceCharactersInRange:v18 + v14 withString:{1, &stru_1F4F94F00}];
              ++v25;
            }
          }
        }
      }
    }

    v35[5] -= v25;
  }

  [v28 edited:1 range:v35[4] changeInLength:{v35[5], 0}];
  [v28 endEditing];
  [v28 setWantsUndoCommands:v26];
  v22 = [a1 noteData];
  [v22 setNeedsToBeSaved:1];

  v23 = [a1 noteData];
  [v23 saveNoteDataIfNeeded];

  _Block_object_dispose(&v34, 8);
}

- (uint64_t)copyValuesToNote:()UI
{
  v4 = a3;
  v5 = [v4 managedObjectContext];
  [v5 refreshObject:v4 mergeChanges:1];

  v6 = [a1 creationDate];
  [v4 setCreationDate:v6];

  v7 = [a1 modificationDate];
  [v4 setModificationDate:v7];

  v8 = [a1 snippet];
  [v4 setSnippet:v8];

  v9 = [a1 title];
  [v4 setTitle:v9];

  [v4 setAttachmentViewType:{objc_msgSend(a1, "attachmentViewType")}];
  [v4 setPaperStyleType:{objc_msgSend(a1, "paperStyleType")}];
  [v4 setIsPinned:{objc_msgSend(a1, "isPinned")}];
  [v4 setPreferredBackgroundType:{objc_msgSend(a1, "preferredBackgroundType")}];
  v10 = [a1 replicaIDToUserIDDictData];
  [v4 setReplicaIDToUserIDDictData:v10];

  v11 = [a1 replicaIDToNotesVersionData];
  [v4 setReplicaIDToNotesVersionData:v11];

  v12 = [a1 activityEventsData];
  [v4 setActivityEventsData:v12];

  v13 = [a1 outlineStateData];
  [v4 setOutlineStateData:v13];

  [v4 setIsSystemPaper:{objc_msgSend(a1, "isSystemPaper")}];
  v14 = [a1 hostApplicationIdentifier];
  [v4 setHostApplicationIdentifier:v14];

  v15 = objc_alloc(MEMORY[0x1E69B7730]);
  v16 = [a1 identifier];
  v17 = [v15 initWithObjectIdentifier:v16 forPasteboard:0];

  v18 = [a1 textStorage];
  v19 = [v18 mergeableString];
  v20 = [v19 attributedString];
  v21 = [v4 managedObjectContext];
  v32 = 0;
  v22 = [v20 ic_serializeWithFlags:1 dataPersister:v17 managedObjectContext:v21 error:&v32];
  v23 = v32;

  v24 = [a1 noteData];
  v25 = [v24 data];

  if (v25 && !v22)
  {
    v26 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ICNote(UI) copyValuesToNote:a1];
    }

LABEL_11:
    v29 = 0;
    v27 = v26;
    v28 = v23;
    goto LABEL_12;
  }

  if (!v22)
  {
    v26 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ICNote(UI) copyValuesToNote:];
    }

    goto LABEL_11;
  }

  v31 = v23;
  v27 = [MEMORY[0x1E696AAB0] ic_attributedStringWithData:v22 dataPersister:v17 createNewAttachmentsInNote:v4 error:&v31];
  v28 = v31;

  if (v27)
  {
    v26 = [v4 textStorage];
    if ([v26 wantsUndoCommands])
    {
      [v26 setWantsUndoCommands:0];
      [v26 replaceCharactersInRange:0 withAttributedString:[v26 length], v27];
      v29 = 1;
      [v26 setWantsUndoCommands:1];
    }

    else
    {
      [v26 replaceCharactersInRange:0 withAttributedString:[v26 length], v27];
      v29 = 1;
    }
  }

  else
  {
    if (!v28)
    {
      v29 = 0;
      goto LABEL_13;
    }

    v26 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ICNote(UI) copyValuesToNote:v28];
    }

    v29 = 0;
  }

LABEL_12:

LABEL_13:
  [v17 deleteDataFiles];

  return v29;
}

- (void)save
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)saveOutlineState
{
  v9 = [a1 outlineState];
  v2 = objc_alloc(MEMORY[0x1E69B7820]);
  v3 = [a1 textContentStorage];
  v4 = [v3 outlineController];
  v5 = [v4 collapsedUUIDs];
  v6 = [v2 initWithCollapsedUUIDs:v5];

  if ([v9 mergeWithState:v6])
  {
    v7 = [v9 data];
    [a1 setOutlineStateData:v7];

    [a1 updateUserSpecificChangeCountWithReason:@"Updated outline state"];
    v8 = [a1 managedObjectContext];
    [v8 ic_saveWithLogDescription:@"Updated outline state"];
  }
}

- (void)applyOutlineState
{
  v5 = [a1 outlineState];
  v2 = [v5 collapsedUUIDs];
  v3 = [a1 textContentStorage];
  v4 = [v3 outlineController];
  [v4 setCollapsedUUIDs:v2];
}

- (uint64_t)saveAfterDelay
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:a1 selector:sel_save object:0];
  v2 = [a1 isFastSyncSessionActive];
  v3 = 0.1;
  if (!v2)
  {
    v3 = 2.0;
  }

  return [a1 performSelector:sel_save withObject:0 afterDelay:v3];
}

- (uint64_t)updateModificationDateAndChangeCount
{
  if ((ICInternalSettingsGetBundleBoolSettingValue() & 1) == 0)
  {
    v2 = [MEMORY[0x1E695DF00] date];
    [a1 setModificationDate:v2];

    if ([a1 isSharedViaICloud])
    {
      v3 = [a1 modificationDate];
      v4 = [a1 lastViewedModificationDate];
      v5 = [v3 ic_isLaterThanDate:v4];

      if (v5)
      {
        v6 = [a1 modificationDate];
        [a1 setLastViewedModificationDate:v6];

        [a1 setNeedsToSaveLastViewedTimestamp:1];
        [a1 updateUserSpecificChangeCountWithReason:@"Updated modification date"];
      }
    }
  }

  v7 = MEMORY[0x1E69B77F0];
  v8 = [a1 identifier];
  [v7 setDidShowExceededStorageQuotaAlert:0 forNoteWithIdentifier:v8];

  return [a1 updateChangeCountWithReason:@"Updated modification date"];
}

- (uint64_t)updateModificationDateAndChangeCountAndSaveAfterDelay
{
  [a1 updateModificationDateAndChangeCount];

  return [a1 saveAfterDelay];
}

- (uint64_t)updateModificationDateAndChangeCountAndSaveImmediately
{
  [a1 updateModificationDateAndChangeCount];

  return [a1 save];
}

- (uint64_t)isDrawingStroke
{
  v1 = objc_getAssociatedObject(a1, kICIsDrawingStrokeKey);
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIsDrawingStroke:()UI
{
  if ([a1 isDrawingStroke] != a3)
  {
    v5 = kICIsDrawingStrokeKey;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    objc_setAssociatedObject(a1, v5, v6, 1);
  }
}

- (void)createMissingAttachmentsInTextStorage
{
  v3 = [a1 textStorage];
  v2 = [a1 textStorage];
  [a1 filterAttachmentsInTextStorage:v3 range:{0, objc_msgSend(v2, "length")}];
}

- (void)filterAttachmentsInTextStorage:()UI range:
{
  v8 = a3;
  v9 = [a1 managedObjectContext];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __51__ICNote_UI__filterAttachmentsInTextStorage_range___block_invoke;
  v25[3] = &unk_1E8468BA0;
  v25[4] = a1;
  [v9 performBlockAndWait:v25];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  objc_opt_class();
  v10 = ICDynamicCast();
  [v10 beginSkippingTimestampUpdates];

  v11 = *MEMORY[0x1E69DB5F8];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__ICNote_UI__filterAttachmentsInTextStorage_range___block_invoke_2;
  v18[3] = &unk_1E846A5D8;
  v18[4] = a1;
  v12 = v8;
  v19 = v12;
  v20 = &v21;
  [v12 enumerateAttribute:v11 inRange:a4 options:a5 usingBlock:{0, v18}];
  objc_opt_class();
  v13 = ICDynamicCast();
  [v13 endSkippingTimestampUpdates];

  if (*(v22 + 24) == 1)
  {
    v14 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ICNote(UI) filterAttachmentsInTextStorage:v14 range:?];
    }

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 postNotificationName:*MEMORY[0x1E69B74D0] object:a1];
  }

  v16 = [a1 managedObjectContext];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__ICNote_UI__filterAttachmentsInTextStorage_range___block_invoke_272;
  v17[3] = &unk_1E8468BA0;
  v17[4] = a1;
  [v16 performBlockAndWait:v17];

  _Block_object_dispose(&v21, 8);
}

- (void)textStorage:()UI willProcessEditing:range:changeInLength:
{
  v22[3] = *MEMORY[0x1E69E9840];
  v12 = MEMORY[0x1E696AD88];
  v13 = a3;
  v14 = [v12 defaultCenter];
  v21[0] = @"kICTTEditedRangeNotificationKey";
  v15 = [MEMORY[0x1E696B098] valueWithRange:{a5, a6}];
  v22[0] = v15;
  v21[1] = @"kICTTChangeInLengthNotificationKey";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a7];
  v22[1] = v16;
  v21[2] = @"kICTTEditedMaskNotificationKey";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v22[2] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  [v14 postNotificationName:@"ICTTTextStorageWillProcessEditingNotification" object:v13 userInfo:v18];

  v19 = [a1 managedObjectContext];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__ICNote_UI__textStorage_willProcessEditing_range_changeInLength___block_invoke;
  v20[3] = &unk_1E8468BA0;
  v20[4] = a1;
  [v19 performBlockAndWait:v20];
}

- (void)textStorage:()UI didProcessEditing:range:changeInLength:
{
  v12 = a3;
  v13 = [a1 managedObjectContext];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__ICNote_UI__textStorage_didProcessEditing_range_changeInLength___block_invoke;
  v15[3] = &unk_1E846A600;
  v15[4] = a1;
  v16 = v12;
  v17 = a5;
  v18 = a6;
  v19 = a4;
  v20 = a7;
  v14 = v12;
  [v13 performBlockAndWait:v15];
}

- (void)textStorageWillChange:()UI
{
  v2 = [a1 managedObjectContext];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__ICNote_UI__textStorageWillChange___block_invoke;
  v3[3] = &unk_1E8468BA0;
  v3[4] = a1;
  [v2 performBlockAndWait:v3];
}

- (void)textStorageDidChange:()UI
{
  v2 = [a1 managedObjectContext];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__ICNote_UI__textStorageDidChange___block_invoke;
  v3[3] = &unk_1E8468BA0;
  v3[4] = a1;
  [v2 performBlockAndWait:v3];
}

- (void)markBlockAndInlineAttachmentsForDeletion:()UI inAttributedString:
{
  v6 = *MEMORY[0x1E69DB5F8];
  v7 = a4;
  v8 = [v7 length];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__ICNote_UI__markBlockAndInlineAttachmentsForDeletion_inAttributedString___block_invoke;
  v9[3] = &unk_1E846A628;
  v9[4] = a1;
  v10 = a3;
  [v7 enumerateAttribute:v6 inRange:0 options:v8 usingBlock:{0, v9}];
}

- (void)notifyTextViewsNoteWillMerge
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [a1 textStorage];
  v3 = [v2 textViews];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = ICProtocolCast();
        v9 = [a1 textStorage];
        [v8 textStorageWillPerformMerge:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)notifyTextViewsNoteDidMerge
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [a1 textStorage];
  v3 = [v2 textViews];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = ICProtocolCast();
        v9 = [a1 textStorage];
        [v8 textStorageDidPerformMerge:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)announceAccessibilitySelectionChangedByMergeWithSavedSelections:()UI beforeMergeTimestamp:
{
  v16 = a3;
  v6 = a4;
  if ([MEMORY[0x1E696AF00] isMainThread] && ICAccessibilityNeedsAccessibilityElements())
  {
    if ([v16 count] != 2)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"savedSelections.count == 2" functionName:"-[ICNote(UI) announceAccessibilitySelectionChangedByMergeWithSavedSelections:beforeMergeTimestamp:]" simulateCrash:1 showAlert:0 format:@"Expected 2 arrays from -savedSelectionWithSelectionAffinity:"];
    }

    if ([v16 count] == 2)
    {
      v7 = [v16 objectAtIndexedSubscript:0];
      v8 = [v16 objectAtIndexedSubscript:1];
      v9 = [v7 count];
      if (v9 != [v8 count])
      {
        [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"textViews.count == selections.count" functionName:"-[ICNote(UI) announceAccessibilitySelectionChangedByMergeWithSavedSelections:beforeMergeTimestamp:]" simulateCrash:1 showAlert:0 format:@"Expected same count for textViews and selections"];
      }

      v10 = [v7 count];
      if (v10 == [v8 count])
      {
        v11 = [a1 textStorage];
        v12 = [v11 mergeableString];

        if ([v7 count])
        {
          v13 = 0;
          do
          {
            objc_opt_class();
            v14 = [v8 objectAtIndexedSubscript:v13];
            v15 = ICCheckedDynamicCast();

            if ([v12 selection:v15 wasModifiedAfter:v6])
            {
              [a1 announceAccessibilitySelectionChangedByMerge];
            }

            ++v13;
          }

          while (v13 < [v7 count]);
        }
      }
    }
  }
}

- (void)announceAccessibilitySelectionChangedByMerge
{
  v2 = [MEMORY[0x1E695DF00] date];
  obj = v2;
  if (!announceAccessibilitySelectionChangedByMerge_lastAnnouncementDate || ([v2 timeIntervalSinceDate:?], v3 = obj, v4 > 1.0))
  {
    v5 = [a1 textStorage];
    v6 = [v5 textViews];
    v7 = [v6 anyObject];

    v8 = [v7 isFirstResponder];
    [v7 selectedRange];
    if (v9)
    {
      v10 = @"Selection changed by remote edit";
    }

    else
    {
      if (!v8)
      {
        v11 = 0;
        goto LABEL_8;
      }

      v10 = @"Insertion point changed by remote edit";
    }

    v11 = __ICLocalizedFrameworkString_impl(v10, v10, 0, 1);
LABEL_8:
    UIAccessibilitySpeakAndDoNotBeInterrupted();
    objc_storeStrong(&announceAccessibilitySelectionChangedByMerge_lastAnnouncementDate, obj);

    v3 = obj;
  }
}

- (id)checklistStyleAccessibilityDescriptionForRange:()UI
{
  v4 = a4;
  v5 = a3;
  v7 = a3 + a4;
  v8 = [a1 textStorage];
  v9 = [v8 length];

  if (v7 > v9)
  {
    v10 = 0;
    goto LABEL_15;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (!v4)
  {
    v11 = [a1 textStorage];
    v12 = [v11 string];
    v5 = [v12 paragraphRangeForRange:{v5, 0}];
    v4 = v13;
  }

  v14 = [a1 textStorage];
  v15 = *MEMORY[0x1E69B7600];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__ICNote_UI__checklistStyleAccessibilityDescriptionForRange___block_invoke;
  v18[3] = &unk_1E846A650;
  v18[4] = &v23;
  v18[5] = &v19;
  [v14 enumerateAttribute:v15 inRange:v5 options:v4 usingBlock:{0, v18}];

  if (v20[3])
  {
    if (v24[3])
    {
      v16 = @"Mixed";
    }

    else
    {
      v16 = @"On";
    }

    if (v24[3])
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((v24[3] & 1) == 0)
  {
LABEL_13:
    v16 = @"Off";
    goto LABEL_14;
  }

  v16 = @"On";
LABEL_14:
  v10 = __ICLocalizedFrameworkString_impl(v16, v16, 0, 1);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
LABEL_15:

  return v10;
}

- (id)indentationStyleAccessibilityDescriptionForRange:()UI
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0x7FFFFFFFFFFFFFFFLL;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = [a1 textStorage];
  v8 = [v7 length];

  if (a3 + a4 > v8)
  {
    goto LABEL_6;
  }

  if (!a4)
  {
    v9 = [a1 textStorage];
    v10 = [v9 string];
    a3 = [v10 paragraphRangeForRange:{a3, 0}];
    a4 = v11;
  }

  v12 = [a1 textStorage];
  v13 = *MEMORY[0x1E69B7600];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__ICNote_UI__indentationStyleAccessibilityDescriptionForRange___block_invoke;
  v20[3] = &unk_1E846A650;
  v20[4] = &v25;
  v20[5] = &v21;
  [v12 enumerateAttribute:v13 inRange:a3 options:a4 usingBlock:{0, v20}];

  v14 = v26[3];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL || (v15 = v22[3], v15 == 0x7FFFFFFFFFFFFFFFLL))
  {
LABEL_6:
    v16 = 0;
  }

  else
  {
    v18 = MEMORY[0x1E696AEC0];
    if (v14 == v15)
    {
      v19 = __ICLocalizedFrameworkString_impl(@"Indentation level %lu", @"Indentation level %lu", 0, 1);
      [v18 localizedStringWithFormat:v19, v26[3]];
    }

    else
    {
      v19 = __ICLocalizedFrameworkString_impl(@"Indentation levels vary between %1$lu and %2$lu", @"Indentation levels vary between %1$lu and %2$lu", 0, 1);
      [v18 localizedStringWithFormat:v19, v26[3], v22[3]];
    }
    v16 = ;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);

  return v16;
}

- (id)emphasisStyleAccessibilityDescriptionForRange:()UI
{
  v7 = 0;
  if (UIAccessibilityIsVoiceOverRunning() && (a4 - 1) <= 0x3E7)
  {
    v8 = [a1 textStorage];
    v9 = [v8 length];

    if (a3 + a4 <= v9)
    {
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x2020000000;
      v17 = 0;
      v14[0] = 0;
      v14[1] = v14;
      v14[2] = 0x2020000000;
      v15 = 0;
      v10 = [a1 textStorage];
      v11 = *MEMORY[0x1E69B75D8];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __60__ICNote_UI__emphasisStyleAccessibilityDescriptionForRange___block_invoke;
      v13[3] = &unk_1E846A678;
      v13[4] = v16;
      v13[5] = v14;
      [v10 enumerateAttribute:v11 inRange:a3 options:a4 usingBlock:{0, v13}];

      v7 = NSStringForEmphasisColorMask();
      _Block_object_dispose(v14, 8);
      _Block_object_dispose(v16, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)selectedInk
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a1 selectedInkIdentifier];
  v3 = [a1 selectedInkColorString];
  v4 = v3;
  v5 = 0;
  if (v2 && v3)
  {
    v6 = [MEMORY[0x1E69DC888] ic_colorFromString:v3];
    if (v6)
    {
      v5 = [MEMORY[0x1E6978458] inkWithIdentifier:v2 color:v6 weight:-1.0];
    }

    else
    {
      v7 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&dword_1D4171000, v7, OS_LOG_TYPE_DEFAULT, "Could not create ink color from serialized color string: %@", &v9, 0xCu);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (void)setSelectedInk:()UI
{
  v4 = a3;
  v5 = [v4 identifier];
  [a1 setSelectedInkIdentifier:v5];

  v7 = [v4 color];

  v6 = [v7 ic_colorString];
  [a1 setSelectedInkColorString:v6];
}

- (uint64_t)setHandwritingRecognitionEnabled:()UI
{
  result = [a1 isHandwritingRecognitionEnabled];
  if (result != a3)
  {
    v6 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(ICNote(UI) *)a3 setHandwritingRecognitionEnabled:a1];
    }

    v7 = kICHandwritingRecognitionEnabledKey;
    v8 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    objc_setAssociatedObject(a1, v7, v8, 1);

    return [a1 updatePKDrawingsWithHandwritingRecognitionEnabled:a3];
  }

  return result;
}

- (void)updatePKDrawingsWithHandwritingRecognitionEnabled:()UI
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__ICNote_UI__updatePKDrawingsWithHandwritingRecognitionEnabled___block_invoke;
  v3[3] = &unk_1E846A6A0;
  v4 = a3;
  v3[4] = v5;
  [a1 enumerateAttachmentsInOrderUsingBlock:v3];
  _Block_object_dispose(v5, 8);
}

- (id)firstAttachmentInTextStorage
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__20;
  v8 = __Block_byref_object_dispose__20;
  v9 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__ICNote_UI__firstAttachmentInTextStorage__block_invoke;
  v3[3] = &unk_1E846A5B0;
  v3[4] = &v4;
  [a1 enumerateAttachmentsInOrderUsingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

- (BOOL)convertTextInNoteBodyToHashtag:()UI
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AEC0] ic_hashtagCharacterString];
  v6 = [v4 displayText];
  v7 = [v5 stringByAppendingString:v6];

  v8 = [a1 textStorage];
  v9 = [v8 ic_range];
  v11 = v10;

  v12 = [a1 textStorage];
  v13 = [v12 string];
  v14 = [v13 rangeOfString:v7 options:257 range:{v9, v11}];
  v16 = v15;

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = v14;
    do
    {
      v17 = MEMORY[0x1E69B7778];
      v18 = [MEMORY[0x1E696AFB0] UUID];
      v19 = [v18 UUIDString];
      v20 = [v17 newHashtagAttachmentWithIdentifier:v19 forHashtag:v4 note:a1 parentAttachment:0];

      v21 = [ICInlineTextAttachment textAttachmentWithAttachment:v20];
      v22 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v21];
      v23 = [a1 textStorage];
      [v23 replaceCharactersInRange:v14 withAttributedString:{v16, v22}];

      v24 = [a1 textStorage];
      v25 = [v24 string];
      v14 = [v25 rangeOfString:v7 options:257 range:{0, v14}];
      v16 = v26;
    }

    while (v14 != 0x7FFFFFFFFFFFFFFFLL);
    v14 = v29;
    v27 = [a1 textStorage];
    [v27 fixupAfterEditing];
  }

  return v14 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)addHashtagToNoteBody:()UI onlyIfMissing:
{
  v6 = a3;
  if (([a1 isNewNoteWithHashtagsInsertedIntoBody] & 1) == 0)
  {
    [a1 setIsNewNoteWithHashtagsInsertedIntoBody:{objc_msgSend(a1, "isEmpty")}];
  }

  if (!a4 || ([v6 standardizedContent], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1, "anyVisibleInstanceOfHashtag:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v9 = MEMORY[0x1E69B7778];
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    v8 = [v9 newHashtagAttachmentWithIdentifier:v11 forHashtag:v6 note:a1 parentAttachment:0];

    v30 = 0;
    v31 = &v30;
    v32 = 0x3010000000;
    v34 = 0;
    v35 = 0;
    v33 = &unk_1D449C2A9;
    v12 = [a1 textStorage];
    v34 = [v12 length];
    v35 = 0;

    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    v13 = [a1 textStorage];
    v14 = [a1 managedObjectContext];
    v15 = [a1 textStorage];
    v16 = [v15 ic_range];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __49__ICNote_UI__addHashtagToNoteBody_onlyIfMissing___block_invoke;
    v25[3] = &unk_1E846A6C8;
    v25[4] = a1;
    v25[5] = &v30;
    v25[6] = &v26;
    [v13 ic_enumerateInlineAttachmentsInContext:v14 range:v16 options:v17 usingBlock:{0, v25}];

    v18 = [ICInlineTextAttachment textAttachmentWithAttachment:v8];
    v19 = objc_alloc_init(MEMORY[0x1E696AD40]);
    if (*(v27 + 24) == 1)
    {
      v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n\n"];
    }

    else
    {
      v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
    }

    [v19 appendAttributedString:v20];

    v21 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v18];
    [v19 appendAttributedString:v21];

    v22 = [a1 textStorage];
    [v22 replaceCharactersInRange:v31[4] withAttributedString:{v31[5], v19}];

    v23 = [a1 textStorage];
    [v23 fixupAfterEditing];

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
  }

  return v8;
}

- (BOOL)removeHashtag:()UI
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v36 = [MEMORY[0x1E695DFA8] set];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v5 = [a1 visibleInlineAttachments];
  v6 = [v5 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = v6;
  v35 = 0;
  v8 = *v46;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v46 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v45 + 1) + 8 * i);
      v11 = [v10 attachmentType];
      v12 = [v10 tokenContentIdentifier];
      v13 = [v4 standardizedContent];
      v14 = [v12 isEqualToString:v13];

      if (v11 == 1 && v14 != 0)
      {
        v16 = [v10 parentAttachment];

        if (v16)
        {
          v17 = [v4 displayText];
          v18 = [v17 ic_withHashtagPrefix];

          v19 = [v10 parentAttachment];
          v20 = [v19 attachmentModel];
          [v20 replaceChildInlineAttachment:v10 withText:v18];

          [v36 addObject:v10];
        }

        else
        {
          [v36 addObject:v10];
          v35 = 1;
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v45 objects:v50 count:16];
  }

  while (v7);

  if (v35)
  {
    v21 = [a1 textStorage];
    v22 = [v21 length];

    v23 = [a1 textStorage];
    [v23 beginEditing];

    v24 = [a1 textStorage];
    v25 = [a1 managedObjectContext];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __28__ICNote_UI__removeHashtag___block_invoke;
    v41[3] = &unk_1E846A6F0;
    v42 = v4;
    v43 = a1;
    v44 = v36;
    [v24 ic_enumerateInlineAttachmentsInContext:v25 range:0 options:v22 usingBlock:{0, v41}];

    v26 = [a1 textStorage];
    [v26 endEditing];

    v5 = v42;
LABEL_17:
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = v36;
  v28 = [v27 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v38;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [MEMORY[0x1E69B7778] deleteAttachment:*(*(&v37 + 1) + 8 * j)];
      }

      v29 = [v27 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v29);
  }

  if ([a1 isEmpty])
  {
    [MEMORY[0x1E69B77F0] deleteEmptyNote:a1];
  }

  v32 = [v27 count] != 0;

  return v32;
}

+ (void)removeUsageOfHashtag:()UI
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 managedObjectContext];
  v5 = MEMORY[0x1E69B77F0];
  v6 = [v3 standardizedContent];
  v7 = [v5 notesContainingHashtagWithStandarizedContent:v6 context:v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        objc_opt_class();
        v14 = [v4 objectWithID:{v13, v16}];
        v15 = ICCheckedDynamicCast();

        [v15 removeHashtag:v3];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (uint64_t)isHashtagRowAtRange:()UI outRangeForAppending:outIndex:forHashtagAttachment:outHashtagCount:
{
  v14 = a7;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 1;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0x7FFFFFFFFFFFFFFFLL;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3010000000;
  v34 = &unk_1D449C2A9;
  v35 = xmmword_1D4433FC0;
  v15 = [a1 textStorage];
  v16 = [a1 managedObjectContext];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __101__ICNote_UI__isHashtagRowAtRange_outRangeForAppending_outIndex_forHashtagAttachment_outHashtagCount___block_invoke;
  v25[3] = &unk_1E846A718;
  v27 = &v44;
  v28 = &v31;
  v29 = &v36;
  v17 = v14;
  v26 = v17;
  v30 = &v40;
  [v15 ic_enumerateAbstractAttachmentsInContext:v16 range:a3 options:a4 usingBlock:{0, v25}];

  if (*(v45 + 24) != 1)
  {
    goto LABEL_12;
  }

  v18 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  v19 = [MEMORY[0x1E696AEC0] ic_attachmentCharacterString];
  [v18 addCharactersInString:v19];

  [v18 invert];
  v20 = [a1 textStorage];
  v21 = [v20 string];
  v22 = [v21 substringWithRange:{a3, a4}];

  if ([v22 rangeOfCharacterFromSet:v18] != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(v45 + 24) = 0;
  }

  if (v45[3])
  {
    if (a5)
    {
      *a5 = v32[5] + v32[4];
      a5[1] = 0;
    }

    if (a8)
    {
      *a8 = v37[3];
    }

    if (a6)
    {
      *a6 = v41[3];
    }

    v23 = 1;
  }

  else
  {
LABEL_12:
    v23 = 0;
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  return v23;
}

- (id)folderSystemImageName
{
  v1 = [a1 folder];
  v2 = [v1 systemImageName];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E69B7760] defaultSystemImageName];
  }

  v5 = v4;

  return v5;
}

- (id)navigationBarIconWithSize:()UI
{
  if ([a1 isPasswordProtected])
  {
    v6 = [objc_opt_class() lockedNavigationBarIcon];
  }

  else
  {
    v7 = [[ICThumbnailConfiguration alloc] initForNoteNavigationBarIconWithNote:a1 preferredSize:a2, a3];
    v8 = +[ICThumbnailService sharedThumbnailService];
    v9 = [v8 thumbnailWithConfiguration:v7];
    v10 = [v9 image];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [objc_opt_class() defaultNavigationBarIcon];
    }

    v6 = v12;
  }

  return v6;
}

- (void)icaxGalleryViewCustomContentDescription
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v3 = [a1 attachments];
  v4 = [v3 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v51;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v51 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v50 + 1) + 8 * i);
        v9 = [v8 identifier];
        [v2 setObject:v8 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v5);
  }

  v10 = [MEMORY[0x1E695DF90] dictionary];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v11 = [a1 inlineAttachments];
  v12 = [v11 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v47;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v46 + 1) + 8 * j);
        v17 = [v16 identifier];
        [v10 setObject:v16 forKeyedSubscript:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v13);
  }

  v18 = [a1 textStorage];
  v19 = [v18 attributedString];
  v20 = [v19 ic_attributedSubstringUntilLine:13];
  v21 = [v20 mutableCopy];

  v22 = *MEMORY[0x1E69DB5F8];
  v23 = [v21 ic_range];
  v25 = v24;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __53__ICNote_UI__icaxGalleryViewCustomContentDescription__block_invoke;
  v44[3] = &unk_1E846A740;
  v44[4] = a1;
  v44[5] = v2;
  v44[6] = v10;
  v26 = v21;
  v45 = v26;
  [v26 enumerateAttribute:v22 inRange:v23 options:v25 usingBlock:{2, v44}];
  v27 = *MEMORY[0x1E69B7600];
  v28 = [v26 ic_range];
  v30 = v29;
  v38 = MEMORY[0x1E69E9820];
  v39 = 3221225472;
  v40 = __53__ICNote_UI__icaxGalleryViewCustomContentDescription__block_invoke_2;
  v41 = &unk_1E846A768;
  v42 = a1;
  v43 = v26;
  v31 = v26;
  [v31 enumerateAttribute:v27 inRange:v28 options:v30 usingBlock:{2, &v38}];
  v32 = [v31 string];
  v33 = [v32 ic_stringByRemovingWhitespaceOnlyLines];
  v34 = [v33 stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];

  if ([v34 length])
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;

  return v35;
}

- (id)_icaxGalleryViewDescriptionForAttachment:()UI fromAttachments:orInlineAttachments:
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  objc_opt_class();
  v10 = ICDynamicCast();
  objc_opt_class();
  v11 = ICDynamicCast();

  if (v10)
  {
    v12 = [v10 attachmentIdentifier];
    v13 = [v7 objectForKeyedSubscript:v12];

    if (!v13)
    {
      v14 = [v10 attachmentIdentifier];
      v15 = [v8 objectForKeyedSubscript:v14];

      if (v15)
      {
        v16 = [v15 altText];
      }

      else
      {
        v16 = 0;
      }

      v13 = 0;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (v11)
  {
    v13 = [v11 attachment];
    if (v13)
    {
LABEL_7:
      v16 = [v13 accessibilityDescriptionForType];
      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (uint64_t)_icaxItemNumberForParagraphAtLocation:()UI withStyle:inAttrString:
{
  v7 = a4;
  v8 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  if ([v7 startingItemNumber])
  {
    v9 = [v7 startingItemNumber];
  }

  else
  {
    v9 = 1;
  }

  v24 = v9;
  v10 = [v8 ic_attributedSubstringFromRange:{0, a3}];
  v11 = *MEMORY[0x1E69B7600];
  v12 = [v10 ic_range];
  v14 = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__ICNote_UI___icaxItemNumberForParagraphAtLocation_withStyle_inAttrString___block_invoke;
  v18[3] = &unk_1E846A790;
  v15 = v7;
  v19 = v15;
  v20 = &v21;
  [v10 enumerateAttribute:v11 inRange:v12 options:v14 usingBlock:{2, v18}];
  v16 = v22[3];

  _Block_object_dispose(&v21, 8);
  return v16;
}

- (uint64_t)ic_lineCount
{
  v2 = [a1 attributedString];
  v3 = [v2 string];
  v4 = [v3 length];

  if (!v4)
  {
    return 0;
  }

  v5 = [a1 attributedString];
  v6 = [v5 string];
  v7 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v8 = [v6 componentsSeparatedByCharactersInSet:v7];
  v9 = [v8 count];

  return v9;
}

- (uint64_t)ic_wordCount
{
  v2 = [a1 attributedString];
  v3 = [v2 string];
  v4 = [v3 length];

  if (!v4)
  {
    return 0;
  }

  v5 = [a1 attributedString];
  v6 = [v5 string];
  v7 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v8 = [v6 componentsSeparatedByCharactersInSet:v7];
  v9 = [v8 ic_compactMap:&__block_literal_global_373];
  v10 = [v9 count];

  return v10;
}

- (uint64_t)ic_characterCountIncludingSpaces:()UI
{
  v5 = [a1 attributedString];
  v6 = [v5 string];
  v7 = [v6 length];

  if (!v7)
  {
    return 0;
  }

  v8 = [a1 attributedString];
  v9 = [v8 string];

  if (a3)
  {
    v10 = [v9 length];
  }

  else
  {
    v11 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v12 = [v9 ic_stringByReplacingCharactersInSet:v11 withString:&stru_1F4F94F00];
    v10 = [v12 length];
  }

  return v10;
}

- (id)searchableItemViewAttributeSet
{
  if (_os_feature_enabled_impl())
  {
    v2 = [a1 attachments];
    v3 = [v2 allObjects];
    v4 = [v3 firstObject];
    v5 = [v4 previewImages];
    v6 = [v5 allObjects];
    v7 = [v6 firstObject];

    v8 = [v7 previewImageURL];
    v9 = [MEMORY[0x1E69B7B58] makeNoteSearchResultViewWithNote:a1 attachmentURL:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setIsFastSyncSessionActive:()UI .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 ic_loggingIdentifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)appendAttributedString:()UI options:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315394;
  v2 = "[ICNote(UI) appendAttributedString:options:error:]";
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1D4171000, v0, OS_LOG_TYPE_ERROR, "%s: Failed to append attributed string: %@", &v1, 0x16u);
}

+ (void)duplicateNote:()UI isPasswordProtected:removeOriginalNote:.cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)duplicateNote:()UI intoFolder:isPasswordProtected:removeOriginalNote:.cold.1(void *a1)
{
  [a1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() preventLockReason];
  v3 = NSStringFromNotePreventLockReason(v2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)duplicateNote:()UI intoFolder:isPasswordProtected:removeOriginalNote:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  [v1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() shortLoggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (void)duplicateNote:()UI intoFolder:isPasswordProtected:removeOriginalNote:.cold.3()
{
  OUTLINED_FUNCTION_2_1();
  [v1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() shortLoggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (void)duplicateNote:()UI intoFolder:isPasswordProtected:removeOriginalNote:.cold.4()
{
  OUTLINED_FUNCTION_2_1();
  [v1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() shortLoggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (void)duplicateNote:()UI intoFolder:isPasswordProtected:removeOriginalNote:.cold.5()
{
  OUTLINED_FUNCTION_2_1();
  [v1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() shortLoggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (void)redactNote:()UI .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1D4171000, a4, OS_LOG_TYPE_ERROR, "Error redacting preview images for attachment %@", a1, 0xCu);
}

- (void)attachmentFromObject:()UI createIfNecessary:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  [v1 attachmentIdentifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)attachmentFromObject:()UI createIfNecessary:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  [v1 attachmentIdentifier];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() identifier];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)attachmentFromObject:()UI createIfNecessary:.cold.3(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)attachmentFromObject:()UI createIfNecessary:.cold.4(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)attachmentFromObject:()UI createIfNecessary:.cold.5(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)attachmentFromLegacyAttachmentFileWrapper:()UI .cold.1(void *a1)
{
  v1 = [a1 attachmentIdentifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)copyValuesToNote:()UI .cold.1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)copyValuesToNote:()UI .cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)copyValuesToNote:()UI .cold.3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setHandwritingRecognitionEnabled:()UI .cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 shortLoggingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end