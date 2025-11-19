@interface GenerativeModelsAvailable
+ (BOOL)isGenerativeModelAvailable;
- (_TtC26MomentsIntelligenceService25GenerativeModelsAvailable)init;
@end

@implementation GenerativeModelsAvailable

+ (BOOL)isGenerativeModelAvailable
{
  v2 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GenerativeModelsAvailability();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v8 + 8))(v11, v7);
  GenerativeModelsAvailability.availability.getter();
  (*(v13 + 8))(v16, v12);
  LOBYTE(v7) = (*(v3 + 88))(v6, v2) == enum case for GenerativeModelsAvailability.Availability.available(_:);
  (*(v3 + 8))(v6, v2);
  return v7;
}

- (_TtC26MomentsIntelligenceService25GenerativeModelsAvailable)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GenerativeModelsAvailable();
  return [(GenerativeModelsAvailable *)&v3 init];
}

@end