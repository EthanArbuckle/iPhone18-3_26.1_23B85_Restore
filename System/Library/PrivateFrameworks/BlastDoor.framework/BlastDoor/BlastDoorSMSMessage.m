@interface BlastDoorSMSMessage
- (BlastDoorSMSMessage)init;
- (BlastDoorSMSMessage_SMSFilteringSettings)smsFilteringSettings;
- (NSArray)recipients;
- (NSDate)date;
- (NSString)displayName;
- (NSString)fallbackHash;
- (NSString)groupID;
- (NSString)originalGroupID;
- (NSString)originatedDeviceEmail;
- (NSString)originatedDeviceNumber;
- (NSString)originatedDeviceSIM;
- (NSString)originatedDeviceUniqueID;
- (NSString)subject;
- (int64_t)filterSubCategory;
- (int64_t)replaceMessage;
- (int64_t)spamCategory;
- (int64_t)type;
@end

@implementation BlastDoorSMSMessage

- (int64_t)spamCategory
{
  if (self->sMSMessage[OBJC_IVAR___BlastDoorSMSMessage_sMSMessage])
  {
    return 0;
  }

  else
  {
    return *(&self->super.isa + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage);
  }
}

- (int64_t)filterSubCategory
{
  result = sub_213FCF7DC(self->sMSMessage[OBJC_IVAR___BlastDoorSMSMessage_sMSMessage + 1]);
  if (v3)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)type
{
  result = self->sMSMessage[OBJC_IVAR___BlastDoorSMSMessage_sMSMessage + 40];
  if (result > 2)
  {
    __break(1u);
  }

  return result;
}

- (NSArray)recipients
{
  if (*&self->sMSMessage[OBJC_IVAR___BlastDoorSMSMessage_sMSMessage + 48])
  {
    v2 = *&self->sMSMessage[OBJC_IVAR___BlastDoorSMSMessage_sMSMessage + 48];

    v3 = sub_2146D98E8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)date
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = self + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v8 = type metadata accessor for SMSMessage();
  sub_213FB2E54(&v7[*(v8 + 40)], v6, &qword_27C913090, &unk_2146E9DB0);
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

- (NSString)originatedDeviceNumber
{
  v2 = self + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v3 = &v2[*(type metadata accessor for SMSMessage() + 56)];
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

- (NSString)originatedDeviceEmail
{
  v2 = self + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v3 = &v2[*(type metadata accessor for SMSMessage() + 60)];
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

- (NSString)originatedDeviceSIM
{
  v2 = self + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v3 = &v2[*(type metadata accessor for SMSMessage() + 64)];
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

- (NSString)subject
{
  v2 = self + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v3 = &v2[*(type metadata accessor for SMSMessage() + 68)];
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

- (int64_t)replaceMessage
{
  v2 = self + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v3 = &v2[*(type metadata accessor for SMSMessage() + 76)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (NSString)fallbackHash
{
  v2 = self + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v3 = &v2[*(type metadata accessor for SMSMessage() + 88)];
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

- (NSString)groupID
{
  v2 = self + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v3 = &v2[*(type metadata accessor for SMSMessage() + 108)];
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

- (NSString)originalGroupID
{
  v2 = self + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v3 = &v2[*(type metadata accessor for SMSMessage() + 112)];
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

- (NSString)displayName
{
  v2 = self + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v3 = &v2[*(type metadata accessor for SMSMessage() + 116)];
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

- (NSString)originatedDeviceUniqueID
{
  v2 = self + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v3 = &v2[*(type metadata accessor for SMSMessage() + 120)];
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

- (BlastDoorSMSMessage_SMSFilteringSettings)smsFilteringSettings
{
  v2 = self + OBJC_IVAR___BlastDoorSMSMessage_sMSMessage;
  v3 = type metadata accessor for SMSMessage();
  v4 = 0;
  v5 = &v2[*(v3 + 124)];
  v6 = *(v5 + 1);
  if (v6 != 1)
  {
    v7 = *(v5 + 2);
    v8 = *v5;
    v9 = type metadata accessor for _ObjCSMSMessage_SMSFilteringSettingsWrapper();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR___BlastDoorSMSMessage_SMSFilteringSettings_sMSMessage_SMSFilteringSettings];
    *v11 = v8;
    *(v11 + 1) = v6;
    *(v11 + 2) = v7;
    v13.receiver = v10;
    v13.super_class = v9;

    v4 = [(BlastDoorSMSMessage *)&v13 init];
  }

  return v4;
}

- (BlastDoorSMSMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end