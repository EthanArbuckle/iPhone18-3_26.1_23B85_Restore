@interface NSObject(DESExtensions)
- (void)_fides_objectByReplacingValue:()DESExtensions withValue:;
@end

@implementation NSObject(DESExtensions)

- (void)_fides_objectByReplacingValue:()DESExtensions withValue:
{
  v6 = a4;
  if ([a3 isEqual:a1])
  {
    v7 = v6;
  }

  else
  {
    v7 = a1;
  }

  v8 = v7;

  return v7;
}

@end