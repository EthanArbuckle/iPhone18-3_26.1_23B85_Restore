@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC22TodayFeedConfigDecoder15ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = NDTodayFeedConfigDecodingServiceXPCInterface();
  [connectionCopy setExportedInterface:v5];

  v6 = [objc_allocWithZone(type metadata accessor for TodayFeedConfigDecodingService()) init];
  [connectionCopy setExportedObject:v6];
  [connectionCopy resume];

  return 1;
}

- (_TtC22TodayFeedConfigDecoder15ServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ServiceDelegate();
  return [(ServiceDelegate *)&v3 init];
}

@end