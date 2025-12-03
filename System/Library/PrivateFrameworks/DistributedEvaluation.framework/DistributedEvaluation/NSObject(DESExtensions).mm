@interface NSObject(DESExtensions)
- (void)_fides_objectByReplacingValue:()DESExtensions withValue:;
@end

@implementation NSObject(DESExtensions)

- (void)_fides_objectByReplacingValue:()DESExtensions withValue:
{
  v6 = a4;
  if ([a3 isEqual:self])
  {
    selfCopy = v6;
  }

  else
  {
    selfCopy = self;
  }

  v8 = selfCopy;

  return selfCopy;
}

@end