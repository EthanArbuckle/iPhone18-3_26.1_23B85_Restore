@interface Message
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation Message

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1BC869894();
}

- (NSString)description
{
  selfCopy = self;
  sub_1BC86D344();

  v3 = sub_1BC8F7BE4();

  return v3;
}

@end