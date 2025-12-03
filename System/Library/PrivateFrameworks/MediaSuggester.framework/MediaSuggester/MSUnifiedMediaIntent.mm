@interface MSUnifiedMediaIntent
- (MSIntentWrapper)currentIntent;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
- (void)setBundleID:(id)d;
- (void)setCurrentIntent:(id)intent;
@end

@implementation MSUnifiedMediaIntent

- (MSIntentWrapper)currentIntent
{
  v2 = sub_22C9D1B10();

  return v2;
}

- (void)setCurrentIntent:(id)intent
{
  intentCopy = intent;
  selfCopy = self;
  sub_22C9D1B7C(intentCopy);
}

- (void)setBundleID:(id)d
{
  v4 = sub_22CA20E20();
  v6 = v5;
  selfCopy = self;
  sub_22C9D1CA4(v4, v6);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  MSUnifiedMediaIntent.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  MSUnifiedMediaIntent.description.getter();

  v3 = sub_22CA20E10();

  return v3;
}

@end