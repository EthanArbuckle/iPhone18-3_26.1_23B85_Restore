@interface FAParentalControlsRequest
- (FAParentalControlsRequest)init;
@end

@implementation FAParentalControlsRequest

- (FAParentalControlsRequest)init
{
  v3 = OBJC_IVAR___FAParentalControlsRequest_familyCircleRequest;
  *(&self->super.isa + v3) = [objc_allocWithZone(FAFamilyCircleRequest) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for FAParentalControlsRequest();
  return [(FAParentalControlsRequest *)&v5 init];
}

@end