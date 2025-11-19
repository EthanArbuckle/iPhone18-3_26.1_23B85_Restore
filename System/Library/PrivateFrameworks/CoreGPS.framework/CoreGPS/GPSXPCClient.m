@interface GPSXPCClient
- (void)onData:(id)a3;
@end

@implementation GPSXPCClient

- (void)onData:(id)a3
{
  v3 = a3;

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  GPSXPCClient.onData(_:)(v4, v6);
  outlined consume of Data._Representation(v4, v6);
}

@end