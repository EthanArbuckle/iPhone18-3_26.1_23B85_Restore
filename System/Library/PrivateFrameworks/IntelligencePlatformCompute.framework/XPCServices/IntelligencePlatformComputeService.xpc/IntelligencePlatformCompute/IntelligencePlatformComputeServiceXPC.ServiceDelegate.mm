@interface IntelligencePlatformComputeServiceXPC.ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtCC34IntelligencePlatformComputeService37IntelligencePlatformComputeServiceXPC15ServiceDelegate)init;
@end

@implementation IntelligencePlatformComputeServiceXPC.ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10000D32C(connectionCopy);

  return v9 & 1;
}

- (_TtCC34IntelligencePlatformComputeService37IntelligencePlatformComputeServiceXPC15ServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IntelligencePlatformComputeServiceXPC.ServiceDelegate();
  return [(IntelligencePlatformComputeServiceXPC.ServiceDelegate *)&v3 init];
}

@end