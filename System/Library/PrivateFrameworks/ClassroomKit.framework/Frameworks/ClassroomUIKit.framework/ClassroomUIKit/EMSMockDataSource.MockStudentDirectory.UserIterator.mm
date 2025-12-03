@interface EMSMockDataSource.MockStudentDirectory.UserIterator
- (_TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator)init;
- (void)fetchNextUsersWithCompletion:(id)completion;
@end

@implementation EMSMockDataSource.MockStudentDirectory.UserIterator

- (void)fetchNextUsersWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_243696BC4(sub_24369770C, v5);
}

- (_TtCCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectoryP33_BD77245E64EDECF51D3DE33DC5916C2912UserIterator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end