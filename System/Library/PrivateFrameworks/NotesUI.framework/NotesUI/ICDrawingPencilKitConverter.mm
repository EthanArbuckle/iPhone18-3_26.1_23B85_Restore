@interface ICDrawingPencilKitConverter
+ (BOOL)canUpdateFullscreenSketchAttachment:(id)attachment;
+ (BOOL)canUpdateInlineDrawingAttachment:(id)attachment;
+ (id)newThrowawayConverter;
+ (id)sharedConverter;
+ (unint64_t)countOfUpdatableDrawingsInNote:(id)note;
- (BOOL)compareDrawingAttachment:(id)attachment withConvertedDrawing:(id)drawing;
- (BOOL)shouldAutoConvertNote:(id)note;
- (BOOL)shouldConvertAllDrawingsIfNeeded;
- (ICDrawingPencilKitConverter)init;
- (NSArray)failedSketches;
- (NSMutableArray)mutableFailedSketches;
- (id)addOperationForAttachment:(id)attachment automatic:(BOOL)automatic;
- (id)convertSketch:(id)sketch;
- (id)convertSketchAttachment:(id)attachment toInlineDrawingAtRange:(_NSRange)range inNote:(id)note;
- (id)updateInlineDrawingAttachment:(id)attachment;
- (unint64_t)convertAllSketchesInNote:(id)note;
- (unint64_t)countOfDrawingsNeedingConversionInNote:(id)note;
- (void)canAutoUpdateDrawingsInAccount:(id)account completion:(id)completion;
- (void)convertAllDrawingsIfNeeded;
- (void)convertAllSketchesWithProgress:(id)progress completion:(id)completion;
- (void)convertDrawingsInNote:(id)note inWindow:(id)window message:(id)message completion:(id)completion;
- (void)convertDrawingsInNote:(id)note waitUntilFinished:(BOOL)finished;
- (void)convertDrawingsInNoteIfNeeded:(id)needed;
- (void)operationComplete:(id)complete;
@end

@implementation ICDrawingPencilKitConverter

+ (id)sharedConverter
{
  if (sharedConverter_once != -1)
  {
    +[ICDrawingPencilKitConverter sharedConverter];
  }

  v3 = sharedConverter;

  return v3;
}

uint64_t __46__ICDrawingPencilKitConverter_sharedConverter__block_invoke()
{
  sharedConverter = objc_alloc_init(ICDrawingPencilKitConverter);

  return MEMORY[0x1EEE66BB8]();
}

- (ICDrawingPencilKitConverter)init
{
  v11.receiver = self;
  v11.super_class = ICDrawingPencilKitConverter;
  v2 = [(ICDrawingPencilKitConverter *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    converterQueue = v2->_converterQueue;
    v2->_converterQueue = v3;

    [(NSOperationQueue *)v2->_converterQueue setName:@"Converter Queue"];
    [(NSOperationQueue *)v2->_converterQueue setMaxConcurrentOperationCount:1];
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    lastOperationForAttachmentID = v2->_lastOperationForAttachmentID;
    v2->_lastOperationForAttachmentID = strongToWeakObjectsMapTable;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.notes.drawing-converter", v7);
    convertDispatchQueue = v2->_convertDispatchQueue;
    v2->_convertDispatchQueue = v8;
  }

  return v2;
}

- (BOOL)shouldConvertAllDrawingsIfNeeded
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:*MEMORY[0x1E69B7B48]];

  return v3 ^ 1;
}

+ (id)newThrowawayConverter
{
  v2 = objc_alloc_init(ICDrawingPencilKitConverter);
  [(ICDrawingPencilKitConverter *)v2 setIsThrowaway:1];
  return v2;
}

+ (BOOL)canUpdateFullscreenSketchAttachment:(id)attachment
{
  attachmentCopy = attachment;
  attachmentType = [attachmentCopy attachmentType];
  note = [attachmentCopy note];
  isEditable = [note isEditable];

  if ([attachmentCopy needsToBeFetchedFromCloud])
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = [attachmentCopy needsInitialFetchFromCloud] ^ 1;
  }

  v8 = attachmentType == 9;
  mergeableData = [attachmentCopy mergeableData];

  if (mergeableData)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = (v8 & isEditable) == 1 && v10;

  return v11;
}

+ (BOOL)canUpdateInlineDrawingAttachment:(id)attachment
{
  attachmentCopy = attachment;
  attachmentType = [attachmentCopy attachmentType];
  typeUTI = [attachmentCopy typeUTI];
  v6 = [typeUTI isEqualToString:*MEMORY[0x1E69B7440]];

  note = [attachmentCopy note];
  isEditable = [note isEditable];

  if ([attachmentCopy needsToBeFetchedFromCloud])
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [attachmentCopy needsInitialFetchFromCloud] ^ 1;
  }

  v10 = attachmentType == 10;
  mergeableData = [attachmentCopy mergeableData];

  if ((v10 & isEditable & v6) == 1)
  {
    if (mergeableData)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (unint64_t)countOfUpdatableDrawingsInNote:(id)note
{
  noteCopy = note;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__ICDrawingPencilKitConverter_countOfUpdatableDrawingsInNote___block_invoke;
  v7[3] = &unk_1E8469060;
  v7[4] = &v8;
  v7[5] = self;
  [noteCopy enumerateAttachmentsInOrderUsingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __62__ICDrawingPencilKitConverter_countOfUpdatableDrawingsInNote___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([objc_opt_class() canUpdateFullscreenSketchAttachment:v3] & 1) != 0 || objc_msgSend(objc_opt_class(), "canUpdateInlineDrawingAttachment:", v3))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (void)canAutoUpdateDrawingsInAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  accountType = [accountCopy accountType];
  if (accountType == 1)
  {
    mEMORY[0x1E69B7708] = [MEMORY[0x1E69B7708] sharedController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__ICDrawingPencilKitConverter_canAutoUpdateDrawingsInAccount_completion___block_invoke;
    v9[3] = &unk_1E84690A8;
    v10 = completionCopy;
    [mEMORY[0x1E69B7708] devicesForAccount:accountCopy completionHandler:v9];
  }

  else if (accountType == 3 && completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

uint64_t __73__ICDrawingPencilKitConverter_canAutoUpdateDrawingsInAccount_completion___block_invoke(uint64_t a1, void *a2)
{
  [a2 ic_allSatisfy:&__block_literal_global_33];
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (NSMutableArray)mutableFailedSketches
{
  mutableFailedSketches = self->_mutableFailedSketches;
  if (!mutableFailedSketches)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_mutableFailedSketches;
    self->_mutableFailedSketches = v4;

    mutableFailedSketches = self->_mutableFailedSketches;
  }

  return mutableFailedSketches;
}

- (NSArray)failedSketches
{
  mutableFailedSketches = [(ICDrawingPencilKitConverter *)self mutableFailedSketches];
  v3 = [mutableFailedSketches copy];

  return v3;
}

- (void)convertAllSketchesWithProgress:(id)progress completion:(id)completion
{
  progressCopy = progress;
  completionCopy = completion;
  mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
  workerManagedObjectContext = [mEMORY[0x1E69B7800] workerManagedObjectContext];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__ICDrawingPencilKitConverter_convertAllSketchesWithProgress_completion___block_invoke;
  v17[3] = &unk_1E8468D98;
  v10 = workerManagedObjectContext;
  v18 = v10;
  v11 = progressCopy;
  v19 = v11;
  selfCopy = self;
  [v10 performBlockAndWait:v17];
  if (![(ICDrawingPencilKitConverter *)self isThrowaway])
  {
    mEMORY[0x1E69B7800]2 = [MEMORY[0x1E69B7800] sharedContext];
    managedObjectContext = [mEMORY[0x1E69B7800]2 managedObjectContext];
    [managedObjectContext ic_saveWithLogDescription:@"saving main context after converting all sketch attachments"];

    v14 = +[ICAttachmentPreviewGenerator sharedGenerator];
    [v14 generatePreviewsIfNeeded];
  }

  if (completionCopy)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __73__ICDrawingPencilKitConverter_convertAllSketchesWithProgress_completion___block_invoke_46;
    v15[3] = &unk_1E84690D0;
    v16 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }
}

void __73__ICDrawingPencilKitConverter_convertAllSketchesWithProgress_completion___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v29 = [MEMORY[0x1E695DF00] date];
  v2 = [MEMORY[0x1E69B7658] allActiveAccountsInContext:*(a1 + 32)];
  v3 = [MEMORY[0x1E695DF70] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v34 + 1) + 8 * i) predicateForVisibleNotes];
        v11 = [MEMORY[0x1E69B77F0] ic_objectIDsMatchingPredicate:v10 context:*(a1 + 32)];
        [v3 addObjectsFromArray:v11];
        v7 += [v11 count];
      }

      v6 = [v4 countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [*(a1 + 40) setTotalUnitCount:v7];
  [*(a1 + 40) setCompletedUnitCount:0];
  v12 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __73__ICDrawingPencilKitConverter_convertAllSketchesWithProgress_completion___block_invoke_cold_1(v7, v12);
  }

  v27 = (a1 + 40);
  v28 = v4;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v3;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = 0;
    v18 = *v31;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v30 + 1) + 8 * j);
        v21 = objc_autoreleasePoolPush();
        v22 = [MEMORY[0x1E69B77F0] ic_existingObjectWithID:v20 context:*(a1 + 32)];
        v16 += [*(a1 + 48) convertAllSketchesInNote:v22];
        [*(a1 + 40) setCompletedUnitCount:++v17];

        objc_autoreleasePoolPop(v21);
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v44 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v23 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [v29 timeIntervalSinceNow];
    *buf = 134218496;
    v39 = v16;
    v40 = 2048;
    v41 = v17;
    v42 = 2048;
    v43 = -v26;
    _os_log_debug_impl(&dword_1D4171000, v23, OS_LOG_TYPE_DEBUG, "Finished converting %lu sketches in %lu notes in %f seconds", buf, 0x20u);
  }

  v24 = [*v27 completedUnitCount];
  if (v24 != [*v27 totalUnitCount])
  {
    v25 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __73__ICDrawingPencilKitConverter_convertAllSketchesWithProgress_completion___block_invoke_cold_2(v27);
    }
  }
}

uint64_t __73__ICDrawingPencilKitConverter_convertAllSketchesWithProgress_completion___block_invoke_46(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)convertAllSketchesInNote:(id)note
{
  v48 = *MEMORY[0x1E69E9840];
  noteCopy = note;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  if (([noteCopy isSharedViaICloud] & 1) != 0 || (objc_msgSend(noteCopy, "isDeletedOrInTrash") & 1) != 0 || (objc_msgSend(noteCopy, "isPasswordProtected") & 1) != 0 || !objc_msgSend(noteCopy, "isEditable"))
  {
    v16 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      shortLoggingDescription = [noteCopy shortLoggingDescription];
      if ([noteCopy isSharedViaICloud])
      {
        v20 = @"shared";
      }

      else
      {
        v20 = @"n";
      }

      if ([noteCopy isDeletedOrInTrash])
      {
        v21 = @"deleted";
      }

      else
      {
        v21 = @"n";
      }

      isPasswordProtected = [noteCopy isPasswordProtected];
      isEditable = [noteCopy isEditable];
      v24 = @"password-protected";
      *buf = 138413314;
      if (!isPasswordProtected)
      {
        v24 = @"n";
      }

      v38 = shortLoggingDescription;
      v25 = @"not-editable";
      v39 = 2112;
      v40 = v20;
      v41 = 2112;
      if (isEditable)
      {
        v25 = @"editable";
      }

      v42 = v21;
      v43 = 2112;
      v44 = v24;
      v45 = 2112;
      v46 = v25;
      _os_log_debug_impl(&dword_1D4171000, v16, OS_LOG_TYPE_DEBUG, "not converting sketches in note %@ %@ %@ %@ %@", buf, 0x34u);
    }
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      shortLoggingDescription2 = [noteCopy shortLoggingDescription];
      [(ICDrawingPencilKitConverter *)shortLoggingDescription2 convertAllSketchesInNote:v47, v5];
    }

    textStorage = [noteCopy textStorage];
    managedObjectContext = [noteCopy managedObjectContext];
    textStorage2 = [noteCopy textStorage];
    v10 = [textStorage2 length];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __56__ICDrawingPencilKitConverter_convertAllSketchesInNote___block_invoke;
    v29 = &unk_1E84690F8;
    selfCopy = self;
    v11 = noteCopy;
    v31 = v11;
    v32 = &v33;
    [textStorage ic_enumerateAttachmentsInContext:managedObjectContext range:0 options:v10 usingBlock:{2, &v26}];

    v12 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = v34[3];
      shortLoggingDescription3 = [v11 shortLoggingDescription];
      [(ICDrawingPencilKitConverter *)shortLoggingDescription3 convertAllSketchesInNote:buf, v13, v12];
    }

    if (v34[3] && ![(ICDrawingPencilKitConverter *)self isThrowaway])
    {
      managedObjectContext2 = [v11 managedObjectContext];
      [managedObjectContext2 ic_saveWithLogDescription:{@"saving note with %lu converted sketches", v34[3], v26, v27, v28, v29, selfCopy}];
    }
  }

  v17 = v34[3];
  _Block_object_dispose(&v33, 8);

  return v17;
}

void __56__ICDrawingPencilKitConverter_convertAllSketchesInNote___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  if ([objc_opt_class() canUpdateFullscreenSketchAttachment:v9])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [*(a1 + 32) convertSketchAttachment:v9 toInlineDrawingAtRange:a3 inNote:{a4, *(a1 + 40)}];
    ++*(*(*(a1 + 48) + 8) + 24);
    objc_autoreleasePoolPop(v7);
  }
}

- (id)convertSketchAttachment:(id)attachment toInlineDrawingAtRange:(_NSRange)range inNote:(id)note
{
  length = range.length;
  location = range.location;
  v63 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  noteCopy = note;
  drawingModel = [attachmentCopy drawingModel];
  drawing = [drawingModel drawing];

  v13 = [(ICDrawingPencilKitConverter *)self convertSketch:drawing];
  v14 = [v13 serializeWithVersion:2];
  if (!v13 || [(ICDrawingPencilKitConverter *)self compareDrawingAttachment:attachmentCopy withConvertedDrawing:v13])
  {
    mutableFailedSketches = [(ICDrawingPencilKitConverter *)self mutableFailedSketches];
    objectID = [attachmentCopy objectID];
    [mutableFailedSketches addObject:objectID];
  }

  if (!v14)
  {
    v17 = 0;
    goto LABEL_29;
  }

  v17 = 0;
  if (![(ICDrawingPencilKitConverter *)self isThrowaway]&& location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [noteCopy attachmentExceedsMaxSizeAllowed:{objc_msgSend(v14, "length")}];
    v19 = os_log_create("com.apple.notes", "PencilKit");
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        shortLoggingDescription = [attachmentCopy shortLoggingDescription];
        ic_loggingDescription = [v13 ic_loggingDescription];
        *buf = 138412802;
        v58 = shortLoggingDescription;
        v59 = 2112;
        v60 = ic_loggingDescription;
        v61 = 2048;
        v62 = [v14 length];
        _os_log_error_impl(&dword_1D4171000, v20, OS_LOG_TYPE_ERROR, "over limit when converting: sketch %@ has pkDrawing %@ with size %lu", buf, 0x20u);
      }

      v17 = 0;
      v21 = v20;
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        shortLoggingDescription2 = [attachmentCopy shortLoggingDescription];
        shortLoggingDescription3 = [noteCopy shortLoggingDescription];
        v65.location = location;
        v65.length = length;
        NSStringFromRange(v65);
        v50 = v56 = location;
        *buf = 138412802;
        v58 = shortLoggingDescription2;
        v59 = 2112;
        v60 = shortLoggingDescription3;
        v61 = 2112;
        v62 = v50;
        _os_log_debug_impl(&dword_1D4171000, v20, OS_LOG_TYPE_DEBUG, "converting sketch %@ in note %@ at range %@", buf, 0x20u);

        location = v56;
      }

      textStorage = [noteCopy textStorage];
      wantsUndoCommands = [textStorage wantsUndoCommands];

      textStorage2 = [noteCopy textStorage];
      [textStorage2 setWantsUndoCommands:0];

      v25 = [noteCopy addInlineDrawingAttachmentWithAnalytics:0];
      if (!v25)
      {
        v21 = os_log_create("com.apple.notes", "PencilKit");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [ICDrawingPencilKitConverter convertSketchAttachment:toInlineDrawingAtRange:inNote:];
        }

        v17 = 0;
        goto LABEL_28;
      }

      v17 = v25;
      v52 = wantsUndoCommands;
      [v25 setMergeableData:v14];
      metadata = [v17 metadata];
      v27 = metadata;
      if (!metadata)
      {
        metadata = MEMORY[0x1E695E0F8];
      }

      v28 = [metadata mutableCopy];

      [v28 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69B7400]];
      v53 = v28;
      [v17 setMetadata:v28];
      [MEMORY[0x1E69B7748] defaultPixelSize];
      v29 = [attachmentCopy attachmentPreviewImageWithMinSize:? scale:?];
      v20 = v29;
      v54 = length;
      v55 = location;
      if (v29 && (-[NSObject image](v29, "image"), (v30 = objc_claimAutoreleasedReturnValue()) != 0) && (v31 = v30, v51 = -[NSObject version](v20, "version"), v32 = [MEMORY[0x1E69B7750] serializationVersion], v31, v32 <= v51))
      {
        image = [v20 image];
        [image size];
        [v17 setSizeWidth:?];
        [image size];
        [v17 setSizeHeight:v34];
        fallbackImageUTI = [MEMORY[0x1E69B7680] fallbackImageUTI];
        v36 = [image ic_imageDataWithUTType:fallbackImageUTI];
        [v17 writeFallbackImageData:v36];
      }

      else
      {
        image = os_log_create("com.apple.notes", "PencilKit");
        if (os_log_type_enabled(image, OS_LOG_TYPE_ERROR))
        {
          [ICDrawingPencilKitConverter convertSketchAttachment:toInlineDrawingAtRange:inNote:];
        }
      }

      userTitle = [attachmentCopy userTitle];
      [v17 setUserTitle:userTitle];

      title = [attachmentCopy title];
      [v17 setTitle:title];

      summary = [attachmentCopy summary];
      [v17 setSummary:summary];

      v40 = [ICTextAttachment textAttachmentWithAttachment:v17];
      v41 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v40];
      v42 = [v41 mutableCopy];

      [v42 addAttribute:*MEMORY[0x1E69DB5F8] value:v40 range:{0, objc_msgSend(v42, "length")}];
      textStorage3 = [noteCopy textStorage];
      [textStorage3 replaceCharactersInRange:v55 withAttributedString:{v54, v42}];

      [attachmentCopy markForDeletion];
      [attachmentCopy updateChangeCountWithReason:@"Converted sketch to inline drawing"];
      [v17 updateChangeCountWithReason:@"Converted sketch to inline drawing"];
      [noteCopy updateChangeCountWithReason:@"Converted sketch to inline drawing"];
      textStorage4 = [noteCopy textStorage];
      [textStorage4 setWantsUndoCommands:v52];

      v21 = v53;
    }

LABEL_28:
  }

LABEL_29:

  return v17;
}

- (id)convertSketch:(id)sketch
{
  sketchCopy = sketch;
  v4 = [sketchCopy serializeWithPathData:1];
  v5 = dispatch_semaphore_create(0);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v6 = MEMORY[0x1E6978410];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__ICDrawingPencilKitConverter_convertSketch___block_invoke;
  v12[3] = &unk_1E8469120;
  v7 = sketchCopy;
  v13 = v7;
  v15 = v23;
  v16 = &v17;
  v8 = v5;
  v14 = v8;
  v9 = [v6 _upgradeDrawingData:v4 queue:0 completionBlock:v12];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(v23, 8);

  return v10;
}

void __45__ICDrawingPencilKitConverter_convertSketch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __45__ICDrawingPencilKitConverter_convertSketch___block_invoke_cold_1(a1, v6, v7);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)updateInlineDrawingAttachment:(id)attachment
{
  attachmentCopy = attachment;
  typeUTI = [attachmentCopy typeUTI];
  v5 = [typeUTI isEqualToString:*MEMORY[0x1E69B7440]];

  rangeInNote = [attachmentCopy rangeInNote];
  if (v5)
  {
    v7 = rangeInNote == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v12 = 0;
  }

  else
  {
    note = [attachmentCopy note];
    textStorage = [note textStorage];
    wantsUndoCommands = [textStorage wantsUndoCommands];

    textStorage2 = [note textStorage];
    [textStorage2 setWantsUndoCommands:0];

    v12 = [note addInlineDrawingAttachmentWithAnalytics:0];
    mergeableData = [attachmentCopy mergeableData];
    [v12 setMergeableData:mergeableData];

    [v12 setTypeUTI:*MEMORY[0x1E69B7438]];
    [attachmentCopy sizeWidth];
    [v12 setSizeWidth:?];
    [attachmentCopy sizeHeight];
    [v12 setSizeHeight:?];
    fallbackImageData = [attachmentCopy fallbackImageData];
    [v12 writeFallbackImageData:fallbackImageData];

    userTitle = [attachmentCopy userTitle];
    [v12 setUserTitle:userTitle];

    title = [attachmentCopy title];
    [v12 setTitle:title];

    summary = [attachmentCopy summary];
    [v12 setSummary:summary];

    v18 = [ICTextAttachment textAttachmentWithAttachment:v12];
    v19 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v18];
    v20 = [v19 mutableCopy];

    v21 = *MEMORY[0x1E69DB5F8];
    ic_range = [v20 ic_range];
    [v20 addAttribute:v21 value:v18 range:{ic_range, v23}];
    rangeInNote2 = [attachmentCopy rangeInNote];
    v26 = v25;
    textStorage3 = [note textStorage];
    [textStorage3 replaceCharactersInRange:rangeInNote2 withAttributedString:{v26, v20}];

    [attachmentCopy markForDeletion];
    [attachmentCopy updateChangeCountWithReason:@"Updated inline drawing"];
    [v12 updateChangeCountWithReason:@"Updated inline drawing"];
    [note updateChangeCountWithReason:@"Updated inline drawing"];
    textStorage4 = [note textStorage];
    [textStorage4 setWantsUndoCommands:wantsUndoCommands];

    v29 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [(ICDrawingPencilKitConverter *)attachmentCopy updateInlineDrawingAttachment:v12];
    }
  }

  return v12;
}

- (BOOL)compareDrawingAttachment:(id)attachment withConvertedDrawing:(id)drawing
{
  v29 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  drawingCopy = drawing;
  isInternalInstall = [MEMORY[0x1E69B7AD0] isInternalInstall];
  v8 = 0;
  if (attachmentCopy && isInternalInstall)
  {
    [MEMORY[0x1E69B7748] defaultPixelSize];
    v9 = [attachmentCopy attachmentPreviewImageWithMinSize:? scale:?];
    v10 = v9;
    if (v9 && (v11 = [v9 version], objc_msgSend(MEMORY[0x1E69B7750], "serializationVersion") == v11))
    {
      image = [v10 image];
      if (!image)
      {
        goto LABEL_16;
      }

      [MEMORY[0x1E6978470] compareLegacyDrawingImage:image toConvertedDrawing:drawingCopy];
      v14 = v13;
      v15 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        [image size];
        v16 = NSStringFromCGSize(v30);
        imageOrientation = [image imageOrientation];
        [drawingCopy _canvasBounds];
        v18 = NSStringFromCGRect(v31);
        v21 = 134218754;
        v22 = v14;
        v23 = 2112;
        v24 = v16;
        v25 = 2048;
        v26 = imageOrientation;
        v27 = 2112;
        v28 = v18;
        _os_log_impl(&dword_1D4171000, v15, OS_LOG_TYPE_DEFAULT, "convertSketch compareError %f %@ %lu %@", &v21, 0x2Au);
      }

      if (v14 <= 5.0)
      {
LABEL_16:
        v8 = 0;
        goto LABEL_17;
      }

      v19 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ICDrawingPencilKitConverter compareDrawingAttachment:withConvertedDrawing:];
      }

      v8 = 1;
    }

    else
    {
      v19 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ICDrawingPencilKitConverter compareDrawingAttachment:v10 withConvertedDrawing:?];
      }

      image = 0;
      v8 = 0;
    }

LABEL_17:
  }

  return v8;
}

- (void)convertDrawingsInNote:(id)note inWindow:(id)window message:(id)message completion:(id)completion
{
  noteCopy = note;
  messageCopy = message;
  windowCopy = window;
  v12 = [[ICLongRunningTaskController alloc] initWithWindow:windowCopy intervalBeforeOpeningProgressDialog:0.1];

  [(ICLongRunningTaskController *)v12 setProgressString:messageCopy];
  [(ICLongRunningTaskController *)v12 setAllowSingleUnitProgress:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__ICDrawingPencilKitConverter_convertDrawingsInNote_inWindow_message_completion___block_invoke;
  v14[3] = &unk_1E8469148;
  v15 = noteCopy;
  selfCopy = self;
  v13 = noteCopy;
  [(ICLongRunningTaskController *)v12 startTask:v14 completionBlock:&__block_literal_global_86];
}

void __81__ICDrawingPencilKitConverter_convertDrawingsInNote_inWindow_message_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTotalUnitCount:1];
  [v3 setCompletedUnitCount:1];

  v4 = [*(a1 + 32) managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__ICDrawingPencilKitConverter_convertDrawingsInNote_inWindow_message_completion___block_invoke_2;
  v7[3] = &unk_1E8468F80;
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  [v4 performBlockAndWait:v7];
}

- (BOOL)shouldAutoConvertNote:(id)note
{
  noteCopy = note;
  if ([noteCopy isSharedViaICloud])
  {
    isEditable = 0;
  }

  else
  {
    isEditable = [noteCopy isEditable];
  }

  return isEditable;
}

- (id)addOperationForAttachment:(id)attachment automatic:(BOOL)automatic
{
  attachmentCopy = attachment;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1;
  v30 = __Block_byref_object_dispose__1;
  v31 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__1;
  v24[4] = __Block_byref_object_dispose__1;
  v25 = 0;
  mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
  managedObjectContext = [mEMORY[0x1E69B7800] managedObjectContext];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__ICDrawingPencilKitConverter_addOperationForAttachment_automatic___block_invoke;
  v20[3] = &unk_1E8469190;
  v9 = attachmentCopy;
  v21 = v9;
  v10 = managedObjectContext;
  v22 = v10;
  v23 = v24;
  [v10 performBlockAndWait:v20];
  convertDispatchQueue = [(ICDrawingPencilKitConverter *)self convertDispatchQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__ICDrawingPencilKitConverter_addOperationForAttachment_automatic___block_invoke_2;
  v15[3] = &unk_1E84691B8;
  v15[4] = self;
  v16 = v9;
  v17 = &v26;
  v18 = v24;
  automaticCopy = automatic;
  v12 = v9;
  dispatch_sync(convertDispatchQueue, v15);

  v13 = v27[5];
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(&v26, 8);

  return v13;
}

void __67__ICDrawingPencilKitConverter_addOperationForAttachment_automatic___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69B7680];
  v3 = [*(a1 + 32) objectID];
  v13 = [v2 ic_existingObjectWithID:v3 context:*(a1 + 40)];

  v4 = [v13 attachmentType] == 10;
  v5 = v13;
  if (v4)
  {
    v6 = [v13 note];
    v7 = [v13 rangeInNote];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"range.location != NSNotFound" functionName:"-[ICDrawingPencilKitConverter addOperationForAttachment:automatic:]_block_invoke" simulateCrash:1 showAlert:0 format:@"ICDrawingPencilKitConverter operationComplete expected to find attachment range in note"];
    }

    objc_opt_class();
    v8 = [v6 textStorage];
    v9 = [v8 attribute:*MEMORY[0x1E69DB5F8] atIndex:v7 effectiveRange:0];
    v10 = ICDynamicCast();
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v5 = v13;
  }
}

void __67__ICDrawingPencilKitConverter_addOperationForAttachment_automatic___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) lastOperationForAttachmentID];
  v3 = [*(a1 + 40) objectID];
  v4 = [v2 objectForKey:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [[ICDrawingConversionOperation alloc] initWithAttachment:*(a1 + 40) textAttachment:*(*(*(a1 + 56) + 8) + 40) automatic:*(a1 + 64)];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [*(a1 + 32) converterQueue];
    [v10 addOperation:*(*(*(a1 + 48) + 8) + 40)];

    v14 = [*(a1 + 32) lastOperationForAttachmentID];
    v11 = *(a1 + 40);
    v12 = *(*(*(a1 + 48) + 8) + 40);
    v13 = [v11 objectID];
    [v14 setObject:v12 forKey:v13];
  }
}

- (void)convertAllDrawingsIfNeeded
{
  if ([(ICDrawingPencilKitConverter *)self shouldConvertAllDrawingsIfNeeded])
  {
    mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
    workerManagedObjectContext = [mEMORY[0x1E69B7800] workerManagedObjectContext];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__ICDrawingPencilKitConverter_convertAllDrawingsIfNeeded__block_invoke;
    v6[3] = &unk_1E8468F80;
    v7 = workerManagedObjectContext;
    selfCopy = self;
    v5 = workerManagedObjectContext;
    [v5 performBlock:v6];
  }
}

void __57__ICDrawingPencilKitConverter_convertAllDrawingsIfNeeded__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69B7658] allActiveAccountsInContext:*(a1 + 32)];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = v18 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = *(a1 + 32);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __57__ICDrawingPencilKitConverter_convertAllDrawingsIfNeeded__block_invoke_2;
        v12[3] = &unk_1E8468D98;
        v12[4] = v7;
        v10 = v9;
        v11 = *(a1 + 40);
        v13 = v10;
        v14 = v11;
        [v10 performBlock:v12];

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) reset];
}

void __57__ICDrawingPencilKitConverter_convertAllDrawingsIfNeeded__block_invoke_2(id *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  [a1[4] predicateForVisibleNotes];
  v19 = v2 = 0x1E69B7000uLL;
  [MEMORY[0x1E69B77F0] ic_objectIDsMatchingPredicate:? context:?];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v3 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v32;
    v20 = *v32;
    do
    {
      v6 = 0;
      v21 = v4;
      do
      {
        if (*v32 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [*(v2 + 2032) ic_existingObjectWithID:v7 context:a1[5]];
        if ([a1[6] shouldAutoConvertNote:v9])
        {
          v24 = v8;
          v25 = v6;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v23 = v9;
          v10 = [v9 attachments];
          v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v28;
            do
            {
              v14 = 0;
              do
              {
                if (*v28 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v27 + 1) + 8 * v14);
                v16 = objc_autoreleasePoolPush();
                if ([v15 isVisible] && ((objc_msgSend(objc_opt_class(), "canUpdateFullscreenSketchAttachment:", v15) & 1) != 0 || objc_msgSend(objc_opt_class(), "canUpdateInlineDrawingAttachment:", v15)))
                {
                  v17 = a1[6];
                  v18 = a1[4];
                  v26[0] = MEMORY[0x1E69E9820];
                  v26[1] = 3221225472;
                  v26[2] = __57__ICDrawingPencilKitConverter_convertAllDrawingsIfNeeded__block_invoke_3;
                  v26[3] = &unk_1E84691E0;
                  v26[4] = v17;
                  v26[5] = v15;
                  [v17 canAutoUpdateDrawingsInAccount:v18 completion:v26];
                }

                [a1[5] ic_refreshObject:v15 mergeChanges:0];
                objc_autoreleasePoolPop(v16);
                ++v14;
              }

              while (v12 != v14);
              v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v12);
          }

          v2 = 0x1E69B7000;
          v5 = v20;
          v4 = v21;
          v8 = v24;
          v6 = v25;
          v9 = v23;
        }

        [a1[5] ic_refreshObject:v9 mergeChanges:0];

        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v4);
  }
}

id *__57__ICDrawingPencilKitConverter_convertAllDrawingsIfNeeded__block_invoke_3(id *result, int a2)
{
  if (a2)
  {
    return [result[4] addOperationForAttachment:result[5] automatic:1];
  }

  return result;
}

- (void)convertDrawingsInNote:(id)note waitUntilFinished:(BOOL)finished
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __71__ICDrawingPencilKitConverter_convertDrawingsInNote_waitUntilFinished___block_invoke;
  v4[3] = &unk_1E8469208;
  v4[4] = self;
  finishedCopy = finished;
  [note enumerateAttachmentsInOrderUsingBlock:v4];
}

void __71__ICDrawingPencilKitConverter_convertDrawingsInNote_waitUntilFinished___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([objc_opt_class() canUpdateFullscreenSketchAttachment:v4] & 1) != 0 || objc_msgSend(objc_opt_class(), "canUpdateInlineDrawingAttachment:", v4))
  {
    v3 = [*(a1 + 32) addOperationForAttachment:v4 automatic:(*(a1 + 40) & 1) == 0];
    [v3 setQueuePriority:4];
    [v3 setQualityOfService:-1];
    if (*(a1 + 40) == 1)
    {
      [v3 waitUntilFinished];
    }
  }
}

- (void)convertDrawingsInNoteIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(ICDrawingPencilKitConverter *)self shouldAutoConvertNote:neededCopy]&& [(ICDrawingPencilKitConverter *)self shouldConvertAllDrawingsIfNeeded]&& [(ICDrawingPencilKitConverter *)self countOfDrawingsNeedingConversionInNote:neededCopy])
  {
    v5 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICDrawingPencilKitConverter convertDrawingsInNoteIfNeeded:neededCopy];
    }

    objc_initWeak(&location, self);
    v6 = +[ICDrawingPencilKitConverter sharedConverter];
    account = [neededCopy account];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__ICDrawingPencilKitConverter_convertDrawingsInNoteIfNeeded___block_invoke;
    v8[3] = &unk_1E8469258;
    v9 = neededCopy;
    objc_copyWeak(&v10, &location);
    [v6 canAutoUpdateDrawingsInAccount:account completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __61__ICDrawingPencilKitConverter_convertDrawingsInNoteIfNeeded___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __61__ICDrawingPencilKitConverter_convertDrawingsInNoteIfNeeded___block_invoke_cold_1(v3);
    }

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __61__ICDrawingPencilKitConverter_convertDrawingsInNoteIfNeeded___block_invoke_96;
    v4[3] = &unk_1E8469230;
    v5 = *(a1 + 32);
    objc_copyWeak(&v6, (a1 + 40));
    dispatch_async(MEMORY[0x1E69E96A0], v4);
    objc_destroyWeak(&v6);
  }
}

void __61__ICDrawingPencilKitConverter_convertDrawingsInNoteIfNeeded___block_invoke_96(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  [v2 ic_saveWithLogDescription:@"Save before converting drawings in a single opened note"];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained convertDrawingsInNote:*(a1 + 32) waitUntilFinished:0];
}

- (unint64_t)countOfDrawingsNeedingConversionInNote:(id)note
{
  v28 = *MEMORY[0x1E69E9840];
  noteCopy = note;
  v4 = [MEMORY[0x1E695DFA8] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  attachments = [noteCopy attachments];
  v6 = [attachments countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(attachments);
        }

        objectID = [*(*(&v22 + 1) + 8 * v9) objectID];
        [v4 addObject:objectID];

        ++v9;
      }

      while (v7 != v9);
      v7 = [attachments countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  managedObjectContext = [noteCopy managedObjectContext];
  v12 = MEMORY[0x1E696AE18];
  v13 = *MEMORY[0x1E69B7440];
  v26[0] = *MEMORY[0x1E69B7430];
  v26[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v15 = [v12 predicateWithFormat:@"self IN %@ AND typeUTI IN %@ AND markedForDeletion == NO", v4, v14];

  v16 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"ICAttachment"];
  [v16 setPredicate:v15];
  [v16 setIncludesSubentities:0];
  v21 = 0;
  v17 = [managedObjectContext countForFetchRequest:v16 error:&v21];
  v18 = v21;
  if (v18)
  {
    v19 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ICDrawingPencilKitConverter countOfDrawingsNeedingConversionInNote:];
    }
  }

  return v17;
}

- (void)operationComplete:(id)complete
{
  completeCopy = complete;
  convertDispatchQueue = [(ICDrawingPencilKitConverter *)self convertDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__ICDrawingPencilKitConverter_operationComplete___block_invoke;
  block[3] = &unk_1E8468F80;
  v6 = completeCopy;
  v11 = v6;
  selfCopy = self;
  dispatch_async(convertDispatchQueue, block);

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__ICDrawingPencilKitConverter_operationComplete___block_invoke_2;
  v8[3] = &unk_1E8468BA0;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __49__ICDrawingPencilKitConverter_operationComplete___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) finalAttachmentID];

  if (v2)
  {
    v3 = +[ICAttachmentPreviewGenerator sharedGenerator];
    v4 = [*(a1 + 32) finalAttachmentID];
    [v3 generatePreviewIfNeededForAttachmentWithObjectID:v4];
  }

  v6 = [*(a1 + 40) lastOperationForAttachmentID];
  v5 = [*(a1 + 32) attachmentID];
  [v6 removeObjectForKey:v5];
}

void __49__ICDrawingPencilKitConverter_operationComplete___block_invoke_2(uint64_t a1)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B7680];
  v3 = [*(a1 + 32) attachmentID];
  v4 = [MEMORY[0x1E69B7800] sharedContext];
  v5 = [v4 managedObjectContext];
  v6 = [v2 ic_existingObjectWithID:v3 context:v5];

  if ([v6 attachmentType] == 10)
  {
    objc_opt_class();
    v7 = [*(a1 + 32) textAttachment];
    v8 = ICDynamicCast();

    [v8 detachView];
LABEL_5:

    goto LABEL_6;
  }

  v9 = [*(a1 + 32) finalAttachmentID];

  if (v9)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v28[0] = @"ICDrawingPencilKitConvertedNotificationFinalAttachmentKey";
    v10 = [*(a1 + 32) finalAttachmentID];
    v28[1] = @"ICDrawingPencilKitConvertedNotificationAutomaticKey";
    v29[0] = v10;
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isAutomatic")}];
    v29[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    [v8 postNotificationName:@"ICDrawingPencilKitConvertedNotification" object:0 userInfo:v12];

    goto LABEL_5;
  }

LABEL_6:
  v13 = [v6 note];
  v14 = [v13 noteData];
  [v14 setNeedsToBeSaved:1];

  v15 = [v6 note];
  v16 = [v15 noteData];
  [v16 saveNoteDataIfNeeded];

  v17 = [MEMORY[0x1E69B7800] sharedContext];
  v18 = [v17 managedObjectContext];
  [v18 ic_saveWithLogDescription:@"saving main context after converting sketch attachment operation completed"];

  v19 = [*(a1 + 32) finalAttachmentID];
  if (v19)
  {
    v20 = v19;
    v21 = [*(a1 + 32) isAutomatic];

    if ((v21 & 1) == 0)
    {
      v22 = [MEMORY[0x1E69B7800] sharedContext];
      v23 = [v22 workerManagedObjectContext];

      v24 = +[ICIndexHandwritingOperation sharedOperationQueue];
      v25 = [ICIndexHandwritingOperation alloc];
      v26 = [*(a1 + 32) finalAttachmentID];
      v27 = [(ICIndexHandwritingOperation *)v25 initWithAttachmentObjectID:v26 context:v23];

      [v24 addOperation:v27];
    }
  }
}

void __73__ICDrawingPencilKitConverter_convertAllSketchesWithProgress_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "Beginning to convert sketches in %lu notes", &v2, 0xCu);
}

void __73__ICDrawingPencilKitConverter_convertAllSketchesWithProgress_completion___block_invoke_cold_2(id *a1)
{
  [*a1 completedUnitCount];
  [*a1 totalUnitCount];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

- (void)convertAllSketchesInNote:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1D4171000, log, OS_LOG_TYPE_DEBUG, "converting all sketches in note %@", buf, 0xCu);
}

- (void)convertAllSketchesInNote:(uint64_t)a3 .cold.2(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_1D4171000, log, OS_LOG_TYPE_DEBUG, "converted %lu sketches in note %@", buf, 0x16u);
}

void __45__ICDrawingPencilKitConverter_convertSketch___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1D4171000, log, OS_LOG_TYPE_ERROR, "Error converting drawing %@ %@", &v4, 0x16u);
}

- (void)updateInlineDrawingAttachment:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [a1 identifier];
  v8 = [a2 identifier];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

- (void)compareDrawingAttachment:(void *)a1 withConvertedDrawing:.cold.2(void *a1)
{
  [a1 version];
  [a1 size];
  v6 = NSStringFromCGSize(v7);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x26u);
}

- (void)convertDrawingsInNoteIfNeeded:(void *)a1 .cold.1(void *a1)
{
  v5 = [a1 identifier];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);
}

@end