@interface BlastDoorSMSParserTextPart
- (BlastDoorSMSParserTextPart)init;
- (NSString)description;
@end

@implementation BlastDoorSMSParserTextPart

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart);
  v5 = *&self->sMSParserTextPart[OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart];
  v6 = *&self->sMSParserTextPart[OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart + 8];
  v7 = *&self->sMSParserTextPart[OBJC_IVAR___BlastDoorSMSParserTextPart_sMSParserTextPart + 16];

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorSMSParserTextPart)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end