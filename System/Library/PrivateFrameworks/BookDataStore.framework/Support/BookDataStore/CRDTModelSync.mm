@interface CRDTModelSync
- (NSString)debugDescription;
- (_TtC14bookdatastored13CRDTModelSync)init;
- (_TtC14bookdatastored13CRDTModelSync)initWithCoder:(id)coder;
- (_TtC14bookdatastored13CRDTModelSync)initWithRecord:(id)record;
- (id)identifier;
- (id)recordType;
- (id)zoneName;
@end

@implementation CRDTModelSync

- (_TtC14bookdatastored13CRDTModelSync)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.super.isa + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(&self->super.super.isa + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData) = xmmword_1001F1120;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(BCMutableCloudData *)&v6 init];
}

- (_TtC14bookdatastored13CRDTModelSync)initWithCoder:(id)coder
{
  v3 = (&self->super.super.isa + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(&self->super.super.isa + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_protoData) = xmmword_1001F1120;
  result = sub_1001C6B28();
  __break(1u);
  return result;
}

- (_TtC14bookdatastored13CRDTModelSync)initWithRecord:(id)record
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)debugDescription
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  v3 = [(CRDTModelSync *)&v6 debugDescription];
  sub_1001C6018();

  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  sub_1001C6138(v8);
  v9._countAndFlagsBits = sub_100144B18(v2);
  sub_1001C6138(v9);

  v4 = sub_1001C5FE8();

  return v4;
}

- (id)recordType
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type);
  v3 = *(&self->super._deletedFlag + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type);
  selfCopy = self;

  sub_1001C61E8();
  v5 = sub_1001C6088();
  v7 = v6;

  sub_10014074C(15, v5, v7, v2, v3);

  v8 = sub_1001C5FE8();

  return v8;
}

- (id)identifier
{
  sub_100144CD0(self);
  if (v2)
  {
    v3 = sub_1001C5FE8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)zoneName
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type);
  v3 = *(&self->super._deletedFlag + OBJC_IVAR____TtC14bookdatastored13CRDTModelSync_type);
  selfCopy = self;

  v5 = sub_1001C5FE8();

  return v5;
}

@end