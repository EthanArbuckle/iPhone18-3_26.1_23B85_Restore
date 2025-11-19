@interface MADXPCStoreServerEndpointFactory
- (id)newEndpoint;
@end

@implementation MADXPCStoreServerEndpointFactory

- (id)newEndpoint
{
  v2 = objc_alloc_init(VCPMediaAnalysisService);
  v5 = 0;
  v3 = [(VCPMediaAnalysisService *)v2 requestSystemXPCStoreListenerEndpointWithError:&v5];

  return v3;
}

@end