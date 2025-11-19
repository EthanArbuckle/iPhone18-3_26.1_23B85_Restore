@interface BlastDoorAPSQuickRelayPluginRequest
- (BlastDoorAPSQuickRelayPluginRequest)init;
- (NSString)description;
- (int64_t)pluginStream;
@end

@implementation BlastDoorAPSQuickRelayPluginRequest

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest);
  v5 = *&self->aPSQuickRelayPluginRequest[OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest];
  v6 = *&self->aPSQuickRelayPluginRequest[OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest + 16];
  v7 = self->aPSQuickRelayPluginRequest[OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest + 32];
  v8 = self->aPSQuickRelayPluginRequest[OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest + 33];

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (int64_t)pluginStream
{
  if (self->aPSQuickRelayPluginRequest[OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest + 32])
  {
    return 0;
  }

  else
  {
    return *&self->aPSQuickRelayPluginRequest[OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest + 24];
  }
}

- (BlastDoorAPSQuickRelayPluginRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end