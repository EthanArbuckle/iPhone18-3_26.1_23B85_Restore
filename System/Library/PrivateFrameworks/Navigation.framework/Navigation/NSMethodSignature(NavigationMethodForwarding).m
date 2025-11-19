@interface NSMethodSignature(NavigationMethodForwarding)
+ (id)_navigation_methodSignatureForEmptyMethod;
@end

@implementation NSMethodSignature(NavigationMethodForwarding)

+ (id)_navigation_methodSignatureForEmptyMethod
{
  if (_navigation_methodSignatureForEmptyMethod_onceToken != -1)
  {
    dispatch_once(&_navigation_methodSignatureForEmptyMethod_onceToken, &__block_literal_global_438);
  }

  v1 = _navigation_methodSignatureForEmptyMethod_methodSignature;

  return v1;
}

@end