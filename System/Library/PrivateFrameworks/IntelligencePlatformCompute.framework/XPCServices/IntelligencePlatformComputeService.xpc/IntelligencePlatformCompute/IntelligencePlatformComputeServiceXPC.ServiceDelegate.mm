@interface IntelligencePlatformComputeServiceXPC.ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtCC34IntelligencePlatformComputeService37IntelligencePlatformComputeServiceXPC15ServiceDelegate)init;
@end

@implementation IntelligencePlatformComputeServiceXPC.ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10000D32C(v7);

  return v9 & 1;
}

- (_TtCC34IntelligencePlatformComputeService37IntelligencePlatformComputeServiceXPC15ServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IntelligencePlatformComputeServiceXPC.ServiceDelegate();
  return [(IntelligencePlatformComputeServiceXPC.ServiceDelegate *)&v3 init];
}

@end