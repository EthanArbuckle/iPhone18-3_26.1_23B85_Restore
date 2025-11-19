@interface BlastDoorContactMessage
- (BlastDoorContactMessage)init;
- (BlastDoorContactMessage_ContactInfo)contactInfo;
- (NSString)description;
@end

@implementation BlastDoorContactMessage

- (NSString)description
{
  v2 = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 40];
  v3 = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 72];
  v15 = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 56];
  v16 = v3;
  v4 = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 72];
  v17 = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 88];
  v5 = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 8];
  v12[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorContactMessage_contactMessage);
  v12[1] = v5;
  v6 = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 40];
  v8 = *(&self->super.isa + OBJC_IVAR___BlastDoorContactMessage_contactMessage);
  v7 = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 8];
  v13 = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 24];
  v14 = v6;
  v11[11] = v15;
  v11[12] = v4;
  v11[13] = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 88];
  v11[7] = v8;
  v11[8] = v7;
  v11[9] = v13;
  v11[10] = v2;
  sub_214591F64(v12, v11);
  sub_2146D9608();
  v9 = sub_2146D9588();

  return v9;
}

- (BlastDoorContactMessage_ContactInfo)contactInfo
{
  v2 = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 72];
  v21 = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 56];
  v22 = v2;
  v23 = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 88];
  v3 = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 8];
  v17 = *(&self->super.isa + OBJC_IVAR___BlastDoorContactMessage_contactMessage);
  v18 = v3;
  v4 = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 40];
  v19 = *&self->contactMessage[OBJC_IVAR___BlastDoorContactMessage_contactMessage + 24];
  v20 = v4;
  v5 = type metadata accessor for _ObjCContactMessage_ContactInfoWrapper();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___BlastDoorContactMessage_ContactInfo_contactMessage_ContactInfo];
  v9 = v18;
  v8 = v19;
  *v7 = v17;
  *(v7 + 1) = v9;
  *(v7 + 2) = v8;
  v10 = v23;
  v12 = v20;
  v11 = v21;
  *(v7 + 5) = v22;
  *(v7 + 6) = v10;
  *(v7 + 3) = v12;
  *(v7 + 4) = v11;
  sub_214591F64(&v17, v16);
  v15.receiver = v6;
  v15.super_class = v5;
  v13 = [(BlastDoorContactMessage *)&v15 init];

  return v13;
}

- (BlastDoorContactMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end