@interface BlastDoorTextMessage
- (BlastDoorMetadata)metadata;
- (BlastDoorNicknameInformation)nicknameInformation;
- (BlastDoorTextMessage)init;
- (BlastDoorTextMessageMessageTypeWrapper)messageSubType;
- (BlastDoorTextMessage_MessageSummaryInfo)messageSummaryInfo;
- (NSArray)replicatedFallbackGUIDs;
- (NSDate)scheduledDate;
- (NSString)availabilityVerificationRecipientEncryptionValidationToken;
- (NSString)biaReferenceID;
- (NSString)groupID;
- (NSString)lastPublisherOfOffGridStatus;
- (int64_t)scheduleType;
- (unint64_t)groupProtocolVersion;
- (unint64_t)transcriptBackgroundVersion;
@end

@implementation BlastDoorTextMessage

- (BlastDoorMetadata)metadata
{
  v3 = type metadata accessor for Metadata();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorTextMessage_textMessage, v6, type metadata accessor for Metadata);
  v7 = type metadata accessor for _ObjCMetadataWrapper(0);
  v8 = objc_allocWithZone(v7);
  sub_213FB568C(v6, v8 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = [(BlastDoorTextMessage *)&v11 init];
  sub_213FB5844(v6, type metadata accessor for Metadata);

  return v9;
}

- (BlastDoorTextMessageMessageTypeWrapper)messageSubType
{
  v3 = type metadata accessor for TextMessage.MessageType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v8 = type metadata accessor for TextMessage(0);
  sub_213FB568C(&v7[*(v8 + 20)], v6, type metadata accessor for TextMessage.MessageType);
  v9 = type metadata accessor for _ObjCEnumTextMessageMessageTypeWrapper(0);
  v10 = objc_allocWithZone(v9);
  sub_213FB568C(v6, v10 + OBJC_IVAR___BlastDoorTextMessageMessageTypeWrapper_textMessage_MessageType, type metadata accessor for TextMessage.MessageType);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = [(BlastDoorTextMessage *)&v13 init];
  sub_213FB5844(v6, type metadata accessor for TextMessage.MessageType);

  return v11;
}

- (NSString)groupID
{
  v3 = type metadata accessor for TextMessage(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorTextMessage_textMessage, v7, type metadata accessor for TextMessage);
  v8 = &v7[*(v4 + 48)];
  v9 = *(v8 + 3);
  if (v9 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v10 = *(v8 + 2);
    v11 = *(v8 + 3);

    sub_213FB5844(v7, type metadata accessor for TextMessage);
    if (v9)
    {
      v12 = sub_2146D9588();
      sub_213FDC6D0(v10, v9);
    }

    else
    {
      v12 = 0;
    }

    return v12;
  }

  return result;
}

- (unint64_t)groupProtocolVersion
{
  v2 = self + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v3 = &v2[*(type metadata accessor for TextMessage(0) + 52)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (unint64_t)transcriptBackgroundVersion
{
  v2 = self + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v3 = &v2[*(type metadata accessor for TextMessage(0) + 60)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (BlastDoorTextMessage_MessageSummaryInfo)messageSummaryInfo
{
  v2 = self + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v3 = &v2[*(type metadata accessor for TextMessage(0) + 64)];
  v4 = *v3;
  v5 = *(v3 + 1);
  *(v26 + 9) = *(v3 + 73);
  v6 = *(v26 + 9);
  v7 = *(v3 + 4);
  v25 = *(v3 + 3);
  v26[0] = v7;
  v8 = *(v3 + 2);
  v23 = *(v3 + 1);
  v24 = v8;
  *(v30 + 9) = v6;
  v29 = v25;
  v30[0] = v7;
  v27 = v23;
  v28 = v8;
  if (v5)
  {
    v9 = type metadata accessor for _ObjCTextMessage_MessageSummaryInfoWrapper();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___BlastDoorTextMessage_MessageSummaryInfo_textMessage_MessageSummaryInfo];
    *v11 = v4;
    *(v11 + 1) = v5;
    v12 = v30[0];
    *(v11 + 3) = v29;
    *(v11 + 4) = v12;
    *(v11 + 73) = *(v30 + 9);
    v13 = v28;
    *(v11 + 1) = v27;
    *(v11 + 2) = v13;
    v18[0] = v4;
    v18[1] = v5;
    v21 = v25;
    v22[0] = v26[0];
    *(v22 + 9) = *(v26 + 9);
    v19 = v23;
    v20 = v24;
    sub_2143140D0(v18, v17);
    v16.receiver = v10;
    v16.super_class = v9;
    v14 = [(BlastDoorTextMessage *)&v16 init];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSString)availabilityVerificationRecipientEncryptionValidationToken
{
  v2 = self + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v3 = &v2[*(type metadata accessor for TextMessage(0) + 76)];
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

- (NSString)lastPublisherOfOffGridStatus
{
  v3 = type metadata accessor for TextMessage(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorTextMessage_textMessage, v7, type metadata accessor for TextMessage);
  v8 = &v7[*(v4 + 100)];
  v9 = *(v8 + 3);
  if (v9 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v10 = *(v8 + 2);
    v11 = *(v8 + 3);

    sub_213FB5844(v7, type metadata accessor for TextMessage);
    if (v9)
    {
      v12 = sub_2146D9588();
      sub_213FDC6D0(v10, v9);
    }

    else
    {
      v12 = 0;
    }

    return v12;
  }

  return result;
}

- (BlastDoorNicknameInformation)nicknameInformation
{
  v2 = self + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v3 = *(type metadata accessor for TextMessage(0) + 96);
  memcpy(__dst, &v2[v3], sizeof(__dst));
  memcpy(__src, &v2[v3], 0x109uLL);
  enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(__src);
  v5 = 0;
  if (enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 != 1)
  {
    v6 = type metadata accessor for _ObjCNicknameInformationWrapper();
    v7 = objc_allocWithZone(v6);
    memcpy(&v7[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation], __src, 0x109uLL);
    memcpy(v11, __dst, 0x109uLL);
    sub_2142FB7A4(v11, v10);
    v9.receiver = v7;
    v9.super_class = v6;
    v5 = [(BlastDoorTextMessage *)&v9 init];
  }

  return v5;
}

- (int64_t)scheduleType
{
  selfCopy = self;
  v3 = sub_21457FFB0();

  return v3;
}

- (NSDate)scheduledDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = self + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v8 = type metadata accessor for TextMessage(0);
  sub_213FB2E54(&v7[*(v8 + 124)], v6, &qword_27C913090, &unk_2146E9DB0);
  v9 = sub_2146D8B08();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_2146D8AD8();
    (*(v10 + 8))(v6, v9);
    v12 = v13;
  }

  return v12;
}

- (NSArray)replicatedFallbackGUIDs
{
  v2 = self + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  if (*&v2[*(type metadata accessor for TextMessage(0) + 128)])
  {

    v3 = sub_2146D98E8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)biaReferenceID
{
  v2 = self + OBJC_IVAR___BlastDoorTextMessage_textMessage;
  v3 = &v2[*(type metadata accessor for TextMessage(0) + 136)];
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

- (BlastDoorTextMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end