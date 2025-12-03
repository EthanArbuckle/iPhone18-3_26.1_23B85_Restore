@interface MSOpenCompose
+ (MSOpenCompose)sharedInstance;
+ (void)presentNewMailWithContext:(id)context delegateEndpoint:(id)endpoint completion:(id)completion;
- (MSOpenCompose)init;
- (void)presentNewMailWithContext:(void *)context delegateEndpoint:(void *)endpoint completion:;
@end

@implementation MSOpenCompose

+ (MSOpenCompose)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__MSOpenCompose_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

void __31__MSOpenCompose_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_instance;
  sharedInstance_instance = v1;
}

+ (void)presentNewMailWithContext:(id)context delegateEndpoint:(id)endpoint completion:(id)completion
{
  contextCopy = context;
  endpointCopy = endpoint;
  completionCopy = completion;
  sharedInstance = [self sharedInstance];
  [(MSOpenCompose *)sharedInstance presentNewMailWithContext:contextCopy delegateEndpoint:endpointCopy completion:completionCopy];
}

- (void)presentNewMailWithContext:(void *)context delegateEndpoint:(void *)endpoint completion:
{
  v7 = a2;
  contextCopy = context;
  endpointCopy = endpoint;
  v10 = endpointCopy;
  if (self)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__MSOpenCompose_presentNewMailWithContext_delegateEndpoint_completion___block_invoke;
    v13[3] = &unk_1E855EB28;
    v11 = endpointCopy;
    v14 = v11;
    v12 = [self remoteObjectProxyWithErrorHandler:v13];
    [v12 presentNewMailWithContext:v7 delegateEndpoint:contextCopy completion:v11];
  }
}

- (MSOpenCompose)init
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5423510];
  v6.receiver = self;
  v6.super_class = MSOpenCompose;
  v4 = [(MSXPCService *)&v6 initWithRemoteObjectInterface:v3];

  return v4;
}

void __71__MSOpenCompose_presentNewMailWithContext_delegateEndpoint_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

@end