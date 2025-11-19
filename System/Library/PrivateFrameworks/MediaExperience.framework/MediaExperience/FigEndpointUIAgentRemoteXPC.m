@interface FigEndpointUIAgentRemoteXPC
@end

@implementation FigEndpointUIAgentRemoteXPC

void __FigEndpointUIAgentRemoteXPC_EnsureClientEstablished_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v1 = [v0 initWithObjectsAndKeys:{@"EndpointUIAgent_ServerConnectionDied", *MEMORY[0x1E69633B0], 0}];
  _MergedGlobals_15 = FigXPCRemoteClientCreate();
}

@end