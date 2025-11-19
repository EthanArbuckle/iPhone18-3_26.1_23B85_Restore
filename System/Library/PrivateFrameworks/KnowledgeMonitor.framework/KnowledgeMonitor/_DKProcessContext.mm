@interface _DKProcessContext
+ (BOOL)isRunningInUserContext;
@end

@implementation _DKProcessContext

+ (BOOL)isRunningInUserContext
{
  if (isRunningInUserContext_onceToken != -1)
  {
    +[_DKProcessContext isRunningInUserContext];
  }

  return isRunningInUserContext_userContext;
}

@end