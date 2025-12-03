@interface EDPersistedMessageID
- (BOOL)isEqual:(id)equal;
- (EDPersistedMessageID)init;
- (EDPersistedMessageID)initWithDatabaseID:(int64_t)d;
- (NSString)description;
- (NSString)stringValue;
- (int64_t)hash;
@end

@implementation EDPersistedMessageID

- (EDPersistedMessageID)initWithDatabaseID:(int64_t)d
{
  *(self + OBJC_IVAR___EDPersistedMessageID_databaseID) = d;
  v4 = EFStringWithInt64();
  v5 = sub_1C645C874();
  v7 = v6;

  v8 = (self + OBJC_IVAR___EDPersistedMessageID_stringValue);
  *v8 = v5;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = EDPersistedMessageID;
  return [(EDPersistedMessageID *)&v10 init];
}

- (NSString)stringValue
{
  v2 = *(self + OBJC_IVAR___EDPersistedMessageID_stringValue);
  v3 = *(self + OBJC_IVAR___EDPersistedMessageID_stringValue + 8);

  v4 = sub_1C645C844();

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  stringValue = [(EDPersistedMessageID *)selfCopy stringValue];
  if (!stringValue)
  {
    sub_1C645C874();
    stringValue = sub_1C645C844();
  }

  return stringValue;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C645CC14();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = EDPersistedMessageID.isEqual(_:)(v8);

  sub_1C64032E8(v8);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  [(EDPersistedMessageID *)selfCopy databaseID];
  v3 = sub_1C645CFC4();

  return v3;
}

- (EDPersistedMessageID)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end