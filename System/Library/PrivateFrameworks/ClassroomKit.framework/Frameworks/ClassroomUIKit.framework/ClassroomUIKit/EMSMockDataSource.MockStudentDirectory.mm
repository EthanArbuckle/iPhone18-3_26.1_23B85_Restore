@interface EMSMockDataSource.MockStudentDirectory
- (_TtCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectory)init;
- (id)iteratorForSearchString:(id)string sortingGivenNameFirst:(BOOL)first pageSize:(int64_t)size;
@end

@implementation EMSMockDataSource.MockStudentDirectory

- (id)iteratorForSearchString:(id)string sortingGivenNameFirst:(BOOL)first pageSize:(int64_t)size
{
  if (string)
  {
    v7 = sub_2436CBD38();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  selfCopy = self;
  v11 = sub_2436990E8(v7, v9, size);

  return v11;
}

- (_TtCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectory)init
{
  *(&self->super.isa + OBJC_IVAR____TtCC14ClassroomUIKit17EMSMockDataSource20MockStudentDirectory_roster) = 0;
  v3.receiver = self;
  v3.super_class = _s20MockStudentDirectoryCMa();
  return [(EMSMockDataSource.MockStudentDirectory *)&v3 init];
}

@end