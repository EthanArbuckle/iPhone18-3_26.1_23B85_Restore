@interface EMSMockDataSource.MockRoster
- (CRKASMOrganization)organization;
- (CRKASMUser)user;
- (_TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster)init;
@end

@implementation EMSMockDataSource.MockRoster

- (CRKASMOrganization)organization
{
  v2 = *(self + OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster_organization);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (CRKASMUser)user
{
  v2 = *(self + OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster_user);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (_TtCC14ClassroomUIKit17EMSMockDataSource10MockRoster)init
{
  v5 = xmmword_2436CF330;
  v6 = 30;
  v7 = 0;
  v8 = 0;
  v9 = 500;
  v2 = objc_allocWithZone(_s10MockRosterCMa());
  v3 = sub_243694C78(&v5);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

@end