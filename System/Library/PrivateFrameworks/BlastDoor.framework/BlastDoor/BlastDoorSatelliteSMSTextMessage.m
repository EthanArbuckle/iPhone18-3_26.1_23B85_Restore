@interface BlastDoorSatelliteSMSTextMessage
- (BlastDoorSatelliteSMSTextMessage)init;
- (NSArray)plainTextBodies;
- (NSString)description;
@end

@implementation BlastDoorSatelliteSMSTextMessage

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorSatelliteSMSTextMessage_satelliteSMSTextMessage);

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (NSArray)plainTextBodies
{
  if (*(&self->super.isa + OBJC_IVAR___BlastDoorSatelliteSMSTextMessage_satelliteSMSTextMessage))
  {
    v2 = *(&self->super.isa + OBJC_IVAR___BlastDoorSatelliteSMSTextMessage_satelliteSMSTextMessage);

    v3 = sub_2146D98E8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BlastDoorSatelliteSMSTextMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end