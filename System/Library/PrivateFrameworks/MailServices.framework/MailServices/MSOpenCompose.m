@interface MSOpenCompose
+ (MSOpenCompose)sharedInstance;
+ (void)presentNewMailWithContext:(id)a3 delegateEndpoint:(id)a4 completion:(id)a5;
- (MSOpenCompose)init;
- (void)presentNewMailWithContext:(void *)a3 delegateEndpoint:(void *)a4 completion:;
@end

@implementation MSOpenCompose

+ (MSOpenCompose)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__MSOpenCompose_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

+ (void)presentNewMailWithContext:(id)a3 delegateEndpoint:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [a1 sharedInstance];
  [(MSOpenCompose *)v10 presentNewMailWithContext:v11 delegateEndpoint:v8 completion:v9];
}

- (void)presentNewMailWithContext:(void *)a3 delegateEndpoint:(void *)a4 completion:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__MSOpenCompose_presentNewMailWithContext_delegateEndpoint_completion___block_invoke;
    v13[3] = &unk_1E855EB28;
    v11 = v9;
    v14 = v11;
    v12 = [a1 remoteObjectProxyWithErrorHandler:v13];
    [v12 presentNewMailWithContext:v7 delegateEndpoint:v8 completion:v11];
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