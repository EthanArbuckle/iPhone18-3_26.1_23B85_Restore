@interface NearbyGroupCreationRequest
- (_TtC14NearbySessions26NearbyGroupCreationRequest)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NearbyGroupCreationRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  NearbyGroupCreationRequest.encode(with:)(coderCopy);
}

- (_TtC14NearbySessions26NearbyGroupCreationRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end