@interface HAHDSummaryPinnedContentStateSyncEntity
+ (BOOL)updateDataWithStateStorage:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
+ (HDStateSyncEntitySchema)stateEntitySchema;
+ (void)syncDidFinishWithResult:(int64_t)a3 stateStore:(id)a4 profile:(id)a5;
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

+ (BOOL)updateDataWithStateStorage:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a5;
  sub_2293BE2CC(a3, v9, v10);

  swift_unknownObjectRelease();
  return 1;
}

+ (void)syncDidFinishWithResult:(int64_t)a3 stateStore:(id)a4 profile:(id)a5
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  v7 = a5;
  sub_2293BE560(a3, v7);
  swift_unknownObjectRelease();
}

- (HAHDSummaryPinnedContentStateSyncEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SummaryPinnedContentStateSyncEntity();
  return [(HAHDSummaryPinnedContentStateSyncEntity *)&v3 init];
}

@end