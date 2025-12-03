@interface BackgroundSessionManagerHost
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC14CopresenceCore28BackgroundSessionManagerHost)init;
@end

@implementation BackgroundSessionManagerHost

- (_TtC14CopresenceCore28BackgroundSessionManagerHost)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = specialized BackgroundSessionManagerHost.listener(_:shouldAcceptNewConnection:)(connectionCopy);

  return v9 & 1;
}

@end