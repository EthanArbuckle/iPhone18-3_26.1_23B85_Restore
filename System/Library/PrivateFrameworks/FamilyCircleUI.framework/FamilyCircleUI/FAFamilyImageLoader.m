@interface FAFamilyImageLoader
+ (_TtC14FamilyCircleUI19FAFamilyImageLoader)shared;
- (NSDictionary)_authResults;
- (NSDictionary)authResults;
- (_TtC14FamilyCircleUI19FAFamilyImageLoader)init;
- (void)setAuthResults:(id)a3;
- (void)set_authResults:(id)a3;
@end

@implementation FAFamilyImageLoader

+ (_TtC14FamilyCircleUI19FAFamilyImageLoader)shared
{
  if (qword_27CDB4F88 != -1)
  {
    swift_once();
  }

  v3 = off_27CDB9878;

  return v3;
}

- (NSDictionary)_authResults
{
  v3 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__authResults;
  swift_beginAccess();
  v4 = *(self + v3);

  v5 = sub_21BE288EC();

  return v5;
}

- (void)set_authResults:(id)a3
{
  v4 = sub_21BE2890C();
  v5 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__authResults;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (NSDictionary)authResults
{
  swift_getKeyPath();
  sub_21BC75D70();
  v3 = self;
  sub_21BE25F1C();

  v4 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__authResults;
  swift_beginAccess();
  v5 = *(v3 + v4);

  v6 = sub_21BE288EC();

  return v6;
}

- (void)setAuthResults:(id)a3
{
  sub_21BE2890C();
  swift_getKeyPath();
  sub_21BC75D70();
  v4 = self;
  sub_21BE25F0C();
}

- (_TtC14FamilyCircleUI19FAFamilyImageLoader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end