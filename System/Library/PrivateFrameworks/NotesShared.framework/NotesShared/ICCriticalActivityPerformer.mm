@interface ICCriticalActivityPerformer
+ (void)sharedPerformCriticalBackgroundActivityWithReason:(id)a3 block:(id)a4;
@end

@implementation ICCriticalActivityPerformer

+ (void)sharedPerformCriticalBackgroundActivityWithReason:(id)a3 block:(id)a4
{
  v5 = MEMORY[0x277CCAC38];
  v6 = a4;
  v7 = a3;
  v8 = [v5 processInfo];
  [v8 performExpiringActivityWithReason:v7 usingBlock:v6];
}

@end