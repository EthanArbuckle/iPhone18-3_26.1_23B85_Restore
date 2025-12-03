@interface BMDatabaseInitializer
+ (BOOL)initializeSQLDatabaseWithIdentifier:(id)identifier;
+ (id)viewSubscribedStreams;
@end

@implementation BMDatabaseInitializer

+ (BOOL)initializeSQLDatabaseWithIdentifier:(id)identifier
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = static BMDatabaseInitializer.initializeSQLDatabase(identifier:)(v3, v4);

  return v5 & 1;
}

+ (id)viewSubscribedStreams
{
  static BMDatabaseInitializer.viewSubscribedStreams()();
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

@end