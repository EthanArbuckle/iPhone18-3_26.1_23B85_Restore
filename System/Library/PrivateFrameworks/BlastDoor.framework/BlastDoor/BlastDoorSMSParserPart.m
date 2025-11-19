@interface BlastDoorSMSParserPart
- (BlastDoorSMSParserPart)init;
- (NSString)description;
@end

@implementation BlastDoorSMSParserPart

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorSMSParserPart_sMSParserPart);
  v5 = *&self->sMSParserPart[OBJC_IVAR___BlastDoorSMSParserPart_sMSParserPart];

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorSMSParserPart)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end