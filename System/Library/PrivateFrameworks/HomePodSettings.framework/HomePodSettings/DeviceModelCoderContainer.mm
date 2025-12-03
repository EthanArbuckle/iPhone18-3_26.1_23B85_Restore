@interface DeviceModelCoderContainer
- (void)encodeWithCoder:(id)coder;
@end

@implementation DeviceModelCoderContainer

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2542E0304(coderCopy);
}

@end