@interface HMFNotificationCenter
+ (id)defaultCenter;
- (void)addObserver:(id)a3 selector:(SEL)a4 name:(id)a5 object:(id)a6;
- (void)postNotification:(id)a3;
- (void)postNotificationName:(id)a3 object:(id)a4;
- (void)postNotificationName:(id)a3 object:(id)a4 userInfo:(id)a5;
- (void)removeObserver:(id)a3;
- (void)removeObserver:(id)a3 name:(id)a4 object:(id)a5;
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

- (void)addObserver:(id)a3 selector:(SEL)a4 name:(id)a5 object:(id)a6
{
  v9 = MEMORY[0x277CCAB98];
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [v9 defaultCenter];
  [v13 addObserver:v12 selector:a4 name:v11 object:v10];
}

- (void)removeObserver:(id)a3 name:(id)a4 object:(id)a5
{
  v7 = MEMORY[0x277CCAB98];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 defaultCenter];
  [v11 removeObserver:v10 name:v9 object:v8];
}

- (void)removeObserver:(id)a3
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];
}

- (void)postNotification:(id)a3
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 postNotification:v4];
}

- (void)postNotificationName:(id)a3 object:(id)a4 userInfo:(id)a5
{
  v7 = MEMORY[0x277CCAB98];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 defaultCenter];
  [v11 postNotificationName:v10 object:v9 userInfo:v8];
}

- (void)postNotificationName:(id)a3 object:(id)a4
{
  v5 = MEMORY[0x277CCAB98];
  v6 = a4;
  v7 = a3;
  v8 = [v5 defaultCenter];
  [v8 postNotificationName:v7 object:v6];
}

@end