@interface MRVVIClient
+ (id)sharedClient;
- (MRVVIClient)init;
- (void)_recordingStateChangedNotification:(id)notification;
- (void)dealloc;
- (void)setRecordingStateCallback:(id)callback forDeviceID:(unsigned int)d;
@end

@implementation MRVVIClient

+ (id)sharedClient
{
  if (sharedClient___once != -1)
  {
    +[MRVVIClient sharedClient];
  }

  v3 = sharedClient___sharedClient;

  return v3;
}

void __27__MRVVIClient_sharedClient__block_invoke()
{
  v0 = objc_alloc_init(MRVVIClient);
  v1 = sharedClient___sharedClient;
  sharedClient___sharedClient = v0;
}

- (MRVVIClient)init
{
  v10.receiver = self;
  v10.super_class = MRVVIClient;
  v2 = [(MRVVIClient *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deviceIDToCallbackMap = v2->_deviceIDToCallbackMap;
    v2->_deviceIDToCallbackMap = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.MRVVIClient", v5);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v6;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__recordingStateChangedNotification_ name:@"kMRVirtualVoiceInputRecordingStateDidChangeNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = MRVVIClient;
  [(MRVVIClient *)&v4 dealloc];
}

- (void)setRecordingStateCallback:(id)callback forDeviceID:(unsigned int)d
{
  v6 = [callback copy];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__MRVVIClient_setRecordingStateCallback_forDeviceID___block_invoke;
  block[3] = &unk_1E769BD70;
  block[4] = self;
  v10 = v6;
  dCopy = d;
  v8 = v6;
  dispatch_sync(serialQueue, block);
}

void __53__MRVVIClient_setRecordingStateCallback_forDeviceID___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v5 = MEMORY[0x1A58E3570]();
    v2 = *(*(a1 + 32) + 8);
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
    [v2 setObject:v5 forKeyedSubscript:v3];
  }

  else
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
    [v4 removeObjectForKey:?];
  }
}

- (void)_recordingStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__42;
  v18 = __Block_byref_object_dispose__42;
  v19 = 0;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"kMRVirtualVoiceInputDeviceIDUserInfoKey"];

  if (v6)
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__MRVVIClient__recordingStateChangedNotification___block_invoke;
    block[3] = &unk_1E769BBB8;
    v13 = &v14;
    block[4] = self;
    v12 = v6;
    dispatch_sync(serialQueue, block);
  }

  if (v15[5])
  {
    userInfo2 = [notificationCopy userInfo];
    v9 = [userInfo2 objectForKey:@"kMRVirtualVoiceInputRecordingStateUserInfoKey"];
    unsignedIntValue = [v9 unsignedIntValue];

    (*(v15[5] + 16))(v15[5], [v6 unsignedIntValue], unsignedIntValue);
  }

  _Block_object_dispose(&v14, 8);
}

void __50__MRVVIClient__recordingStateChangedNotification___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end