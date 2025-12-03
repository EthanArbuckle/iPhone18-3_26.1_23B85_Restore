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
  result = [self shouldReleaseTextStorageWhenTurningIntoFault];
  if (result)
  {
    [self setReservedForTextContentStorage:0];
    v3 = MEMORY[0x1E69E58C0];

    return [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel_save object:0];
  }

  return result;
}

- (BOOL)shouldReleaseTextStorageWhenTurningIntoFault
{
  documentWithoutCreating = [self documentWithoutCreating];

  if (documentWithoutCreating && ![self shouldReleaseDocumentWhenTurningIntoFault])
  {
    return 0;
  }

  textStorageWithoutCreating = [self textStorageWithoutCreating];
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    [textStorageWithoutCreating textLayoutManagers];
  }

  else
  {
    [textStorageWithoutCreating layoutManagers];
  }
  v4 = ;
  v5 = [v4 count];

  v6 = v5 == 0;
  return v6;
}

- (id)textStorageWithoutCreating
{
  textContentStorage = [self textContentStorage];
  textStorage = [textContentStorage textStorage];

  return textStorage;
}

- (id)textContentStorage
{
  objc_opt_class();
  reservedForTextContentStorage = [self reservedForTextContentStorage];
  v3 = ICCheckedDynamicCast();

  return v3;
}

- (id)textStorage
{
  textContentStorageCreateIfNeeded = [self textContentStorageCreateIfNeeded];
  textStorage = [textContentStorageCreateIfNeeded textStorage];

  return textStorage;
}

- (ICTTTextContentStorage)textContentStorageCreateIfNeeded
{
  textContentStorage = [self textContentStorage];
  if (textContentStorage)
  {
    v3 = textContentStorage;
  }

  else
  {
    document = [self document];
    if (document)
    {
      v5 = [[ICTTTextStorage alloc] initWithDocument:document];
      [(ICTTTextStorage *)v5 setDelegate:self];
      v6 = [ICTTTextContentStorage alloc];
      outlineState = [self outlineState];
      v8 = [(ICTTTextContentStorage *)v6 initWithTextStorage:v5 outlineState:outlineState];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      iCOutlineControllerCollapsedStateDidChange = [MEMORY[0x1E696AD80] ICOutlineControllerCollapsedStateDidChange];
      [defaultCenter addObserver:self selector:sel_outlineControllerCollapsedStateDidChange_ name:iCOutlineControllerCollapsedStateDidChange object:0];

      [self setReservedForTextContentStorage:v8];
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
  textStorageWithoutCreating = [self textStorageWithoutCreating];
  documentWithoutCreating = [self documentWithoutCreating];
  if (textStorageWithoutCreating)
  {
    if (documentWithoutCreating)
    {
      document = [textStorageWithoutCreating document];

      if (document != documentWithoutCreating)
      {
        [textStorageWithoutCreating replaceWithDocument:documentWithoutCreating];
      }
    }
  }
}

- (ICCalculateDocumentController)calculateDocumentController
{
  if (ICInternalSettingsIsMathEnabled() && ([self managedObjectContext], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "concurrencyType"), v2, v3 == 2) && (objc_msgSend(self, "textStorage"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = objc_getAssociatedObject(self, &calculateDocumentControllerHandle);
    if (!v5)
    {
      v5 = [[ICCalculateDocumentController alloc] initWithNote:self];
      objc_setAssociatedObject(self, &calculateDocumentControllerHandle, v5, 1);
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
  mEMORY[0x1E69B7A30] = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  calculatePreviewBehaviorUserDefaultsKey = [self calculatePreviewBehaviorUserDefaultsKey];
  v4 = [mEMORY[0x1E69B7A30] integerForKey:calculatePreviewBehaviorUserDefaultsKey];

  return v4;
}

- (id)calculatePreviewBehaviorUserDefaultsKey
{
  v1 = MEMORY[0x1E696AEC0];
  identifier = [self identifier];
  v3 = NSStringFromSelector(sel_calculatePreviewBehavior);
  v4 = [v1 stringWithFormat:@"%@--%@", identifier, v3];

  return v4;
}

- (ICDocumentMergeController)documentMergeController
{
  v2 = objc_getAssociatedObject(self, &documentMergeController_documentMergeControllerHandle);
  if (!v2)
  {
    v2 = objc_alloc_init(ICDocumentMergeController);
    objc_setAssociatedObject(self, &documentMergeController_documentMergeControllerHandle, v2, 1);
  }

  v3 = v2;

  return v3;
}

- (uint64_t)isHandwritingRecognitionEnabled
{
  v1 = objc_getAssociatedObject(self, kICHandwritingRecognitionEnabledKey);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (ICCalculateAccessibilityController)calculateAccessibilityController
{
  if (ICInternalSettingsIsMathEnabled())
  {
    v2 = objc_getAssociatedObject(self, &calculateAccessibilityControllerHandle);
    if (!v2)
    {
      v2 = [[ICCalculateAccessibilityController alloc] initWithNote:self];
      objc_setAssociatedObject(self, &calculateAccessibilityControllerHandle, v2, 1);
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
  v1 = objc_getAssociatedObject(self, kICIsFastSyncSessionActive);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIsFastSyncSessionActive:()UI
{
  if ([self isFastSyncSessionActive] != a3)
  {
    v5 = os_log_create("com.apple.notes", "RealtimeCollaboration");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(ICNote(UI) *)a3 setIsFastSyncSessionActive:self];
    }

    v6 = kICIsFastSyncSessionActive;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    objc_setAssociatedObject(self, v6, v7, 3);
  }
}

- (void)noteWillReleaseTextStorage
{
  textStorageWithoutCreating = [self textStorageWithoutCreating];
  [textStorageWithoutCreating setIsZombie:1];
  [self discardCalculateDocumentController];
}

- (uint64_t)noteDidClearDecryptedData
{
  textStorageWithoutCreating = [self textStorageWithoutCreating];
  styler = [textStorageWithoutCreating styler];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    textStorageWithoutCreating2 = [self textStorageWithoutCreating];
    styler2 = [textStorageWithoutCreating2 styler];

    [styler2 setNote:0];
  }

  return [self setReservedForTextContentStorage:0];
}

- (void)noteWillMergeDocumentWithUserInfo:()UI
{
  v10 = a3;
  textStorage = [self textStorage];
  mergeableString = [textStorage mergeableString];
  timestamp = [mergeableString timestamp];
  v7 = [timestamp copy];

  if (v7)
  {
    [v10 setObject:v7 forKeyedSubscript:@"BeforeMergeTimestamp"];
  }

  textStorage2 = [self textStorage];
  v9 = [textStorage2 savedSelectionWithSelectionAffinity:0];

  if (v9)
  {
    [v10 setObject:v9 forKeyedSubscript:@"SavedSelections"];
  }

  [self notifyTextViewsNoteWillMerge];
}

- (id)rangesModifiedAfterTimestamp:()UI inTextStorage:
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a4;
  v7 = a3;
  array = [v5 array];
  mergeableString = [v6 mergeableString];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__ICNote_UI__rangesModifiedAfterTimestamp_inTextStorage___block_invoke;
  v13[3] = &unk_1E846A3E0;
  v14 = array;
  v10 = array;
  [mergeableString enumerateHighlightableRangesModifiedAfter:v7 includingAttributes:1 usingBlock:v13];

  v11 = [v10 copy];

  return v11;
}

- (void)noteDidMergeNoteDocumentWithUserInfo:()UI
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"SavedSelections"];
  textStorage = [self textStorage];
  [textStorage restoreSelection:v5];

  [self notifyTextViewsNoteDidMerge];
  v7 = [v4 objectForKeyedSubscript:@"BeforeMergeTimestamp"];

  textStorage2 = [self textStorage];
  v9 = [self rangesModifiedAfterTimestamp:v7 inTextStorage:textStorage2];

  if ([v9 count])
  {
    objc_opt_class();
    textStorage3 = [self textStorage];
    styler = [textStorage3 styler];
    v12 = ICDynamicCast();

    authorHighlightsController = [v12 authorHighlightsController];
    textStorage4 = [self textStorage];
    ic_range = [textStorage4 ic_range];
    v17 = v16;
    textStorage5 = [self textStorage];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __51__ICNote_UI__noteDidMergeNoteDocumentWithUserInfo___block_invoke;
    v20[3] = &unk_1E846A408;
    v21 = v9;
    v22 = v12;
    selfCopy = self;
    v19 = v12;
    [authorHighlightsController performHighlightUpdatesForRange:ic_range inTextStorage:v17 updates:{textStorage5, v20}];
  }

  [self announceAccessibilitySelectionChangedByMergeWithSavedSelections:v5 beforeMergeTimestamp:v7];
  [self applyOutlineState];
}

- (ICCollaborationColorManager)collaborationColorManager
{
  objc_opt_class();
  reservedForCollaborationColorManager = [self reservedForCollaborationColorManager];
  v3 = ICDynamicCast();

  if (!v3)
  {
    v3 = objc_alloc_init(ICCollaborationColorManager);
    [self setReservedForCollaborationColorManager:v3];
  }

  return v3;
}

- (uint64_t)ic_hasLightBackground
{
  ic_alwaysShowLightContent = [MEMORY[0x1E69DD1B8] ic_alwaysShowLightContent];
  if ([self prefersLightBackground] & 1) != 0 || (ic_alwaysShowLightContent)
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
  v5 = [v4 ic_userRecordNameInNote:self];
  allUserRecordName = [MEMORY[0x1E69B77E8] allUserRecordName];
  textStorage = [self textStorage];
  managedObjectContext = [self managedObjectContext];
  textStorage2 = [self textStorage];
  v10 = [textStorage2 length];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __39__ICNote_UI__hasMentionForParticipant___block_invoke;
  v15[3] = &unk_1E846A430;
  v11 = v5;
  v16 = v11;
  v12 = allUserRecordName;
  v17 = v12;
  v18 = &v19;
  [textStorage ic_enumerateInlineAttachmentsInContext:managedObjectContext range:0 options:v10 usingBlock:{0, v15}];

  v13 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);

  return v13;
}

- (void)formatExpressionsInAttributedString:()UI range:textStorageOffset:skipStaleExpressions:
{
  v12 = a3;
  calculateDocumentController = [self calculateDocumentController];
  [calculateDocumentController formatExpressionsInAttributedString:v12 range:a4 textStorageOffset:a5 skipStaleExpressions:{a6, a7}];
}

- (void)outlineControllerCollapsedStateDidChange:()UI
{
  v4 = a3;
  objc_opt_class();
  object = [v4 object];

  v6 = ICDynamicCast();

  textStorage = [v6 textStorage];
  document = [textStorage document];
  textStorageWithoutCreating = [self textStorageWithoutCreating];
  document2 = [textStorageWithoutCreating document];
  v11 = [document isEqual:document2];

  if (v11)
  {
    managedObjectContext = [self managedObjectContext];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__ICNote_UI__outlineControllerCollapsedStateDidChange___block_invoke;
    v13[3] = &unk_1E8468BA0;
    v13[4] = self;
    [managedObjectContext performBlockAndWait:v13];
  }
}

- (void)setCalculatePreviewBehavior:()UI
{
  mEMORY[0x1E69B7A30] = [MEMORY[0x1E69B7A30] sharedAppGroupDefaults];
  calculatePreviewBehaviorUserDefaultsKey = [self calculatePreviewBehaviorUserDefaultsKey];
  [mEMORY[0x1E69B7A30] setInteger:a3 forKey:calculatePreviewBehaviorUserDefaultsKey];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICNoteDidChangeCalculatePreviewBehavior" object:self];
}

- (uint64_t)isCalculateMathEnabled
{
  calculateDocumentController = [self calculateDocumentController];
  isCalculateMathEnabled = [calculateDocumentController isCalculateMathEnabled];

  return isCalculateMathEnabled;
}

- (uint64_t)primaryWritingDirection
{
  textStorage = [self textStorage];
  v2 = [textStorage attribute:*MEMORY[0x1E69B7600] atIndex:0 effectiveRange:0];

  if (v2)
  {
    layoutWritingDirection = [v2 layoutWritingDirection];
  }

  else
  {
    layoutWritingDirection = -1;
  }

  return layoutWritingDirection;
}

- (id)noteActivityItemsForSharingWithNoteExporter:()UI
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = a3;
  array = [MEMORY[0x1E695DF70] array];
  v4 = [[ICNoteTopoTextActivityItemSource alloc] initWithNote:self];
  if (v4)
  {
    [array addObject:v4];
  }

  v16 = v4;
  objc_initWeak(&location, self);
  v5 = [ICNoteStringActivityItemSource alloc];
  title = [self title];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __58__ICNote_UI__noteActivityItemsForSharingWithNoteExporter___block_invoke;
  v25[3] = &unk_1E846A458;
  objc_copyWeak(&v26, &location);
  v25[4] = self;
  v18 = [(ICNoteStringActivityItemSource *)v5 initWithTitle:title attributedStringCreator:v25];

  if (v18)
  {
    [array addObject:v4];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  attachmentActivityItemsForSharing = [self attachmentActivityItemsForSharing];
  v8 = [attachmentActivityItemsForSharing countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(attachmentActivityItemsForSharing);
        }

        v11 = [[ICFilterAttachmentActivityItemSource alloc] initAttachmentItem:*(*(&v21 + 1) + 8 * i)];
        if (v11)
        {
          [array addObject:v11];
        }

        else
        {
          [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"filterAttachmentActivityItemSource" functionName:"-[ICNote(UI) noteActivityItemsForSharingWithNoteExporter:]" simulateCrash:1 showAlert:0 format:@"Failed to create filter attachment activity item source"];
        }
      }

      v8 = [attachmentActivityItemsForSharing countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v8);
  }

  v12 = [[ICNoteHTMLActivityItemSource alloc] initWithNote:self];
  [array addObject:v12];
  if (v19)
  {
    v13 = [[ICNoteRTFDActivityItemSource alloc] initWithNote:self noteExporter:v19];
    [array addObject:v13];
  }

  v14 = [array copy];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);

  return v14;
}

- (ICAirDropNoteActivityItemProvider)airDropActivityItemSource
{
  ic_permanentObjectID = [self ic_permanentObjectID];
  v3 = [ICAirDropNoteActivityItemProvider alloc];
  title = [self title];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__ICNote_UI__airDropActivityItemSource__block_invoke;
  v8[3] = &unk_1E846A480;
  v9 = ic_permanentObjectID;
  v5 = ic_permanentObjectID;
  v6 = [(ICAirDropNoteActivityItemProvider *)v3 initWithTitle:title airDropDocumentCreator:v8];

  return v6;
}

- (id)attachmentActivityItemsForSharing
{
  textStorage = [self textStorage];
  v3 = [self attachmentActivityItemsForSharingForRange:{0, objc_msgSend(textStorage, "length")}];

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
  [self enumerateAttachmentsInOrderUsingBlock:v11];
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
    textStorage = [v9 textStorage];
    styler = [textStorage styler];

    objc_opt_class();
    v12 = ICDynamicCast();
    if (!v12)
    {
      v12 = objc_alloc_init(ICTextController);
      textStorage2 = [v9 textStorage];
      [textStorage2 setStyler:v12];
    }

    textStorage3 = [v9 textStorage];
    [textStorage3 beginEditing];

    textStorage4 = [v9 textStorage];
    string = [textStorage4 string];
    v17 = [string paragraphRangeForRange:{0, 0}];
    v19 = v18;

    textStorage5 = [v9 textStorage];
    LODWORD(string) = [(ICTextController *)v12 paragraphStyleForRange:v17 inTextView:v19 inTextStorage:0, textStorage5];

    v21 = +[ICTextStyle noteDefaultNamedStyle];
    if (string == 3)
    {
      v22 = v21;
      if (v21 != 3)
      {
        textStorage6 = [v9 textStorage];
        [(ICTextController *)v12 setTextStyle:v22 range:v17 inTextStorage:v19 inTextView:textStorage6, 0];
      }
    }

    textStorage7 = [v9 textStorage];
    [textStorage7 endEditing];

    textStorage8 = [v9 textStorage];
    [textStorage8 fixupAfterEditing];

    textStorage9 = [v9 textStorage];
    styler2 = [textStorage9 styler];

    if (styler2 != styler)
    {
      textStorage10 = [v9 textStorage];
      [textStorage10 setStyler:styler];
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
  textStorage = [self textStorage];
  v10 = [self allowsNewTextLength:{objc_msgSend(v8, "length") + objc_msgSend(textStorage, "length")}];

  if (v10)
  {
    textStorage2 = [self textStorage];
    styler = [textStorage2 styler];

    if (!styler)
    {
      v13 = objc_alloc_init(ICTextController);
      textStorage3 = [self textStorage];
      [textStorage3 setStyler:v13];
    }

    textStorage4 = [self textStorage];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __51__ICNote_UI__appendAttributedString_options_error___block_invoke;
    v28[3] = &unk_1E8468F80;
    v28[4] = self;
    v29 = v8;
    [textStorage4 editWithAttributeOptions:a4 usingBlock:v28];

    textStorage5 = [self textStorage];
    [textStorage5 fixupAfterEditing];

    if (!styler)
    {
      textStorage6 = [self textStorage];
      [textStorage6 setStyler:0];
    }

    [self updateModificationDateAndChangeCount];
    mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
    v27 = 0;
    v19 = [mEMORY[0x1E69B7800] save:&v27];
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
  textStorage = [self textStorage];
  v11 = textStorage;
  if (textStorage)
  {
    if (v9)
    {
      styler = 0;
      v13 = 0;
    }

    else
    {
      styler = [textStorage styler];
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

    identifier = [v8 identifier];
    v19 = [v11 filteredAttributedStringForUTI:identifier range:{a4, a5}];

    if ((v9 & 1) == 0)
    {
      styler2 = [v11 styler];

      if (styler2 != styler)
      {
        [v11 setStyler:styler];
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
  account = [self account];
  canPasswordProtectNotes = [account canPasswordProtectNotes];

  if (!canPasswordProtectNotes)
  {
    return 6;
  }

  if ([self isSystemPaper])
  {
    return 4;
  }

  if ([self isSharedViaICloud])
  {
    return 5;
  }

  if ([self hasTags])
  {
    return 3;
  }

  if ([self containsAttachmentsUnsupportedInPasswordProtection])
  {
    return 2;
  }

  return 0;
}

+ (id)duplicateNote:()UI isPasswordProtected:removeOriginalNote:
{
  v8 = a3;
  folder = [v8 folder];
  if (folder)
  {
    v10 = [self duplicateNote:v8 intoFolder:folder isPasswordProtected:a4 removeOriginalNote:a5];
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
    shortLoggingDescription = [v9 shortLoggingDescription];
    shortLoggingDescription2 = [v10 shortLoggingDescription];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:a5];
    v15 = [MEMORY[0x1E696AD98] numberWithBool:a6];
    v42 = 138413570;
    v43 = shortLoggingDescription;
    v44 = 2112;
    v45 = shortLoggingDescription2;
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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v20 = *MEMORY[0x1E695D358];
  managedObjectContext = [v9 managedObjectContext];
  v18 = [defaultCenter addObserverForName:v20 object:managedObjectContext queue:0 usingBlock:&__block_literal_global_25];

  mEMORY[0x1E69B76D0] = [MEMORY[0x1E69B76D0] sharedState];
  [mEMORY[0x1E69B76D0] beginBlockingDeauthentication];

  [v9 persistPendingChangesRecursively];
  [v9 mergeUnappliedEncryptedRecordRecursively];
  managedObjectContext2 = [v9 managedObjectContext];
  [managedObjectContext2 refreshAllObjects];

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

  isPasswordProtected = [v9 isPasswordProtected];
  [v16 setIsPasswordProtected:1];
  if (isPasswordProtected)
  {
    cryptoStrategy = [v16 cryptoStrategy];
    [cryptoStrategy initializeCryptoPropertiesFromObject:v9];
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
  noteData = [v16 noteData];
  [noteData setNeedsToBeSaved:1];

  noteData2 = [v16 noteData];
  saveNoteDataIfNeeded = [noteData2 saveNoteDataIfNeeded];

  if ((saveNoteDataIfNeeded & 1) == 0)
  {
    v39 = os_log_create("com.apple.notes", "Move");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      +[ICNote(UI) duplicateNote:intoFolder:isPasswordProtected:removeOriginalNote:];
    }

LABEL_31:

    [MEMORY[0x1E69B77F0] deleteNote:v16];
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:v18];

    mEMORY[0x1E69B76D0]2 = [MEMORY[0x1E69B76D0] sharedState];
    [mEMORY[0x1E69B76D0]2 endBlockingDeauthentication];
LABEL_32:

    v17 = 0;
    goto LABEL_33;
  }

  [v16 updateChangeCountWithReason:@"Duplicated note"];
  if ([v16 wantsUserSpecificRecord])
  {
    [v16 updateUserSpecificChangeCountWithReason:@"Duplicated note"];
  }

  mEMORY[0x1E69B76D0]3 = [MEMORY[0x1E69B76D0] sharedState];
  [mEMORY[0x1E69B76D0]3 endBlockingDeauthentication];

  if (a6)
  {
    if ([v9 isPasswordProtected])
    {
      mEMORY[0x1E69B76D0]4 = [MEMORY[0x1E69B76D0] sharedState];
      [mEMORY[0x1E69B76D0]4 setCachedMainKey:0 forObject:v9];
    }

    [MEMORY[0x1E69B7778] changeLinkDestinationFromNote:v9 toNote:v16];
    [v9 markForDeletion];
    [v9 updateChangeCountWithReason:@"Duplicated note"];
    [MEMORY[0x1E69B77F0] redactNote:v9];
    [MEMORY[0x1E69B77F0] deleteNote:v9];
    account = [v9 account];
    trashFolder = [account trashFolder];
    [v9 setFolder:trashFolder];

    v33 = [MEMORY[0x1E695DF00] now];
    [v9 setFolderModificationDate:v33];

    [v9 updateChangeCountWithReason:@"Duplicated note"];
  }

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:v18];

  managedObjectContext3 = [v9 managedObjectContext];
  v36 = [managedObjectContext3 ic_saveWithLogDescription:@"Duplicated note"];

  v37 = os_log_create("com.apple.notes", "Move");
  mEMORY[0x1E69B76D0]2 = v37;
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
  mergeableString = [v3 mergeableString];
  textStorage = [v3 textStorage];
  ic_range = [textStorage ic_range];
  [mergeableString replaceCharactersInRange:ic_range withString:{v7, &stru_1F4F94F00}];

  [v3 setTitle:0];
  [v3 setSnippet:0];
  [v3 setReplicaIDToUserIDDictData:0];
  [v3 setReplicaIDToNotesVersionData:0];
  [v3 setActivityEventsData:0];
  [v3 setOutlineStateData:0];
  v54 = v3;
  attachments = [v3 attachments];
  v9 = [attachments copy];

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
        mergeableData = [v12 mergeableData];

        if (mergeableData)
        {
          v14 = objc_alloc_init(MEMORY[0x1E695DEF0]);
          [v12 setMergeableData:v14];
        }

        [v12 setTitle:0];
        [v12 setHandwritingSummary:0];
        [v12 setImageClassificationSummary:0];
        [v12 setOcrSummary:0];
        previewImages = [v12 previewImages];
        v16 = [previewImages copy];

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
                identifier = [v60 identifier];
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

        media = [v12 media];

        if (media)
        {
          media2 = [v12 media];
          hasFile = [media2 hasFile];

          if (hasFile)
          {
            media3 = [v12 media];
            v45 = objc_alloc_init(MEMORY[0x1E695DEF0]);
            v61 = 0;
            v46 = [media3 writeData:v45 error:&v61];
            v47 = v61;

            if ((v46 & 1) == 0)
            {
              v48 = os_log_create("com.apple.notes", "Media");
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                media4 = [v12 media];
                identifier2 = [media4 identifier];
                identifier3 = [v54 identifier];
                LODWORD(components[0]) = v53;
                *(components + 4) = identifier2;
                WORD2(components[1]) = 2112;
                *(&components[1] + 6) = identifier3;
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

  managedObjectContext = [v54 managedObjectContext];
  [managedObjectContext setShouldPerformSecureOperation:1];
}

- (void)redactAuthorAttributionsToCurrentUser
{
  v3.receiver = self;
  v3.super_class = &off_1F504BD70;
  objc_msgSendSuper2(&v3, sel_redactAuthorAttributionsToCurrentUser);
  textStorage = [self textStorage];
  [textStorage redactAuthorAttributionsToCurrentUser];
}

- (void)_updateTextViewToPaperIfNecessary
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  textStorage = [self textStorage];
  textViews = [textStorage textViews];

  v3 = [textViews countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(textViews);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (+[ICSystemPaperTextAttachment isEnabled](ICSystemPaperTextAttachment, "isEnabled") && ([v7 isPaperEnabled] & 1) == 0)
        {
          [v7 setPaperEnabled:1];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [textViews countByEnumeratingWithState:&v8 objects:v12 count:16];
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
        v8 = [self inlineAttachmentWithICTTAttachment:v6];
      }

      else
      {
        v8 = 0;
      }

      attachment = 0;
      if (v8 || !a4)
      {
        goto LABEL_34;
      }

      v13 = v6;
      v14 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [ICNote(UI) attachmentFromObject:v13 createIfNecessary:self];
      }

      attachmentIdentifier = [v13 attachmentIdentifier];
      if ([attachmentIdentifier length])
      {
        v8 = [self addInlineAttachmentWithIdentifier:attachmentIdentifier];
        [v8 setNeedsInitialFetchFromCloud:1];
        attachmentUTI = [v13 attachmentUTI];
        [v8 setTypeUTI:attachmentUTI];

        typeUTI = [v8 typeUTI];

        if (!typeUTI)
        {
          v18 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [ICNote(UI) attachmentFromObject:v13 createIfNecessary:self];
          }

          [v8 setTypeUTI:*MEMORY[0x1E69B7550]];
        }
      }

      else
      {
        v22 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [ICNote(UI) attachmentFromObject:v13 createIfNecessary:self];
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
      [self _updateTextViewToPaperIfNecessary];
      v9 = v6;
      attachment = [v9 attachment];
      if (!attachment && a4)
      {
        attachment = [self attachmentFromSystemPaperAttachment:v9];
      }

      goto LABEL_16;
    }

    objc_opt_class();
    v19 = ICDynamicCast();
    ic_isSystemTextAttachment = [v19 ic_isSystemTextAttachment];

    if (ic_isSystemTextAttachment)
    {
      v21 = v6;
      goto LABEL_44;
    }

    if ([v6 conformsToProtocol:&unk_1F4FC5D80])
    {
      v9 = v6;
      attachmentIdentifier2 = [v9 attachmentIdentifier];
      if (attachmentIdentifier2 && (v27 = attachmentIdentifier2, [v9 attachmentUTI], v28 = objc_claimAutoreleasedReturnValue(), v28, v27, v28))
      {
        attachmentIdentifier3 = [v9 attachmentIdentifier];
        attachment = [self attachmentWithIdentifier:attachmentIdentifier3];

        if (attachment)
        {
LABEL_55:
          attachmentUTI2 = [v9 attachmentUTI];
          [attachment setTypeUTI:attachmentUTI2];

          typeUTI2 = [attachment typeUTI];
          v36 = [typeUTI2 isEqualToString:*MEMORY[0x1E69B7450]];

          if (v36)
          {
            [self _updateTextViewToPaperIfNecessary];
          }

          typeUTI3 = [attachment typeUTI];

          if (typeUTI3)
          {
            goto LABEL_16;
          }

          identifier = [*MEMORY[0x1E6982E30] identifier];
          [attachment setTypeUTI:identifier];
          goto LABEL_9;
        }

        if (a4)
        {
          v30 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            [ICNote(UI) attachmentFromObject:createIfNecessary:];
          }

          attachmentIdentifier4 = [v9 attachmentIdentifier];
          attachment = [self addAttachmentWithIdentifier:attachmentIdentifier4];

          distantPast = [MEMORY[0x1E695DF00] distantPast];
          [attachment setModificationDate:distantPast];

          distantPast2 = [MEMORY[0x1E695DF00] distantPast];
          [attachment setCreationDate:distantPast2];

          [attachment setNeedsInitialFetchFromCloud:1];
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
        attachment = 0;
        goto LABEL_34;
      }

      v9 = v6;
      fileType = [v9 fileType];
      v39 = [fileType isEqualToString:*MEMORY[0x1E69B7458]];

      if (v39)
      {
        identifier = [v9 contents];
        v40 = [self attachmentFromTableData:identifier];
      }

      else
      {
        image = [v9 image];

        if (image)
        {
          v43 = MEMORY[0x1E6982C40];
          image2 = [v9 image];
          v45 = [v43 typeWithIdentifier:{CGImageGetUTType(objc_msgSend(image2, "ic_CGImage"))}];
          v46 = [v45 conformsToType:*MEMORY[0x1E6982E58]];

          if (v46)
          {
            image3 = [v9 image];
            v48 = UIImageJPEGRepresentation(image3, 1.0);

            v49 = [objc_alloc(MEMORY[0x1E696AC38]) initRegularFileWithContents:v48];
            [v49 setPreferredFilename:@"Attachment.jpeg"];
            [v9 setFileWrapper:v49];
          }
        }

        identifier = [v9 fileWrapper];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = [self attachmentFromLegacyAttachmentFileWrapper:identifier];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v40 = [self attachmentFromRemoteFileWrapper:identifier];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 && !identifier)
            {
              attachment = 0;
              goto LABEL_9;
            }

            v40 = [self attachmentFromStandardFileWrapper:identifier];
          }
        }
      }

      attachment = v40;
      goto LABEL_9;
    }

    v21 = 0;
    goto LABEL_44;
  }

  v9 = v6;
  attachment = [v9 attachment];
  if (attachment || !a4)
  {
    goto LABEL_16;
  }

  attachment = [self attachmentFromInlineDrawingAttachment:v9];
  objc_opt_class();
  attachmentModel = [attachment attachmentModel];
  identifier = ICDynamicCast();

  [identifier setHandwritingRecognitionEnabled:{objc_msgSend(self, "isHandwritingRecognitionEnabled")}];
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
    v23 = attachment;
  }

  v21 = v23;
  note = [v21 note];

  if (note != self)
  {
    [v21 setNote:self];
  }

  if (v8)
  {
    [self addInlineAttachmentsObject:v8];
  }

  else if (attachment)
  {
    [self addAttachmentsObject:attachment];
  }

LABEL_44:

  return v21;
}

- (id)attachmentFromInlineDrawingAttachment:()UI
{
  v4 = *MEMORY[0x1E69B7438];
  v5 = a3;
  v6 = [self addAttachmentWithUTI:v4];
  attachmentModel = [v6 attachmentModel];
  contents = [v5 contents];

  [attachmentModel mergeWithMergeableData:contents];
  [v6 updateChangeCountWithReason:@"Created attachment from inline drawing"];

  return v6;
}

- (id)attachmentFromSystemPaperAttachment:()UI
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F4FDCDE8])
  {
    _paperIdentifier = [v4 _paperIdentifier];
    v6 = [self addSystemPaperAttachmentWithIdentifier:_paperIdentifier];
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
  v1 = [self addAttachmentWithFileWrapper:?];
  [v1 updateChangeCountWithReason:@"Created attachment from file wrapper"];
  media = [v1 media];
  [media updateChangeCountWithReason:@"Created attachment from file wrapper"];

  return v1;
}

- (id)attachmentFromLegacyAttachmentFileWrapper:()UI
{
  v4 = a3;
  v5 = MEMORY[0x1E69B7680];
  attachmentIdentifier = [v4 attachmentIdentifier];
  managedObjectContext = [self managedObjectContext];
  v8 = [v5 attachmentWithIdentifier:attachmentIdentifier context:managedObjectContext];

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
  remoteURL = [a3 remoteURL];
  v5 = [self addAttachmentWithRemoteFileURL:remoteURL];

  mEMORY[0x1E69B7870] = [MEMORY[0x1E69B7870] sharedDownloader];
  [mEMORY[0x1E69B7870] downloadRemoteFileForAttachment:v5];

  [v5 updateChangeCountWithReason:@"Created attachment from remote file wrapper"];

  return v5;
}

- (uint64_t)updateThumbnailAttachmentIdentifier
{
  thumbnailAttachmentIdentifier = [self thumbnailAttachmentIdentifier];
  if (thumbnailAttachmentIdentifier || ([self isPasswordProtected] & 1) != 0)
  {
  }

  else if (([self isDeletedOrInTrash] & 1) == 0)
  {
    attachments = [self attachments];
    v5 = [attachments objectsPassingTest:&__block_literal_global_246];
    v6 = [v5 count];

    if (v6)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__20;
      v17 = __Block_byref_object_dispose__20;
      v18 = 0;
      textStorage = [self textStorage];
      v8 = [textStorage length];
      v9 = *MEMORY[0x1E69DB5F8];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __49__ICNote_UI__updateThumbnailAttachmentIdentifier__block_invoke_2;
      v12[3] = &unk_1E846A510;
      v12[4] = self;
      v12[5] = &v13;
      [textStorage enumerateAttribute:v9 inRange:0 options:v8 usingBlock:{0, v12}];
      if (v14[5])
      {
        thumbnailAttachmentIdentifier2 = [self thumbnailAttachmentIdentifier];
        v11 = [thumbnailAttachmentIdentifier2 isEqualToString:v14[5]];

        if ((v11 & 1) == 0)
        {
          [self setThumbnailAttachmentIdentifier:v14[5]];

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
  [self enumerateAttachmentsInOrderUsingBlock:v14];
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
  thumbnailAttachmentIdentifier = [self thumbnailAttachmentIdentifier];
  if (thumbnailAttachmentIdentifier)
  {
    v24 = [self attachmentWithIdentifier:thumbnailAttachmentIdentifier];
    attachmentModel = [v24 attachmentModel];
    showThumbnailInNoteList = [attachmentModel showThumbnailInNoteList];

    if (showThumbnailInNoteList)
    {
      attachmentModel2 = [v24 attachmentModel];
      genericListThumbnailCreator = [attachmentModel2 genericListThumbnailCreator];
      v29 = [v24 fetchThumbnailImageWithMinSize:v19 scale:v18 appearanceInfo:v20 cache:v21 cacheKey:v22 processingBlock:genericListThumbnailCreator completionBlock:a2 fallbackBlock:a3 aboutToLoadHandler:{a4, 0}];
      *(v42 + 24) = v29;
    }

    else
    {
      [self setThumbnailAttachmentIdentifier:0];
    }
  }

  if ((v42[3] & 1) == 0 && ([self isPasswordProtected] & 1) == 0)
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
    selfCopy = self;
    [self enumerateAttachmentsInOrderUsingBlock:v30];
  }

  _Block_object_dispose(&v41, 8);
}

- (void)noteDidApplyAttachmentViewTypeToAllAttachments
{
  textStorage = [self textStorage];
  wantsUndoCommands = [textStorage wantsUndoCommands];
  v28 = textStorage;
  [textStorage setWantsUndoCommands:0];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3010000000;
  v37 = &unk_1D449C2A9;
  v38 = xmmword_1D4433FC0;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v4 = [textStorage length];
  v5 = *MEMORY[0x1E69DB5F8];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __60__ICNote_UI__noteDidApplyAttachmentViewTypeToAllAttachments__block_invoke;
  v30[3] = &unk_1E846A588;
  v6 = array;
  v31 = v6;
  v29 = array2;
  v32 = v29;
  v33 = &v34;
  [v28 enumerateAttribute:v5 inRange:0 options:v4 usingBlock:{0, v30}];
  [v28 beginEditing];
  if ([self attachmentViewType] == 1 && objc_msgSend(v29, "count") >= 2)
  {
    newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
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
          rangeValue = [v11 rangeValue];
          v14 = v13;

          v15 = [v29 objectAtIndexedSubscript:i + 1];
          rangeValue2 = [v15 rangeValue];

          if (rangeValue2 - (rangeValue + v14) == 1)
          {
            string = [v28 string];
            v18 = rangeValue - v25;
            v19 = [string substringWithRange:{rangeValue - v25 + v14, 1}];
            v20 = [v19 componentsSeparatedByCharactersInSet:newlineCharacterSet];
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
  [v28 setWantsUndoCommands:wantsUndoCommands];
  noteData = [self noteData];
  [noteData setNeedsToBeSaved:1];

  noteData2 = [self noteData];
  [noteData2 saveNoteDataIfNeeded];

  _Block_object_dispose(&v34, 8);
}

- (uint64_t)copyValuesToNote:()UI
{
  v4 = a3;
  managedObjectContext = [v4 managedObjectContext];
  [managedObjectContext refreshObject:v4 mergeChanges:1];

  creationDate = [self creationDate];
  [v4 setCreationDate:creationDate];

  modificationDate = [self modificationDate];
  [v4 setModificationDate:modificationDate];

  snippet = [self snippet];
  [v4 setSnippet:snippet];

  title = [self title];
  [v4 setTitle:title];

  [v4 setAttachmentViewType:{objc_msgSend(self, "attachmentViewType")}];
  [v4 setPaperStyleType:{objc_msgSend(self, "paperStyleType")}];
  [v4 setIsPinned:{objc_msgSend(self, "isPinned")}];
  [v4 setPreferredBackgroundType:{objc_msgSend(self, "preferredBackgroundType")}];
  replicaIDToUserIDDictData = [self replicaIDToUserIDDictData];
  [v4 setReplicaIDToUserIDDictData:replicaIDToUserIDDictData];

  replicaIDToNotesVersionData = [self replicaIDToNotesVersionData];
  [v4 setReplicaIDToNotesVersionData:replicaIDToNotesVersionData];

  activityEventsData = [self activityEventsData];
  [v4 setActivityEventsData:activityEventsData];

  outlineStateData = [self outlineStateData];
  [v4 setOutlineStateData:outlineStateData];

  [v4 setIsSystemPaper:{objc_msgSend(self, "isSystemPaper")}];
  hostApplicationIdentifier = [self hostApplicationIdentifier];
  [v4 setHostApplicationIdentifier:hostApplicationIdentifier];

  v15 = objc_alloc(MEMORY[0x1E69B7730]);
  identifier = [self identifier];
  v17 = [v15 initWithObjectIdentifier:identifier forPasteboard:0];

  textStorage = [self textStorage];
  mergeableString = [textStorage mergeableString];
  attributedString = [mergeableString attributedString];
  managedObjectContext2 = [v4 managedObjectContext];
  v32 = 0;
  v22 = [attributedString ic_serializeWithFlags:1 dataPersister:v17 managedObjectContext:managedObjectContext2 error:&v32];
  v23 = v32;

  noteData = [self noteData];
  data = [noteData data];

  if (data && !v22)
  {
    textStorage2 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(textStorage2, OS_LOG_TYPE_ERROR))
    {
      [ICNote(UI) copyValuesToNote:self];
    }

LABEL_11:
    v29 = 0;
    v27 = textStorage2;
    v28 = v23;
    goto LABEL_12;
  }

  if (!v22)
  {
    textStorage2 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(textStorage2, OS_LOG_TYPE_ERROR))
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
    textStorage2 = [v4 textStorage];
    if ([textStorage2 wantsUndoCommands])
    {
      [textStorage2 setWantsUndoCommands:0];
      [textStorage2 replaceCharactersInRange:0 withAttributedString:[textStorage2 length], v27];
      v29 = 1;
      [textStorage2 setWantsUndoCommands:1];
    }

    else
    {
      [textStorage2 replaceCharactersInRange:0 withAttributedString:[textStorage2 length], v27];
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

    textStorage2 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(textStorage2, OS_LOG_TYPE_ERROR))
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
  shortLoggingDescription = [self shortLoggingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)saveOutlineState
{
  outlineState = [self outlineState];
  v2 = objc_alloc(MEMORY[0x1E69B7820]);
  textContentStorage = [self textContentStorage];
  outlineController = [textContentStorage outlineController];
  collapsedUUIDs = [outlineController collapsedUUIDs];
  v6 = [v2 initWithCollapsedUUIDs:collapsedUUIDs];

  if ([outlineState mergeWithState:v6])
  {
    data = [outlineState data];
    [self setOutlineStateData:data];

    [self updateUserSpecificChangeCountWithReason:@"Updated outline state"];
    managedObjectContext = [self managedObjectContext];
    [managedObjectContext ic_saveWithLogDescription:@"Updated outline state"];
  }
}

- (void)applyOutlineState
{
  outlineState = [self outlineState];
  collapsedUUIDs = [outlineState collapsedUUIDs];
  textContentStorage = [self textContentStorage];
  outlineController = [textContentStorage outlineController];
  [outlineController setCollapsedUUIDs:collapsedUUIDs];
}

- (uint64_t)saveAfterDelay
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_save object:0];
  isFastSyncSessionActive = [self isFastSyncSessionActive];
  v3 = 0.1;
  if (!isFastSyncSessionActive)
  {
    v3 = 2.0;
  }

  return [self performSelector:sel_save withObject:0 afterDelay:v3];
}

- (uint64_t)updateModificationDateAndChangeCount
{
  if ((ICInternalSettingsGetBundleBoolSettingValue() & 1) == 0)
  {
    date = [MEMORY[0x1E695DF00] date];
    [self setModificationDate:date];

    if ([self isSharedViaICloud])
    {
      modificationDate = [self modificationDate];
      lastViewedModificationDate = [self lastViewedModificationDate];
      v5 = [modificationDate ic_isLaterThanDate:lastViewedModificationDate];

      if (v5)
      {
        modificationDate2 = [self modificationDate];
        [self setLastViewedModificationDate:modificationDate2];

        [self setNeedsToSaveLastViewedTimestamp:1];
        [self updateUserSpecificChangeCountWithReason:@"Updated modification date"];
      }
    }
  }

  v7 = MEMORY[0x1E69B77F0];
  identifier = [self identifier];
  [v7 setDidShowExceededStorageQuotaAlert:0 forNoteWithIdentifier:identifier];

  return [self updateChangeCountWithReason:@"Updated modification date"];
}

- (uint64_t)updateModificationDateAndChangeCountAndSaveAfterDelay
{
  [self updateModificationDateAndChangeCount];

  return [self saveAfterDelay];
}

- (uint64_t)updateModificationDateAndChangeCountAndSaveImmediately
{
  [self updateModificationDateAndChangeCount];

  return [self save];
}

- (uint64_t)isDrawingStroke
{
  v1 = objc_getAssociatedObject(self, kICIsDrawingStrokeKey);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIsDrawingStroke:()UI
{
  if ([self isDrawingStroke] != a3)
  {
    v5 = kICIsDrawingStrokeKey;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    objc_setAssociatedObject(self, v5, v6, 1);
  }
}

- (void)createMissingAttachmentsInTextStorage
{
  textStorage = [self textStorage];
  textStorage2 = [self textStorage];
  [self filterAttachmentsInTextStorage:textStorage range:{0, objc_msgSend(textStorage2, "length")}];
}

- (void)filterAttachmentsInTextStorage:()UI range:
{
  v8 = a3;
  managedObjectContext = [self managedObjectContext];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __51__ICNote_UI__filterAttachmentsInTextStorage_range___block_invoke;
  v25[3] = &unk_1E8468BA0;
  v25[4] = self;
  [managedObjectContext performBlockAndWait:v25];

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
  v18[4] = self;
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x1E69B74D0] object:self];
  }

  managedObjectContext2 = [self managedObjectContext];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__ICNote_UI__filterAttachmentsInTextStorage_range___block_invoke_272;
  v17[3] = &unk_1E8468BA0;
  v17[4] = self;
  [managedObjectContext2 performBlockAndWait:v17];

  _Block_object_dispose(&v21, 8);
}

- (void)textStorage:()UI willProcessEditing:range:changeInLength:
{
  v22[3] = *MEMORY[0x1E69E9840];
  v12 = MEMORY[0x1E696AD88];
  v13 = a3;
  defaultCenter = [v12 defaultCenter];
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
  [defaultCenter postNotificationName:@"ICTTTextStorageWillProcessEditingNotification" object:v13 userInfo:v18];

  managedObjectContext = [self managedObjectContext];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __66__ICNote_UI__textStorage_willProcessEditing_range_changeInLength___block_invoke;
  v20[3] = &unk_1E8468BA0;
  v20[4] = self;
  [managedObjectContext performBlockAndWait:v20];
}

- (void)textStorage:()UI didProcessEditing:range:changeInLength:
{
  v12 = a3;
  managedObjectContext = [self managedObjectContext];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__ICNote_UI__textStorage_didProcessEditing_range_changeInLength___block_invoke;
  v15[3] = &unk_1E846A600;
  v15[4] = self;
  v16 = v12;
  v17 = a5;
  v18 = a6;
  v19 = a4;
  v20 = a7;
  v14 = v12;
  [managedObjectContext performBlockAndWait:v15];
}

- (void)textStorageWillChange:()UI
{
  managedObjectContext = [self managedObjectContext];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__ICNote_UI__textStorageWillChange___block_invoke;
  v3[3] = &unk_1E8468BA0;
  v3[4] = self;
  [managedObjectContext performBlockAndWait:v3];
}

- (void)textStorageDidChange:()UI
{
  managedObjectContext = [self managedObjectContext];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__ICNote_UI__textStorageDidChange___block_invoke;
  v3[3] = &unk_1E8468BA0;
  v3[4] = self;
  [managedObjectContext performBlockAndWait:v3];
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
  v9[4] = self;
  v10 = a3;
  [v7 enumerateAttribute:v6 inRange:0 options:v8 usingBlock:{0, v9}];
}

- (void)notifyTextViewsNoteWillMerge
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  textStorage = [self textStorage];
  textViews = [textStorage textViews];

  v4 = [textViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(textViews);
        }

        v8 = ICProtocolCast();
        textStorage2 = [self textStorage];
        [v8 textStorageWillPerformMerge:textStorage2];

        ++v7;
      }

      while (v5 != v7);
      v5 = [textViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  textStorage = [self textStorage];
  textViews = [textStorage textViews];

  v4 = [textViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(textViews);
        }

        v8 = ICProtocolCast();
        textStorage2 = [self textStorage];
        [v8 textStorageDidPerformMerge:textStorage2];

        ++v7;
      }

      while (v5 != v7);
      v5 = [textViews countByEnumeratingWithState:&v10 objects:v14 count:16];
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
        textStorage = [self textStorage];
        mergeableString = [textStorage mergeableString];

        if ([v7 count])
        {
          v13 = 0;
          do
          {
            objc_opt_class();
            v14 = [v8 objectAtIndexedSubscript:v13];
            v15 = ICCheckedDynamicCast();

            if ([mergeableString selection:v15 wasModifiedAfter:v6])
            {
              [self announceAccessibilitySelectionChangedByMerge];
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
  date = [MEMORY[0x1E695DF00] date];
  obj = date;
  if (!announceAccessibilitySelectionChangedByMerge_lastAnnouncementDate || ([date timeIntervalSinceDate:?], v3 = obj, v4 > 1.0))
  {
    textStorage = [self textStorage];
    textViews = [textStorage textViews];
    anyObject = [textViews anyObject];

    isFirstResponder = [anyObject isFirstResponder];
    [anyObject selectedRange];
    if (v9)
    {
      v10 = @"Selection changed by remote edit";
    }

    else
    {
      if (!isFirstResponder)
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
  textStorage = [self textStorage];
  v9 = [textStorage length];

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
    textStorage2 = [self textStorage];
    string = [textStorage2 string];
    v5 = [string paragraphRangeForRange:{v5, 0}];
    v4 = v13;
  }

  textStorage3 = [self textStorage];
  v15 = *MEMORY[0x1E69B7600];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__ICNote_UI__checklistStyleAccessibilityDescriptionForRange___block_invoke;
  v18[3] = &unk_1E846A650;
  v18[4] = &v23;
  v18[5] = &v19;
  [textStorage3 enumerateAttribute:v15 inRange:v5 options:v4 usingBlock:{0, v18}];

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
  textStorage = [self textStorage];
  v8 = [textStorage length];

  if (a3 + a4 > v8)
  {
    goto LABEL_6;
  }

  if (!a4)
  {
    textStorage2 = [self textStorage];
    string = [textStorage2 string];
    a3 = [string paragraphRangeForRange:{a3, 0}];
    a4 = v11;
  }

  textStorage3 = [self textStorage];
  v13 = *MEMORY[0x1E69B7600];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __63__ICNote_UI__indentationStyleAccessibilityDescriptionForRange___block_invoke;
  v20[3] = &unk_1E846A650;
  v20[4] = &v25;
  v20[5] = &v21;
  [textStorage3 enumerateAttribute:v13 inRange:a3 options:a4 usingBlock:{0, v20}];

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
    textStorage = [self textStorage];
    v9 = [textStorage length];

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
      textStorage2 = [self textStorage];
      v11 = *MEMORY[0x1E69B75D8];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __60__ICNote_UI__emphasisStyleAccessibilityDescriptionForRange___block_invoke;
      v13[3] = &unk_1E846A678;
      v13[4] = v16;
      v13[5] = v14;
      [textStorage2 enumerateAttribute:v11 inRange:a3 options:a4 usingBlock:{0, v13}];

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
  selectedInkIdentifier = [self selectedInkIdentifier];
  selectedInkColorString = [self selectedInkColorString];
  v4 = selectedInkColorString;
  v5 = 0;
  if (selectedInkIdentifier && selectedInkColorString)
  {
    v6 = [MEMORY[0x1E69DC888] ic_colorFromString:selectedInkColorString];
    if (v6)
    {
      v5 = [MEMORY[0x1E6978458] inkWithIdentifier:selectedInkIdentifier color:v6 weight:-1.0];
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
  identifier = [v4 identifier];
  [self setSelectedInkIdentifier:identifier];

  color = [v4 color];

  ic_colorString = [color ic_colorString];
  [self setSelectedInkColorString:ic_colorString];
}

- (uint64_t)setHandwritingRecognitionEnabled:()UI
{
  result = [self isHandwritingRecognitionEnabled];
  if (result != a3)
  {
    v6 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(ICNote(UI) *)a3 setHandwritingRecognitionEnabled:self];
    }

    v7 = kICHandwritingRecognitionEnabledKey;
    v8 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    objc_setAssociatedObject(self, v7, v8, 1);

    return [self updatePKDrawingsWithHandwritingRecognitionEnabled:a3];
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
  [self enumerateAttachmentsInOrderUsingBlock:v3];
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
  [self enumerateAttachmentsInOrderUsingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

- (BOOL)convertTextInNoteBodyToHashtag:()UI
{
  v4 = a3;
  ic_hashtagCharacterString = [MEMORY[0x1E696AEC0] ic_hashtagCharacterString];
  displayText = [v4 displayText];
  v7 = [ic_hashtagCharacterString stringByAppendingString:displayText];

  textStorage = [self textStorage];
  ic_range = [textStorage ic_range];
  v11 = v10;

  textStorage2 = [self textStorage];
  string = [textStorage2 string];
  v14 = [string rangeOfString:v7 options:257 range:{ic_range, v11}];
  v16 = v15;

  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = v14;
    do
    {
      v17 = MEMORY[0x1E69B7778];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v20 = [v17 newHashtagAttachmentWithIdentifier:uUIDString forHashtag:v4 note:self parentAttachment:0];

      v21 = [ICInlineTextAttachment textAttachmentWithAttachment:v20];
      v22 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v21];
      textStorage3 = [self textStorage];
      [textStorage3 replaceCharactersInRange:v14 withAttributedString:{v16, v22}];

      textStorage4 = [self textStorage];
      string2 = [textStorage4 string];
      v14 = [string2 rangeOfString:v7 options:257 range:{0, v14}];
      v16 = v26;
    }

    while (v14 != 0x7FFFFFFFFFFFFFFFLL);
    v14 = v29;
    textStorage5 = [self textStorage];
    [textStorage5 fixupAfterEditing];
  }

  return v14 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)addHashtagToNoteBody:()UI onlyIfMissing:
{
  v6 = a3;
  if (([self isNewNoteWithHashtagsInsertedIntoBody] & 1) == 0)
  {
    [self setIsNewNoteWithHashtagsInsertedIntoBody:{objc_msgSend(self, "isEmpty")}];
  }

  if (!a4 || ([v6 standardizedContent], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "anyVisibleInstanceOfHashtag:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v9 = MEMORY[0x1E69B7778];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v8 = [v9 newHashtagAttachmentWithIdentifier:uUIDString forHashtag:v6 note:self parentAttachment:0];

    v30 = 0;
    v31 = &v30;
    v32 = 0x3010000000;
    v34 = 0;
    v35 = 0;
    v33 = &unk_1D449C2A9;
    textStorage = [self textStorage];
    v34 = [textStorage length];
    v35 = 0;

    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 1;
    textStorage2 = [self textStorage];
    managedObjectContext = [self managedObjectContext];
    textStorage3 = [self textStorage];
    ic_range = [textStorage3 ic_range];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __49__ICNote_UI__addHashtagToNoteBody_onlyIfMissing___block_invoke;
    v25[3] = &unk_1E846A6C8;
    v25[4] = self;
    v25[5] = &v30;
    v25[6] = &v26;
    [textStorage2 ic_enumerateInlineAttachmentsInContext:managedObjectContext range:ic_range options:v17 usingBlock:{0, v25}];

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

    textStorage4 = [self textStorage];
    [textStorage4 replaceCharactersInRange:v31[4] withAttributedString:{v31[5], v19}];

    textStorage5 = [self textStorage];
    [textStorage5 fixupAfterEditing];

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
  visibleInlineAttachments = [self visibleInlineAttachments];
  v6 = [visibleInlineAttachments countByEnumeratingWithState:&v45 objects:v50 count:16];
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
        objc_enumerationMutation(visibleInlineAttachments);
      }

      v10 = *(*(&v45 + 1) + 8 * i);
      attachmentType = [v10 attachmentType];
      tokenContentIdentifier = [v10 tokenContentIdentifier];
      standardizedContent = [v4 standardizedContent];
      v14 = [tokenContentIdentifier isEqualToString:standardizedContent];

      if (attachmentType == 1 && v14 != 0)
      {
        parentAttachment = [v10 parentAttachment];

        if (parentAttachment)
        {
          displayText = [v4 displayText];
          ic_withHashtagPrefix = [displayText ic_withHashtagPrefix];

          parentAttachment2 = [v10 parentAttachment];
          attachmentModel = [parentAttachment2 attachmentModel];
          [attachmentModel replaceChildInlineAttachment:v10 withText:ic_withHashtagPrefix];

          [v36 addObject:v10];
        }

        else
        {
          [v36 addObject:v10];
          v35 = 1;
        }
      }
    }

    v7 = [visibleInlineAttachments countByEnumeratingWithState:&v45 objects:v50 count:16];
  }

  while (v7);

  if (v35)
  {
    textStorage = [self textStorage];
    v22 = [textStorage length];

    textStorage2 = [self textStorage];
    [textStorage2 beginEditing];

    textStorage3 = [self textStorage];
    managedObjectContext = [self managedObjectContext];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __28__ICNote_UI__removeHashtag___block_invoke;
    v41[3] = &unk_1E846A6F0;
    v42 = v4;
    selfCopy = self;
    v44 = v36;
    [textStorage3 ic_enumerateInlineAttachmentsInContext:managedObjectContext range:0 options:v22 usingBlock:{0, v41}];

    textStorage4 = [self textStorage];
    [textStorage4 endEditing];

    visibleInlineAttachments = v42;
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

  if ([self isEmpty])
  {
    [MEMORY[0x1E69B77F0] deleteEmptyNote:self];
  }

  v32 = [v27 count] != 0;

  return v32;
}

+ (void)removeUsageOfHashtag:()UI
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  managedObjectContext = [v3 managedObjectContext];
  v5 = MEMORY[0x1E69B77F0];
  standardizedContent = [v3 standardizedContent];
  v7 = [v5 notesContainingHashtagWithStandarizedContent:standardizedContent context:managedObjectContext];

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
        v14 = [managedObjectContext objectWithID:{v13, v16}];
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
  textStorage = [self textStorage];
  managedObjectContext = [self managedObjectContext];
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
  [textStorage ic_enumerateAbstractAttachmentsInContext:managedObjectContext range:a3 options:a4 usingBlock:{0, v25}];

  if (*(v45 + 24) != 1)
  {
    goto LABEL_12;
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  ic_attachmentCharacterString = [MEMORY[0x1E696AEC0] ic_attachmentCharacterString];
  [whitespaceAndNewlineCharacterSet addCharactersInString:ic_attachmentCharacterString];

  [whitespaceAndNewlineCharacterSet invert];
  textStorage2 = [self textStorage];
  string = [textStorage2 string];
  v22 = [string substringWithRange:{a3, a4}];

  if ([v22 rangeOfCharacterFromSet:whitespaceAndNewlineCharacterSet] != 0x7FFFFFFFFFFFFFFFLL)
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
  folder = [self folder];
  systemImageName = [folder systemImageName];
  v3 = systemImageName;
  if (systemImageName)
  {
    defaultSystemImageName = systemImageName;
  }

  else
  {
    defaultSystemImageName = [MEMORY[0x1E69B7760] defaultSystemImageName];
  }

  v5 = defaultSystemImageName;

  return v5;
}

- (id)navigationBarIconWithSize:()UI
{
  if ([self isPasswordProtected])
  {
    lockedNavigationBarIcon = [objc_opt_class() lockedNavigationBarIcon];
  }

  else
  {
    v7 = [[ICThumbnailConfiguration alloc] initForNoteNavigationBarIconWithNote:self preferredSize:a2, a3];
    v8 = +[ICThumbnailService sharedThumbnailService];
    v9 = [v8 thumbnailWithConfiguration:v7];
    image = [v9 image];
    v11 = image;
    if (image)
    {
      defaultNavigationBarIcon = image;
    }

    else
    {
      defaultNavigationBarIcon = [objc_opt_class() defaultNavigationBarIcon];
    }

    lockedNavigationBarIcon = defaultNavigationBarIcon;
  }

  return lockedNavigationBarIcon;
}

- (void)icaxGalleryViewCustomContentDescription
{
  v56 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  attachments = [self attachments];
  v4 = [attachments countByEnumeratingWithState:&v50 objects:v55 count:16];
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
          objc_enumerationMutation(attachments);
        }

        v8 = *(*(&v50 + 1) + 8 * i);
        identifier = [v8 identifier];
        [dictionary setObject:v8 forKeyedSubscript:identifier];
      }

      v5 = [attachments countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v5);
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  inlineAttachments = [self inlineAttachments];
  v12 = [inlineAttachments countByEnumeratingWithState:&v46 objects:v54 count:16];
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
          objc_enumerationMutation(inlineAttachments);
        }

        v16 = *(*(&v46 + 1) + 8 * j);
        identifier2 = [v16 identifier];
        [dictionary2 setObject:v16 forKeyedSubscript:identifier2];
      }

      v13 = [inlineAttachments countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v13);
  }

  textStorage = [self textStorage];
  attributedString = [textStorage attributedString];
  v20 = [attributedString ic_attributedSubstringUntilLine:13];
  v21 = [v20 mutableCopy];

  v22 = *MEMORY[0x1E69DB5F8];
  ic_range = [v21 ic_range];
  v25 = v24;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __53__ICNote_UI__icaxGalleryViewCustomContentDescription__block_invoke;
  v44[3] = &unk_1E846A740;
  v44[4] = self;
  v44[5] = dictionary;
  v44[6] = dictionary2;
  v26 = v21;
  v45 = v26;
  [v26 enumerateAttribute:v22 inRange:ic_range options:v25 usingBlock:{2, v44}];
  v27 = *MEMORY[0x1E69B7600];
  ic_range2 = [v26 ic_range];
  v30 = v29;
  v38 = MEMORY[0x1E69E9820];
  v39 = 3221225472;
  v40 = __53__ICNote_UI__icaxGalleryViewCustomContentDescription__block_invoke_2;
  v41 = &unk_1E846A768;
  selfCopy = self;
  v43 = v26;
  v31 = v26;
  [v31 enumerateAttribute:v27 inRange:ic_range2 options:v30 usingBlock:{2, &v38}];
  string = [v31 string];
  ic_stringByRemovingWhitespaceOnlyLines = [string ic_stringByRemovingWhitespaceOnlyLines];
  v34 = [ic_stringByRemovingWhitespaceOnlyLines stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];

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
    attachmentIdentifier = [v10 attachmentIdentifier];
    attachment = [v7 objectForKeyedSubscript:attachmentIdentifier];

    if (!attachment)
    {
      attachmentIdentifier2 = [v10 attachmentIdentifier];
      v15 = [v8 objectForKeyedSubscript:attachmentIdentifier2];

      if (v15)
      {
        altText = [v15 altText];
      }

      else
      {
        altText = 0;
      }

      attachment = 0;
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (v11)
  {
    attachment = [v11 attachment];
    if (attachment)
    {
LABEL_7:
      altText = [attachment accessibilityDescriptionForType];
      goto LABEL_12;
    }
  }

  else
  {
    attachment = 0;
  }

  altText = 0;
LABEL_12:

  return altText;
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
    startingItemNumber = [v7 startingItemNumber];
  }

  else
  {
    startingItemNumber = 1;
  }

  v24 = startingItemNumber;
  v10 = [v8 ic_attributedSubstringFromRange:{0, a3}];
  v11 = *MEMORY[0x1E69B7600];
  ic_range = [v10 ic_range];
  v14 = v13;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__ICNote_UI___icaxItemNumberForParagraphAtLocation_withStyle_inAttrString___block_invoke;
  v18[3] = &unk_1E846A790;
  v15 = v7;
  v19 = v15;
  v20 = &v21;
  [v10 enumerateAttribute:v11 inRange:ic_range options:v14 usingBlock:{2, v18}];
  v16 = v22[3];

  _Block_object_dispose(&v21, 8);
  return v16;
}

- (uint64_t)ic_lineCount
{
  attributedString = [self attributedString];
  string = [attributedString string];
  v4 = [string length];

  if (!v4)
  {
    return 0;
  }

  attributedString2 = [self attributedString];
  string2 = [attributedString2 string];
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v8 = [string2 componentsSeparatedByCharactersInSet:newlineCharacterSet];
  v9 = [v8 count];

  return v9;
}

- (uint64_t)ic_wordCount
{
  attributedString = [self attributedString];
  string = [attributedString string];
  v4 = [string length];

  if (!v4)
  {
    return 0;
  }

  attributedString2 = [self attributedString];
  string2 = [attributedString2 string];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v8 = [string2 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
  v9 = [v8 ic_compactMap:&__block_literal_global_373];
  v10 = [v9 count];

  return v10;
}

- (uint64_t)ic_characterCountIncludingSpaces:()UI
{
  attributedString = [self attributedString];
  string = [attributedString string];
  v7 = [string length];

  if (!v7)
  {
    return 0;
  }

  attributedString2 = [self attributedString];
  string2 = [attributedString2 string];

  if (a3)
  {
    v10 = [string2 length];
  }

  else
  {
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v12 = [string2 ic_stringByReplacingCharactersInSet:whitespaceAndNewlineCharacterSet withString:&stru_1F4F94F00];
    v10 = [v12 length];
  }

  return v10;
}

- (id)searchableItemViewAttributeSet
{
  if (_os_feature_enabled_impl())
  {
    attachments = [self attachments];
    allObjects = [attachments allObjects];
    firstObject = [allObjects firstObject];
    previewImages = [firstObject previewImages];
    allObjects2 = [previewImages allObjects];
    firstObject2 = [allObjects2 firstObject];

    previewImageURL = [firstObject2 previewImageURL];
    v9 = [MEMORY[0x1E69B7B58] makeNoteSearchResultViewWithNote:self attachmentURL:previewImageURL];
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