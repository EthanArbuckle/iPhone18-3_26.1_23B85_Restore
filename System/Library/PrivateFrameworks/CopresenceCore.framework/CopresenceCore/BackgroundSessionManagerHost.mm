@interface BackgroundSessionManagerHost
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC14CopresenceCore28BackgroundSessionManagerHost)init;
@end

@implementation BackgroundSessionManagerHost

- (_TtC14CopresenceCore28BackgroundSessionManagerHost)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized BackgroundSessionManagerHost.listener(_:shouldAcceptNewConnection:)(v7);

  return v9 & 1;
}

@end