@interface MRScreenMirroringObserver
+ (id)UIControllingObserver;
+ (id)observerWithStateChangeCallback:(id)callback;
- (MRScreenMirroringObserver)initWithStateChangeCallback:(id)callback;
- (void)_contextChangeNotification:(id)notification;
- (void)_init;
- (void)_notifyIfNeeded;
- (void)dealloc;
@end

@implementation MRScreenMirroringObserver

+ (id)observerWithStateChangeCallback:(id)callback
{
  callbackCopy = callback;
  v4 = [[MRScreenMirroringObserver alloc] initWithStateChangeCallback:callbackCopy];

  return v4;
}

+ (id)UIControllingObserver
{
  v2 = objc_alloc_init(MRScreenMirroringUIControllingObserver);

  return v2;
}

- (MRScreenMirroringObserver)initWithStateChangeCallback:(id)callback
{
  v18 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  v15.receiver = self;
  v15.super_class = MRScreenMirroringObserver;
  v5 = [(MRScreenMirroringObserver *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v5->_deviceCount = 0;
    v7 = MEMORY[0x1A58E3570](callbackCopy);
    callback = v6->_callback;
    v6->_callback = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.MediaRemote.MRScreenMirroringObserver.queue", v9);
    queue = v6->_queue;
    v6->_queue = v10;

    [(MRScreenMirroringObserver *)v6 _init];
    v12 = _MRLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = v6;
      _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "[MRScreenMirroringObserver] <%p> Initialized.", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRScreenMirroringObserver] <%p> Deallocating.", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = MRScreenMirroringObserver;
  [(MRScreenMirroringObserver *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_init
{
  queue = [(MRScreenMirroringObserver *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MRScreenMirroringObserver__init__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_async(queue, block);
}

void __34__MRScreenMirroringObserver__init__block_invoke(uint64_t a1)
{
  v4 = +[MRAVOutputContext sharedSystemScreenContext];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel__contextChangeNotification_ name:@"MRAVOutputContextOutputDevicesDidChangeNotification" object:v4];

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:sel__contextChangeNotification_ name:@"MRAVOutputContextOutputDeviceDidChangeNotification" object:v4];

  [*(a1 + 32) _notifyIfNeeded];
}

- (void)_contextChangeNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(MRScreenMirroringObserver *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MRScreenMirroringObserver__contextChangeNotification___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

uint64_t __56__MRScreenMirroringObserver__contextChangeNotification___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) name];
    v7 = 134218242;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRScreenMirroringObserver] <%p> Received %@.", &v7, 0x16u);
  }

  result = [*(a1 + 32) _notifyIfNeeded];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_notifyIfNeeded
{
  v22 = *MEMORY[0x1E69E9840];
  deviceCount = [(MRScreenMirroringObserver *)self deviceCount];
  v4 = +[MRAVOutputContext sharedSystemScreenContext];
  outputDevices = [v4 outputDevices];
  -[MRScreenMirroringObserver setDeviceCount:](self, "setDeviceCount:", [outputDevices count]);

  v6 = _MRLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = +[MRAVOutputContext sharedSystemScreenContext];
    v14 = 134218752;
    selfCopy3 = self;
    v16 = 2048;
    v17 = v7;
    v18 = 2048;
    v19 = deviceCount;
    v20 = 2048;
    deviceCount2 = [(MRScreenMirroringObserver *)self deviceCount];
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[MRScreenMirroringObserver] <%p> Re-evaluate for context: %p. Old count: %ld, new: %ld.", &v14, 0x2Au);
  }

  if (deviceCount)
  {
    if (deviceCount >= 1 && ![(MRScreenMirroringObserver *)self deviceCount])
    {
      callback = [(MRScreenMirroringObserver *)self callback];

      if (callback)
      {
        v9 = _MRLogForCategory(0);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 134217984;
          selfCopy3 = self;
          v10 = "[MRScreenMirroringObserver] <%p> Notify mirroring OFF.";
LABEL_13:
          _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, v10, &v14, 0xCu);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }
  }

  else if ([(MRScreenMirroringObserver *)self deviceCount]>= 1)
  {
    callback2 = [(MRScreenMirroringObserver *)self callback];

    if (callback2)
    {
      v9 = _MRLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134217984;
        selfCopy3 = self;
        v10 = "[MRScreenMirroringObserver] <%p> Notify mirroring ON.";
        goto LABEL_13;
      }

LABEL_14:

      callback3 = [(MRScreenMirroringObserver *)self callback];
      (callback3)[2](callback3, deviceCount == 0);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end