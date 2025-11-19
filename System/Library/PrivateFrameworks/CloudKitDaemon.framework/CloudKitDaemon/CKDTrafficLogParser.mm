@interface CKDTrafficLogParser
- (BOOL)parse:(id)a3 error:(id *)a4;
- (id)consumeParsedTrafficLogsAndReturnError:(id *)a3;
@end

@implementation CKDTrafficLogParser

- (BOOL)parse:(id)a3 error:(id *)a4
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_2250FF0EC();

  return 1;
}

- (id)consumeParsedTrafficLogsAndReturnError:(id *)a3
{
  v3 = self;
  sub_2250FF80C();

  type metadata accessor for TrafficLogMessage();
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

@end