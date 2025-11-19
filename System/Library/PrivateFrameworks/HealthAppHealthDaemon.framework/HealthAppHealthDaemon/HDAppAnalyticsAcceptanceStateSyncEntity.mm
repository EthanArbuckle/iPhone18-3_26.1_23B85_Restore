@interface HDAppAnalyticsAcceptanceStateSyncEntity
+ (BOOL)updateDataWithStateStorage:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6;
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

+ (BOOL)updateDataWithStateStorage:(id)a3 profile:(id)a4 transaction:(id)a5 error:(id *)a6
{
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a5;
  sub_2293BAAB4(a3, v9, v10);

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