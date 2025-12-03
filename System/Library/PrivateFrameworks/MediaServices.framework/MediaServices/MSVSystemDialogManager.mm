@interface MSVSystemDialogManager
+ (id)sharedManager;
- (MSVSystemDialogManager)init;
- (id)systemDialogForUserNotification:(__CFUserNotification *)notification;
- (void)dealloc;
- (void)registerSystemDialog:(id)dialog forUserNotification:(__CFUserNotification *)notification;
- (void)unregisterSystemDialogWithUserNotification:(__CFUserNotification *)notification;
@end

@implementation MSVSystemDialogManager

- (void)unregisterSystemDialogWithUserNotification:(__CFUserNotification *)notification
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__MSVSystemDialogManager_unregisterSystemDialogWithUserNotification___block_invoke;
  v4[3] = &unk_1E7982898;
  v4[4] = self;
  v4[5] = notification;
  dispatch_sync(serialQueue, v4);
}

- (id)systemDialogForUserNotification:(__CFUserNotification *)notification
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5286;
  v11 = __Block_byref_object_dispose__5287;
  v12 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MSVSystemDialogManager_systemDialogForUserNotification___block_invoke;
  block[3] = &unk_1E7982870;
  block[4] = self;
  block[5] = &v7;
  block[6] = notification;
  dispatch_sync(serialQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __58__MSVSystemDialogManager_systemDialogForUserNotification___block_invoke(uint64_t a1)
{
  v2 = CFDictionaryGetValue(*(*(a1 + 32) + 8), *(a1 + 48));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)registerSystemDialog:(id)dialog forUserNotification:(__CFUserNotification *)notification
{
  dialogCopy = dialog;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MSVSystemDialogManager_registerSystemDialog_forUserNotification___block_invoke;
  block[3] = &unk_1E7982848;
  v10 = dialogCopy;
  notificationCopy = notification;
  block[4] = self;
  v8 = dialogCopy;
  dispatch_sync(serialQueue, block);
}

- (void)dealloc
{
  CFRelease(self->_registeredSystemDialogs);
  v3.receiver = self;
  v3.super_class = MSVSystemDialogManager;
  [(MSVSystemDialogManager *)&v3 dealloc];
}

- (MSVSystemDialogManager)init
{
  v7.receiver = self;
  v7.super_class = MSVSystemDialogManager;
  v2 = [(MSVSystemDialogManager *)&v7 init];
  if (v2)
  {
    v2->_registeredSystemDialogs = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    ClassName = object_getClassName(v2);
    v4 = dispatch_queue_create(ClassName, 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager___once != -1)
  {
    dispatch_once(&sharedManager___once, &__block_literal_global_5289);
  }

  v3 = sharedManager___sharedManager;

  return v3;
}

uint64_t __39__MSVSystemDialogManager_sharedManager__block_invoke()
{
  sharedManager___sharedManager = objc_alloc_init(MSVSystemDialogManager);

  return MEMORY[0x1EEE66BB8]();
}

@end