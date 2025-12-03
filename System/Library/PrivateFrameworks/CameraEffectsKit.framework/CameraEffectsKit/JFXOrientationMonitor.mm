@interface JFXOrientationMonitor
+ (BOOL)initialized;
+ (void)JFX_initLock;
+ (void)initializeWithKeyWindow:(id)window;
+ (void)initializeWithViewController:(id)controller;
+ (void)uninitialize;
- (JFXOrientationMonitor)initWithKeyWindow:(id)window;
- (int64_t)JFX_deviceOrientation_darwinNotificationQ;
- (int64_t)deviceInterfaceOrientation;
- (int64_t)deviceOrientation;
- (int64_t)interfaceOrientation;
- (void)JFX_UIApplicationDidChangeStatusBarOrientationNotification:(id)notification;
- (void)JFX_UIApplicationDidEnterBackgroundNotification:(id)notification;
- (void)JFX_UIApplicationWillEnterForegroundNotification:(id)notification;
- (void)JFX_initDarwinNotification;
- (void)dealloc;
- (void)setDeviceOrientation:(int64_t)orientation;
- (void)setInterfaceOrientation:(int64_t)orientation;
@end

@implementation JFXOrientationMonitor

+ (BOOL)initialized
{
  [self JFX_initLock];
  [s_instance_lock lock];
  v2 = s_instance != 0;
  [s_instance_lock unlock];
  return v2;
}

+ (void)initializeWithKeyWindow:(id)window
{
  windowCopy = window;
  [self JFX_initLock];
  [s_instance_lock lock];
  v5 = [[self alloc] initWithKeyWindow:windowCopy];

  v6 = s_instance;
  s_instance = v5;

  v7 = s_instance_lock;

  [v7 unlock];
}

+ (void)initializeWithViewController:(id)controller
{
  controllerCopy = controller;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4;
  v23 = __Block_byref_object_dispose__4;
  v24 = 0;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  windows = [mEMORY[0x277D75128] windows];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__JFXOrientationMonitor_initializeWithViewController___block_invoke;
  v18[3] = &unk_278D7A718;
  v18[4] = &v19;
  [windows enumerateObjectsUsingBlock:v18];

  if (v20[5])
  {
    goto LABEL_5;
  }

  v7 = controllerCopy;
  if (!v20[5])
  {
    while (1)
    {
      view = [v7 view];
      window = [view window];
      v11 = v20[5];
      v20[5] = window;

      parentViewController = [v7 parentViewController];

      if (!parentViewController)
      {
        break;
      }

      parentViewController2 = [v7 parentViewController];

      v7 = parentViewController2;
      if (v20[5])
      {
        goto LABEL_4;
      }
    }

    if (!v20[5])
    {
      view2 = [v7 view];
      if (!v20[5])
      {
        while (1)
        {
          window2 = [view2 window];
          v16 = v20[5];
          v20[5] = window2;

          superview = [view2 superview];

          if (!superview)
          {
            break;
          }

          superview2 = [view2 superview];

          view2 = superview2;
          if (v20[5])
          {
            goto LABEL_12;
          }
        }

        if (!v20[5])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(v20 + 5, view2);
          }
        }
      }

      superview2 = view2;
LABEL_12:
    }
  }

  parentViewController2 = v7;
LABEL_4:

  if (v20[5])
  {
LABEL_5:
    [self initializeWithKeyWindow:?];
  }

  _Block_object_dispose(&v19, 8);
}

void __54__JFXOrientationMonitor_initializeWithViewController___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isKeyWindow])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (void)uninitialize
{
  v2 = s_instance;
  s_instance = 0;
}

- (JFXOrientationMonitor)initWithKeyWindow:(id)window
{
  windowCopy = window;
  v28.receiver = self;
  v28.super_class = JFXOrientationMonitor;
  v6 = [(JFXOrientationMonitor *)&v28 init];
  objc_storeStrong(&v6->_keyWindow, window);
  v7 = JFXCreateDispatchQueue(v6, @"DarwinNotificationQ", 0);
  darwinNotificationQ = v6->_darwinNotificationQ;
  v6->_darwinNotificationQ = v7;

  v6->_darwinNotificationToken = -48879;
  [(JFXOrientationMonitor *)v6 JFX_initDarwinNotification];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v6 selector:sel_JFX_UIApplicationDidChangeStatusBarOrientationNotification_ name:*MEMORY[0x277D76658] object:0];

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v10 = v6->_darwinNotificationQ;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __43__JFXOrientationMonitor_initWithKeyWindow___block_invoke;
  v21 = &unk_278D79C60;
  v23 = &v24;
  v11 = v6;
  v22 = v11;
  dispatch_sync(v10, &v18);
  v11->_deviceOrientation_lock = v25[3];
  windowScene = [windowCopy windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  v11->_interfaceOrientation_lock = interfaceOrientation;
  v14 = v25[3];
  if ((v14 - 1) >= 4)
  {
    v14 = interfaceOrientation;
  }

  v11->_deviceInterfaceOrientation_lock = v14;
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:v11 selector:sel_JFX_UIApplicationDidEnterBackgroundNotification_ name:*MEMORY[0x277D76660] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:v11 selector:sel_JFX_UIApplicationWillEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];

  _Block_object_dispose(&v24, 8);
  return v11;
}

uint64_t __43__JFXOrientationMonitor_initWithKeyWindow___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) JFX_deviceOrientation_darwinNotificationQ];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)deviceOrientation
{
  [s_instance_lock lock];
  deviceOrientation_lock = [(JFXOrientationMonitor *)self deviceOrientation_lock];
  [s_instance_lock unlock];
  return deviceOrientation_lock;
}

- (void)setDeviceOrientation:(int64_t)orientation
{
  v12[1] = *MEMORY[0x277D85DE8];
  [s_instance_lock lock];
  [(JFXOrientationMonitor *)self setDeviceOrientation_lock:orientation];
  if ((orientation - 1) > 3)
  {
    v7 = 0;
  }

  else
  {
    deviceInterfaceOrientation_lock = [(JFXOrientationMonitor *)self deviceInterfaceOrientation_lock];
    [(JFXOrientationMonitor *)self setDeviceInterfaceOrientation_lock:orientation];
    v11 = @"kJFXOrientationMonitorDeviceInterfaceOrientationPreviousOrientationUserInfoKey";
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:deviceInterfaceOrientation_lock];
    v12[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  [s_instance_lock unlock];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__JFXOrientationMonitor_setDeviceOrientation___block_invoke;
  v9[3] = &unk_278D79D20;
  v10 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __46__JFXOrientationMonitor_setDeviceOrientation___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"kJFXOrientationMonitorDeviceOrientationNotification" object:0 userInfo:0];

  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"kJFXOrientationMonitorDeviceInterfaceOrientationNotification" object:0 userInfo:*(a1 + 32)];
  }
}

- (int64_t)deviceInterfaceOrientation
{
  [s_instance_lock lock];
  deviceInterfaceOrientation_lock = [(JFXOrientationMonitor *)self deviceInterfaceOrientation_lock];
  [s_instance_lock unlock];
  return deviceInterfaceOrientation_lock;
}

- (int64_t)interfaceOrientation
{
  [s_instance_lock lock];
  interfaceOrientation_lock = [(JFXOrientationMonitor *)self interfaceOrientation_lock];
  [s_instance_lock unlock];
  return interfaceOrientation_lock;
}

- (void)setInterfaceOrientation:(int64_t)orientation
{
  [s_instance_lock lock];
  [(JFXOrientationMonitor *)self setInterfaceOrientation_lock:orientation];
  [s_instance_lock unlock];
  v5 = MEMORY[0x277D85CD0];

  dispatch_async(v5, &__block_literal_global_9);
}

void __49__JFXOrientationMonitor_setInterfaceOrientation___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"kJFXOrientationMonitorInterfaceOrientationNotification" object:0 userInfo:0];
}

- (void)dealloc
{
  if ([(JFXOrientationMonitor *)self darwinNotificationToken]!= -48879)
  {
    notify_cancel([(JFXOrientationMonitor *)self darwinNotificationToken]);
  }

  v3.receiver = self;
  v3.super_class = JFXOrientationMonitor;
  [(JFXOrientationMonitor *)&v3 dealloc];
}

- (void)JFX_UIApplicationDidChangeStatusBarOrientationNotification:(id)notification
{
  keyWindow = [s_instance keyWindow];
  windowScene = [keyWindow windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  v6 = s_instance;

  [v6 setInterfaceOrientation:interfaceOrientation];
}

- (void)JFX_UIApplicationDidEnterBackgroundNotification:(id)notification
{
  notify_cancel([(JFXOrientationMonitor *)self darwinNotificationToken]);

  [(JFXOrientationMonitor *)self setDarwinNotificationToken:4294918417];
}

- (void)JFX_UIApplicationWillEnterForegroundNotification:(id)notification
{
  notificationCopy = notification;
  [(JFXOrientationMonitor *)self JFX_initDarwinNotification];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  darwinNotificationQ = [(JFXOrientationMonitor *)self darwinNotificationQ];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__JFXOrientationMonitor_JFX_UIApplicationWillEnterForegroundNotification___block_invoke;
  v9[3] = &unk_278D79C60;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(darwinNotificationQ, v9);

  [s_instance setDeviceOrientation:v11[3]];
  keyWindow = [(JFXOrientationMonitor *)self keyWindow];
  windowScene = [keyWindow windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  [s_instance setInterfaceOrientation:interfaceOrientation];
  _Block_object_dispose(&v10, 8);
}

uint64_t __74__JFXOrientationMonitor_JFX_UIApplicationWillEnterForegroundNotification___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) JFX_deviceOrientation_darwinNotificationQ];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (void)JFX_initLock
{
  if (JFX_initLock_onceToken != -1)
  {
    +[JFXOrientationMonitor JFX_initLock];
  }
}

uint64_t __37__JFXOrientationMonitor_JFX_initLock__block_invoke()
{
  s_instance_lock = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)JFX_initDarwinNotification
{
  if ([(JFXOrientationMonitor *)self darwinNotificationToken]!= -48879)
  {
    notify_cancel([(JFXOrientationMonitor *)self darwinNotificationToken]);
  }

  [(JFXOrientationMonitor *)self setDarwinNotificationToken:4294918417];
  out_token = -48879;
  uTF8String = [@"com.apple.backboardd.rawOrientation" UTF8String];
  darwinNotificationQ = [(JFXOrientationMonitor *)self darwinNotificationQ];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__JFXOrientationMonitor_JFX_initDarwinNotification__block_invoke;
  v5[3] = &unk_278D7A740;
  v5[4] = self;
  LODWORD(uTF8String) = notify_register_dispatch(uTF8String, &out_token, darwinNotificationQ, v5);

  if (!uTF8String)
  {
    [(JFXOrientationMonitor *)self setDarwinNotificationToken:out_token];
  }
}

uint64_t __51__JFXOrientationMonitor_JFX_initDarwinNotification__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) JFX_deviceOrientation_darwinNotificationQ];
  v2 = s_instance;

  return [v2 setDeviceOrientation:v1];
}

- (int64_t)JFX_deviceOrientation_darwinNotificationQ
{
  darwinNotificationQ = [(JFXOrientationMonitor *)self darwinNotificationQ];
  dispatch_assert_queue_V2(darwinNotificationQ);

  state64 = 0;
  if (notify_get_state([(JFXOrientationMonitor *)self darwinNotificationToken], &state64))
  {
    return 0;
  }

  else
  {
    return state64;
  }
}

@end