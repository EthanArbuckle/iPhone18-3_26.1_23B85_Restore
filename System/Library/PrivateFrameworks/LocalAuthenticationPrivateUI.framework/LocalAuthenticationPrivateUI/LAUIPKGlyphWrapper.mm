@interface LAUIPKGlyphWrapper
+ (Class)_loadClassFromString:(id)string;
+ (id)glyphWithStyle:(int64_t)style frame:(CGRect)frame;
+ (void)_loadPKUI;
- (LAUIPKGlyphWrapper)initWithGlyphView:(id)view;
- (double)_minimumAnimationDurationForState:(int64_t)state;
- (void)setGrayedOut:(BOOL)out;
- (void)setHidden:(BOOL)hidden;
- (void)setState:(int64_t)state idleTouchID:(BOOL)d animated:(BOOL)animated completionHandler:(id)handler;
@end

@implementation LAUIPKGlyphWrapper

+ (id)glyphWithStyle:(int64_t)style frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = [LAUIPKGlyphWrapper _loadClassFromString:@"PKGlyphView"];
  if (style >= 4)
  {
    v11 = LA_LOG_LAUIPKGlyphWrapper();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [LAUIPKGlyphWrapper glyphWithStyle:style frame:v11];
    }

    v10 = 1;
  }

  else
  {
    v10 = qword_25611CE80[style];
  }

  v12 = [[v9 alloc] initWithStyle:v10];
  [v12 setFrame:{x, y, width, height}];
  v13 = [[LAUIPKGlyphWrapper alloc] initWithGlyphView:v12];

  return v13;
}

- (LAUIPKGlyphWrapper)initWithGlyphView:(id)view
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = LAUIPKGlyphWrapper;
  v6 = [(LAUIPKGlyphWrapper *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_glyphView, view);
    objc_storeStrong(&v7->_view, view);
    v8 = MEMORY[0x277D24028];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = [v8 createDefaultQueueWithIdentifier:@"glyphQueue" concurrencyAttribute:v9];
    glyphQueue = v7->_glyphQueue;
    v7->_glyphQueue = v10;
  }

  return v7;
}

- (double)_minimumAnimationDurationForState:(int64_t)state
{
  result = 0.15;
  if (state == 1)
  {
    result = 0.75;
  }

  if (state == 5)
  {
    return 0.5;
  }

  return result;
}

- (void)setState:(int64_t)state idleTouchID:(BOOL)d animated:(BOOL)animated completionHandler:(id)handler
{
  handlerCopy = handler;
  fastAnimations = [(LAUIPKGlyphWrapper *)self fastAnimations];
  objc_initWeak(&location, self);
  glyphQueue = [(LAUIPKGlyphWrapper *)self glyphQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__LAUIPKGlyphWrapper_setState_idleTouchID_animated_completionHandler___block_invoke;
  v14[3] = &unk_2798216D0;
  v17 = !fastAnimations;
  dCopy = d;
  v14[4] = self;
  v16[1] = state;
  objc_copyWeak(v16, &location);
  animatedCopy = animated;
  v15 = handlerCopy;
  v13 = handlerCopy;
  dispatch_async(glyphQueue, v14);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __70__LAUIPKGlyphWrapper_setState_idleTouchID_animated_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) glyphQueue];
    dispatch_suspend(v2);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__LAUIPKGlyphWrapper_setState_idleTouchID_animated_completionHandler___block_invoke_2;
  block[3] = &unk_2798216D0;
  v7 = *(a1 + 65);
  v3 = *(a1 + 56);
  block[4] = *(a1 + 32);
  v6[1] = v3;
  v8 = *(a1 + 64);
  objc_copyWeak(v6, (a1 + 48));
  v9 = *(a1 + 66);
  v5 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v6);
}

void __70__LAUIPKGlyphWrapper_setState_idleTouchID_animated_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = [*(a1 + 32) idleTouchID];

    if (!v2)
    {
      v3 = [objc_alloc(+[LAUIPKGlyphWrapper _loadClassFromString:](LAUIPKGlyphWrapper _loadClassFromString:{@"PKGlyphView", "initWithStyle:", 0}];
      v4 = [*(a1 + 32) glyphView];
      [v4 frame];
      [v3 setFrame:?];

      v5 = [*(a1 + 32) glyphView];
      v6 = [v5 superview];
      [v6 addSubview:v3];

      v7 = *(a1 + 32);
      v8 = *(v7 + 32);
      *(v7 + 32) = v3;
    }
  }

  v9 = *(a1 + 32);
  if (*(a1 + 64))
  {
    v10 = 1;
  }

  else
  {
    v10 = v9[8];
  }

  v11 = [v9 glyphView];
  [v11 setHidden:v10 & 1];

  v12 = *(a1 + 32);
  if (*(a1 + 64) == 1)
  {
    v13 = v12[8];
  }

  else
  {
    v13 = 1;
  }

  v14 = [v12 idleTouchID];
  [v14 setHidden:v13 & 1];

  v15 = [MEMORY[0x277CBEAA8] date];
  v16 = LA_LOG_LAUIPKGlyphWrapper();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __70__LAUIPKGlyphWrapper_setState_idleTouchID_animated_completionHandler___block_invoke_2_cold_1(a1, v16);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v18 = [WeakRetained glyphView];
  v19 = *(a1 + 56);
  v20 = *(a1 + 66);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __70__LAUIPKGlyphWrapper_setState_idleTouchID_animated_completionHandler___block_invoke_6;
  v23[3] = &unk_2798216A8;
  v27[1] = v19;
  v28 = *(a1 + 65);
  objc_copyWeak(v27, (a1 + 48));
  v21 = v15;
  v24 = v21;
  v22 = *(a1 + 40);
  v25 = *(a1 + 32);
  v26 = v22;
  [v18 setState:v19 animated:v20 completionHandler:v23];

  objc_destroyWeak(v27);
}

void __70__LAUIPKGlyphWrapper_setState_idleTouchID_animated_completionHandler___block_invoke_6(uint64_t a1, char a2)
{
  v4 = LA_LOG_LAUIPKGlyphWrapper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __70__LAUIPKGlyphWrapper_setState_idleTouchID_animated_completionHandler___block_invoke_6_cold_1(a1, v4, v5, v6, v7, v8, v9, v10);
  }

  if (*(a1 + 72) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _minimumAnimationDurationForState:*(a1 + 64)];
    v13 = v12;
    [*(a1 + 32) timeIntervalSinceNow];
    v15 = v13 + v14;

    v16 = dispatch_time(0, (v15 * 1000000000.0));
    v17 = [MEMORY[0x277D24028] globalUserInitiatedConcurrentQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __70__LAUIPKGlyphWrapper_setState_idleTouchID_animated_completionHandler___block_invoke_7;
    v19[3] = &unk_279821680;
    v21 = *(a1 + 64);
    v18 = *(a1 + 48);
    v22 = a2;
    v19[4] = *(a1 + 40);
    v20 = v18;
    dispatch_after(v16, v17, v19);
  }

  else
  {
    if (*(a1 + 64) == 11)
    {
      dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_12);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __70__LAUIPKGlyphWrapper_setState_idleTouchID_animated_completionHandler___block_invoke_7(uint64_t a1)
{
  v2 = LA_LOG_LAUIPKGlyphWrapper();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __70__LAUIPKGlyphWrapper_setState_idleTouchID_animated_completionHandler___block_invoke_7_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  if (*(a1 + 48) == 11)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_2);
  }

  (*(*(a1 + 40) + 16))();
  v9 = [*(a1 + 32) glyphQueue];
  dispatch_resume(v9);
}

uint64_t __70__LAUIPKGlyphWrapper_setState_idleTouchID_animated_completionHandler___block_invoke_8()
{
  v0 = [LAUIPKGlyphWrapper _loadClassFromString:@"PKGlyphView"];

  return [(objc_class *)v0 invokeSuccessFeedback];
}

uint64_t __70__LAUIPKGlyphWrapper_setState_idleTouchID_animated_completionHandler___block_invoke_2_10()
{
  v0 = [LAUIPKGlyphWrapper _loadClassFromString:@"PKGlyphView"];

  return [(objc_class *)v0 invokeSuccessFeedback];
}

+ (void)_loadPKUI
{
  if (_loadPKUI_onceToken != -1)
  {
    +[LAUIPKGlyphWrapper _loadPKUI];
  }

  return _loadPKUI_libPKUI;
}

void *__31__LAUIPKGlyphWrapper__loadPKUI__block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/PassKitUIFoundation.framework/PassKitUIFoundation", 1);
  _loadPKUI_libPKUI = result;
  return result;
}

+ (Class)_loadClassFromString:(id)string
{
  stringCopy = string;
  if (+[LAUIPKGlyphWrapper _loadPKUI])
  {
    v4 = NSClassFromString(stringCopy);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)setGrayedOut:(BOOL)out
{
  outCopy = out;
  v5 = LA_LOG_LAUIPKGlyphWrapper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(LAUIPKGlyphWrapper *)outCopy setGrayedOut:v5, v6, v7, v8, v9, v10, v11];
  }

  if (outCopy)
  {
    v12 = 0.5;
  }

  else
  {
    v12 = 1.0;
  }

  glyphView = [(LAUIPKGlyphWrapper *)self glyphView];
  [glyphView setAlpha:v12];

  self->_grayedOut = outCopy;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  self->_hidden = hidden;
  glyphView = [(LAUIPKGlyphWrapper *)self glyphView];
  [glyphView setHidden:hiddenCopy];

  idleTouchID = [(LAUIPKGlyphWrapper *)self idleTouchID];
  [idleTouchID setHidden:hiddenCopy];
}

+ (void)glyphWithStyle:(int)a1 frame:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_2560E6000, a2, OS_LOG_TYPE_ERROR, "Unhandled style: %d", v2, 8u);
}

void __70__LAUIPKGlyphWrapper_setState_idleTouchID_animated_completionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = *(a1 + 65);
  v4[0] = 67109376;
  v4[1] = v2;
  v5 = 1024;
  v6 = v3;
  _os_log_debug_impl(&dword_2560E6000, a2, OS_LOG_TYPE_DEBUG, "setting glyph state: %d full animation: %d", v4, 0xEu);
}

@end