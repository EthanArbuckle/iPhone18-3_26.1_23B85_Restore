@interface NSObject(MutableDeepCopy)
- (id)mutableDeepCopy;
@end

@implementation NSObject(MutableDeepCopy)

- (id)mutableDeepCopy
{
  if (objc_opt_respondsToSelector())
  {

    return [self mutableCopy];
  }

  else if (objc_opt_respondsToSelector())
  {

    return [self copy];
  }

  else
  {

    return self;
  }
}

@end