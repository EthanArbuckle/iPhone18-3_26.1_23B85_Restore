@interface NSURL(OCPURLAdditions)
+ (id)URLWithPackagePart:()OCPURLAdditions;
- (BOOL)isInternalToPackage;
- (uint64_t)initWithPackagePart:()OCPURLAdditions;
@end

@implementation NSURL(OCPURLAdditions)

- (BOOL)isInternalToPackage
{
  host = [self host];
  if (host)
  {
    v3 = 0;
  }

  else
  {
    scheme = [self scheme];
    v3 = scheme == 0;
  }

  return v3;
}

+ (id)URLWithPackagePart:()OCPURLAdditions
{
  v4 = a3;
  v5 = [[self alloc] initWithPackagePart:v4];

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

  v6 = [self initWithString:v4];

  return v6;
}

@end