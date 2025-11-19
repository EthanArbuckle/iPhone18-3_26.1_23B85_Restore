@interface BrightnessSystemClientExportedObj
- (void)dealloc;
- (void)notifyChangedProperty:(id)a3 value:(id)a4;
- (void)registerNotificationBlock:(id)a3;
- (void)unregisterNotificationBlock;
@end

@implementation BrightnessSystemClientExportedObj

- (void)unregisterNotificationBlock
{
  objc_sync_enter(self);
  if (self->clientBlock)
  {
    _Block_release(self->clientBlock);
    self->clientBlock = 0;
  }

  objc_sync_exit(self);
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  objc_sync_enter(self);
  if (v5->clientBlock)
  {
    _Block_release(v5->clientBlock);
  }

  if (v5->queue)
  {
    dispatch_release(v5->queue);
  }

  objc_sync_exit(self);
  v3.receiver = v5;
  v3.super_class = BrightnessSystemClientExportedObj;
  [(BrightnessSystemClientExportedObj *)&v3 dealloc];
}

- (void)registerNotificationBlock:(id)a3
{
  [(BrightnessSystemClientExportedObj *)self unregisterNotificationBlock];
  objc_sync_enter(self);
  if (a3)
  {
    self->clientBlock = _Block_copy(a3);
  }

  objc_sync_exit(self);
}

- (void)notifyChangedProperty:(id)a3 value:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  if (_COREBRIGHTNESS_LOG_DEFAULT)
  {
    inited = _COREBRIGHTNESS_LOG_DEFAULT;
  }

  else
  {
    inited = init_default_corebrightness_log();
  }

  oslog = inited;
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(inited, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_4_8_64_8_64_8_0_8_0(v20, v17, v16, v19->queue, v19->clientBlock);
    _os_log_debug_impl(&dword_1DE8E5000, oslog, type, "key=%@ property=%@ queue=%p clientBlock=%p", v20, 0x2Au);
  }

  if (!v19->queue)
  {
    v19->queue = dispatch_queue_create(0, 0);
  }

  if (v19->clientBlock && v19->queue)
  {
    MEMORY[0x1E69E5928](v17);
    MEMORY[0x1E69E5928](v16);
    queue = v19->queue;
    block = MEMORY[0x1E69E9820];
    v7 = -1073741824;
    v8 = 0;
    v9 = __65__BrightnessSystemClientExportedObj_notifyChangedProperty_value___block_invoke;
    v10 = &unk_1E867B750;
    v11 = v19;
    v12 = v17;
    v13 = v16;
    dispatch_async(queue, &block);
  }

  *MEMORY[0x1E69E9840];
}

double __65__BrightnessSystemClientExportedObj_notifyChangedProperty_value___block_invoke(void *a1)
{
  obj = a1[4];
  objc_sync_enter(obj);
  if (*(a1[4] + 8))
  {
    v1 = a1[5];
    v2 = a1[6];
    (*(*(a1[4] + 8) + 16))();
  }

  objc_sync_exit(obj);
  MEMORY[0x1E69E5920](a1[5]);
  *&result = MEMORY[0x1E69E5920](a1[6]).n128_u64[0];
  return result;
}

@end