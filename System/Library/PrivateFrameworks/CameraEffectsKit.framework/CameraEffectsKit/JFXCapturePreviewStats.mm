@interface JFXCapturePreviewStats
- (JFXCapturePreviewStats)init;
- (id)add:(id)add;
- (id)runningAverage;
- (void)_print_NoLock;
- (void)clear;
- (void)print;
- (void)printSync;
@end

@implementation JFXCapturePreviewStats

- (JFXCapturePreviewStats)init
{
  v10.receiver = self;
  v10.super_class = JFXCapturePreviewStats;
  v2 = [(JFXCapturePreviewStats *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(JFXCapturePreviewFrameStats);
    runningAverage = v2->_runningAverage;
    v2->_runningAverage = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stats = v2->_stats;
    v2->_stats = v5;

    v7 = dispatch_queue_create("com.apple.clips.previewStatsQ", 0);
    q = v2->_q;
    v2->_q = v7;
  }

  return v2;
}

- (id)add:(id)add
{
  addCopy = add;
  if (addCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__5;
    v15 = __Block_byref_object_dispose__5;
    v16 = objc_alloc_init(JFXCapturePreviewFrameStats);
    q = self->_q;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__JFXCapturePreviewStats_add___block_invoke;
    block[3] = &unk_278D7A430;
    block[4] = self;
    v9 = addCopy;
    v10 = &v11;
    dispatch_sync(q, block);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __30__JFXCapturePreviewStats_add___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) addObject:*(a1 + 40)];
  result = [*(a1 + 40) dropped];
  if ((result & 1) == 0)
  {
    for (i = 0; i != 48; i += 8)
    {
      v4 = *([*(*(a1 + 32) + 8) times] + i);
      v5 = ([*(*(a1 + 32) + 16) count] - 1);
      v6 = *([*(a1 + 40) times] + i) + v4 * v5;
      v7 = v6 / [*(*(a1 + 32) + 16) count];
      *([*(*(a1 + 32) + 8) times] + i) = v7;
      v8 = *([*(*(a1 + 32) + 8) times] + i);
      result = [*(*(*(a1 + 48) + 8) + 40) times];
      *(result + i) = v8;
    }
  }

  return result;
}

- (id)runningAverage
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = objc_alloc_init(JFXCapturePreviewFrameStats);
  q = self->_q;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__JFXCapturePreviewStats_runningAverage__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(q, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __40__JFXCapturePreviewStats_runningAverage__block_invoke(uint64_t a1)
{
  for (i = 0; i != 48; i += 8)
  {
    v3 = *([*(*(a1 + 32) + 8) times] + i);
    result = [*(*(*(a1 + 40) + 8) + 40) times];
    *(result + i) = v3;
  }

  return result;
}

- (void)print
{
  q = self->_q;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__JFXCapturePreviewStats_print__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(q, block);
}

- (void)printSync
{
  q = self->_q;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__JFXCapturePreviewStats_printSync__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_sync(q, block);
}

- (void)_print_NoLock
{
  name = [self name];
  OUTLINED_FUNCTION_1_0(&dword_242A3B000, v2, v3, "------------ Jetty Frame Stats END [%@] -----------", v4, v5, v6, v7, 2u);
}

- (void)clear
{
  q = self->_q;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__JFXCapturePreviewStats_clear__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  dispatch_async(q, block);
}

uint64_t __31__JFXCapturePreviewStats_clear__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeAllObjects];
  *(*(a1 + 32) + 8) = objc_alloc_init(JFXCapturePreviewFrameStats);

  return MEMORY[0x2821F96F8]();
}

@end