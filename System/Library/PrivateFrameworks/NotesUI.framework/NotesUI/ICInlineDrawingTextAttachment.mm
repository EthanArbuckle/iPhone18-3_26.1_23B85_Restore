@interface ICInlineDrawingTextAttachment
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (ICDrawingHashtagsAndMentionsController)hashtagsAndMentionsController;
- (ICInlineDrawingChangeCoalescer)changeCoalescer;
- (NSHashTable)inlineDrawingViews;
- (UIView)cachedControlViewForPlaceView;
- (UIView)cachedDrawingViewForPlaceView;
- (id)attachmentAsNSTextAttachment;
- (id)attachmentViews;
- (id)contents;
- (id)inlineViews;
- (id)printableTextContentForAppearanceType:(unint64_t)type traitCollection:(id)collection textContainer:(id)container;
- (id)viewProviderForParentView:(id)view characterIndex:(unint64_t)index layoutManager:(id)manager;
- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container;
- (void)configureHashtagAndMentionsForView:(id)view;
- (void)detachView;
- (void)detachView:(id)view fromParentView:(id)parentView;
- (void)drawingDataDidChange:(id)change view:(id)view;
- (void)placeView:(id)view withFrame:(CGRect)frame inParentView:(id)parentView characterIndex:(unint64_t)index layoutManager:(id)manager;
- (void)resetZoom;
@end

@implementation ICInlineDrawingTextAttachment

- (void)detachView
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  inlineDrawingViews = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  v4 = [inlineDrawingViews copy];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        superview = [v9 superview];
        [(ICInlineDrawingTextAttachment *)self detachView:v9 fromParentView:superview];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)inlineViews
{
  inlineDrawingViews = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  allObjects = [inlineDrawingViews allObjects];

  return allObjects;
}

- (id)attachmentViews
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  inlineDrawingViews = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(inlineDrawingViews, "count")}];

  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v6 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews:0];
  v7 = [v6 copy];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        objc_opt_class();
        v12 = ICCheckedDynamicCast();
        if (v12)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v5 copy];

  return v13;
}

- (ICInlineDrawingChangeCoalescer)changeCoalescer
{
  if (!self->_changeCoalescer)
  {
    attachment = [(ICAbstractTextAttachment *)self attachment];

    if (attachment)
    {
      v4 = [ICInlineDrawingChangeCoalescer alloc];
      attachment2 = [(ICAbstractTextAttachment *)self attachment];
      v6 = [(ICInlineDrawingChangeCoalescer *)v4 initWithAttachment:attachment2];
      changeCoalescer = self->_changeCoalescer;
      self->_changeCoalescer = v6;
    }
  }

  v8 = self->_changeCoalescer;

  return v8;
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

- (NSHashTable)inlineDrawingViews
{
  inlineDrawingViews = self->_inlineDrawingViews;
  if (!inlineDrawingViews)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v5 = self->_inlineDrawingViews;
    self->_inlineDrawingViews = weakObjectsHashTable;

    inlineDrawingViews = self->_inlineDrawingViews;
  }

  return inlineDrawingViews;
}

- (id)contents
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  mergeableData = [attachment mergeableData];

  return mergeableData;
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
  collectionCopy = collection;
  containerCopy = container;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __101__ICInlineDrawingTextAttachment_printableTextContentForAppearanceType_traitCollection_textContainer___block_invoke;
  aBlock[3] = &unk_1E8468BA0;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  if ([(ICInlineDrawingChangeCoalescer *)self->_changeCoalescer hasChanges])
  {
    v8[2](v8);
  }

  attachment = [(ICAbstractTextAttachment *)self attachment];
  fallbackImageData = [attachment fallbackImageData];

  if (!fallbackImageData)
  {
    v8[2](v8);
    attachment2 = [(ICAbstractTextAttachment *)self attachment];
    fallbackImageData = [attachment2 fallbackImageData];

    if (!fallbackImageData)
    {
      fallbackImageData = [MEMORY[0x1E695DEF0] data];
    }
  }

  v12 = [ICPrintableTextAttachment alloc];
  fallbackImageUTI = [MEMORY[0x1E69B7680] fallbackImageUTI];
  v14 = [(ICPrintableTextAttachment *)v12 initWithData:fallbackImageData ofType:fallbackImageUTI];

  v15 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v14];
  v16 = [fallbackImageData length];
  v17 = MEMORY[0x1E695EFD0];
  if (v16)
  {
    v18 = [MEMORY[0x1E69DCAB8] ic_imageWithData:fallbackImageData];
    v19 = v17[1];
    v39 = *v17;
    v40 = v19;
    v41 = v17[2];
    v36 = v39;
    v37 = v19;
    v38 = v41;
    v20 = [ICAttachmentPreviewImageLoader orientedImage:v18 withTransform:&v39 background:1 backgroundTransform:&v36];

    [(ICPrintableTextAttachment *)v14 setImage:v20];
  }

  *&v39 = 0;
  *(&v39 + 1) = &v39;
  *&v40 = 0x3032000000;
  *(&v40 + 1) = __Block_byref_object_copy__54;
  *&v41 = __Block_byref_object_dispose__54;
  *(&v41 + 1) = 0;
  attachment3 = [(ICAbstractTextAttachment *)self attachment];
  managedObjectContext = [attachment3 managedObjectContext];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __101__ICInlineDrawingTextAttachment_printableTextContentForAppearanceType_traitCollection_textContainer___block_invoke_19;
  v35[3] = &unk_1E8468FA8;
  v35[4] = self;
  v35[5] = &v39;
  [managedObjectContext performBlockAndWait:v35];

  v23 = [MEMORY[0x1E69B7678] appearanceInfoWithType:type];
  v24 = MEMORY[0x1E69B76A0];
  attachment4 = [(ICAbstractTextAttachment *)self attachment];
  v26 = [v24 generateImageForAttachment:attachment4 fromDrawing:*(*(&v39 + 1) + 40) fullResolution:1 appearanceInfo:v23];

  if (v26)
  {
    v27 = v17[1];
    v33[0] = *v17;
    v33[1] = v27;
    v34 = v17[2];
    v36 = v33[0];
    v37 = v27;
    v38 = v34;
    v28 = [ICAttachmentPreviewImageLoader orientedImage:v26 withTransform:&v36 background:0 backgroundTransform:v33];

    [(ICPrintableTextAttachment *)v14 setImage:v28];
  }

  _Block_object_dispose(&v39, 8);

  return v15;
}

void __101__ICInlineDrawingTextAttachment_printableTextContentForAppearanceType_traitCollection_textContainer___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 152) updateNowIfNecessary];
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 attachmentModel];
  [v3 generatePreviewsInOperation:0];

  v5 = [*(a1 + 32) attachment];
  v4 = [v5 managedObjectContext];
  [v4 ic_save];
}

void __101__ICInlineDrawingTextAttachment_printableTextContentForAppearanceType_traitCollection_textContainer___block_invoke_19(uint64_t a1)
{
  v6 = [*(a1 + 32) attachment];
  v2 = [v6 inlineDrawingModel];
  v3 = [v2 newDrawingFromMergeableData];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)viewProviderForParentView:(id)view location:(id)location textContainer:(id)container
{
  viewCopy = view;
  locationCopy = location;
  containerCopy = container;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v30.receiver = self;
    v30.super_class = ICInlineDrawingTextAttachment;
    v11 = [(ICInlineDrawingTextAttachment *)&v30 viewProviderForParentView:viewCopy location:locationCopy textContainer:containerCopy];
    inlineDrawingViews = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
    view = [v11 view];
    v14 = [inlineDrawingViews containsObject:view];

    if ((v14 & 1) == 0)
    {
      inlineDrawingViews2 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
      view2 = [v11 view];
      [inlineDrawingViews2 addObject:view2];

      objc_initWeak(&location, self);
      view3 = [v11 view];
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __82__ICInlineDrawingTextAttachment_viewProviderForParentView_location_textContainer___block_invoke;
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

void __82__ICInlineDrawingTextAttachment_viewProviderForParentView_location_textContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained configureHashtagAndMentionsForView:v3];
}

- (void)configureHashtagAndMentionsForView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  v4 = ICDynamicCast();
  attachment = [(ICAbstractTextAttachment *)self attachment];
  [v4 setWantsMentionDetection:{objc_msgSend(attachment, "isSharedViaICloud")}];

  attachment2 = [(ICAbstractTextAttachment *)self attachment];
  note = [attachment2 note];
  [v4 setWantsHashtagDetection:{objc_msgSend(note, "isPasswordProtected") ^ 1}];

  window = [viewCopy window];
  if (window)
  {
    hashtagsAndMentionsController = [(ICInlineDrawingTextAttachment *)self hashtagsAndMentionsController];
    [v4 setHashtagAndMentionsDelegate:hashtagsAndMentionsController];
  }

  else
  {
    [v4 setHashtagAndMentionsDelegate:0];
  }

  window2 = [viewCopy window];

  inlineDrawingViews = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  inlineDrawingViews2 = inlineDrawingViews;
  if (window2)
  {
    v13 = [inlineDrawingViews containsObject:viewCopy];

    if ((v13 & 1) == 0)
    {
      [(ICInlineCanvasTextAttachment *)self updatePaletteVisibility];
    }

    inlineDrawingViews2 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
    [inlineDrawingViews2 addObject:viewCopy];
  }

  else
  {
    [inlineDrawingViews removeObject:viewCopy];
  }
}

- (id)viewProviderForParentView:(id)view characterIndex:(unint64_t)index layoutManager:(id)manager
{
  viewCopy = view;
  managerCopy = manager;
  if ([MEMORY[0x1E696AF00] isMainThread] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17.receiver = self;
    v17.super_class = ICInlineDrawingTextAttachment;
    v10 = [(ICInlineDrawingTextAttachment *)&v17 viewProviderForParentView:viewCopy characterIndex:index layoutManager:managerCopy];
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
  viewCopy = view;
  managerCopy = manager;
  parentViewCopy = parentView;
  [(ICInlineDrawingTextAttachment *)self setCachedDrawingViewForPlaceView:viewCopy];
  [(ICInlineDrawingTextAttachment *)self setCachedControlViewForPlaceView:parentViewCopy];
  inlineDrawingViews = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  v19 = [inlineDrawingViews containsObject:viewCopy];

  inlineDrawingViews2 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  [inlineDrawingViews2 addObject:viewCopy];

  v28.receiver = self;
  v28.super_class = ICInlineDrawingTextAttachment;
  [(ICInlineDrawingTextAttachment *)&v28 placeView:viewCopy withFrame:parentViewCopy inParentView:index characterIndex:managerCopy layoutManager:x, y, width, height];

  if ((v19 & 1) == 0)
  {
    [(ICInlineCanvasTextAttachment *)self updatePaletteVisibility];
  }

  objc_opt_class();
  v21 = ICDynamicCast();
  if (v21)
  {
    [(ICAbstractTextAttachment *)self foregroundAlpha];
    [v21 ic_setAlpha:?];
    hashtagAndMentionsDelegate = [v21 hashtagAndMentionsDelegate];
    hashtagsAndMentionsController = [(ICInlineDrawingTextAttachment *)self hashtagsAndMentionsController];

    if (hashtagAndMentionsDelegate != hashtagsAndMentionsController)
    {
      attachment = [(ICAbstractTextAttachment *)self attachment];
      [v21 setWantsMentionDetection:{objc_msgSend(attachment, "isSharedViaICloud")}];

      attachment2 = [(ICAbstractTextAttachment *)self attachment];
      note = [attachment2 note];
      [v21 setWantsHashtagDetection:{objc_msgSend(note, "isPasswordProtected") ^ 1}];

      hashtagsAndMentionsController2 = [(ICInlineDrawingTextAttachment *)self hashtagsAndMentionsController];
      [v21 setHashtagAndMentionsDelegate:hashtagsAndMentionsController2];
    }
  }

  [(ICInlineDrawingTextAttachment *)self setCachedDrawingViewForPlaceView:0];
  [(ICInlineDrawingTextAttachment *)self setCachedControlViewForPlaceView:0];
}

- (void)detachView:(id)view fromParentView:(id)parentView
{
  viewCopy = view;
  parentViewCopy = parentView;
  v15.receiver = self;
  v15.super_class = ICInlineDrawingTextAttachment;
  [(ICBaseTextAttachment *)&v15 detachView:viewCopy fromParentView:parentViewCopy];
  cachedDrawingViewForPlaceView = [(ICInlineDrawingTextAttachment *)self cachedDrawingViewForPlaceView];
  v9 = cachedDrawingViewForPlaceView;
  if (cachedDrawingViewForPlaceView == viewCopy)
  {
    cachedControlViewForPlaceView = [(ICInlineDrawingTextAttachment *)self cachedControlViewForPlaceView];

    if (cachedControlViewForPlaceView == parentViewCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  objc_opt_class();
  v11 = ICDynamicCast();
  v12 = v11;
  if (v11)
  {
    [v11 setHashtagAndMentionsDelegate:0];
  }

LABEL_7:
  inlineDrawingViews = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  [inlineDrawingViews removeObject:viewCopy];

  [(ICInlineDrawingChangeCoalescer *)self->_changeCoalescer updateNowIfNecessary];
  changeCoalescer = self->_changeCoalescer;
  self->_changeCoalescer = 0;
}

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  y = position.y;
  x = position.x;
  height = fragment.size.height;
  width = fragment.size.width;
  v11 = fragment.origin.y;
  v12 = fragment.origin.x;
  containerCopy = container;
  v37.receiver = self;
  v37.super_class = ICInlineDrawingTextAttachment;
  [(ICBaseTextAttachment *)&v37 attachmentBoundsForAttributes:attributes location:location textContainer:containerCopy proposedLineFragment:v12 position:v11, width, height, x, y];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  textLayoutManager = [containerCopy textLayoutManager];
  if (textLayoutManager)
  {
  }

  else
  {
    layoutManager = [containerCopy layoutManager];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      attachment = [(ICAbstractTextAttachment *)self attachment];
      [attachment bounds];
      v30 = v29;
      v32 = v31;

      v24 = width / (v30 / v32);
      v18 = 0.0;
      v20 = 0.0;
      v22 = width;
    }
  }

  v33 = v18;
  v34 = v20;
  v35 = v22;
  v36 = v24;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
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
  v34.super_class = ICInlineDrawingTextAttachment;
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

- (void)resetZoom
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  inlineDrawingViews = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  v3 = [inlineDrawingViews copy];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * v7) conformsToProtocol:&unk_1F5091CC8])
        {
          v8 = ICProtocolCast();
          [v8 resetZoom];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)drawingDataDidChange:(id)change view:(id)view
{
  v51 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  viewCopy = view;
  fileType = [(ICInlineDrawingTextAttachment *)self fileType];
  v8 = [fileType isEqualToString:*MEMORY[0x1E6978590]];

  if (changeCopy && v8)
  {
    changeCoalescer = [(ICInlineDrawingTextAttachment *)self changeCoalescer];
    [changeCoalescer drawingDataDidChange:changeCopy];

    inlineDrawingViews = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
    if ([inlineDrawingViews count] < 2)
    {
    }

    else
    {
      isHandlingDrawingDidChange = [(ICInlineDrawingTextAttachment *)self isHandlingDrawingDidChange];

      if (!isHandlingDrawingDidChange)
      {
        [(ICInlineDrawingTextAttachment *)self setIsHandlingDrawingDidChange:1];
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        inlineDrawingViews2 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
        v13 = [inlineDrawingViews2 copy];

        v14 = [v13 countByEnumeratingWithState:&v44 objects:v50 count:16];
        if (v14)
        {
          v15 = v14;
          selfCopy = self;
          v34 = changeCopy;
          v16 = 0;
          v17 = *v45;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v45 != v17)
              {
                objc_enumerationMutation(v13);
              }

              v19 = *(*(&v44 + 1) + 8 * i);
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              gestureRecognizers = [v19 gestureRecognizers];
              v21 = [gestureRecognizers countByEnumeratingWithState:&v40 objects:v49 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v41;
                do
                {
                  for (j = 0; j != v22; ++j)
                  {
                    if (*v41 != v23)
                    {
                      objc_enumerationMutation(gestureRecognizers);
                    }

                    v25 = *(*(&v40 + 1) + 8 * j);
                    if ([v25 state] == 2 || objc_msgSend(v25, "state") == 3)
                    {
                      v16 = 1;
                    }
                  }

                  v22 = [gestureRecognizers countByEnumeratingWithState:&v40 objects:v49 count:16];
                }

                while (v22);
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v44 objects:v50 count:16];
          }

          while (v15);

          self = selfCopy;
          changeCopy = v34;
          if (v16)
          {
            goto LABEL_38;
          }
        }

        else
        {
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        inlineDrawingViews3 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
        v27 = [inlineDrawingViews3 copy];

        v28 = [v27 countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v37;
          do
          {
            for (k = 0; k != v29; ++k)
            {
              if (*v37 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v36 + 1) + 8 * k);
              if (v32 != viewCopy && [*(*(&v36 + 1) + 8 * k) conformsToProtocol:&unk_1F5091CC8] && (objc_opt_respondsToSelector() & 1) != 0)
              {
                [v32 drawingDataDidChange:changeCopy];
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v36 objects:v48 count:16];
          }

          while (v29);
        }

LABEL_38:
        [(ICInlineDrawingTextAttachment *)self setIsHandlingDrawingDidChange:0];
      }
    }
  }
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

@end