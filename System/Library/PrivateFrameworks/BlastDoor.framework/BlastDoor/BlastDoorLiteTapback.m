@interface BlastDoorLiteTapback
- (BlastDoorLiteTapback)init;
- (NSUUID)associatedMessageUUID;
- (int64_t)associatedMessageType;
@end

@implementation BlastDoorLiteTapback

- (NSUUID)associatedMessageUUID
{
  v3 = sub_2146D8B88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___BlastDoorLiteTapback_liteTapback, v3);
  v8 = sub_2146D8B38();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (int64_t)associatedMessageType
{
  v3 = type metadata accessor for LiteTapback(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorLiteTapback_liteTapback, v7, type metadata accessor for LiteTapback);
  v8 = v7[*(v4 + 28)];
  v9 = self;
  sub_213FB5844(v7, type metadata accessor for LiteTapback);
  if (v8 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 - 1;
  }

  result = sub_2145924D8(v10);
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v13 = result;

    return v13;
  }

  return result;
}

- (BlastDoorLiteTapback)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end