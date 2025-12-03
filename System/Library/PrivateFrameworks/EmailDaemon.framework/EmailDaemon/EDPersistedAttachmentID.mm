@interface EDPersistedAttachmentID
- (BOOL)isEqual:(id)equal;
- (EDPersistedAttachmentID)init;
- (EDPersistedAttachmentID)initWithDatabaseID:(int64_t)d;
- (EDPersistedAttachmentID)initWithString:(id)string;
- (NSString)description;
- (NSString)stringValue;
- (int64_t)hash;
@end

@implementation EDPersistedAttachmentID

- (NSString)stringValue
{
  v2 = *(self + OBJC_IVAR___EDPersistedAttachmentID_stringValue);
  v3 = *(self + OBJC_IVAR___EDPersistedAttachmentID_stringValue + 8);

  v4 = sub_1C645C844();

  return v4;
}

- (EDPersistedAttachmentID)initWithDatabaseID:(int64_t)d
{
  *(self + OBJC_IVAR___EDPersistedAttachmentID_databaseID) = d;
  v4 = EFStringWithInt64();
  v5 = sub_1C645C874();
  v7 = v6;

  v8 = (self + OBJC_IVAR___EDPersistedAttachmentID_stringValue);
  *v8 = v5;
  v8[1] = v7;
  v10.receiver = self;
  v10.super_class = EDPersistedAttachmentID;
  return [(EDPersistedAttachmentID *)&v10 init];
}

- (EDPersistedAttachmentID)initWithString:(id)string
{
  longLongValue = [string longLongValue];

  return [(EDPersistedAttachmentID *)self initWithDatabaseID:longLongValue];
}

- (NSString)description
{
  selfCopy = self;
  stringValue = [(EDPersistedAttachmentID *)selfCopy stringValue];
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

  v6 = EDPersistedAttachmentID.isEqual(_:)(v8);

  sub_1C64032E8(v8);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  [(EDPersistedAttachmentID *)selfCopy databaseID];
  v3 = sub_1C645CFC4();

  return v3;
}

- (EDPersistedAttachmentID)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end