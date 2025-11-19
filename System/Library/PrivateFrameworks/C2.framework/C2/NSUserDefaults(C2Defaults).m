@interface NSUserDefaults(C2Defaults)
+ (id)c2DefaultsDomain;
@end

@implementation NSUserDefaults(C2Defaults)

+ (id)c2DefaultsDomain
{
  if (c2DefaultsDomain_once != -1)
  {
    +[NSUserDefaults(C2Defaults) c2DefaultsDomain];
  }

  v1 = c2DefaultsDomain_c2DefaultsDomain;

  return v1;
}

@end