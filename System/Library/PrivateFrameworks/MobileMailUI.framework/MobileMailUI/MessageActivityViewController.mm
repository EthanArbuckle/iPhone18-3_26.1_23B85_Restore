@interface MessageActivityViewController
+ (OS_os_log)log;
- (MessageActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities;
@end

@implementation MessageActivityViewController

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__MessageActivityViewController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __36__MessageActivityViewController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_0;
  log_log_0 = v1;
}

- (MessageActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities
{
  v13[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  activitiesCopy = activities;
  v12.receiver = self;
  v12.super_class = MessageActivityViewController;
  v8 = [(MessageActivityViewController *)&v12 initWithActivityItems:itemsCopy applicationActivities:activitiesCopy];
  if (v8)
  {
    v13[0] = *MEMORY[0x277D54780];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [(MessageActivityViewController *)v8 setExcludedActivityTypes:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

@end