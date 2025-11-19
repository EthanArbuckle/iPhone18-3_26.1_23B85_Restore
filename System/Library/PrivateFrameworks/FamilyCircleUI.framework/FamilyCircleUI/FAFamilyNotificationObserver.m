@interface FAFamilyNotificationObserver
+ (id)familyNotificationObserverWithNotificationHandler:(id)a3;
+ (void)initialize;
- (id)_initWithNotificationHandler:(id)a3;
- (void)_startObserving;
- (void)dealloc;
- (void)stopObserving;
@end

@implementation FAFamilyNotificationObserver

+ (void)initialize
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___FAFamilyNotificationObserver;
  objc_msgSendSuper2(&v2, sel_initialize);
  if (initialize_onceToken != -1)
  {
    +[FAFamilyNotificationObserver initialize];
  }
}

CFMutableArrayRef __42__FAFamilyNotificationObserver_initialize__block_invoke()
{
  result = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
  s_knownObservers = result;
  return result;
}

+ (id)familyNotificationObserverWithNotificationHandler:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithNotificationHandler:v4];

  [v5 _startObserving];

  return v5;
}

- (id)_initWithNotificationHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FAFamilyNotificationObserver;
  v5 = [(FAFamilyNotificationObserver *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    notificationHandler = v5->_notificationHandler;
    v5->_notificationHandler = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(FAFamilyNotificationObserver *)self stopObserving];
  v3.receiver = self;
  v3.super_class = FAFamilyNotificationObserver;
  [(FAFamilyNotificationObserver *)&v3 dealloc];
}

- (void)_startObserving
{
  if (!self->_observing)
  {
    self->_observing = 1;
    CFArrayAppendValue(s_knownObservers, self);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v5 = getINFamilyDidChangeNotification();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _AAUIHandleFamilyDidChangeNotification, v5, 0, 0);
  }
}

- (void)stopObserving
{
  if (self->_observing)
  {
    self->_observing = 0;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v4 = getINFamilyDidChangeNotification();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);
    v5 = s_knownObservers;
    v10.length = CFArrayGetCount(s_knownObservers);
    v10.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v10, self);
    if (FirstIndexOfValue != -1)
    {
      v7 = FirstIndexOfValue;
      v8 = s_knownObservers;

      CFArrayRemoveValueAtIndex(v8, v7);
    }
  }
}

@end