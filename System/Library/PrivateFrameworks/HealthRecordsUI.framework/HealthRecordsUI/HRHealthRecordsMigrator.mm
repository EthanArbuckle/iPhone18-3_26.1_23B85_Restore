@interface HRHealthRecordsMigrator
- (HRHealthRecordsMigrator)init;
- (HRHealthRecordsMigrator)initWithHealthStore:(id)a3;
- (void)migrateIfNeededWithCompletion:(id)a3;
@end

@implementation HRHealthRecordsMigrator

- (HRHealthRecordsMigrator)initWithHealthStore:(id)a3
{
  ObjectType = swift_getObjectType();
  v5 = qword_1EE06AB28;
  v6 = a3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE06D978;
  v8 = objc_allocWithZone(ObjectType);

  v9 = sub_1D133A6A8(v6, v7);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

- (void)migrateIfNeededWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1D133AA28(v5, v4);
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