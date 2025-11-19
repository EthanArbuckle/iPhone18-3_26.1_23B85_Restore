@interface BlastDoorRelayGroupParticipantMutation
- (BlastDoorRelayGroupParticipantMutation)init;
- (NSString)description;
@end

@implementation BlastDoorRelayGroupParticipantMutation

- (NSString)description
{
  v2 = *&self->relayGroupParticipantMutation[OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation + 8];
  v3 = *&self->relayGroupParticipantMutation[OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation + 40];
  v11 = *&self->relayGroupParticipantMutation[OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation + 24];
  v12[0] = v3;
  *(v12 + 9) = *&self->relayGroupParticipantMutation[OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation + 49];
  v4 = *&self->relayGroupParticipantMutation[OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation + 8];
  v10[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation);
  v10[1] = v4;
  v5 = *&self->relayGroupParticipantMutation[OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation + 40];
  v8[7] = v11;
  v9[0] = v5;
  *(v9 + 9) = *&self->relayGroupParticipantMutation[OBJC_IVAR___BlastDoorRelayGroupParticipantMutation_relayGroupParticipantMutation + 49];
  v8[5] = v10[0];
  v8[6] = v2;
  sub_2142FE33C(v10, v8);
  sub_2146D9608();
  v6 = sub_2146D9588();

  return v6;
}

- (BlastDoorRelayGroupParticipantMutation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end