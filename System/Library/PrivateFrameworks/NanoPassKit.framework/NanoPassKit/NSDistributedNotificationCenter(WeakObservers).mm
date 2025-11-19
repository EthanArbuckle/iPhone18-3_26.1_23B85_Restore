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
  [a1 removeObserver:a1 name:v11 object:0];
  [a1 addObserver:a1 selector:sel__handleNotification_ name:v11 object:0];
  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = [a1 _internalNameForNotificationName:v11];

  [v14 addObserver:v12 selector:a4 name:v13 object:v10];
}

- (void)weak_removeObserver:()WeakObservers name:object:
{
  v8 = MEMORY[0x277CCAB98];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v13 = [v8 defaultCenter];
  v12 = [a1 _internalNameForNotificationName:v10];

  [v13 removeObserver:v11 name:v12 object:v9];
}

- (void)_handleNotification:()WeakObservers
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v10 = [v4 defaultCenter];
  v6 = [v5 name];
  v7 = [a1 _internalNameForNotificationName:v6];
  v8 = [v5 object];
  v9 = [v5 userInfo];

  [v10 postNotificationName:v7 object:v8 userInfo:v9];
}

@end