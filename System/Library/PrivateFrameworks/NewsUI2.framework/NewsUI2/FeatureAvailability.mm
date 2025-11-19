@interface FeatureAvailability
- (BOOL)puzzlesEnabled;
- (_TtC16NewsSubscription26PaidBundleViaOfferSettings)paidBundleViaOfferAvailability;
@end

@implementation FeatureAvailability

- (BOOL)puzzlesEnabled
{

  if (sub_2187AFEC4())
  {
    v2 = sub_2187D9FE0();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (_TtC16NewsSubscription26PaidBundleViaOfferSettings)paidBundleViaOfferAvailability
{

  sub_218831784();
  sub_218831908();
  sub_218831A20();
  sub_218831A48();
  sub_218831BB4();
  sub_218831C34();
  sub_218831CE4();
  v2 = objc_allocWithZone(sub_219BE4554());
  v3 = sub_219BE4544();

  return v3;
}

@end