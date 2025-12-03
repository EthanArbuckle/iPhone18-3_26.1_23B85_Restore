@interface MSOpenComposeDelegateRequest
- (MSOpenComposeDelegateRequest)init;
- (void)checkInComposeWithIdentifier:(id)identifier completion:(id)completion;
@end

@implementation MSOpenComposeDelegateRequest

- (MSOpenComposeDelegateRequest)init
{
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5423570];
  v6.receiver = self;
  v6.super_class = MSOpenComposeDelegateRequest;
  v4 = [(MSXPCService *)&v6 initWithRemoteObjectInterface:v3];

  return v4;
}

- (void)checkInComposeWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__MSOpenComposeDelegateRequest_checkInComposeWithIdentifier_completion___block_invoke;
  v10[3] = &unk_1E855EB28;
  v8 = completionCopy;
  v11 = v8;
  v9 = [(MSXPCService *)self remoteObjectProxyWithErrorHandler:v10];
  [v9 checkInComposeWithIdentifier:identifierCopy completion:v8];
}

void __72__MSOpenComposeDelegateRequest_checkInComposeWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, 0, 0, v4);
  }
}

@end