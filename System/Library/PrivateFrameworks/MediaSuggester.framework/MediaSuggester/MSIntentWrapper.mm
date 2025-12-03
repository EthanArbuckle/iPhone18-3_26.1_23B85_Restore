@interface MSIntentWrapper
- (MSMediaIntentProtocol)intent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSIntentWrapper

- (MSMediaIntentProtocol)intent
{
  v2 = sub_22C9D07FC();

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  MSIntentWrapper.encode(with:)(coderCopy);
}

@end