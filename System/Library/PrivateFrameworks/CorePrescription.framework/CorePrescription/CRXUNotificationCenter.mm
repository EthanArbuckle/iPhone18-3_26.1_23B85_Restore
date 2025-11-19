@interface CRXUNotificationCenter
+ (id)sharedInstance;
- (int)addBlockObserver:(id)a3 queue:(id)a4 name:(id)a5;
- (int)addObserver:(id)a3 selector:(SEL)a4 queue:(id)a5 name:(id)a6;
- (void)postNotificationName:(id)a3;
@end

@implementation CRXUNotificationCenter

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CRXUNotificationCenter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance___once__LINE___1 != -1)
  {
    dispatch_once(&sharedInstance___once__LINE___1, block);
  }

  v2 = sharedInstance_instance_1;

  return v2;
}

uint64_t __40__CRXUNotificationCenter_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)postNotificationName:(id)a3
{
  v3 = [a3 UTF8String];

  notify_post(v3);
}

- (int)addBlockObserver:(id)a3 queue:(id)a4 name:(id)a5
{
  v7 = a3;
  out_token = 0;
  v8 = a5;
  v9 = a4;
  v10 = [a5 UTF8String];
  v11 = [v9 queue];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__CRXUNotificationCenter_addBlockObserver_queue_name___block_invoke;
  v14[3] = &unk_278EA0D20;
  v15 = v7;
  v12 = v7;
  notify_register_dispatch(v10, &out_token, v11, v14);

  LODWORD(v10) = out_token;
  return v10;
}

- (int)addObserver:(id)a3 selector:(SEL)a4 queue:(id)a5 name:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  out_token = 0;
  objc_initWeak(&location, v9);
  v12 = [v11 UTF8String];
  v13 = [v10 queue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __58__CRXUNotificationCenter_addObserver_selector_queue_name___block_invoke;
  handler[3] = &unk_278EA0D48;
  objc_copyWeak(v18, &location);
  v18[1] = a4;
  v14 = v11;
  v17 = v14;
  notify_register_dispatch(v12, &out_token, v13, handler);

  LODWORD(v11) = out_token;
  objc_destroyWeak(v18);
  objc_destroyWeak(&location);

  return v11;
}

void __58__CRXUNotificationCenter_addObserver_selector_queue_name___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 48);
    if (objc_opt_respondsToSelector())
    {
      ([WeakRetained methodForSelector:*(a1 + 48)])(WeakRetained, *(a1 + 48), *(a1 + 32));
    }
  }

  else
  {
    notify_cancel(a2);
  }
}

@end