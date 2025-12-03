@interface TransportRequestObject
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransportRequestObject

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_25435F4D4(coderCopy);
}

@end