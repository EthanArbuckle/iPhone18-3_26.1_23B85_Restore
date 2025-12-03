@interface DOCGoToRecentLocation
- (DOCGoToRecentLocation)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DOCGoToRecentLocation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  DOCGoToRecentLocation.encode(with:)(coderCopy);
}

- (DOCGoToRecentLocation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end