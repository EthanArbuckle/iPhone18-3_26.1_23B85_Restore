@interface ECLocalMessageActionID
- (BOOL)isEqual:(id)a3;
- (ECLocalMessageActionID)init;
- (ECLocalMessageActionID)initWithDatabaseID:(int64_t)a3;
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

- (ECLocalMessageActionID)initWithDatabaseID:(int64_t)a3
{
  *(self + OBJC_IVAR___ECLocalMessageActionID_databaseID) = a3;
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
  v2 = self;
  v3 = [(ECLocalMessageActionID *)v2 stringValue];
  if (!v3)
  {
    sub_22D0E820C();
    v3 = sub_22D0E81FC();
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_22D0E821C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = ECLocalMessageActionID.isEqual(_:)(v8);

  sub_22D0CE3E4(v8);
  return v6;
}

- (int64_t)hash
{
  v2 = self;
  [(ECLocalMessageActionID *)v2 databaseID];
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