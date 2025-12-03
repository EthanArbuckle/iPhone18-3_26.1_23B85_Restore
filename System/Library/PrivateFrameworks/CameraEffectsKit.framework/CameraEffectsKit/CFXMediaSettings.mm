@interface CFXMediaSettings
+ (id)sharedInstance;
- (CFXMediaSettings)init;
- (CGSize)frameSize;
- (CGSize)renderSize;
- (int)frameRate;
- (int)timeScale;
- (void)setFrameRate:(int)rate;
- (void)setFrameSize:(CGSize)size;
- (void)setRenderSize:(CGSize)size;
- (void)setTimeScale:(int)scale;
@end

@implementation CFXMediaSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_12 != -1)
  {
    +[CFXMediaSettings sharedInstance];
  }

  v3 = sharedInstance_sharedCompositionSettings;

  return v3;
}

uint64_t __34__CFXMediaSettings_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CFXMediaSettings);
  v1 = sharedInstance_sharedCompositionSettings;
  sharedInstance_sharedCompositionSettings = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (CFXMediaSettings)init
{
  v14.receiver = self;
  v14.super_class = CFXMediaSettings;
  v2 = [(CFXMediaSettings *)&v14 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 1) = 0x1E0000001ELL;
    *(v2 + 40) = kDefaultRenderSize;
    *(v2 + 24) = kDefaultRenderSize;
    v4 = MEMORY[0x277CCACA8];
    jfxBundle = [MEMORY[0x277CCA8D8] jfxBundle];
    bundleIdentifier = [jfxBundle bundleIdentifier];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v4 stringWithFormat:@"%@.%@.queue", bundleIdentifier, v8];

    uTF8String = [v9 UTF8String];
    v11 = dispatch_queue_create(uTF8String, MEMORY[0x277D85CD8]);
    queue = v3->_queue;
    v3->_queue = v11;
  }

  return v3;
}

- (int)timeScale
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CFXMediaSettings *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__CFXMediaSettings_timeScale__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setTimeScale:(int)scale
{
  queue = [(CFXMediaSettings *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__CFXMediaSettings_setTimeScale___block_invoke;
  v6[3] = &unk_278D7B1F0;
  v6[4] = self;
  scaleCopy = scale;
  dispatch_barrier_async(queue, v6);
}

- (int)frameRate
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CFXMediaSettings *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__CFXMediaSettings_frameRate__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setFrameRate:(int)rate
{
  queue = [(CFXMediaSettings *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__CFXMediaSettings_setFrameRate___block_invoke;
  v6[3] = &unk_278D7B1F0;
  v6[4] = self;
  rateCopy = rate;
  dispatch_barrier_async(queue, v6);
}

- (CGSize)frameSize
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v13 = 0;
  v14 = 0;
  v12 = "";
  queue = [(CFXMediaSettings *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__CFXMediaSettings_frameSize__block_invoke;
  v8[3] = &unk_278D79C60;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(queue, v8);

  v4 = v10[4];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

__n128 __29__CFXMediaSettings_frameSize__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (void)setFrameSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  queue = [(CFXMediaSettings *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CFXMediaSettings_setFrameSize___block_invoke;
  block[3] = &unk_278D7B8F0;
  *&block[5] = width;
  *&block[6] = height;
  block[4] = self;
  dispatch_barrier_async(queue, block);
}

__n128 __33__CFXMediaSettings_setFrameSize___block_invoke(uint64_t a1)
{
  v2 = JFXLog_camera();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __33__CFXMediaSettings_setFrameSize___block_invoke_cold_1(a1);
  }

  result = *(a1 + 40);
  *(*(a1 + 32) + 24) = result;
  return result;
}

- (CGSize)renderSize
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v13 = 0;
  v14 = 0;
  v12 = "";
  queue = [(CFXMediaSettings *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__CFXMediaSettings_renderSize__block_invoke;
  v8[3] = &unk_278D79C60;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(queue, v8);

  v4 = v10[4];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

__n128 __30__CFXMediaSettings_renderSize__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

- (void)setRenderSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  queue = [(CFXMediaSettings *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CFXMediaSettings_setRenderSize___block_invoke;
  block[3] = &unk_278D7B8F0;
  *&block[5] = width;
  *&block[6] = height;
  block[4] = self;
  dispatch_barrier_async(queue, block);
}

__n128 __34__CFXMediaSettings_setRenderSize___block_invoke(uint64_t a1)
{
  v2 = JFXLog_camera();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __33__CFXMediaSettings_setFrameSize___block_invoke_cold_1(a1);
  }

  result = *(a1 + 40);
  *(*(a1 + 32) + 40) = result;
  return result;
}

void __33__CFXMediaSettings_setFrameSize___block_invoke_cold_1(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_1_5();
  v5 = [v4 numberWithDouble:v3];
  v6 = [*(v1 + 2992) numberWithDouble:*(a1 + 48)];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2(&dword_242A3B000, v7, v8, "size: {%@, %@}", v9, v10, v11, v12, v13);
}

@end