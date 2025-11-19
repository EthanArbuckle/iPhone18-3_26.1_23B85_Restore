@interface BlastDoorMessageContent
- (BlastDoorMessageContent)init;
- (NSAttributedString)content;
- (NSString)description;
@end

@implementation BlastDoorMessageContent

- (NSString)description
{
  v2 = *&self->messageContent[OBJC_IVAR___BlastDoorMessageContent_messageContent + 24];
  v5 = *(&self->super.isa + OBJC_IVAR___BlastDoorMessageContent_messageContent);
  v6 = *&self->messageContent[OBJC_IVAR___BlastDoorMessageContent_messageContent];
  v7 = *&self->messageContent[OBJC_IVAR___BlastDoorMessageContent_messageContent + 16];
  v8 = *&self->messageContent[OBJC_IVAR___BlastDoorMessageContent_messageContent + 32];
  v9 = *&self->messageContent[OBJC_IVAR___BlastDoorMessageContent_messageContent + 40];

  sub_214031CA0(v2);
  sub_2146D9608();
  v3 = sub_2146D9588();

  return v3;
}

- (NSAttributedString)content
{
  v3 = self + OBJC_IVAR___BlastDoorMessageContent_messageContent;
  if (*&self->messageContent[OBJC_IVAR___BlastDoorMessageContent_messageContent + 24])
  {
    v6 = *&self->messageContent[OBJC_IVAR___BlastDoorMessageContent_messageContent + 24];
    v7 = *(v3 + 5);
    v8 = *(v3 + 6);
    v4 = sub_214664BB8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BlastDoorMessageContent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end