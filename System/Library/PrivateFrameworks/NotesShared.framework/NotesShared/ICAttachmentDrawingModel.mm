@interface ICAttachmentDrawingModel
- (BOOL)mergeWithMergeableData:(id)data mergeableFieldState:(id)state;
- (BOOL)shouldSyncPreviewImageToCloud:(id)cloud;
- (CGAffineTransform)previewImageOrientationTransform;
- (ICAttachmentDrawingModel)initWithAttachment:(id)attachment;
- (ICDrawing)drawing;
- (id)drawingDocument;
- (id)previewImageURL;
- (id)previewItemTitle;
- (id)previewItemURL;
- (id)saveURL;
- (int64_t)previewImageOrientation;
- (void)dealloc;
- (void)drawingPreviewIsUpToDate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startObservingAttachment;
- (void)stopObservingAttachment:(id)attachment;
- (void)writeMergeableData;
@end

@implementation ICAttachmentDrawingModel

- (ICAttachmentDrawingModel)initWithAttachment:(id)attachment
{
  v6.receiver = self;
  v6.super_class = ICAttachmentDrawingModel;
  v3 = [(ICAttachmentModel *)&v6 initWithAttachment:attachment];
  v4 = v3;
  if (v3)
  {
    [(ICAttachmentDrawingModel *)v3 startObservingAttachment];
  }

  return v4;
}

- (void)dealloc
{
  attachment = [(ICAttachmentModel *)self attachment];

  if (attachment)
  {
    attachment2 = [(ICAttachmentModel *)self attachment];
    [(ICAttachmentDrawingModel *)self stopObservingAttachment:attachment2];
  }

  v5.receiver = self;
  v5.super_class = ICAttachmentDrawingModel;
  [(ICAttachmentModel *)&v5 dealloc];
}

- (void)startObservingAttachment
{
  if (![(ICAttachmentDrawingModel *)self observingAttachment])
  {
    attachment = [(ICAttachmentModel *)self attachment];
    [attachment ic_addObserver:self forKeyPath:@"mergeableData" context:&compoundliteral_0];

    [(ICAttachmentDrawingModel *)self setObservingAttachment:1];
  }
}

- (void)stopObservingAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if ([(ICAttachmentDrawingModel *)self observingAttachment])
  {
    attachment = [(ICAttachmentModel *)self attachment];
    if (attachment)
    {
      v5 = attachment;
      attachment2 = [(ICAttachmentModel *)self attachment];

      if (attachment2 != attachmentCopy)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"!self.attachment || self.attachment == attachment" functionName:"-[ICAttachmentDrawingModel stopObservingAttachment:]" simulateCrash:1 showAlert:0 format:{@"unexpected attachment %@ in stopObservingAttachment for %@", attachmentCopy, self}];
      }
    }

    [attachmentCopy ic_removeObserver:self forKeyPath:@"mergeableData" context:&compoundliteral_0];
    [(ICAttachmentDrawingModel *)self setObservingAttachment:0];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  objectCopy = object;
  pathCopy = path;
  if (([(ICAttachmentDrawingModel *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Ironcade/Shared/CoreData/AttachmentModel/ICAttachmentDrawingModel.m"]& 1) != 0)
  {
    v13 = [(ICAttachmentDrawingModel *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &compoundliteral_0 && (v13 & 1) == 0 && self->_drawingDocument)
    {
      attachment = [(ICAttachmentModel *)self attachment];
      if (![attachment faultingState])
      {
        attachment2 = [(ICAttachmentModel *)self attachment];
        isSettingMergeableData = [attachment2 isSettingMergeableData];

        if (isSettingMergeableData)
        {
          return;
        }

        attachment3 = [(ICAttachmentModel *)self attachment];
        attachment = [attachment3 mergeableData];

        [(ICAttachmentModel *)self mergeWithMergeableData:attachment];
        attachment4 = [(ICAttachmentModel *)self attachment];
        [attachment4 saveMergeableDataIfNeeded];
      }
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = ICAttachmentDrawingModel;
    [(ICAttachmentDrawingModel *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (ICDrawing)drawing
{
  drawingDocument = [(ICAttachmentDrawingModel *)self drawingDocument];
  drawing = [drawingDocument drawing];

  return drawing;
}

- (id)drawingDocument
{
  drawingDocument = self->_drawingDocument;
  if (!drawingDocument)
  {
    v4 = [ICDrawingVersionedDocument alloc];
    attachment = [(ICAttachmentModel *)self attachment];
    mergeableData = [attachment mergeableData];
    currentReplicaID = [(ICAttachmentModel *)self currentReplicaID];
    v8 = [(ICTTVersionedDocument *)v4 initWithData:mergeableData replicaID:currentReplicaID];
    v9 = self->_drawingDocument;
    self->_drawingDocument = v8;

    drawingDocument = self->_drawingDocument;
  }

  return drawingDocument;
}

- (BOOL)mergeWithMergeableData:(id)data mergeableFieldState:(id)state
{
  if (!data)
  {
    return 0;
  }

  dataCopy = data;
  v6 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ICAttachmentDrawingModel *)v6 mergeWithMergeableData:v7 mergeableFieldState:v8, v9, v10, v11, v12, v13];
  }

  v14 = [ICDrawingVersionedDocument alloc];
  currentReplicaID = [(ICAttachmentModel *)self currentReplicaID];
  v16 = [(ICTTVersionedDocument *)v14 initWithData:dataCopy replicaID:currentReplicaID];

  drawingDocument = [(ICAttachmentDrawingModel *)self drawingDocument];
  v18 = [drawingDocument mergeWithDrawingVersionedDocument:v16];

  v19 = v18 == 2;
  if (v18 == 2)
  {
    attachment = [(ICAttachmentModel *)self attachment];
    previewUpdateDate = [attachment previewUpdateDate];
    attachment2 = [(ICAttachmentModel *)self attachment];
    modificationDate = [attachment2 modificationDate];
    v24 = [previewUpdateDate compare:modificationDate];

    if (v24 != -1)
    {
      attachment3 = [(ICAttachmentModel *)self attachment];
      [attachment3 setPreviewUpdateDate:0];
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
  drawingDocument = [(ICAttachmentDrawingModel *)self drawingDocument];
  serialize = [drawingDocument serialize];
  attachment = [(ICAttachmentModel *)self attachment];
  [attachment setMergeableData:serialize];
}

- (id)saveURL
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__30;
  v12 = __Block_byref_object_dispose__30;
  v13 = 0;
  attachment = [(ICAttachmentModel *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ICAttachmentDrawingModel_saveURL__block_invoke;
  v7[3] = &unk_278194D68;
  v7[4] = self;
  v7[5] = &v8;
  [managedObjectContext performBlockAndWait:v7];

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

  attachment = [(ICAttachmentModel *)self attachment];
  modificationDate = [attachment modificationDate];
  attachment2 = [(ICAttachmentModel *)self attachment];
  [attachment2 setPreviewUpdateDate:modificationDate];

  attachment3 = [(ICAttachmentModel *)self attachment];
  [attachment3 ic_postNotificationOnMainThreadWithName:@"ICAttachmentPreviewImagesDidUpdateNotification"];
}

- (CGAffineTransform)previewImageOrientationTransform
{
  attachment = [(ICAttachmentModel *)self attachment];
  orientation = [attachment orientation];

  +[ICDrawing defaultSize];
  [ICDrawing fullSize:orientation forOrientation:?];

  return [ICDrawing orientationTransform:orientation size:?];
}

- (int64_t)previewImageOrientation
{
  attachment = [(ICAttachmentModel *)self attachment];
  orientation = [attachment orientation];

  return orientation;
}

- (BOOL)shouldSyncPreviewImageToCloud:(id)cloud
{
  cloudCopy = cloud;
  [cloudCopy width];
  v5 = v4;
  [cloudCopy height];
  if (v5 < v6)
  {
    v5 = v6;
  }

  [cloudCopy scale];
  v8 = v7 * v5 <= 640.0;
  appearanceType = [cloudCopy appearanceType];

  return !appearanceType && v8;
}

- (id)previewImageURL
{
  attachment = [(ICAttachmentModel *)self attachment];
  +[ICDrawing defaultPixelSize];
  v3 = [attachment attachmentPreviewImageWithMinSize:? scale:?];

  orientedPreviewImageURL = [v3 orientedPreviewImageURL];

  return orientedPreviewImageURL;
}

- (id)previewItemTitle
{
  v9.receiver = self;
  v9.super_class = ICAttachmentDrawingModel;
  previewItemTitle = [(ICAttachmentModel *)&v9 previewItemTitle];
  v4 = previewItemTitle;
  if (previewItemTitle)
  {
    title = previewItemTitle;
  }

  else
  {
    attachment = [(ICAttachmentModel *)self attachment];
    note = [attachment note];
    title = [note title];
  }

  return title;
}

- (id)previewItemURL
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__30;
  v12 = __Block_byref_object_dispose__30;
  v13 = 0;
  attachment = [(ICAttachmentModel *)self attachment];
  managedObjectContext = [attachment managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ICAttachmentDrawingModel_previewItemURL__block_invoke;
  v7[3] = &unk_278194DE8;
  v7[4] = self;
  v7[5] = &v8;
  [managedObjectContext performBlockAndWait:v7];

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