@interface EFMainThreadScheduler
- (EFMainThreadScheduler)init;
@end

@implementation EFMainThreadScheduler

- (EFMainThreadScheduler)init
{
  v3.receiver = self;
  v3.super_class = EFMainThreadScheduler;
  return [(EFQueueScheduler *)&v3 initWithQueue:MEMORY[0x1E69E96A0]];
}

@end