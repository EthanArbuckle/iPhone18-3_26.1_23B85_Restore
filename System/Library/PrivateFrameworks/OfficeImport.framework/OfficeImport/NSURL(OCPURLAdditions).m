@interface NSURL(OCPURLAdditions)
+ (id)URLWithPackagePart:()OCPURLAdditions;
- (BOOL)isInternalToPackage;
- (uint64_t)initWithPackagePart:()OCPURLAdditions;
@end

@implementation NSURL(OCPURLAdditions)

- (BOOL)isInternalToPackage
{
  v2 = [a1 host];
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v4 = [a1 scheme];
    v3 = v4 == 0;
  }

  return v3;
}

+ (id)URLWithPackagePart:()OCPURLAdditions
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPackagePart:v4];

  return v5;
}

- (uint64_t)initWithPackagePart:()OCPURLAdditions
{
  v4 = a3;
  if (([v4 isAbsolutePath] & 1) == 0)
  {
    v5 = [@"/" stringByAppendingPathComponent:v4];

    v4 = v5;
  }

  v6 = [a1 initWithString:v4];

  return v6;
}

@end