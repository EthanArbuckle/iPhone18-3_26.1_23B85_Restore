@interface IMActionDevice
- (IMActionDevice)init;
- (IMActionDevice)initWithType:(int64_t)a3;
- (id)dictionaryRepresentation;
@end

@implementation IMActionDevice

- (IMActionDevice)initWithType:(int64_t)a3
{
  *(&self->super.isa + OBJC_IVAR___IMActionDevice_type) = a3;
  v4.receiver = self;
  v4.super_class = IMActionDevice;
  return [(IMActionDevice *)&v4 init];
}

- (id)dictionaryRepresentation
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v4 = self;
  v5 = [(IMActionDevice *)v4 type];
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 48) = v5;
  sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A8723F2C(inited + 32);

  v6 = sub_1A88C8188();

  return v6;
}

- (IMActionDevice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end