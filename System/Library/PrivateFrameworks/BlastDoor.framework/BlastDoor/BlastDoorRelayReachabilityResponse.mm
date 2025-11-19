@interface BlastDoorRelayReachabilityResponse
- (BlastDoorRelayReachabilityResponse)init;
- (BlastDoorRelayReachabilityResult)result;
- (NSString)description;
@end

@implementation BlastDoorRelayReachabilityResponse

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse);
  v5 = *&self->relayReachabilityResponse[OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse];
  v6 = self->relayReachabilityResponse[OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 8];
  v7 = *&self->relayReachabilityResponse[OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 16];
  v8 = self->relayReachabilityResponse[OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 24];
  v9 = self->relayReachabilityResponse[OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 25];
  v10 = self->relayReachabilityResponse[OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 26];

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorRelayReachabilityResult)result
{
  v3 = *(&self->super.isa + OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse);
  v2 = *&self->relayReachabilityResponse[OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse];
  v4 = self->relayReachabilityResponse[OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 8];
  v5 = *&self->relayReachabilityResponse[OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 16];
  v6 = self->relayReachabilityResponse[OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 24];
  v7 = self->relayReachabilityResponse[OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 25];
  v8 = self->relayReachabilityResponse[OBJC_IVAR___BlastDoorRelayReachabilityResponse_relayReachabilityResponse + 26];
  v9 = type metadata accessor for _ObjCRelayReachabilityResultWrapper();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR___BlastDoorRelayReachabilityResult_relayReachabilityResult];
  *v11 = v3;
  *(v11 + 1) = v2;
  v11[16] = v4;
  *(v11 + 3) = v5;
  v11[32] = v6;
  v11[33] = v7;
  v11[34] = v8;
  v14.receiver = v10;
  v14.super_class = v9;

  v12 = [(BlastDoorRelayReachabilityResponse *)&v14 init];

  return v12;
}

- (BlastDoorRelayReachabilityResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end