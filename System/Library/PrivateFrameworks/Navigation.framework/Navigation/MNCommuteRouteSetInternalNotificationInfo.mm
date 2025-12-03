@interface MNCommuteRouteSetInternalNotificationInfo
- (MNCommuteRouteSetInternalNotificationInfo)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNCommuteRouteSetInternalNotificationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1D3162EC4(coderCopy);
}

- (MNCommuteRouteSetInternalNotificationInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end