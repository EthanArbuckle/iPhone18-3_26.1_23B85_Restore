@interface NSMutableDictionary(CalClassAdditions)
- (id)CALsafeObjectForKey:()CalClassAdditions calculatedWithBlock:;
@end

@implementation NSMutableDictionary(CalClassAdditions)

- (id)CALsafeObjectForKey:()CalClassAdditions calculatedWithBlock:
{
  v6 = a3;
  v7 = a4;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = CalCachedObjectForKeyWithCalculateBlock(selfCopy, v6, v7);
  objc_sync_exit(selfCopy);

  return v9;
}

@end