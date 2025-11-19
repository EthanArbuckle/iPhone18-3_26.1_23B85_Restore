@interface IMCTRCSUtilitiesManager
+ (id)sharedManager;
- (BOOL)carrierRequiresFirstTimeOnAlert;
- (BOOL)enabledByDefaultForContext:(id)a3;
- (BOOL)enabledForContext:(id)a3;
- (BOOL)groupMessagingEnabledForPhoneNumber:(id)a3 simID:(id)a4;
- (BOOL)groupTextReplicationSupportedForPhoneNumber:(id)a3 simID:(id)a4;
- (BOOL)isRBMEnabledForContext:(id)a3;
- (BOOL)isRBMSupportedForContext:(id)a3;
- (BOOL)networkSupportsInterworkingForContext:(id)a3;
- (BOOL)networkSupportsSpamReportingForContext:(id)a3 isChatBot:(BOOL)a4;
- (BOOL)supportedForPhoneNumber:(id)a3 simID:(id)a4;
- (id)privateIdentityForContext:(id)a3;
- (id)revokeIntervalForPhoneNumber:(id)a3 simID:(id)a4;
- (int64_t)groupMessagingMaxGroupSizeForPhoneNumber:(id)a3 simID:(id)a4;
- (void)registerServiceCapabilityNotifications;
@end

@implementation IMCTRCSUtilitiesManager

+ (id)sharedManager
{
  if (qword_1ED8C9370 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED8C9378;

  return v3;
}

- (BOOL)carrierRequiresFirstTimeOnAlert
{
  v2 = self;
  v3 = sub_1A86034A4();

  return v3;
}

- (void)registerServiceCapabilityNotifications
{
  v3 = *&self->delegate[OBJC_IVAR___IMCTRCSUtilitiesManager_delegate];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 8);
  v6 = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();
}

- (BOOL)enabledByDefaultForContext:(id)a3
{
  v4 = self;
  v5 = *&self->delegate[OBJC_IVAR___IMCTRCSUtilitiesManager_delegate];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 16);
  v8 = a3;
  v9 = v4;
  swift_unknownObjectRetain();
  LOBYTE(v4) = v7(v8, ObjectType, v5);

  swift_unknownObjectRelease();
  return v4 & 1;
}

- (BOOL)supportedForPhoneNumber:(id)a3 simID:(id)a4
{
  v15 = sub_1A88C82E8();
  v6 = v5;
  v7 = sub_1A88C82E8();
  v9 = v8;
  v10 = *&self->delegate[OBJC_IVAR___IMCTRCSUtilitiesManager_delegate];
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 64);
  v13 = self;
  swift_unknownObjectRetain();
  LOBYTE(v7) = v12(v15, v6, v7, v9, ObjectType, v10);

  swift_unknownObjectRelease();
  return v7 & 1;
}

- (id)revokeIntervalForPhoneNumber:(id)a3 simID:(id)a4
{
  v4 = a4;
  if (a3)
  {
    v16 = sub_1A88C82E8();
    v7 = v6;
    if (v4)
    {
LABEL_3:
      v8 = sub_1A88C82E8();
      v4 = v9;
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v10 = *&self->delegate[OBJC_IVAR___IMCTRCSUtilitiesManager_delegate];
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 72);
  v13 = self;
  swift_unknownObjectRetain();
  v14 = v12(v16, v7, v8, v4, ObjectType, v10);

  swift_unknownObjectRelease();

  return v14;
}

- (BOOL)groupMessagingEnabledForPhoneNumber:(id)a3 simID:(id)a4
{
  v4 = a4;
  if (!a3)
  {
    v6 = 0;
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v6 = sub_1A88C82E8();
  v8 = v7;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1A88C82E8();
  v4 = v10;
LABEL_6:
  v11 = self;
  v12 = sub_1A8711A8C(v6, v8, v9, v4);

  return v12 & 1;
}

- (int64_t)groupMessagingMaxGroupSizeForPhoneNumber:(id)a3 simID:(id)a4
{
  v6 = sub_1A88C82E8();
  v8 = v7;
  if (a4)
  {
    v9 = sub_1A88C82E8();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = self;
  v12 = sub_1A8711DBC(v6, v8, v9, a4);

  return v12;
}

- (BOOL)groupTextReplicationSupportedForPhoneNumber:(id)a3 simID:(id)a4
{
  v6 = sub_1A88C82E8();
  v8 = v7;
  if (a4)
  {
    v9 = sub_1A88C82E8();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = self;
  v12 = sub_1A87120F4(v6, v8, v9, a4);

  return v12 & 1;
}

- (BOOL)enabledForContext:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_1A871082C(v3);

  return v3 & 1;
}

- (BOOL)isRBMSupportedForContext:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1A8710BCC(v4);

  return self & 1;
}

- (BOOL)isRBMEnabledForContext:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1A8710FB8(v4);

  return self & 1;
}

- (BOOL)networkSupportsInterworkingForContext:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_1A8711360(v3);

  return v3 & 1;
}

- (BOOL)networkSupportsSpamReportingForContext:(id)a3 isChatBot:(BOOL)a4
{
  result = 0;
  if (a3)
  {
    v4 = a4;
    v6 = *&self->delegate[OBJC_IVAR___IMCTRCSUtilitiesManager_delegate];
    ObjectType = swift_getObjectType();
    v9 = *(v6 + 88);
    v10 = self;
    v11 = a3;
    swift_unknownObjectRetain();
    LOBYTE(v4) = v9(v11, v4, ObjectType, v6);

    swift_unknownObjectRelease();
    if (v4)
    {
      return 1;
    }
  }

  return result;
}

- (id)privateIdentityForContext:(id)a3
{
  v5 = *&self->delegate[OBJC_IVAR___IMCTRCSUtilitiesManager_delegate];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 56);
  v8 = a3;
  v9 = self;
  swift_unknownObjectRetain();
  v7(v8, ObjectType, v5);
  v11 = v10;

  swift_unknownObjectRelease();
  if (v11)
  {
    v12 = sub_1A88C82A8();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end