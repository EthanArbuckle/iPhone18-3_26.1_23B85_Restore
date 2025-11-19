@interface _CDUncachedSentinel
+ (id)sharedInstance;
@end

@implementation _CDUncachedSentinel

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance__pasOnceToken2 != -1)
  {
    +[_CDUncachedSentinel sharedInstance];
  }

  v0 = sharedInstance__pasExprOnceResult;

  return v0;
}

@end