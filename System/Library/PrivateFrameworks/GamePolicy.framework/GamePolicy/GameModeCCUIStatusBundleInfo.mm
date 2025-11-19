@interface GameModeCCUIStatusBundleInfo
- (_TtC10GamePolicy28GameModeCCUIStatusBundleInfo)init;
- (_TtC10GamePolicy28GameModeCCUIStatusBundleInfo)initWithExecutableDisplayName:(id)a3 bundleIdentifier:(id)a4 isSystemService:(BOOL)a5 isAAAGame:(BOOL)a6 usedRecently:(BOOL)a7 state:(int64_t)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GameModeCCUIStatusBundleInfo

- (_TtC10GamePolicy28GameModeCCUIStatusBundleInfo)initWithExecutableDisplayName:(id)a3 bundleIdentifier:(id)a4 isSystemService:(BOOL)a5 isAAAGame:(BOOL)a6 usedRecently:(BOOL)a7 state:(int64_t)a8
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
  *(&self->super.isa + OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isSystemService) = a5;
  *(&self->super.isa + OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_isAAAGame) = a6;
  *(&self->super.isa + OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_usedRecently) = a7;
  *(&self->super.isa + OBJC_IVAR____TtC10GamePolicy28GameModeCCUIStatusBundleInfo_state) = a8;
  v21.receiver = self;
  v21.super_class = type metadata accessor for GameModeCCUIStatusBundleInfo();
  return [(GameModeCCUIStatusBundleInfo *)&v21 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E5C0E58(v4);
}

- (_TtC10GamePolicy28GameModeCCUIStatusBundleInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end