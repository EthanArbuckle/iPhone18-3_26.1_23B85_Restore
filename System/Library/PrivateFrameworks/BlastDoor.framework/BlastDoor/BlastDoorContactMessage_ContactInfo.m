@interface BlastDoorContactMessage_ContactInfo
- (BlastDoorContactMessage_ContactInfo)init;
- (NSString)contactNameSubtitle;
- (NSString)contactNameTitle;
- (NSString)description;
- (NSString)organizationNameSubtitle;
@end

@implementation BlastDoorContactMessage_ContactInfo

- (NSString)description
{
  v2 = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 40];
  v3 = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 72];
  v15 = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 56];
  v16 = v3;
  v4 = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 72];
  v17 = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 88];
  v5 = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 8];
  v12[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo);
  v12[1] = v5;
  v6 = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 40];
  v8 = *(&self->super.isa + OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo);
  v7 = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 8];
  v13 = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 24];
  v14 = v6;
  v11[11] = v15;
  v11[12] = v4;
  v11[13] = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 88];
  v11[7] = v8;
  v11[8] = v7;
  v11[9] = v13;
  v11[10] = v2;
  sub_2142ECDA4(v12, v11);
  sub_2146D9608();
  v9 = sub_2146D9588();

  return v9;
}

- (NSString)contactNameTitle
{
  v2 = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 56];
  v3 = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 64];

  v4 = sub_2146D9588();

  return v4;
}

- (NSString)organizationNameSubtitle
{
  v2 = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 72];
  v3 = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 80];

  v4 = sub_2146D9588();

  return v4;
}

- (NSString)contactNameSubtitle
{
  v2 = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 88];
  v3 = *&self->contactMessage_ContactInfo[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo + 96];

  v4 = sub_2146D9588();

  return v4;
}

- (BlastDoorContactMessage_ContactInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end