@interface TabSnapshotGenerator
+ (id)_snapshotRenderingQueue;
- (BOOL)contentShouldUnderlapTopBackdropForContentProvider:(id)provider;
- (CGRect)contentRectForContentProvider:(id)provider withSnapshotSize:(CGSize)size;
- (TabSnapshotGenerator)init;
- (TabSnapshotGeneratorDelegate)delegate;
- (id)_renderView:(id)view afterScreenUpdates:(BOOL)updates;
- (id)backgroundColorForContentProvider:(id)provider;
- (id)renderSnapshotWithSize:(CGSize)size backgroundColor:(id)color options:(unint64_t)options drawing:(id)drawing;
- (void)_awaitAnimationCompletionThenSnapshotItem:(id)item;
- (void)_beginNextItemIfIdle;
- (void)_didFinishItem:(id)item withImage:(id)image isRecoverable:(BOOL)recoverable;
- (void)_snapshotItem:(id)item;
- (void)fillMetadataForRequest:(id)request;
- (void)snapshotWithRequest:(id)request contentProvider:(id)provider completion:(id)completion;
@end

@implementation TabSnapshotGenerator

- (TabSnapshotGenerator)init
{
  v7.receiver = self;
  v7.super_class = TabSnapshotGenerator;
  v2 = [(TabSnapshotGenerator *)&v7 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = array;

    v2->_topBackdropHeight = 200.0;
    v5 = v2;
  }

  return v2;
}

+ (id)_snapshotRenderingQueue
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__TabSnapshotGenerator__snapshotRenderingQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_snapshotRenderingQueue_onceToken != -1)
  {
    dispatch_once(&_snapshotRenderingQueue_onceToken, block);
  }

  v2 = _snapshotRenderingQueue_queue;

  return v2;
}

void __47__TabSnapshotGenerator__snapshotRenderingQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
  attr = dispatch_queue_attr_make_with_autorelease_frequency(v0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

  v1 = MEMORY[0x277CCACA8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v1 stringWithFormat:@"com.apple.mobilesafari.%@", v3];
  v5 = dispatch_queue_create([v4 UTF8String], attr);
  v6 = _snapshotRenderingQueue_queue;
  _snapshotRenderingQueue_queue = v5;
}

- (void)snapshotWithRequest:(id)request contentProvider:(id)provider completion:(id)completion
{
  requestCopy = request;
  providerCopy = provider;
  requestQueue = self->_requestQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__TabSnapshotGenerator_snapshotWithRequest_contentProvider_completion___block_invoke;
  v16[3] = &unk_2781D74A8;
  v11 = requestCopy;
  v17 = v11;
  completionCopy = completion;
  v13 = [(NSMutableArray *)requestQueue safari_firstObjectPassingTest:v16];
  v14 = v13;
  if (v13)
  {
    [v13 setContentProvider:providerCopy];
    [v14 appendCompletionHandler:completionCopy];
  }

  else
  {
    v15 = [[TabSnapshotQueueItem alloc] initWithRequest:v11 contentProvider:providerCopy completionHandler:completionCopy];

    [(NSMutableArray *)self->_requestQueue insertObject:v15 atIndex:0];
    completionCopy = v15;
  }

  [(TabSnapshotGenerator *)self _beginNextItemIfIdle];
}

uint64_t __71__TabSnapshotGenerator_snapshotWithRequest_contentProvider_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 request];
  if ([v4 isEqual:*(a1 + 32)])
  {
    v5 = [v3 snappshottingIsInProgress] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_beginNextItemIfIdle
{
  lastObject = [(NSMutableArray *)self->_requestQueue lastObject];
  v4 = lastObject;
  if (lastObject && ([lastObject snappshottingIsInProgress] & 1) == 0)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXSignposts();
    v6 = os_signpost_id_make_with_pointer(v5, v4);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_215819000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "GenerateTabSnapshot", "", buf, 2u);
      }
    }

    [v4 setSnappshottingIsInProgress:1];
    request = [v4 request];
    contentProvider = [v4 contentProvider];
    options = [request options];
    options2 = [request options];
    if ((options & 1) == 0)
    {
      v12 = options2 & 0x100;
      if (objc_opt_respondsToSelector())
      {
        [request size];
        v14 = v13;
        v16 = v15;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __44__TabSnapshotGenerator__beginNextItemIfIdle__block_invoke;
        v17[3] = &unk_2781D74D0;
        v17[4] = self;
        v18 = v4;
        v19 = BYTE1(v12);
        [contentProvider prepareForSnapshotOfSize:v17 completion:{v14, v16}];

LABEL_11:
        goto LABEL_12;
      }

      if (v12)
      {
        [(TabSnapshotGenerator *)self _awaitAnimationCompletionThenSnapshotItem:v4];
        goto LABEL_11;
      }
    }

    [(TabSnapshotGenerator *)self _snapshotItem:v4];
    goto LABEL_11;
  }

LABEL_12:
}

uint64_t __44__TabSnapshotGenerator__beginNextItemIfIdle__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) _didFinishItem:*(a1 + 40) withImage:0 isRecoverable:a2 == 1];
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v4 == 1)
  {
    return [v5 _awaitAnimationCompletionThenSnapshotItem:v6];
  }

  else
  {
    return [v5 _snapshotItem:v6];
  }
}

- (void)_didFinishItem:(id)item withImage:(id)image isRecoverable:(BOOL)recoverable
{
  v31 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  imageCopy = image;
  v9 = WBS_LOG_CHANNEL_PREFIXSignposts();
  v10 = os_signpost_id_make_with_pointer(v9, itemCopy);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      v12 = @"YES";
      if (!imageCopy)
      {
        v12 = @"NO";
      }

      v13 = v12;
      *buf = 138412290;
      v30 = v13;
      _os_signpost_emit_with_name_impl(&dword_215819000, v9, OS_SIGNPOST_INTERVAL_END, v11, "GenerateTabSnapshot", "success=%@", buf, 0xCu);
    }
  }

  [(NSMutableArray *)self->_requestQueue removeObject:itemCopy];
  if (imageCopy)
  {
    request = [itemCopy request];
    [(TabSnapshotGenerator *)self fillMetadataForRequest:request];

    v15 = objc_alloc(MEMORY[0x277D28D98]);
    request2 = [itemCopy request];
    metadata = [request2 metadata];
    v18 = [v15 initWithImage:imageCopy metadata:metadata];
  }

  else
  {
    v18 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  completionHandlers = [itemCopy completionHandlers];
  v20 = [completionHandlers countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v25;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(completionHandlers);
        }

        (*(*(*(&v24 + 1) + 8 * i) + 16))();
      }

      v21 = [completionHandlers countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v21);
  }

  [(TabSnapshotGenerator *)self _beginNextItemIfIdle];
}

- (void)fillMetadataForRequest:(id)request
{
  requestCopy = request;
  metadata = [requestCopy metadata];
  v5 = metadata;
  if (metadata)
  {
    v6 = metadata;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D28DA8]);
    identifier = [requestCopy identifier];
    v6 = [v7 initWithIdentifier:identifier];
  }

  [v6 setTopBackdropHeight:self->_topBackdropHeight];
  v9 = [MEMORY[0x277CBEAA8] now];
  [v6 setDateCreated:v9];

  [v6 setIncludesTransparentBorderPadding:{(objc_msgSend(requestCopy, "options") >> 1) & 1}];
  [requestCopy setMetadata:v6];
}

- (void)_snapshotItem:(id)item
{
  itemCopy = item;
  request = [itemCopy request];
  contentProvider = [itemCopy contentProvider];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([contentProvider snapshotContentImage], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    snapshotContentView = 0;
    v10 = 1;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      snapshotContentView = [contentProvider snapshotContentView];
    }

    else
    {
      snapshotContentView = 0;
    }

    v8 = 0;
    v10 = 0;
    if (!snapshotContentView)
    {
      [(TabSnapshotGenerator *)self _didFinishItem:itemCopy withImage:0 isRecoverable:0];
      goto LABEL_22;
    }
  }

  [request size];
  v12 = v11;
  v14 = v13;
  options = [request options];
  v40 = [(TabSnapshotGenerator *)self backgroundColorForContentProvider:contentProvider];
  [(TabSnapshotGenerator *)self contentRectForContentProvider:contentProvider withSnapshotSize:v12, v14];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v37 = [(TabSnapshotGenerator *)self contentShouldUnderlapTopBackdropForContentProvider:contentProvider];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained topBarsHeightForSnapshotGenerator:self];
  v26 = v25;
  v38 = WeakRetained;
  [WeakRetained contentSizeForSnapshotGenerator:self];
  if (v27 == 0.0)
  {
    v28 = 1.0;
  }

  else
  {
    v28 = v12 / v27;
  }

  traitCollection = [snapshotContentView traitCollection];
  v30 = traitCollection;
  if (traitCollection)
  {
    v39 = [traitCollection copy];
  }

  else
  {
    _currentTraitCollection = [MEMORY[0x277D75C80] _currentTraitCollection];
    v39 = [_currentTraitCollection copy];
  }

  if (v10 & 1 | options & 1 || ([(TabSnapshotGenerator *)self _renderView:snapshotContentView afterScreenUpdates:(options & 0x20) != 0], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __38__TabSnapshotGenerator__snapshotItem___block_invoke;
    aBlock[3] = &unk_2781D74F8;
    v59 = v37;
    v53 = v26;
    v54 = v28;
    v32 = v8;
    v51 = v32;
    v55 = v17;
    v56 = v19;
    v57 = v21;
    v58 = v23;
    v60 = options & 1;
    v52 = snapshotContentView;
    v61 = (options & 0x20) >> 5;
    v33 = _Block_copy(aBlock);
    if (options)
    {
      v34 = [(TabSnapshotGenerator *)self renderSnapshotWithSize:v40 backgroundColor:options options:v33 drawing:v12, v14];
      [(TabSnapshotGenerator *)self _didFinishItem:itemCopy withImage:v34 isRecoverable:0];
    }

    else
    {
      _snapshotRenderingQueue = [objc_opt_class() _snapshotRenderingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__TabSnapshotGenerator__snapshotItem___block_invoke_2;
      block[3] = &unk_2781D7520;
      v42 = v39;
      selfCopy = self;
      v47 = v12;
      v48 = v14;
      v44 = v40;
      v49 = options;
      v46 = v33;
      v45 = itemCopy;
      dispatch_async(_snapshotRenderingQueue, block);

      v34 = v42;
    }
  }

  else
  {
    v36 = WBS_LOG_CHANNEL_PREFIXTabSnapshots();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [TabSnapshotGenerator _snapshotItem:v36];
    }

    [(TabSnapshotGenerator *)self _didFinishItem:itemCopy withImage:0 isRecoverable:0];
  }

LABEL_22:
}

void *__38__TabSnapshotGenerator__snapshotItem___block_invoke(uint64_t a1, CGContextRef c)
{
  if (*(a1 + 96) == 1)
  {
    CGContextTranslateCTM(c, 0.0, -(*(a1 + 48) * *(a1 + 56)));
  }

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    v6 = *(a1 + 80);
    v7 = *(a1 + 88);

    return [result drawInRect:{v4, v5, v6, v7}];
  }

  else if (*(a1 + 97) == 1)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 98);
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v12 = *(a1 + 80);
    v13 = *(a1 + 88);

    return [v8 drawViewHierarchyInRect:v9 afterScreenUpdates:{v10, v11, v12, v13}];
  }

  return result;
}

void __38__TabSnapshotGenerator__snapshotItem___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D75C80] _currentTraitCollection];
  [MEMORY[0x277D75C80] _setCurrentTraitCollection:*(a1 + 32)];
  v3 = [*(a1 + 40) renderSnapshotWithSize:*(a1 + 48) backgroundColor:*(a1 + 88) options:*(a1 + 64) drawing:{*(a1 + 72), *(a1 + 80)}];
  [MEMORY[0x277D75C80] _setCurrentTraitCollection:v2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__TabSnapshotGenerator__snapshotItem___block_invoke_3;
  block[3] = &unk_2781D58E8;
  block[4] = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)backgroundColorForContentProvider:(id)provider
{
  providerCopy = provider;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([providerCopy snapshotBackgroundColor], (whiteColor = objc_claimAutoreleasedReturnValue()) == 0))
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  return whiteColor;
}

- (CGRect)contentRectForContentProvider:(id)provider withSnapshotSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  providerCopy = provider;
  v7 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [providerCopy snapshotContentRectInBounds:{0.0, 0.0, width, height}];
    v9 = v8;
    v7 = v10;
    width = v11;
    height = v12;
  }

  else
  {
    v9 = 0.0;
  }

  v13 = v9;
  v14 = v7;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (BOOL)contentShouldUnderlapTopBackdropForContentProvider:(id)provider
{
  providerCopy = provider;
  if (objc_opt_respondsToSelector())
  {
    snapshotContentShouldUnderlapTopBackdrop = [providerCopy snapshotContentShouldUnderlapTopBackdrop];
  }

  else
  {
    snapshotContentShouldUnderlapTopBackdrop = 1;
  }

  return snapshotContentShouldUnderlapTopBackdrop;
}

- (id)renderSnapshotWithSize:(CGSize)size backgroundColor:(id)color options:(unint64_t)options drawing:(id)drawing
{
  colorCopy = color;
  drawingCopy = drawing;
  _SFOnePixel();
  v12 = *MEMORY[0x277D768C8];
  v11 = *(MEMORY[0x277D768C8] + 8);
  v14 = *(MEMORY[0x277D768C8] + 16);
  v13 = *(MEMORY[0x277D768C8] + 24);
  v15 = v13;
  v16 = v14;
  v17 = v11;
  v18 = *MEMORY[0x277D768C8];
  if ((options & 2) != 0)
  {
    UIEdgeInsetsMakeWithEdges();
    v18 = v19;
    v17 = v20;
    v16 = v21;
    v15 = v22;
  }

  v23 = objc_autoreleasePoolPush();
  defaultFormat = [MEMORY[0x277D75568] defaultFormat];
  [defaultFormat setPreferredRange:2];
  if (colorCopy)
  {
    [colorCopy alphaComponent];
    v26 = v17 == v11;
    if (v18 != v12)
    {
      v26 = 0;
    }

    if (v15 != v13)
    {
      v26 = 0;
    }

    if (v16 != v14)
    {
      v26 = 0;
    }

    v27 = v25 >= 1.0 && v26;
  }

  else
  {
    v27 = 0;
  }

  [defaultFormat setOpaque:v27];
  v28 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:defaultFormat format:{v15 + size.width + v17, v16 + size.height + v18}];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __79__TabSnapshotGenerator_renderSnapshotWithSize_backgroundColor_options_drawing___block_invoke;
  v35[3] = &unk_2781D7548;
  v40 = v18;
  v41 = v17;
  v42 = v16;
  v43 = v15;
  sizeCopy = size;
  v29 = colorCopy;
  v36 = v29;
  selfCopy = self;
  optionsCopy = options;
  v38 = defaultFormat;
  v30 = drawingCopy;
  v39 = v30;
  v31 = defaultFormat;
  v32 = [v28 imageWithActions:v35];

  objc_autoreleasePoolPop(v23);

  return v32;
}

void __79__TabSnapshotGenerator_renderSnapshotWithSize_backgroundColor_options_drawing___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 CGContext];
  CGContextTranslateCTM(v3, *(a1 + 72), *(a1 + 64));
  v17.size.width = *(a1 + 96);
  v17.size.height = *(a1 + 104);
  v4 = 0.0;
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  CGContextClipToRect(v3, v17);
  v5 = *(a1 + 32);
  if (v5)
  {
    [v5 set];
    ClipBoundingBox = CGContextGetClipBoundingBox(v3);
    UIRectFill(ClipBoundingBox);
  }

  if ((*(a1 + 112) & 0x80) == 0)
  {
    v6 = *(*(a1 + 40) + 16);
    [*(a1 + 48) scale];
    v4 = v6 / v7;
  }

  if (*(a1 + 56))
  {
    CGContextSaveGState(v3);
    CGContextTranslateCTM(v3, 0.0, v4);
    (*(*(a1 + 56) + 16))();
    CGContextRestoreGState(v3);
  }

  if (v4 > 0.0 && (*(a1 + 112) & 0x40) == 0)
  {
    v8 = [v15 currentImage];
    [v8 scale];
    v10 = v9;
    v11 = [v8 CGImage];
    v19.origin.x = v10 * *(a1 + 72);
    v19.origin.y = v10 * *(a1 + 64);
    v19.size.width = v10 * *(a1 + 96);
    v19.size.height = v4 * v10;
    v12 = CGImageCreateWithImageInRect(v11, v19);
    v13 = [MEMORY[0x277D755B8] imageWithCGImage:v12 scale:objc_msgSend(v8 orientation:{"imageOrientation"), v10}];
    v14 = [v13 _applyBackdropViewStyle:2020 includeTints:0 includeBlur:1];
    [v14 drawAtPoint:17 blendMode:*MEMORY[0x277CBF348] alpha:{*(MEMORY[0x277CBF348] + 8), 1.0}];
    CGImageRelease(v12);
  }
}

- (void)_awaitAnimationCompletionThenSnapshotItem:(id)item
{
  itemCopy = item;
  [MEMORY[0x277CD9FF0] animationDuration];
  if (v5 <= 0.0)
  {
    [(TabSnapshotGenerator *)self _snapshotItem:itemCopy];
  }

  else
  {
    v6 = dispatch_time(0, ((v5 + v5) * 1000000000.0));
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__TabSnapshotGenerator__awaitAnimationCompletionThenSnapshotItem___block_invoke;
    v7[3] = &unk_2781D4C88;
    v7[4] = self;
    v8 = itemCopy;
    dispatch_after(v6, MEMORY[0x277D85CD0], v7);
  }
}

- (id)_renderView:(id)view afterScreenUpdates:(BOOL)updates
{
  viewCopy = view;
  v6 = viewCopy;
  if (viewCopy)
  {
    if (updates)
    {
      nextResponder = [viewCopy nextResponder];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        nextResponder2 = [v6 nextResponder];
      }

      else
      {
        nextResponder2 = 0;
      }

      parentViewController = [nextResponder2 parentViewController];
      superview = [v6 superview];
      subviews = [superview subviews];
      v26 = [subviews indexOfObject:v6];

      if (parentViewController && ([v6 window], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
      {
        [nextResponder2 willMoveToParentViewController:0];
        [v6 removeFromSuperview];
        [nextResponder2 removeFromParentViewController];
        v14 = 1;
      }

      else
      {
        v14 = 0;
      }

      defaultFormat = [MEMORY[0x277D75568] defaultFormat];
      [defaultFormat setPreferredRange:2];
      if ([v6 isOpaque])
      {
        backgroundColor = [v6 backgroundColor];
        [backgroundColor alphaComponent];
        [defaultFormat setOpaque:v17 == 1.0];
      }

      else
      {
        [defaultFormat setOpaque:0];
      }

      v18 = objc_alloc(MEMORY[0x277D75560]);
      [v6 bounds];
      v19 = [v18 initWithBounds:defaultFormat format:?];
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __55__TabSnapshotGenerator__renderView_afterScreenUpdates___block_invoke;
      v28[3] = &unk_2781D7570;
      v30 = &v32;
      v20 = v6;
      v29 = v20;
      updatesCopy = updates;
      v21 = [v19 imageWithActions:v28];
      if (v14)
      {
        [parentViewController addChildViewController:nextResponder2];
        subviews2 = [superview subviews];
        v23 = [subviews2 count];

        if (v27 <= v23)
        {
          [superview insertSubview:v20 atIndex:?];
        }

        else
        {
          [superview addSubview:v20];
        }

        [nextResponder2 didMoveToParentViewController:parentViewController];
      }

      if (*(v33 + 24))
      {
        v24 = v21;
      }

      else
      {
        v24 = 0;
      }

      _sf_snapshotImageFromIOSurface = v24;

      _Block_object_dispose(&v32, 8);
    }

    else
    {
      _sf_snapshotImageFromIOSurface = [viewCopy _sf_snapshotImageFromIOSurface];
    }
  }

  else
  {
    _sf_snapshotImageFromIOSurface = 0;
  }

  return _sf_snapshotImageFromIOSurface;
}

uint64_t __55__TabSnapshotGenerator__renderView_afterScreenUpdates___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 bounds];
  result = [v2 drawViewHierarchyInRect:*(a1 + 48) afterScreenUpdates:?];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (TabSnapshotGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end