@interface MSComposeAnalytics
+ (EFScheduler)scheduler;
@end

@implementation MSComposeAnalytics

+ (EFScheduler)scheduler
{
  if (scheduler_onceToken != -1)
  {
    +[MSComposeAnalytics scheduler];
  }

  v3 = scheduler_scheduler;

  return v3;
}

void __31__MSComposeAnalytics_scheduler__block_invoke()
{
  v0 = [MEMORY[0x277D071B8] serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.compose-analytics" qualityOfService:-1];
  v1 = scheduler_scheduler;
  scheduler_scheduler = v0;
}

@end