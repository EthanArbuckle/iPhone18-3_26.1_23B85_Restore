@interface CRXUNotificationCenter
+ (id)sharedInstance;
- (int)addBlockObserver:(id)observer queue:(id)queue name:(id)name;
- (int)addObserver:(id)observer selector:(SEL)selector queue:(id)queue name:(id)name;
- (void)postNotificationName:(id)name;
@end

@implementation CRXUNotificationCenter

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CRXUNotificationCenter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)postNotificationName:(id)name
{
  uTF8String = [name UTF8String];

  notify_post(uTF8String);
}

- (int)addBlockObserver:(id)observer queue:(id)queue name:(id)name
{
  observerCopy = observer;
  out_token = 0;
  nameCopy = name;
  queueCopy = queue;
  uTF8String = [name UTF8String];
  queue = [queueCopy queue];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__CRXUNotificationCenter_addBlockObserver_queue_name___block_invoke;
  v14[3] = &unk_278EA0D20;
  v15 = observerCopy;
  v12 = observerCopy;
  notify_register_dispatch(uTF8String, &out_token, queue, v14);

  LODWORD(uTF8String) = out_token;
  return uTF8String;
}

- (int)addObserver:(id)observer selector:(SEL)selector queue:(id)queue name:(id)name
{
  observerCopy = observer;
  queueCopy = queue;
  nameCopy = name;
  out_token = 0;
  objc_initWeak(&location, observerCopy);
  uTF8String = [nameCopy UTF8String];
  queue = [queueCopy queue];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __58__CRXUNotificationCenter_addObserver_selector_queue_name___block_invoke;
  handler[3] = &unk_278EA0D48;
  objc_copyWeak(v18, &location);
  v18[1] = selector;
  v14 = nameCopy;
  v17 = v14;
  notify_register_dispatch(uTF8String, &out_token, queue, handler);

  LODWORD(nameCopy) = out_token;
  objc_destroyWeak(v18);
  objc_destroyWeak(&location);

  return nameCopy;
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