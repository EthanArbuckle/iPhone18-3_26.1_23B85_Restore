@interface BlastDoorRelayReachabilityRequest
- (BlastDoorRelayReachabilityContext)context;
- (BlastDoorRelayReachabilityRequest)init;
- (NSArray)handles;
@end

@implementation BlastDoorRelayReachabilityRequest

- (NSArray)handles
{
  v3 = type metadata accessor for RelayReachabilityRequest();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorRelayReachabilityRequest_relayReachabilityRequest, v6, type metadata accessor for RelayReachabilityRequest);
  if (*(v6 + 2))
  {
    v7 = *(v6 + 2);

    sub_213FB5844(v6, type metadata accessor for RelayReachabilityRequest);
    v8 = sub_2146D98E8();

    return v8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

- (BlastDoorRelayReachabilityContext)context
{
  v3 = type metadata accessor for RelayReachabilityContext();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR___BlastDoorRelayReachabilityRequest_relayReachabilityRequest;
  v8 = type metadata accessor for RelayReachabilityRequest();
  sub_213FB568C(&v7[*(v8 + 24)], v6, type metadata accessor for RelayReachabilityContext);
  v9 = type metadata accessor for _ObjCRelayReachabilityContextWrapper(0);
  v10 = objc_allocWithZone(v9);
  sub_213FB568C(v6, v10 + OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext, type metadata accessor for RelayReachabilityContext);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = [(BlastDoorRelayReachabilityRequest *)&v13 init];
  sub_213FB5844(v6, type metadata accessor for RelayReachabilityContext);

  return v11;
}

- (BlastDoorRelayReachabilityRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end