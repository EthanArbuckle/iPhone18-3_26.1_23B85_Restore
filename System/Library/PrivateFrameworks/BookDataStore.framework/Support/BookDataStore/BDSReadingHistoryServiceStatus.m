@interface BDSReadingHistoryServiceStatus
- (BDSReadingHistoryServiceStatus)init;
- (BDSReadingHistoryServiceStatus)initWithCoder:(id)a3;
- (BDSReadingHistoryServiceStatus)initWithIsLoaded:(BOOL)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSReadingHistoryServiceStatus

- (BDSReadingHistoryServiceStatus)initWithCoder:(id)a3
{
  swift_getObjectType();
  v4 = sub_10011CDC8(a3);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10011C690(v4);
}

- (BDSReadingHistoryServiceStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BDSReadingHistoryServiceStatus)initWithIsLoaded:(BOOL)a3
{
  ObjectType = swift_getObjectType();
  v5 = objc_allocWithZone(ObjectType);
  v5[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = a3;
  v8.receiver = v5;
  v8.super_class = ObjectType;
  v6 = [(BDSReadingHistoryServiceStatus *)&v8 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

- (NSString)description
{
  if (*(&self->super.isa + OBJC_IVAR___BDSReadingHistoryServiceStatus_value))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(&self->super.isa + OBJC_IVAR___BDSReadingHistoryServiceStatus_value))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = self;
  v8._countAndFlagsBits = v2;
  v8._object = v3;
  sub_1001C6138(v8);

  v9._countAndFlagsBits = 125;
  v9._object = 0xE100000000000000;
  sub_1001C6138(v9);

  v5 = sub_1001C5FE8();

  return v5;
}

@end