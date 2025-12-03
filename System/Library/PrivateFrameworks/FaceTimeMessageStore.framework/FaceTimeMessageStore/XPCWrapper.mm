@interface XPCWrapper
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCWrapper

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1BC805F7C(coderCopy);
}

@end