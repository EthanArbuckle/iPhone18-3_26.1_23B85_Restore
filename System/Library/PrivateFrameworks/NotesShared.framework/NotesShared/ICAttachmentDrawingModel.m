@interface ICAttachmentDrawingModel
- (BOOL)mergeWithMergeableData:(id)a3 mergeableFieldState:(id)a4;
- (BOOL)shouldSyncPreviewImageToCloud:(id)a3;
- (CGAffineTransform)previewImageOrientationTransform;
- (ICAttachmentDrawingModel)initWithAttachment:(id)a3;
- (ICDrawing)drawing;
- (id)drawingDocument;
- (id)previewImageURL;
- (id)previewItemTitle;
- (id)previewItemURL;
- (id)saveURL;
- (int64_t)previewImageOrientation;
- (void)dealloc;
- (void)drawingPreviewIsUpToDate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)startObservingAttachment;
- (void)stopObservingAttachment:(id)a3;
- (void)writeMergeableData;
@end

@implementation ICAttachmentDrawingModel

- (ICAttachmentDrawingModel)initWithAttachment:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICAttachmentDrawingModel;
  v3 = [(ICAttachmentModel *)&v6 initWithAttachment:a3];
  v4 = v3;
  if (v3)
  {
    [(ICAttachmentDrawingModel *)v3 startObservingAttachment];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(ICAttachmentModel *)self attachment];

  if (v3)
  {
    v4 = [(ICAttachmentModel *)self attachment];
    [(ICAttachmentDrawingModel *)self stopObservingAttachment:v4];
  }

  v5.receiver = self;
  v5.super_class = ICAttachmentDrawingModel;
  [(ICAttachmentModel *)&v5 dealloc];
}

- (void)startObservingAttachment
{
  if (![(ICAttachmentDrawingModel *)self observingAttachment])
  {
    v3 = [(ICAttachmentModel *)self attachment];
    [v3 ic_addObserver:self forKeyPath:@"mergeableData" context:&compoundliteral_0];

    [(ICAttachmentDrawingModel *)self setObservingAttachment:1];
  }
}

- (void)stopObservingAttachment:(id)a3
{
  v7 = a3;
  if ([(ICAttachmentDrawingModel *)self observingAttachment])
  {
    v4 = [(ICAttachmentModel *)self attachment];
    if (v4)
    {
      v5 = v4;
      v6 = [(ICAttachmentModel *)self attachment];

      if (v6 != v7)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"!self.attachment || self.attachment == attachment" functionName:"-[ICAttachmentDrawingModel stopObservingAttachment:]" simulateCrash:1 showAlert:0 format:{@"unexpected attachment %@ in stopObservingAttachment for %@", v7, self}];
      }
    }

    [v7 ic_removeObserver:self forKeyPath:@"mergeableData" context:&compoundliteral_0];
    [(ICAttachmentDrawingModel *)self setObservingAttachment:0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  if (([(ICAttachmentDrawingModel *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Ironcade/Shared/CoreData/AttachmentModel/ICAttachmentDrawingModel.m"]& 1) != 0)
  {
    v13 = [(ICAttachmentDrawingModel *)self ic_shouldIgnoreObserveValue:v10 ofObject:v11 forKeyPath:v12];

    if (a6 == &compoundliteral_0 && (v13 & 1) == 0 && self->_drawingDocument)
    {
      v18 = [(ICAttachmentModel *)self attachment];
      if (![v18 faultingState])
      {
        v14 = [(ICAttachmentModel *)self attachment];
        v15 = [v14 isSettingMergeableData];

        if (v15)
        {
          return;
        }

        v16 = [(ICAttachmentModel *)self attachment];
        v18 = [v16 mergeableData];

        [(ICAttachmentModel *)self mergeWithMergeableData:v18];
        v17 = [(ICAttachmentModel *)self attachment];
        [v17 saveMergeableDataIfNeeded];
      }
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = ICAttachmentDrawingModel;
    [(ICAttachmentDrawingModel *)&v19 observeValueForKeyPath:v12 ofObject:v11 change:v10 context:a6];
  }
}

- (ICDrawing)drawing
{
  v2 = [(ICAttachmentDrawingModel *)self drawingDocument];
  v3 = [v2 drawing];

  return v3;
}

- (id)drawingDocument
{
  drawingDocument = self->_drawingDocument;
  if (!drawingDocument)
  {
    v4 = [ICDrawingVersionedDocument alloc];
    v5 = [(ICAttachmentModel *)self attachment];
    v6 = [v5 mergeableData];
    v7 = [(ICAttachmentModel *)self currentReplicaID];
    v8 = [(ICTTVersionedDocument *)v4 initWithData:v6 replicaID:v7];
    v9 = self->_drawingDocument;
    self->_drawingDocument = v8;

    drawingDocument = self->_drawingDocument;
  }

  return drawingDocument;
}

- (BOOL)mergeWithMergeableData:(id)a3 mergeableFieldState:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v6 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ICAttachmentDrawingModel *)v6 mergeWithMergeableData:v7 mergeableFieldState:v8, v9, v10, v11, v12, v13];
  }

  v14 = [ICDrawingVersionedDocument alloc];
  v15 = [(ICAttachmentModel *)self currentReplicaID];
  v16 = [(ICTTVersionedDocument *)v14 initWithData:v5 replicaID:v15];

  v17 = [(ICAttachmentDrawingModel *)self drawingDocument];
  v18 = [v17 mergeWithDrawingVersionedDocument:v16];

  v19 = v18 == 2;
  if (v18 == 2)
  {
    v20 = [(ICAttachmentModel *)self attachment];
    v21 = [v20 previewUpdateDate];
    v22 = [(ICAttachmentModel *)self attachment];
    v23 = [v22 modificationDate];
    v24 = [v21 compare:v23];

    if (v24 != -1)
    {
      v25 = [(ICAttachmentModel *)self attachment];
      [v25 setPreviewUpdateDate:0];
    }

    v26 = os_log_create("com.apple.notes", "PencilKit");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [(ICAttachmentDrawingModel *)v26 mergeWithMergeableData:v27 mergeableFieldState:v28, v29, v30, v31, v32, v33];
    }

    [(ICAttachmentModel *)self setMergeableDataDirty:1];
  }

  return v19;
}

- (void)writeMergeableData
{
  [(ICAttachmentModel *)self setMergeableDataDirty:0];
  v5 = [(ICAttachmentDrawingModel *)self drawingDocument];
  v3 = [v5 serialize];
  v4 = [(ICAttachmentModel *)self attachment];
  [v4 setMergeableData:v3];
}

- (id)saveURL
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__30;
  v12 = __Block_byref_object_dispose__30;
  v13 = 0;
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ICAttachmentDrawingModel_saveURL__block_invoke;
  v7[3] = &unk_278194D68;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __35__ICAttachmentDrawingModel_saveURL__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  +[ICDrawing defaultPixelSize];
  v6 = [v2 attachmentPreviewImageWithMinSize:? scale:?];

  v3 = [v6 orientedPreviewImageURL];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)drawingPreviewIsUpToDate
{
  v3 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(ICAttachmentDrawingModel *)v3 drawingPreviewIsUpToDate:v4];
  }

  v11 = [(ICAttachmentModel *)self attachment];
  v12 = [v11 modificationDate];
  v13 = [(ICAttachmentModel *)self attachment];
  [v13 setPreviewUpdateDate:v12];

  v14 = [(ICAttachmentModel *)self attachment];
  [v14 ic_postNotificationOnMainThreadWithName:@"ICAttachmentPreviewImagesDidUpdateNotification"];
}

- (CGAffineTransform)previewImageOrientationTransform
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 orientation];

  +[ICDrawing defaultSize];
  [ICDrawing fullSize:v4 forOrientation:?];

  return [ICDrawing orientationTransform:v4 size:?];
}

- (int64_t)previewImageOrientation
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 orientation];

  return v3;
}

- (BOOL)shouldSyncPreviewImageToCloud:(id)a3
{
  v3 = a3;
  [v3 width];
  v5 = v4;
  [v3 height];
  if (v5 < v6)
  {
    v5 = v6;
  }

  [v3 scale];
  v8 = v7 * v5 <= 640.0;
  v9 = [v3 appearanceType];

  return !v9 && v8;
}

- (id)previewImageURL
{
  v2 = [(ICAttachmentModel *)self attachment];
  +[ICDrawing defaultPixelSize];
  v3 = [v2 attachmentPreviewImageWithMinSize:? scale:?];

  v4 = [v3 orientedPreviewImageURL];

  return v4;
}

- (id)previewItemTitle
{
  v9.receiver = self;
  v9.super_class = ICAttachmentDrawingModel;
  v3 = [(ICAttachmentModel *)&v9 previewItemTitle];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(ICAttachmentModel *)self attachment];
    v7 = [v6 note];
    v5 = [v7 title];
  }

  return v5;
}

- (id)previewItemURL
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__30;
  v12 = __Block_byref_object_dispose__30;
  v13 = 0;
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ICAttachmentDrawingModel_previewItemURL__block_invoke;
  v7[3] = &unk_278194DE8;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlockAndWait:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __42__ICAttachmentDrawingModel_previewItemURL__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) previewImageURL];
  v3 = v2;
  if (!v2)
  {
    v7.receiver = *(a1 + 32);
    v7.super_class = ICAttachmentDrawingModel;
    v3 = objc_msgSendSuper2(&v7, sel_previewItemURL);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = [*(a1 + 32) generateHardLinkURLIfNecessaryForURL:*(*(*(a1 + 40) + 8) + 40)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end