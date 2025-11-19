@interface JSRandomObject
- (_TtC9JetEngine14JSRandomObject)init;
- (id)nextBoolean;
- (id)nextNumber;
- (id)nextUUID;
@end

@implementation JSRandomObject

- (_TtC9JetEngine14JSRandomObject)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSRandomObject *)&v3 init];
}

- (id)nextUUID
{
  v2 = sub_1AB08A604();

  return v2;
}

- (id)nextBoolean
{
  v2 = sub_1AB3179B8();

  return v2;
}

- (id)nextNumber
{
  v2 = sub_1AB317AA8();

  return v2;
}

@end