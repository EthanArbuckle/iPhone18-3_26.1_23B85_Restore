@interface BlastDoorBasicMessage
- (BlastDoorBasicMessage)init;
- (NSAttributedString)content;
- (NSString)description;
@end

@implementation BlastDoorBasicMessage

- (NSString)description
{
  v2 = *&self->basicMessage[OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 40];
  v3 = *&self->basicMessage[OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 72];
  v16 = *&self->basicMessage[OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 56];
  v17[0] = v3;
  *(v17 + 9) = *&self->basicMessage[OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 81];
  v4 = *&self->basicMessage[OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 8];
  v13[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicMessage_basicMessage);
  v13[1] = v4;
  v5 = *&self->basicMessage[OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 40];
  v7 = *(&self->super.isa + OBJC_IVAR___BlastDoorBasicMessage_basicMessage);
  v6 = *&self->basicMessage[OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 8];
  v14 = *&self->basicMessage[OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 24];
  v15 = v5;
  v8 = *&self->basicMessage[OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 72];
  v11[11] = v16;
  v12[0] = v8;
  *(v12 + 9) = *&self->basicMessage[OBJC_IVAR___BlastDoorBasicMessage_basicMessage + 81];
  v11[7] = v7;
  v11[8] = v6;
  v11[9] = v14;
  v11[10] = v2;
  sub_2142E5B20(v13, v11);
  sub_2146D9608();
  v9 = sub_2146D9588();

  return v9;
}

- (NSAttributedString)content
{
  v2 = self;
  v3 = sub_214554804();

  return v3;
}

- (BlastDoorBasicMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end