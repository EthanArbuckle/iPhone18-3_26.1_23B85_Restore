@interface BlastDoorRelayReachabilityResult
- (BlastDoorRelayReachabilityResult)init;
- (NSString)description;
- (int64_t)error;
@end

@implementation BlastDoorRelayReachabilityResult

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult);
  v5 = *&self->relayReachabilityResult[OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult];
  v6 = self->relayReachabilityResult[OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult + 8];
  v7 = *&self->relayReachabilityResult[OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult + 16];
  v8 = self->relayReachabilityResult[OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult + 24];
  v9 = self->relayReachabilityResult[OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult + 25];
  v10 = self->relayReachabilityResult[OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult + 26];

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (int64_t)error
{
  result = sub_214592CB0(self->relayReachabilityResult[OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult + 8] - 2);
  if (v3)
  {
    __break(1u);
  }

  return result;
}

- (BlastDoorRelayReachabilityResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end