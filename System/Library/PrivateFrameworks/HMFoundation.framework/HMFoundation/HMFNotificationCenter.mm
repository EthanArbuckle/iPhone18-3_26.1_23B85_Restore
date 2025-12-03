@interface HMFNotificationCenter
+ (id)defaultCenter;
- (void)addObserver:(id)observer selector:(SEL)selector name:(id)name object:(id)object;
- (void)postNotification:(id)notification;
- (void)postNotificationName:(id)name object:(id)object;
- (void)postNotificationName:(id)name object:(id)object userInfo:(id)info;
- (void)removeObserver:(id)observer;
- (void)removeObserver:(id)observer name:(id)name object:(id)object;
@end

@implementation HMFNotificationCenter

+ (id)defaultCenter
{
  if (qword_280AFC698 != -1)
  {
    dispatch_once(&qword_280AFC698, &__block_literal_global_39);
  }

  v3 = _MergedGlobals_71;

  return v3;
}

uint64_t __38__HMFNotificationCenter_defaultCenter__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals_71;
  _MergedGlobals_71 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)addObserver:(id)observer selector:(SEL)selector name:(id)name object:(id)object
{
  v9 = MEMORY[0x277CCAB98];
  objectCopy = object;
  nameCopy = name;
  observerCopy = observer;
  defaultCenter = [v9 defaultCenter];
  [defaultCenter addObserver:observerCopy selector:selector name:nameCopy object:objectCopy];
}

- (void)removeObserver:(id)observer name:(id)name object:(id)object
{
  v7 = MEMORY[0x277CCAB98];
  objectCopy = object;
  nameCopy = name;
  observerCopy = observer;
  defaultCenter = [v7 defaultCenter];
  [defaultCenter removeObserver:observerCopy name:nameCopy object:objectCopy];
}

- (void)removeObserver:(id)observer
{
  v3 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:observerCopy];
}

- (void)postNotification:(id)notification
{
  v3 = MEMORY[0x277CCAB98];
  notificationCopy = notification;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter postNotification:notificationCopy];
}

- (void)postNotificationName:(id)name object:(id)object userInfo:(id)info
{
  v7 = MEMORY[0x277CCAB98];
  infoCopy = info;
  objectCopy = object;
  nameCopy = name;
  defaultCenter = [v7 defaultCenter];
  [defaultCenter postNotificationName:nameCopy object:objectCopy userInfo:infoCopy];
}

- (void)postNotificationName:(id)name object:(id)object
{
  v5 = MEMORY[0x277CCAB98];
  objectCopy = object;
  nameCopy = name;
  defaultCenter = [v5 defaultCenter];
  [defaultCenter postNotificationName:nameCopy object:objectCopy];
}

@end