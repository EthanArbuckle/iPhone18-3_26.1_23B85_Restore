@interface JFXPickerCameraSource
+ (JFXPickerCameraSource)sharedInstance;
- (BOOL)isPickerPreviewing;
- (JFXPickerCameraSource)init;
- (PVLivePlayerCameraSource)pickerSource;
- (void)registerPickerAsPreviewingWithObject:(id)object;
- (void)unregisterPickerAsPreviewingWithObject:(id)object;
@end

@implementation JFXPickerCameraSource

+ (JFXPickerCameraSource)sharedInstance
{
  if (sharedInstance_onceToken_10 != -1)
  {
    +[JFXPickerCameraSource sharedInstance];
  }

  v3 = sharedInstance_s_sharedInstance_2;

  return v3;
}

uint64_t __39__JFXPickerCameraSource_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(JFXPickerCameraSource);
  v1 = sharedInstance_s_sharedInstance_2;
  sharedInstance_s_sharedInstance_2 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (JFXPickerCameraSource)init
{
  v8.receiver = self;
  v8.super_class = JFXPickerCameraSource;
  v2 = [(JFXPickerCameraSource *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    registeredPickers = v2->_registeredPickers;
    v2->_registeredPickers = v3;

    v5 = JFXCreateDispatchQueue(v2, @"registeredPickersQ", MEMORY[0x277D85CD8]);
    registeredPickersQueue = v2->_registeredPickersQueue;
    v2->_registeredPickersQueue = v5;
  }

  return v2;
}

- (void)registerPickerAsPreviewingWithObject:(id)object
{
  objectCopy = object;
  registeredPickersQueue = [(JFXPickerCameraSource *)self registeredPickersQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__JFXPickerCameraSource_registerPickerAsPreviewingWithObject___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_barrier_async(registeredPickersQueue, v7);
}

void __62__JFXPickerCameraSource_registerPickerAsPreviewingWithObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredPickers];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) registeredPickersSource];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D41678]);
    [*(a1 + 32) setRegisteredPickersSource:v4];

    v5 = JFXLog_DebugPickerPreviewing();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __62__JFXPickerCameraSource_registerPickerAsPreviewingWithObject___block_invoke_cold_1(v5);
    }
  }
}

- (void)unregisterPickerAsPreviewingWithObject:(id)object
{
  objectCopy = object;
  registeredPickersQueue = [(JFXPickerCameraSource *)self registeredPickersQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__JFXPickerCameraSource_unregisterPickerAsPreviewingWithObject___block_invoke;
  v7[3] = &unk_278D79C88;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_barrier_async(registeredPickersQueue, v7);
}

void __64__JFXPickerCameraSource_unregisterPickerAsPreviewingWithObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredPickers];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) registeredPickers];
  v4 = [v3 count];

  if (!v4)
  {
    [*(a1 + 32) setRegisteredPickersSource:0];
    v5 = JFXLog_DebugPickerPreviewing();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __64__JFXPickerCameraSource_unregisterPickerAsPreviewingWithObject___block_invoke_cold_1(v5);
    }
  }
}

- (BOOL)isPickerPreviewing
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  registeredPickersQueue = [(JFXPickerCameraSource *)self registeredPickersQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__JFXPickerCameraSource_isPickerPreviewing__block_invoke;
  v5[3] = &unk_278D79C60;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(registeredPickersQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __43__JFXPickerCameraSource_isPickerPreviewing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredPickers];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] != 0;
}

- (PVLivePlayerCameraSource)pickerSource
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__21;
  v11 = __Block_byref_object_dispose__21;
  v12 = 0;
  registeredPickersQueue = [(JFXPickerCameraSource *)self registeredPickersQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__JFXPickerCameraSource_pickerSource__block_invoke;
  v6[3] = &unk_278D79C60;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(registeredPickersQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __37__JFXPickerCameraSource_pickerSource__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredPickersSource];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

@end