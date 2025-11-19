@interface NSObject(MutableDeepCopy)
- (id)mutableDeepCopy;
@end

@implementation NSObject(MutableDeepCopy)

- (id)mutableDeepCopy
{
  if (objc_opt_respondsToSelector())
  {

    return [a1 mutableCopy];
  }

  else if (objc_opt_respondsToSelector())
  {

    return [a1 copy];
  }

  else
  {

    return a1;
  }
}

@end