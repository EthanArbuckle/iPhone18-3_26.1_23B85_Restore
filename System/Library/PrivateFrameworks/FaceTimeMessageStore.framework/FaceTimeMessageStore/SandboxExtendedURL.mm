@interface SandboxExtendedURL
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SandboxExtendedURL

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BC8313F8(v4);
}

- (NSString)description
{
  v2 = self;
  sub_1BC831C48();

  v3 = sub_1BC8F7BE4();

  return v3;
}

@end