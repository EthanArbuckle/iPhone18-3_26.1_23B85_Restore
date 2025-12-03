@interface UseCaseAvailabilityInfo
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UseCaseAvailabilityInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  UseCaseAvailabilityInfo.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  UseCaseAvailabilityInfo.description.getter();

  v3 = sub_18E44EA8C();

  return v3;
}

@end