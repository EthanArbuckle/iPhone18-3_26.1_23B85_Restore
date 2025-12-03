@interface NearbyGroupConnectionInfo
- (_TtC14NearbySessions25NearbyGroupConnectionInfo)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NearbyGroupConnectionInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  NearbyGroupConnectionInfo.encode(with:)(coderCopy);
}

- (_TtC14NearbySessions25NearbyGroupConnectionInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end