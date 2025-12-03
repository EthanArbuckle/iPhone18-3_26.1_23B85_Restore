@interface ICCriticalActivityPerformer
+ (void)sharedPerformCriticalBackgroundActivityWithReason:(id)reason block:(id)block;
@end

@implementation ICCriticalActivityPerformer

+ (void)sharedPerformCriticalBackgroundActivityWithReason:(id)reason block:(id)block
{
  v5 = MEMORY[0x277CCAC38];
  blockCopy = block;
  reasonCopy = reason;
  processInfo = [v5 processInfo];
  [processInfo performExpiringActivityWithReason:reasonCopy usingBlock:blockCopy];
}

@end