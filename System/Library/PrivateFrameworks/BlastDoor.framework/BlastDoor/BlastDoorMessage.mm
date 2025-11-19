@interface BlastDoorMessage
- (BlastDoorMessage)init;
- (NSAttributedString)content;
- (NSString)description;
@end

@implementation BlastDoorMessage

- (NSString)description
{
  v2 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 72];
  v3 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 40];
  v24 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 56];
  v25 = v2;
  v4 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 72];
  v26 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 88];
  v5 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 8];
  v21[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorMessage_message);
  v21[1] = v5;
  v6 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 40];
  v8 = *(&self->super.isa + OBJC_IVAR___BlastDoorMessage_message);
  v7 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 8];
  v22 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 24];
  v23 = v6;
  v9 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 88];
  v18 = v4;
  v19 = v9;
  v13 = v8;
  v14 = v7;
  v15 = v22;
  v27 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 104];
  v20 = *&self->message[OBJC_IVAR___BlastDoorMessage_message + 104];
  v16 = v3;
  v17 = v24;
  sub_214091538(v21, v12);
  sub_2146D9608();
  v10 = sub_2146D9588();

  return v10;
}

- (NSAttributedString)content
{
  v2 = self;
  v3 = sub_21457BADC();

  return v3;
}

- (BlastDoorMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end