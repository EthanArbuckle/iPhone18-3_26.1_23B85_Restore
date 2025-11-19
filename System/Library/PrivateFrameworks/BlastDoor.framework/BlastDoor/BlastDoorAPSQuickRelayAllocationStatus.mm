@interface BlastDoorAPSQuickRelayAllocationStatus
- (BlastDoorAPSQuickRelayAllocationStatus)init;
- (NSData)token;
- (NSString)description;
- (int64_t)allocationStatus;
- (unint64_t)participantId;
@end

@implementation BlastDoorAPSQuickRelayAllocationStatus

- (NSString)description
{
  v2 = *&self->aPSQuickRelayAllocationStatus[OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 8];
  v10[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus);
  v10[1] = v2;
  v3 = *&self->aPSQuickRelayAllocationStatus[OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 40];
  v5 = *(&self->super.isa + OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus);
  v4 = *&self->aPSQuickRelayAllocationStatus[OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 8];
  v10[2] = *&self->aPSQuickRelayAllocationStatus[OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 24];
  v10[3] = v3;
  v9[4] = v5;
  v9[5] = v4;
  v6 = *&self->aPSQuickRelayAllocationStatus[OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 40];
  v9[6] = *&self->aPSQuickRelayAllocationStatus[OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 24];
  v9[7] = v6;
  sub_21454B6E0(v10, v9);
  sub_2146D9608();
  v7 = sub_2146D9588();

  return v7;
}

- (unint64_t)participantId
{
  if (self->aPSQuickRelayAllocationStatus[OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus])
  {
    return 0;
  }

  else
  {
    return *(&self->super.isa + OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus);
  }
}

- (int64_t)allocationStatus
{
  if (self->aPSQuickRelayAllocationStatus[OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 16])
  {
    return 0;
  }

  else
  {
    return *&self->aPSQuickRelayAllocationStatus[OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 8];
  }
}

- (NSData)token
{
  v2 = *&self->aPSQuickRelayAllocationStatus[OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 32];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *&self->aPSQuickRelayAllocationStatus[OBJC_IVAR___BlastDoorAPSQuickRelayAllocationStatus_aPSQuickRelayAllocationStatus + 24];
    sub_21402D9F8(v4, v2);
    v5 = sub_2146D8A38();
    sub_213FDC6BC(v4, v2);
    v3 = v5;
  }

  return v3;
}

- (BlastDoorAPSQuickRelayAllocationStatus)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end