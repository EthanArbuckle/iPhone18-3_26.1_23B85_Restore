@interface BlastDoorUnsupportedMessage
- (BlastDoorUnsupportedMessage)init;
- (NSString)description;
@end

@implementation BlastDoorUnsupportedMessage

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage);
  v5 = *&self->unsupportedMessage[OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage];
  v6 = *&self->unsupportedMessage[OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage + 8];
  v7 = self->unsupportedMessage[OBJC_IVAR___BlastDoorUnsupportedMessage_unsupportedMessage + 16];

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorUnsupportedMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end