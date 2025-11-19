@interface BlastDoorAPSQuickRelaySelfAllocToken
- (BlastDoorAPSQuickRelaySelfAllocToken)init;
- (NSData)relayIpv6;
- (NSString)description;
- (int64_t)relayPort;
- (int64_t)relayProvider;
@end

@implementation BlastDoorAPSQuickRelaySelfAllocToken

- (NSString)description
{
  v2 = *&self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 40];
  v3 = *&self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 72];
  v16 = *&self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 56];
  v17[0] = v3;
  *(v17 + 9) = *&self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 81];
  v4 = *&self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 8];
  v13[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken);
  v13[1] = v4;
  v5 = *&self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 40];
  v7 = *(&self->super.isa + OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken);
  v6 = *&self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 8];
  v14 = *&self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 24];
  v15 = v5;
  v8 = *&self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 72];
  v11[11] = v16;
  v12[0] = v8;
  *(v12 + 9) = *&self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 81];
  v11[7] = v7;
  v11[8] = v6;
  v11[9] = v14;
  v11[10] = v2;
  sub_21454BBF8(v13, v11);
  sub_2146D9608();
  v9 = sub_2146D9588();

  return v9;
}

- (NSData)relayIpv6
{
  v2 = *&self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 16];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 8];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (int64_t)relayPort
{
  if (self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 32])
  {
    return 0;
  }

  else
  {
    return *&self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 24];
  }
}

- (int64_t)relayProvider
{
  if (self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 96])
  {
    return 0;
  }

  else
  {
    return *&self->aPSQuickRelaySelfAllocToken[OBJC_IVAR___BlastDoorAPSQuickRelaySelfAllocToken_aPSQuickRelaySelfAllocToken + 88];
  }
}

- (BlastDoorAPSQuickRelaySelfAllocToken)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end