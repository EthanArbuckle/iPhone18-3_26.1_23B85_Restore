@interface MSIntentWrapper
- (MSMediaIntentProtocol)intent;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSIntentWrapper

- (MSMediaIntentProtocol)intent
{
  v2 = sub_22C9D07FC();

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  MSIntentWrapper.encode(with:)(v4);
}

@end