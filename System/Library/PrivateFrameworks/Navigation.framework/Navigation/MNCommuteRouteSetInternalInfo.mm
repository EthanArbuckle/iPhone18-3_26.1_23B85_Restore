@interface MNCommuteRouteSetInternalInfo
- (MNCommuteRouteSetInternalInfo)init;
- (MNCommuteRouteSetInternalInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNCommuteRouteSetInternalInfo

- (void)encodeWithCoder:(id)coder
{
  v5 = *(&self->super.isa + OBJC_IVAR___MNCommuteRouteSetInternalInfo_displayedBannerInfo);
  _s16NotificationInfoCMa();
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_1D3277190();
  v8 = sub_1D32770B0();
  [coderCopy encodeObject:v7 forKey:v8];
}

- (MNCommuteRouteSetInternalInfo)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  _s16NotificationInfoCMa();
  coderCopy = coder;
  v7 = sub_1D32775D0();
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v8 = v7;
  }

  *(&self->super.isa + OBJC_IVAR___MNCommuteRouteSetInternalInfo_displayedBannerInfo) = v8;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(MNCommuteRouteSetInternalInfo *)&v11 init];

  return v9;
}

- (MNCommuteRouteSetInternalInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end