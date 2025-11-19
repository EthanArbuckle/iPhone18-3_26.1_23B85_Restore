@interface NSMutableDictionary(CalClassAdditions)
- (id)CALsafeObjectForKey:()CalClassAdditions calculatedWithBlock:;
@end

@implementation NSMutableDictionary(CalClassAdditions)

- (id)CALsafeObjectForKey:()CalClassAdditions calculatedWithBlock:
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  objc_sync_enter(v8);
  v9 = CalCachedObjectForKeyWithCalculateBlock(v8, v6, v7);
  objc_sync_exit(v8);

  return v9;
}

@end