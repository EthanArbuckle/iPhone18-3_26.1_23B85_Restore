@interface StubFeatureAvailability
- (void)setPaidBundleViaOfferAvailability:(id)availability;
@end

@implementation StubFeatureAvailability

- (void)setPaidBundleViaOfferAvailability:(id)availability
{
  paidBundleViaOfferAvailability = self->paidBundleViaOfferAvailability;
  self->paidBundleViaOfferAvailability = availability;
  availabilityCopy = availability;
}

@end