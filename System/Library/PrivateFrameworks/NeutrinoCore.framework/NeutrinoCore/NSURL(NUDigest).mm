@interface NSURL(NUDigest)
- (void)nu_updateDigest:()NUDigest;
@end

@implementation NSURL(NUDigest)

- (void)nu_updateDigest:()NUDigest
{
  v6 = a3;
  absoluteString = [self absoluteString];
  if (absoluteString)
  {
    [v6 addString:absoluteString];
  }

  else
  {
    v5 = [self description];
    [v6 addString:v5];
  }
}

@end