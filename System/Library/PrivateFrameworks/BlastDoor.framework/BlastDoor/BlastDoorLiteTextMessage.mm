@interface BlastDoorLiteTextMessage
- (BlastDoorLiteTapback)tapback;
- (BlastDoorLiteTextMessage)init;
- (int64_t)effect;
@end

@implementation BlastDoorLiteTextMessage

- (int64_t)effect
{
  v3 = type metadata accessor for LiteTextMessage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorLiteTextMessage_liteTextMessage, v6, type metadata accessor for LiteTextMessage);
  v7 = v6[16];
  selfCopy = self;
  sub_213FB5844(v6, type metadata accessor for LiteTextMessage);
  if (v7 == 14)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  result = sub_2145924C8(v9);
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v12 = result;

    return v12;
  }

  return result;
}

- (BlastDoorLiteTapback)tapback
{
  selfCopy = self;
  v3 = sub_2145606F0();

  return v3;
}

- (BlastDoorLiteTextMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end