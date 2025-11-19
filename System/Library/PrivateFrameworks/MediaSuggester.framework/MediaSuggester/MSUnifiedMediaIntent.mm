@interface MSUnifiedMediaIntent
- (MSIntentWrapper)currentIntent;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
- (void)setBundleID:(id)a3;
- (void)setCurrentIntent:(id)a3;
@end

@implementation MSUnifiedMediaIntent

- (MSIntentWrapper)currentIntent
{
  v2 = sub_22C9D1B10();

  return v2;
}

- (void)setCurrentIntent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22C9D1B7C(v4);
}

- (void)setBundleID:(id)a3
{
  v4 = sub_22CA20E20();
  v6 = v5;
  v7 = self;
  sub_22C9D1CA4(v4, v6);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  MSUnifiedMediaIntent.encode(with:)(v4);
}

- (NSString)description
{
  v2 = self;
  MSUnifiedMediaIntent.description.getter();

  v3 = sub_22CA20E10();

  return v3;
}

@end