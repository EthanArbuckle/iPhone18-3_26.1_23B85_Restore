@interface CUIKORPayloadProvider
+ (CUIKORPayloadProvider)sharedProvider;
+ (NSCache)backgroundImageCache;
- (CUIKORPayloadProvider)init;
- (id)_lookupQueue_activeRequestForId:(int64_t)a3;
- (id)_renderBackgroundImageWithState:(id)a3;
- (id)_renderColorBlockImageWithState:(id)a3 colorBarColor:(id)a4 backgroundColor:(id)a5 stripeColor:(id)a6 stripedImageAlpha:(double)a7;
- (id)_renderColorBlockImageWithState:(id)a3 forTravelTime:(BOOL)a4;
- (id)_renderReminderImageWithState:(id)a3;
- (id)_renderTextImageWithState:(id)a3 options:(unint64_t)a4;
- (id)_textDrawInfoWithState:(id)a3 options:(unint64_t)a4;
- (int64_t)requestPayloadForState:(id)a3 requestOptions:(unint64_t)a4 resultHandler:(id)a5;
- (void)_lookupQueue_enqueueRequest:(id)a3;
- (void)_lookupQueue_removeRequestId:(int64_t)a3;
- (void)_renderRequestId:(int64_t)a3;
- (void)_scheduleRequestId:(int64_t)a3;
- (void)cancelRequest:(int64_t)a3;
@end

@implementation CUIKORPayloadProvider

+ (CUIKORPayloadProvider)sharedProvider
{
  if (sharedProvider_onceToken != -1)
  {
    +[CUIKORPayloadProvider sharedProvider];
  }

  v3 = sharedProvider_provider;

  return v3;
}

uint64_t __39__CUIKORPayloadProvider_sharedProvider__block_invoke()
{
  v0 = objc_alloc_init(CUIKORPayloadProvider);
  v1 = sharedProvider_provider;
  sharedProvider_provider = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CUIKORPayloadProvider)init
{
  v14.receiver = self;
  v14.super_class = CUIKORPayloadProvider;
  v2 = [(CUIKORPayloadProvider *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.calendar-occurrencecontentlookup", 0);
    lookupQueue = v2->_lookupQueue;
    v2->_lookupQueue = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);

    v7 = dispatch_queue_create("com.apple.calendar-occurrencecontentdrawing", v6);
    drawingQueue = v2->_drawingQueue;
    v2->_drawingQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingRequests = v2->_pendingRequests;
    v2->_pendingRequests = v9;

    v11 = objc_alloc_init(CUIKORStringGenerator);
    stringGenerator = v2->_stringGenerator;
    v2->_stringGenerator = v11;
  }

  return v2;
}

+ (NSCache)backgroundImageCache
{
  if (backgroundImageCache_onceToken != -1)
  {
    +[CUIKORPayloadProvider backgroundImageCache];
  }

  v3 = backgroundImageCache_cache;

  return v3;
}

uint64_t __45__CUIKORPayloadProvider_backgroundImageCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = backgroundImageCache_cache;
  backgroundImageCache_cache = v0;

  v2 = backgroundImageCache_cache;

  return [v2 setCountLimit:10];
}

- (int64_t)requestPayloadForState:(id)a3 requestOptions:(unint64_t)a4 resultHandler:(id)a5
{
  add_explicit = atomic_fetch_add_explicit(&requestPayloadForState_requestOptions_resultHandler__nextRequestId, 1uLL, memory_order_relaxed);
  v9 = a5;
  v10 = a3;
  v11 = [[CUIKORContentImageRequest alloc] initWithId:add_explicit options:a4 state:v10 resultHandler:v9];

  [(CUIKORPayloadProvider *)self _lookupQueue_enqueueRequest:v11];
  if (_bitmaskContainsOption())
  {
    [(CUIKORPayloadProvider *)self _renderRequestId:add_explicit];
  }

  else
  {
    [(CUIKORPayloadProvider *)self _scheduleRequestId:add_explicit];
  }

  return add_explicit;
}

- (void)cancelRequest:(int64_t)a3
{
  if (a3 < 0)
  {
    v4 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CUIKORPayloadProvider *)a3 cancelRequest:v4];
    }
  }

  else
  {

    [(CUIKORPayloadProvider *)self _lookupQueue_removeRequestId:?];
  }
}

- (void)_scheduleRequestId:(int64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [(CUIKORPayloadProvider *)self drawingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CUIKORPayloadProvider__scheduleRequestId___block_invoke;
  block[3] = &unk_1E8399B38;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  dispatch_async(v5, block);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __44__CUIKORPayloadProvider__scheduleRequestId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _renderRequestId:*(a1 + 40)];
}

- (void)_renderRequestId:(int64_t)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [(CUIKORPayloadProvider *)self _lookupQueue_activeRequestForId:?];
  if (v5)
  {
    [(CUIKORPayloadProvider *)self _lookupQueue_removeRequestId:a3];
    v6 = [v5 state];
    if (([v6 isValid]& 1) != 0)
    {
      v7 = [v5 options];
      v8 = +[CUIKLogSubsystem signpost];
      v9 = v8;
      if (a3 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1CAB19000, v9, OS_SIGNPOST_INTERVAL_BEGIN, a3 + 1, "RenderPayload", "", buf, 2u);
      }

      v10 = [v6 traitCollection];
      [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:v10];

      if (_bitmaskContainsOption())
      {
        v11 = [objc_opt_class() backgroundImageCache];
        v12 = [v11 objectForKey:v6];
        if (!v12)
        {
          v12 = [(CUIKORPayloadProvider *)self _renderBackgroundImageWithState:v6];
          [v11 setObject:v12 forKey:v6];
        }
      }

      else
      {
        v12 = 0;
      }

      if (_bitmaskContainsOption())
      {
        [v6 estimatedTextFrame];
        v14 = 0;
        if (v15 > 0.0 && v13 > 0.0)
        {
          v14 = [(CUIKORPayloadProvider *)self _renderTextImageWithState:v6 options:v7];
        }
      }

      else
      {
        v14 = 0;
      }

      if (_bitmaskContainsOption())
      {
        v16 = [(CUIKORPayloadProvider *)self _renderTravelTimeImageWithState:v6];
        v17 = [(CUIKORPayloadProvider *)self stringGenerator];
        v18 = [v17 generateTravelTimeStringWithState:v6];
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v19 = +[CUIKLogSubsystem signpost];
      v20 = v19;
      if (a3 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1CAB19000, v20, OS_SIGNPOST_INTERVAL_END, a3 + 1, "RenderPayload", "", buf, 2u);
      }

      v21 = [[CUIKORContentPayload alloc] initWithRequestId:a3 requestOptions:v7 backgroundImage:v12 textImage:v14 textDrawInfo:0 travelTimeImage:v16 travelTimeString:v18];
      if ((v7 & 0x10) != 0)
      {
        dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
        v22 = [v5 resultHandler];
        (v22)[2](v22, v21);
      }

      else
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __42__CUIKORPayloadProvider__renderRequestId___block_invoke;
        block[3] = &unk_1E8399B60;
        v24 = v5;
        v25 = v21;
        dispatch_async(MEMORY[0x1E69E96A0], block);

        v22 = v24;
      }
    }

    else
    {
      v12 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(CUIKORPayloadProvider *)v6 _renderRequestId:a3, v12];
      }
    }
  }

  else
  {
    v6 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v27 = a3;
      _os_log_impl(&dword_1CAB19000, v6, OS_LOG_TYPE_INFO, "Aborting occurrence render. Could not find request with id <%ld>", buf, 0xCu);
    }
  }
}

void __42__CUIKORPayloadProvider__renderRequestId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resultHandler];
  v2[2](v2, *(a1 + 40));
}

- (id)_renderBackgroundImageWithState:(id)a3
{
  v4 = a3;
  if ([v4 isReminder])
  {
    [(CUIKORPayloadProvider *)self _renderReminderImageWithState:v4];
  }

  else
  {
    [(CUIKORPayloadProvider *)self _renderColorBlockImageWithState:v4 forTravelTime:0];
  }
  v5 = ;

  return v5;
}

- (id)_renderReminderImageWithState:(id)a3
{
  v3 = a3;
  v4 = [v3 isSelected];
  v5 = [v3 reminderStackDepth];
  v6 = [v3 userInterfaceStyle];
  v7 = [v3 isMiniPreviewInEventDetail];
  v8 = [v3 isCompleted];

  return [CUIKOccurrenceRenderer renderReminderBackgroundSelected:v4 stackDepth:v5 userInterfaceStyle:v6 miniPreview:v7 completed:v8];
}

- (id)_renderColorBlockImageWithState:(id)a3 forTravelTime:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 isSelected];
  v8 = [v6 userInterfaceStyle];
  v9 = [v6 baseColor];
  v10 = [v6 isCancelled];
  v11 = [v6 isDeclined];
  v12 = [v6 isTentative];
  v13 = [v6 needsReply];
  if (a4)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v6 colorBarColor];
  }

  if (v10 & 1 | ((v13 & 1) == 0))
  {
    if ((v10 | v11))
    {
      v15 = 1.0;
      if (v7)
      {
        CUIKSelectedDeclinedBackgroundColor();
      }

      else
      {
        CUIKDeclinedEventBackgroundColor();
      }
      v16 = ;
      v18 = 0;
      goto LABEL_25;
    }

    if (!v12)
    {
      if (v7)
      {
        [v9 colorWithAlphaComponent:0.9];
      }

      else
      {
        CUIKBackgroundColorForCalendarColorWithOpaqueForStyle(v9, 0, v8, 0);
      }
      v16 = ;
      v18 = 0;
      v15 = 1.0;
      goto LABEL_25;
    }

    if (v7)
    {
      v16 = [v9 colorWithAlphaComponent:1.0];
      v17 = CUIKSelectedTentativeStripeColor();
      goto LABEL_10;
    }

    v16 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle(v9, 1, v8, 0);
    v18 = CUIKLightStripeColorForColor(v9);
    if (v8 == 2)
    {
      v20 = CUIKColorDarkenedToPercentageWithFinalAlpha(v9, 0.25);

      v18 = v20;
    }

LABEL_15:
    v19 = &CUIKOnScreenAlphaValue;
    goto LABEL_16;
  }

  if (!v7)
  {
    v16 = CUIKNeedsReplyBackgroundColor();
    v18 = CUIKNeedsReplyStripeColor();
    goto LABEL_15;
  }

  v16 = CUIKSelectedNeedsReplyBackgroundColor();
  v17 = CUIKSelectedNeedsReplyStripeColor();
LABEL_10:
  v18 = v17;
  v19 = &CUIKSelectedOnScreenAlphaValue;
LABEL_16:
  v15 = *v19;
LABEL_25:
  v21 = [(CUIKORPayloadProvider *)self _renderColorBlockImageWithState:v6 colorBarColor:v14 backgroundColor:v16 stripeColor:v18 stripedImageAlpha:v15];

  return v21;
}

- (id)_renderColorBlockImageWithState:(id)a3 colorBarColor:(id)a4 backgroundColor:(id)a5 stripeColor:(id)a6 stripedImageAlpha:(double)a7
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  [CUIKORImageUtils backgroundImageFrameForState:a3];
  v15 = v14;
  v17 = v16;
  v18 = [v13 CGColor];

  v19 = [v12 CGColor];
  v20 = [v11 CGColor];

  return [CUIKOccurrenceRenderer renderColorBlockImageWithSize:v18 colorBarColor:v19 backgroundColor:v20 stripeColor:v15 stripedImageAlpha:v17, a7];
}

- (id)_renderTextImageWithState:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CUIKORPayloadProvider *)self stringGenerator];
  v8 = [v7 generateContentStringsWithState:v6 options:a4];
  [v6 textSpace];
  v10 = v9;
  v12 = v11;
  v13 = [v6 primaryTextFont];
  [v6 languageAwareInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v6 leadingIcon];
  v23 = [v6 trailingIcons];
  v24 = [v6 isReminder];

  v25 = [CUIKOccurrenceRenderer renderStrings:v8 withSize:v13 font:v22 edgeInsets:v23 leadingIcon:v24 trailingIcons:v10 shouldAutoHideLeadingIcon:v12, v15, v17, v19, v21];

  return v25;
}

- (id)_textDrawInfoWithState:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CUIKORPayloadProvider *)self stringGenerator];
  v8 = [v7 generateContentStringsWithState:v6 options:a4];
  v29 = 0.0;
  v30 = 0.0;
  [v6 textSpace];
  v10 = v9;
  v12 = v11;
  v13 = [v6 primaryTextFont];
  [v6 languageAwareInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v6 leadingIcon];
  v23 = [v6 trailingIcons];
  v24 = [v6 isReminder];

  v25 = [CUIKOccurrenceRenderer renderingBlockForStrings:v8 withSize:v13 font:v22 edgeInsets:v23 leadingIcon:&v29 trailingIcons:v24 outImageSize:v10 shouldAutoHideLeadingIcon:v12, v15, v17, v19, v21];

  v26 = [CUIKORTextDrawInfo alloc];
  v27 = [(CUIKORTextDrawInfo *)v26 initWithContentSize:v25 renderingBlock:v29, v30];

  return v27;
}

- (void)_lookupQueue_enqueueRequest:(id)a3
{
  v4 = a3;
  v5 = [(CUIKORPayloadProvider *)self lookupQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__CUIKORPayloadProvider__lookupQueue_enqueueRequest___block_invoke;
  v7[3] = &unk_1E8399B60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __53__CUIKORPayloadProvider__lookupQueue_enqueueRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) pendingRequests];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "requestId")}];
  [v4 setObject:v2 forKeyedSubscript:v3];
}

- (id)_lookupQueue_activeRequestForId:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v5 = [(CUIKORPayloadProvider *)self lookupQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CUIKORPayloadProvider__lookupQueue_activeRequestForId___block_invoke;
  block[3] = &unk_1E8399B88;
  block[4] = self;
  block[5] = &v9;
  block[6] = a3;
  dispatch_sync(v5, block);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __57__CUIKORPayloadProvider__lookupQueue_activeRequestForId___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) pendingRequests];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_lookupQueue_removeRequestId:(int64_t)a3
{
  v5 = [(CUIKORPayloadProvider *)self lookupQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CUIKORPayloadProvider__lookupQueue_removeRequestId___block_invoke;
  v6[3] = &unk_1E8399BB0;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

void __54__CUIKORPayloadProvider__lookupQueue_removeRequestId___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) pendingRequests];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  [v3 removeObjectForKey:v2];
}

- (void)cancelRequest:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_ERROR, "Attempted to cancel an invalid id <%ld>", &v2, 0xCu);
}

- (void)_renderRequestId:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1CAB19000, log, OS_LOG_TYPE_ERROR, "Aborting occurrence render. Request <%ld> is not valid: %@", &v3, 0x16u);
}

@end