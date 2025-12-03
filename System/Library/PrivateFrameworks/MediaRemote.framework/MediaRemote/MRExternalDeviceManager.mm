@interface MRExternalDeviceManager
+ (id)sharedManager;
- (MRExternalDeviceManager)init;
- (NSArray)allDevices;
- (id)deviceWithIdentifier:(id)identifier;
- (void)clearDevices;
- (void)registerDevice:(id)device;
@end

@implementation MRExternalDeviceManager

+ (id)sharedManager
{
  if (sharedManager___once_0 != -1)
  {
    +[MRExternalDeviceManager sharedManager];
  }

  v3 = sharedManager___sharedManager;

  return v3;
}

void __40__MRExternalDeviceManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(MRExternalDeviceManager);
  v1 = sharedManager___sharedManager;
  sharedManager___sharedManager = v0;
}

- (MRExternalDeviceManager)init
{
  v11.receiver = self;
  v11.super_class = MRExternalDeviceManager;
  v2 = [(MRExternalDeviceManager *)&v11 init];
  if (v2)
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    devicesPointerArray = v2->_devicesPointerArray;
    v2->_devicesPointerArray = weakObjectsPointerArray;

    v5 = objc_opt_class();
    Name = class_getName(v5);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(Name, v7);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v8;
  }

  return v2;
}

- (NSArray)allDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__MRExternalDeviceManager_allDevices__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __37__MRExternalDeviceManager_allDevices__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) allObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)deviceWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  [(MRExternalDeviceManager *)self allDevices];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (v9)
        {
          null = [MEMORY[0x1E695DFB0] null];

          if (v9 != null)
          {
            deviceInfo = [v9 deviceInfo];
            identifier = [deviceInfo identifier];

            if ([identifierCopy isEqualToString:identifier])
            {
              v6 = v9;

              goto LABEL_14;
            }
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)registerDevice:(id)device
{
  deviceCopy = device;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__MRExternalDeviceManager_registerDevice___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_sync(serialQueue, v7);
}

- (void)clearDevices
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MRExternalDeviceManager_clearDevices__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

@end