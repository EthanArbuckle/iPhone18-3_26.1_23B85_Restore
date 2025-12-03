@interface HAHDSummaryPinnedContentStateSyncEntity
+ (BOOL)updateDataWithStateStorage:(id)storage profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (HDStateSyncEntitySchema)stateEntitySchema;
+ (void)syncDidFinishWithResult:(int64_t)result stateStore:(id)store profile:(id)profile;
- (HAHDSummaryPinnedContentStateSyncEntity)init;
@end

@implementation HAHDSummaryPinnedContentStateSyncEntity

+ (HDStateSyncEntitySchema)stateEntitySchema
{
  if (qword_2813D94F8 != -1)
  {
    swift_once();
  }

  v3 = qword_2813D9500;

  return v3;
}

+ (BOOL)updateDataWithStateStorage:(id)storage profile:(id)profile transaction:(id)transaction error:(id *)error
{
  swift_unknownObjectRetain();
  profileCopy = profile;
  transactionCopy = transaction;
  sub_2293BE2CC(storage, profileCopy, transactionCopy);

  swift_unknownObjectRelease();
  return 1;
}

+ (void)syncDidFinishWithResult:(int64_t)result stateStore:(id)store profile:(id)profile
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  profileCopy = profile;
  sub_2293BE560(result, profileCopy);
  swift_unknownObjectRelease();
}

- (HAHDSummaryPinnedContentStateSyncEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SummaryPinnedContentStateSyncEntity();
  return [(HAHDSummaryPinnedContentStateSyncEntity *)&v3 init];
}

@end