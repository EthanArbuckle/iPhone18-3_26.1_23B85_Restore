@interface UseCaseAvailabilityInfo
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UseCaseAvailabilityInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  UseCaseAvailabilityInfo.encode(with:)(v4);
}

- (NSString)description
{
  v2 = self;
  UseCaseAvailabilityInfo.description.getter();

  v3 = sub_18E44EA8C();

  return v3;
}

@end