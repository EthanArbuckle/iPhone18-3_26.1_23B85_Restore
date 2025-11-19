@interface BlastDoorNicknameInformationMessage
- (BlastDoorMetadata)metadata;
- (BlastDoorNicknameInformation)nicknameInformation;
- (BlastDoorNicknameInformationMessage)init;
@end

@implementation BlastDoorNicknameInformationMessage

- (BlastDoorNicknameInformation)nicknameInformation
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorNicknameInformationMessage_nicknameInformationMessage, 0x109uLL);
  v2 = type metadata accessor for _ObjCNicknameInformationWrapper();
  v3 = objc_allocWithZone(v2);
  memcpy(&v3[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation], __dst, 0x109uLL);
  sub_2142FB7A4(__dst, v7);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = [(BlastDoorNicknameInformationMessage *)&v6 init];

  return v4;
}

- (BlastDoorMetadata)metadata
{
  v3 = type metadata accessor for Metadata();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR___BlastDoorNicknameInformationMessage_nicknameInformationMessage;
  v8 = type metadata accessor for NicknameInformationMessage();
  sub_213FB568C(&v7[*(v8 + 20)], v6, type metadata accessor for Metadata);
  v9 = type metadata accessor for _ObjCMetadataWrapper(0);
  v10 = objc_allocWithZone(v9);
  sub_213FB568C(v6, v10 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = [(BlastDoorNicknameInformationMessage *)&v13 init];
  sub_213FB5844(v6, type metadata accessor for Metadata);

  return v11;
}

- (BlastDoorNicknameInformationMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end