@interface CUIKORPayloadProvider
+ (CUIKORPayloadProvider)sharedProvider;
+ (NSCache)backgroundImageCache;
- (CUIKORPayloadProvider)init;
- (id)_lookupQueue_activeRequestForId:(int64_t)id;
- (id)_renderBackgroundImageWithState:(id)state;
- (id)_renderColorBlockImageWithState:(id)state colorBarColor:(id)color backgroundColor:(id)backgroundColor stripeColor:(id)stripeColor stripedImageAlpha:(double)alpha;
- (id)_renderColorBlockImageWithState:(id)state forTravelTime:(BOOL)time;
- (id)_renderReminderImageWithState:(id)state;
- (id)_renderTextImageWithState:(id)state options:(unint64_t)options;
- (id)_textDrawInfoWithState:(id)state options:(unint64_t)options;
- (int64_t)requestPayloadForState:(id)state requestOptions:(unint64_t)options resultHandler:(id)handler;
- (void)_lookupQueue_enqueueRequest:(id)request;
- (void)_lookupQueue_removeRequestId:(int64_t)id;
- (void)_renderRequestId:(int64_t)id;
- (void)_scheduleRequestId:(int64_t)id;
- (void)cancelRequest:(int64_t)request;
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

- (int64_t)requestPayloadForState:(id)state requestOptions:(unint64_t)options resultHandler:(id)handler
{
  add_explicit = atomic_fetch_add_explicit(&requestPayloadForState_requestOptions_resultHandler__nextRequestId, 1uLL, memory_order_relaxed);
  handlerCopy = handler;
  stateCopy = state;
  v11 = [[CUIKORContentImageRequest alloc] initWithId:add_explicit options:options state:stateCopy resultHandler:handlerCopy];

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

- (void)cancelRequest:(int64_t)request
{
  if (request < 0)
  {
    v4 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CUIKORPayloadProvider *)request cancelRequest:v4];
    }
  }

  else
  {

    [(CUIKORPayloadProvider *)self _lookupQueue_removeRequestId:?];
  }
}

- (void)_scheduleRequestId:(int64_t)id
{
  objc_initWeak(&location, self);
  drawingQueue = [(CUIKORPayloadProvider *)self drawingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CUIKORPayloadProvider__scheduleRequestId___block_invoke;
  block[3] = &unk_1E8399B38;
  objc_copyWeak(v7, &location);
  v7[1] = id;
  dispatch_async(drawingQueue, block);

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __44__CUIKORPayloadProvider__scheduleRequestId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _renderRequestId:*(a1 + 40)];
}

- (void)_renderRequestId:(int64_t)id
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [(CUIKORPayloadProvider *)self _lookupQueue_activeRequestForId:?];
  if (v5)
  {
    [(CUIKORPayloadProvider *)self _lookupQueue_removeRequestId:id];
    state = [v5 state];
    if (([state isValid]& 1) != 0)
    {
      options = [v5 options];
      v8 = +[CUIKLogSubsystem signpost];
      v9 = v8;
      if (id <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1CAB19000, v9, OS_SIGNPOST_INTERVAL_BEGIN, id + 1, "RenderPayload", "", buf, 2u);
      }

      traitCollection = [state traitCollection];
      [MEMORY[0x1E69DD1B8] setCurrentTraitCollection:traitCollection];

      if (_bitmaskContainsOption())
      {
        backgroundImageCache = [objc_opt_class() backgroundImageCache];
        v12 = [backgroundImageCache objectForKey:state];
        if (!v12)
        {
          v12 = [(CUIKORPayloadProvider *)self _renderBackgroundImageWithState:state];
          [backgroundImageCache setObject:v12 forKey:state];
        }
      }

      else
      {
        v12 = 0;
      }

      if (_bitmaskContainsOption())
      {
        [state estimatedTextFrame];
        v14 = 0;
        if (v15 > 0.0 && v13 > 0.0)
        {
          v14 = [(CUIKORPayloadProvider *)self _renderTextImageWithState:state options:options];
        }
      }

      else
      {
        v14 = 0;
      }

      if (_bitmaskContainsOption())
      {
        v16 = [(CUIKORPayloadProvider *)self _renderTravelTimeImageWithState:state];
        stringGenerator = [(CUIKORPayloadProvider *)self stringGenerator];
        v18 = [stringGenerator generateTravelTimeStringWithState:state];
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v19 = +[CUIKLogSubsystem signpost];
      v20 = v19;
      if (id <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1CAB19000, v20, OS_SIGNPOST_INTERVAL_END, id + 1, "RenderPayload", "", buf, 2u);
      }

      v21 = [[CUIKORContentPayload alloc] initWithRequestId:id requestOptions:options backgroundImage:v12 textImage:v14 textDrawInfo:0 travelTimeImage:v16 travelTimeString:v18];
      if ((options & 0x10) != 0)
      {
        dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
        resultHandler = [v5 resultHandler];
        (resultHandler)[2](resultHandler, v21);
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

        resultHandler = v24;
      }
    }

    else
    {
      v12 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(CUIKORPayloadProvider *)state _renderRequestId:id, v12];
      }
    }
  }

  else
  {
    state = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(state, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      idCopy = id;
      _os_log_impl(&dword_1CAB19000, state, OS_LOG_TYPE_INFO, "Aborting occurrence render. Could not find request with id <%ld>", buf, 0xCu);
    }
  }
}

void __42__CUIKORPayloadProvider__renderRequestId___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resultHandler];
  v2[2](v2, *(a1 + 40));
}

- (id)_renderBackgroundImageWithState:(id)state
{
  stateCopy = state;
  if ([stateCopy isReminder])
  {
    [(CUIKORPayloadProvider *)self _renderReminderImageWithState:stateCopy];
  }

  else
  {
    [(CUIKORPayloadProvider *)self _renderColorBlockImageWithState:stateCopy forTravelTime:0];
  }
  v5 = ;

  return v5;
}

- (id)_renderReminderImageWithState:(id)state
{
  stateCopy = state;
  isSelected = [stateCopy isSelected];
  reminderStackDepth = [stateCopy reminderStackDepth];
  userInterfaceStyle = [stateCopy userInterfaceStyle];
  isMiniPreviewInEventDetail = [stateCopy isMiniPreviewInEventDetail];
  isCompleted = [stateCopy isCompleted];

  return [CUIKOccurrenceRenderer renderReminderBackgroundSelected:isSelected stackDepth:reminderStackDepth userInterfaceStyle:userInterfaceStyle miniPreview:isMiniPreviewInEventDetail completed:isCompleted];
}

- (id)_renderColorBlockImageWithState:(id)state forTravelTime:(BOOL)time
{
  stateCopy = state;
  isSelected = [stateCopy isSelected];
  userInterfaceStyle = [stateCopy userInterfaceStyle];
  baseColor = [stateCopy baseColor];
  isCancelled = [stateCopy isCancelled];
  isDeclined = [stateCopy isDeclined];
  isTentative = [stateCopy isTentative];
  needsReply = [stateCopy needsReply];
  if (time)
  {
    colorBarColor = 0;
  }

  else
  {
    colorBarColor = [stateCopy colorBarColor];
  }

  if (isCancelled & 1 | ((needsReply & 1) == 0))
  {
    if ((isCancelled | isDeclined))
    {
      v15 = 1.0;
      if (isSelected)
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

    if (!isTentative)
    {
      if (isSelected)
      {
        [baseColor colorWithAlphaComponent:0.9];
      }

      else
      {
        CUIKBackgroundColorForCalendarColorWithOpaqueForStyle(baseColor, 0, userInterfaceStyle, 0);
      }
      v16 = ;
      v18 = 0;
      v15 = 1.0;
      goto LABEL_25;
    }

    if (isSelected)
    {
      v16 = [baseColor colorWithAlphaComponent:1.0];
      v17 = CUIKSelectedTentativeStripeColor();
      goto LABEL_10;
    }

    v16 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle(baseColor, 1, userInterfaceStyle, 0);
    v18 = CUIKLightStripeColorForColor(baseColor);
    if (userInterfaceStyle == 2)
    {
      v20 = CUIKColorDarkenedToPercentageWithFinalAlpha(baseColor, 0.25);

      v18 = v20;
    }

LABEL_15:
    v19 = &CUIKOnScreenAlphaValue;
    goto LABEL_16;
  }

  if (!isSelected)
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
  v21 = [(CUIKORPayloadProvider *)self _renderColorBlockImageWithState:stateCopy colorBarColor:colorBarColor backgroundColor:v16 stripeColor:v18 stripedImageAlpha:v15];

  return v21;
}

- (id)_renderColorBlockImageWithState:(id)state colorBarColor:(id)color backgroundColor:(id)backgroundColor stripeColor:(id)stripeColor stripedImageAlpha:(double)alpha
{
  stripeColorCopy = stripeColor;
  backgroundColorCopy = backgroundColor;
  colorCopy = color;
  [CUIKORImageUtils backgroundImageFrameForState:state];
  v15 = v14;
  v17 = v16;
  cGColor = [colorCopy CGColor];

  cGColor2 = [backgroundColorCopy CGColor];
  cGColor3 = [stripeColorCopy CGColor];

  return [CUIKOccurrenceRenderer renderColorBlockImageWithSize:cGColor colorBarColor:cGColor2 backgroundColor:cGColor3 stripeColor:v15 stripedImageAlpha:v17, alpha];
}

- (id)_renderTextImageWithState:(id)state options:(unint64_t)options
{
  stateCopy = state;
  stringGenerator = [(CUIKORPayloadProvider *)self stringGenerator];
  v8 = [stringGenerator generateContentStringsWithState:stateCopy options:options];
  [stateCopy textSpace];
  v10 = v9;
  v12 = v11;
  primaryTextFont = [stateCopy primaryTextFont];
  [stateCopy languageAwareInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  leadingIcon = [stateCopy leadingIcon];
  trailingIcons = [stateCopy trailingIcons];
  isReminder = [stateCopy isReminder];

  v25 = [CUIKOccurrenceRenderer renderStrings:v8 withSize:primaryTextFont font:leadingIcon edgeInsets:trailingIcons leadingIcon:isReminder trailingIcons:v10 shouldAutoHideLeadingIcon:v12, v15, v17, v19, v21];

  return v25;
}

- (id)_textDrawInfoWithState:(id)state options:(unint64_t)options
{
  stateCopy = state;
  stringGenerator = [(CUIKORPayloadProvider *)self stringGenerator];
  v8 = [stringGenerator generateContentStringsWithState:stateCopy options:options];
  v29 = 0.0;
  v30 = 0.0;
  [stateCopy textSpace];
  v10 = v9;
  v12 = v11;
  primaryTextFont = [stateCopy primaryTextFont];
  [stateCopy languageAwareInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  leadingIcon = [stateCopy leadingIcon];
  trailingIcons = [stateCopy trailingIcons];
  isReminder = [stateCopy isReminder];

  v25 = [CUIKOccurrenceRenderer renderingBlockForStrings:v8 withSize:primaryTextFont font:leadingIcon edgeInsets:trailingIcons leadingIcon:&v29 trailingIcons:isReminder outImageSize:v10 shouldAutoHideLeadingIcon:v12, v15, v17, v19, v21];

  v26 = [CUIKORTextDrawInfo alloc];
  v27 = [(CUIKORTextDrawInfo *)v26 initWithContentSize:v25 renderingBlock:v29, v30];

  return v27;
}

- (void)_lookupQueue_enqueueRequest:(id)request
{
  requestCopy = request;
  lookupQueue = [(CUIKORPayloadProvider *)self lookupQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__CUIKORPayloadProvider__lookupQueue_enqueueRequest___block_invoke;
  v7[3] = &unk_1E8399B60;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_sync(lookupQueue, v7);
}

void __53__CUIKORPayloadProvider__lookupQueue_enqueueRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) pendingRequests];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "requestId")}];
  [v4 setObject:v2 forKeyedSubscript:v3];
}

- (id)_lookupQueue_activeRequestForId:(int64_t)id
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  lookupQueue = [(CUIKORPayloadProvider *)self lookupQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CUIKORPayloadProvider__lookupQueue_activeRequestForId___block_invoke;
  block[3] = &unk_1E8399B88;
  block[4] = self;
  block[5] = &v9;
  block[6] = id;
  dispatch_sync(lookupQueue, block);

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

- (void)_lookupQueue_removeRequestId:(int64_t)id
{
  lookupQueue = [(CUIKORPayloadProvider *)self lookupQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CUIKORPayloadProvider__lookupQueue_removeRequestId___block_invoke;
  v6[3] = &unk_1E8399BB0;
  v6[4] = self;
  v6[5] = id;
  dispatch_sync(lookupQueue, v6);
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