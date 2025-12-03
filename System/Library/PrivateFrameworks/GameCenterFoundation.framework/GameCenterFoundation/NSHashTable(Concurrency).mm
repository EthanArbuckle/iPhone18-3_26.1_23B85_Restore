@interface NSHashTable(Concurrency)
- (id)_gkSafeCopy;
- (void)_gkSafeAddObject:()Concurrency;
- (void)_gkSafeRemoveObject:()Concurrency;
@end

@implementation NSHashTable(Concurrency)

- (void)_gkSafeAddObject:()Concurrency
{
  v5 = a3;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [selfCopy addObject:v5];
  objc_sync_exit(selfCopy);
}

- (void)_gkSafeRemoveObject:()Concurrency
{
  v5 = a3;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [selfCopy removeObject:v5];
  objc_sync_exit(selfCopy);
}

- (id)_gkSafeCopy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = [selfCopy copy];
  objc_sync_exit(selfCopy);

  return v2;
}

@end