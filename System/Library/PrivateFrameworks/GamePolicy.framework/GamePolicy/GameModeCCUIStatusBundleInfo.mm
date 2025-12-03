@interface GameModeCCUIStatusBundleInfo
- (_TtC10GamePolicy28GameModeCCUIStatusBundleInfo)init;
- (_TtC10GamePolicy28GameModeCCUIStatusBundleInfo)initWithExecutableDisplayName:(id)name bundleIdentifier:(id)identifier isSystemService:(BOOL)service isAAAGame:(BOOL)game usedRecently:(BOOL)recently state:(int64_t)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GameModeCCUIStatusBundleInfo

- (_TtC10GamePolicy28GameModeCCUIStatusBundleInfo)initWithExecutableDisplayName:(id)name bundleIdentifier:(id)identifier isSystemService:(BOOL)service isAAAGame:(BOOL)game usedRecently:(BOOL)recently state:(int64_t)state
{
  v13 = sub_24E5D2CD0();
  v15 = v14;
  v16 = sub_24E5D2CD0();
  v17 = (self + OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_executableDisplayName);
  *v17 = v13;
  v17[1] = v15;
  v18 = (self + OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_bundleIdentifier);
  *v18 = v16;
  v18[1] = v19;
  *(&self->super.isa + OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isSystemService) = service;
  *(&self->super.isa + OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isAAAGame) = game;
  *(&self->super.isa + OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_usedRecently) = recently;
  *(&self->super.isa + OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_state) = state;
  v21.receiver = self;
  v21.super_class = type metadata accessor for GameModeCCUIStatusBundleInfo();
  return [(GameModeCCUIStatusBundleInfo *)&v21 init];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_24E5C0E58(coderCopy);
}

- (_TtC10GamePolicy28GameModeCCUIStatusBundleInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end