@interface HRHealthRecordsMigrator
- (HRHealthRecordsMigrator)init;
- (HRHealthRecordsMigrator)initWithHealthStore:(id)store;
- (void)migrateIfNeededWithCompletion:(id)completion;
@end

@implementation HRHealthRecordsMigrator

- (HRHealthRecordsMigrator)initWithHealthStore:(id)store
{
  ObjectType = swift_getObjectType();
  v5 = qword_1EE06AB28;
  storeCopy = store;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE06D978;
  v8 = objc_allocWithZone(ObjectType);

  v9 = sub_1D133A6A8(storeCopy, v7);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

- (void)migrateIfNeededWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1D133AA28(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (HRHealthRecordsMigrator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end