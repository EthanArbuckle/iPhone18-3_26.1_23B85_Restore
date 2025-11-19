@interface ICSystemPaperTextAttachment
- (CGRect)_paperBoundsHint;
- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7;
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (CGSize)_paperSizeHint;
- (ICDrawingHashtagsAndMentionsController)hashtagsAndMentionsController;
- (ICSelectorDelayer)paperChangeSelectorDelayer;
- (ICSystemPaperTextAttachment)initWithData:(id)a3 ofType:(id)a4;
- (ICSystemPaperTextAttachment)initWithPaperIdentifier:(id)a3;
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
- (id)printableTextContentForAppearanceType:(unint64_t)a3 traitCollection:(id)a4 textContainer:(id)a5;
- (id)viewProviderForParentView:(id)a3 characterIndex:(unint64_t)a4 layoutManager:(id)a5;
- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5;
- (void)_linkCanvasElementsDidChange;
- (void)_paperDidChangeLocally;
- (void)configureHashtagAndMentionsForView:(id)a3;
- (void)dealloc;
- (void)detachView:(id)a3 fromParentView:(id)a4;
- (void)paperDidChange;
- (void)placeView:(id)a3 withFrame:(CGRect)a4 inParentView:(id)a5 characterIndex:(unint64_t)a6 layoutManager:(id)a7;
- (void)updateAttachmentChangeCountAndSave:(id)a3;
@end

@implementation ICSystemPaperTextAttachment

- (void)dealloc
{
  [(ICSelectorDelayer *)self->_paperChangeSelectorDelayer cancelPreviousFireRequests];
  v3.receiver = self;
  v3.super_class = ICSystemPaperTextAttachment;
  [(ICSystemPaperTextAttachment *)&v3 dealloc];
}

- (ICSystemPaperTextAttachment)initWithData:(id)a3 ofType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (!v6)
  {
    v8 = [MEMORY[0x1E695DEF0] data];
  }

  v14.receiver = self;
  v14.super_class = ICSystemPaperTextAttachment;
  v9 = [(ICAbstractTextAttachment *)&v14 initWithData:v8 ofType:v7];
  if (!v6)
  {
  }

  if (v9)
  {
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    paperIdentifierBeforeAttachmentIsSet = v9->_paperIdentifierBeforeAttachmentIsSet;
    v9->_paperIdentifierBeforeAttachmentIsSet = v11;
  }

  return v9;
}

- (ICDrawingHashtagsAndMentionsController)hashtagsAndMentionsController
{
  if (!self->_hashtagsAndMentionsController)
  {
    v3 = [(ICAbstractTextAttachment *)self attachment];

    if (v3)
    {
      v4 = [ICDrawingHashtagsAndMentionsController alloc];
      v5 = [(ICAbstractTextAttachment *)self attachment];
      v6 = [(ICDrawingHashtagsAndMentionsController *)v4 initWithAttachment:v5];
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
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v5 = self->_systemPaperViews;
    self->_systemPaperViews = v4;

    systemPaperViews = self->_systemPaperViews;
  }

  return systemPaperViews;
}

- (id)attachmentAsNSTextAttachment
{
  v2 = [(ICAbstractTextAttachment *)self attachment];
  v3 = [v2 fallbackImageData];

  v4 = objc_alloc(MEMORY[0x1E69DB7F0]);
  v5 = [MEMORY[0x1E69B7680] fallbackImageUTI];
  v6 = [v4 initWithData:v3 ofType:v5];

  v7 = [MEMORY[0x1E69DCAB8] ic_imageWithData:v3];
  [v6 setImage:v7];

  return v6;
}

- (id)printableTextContentForAppearanceType:(unint64_t)a3 traitCollection:(id)a4 textContainer:(id)a5
{
  v6 = [MEMORY[0x1E69B7678] appearanceInfoWithType:{0, a4, a5}];
  v7 = MEMORY[0x1E69B76C0];
  v8 = [(ICAbstractTextAttachment *)self attachment];
  v9 = [v7 generateImageForAttachment:v8 fullResolution:1 appearanceInfo:v6];

  v10 = [v9 ic_PNGData];
  if (!v10)
  {
    v10 = [MEMORY[0x1E695DEF0] data];
  }

  v11 = [ICPrintableTextAttachment alloc];
  v12 = [*MEMORY[0x1E6982F28] identifier];
  v13 = [(ICPrintableTextAttachment *)v11 initWithData:v10 ofType:v12];

  v14 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v13];
  if ([v10 length])
  {
    v15 = [MEMORY[0x1E69DCAB8] ic_imageWithData:v10];
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

- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7
{
  v11.receiver = self;
  v11.super_class = ICSystemPaperTextAttachment;
  [(ICBaseTextAttachment *)&v11 attachmentBoundsForAttributes:a3 location:a4 textContainer:a5 proposedLineFragment:a6.origin.x position:a6.origin.y, a6.size.width, a6.size.height, a7.x, a7.y];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v34.receiver = self;
  v34.super_class = ICSystemPaperTextAttachment;
  v14 = a3;
  [(ICBaseTextAttachment *)&v34 attachmentBoundsForTextContainer:v14 proposedLineFragment:a6 glyphPosition:v12 characterIndex:v11, width, height, x, y];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v14 layoutManager];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v25 = [(ICAbstractTextAttachment *)self attachment];
    [v25 bounds];
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

- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v30.receiver = self;
    v30.super_class = ICSystemPaperTextAttachment;
    v11 = [(ICSystemPaperTextAttachment *)&v30 viewProviderForParentView:v8 location:v9 textContainer:v10];
    v12 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
    v13 = [v11 view];
    v14 = [v12 containsObject:v13];

    if ((v14 & 1) == 0)
    {
      v15 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
      v16 = [v11 view];
      [v15 addObject:v16];

      objc_initWeak(&location, self);
      v17 = [v11 view];
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __80__ICSystemPaperTextAttachment_viewProviderForParentView_location_textContainer___block_invoke;
      v27 = &unk_1E8469558;
      objc_copyWeak(&v28, &location);
      [v17 ic_addDidMoveToWindowHandler:&v24];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }

    v18 = [v8 window];

    if (v18)
    {
      v19 = [v8 window];
      v20 = [ICInkPaletteController sharedToolPickerForWindow:v19];

      v21 = [v20 isVisible];
      v22 = [v11 view];
      [v20 setVisible:v21 forFirstResponder:v22];
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

- (void)configureHashtagAndMentionsForView:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 tiledViewAttachmentViews];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [(ICAbstractTextAttachment *)self attachment];
        [v10 setWantsMentionDetection:{objc_msgSend(v11, "isSharedViaICloud")}];

        v12 = [(ICAbstractTextAttachment *)self attachment];
        v13 = [v12 note];
        [v10 setWantsHashtagDetection:{objc_msgSend(v13, "isPasswordProtected") ^ 1}];

        v14 = [v4 window];
        if (v14)
        {
          v15 = [(ICSystemPaperTextAttachment *)self hashtagsAndMentionsController];
          [v10 setHashtagAndMentionsDelegate:v15];
        }

        else
        {
          [v10 setHashtagAndMentionsDelegate:0];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v16 = [v4 window];

  v17 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
  v18 = v17;
  if (v16)
  {
    v19 = [v17 containsObject:v4];

    if ((v19 & 1) == 0)
    {
      [(ICInlineCanvasTextAttachment *)self updatePaletteVisibility];
    }

    v18 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
    [v18 addObject:v4];
    v20 = @"ICSystemPaperTextAttachmentDidAppearNotification";
  }

  else
  {
    [v17 removeObject:v4];
    v20 = @"ICSystemPaperTextAttachmentWillDisappearNotification";
  }

  v21 = [MEMORY[0x1E696AD88] defaultCenter];
  [v21 postNotificationName:v20 object:v4];
}

- (id)viewProviderForParentView:(id)a3 characterIndex:(unint64_t)a4 layoutManager:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([MEMORY[0x1E696AF00] isMainThread] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17.receiver = self;
    v17.super_class = ICSystemPaperTextAttachment;
    v10 = [(ICSystemPaperTextAttachment *)&v17 viewProviderForParentView:v8 characterIndex:a4 layoutManager:v9];
    v12 = [v8 window];

    if (v12)
    {
      v13 = [v8 window];
      v14 = [ICInkPaletteController sharedToolPickerForWindow:v13];

      v15 = [v14 isVisible];
      v16 = [v10 view];
      [v14 setVisible:v15 forFirstResponder:v16];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)placeView:(id)a3 withFrame:(CGRect)a4 inParentView:(id)a5 characterIndex:(unint64_t)a6 layoutManager:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v43 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a5;
  v17 = a7;
  [(ICSystemPaperTextAttachment *)self setCachedDrawingViewForPlaceView:v15];
  [(ICSystemPaperTextAttachment *)self setCachedControlViewForPlaceView:v16];
  v18 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
  v19 = [v18 containsObject:v15];

  v20 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
  [v20 addObject:v15];

  v41.receiver = self;
  v41.super_class = ICSystemPaperTextAttachment;
  v35 = v17;
  v36 = v16;
  [(ICSystemPaperTextAttachment *)&v41 placeView:v15 withFrame:v16 inParentView:a6 characterIndex:v17 layoutManager:x, y, width, height];
  if ((v19 & 1) == 0)
  {
    [(ICInlineCanvasTextAttachment *)self updatePaletteVisibility];
  }

  v21 = ICProtocolCast();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = [v21 tiledViewAttachmentViews];
  v23 = [v22 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v37 + 1) + 8 * i);
        v28 = [v27 hashtagAndMentionsDelegate];
        v29 = [(ICSystemPaperTextAttachment *)self hashtagsAndMentionsController];

        if (v28 != v29)
        {
          v30 = [(ICAbstractTextAttachment *)self attachment];
          [v27 setWantsMentionDetection:{objc_msgSend(v30, "isSharedViaICloud")}];

          v31 = [(ICAbstractTextAttachment *)self attachment];
          v32 = [v31 note];
          [v27 setWantsHashtagDetection:{objc_msgSend(v32, "isPasswordProtected") ^ 1}];

          v33 = [(ICSystemPaperTextAttachment *)self hashtagsAndMentionsController];
          [v27 setHashtagAndMentionsDelegate:v33];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v24);
  }

  [(ICSystemPaperTextAttachment *)self setCachedDrawingViewForPlaceView:0];
  [(ICSystemPaperTextAttachment *)self setCachedControlViewForPlaceView:0];
  v34 = [MEMORY[0x1E696AD88] defaultCenter];
  [v34 postNotificationName:@"ICSystemPaperTextAttachmentDidAppearNotification" object:v15];
}

- (void)detachView:(id)a3 fromParentView:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:@"ICSystemPaperTextAttachmentWillDisappearNotification" object:v6];

  if (IsTextKit2Enabled)
  {
    v27.receiver = self;
    v27.super_class = ICSystemPaperTextAttachment;
    [(ICBaseTextAttachment *)&v27 detachView:v6 fromParentView:v7];
    v10 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
    [v10 removeObject:v6];

    p_paperChangeSelectorDelayer = &self->_paperChangeSelectorDelayer;
    if (([(ICSelectorDelayer *)*p_paperChangeSelectorDelayer isScheduledToFire]& 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v26.receiver = self;
  v26.super_class = ICSystemPaperTextAttachment;
  [(ICBaseTextAttachment *)&v26 detachView:v6 fromParentView:v7];
  v12 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
  [v12 removeObject:v6];

  v13 = [(ICSystemPaperTextAttachment *)self cachedDrawingViewForPlaceView];
  v14 = v13;
  if (v13 == v6)
  {
    v15 = [(ICSystemPaperTextAttachment *)self cachedControlViewForPlaceView];

    if (v15 == v7)
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
  v17 = [v16 tiledViewAttachmentViews];
  v18 = [v17 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
          objc_enumerationMutation(v17);
        }

        [*(*(&v22 + 1) + 8 * v21++) setHashtagAndMentionsDelegate:0];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
  v2 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
  v3 = [v2 allObjects];

  return v3;
}

- (id)attachmentViews
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

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
        v13 = [v12 topLevelAttachmentView];
        if (v13)
        {
          [v5 addObject:v13];
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
  v1 = [a1 ic_loggingIdentifier];
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

- (void)updateAttachmentChangeCountAndSave:(id)a3
{
  v3 = a3;
  v4 = [v3 note];
  [v4 updateModificationDateAndChangeCount];

  v5 = [v3 note];
  v6 = [v5 regenerateTitle:1 snippet:1];

  if (v6)
  {
    v7 = [v3 note];
    [v7 markShareDirtyIfNeededWithReason:@"Updated title after paper change"];

    v8 = [v3 note];
    [v8 updateChangeCountWithReason:@"Updated title after paper change"];
  }

  [v3 updateChangeCountWithReason:@"Paper changed"];
  [v3 setPreviewUpdateDate:0];
  v9 = [MEMORY[0x1E695DF00] date];
  [v3 setModificationDate:v9];

  v10 = [v3 managedObjectContext];
  [v10 ic_save];

  v11 = +[ICAttachmentPreviewGenerator sharedGenerator];
  [v11 generatePreviewIfNeededForAttachment:v3];

  v12 = [MEMORY[0x1E69B7800] sharedContext];
  v13 = [v12 workerManagedObjectContext];

  v14 = +[ICPaperSearchIndexer shared];
  v15 = [v3 objectID];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__ICSystemPaperTextAttachment_updateAttachmentChangeCountAndSave___block_invoke;
  v17[3] = &unk_1E8468BA0;
  v18 = v13;
  v16 = v13;
  [v14 updateIndexForAttachment:v15 userInitiated:1 managedObjectContext:v16 completionHandler:v17];
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

- (ICSystemPaperTextAttachment)initWithPaperIdentifier:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DEF0] data];
  v7 = *MEMORY[0x1E6978598];
  v10.receiver = self;
  v10.super_class = ICSystemPaperTextAttachment;
  v8 = [(ICAbstractTextAttachment *)&v10 initWithData:v6 ofType:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_paperIdentifierBeforeAttachmentIsSet, a3);
  }

  return v8;
}

- (NSURL)_paperBundleURL
{
  objc_opt_class();
  v3 = [(ICAbstractTextAttachment *)self attachment];
  v4 = [v3 attachmentModel];
  v5 = ICDynamicCast();

  if (v5)
  {
    v6 = [v5 paperBundleURL];
  }

  else
  {
    v7 = [(ICAbstractTextAttachment *)self attachment];
    v8 = [v7 cloudAccount];
    v9 = [v8 temporaryDirectoryURL];
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    v6 = [v9 URLByAppendingPathComponent:v11 isDirectory:1];
  }

  return v6;
}

- (NSURL)_nonEncryptedContentCRContextURL
{
  v3 = [(ICAbstractTextAttachment *)self attachment];
  v4 = [v3 isPasswordProtected];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(ICAbstractTextAttachment *)self attachment];
    v5 = [v6 paperCoherenceContextURL];
  }

  return v5;
}

- (NSURL)_encryptionDelegateCRContextURL
{
  v3 = [(ICAbstractTextAttachment *)self attachment];
  v4 = [v3 isPasswordProtected];

  if (v4)
  {
    v5 = [(ICAbstractTextAttachment *)self attachment];
    v6 = [v5 paperCoherenceContextURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)_paperIdentifier
{
  v3 = [(ICAbstractTextAttachment *)self attachment];

  if (v3)
  {
    v4 = [(ICAbstractTextAttachment *)self attachment];
    v5 = [v4 identifier];
  }

  else
  {
    v5 = [(ICSystemPaperTextAttachment *)self paperIdentifierBeforeAttachmentIsSet];
  }

  return v5;
}

- (void)_linkCanvasElementsDidChange
{
  v5 = [(ICAbstractTextAttachment *)self attachment];
  v3 = [v5 modificationDate];
  v4 = [(ICAbstractTextAttachment *)self attachment];
  [v4 setModificationDate:v3];
}

- (CGSize)_paperSizeHint
{
  v3 = [(ICAbstractTextAttachment *)self attachment];
  [v3 sizeWidth];
  v5 = v4;
  v6 = [(ICAbstractTextAttachment *)self attachment];
  [v6 sizeHeight];
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
  v3 = [(ICAbstractTextAttachment *)self attachment];
  v4 = [v3 attachmentModel];
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
  v3 = [(ICSystemPaperTextAttachment *)self paperChangeSelectorDelayer];
  [v3 cancelPreviousFireRequests];

  v4 = [(ICSystemPaperTextAttachment *)self paperChangeSelectorDelayer];
  [v4 requestFire];
}

@end