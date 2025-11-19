@interface BlastDoorRelayGroupMutationWrapper
- (BlastDoorRelayGroupDisplayNameMutationEnvelope)displayName;
- (BlastDoorRelayGroupMutationWrapper)init;
- (BlastDoorRelayGroupParticipantMutationEnvelope)participant;
- (NSString)description;
@end

@implementation BlastDoorRelayGroupMutationWrapper

- (NSString)description
{
  sub_2142FDFBC(*(&self->super.isa + OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation), *&self->relayGroupMutation[OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation], *&self->relayGroupMutation[OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation + 8], *&self->relayGroupMutation[OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation + 16], self->relayGroupMutation[OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation + 24], self->relayGroupMutation[OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation + 25]);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorRelayGroupDisplayNameMutationEnvelope)displayName
{
  v4 = self + OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation;
  if (self->relayGroupMutation[OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation + 25])
  {
    v5 = 0;
  }

  else
  {
    v16 = v2;
    v17 = v3;
    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    v10 = *v4;
    v9 = *(v4 + 1);
    v11 = v4[32];
    v12 = type metadata accessor for _ObjCRelayGroupDisplayNameMutationEnvelopeWrapper();
    v13 = objc_allocWithZone(v12);
    v14 = &v13[OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope];
    *v14 = v10;
    *(v14 + 1) = v9;
    *(v14 + 2) = v8;
    *(v14 + 3) = v7;
    v14[32] = v11;
    sub_21431C5DC(v10);
    v15.receiver = v13;
    v15.super_class = v12;
    v5 = [(BlastDoorRelayGroupMutationWrapper *)&v15 init];
  }

  return v5;
}

- (BlastDoorRelayGroupParticipantMutationEnvelope)participant
{
  v4 = self + OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation;
  if (self->relayGroupMutation[OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation + 25] == 1)
  {
    v13 = v2;
    v14 = v3;
    v5 = *(v4 + 1);
    v6 = *v4;
    v7 = type metadata accessor for _ObjCRelayGroupParticipantMutationEnvelopeWrapper();
    v8 = objc_allocWithZone(v7);
    v9 = &v8[OBJC_IVAR___BlastDoorRelayGroupParticipantMutationEnvelope_relayGroupParticipantMutationEnvelope];
    *v9 = v6 & 1;
    *(v9 + 1) = v5;
    v12.receiver = v8;
    v12.super_class = v7;

    v10 = [(BlastDoorRelayGroupMutationWrapper *)&v12 init];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BlastDoorRelayGroupMutationWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end