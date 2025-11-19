@interface TabSnapshotGenerator
+ (id)_snapshotRenderingQueue;
- (BOOL)contentShouldUnderlapTopBackdropForContentProvider:(id)a3;
- (CGRect)contentRectForContentProvider:(id)a3 withSnapshotSize:(CGSize)a4;
- (TabSnapshotGenerator)init;
- (TabSnapshotGeneratorDelegate)delegate;
- (id)_renderView:(id)a3 afterScreenUpdates:(BOOL)a4;
- (id)backgroundColorForContentProvider:(id)a3;
- (id)renderSnapshotWithSize:(CGSize)a3 backgroundColor:(id)a4 options:(unint64_t)a5 drawing:(id)a6;
- (void)_awaitAnimationCompletionThenSnapshotItem:(id)a3;
- (void)_beginNextItemIfIdle;
- (void)_didFinishItem:(id)a3 withImage:(id)a4 isRecoverable:(BOOL)a5;
- (void)_snapshotItem:(id)a3;
- (void)fillMetadataForRequest:(id)a3;
- (void)snapshotWithRequest:(id)a3 contentProvider:(id)a4 completion:(id)a5;
@end

@implementation TabSnapshotGenerator

- (TabSnapshotGenerator)init
{
  v7.receiver = self;
  v7.super_class = TabSnapshotGenerator;
  v2 = [(TabSnapshotGenerator *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v3;

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
  block[4] = a1;
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

- (void)snapshotWithRequest:(id)a3 contentProvider:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  requestQueue = self->_requestQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__TabSnapshotGenerator_snapshotWithRequest_contentProvider_completion___block_invoke;
  v16[3] = &unk_2781D74A8;
  v11 = v8;
  v17 = v11;
  v12 = a5;
  v13 = [(NSMutableArray *)requestQueue safari_firstObjectPassingTest:v16];
  v14 = v13;
  if (v13)
  {
    [v13 setContentProvider:v9];
    [v14 appendCompletionHandler:v12];
  }

  else
  {
    v15 = [[TabSnapshotQueueItem alloc] initWithRequest:v11 contentProvider:v9 completionHandler:v12];

    [(NSMutableArray *)self->_requestQueue insertObject:v15 atIndex:0];
    v12 = v15;
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
  v3 = [(NSMutableArray *)self->_requestQueue lastObject];
  v4 = v3;
  if (v3 && ([v3 snappshottingIsInProgress] & 1) == 0)
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
    v8 = [v4 request];
    v9 = [v4 contentProvider];
    v10 = [v8 options];
    v11 = [v8 options];
    if ((v10 & 1) == 0)
    {
      v12 = v11 & 0x100;
      if (objc_opt_respondsToSelector())
      {
        [v8 size];
        v14 = v13;
        v16 = v15;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __44__TabSnapshotGenerator__beginNextItemIfIdle__block_invoke;
        v17[3] = &unk_2781D74D0;
        v17[4] = self;
        v18 = v4;
        v19 = BYTE1(v12);
        [v9 prepareForSnapshotOfSize:v17 completion:{v14, v16}];

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

- (void)_didFinishItem:(id)a3 withImage:(id)a4 isRecoverable:(BOOL)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = WBS_LOG_CHANNEL_PREFIXSignposts();
  v10 = os_signpost_id_make_with_pointer(v9, v7);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      v12 = @"YES";
      if (!v8)
      {
        v12 = @"NO";
      }

      v13 = v12;
      *buf = 138412290;
      v30 = v13;
      _os_signpost_emit_with_name_impl(&dword_215819000, v9, OS_SIGNPOST_INTERVAL_END, v11, "GenerateTabSnapshot", "success=%@", buf, 0xCu);
    }
  }

  [(NSMutableArray *)self->_requestQueue removeObject:v7];
  if (v8)
  {
    v14 = [v7 request];
    [(TabSnapshotGenerator *)self fillMetadataForRequest:v14];

    v15 = objc_alloc(MEMORY[0x277D28D98]);
    v16 = [v7 request];
    v17 = [v16 metadata];
    v18 = [v15 initWithImage:v8 metadata:v17];
  }

  else
  {
    v18 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = [v7 completionHandlers];
  v20 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v19);
        }

        (*(*(*(&v24 + 1) + 8 * i) + 16))();
      }

      v21 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v21);
  }

  [(TabSnapshotGenerator *)self _beginNextItemIfIdle];
}

- (void)fillMetadataForRequest:(id)a3
{
  v10 = a3;
  v4 = [v10 metadata];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D28DA8]);
    v8 = [v10 identifier];
    v6 = [v7 initWithIdentifier:v8];
  }

  [v6 setTopBackdropHeight:self->_topBackdropHeight];
  v9 = [MEMORY[0x277CBEAA8] now];
  [v6 setDateCreated:v9];

  [v6 setIncludesTransparentBorderPadding:{(objc_msgSend(v10, "options") >> 1) & 1}];
  [v10 setMetadata:v6];
}

- (void)_snapshotItem:(id)a3
{
  v4 = a3;
  v5 = [v4 request];
  v6 = [v4 contentProvider];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 snapshotContentImage], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = 0;
    v10 = 1;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v6 snapshotContentView];
    }

    else
    {
      v9 = 0;
    }

    v8 = 0;
    v10 = 0;
    if (!v9)
    {
      [(TabSnapshotGenerator *)self _didFinishItem:v4 withImage:0 isRecoverable:0];
      goto LABEL_22;
    }
  }

  [v5 size];
  v12 = v11;
  v14 = v13;
  v15 = [v5 options];
  v40 = [(TabSnapshotGenerator *)self backgroundColorForContentProvider:v6];
  [(TabSnapshotGenerator *)self contentRectForContentProvider:v6 withSnapshotSize:v12, v14];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v37 = [(TabSnapshotGenerator *)self contentShouldUnderlapTopBackdropForContentProvider:v6];
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

  v29 = [v9 traitCollection];
  v30 = v29;
  if (v29)
  {
    v39 = [v29 copy];
  }

  else
  {
    v31 = [MEMORY[0x277D75C80] _currentTraitCollection];
    v39 = [v31 copy];
  }

  if (v10 & 1 | v15 & 1 || ([(TabSnapshotGenerator *)self _renderView:v9 afterScreenUpdates:(v15 & 0x20) != 0], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
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
    v60 = v15 & 1;
    v52 = v9;
    v61 = (v15 & 0x20) >> 5;
    v33 = _Block_copy(aBlock);
    if (v15)
    {
      v34 = [(TabSnapshotGenerator *)self renderSnapshotWithSize:v40 backgroundColor:v15 options:v33 drawing:v12, v14];
      [(TabSnapshotGenerator *)self _didFinishItem:v4 withImage:v34 isRecoverable:0];
    }

    else
    {
      v35 = [objc_opt_class() _snapshotRenderingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __38__TabSnapshotGenerator__snapshotItem___block_invoke_2;
      block[3] = &unk_2781D7520;
      v42 = v39;
      v43 = self;
      v47 = v12;
      v48 = v14;
      v44 = v40;
      v49 = v15;
      v46 = v33;
      v45 = v4;
      dispatch_async(v35, block);

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

    [(TabSnapshotGenerator *)self _didFinishItem:v4 withImage:0 isRecoverable:0];
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

- (id)backgroundColorForContentProvider:(id)a3
{
  v3 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 snapshotBackgroundColor], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [MEMORY[0x277D75348] whiteColor];
  }

  return v4;
}

- (CGRect)contentRectForContentProvider:(id)a3 withSnapshotSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  v7 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v6 snapshotContentRectInBounds:{0.0, 0.0, width, height}];
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

- (BOOL)contentShouldUnderlapTopBackdropForContentProvider:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 snapshotContentShouldUnderlapTopBackdrop];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)renderSnapshotWithSize:(CGSize)a3 backgroundColor:(id)a4 options:(unint64_t)a5 drawing:(id)a6
{
  v9 = a4;
  v10 = a6;
  _SFOnePixel();
  v12 = *MEMORY[0x277D768C8];
  v11 = *(MEMORY[0x277D768C8] + 8);
  v14 = *(MEMORY[0x277D768C8] + 16);
  v13 = *(MEMORY[0x277D768C8] + 24);
  v15 = v13;
  v16 = v14;
  v17 = v11;
  v18 = *MEMORY[0x277D768C8];
  if ((a5 & 2) != 0)
  {
    UIEdgeInsetsMakeWithEdges();
    v18 = v19;
    v17 = v20;
    v16 = v21;
    v15 = v22;
  }

  v23 = objc_autoreleasePoolPush();
  v24 = [MEMORY[0x277D75568] defaultFormat];
  [v24 setPreferredRange:2];
  if (v9)
  {
    [v9 alphaComponent];
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

  [v24 setOpaque:v27];
  v28 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v24 format:{v15 + a3.width + v17, v16 + a3.height + v18}];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __79__TabSnapshotGenerator_renderSnapshotWithSize_backgroundColor_options_drawing___block_invoke;
  v35[3] = &unk_2781D7548;
  v40 = v18;
  v41 = v17;
  v42 = v16;
  v43 = v15;
  v44 = a3;
  v29 = v9;
  v36 = v29;
  v37 = self;
  v45 = a5;
  v38 = v24;
  v30 = v10;
  v39 = v30;
  v31 = v24;
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

- (void)_awaitAnimationCompletionThenSnapshotItem:(id)a3
{
  v4 = a3;
  [MEMORY[0x277CD9FF0] animationDuration];
  if (v5 <= 0.0)
  {
    [(TabSnapshotGenerator *)self _snapshotItem:v4];
  }

  else
  {
    v6 = dispatch_time(0, ((v5 + v5) * 1000000000.0));
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__TabSnapshotGenerator__awaitAnimationCompletionThenSnapshotItem___block_invoke;
    v7[3] = &unk_2781D4C88;
    v7[4] = self;
    v8 = v4;
    dispatch_after(v6, MEMORY[0x277D85CD0], v7);
  }
}

- (id)_renderView:(id)a3 afterScreenUpdates:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (a4)
    {
      v7 = [v5 nextResponder];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v6 nextResponder];
      }

      else
      {
        v8 = 0;
      }

      v10 = [v8 parentViewController];
      v11 = [v6 superview];
      v12 = [v11 subviews];
      v26 = [v12 indexOfObject:v6];

      if (v10 && ([v6 window], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
      {
        [v8 willMoveToParentViewController:0];
        [v6 removeFromSuperview];
        [v8 removeFromParentViewController];
        v14 = 1;
      }

      else
      {
        v14 = 0;
      }

      v15 = [MEMORY[0x277D75568] defaultFormat];
      [v15 setPreferredRange:2];
      if ([v6 isOpaque])
      {
        v16 = [v6 backgroundColor];
        [v16 alphaComponent];
        [v15 setOpaque:v17 == 1.0];
      }

      else
      {
        [v15 setOpaque:0];
      }

      v18 = objc_alloc(MEMORY[0x277D75560]);
      [v6 bounds];
      v19 = [v18 initWithBounds:v15 format:?];
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
      v31 = a4;
      v21 = [v19 imageWithActions:v28];
      if (v14)
      {
        [v10 addChildViewController:v8];
        v22 = [v11 subviews];
        v23 = [v22 count];

        if (v27 <= v23)
        {
          [v11 insertSubview:v20 atIndex:?];
        }

        else
        {
          [v11 addSubview:v20];
        }

        [v8 didMoveToParentViewController:v10];
      }

      if (*(v33 + 24))
      {
        v24 = v21;
      }

      else
      {
        v24 = 0;
      }

      v9 = v24;

      _Block_object_dispose(&v32, 8);
    }

    else
    {
      v9 = [v5 _sf_snapshotImageFromIOSurface];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
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