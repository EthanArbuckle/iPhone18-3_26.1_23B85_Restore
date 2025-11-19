@interface CSOSTransactionStat
+ (id)sharedInstance;
- (CSOSTransactionStat)init;
- (int)numTransaction;
- (void)reportCreation;
- (void)reportDestroy;
@end

@implementation CSOSTransactionStat

- (int)numTransaction
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__CSOSTransactionStat_numTransaction__block_invoke;
  v5[3] = &unk_1E865C880;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(queue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)reportDestroy
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CSOSTransactionStat_reportDestroy__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

void __36__CSOSTransactionStat_reportDestroy__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  --*(*(a1 + 32) + 8);
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    v5 = 136315394;
    v6 = "[CSOSTransactionStat reportDestroy]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s NumTransactionNow = %d", &v5, 0x12u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)reportCreation
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__CSOSTransactionStat_reportCreation__block_invoke;
  block[3] = &unk_1E865CB68;
  block[4] = self;
  dispatch_async(queue, block);
}

void __37__CSOSTransactionStat_reportCreation__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  ++*(*(a1 + 32) + 8);
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 8);
    v5 = 136315394;
    v6 = "[CSOSTransactionStat reportCreation]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s NumTransactionNow = %d", &v5, 0x12u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (CSOSTransactionStat)init
{
  v6.receiver = self;
  v6.super_class = CSOSTransactionStat;
  v2 = [(CSOSTransactionStat *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSOSTransactionStat", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2398[0] != -1)
  {
    dispatch_once(sharedInstance_onceToken_2398, &__block_literal_global_2399);
  }

  v3 = sharedInstance_sharedInstance_2400;

  return v3;
}

uint64_t __37__CSOSTransactionStat_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_2400 = objc_alloc_init(CSOSTransactionStat);

  return MEMORY[0x1EEE66BB8]();
}

@end