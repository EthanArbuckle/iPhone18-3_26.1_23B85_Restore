@interface ICAttachmentInlineDrawingModel(UI)
- (BOOL)isTitleQueryEnabled;
- (ICAttachmentInlineDrawingActivityItemSource)activityItem;
- (id)activityItems;
- (id)handwritingRecognitionDrawingQueue;
- (id)imageForActivityItem;
- (id)mergeableDataForCopying:()UI;
- (uint64_t)actuallyMergeWithDrawing:()UI;
- (uint64_t)isHandwritingRecognitionEnabled;
- (uint64_t)mergeWithMergeableData:()UI mergeableFieldState:;
- (void)attachmentModelDealloc;
- (void)drawPreviewInRect:()UI;
- (void)setHandwritingRecognitionEnabled:()UI;
- (void)setTitleQueryEnabled:()UI;
- (void)titleQuery:()UI didUpdateWithItem:;
- (void)updateAfterLoadWithSubAttachmentIdentifierMap:()UI;
@end

@implementation ICAttachmentInlineDrawingModel(UI)

- (void)attachmentModelDealloc
{
  titleQuery = [self titleQuery];
  [titleQuery setDelegate:0];
  [titleQuery pause];
}

- (uint64_t)mergeWithMergeableData:()UI mergeableFieldState:
{
  v4 = a3;
  if ([v4 length])
  {
    v14 = 0;
    v5 = [objc_alloc(MEMORY[0x1E6978410]) initWithData:v4 error:&v14];
    v6 = v14;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    if (v8)
    {
      if (![self actuallyMergeWithDrawing:v5])
      {
        v9 = 0;
        goto LABEL_17;
      }

      attachment = [self attachment];
      v10 = [attachment ic_postNotificationOnMainThreadAfterSaveWithName:@"ICAttachmentInlineDrawingModelMergeableDataDidChangeNotification"];
    }

    else
    {
      attachment = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(attachment, OS_LOG_TYPE_ERROR))
      {
        [ICAttachmentInlineDrawingModel(UI) mergeWithMergeableData:mergeableFieldState:];
      }
    }

LABEL_17:
    goto LABEL_18;
  }

  v9 = 0;
LABEL_18:

  return v9;
}

- (uint64_t)actuallyMergeWithDrawing:()UI
{
  v4 = a3;
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__0;
  v39 = __Block_byref_object_dispose__0;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __63__ICAttachmentInlineDrawingModel_UI__actuallyMergeWithDrawing___block_invoke;
  v27[3] = &unk_1E8468F58;
  v29 = &v35;
  v27[4] = self;
  v7 = v4;
  v28 = v7;
  v30 = &v31;
  [managedObjectContext performBlockAndWait:v27];
  if ([v36[5] length])
  {
    v8 = objc_alloc(MEMORY[0x1E6978410]);
    v9 = v36[5];
    v26 = 0;
    v10 = [v8 initWithData:v9 error:&v26];
    v11 = v26;
    if (v11)
    {
      v12 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ICAttachmentInlineDrawingModel(UI) actuallyMergeWithDrawing:];
      }
    }

    v13 = [v10 mergeWithDrawing:v7];
  }

  else
  {
    v10 = v7;
    v13 = 2;
  }

  handwritingRecognitionDrawingQueue = [self handwritingRecognitionDrawingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__ICAttachmentInlineDrawingModel_UI__actuallyMergeWithDrawing___block_invoke_14;
  block[3] = &unk_1E8468F80;
  block[4] = self;
  v15 = v7;
  v25 = v15;
  dispatch_async(handwritingRecognitionDrawingQueue, block);

  if (!v13)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __63__ICAttachmentInlineDrawingModel_UI__actuallyMergeWithDrawing___block_invoke_15;
    v21[3] = &unk_1E8468BA0;
    v21[4] = self;
    [managedObjectContext performBlockAndWait:v21];
    goto LABEL_14;
  }

  if (v13 == 1)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __63__ICAttachmentInlineDrawingModel_UI__actuallyMergeWithDrawing___block_invoke_16;
    v20[3] = &unk_1E8468BA0;
    v20[4] = self;
    [managedObjectContext performBlockAndWait:v20];
    goto LABEL_14;
  }

  if (v13 != 2)
  {
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v16 = [v10 serializeWithVersion:v32[3]];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __63__ICAttachmentInlineDrawingModel_UI__actuallyMergeWithDrawing___block_invoke_2;
  v22[3] = &unk_1E8468F80;
  v22[4] = self;
  v17 = v16;
  v23 = v17;
  [managedObjectContext performBlockAndWait:v22];

  v18 = 1;
LABEL_15:

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  return v18;
}

- (id)imageForActivityItem
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = 0;
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__ICAttachmentInlineDrawingModel_UI__imageForActivityItem__block_invoke;
  v7[3] = &unk_1E8468FA8;
  v7[4] = self;
  v7[5] = &v8;
  [managedObjectContext performBlockAndWait:v7];

  if (v9[5])
  {
    v4 = [MEMORY[0x1E69DCAB8] ic_imageWithData:?];
    v5 = [ICAttachmentPreviewImageLoader orientedImage:v4 withBackground:1];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);

  return v5;
}

- (ICAttachmentInlineDrawingActivityItemSource)activityItem
{
  v2 = [ICAttachmentInlineDrawingActivityItemSource alloc];
  attachment = [self attachment];
  v4 = [(ICAttachmentActivityItemSource *)v2 initWithAttachment:attachment];

  return v4;
}

- (id)activityItems
{
  v10[1] = *MEMORY[0x1E69E9840];
  activityItem = [self activityItem];
  v3 = activityItem;
  if (activityItem)
  {
    v10[0] = activityItem;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = [ICAttachmentActivityItemSource alloc];
  attachment = [self attachment];
  v7 = [(ICAttachmentActivityItemSource *)v5 initWithAttachment:attachment];
  v8 = [v4 arrayByAddingObject:v7];

  return v8;
}

- (id)mergeableDataForCopying:()UI
{
  newDrawingFromMergeableData = [self newDrawingFromMergeableData];
  serializeTransiently = [newDrawingFromMergeableData serializeTransiently];

  return serializeTransiently;
}

- (void)updateAfterLoadWithSubAttachmentIdentifierMap:()UI
{
  newDrawingFromMergeableData = [self newDrawingFromMergeableData];
  if (newDrawingFromMergeableData)
  {
    v9 = newDrawingFromMergeableData;
    uuid = [newDrawingFromMergeableData uuid];

    if (!uuid)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"((drawing.uuid) != nil)" functionName:"-[ICAttachmentInlineDrawingModel(UI) updateAfterLoadWithSubAttachmentIdentifierMap:]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "drawing.uuid"}];
    }

    attachment = [self attachment];
    typeUTI = [attachment typeUTI];
    if ([typeUTI isEqualToString:*MEMORY[0x1E69B7438]])
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = [v9 serializeWithVersion:v6];
    attachment2 = [self attachment];
    [attachment2 setMergeableData:v7];

    newDrawingFromMergeableData = v9;
  }
}

- (void)setHandwritingRecognitionEnabled:()UI
{
  handwritingRecognitionDrawing = [self handwritingRecognitionDrawing];
  if (a3)
  {
    if (!handwritingRecognitionDrawing)
    {
      newDrawingFromMergeableData = [self newDrawingFromMergeableData];
      [self setHandwritingRecognitionDrawing:newDrawingFromMergeableData];
      handwritingRecognitionDrawing = newDrawingFromMergeableData;
    }

    v7 = handwritingRecognitionDrawing;
    [handwritingRecognitionDrawing setRecognitionEnabled:1];
  }

  else
  {
    if (!handwritingRecognitionDrawing)
    {
      return;
    }

    v7 = handwritingRecognitionDrawing;
    [handwritingRecognitionDrawing cancelOngoingRecognitionRequests];
    [v7 setRecognitionEnabled:0];
    [self setHandwritingRecognitionDrawing:0];
  }
}

- (uint64_t)isHandwritingRecognitionEnabled
{
  handwritingRecognitionDrawing = [self handwritingRecognitionDrawing];
  recognitionEnabled = [handwritingRecognitionDrawing recognitionEnabled];

  return recognitionEnabled;
}

- (id)handwritingRecognitionDrawingQueue
{
  v2 = objc_getAssociatedObject(self, ICHandwritingRecognitionDrawingQueueKey);
  if (!v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.notes.handwritingrecognition", v3);

    [self setHandwritingRecognitionDrawingQueue:v2];
  }

  return v2;
}

- (void)setTitleQueryEnabled:()UI
{
  titleQuery = [self titleQuery];
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__0;
  v16[3] = __Block_byref_object_dispose__0;
  v17 = 0;
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__ICAttachmentInlineDrawingModel_UI__setTitleQueryEnabled___block_invoke;
  v14[3] = &unk_1E8468FA8;
  v14[4] = self;
  v14[5] = &v15;
  [managedObjectContext performBlockAndWait:v14];

  if (a3)
  {
    if (!titleQuery)
    {
      v8 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(ICAttachmentInlineDrawingModel(UI) *)v16 setTitleQueryEnabled:v8];
      }

      v12[0] = 0;
      v12[1] = v12;
      v12[2] = 0x3032000000;
      v12[3] = __Block_byref_object_copy__0;
      v12[4] = __Block_byref_object_dispose__0;
      v13 = 0;
      handwritingRecognitionDrawingQueue = [self handwritingRecognitionDrawingQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__ICAttachmentInlineDrawingModel_UI__setTitleQueryEnabled___block_invoke_29;
      block[3] = &unk_1E8468FF8;
      block[4] = self;
      block[5] = v12;
      block[6] = &v15;
      dispatch_async(handwritingRecognitionDrawingQueue, block);

      _Block_object_dispose(v12, 8);
    }
  }

  else if (titleQuery)
  {
    v10 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(ICAttachmentInlineDrawingModel(UI) *)v16 setTitleQueryEnabled:v10];
    }

    [titleQuery pause];
    [self setTitleQuery:0];
  }

  _Block_object_dispose(&v15, 8);
}

- (BOOL)isTitleQueryEnabled
{
  titleQuery = [self titleQuery];
  v2 = titleQuery != 0;

  return v2;
}

- (void)titleQuery:()UI didUpdateWithItem:
{
  transcribedTitle = [a4 transcribedTitle];
  attachment = [self attachment];
  objectID = [attachment objectID];

  mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__ICAttachmentInlineDrawingModel_UI__titleQuery_didUpdateWithItem___block_invoke;
  v11[3] = &unk_1E8469020;
  v12 = objectID;
  v13 = transcribedTitle;
  v9 = transcribedTitle;
  v10 = objectID;
  [mEMORY[0x1E69B7800] performBackgroundTask:v11];
}

- (void)drawPreviewInRect:()UI
{
  currentInfo = [MEMORY[0x1E69B7678] currentInfo];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  attachment = [self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__ICAttachmentInlineDrawingModel_UI__drawPreviewInRect___block_invoke;
  v21[3] = &unk_1E8468FA8;
  v21[4] = self;
  v21[5] = &v22;
  [managedObjectContext performBlockAndWait:v21];

  v13 = MEMORY[0x1E69B76A0];
  attachment2 = [self attachment];
  v15 = [v13 generateImageForAttachment:attachment2 fromDrawing:v23[5] fullResolution:0 appearanceInfo:currentInfo];

  if (!v15)
  {
    attachment3 = [self attachment];
    fallbackImageData = [attachment3 fallbackImageData];

    if (!fallbackImageData)
    {
      v15 = 0;
      goto LABEL_3;
    }

    v20 = [MEMORY[0x1E69DCAB8] ic_imageWithData:fallbackImageData];
    v15 = [ICAttachmentPreviewImageLoader orientedImage:v20 withBackground:0];

    if (!v15)
    {
      goto LABEL_3;
    }
  }

  attachment4 = [self attachment];
  note = [attachment4 note];
  +[ICPaperStyle drawPaperStyleType:inRect:](ICPaperStyle, "drawPaperStyleType:inRect:", [note paperStyleType], a2, a3, a4, a5);

  [v15 drawInRect:{a2, a3, a4, a5}];
LABEL_3:

  _Block_object_dispose(&v22, 8);
}

- (void)setTitleQueryEnabled:()UI .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "Disabling title query for %@", &v3, 0xCu);
}

- (void)setTitleQueryEnabled:()UI .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "Enabling title query for %@", &v3, 0xCu);
}

@end