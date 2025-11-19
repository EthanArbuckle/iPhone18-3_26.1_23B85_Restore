@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC22TodayFeedConfigDecoder15ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = NDTodayFeedConfigDecodingServiceXPCInterface();
  [v4 setExportedInterface:v5];

  v6 = [objc_allocWithZone(type metadata accessor for TodayFeedConfigDecodingService()) init];
  [v4 setExportedObject:v6];
  [v4 resume];

  return 1;
}

- (_TtC22TodayFeedConfigDecoder15ServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ServiceDelegate();
  return [(ServiceDelegate *)&v3 init];
}

@end