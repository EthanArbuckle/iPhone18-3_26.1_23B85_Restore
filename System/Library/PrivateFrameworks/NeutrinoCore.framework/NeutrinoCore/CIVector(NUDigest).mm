@interface CIVector(NUDigest)
- (void)nu_updateDigest:()NUDigest;
@end

@implementation CIVector(NUDigest)

- (void)nu_updateDigest:()NUDigest
{
  v4 = a3;
  objc_msgSend(v4, "addCString:", "CIVector(");
  v5 = [self count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      [self valueAtIndex:i];
      v9 = v8;
      [v4 addBytes:&v9 length:8];
    }
  }

  [v4 addCString:"]");
}

@end