@interface CalDAVRefreshContext
+ (id)defaultContext;
@end

@implementation CalDAVRefreshContext

+ (id)defaultContext
{
  v2 = objc_opt_new();

  return v2;
}

@end