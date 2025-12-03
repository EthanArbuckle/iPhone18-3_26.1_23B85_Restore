@interface CRDTModelSync
- (NSString)debugDescription;
- (_TtC13BookDataStore13CRDTModelSync)init;
- (_TtC13BookDataStore13CRDTModelSync)initWithCoder:(id)coder;
- (_TtC13BookDataStore13CRDTModelSync)initWithRecord:(id)record;
- (id)identifier;
- (id)recordType;
- (id)zoneName;
@end

@implementation CRDTModelSync

- (_TtC13BookDataStore13CRDTModelSync)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.super.isa + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(&self->super.super.isa + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData) = xmmword_1E471B810;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(BCMutableCloudData *)&v6 init];
}

- (_TtC13BookDataStore13CRDTModelSync)initWithCoder:(id)coder
{
  v3 = (&self->super.super.isa + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(&self->super.super.isa + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData) = xmmword_1E471B810;
  result = sub_1E470B6BC();
  __break(1u);
  return result;
}

- (_TtC13BookDataStore13CRDTModelSync)initWithRecord:(id)record
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)debugDescription
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  v3 = [(CRDTModelSync *)&v7 debugDescription];
  sub_1E470AF1C();

  MEMORY[0x1E6915D10](32, 0xE100000000000000);
  v4 = sub_1E46639B0(v2);
  MEMORY[0x1E6915D10](v4);

  v5 = sub_1E470AF0C();

  return v5;
}

- (id)recordType
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type);
  v3 = *(&self->super._deletedFlag + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type);
  selfCopy = self;

  sub_1E470B04C();
  v5 = sub_1E470AF7C();
  v7 = v6;

  sub_1E465F4D4(15, v5, v7, v2, v3);

  v8 = sub_1E470AF0C();

  return v8;
}

- (id)identifier
{
  sub_1E4663B68(self);
  if (v2)
  {
    v3 = sub_1E470AF0C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)zoneName
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type);
  v3 = *(&self->super._deletedFlag + OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type);
  selfCopy = self;

  v5 = sub_1E470AF0C();

  return v5;
}

@end