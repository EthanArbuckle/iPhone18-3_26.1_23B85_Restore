@interface NSURL(NUDigest)
- (void)nu_updateDigest:()NUDigest;
@end

@implementation NSURL(NUDigest)

- (void)nu_updateDigest:()NUDigest
{
  v6 = a3;
  v4 = [a1 absoluteString];
  if (v4)
  {
    [v6 addString:v4];
  }

  else
  {
    v5 = [a1 description];
    [v6 addString:v5];
  }
}

@end