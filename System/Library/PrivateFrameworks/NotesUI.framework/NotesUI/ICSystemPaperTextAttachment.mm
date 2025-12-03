@interface ICSystemPaperTextAttachment
- (CGRect)_paperBoundsHint;
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (CGSize)_paperSizeHint;
- (ICDrawingHashtagsAndMentionsController)hashtagsAndMentionsController;
- (ICSelectorDelayer)paperChangeSelectorDelayer;
- (ICSystemPaperTextAttachment)initWithData:(id)data ofType:(id)type;
- (ICSystemPaperTextAttachment)initWithPaperIdentifier:(id)identifier;
- (NSHashTable)systemPaperViews;
- (NSString)_paperIdentifier;
- (NSURL)_encryptionDelegateCRContextURL;
- (NSURL)_nonEncryptedContentCRContextURL;
- (NSURL)_paperBundleURL;
- (UIView)cachedControlViewForPlaceView;
- (UIView)cachedDrawingViewForPlaceView;
- (id)attachmentAsNSTextAttachment;
- (id)attachmentViews;
- (id)inlineViews;
- (id)printableTextContentForAppearanceType:(unint64_t)type traitCollection:(id)collection textContainer:(id)container;
- (id)viewProviderForParentView:(id)view characterIndex:(unint64_t)index layoutManager:(id)manager;
- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container;
- (void)_linkCanvasElementsDidChange;
- (void)_paperDidChangeLocally;
- (void)configureHashtagAndMentionsForView:(id)view;
- (void)dealloc;
- (void)detachView:(id)view fromParentView:(id)parentView;
- (void)paperDidChange;
- (void)placeView:(id)view withFrame:(CGRect)frame inParentView:(id)parentView characterIndex:(unint64_t)index layoutManager:(id)manager;
- (void)updateAttachmentChangeCountAndSave:(id)save;
@end

@implementation ICSystemPaperTextAttachment

- (void)dealloc
{
  [(ICSelectorDelayer *)self->_paperChangeSelectorDelayer cancelPreviousFireRequests];
  v3.receiver = self;
  v3.super_class = ICSystemPaperTextAttachment;
  [(ICSystemPaperTextAttachment *)&v3 dealloc];
}

- (ICSystemPaperTextAttachment)initWithData:(id)data ofType:(id)type
{
  dataCopy = data;
  typeCopy = type;
  data = dataCopy;
  if (!dataCopy)
  {
    data = [MEMORY[0x1E695DEF0] data];
  }

  v14.receiver = self;
  v14.super_class = ICSystemPaperTextAttachment;
  v9 = [(ICAbstractTextAttachment *)&v14 initWithData:data ofType:typeCopy];
  if (!dataCopy)
  {
  }

  if (v9)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    paperIdentifierBeforeAttachmentIsSet = v9->_paperIdentifierBeforeAttachmentIsSet;
    v9->_paperIdentifierBeforeAttachmentIsSet = uUIDString;
  }

  return v9;
}

- (ICDrawingHashtagsAndMentionsController)hashtagsAndMentionsController
{
  if (!self->_hashtagsAndMentionsController)
  {
    attachment = [(ICAbstractTextAttachment *)self attachment];

    if (attachment)
    {
      v4 = [ICDrawingHashtagsAndMentionsController alloc];
      attachment2 = [(ICAbstractTextAttachment *)self attachment];
      v6 = [(ICDrawingHashtagsAndMentionsController *)v4 initWithAttachment:attachment2];
      hashtagsAndMentionsController = self->_hashtagsAndMentionsController;
      self->_hashtagsAndMentionsController = v6;
    }
  }

  v8 = self->_hashtagsAndMentionsController;

  return v8;
}

- (NSHashTable)systemPaperViews
{
  systemPaperViews = self->_systemPaperViews;
  if (!systemPaperViews)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v5 = self->_systemPaperViews;
    self->_systemPaperViews = weakObjectsHashTable;

    systemPaperViews = self->_systemPaperViews;
  }

  return systemPaperViews;
}

- (id)attachmentAsNSTextAttachment
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  fallbackImageData = [attachment fallbackImageData];

  v4 = objc_alloc(MEMORY[0x1E69DB7F0]);
  fallbackImageUTI = [MEMORY[0x1E69B7680] fallbackImageUTI];
  v6 = [v4 initWithData:fallbackImageData ofType:fallbackImageUTI];

  v7 = [MEMORY[0x1E69DCAB8] ic_imageWithData:fallbackImageData];
  [v6 setImage:v7];

  return v6;
}

- (id)printableTextContentForAppearanceType:(unint64_t)type traitCollection:(id)collection textContainer:(id)container
{
  v6 = [MEMORY[0x1E69B7678] appearanceInfoWithType:{0, collection, container}];
  v7 = MEMORY[0x1E69B76C0];
  attachment = [(ICAbstractTextAttachment *)self attachment];
  v9 = [v7 generateImageForAttachment:attachment fullResolution:1 appearanceInfo:v6];

  ic_PNGData = [v9 ic_PNGData];
  if (!ic_PNGData)
  {
    ic_PNGData = [MEMORY[0x1E695DEF0] data];
  }

  v11 = [ICPrintableTextAttachment alloc];
  identifier = [*MEMORY[0x1E6982F28] identifier];
  v13 = [(ICPrintableTextAttachment *)v11 initWithData:ic_PNGData ofType:identifier];

  v14 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v13];
  if ([ic_PNGData length])
  {
    v15 = [MEMORY[0x1E69DCAB8] ic_imageWithData:ic_PNGData];
    v16 = *(MEMORY[0x1E695EFD0] + 16);
    v20[0] = *MEMORY[0x1E695EFD0];
    v20[1] = v16;
    v21 = *(MEMORY[0x1E695EFD0] + 32);
    v19[0] = v20[0];
    v19[1] = v16;
    v19[2] = v21;
    v17 = [ICAttachmentPreviewImageLoader orientedImage:v15 withTransform:v20 background:1 backgroundTransform:v19];

    [(ICPrintableTextAttachment *)v13 setImage:v17];
  }

  return v14;
}

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  v11.receiver = self;
  v11.super_class = ICSystemPaperTextAttachment;
  [(ICBaseTextAttachment *)&v11 attachmentBoundsForAttributes:attributes location:location textContainer:container proposedLineFragment:fragment.origin.x position:fragment.origin.y, fragment.size.width, fragment.size.height, position.x, position.y];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  y = position.y;
  x = position.x;
  height = fragment.size.height;
  width = fragment.size.width;
  v11 = fragment.origin.y;
  v12 = fragment.origin.x;
  v34.receiver = self;
  v34.super_class = ICSystemPaperTextAttachment;
  containerCopy = container;
  [(ICBaseTextAttachment *)&v34 attachmentBoundsForTextContainer:containerCopy proposedLineFragment:index glyphPosition:v12 characterIndex:v11, width, height, x, y];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  layoutManager = [containerCopy layoutManager];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    attachment = [(ICAbstractTextAttachment *)self attachment];
    [attachment bounds];
    v27 = v26;
    v29 = v28;

    v22 = width / (v27 / v29);
    v16 = 0.0;
    v18 = 0.0;
    v20 = width;
  }

  v30 = v16;
  v31 = v18;
  v32 = v20;
  v33 = v22;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container
{
  viewCopy = view;
  locationCopy = location;
  containerCopy = container;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v30.receiver = self;
    v30.super_class = ICSystemPaperTextAttachment;
    v11 = [(ICSystemPaperTextAttachment *)&v30 viewProviderForParentView:viewCopy location:locationCopy textContainer:containerCopy];
    systemPaperViews = [(ICSystemPaperTextAttachment *)self systemPaperViews];
    view = [v11 view];
    v14 = [systemPaperViews containsObject:view];

    if ((v14 & 1) == 0)
    {
      systemPaperViews2 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
      view2 = [v11 view];
      [systemPaperViews2 addObject:view2];

      objc_initWeak(&location, self);
      view3 = [v11 view];
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __80__ICSystemPaperTextAttachment_viewProviderForParentView_location_textContainer___block_invoke;
      v27 = &unk_1E8469558;
      objc_copyWeak(&v28, &location);
      [view3 ic_addDidMoveToWindowHandler:&v24];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }

    window = [viewCopy window];

    if (window)
    {
      window2 = [viewCopy window];
      v20 = [ICInkPaletteController sharedToolPickerForWindow:window2];

      isVisible = [v20 isVisible];
      view4 = [v11 view];
      [v20 setVisible:isVisible forFirstResponder:view4];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __80__ICSystemPaperTextAttachment_viewProviderForParentView_location_textContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained configureHashtagAndMentionsForView:v3];
}

- (void)configureHashtagAndMentionsForView:(id)view
{
  v27 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  tiledViewAttachmentViews = [viewCopy tiledViewAttachmentViews];
  v6 = [tiledViewAttachmentViews countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(tiledViewAttachmentViews);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        attachment = [(ICAbstractTextAttachment *)self attachment];
        [v10 setWantsMentionDetection:{objc_msgSend(attachment, "isSharedViaICloud")}];

        attachment2 = [(ICAbstractTextAttachment *)self attachment];
        note = [attachment2 note];
        [v10 setWantsHashtagDetection:{objc_msgSend(note, "isPasswordProtected") ^ 1}];

        window = [viewCopy window];
        if (window)
        {
          hashtagsAndMentionsController = [(ICSystemPaperTextAttachment *)self hashtagsAndMentionsController];
          [v10 setHashtagAndMentionsDelegate:hashtagsAndMentionsController];
        }

        else
        {
          [v10 setHashtagAndMentionsDelegate:0];
        }
      }

      v7 = [tiledViewAttachmentViews countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  window2 = [viewCopy window];

  systemPaperViews = [(ICSystemPaperTextAttachment *)self systemPaperViews];
  systemPaperViews2 = systemPaperViews;
  if (window2)
  {
    v19 = [systemPaperViews containsObject:viewCopy];

    if ((v19 & 1) == 0)
    {
      [(ICInlineCanvasTextAttachment *)self updatePaletteVisibility];
    }

    systemPaperViews2 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
    [systemPaperViews2 addObject:viewCopy];
    v20 = @"ICSystemPaperTextAttachmentDidAppearNotification";
  }

  else
  {
    [systemPaperViews removeObject:viewCopy];
    v20 = @"ICSystemPaperTextAttachmentWillDisappearNotification";
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:v20 object:viewCopy];
}

- (id)viewProviderForParentView:(id)view characterIndex:(unint64_t)index layoutManager:(id)manager
{
  viewCopy = view;
  managerCopy = manager;
  if ([MEMORY[0x1E696AF00] isMainThread] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17.receiver = self;
    v17.super_class = ICSystemPaperTextAttachment;
    v10 = [(ICSystemPaperTextAttachment *)&v17 viewProviderForParentView:viewCopy characterIndex:index layoutManager:managerCopy];
    window = [viewCopy window];

    if (window)
    {
      window2 = [viewCopy window];
      v14 = [ICInkPaletteController sharedToolPickerForWindow:window2];

      isVisible = [v14 isVisible];
      view = [v10 view];
      [v14 setVisible:isVisible forFirstResponder:view];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)placeView:(id)view withFrame:(CGRect)frame inParentView:(id)parentView characterIndex:(unint64_t)index layoutManager:(id)manager
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v43 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  parentViewCopy = parentView;
  managerCopy = manager;
  [(ICSystemPaperTextAttachment *)self setCachedDrawingViewForPlaceView:viewCopy];
  [(ICSystemPaperTextAttachment *)self setCachedControlViewForPlaceView:parentViewCopy];
  systemPaperViews = [(ICSystemPaperTextAttachment *)self systemPaperViews];
  v19 = [systemPaperViews containsObject:viewCopy];

  systemPaperViews2 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
  [systemPaperViews2 addObject:viewCopy];

  v41.receiver = self;
  v41.super_class = ICSystemPaperTextAttachment;
  v35 = managerCopy;
  v36 = parentViewCopy;
  [(ICSystemPaperTextAttachment *)&v41 placeView:viewCopy withFrame:parentViewCopy inParentView:index characterIndex:managerCopy layoutManager:x, y, width, height];
  if ((v19 & 1) == 0)
  {
    [(ICInlineCanvasTextAttachment *)self updatePaletteVisibility];
  }

  v21 = ICProtocolCast();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  tiledViewAttachmentViews = [v21 tiledViewAttachmentViews];
  v23 = [tiledViewAttachmentViews countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(tiledViewAttachmentViews);
        }

        v27 = *(*(&v37 + 1) + 8 * i);
        hashtagAndMentionsDelegate = [v27 hashtagAndMentionsDelegate];
        hashtagsAndMentionsController = [(ICSystemPaperTextAttachment *)self hashtagsAndMentionsController];

        if (hashtagAndMentionsDelegate != hashtagsAndMentionsController)
        {
          attachment = [(ICAbstractTextAttachment *)self attachment];
          [v27 setWantsMentionDetection:{objc_msgSend(attachment, "isSharedViaICloud")}];

          attachment2 = [(ICAbstractTextAttachment *)self attachment];
          note = [attachment2 note];
          [v27 setWantsHashtagDetection:{objc_msgSend(note, "isPasswordProtected") ^ 1}];

          hashtagsAndMentionsController2 = [(ICSystemPaperTextAttachment *)self hashtagsAndMentionsController];
          [v27 setHashtagAndMentionsDelegate:hashtagsAndMentionsController2];
        }
      }

      v24 = [tiledViewAttachmentViews countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v24);
  }

  [(ICSystemPaperTextAttachment *)self setCachedDrawingViewForPlaceView:0];
  [(ICSystemPaperTextAttachment *)self setCachedControlViewForPlaceView:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICSystemPaperTextAttachmentDidAppearNotification" object:viewCopy];
}

- (void)detachView:(id)view fromParentView:(id)parentView
{
  v29 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  parentViewCopy = parentView;
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"ICSystemPaperTextAttachmentWillDisappearNotification" object:viewCopy];

  if (IsTextKit2Enabled)
  {
    v27.receiver = self;
    v27.super_class = ICSystemPaperTextAttachment;
    [(ICBaseTextAttachment *)&v27 detachView:viewCopy fromParentView:parentViewCopy];
    systemPaperViews = [(ICSystemPaperTextAttachment *)self systemPaperViews];
    [systemPaperViews removeObject:viewCopy];

    p_paperChangeSelectorDelayer = &self->_paperChangeSelectorDelayer;
    if (([(ICSelectorDelayer *)*p_paperChangeSelectorDelayer isScheduledToFire]& 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v26.receiver = self;
  v26.super_class = ICSystemPaperTextAttachment;
  [(ICBaseTextAttachment *)&v26 detachView:viewCopy fromParentView:parentViewCopy];
  systemPaperViews2 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
  [systemPaperViews2 removeObject:viewCopy];

  cachedDrawingViewForPlaceView = [(ICSystemPaperTextAttachment *)self cachedDrawingViewForPlaceView];
  v14 = cachedDrawingViewForPlaceView;
  if (cachedDrawingViewForPlaceView == viewCopy)
  {
    cachedControlViewForPlaceView = [(ICSystemPaperTextAttachment *)self cachedControlViewForPlaceView];

    if (cachedControlViewForPlaceView == parentViewCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v16 = ICProtocolCast();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  tiledViewAttachmentViews = [v16 tiledViewAttachmentViews];
  v18 = [tiledViewAttachmentViews countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(tiledViewAttachmentViews);
        }

        [*(*(&v22 + 1) + 8 * v21++) setHashtagAndMentionsDelegate:0];
      }

      while (v19 != v21);
      v19 = [tiledViewAttachmentViews countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v19);
  }

LABEL_15:
  p_paperChangeSelectorDelayer = &self->_paperChangeSelectorDelayer;
  if ([(ICSelectorDelayer *)*p_paperChangeSelectorDelayer isScheduledToFire])
  {
LABEL_16:
    [(ICSelectorDelayer *)*p_paperChangeSelectorDelayer fireImmediately];
  }

LABEL_17:
}

- (id)inlineViews
{
  systemPaperViews = [(ICSystemPaperTextAttachment *)self systemPaperViews];
  allObjects = [systemPaperViews allObjects];

  return allObjects;
}

- (id)attachmentViews
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  systemPaperViews = [(ICSystemPaperTextAttachment *)self systemPaperViews];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(systemPaperViews, "count")}];

  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v6 = [(ICSystemPaperTextAttachment *)self systemPaperViews:0];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = ICProtocolCast();
        topLevelAttachmentView = [v12 topLevelAttachmentView];
        if (topLevelAttachmentView)
        {
          [v5 addObject:topLevelAttachmentView];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = [v5 copy];

  return v14;
}

- (ICSelectorDelayer)paperChangeSelectorDelayer
{
  paperChangeSelectorDelayer = self->_paperChangeSelectorDelayer;
  if (!paperChangeSelectorDelayer)
  {
    v4 = [objc_alloc(MEMORY[0x1E69B7AB0]) initWithTarget:self selector:sel_paperDidChange delay:0 waitToFireUntilRequestsStop:1 callOnMainThread:2.5];
    v5 = self->_paperChangeSelectorDelayer;
    self->_paperChangeSelectorDelayer = v4;

    paperChangeSelectorDelayer = self->_paperChangeSelectorDelayer;
  }

  return paperChangeSelectorDelayer;
}

- (void)paperDidChange
{
  ic_loggingIdentifier = [self ic_loggingIdentifier];
  OUTLINED_FUNCTION_0_2(&dword_1D4171000, v2, v3, "Received debounced paperDidChange for drawing %@", v4, v5, v6, v7, 2u);
}

uint64_t __45__ICSystemPaperTextAttachment_paperDidChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasPaperForm:0];
  v2 = *(a1 + 32);

  return [v2 setDidRunPaperFormDetection:0];
}

void __45__ICSystemPaperTextAttachment_paperDidChange__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__ICSystemPaperTextAttachment_paperDidChange__block_invoke_3;
  v5[3] = &unk_1E8468F80;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 performBlockAndWait:v5];
}

- (void)updateAttachmentChangeCountAndSave:(id)save
{
  saveCopy = save;
  note = [saveCopy note];
  [note updateModificationDateAndChangeCount];

  note2 = [saveCopy note];
  v6 = [note2 regenerateTitle:1 snippet:1];

  if (v6)
  {
    note3 = [saveCopy note];
    [note3 markShareDirtyIfNeededWithReason:@"Updated title after paper change"];

    note4 = [saveCopy note];
    [note4 updateChangeCountWithReason:@"Updated title after paper change"];
  }

  [saveCopy updateChangeCountWithReason:@"Paper changed"];
  [saveCopy setPreviewUpdateDate:0];
  date = [MEMORY[0x1E695DF00] date];
  [saveCopy setModificationDate:date];

  managedObjectContext = [saveCopy managedObjectContext];
  [managedObjectContext ic_save];

  v11 = +[ICAttachmentPreviewGenerator sharedGenerator];
  [v11 generatePreviewIfNeededForAttachment:saveCopy];

  mEMORY[0x1E69B7800] = [MEMORY[0x1E69B7800] sharedContext];
  workerManagedObjectContext = [mEMORY[0x1E69B7800] workerManagedObjectContext];

  v14 = +[ICPaperSearchIndexer shared];
  objectID = [saveCopy objectID];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__ICSystemPaperTextAttachment_updateAttachmentChangeCountAndSave___block_invoke;
  v17[3] = &unk_1E8468BA0;
  v18 = workerManagedObjectContext;
  v16 = workerManagedObjectContext;
  [v14 updateIndexForAttachment:objectID userInitiated:1 managedObjectContext:v16 completionHandler:v17];
}

void __66__ICSystemPaperTextAttachment_updateAttachmentChangeCountAndSave___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __66__ICSystemPaperTextAttachment_updateAttachmentChangeCountAndSave___block_invoke_2;
  v2[3] = &unk_1E8468BA0;
  v3 = v1;
  [v3 performBlock:v2];
}

- (UIView)cachedDrawingViewForPlaceView
{
  WeakRetained = objc_loadWeakRetained(&self->_cachedDrawingViewForPlaceView);

  return WeakRetained;
}

- (UIView)cachedControlViewForPlaceView
{
  WeakRetained = objc_loadWeakRetained(&self->_cachedControlViewForPlaceView);

  return WeakRetained;
}

- (ICSystemPaperTextAttachment)initWithPaperIdentifier:(id)identifier
{
  identifierCopy = identifier;
  data = [MEMORY[0x1E695DEF0] data];
  v7 = *MEMORY[0x1E6978598];
  v10.receiver = self;
  v10.super_class = ICSystemPaperTextAttachment;
  v8 = [(ICAbstractTextAttachment *)&v10 initWithData:data ofType:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_paperIdentifierBeforeAttachmentIsSet, identifier);
  }

  return v8;
}

- (NSURL)_paperBundleURL
{
  objc_opt_class();
  attachment = [(ICAbstractTextAttachment *)self attachment];
  attachmentModel = [attachment attachmentModel];
  v5 = ICDynamicCast();

  if (v5)
  {
    paperBundleURL = [v5 paperBundleURL];
  }

  else
  {
    attachment2 = [(ICAbstractTextAttachment *)self attachment];
    cloudAccount = [attachment2 cloudAccount];
    temporaryDirectoryURL = [cloudAccount temporaryDirectoryURL];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    paperBundleURL = [temporaryDirectoryURL URLByAppendingPathComponent:uUIDString isDirectory:1];
  }

  return paperBundleURL;
}

- (NSURL)_nonEncryptedContentCRContextURL
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  isPasswordProtected = [attachment isPasswordProtected];

  if (isPasswordProtected)
  {
    paperCoherenceContextURL = 0;
  }

  else
  {
    attachment2 = [(ICAbstractTextAttachment *)self attachment];
    paperCoherenceContextURL = [attachment2 paperCoherenceContextURL];
  }

  return paperCoherenceContextURL;
}

- (NSURL)_encryptionDelegateCRContextURL
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  isPasswordProtected = [attachment isPasswordProtected];

  if (isPasswordProtected)
  {
    attachment2 = [(ICAbstractTextAttachment *)self attachment];
    paperCoherenceContextURL = [attachment2 paperCoherenceContextURL];
  }

  else
  {
    paperCoherenceContextURL = 0;
  }

  return paperCoherenceContextURL;
}

- (NSString)_paperIdentifier
{
  attachment = [(ICAbstractTextAttachment *)self attachment];

  if (attachment)
  {
    attachment2 = [(ICAbstractTextAttachment *)self attachment];
    identifier = [attachment2 identifier];
  }

  else
  {
    identifier = [(ICSystemPaperTextAttachment *)self paperIdentifierBeforeAttachmentIsSet];
  }

  return identifier;
}

- (void)_linkCanvasElementsDidChange
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  modificationDate = [attachment modificationDate];
  attachment2 = [(ICAbstractTextAttachment *)self attachment];
  [attachment2 setModificationDate:modificationDate];
}

- (CGSize)_paperSizeHint
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  [attachment sizeWidth];
  v5 = v4;
  attachment2 = [(ICAbstractTextAttachment *)self attachment];
  [attachment2 sizeHeight];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGRect)_paperBoundsHint
{
  objc_opt_class();
  attachment = [(ICAbstractTextAttachment *)self attachment];
  attachmentModel = [attachment attachmentModel];
  v5 = ICDynamicCast();

  if (v5)
  {
    [v5 paperContentBoundsHint];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v11 = *(MEMORY[0x1E695F050] + 16);
    v13 = *(MEMORY[0x1E695F050] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_paperDidChangeLocally
{
  paperChangeSelectorDelayer = [(ICSystemPaperTextAttachment *)self paperChangeSelectorDelayer];
  [paperChangeSelectorDelayer cancelPreviousFireRequests];

  paperChangeSelectorDelayer2 = [(ICSystemPaperTextAttachment *)self paperChangeSelectorDelayer];
  [paperChangeSelectorDelayer2 requestFire];
}

@end