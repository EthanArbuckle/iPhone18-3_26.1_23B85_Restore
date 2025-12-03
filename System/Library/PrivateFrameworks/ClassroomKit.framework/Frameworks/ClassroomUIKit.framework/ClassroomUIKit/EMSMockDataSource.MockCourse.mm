@interface EMSMockDataSource.MockCourse
- (CRKASMLocation)location;
- (CRKIdentity)identity;
- (_TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse)init;
- (void)setIdentifier:(id)identifier;
@end

@implementation EMSMockDataSource.MockCourse

- (void)setIdentifier:(id)identifier
{
  v4 = *(self + OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_identifier);
  *(self + OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_identifier) = identifier;
  identifierCopy = identifier;
}

- (CRKASMLocation)location
{
  v2 = *(self + OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse_location);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (CRKIdentity)identity
{
  result = sub_2436CC1D8();
  __break(1u);
  return result;
}

- (_TtCC14ClassroomUIKit17EMSMockDataSource10MockCourse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end