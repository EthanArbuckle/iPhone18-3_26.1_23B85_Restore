@interface CoordinationRequest
- (void)encodeWithCoder:(id)coder;
@end

@implementation CoordinationRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_25430013C(coderCopy);
}

@end