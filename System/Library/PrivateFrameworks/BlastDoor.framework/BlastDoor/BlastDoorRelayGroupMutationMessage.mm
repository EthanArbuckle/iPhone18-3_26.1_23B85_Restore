@interface BlastDoorRelayGroupMutationMessage
- (BlastDoorGroupID)groupID;
- (BlastDoorGroupID)originalGroupID;
- (BlastDoorRelayGroupMutationMessage)init;
- (BlastDoorRelayGroupMutationWrapper)mutation;
- (NSUUID)guid;
@end

@implementation BlastDoorRelayGroupMutationMessage

- (BlastDoorGroupID)groupID
{
  v3 = *&self->relayGroupMutationMessage[OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 48];
  v2 = *&self->relayGroupMutationMessage[OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 56];
  v5 = *&self->relayGroupMutationMessage[OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 64];
  v4 = *&self->relayGroupMutationMessage[OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 72];
  v6 = self->relayGroupMutationMessage[OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 80];
  v7 = type metadata accessor for _ObjCGroupIDWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorGroupID_groupID];
  *v9 = v3;
  *(v9 + 1) = v2;
  *(v9 + 2) = v5;
  *(v9 + 3) = v4;
  v9[32] = v6;
  v12.receiver = v8;
  v12.super_class = v7;

  v10 = [(BlastDoorRelayGroupMutationMessage *)&v12 init];

  return v10;
}

- (BlastDoorGroupID)originalGroupID
{
  v3 = *&self->relayGroupMutationMessage[OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 88];
  v2 = *&self->relayGroupMutationMessage[OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 96];
  v5 = *&self->relayGroupMutationMessage[OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 104];
  v4 = *&self->relayGroupMutationMessage[OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 112];
  v6 = self->relayGroupMutationMessage[OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage + 120];
  v7 = type metadata accessor for _ObjCGroupIDWrapper();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___BlastDoorGroupID_groupID];
  *v9 = v3;
  *(v9 + 1) = v2;
  *(v9 + 2) = v5;
  *(v9 + 3) = v4;
  v9[32] = v6;
  v12.receiver = v8;
  v12.super_class = v7;

  v10 = [(BlastDoorRelayGroupMutationMessage *)&v12 init];

  return v10;
}

- (NSUUID)guid
{
  v3 = sub_2146D8B88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage;
  v9 = type metadata accessor for RelayGroupMutationMessage();
  (*(v4 + 16))(v7, &v8[*(v9 + 32)], v3);
  v10 = sub_2146D8B38();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (BlastDoorRelayGroupMutationWrapper)mutation
{
  v2 = self + OBJC_IVAR___BlastDoorRelayGroupMutationMessage_relayGroupMutationMessage;
  v3 = &v2[*(type metadata accessor for RelayGroupMutationMessage() + 44)];
  v4 = *v3;
  v5 = *(v3 + 1);
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = v3[33];
  v9 = v3[32];
  v10 = type metadata accessor for _ObjCEnumRelayGroupMutationWrapper();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR___BlastDoorRelayGroupMutationWrapper_relayGroupMutation];
  *v12 = v4;
  *(v12 + 1) = v5;
  *(v12 + 2) = v6;
  *(v12 + 3) = v7;
  v12[32] = v9;
  v12[33] = v8;
  sub_2142FDFBC(v4, v5, v6, v7, v9, v8);
  v15.receiver = v11;
  v15.super_class = v10;
  v13 = [(BlastDoorRelayGroupMutationMessage *)&v15 init];

  return v13;
}

- (BlastDoorRelayGroupMutationMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end