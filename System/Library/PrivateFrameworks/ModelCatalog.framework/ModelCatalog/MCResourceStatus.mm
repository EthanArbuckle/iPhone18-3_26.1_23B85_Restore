@interface MCResourceStatus
- (void)encodeWithCoder:(id)coder;
@end

@implementation MCResourceStatus

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_18E31F078(coderCopy);
}

@end