@interface SRRawPayload
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (id)serialize;
@end

@implementation SRRawPayload

- (id)serialize
{
  v2 = RawPayload.data.getter();
  if (v3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100014A2C(v5, v6);
  }

  return isa;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v4 = a3;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  swift_getObjCClassMetadata();
  v8 = static RawPayload.event(with:dataVersion:)();
  sub_100014A40(v5, v7);

  return v8;
}

@end