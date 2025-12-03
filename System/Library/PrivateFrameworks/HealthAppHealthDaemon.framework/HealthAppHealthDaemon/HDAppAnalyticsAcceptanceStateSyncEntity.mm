@interface HDAppAnalyticsAcceptanceStateSyncEntity
+ (BOOL)updateDataWithStateStorage:(id)storage profile:(id)profile transaction:(id)transaction error:(id *)error;
+ (HDStateSyncEntitySchema)stateEntitySchema;
- (HDAppAnalyticsAcceptanceStateSyncEntity)init;
@end

@implementation HDAppAnalyticsAcceptanceStateSyncEntity

+ (HDStateSyncEntitySchema)stateEntitySchema
{
  if (qword_2813D95E8 != -1)
  {
    swift_once();
  }

  v3 = qword_2813D95F0;

  return v3;
}

+ (BOOL)updateDataWithStateStorage:(id)storage profile:(id)profile transaction:(id)transaction error:(id *)error
{
  swift_unknownObjectRetain();
  profileCopy = profile;
  transactionCopy = transaction;
  sub_2293BAAB4(storage, profileCopy, transactionCopy);

  swift_unknownObjectRelease();
  return 1;
}

- (HDAppAnalyticsAcceptanceStateSyncEntity)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppAnalyticsAcceptanceStateSyncEntity();
  return [(HDAppAnalyticsAcceptanceStateSyncEntity *)&v3 init];
}

@end