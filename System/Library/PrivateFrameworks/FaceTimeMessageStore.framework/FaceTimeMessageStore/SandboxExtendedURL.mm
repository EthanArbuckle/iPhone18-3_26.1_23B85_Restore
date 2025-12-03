@interface SandboxExtendedURL
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SandboxExtendedURL

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1BC8313F8(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_1BC831C48();

  v3 = sub_1BC8F7BE4();

  return v3;
}

@end