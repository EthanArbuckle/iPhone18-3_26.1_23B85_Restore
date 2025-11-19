@interface BlastDoorRelayReachabilityContext
- (BlastDoorRelayReachabilityContext)init;
- (NSString)senderLastAddressedHandle;
- (NSString)serviceOfLastMessage;
- (NSUUID)senderLastAddressedSIMID;
- (int64_t)chatStyle;
@end

@implementation BlastDoorRelayReachabilityContext

- (int64_t)chatStyle
{
  result = self->relayReachabilityContext[OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext + 25];
  if (result > 2)
  {
    __break(1u);
  }

  return result;
}

- (NSString)senderLastAddressedHandle
{
  v3 = type metadata accessor for RelayReachabilityContext();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext, v6, type metadata accessor for RelayReachabilityContext);
  v7 = *(v6 + 8);
  if (v7 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v8 = *(v6 + 7);
    v9 = *(v6 + 8);

    sub_213FB5844(v6, type metadata accessor for RelayReachabilityContext);
    if (v7)
    {
      v10 = sub_2146D9588();
      sub_213FDC6D0(v8, v7);
    }

    else
    {
      v10 = 0;
    }

    return v10;
  }

  return result;
}

- (NSUUID)senderLastAddressedSIMID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = self + OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext;
  v8 = type metadata accessor for RelayReachabilityContext();
  sub_213FB2E54(&v7[*(v8 + 28)], v6, &unk_27C904F30, &unk_2146EFA20);
  v9 = sub_2146D8B88();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_2146D8B38();
    (*(v10 + 8))(v6, v9);
    v12 = v13;
  }

  return v12;
}

- (NSString)serviceOfLastMessage
{
  v2 = self + OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext;
  v3 = &v2[*(type metadata accessor for RelayReachabilityContext() + 36)];
  if (*(v3 + 1))
  {
    v4 = *v3;
    v5 = *(v3 + 1);

    v6 = sub_2146D9588();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BlastDoorRelayReachabilityContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end