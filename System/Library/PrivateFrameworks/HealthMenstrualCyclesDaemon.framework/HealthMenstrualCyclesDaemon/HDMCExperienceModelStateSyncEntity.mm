@interface HDMCExperienceModelStateSyncEntity
+ (BOOL)updateDataWithStateStorage:(id)storage profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (HDStateSyncEntitySchema)stateEntitySchema;
+ (void)syncDidFinishWithResult:(int64_t)result stateStore:(id)store profile:(id)profile;
- (HDMCExperienceModelStateSyncEntity)init;
@end

@implementation HDMCExperienceModelStateSyncEntity

+ (HDStateSyncEntitySchema)stateEntitySchema
{
  if (qword_2813DC168 != -1)
  {
    swift_once();
  }

  v3 = qword_2813DC170;

  return v3;
}

- (HDMCExperienceModelStateSyncEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ExperienceModelStateSyncEntity();
  return [(HDMCExperienceModelStateSyncEntity *)&v3 init];
}

+ (BOOL)updateDataWithStateStorage:(id)storage profile:(id)profile transaction:(id)transaction error:(id *)error
{
  swift_unknownObjectRetain();
  profileCopy = profile;
  transactionCopy = transaction;
  sub_2294429F4(storage, profileCopy, transactionCopy);

  swift_unknownObjectRelease();
  return 1;
}

+ (void)syncDidFinishWithResult:(int64_t)result stateStore:(id)store profile:(id)profile
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  profileCopy = profile;
  sub_229442D04(result, profileCopy);
  swift_unknownObjectRelease();
}

@end