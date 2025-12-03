@interface SiriResourceAvailabilityInfo
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriResourceAvailabilityInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SiriResourceAvailabilityInfo.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  SiriResourceAvailabilityInfo.description.getter();

  v3 = sub_18E44EA8C();

  return v3;
}

@end