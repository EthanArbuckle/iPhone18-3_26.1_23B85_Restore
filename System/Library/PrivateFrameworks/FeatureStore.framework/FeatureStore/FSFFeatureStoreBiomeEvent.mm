@interface FSFFeatureStoreBiomeEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (FSFFeatureStoreBiomeEvent)initWithInteractionId:(id)id featureData:(id)data dataVersion:(unsigned int)version timestamp:(double)timestamp;
- (NSData)featureData;
- (NSString)interactionId;
- (id)serialize;
@end

@implementation FSFFeatureStoreBiomeEvent

- (id)serialize
{
  selfCopy = self;
  FeatureStoreBiomeEvent.serialize()();
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v6 = OUTLINED_FUNCTION_12_0();
    outlined consume of Data?(v6, v7);
  }

  return isa;
}

- (NSString)interactionId
{
  v2 = FeatureStoreBiomeEvent.interactionId.getter();
  v3 = MEMORY[0x223DD33D0](v2);

  return v3;
}

- (NSData)featureData
{
  FeatureStoreBiomeEvent.featureData.getter();
  v2.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = OUTLINED_FUNCTION_12_0();
  outlined consume of Data._Representation(v3, v4);

  return v2.super.isa;
}

- (FSFFeatureStoreBiomeEvent)initWithInteractionId:(id)id featureData:(id)data dataVersion:(unsigned int)version timestamp:(double)timestamp
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  dataCopy = data;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  return FeatureStoreBiomeEvent.init(interactionId:featureData:dataVersion:timestamp:)(v9, v11, v13, v15, version, timestamp);
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getObjCClassMetadata();
  v6 = OUTLINED_FUNCTION_16();
  v8 = static FeatureStoreBiomeEvent.event(with:dataVersion:)(v6, v7, version);
  v9 = OUTLINED_FUNCTION_16();
  outlined consume of Data._Representation(v9, v10);

  return v8;
}

@end