@interface IAPAudioCallbackInfo
+ (id)sharedInstance;
- (IAPAudioCallbackInfo)init;
- (void)_handleiAPDaemonDied:(id)died;
- (void)clearDeviceStateChangedCallback;
- (void)clearPauseOnHeadphoneDisconnectChangedCallback;
- (void)clearVolumeChangedCallback;
- (void)clearVolumeControlSupportChangedCallback;
- (void)dealloc;
- (void)setupDeviceStateChangedCallback:(void *)callback withContext:(void *)context andRunLoop:(__CFRunLoop *)loop;
- (void)setupPauseOnHeadphoneDisconnectChangedCallback:(void *)callback withContext:(void *)context andRunLoop:(__CFRunLoop *)loop;
- (void)setupVolumeChangedCallback:(void *)callback withContext:(void *)context andRunLoop:(__CFRunLoop *)loop;
- (void)setupVolumeControlSupportChangedCallback:(void *)callback withContext:(void *)context andRunLoop:(__CFRunLoop *)loop;
@end

@implementation IAPAudioCallbackInfo

- (void)_handleiAPDaemonDied:(id)died
{
  [objc_msgSend(MEMORY[0x277CCAB98] defaultCenter];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"IAPAudioVolumeControlSupportChangedNotification" object:0];
}

- (IAPAudioCallbackInfo)init
{
  v4.receiver = self;
  v4.super_class = IAPAudioCallbackInfo;
  v2 = [(IAPAudioCallbackInfo *)&v4 init];
  if (v2)
  {
    v2->_lock = objc_alloc_init(MEMORY[0x277CCAAF8]);
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = IAPAudioCallbackInfo;
  [(IAPAudioCallbackInfo *)&v3 dealloc];
}

+ (id)sharedInstance
{
  if (+[IAPAudioCallbackInfo sharedInstance]::once != -1)
  {
    +[IAPAudioCallbackInfo sharedInstance];
  }

  return +[IAPAudioCallbackInfo sharedInstance]::sharedInstance;
}

IAPAudioCallbackInfo *__38__IAPAudioCallbackInfo_sharedInstance__block_invoke()
{
  result = objc_alloc_init(IAPAudioCallbackInfo);
  +[IAPAudioCallbackInfo sharedInstance]::sharedInstance = result;
  return result;
}

- (void)setupDeviceStateChangedCallback:(void *)callback withContext:(void *)context andRunLoop:(__CFRunLoop *)loop
{
  [(NSLock *)self->_lock lock:callback];
  self->_deviceStateChangedCallback = callback;
  self->_deviceStateChangedContext = context;
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, IAPAudioDeviceStateChangedNotificationCallBack, @"IAPAudioDeviceStateChangedNotification", 0, 0);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v9, self, AccessoryDigitalAudioNotificationCallBack, @"com.apple.accessories.audio.stateChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)clearDeviceStateChangedCallback
{
  [(NSLock *)self->_lock lock];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"IAPAudioDeviceStateChangedNotification", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, 0, @"com.apple.accessories.audio.stateChanged", 0);
  self->_deviceStateChangedCallback = 0;
  self->_deviceStateChangedContext = 0;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setupVolumeChangedCallback:(void *)callback withContext:(void *)context andRunLoop:(__CFRunLoop *)loop
{
  [(NSLock *)self->_lock lock:callback];
  self->_volumeChangedCallback = callback;
  self->_volumeChangedContext = context;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, IAPAudioVolumeChangedNotificationCallBack, @"IAPAudioVolumeChangedNotification", 0, 0);
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)clearVolumeChangedCallback
{
  [(NSLock *)self->_lock lock];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"IAPAudioVolumeChangedNotification", 0);
  self->_volumeChangedCallback = 0;
  self->_volumeChangedContext = 0;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setupPauseOnHeadphoneDisconnectChangedCallback:(void *)callback withContext:(void *)context andRunLoop:(__CFRunLoop *)loop
{
  [(NSLock *)self->_lock lock:callback];
  self->_pauseOnHeadphoneDisconnectChangedCallback = callback;
  self->_pauseOnHeadphoneDisconnectChangedContext = context;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, IAPAudioShouldPauseOnHeadphoneDisconnectChangedNotificationCallBack, @"IAPAudioShouldPauseOnHeadphoneDisconnectChangedNotification", 0, 0);
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)clearPauseOnHeadphoneDisconnectChangedCallback
{
  [(NSLock *)self->_lock lock];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"IAPAudioShouldPauseOnHeadphoneDisconnectChangedNotification", 0);
  self->_pauseOnHeadphoneDisconnectChangedCallback = 0;
  self->_pauseOnHeadphoneDisconnectChangedContext = 0;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setupVolumeControlSupportChangedCallback:(void *)callback withContext:(void *)context andRunLoop:(__CFRunLoop *)loop
{
  [(NSLock *)self->_lock lock:callback];
  self->_volumeControlSupportChangedCallback = callback;
  self->_volumeControlSupportChangedContext = context;
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, IAPAudioVolumeControlSupportChangedNotificationCallBack, @"IAPAudioVolumeControlSupportChangedNotification", 0, 0);
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)clearVolumeControlSupportChangedCallback
{
  [(NSLock *)self->_lock lock];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"IAPAudioVolumeControlSupportChangedNotification", 0);
  self->_volumeControlSupportChangedCallback = 0;
  self->_volumeControlSupportChangedContext = 0;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

@end