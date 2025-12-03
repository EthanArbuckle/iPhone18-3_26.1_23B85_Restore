@interface NSData(NSDataExtensions)
- (BOOL)mf_containsRange:()NSDataExtensions;
- (id)mf_subdataWithRange:()NSDataExtensions;
@end

@implementation NSData(NSDataExtensions)

- (id)mf_subdataWithRange:()NSDataExtensions
{
  v7 = 0;
  if (sDefaultThreshold <= a4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 1;
      }
    }
  }

  v8 = [[MFData alloc] _initWithRange:a3 from:a4 retainingParent:self, v7];

  return v8;
}

- (BOOL)mf_containsRange:()NSDataExtensions
{
  v9.length = [self length];
  v9.location = 0;
  v10.location = a3;
  v10.length = a4;
  v6 = NSIntersectionRange(v9, v10);
  return v6.location == a3 && v6.length == a4;
}

@end