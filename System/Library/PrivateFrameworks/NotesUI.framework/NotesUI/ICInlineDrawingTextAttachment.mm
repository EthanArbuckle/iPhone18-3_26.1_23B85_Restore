@interface ICInlineDrawingTextAttachment
- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7;
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (ICDrawingHashtagsAndMentionsController)hashtagsAndMentionsController;
- (ICInlineDrawingChangeCoalescer)changeCoalescer;
- (NSHashTable)inlineDrawingViews;
- (UIView)cachedControlViewForPlaceView;
- (UIView)cachedDrawingViewForPlaceView;
- (id)attachmentAsNSTextAttachment;
- (id)attachmentViews;
- (id)contents;
- (id)inlineViews;
- (id)printableTextContentForAppearanceType:(unint64_t)a3 traitCollection:(id)a4 textContainer:(id)a5;
- (id)viewProviderForParentView:(id)a3 characterIndex:(unint64_t)a4 layoutManager:(id)a5;
- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5;
- (void)configureHashtagAndMentionsForView:(id)a3;
- (void)detachView;
- (void)detachView:(id)a3 fromParentView:(id)a4;
- (void)drawingDataDidChange:(id)a3 view:(id)a4;
- (void)placeView:(id)a3 withFrame:(CGRect)a4 inParentView:(id)a5 characterIndex:(unint64_t)a6 layoutManager:(id)a7;
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
  v3 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  v4 = [v3 copy];

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
        v10 = [v9 superview];
        [(ICInlineDrawingTextAttachment *)self detachView:v9 fromParentView:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)inlineViews
{
  v2 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  v3 = [v2 allObjects];

  return v3;
}

- (id)attachmentViews
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

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
    v3 = [(ICAbstractTextAttachment *)self attachment];

    if (v3)
    {
      v4 = [ICInlineDrawingChangeCoalescer alloc];
      v5 = [(ICAbstractTextAttachment *)self attachment];
      v6 = [(ICInlineDrawingChangeCoalescer *)v4 initWithAttachment:v5];
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

- (NSHashTable)inlineDrawingViews
{
  inlineDrawingViews = self->_inlineDrawingViews;
  if (!inlineDrawingViews)
  {
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v5 = self->_inlineDrawingViews;
    self->_inlineDrawingViews = v4;

    inlineDrawingViews = self->_inlineDrawingViews;
  }

  return inlineDrawingViews;
}

- (id)contents
{
  v2 = [(ICAbstractTextAttachment *)self attachment];
  v3 = [v2 mergeableData];

  return v3;
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
  v32 = a4;
  v30 = a5;
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

  v9 = [(ICAbstractTextAttachment *)self attachment];
  v10 = [v9 fallbackImageData];

  if (!v10)
  {
    v8[2](v8);
    v11 = [(ICAbstractTextAttachment *)self attachment];
    v10 = [v11 fallbackImageData];

    if (!v10)
    {
      v10 = [MEMORY[0x1E695DEF0] data];
    }
  }

  v12 = [ICPrintableTextAttachment alloc];
  v13 = [MEMORY[0x1E69B7680] fallbackImageUTI];
  v14 = [(ICPrintableTextAttachment *)v12 initWithData:v10 ofType:v13];

  v15 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v14];
  v16 = [v10 length];
  v17 = MEMORY[0x1E695EFD0];
  if (v16)
  {
    v18 = [MEMORY[0x1E69DCAB8] ic_imageWithData:v10];
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
  v21 = [(ICAbstractTextAttachment *)self attachment];
  v22 = [v21 managedObjectContext];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __101__ICInlineDrawingTextAttachment_printableTextContentForAppearanceType_traitCollection_textContainer___block_invoke_19;
  v35[3] = &unk_1E8468FA8;
  v35[4] = self;
  v35[5] = &v39;
  [v22 performBlockAndWait:v35];

  v23 = [MEMORY[0x1E69B7678] appearanceInfoWithType:a3];
  v24 = MEMORY[0x1E69B76A0];
  v25 = [(ICAbstractTextAttachment *)self attachment];
  v26 = [v24 generateImageForAttachment:v25 fromDrawing:*(*(&v39 + 1) + 40) fullResolution:1 appearanceInfo:v23];

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

- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v30.receiver = self;
    v30.super_class = ICInlineDrawingTextAttachment;
    v11 = [(ICInlineDrawingTextAttachment *)&v30 viewProviderForParentView:v8 location:v9 textContainer:v10];
    v12 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
    v13 = [v11 view];
    v14 = [v12 containsObject:v13];

    if ((v14 & 1) == 0)
    {
      v15 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
      v16 = [v11 view];
      [v15 addObject:v16];

      objc_initWeak(&location, self);
      v17 = [v11 view];
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __82__ICInlineDrawingTextAttachment_viewProviderForParentView_location_textContainer___block_invoke;
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

void __82__ICInlineDrawingTextAttachment_viewProviderForParentView_location_textContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained configureHashtagAndMentionsForView:v3];
}

- (void)configureHashtagAndMentionsForView:(id)a3
{
  v14 = a3;
  objc_opt_class();
  v4 = ICDynamicCast();
  v5 = [(ICAbstractTextAttachment *)self attachment];
  [v4 setWantsMentionDetection:{objc_msgSend(v5, "isSharedViaICloud")}];

  v6 = [(ICAbstractTextAttachment *)self attachment];
  v7 = [v6 note];
  [v4 setWantsHashtagDetection:{objc_msgSend(v7, "isPasswordProtected") ^ 1}];

  v8 = [v14 window];
  if (v8)
  {
    v9 = [(ICInlineDrawingTextAttachment *)self hashtagsAndMentionsController];
    [v4 setHashtagAndMentionsDelegate:v9];
  }

  else
  {
    [v4 setHashtagAndMentionsDelegate:0];
  }

  v10 = [v14 window];

  v11 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  v12 = v11;
  if (v10)
  {
    v13 = [v11 containsObject:v14];

    if ((v13 & 1) == 0)
    {
      [(ICInlineCanvasTextAttachment *)self updatePaletteVisibility];
    }

    v12 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
    [v12 addObject:v14];
  }

  else
  {
    [v11 removeObject:v14];
  }
}

- (id)viewProviderForParentView:(id)a3 characterIndex:(unint64_t)a4 layoutManager:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([MEMORY[0x1E696AF00] isMainThread] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17.receiver = self;
    v17.super_class = ICInlineDrawingTextAttachment;
    v10 = [(ICInlineDrawingTextAttachment *)&v17 viewProviderForParentView:v8 characterIndex:a4 layoutManager:v9];
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
  v15 = a3;
  v16 = a7;
  v17 = a5;
  [(ICInlineDrawingTextAttachment *)self setCachedDrawingViewForPlaceView:v15];
  [(ICInlineDrawingTextAttachment *)self setCachedControlViewForPlaceView:v17];
  v18 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  v19 = [v18 containsObject:v15];

  v20 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  [v20 addObject:v15];

  v28.receiver = self;
  v28.super_class = ICInlineDrawingTextAttachment;
  [(ICInlineDrawingTextAttachment *)&v28 placeView:v15 withFrame:v17 inParentView:a6 characterIndex:v16 layoutManager:x, y, width, height];

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
    v22 = [v21 hashtagAndMentionsDelegate];
    v23 = [(ICInlineDrawingTextAttachment *)self hashtagsAndMentionsController];

    if (v22 != v23)
    {
      v24 = [(ICAbstractTextAttachment *)self attachment];
      [v21 setWantsMentionDetection:{objc_msgSend(v24, "isSharedViaICloud")}];

      v25 = [(ICAbstractTextAttachment *)self attachment];
      v26 = [v25 note];
      [v21 setWantsHashtagDetection:{objc_msgSend(v26, "isPasswordProtected") ^ 1}];

      v27 = [(ICInlineDrawingTextAttachment *)self hashtagsAndMentionsController];
      [v21 setHashtagAndMentionsDelegate:v27];
    }
  }

  [(ICInlineDrawingTextAttachment *)self setCachedDrawingViewForPlaceView:0];
  [(ICInlineDrawingTextAttachment *)self setCachedControlViewForPlaceView:0];
}

- (void)detachView:(id)a3 fromParentView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = ICInlineDrawingTextAttachment;
  [(ICBaseTextAttachment *)&v15 detachView:v6 fromParentView:v7];
  v8 = [(ICInlineDrawingTextAttachment *)self cachedDrawingViewForPlaceView];
  v9 = v8;
  if (v8 == v6)
  {
    v10 = [(ICInlineDrawingTextAttachment *)self cachedControlViewForPlaceView];

    if (v10 == v7)
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
  v13 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  [v13 removeObject:v6];

  [(ICInlineDrawingChangeCoalescer *)self->_changeCoalescer updateNowIfNecessary];
  changeCoalescer = self->_changeCoalescer;
  self->_changeCoalescer = 0;
}

- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  height = a6.size.height;
  width = a6.size.width;
  v11 = a6.origin.y;
  v12 = a6.origin.x;
  v16 = a5;
  v37.receiver = self;
  v37.super_class = ICInlineDrawingTextAttachment;
  [(ICBaseTextAttachment *)&v37 attachmentBoundsForAttributes:a3 location:a4 textContainer:v16 proposedLineFragment:v12 position:v11, width, height, x, y];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v16 textLayoutManager];
  if (v25)
  {
  }

  else
  {
    v26 = [v16 layoutManager];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v28 = [(ICAbstractTextAttachment *)self attachment];
      [v28 bounds];
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

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  y = a5.y;
  x = a5.x;
  height = a4.size.height;
  width = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v34.receiver = self;
  v34.super_class = ICInlineDrawingTextAttachment;
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

- (void)resetZoom
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
  v3 = [v2 copy];

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

- (void)drawingDataDidChange:(id)a3 view:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v35 = a4;
  v7 = [(ICInlineDrawingTextAttachment *)self fileType];
  v8 = [v7 isEqualToString:*MEMORY[0x1E6978590]];

  if (v6 && v8)
  {
    v9 = [(ICInlineDrawingTextAttachment *)self changeCoalescer];
    [v9 drawingDataDidChange:v6];

    v10 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
    if ([v10 count] < 2)
    {
    }

    else
    {
      v11 = [(ICInlineDrawingTextAttachment *)self isHandlingDrawingDidChange];

      if (!v11)
      {
        [(ICInlineDrawingTextAttachment *)self setIsHandlingDrawingDidChange:1];
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v12 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
        v13 = [v12 copy];

        v14 = [v13 countByEnumeratingWithState:&v44 objects:v50 count:16];
        if (v14)
        {
          v15 = v14;
          v33 = self;
          v34 = v6;
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
              v20 = [v19 gestureRecognizers];
              v21 = [v20 countByEnumeratingWithState:&v40 objects:v49 count:16];
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
                      objc_enumerationMutation(v20);
                    }

                    v25 = *(*(&v40 + 1) + 8 * j);
                    if ([v25 state] == 2 || objc_msgSend(v25, "state") == 3)
                    {
                      v16 = 1;
                    }
                  }

                  v22 = [v20 countByEnumeratingWithState:&v40 objects:v49 count:16];
                }

                while (v22);
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v44 objects:v50 count:16];
          }

          while (v15);

          self = v33;
          v6 = v34;
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
        v26 = [(ICInlineDrawingTextAttachment *)self inlineDrawingViews];
        v27 = [v26 copy];

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
              if (v32 != v35 && [*(*(&v36 + 1) + 8 * k) conformsToProtocol:&unk_1F5091CC8] && (objc_opt_respondsToSelector() & 1) != 0)
              {
                [v32 drawingDataDidChange:v6];
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