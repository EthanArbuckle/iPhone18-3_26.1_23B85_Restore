@interface BlastDoorAPSQuickRelayPluginAllocation
- (BlastDoorAPSQuickRelayPluginAllocation)init;
- (NSString)description;
- (int64_t)pluginStream;
- (unint64_t)participantId;
@end

@implementation BlastDoorAPSQuickRelayPluginAllocation

- (NSString)description
{
  v2 = *&self->aPSQuickRelayPluginAllocation[OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 8];
  v3 = *&self->aPSQuickRelayPluginAllocation[OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 40];
  v10 = *&self->aPSQuickRelayPluginAllocation[OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 24];
  v11 = v3;
  v4 = *&self->aPSQuickRelayPluginAllocation[OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 40];
  v12 = *&self->aPSQuickRelayPluginAllocation[OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 56];
  v5 = *&self->aPSQuickRelayPluginAllocation[OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 8];
  v9[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation);
  v9[1] = v5;
  v8[7] = v10;
  v8[8] = v4;
  v8[9] = *&self->aPSQuickRelayPluginAllocation[OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 56];
  v8[5] = v9[0];
  v8[6] = v2;
  sub_21454C394(v9, v8);
  sub_2146D9608();
  v6 = sub_2146D9588();

  return v6;
}

- (int64_t)pluginStream
{
  if (self->aPSQuickRelayPluginAllocation[OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 16])
  {
    return 0;
  }

  else
  {
    return *&self->aPSQuickRelayPluginAllocation[OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 8];
  }
}

- (unint64_t)participantId
{
  if (self->aPSQuickRelayPluginAllocation[OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 32])
  {
    return 0;
  }

  else
  {
    return *&self->aPSQuickRelayPluginAllocation[OBJC_IVAR___BlastDoorAPSQuickRelayPluginAllocation_aPSQuickRelayPluginAllocation + 24];
  }
}

- (BlastDoorAPSQuickRelayPluginAllocation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end