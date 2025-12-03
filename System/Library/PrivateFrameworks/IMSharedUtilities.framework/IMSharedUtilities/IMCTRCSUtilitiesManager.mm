@interface IMCTRCSUtilitiesManager
+ (id)sharedManager;
- (BOOL)carrierRequiresFirstTimeOnAlert;
- (BOOL)enabledByDefaultForContext:(id)context;
- (BOOL)enabledForContext:(id)context;
- (BOOL)groupMessagingEnabledForPhoneNumber:(id)number simID:(id)d;
- (BOOL)groupTextReplicationSupportedForPhoneNumber:(id)number simID:(id)d;
- (BOOL)isRBMEnabledForContext:(id)context;
- (BOOL)isRBMSupportedForContext:(id)context;
- (BOOL)networkSupportsInterworkingForContext:(id)context;
- (BOOL)networkSupportsSpamReportingForContext:(id)context isChatBot:(BOOL)bot;
- (BOOL)supportedForPhoneNumber:(id)number simID:(id)d;
- (id)privateIdentityForContext:(id)context;
- (id)revokeIntervalForPhoneNumber:(id)number simID:(id)d;
- (int64_t)groupMessagingMaxGroupSizeForPhoneNumber:(id)number simID:(id)d;
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
  selfCopy = self;
  v3 = sub_1A86034A4();

  return v3;
}

- (void)registerServiceCapabilityNotifications
{
  v3 = *&self->delegate[OBJC_IVAR___IMCTRCSUtilitiesManager_delegate];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 8);
  selfCopy = self;
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();
}

- (BOOL)enabledByDefaultForContext:(id)context
{
  selfCopy = self;
  v5 = *&self->delegate[OBJC_IVAR___IMCTRCSUtilitiesManager_delegate];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 16);
  contextCopy = context;
  v9 = selfCopy;
  swift_unknownObjectRetain();
  LOBYTE(selfCopy) = v7(contextCopy, ObjectType, v5);

  swift_unknownObjectRelease();
  return selfCopy & 1;
}

- (BOOL)supportedForPhoneNumber:(id)number simID:(id)d
{
  v15 = sub_1A88C82E8();
  v6 = v5;
  v7 = sub_1A88C82E8();
  v9 = v8;
  v10 = *&self->delegate[OBJC_IVAR___IMCTRCSUtilitiesManager_delegate];
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 64);
  selfCopy = self;
  swift_unknownObjectRetain();
  LOBYTE(v7) = v12(v15, v6, v7, v9, ObjectType, v10);

  swift_unknownObjectRelease();
  return v7 & 1;
}

- (id)revokeIntervalForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  if (number)
  {
    v16 = sub_1A88C82E8();
    v7 = v6;
    if (dCopy)
    {
LABEL_3:
      v8 = sub_1A88C82E8();
      dCopy = v9;
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0;
    v7 = 0;
    if (d)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v10 = *&self->delegate[OBJC_IVAR___IMCTRCSUtilitiesManager_delegate];
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 72);
  selfCopy = self;
  swift_unknownObjectRetain();
  v14 = v12(v16, v7, v8, dCopy, ObjectType, v10);

  swift_unknownObjectRelease();

  return v14;
}

- (BOOL)groupMessagingEnabledForPhoneNumber:(id)number simID:(id)d
{
  dCopy = d;
  if (!number)
  {
    v6 = 0;
    v8 = 0;
    if (d)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v6 = sub_1A88C82E8();
  v8 = v7;
  if (!dCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1A88C82E8();
  dCopy = v10;
LABEL_6:
  selfCopy = self;
  v12 = sub_1A8711A8C(v6, v8, v9, dCopy);

  return v12 & 1;
}

- (int64_t)groupMessagingMaxGroupSizeForPhoneNumber:(id)number simID:(id)d
{
  v6 = sub_1A88C82E8();
  v8 = v7;
  if (d)
  {
    v9 = sub_1A88C82E8();
    d = v10;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  v12 = sub_1A8711DBC(v6, v8, v9, d);

  return v12;
}

- (BOOL)groupTextReplicationSupportedForPhoneNumber:(id)number simID:(id)d
{
  v6 = sub_1A88C82E8();
  v8 = v7;
  if (d)
  {
    v9 = sub_1A88C82E8();
    d = v10;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  v12 = sub_1A87120F4(v6, v8, v9, d);

  return v12 & 1;
}

- (BOOL)enabledForContext:(id)context
{
  contextCopy = context;
  contextCopy2 = context;
  selfCopy = self;
  LOBYTE(contextCopy) = sub_1A871082C(contextCopy);

  return contextCopy & 1;
}

- (BOOL)isRBMSupportedForContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  LOBYTE(self) = sub_1A8710BCC(contextCopy);

  return self & 1;
}

- (BOOL)isRBMEnabledForContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  LOBYTE(self) = sub_1A8710FB8(contextCopy);

  return self & 1;
}

- (BOOL)networkSupportsInterworkingForContext:(id)context
{
  contextCopy = context;
  contextCopy2 = context;
  selfCopy = self;
  LOBYTE(contextCopy) = sub_1A8711360(contextCopy);

  return contextCopy & 1;
}

- (BOOL)networkSupportsSpamReportingForContext:(id)context isChatBot:(BOOL)bot
{
  result = 0;
  if (context)
  {
    botCopy = bot;
    v6 = *&self->delegate[OBJC_IVAR___IMCTRCSUtilitiesManager_delegate];
    ObjectType = swift_getObjectType();
    v9 = *(v6 + 88);
    selfCopy = self;
    contextCopy = context;
    swift_unknownObjectRetain();
    LOBYTE(botCopy) = v9(contextCopy, botCopy, ObjectType, v6);

    swift_unknownObjectRelease();
    if (botCopy)
    {
      return 1;
    }
  }

  return result;
}

- (id)privateIdentityForContext:(id)context
{
  v5 = *&self->delegate[OBJC_IVAR___IMCTRCSUtilitiesManager_delegate];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 56);
  contextCopy = context;
  selfCopy = self;
  swift_unknownObjectRetain();
  v7(contextCopy, ObjectType, v5);
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