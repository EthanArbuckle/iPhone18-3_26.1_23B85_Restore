@interface NSDistributedNotificationCenter(WeakObservers)
- (void)_handleNotification:()WeakObservers;
- (void)weak_addObserver:()WeakObservers selector:name:object:;
- (void)weak_removeObserver:()WeakObservers name:object:;
@end

@implementation NSDistributedNotificationCenter(WeakObservers)

- (void)weak_addObserver:()WeakObservers selector:name:object:
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  [self removeObserver:self name:v11 object:0];
  [self addObserver:self selector:sel__handleNotification_ name:v11 object:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = [self _internalNameForNotificationName:v11];

  [defaultCenter addObserver:v12 selector:a4 name:v13 object:v10];
}

- (void)weak_removeObserver:()WeakObservers name:object:
{
  v8 = MEMORY[0x277CCAB98];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  defaultCenter = [v8 defaultCenter];
  v12 = [self _internalNameForNotificationName:v10];

  [defaultCenter removeObserver:v11 name:v12 object:v9];
}

- (void)_handleNotification:()WeakObservers
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  defaultCenter = [v4 defaultCenter];
  name = [v5 name];
  v7 = [self _internalNameForNotificationName:name];
  object = [v5 object];
  userInfo = [v5 userInfo];

  [defaultCenter postNotificationName:v7 object:object userInfo:userInfo];
}

@end