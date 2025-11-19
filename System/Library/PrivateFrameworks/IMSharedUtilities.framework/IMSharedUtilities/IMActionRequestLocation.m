@interface IMActionRequestLocation
- (IMActionRequestLocation)init;
- (IMActionRequestLocation)initWithSendPush:(BOOL)a3;
- (id)dictionaryRepresentation;
@end

@implementation IMActionRequestLocation

- (IMActionRequestLocation)initWithSendPush:(BOOL)a3
{
  *(&self->super.isa + OBJC_IVAR___IMActionRequestLocation_sendPush) = a3;
  v4.receiver = self;
  v4.super_class = IMActionRequestLocation;
  return [(IMActionRequestLocation *)&v4 init];
}

- (id)dictionaryRepresentation
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = 0x68737550646E6573;
  *(inited + 40) = 0xE800000000000000;
  v4 = self;
  [(IMActionRequestLocation *)v4 sendPush];
  v5 = sub_1A88C86C8();
  *(inited + 72) = sub_1A85E9718(0, &qword_1ED8C9450);
  *(inited + 48) = v5;
  sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A8723F2C(inited + 32);

  v6 = sub_1A88C8188();

  return v6;
}

- (IMActionRequestLocation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end