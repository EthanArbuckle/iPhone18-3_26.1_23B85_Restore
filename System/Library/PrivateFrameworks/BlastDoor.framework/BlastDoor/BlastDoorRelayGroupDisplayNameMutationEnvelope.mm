@interface BlastDoorRelayGroupDisplayNameMutationEnvelope
- (BlastDoorGroupDisplayName)updatedName;
- (BlastDoorRelayGroupDisplayNameMutationEnvelope)init;
- (NSString)description;
@end

@implementation BlastDoorRelayGroupDisplayNameMutationEnvelope

- (NSString)description
{
  v4 = *&self->relayGroupDisplayNameMutationEnvelope[OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope];
  v5 = *&self->relayGroupDisplayNameMutationEnvelope[OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope + 8];
  v6 = *&self->relayGroupDisplayNameMutationEnvelope[OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope + 16];
  v7 = self->relayGroupDisplayNameMutationEnvelope[OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope + 24];
  sub_21431C5DC(*(&self->super.isa + OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope));
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorGroupDisplayName)updatedName
{
  v2 = self + OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope;
  v3 = *(&self->super.isa + OBJC_IVAR___BlastDoorRelayGroupDisplayNameMutationEnvelope_relayGroupDisplayNameMutationEnvelope);
  if (v3)
  {
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    v6 = *(v2 + 1);
    v7 = v2[32];
    v8 = type metadata accessor for _ObjCGroupDisplayNameWrapper();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR___BlastDoorGroupDisplayName_groupDisplayName];
    *v10 = v3;
    *(v10 + 1) = v6;
    *(v10 + 2) = v5;
    *(v10 + 3) = v4;
    v10[32] = v7;
    sub_21431C5DC(v3);
    v13.receiver = v9;
    v13.super_class = v8;
    v11 = [(BlastDoorRelayGroupDisplayNameMutationEnvelope *)&v13 init];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BlastDoorRelayGroupDisplayNameMutationEnvelope)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end