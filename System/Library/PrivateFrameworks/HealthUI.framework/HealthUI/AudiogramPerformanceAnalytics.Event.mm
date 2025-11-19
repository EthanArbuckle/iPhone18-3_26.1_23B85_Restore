@interface AudiogramPerformanceAnalytics.Event
- (NSString)eventName;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation AudiogramPerformanceAnalytics.Event

- (NSString)eventName
{
  v2 = sub_1C3D200C4();

  return v2;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = *self->metric;
  v5 = *&self->metric[8];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);

  v8 = v4;
  v7(ObjectType, v5);

  v9 = sub_1C3D1FEE4();

  return v9;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v4 = *self->metric;
  v5 = *&self->metric[8];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 16);

  v8 = v4;
  v7(ObjectType, v5);

  v9 = sub_1C3D1FEE4();

  return v9;
}

@end