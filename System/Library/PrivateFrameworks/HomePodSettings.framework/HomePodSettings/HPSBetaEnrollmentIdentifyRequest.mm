@interface HPSBetaEnrollmentIdentifyRequest
- (BOOL)isEqual:(id)equal;
@end

@implementation HPSBetaEnrollmentIdentifyRequest

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2543A3158();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = BetaEnrollment.IdentifyRequest.isEqual(_:)(v8);

  sub_2542E1050(v8);
  return v6 & 1;
}

@end