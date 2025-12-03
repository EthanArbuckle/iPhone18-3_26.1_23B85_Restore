@interface ECLocalMessageActionID
- (BOOL)isEqual:(id)equal;
- (ECLocalMessageActionID)init;
- (ECLocalMessageActionID)initWithDatabaseID:(int64_t)d;
- (NSString)description;
- (NSString)stringValue;
- (int64_t)hash;
@end

@implementation ECLocalMessageActionID

- (NSString)stringValue
{
  v2 = *(self + OBJC_IVAR___ECLocalMessageActionID_stringValue);
  v3 = *(self + OBJC_IVAR___ECLocalMessageActionID_stringValue + 8);

  v4 = sub_22D0E81FC();

  return v4;
}

- (ECLocalMessageActionID)initWithDatabaseID:(int64_t)d
{
  *(self + OBJC_IVAR___ECLocalMessageActionID_databaseID) = d;
  v4 = EFStringWithInt64();
  v5 = sub_22D0E820C();
  v7 = v6;

  v8 = (self + OBJC_IVAR___ECLocalMessageActionID_stringValue);
  *v8 = v5;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = ECLocalMessageActionID;
  return [(ECLocalMessageActionID *)&v10 init];
}

- (NSString)description
{
  selfCopy = self;
  stringValue = [(ECLocalMessageActionID *)selfCopy stringValue];
  if (!stringValue)
  {
    sub_22D0E820C();
    stringValue = sub_22D0E81FC();
  }

  return stringValue;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_22D0E821C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = ECLocalMessageActionID.isEqual(_:)(v8);

  sub_22D0CE3E4(v8);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  [(ECLocalMessageActionID *)selfCopy databaseID];
  v3 = sub_22D0E822C();

  return v3;
}

- (ECLocalMessageActionID)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end