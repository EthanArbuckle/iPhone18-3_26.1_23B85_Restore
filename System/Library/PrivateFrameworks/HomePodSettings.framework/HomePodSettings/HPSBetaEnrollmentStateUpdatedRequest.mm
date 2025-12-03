@interface HPSBetaEnrollmentStateUpdatedRequest
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HPSBetaEnrollmentStateUpdatedRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  BetaEnrollment.StateUpdatedRequest.encode(with:)(coderCopy);
}

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

  v6 = BetaEnrollment.StateUpdatedRequest.isEqual(_:)(v8);

  sub_2542E1050(v8);
  return v6;
}

@end