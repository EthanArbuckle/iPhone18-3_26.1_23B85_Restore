@interface EMSMockDataSource.MockStudentDirectory.UserIterator
- (_TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator)init;
- (void)fetchNextUsersWithCompletion:(id)a3;
@end

@implementation EMSMockDataSource.MockStudentDirectory.UserIterator

- (void)fetchNextUsersWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_243696BC4(sub_24369770C, v5);
}

- (_TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end