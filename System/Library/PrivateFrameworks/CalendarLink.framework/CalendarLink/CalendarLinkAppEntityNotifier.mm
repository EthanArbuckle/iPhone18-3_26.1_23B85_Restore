@interface CalendarLinkAppEntityNotifier
+ (id)sharedNotifier;
- (BOOL)isObserved;
- (CalendarLinkAppEntityNotifier)init;
@end

@implementation CalendarLinkAppEntityNotifier

+ (id)sharedNotifier
{
  if (sharedNotifier_onceToken != -1)
  {
    +[CalendarLinkAppEntityNotifier sharedNotifier];
  }

  v3 = sharedNotifier_notifier;

  return v3;
}

uint64_t __47__CalendarLinkAppEntityNotifier_sharedNotifier__block_invoke()
{
  sharedNotifier_notifier = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (CalendarLinkAppEntityNotifier)init
{
  v6.receiver = self;
  v6.super_class = CalendarLinkAppEntityNotifier;
  v2 = [(CalendarLinkAppEntityNotifier *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CF7828]) initWithQueue:0 minimumInterval:&__block_literal_global_7 andBlock:3.0];
    rateLimitingQueue = v2->_rateLimitingQueue;
    v2->_rateLimitingQueue = v3;
  }

  return v2;
}

uint64_t __37__CalendarLinkAppEntityNotifier_init__block_invoke()
{
  v0 = NSClassFromString(&cfstr_Calendarlinkob.isa);
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [(objc_class *)v0 notifyObservers];
  }

  return result;
}

- (BOOL)isObserved
{
  v2 = NSClassFromString(&cfstr_Calendarlinkob.isa);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(objc_class *)v2 isObserved];
}

@end