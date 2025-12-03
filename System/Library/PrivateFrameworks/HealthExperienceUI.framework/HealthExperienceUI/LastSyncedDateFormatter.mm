@interface LastSyncedDateFormatter
- (_TtC18HealthExperienceUI23LastSyncedDateFormatter)init;
- (_TtC18HealthExperienceUI23LastSyncedDateFormatter)initWithCoder:(id)coder;
- (id)stringForObjectValue:(id)value;
@end

@implementation LastSyncedDateFormatter

- (id)stringForObjectValue:(id)value
{
  if (value)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  sub_1BA0A5CE0(v10);
  v7 = v6;

  sub_1B9F23224(v10);
  if (v7)
  {
    v8 = sub_1BA4A6758();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (_TtC18HealthExperienceUI23LastSyncedDateFormatter)init
{
  sub_1BA4A1878();
  v4.receiver = self;
  v4.super_class = type metadata accessor for LastSyncedDateFormatter();
  return [(LastSyncedDateFormatter *)&v4 init];
}

- (_TtC18HealthExperienceUI23LastSyncedDateFormatter)initWithCoder:(id)coder
{
  coderCopy = coder;
  sub_1BA4A1878();
  v7.receiver = self;
  v7.super_class = type metadata accessor for LastSyncedDateFormatter();
  v5 = [(LastSyncedDateFormatter *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end